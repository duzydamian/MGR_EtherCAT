CoDeSys+6                    @        @   2.3.10.0    @?    @                                     Єџ-R +    @                           рcQ        h   @   q   C:\TWINCAT\PLC\LIB\STANDARD.LIB @                                                                                          CONCAT               STR1               §џ              STR2               §џ                 CONCAT                                         ды66     џџџџ           CTD           M             §џ           Variable for CD Edge Detection      CD            §џ           Count Down on rising edge    LOAD            §џ           Load Start Value    PV           §џ           Start Value       Q            §џ           Counter reached 0    CV           §џ           Current Counter Value             ды66     џџџџ           CTU           M             §џ            Variable for CU Edge Detection       CU            §џ       
    Count Up    RESET            §џ           Reset Counter to 0    PV           §џ           Counter Limit       Q            §џ           Counter reached the Limit    CV           §џ           Current Counter Value             ды66     џџџџ           CTUD           MU             §џ            Variable for CU Edge Detection    MD             §џ            Variable for CD Edge Detection       CU            §џ	       
    Count Up    CD            §џ
           Count Down    RESET            §џ           Reset Counter to Null    LOAD            §џ           Load Start Value    PV           §џ           Start Value / Counter Limit       QU            §џ           Counter reached Limit    QD            §џ           Counter reached Null    CV           §џ           Current Counter Value             ды66     џџџџ           DELETE               STR               §џ              LEN           §џ              POS           §џ                 DELETE                                         ды66     џџџџ           F_TRIG           M             §џ
                 CLK            §џ           Signal to detect       Q            §џ           Edge detected             ды66     џџџџ           FIND               STR1               §џ              STR2               §џ                 FIND                                     ды66     џџџџ           INSERT               STR1               §џ              STR2               §џ              POS           §џ                 INSERT                                         ды66     џџџџ           LEFT               STR               §џ              SIZE           §џ                 LEFT                                         ды66     џџџџ           LEN               STR               §џ                 LEN                                     ды66     џџџџ           MID               STR               §џ              LEN           §џ              POS           §џ                 MID                                         ды66     џџџџ           R_TRIG           M             §џ
                 CLK            §џ           Signal to detect       Q            §џ           Edge detected             ды66     џџџџ           REPLACE               STR1               §џ              STR2               §џ              L           §џ              P           §џ                 REPLACE                                         ды66     џџџџ           RIGHT               STR               §џ              SIZE           §џ                 RIGHT                                         ды66     џџџџ           RS               SET            §џ              RESET1            §џ                 Q1            §џ
                       ды66     џџџџ           SEMA           X             §џ                 CLAIM            §џ	              RELEASE            §џ
                 BUSY            §џ                       ды66     џџџџ           SR               SET1            §џ              RESET            §џ                 Q1            §џ	                       ды66     џџџџ           TOF           M             §џ           internal variable 	   StartTime            §џ           internal variable       IN            §џ       ?    starts timer with falling edge, resets timer with rising edge    PT           §џ           time to pass, before Q is set       Q            §џ	       2    is FALSE, PT seconds after IN had a falling edge    ET           §џ
           elapsed time             ды66     џџџџ           TON           M             §џ           internal variable 	   StartTime            §џ           internal variable       IN            §џ       ?    starts timer with rising edge, resets timer with falling edge    PT           §џ           time to pass, before Q is set       Q            §џ	       0    is TRUE, PT seconds after IN had a rising edge    ET           §џ
           elapsed time             ды66     џџџџ           TP        	   StartTime            §џ           internal variable       IN            §џ       !    Trigger for Start of the Signal    PT           §џ       '    The length of the High-Signal in 10ms       Q            §џ	           The pulse    ET           §џ
       &    The current phase of the High-Signal             ды66     џџџџ    R    @                                                                                          MAIN                             іЄЗQ  @    џџџџ            
      ћџџџ   	   єџџџ      5  ( w      K        K        K   Ё     K   Ж                 У         +     КЛlocalhost          шћ Јѓ@            Ј    ай     \Тwp РwџџџџуТСw>7     шћ Јѓ@        @  РЈѓ@     " к x"\        x"   "8   џџ    \и Фк Јк ю|№|џџџџы|шћ Јѓ@        шћ Јѓ@     фу `Oџџџџpл фу xOџџџџ|л Н8у     ,   ,                                                        K         @   іЄЗQ  /*BECKCONFI3*/
        !Ћ/ @   @           3               
   Standard            	Єџ-R                        VAR_GLOBAL
END_VAR
                                                                                  "   , C  =             Standard
         MAIN();џџџџ               Єџ-R                 $ћџџџ, А А ЊЙ                                  Standard рcQ	рcQ                                       	Єџ-R                        VAR_CONFIG
END_VAR
                                                                                   '              ,              Global_Variables Єџ-R	Єџ-R                       VAR_GLOBAL
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
                                                                                               '              , , , &5           TwinCAT_Configuration іЄЗQ	Єџ-R     Дrџџ           O  (* Generated automatically by TwinCAT - (read only) *)
VAR_CONFIG
	.Zielona_1 AT %QX0.0 : BOOL;	(*  ~ {LinkedWith:TIID^Device 2 (EtherCAT (v2.10 only))^Term 1 (EK1100)^Zielone (EL2004)^Channel 1^Output} *)
	.Zielona_2 AT %QX0.1 : BOOL;	(*  ~ {LinkedWith:TIID^Device 2 (EtherCAT (v2.10 only))^Term 1 (EK1100)^Zielone (EL2004)^Channel 2^Output} *)
	.Zielona_3 AT %QX0.2 : BOOL;	(*  ~ {LinkedWith:TIID^Device 2 (EtherCAT (v2.10 only))^Term 1 (EK1100)^Zielone (EL2004)^Channel 3^Output} *)
	.Zielona_4 AT %QX0.3 : BOOL;	(*  ~ {LinkedWith:TIID^Device 2 (EtherCAT (v2.10 only))^Term 1 (EK1100)^Zielone (EL2004)^Channel 4^Output} *)
	.Czerwona_1 AT %QX0.4 : BOOL;	(*  ~ {LinkedWith:TIID^Device 2 (EtherCAT (v2.10 only))^Term 1 (EK1100)^Czerwone (EL2004)^Channel 1^Output} *)
	.Czerwona_2 AT %QX0.5 : BOOL;	(*  ~ {LinkedWith:TIID^Device 2 (EtherCAT (v2.10 only))^Term 1 (EK1100)^Czerwone (EL2004)^Channel 2^Output} *)
	.Czerwona_3 AT %QX0.6 : BOOL;	(*  ~ {LinkedWith:TIID^Device 2 (EtherCAT (v2.10 only))^Term 1 (EK1100)^Czerwone (EL2004)^Channel 3^Output} *)
	.Czerwona_4 AT %QX0.7 : BOOL;	(*  ~ {LinkedWith:TIID^Device 2 (EtherCAT (v2.10 only))^Term 1 (EK1100)^Czerwone (EL2004)^Channel 4^Output} *)
	.Przycisk_1 AT %IX0.0 : BOOL;	(*  ~ {LinkedWith:TIID^Device 2 (EtherCAT (v2.10 only))^Term 1 (EK1100)^Przyciski (EL1004)^Channel 1^Input} *)
	.Przycisk_2 AT %IX0.1 : BOOL;	(*  ~ {LinkedWith:TIID^Device 2 (EtherCAT (v2.10 only))^Term 1 (EK1100)^Przyciski (EL1004)^Channel 2^Input} *)
	.Przycisk_3 AT %IX0.2 : BOOL;	(*  ~ {LinkedWith:TIID^Device 2 (EtherCAT (v2.10 only))^Term 1 (EK1100)^Przyciski (EL1004)^Channel 3^Input} *)
	.Przycisk_4 AT %IX0.3 : BOOL;	(*  ~ {LinkedWith:TIID^Device 2 (EtherCAT (v2.10 only))^Term 1 (EK1100)^Przyciski (EL1004)^Channel 4^Input} *)
	.RegulatorIn_1 AT %IB4 : INT;	(*  ~ {LinkedWith:TIID^Device 2 (EtherCAT (v2.10 only))^Term 1 (EK1100)^Term 6 (EL3102)^Channel 1^Value} *)
	.RegulatorIn_2 AT %IB6 : INT;	(*  ~ {LinkedWith:TIID^Device 2 (EtherCAT (v2.10 only))^Term 1 (EK1100)^Term 6 (EL3102)^Channel 2^Value} *)
	.RegulatorOut_1 AT %QB4 : UDINT;	(*  ~ {LinkedWith:TINC^NC-Task 1 SAF^Axes^Axis 1^Inputs^Axis 1_FromPlc^Override} *)
	.RegulatorOut_2 AT %QB8 : UDINT;	(*  ~ {LinkedWith:TINC^NC-Task 1 SAF^Axes^Axis 2^Inputs^Axis 2_FromPlc^Override} *)
	.Scale_1 AT %QB12 : INT;	(*  ~ {LinkedWith:TIID^Device 2 (EtherCAT (v2.10 only))^Term 1 (EK1100)^Term 2 (EL4132)^Channel 1^Output} *)
	.Scale_2 AT %QB14 : INT;	(*  ~ {LinkedWith:TIID^Device 2 (EtherCAT (v2.10 only))^Term 1 (EK1100)^Term 2 (EL4132)^Channel 2^Output} *)
	.Enable_1 AT %QX16.0 : BOOL;	(*  ~ {LinkedWith:TINC^NC-Task 1 SAF^Axes^Axis 1^Inputs^Axis 1_FromPlc^ControlDWord^Enable;TINC^NC-Task 1 SAF^Axes^Axis 1^Inputs^Axis 1_FromPlc^ControlDWord^FeedEnablePlus;TINC^NC-Task 1 SAF^Axes^Axis 1^Inputs^Axis 1_FromPlc^ControlDWord^FeedEnableMinus} *)
	.Enable_2 AT %QX16.1 : BOOL;	(*  ~ {LinkedWith:TINC^NC-Task 1 SAF^Axes^Axis 2^Inputs^Axis 2_FromPlc^ControlDWord^Enable;TINC^NC-Task 1 SAF^Axes^Axis 2^Inputs^Axis 2_FromPlc^ControlDWord^FeedEnablePlus;TINC^NC-Task 1 SAF^Axes^Axis 2^Inputs^Axis 2_FromPlc^ControlDWord^FeedEnableMinus} *)
END_VAR                                                                                               '           	   , % р щ           Variable_Configuration іЄЗQ	іЄЗQ	      @                 VAR_CONFIG
END_VAR
                                                                                                    |0|0 @v    @T   MS Sans Serif @       HH':'mm':'ss   dd'-'MM'-'yyyy   dd'-'MM'-'yyyy HH':'mm':'ssѓџџџ                               њ      џ   џџџ  Ь3 џџџ   џ џџџ                  DEFAULT             System         |0|0 @v    @T   MS Sans Serif @       HH':'mm':'ss   dd'-'MM'-'yyyy   dd'-'MM'-'yyyy HH':'mm':'ssѓџџџ                         HH':'mm':'ss   dd'-'MM'-'yyyy'            5  , B B Љі           MAIN іЄЗQ	іЄЗQ      s e fat            PROGRAM MAIN
VAR
END_VAR  Czerwona_1 :=  NOT Przycisk_1;
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
END_IF;                !   , n n РВ        
   StandState іЄЗQ
    @    іЄЗQ   d                                                                                                         
    @         ( Ko ц P   џџџ     џџџ                                                                      ѓџ                              @             џ   џџ   џ   џџ   џ џ џ РРР                                      §џџџ, m  ;         "   STANDARD.LIB 5.6.98 12:03:02 @VТw5      CONCAT @                	   CTD @        	   CTU @        
   CTUD @           DELETE @           F_TRIG @        
   FIND @           INSERT @        
   LEFT @        	   LEN @        	   MID @           R_TRIG @           REPLACE @           RIGHT @           RS @        
   SEMA @           SR @        	   TOF @        	   TON @           TP @              Global Variables 0 @                        ,   ~           2                џџџџџџџџџџџџџџџџ  
             њџџџ  ZЋ            јџџџ, Ц Ц РЯ                     POUs                 MAIN  5  џџџџ          
   Data types  џџџџ             Visualizations              
   StandState  !   џџџџ              Global Variables                 Global_Variables                     TwinCAT_Configuration                     Variable_Configuration  	   џџџџ                                                            рcQ                         	   localhost            P      	   localhost            P      	   localhost            P            y)і