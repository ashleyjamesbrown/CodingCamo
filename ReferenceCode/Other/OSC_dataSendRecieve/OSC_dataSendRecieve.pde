//https://github.com/ashleyjamesbrown/CodingCamo

//downlaod and improt osc library

import oscP5.*;
import netP5.*;

OscP5 oscP5;
NetAddress myRemoteLocation;


void setup() {
  size(400, 400);
  background(0);
  /* start oscP5, listening for incoming messages at port 12000 */
  oscP5 = new OscP5(this, 12000);
  //this is the port to send on and also the IP address
  //for local mahcine use 127.0.0.1 if you are broadcasting on wifi or etehrnet etc then get the correct address
  //the port number is then used by otehr software to hear the signals
  //lots of programms use 8080, 8000 or 1234
  myRemoteLocation = new NetAddress("127.0.0.1", 1234);
}


void draw() {
  background(0);
}

void keyPressed() {
  //trigger the osc message send by keyboard - if you wanted it to constantly send then put it inside draw at the end  
  sendOSC();
}


void sendOSC() {
  //first you need the address pattern which is the identifier
  // this follows a /name convention
  //you can send multiple messages on different identifiers
  OscMessage myMessage = new OscMessage("/test"); 

  // now add a value to that message lets say a random number but make it an int
  int r = int(random(1,6));
  myMessage.add(r);

  // now actaully send the message */
  oscP5.send(myMessage, myRemoteLocation);
  
  //to test open any other software that can listen to osc
  // abelton live, osculator, resolume, madmapper, vdmx etc
  // change the osc port to 1234
  // you should see the typetage above /test and the random value
}




//this needs to exist as it listens to the osc and if it gets anything it then passes it on
//inside here you can decipher themessage and pass values into global variables for example in your code

/* incoming osc message are forwarded to the oscEvent method. */
void oscEvent(OscMessage msg) {

  //debug print
  /* print the address pattern and the typetag of the received OscMessage 
   this is displayed in the console and not the rrors tab below
   */
  print("### received an osc message.");
  print(" addrpattern: "+msg.addrPattern());
  println(" typetag: "+msg.typetag());

  //get the value in the message
  //lets assume its whole numbers coming in
  int firstValue = msg.get(0).intValue(); 
  
  //if it wasnt and it was float
  //float firstValue = msg.get(0).floatValue(); 
  
  //and if it was string
  //String firstValue = msg.get(0).stringValue(); 
  
  println(firstValue);
}