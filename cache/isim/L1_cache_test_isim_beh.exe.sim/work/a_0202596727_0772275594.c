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

/* This file is designed for use with ISim build 0xfbc00daa */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "/media/olesja/DATA/Cash/cache/L1_ks2.vhd";
extern char *IEEE_P_3620187407;

int ieee_p_3620187407_sub_5109402382352621412_3965413181(char *, char *, char *);


static void work_a_0202596727_0772275594_p_0(char *t0)
{
    int t1;
    int t2;
    char *t3;
    char *t4;
    int t5;
    int t6;
    char *t7;
    char *t8;
    int t9;
    char *t10;
    int t11;
    int t12;
    char *t13;
    int t14;
    int t15;
    int t16;
    unsigned int t17;
    unsigned int t18;
    unsigned int t19;
    char *t20;
    unsigned char t21;
    char *t22;
    int t23;
    int t24;
    unsigned int t25;
    unsigned int t26;
    unsigned int t27;
    char *t28;
    char *t29;
    char *t30;
    char *t31;
    char *t32;

LAB0:    xsi_set_current_line(27, ng0);
    t1 = (4 * 8);
    t2 = (t1 - 1);
    t3 = (t0 + 5766);
    *((int *)t3) = 0;
    t4 = (t0 + 5770);
    *((int *)t4) = t2;
    t5 = 0;
    t6 = t2;

LAB2:    if (t5 <= t6)
        goto LAB3;

LAB5:    t3 = (t0 + 3592);
    *((int *)t3) = 1;

LAB1:    return;
LAB3:    xsi_set_current_line(28, ng0);
    t7 = (t0 + 1032U);
    t8 = *((char **)t7);
    t9 = (4 * 8);
    t7 = (t0 + 1192U);
    t10 = *((char **)t7);
    t7 = (t0 + 5536U);
    t11 = ieee_p_3620187407_sub_5109402382352621412_3965413181(IEEE_P_3620187407, t10, t7);
    t12 = (t9 * t11);
    t13 = (t0 + 5766);
    t14 = *((int *)t13);
    t15 = (t12 + t14);
    t16 = (t15 - 127);
    t17 = (t16 * -1);
    xsi_vhdl_check_range_of_index(127, 0, -1, t15);
    t18 = (1U * t17);
    t19 = (0 + t18);
    t20 = (t8 + t19);
    t21 = *((unsigned char *)t20);
    t22 = (t0 + 5766);
    t23 = *((int *)t22);
    t24 = (t23 - 31);
    t25 = (t24 * -1);
    t26 = (1 * t25);
    t27 = (0U + t26);
    t28 = (t0 + 3688);
    t29 = (t28 + 56U);
    t30 = *((char **)t29);
    t31 = (t30 + 56U);
    t32 = *((char **)t31);
    *((unsigned char *)t32) = t21;
    xsi_driver_first_trans_delta(t28, t27, 1, 0LL);

LAB4:    t3 = (t0 + 5766);
    t5 = *((int *)t3);
    t4 = (t0 + 5770);
    t6 = *((int *)t4);
    if (t5 == t6)
        goto LAB5;

LAB6:    t1 = (t5 + 1);
    t5 = t1;
    t7 = (t0 + 5766);
    *((int *)t7) = t5;
    goto LAB2;

}

static void work_a_0202596727_0772275594_p_1(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;

LAB0:    xsi_set_current_line(31, ng0);

LAB3:    t1 = (t0 + 1512U);
    t2 = *((char **)t1);
    t1 = (t0 + 3752);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    memcpy(t6, t2, 32U);
    xsi_driver_first_trans_fast_port(t1);

LAB2:    t7 = (t0 + 3608);
    *((int *)t7) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}


extern void work_a_0202596727_0772275594_init()
{
	static char *pe[] = {(void *)work_a_0202596727_0772275594_p_0,(void *)work_a_0202596727_0772275594_p_1};
	xsi_register_didat("work_a_0202596727_0772275594", "isim/L1_cache_test_isim_beh.exe.sim/work/a_0202596727_0772275594.didat");
	xsi_register_executes(pe);
}
