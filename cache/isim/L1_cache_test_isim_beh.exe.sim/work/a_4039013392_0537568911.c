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
static const char *ng0 = "/media/olesja/DATA/Cash/cache/L1_tag.vhd";
extern char *IEEE_P_3620187407;
extern char *IEEE_P_3499444699;

char *ieee_p_3499444699_sub_17544701978858283880_3536714472(char *, char *, int , int );
int ieee_p_3620187407_sub_5109402382352621412_3965413181(char *, char *, char *);


static void work_a_4039013392_0537568911_p_0(char *t0)
{
    char t20[16];
    char t30[16];
    char *t1;
    char *t2;
    unsigned char t3;
    unsigned char t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    int t11;
    int t12;
    int t13;
    int t14;
    int t15;
    int t16;
    unsigned int t17;
    unsigned int t18;
    unsigned int t19;
    int t21;
    unsigned int t22;
    int t23;
    char *t24;
    char *t25;
    int t26;
    int t27;
    unsigned int t28;
    unsigned int t29;
    char *t31;
    char *t32;
    int t33;
    unsigned int t34;
    int t35;
    char *t36;
    char *t37;
    char *t38;
    char *t39;
    char *t40;

LAB0:    xsi_set_current_line(89, ng0);
    t1 = (t0 + 3944U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB2;

LAB4:    xsi_set_current_line(93, ng0);
    t1 = (t0 + 3464U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB5;

LAB7:    xsi_set_current_line(104, ng0);
    t1 = xsi_get_transient_memory(8U);
    memset(t1, 0, 8U);
    t2 = t1;
    memset(t2, (unsigned char)2, 8U);
    t5 = (t0 + 9576);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 8U);
    xsi_driver_first_trans_fast(t5);

LAB6:    xsi_set_current_line(107, ng0);
    t1 = (t0 + 3624U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB18;

LAB20:    xsi_set_current_line(110, ng0);
    t1 = xsi_get_transient_memory(8U);
    memset(t1, 0, 8U);
    t2 = t1;
    memset(t2, (unsigned char)2, 8U);
    t5 = (t0 + 9640);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 8U);
    xsi_driver_first_trans_fast(t5);

LAB19:    xsi_set_current_line(113, ng0);
    t1 = (t0 + 3304U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB21;

LAB23:    xsi_set_current_line(116, ng0);
    t1 = xsi_get_transient_memory(8U);
    memset(t1, 0, 8U);
    t2 = t1;
    memset(t2, (unsigned char)2, 8U);
    t5 = (t0 + 9704);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 8U);
    xsi_driver_first_trans_fast(t5);

LAB22:
LAB3:    t1 = (t0 + 9320);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(90, ng0);
    t1 = xsi_get_transient_memory(3U);
    memset(t1, 0, 3U);
    t5 = t1;
    memset(t5, (unsigned char)2, 3U);
    t6 = (t0 + 9448);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t1, 3U);
    xsi_driver_first_trans_fast(t6);
    xsi_set_current_line(91, ng0);
    t1 = (t0 + 9512);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((int *)t7) = 0;
    xsi_driver_first_trans_fast(t1);
    goto LAB3;

LAB5:    xsi_set_current_line(94, ng0);
    t1 = (t0 + 9512);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    *((int *)t8) = 0;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(95, ng0);
    t1 = (t0 + 6320U);
    t2 = *((char **)t1);
    t11 = *((int *)t2);
    t12 = (t11 - 1);
    t1 = (t0 + 14996);
    *((int *)t1) = 0;
    t5 = (t0 + 15000);
    *((int *)t5) = t12;
    t13 = 0;
    t14 = t12;

LAB8:    if (t13 <= t14)
        goto LAB9;

LAB11:    xsi_set_current_line(101, ng0);
    t1 = (t0 + 5544U);
    t2 = *((char **)t1);
    t11 = *((int *)t2);
    t12 = (t11 - 7);
    t17 = (t12 * -1);
    t18 = (1 * t17);
    t19 = (0U + t18);
    t1 = (t0 + 9576);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = (unsigned char)3;
    xsi_driver_first_trans_delta(t1, t19, 1, 0LL);
    xsi_set_current_line(102, ng0);
    t1 = (t0 + 5544U);
    t2 = *((char **)t1);
    t11 = *((int *)t2);
    t1 = ieee_p_3499444699_sub_17544701978858283880_3536714472(IEEE_P_3499444699, t20, t11, 3);
    t5 = (t20 + 12U);
    t17 = *((unsigned int *)t5);
    t17 = (t17 * 1U);
    t3 = (3U != t17);
    if (t3 == 1)
        goto LAB16;

LAB17:    t6 = (t0 + 9448);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t1, 3U);
    xsi_driver_first_trans_fast(t6);
    goto LAB6;

