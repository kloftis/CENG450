/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                       */
/*  \   \        Copyright (c) 2003-2009 Xilinx, Inc.                */
/*  /   /          All Right Reserved.                                 */
/* /---/   /\                                                         */
/* \   \  /  \                                                      */
/*  \___\/\___\                                                    */
/***********************************************************************/

/* This file is designed for use with ISim build 0x2f00eba5 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "//samba.engr.uvic.ca/home/kloftis/CENG 450/CENG 450 Final/450Processor/Memory.vhd";
extern char *IEEE_P_3620187407;

char *ieee_p_3620187407_sub_436279890_3965413181(char *, char *, char *, char *, int );
int ieee_p_3620187407_sub_514432868_3965413181(char *, char *, char *);


static void work_a_3392787015_2829513722_p_0(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    int t4;
    int t5;
    unsigned int t6;
    unsigned int t7;
    unsigned int t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;

LAB0:    xsi_set_current_line(129, ng0);

LAB3:    t1 = (t0 + 948U);
    t2 = *((char **)t1);
    t1 = (t0 + 592U);
    t3 = *((char **)t1);
    t1 = (t0 + 3460U);
    t4 = ieee_p_3620187407_sub_514432868_3965413181(IEEE_P_3620187407, t3, t1);
    t5 = (t4 - 255);
    t6 = (t5 * -1);
    xsi_vhdl_check_range_of_index(255, 0, -1, t4);
    t7 = (8U * t6);
    t8 = (0 + t7);
    t9 = (t2 + t8);
    t10 = (t0 + 1896);
    t11 = (t10 + 32U);
    t12 = *((char **)t11);
    t13 = (t12 + 40U);
    t14 = *((char **)t13);
    memcpy(t14, t9, 8U);
    xsi_driver_first_trans_fast_port(t10);

LAB2:    t15 = (t0 + 1844);
    *((int *)t15) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_3392787015_2829513722_p_1(char *t0)
{
    char t3[16];
    char *t1;
    char *t2;
    char *t4;
    char *t5;
    int t6;
    int t7;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;
    char *t17;

LAB0:    xsi_set_current_line(130, ng0);

LAB3:    t1 = (t0 + 948U);
    t2 = *((char **)t1);
    t1 = (t0 + 592U);
    t4 = *((char **)t1);
    t1 = (t0 + 3460U);
    t5 = ieee_p_3620187407_sub_436279890_3965413181(IEEE_P_3620187407, t3, t4, t1, 1);
    t6 = ieee_p_3620187407_sub_514432868_3965413181(IEEE_P_3620187407, t5, t3);
    t7 = (t6 - 255);
    t8 = (t7 * -1);
    xsi_vhdl_check_range_of_index(255, 0, -1, t6);
    t9 = (8U * t8);
    t10 = (0 + t9);
    t11 = (t2 + t10);
    t12 = (t0 + 1932);
    t13 = (t12 + 32U);
    t14 = *((char **)t13);
    t15 = (t14 + 40U);
    t16 = *((char **)t15);
    memcpy(t16, t11, 8U);
    xsi_driver_first_trans_fast_port(t12);

LAB2:    t17 = (t0 + 1852);
    *((int *)t17) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}


extern void work_a_3392787015_2829513722_init()
{
	static char *pe[] = {(void *)work_a_3392787015_2829513722_p_0,(void *)work_a_3392787015_2829513722_p_1};
	xsi_register_didat("work_a_3392787015_2829513722", "isim/Processor_isim_beh.exe.sim/work/a_3392787015_2829513722.didat");
	xsi_register_executes(pe);
}
