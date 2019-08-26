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
extern char *STD_TEXTIO;
static const char *ng1 = "ramfile";
extern char *STD_STANDARD;
static const char *ng3 = "/home/icarosix/git/mips_top_module/Mips_top_module/imem.vhd";
extern char *IEEE_P_2592010699;
extern char *IEEE_P_3620187407;

char *ieee_p_2592010699_sub_24166140421859237_503743352(char *, char *, char *, char *);
unsigned char ieee_p_2592010699_sub_2763492388968962707_503743352(char *, char *, unsigned int , unsigned int );
int ieee_p_3620187407_sub_5109402382352621412_3965413181(char *, char *, char *);


char *work_a_3290287416_0831356973_sub_12821418961217680364_1212737304(char *t1, char *t2, char *t3)
{
    char t4[328];
    char t5[24];
    char t17[32];
    char t26[320032];
    char t35[8];
    char t45[16];
    char *t0;
    char *t6;
    char *t7;
    unsigned int t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;
    char *t18;
    char *t19;
    int t20;
    unsigned int t21;
    char *t22;
    int t23;
    char *t24;
    char *t25;
    char *t27;
    char *t28;
    char *t29;
    char *t30;
    char *t31;
    char *t32;
    char *t33;
    char *t34;
    char *t36;
    char *t37;
    char *t38;
    unsigned char t39;
    char *t40;
    char *t41;
    char *t42;
    unsigned char t43;
    unsigned int t44;
    int t46;
    unsigned int t47;

LAB0:    t6 = ((STD_TEXTIO) + 3400);
    t7 = (t3 + 12U);
    t8 = *((unsigned int *)t7);
    t8 = (t8 * 1U);
    t9 = (t4 + 4U);
    t10 = xsi_create_file_variable_in_buffer(0, ng1, t6, t2, t8, 1);
    *((char **)t9) = t10;
    t11 = (t4 + 12U);
    t12 = ((STD_TEXTIO) + 3248);
    t13 = (t11 + 56U);
    *((char **)t13) = t12;
    t14 = (t11 + 40U);
    *((char **)t14) = 0;
    t15 = (t11 + 64U);
    *((int *)t15) = 1;
    t16 = (t11 + 48U);
    *((char **)t16) = 0;
    t18 = (t17 + 0U);
    t19 = (t18 + 0U);
    *((int *)t19) = 0;
    t19 = (t18 + 4U);
    *((int *)t19) = 10000;
    t19 = (t18 + 8U);
    *((int *)t19) = 1;
    t20 = (10000 - 0);
    t21 = (t20 * 1);
    t21 = (t21 + 1);
    t19 = (t18 + 12U);
    *((unsigned int *)t19) = t21;
    t19 = (t17 + 16U);
    t22 = (t19 + 0U);
    *((int *)t22) = 31;
    t22 = (t19 + 4U);
    *((int *)t22) = 0;
    t22 = (t19 + 8U);
    *((int *)t22) = -1;
    t23 = (0 - 31);
    t21 = (t23 * -1);
    t21 = (t21 + 1);
    t22 = (t19 + 12U);
    *((unsigned int *)t22) = t21;
    t22 = (t4 + 84U);
    t24 = (t1 + 3568);
    t25 = (t22 + 88U);
    *((char **)t25) = t24;
    t27 = (t22 + 56U);
    *((char **)t27) = t26;
    xsi_type_set_default_value(t24, t26, 0);
    t28 = (t22 + 64U);
    t29 = (t24 + 72U);
    t30 = *((char **)t29);
    *((char **)t28) = t30;
    t31 = (t22 + 80U);
    *((unsigned int *)t31) = 320032U;
    t32 = (t4 + 204U);
    t33 = ((STD_STANDARD) + 384);
    t34 = (t32 + 88U);
    *((char **)t34) = t33;
    t36 = (t32 + 56U);
    *((char **)t36) = t35;
    xsi_type_set_default_value(t33, t35, 0);
    t37 = (t32 + 80U);
    *((unsigned int *)t37) = 4U;
    t38 = (t5 + 4U);
    t39 = (t2 != 0);
    if (t39 == 1)
        goto LAB3;

LAB2:    t40 = (t5 + 12U);
    *((char **)t40) = t3;
    t41 = (t32 + 56U);
    t42 = *((char **)t41);
    t41 = (t42 + 0);
    *((int *)t41) = 0;

LAB4:    t6 = (t4 + 4U);
    t7 = *((char **)t6);
    t39 = std_textio_endfile(t7);
    t43 = (!(t39));
    if (t43 != 0)
        goto LAB5;

LAB7:    t6 = (t22 + 56U);
    t7 = *((char **)t6);
    t39 = (320032U != 320032U);
    if (t39 == 1)
        goto LAB9;

LAB10:    t0 = xsi_get_transient_memory(320032U);
    memcpy(t0, t7, 320032U);

LAB1:    xsi_access_variable_delete(t11);
    t6 = (t4 + 4U);
    t7 = *((char **)t6);
    xsi_delete_file_variable(t7);
    return t0;
LAB3:    *((char **)t38) = t2;
    goto LAB2;

LAB5:    t9 = (t4 + 4U);
    t10 = *((char **)t9);
    std_textio_readline(STD_TEXTIO, (char *)0, t10, t11);
    t6 = (t4 + 4U);
    t7 = *((char **)t6);
    t39 = std_textio_endfile(t7);
    if (t39 != 0)
        goto LAB7;

LAB8:    t6 = (t22 + 56U);
    t7 = *((char **)t6);
    t6 = (t32 + 56U);
    t9 = *((char **)t6);
    t20 = *((int *)t9);
    t23 = (t20 - 0);
    t8 = (t23 * 1);
    xsi_vhdl_check_range_of_index(0, 10000, 1, t20);
    t21 = (32U * t8);
    t44 = (0 + t21);
    t6 = (t7 + t44);
    t10 = (t45 + 0U);
    t12 = (t10 + 0U);
    *((int *)t12) = 31;
    t12 = (t10 + 4U);
    *((int *)t12) = 0;
    t12 = (t10 + 8U);
    *((int *)t12) = -1;
    t46 = (0 - 31);
    t47 = (t46 * -1);
    t47 = (t47 + 1);
    t12 = (t10 + 12U);
    *((unsigned int *)t12) = t47;
    std_textio_read4(STD_TEXTIO, (char *)0, t11, t6, t45);
    t6 = (t32 + 56U);
    t7 = *((char **)t6);
    t20 = *((int *)t7);
    t23 = (t20 + 1);
    t6 = (t32 + 56U);
    t9 = *((char **)t6);
    t6 = (t9 + 0);
    *((int *)t6) = t23;
    goto LAB4;

LAB6:;
LAB9:    xsi_size_not_matching(320032U, 320032U, 0);
    goto LAB10;

LAB11:;
}

