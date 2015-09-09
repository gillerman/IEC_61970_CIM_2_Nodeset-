@echo off
rem **************************************************************************
rem * Batch file for building the documentation from the Data type           *
rem * and IED templates in the SCL file                                      *
rem *                                                                        *
rem * Prepared by: Denis Francesconi                                         *
rem * COPYRIGHT UCAIug, 2012. Version 0.3 Release 2012/07/04.                *
rem *                                                                        *  
rem *                                                                        *
rem * This library is free software; you can redistribute it and/or          *
rem * modify it under the terms of the GNU Lesser General Public             *
rem * License as published by the Free Software Foundation,                  *
rem * version 3 of the License.                                              *
rem *                                                                        *
rem * This library is distributed in the hope that it will be useful,        *
rem * but WITHOUT ANY WARRANTY.                                              *
rem *                                                                        *
rem * You should have received a copy of the GNU Lesser General Public       *
rem * License along with this library; if not, write to the Free Software    *
rem * Foundation, Inc., 51 Franklin Street, Fifth Floor,                     *
rem * Boston, MA  02110-1301  USA                                            *
rem **************************************************************************
rem * REVISION 1: December 12  , 2012                                          *  
rem **************************************************************************
rem
rem location and name of your LD project

set xslproc1=msxsl.exe 
set xslproc2=java -jar saxon9.jar
set xslproc3=cscript msxsl.js

@echo off
rem    %xslproc1% ABB40BUS20120712_sav_40I_EQ.xml XCIM2UANodeset2.xsl -o IEC_61970_UANodesetI2.xml
    %xslproc2% ABB40BUS20120712_sav_40I_EQ.xml XCIM2UANodeset3.xsl > IEC_61970_UANodesetI2.xml
rem    %xslproc3% ABB40BUS20120712_sav_40I_EQ.xml XCIM2UANodeset2.xsl IEC_61970_UANodesetI2.xml

ECHO JOB COMPLETED
PAUSE
REM wait 200