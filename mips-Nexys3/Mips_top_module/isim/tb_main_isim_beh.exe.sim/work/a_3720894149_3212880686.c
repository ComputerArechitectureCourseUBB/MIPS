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
static const char *ng0 = "/home/icarosix/WinData/Cursos/Arquitectura de computadores/materials/MIPS/mips-Nexys3/Mips_top_module/dmem.vhd";
extern char *IEEE_P_3620187407;
extern char *IEEE_P_2592010699;

char *ieee_p_2592010699_sub_12303121079769504865_503743352(char *, char *, char *, char *, unsigned char );
char *ieee_p_2592010699_sub_24166140421859237_503743352(char *, char *, char *, char *);
int ieee_p_3620187407_sub_5109402382352621412_3965413181(char *, char *, char *);


static void work_a_3720894149_3212880686_p_0(char *t0)
{
    char t20[16];
    char t39[16];
    unsigned char t1;
    char *t2;
    unsigned char t3;
    char *t4;
    char *t5;
    unsigned char t6;
    unsigned char t7;
    unsigned char t8;
    unsigned char t9;
    char *t10;
    unsigned char t11;
    unsigned char t12;
    char *t13;
    int t14;
    unsigned char t15;
    char *t16;
    char *t17;
    int t18;
    unsigned char t19;
    char *t21;
    char *t22;
    char *t23;
    char *t24;
    unsigned int t25;
    unsigned char t26;
    char *t27;
    char *t28;
    int t29;
    int t30;
    unsigned int t31;
    unsigned int t32;
    unsigned int t33;
    char *t34;
    char *t35;
    char *t36;
    char *t37;
    char *t38;
    int t40;

LAB0:    xsi_set_current_line(50, ng0);
    t2 = (t0 + 992U);
    t3 = xsi_signal_has_event(t2);
    if (t3 == 1)
        goto LAB5;

LAB6:    t1 = (unsigned char)0;

LAB7:    if (t1 != 0)
        goto LAB2;

LAB4:
LAB3:    t2 = (t0 + 3304);
    *((int *)t2) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(51, ng0);
    t4 = (t0 + 1192U);
    t10 = *((char **)t4);
    t11 = *((unsigned char *)t10);
    t12 = (t11 == (unsigned char)3);
    if (t12 == 1)
        goto LAB14;

LAB15:    t9 = (unsigned char)0;

LAB16:    if (t9 == 1)
        goto LAB11;

LAB12:    t8 = (unsigned char)0;

LAB13:    if (t8 != 0)
        goto LAB8;

LAB10:
LAB9:    xsi_set_current_line(54, ng0);
    t2 = (t0 + 1352U);
    t4 = *((char **)t2);
    t2 = (t0 + 6088U);
    t14 = ieee_p_3620187407_sub_5109402382352621412_3965413181(IEEE_P_3620187407, t4, t2);
    t3 = (t14 <= 64);
    if (t3 == 1)
        goto LAB22;

LAB23:    t1 = (unsigned char)0;

LAB24:    if (t1 != 0)
        goto LAB19;

LAB21:
LAB20:    goto LAB3;

LAB5:    t4 = (t0 + 1032U);
    t5 = *((char **)t4);
    t6 = *((unsigned char *)t5);
    t7 = (t6 == (unsigned char)3);
    t1 = t7;
    goto LAB7;

LAB8:    xsi_set_current_line(52, ng0);
    t21 = (t0 + 1512U);
    t22 = *((char **)t21);
    t21 = (t0 + 6104U);
    t23 = ieee_p_2592010699_sub_12303121079769504865_503743352(IEEE_P_2592010699, t20, t22, t21, (unsigned char)0);
    t24 = (t20 + 12U);
    t25 = *((unsigned int *)t24);
    t25 = (t25 * 1U);
    t26 = (32U != t25);
    if (t26 == 1)
        goto LAB17;

LAB18:    t27 = (t0 + 1352U);
    t28 = *((char **)t27);
    t27 = (t0 + 6088U);
    t29 = ieee_p_3620187407_sub_5109402382352621412_3965413181(IEEE_P_3620187407, t28, t27);
    t30 = (t29 - 63);
    t31 = (t30 * -1);
    t32 = (32U * t31);
    t33 = (0U + t32);
    t34 = (t0 + 3384);
    t35 = (t34 + 56U);
    t36 = *((char **)t35);
    t37 = (t36 + 56U);
    t38 = *((char **)t37);
    memcpy(t38, t23, 32U);
    xsi_driver_first_trans_delta(t34, t33, 32U, 0LL);
    goto LAB9;

LAB11:    t16 = (t0 + 1352U);
    t17 = *((char **)t16);
    t16 = (t0 + 6088U);
    t18 = ieee_p_3620187407_sub_5109402382352621412_3965413181(IEEE_P_3620187407, t17, t16);
    t19 = (t18 >= 0);
    t8 = t19;
    goto LAB13;

LAB14:    t4 = (t0 + 1352U);
    t13 = *((char **)t4);
    t4 = (t0 + 6088U);
    t14 = ieee_p_3620187407_sub_5109402382352621412_3965413181(IEEE_P_3620187407, t13, t4);
    t15 = (t14 <= 64);
    t9 = t15;
    goto LAB16;

LAB17:    xsi_size_not_matching(32U, t25, 0);
    goto LAB18;

LAB19:    xsi_set_current_line(55, ng0);
    t13 = (t0 + 1832U);
    t16 = *((char **)t13);
    t13 = (t0 + 1352U);
    t17 = *((char **)t13);
    t13 = (t0 + 6088U);
    t29 = ieee_p_3620187407_sub_5109402382352621412_3965413181(IEEE_P_3620187407, t17, t13);
    t30 = (t29 - 63);
    t25 = (t30 * -1);
    xsi_vhdl_check_range_of_index(63, 0, -1, t29);
    t31 = (32U * t25);
    t32 = (0 + t31);
    t21 = (t16 + t32);
    t22 = (t39 + 0U);
    t23 = (t22 + 0U);
    *((int *)t23) = 31;
    t23 = (t22 + 4U);
    *((int *)t23) = 0;
    t23 = (t22 + 8U);
    *((int *)t23) = -1;
    t40 = (0 - 31);
    t33 = (t40 * -1);
    t33 = (t33 + 1);
    t23 = (t22 + 12U);
    *((unsigned int *)t23) = t33;
    t23 = ieee_p_2592010699_sub_24166140421859237_503743352(IEEE_P_2592010699, t20, t21, t39);
    t24 = (t20 + 12U);
    t33 = *((unsigned int *)t24);
    t33 = (t33 * 1U);
    t7 = (32U != t33);
    if (t7 == 1)
        goto LAB25;

LAB26:    t27 = (t0 + 3448);
    t28 = (t27 + 56U);
    t34 = *((char **)t28);
    t35 = (t34 + 56U);
    t36 = *((char **)t35);
    memcpy(t36, t23, 32U);
    xsi_driver_first_trans_fast_port(t27);
    goto LAB20;

LAB22:    t5 = (t0 + 1352U);
    t10 = *((char **)t5);
    t5 = (t0 + 6088U);
    t18 = ieee_p_3620187407_sub_5109402382352621412_3965413181(IEEE_P_3620187407, t10, t5);
    t6 = (t18 >= 0);
    t1 = t6;
    goto LAB24;

LAB25:    xsi_size_not_matching(32U, t33, 0);
    goto LAB26;

}


extern void work_a_3720894149_3212880686_init()
{
	static char *pe[] = {(void *)work_a_3720894149_3212880686_p_0};
	xsi_register_didat("work_a_3720894149_3212880686", "isim/tb_main_isim_beh.exe.sim/work/a_3720894149_3212880686.didat");
	xsi_register_executes(pe);
}
