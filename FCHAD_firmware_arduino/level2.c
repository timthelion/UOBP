void checkForFrameAndReact(void * handleFrame)
{
/*
 We check if there are bytes waiting for us in our serial buffer.  If there are, we read that byte.  If we are not confused, this byte should be a START_FLAG(at which point we read in the given frame).  If we ARE confused, we ignore the byte and continue eating untill a real START_FLAG does come along.
 */
 if(Serial.available()&&Serial.read()==START_FLAG)
 {
  unsigned char xorChecksum=0;
  uint16_t length;
  unsigned char type;
  unsigned char subType;
  unsigned char byteInMouth; 
  unsigned char indexInInformationBuffer=0;
  unsigned char endOfFrame=0;

  /*Now we read the frames header.*/
  byteInMouth=readEscapedByte();
  xorChecksum^=byteInMouth;
  length=(uint16_t)byteInMouth<<8;
  byteInMouth=readEscapedByte();
  xorChecksum^=byteInMouth;
  length+=byteInMouth;
  unsigned char information[length+CHECKSUM_SIZE];

  type=readEscapedByte();
  xorChecksum^=type;
  subType=readEscapedByte();
  xorChecksum^=subType;
  /*Now we read our information buffer*/
  while(indexInInformationBuffer<length+CHECKSUM_SIZE){
   byteInMouth=readEscapedByte();
   information[indexInInformationBuffer++]=byteInMouth;
   xorChecksum^=byteInMouth;
  }
  /*If our indexInInformationBuffer is not the same as our length+ourChecksum, we DROP the frame.*/
  if(indexInInformationBuffer!=length){
   return;
  }
  /*If our checksum failed, we DROP the frame.*/
  if(xorChecksum!=0){
   return;
  }
  /*If our frame was not closed off by an END_FLAG we DROP the frame*/
  if(nextChar()!=END_FLAG){
   return;
  }
  /*If everything was successfull, then we call the handling code to deal with this new bit of information.  We pass this handling code the length, the type, and the subType. AND WE DO NOT FORGET, THAT THE INFORMATION BUFFER IS CONSTRAINED BY THE LENGTH AND NOT ANY KIND OF NULL TERMINATOR*/
  *handleFrame(length,type,subType,information);
 }
}

void sendFrame(
 uint16_t        length  ,
 unsigned char   type    ,
 unsigned char   subType ,
 unsigned char * information){
 Serial.write(START_FLAG);

 unsigned char xorChecksum=0;
 unsigned char byteInArse=(length&0xFF00ul)>>8;
 xorChecksum^=byteInArse;
 writeEscapedByte(byteInArse);

 byteInArse=length&0x00FFul;
 xorChecksum^=byteInArse;
 writeEscapedByte(byteInArse);

 xorChecksum^=type;
 writeEscapedByte(type);

 xorChecksum^=subType;
 writeEscapedByte(subType);

 unsigned char indexInInformationBuffer=0;
 while(indexInInformationBuffer<length){
  xorChecksum^=information[indexInInformationBuffer];
  writeEscapedByte(information[indexInInformationBuffer]);
 }
 writeEscapedByte(xorChecksum);
 Serial.write(END_FLAG);
}

void writeEscapedByte(unsigned char byte){
 switch(byte){
  case START_FLAG:
  case END_FLAG:
  case ESCAPE_CHAR:
   Serial.write(ESCAPE_CHAR);
  default:
   break;
 }
 Serial.write(byte);
}

unsigned char readEscapedByte(){
 unsigned char byte=nextChar();
 if(byte==ESCAPE_CHAR){
  return(nextChar());
 }return(byte);
}
