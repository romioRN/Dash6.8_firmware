#include <gui/screen1_screen/Screen1View.hpp>
#include <touchgfx/Color.hpp>

#include "main.h"
#include "extern.h"

Screen1View::Screen1View() {

}
void Screen1View::changeBacklight()
{
	Current_Status.LCD_BRIGHTNESS += 300;

	Current_Status.LCD_BRIGHTNESS_CHANGED = 1;
}


void Screen1View::setupScreen() {
	Screen1ViewBase::setupScreen();

}

void Screen1View::tearDownScreen() {
	Screen1ViewBase::tearDownScreen();
}

void Screen1View::handleTickEvent() {
	Unicode::UnicodeChar buffer[16];
	if(Current_Status.SCREEN_FIELDS_CHANGED == true)
	{
		setupScreen();
		Current_Status.SCREEN_FIELDS_CHANGED = false;
	}



	Unicode::snprintfFloat(buffer, 32, "%.0f", (float)(Current_Status.RPMs ));
	Unicode::snprintf(value_0Buffer, 32, "%s", buffer);
	value_0.resizeToCurrentTextWithAlignment();
	value_0.invalidate();


	Unicode::snprintfFloat(buffer, 16, "%.1f", (float)(Current_Status.BattVolt ));
	Unicode::snprintf(value_1Buffer, 16, "%s", buffer);
	value_1.resizeToCurrentTextWithAlignment();
	value_1.invalidate();


	Unicode::snprintfFloat(buffer, 16, "%.0f", (float)(Current_Status.CoolantTemp ));
	Unicode::snprintf(value_2Buffer, 16, "%s", buffer);
	value_2.resizeToCurrentTextWithAlignment();
	value_2.invalidate();


    Unicode::snprintfFloat(buffer, 32, "%.0f", (float)(Current_Status.FuelLevel));
	Unicode::snprintf(value_3Buffer, 32, "%s", buffer);
	value_3.resizeToCurrentTextWithAlignment();
	value_3.invalidate();


	Unicode::snprintfFloat(buffer, 16, "%.0f", (float)(Current_Status.GPS_SPEED ));
	Unicode::snprintf(speedBuffer, 16, "%s", buffer);
	speed.resizeToCurrentTextWithAlignment();
	speed.invalidate();

	Unicode::snprintfFloat(buffer, 16, "%.1f", (float)(Current_Status.FUELUSEDs ));
	Unicode::snprintf(value_5Buffer, 16, "%s", buffer);
	value_5.resizeToCurrentTextWithAlignment();
	value_5.invalidate();




	indFuel.setVisible(Current_Status.IND_FUEL);
	indFuel.invalidate();

	indOil.setVisible(Current_Status.IND_OIL);
	indOil.invalidate();

	indBatt.setVisible(Current_Status.IND_BATT);
	indBatt.invalidate();



	indDTC.setVisible(Current_Status.IND_DTC);
	indDTC.invalidate();

	indECT.setVisible(Current_Status.IND_ECT);
	indECT.invalidate();

	indECT_blue.setVisible(Current_Status.IND_ECT_BLUE);
	indECT_blue.invalidate();



	gauge1.updateValue(Current_Status.FuelLevel, 0);
	gauge1.invalidate();

	gauge2.updateValue(Current_Status.CoolantTemp, 0);
	gauge2.invalidate();

	image5.invalidate();

/*	alert_R1.setVisible(false);
	if(Current_Status.OK_R1 == true)
	{
		alert_R1.setColor(touchgfx::Color::getColorFromRGB(0, 255, 0));
		alert_R1.setVisible(true);
	}
	else if(Current_Status.WARNING_R1 == true)
	{
		alert_R1.setColor(touchgfx::Color::getColorFromRGB(255, 140, 0));
		alert_R1.setVisible(true);
	}
	else if(Current_Status.ALERT_R1 == true)
	{
		alert_R1.setColor(touchgfx::Color::getColorFromRGB(255, 0, 0));
		alert_R1.setVisible(true);
	}
	alert_R1.invalidate();

	alert_R2.setVisible(false);
	if(Current_Status.OK_R2 == true)
	{
		alert_R2.setColor(touchgfx::Color::getColorFromRGB(0, 255, 0));
		alert_R2.setVisible(true);
	}
	else if(Current_Status.WARNING_R2 == true)
	{
		alert_R2.setColor(touchgfx::Color::getColorFromRGB(255, 140, 0));
		alert_R2.setVisible(true);
	}
	else if(Current_Status.ALERT_R2 == true)
	{
		alert_R2.setColor(touchgfx::Color::getColorFromRGB(255, 0, 0));
		alert_R2.setVisible(true);
	}
	alert_R2.invalidate();

	alert_R3.setVisible(false);
	if(Current_Status.OK_R3 == true)
	{
		alert_R3.setColor(touchgfx::Color::getColorFromRGB(0, 255, 0));
		alert_R3.setVisible(true);
	}
	else if(Current_Status.WARNING_R3 == true)
	{
		alert_R3.setColor(touchgfx::Color::getColorFromRGB(255, 140, 0));
		alert_R3.setVisible(true);
	}
	else if(Current_Status.ALERT_R3 == true)
	{
		alert_R3.setColor(touchgfx::Color::getColorFromRGB(255, 0, 0));
		alert_R3.setVisible(true);
	}
	alert_R3.invalidate();

	alert_R4.setVisible(false);
	if(Current_Status.OK_R4 == true)
	{
		alert_R4.setColor(touchgfx::Color::getColorFromRGB(0, 255, 0));
		alert_R4.setVisible(true);
	}
	else if(Current_Status.WARNING_R4 == true)
	{
		alert_R4.setColor(touchgfx::Color::getColorFromRGB(255, 140, 0));
		alert_R4.setVisible(true);
	}
	else if(Current_Status.ALERT_R4 == true)
	{
		alert_R4.setColor(touchgfx::Color::getColorFromRGB(255, 0, 0));
		alert_R4.setVisible(true);
	}
	alert_R4.invalidate();

	alert_L1.setVisible(false);
	if(Current_Status.OK_L1 == true)
	{
		alert_L1.setColor(touchgfx::Color::getColorFromRGB(0, 255, 0));
		alert_L1.setVisible(true);
	}
	else if(Current_Status.WARNING_L1 == true)
	{
		alert_L1.setColor(touchgfx::Color::getColorFromRGB(255, 140, 0));
		alert_L1.setVisible(true);
	}
	else if(Current_Status.ALERT_L1 == true)
	{
		alert_L1.setColor(touchgfx::Color::getColorFromRGB(255, 0, 0));
		alert_L1.setVisible(true);
	}
	alert_L1.invalidate();

	alert_L2.setVisible(false);
	if(Current_Status.OK_L2 == true)
	{
		alert_L2.setColor(touchgfx::Color::getColorFromRGB(0, 255, 0));
		alert_L2.setVisible(true);
	}
	else if(Current_Status.WARNING_L2 == true)
	{
		alert_L2.setColor(touchgfx::Color::getColorFromRGB(255, 140, 0));
		alert_L2.setVisible(true);
	}
	else if(Current_Status.ALERT_L2 == true)
	{
		alert_L2.setColor(touchgfx::Color::getColorFromRGB(255, 0, 0));
		alert_L2.setVisible(true);
	}
	alert_L2.invalidate();

	alert_L3.setVisible(false);
	if(Current_Status.OK_L3 == true)
	{
		alert_L3.setColor(touchgfx::Color::getColorFromRGB(0, 255, 0));
		alert_L3.setVisible(true);
	}
	else if(Current_Status.WARNING_L3 == true)
	{
		alert_L3.setColor(touchgfx::Color::getColorFromRGB(255, 140, 0));
		alert_L3.setVisible(true);
	}
	else if(Current_Status.ALERT_L3 == true)
	{
		alert_L3.setColor(touchgfx::Color::getColorFromRGB(255, 0, 0));
		alert_L3.setVisible(true);
	}
	alert_L3.invalidate();

	alert_L4.setVisible(false);
	if(Current_Status.OK_L4 == true)
	{
		alert_L4.setColor(touchgfx::Color::getColorFromRGB(0, 255, 0));
		alert_L4.setVisible(true);
	}
	else if(Current_Status.WARNING_L4 == true)
	{
		alert_L4.setColor(touchgfx::Color::getColorFromRGB(255, 140, 0));
		alert_L4.setVisible(true);
	}
	else if(Current_Status.ALERT_L4 == true)
	{
		alert_L4.setColor(touchgfx::Color::getColorFromRGB(255, 0, 0));
		alert_L4.setVisible(true);
	}
	alert_L4.invalidate();  */
	//gauge1.set
//	image5.invalidate();

}
