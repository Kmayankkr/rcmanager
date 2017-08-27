//******************************************************************
// 
//  Generated by IDSL to IDL Translator
//  
//  File name: Kinect.idl
//  Source: Kinect.idsl
//  
//******************************************************************   
#ifndef ROBOCOMPKINECT_ICE
#define ROBOCOMPKINECT_ICE

#include <CommonHead.ice>

#include <DifferentialRobot.ice>

module RoboCompKinect{
	exception HardwareFailedException{string what;};
	enum LedOptions{OFF, GREEN, RED, YELLOW, blinkGREEN, blinkREDYELLOW};
	struct Point{
		float x;
					float y;
					float z;
					float w;
				};
	sequence <byte> rgbType;
	sequence <short> irType;
	sequence <float> depthType;
				sequence <Point> pointType;

	interface Kinect{
		void  setTilt(float angle)throws HardwareFailedException;
		void  getTilt(out float angle)throws HardwareFailedException;
		void  setLed(LedOptions ledValue)throws HardwareFailedException;
		void  getLed(out LedOptions ledValue)throws HardwareFailedException;
		idempotent 
		void  getDataRGBZinIR(out rgbType rgbMatrix, out depthType depthMatrix, out RoboCompCommonHead::THeadState hState, out RoboCompDifferentialRobot::TBaseState bState)throws HardwareFailedException;
		idempotent 
		void  getDataRGBZinRGB(out rgbType rgbMatrix, out depthType depthMatrix, out RoboCompCommonHead::THeadState hState, out RoboCompDifferentialRobot::TBaseState bState)throws HardwareFailedException;
		idempotent 
		void  getDataIR(out irType irMatrix, out RoboCompCommonHead::THeadState hState, out RoboCompDifferentialRobot::TBaseState bState)throws HardwareFailedException;
		void  getRGB(out rgbType rgbMatrix);
		void  getXYZ(out pointType pointCloud);
	};
};
  
#endif