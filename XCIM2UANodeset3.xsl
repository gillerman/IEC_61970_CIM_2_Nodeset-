<?xml version="1.0" encoding="UTF-8"?>
<!--
Title:CID to UANodeset Stylesheet
Copyright ©  OPC Foundation, Inc., 2013. Released 2013-03-01 16:37

Authors: Denis Francesconi, Hydro-Québec
         John Gillerman, GridCloudSystem, Inc.

Unless explicitly acquired and licensed from Licensor under another license, 
the contents of this file are subject to the Reciprocal Community License ("RCL") Version 0.9, 
or subsequent versions as allowed by the RCL, and You may not copy or use this file in either source code 
or executable form, except in compliance with the terms and conditions of the RCL.

All software distributed under the RCL is provided strictly on an "AS IS" basis, 
WITHOUT WARRANTY OF ANY KIND, EITHER EXPRESS OR IMPLIED, AND LICENSOR HEREBY DISCLAIMS ALL SUCH WARRANTIES, 
INCLUDING WITHOUT LIMITATION, ANY WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE, 
QUIET ENJOYMENT, OR NON-INFRINGEMENT. 

See the RCL for specific language governing rights and limitations under the RCL. 
-->
<xsl:stylesheet version="2.0" xmlns="http://opcfoundation.org/UA/2011/03/UANodeSet.xsd" 
                xmlns:cim="http://iec.ch/TC57/2012/CIM-schema-cim16#" 
                xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" 
                xmlns:xs="http://www.w3.org/2001/XMLSchema" 
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
                xmlns:fn="http://www.w3.org/2005/xpath-functions"
                xmlns:uax="http://opcfoundation.org/UA/2008/02/Types.xsd"
                exclude-result-prefixes="cim rdf xs fn">
	<xsl:output method="xml" encoding="UTF-8" indent="yes"/>
	<xsl:template match="/">
		<UANodeSet xmlns="http://opcfoundation.org/UA/2011/03/UANodeSet.xsd"
               xmlns:xsd="http://www.w3.org/2001/XMLSchema" 
               xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
               xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
               xmlns:uax="http://opcfoundation.org/UA/2008/02/Types.xsd"
			         xsi:schemaLocation="http://opcfoundation.org/UA/2011/03/UANodeSet.xsd">
			<NamespaceUris>
        <Uri>http://gcs.com/IEC61970Types</Uri>
				<Uri>http://gcs.com/IEC61970BInstances</Uri>
				<Uri>http://gcs.com/IEC61970IInstances</Uri>
			</NamespaceUris>
			<Aliases>
				<Alias Alias="Boolean">i=1</Alias>
				<Alias Alias="SByte">i=2</Alias>
				<Alias Alias="Byte">i=3</Alias>
				<Alias Alias="Int16">i=4</Alias>
				<Alias Alias="UInt16">i=5</Alias>
				<Alias Alias="Int32">i=6</Alias>
				<Alias Alias="UInt32">i=7</Alias>
				<Alias Alias="Int64">i=8</Alias>
				<Alias Alias="UInt64">i=9</Alias>
				<Alias Alias="Float">i=10</Alias>
				<Alias Alias="Double">i=11</Alias>
				<Alias Alias="DateTime">i=13</Alias>
				<Alias Alias="String">i=12</Alias>
				<Alias Alias="Guid">i=14</Alias>
				<Alias Alias="ByteString">i=15</Alias>
				<Alias Alias="XmlElement">i=16</Alias>
				<Alias Alias="NodeId">i=17</Alias>
				<Alias Alias="ExpandedNodeId">i=18</Alias>
				<Alias Alias="StatusCode">i=19</Alias>
				<Alias Alias="QualifiedName">i=20</Alias>
				<Alias Alias="LocalizedText">i=21</Alias>
				<Alias Alias="Structure">i=22</Alias>
				<Alias Alias="Number">i=26</Alias>
				<Alias Alias="Integer">i=27</Alias>
				<Alias Alias="UInteger">i=28</Alias>
				<Alias Alias="HasChild">i=34</Alias>
				<Alias Alias="Organizes">i=35</Alias>
				<Alias Alias="HasEventSource">i=36</Alias>
				<Alias Alias="HasModellingRule">i=37</Alias>
				<Alias Alias="HasEncoding">i=38</Alias>
				<Alias Alias="HasDescription">i=39</Alias>
				<Alias Alias="HasTypeDefinition">i=40</Alias>
				<Alias Alias="HasSubtype">i=45</Alias>
				<Alias Alias="HasProperty">i=46</Alias>
				<Alias Alias="HasComponent">i=47</Alias>
				<Alias Alias="HasNotifier">i=48</Alias>
				<Alias Alias="FolderType">i=58</Alias>
				<Alias Alias="ObjectFolder">i=85</Alias>
				<Alias Alias="TypeFolder">i=86</Alias>
				<Alias Alias="ObjectTypes">i=88</Alias>
			</Aliases>

