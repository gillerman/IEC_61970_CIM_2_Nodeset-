@echo off

"C:\Program Files (x86)\Altova\AltovaXML2013\AltovaXML" /xslt2 "CIM2UANodeSet1.xslt" /in "ABB40BUS20120712_sav_40B_EQ.xml" /out "IEC_61970_UANodeSetB1.xml" %*
IF ERRORLEVEL 1 EXIT/B %ERRORLEVEL%
