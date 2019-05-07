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
static const char *ng0 = "F:/EVM/Cash_proj/L2_muu_test.vhd";



static void work_a_1428910215_2372691052_p_0(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    int64 t7;
    int64 t8;

LAB0:    t1 = (t0 + 2332U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(100, ng0);
    t2 = (t0 + 2772);
    t3 = (t2 + 32U);
    t4 = *((char **)t3);
    t5 = (t4 + 40U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(101, ng0);
    t2 = (t0 + 1776U);
    t3 = *((char **)t2);
    t7 = *((int64 *)t3);
    t8 = (t7 / 2);
    t2 = (t0 + 2232);
    xsi_process_wait(t2, t8);

LAB6:    *((char **)t1) = &&LAB7;

LAB1:    return;
LAB4:    xsi_set_current_line(102, ng0);
    t2 = (t0 + 2772);
    t3 = (t2 + 32U);
    t4 = *((char **)t3);
    t5 = (t4 + 40U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(103, ng0);
    t2 = (t0 + 1776U);
    t3 = *((char **)t2);
    t7 = *((int64 *)t3);
    t8 = (t7 / 2);
    t2 = (t0 + 2232);
    xsi_process_wait(t2, t8);

LAB10:    *((char **)t1) = &&LAB11;
    goto LAB1;

LAB5:    goto LAB4;

LAB7:    goto LAB5;

LAB8:    goto LAB2;

LAB9:    goto LAB8;

LAB11:    goto LAB9;

}

static void work_a_1428910215_2372691052_p_1(char *t0)
{
    char *t1;
    char *t2;
    int64 t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    int64 t8;
    unsigned char t9;
    unsigned char t10;
    unsigned char t11;
    unsigned char t12;
    unsigned char t13;
    unsigned char t14;
    unsigned char t15;

LAB0:    t1 = (t0 + 2476U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(111, ng0);
    t3 = (10 * 1000LL);
    t2 = (t0 + 2376);
    xsi_process_wait(t2, t3);

LAB6:    *((char **)t1) = &&LAB7;

LAB1:    return;
LAB4:    xsi_set_current_line(112, ng0);
    t2 = (t0 + 2808);
    t4 = (t2 + 32U);
    t5 = *((char **)t4);
    t6 = (t5 + 40U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(114, ng0);
    t2 = (t0 + 1776U);
    t4 = *((char **)t2);
    t3 = *((int64 *)t4);
    t8 = (t3 * 3);
    t2 = (t0 + 2376);
    xsi_process_wait(t2, t8);

LAB10:    *((char **)t1) = &&LAB11;
    goto LAB1;

LAB5:    goto LAB4;

LAB7:    goto LAB5;

LAB8:    xsi_set_current_line(115, ng0);
    t2 = (t0 + 2808);
    t4 = (t2 + 32U);
    t5 = *((char **)t4);
    t6 = (t5 + 40U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(116, ng0);
    t2 = (t0 + 2844);
    t4 = (t2 + 32U);
    t5 = *((char **)t4);
    t6 = (t5 + 40U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(117, ng0);
    t2 = (t0 + 2880);
    t4 = (t2 + 32U);
    t5 = *((char **)t4);
    t6 = (t5 + 40U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(118, ng0);

LAB14:    t2 = (t0 + 2672);
    *((int *)t2) = 1;
    *((char **)t1) = &&LAB15;
    goto LAB1;

LAB9:    goto LAB8;

LAB11:    goto LAB9;

LAB12:    t5 = (t0 + 2672);
    *((int *)t5) = 0;
    xsi_set_current_line(120, ng0);
    t2 = (t0 + 2844);
    t4 = (t2 + 32U);
    t5 = *((char **)t4);
    t6 = (t5 + 40U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(121, ng0);

LAB24:    t2 = (t0 + 2680);
    *((int *)t2) = 1;
    *((char **)t1) = &&LAB25;
    goto LAB1;

LAB13:    t4 = (t0 + 936U);
    t11 = xsi_signal_has_event(t4);
    if (t11 == 1)
        goto LAB19;

LAB20:    t10 = (unsigned char)0;

LAB21:    if (t10 == 1)
        goto LAB16;

LAB17:    t9 = (unsigned char)0;

LAB18:    if (t9 == 1)
        goto LAB12;
    else
        goto LAB14;

LAB15:    goto LAB13;

LAB16:    t5 = (t0 + 1420U);
    t7 = *((char **)t5);
    t14 = *((unsigned char *)t7);
    t15 = (t14 == (unsigned char)3);
    t9 = t15;
    goto LAB18;

LAB19:    t5 = (t0 + 960U);
    t6 = *((char **)t5);
    t12 = *((unsigned char *)t6);
    t13 = (t12 == (unsigned char)3);
    t10 = t13;
    goto LAB21;

LAB22:    t5 = (t0 + 2680);
    *((int *)t5) = 0;
    xsi_set_current_line(122, ng0);
    t2 = (t0 + 2916);
    t4 = (t2 + 32U);
    t5 = *((char **)t4);
    t6 = (t5 + 40U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(123, ng0);
    t2 = (t0 + 1776U);
    t4 = *((char **)t2);
    t3 = *((int64 *)t4);
    t2 = (t0 + 2376);
    xsi_process_wait(t2, t3);

LAB34:    *((char **)t1) = &&LAB35;
    goto LAB1;

LAB23:    t4 = (t0 + 936U);
    t11 = xsi_signal_has_event(t4);
    if (t11 == 1)
        goto LAB29;

LAB30:    t10 = (unsigned char)0;

LAB31:    if (t10 == 1)
        goto LAB26;

LAB27:    t9 = (unsigned char)0;

LAB28:    if (t9 == 1)
        goto LAB22;
    else
        goto LAB24;

LAB25:    goto LAB23;

LAB26:    t5 = (t0 + 1512U);
    t7 = *((char **)t5);
    t14 = *((unsigned char *)t7);
    t15 = (t14 == (unsigned char)3);
    t9 = t15;
    goto LAB28;

LAB29:    t5 = (t0 + 960U);
    t6 = *((char **)t5);
    t12 = *((unsigned char *)t6);
    t13 = (t12 == (unsigned char)3);
    t10 = t13;
    goto LAB31;

LAB32:    xsi_set_current_line(124, ng0);
    t2 = (t0 + 2844);
    t4 = (t2 + 32U);
    t5 = *((char **)t4);
    t6 = (t5 + 40U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(125, ng0);

LAB38:    t2 = (t0 + 2688);
    *((int *)t2) = 1;
    *((char **)t1) = &&LAB39;
    goto LAB1;

LAB33:    goto LAB32;

LAB35:    goto LAB33;

LAB36:    t5 = (t0 + 2688);
    *((int *)t5) = 0;
    xsi_set_current_line(127, ng0);
    t2 = (t0 + 2880);
    t4 = (t2 + 32U);
    t5 = *((char **)t4);
    t6 = (t5 + 40U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(128, ng0);
    t2 = (t0 + 2916);
    t4 = (t2 + 32U);
    t5 = *((char **)t4);
    t6 = (t5 + 40U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(129, ng0);
    t2 = (t0 + 2844);
    t4 = (t2 + 32U);
    t5 = *((char **)t4);
    t6 = (t5 + 40U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(130, ng0);
    t2 = (t0 + 2952);
    t4 = (t2 + 32U);
    t5 = *((char **)t4);
    t6 = (t5 + 40U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(131, ng0);

LAB48:    t2 = (t0 + 2696);
    *((int *)t2) = 1;
    *((char **)t1) = &&LAB49;
    goto LAB1;

LAB37:    t4 = (t0 + 936U);
    t11 = xsi_signal_has_event(t4);
    if (t11 == 1)
        goto LAB43;

LAB44:    t10 = (unsigned char)0;

LAB45:    if (t10 == 1)
        goto LAB40;

LAB41:    t9 = (unsigned char)0;

LAB42:    if (t9 == 1)
        goto LAB36;
    else
        goto LAB38;

LAB39:    goto LAB37;

LAB40:    t5 = (t0 + 1420U);
    t7 = *((char **)t5);
    t14 = *((unsigned char *)t7);
    t15 = (t14 == (unsigned char)3);
    t9 = t15;
    goto LAB42;

LAB43:    t5 = (t0 + 960U);
    t6 = *((char **)t5);
    t12 = *((unsigned char *)t6);
    t13 = (t12 == (unsigned char)3);
    t10 = t13;
    goto LAB45;

LAB46:    t5 = (t0 + 2696);
    *((int *)t5) = 0;
    xsi_set_current_line(132, ng0);
    t2 = (t0 + 2916);
    t4 = (t2 + 32U);
    t5 = *((char **)t4);
    t6 = (t5 + 40U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(133, ng0);
    t2 = (t0 + 1776U);
    t4 = *((char **)t2);
    t3 = *((int64 *)t4);
    t2 = (t0 + 2376);
    xsi_process_wait(t2, t3);

LAB58:    *((char **)t1) = &&LAB59;
    goto LAB1;

LAB47:    t4 = (t0 + 936U);
    t11 = xsi_signal_has_event(t4);
    if (t11 == 1)
        goto LAB53;

LAB54:    t10 = (unsigned char)0;

LAB55:    if (t10 == 1)
        goto LAB50;

LAB51:    t9 = (unsigned char)0;

LAB52:    if (t9 == 1)
        goto LAB46;
    else
        goto LAB48;

LAB49:    goto LAB47;

LAB50:    t5 = (t0 + 1512U);
    t7 = *((char **)t5);
    t14 = *((unsigned char *)t7);
    t15 = (t14 == (unsigned char)3);
    t9 = t15;
    goto LAB52;

LAB53:    t5 = (t0 + 960U);
    t6 = *((char **)t5);
    t12 = *((unsigned char *)t6);
    t13 = (t12 == (unsigned char)3);
    t10 = t13;
    goto LAB55;

LAB56:    xsi_set_current_line(134, ng0);
    t2 = (t0 + 2844);
    t4 = (t2 + 32U);
    t5 = *((char **)t4);
    t6 = (t5 + 40U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(135, ng0);
    t2 = (t0 + 1776U);
    t4 = *((char **)t2);
    t3 = *((int64 *)t4);
    t2 = (t0 + 2376);
    xsi_process_wait(t2, t3);

LAB62:    *((char **)t1) = &&LAB63;
    goto LAB1;

LAB57:    goto LAB56;

LAB59:    goto LAB57;

LAB60:    xsi_set_current_line(136, ng0);
    t2 = (t0 + 2916);
    t4 = (t2 + 32U);
    t5 = *((char **)t4);
    t6 = (t5 + 40U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(137, ng0);

LAB66:    t2 = (t0 + 2704);
    *((int *)t2) = 1;
    *((char **)t1) = &&LAB67;
    goto LAB1;

LAB61:    goto LAB60;

LAB63:    goto LAB61;

LAB64:    t5 = (t0 + 2704);
    *((int *)t5) = 0;
    xsi_set_current_line(138, ng0);
    t2 = (t0 + 2916);
    t4 = (t2 + 32U);
    t5 = *((char **)t4);
    t6 = (t5 + 40U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(139, ng0);

LAB76:    t2 = (t0 + 2712);
    *((int *)t2) = 1;
    *((char **)t1) = &&LAB77;
    goto LAB1;

LAB65:    t4 = (t0 + 936U);
    t11 = xsi_signal_has_event(t4);
    if (t11 == 1)
        goto LAB71;

LAB72:    t10 = (unsigned char)0;

LAB73:    if (t10 == 1)
        goto LAB68;

LAB69:    t9 = (unsigned char)0;

LAB70:    if (t9 == 1)
        goto LAB64;
    else
        goto LAB66;

LAB67:    goto LAB65;

LAB68:    t5 = (t0 + 1604U);
    t7 = *((char **)t5);
    t14 = *((unsigned char *)t7);
    t15 = (t14 == (unsigned char)3);
    t9 = t15;
    goto LAB70;

LAB71:    t5 = (t0 + 960U);
    t6 = *((char **)t5);
    t12 = *((unsigned char *)t6);
    t13 = (t12 == (unsigned char)3);
    t10 = t13;
    goto LAB73;

LAB74:    t5 = (t0 + 2712);
    *((int *)t5) = 0;
    xsi_set_current_line(141, ng0);
    t2 = (t0 + 2916);
    t4 = (t2 + 32U);
    t5 = *((char **)t4);
    t6 = (t5 + 40U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(142, ng0);

LAB86:    t2 = (t0 + 2720);
    *((int *)t2) = 1;
    *((char **)t1) = &&LAB87;
    goto LAB1;

LAB75:    t4 = (t0 + 936U);
    t11 = xsi_signal_has_event(t4);
    if (t11 == 1)
        goto LAB81;

LAB82:    t10 = (unsigned char)0;

LAB83:    if (t10 == 1)
        goto LAB78;

LAB79:    t9 = (unsigned char)0;

LAB80:    if (t9 == 1)
        goto LAB74;
    else
        goto LAB76;

LAB77:    goto LAB75;

LAB78:    t5 = (t0 + 1420U);
    t7 = *((char **)t5);
    t14 = *((unsigned char *)t7);
    t15 = (t14 == (unsigned char)3);
    t9 = t15;
    goto LAB80;

LAB81:    t5 = (t0 + 960U);
    t6 = *((char **)t5);
    t12 = *((unsigned char *)t6);
    t13 = (t12 == (unsigned char)3);
    t10 = t13;
    goto LAB83;

LAB84:    t5 = (t0 + 2720);
    *((int *)t5) = 0;
    xsi_set_current_line(143, ng0);
    t2 = (t0 + 2916);
    t4 = (t2 + 32U);
    t5 = *((char **)t4);
    t6 = (t5 + 40U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(144, ng0);

LAB96:    t2 = (t0 + 2728);
    *((int *)t2) = 1;
    *((char **)t1) = &&LAB97;
    goto LAB1;

LAB85:    t4 = (t0 + 936U);
    t11 = xsi_signal_has_event(t4);
    if (t11 == 1)
        goto LAB91;

LAB92:    t10 = (unsigned char)0;

LAB93:    if (t10 == 1)
        goto LAB88;

LAB89:    t9 = (unsigned char)0;

LAB90:    if (t9 == 1)
        goto LAB84;
    else
        goto LAB86;

LAB87:    goto LAB85;

LAB88:    t5 = (t0 + 1604U);
    t7 = *((char **)t5);
    t14 = *((unsigned char *)t7);
    t15 = (t14 == (unsigned char)3);
    t9 = t15;
    goto LAB90;

LAB91:    t5 = (t0 + 960U);
    t6 = *((char **)t5);
    t12 = *((unsigned char *)t6);
    t13 = (t12 == (unsigned char)3);
    t10 = t13;
    goto LAB93;

LAB94:    t5 = (t0 + 2728);
    *((int *)t5) = 0;
    xsi_set_current_line(145, ng0);
    t2 = (t0 + 2844);
    t4 = (t2 + 32U);
    t5 = *((char **)t4);
    t6 = (t5 + 40U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(146, ng0);
    t2 = (t0 + 2952);
    t4 = (t2 + 32U);
    t5 = *((char **)t4);
    t6 = (t5 + 40U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(147, ng0);
    t2 = (t0 + 2916);
    t4 = (t2 + 32U);
    t5 = *((char **)t4);
    t6 = (t5 + 40U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(148, ng0);

LAB106:    *((char **)t1) = &&LAB107;
    goto LAB1;

LAB95:    t4 = (t0 + 936U);
    t11 = xsi_signal_has_event(t4);
    if (t11 == 1)
        goto LAB101;

LAB102:    t10 = (unsigned char)0;

LAB103:    if (t10 == 1)
        goto LAB98;

LAB99:    t9 = (unsigned char)0;

LAB100:    if (t9 == 1)
        goto LAB94;
    else
        goto LAB96;

LAB97:    goto LAB95;

LAB98:    t5 = (t0 + 1420U);
    t7 = *((char **)t5);
    t14 = *((unsigned char *)t7);
    t15 = (t14 == (unsigned char)3);
    t9 = t15;
    goto LAB100;

LAB101:    t5 = (t0 + 960U);
    t6 = *((char **)t5);
    t12 = *((unsigned char *)t6);
    t13 = (t12 == (unsigned char)3);
    t10 = t13;
    goto LAB103;

LAB104:    goto LAB2;

LAB105:    goto LAB104;

LAB107:    goto LAB105;

}


extern void work_a_1428910215_2372691052_init()
{
	static char *pe[] = {(void *)work_a_1428910215_2372691052_p_0,(void *)work_a_1428910215_2372691052_p_1};
	xsi_register_didat("work_a_1428910215_2372691052", "isim/L2_muu_test_isim_beh.exe.sim/work/a_1428910215_2372691052.didat");
	xsi_register_executes(pe);
}
