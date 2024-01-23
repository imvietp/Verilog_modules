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

/* This file is designed for use with ISim build 0x7708f090 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "E:/Tai lieu dai hoc/HK2 23 - 24/Vi_mach/verilog/demux1_4/demux.v";
static unsigned int ng1[] = {1U, 0U};
static int ng2[] = {1, 0};
static unsigned int ng3[] = {2U, 0U};
static int ng4[] = {2, 0};
static unsigned int ng5[] = {3U, 0U};
static int ng6[] = {3, 0};
static int ng7[] = {0, 0};



static void Always_27_0(char *t0)
{
    char t9[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    int t6;
    char *t7;
    char *t8;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    unsigned int t15;
    int t16;

LAB0:    t1 = (t0 + 2528U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(27, ng0);
    t2 = (t0 + 2848);
    *((int *)t2) = 1;
    t3 = (t0 + 2560);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(28, ng0);

LAB5:    xsi_set_current_line(29, ng0);
    t4 = (t0 + 1208U);
    t5 = *((char **)t4);

LAB6:    t4 = ((char*)((ng1)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 2, t4, 2);
    if (t6 == 1)
        goto LAB7;

LAB8:    t2 = ((char*)((ng3)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 2, t2, 2);
    if (t6 == 1)
        goto LAB9;

LAB10:    t2 = ((char*)((ng5)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 2, t2, 2);
    if (t6 == 1)
        goto LAB11;

LAB12:
LAB14:
LAB13:    xsi_set_current_line(33, ng0);
    t2 = (t0 + 1048U);
    t3 = *((char **)t2);
    t2 = (t0 + 1608);
    t4 = (t0 + 1608);
    t7 = (t4 + 72U);
    t8 = *((char **)t7);
    t10 = ((char*)((ng7)));
    xsi_vlog_generic_convert_bit_index(t9, t8, 2, t10, 32, 1);
    t11 = (t9 + 4);
    t15 = *((unsigned int *)t11);
    t6 = (!(t15));
    if (t6 == 1)
        goto LAB22;

LAB23:
LAB15:    goto LAB2;

LAB7:    xsi_set_current_line(30, ng0);
    t7 = (t0 + 1048U);
    t8 = *((char **)t7);
    t7 = (t0 + 1608);
    t10 = (t0 + 1608);
    t11 = (t10 + 72U);
    t12 = *((char **)t11);
    t13 = ((char*)((ng2)));
    xsi_vlog_generic_convert_bit_index(t9, t12, 2, t13, 32, 1);
    t14 = (t9 + 4);
    t15 = *((unsigned int *)t14);
    t16 = (!(t15));
    if (t16 == 1)
        goto LAB16;

LAB17:    goto LAB15;

LAB9:    xsi_set_current_line(31, ng0);
    t3 = (t0 + 1048U);
    t4 = *((char **)t3);
    t3 = (t0 + 1608);
    t7 = (t0 + 1608);
    t8 = (t7 + 72U);
    t10 = *((char **)t8);
    t11 = ((char*)((ng4)));
    xsi_vlog_generic_convert_bit_index(t9, t10, 2, t11, 32, 1);
    t12 = (t9 + 4);
    t15 = *((unsigned int *)t12);
    t16 = (!(t15));
    if (t16 == 1)
        goto LAB18;

LAB19:    goto LAB15;

LAB11:    xsi_set_current_line(32, ng0);
    t3 = (t0 + 1048U);
    t4 = *((char **)t3);
    t3 = (t0 + 1608);
    t7 = (t0 + 1608);
    t8 = (t7 + 72U);
    t10 = *((char **)t8);
    t11 = ((char*)((ng6)));
    xsi_vlog_generic_convert_bit_index(t9, t10, 2, t11, 32, 1);
    t12 = (t9 + 4);
    t15 = *((unsigned int *)t12);
    t16 = (!(t15));
    if (t16 == 1)
        goto LAB20;

LAB21:    goto LAB15;

LAB16:    xsi_vlogvar_assign_value(t7, t8, 0, *((unsigned int *)t9), 1);
    goto LAB17;

LAB18:    xsi_vlogvar_assign_value(t3, t4, 0, *((unsigned int *)t9), 1);
    goto LAB19;

LAB20:    xsi_vlogvar_assign_value(t3, t4, 0, *((unsigned int *)t9), 1);
    goto LAB21;

LAB22:    xsi_vlogvar_assign_value(t2, t3, 0, *((unsigned int *)t9), 1);
    goto LAB23;

}


extern void work_m_00000000003536883265_3828577538_init()
{
	static char *pe[] = {(void *)Always_27_0};
	xsi_register_didat("work_m_00000000003536883265_3828577538", "isim/testbench_isim_beh.exe.sim/work/m_00000000003536883265_3828577538.didat");
	xsi_register_executes(pe);
}
