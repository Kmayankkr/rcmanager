//******************************************************************
// 
//  Generated by IDSL to IDL Translator
//  
//  File name: Hand.idl
//  Source: Hand.idsl
//  
//******************************************************************   
#ifndef ROBOCOMPHAND_ICE
#define ROBOCOMPHAND_ICE

module RoboCompHand{
	sequence <int> Motors;
	sequence <int> Velocities;

	interface Hand{
		void  openMotor(int motor);
		void  openMotors(Motors mlist);
		void  closeMotor(int motor);
		void  closeMotors(Motors mlist);
		void  setVelocities(Motors mlist, Velocities vlist);
		void  setRealTimeOn(Motors mlist);
		void  setRealTimeOff();
		void  moveMotor(int motor, int steps);
		void  moveMotors(Motors mlist, int steps);
	};
};
  
#endif