<!-- *************************** -->
<!-- Parse CIM XML Instance File -->
<!-- **************************  -->
<!-- *************************** -->

      <!-- Parse Season Objects-->
      <xsl:for-each select="rdf:RDF/cim:Season">
        <UAObject>
          <xsl:attribute name="NodeId" namespace="" select="fn:concat('ns=3;s=', fn:string(@rdf:ID))"/>
          <xsl:attribute name="BrowseName" namespace="" select="fn:concat('3:',fn:string(cim:Season.name/@rdf:resource))"/>
          <DisplayName>
            <xsl:sequence select="fn:string(cim:Season.name/@rdf:resource)"/>
          </DisplayName>
          <Description>
            <xsl:sequence select="fn:concat(fn:string(cim:Season.name/@rdf:resource), ' Season')"/>
          </Description>
          <References>
            <Reference ReferenceType="Organizes" IsForward="false">ns=1;s=Ses</Reference>
            <Reference ReferenceType="HasTypeDefinition" IsForward="true">ns=1;s=Se</Reference>
          </References>
        </UAObject>
        <xsl:call-template name="CreateVariable">
          <xsl:with-param name="UAVariableId">Se.startDate</xsl:with-param>
          <xsl:with-param name="UAVariableName">Season.startDate</xsl:with-param>
          <xsl:with-param name="UAVariableValue"><xsl:value-of select="fn:string(cim:Season.startDate)"/></xsl:with-param>
        </xsl:call-template>
        <xsl:call-template name="CreateVariable">
          <xsl:with-param name="UAVariableId">Se.endDate</xsl:with-param>
          <xsl:with-param name="UAVariableName">Season.endDate</xsl:with-param>
          <xsl:with-param name="UAVariableValue"><xsl:value-of select="fn:string(cim:Season.endDate)"/></xsl:with-param>
        </xsl:call-template>
        <xsl:call-template name="CreateVariable">
          <xsl:with-param name="UAVariableId">Se.name</xsl:with-param>
          <xsl:with-param name="UAVariableName">Season.name</xsl:with-param>
          <xsl:with-param name="UAVariableValue"><xsl:value-of select="fn:string(cim:Season.name/@rdf:resource)"/></xsl:with-param>
        </xsl:call-template>
      </xsl:for-each>
      
      <!-- Parse Day Type Objects-->
      <xsl:for-each select="rdf:RDF/cim:DayType">
        <UAObject>
          <xsl:attribute name="NodeId" namespace="" select="fn:concat('ns=3;s=', fn:string(@rdf:ID))"/>
          <xsl:attribute name="BrowseName" namespace="" select="fn:concat('3:',fn:string(cim:IdentifiedObject.name))"/>
          <DisplayName>
            <xsl:sequence select="fn:string(cim:IdentifiedObject.name)"/>
          </DisplayName>
          <Description>
            <xsl:sequence select="fn:concat(fn:string(cim:IdentifiedObject.name), ' Day Type')"/>
          </Description>
          <References>
            <Reference ReferenceType="Organizes" IsForward="false">ns=1;s=DTs</Reference>
            <Reference ReferenceType="HasTypeDefinition" IsForward="true">ns=1;s=DT</Reference>
          </References>
        </UAObject>
        <xsl:call-template name="CreateVariable">
          <xsl:with-param name="UAVariableId">IDO.aliasName</xsl:with-param>
          <xsl:with-param name="UAVariableName">IdentifiedObject.aliasName</xsl:with-param>
          <xsl:with-param name="UAVariableValue"><xsl:value-of select="fn:string(cim:IdentifiedObject.aliasName)"/></xsl:with-param>
        </xsl:call-template>
		  </xsl:for-each>

      <!-- Parse Conform Load Schedule Objects-->
      <xsl:for-each select="rdf:RDF/cim:ConformLoadSchedule">
        <UAObject>
          <xsl:attribute name="NodeId" namespace="" select="fn:concat('ns=3;s=', fn:string(@rdf:ID))"/>
          <xsl:attribute name="BrowseName" namespace="" select="fn:concat('3:',fn:string(cim:IdentifiedObject.name))"/>
          <DisplayName>
            <xsl:sequence select="fn:string(cim:IdentifiedObject.name)"/>
          </DisplayName>
          <Description>
            <xsl:sequence select="fn:concat(fn:string(cim:IdentifiedObject.name), ' Conform Load Schedules')"/>
          </Description>
          <References>
            <Reference ReferenceType="Organizes" IsForward="false">ns=1;s=CLoSs</Reference>
            <Reference ReferenceType="HasTypeDefinition" IsForward="true">ns=1;s=CLoS</Reference>
            <Reference>
              <xsl:attribute name="ReferenceType">ns=1;s=CLoS.CLoG</xsl:attribute>
              <xsl:attribute name="IsForward">true</xsl:attribute>
              <xsl:sequence select="fn:concat('ns=3;s=', fn:substring(cim:ConformLoadSchedule.ConformLoadGroup/@rdf:resource,2,33))"/>
            </Reference>
            <Reference>
              <xsl:attribute name="ReferenceType">ns=1;s=SDTS.DT</xsl:attribute>
              <xsl:attribute name="IsForward">true</xsl:attribute>
              <xsl:sequence select="fn:concat('ns=3;s=', fn:substring(cim:SeasonDayTypeSchedule.DayType/@rdf:resource,2,33))"/>
            </Reference>
            <Reference>
              <xsl:attribute name="ReferenceType">ns=1;s=SDTS.Se</xsl:attribute>
              <xsl:attribute name="IsForward">true</xsl:attribute>
              <xsl:sequence select="fn:concat('ns=3;s=', fn:substring(cim:SeasonDayTypeSchedule.Season/@rdf:resource,2,33))"/>
            </Reference>
          </References>
        </UAObject>
        <xsl:call-template name="CreateVariable">
          <xsl:with-param name="UAVariableId">IDO.aliasName</xsl:with-param>
          <xsl:with-param name="UAVariableName">IdentifiedObject.aliasName</xsl:with-param>
          <xsl:with-param name="UAVariableValue">
            <xsl:value-of select="fn:string(cim:IdentifiedObject.aliasName)"/>
          </xsl:with-param>
        </xsl:call-template>
        <xsl:call-template name="CreateVariable">
          <xsl:with-param name="UAVariableId">RIS.timeStep</xsl:with-param>
          <xsl:with-param name="UAVariableName">RegularIntervalSchedule.timeStep</xsl:with-param>
          <xsl:with-param name="UAVariableValue">
            <xsl:value-of select="fn:string(cim:RegularIntervalSchedule.timeStep)"/>
          </xsl:with-param>
        </xsl:call-template>
        <xsl:call-template name="CreateVariable">
          <xsl:with-param name="UAVariableId">RIS.endStep</xsl:with-param>
          <xsl:with-param name="UAVariableName">RegularIntervalSchedule.endStep</xsl:with-param>
          <xsl:with-param name="UAVariableValue">
            <xsl:value-of select="fn:string(cim:RegularIntervalSchedule.endStep)"/>
          </xsl:with-param>
        </xsl:call-template>
        <xsl:call-template name="CreateVariable">
          <xsl:with-param name="UAVariableId">BIS.startTime</xsl:with-param>
          <xsl:with-param name="UAVariableName">BasicIntervalSchedule.startTime</xsl:with-param>
          <xsl:with-param name="UAVariableValue">
            <xsl:value-of select="fn:string(cim:BasicIntervalSchedule.startTime)"/>
          </xsl:with-param>
        </xsl:call-template>
        <xsl:call-template name="CreateVariable">
          <xsl:with-param name="UAVariableId">BIS.value1Unit</xsl:with-param>
          <xsl:with-param name="UAVariableName">BasicIntervalSchedule.value1Unit</xsl:with-param>
          <xsl:with-param name="UAVariableValue">
            <xsl:value-of select="fn:string(cim:BasicIntervalSchedule.value1Unit)"/>
          </xsl:with-param>
        </xsl:call-template>
        <xsl:call-template name="CreateVariable">
          <xsl:with-param name="UAVariableId">BIS.value2Unit</xsl:with-param>
          <xsl:with-param name="UAVariableName">BasicIntervalSchedule.value2Unit</xsl:with-param>
          <xsl:with-param name="UAVariableValue">
            <xsl:value-of select="fn:string(cim:BasicIntervalSchedule.value2Unit)"/>
          </xsl:with-param>
        </xsl:call-template>
      </xsl:for-each>

      <!-- Parse Curve Data Objects-->
      <xsl:for-each select="rdf:RDF/cim:CurveData">
        <UAObject>
          <xsl:attribute name="NodeId" namespace="" select="fn:concat('ns=3;s=', fn:string(@rdf:ID))"/>
          <xsl:attribute name="BrowseName" namespace="" select="fn:concat('3:',fn:string(@rdf:ID))"/>
          <DisplayName>
            <xsl:sequence select="fn:string(cim:RegularIntervalSchedule.xvalue)"/>
          </DisplayName>
          <Description>
            <xsl:sequence select="fn:concat(fn:string(cim:RegularIntervalSchedule.xvalue), ' Curve Data')"/>
          </Description>
          <References>
            <Reference ReferenceType="Organizes" IsForward="false">ns=1;s=CDats</Reference>
            <Reference ReferenceType="HasTypeDefinition" IsForward="true">ns=1;s=CDat</Reference>
            <Reference>
              <xsl:attribute name="ReferenceType">ns=1;s=CDat.Cur</xsl:attribute>
              <xsl:attribute name="IsForward">true</xsl:attribute>
              <xsl:sequence select="fn:concat('ns=3;s=', fn:substring(cim:CurveData.Curve/@rdf:resource,2,33))"/>
            </Reference>
          </References>
        </UAObject>
        <xsl:call-template name="CreateVariable">
          <xsl:with-param name="UAVariableId">CDat.xvalue</xsl:with-param>
          <xsl:with-param name="UAVariableName">CurveData.xvalue</xsl:with-param>
          <xsl:with-param name="UAVariableValue">
            <xsl:value-of select="fn:string(cim:CurveData.xvalue)"/>
          </xsl:with-param>
        </xsl:call-template>
        <xsl:call-template name="CreateVariable">
          <xsl:with-param name="UAVariableId">CDat.y1value</xsl:with-param>
          <xsl:with-param name="UAVariableName">CurveData.y1value</xsl:with-param>
          <xsl:with-param name="UAVariableValue">
            <xsl:value-of select="fn:string(cim:CurveData.y1value)"/>
          </xsl:with-param>
        </xsl:call-template>
        <xsl:call-template name="CreateVariable">
          <xsl:with-param name="UAVariableId">CDat.y2value</xsl:with-param>
          <xsl:with-param name="UAVariableName">CurveData.y2value</xsl:with-param>
          <xsl:with-param name="UAVariableValue">
            <xsl:value-of select="fn:string(cim:CurveData.y2value)"/>
          </xsl:with-param>
        </xsl:call-template>
      </xsl:for-each>

        <!-- Parse Geographical Region Objects-->
      <xsl:for-each select="rdf:RDF/cim:GeographicalRegion">
        <UAObject>
          <xsl:attribute name="NodeId" namespace="" select="fn:concat('ns=3;s=', fn:string(@rdf:ID))"/>
          <xsl:attribute name="BrowseName" namespace="" select="fn:concat('3:',fn:string(cim:IdentifiedObject.name))"/>
          <DisplayName>
            <xsl:sequence select="fn:string(cim:IdentifiedObject.name)"/>
          </DisplayName>
          <Description>
            <xsl:sequence select="fn:concat(fn:string(cim:IdentifiedObject.name), ' Region')"/>
          </Description>
          <References>
            <Reference ReferenceType="Organizes" IsForward="false">ns=1;s=GRs</Reference>
            <Reference ReferenceType="HasTypeDefinition" IsForward="true">ns=1;s=GR</Reference>
          </References>
        </UAObject>
		    <xsl:call-template name="CreateVariable">
          <xsl:with-param name="UAVariableId">IDO.aliasName</xsl:with-param>
          <xsl:with-param name="UAVariableName">IdentifiedObject.aliasName</xsl:with-param>
          <xsl:with-param name="UAVariableValue"><xsl:value-of select="fn:string(cim:IdentifiedObject.aliasName)"/></xsl:with-param>
        </xsl:call-template>
      </xsl:for-each>

      <!-- Parse Sub Geographical Region Objects-->
      <xsl:for-each select="rdf:RDF/cim:SubGeographicalRegion">
        <UAObject>
          <xsl:attribute name="NodeId" namespace="" select="fn:concat('ns=3;s=', fn:string(@rdf:ID))"/>
          <xsl:attribute name="BrowseName" namespace="" select="fn:concat('3:',fn:string(cim:IdentifiedObject.name))"/>
          <DisplayName>
            <xsl:sequence select="fn:string(cim:IdentifiedObject.name)"/>
          </DisplayName>
          <Description>
            <xsl:sequence select="fn:concat(fn:string(cim:IdentifiedObject.name), ' Sub Geographical Region')"/>
          </Description>
          <References>
            <Reference ReferenceType="Organizes" IsForward="false">ns=1;s=SGRs</Reference>
            <Reference ReferenceType="HasTypeDefinition" IsForward="true">ns=1;s=SGR</Reference>
            <Reference>
              <xsl:attribute name="ReferenceType">ns=1;s=SGR.Re</xsl:attribute>
              <xsl:attribute name="IsForward">true</xsl:attribute>
              <xsl:sequence select="fn:concat('ns=3;s=', fn:substring(cim:SubGeographicalRegion.Region/@rdf:resource,2,33))"/>
            </Reference>
          </References>
        </UAObject>
        <xsl:call-template name="CreateVariable">
          <xsl:with-param name="UAVariableId">IDO.aliasName</xsl:with-param>
          <xsl:with-param name="UAVariableName">IdentifiedObject.aliasName</xsl:with-param>
          <xsl:with-param name="UAVariableValue"><xsl:value-of select="fn:string(cim:IdentifiedObject.aliasName)"/></xsl:with-param>
        </xsl:call-template>
      </xsl:for-each>
      
      <!-- Parse Load Area Objects-->
      <xsl:for-each select="rdf:RDF/cim:LoadArea">
        <UAObject>
          <xsl:attribute name="NodeId" namespace="" select="fn:concat('ns=3;s=',fn:string(@rdf:ID))"/>
          <xsl:attribute name="BrowseName" namespace="" select="fn:concat('3:',fn:string(cim:IdentifiedObject.name))"/>
          <DisplayName>
            <xsl:sequence select="fn:string(cim:IdentifiedObject.name)"/>
          </DisplayName>
          <Description>
            <xsl:sequence select="fn:concat(fn:string(cim:IdentifiedObject.name), ' Load Area')"/>
          </Description>
          <References>
            <Reference ReferenceType="Organizes" IsForward="false">ns=1;s=LAs</Reference>
            <Reference ReferenceType="HasTypeDefinition" IsForward="true">ns=1;s=LA</Reference>
          </References>
        </UAObject>
        <xsl:call-template name="CreateVariable">
          <xsl:with-param name="UAVariableId">IDO.aliasName</xsl:with-param>
          <xsl:with-param name="UAVariableName">IdentifiedObject.aliasName</xsl:with-param>
          <xsl:with-param name="UAVariableValue">
            <xsl:value-of select="fn:string(cim:IdentifiedObject.aliasName)"/>
          </xsl:with-param>
        </xsl:call-template>
      </xsl:for-each>

      <!-- Parse PhaseTapChangerLinear Objects-->
      <xsl:for-each select="rdf:RDF/cim:PhaseTapChangerLinear">
        <UAObject>
          <xsl:attribute name="NodeId" namespace="" select="fn:concat('ns=3;s=',fn:string(@rdf:ID))"/>
          <xsl:attribute name="BrowseName" namespace="" select="fn:concat('3:',fn:string(cim:IdentifiedObject.name))"/>
          <DisplayName>
            <xsl:sequence select="fn:string(cim:IdentifiedObject.name)"/>
          </DisplayName>
          <Description>
            <xsl:sequence select="fn:concat(fn:string(cim:IdentifiedObject.name), ' Phase Tap Changer Linear')"/>
          </Description>
          <References>
            <Reference ReferenceType="Organizes" IsForward="false">ns=1;s=PTCLs</Reference>
            <Reference ReferenceType="HasTypeDefinition" IsForward="true">ns=1;s=PTCL</Reference>
            <Reference>
              <xsl:attribute name="ReferenceType">ns=1;s=TC.TCC</xsl:attribute>
              <xsl:attribute name="IsForward">true</xsl:attribute>
              <xsl:sequence select="fn:concat('ns=3;s=', fn:substring(cim:TapChanger.TapChangerControl/@rdf:resource,2,33))"/>
            </Reference>
            <Reference>
              <xsl:attribute name="ReferenceType">ns=1;s=PTC.TE</xsl:attribute>
              <xsl:attribute name="IsForward">true</xsl:attribute>
              <xsl:sequence select="fn:concat('ns=3;s=', fn:substring(cim:PhaseTapChanger.TransformerEnd/@rdf:resource,2,33))"/>
            </Reference>
          </References>
        </UAObject>
        <xsl:call-template name="CreateVariable">
          <xsl:with-param name="UAVariableId">IDO.aliasName</xsl:with-param>
          <xsl:with-param name="UAVariableName">IdentifiedObject.aliasName</xsl:with-param>
          <xsl:with-param name="UAVariableValue">
            <xsl:value-of select="fn:string(cim:IdentifiedObject.aliasName)"/>
          </xsl:with-param>
        </xsl:call-template>
        <xsl:call-template name="CreateVariable">
          <xsl:with-param name="UAVariableId">TC.highStep</xsl:with-param>
          <xsl:with-param name="UAVariableName">TapChanger.highStep</xsl:with-param>
          <xsl:with-param name="UAVariableValue">
            <xsl:value-of select="fn:string(cim:TapChanger.highStep)"/>
          </xsl:with-param>
        </xsl:call-template>
        <xsl:call-template name="CreateVariable">
          <xsl:with-param name="UAVariableId">TC.lowStep</xsl:with-param>
          <xsl:with-param name="UAVariableName">TapChanger.lowStep</xsl:with-param>
          <xsl:with-param name="UAVariableValue">
            <xsl:value-of select="fn:string(cim:TapChanger.lowStep)"/>
          </xsl:with-param>
        </xsl:call-template>
        <xsl:call-template name="CreateVariable">
          <xsl:with-param name="UAVariableId">TC.ltcFlag</xsl:with-param>
          <xsl:with-param name="UAVariableName">TapChanger.ltcFlag</xsl:with-param>
          <xsl:with-param name="UAVariableValue">
            <xsl:value-of select="fn:string(cim:TapChanger.ltcFlag)"/>
          </xsl:with-param>
        </xsl:call-template>
        <xsl:call-template name="CreateVariable">
          <xsl:with-param name="UAVariableId">TC.neutralStep</xsl:with-param>
          <xsl:with-param name="UAVariableName">TapChanger.neutralStep</xsl:with-param>
          <xsl:with-param name="UAVariableValue">
            <xsl:value-of select="fn:string(cim:TapChanger.neutralStep)"/>
          </xsl:with-param>
        </xsl:call-template>
        <xsl:call-template name="CreateVariable">
          <xsl:with-param name="UAVariableId">TC.neutralU</xsl:with-param>
          <xsl:with-param name="UAVariableName">TapChanger.neutralU</xsl:with-param>
          <xsl:with-param name="UAVariableValue">
            <xsl:value-of select="fn:string(cim:TapChanger.neutralU)"/>
          </xsl:with-param>
        </xsl:call-template>
        <xsl:call-template name="CreateVariable">
          <xsl:with-param name="UAVariableId">TC.normalStep</xsl:with-param>
          <xsl:with-param name="UAVariableName">TapChanger.normalStep</xsl:with-param>
          <xsl:with-param name="UAVariableValue">
            <xsl:value-of select="fn:string(cim:TapChanger.normalStep)"/>
          </xsl:with-param>
        </xsl:call-template>
        <xsl:call-template name="CreateVariable">
          <xsl:with-param name="UAVariableId">PTC.neutralPhase</xsl:with-param>
          <xsl:with-param name="UAVariableName">PhaseTapChanger.neutralPhase</xsl:with-param>
          <xsl:with-param name="UAVariableValue">
            <xsl:value-of select="fn:string(cim:PhaseTapChanger.neutralPhase)"/>
          </xsl:with-param>
        </xsl:call-template>
        <xsl:call-template name="CreateVariable">
          <xsl:with-param name="UAVariableId">PTCL.stepPhaseShiftIncrement</xsl:with-param>
          <xsl:with-param name="UAVariableName">PhaseTapChangerLinear.stepPhaseShiftIncrement</xsl:with-param>
          <xsl:with-param name="UAVariableValue">
            <xsl:value-of select="fn:string(cim:PhaseTapChangerLinear.stepPhaseShiftIncrement)"/>
          </xsl:with-param>
        </xsl:call-template>
      </xsl:for-each>

      <!-- Parse Phase Tap Changer Asymmetrical Objects-->
      <xsl:for-each select="rdf:RDF/cim:PhaseTapChangerAsymmetrical">
        <UAObject>
          <xsl:attribute name="NodeId" namespace="" select="fn:concat('ns=3;s=',fn:string(@rdf:ID))"/>
          <xsl:attribute name="BrowseName" namespace="" select="fn:concat('3:',fn:string(cim:IdentifiedObject.name))"/>
          <DisplayName>
            <xsl:sequence select="fn:string(cim:IdentifiedObject.name)"/>
          </DisplayName>
          <Description>
            <xsl:sequence select="fn:concat(fn:string(cim:IdentifiedObject.name), ' Phase Tap Changer Asymmetrical')"/>
          </Description>
          <References>
            <Reference ReferenceType="Organizes" IsForward="false">ns=1;s=PTCAs</Reference>
            <Reference ReferenceType="HasTypeDefinition" IsForward="true">ns=1;s=PTCA</Reference>
            <Reference>
              <xsl:attribute name="ReferenceType">ns=1;s=TC.TCC</xsl:attribute>
              <xsl:attribute name="IsForward">true</xsl:attribute>
              <xsl:sequence select="fn:concat('ns=3;s=', fn:substring(cim:TapChanger.TapChangerControl/@rdf:resource,2,33))"/>
            </Reference>
            <Reference>
              <xsl:attribute name="ReferenceType">ns=1;s=PTC.TE</xsl:attribute>
              <xsl:attribute name="IsForward">true</xsl:attribute>
              <xsl:sequence select="fn:concat('ns=3;s=', fn:substring(cim:PhaseTapChanger.TransformerEnd/@rdf:resource,2,33))"/>
            </Reference>
          </References>
        </UAObject>
        <xsl:call-template name="CreateVariable">
          <xsl:with-param name="UAVariableId">IDO.aliasName</xsl:with-param>
          <xsl:with-param name="UAVariableName">IdentifiedObject.aliasName</xsl:with-param>
          <xsl:with-param name="UAVariableValue">
            <xsl:value-of select="fn:string(cim:IdentifiedObject.aliasName)"/>
          </xsl:with-param>
        </xsl:call-template>
        <xsl:call-template name="CreateVariable">
          <xsl:with-param name="UAVariableId">TC.highStep</xsl:with-param>
          <xsl:with-param name="UAVariableName">TapChanger.highStep</xsl:with-param>
          <xsl:with-param name="UAVariableValue">
            <xsl:value-of select="cim:TapChanger.highStep"/>
          </xsl:with-param>
        </xsl:call-template>
        <xsl:call-template name="CreateVariable">
          <xsl:with-param name="UAVariableId">TC.lowStep</xsl:with-param>
          <xsl:with-param name="UAVariableName">TapChanger.lowStep</xsl:with-param>
          <xsl:with-param name="UAVariableValue">
            <xsl:value-of select="fn:string(cim:TapChanger.lowStep)"/>
          </xsl:with-param>
        </xsl:call-template>
        <xsl:call-template name="CreateVariable">
          <xsl:with-param name="UAVariableId">TC.ltcFlag</xsl:with-param>
          <xsl:with-param name="UAVariableName">TapChanger.ltcFlag</xsl:with-param>
          <xsl:with-param name="UAVariableValue">
            <xsl:value-of select="fn:string(cim:TapChanger.ltcFlag)"/>
          </xsl:with-param>
        </xsl:call-template>
        <xsl:call-template name="CreateVariable">
          <xsl:with-param name="UAVariableId">TC.neutralStep</xsl:with-param>
          <xsl:with-param name="UAVariableName">TapChanger.neutralStep</xsl:with-param>
          <xsl:with-param name="UAVariableValue">
            <xsl:value-of select="fn:string(cim:TapChanger.neutralStep)"/>
          </xsl:with-param>
        </xsl:call-template>
        <xsl:call-template name="CreateVariable">
          <xsl:with-param name="UAVariableId">TC.neutralU</xsl:with-param>
          <xsl:with-param name="UAVariableName">TapChanger.neutralU</xsl:with-param>
          <xsl:with-param name="UAVariableValue">
            <xsl:value-of select="fn:string(cim:TapChanger.neutralU)"/>
          </xsl:with-param>
        </xsl:call-template>
        <xsl:call-template name="CreateVariable">
          <xsl:with-param name="UAVariableId">TC.normalStep</xsl:with-param>
          <xsl:with-param name="UAVariableName">TapChanger.normalStep</xsl:with-param>
          <xsl:with-param name="UAVariableValue">
            <xsl:value-of select="fn:string(cim:TapChanger.normalStep)"/>
          </xsl:with-param>
        </xsl:call-template>
        <xsl:call-template name="CreateVariable">
          <xsl:with-param name="UAVariableId">PTCNL.neutralPhase</xsl:with-param>
          <xsl:with-param name="UAVariableName">PhaseTapChangerNonLinear.neutralPhase</xsl:with-param>
          <xsl:with-param name="UAVariableValue">
            <xsl:value-of select="fn:string(cim:PhaseTapChangerNonLinear.neutralPhase)"/>
          </xsl:with-param>
        </xsl:call-template>
        <xsl:call-template name="CreateVariable">
          <xsl:with-param name="UAVariableId">PTCNL.voltageStepIncrement</xsl:with-param>
          <xsl:with-param name="UAVariableName">PhaseTapChangerNonLinear.voltageStepIncrement</xsl:with-param>
          <xsl:with-param name="UAVariableValue">
            <xsl:value-of select="fn:string(cim:PhaseTapChangerNonLinear.voltageStepIncrement)"/>
          </xsl:with-param>
        </xsl:call-template>
        <xsl:call-template name="CreateVariable">
          <xsl:with-param name="UAVariableId">PTCA.windingConnectionAngle</xsl:with-param>
          <xsl:with-param name="UAVariableName">PhaseTapChangerAsymmetrical.windingConnectionAngle</xsl:with-param>
          <xsl:with-param name="UAVariableValue">
            <xsl:value-of select="fn:string(cim:PhaseTapChangerAsymmetrical.windingConnectionAngle)"/>
          </xsl:with-param>
        </xsl:call-template>
      </xsl:for-each>

      <!-- Parse Base Voltage Objects-->
      <xsl:for-each select="rdf:RDF/cim:BaseVoltage">
        <UAObject>
          <xsl:attribute name="NodeId" namespace="" select="fn:concat('ns=3;s=',fn:string(@rdf:ID))"/>
          <xsl:attribute name="BrowseName" namespace="" select="fn:concat('3:',fn:string(cim:IdentifiedObject.name))"/>
          <DisplayName>
            <xsl:sequence select="fn:string(cim:IdentifiedObject.name)"/>
          </DisplayName>
          <Description>
            <xsl:sequence select="fn:concat(fn:string(cim:IdentifiedObject.name), ' Base Voltage')"/>
          </Description>
          <References>
            <Reference ReferenceType="Organizes" IsForward="false">ns=1;s=BVs</Reference>
            <Reference ReferenceType="HasTypeDefinition" IsForward="true">ns=1;s=BV</Reference>
          </References>
        </UAObject>
        <xsl:call-template name="CreateVariable">
          <xsl:with-param name="UAVariableId">BV.nominalVoltage</xsl:with-param>
          <xsl:with-param name="UAVariableName">BaseVoltage.nominalVoltage</xsl:with-param>
          <xsl:with-param name="UAVariableValue"><xsl:value-of select="fn:string(cim:BaseVoltage.nominalVoltage)"/></xsl:with-param>
        </xsl:call-template>
      </xsl:for-each>

      <!-- Parse Line Objects-->
      <xsl:for-each select="rdf:RDF/cim:Line">
        <UAObject>
          <xsl:attribute name="NodeId" namespace="" select="fn:concat('ns=3;s=', fn:string(@rdf:ID))"/>
          <xsl:attribute name="BrowseName" namespace="" select="fn:concat('3:',fn:string(cim:IdentifiedObject.name))"/>
          <DisplayName>
            <xsl:sequence select="fn:string(cim:IdentifiedObject.name)"/>
          </DisplayName>
          <Description>
            <xsl:sequence select="fn:concat(fn:string(cim:IdentifiedObject.name), ' Line')"/>
          </Description>
          <References>
            <Reference ReferenceType="Organizes" IsForward="false">ns=1;s=Lis</Reference>
            <Reference ReferenceType="HasTypeDefinition" IsForward="true">ns=1;s=Li</Reference>
            <Reference>
              <xsl:attribute name="ReferenceType">ns=1;s=Li.Re</xsl:attribute>
              <xsl:attribute name="IsForward">true</xsl:attribute>
              <xsl:sequence select="fn:concat('ns=3;s=', fn:substring(cim:Line.Region/@rdf:resource,2,33))"/>
            </Reference>
          </References>
        </UAObject>
        <xsl:call-template name="CreateVariable">
          <xsl:with-param name="UAVariableId">IDO.aliasName</xsl:with-param>
          <xsl:with-param name="UAVariableName">IdentifiedObject.aliasName</xsl:with-param>
          <xsl:with-param name="UAVariableValue">
            <xsl:value-of select="fn:string(cim:IdentifiedObject.aliasName)"/>
          </xsl:with-param>
        </xsl:call-template>
      </xsl:for-each>

      <!-- Parse Mutual Coupling Objects-->
      <xsl:for-each select="rdf:RDF/cim:MutualCoupling">
        <UAObject>
          <xsl:attribute name="NodeId" namespace="" select="fn:concat('ns=3;s=', fn:string(@rdf:ID))"/>
          <xsl:attribute name="BrowseName" namespace="" select="fn:concat('3:',fn:string(cim:IdentifiedObject.name))"/>
          <DisplayName>
            <xsl:sequence select="fn:string(cim:IdentifiedObject.name)"/>
          </DisplayName>
          <Description>
            <xsl:sequence select="fn:concat(fn:string(cim:IdentifiedObject.name), ' Mutual Coupling')"/>
          </Description>
          <References>
            <Reference ReferenceType="Organizes" IsForward="false">ns=1;s=MCs</Reference>
            <Reference ReferenceType="HasTypeDefinition" IsForward="true">ns=1;s=MC</Reference>
            <Reference>
              <xsl:attribute name="ReferenceType">ns=1;s=MC.FC</xsl:attribute>
              <xsl:attribute name="IsForward">true</xsl:attribute>
              <xsl:sequence select="fn:concat('ns=3;s=', fn:substring(cim:MutualCoupling.First_Terminal/@rdf:resource,2,33))"/>
            </Reference>
            <Reference>
              <xsl:attribute name="ReferenceType">ns=1;s=MC.SC</xsl:attribute>
              <xsl:attribute name="IsForward">true</xsl:attribute>
              <xsl:sequence select="fn:concat('ns=3;s=', fn:substring(cim:MutualCoupling.Second_Terminal/@rdf:resource,2,33))"/>
            </Reference>
          </References>
        </UAObject>
        <xsl:call-template name="CreateVariable">
          <xsl:with-param name="UAVariableId">IDO.aliasName</xsl:with-param>
          <xsl:with-param name="UAVariableName">IdentifiedObject.aliasName</xsl:with-param>
          <xsl:with-param name="UAVariableValue">
            <xsl:value-of select="fn:string(cim:IdentifiedObject.aliasName)"/>
          </xsl:with-param>
        </xsl:call-template>
        <xsl:call-template name="CreateVariable">
          <xsl:with-param name="UAVariableId">MC.distance11</xsl:with-param>
          <xsl:with-param name="UAVariableName">MutualCoupling.distance11</xsl:with-param>
          <xsl:with-param name="UAVariableValue">
            <xsl:value-of select="fn:string(cim:MutualCoupling.distance11)"/>
          </xsl:with-param>
        </xsl:call-template>
        <xsl:call-template name="CreateVariable">
          <xsl:with-param name="UAVariableId">MC.distance12</xsl:with-param>
          <xsl:with-param name="UAVariableName">MutualCoupling.distance12</xsl:with-param>
          <xsl:with-param name="UAVariableValue">
            <xsl:value-of select="fn:string(cim:MutualCoupling.distance12)"/>
          </xsl:with-param>
        </xsl:call-template>
        <xsl:call-template name="CreateVariable">
          <xsl:with-param name="UAVariableId">MC.distance21</xsl:with-param>
          <xsl:with-param name="UAVariableName">MutualCoupling.distance21</xsl:with-param>
          <xsl:with-param name="UAVariableValue">
            <xsl:value-of select="fn:string(cim:MutualCoupling.distance21)"/>
          </xsl:with-param>
        </xsl:call-template>
        <xsl:call-template name="CreateVariable">
          <xsl:with-param name="UAVariableId">MC.distance22</xsl:with-param>
          <xsl:with-param name="UAVariableName">MutualCoupling.distance22</xsl:with-param>
          <xsl:with-param name="UAVariableValue">
            <xsl:value-of select="fn:string(cim:MutualCoupling.distance22)"/>
          </xsl:with-param>
        </xsl:call-template>
        <xsl:call-template name="CreateVariable">
          <xsl:with-param name="UAVariableId">MC.b0ch</xsl:with-param>
          <xsl:with-param name="UAVariableName">MutualCoupling.b0ch</xsl:with-param>
          <xsl:with-param name="UAVariableValue">
            <xsl:value-of select="fn:string(cim:MutualCoupling.b0ch)"/>
          </xsl:with-param>
        </xsl:call-template>
        <xsl:call-template name="CreateVariable">
          <xsl:with-param name="UAVariableId">MC.g0ch</xsl:with-param>
          <xsl:with-param name="UAVariableName">MutualCoupling.g0ch</xsl:with-param>
          <xsl:with-param name="UAVariableValue">
            <xsl:value-of select="fn:string(cim:MutualCoupling.g0ch)"/>
          </xsl:with-param>
        </xsl:call-template>
        <xsl:call-template name="CreateVariable">
          <xsl:with-param name="UAVariableId">MC.r0</xsl:with-param>
          <xsl:with-param name="UAVariableName">MutualCoupling.r0</xsl:with-param>
          <xsl:with-param name="UAVariableValue">
            <xsl:value-of select="fn:string(cim:MutualCoupling.r0)"/>
          </xsl:with-param>
        </xsl:call-template>
        <xsl:call-template name="CreateVariable">
          <xsl:with-param name="UAVariableId">MC.x0</xsl:with-param>
          <xsl:with-param name="UAVariableName">MutualCoupling.x0</xsl:with-param>
          <xsl:with-param name="UAVariableValue">
            <xsl:value-of select="fn:string(cim:MutualCoupling.x0)"/>
          </xsl:with-param>
        </xsl:call-template>
      </xsl:for-each>

      <!-- Parse Hydro GeneratingUnit Objects-->
      <xsl:for-each select="rdf:RDF/cim:HydroGeneratingUnit">
        <UAObject>
          <xsl:attribute name="NodeId" namespace="" select="fn:concat('ns=3;s=', fn:string(@rdf:ID))"/>
          <xsl:attribute name="BrowseName" namespace="" select="fn:concat('3:',fn:string(cim:IdentifiedObject.name))"/>
          <DisplayName>
            <xsl:sequence select="fn:string(cim:IdentifiedObject.name)"/>
          </DisplayName>
          <Description>
            <xsl:sequence select="fn:concat(fn:string(cim:IdentifiedObject.name), ' Hydro Generating Unit')"/>
          </Description>
          <References>
            <Reference ReferenceType="Organizes" IsForward="false">ns=1;s=HGUs</Reference>
            <Reference ReferenceType="HasTypeDefinition" IsForward="true">ns=1;s=HGU</Reference>
            <Reference>
              <xsl:attribute name="ReferenceType">ns=1;s=Eq.EqC</xsl:attribute>
              <xsl:attribute name="IsForward">true</xsl:attribute>
              <xsl:sequence select="fn:concat('ns=3;s=', fn:substring(cim:Equipment.EquipmentContainer/@rdf:resource,2,33))"/>
            </Reference>
          </References>
        </UAObject>
        <xsl:call-template name="CreateVariable">
          <xsl:with-param name="UAVariableId">IDO.aliasName</xsl:with-param>
          <xsl:with-param name="UAVariableName">IdentifiedObject.aliasName</xsl:with-param>
          <xsl:with-param name="UAVariableValue">
            <xsl:value-of select="fn:string(cim:IdentifiedObject.aliasName)"/>
          </xsl:with-param>
        </xsl:call-template>
        <xsl:call-template name="CreateVariable">
          <xsl:with-param name="UAVariableId">GU.genControlSource</xsl:with-param>
          <xsl:with-param name="UAVariableName">GeneratingUnit.genControlSource</xsl:with-param>
          <xsl:with-param name="UAVariableValue">
            <xsl:value-of select="fn:string(cim:GeneratingUnit.genControlSource/@rdf:resource)"/>
          </xsl:with-param>
        </xsl:call-template>
        <xsl:call-template name="CreateVariable">
          <xsl:with-param name="UAVariableId">GU.initialP</xsl:with-param>
          <xsl:with-param name="UAVariableName">GeneratingUnit.initialP</xsl:with-param>
          <xsl:with-param name="UAVariableValue">
            <xsl:value-of select="fn:string(cim:GeneratingUnit.initialP)"/>
          </xsl:with-param>
        </xsl:call-template>
        <xsl:call-template name="CreateVariable">
          <xsl:with-param name="UAVariableId">GU.nominalP</xsl:with-param>
          <xsl:with-param name="UAVariableName">GeneratingUnit.nominalP</xsl:with-param>
          <xsl:with-param name="UAVariableValue">
            <xsl:value-of select="fn:string(cim:GeneratingUnit.nominalP)"/>
          </xsl:with-param>
        </xsl:call-template>
        <xsl:call-template name="CreateVariable">
          <xsl:with-param name="UAVariableId">GU.maxOperatingP</xsl:with-param>
          <xsl:with-param name="UAVariableName">GeneratingUnit.maxOperatingP</xsl:with-param>
          <xsl:with-param name="UAVariableValue">
            <xsl:value-of select="fn:string(cim:GeneratingUnit.maxOperatingP)"/>
          </xsl:with-param>
        </xsl:call-template>
        <xsl:call-template name="CreateVariable">
          <xsl:with-param name="UAVariableId">GU.minOperatingP</xsl:with-param>
          <xsl:with-param name="UAVariableName">GeneratingUnit.minOperatingP</xsl:with-param>
          <xsl:with-param name="UAVariableValue">
            <xsl:value-of select="fn:string(cim:GeneratingUnit.minOperatingP)"/>
          </xsl:with-param>
        </xsl:call-template>
      </xsl:for-each>
      
      <!-- Parse AC Line Segment Objects-->
      <xsl:for-each select="rdf:RDF/cim:ACLineSegment">
        <UAObject>
          <xsl:attribute name="NodeId" namespace="" select="fn:concat('ns=3;s=', fn:string(@rdf:ID))"/>
          <xsl:attribute name="BrowseName" namespace="" select="fn:concat('3:',fn:string(cim:IdentifiedObject.name))"/>
          <DisplayName>
            <xsl:sequence select="fn:string(cim:IdentifiedObject.name)"/>
          </DisplayName>
          <Description>
            <xsl:sequence select="fn:concat(fn:string(cim:IdentifiedObject.name), ' AC Line Segment')"/>
          </Description>
          <References>
            <Reference ReferenceType="Organizes" IsForward="false">ns=1;s=LSs</Reference>
            <Reference ReferenceType="HasTypeDefinition" IsForward="true">ns=1;s=LS</Reference>
            <Reference>
              <xsl:attribute name="ReferenceType">ns=1;s=CEq.BV</xsl:attribute>
              <xsl:attribute name="IsForward">true</xsl:attribute>
              <xsl:sequence select="fn:concat('ns=3;s=', fn:substring(cim:ConductingEquipment.BaseVoltage/@rdf:resource,2,33))"/>
            </Reference>
            <Reference>
              <xsl:attribute name="ReferenceType">ns=1;s=Eq.EqC</xsl:attribute>
              <xsl:attribute name="IsForward">true</xsl:attribute>
              <xsl:sequence select="fn:concat('ns=3;s=', fn:substring(cim:Equipment.EquipmentContainer/@rdf:resource,2,33))"/>
            </Reference>
          </References>
        </UAObject>
		    <xsl:call-template name="CreateVariable">
          <xsl:with-param name="UAVariableId">IDO.aliasName</xsl:with-param>
          <xsl:with-param name="UAVariableName">IdentifiedObject.aliasName</xsl:with-param>
          <xsl:with-param name="UAVariableValue"><xsl:value-of select="fn:string(cim:IdentifiedObject.aliasName)"/></xsl:with-param>
        </xsl:call-template>		
		    <xsl:call-template name="CreateVariable">
          <xsl:with-param name="UAVariableId">LS.gch</xsl:with-param>
          <xsl:with-param name="UAVariableName">ACLineSegment.gch</xsl:with-param>
          <xsl:with-param name="UAVariableValue"><xsl:value-of select="fn:string(cim:ACLineSegment.gch)"/></xsl:with-param>
        </xsl:call-template>
		    <xsl:call-template name="CreateVariable">
          <xsl:with-param name="UAVariableId">LS.g0ch</xsl:with-param>
          <xsl:with-param name="UAVariableName">ACLineSegment.g0ch</xsl:with-param>
          <xsl:with-param name="UAVariableValue"><xsl:value-of select="fn:string(cim:ACLineSegment.g0ch)"/></xsl:with-param>
        </xsl:call-template>
		    <xsl:call-template name="CreateVariable">
          <xsl:with-param name="UAVariableId">LS.bch</xsl:with-param>
          <xsl:with-param name="UAVariableName">ACLineSegment.bch</xsl:with-param>
          <xsl:with-param name="UAVariableValue"><xsl:value-of select="fn:string(cim:ACLineSegment.bch)"/></xsl:with-param>
        </xsl:call-template>
 		    <xsl:call-template name="CreateVariable">
          <xsl:with-param name="UAVariableId">LS.b0ch</xsl:with-param>
          <xsl:with-param name="UAVariableName">ACLineSegment.b0ch</xsl:with-param>
          <xsl:with-param name="UAVariableValue"><xsl:value-of select="fn:string(cim:ACLineSegment.b0ch)"/></xsl:with-param>
        </xsl:call-template>
 		    <xsl:call-template name="CreateVariable">
          <xsl:with-param name="UAVariableId">LS.r</xsl:with-param>
          <xsl:with-param name="UAVariableName">ACLineSegment.r</xsl:with-param>
          <xsl:with-param name="UAVariableValue"><xsl:value-of select="fn:string(cim:ACLineSegment.r)"/></xsl:with-param>
        </xsl:call-template>
 		    <xsl:call-template name="CreateVariable">
          <xsl:with-param name="UAVariableId">LS.r0</xsl:with-param>
          <xsl:with-param name="UAVariableName">ACLineSegment.r0</xsl:with-param>
          <xsl:with-param name="UAVariableValue"><xsl:value-of select="fn:string(cim:ACLineSegment.r0)"/></xsl:with-param>
        </xsl:call-template>
 		    <xsl:call-template name="CreateVariable">
          <xsl:with-param name="UAVariableId">LS.x</xsl:with-param>
          <xsl:with-param name="UAVariableName">ACLineSegment.x</xsl:with-param>
          <xsl:with-param name="UAVariableValue"><xsl:value-of select="fn:string(cim:ACLineSegment.x)"/></xsl:with-param>
        </xsl:call-template>
 		    <xsl:call-template name="CreateVariable">
          <xsl:with-param name="UAVariableId">LS.x0</xsl:with-param>
          <xsl:with-param name="UAVariableName">ACLineSegment.x0</xsl:with-param>
          <xsl:with-param name="UAVariableValue"><xsl:value-of select="fn:string(cim:ACLineSegment.x0)"/></xsl:with-param>
        </xsl:call-template>
 		    <xsl:call-template name="CreateVariable">
          <xsl:with-param name="UAVariableId">Co.length</xsl:with-param>
          <xsl:with-param name="UAVariableName">Conductor.length</xsl:with-param>
          <xsl:with-param name="UAVariableValue"><xsl:value-of select="fn:string(cim:Conductor.length)"/>
          </xsl:with-param></xsl:call-template>
      </xsl:for-each>

      <!-- Parse Busbar Section Objects-->
      <xsl:for-each select="rdf:RDF/cim:BusbarSection">
        <UAObject>
          <xsl:attribute name="NodeId" namespace="" select="fn:concat('ns=3;s=', fn:string(@rdf:ID))"/>
          <xsl:attribute name="BrowseName" namespace="" select="fn:concat('3:',fn:string(cim:IdentifiedObject.name))"/>
          <DisplayName>
            <xsl:sequence select="fn:string(cim:IdentifiedObject.name)"/>
          </DisplayName>
          <Description>
            <xsl:sequence select="fn:concat(fn:string(cim:IdentifiedObject.name), ' Busbar Section')"/>
          </Description>
          <References>
            <Reference ReferenceType="Organizes" IsForward="false">ns=1;s=BBSs</Reference>
            <Reference ReferenceType="HasTypeDefinition" IsForward="true">ns=1;s=BBS</Reference>
            <Reference>
              <xsl:attribute name="ReferenceType">ns=1;s=Eq.EqC</xsl:attribute>
              <xsl:attribute name="IsForward">true</xsl:attribute>
              <xsl:sequence select="fn:concat('ns=3;s=', fn:substring(cim:Equipment.EquipmentContainer/@rdf:resource,2,33))"/>
            </Reference>
            <Reference>
              <xsl:attribute name="ReferenceType">ns=1;s=CEq.BV</xsl:attribute>
              <xsl:attribute name="IsForward">true</xsl:attribute>
              <xsl:sequence select="fn:concat('ns=3;s=', fn:substring(cim:ConductingEquipment.BaseVoltage/@rdf:resource,2,33))"/>
            </Reference>
          </References>
        </UAObject>
		    <xsl:call-template name="CreateVariable">
          <xsl:with-param name="UAVariableId">IDO.aliasName</xsl:with-param>
          <xsl:with-param name="UAVariableName">IdentifiedObject.aliasName</xsl:with-param>
          <xsl:with-param name="UAVariableValue"><xsl:value-of select="fn:string(cim:IdentifiedObject.aliasName)"/></xsl:with-param>
        </xsl:call-template>
       </xsl:for-each>

      <!-- Parse Conform Load Objects-->
      <xsl:for-each select="rdf:RDF/cim:ConformLoad">
        <UAObject>
          <xsl:attribute name="NodeId" namespace="" select="fn:concat('ns=3;s=', fn:string(@rdf:ID))"/>
          <xsl:attribute name="BrowseName" namespace="" select="fn:concat('3:',fn:string(cim:IdentifiedObject.name))"/>
          <DisplayName>
            <xsl:sequence select="fn:string(cim:IdentifiedObject.name)"/>
          </DisplayName>
          <Description>
            <xsl:sequence select="fn:concat(fn:string(cim:IdentifiedObject.name), ' Conform Load')"/>
          </Description>
          <References>
            <Reference ReferenceType="Organizes" IsForward="false">ns=1;s=CLos</Reference>
            <Reference ReferenceType="HasTypeDefinition" IsForward="true">ns=1;s=CLo</Reference>
            <Reference>
              <xsl:attribute name="ReferenceType">ns=1;s=CLo.LoG</xsl:attribute>
              <xsl:attribute name="IsForward">true</xsl:attribute>
              <xsl:sequence select="fn:concat('ns=3;s=', fn:substring(cim:ConformLoad.LoadGroup/@rdf:resource,2,33))"/>
            </Reference>
            <Reference>
              <xsl:attribute name="ReferenceType">ns=1;s=Eq.EqC</xsl:attribute>
              <xsl:attribute name="IsForward">true</xsl:attribute>
              <xsl:sequence select="fn:concat('ns=3;s=', fn:substring(cim:Equipment.EquipmentContainer/@rdf:resource,2,33))"/>
            </Reference>
            <Reference>
              <xsl:attribute name="ReferenceType">ns=1;s=CEq.BV</xsl:attribute>
              <xsl:attribute name="IsForward">true</xsl:attribute>
              <xsl:sequence select="fn:concat('ns=3;s=', fn:substring(cim:ConductingEquipment.BaseVoltage/@rdf:resource,2,33))"/>
            </Reference>
          </References>
        </UAObject>
        <xsl:call-template name="CreateVariable">
          <xsl:with-param name="UAVariableId">IDO.aliasName</xsl:with-param>
          <xsl:with-param name="UAVariableName">IdentifiedObject.aliasName</xsl:with-param>
          <xsl:with-param name="UAVariableValue"><xsl:value-of select="fn:string(cim:IdentifiedObject.aliasName)"/></xsl:with-param>
        </xsl:call-template>
        <xsl:call-template name="CreateVariable">
          <xsl:with-param name="UAVariableId">EnC.pfixed</xsl:with-param>
          <xsl:with-param name="UAVariableName">EnergyConsumer.pfixed</xsl:with-param>
          <xsl:with-param name="UAVariableValue"><xsl:value-of select="fn:string(cim:EnergyConsumer.pfixed)"/></xsl:with-param>
        </xsl:call-template>
        <xsl:call-template name="CreateVariable">
          <xsl:with-param name="UAVariableId">EnC.pfixedPct</xsl:with-param>
          <xsl:with-param name="UAVariableName">EnergyConsumer.pfixedPct</xsl:with-param>
          <xsl:with-param name="UAVariableValue">
            <xsl:value-of select="fn:string(cim:EnergyConsumer.pfixedPct)"/>
          </xsl:with-param>
        </xsl:call-template>
        <xsl:call-template name="CreateVariable">
          <xsl:with-param name="UAVariableId">EnC.qfixed</xsl:with-param>
          <xsl:with-param name="UAVariableName">EnergyConsumer.qfixed</xsl:with-param>
          <xsl:with-param name="UAVariableValue">
            <xsl:value-of select="fn:string(cim:EnergyConsumer.qfixed)"/>
          </xsl:with-param>
        </xsl:call-template>
        <xsl:call-template name="CreateVariable">
          <xsl:with-param name="UAVariableId">EnC.qfixedPct</xsl:with-param>
          <xsl:with-param name="UAVariableName">EnergyConsumer.qfixedPct</xsl:with-param>
          <xsl:with-param name="UAVariableValue">
            <xsl:value-of select="fn:string(cim:EnergyConsumer.qfixedPct)"/>
          </xsl:with-param>
        </xsl:call-template>
      </xsl:for-each>

      <!-- Parse Conform Load Group Objects-->
      <xsl:for-each select="rdf:RDF/cim:ConformLoadGroup">
        <UAObject>
          <xsl:attribute name="NodeId" namespace="" select="fn:concat('ns=3;s=', fn:string(@rdf:ID))"/>
          <xsl:attribute name="BrowseName" namespace="" select="fn:concat('3:',fn:string(cim:IdentifiedObject.name))"/>
          <DisplayName>
            <xsl:sequence select="fn:string(cim:IdentifiedObject.name)"/>
          </DisplayName>
          <Description>
            <xsl:sequence select="fn:concat(fn:string(cim:IdentifiedObject.name), ' Conform Load Groups')"/>
          </Description>
          <References>
            <Reference ReferenceType="Organizes" IsForward="false">ns=1;s=CLoGs</Reference>
            <Reference ReferenceType="HasTypeDefinition" IsForward="true">ns=1;s=CLoG</Reference>
            <Reference>
              <xsl:attribute name="ReferenceType">ns=1;s=LoG.SLoA</xsl:attribute>
              <xsl:attribute name="IsForward">true</xsl:attribute>
              <xsl:sequence select="fn:concat('ns=3;s=', fn:substring(cim:LoadGroup.SubLoadArea/@rdf:resource,2,33))"/>
            </Reference>
          </References>
        </UAObject>
        <xsl:call-template name="CreateVariable">
          <xsl:with-param name="UAVariableId">IDO.aliasName</xsl:with-param>
          <xsl:with-param name="UAVariableName">IdentifiedObject.aliasName</xsl:with-param>
          <xsl:with-param name="UAVariableValue">
            <xsl:value-of select="fn:string(cim:IdentifiedObject.aliasName)"/>
          </xsl:with-param>
        </xsl:call-template>
      </xsl:for-each>


      <!-- Parse Non Conforming Load Objects-->
      <xsl:for-each select="rdf:RDF/cim:NonConformLoad">
        <UAObject>
          <xsl:attribute name="NodeId" namespace="" select="fn:concat('ns=3;s=', fn:string(@rdf:ID))"/>
          <xsl:attribute name="BrowseName" namespace="" select="fn:concat('3:',fn:string(cim:IdentifiedObject.name))"/>
          <DisplayName>
            <xsl:sequence select="fn:string(cim:IdentifiedObject.name)"/>
          </DisplayName>
          <Description>
            <xsl:sequence select="fn:concat(fn:string(cim:IdentifiedObject.name), ' Non Conform Load')"/>
          </Description>
          <References>
            <Reference ReferenceType="Organizes" IsForward="false">ns=1;s=NCLos</Reference>
            <Reference ReferenceType="HasTypeDefinition" IsForward="true">ns=1;s=NCLo</Reference>
            <Reference>
              <xsl:attribute name="ReferenceType">ns=1;s=NCLo.LoG</xsl:attribute>
              <xsl:attribute name="IsForward">true</xsl:attribute>
              <xsl:sequence select="fn:concat('ns=3;s=', fn:substring(cim:NonConformLoad.LoadGroup/@rdf:resource,2,33))"/>
            </Reference>
            <Reference>
              <xsl:attribute name="ReferenceType">ns=1;s=Eq.EqC</xsl:attribute>
              <xsl:attribute name="IsForward">true</xsl:attribute>
              <xsl:sequence select="fn:concat('ns=3;s=', fn:substring(cim:Equipment.EquipmentContainer/@rdf:resource,2,33))"/>
            </Reference>
            <Reference>
              <xsl:attribute name="ReferenceType">ns=1;s=CEq.BV</xsl:attribute>
              <xsl:attribute name="IsForward">true</xsl:attribute>
              <xsl:sequence select="fn:concat('ns=3;s=', fn:substring(cim:ConductingEquipment.BaseVoltage/@rdf:resource,2,33))"/>
            </Reference>
          </References>
        </UAObject>
        <xsl:call-template name="CreateVariable">
          <xsl:with-param name="UAVariableId">IDO.aliasName</xsl:with-param>
          <xsl:with-param name="UAVariableName">IdentifiedObject.aliasName</xsl:with-param>
          <xsl:with-param name="UAVariableValue">
            <xsl:value-of select="fn:string(cim:IdentifiedObject.aliasName)"/>
          </xsl:with-param>
        </xsl:call-template>
        <xsl:call-template name="CreateVariable">
          <xsl:with-param name="UAVariableId">EnC.pfixed</xsl:with-param>
          <xsl:with-param name="UAVariableName">EnergyConsumer.pfixed</xsl:with-param>
          <xsl:with-param name="UAVariableValue">
            <xsl:value-of select="fn:string(cim:EnergyConsumer.pfixed)"/>
          </xsl:with-param>
        </xsl:call-template>
        <xsl:call-template name="CreateVariable">
          <xsl:with-param name="UAVariableId">EnC.pfixedPct</xsl:with-param>
          <xsl:with-param name="UAVariableName">EnergyConsumer.pfixedPct</xsl:with-param>
          <xsl:with-param name="UAVariableValue">
            <xsl:value-of select="fn:string(cim:EnergyConsumer.pfixedPct)"/>
          </xsl:with-param>
        </xsl:call-template>
        <xsl:call-template name="CreateVariable">
          <xsl:with-param name="UAVariableId">EnC.qfixed</xsl:with-param>
          <xsl:with-param name="UAVariableName">EnergyConsumer.qfixed</xsl:with-param>
          <xsl:with-param name="UAVariableValue">
            <xsl:value-of select="fn:string(cim:EnergyConsumer.qfixed)"/>
          </xsl:with-param>
        </xsl:call-template>
        <xsl:call-template name="CreateVariable">
          <xsl:with-param name="UAVariableId">EnC.qfixedPct</xsl:with-param>
          <xsl:with-param name="UAVariableName">EnergyConsumer.qfixedPct</xsl:with-param>
          <xsl:with-param name="UAVariableValue">
            <xsl:value-of select="fn:string(cim:EnergyConsumer.qfixedPct)"/>
          </xsl:with-param>
        </xsl:call-template>
      </xsl:for-each>


      <!-- Parse Disconnector Objects-->
        <xsl:for-each select="rdf:RDF/cim:Disconnector">
          <UAObject>
            <xsl:attribute name="NodeId" namespace="" select="fn:concat('ns=3;s=', fn:string(@rdf:ID))"/>
            <xsl:attribute name="BrowseName" namespace="" select="fn:concat('3:',fn:string(cim:IdentifiedObject.name))"/>
            <DisplayName>
              <xsl:sequence select="fn:string(cim:IdentifiedObject.name)"/>
            </DisplayName>
            <Description>
              <xsl:sequence select="fn:concat(fn:string(cim:IdentifiedObject.name), ' Disconnector')"/>
            </Description>
            <References>
              <Reference ReferenceType="Organizes" IsForward="false">ns=1;s=Diss</Reference>
              <Reference ReferenceType="HasTypeDefinition" IsForward="true">ns=1;s=Dis</Reference>
              <Reference>
                <xsl:attribute name="ReferenceType">ns=1;s=Eq.EqC</xsl:attribute>
                <xsl:attribute name="IsForward">true</xsl:attribute>
                <xsl:sequence select="fn:concat('ns=3;s=', fn:substring(cim:Equipment.EquipmentContainer/@rdf:resource,2,33))"/>
              </Reference>
              <Reference>
                <xsl:attribute name="ReferenceType">ns=1;s=CEq.BV</xsl:attribute>
                <xsl:attribute name="IsForward">true</xsl:attribute>
                <xsl:sequence select="fn:concat('ns=3;s=', fn:substring(cim:ConductingEquipment.BaseVoltage/@rdf:resource,2,33))"/>
              </Reference>
            </References>
          </UAObject>
          <xsl:call-template name="CreateVariable">
            <xsl:with-param name="UAVariableId">IDO.aliasName</xsl:with-param>
            <xsl:with-param name="UAVariableName">IdentifiedObject.aliasName</xsl:with-param>
            <xsl:with-param name="UAVariableValue">
              <xsl:value-of select="fn:string(cim:IdentifiedObject.aliasName)"/>
            </xsl:with-param>
          </xsl:call-template>
          <xsl:call-template name="CreateVariable">
            <xsl:with-param name="UAVariableId">Sw.ratedCurrent</xsl:with-param>
            <xsl:with-param name="UAVariableName">Switch.ratedCurrent</xsl:with-param>
            <xsl:with-param name="UAVariableValue">
              <xsl:value-of select="fn:string(cim:Switch.ratedCurrent)"/>
            </xsl:with-param>
          </xsl:call-template>
          <xsl:call-template name="CreateVariable">
            <xsl:with-param name="UAVariableId">Sw.normalOpen</xsl:with-param>
            <xsl:with-param name="UAVariableName">Switch.normalOpen</xsl:with-param>
            <xsl:with-param name="UAVariableValue">
              <xsl:value-of select="fn:string(cim:Switch.normalOpen)"/>
            </xsl:with-param>
          </xsl:call-template>
        </xsl:for-each>


        <!-- Parse Breaker Objects-->			
			<xsl:for-each select="rdf:RDF/cim:Breaker">
				<UAObject>
					<xsl:attribute name="NodeId" namespace="" select="fn:concat('ns=3;s=', fn:string(@rdf:ID))"/>
					<xsl:attribute name="BrowseName" namespace="" select="fn:concat('3:',fn:string(cim:IdentifiedObject.name))"/>
					<DisplayName>
						<xsl:sequence select="fn:string(cim:IdentifiedObject.name)"/>
					</DisplayName>
					<Description>
            <xsl:sequence select="fn:concat(fn:string(cim:IdentifiedObject.name), ' Breaker')"/>
					</Description>
					<References>
						<Reference ReferenceType="Organizes" IsForward="false">ns=1;s=Brs</Reference>
						<Reference ReferenceType="HasTypeDefinition" IsForward="true">ns=1;s=Br</Reference>
						<Reference>
							<xsl:attribute name="ReferenceType">ns=1;s=Eq.EqC</xsl:attribute>
							<xsl:attribute name="IsForward">true</xsl:attribute>
							<xsl:sequence select="fn:concat('ns=3;s=', fn:substring(cim:Equipment.EquipmentContainer/@rdf:resource,2,33))"/>
						</Reference>
						<Reference>
							<xsl:attribute name="ReferenceType">ns=1;s=CEq.BV</xsl:attribute>
							<xsl:attribute name="IsForward">true</xsl:attribute>
							<xsl:sequence select="fn:concat('ns=3;s=', fn:substring(cim:ConductingEquipment.BaseVoltage/@rdf:resource,2,33))"/>
						</Reference>
					</References>				
				</UAObject>
				<xsl:call-template name="CreateVariable">
          <xsl:with-param name="UAVariableId">IDO.aliasName</xsl:with-param>
          <xsl:with-param name="UAVariableName">IdentifiedObject.aliasName</xsl:with-param>
          <xsl:with-param name="UAVariableValue"><xsl:value-of select="fn:string(cim:IdentifiedObject.aliasName)"/></xsl:with-param>
        </xsl:call-template>
				<xsl:call-template name="CreateVariable">
          <xsl:with-param name="UAVariableId">Sw.ratedCurrent</xsl:with-param>
          <xsl:with-param name="UAVariableName">Switch.ratedCurrent</xsl:with-param>
          <xsl:with-param name="UAVariableValue"><xsl:value-of select="fn:string(cim:Switch.ratedCurrent)"/></xsl:with-param>
        </xsl:call-template>
				<xsl:call-template name="CreateVariable">
          <xsl:with-param name="UAVariableId">Sw.normalOpen</xsl:with-param>
          <xsl:with-param name="UAVariableName">Switch.normalOpen</xsl:with-param>
          <xsl:with-param name="UAVariableValue"><xsl:value-of select="fn:string(cim:Switch.normalOpen)"/></xsl:with-param>
        </xsl:call-template>
		</xsl:for-each>

      <!-- Parse Connectivity Node Objects-->
      <xsl:for-each select="rdf:RDF/cim:ConnectivityNode">
        <UAObject>
          <xsl:attribute name="NodeId" namespace="" select="fn:concat('ns=3;s=', fn:string(@rdf:ID))"/>
          <xsl:attribute name="BrowseName" namespace="" select="fn:concat('3:',fn:string(cim:IdentifiedObject.name))"/>
          <DisplayName>
            <xsl:sequence select="fn:string(cim:IdentifiedObject.name)"/>
          </DisplayName>
          <Description>
            <xsl:sequence select="fn:concat(fn:string(cim:IdentifiedObject.name), ' Connectivity Node')"/>
          </Description>
          <References>
            <Reference ReferenceType="Organizes" IsForward="false">ns=1;s=CNs</Reference>
            <Reference ReferenceType="HasTypeDefinition" IsForward="true">ns=1;s=CN</Reference>
            <Reference>
              <xsl:attribute name="ReferenceType">ns=1;s=CN.CNC</xsl:attribute>
              <xsl:attribute name="IsForward">true</xsl:attribute>
              <xsl:sequence select="fn:concat('ns=3;s=', fn:substring(cim:ConnectivityNode.ConnectivityNodeContainer/@rdf:resource,2,33))"/>
            </Reference>
          </References>
        </UAObject>        
      </xsl:for-each>

      <!-- Parse Terminal Objects-->
      <xsl:for-each select="rdf:RDF/cim:Terminal">
        <UAObject>
          <xsl:attribute name="NodeId" namespace="" select="fn:concat('ns=3;s=', fn:string(@rdf:ID))"/>
          <xsl:attribute name="BrowseName" namespace="" select="fn:concat('3:',fn:string(cim:IdentifiedObject.name))"/>
          <DisplayName>
            <xsl:sequence select="fn:string(cim:IdentifiedObject.name)"/>
          </DisplayName>
          <Description>
            <xsl:sequence select="fn:concat(fn:string(cim:IdentifiedObject.name), ' Terminal')"/>
          </Description>
          <References>
            <Reference ReferenceType="Organizes" IsForward="false">ns=1;s=Ts</Reference>
            <Reference ReferenceType="HasTypeDefinition" IsForward="true">ns=1;s=T</Reference>
            <Reference>
              <xsl:attribute name="ReferenceType">ns=1;s=T.CEq</xsl:attribute>
              <xsl:attribute name="IsForward">true</xsl:attribute>
              <xsl:sequence select="fn:concat('ns=3;s=', fn:substring(cim:Terminal.ConductingEquipment/@rdf:resource,2,33))"/>
            </Reference>
            <xsl:if test="fn:substring(cim:Terminal.ConnectivityNode/@rdf:resource,1,1)= &apos;#&apos;">
              <Reference>
                <xsl:attribute name="ReferenceType">ns=1;s=T.CN</xsl:attribute>
                <xsl:attribute name="IsForward">true</xsl:attribute>
                <xsl:sequence select="fn:concat('ns=3;s=', fn:substring(cim:Terminal.ConnectivityNode/@rdf:resource,2,33))"/>
              </Reference>
            </xsl:if>
          </References>
        </UAObject>
		  <xsl:call-template name="CreateVariable">
        <xsl:with-param name="UAVariableId">T.sN</xsl:with-param>
        <xsl:with-param name="UAVariableName">Terminal.sequenceNumber</xsl:with-param>
        <xsl:with-param name="UAVariableValue"><xsl:value-of select="fn:string(cim:Terminal.sequenceNumber)"/></xsl:with-param>
      </xsl:call-template>
		</xsl:for-each>
      
      <!-- Parse Operational Limit Type Objects-->
      <xsl:for-each select="rdf:RDF/cim:OperationalLimitType">
        <UAObject>
          <xsl:attribute name="NodeId" namespace="" select="fn:concat('ns=3;s=', fn:string(@rdf:ID))"/>
          <xsl:attribute name="BrowseName" namespace="" select="fn:concat('3:',fn:string(cim:IdentifiedObject.name))"/>
          <DisplayName>
            <xsl:sequence select="fn:string(cim:IdentifiedObject.name)"/>
          </DisplayName>
          <Description>
            <xsl:sequence select="fn:concat(fn:string(cim:IdentifiedObject.name), ' Operational Limit Type')"/>
          </Description>
          <References>
            <Reference ReferenceType="Organizes" IsForward="false">ns=1;s=OLTs</Reference>
            <Reference ReferenceType="HasTypeDefinition" IsForward="true">ns=1;s=OLT</Reference>
          </References>
        </UAObject>
		    <xsl:call-template name="CreateVariable">
          <xsl:with-param name="UAVariableId">OLT.d</xsl:with-param>
          <xsl:with-param name="UAVariableName">OperationalLimitType.direction</xsl:with-param>
          <xsl:with-param name="UAVariableValue"><xsl:value-of select="fn:string(cim:OperationalLimitType.direction/@rdf:resource)"/></xsl:with-param>
        </xsl:call-template>
		    <xsl:call-template name="CreateVariable">
          <xsl:with-param name="UAVariableId">OLT.aD</xsl:with-param>
          <xsl:with-param name="UAVariableName">OperationalLimitType.acceptableDuration</xsl:with-param>
          <xsl:with-param name="UAVariableValue"><xsl:value-of select="fn:string(cim:OperationalLimitType.acceptableDuration)"/></xsl:with-param>
        </xsl:call-template>
      </xsl:for-each>

        <!-- Parse Current Limit Objects-->
        <xsl:for-each select="rdf:RDF/cim:CurrentLimit">
          <UAObject>
            <xsl:attribute name="NodeId" namespace="" select="fn:concat('ns=3;s=', fn:string(@rdf:ID))"/>
            <xsl:attribute name="BrowseName" namespace="" select="fn:concat('3:',fn:string(@rdf:ID))"/>
            <DisplayName>
              <xsl:sequence select="fn:string(cim:CurrentLimit.value)"/>
            </DisplayName>
            <Description>
              <xsl:sequence select="fn:concat(fn:string(cim:CurrentLimit.value), ' Current Limit')"/>
            </Description>
            <References>
              <Reference ReferenceType="Organizes" IsForward="false">ns=1;s=CLs</Reference>
              <Reference ReferenceType="HasTypeDefinition" IsForward="true">ns=1;s=CL</Reference>
              <Reference>
                <xsl:attribute name="ReferenceType">ns=1;s=OL.OLT</xsl:attribute>
                <xsl:attribute name="IsForward">true</xsl:attribute>
                <xsl:sequence select="fn:concat('ns=3;s=', fn:substring(cim:OperationalLimit.OperationalLimitType/@rdf:resource,2,33))"/>
              </Reference>
              <Reference>
                <xsl:attribute name="ReferenceType">ns=1;s=OL.OLS</xsl:attribute>
                <xsl:attribute name="IsForward">true</xsl:attribute>
                <xsl:sequence select="fn:concat('ns=3;s=', fn:substring(cim:OperationalLimit.OperationalLimitSet/@rdf:resource,2,33))"/>
              </Reference>
            </References>
          </UAObject>
          <xsl:call-template name="CreateVariable">
            <xsl:with-param name="UAVariableId">CL.v</xsl:with-param>
            <xsl:with-param name="UAVariableName">CurrentLimit.value</xsl:with-param>
            <xsl:with-param name="UAVariableValue">
              <xsl:value-of select="fn:string(cim:CurrentLimit.value)"/>
            </xsl:with-param>
          </xsl:call-template>
        </xsl:for-each>

        <!-- Parse Active (Real) Power Limit Objects-->
      <xsl:for-each select="rdf:RDF/cim:ActivePowerLimit">
        <UAObject>
          <xsl:attribute name="NodeId" namespace="" select="fn:concat('ns=3;s=', fn:string(@rdf:ID))"/>
          <xsl:attribute name="BrowseName" namespace="" select="fn:concat('3:',fn:string(@rdf:ID))"/>
          <DisplayName>
            <xsl:sequence select="fn:string(cim:ActivePowerLimit.value)"/>
          </DisplayName>
          <Description>
            <xsl:sequence select="fn:concat(fn:string(cim:ActivePowerLimit.value), ' Active (Real) Power Limit')"/>
          </Description>
          <References>
            <Reference ReferenceType="Organizes" IsForward="false">ns=1;s=RPLs</Reference>
            <Reference ReferenceType="HasTypeDefinition" IsForward="true">ns=1;s=RPL</Reference>
            <Reference>
              <xsl:attribute name="ReferenceType">ns=1;s=OL.OLT</xsl:attribute>
              <xsl:attribute name="IsForward">true</xsl:attribute>
              <xsl:sequence select="fn:concat('ns=3;s=', fn:substring(cim:OperationalLimit.OperationalLimitType/@rdf:resource,2,33))"/>
            </Reference>
            <Reference>
              <xsl:attribute name="ReferenceType">ns=1;s=OL.OLS</xsl:attribute>
              <xsl:attribute name="IsForward">true</xsl:attribute>
              <xsl:sequence select="fn:concat('ns=3;s=', fn:substring(cim:OperationalLimit.OperationalLimitSet/@rdf:resource,2,33))"/>
            </Reference>
          </References>
        </UAObject>
		    <xsl:call-template name="CreateVariable">
          <xsl:with-param name="UAVariableId">RPL.v</xsl:with-param>
          <xsl:with-param name="UAVariableName">ActivePowerLimit.value</xsl:with-param>
          <xsl:with-param name="UAVariableValue"><xsl:value-of select="fn:string(cim:ActivePowerLimit.value)"/></xsl:with-param>
        </xsl:call-template>
      </xsl:for-each>

      <!-- Parse Apparent Power Limit Objects-->
      <xsl:for-each select="rdf:RDF/cim:ApparentPowerLimit">
        <UAObject>
          <xsl:attribute name="NodeId" namespace="" select="fn:concat('ns=3;s=', fn:string(@rdf:ID))"/>
          <xsl:attribute name="BrowseName" namespace="" select="fn:concat('3:',fn:string(@rdf:ID))"/>
          <DisplayName>
            <xsl:sequence select="fn:string(cim:ApparentPowerLimit.value)"/>
          </DisplayName>
          <Description>
            <xsl:sequence select="fn:concat(fn:string(cim:ApparentPowerLimit.value), ' Apparent Power Limit')"/>
          </Description>
          <References>
            <Reference ReferenceType="Organizes" IsForward="false">ns=1;s=APLs</Reference>
            <Reference ReferenceType="HasTypeDefinition" IsForward="true">ns=1;s=APL</Reference>
            <Reference>
              <xsl:attribute name="ReferenceType">ns=1;s=OL.OLT</xsl:attribute>
              <xsl:attribute name="IsForward">true</xsl:attribute>
              <xsl:sequence select="fn:concat('ns=3;s=', fn:substring(cim:OperationalLimit.OperationalLimitType/@rdf:resource,2,33))"/>
            </Reference>
            <Reference>
              <xsl:attribute name="ReferenceType">ns=1;s=OL.OLS</xsl:attribute>
              <xsl:attribute name="IsForward">true</xsl:attribute>
              <xsl:sequence select="fn:concat('ns=3;s=', fn:substring(cim:OperationalLimit.OperationalLimitSet/@rdf:resource,2,33))"/>
            </Reference>
          </References>
        </UAObject>
		    <xsl:call-template name="CreateVariable">
          <xsl:with-param name="UAVariableId">APL.v</xsl:with-param>
          <xsl:with-param name="UAVariableName">ApparentPowerLimit.value</xsl:with-param>
          <xsl:with-param name="UAVariableValue"><xsl:value-of select="fn:string(cim:ApparentPowerLimit.value)"/></xsl:with-param>
        </xsl:call-template>
      </xsl:for-each>

      <!-- Parse Discrete Type Objects-->
      <xsl:for-each select="rdf:RDF/cim:Discrete">
        <UAObject>
          <xsl:attribute name="NodeId" namespace="" select="fn:concat('ns=3;s=', fn:string(@rdf:ID))"/>
          <xsl:attribute name="BrowseName" namespace="" select="fn:concat('3:',fn:string(cim:IdentifiedObject.name))"/>
          <DisplayName>
            <xsl:sequence select="fn:string(cim:IdentifiedObject.name)"/>
          </DisplayName>
          <Description>
            <xsl:sequence select="fn:concat(fn:string(cim:IdentifiedObject.name), ' Discrete')"/>
          </Description>
          <References>
            <Reference ReferenceType="Organizes" IsForward="false">ns=1;s=Ds</Reference>
            <Reference ReferenceType="HasTypeDefinition" IsForward="true">ns=1;s=D</Reference>
            <Reference>
              <xsl:attribute name="ReferenceType">ns=1;s=M.PSR</xsl:attribute>
              <xsl:attribute name="IsForward">true</xsl:attribute>
              <xsl:sequence select="fn:concat('ns=3;s=', fn:substring(cim:Measurement.PowerSystemResource/@rdf:resource,2,33))"/>
            </Reference>
          </References>
        </UAObject>
        <xsl:call-template name="CreateVariable">
          <xsl:with-param name="UAVariableId">IDO.aliasName</xsl:with-param>
          <xsl:with-param name="UAVariableName">IdentifiedObject.aliasName</xsl:with-param>
          <xsl:with-param name="UAVariableValue">
            <xsl:value-of select="fn:string(cim:IdentifiedObject.aliasName)"/>
          </xsl:with-param>
        </xsl:call-template>
        <xsl:call-template name="CreateVariable">
          <xsl:with-param name="UAVariableId">M.mT</xsl:with-param>
          <xsl:with-param name="UAVariableName">Measurement.measurementType</xsl:with-param>
          <xsl:with-param name="UAVariableValue">
            <xsl:value-of select="fn:string(cim:Measurement.measurementType)"/>
          </xsl:with-param>
        </xsl:call-template>
        <xsl:call-template name="CreateVariable">
          <xsl:with-param name="UAVariableId">D.nV</xsl:with-param>
          <xsl:with-param name="UAVariableName">Discrete.normalValue</xsl:with-param>
          <xsl:with-param name="UAVariableValue">
            <xsl:value-of select="fn:string(cim:Discrete.normalValue)"/>
          </xsl:with-param>
        </xsl:call-template>
        <xsl:call-template name="CreateVariable">
          <xsl:with-param name="UAVariableId">M.uS</xsl:with-param>
          <xsl:with-param name="UAVariableName">Measurement.unitSymbol</xsl:with-param>
          <xsl:with-param name="UAVariableValue">
            <xsl:value-of select="fn:string(cim:Measurement.unitSymbol/@rdf:resource)"/>
          </xsl:with-param>
        </xsl:call-template>
        <xsl:call-template name="CreateVariable">
          <xsl:with-param name="UAVariableId">M.uM</xsl:with-param>
          <xsl:with-param name="UAVariableName">Measurement.unitMultiplier</xsl:with-param>
          <xsl:with-param name="UAVariableValue">
            <xsl:value-of select="fn:string(cim:Measurement.unitMultiplier/@rdf:resource)"/>
          </xsl:with-param>
        </xsl:call-template>
      </xsl:for-each>

      <!-- Parse Analog Type Objects-->
      <xsl:for-each select="rdf:RDF/cim:Analog">
        <UAObject>
          <xsl:attribute name="NodeId" namespace="" select="fn:concat('ns=3;s=', fn:string(@rdf:ID))"/>
          <xsl:attribute name="BrowseName" namespace="" select="fn:concat('3:',fn:string(cim:IdentifiedObject.name))"/>
          <DisplayName>
            <xsl:sequence select="fn:string(cim:IdentifiedObject.name)"/>
          </DisplayName>
          <Description>
            <xsl:sequence select="fn:concat(fn:string(cim:IdentifiedObject.name), ' Analog')"/>
          </Description>
          <References>
            <Reference ReferenceType="Organizes" IsForward="false">ns=1;s=As</Reference>
            <Reference ReferenceType="HasTypeDefinition" IsForward="true">ns=1;s=A</Reference>
            <Reference>
              <xsl:attribute name="ReferenceType">ns=1;s=M.PSR</xsl:attribute>
              <xsl:attribute name="IsForward">true</xsl:attribute>
              <xsl:sequence select="fn:concat('ns=3;s=', fn:substring(cim:Measurement.PowerSystemResource/@rdf:resource,2,33))"/>
            </Reference>
            <xsl:if test="fn:substring(cim:Measurement.Terminal/@rdf:resource,1,1)= &apos;#&apos;">
              <Reference>
                <xsl:attribute name="ReferenceType">ns=1;s=M.T</xsl:attribute>
                <xsl:attribute name="IsForward">true</xsl:attribute>
                <xsl:sequence select="fn:concat('ns=3;s=', fn:substring(cim:Measurement.Terminal/@rdf:resource,2,33))"/>
              </Reference>
            </xsl:if>
          </References>
        </UAObject>
        <xsl:call-template name="CreateVariable">
          <xsl:with-param name="UAVariableId">IDO.aliasName</xsl:with-param>
          <xsl:with-param name="UAVariableName">IdentifiedObject.aliasName</xsl:with-param>
          <xsl:with-param name="UAVariableValue"><xsl:value-of select="fn:string(cim:IdentifiedObject.aliasName)"/></xsl:with-param>
        </xsl:call-template>
        <xsl:call-template name="CreateVariable">
          <xsl:with-param name="UAVariableId">M.mT</xsl:with-param>
          <xsl:with-param name="UAVariableName">Measurement.measurementType</xsl:with-param>
          <xsl:with-param name="UAVariableValue"><xsl:value-of select="fn:string(cim:Measurement.measurementType)"/></xsl:with-param>
        </xsl:call-template>
        <xsl:call-template name="CreateVariable">
          <xsl:with-param name="UAVariableId">A.mV</xsl:with-param>
          <xsl:with-param name="UAVariableName">Analog.maxValue</xsl:with-param>
          <xsl:with-param name="UAVariableValue"><xsl:value-of select="fn:string(cim:Analog.maxValue)"/></xsl:with-param>
        </xsl:call-template>
        <xsl:call-template name="CreateVariable">
          <xsl:with-param name="UAVariableId">A.minV</xsl:with-param>
          <xsl:with-param name="UAVariableName">Analog.minValue</xsl:with-param>
          <xsl:with-param name="UAVariableValue"><xsl:value-of select="fn:string(cim:Analog.minValue)"/>
          </xsl:with-param>
        </xsl:call-template>
        <xsl:call-template name="CreateVariable">
          <xsl:with-param name="UAVariableId">A.nV</xsl:with-param>
          <xsl:with-param name="UAVariableName">Analog.normalValue</xsl:with-param>
          <xsl:with-param name="UAVariableValue"><xsl:value-of select="fn:string(cim:Analog.normalValue)"/></xsl:with-param>
        </xsl:call-template>
        <xsl:call-template name="CreateVariable">
          <xsl:with-param name="UAVariableId">A.pFI</xsl:with-param>
          <xsl:with-param name="UAVariableName">Analog.positiveFlowIn</xsl:with-param>
          <xsl:with-param name="UAVariableValue"><xsl:value-of select="fn:string(cim:Analog.positiveFlowIn)"/></xsl:with-param>
        </xsl:call-template>
        <xsl:call-template name="CreateVariable">
          <xsl:with-param name="UAVariableId">M.uS</xsl:with-param>
          <xsl:with-param name="UAVariableName">Measurement.unitSymbol</xsl:with-param>
          <xsl:with-param name="UAVariableValue"><xsl:value-of select="fn:string(cim:Measurement.unitSymbol/@rdf:resource)"/></xsl:with-param>
        </xsl:call-template>
        <xsl:call-template name="CreateVariable">
          <xsl:with-param name="UAVariableId">M.uM</xsl:with-param>
          <xsl:with-param name="UAVariableName">Measurement.unitMultiplier</xsl:with-param>
          <xsl:with-param name="UAVariableValue"><xsl:value-of select="fn:string(cim:Measurement.unitMultiplier/@rdf:resource)"/></xsl:with-param>
        </xsl:call-template>
      </xsl:for-each>

      <!-- Parse Discrete Value Objects-->
      <xsl:for-each select="rdf:RDF/cim:DiscreteValue">
        <UAObject>
          <xsl:attribute name="NodeId" namespace="" select="fn:concat('ns=3;s=', fn:string(@rdf:ID))"/>
          <xsl:attribute name="BrowseName" namespace="" select="fn:concat('3:',fn:string(cim:IdentifiedObject.name))"/>
          <DisplayName>
            <xsl:sequence select="fn:string(cim:IdentifiedObject.name)"/>
          </DisplayName>
          <Description>
            <xsl:sequence select="fn:concat(fn:string(cim:IdentifiedObject.name), ' Discrete Value')"/>
          </Description>
          <References>
            <Reference ReferenceType="Organizes" IsForward="false">ns=1;s=DVs</Reference>
            <Reference ReferenceType="HasTypeDefinition" IsForward="true">ns=1;s=DV</Reference>
            <Reference>
              <xsl:attribute name="ReferenceType">ns=1;s=DV.D</xsl:attribute>
              <xsl:attribute name="IsForward">true</xsl:attribute>
              <xsl:sequence select="fn:concat('ns=3;s=', fn:substring(cim:DiscreteValue.Discrete/@rdf:resource,2,33))"/>
            </Reference>
            <Reference>
              <xsl:attribute name="ReferenceType">ns=1;s=MV.MVS</xsl:attribute>
              <xsl:attribute name="IsForward">true</xsl:attribute>
              <xsl:sequence select="fn:concat('ns=3;s=', fn:substring(cim:MeasurementValue.MeasurementValueSource/@rdf:resource,2,33))"/>
            </Reference>
          </References>
        </UAObject>
        <xsl:call-template name="CreateVariable">
          <xsl:with-param name="UAVariableId">IDO.aliasName</xsl:with-param>
          <xsl:with-param name="UAVariableName">IdentifiedObject.aliasName</xsl:with-param>
          <xsl:with-param name="UAVariableValue"><xsl:value-of select="fn:string(cim:IdentifiedObject.aliasName)"/></xsl:with-param>
        </xsl:call-template>
      </xsl:for-each>

      <!-- Parse Analog Value Objects-->
      <xsl:for-each select="rdf:RDF/cim:AnalogValue">
        <UAObject>
          <xsl:attribute name="NodeId" namespace="" select="fn:concat('ns=3;s=', fn:string(@rdf:ID))"/>
          <xsl:attribute name="BrowseName" namespace="" select="fn:concat('3:',fn:string(cim:IdentifiedObject.name))"/>
          <DisplayName>
            <xsl:sequence select="fn:string(cim:IdentifiedObject.name)"/>
          </DisplayName>
          <Description>
            <xsl:sequence select="fn:concat(fn:string(cim:IdentifiedObject.name), ' Analog Value')"/>
          </Description>
          <References>
            <Reference ReferenceType="Organizes" IsForward="false">ns=1;s=AVs</Reference>
            <Reference ReferenceType="HasTypeDefinition" IsForward="true">ns=1;s=AV</Reference>
            <Reference>
              <xsl:attribute name="ReferenceType">ns=1;s=AV.A</xsl:attribute>
              <xsl:attribute name="IsForward">true</xsl:attribute>
              <xsl:sequence select="fn:concat('ns=3;s=', fn:substring(cim:AnalogValue.Analog/@rdf:resource,2,33))"/>
            </Reference>
            <Reference>
              <xsl:attribute name="ReferenceType">ns=1;s=MV.MVS</xsl:attribute>
              <xsl:attribute name="IsForward">true</xsl:attribute>
              <xsl:sequence select="fn:concat('ns=3;s=', fn:substring(cim:MeasurementValue.MeasurementValueSource/@rdf:resource,2,33))"/>
            </Reference>
          </References>
        </UAObject>
        <xsl:call-template name="CreateVariable">
          <xsl:with-param name="UAVariableId">IDO.aliasName</xsl:with-param>
          <xsl:with-param name="UAVariableName">IdentifiedObject.aliasName</xsl:with-param>
          <xsl:with-param name="UAVariableValue"><xsl:value-of select="fn:string(cim:IdentifiedObject.aliasName)"/></xsl:with-param>
        </xsl:call-template>
      </xsl:for-each>
      
      <!-- Parse MeasurementValueSource Objects-->
      <xsl:for-each select="rdf:RDF/cim:MeasurementValueSource">
        <UAObject>
          <xsl:attribute name="NodeId" namespace="" select="fn:concat('ns=3;s=', fn:string(@rdf:ID))"/>
          <xsl:attribute name="BrowseName" namespace="" select="fn:concat('3:',fn:string(cim:IdentifiedObject.name))"/>
          <DisplayName>
            <xsl:sequence select="fn:string(cim:IdentifiedObject.name)"/>
          </DisplayName>
          <Description>
            <xsl:sequence select="fn:concat(fn:string(cim:IdentifiedObject.name), ' Measurement Value Source')"/>
          </Description>
          <References>
            <Reference ReferenceType="Organizes" IsForward="false">ns=1;s=MVSs</Reference>
            <Reference ReferenceType="HasTypeDefinition" IsForward="true">ns=1;s=MVS</Reference>
          </References>
        </UAObject>
      </xsl:for-each>
    </UANodeSet>
	 </xsl:template>
  
	 <xsl:template name="CreateVariable">
    <xsl:param name="UAVariableId"/>
		<xsl:param name="UAVariableName"/>
    <xsl:param name="UAVariableValue"/> 
	  <xsl:element name="UAVariable" xmlns="http://opcfoundation.org/UA/2011/03/UANodeSet.xsd">
      <xsl:attribute name="NodeId" namespace=""  select="fn:concat('ns=3;s=', @rdf:ID, $UAVariableId)"/>
      <xsl:attribute name="BrowseName" namespace="" select="fn:concat('3:', @rdf:ID, $UAVariableId)"/>
      <xsl:attribute name="DataType">i=12</xsl:attribute>
      <xsl:element name="DisplayName">
        <xsl:value-of select="$UAVariableName"/></xsl:element>
      <References>
        <Reference ReferenceType="HasTypeDefinition" IsForward="true">ns=1;s=<xsl:value-of select="$UAVariableId"/></Reference>
        <Reference>
          <xsl:attribute name="ReferenceType">HasProperty</xsl:attribute>
          <xsl:attribute name="IsForward">false</xsl:attribute>
          <xsl:sequence select="fn:concat('ns=3;s=', @rdf:ID)"/>
        </Reference>
      </References>
      <Value>
        <xsl:element name="uax:String">
          <xsl:value-of select="$UAVariableValue"/>
        </xsl:element>
      </Value>
    </xsl:element>
	</xsl:template>		
</xsl:stylesheet>