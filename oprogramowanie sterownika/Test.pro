CoDeSys+6  �                   @        @   2.3.10.0    @?    @                                     �{nQ +    @                           �cQ        h   @   q   C:\TWINCAT\PLC\LIB\STANDARD.LIB @                                                                                          CONCAT               STR1               ��              STR2               ��                 CONCAT                                         ��66  �   ����           CTD           M             ��           Variable for CD Edge Detection      CD            ��           Count Down on rising edge    LOAD            ��           Load Start Value    PV           ��           Start Value       Q            ��           Counter reached 0    CV           ��           Current Counter Value             ��66  �   ����           CTU           M             ��            Variable for CU Edge Detection       CU            ��       
    Count Up    RESET            ��           Reset Counter to 0    PV           ��           Counter Limit       Q            ��           Counter reached the Limit    CV           ��           Current Counter Value             ��66  �   ����           CTUD           MU             ��            Variable for CU Edge Detection    MD             ��            Variable for CD Edge Detection       CU            ��	       
    Count Up    CD            ��
           Count Down    RESET            ��           Reset Counter to Null    LOAD            ��           Load Start Value    PV           ��           Start Value / Counter Limit       QU            ��           Counter reached Limit    QD            ��           Counter reached Null    CV           ��           Current Counter Value             ��66  �   ����           DELETE               STR               ��              LEN           ��              POS           ��                 DELETE                                         ��66  �   ����           F_TRIG           M             ��
                 CLK            ��           Signal to detect       Q            ��           Edge detected             ��66  �   ����           FIND               STR1               ��              STR2               ��                 FIND                                     ��66  �   ����           INSERT               STR1               ��              STR2               ��              POS           ��                 INSERT                                         ��66  �   ����           LEFT               STR               ��              SIZE           ��                 LEFT                                         ��66  �   ����           LEN               STR               ��                 LEN                                     ��66  �   ����           MID               STR               ��              LEN           ��              POS           ��                 MID                                         ��66  �   ����           R_TRIG           M             ��
                 CLK            ��           Signal to detect       Q            ��           Edge detected             ��66  �   ����           REPLACE               STR1               ��              STR2               ��              L           ��              P           ��                 REPLACE                                         ��66  �   ����           RIGHT               STR               ��              SIZE           ��                 RIGHT                                         ��66  �   ����           RS               SET            ��              RESET1            ��                 Q1            ��
                       ��66  �   ����           SEMA           X             ��                 CLAIM            ��	              RELEASE            ��
                 BUSY            ��                       ��66  �   ����           SR               SET1            ��              RESET            ��                 Q1            ��	                       ��66  �   ����           TOF           M             ��           internal variable 	   StartTime            ��           internal variable       IN            ��       ?    starts timer with falling edge, resets timer with rising edge    PT           ��           time to pass, before Q is set       Q            ��	       2    is FALSE, PT seconds after IN had a falling edge    ET           ��
           elapsed time             ��66  �   ����           TON           M             ��           internal variable 	   StartTime            ��           internal variable       IN            ��       ?    starts timer with rising edge, resets timer with falling edge    PT           ��           time to pass, before Q is set       Q            ��	       0    is TRUE, PT seconds after IN had a rising edge    ET           ��
           elapsed time             ��66  �   ����           TP        	   StartTime            ��           internal variable       IN            ��       !    Trigger for Start of the Signal    PT           ��       '    The length of the High-Signal in 10ms       Q            ��	           The pulse    ET           ��
       &    The current phase of the High-Signal             ��66  �   ����    R    @                                                                                          MAIN                             �tnQ  @    ����            
       5  ( _      K   m     K   {     K   �     K   �                 �         +     ��localhost          �� ��@     �       �    ��     ��\�wp �w�������w>�7     �� ��@        @  ���@     ��"�� x�"\        x�"   ��"�8�   ��    \� �� �� �|��|������|�� ��@        �� ��@     �� `�O����p� �� x�O����|� �8�     ,   ,                                                        K         @   �tnQ�  /*BECKCONFI3*/
        !�/ @   @   �   �     3               
   Standard            	�{nQ                        VAR_GLOBAL
END_VAR
                                                                                  "   , � � ��             Standard
         MAIN����               �{nQ                 $����, � � ��                                  Standard �cQ	�cQ                                       	�{nQ                        VAR_CONFIG
END_VAR
                                                                                   '              ,              Global_Variables �{nQ	�{nQ                       VAR_GLOBAL
	Zielona_1 		AT 	%Q* 	:	 BOOL:= 0;
	Zielona_2 		AT 	%Q* 	:	 BOOL:= 0;
	Zielona_3 		AT 	%Q* 	:	 BOOL:= 0;
	Zielona_4 		AT 	%Q* 	:	 BOOL:= 0;

	Czerwona_1 		AT 	%Q*		:	 BOOL:= 0;
	Czerwona_2 		AT 	%Q*		:	 BOOL:= 0;
	Czerwona_3 		AT	%Q*		:	 BOOL:= 0;
	Czerwona_4 		AT 	%Q*		:	 BOOL:= 0;

	Przycisk_1 		AT 	%I*		:	BOOL;
	Przycisk_2 		AT 	%I*		: 	BOOL;
	Przycisk_3 		AT 	%I*		: 	BOOL;
	Przycisk_4 		AT 	%I*		: 	BOOL;

	RegulatorIn_1 	AT 	%I*		:	INT;
	RegulatorIn_2 	AT 	%I*		:	INT;

	RegulatorOut_1 	AT 	%Q*		:	UDINT;
	RegulatorOut_2 	AT 	%Q*		:	UDINT;

	Scale_1			AT	%Q*		:	INT;
	Scale_2			AT	%Q*		:	INT;

	Enable_1		AT	%Q*		:	BOOL;
	Enable_2		AT 	%Q*		:	BOOL;

(*	Velo_1			AT	%I*		:	LREAL;*)
(*	Velo_2			AT	%I*		:	LREAL;*)
END_VAR
                                                                                               '              , , , &5           TwinCAT_Configuration �tnQ	�{nQ     �r��           M  (* Generated automatically by TwinCAT - (read only) *)
VAR_CONFIG
	.Zielona_1 AT %QX0.0 : BOOL;	(*  ~ {LinkedWith:TIID^EtherCAT Adapter Device^WejsciaWyjscia (EK1100)^Zielone (EL2004)^Channel 1^Output} *)
	.Zielona_2 AT %QX0.1 : BOOL;	(*  ~ {LinkedWith:TIID^EtherCAT Adapter Device^WejsciaWyjscia (EK1100)^Zielone (EL2004)^Channel 2^Output} *)
	.Zielona_3 AT %QX0.2 : BOOL;	(*  ~ {LinkedWith:TIID^EtherCAT Adapter Device^WejsciaWyjscia (EK1100)^Zielone (EL2004)^Channel 3^Output} *)
	.Zielona_4 AT %QX0.3 : BOOL;	(*  ~ {LinkedWith:TIID^EtherCAT Adapter Device^WejsciaWyjscia (EK1100)^Zielone (EL2004)^Channel 4^Output} *)
	.Czerwona_1 AT %QX0.4 : BOOL;	(*  ~ {LinkedWith:TIID^EtherCAT Adapter Device^WejsciaWyjscia (EK1100)^Czerwone (EL2004)^Channel 1^Output} *)
	.Czerwona_2 AT %QX0.5 : BOOL;	(*  ~ {LinkedWith:TIID^EtherCAT Adapter Device^WejsciaWyjscia (EK1100)^Czerwone (EL2004)^Channel 2^Output} *)
	.Czerwona_3 AT %QX0.6 : BOOL;	(*  ~ {LinkedWith:TIID^EtherCAT Adapter Device^WejsciaWyjscia (EK1100)^Czerwone (EL2004)^Channel 3^Output} *)
	.Czerwona_4 AT %QX0.7 : BOOL;	(*  ~ {LinkedWith:TIID^EtherCAT Adapter Device^WejsciaWyjscia (EK1100)^Czerwone (EL2004)^Channel 4^Output} *)
	.Przycisk_1 AT %IX0.0 : BOOL;	(*  ~ {LinkedWith:TIID^EtherCAT Adapter Device^WejsciaWyjscia (EK1100)^Przyciski (EL1004)^Channel 1^Input} *)
	.Przycisk_2 AT %IX0.1 : BOOL;	(*  ~ {LinkedWith:TIID^EtherCAT Adapter Device^WejsciaWyjscia (EK1100)^Przyciski (EL1004)^Channel 2^Input} *)
	.Przycisk_3 AT %IX0.2 : BOOL;	(*  ~ {LinkedWith:TIID^EtherCAT Adapter Device^WejsciaWyjscia (EK1100)^Przyciski (EL1004)^Channel 3^Input} *)
	.Przycisk_4 AT %IX0.3 : BOOL;	(*  ~ {LinkedWith:TIID^EtherCAT Adapter Device^WejsciaWyjscia (EK1100)^Przyciski (EL1004)^Channel 4^Input} *)
	.RegulatorIn_1 AT %IB4 : INT;	(*  ~ {LinkedWith:TIID^EtherCAT Adapter Device^WejsciaWyjscia (EK1100)^Potencjometry (EL3102)^Channel 1^Value} *)
	.RegulatorIn_2 AT %IB6 : INT;	(*  ~ {LinkedWith:TIID^EtherCAT Adapter Device^WejsciaWyjscia (EK1100)^Potencjometry (EL3102)^Channel 2^Value} *)
	.RegulatorOut_1 AT %QB4 : UDINT;	(*  ~ {LinkedWith:TINC^NC-Task 1 SAF^Axes^Axis 1^Inputs^Axis 1_FromPlc^Override} *)
	.RegulatorOut_2 AT %QB8 : UDINT;	(*  ~ {LinkedWith:TINC^NC-Task 1 SAF^Axes^Axis 2^Inputs^Axis 2_FromPlc^Override} *)
	.Scale_1 AT %QB12 : INT;	(*  ~ {LinkedWith:TIID^EtherCAT Adapter Device^WejsciaWyjscia (EK1100)^Term 2 (EL4132)^Channel 1^Output} *)
	.Scale_2 AT %QB14 : INT;	(*  ~ {LinkedWith:TIID^EtherCAT Adapter Device^WejsciaWyjscia (EK1100)^Term 2 (EL4132)^Channel 2^Output} *)
	.Enable_1 AT %QX16.0 : BOOL;	(*  ~ {LinkedWith:TINC^NC-Task 1 SAF^Axes^Axis 1^Inputs^Axis 1_FromPlc^ControlDWord^Enable;TINC^NC-Task 1 SAF^Axes^Axis 1^Inputs^Axis 1_FromPlc^ControlDWord^FeedEnablePlus;TINC^NC-Task 1 SAF^Axes^Axis 1^Inputs^Axis 1_FromPlc^ControlDWord^FeedEnableMinus} *)
	.Enable_2 AT %QX16.1 : BOOL;	(*  ~ {LinkedWith:TINC^NC-Task 1 SAF^Axes^Axis 2^Inputs^Axis 2_FromPlc^ControlDWord^Enable;TINC^NC-Task 1 SAF^Axes^Axis 2^Inputs^Axis 2_FromPlc^ControlDWord^FeedEnablePlus;TINC^NC-Task 1 SAF^Axes^Axis 2^Inputs^Axis 2_FromPlc^ControlDWord^FeedEnableMinus} *)
END_VAR                                                                                               '           	   , % � �           Variable_Configuration �tnQ	�tnQ	      @                 VAR_CONFIG
END_VAR
                                                                                                 �   |0|0 @v    @T   MS Sans Serif @       HH':'mm':'ss   dd'-'MM'-'yyyy   dd'-'MM'-'yyyy HH':'mm':'ss�����                               �      �   ���  �3 ���   � ���                  DEFAULT             System      �   |0|0 @v    @T   MS Sans Serif @       HH':'mm':'ss   dd'-'MM'-'yyyy   dd'-'MM'-'yyyy HH':'mm':'ss�����                         HH':'mm':'ss   dd'-'MM'-'yyyy'            5  , B B ��           MAIN �tnQ	�tnQ      s e fat            PROGRAM MAIN
VAR
END_VAR�  Czerwona_1 :=  NOT Przycisk_1;
Czerwona_2 :=  NOT Przycisk_2;
Czerwona_3 :=  NOT Przycisk_3;
Czerwona_4 :=  NOT Przycisk_4;

IF Przycisk_1 THEN
	Zielona_1:=  TRUE;
(*	Velo_1 := -600.00;*)
END_IF;

IF Przycisk_2 THEN
	Zielona_2:=  TRUE;
(*	Velo_1 := -100.00;*)
END_IF;

IF Przycisk_3 THEN
	Zielona_3:=  TRUE;
(*	Velo_1 := 100.00;*)
END_IF;

IF Przycisk_4 THEN
	Zielona_4:=  TRUE;
(*	Velo_1 := 600.00;*)
END_IF;

Enable_1 := TRUE;
Enable_2 := TRUE;

Scale_1 := 100;
Scale_2 := 100;

IF (RegulatorIn_1   < 100) AND (RegulatorIn_1   > 0) THEN
	RegulatorOut_1 := RegulatorIn_1 * 10000;
ELSE IF (RegulatorIn_1   > 100) THEN
		RegulatorOut_1 := 100 * 10000;
END_IF;
END_IF;

IF (RegulatorIn_2   < 100) AND (RegulatorIn_2   > 0) THEN
	RegulatorOut_2 := RegulatorIn_2 * 10000;
ELSE IF (RegulatorIn_2   > 100) THEN
		RegulatorOut_2 := 100 * 10000;
END_IF;
END_IF;                !   , n n ��        
   StandState �tnQ
    @    �tnQ   d                                                                                                         
    @        � ( Ko � P   ���     ���                                                                      ���                              @             �   ��   �   ��   � � � ���     �   ��   �   ��   � � � ���                  ����, n n <�         "   STANDARD.LIB 5.6.98 12:03:02 @V�w5      CONCAT @                	   CTD @        	   CTU @        
   CTUD @           DELETE @           F_TRIG @        
   FIND @           INSERT @        
   LEFT @        	   LEN @        	   MID @           R_TRIG @           REPLACE @           RIGHT @           RS @        
   SEMA @           SR @        	   TOF @        	   TON @           TP @              Global Variables 0 @                        , � � ~�           2                ����������������  
             ����  �Z��            ����, � � ��                     POUs                 MAIN  5  ����          
   Data types  ����             Visualizations              
   StandState  !   ����              Global Variables                Global_Variables                     TwinCAT_Configuration                     Variable_Configuration  	   ����                                                            �cQ                         	   localhost            P      	   localhost            P      	   localhost            P             �_��