static void work_a_3290287416_0831356973_p_0(char *t0)
{
    char t3[16];
    char t13[16];
    char *t1;
    unsigned char t2;
    char *t4;
    char *t5;
    char *t6;
    int t7;
    int t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    char *t12;
    char *t14;
    char *t15;
    int t16;
    unsigned int t17;
    char *t18;
    unsigned char t19;
    char *t20;
    char *t21;
    char *t22;
    char *t23;
    char *t24;

LAB0:    xsi_set_current_line(69, ng3);
    t1 = (t0 + 992U);
    t2 = ieee_p_2592010699_sub_2763492388968962707_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t2 != 0)
        goto LAB2;

LAB4:
LAB3:    t1 = (t0 + 3120);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(71, ng3);
    t4 = (t0 + 1512U);
    t5 = *((char **)t4);
    t4 = (t0 + 1192U);
    t6 = *((char **)t4);
    t4 = (t0 + 5312U);
    t7 = ieee_p_3620187407_sub_5109402382352621412_3965413181(IEEE_P_3620187407, t6, t4);
    t8 = (t7 - 0);
    t9 = (t8 * 1);
    xsi_vhdl_check_range_of_index(0, 10000, 1, t7);
    t10 = (32U * t9);
    t11 = (0 + t10);
    t12 = (t5 + t11);
    t14 = (t13 + 0U);
    t15 = (t14 + 0U);
    *((int *)t15) = 31;
    t15 = (t14 + 4U);
    *((int *)t15) = 0;
    t15 = (t14 + 8U);
    *((int *)t15) = -1;
    t16 = (0 - 31);
    t17 = (t16 * -1);
    t17 = (t17 + 1);
    t15 = (t14 + 12U);
    *((unsigned int *)t15) = t17;
    t15 = ieee_p_2592010699_sub_24166140421859237_503743352(IEEE_P_2592010699, t3, t12, t13);
    t18 = (t3 + 12U);
    t17 = *((unsigned int *)t18);
    t17 = (t17 * 1U);
    t19 = (32U != t17);
    if (t19 == 1)
        goto LAB5;

LAB6:    t20 = (t0 + 3200);
    t21 = (t20 + 56U);
    t22 = *((char **)t21);
    t23 = (t22 + 56U);
    t24 = *((char **)t23);
    memcpy(t24, t15, 32U);
    xsi_driver_first_trans_fast_port(t20);
    goto LAB3;

LAB5:    xsi_size_not_matching(32U, t17, 0);
    goto LAB6;

}


extern void work_a_3290287416_0831356973_init()
{
	static char *pe[] = {(void *)work_a_3290287416_0831356973_p_0};
	static char *se[] = {(void *)work_a_3290287416_0831356973_sub_12821418961217680364_1212737304};
	xsi_register_didat("work_a_3290287416_0831356973", "isim/tb_main_isim_beh.exe.sim/work/a_3290287416_0831356973.didat");
	xsi_register_executes(pe);
	xsi_register_subprogram_executes(se);
}
