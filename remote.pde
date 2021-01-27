// This sketch will send out a Nikon D50 trigger signal (probably works with most Nikons)
// See the full tutorial at http://www.ladyada.net/learn/sensors/ir.html
// this code is public domain, please enjoy!
 
int IRledPin =  13;    // LED connected to digital pin 13
 
// The setup() method runs once, when the sketch starts
 
void setup()   {                
  // initialize the IR digital pin as an output:
  pinMode(IRledPin, OUTPUT);    
  delay(5000);
  SendChannelUpCode();  
 
}
 
void loop()                     
{
  
}
 
// This procedure sends a 38KHz pulse to the IRledPin 
// for a certain # of microseconds. We'll use this whenever we need to send codes
void pulseIR(long microsecs) {
  // we'll count down from the number of microseconds we are told to wait
 
  cli();  // this turns off any background interrupts
 
  while (microsecs > 0) {
    // 38 kHz is about 13 microseconds high and 13 microseconds low
   digitalWrite(IRledPin, HIGH);  // this takes about 3 microseconds to happen
   delayMicroseconds(10);         // hang out for 10 microseconds
   digitalWrite(IRledPin, LOW);   // this also takes about 3 microseconds
   delayMicroseconds(10);         // hang out for 10 microseconds
 
   // so 26 microseconds altogether
   microsecs -= 26;
  }
 
  sei();  // this turns them back on
}
 
void SendChannelUpCode() {
  // This is the code for the CHANNEL + for the downstairs TV COMCAST
delayMicroseconds(56036);
pulseIR(4440);
delayMicroseconds(4340);
pulseIR(540);
delayMicroseconds(440);
pulseIR(540);
delayMicroseconds(420);
pulseIR(560);
delayMicroseconds(420);
pulseIR(540);
delayMicroseconds(440);
pulseIR(540);
delayMicroseconds(1400);
pulseIR(560);
delayMicroseconds(1400);
pulseIR(540);
delayMicroseconds(440);
pulseIR(540);
delayMicroseconds(440);
pulseIR(540);
delayMicroseconds(1400);
pulseIR(540);
delayMicroseconds(1420);
pulseIR(540);
delayMicroseconds(1400);
pulseIR(560);
delayMicroseconds(1400);
pulseIR(560);
delayMicroseconds(420);
pulseIR(540);
delayMicroseconds(440);
pulseIR(540);
delayMicroseconds(440);
pulseIR(540);
delayMicroseconds(420);
pulseIR(540);
delayMicroseconds(4340);
pulseIR(540);
delayMicroseconds(440);
pulseIR(540);
delayMicroseconds(440);
pulseIR(540);
delayMicroseconds(420);
pulseIR(540);
delayMicroseconds(440);
pulseIR(540);
delayMicroseconds(440);
pulseIR(540);
delayMicroseconds(420);
pulseIR(540);
delayMicroseconds(440);
pulseIR(540);
delayMicroseconds(440);
pulseIR(540);
delayMicroseconds(1400);
pulseIR(540);
delayMicroseconds(1420);
pulseIR(540);
delayMicroseconds(1420);
pulseIR(540);
delayMicroseconds(420);
pulseIR(560);
delayMicroseconds(1400);
pulseIR(540);
delayMicroseconds(1420);
pulseIR(540);
delayMicroseconds(1400);
pulseIR(560);
delayMicroseconds(1400);
pulseIR(540);
delayMicroseconds(440);
pulseIR(540);
delayMicroseconds(420);
pulseIR(540);
delayMicroseconds(440);
pulseIR(540);
delayMicroseconds(1420);
pulseIR(540);
  
}
