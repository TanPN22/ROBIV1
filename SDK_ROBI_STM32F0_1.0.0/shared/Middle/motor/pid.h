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
#ifndef _PID_H_
#define _PID_H_
/******************************************************************************/
/*                              INCLUDE FILES                                 */
/******************************************************************************/
#include <stdint.h>
/******************************************************************************/
/*                     EXPORTED TYPES and DEFINITIONS                         */
/******************************************************************************/

/******************************************************************************/
/*                              PRIVATE DATA                                  */
/******************************************************************************/
/******************************************************************************/
/*                              EXPORTED DATA                                 */
/******************************************************************************/
/******************************************************************************/
/*                            EXPORTED FUNCTIONS                              */
/******************************************************************************/

/**
 * @func   Check_InLine
 * @brief  Check IR sensor In Line or Out Line
 * @param  None
 * @retval Number IR sensor In Line and Out Line
 */
int Check_InLine(void);

/**
 * @func   LineFollow
 * @brief
 * @param  None
 * @retval None
 */
void
LineFollow(void);

/**
 * @func   PID_Control
 * @brief
 * @param  None
 * @retval None
 */
void
PID_Control(void);

/**
 * @func   Motor_Control
 * @brief
 * @param  None
 * @retval None
 */
void
MotorControl_PID(void);

#endif
