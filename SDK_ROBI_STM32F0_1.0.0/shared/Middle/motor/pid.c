/*******************************************************************************
 *
 * Copyright (c) 2023
 * Lumi, JSC.
 * All Rights Reserved
 *
 * Description: Include file for application
 *
 * Author: ThaiHM
 *
 * Last Changed By:  $Author: ThaiHM $
 * Revision:         $Revision: $
 * Last Changed:     $Date: 22/11/2023 $
 *
*******************************************************************************/
/******************************************************************************/
/*                              INCLUDE FILES                                 */
/******************************************************************************/
#include "pid.h"
#include "motor.h"
#include "optical_sensor.h"
/******************************************************************************/
/*                     EXPORTED TYPES and DEFINITIONS                         */
/******************************************************************************/
#define MAX_SPEED			30
#define MIN_SPPED			0
/******************************************************************************/
/*                              PRIVATE DATA                                  */
/******************************************************************************/
/******************************************************************************/
/*                              EXPORTED DATA                                 */
/******************************************************************************/
/******************************************************************************/
/*                            PRIVATE FUNCTIONS                               */
/******************************************************************************/

/*@brief ADC Threshold values */
uint16_t AdcValuesThreshold[IR_SENSOR_MAX] = {0};

/*@brief PID values */
int P, I, D;
int previousError = 0;

float PIDvalue;
float Kp = 0.0;
float Ki = 0.0;
float Kd = 0.0;

int lfspeed = 20;
int lsp, rsp;
int count = 0;

/******************************************************************************/
/*                            EXPORTED FUNCTIONS                              */
/******************************************************************************/

/**
 * @func   Check_InLine
 * @brief  Check IR sensor In Line or Out Line
 * @param  None
 * @retval Number IR sensor In Line and Out Line
 */
int Check_InLine(void)
{
	for(uint8_t i = 0; i < IR_SENSOR_MAX; i++){
		if(OpticalSensor_MeasureUseDMAMode(i) > AdcValuesThreshold[i]) {
			count++;
		}
		else {
			count--;
		}
	}

	if (count == 5){
		count = 0;
		return 1;
	}
	else if (count == -5) {
		count = 0;
		return -1;
	}

	else {
		return 0;
	}
}

/**
 * @func   LineFollow
 * @brief
 * @param  None
 * @retval None
 */
void LineFollow(void)
{
	/* IR sensor is in the leftmost position */
    if (OpticalSensor_MeasureUseDMAMode(0) > AdcValuesThreshold[0] &&
    		OpticalSensor_MeasureUseDMAMode(4) < AdcValuesThreshold[4])
    {
    	/* Turn left */
		MotorControl_ForwardRotating(MOTOR_ID_L, 25);
		MotorControl_ReverseRotating(MOTOR_ID_R, 25);

    }

    /* IR sensor is in the rightmost position */
    else if (OpticalSensor_MeasureUseDMAMode(0) < AdcValuesThreshold[0] &&
    		OpticalSensor_MeasureUseDMAMode(4) > AdcValuesThreshold[4])
    {
    	/* Turn right */
		MotorControl_ForwardRotating(MOTOR_ID_R, 25);
		MotorControl_ReverseRotating(MOTOR_ID_L, 25);
    }

    /* IR sensor is in the center position */
    else if (OpticalSensor_MeasureUseDMAMode(2) > AdcValuesThreshold[2])
    {
    	/* Calculate Kp, Ki, Kd used to Follow Line */
		Kp = 0.00001 * (AdcValuesThreshold[2] - OpticalSensor_MeasureUseDMAMode(2));
		Kd = 0.005 	 * (AdcValuesThreshold[2] - OpticalSensor_MeasureUseDMAMode(2));
		Ki = 0.000001;
		PID_Control();
    }
}

/**
 * @func   PID_Control
 * @brief
 * @param  None
 * @retval None
 */
void PID_Control(void)
{
	/* Calculate error */
	int error = (OpticalSensor_MeasureUseDMAMode(1) - OpticalSensor_MeasureUseDMAMode(3));

	P =  error;
	I += error;
	D =  error - previousError;

	PIDvalue = ((Kp * P) + (Ki * I) + (Kd * D));
	previousError = error;

	lsp = lfspeed - PIDvalue;
	rsp = lfspeed + PIDvalue;

	if (lsp > MAX_SPEED) 	lsp = MAX_SPEED;

	if (lsp < MIN_SPPED) 	lsp = MIN_SPPED;

	if (rsp > MAX_SPEED) 	rsp = MAX_SPEED;

	if (rsp < MIN_SPPED) 	rsp = MIN_SPPED;

	MotorControl_ForwardRotating(MOTOR_ID_R, rsp);
	MotorControl_ForwardRotating(MOTOR_ID_L, lsp);
}

/**
 * @func   Motor_Control
 * @brief
 * @param  None
 * @retval None
 */
void MotorControl_PID(void)
{
	int k = Check_InLine();
	if (k == 1){
		MotorControl_ReverseRotating(MOTOR_ID_L, 20);
		MotorControl_ReverseRotating(MOTOR_ID_R, 20);
	}else if (k == -1){
		MotorControl_ReverseRotating(MOTOR_ID_L, 0);
		MotorControl_ReverseRotating(MOTOR_ID_R, 0);
	}else if (k == 0) {
		LineFollow();
	}
}

