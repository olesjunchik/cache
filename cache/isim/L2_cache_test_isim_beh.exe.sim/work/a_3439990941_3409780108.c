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

/* This file is designed for use with ISim build 0x8ef4fb42 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "F:/EVM/Cash_proj/L2_tag.vhd";
extern char *IEEE_P_3620187407;

int ieee_p_3620187407_sub_514432868_3965413181(char *, char *, char *);


static void work_a_3439990941_3409780108_p_0(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    int t4;
    unsigned int t5;
    unsigned int t6;
    unsigned int t7;
    char *t8;
    int t9;
    int t10;
    unsigned int t11;
    unsigned int t12;
    unsigned int t13;
    char *t14;
    char *t15;
    char *t16;
    char *t17;
    char *t18;
    char *t19;
    char *t20;

LAB0:    xsi_set_current_line(56, ng0);

LAB3:    t1 = (t0 + 1144U);
    t2 = *((char **)t1);
    t1 = (t0 + 592U);
    t3 = *((char **)t1);
    t4 = (8 - 1);
    t5 = (10 - t4);
    t6 = (t5 * 1U);
    t7 = (0 + t6);
    t1 = (t3 + t7);
    t8 = (t0 + 5308U);
    t9 = ieee_p_3620187407_sub_514432868_3965413181(IEEE_P_3620187407, t1, t8);
    t10 = (t9 - 255);
    t11 = (t10 * -1);
    xsi_vhdl_check_range_of_index(255, 0, -1, t9);
    t12 = (3U * t11);
    t13 = (0 + t12);
    t14 = (t2 + t13);
    t15 = (t0 + 3132);
    t16 = (t15 + 32U);
    t17 = *((char **)t16);
    t18 = (t17 + 40U);
    t19 = *((char **)t18);
    memcpy(t19, t14, 3U);
    xsi_driver_first_trans_fast(t15);

LAB2:    t20 = (t0 + 3056);
    *((int *)t20) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_3439990941_3409780108_p_1(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    int t4;
    unsigned int t5;
    unsigned int t6;
    unsigned int t7;
    char *t8;
    int t9;
    int t10;
    unsigned int t11;
    unsigned int t12;
    unsigned int t13;
    char *t14;
    unsigned char t15;
    char *t16;
    char *t17;
    char *t18;
    char *t19;
    char *t20;
    char *t21;

LAB0:    xsi_set_current_line(57, ng0);

LAB3:    t1 = (t0 + 1236U);
    t2 = *((char **)t1);
    t1 = (t0 + 592U);
    t3 = *((char **)t1);
    t4 = (8 - 1);
    t5 = (10 - t4);
    t6 = (t5 * 1U);
    t7 = (0 + t6);
    t1 = (t3 + t7);
    t8 = (t0 + 5308U);
    t9 = ieee_p_3620187407_sub_514432868_3965413181(IEEE_P_3620187407, t1, t8);
    t10 = (t9 - 255);
    t11 = (t10 * -1);
    xsi_vhdl_check_range_of_index(255, 0, -1, t9);
    t12 = (1U * t11);
    t13 = (0 + t12);
    t14 = (t2 + t13);
    t15 = *((unsigned char *)t14);
    t16 = (t0 + 3168);
    t17 = (t16 + 32U);
    t18 = *((char **)t17);
    t19 = (t18 + 40U);
    t20 = *((char **)t19);
    *((unsigned char *)t20) = t15;
    xsi_driver_first_trans_fast(t16);

LAB2:    t21 = (t0 + 3064);
    *((int *)t21) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_3439990941_3409780108_p_2(char *t0)
{
    unsigned char t1;
    char *t2;
    unsigned char t3;
    char *t4;
    char *t5;
    unsigned char t6;
    unsigned char t7;
    char *t8;
    unsigned char t9;
    unsigned char t10;
    char *t11;
    unsigned int t12;
    unsigned int t13;
    int t14;
    unsigned int t15;
    unsigned int t16;
    char *t17;
    unsigned int t18;
    unsigned int t19;
    char *t20;
    unsigned char t21;
    unsigned int t22;
    char *t23;
    char *t24;
    char *t25;
    char *t26;
    char *t27;
    int t28;
    int t29;
    int t30;
    int t31;
    unsigned int t32;
    unsigned int t33;

LAB0:    xsi_set_current_line(61, ng0);
    t2 = (t0 + 752U);
    t3 = xsi_signal_has_event(t2);
    if (t3 == 1)
        goto LAB5;

LAB6:    t1 = (unsigned char)0;

LAB7:    if (t1 != 0)
        goto LAB2;

LAB4:
LAB3:    t2 = (t0 + 3072);
    *((int *)t2) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(62, ng0);
    t4 = (t0 + 868U);
    t8 = *((char **)t4);
    t9 = *((unsigned char *)t8);
    t10 = (t9 == (unsigned char)3);
    if (t10 != 0)
        goto LAB8;

LAB10:    t2 = (t0 + 684U);
    t4 = *((char **)t2);
    t1 = *((unsigned char *)t4);
    t3 = (t1 == (unsigned char)3);
    if (t3 != 0)
        goto LAB16;

LAB17:
LAB9:    goto LAB3;

LAB5:    t4 = (t0 + 776U);
    t5 = *((char **)t4);
    t6 = *((unsigned char *)t5);
    t7 = (t6 == (unsigned char)3);
    t1 = t7;
    goto LAB7;

LAB8:    xsi_set_current_line(63, ng0);
    t4 = xsi_get_transient_memory(768U);
    memset(t4, 0, 768U);
    t11 = t4;
    t12 = (3U * 1U);
    if (-1 == -1)
        goto LAB11;

LAB12:    t13 = 0;

LAB13:    t14 = (t13 - 255);
    t15 = (t14 * -1);
    t16 = (t12 * t15);
    t17 = (t11 + t16);
    t18 = (t12 * 256U);
    t19 = (3U * 1U);
    t20 = t17;
    memset(t20, (unsigned char)2, t19);
    t21 = (t19 != 0);
    if (t21 == 1)
        goto LAB14;

LAB15:    t23 = (t0 + 3204);
    t24 = (t23 + 32U);
    t25 = *((char **)t24);
    t26 = (t25 + 40U);
    t27 = *((char **)t26);
    memcpy(t27, t4, 768U);
    xsi_driver_first_trans_fast(t23);
    xsi_set_current_line(64, ng0);
    t2 = xsi_get_transient_memory(256U);
    memset(t2, 0, 256U);
    t4 = t2;
    memset(t4, (unsigned char)2, 256U);
    t5 = (t0 + 3240);
    t8 = (t5 + 32U);
    t11 = *((char **)t8);
    t17 = (t11 + 40U);
    t20 = *((char **)t17);
    memcpy(t20, t2, 256U);
    xsi_driver_first_trans_fast(t5);
    goto LAB9;

LAB11:    t13 = 255;
    goto LAB13;

LAB14:    t22 = (t18 / t19);
    xsi_mem_set_data(t17, t17, t19, t22);
    goto LAB15;

LAB16:    xsi_set_current_line(66, ng0);
    t2 = (t0 + 592U);
    t5 = *((char **)t2);
    t14 = (3 + 8);
    t28 = (t14 - 1);
    t12 = (10 - t28);
    t13 = (t12 * 1U);
    t15 = (0 + t13);
    t2 = (t5 + t15);
    t8 = (t0 + 592U);
    t11 = *((char **)t8);
    t29 = (8 - 1);
    t16 = (10 - t29);
    t18 = (t16 * 1U);
    t19 = (0 + t18);
    t8 = (t11 + t19);
    t17 = (t0 + 5308U);
    t30 = ieee_p_3620187407_sub_514432868_3965413181(IEEE_P_3620187407, t8, t17);
    t31 = (t30 - 255);
    t22 = (t31 * -1);
    t32 = (3U * t22);
    t33 = (0U + t32);
    t20 = (t0 + 3204);
    t23 = (t20 + 32U);
    t24 = *((char **)t23);
    t25 = (t24 + 40U);
    t26 = *((char **)t25);
    memcpy(t26, t2, 3U);
    xsi_driver_first_trans_delta(t20, t33, 3U, 0LL);
    xsi_set_current_line(67, ng0);
    t2 = (t0 + 592U);
    t4 = *((char **)t2);
    t14 = (8 - 1);
    t12 = (10 - t14);
    t13 = (t12 * 1U);
    t15 = (0 + t13);
    t2 = (t4 + t15);
    t5 = (t0 + 5308U);
    t28 = ieee_p_3620187407_sub_514432868_3965413181(IEEE_P_3620187407, t2, t5);
    t29 = (t28 - 255);
    t16 = (t29 * -1);
    t18 = (1 * t16);
    t19 = (0U + t18);
    t8 = (t0 + 3240);
    t11 = (t8 + 32U);
    t17 = *((char **)t11);
    t20 = (t17 + 40U);
    t23 = *((char **)t20);
    *((unsigned char *)t23) = (unsigned char)3;
    xsi_driver_first_trans_delta(t8, t19, 1, 0LL);
    goto LAB9;

}

static void work_a_3439990941_3409780108_p_3(char *t0)
{
    unsigned char t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    int t6;
    int t7;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    char *t11;
    unsigned char t12;
    char *t13;
    char *t14;
    unsigned char t15;
    unsigned char t16;
    char *t17;
    char *t18;
    char *t19;
    char *t20;
    char *t21;
    char *t22;
    char *t23;
    char *t24;
    char *t25;
    char *t26;

LAB0:    xsi_set_current_line(72, ng0);
    t2 = (t0 + 1328U);
    t3 = *((char **)t2);
    t2 = (t0 + 5276U);
    t4 = (t0 + 592U);
    t5 = *((char **)t4);
    t6 = (3 + 8);
    t7 = (t6 - 1);
    t8 = (10 - t7);
    t9 = (t8 * 1U);
    t10 = (0 + t9);
    t4 = (t5 + t10);
    t11 = (t0 + 5292U);
    t12 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t3, t2, t4, t11);
    if (t12 == 1)
        goto LAB5;

LAB6:    t1 = (unsigned char)0;

LAB7:    if (t1 != 0)
        goto LAB3;

LAB4:
LAB8:    t21 = (t0 + 3276);
    t22 = (t21 + 32U);
    t23 = *((char **)t22);
    t24 = (t23 + 40U);
    t25 = *((char **)t24);
    *((unsigned char *)t25) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t21);

LAB2:    t26 = (t0 + 3080);
    *((int *)t26) = 1;

LAB1:    return;
LAB3:    t13 = (t0 + 3276);
    t17 = (t13 + 32U);
    t18 = *((char **)t17);
    t19 = (t18 + 40U);
    t20 = *((char **)t19);
    *((unsigned char *)t20) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t13);
    goto LAB2;

LAB5:    t13 = (t0 + 1420U);
    t14 = *((char **)t13);
    t15 = *((unsigned char *)t14);
    t16 = (t15 == (unsigned char)3);
    t1 = t16;
    goto LAB7;

LAB9:    goto LAB2;

}

static void work_a_3439990941_3409780108_p_4(char *t0)
{
    char *t1;
    char *t2;
    int t3;
    unsigned int t4;
    unsigned int t5;
    unsigned int t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;

LAB0:    xsi_set_current_line(73, ng0);

LAB3:    t1 = (t0 + 592U);
    t2 = *((char **)t1);
    t3 = (8 - 1);
    t4 = (10 - t3);
    t5 = (t4 * 1U);
    t6 = (0 + t5);
    t1 = (t2 + t6);
    t7 = (t0 + 3312);
    t8 = (t7 + 32U);
    t9 = *((char **)t8);
    t10 = (t9 + 40U);
    t11 = *((char **)t10);
    memcpy(t11, t1, 8U);
    xsi_driver_first_trans_fast_port(t7);

LAB2:    t12 = (t0 + 3088);
    *((int *)t12) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}


extern void work_a_3439990941_3409780108_init()
{
	static char *pe[] = {(void *)work_a_3439990941_3409780108_p_0,(void *)work_a_3439990941_3409780108_p_1,(void *)work_a_3439990941_3409780108_p_2,(void *)work_a_3439990941_3409780108_p_3,(void *)work_a_3439990941_3409780108_p_4};
	xsi_register_didat("work_a_3439990941_3409780108", "isim/L2_cache_test_isim_beh.exe.sim/work/a_3439990941_3409780108.didat");
	xsi_register_executes(pe);
}
