/************************************************************************/
/*																		*/
/*	NetworkProfile.x                                                    */
/*																		*/
/*	Default Network Hardware for specific LAN board configurations.    	*/
/*	This will only include LAN hardware that physically is mounted		*/
/*	on the board. If the board has no LAN network hardware, the			*/
/*	board will not be specified in this file							*/
/*																		*/
/************************************************************************/
/*	Author: 	Keith Vogel 											*/
/*	Copyright 2011, Digilent Inc.										*/
/************************************************************************/
/*
  This library is free software; you can redistribute it and/or
  modify it under the terms of the GNU Lesser General Public
  License as published by the Free Software Foundation; either
  version 2.1 of the License, or (at your option) any later version.

  This library is distributed in the hope that it will be useful,
  but WITHOUT ANY WARRANTY; without even the implied warranty of
  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
  Lesser General Public License for more details.

  You should have received a copy of the GNU Lesser General Public
  License along with this library; if not, write to the Free Software
  Foundation, Inc., 51 Franklin St, Fifth Floor, Boston, MA  02110-1301  USA
*/
/************************************************************************/
/*  Revision History:													*/
/*																		*/
/*	4/26/2012(KeithV): Created											*/
/*																		*/
/************************************************************************/

#ifndef DEFAULT_LAN_NETWORK_PROFILE_X
#define DEFAULT_LAN_NETWORK_PROFILE_X

#define DNETcK_LAN_Hardware
#define _DNETcK_SMSC_8720

// board specific stuff
#if defined (_BOARD_CEREBOT_MX7CK_)

    #include <MX7cK-SMSC-8720.x>
    #define DNETcKInitNetworkHardware() {TRISAbits.TRISA6 = 0;LATAbits.LATA6 = 1;}

#elif defined (_BOARD_CEREBOT_32MX7_)

    #include <32MX7-SMSC-8720.x>
    #define DNETcKInitNetworkHardware() {TRISEbits.TRISE9 = 0;LATEbits.LATE9 = 1;}

#else

    #error No default network hardware for this board; include a network hardware libarary.

#endif

#endif // DEFAULT_LAN_NETWORK_PROFILE_X