LAB9:    xsi_set_current_line(96, ng0);
    t6 = (t0 + 5224U);
    t7 = *((char **)t6);
    t6 = (t0 + 14996);
    t15 = *((int *)t6);
    t16 = (t15 - 7);
    t17 = (t16 * -1);
    xsi_vhdl_check_range_of_index(7, 0, -1, *((int *)t6));
    t18 = (3U * t17);
    t19 = (0 + t18);
    t8 = (t7 + t19);
    t9 = (t20 + 0U);
    t10 = (t9 + 0U);
    *((int *)t10) = 2;
    t10 = (t9 + 4U);
    *((int *)t10) = 0;
    t10 = (t9 + 8U);
    *((int *)t10) = -1;
    t21 = (0 - 2);
    t22 = (t21 * -1);
    t22 = (t22 + 1);
    t10 = (t9 + 12U);
    *((unsigned int *)t10) = t22;
    t23 = ieee_p_3620187407_sub_5109402382352621412_3965413181(IEEE_P_3620187407, t8, t20);
    t10 = (t0 + 5224U);
    t24 = *((char **)t10);
    t10 = (t0 + 5544U);
    t25 = *((char **)t10);
    t26 = *((int *)t25);
    t27 = (t26 - 7);
    t22 = (t27 * -1);
    xsi_vhdl_check_range_of_index(7, 0, -1, t26);
    t28 = (3U * t22);
    t29 = (0 + t28);
    t10 = (t24 + t29);
    t31 = (t30 + 0U);
    t32 = (t31 + 0U);
    *((int *)t32) = 2;
    t32 = (t31 + 4U);
    *((int *)t32) = 0;
    t32 = (t31 + 8U);
    *((int *)t32) = -1;
    t33 = (0 - 2);
    t34 = (t33 * -1);
    t34 = (t34 + 1);
    t32 = (t31 + 12U);
    *((unsigned int *)t32) = t34;
    t35 = ieee_p_3620187407_sub_5109402382352621412_3965413181(IEEE_P_3620187407, t10, t30);
    t3 = (t23 < t35);
    if (t3 != 0)
        goto LAB12;

LAB14:
LAB13:
LAB10:    t1 = (t0 + 14996);
    t13 = *((int *)t1);
    t2 = (t0 + 15000);
    t14 = *((int *)t2);
    if (t13 == t14)
        goto LAB11;

LAB15:    t11 = (t13 + 1);
    t13 = t11;
    t5 = (t0 + 14996);
    *((int *)t5) = t13;
    goto LAB8;

LAB12:    xsi_set_current_line(97, ng0);
    t32 = (t0 + 14996);
    t36 = (t0 + 9512);
    t37 = (t36 + 56U);
    t38 = *((char **)t37);
    t39 = (t38 + 56U);
    t40 = *((char **)t39);
    *((int *)t40) = *((int *)t32);
    xsi_driver_first_trans_fast(t36);
    goto LAB13;

LAB16:    xsi_size_not_matching(3U, t17, 0);
    goto LAB17;

LAB18:    xsi_set_current_line(108, ng0);
    t1 = (t0 + 5384U);
    t5 = *((char **)t1);
    t1 = (t0 + 14824U);
    t11 = ieee_p_3620187407_sub_5109402382352621412_3965413181(IEEE_P_3620187407, t5, t1);
    t12 = (t11 - 7);
    t17 = (t12 * -1);
    t18 = (1 * t17);
    t19 = (0U + t18);
    t6 = (t0 + 9640);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    *((unsigned char *)t10) = (unsigned char)3;
    xsi_driver_first_trans_delta(t6, t19, 1, 0LL);
    goto LAB19;

LAB21:    xsi_set_current_line(114, ng0);
    t1 = (t0 + 5384U);
    t5 = *((char **)t1);
    t1 = (t0 + 14824U);
    t11 = ieee_p_3620187407_sub_5109402382352621412_3965413181(IEEE_P_3620187407, t5, t1);
    t12 = (t11 - 7);
    t17 = (t12 * -1);
    t18 = (1 * t17);
    t19 = (0U + t18);
    t6 = (t0 + 9704);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    *((unsigned char *)t10) = (unsigned char)3;
    xsi_driver_first_trans_delta(t6, t19, 1, 0LL);
    goto LAB22;

}

