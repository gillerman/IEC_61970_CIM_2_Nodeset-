@echo off

"C:\Program Files (x86)\Altova\AltovaXML2013\AltovaXML" /xslt2 "CIM2UANodeSet2.xsl" /in "ABB40BUS20120712_sav_40I_EQ.xml" /out "IEC_61970_UANodeSetI2.xml" %*
IF ERRORLEVEL 1 EXIT/B %ERRORLEVEL%
