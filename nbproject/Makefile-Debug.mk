#
# Generated Makefile - do not edit!
#
# Edit the Makefile in the project folder instead (../Makefile). Each target
# has a -pre and a -post target defined where you can add customized code.
#
# This makefile implements configuration specific macros and targets.


# Environment
MKDIR=mkdir
CP=cp
GREP=grep
NM=nm
CCADMIN=CCadmin
RANLIB=ranlib
CC=gcc
CCC=g++
CXX=g++
FC=gfortran
AS=as

# Macros
CND_PLATFORM=MinGW-Windows
CND_DLIB_EXT=dll
CND_CONF=Debug
CND_DISTDIR=dist
CND_BUILDDIR=build

# Include project Makefile
include Makefile

# Object Directory
OBJECTDIR=${CND_BUILDDIR}/${CND_CONF}/${CND_PLATFORM}

# Object Files
OBJECTFILES= \
	${OBJECTDIR}/add_matrix.o \
	${OBJECTDIR}/distance.o \
	${OBJECTDIR}/dot_product.o \
	${OBJECTDIR}/init.o \
	${OBJECTDIR}/main.o \
	${OBJECTDIR}/matrix_mult.o \
	${OBJECTDIR}/mu_method.o \
	${OBJECTDIR}/print_mat.o \
	${OBJECTDIR}/random_init.o \
	${OBJECTDIR}/trans.o \
	${OBJECTDIR}/update_h.o \
	${OBJECTDIR}/update_w.o


# C Compiler Flags
CFLAGS=

# CC Compiler Flags
CCFLAGS=
CXXFLAGS=

# Fortran Compiler Flags
FFLAGS=

# Assembler Flags
ASFLAGS=

# Link Libraries and Options
LDLIBSOPTIONS=

# Build Targets
.build-conf: ${BUILD_SUBPROJECTS}
	"${MAKE}"  -f nbproject/Makefile-${CND_CONF}.mk ${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/non_neg_mat_fact.exe

${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/non_neg_mat_fact.exe: ${OBJECTFILES}
	${MKDIR} -p ${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}
	${LINK.f} -o ${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/non_neg_mat_fact ${OBJECTFILES} ${LDLIBSOPTIONS}

${OBJECTDIR}/add_matrix.o: add_matrix.f90
	${MKDIR} -p ${OBJECTDIR}
	$(COMPILE.f) -g -o ${OBJECTDIR}/add_matrix.o add_matrix.f90

${OBJECTDIR}/distance.o: distance.f90
	${MKDIR} -p ${OBJECTDIR}
	$(COMPILE.f) -g -o ${OBJECTDIR}/distance.o distance.f90

${OBJECTDIR}/dot_product.o: dot_product.f90
	${MKDIR} -p ${OBJECTDIR}
	$(COMPILE.f) -g -o ${OBJECTDIR}/dot_product.o dot_product.f90

${OBJECTDIR}/init.o: init.f90
	${MKDIR} -p ${OBJECTDIR}
	$(COMPILE.f) -g -o ${OBJECTDIR}/init.o init.f90

${OBJECTDIR}/main.o: main.f90
	${MKDIR} -p ${OBJECTDIR}
	$(COMPILE.f) -g -o ${OBJECTDIR}/main.o main.f90

${OBJECTDIR}/matrix_mult.o: matrix_mult.f90
	${MKDIR} -p ${OBJECTDIR}
	$(COMPILE.f) -g -o ${OBJECTDIR}/matrix_mult.o matrix_mult.f90

${OBJECTDIR}/mu_method.o: mu_method.f90
	${MKDIR} -p ${OBJECTDIR}
	$(COMPILE.f) -g -o ${OBJECTDIR}/mu_method.o mu_method.f90

${OBJECTDIR}/print_mat.o: print_mat.f90
	${MKDIR} -p ${OBJECTDIR}
	$(COMPILE.f) -g -o ${OBJECTDIR}/print_mat.o print_mat.f90

${OBJECTDIR}/random_init.o: random_init.f90
	${MKDIR} -p ${OBJECTDIR}
	$(COMPILE.f) -g -o ${OBJECTDIR}/random_init.o random_init.f90

${OBJECTDIR}/trans.o: trans.f90
	${MKDIR} -p ${OBJECTDIR}
	$(COMPILE.f) -g -o ${OBJECTDIR}/trans.o trans.f90

${OBJECTDIR}/update_h.o: update_h.f90
	${MKDIR} -p ${OBJECTDIR}
	$(COMPILE.f) -g -o ${OBJECTDIR}/update_h.o update_h.f90

${OBJECTDIR}/update_w.o: update_w.f90
	${MKDIR} -p ${OBJECTDIR}
	$(COMPILE.f) -g -o ${OBJECTDIR}/update_w.o update_w.f90

# Subprojects
.build-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r ${CND_BUILDDIR}/${CND_CONF}
	${RM} *.mod

# Subprojects
.clean-subprojects:

# Enable dependency checking
.dep.inc: .depcheck-impl

include .dep.inc