static void work_a_4039013392_0537568911_p_1(char *t0)
{
    char t19[16];
    char *t1;
    char *t2;
    int t3;
    unsigned int t4;
    unsigned int t5;
    unsigned int t6;
    unsigned char t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    int t13;
    int t14;
    int t15;
    int t16;
    int t17;
    unsigned char t18;
    char *t20;
    char *t21;
    unsigned int t22;
    unsigned char t23;
    char *t24;
    char *t25;
    char *t26;
    char *t27;
    char *t28;

LAB0:    xsi_set_current_line(123, ng0);
    t1 = (t0 + 5064U);
    t2 = *((char **)t1);
    t3 = (0 - 7);
    t4 = (t3 * -1);
    t5 = (1U * t4);
    t6 = (0 + t5);
    t1 = (t2 + t6);
    t7 = *((unsigned char *)t1);
    t8 = (t0 + 9768);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    *((unsigned char *)t12) = t7;
    xsi_driver_first_trans_fast_port(t8);
    xsi_set_current_line(124, ng0);
    t1 = xsi_get_transient_memory(3U);
    memset(t1, 0, 3U);
    t2 = t1;
    memset(t2, (unsigned char)2, 3U);
    t8 = (t0 + 9832);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    memcpy(t12, t1, 3U);
    xsi_driver_first_trans_fast(t8);
    xsi_set_current_line(125, ng0);
    t1 = (t0 + 6320U);
    t2 = *((char **)t1);
    t3 = *((int *)t2);
    t13 = (t3 - 1);
    t1 = (t0 + 15004);
    *((int *)t1) = 0;
    t8 = (t0 + 15008);
    *((int *)t8) = t13;
    t14 = 0;
    t15 = t13;

LAB2:    if (t14 <= t15)
        goto LAB3;

LAB5:    t1 = (t0 + 9336);
    *((int *)t1) = 1;

LAB1:    return;
LAB3:    xsi_set_current_line(126, ng0);
    t9 = (t0 + 5064U);
    t10 = *((char **)t9);
    t9 = (t0 + 15004);
    t16 = *((int *)t9);
    t17 = (t16 - 7);
    t4 = (t17 * -1);
    xsi_vhdl_check_range_of_index(7, 0, -1, *((int *)t9));
    t5 = (1U * t4);
    t6 = (0 + t5);
    t11 = (t10 + t6);
    t7 = *((unsigned char *)t11);
    t18 = (t7 == (unsigned char)3);
    if (t18 != 0)
        goto LAB6;

LAB8:
LAB7:
LAB4:    t1 = (t0 + 15004);
    t14 = *((int *)t1);
    t2 = (t0 + 15008);
    t15 = *((int *)t2);
    if (t14 == t15)
        goto LAB5;

LAB11:    t3 = (t14 + 1);
    t14 = t3;
    t8 = (t0 + 15004);
    *((int *)t8) = t14;
    goto LAB2;

LAB6:    xsi_set_current_line(127, ng0);
    t12 = (t0 + 15004);
    t20 = ieee_p_3499444699_sub_17544701978858283880_3536714472(IEEE_P_3499444699, t19, *((int *)t12), 3);
    t21 = (t19 + 12U);
    t22 = *((unsigned int *)t21);
    t22 = (t22 * 1U);
    t23 = (3U != t22);
    if (t23 == 1)
        goto LAB9;

LAB10:    t24 = (t0 + 9832);
    t25 = (t24 + 56U);
    t26 = *((char **)t25);
    t27 = (t26 + 56U);
    t28 = *((char **)t27);
    memcpy(t28, t20, 3U);
    xsi_driver_first_trans_fast(t24);
    xsi_set_current_line(128, ng0);
    t1 = (t0 + 9768);
    t2 = (t1 + 56U);
    t8 = *((char **)t2);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    *((unsigned char *)t10) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t1);
    goto LAB7;

LAB9:    xsi_size_not_matching(3U, t22, 0);
    goto LAB10;

}

static void work_a_4039013392_0537568911_p_2(char *t0)
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

LAB0:    xsi_set_current_line(133, ng0);

LAB3:    t1 = (t0 + 3144U);
    t2 = *((char **)t1);
    t3 = (3 - 1);
    t4 = (10 - t3);
    t5 = (t4 * 1U);
    t6 = (0 + t5);
    t1 = (t2 + t6);
    t7 = (t0 + 9896);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    memcpy(t11, t1, 3U);
    xsi_driver_first_trans_fast_port(t7);

LAB2:    t12 = (t0 + 9352);
    *((int *)t12) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_4039013392_0537568911_p_3(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;

LAB0:    xsi_set_current_line(134, ng0);

LAB3:    t1 = (t0 + 5384U);
    t2 = *((char **)t1);
    t1 = (t0 + 9960);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    memcpy(t6, t2, 3U);
    xsi_driver_first_trans_fast_port(t1);

LAB2:    t7 = (t0 + 9368);
    *((int *)t7) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}


extern void work_a_4039013392_0537568911_init()
{
	static char *pe[] = {(void *)work_a_4039013392_0537568911_p_0,(void *)work_a_4039013392_0537568911_p_1,(void *)work_a_4039013392_0537568911_p_2,(void *)work_a_4039013392_0537568911_p_3};
	xsi_register_didat("work_a_4039013392_0537568911", "isim/L1_cache_test_isim_beh.exe.sim/work/a_4039013392_0537568911.didat");
	xsi_register_executes(pe);
}
