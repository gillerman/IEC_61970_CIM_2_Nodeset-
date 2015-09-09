<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:cim="http://iec.ch/TC57/2012/CIM-schema-cim16#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:my="http://www.iec.ch/61850/2003/SCL" xmlns:fn="http://www.w3.org/2005/xpath-functions" exclude-result-prefixes="cim rdf xs fn">
	<xsl:output method="xml" encoding="UTF-8" indent="yes"/>
<!--
Title:CID to UANodeset Stylesheet
Copyright ©  OPC Foundation, Inc., 2013. Released 2013-02-18 16:37

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
	<xsl:template match="/">
		<UANodeSet xmlns="http://opcfoundation.org/UA/2011/03/UANodeSet.xsd" xmlns:uax="http://opcfoundation.org/UA/2008/02/Types.xsd" xmlns:s1="http://sample.com/Instances" xmlns:s0="http://sample.com/Types">
			<xsl:attribute name="xsi:schemaLocation" namespace="http://www.w3.org/2001/XMLSchema-instance" select="'http://opcfoundation.org/UA/2011/03/UANodeSet.xsd C:/Users/Administrator/Desktop/John/UANodeSet.xsd'"/>
			
			<NamespaceUris>
				<Uri>http://sample.com/Instances</Uri>
				<Uri>http://sample.com/Types</Uri>
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

<!-- CREATE data types (should match what is produced by CIMbat) -->

<!-- CREATE super types (should match what is produced by CIMbat) -->		
			<UAObjectType>
				<xsl:attribute name="NodeId">ns=1;s=Base CIM Class</xsl:attribute>
				<xsl:attribute name="BrowseName">1:Base CIM Class</xsl:attribute>
				<xsl:element name="DisplayName">IEC 61970 BaseCIM Class</xsl:element>
				<xsl:element name="Description">IEC 61970 Base CIM Class</xsl:element>
				<References>
					<Reference ReferenceType="HasSubtype" IsForward="false">i=58</Reference>
				</References>
			</UAObjectType>
			<UAVariableType>
				<xsl:attribute name="NodeId">ns=1;s=Base CIM Property</xsl:attribute>
				<xsl:attribute name="BrowseName">1:Base CIM Property</xsl:attribute>
				<xsl:element name="DisplayName">IEC 61970 BaseCIM Property</xsl:element>
				<xsl:element name="Description">IEC 61970 Base CIM Property</xsl:element>
				<References>
					<Reference ReferenceType="HasSubtype" IsForward="false">i=68</Reference>
				</References>
			</UAVariableType>     
      <UAVariableType>
        <xsl:attribute name="NodeId">ns=1;s=Base CIM Data Variable</xsl:attribute>
        <xsl:attribute name="BrowseName">1:Base CIM Data Variable</xsl:attribute>
        <xsl:attribute name="DataType">i=12</xsl:attribute>
        <xsl:attribute name="ValueRank">-2</xsl:attribute>
        <xsl:element name="DisplayName">IEC 61970 BaseCIM Data Variable</xsl:element>
        <xsl:element name="Description">IEC 61970 Base CIM Data Variable</xsl:element>
        <References>
          <Reference ReferenceType="HasSubtype" IsForward="false">i=63</Reference>
        </References>
      </UAVariableType>      
      <UAReferenceType>
				<xsl:attribute name="NodeId">ns=1;s=Base CIM Reference</xsl:attribute>
				<xsl:attribute name="BrowseName">1:Base CIM Reference</xsl:attribute>
				<xsl:attribute name="IsAbstract">true</xsl:attribute>
				<xsl:attribute name="Symmetric">false</xsl:attribute>
				<xsl:element name="DisplayName">IEC 61970 Base CIM Reference</xsl:element>
				    <References>
				<Reference ReferenceType="HasSubtype" IsForward="false">i=32</Reference>
			</References>
				<xsl:element name="InverseName">IEC 61970 ReferencedBy</xsl:element>
			</UAReferenceType>

<!-- CREATE Object and Variable Types (should match what is produced by CIMbat) -->
			<!-- IdentifiedObject Object Type-->
			<UAObjectType>
				<xsl:attribute name="NodeId">ns=1;s=IDO</xsl:attribute>
				<xsl:attribute name="BrowseName">1:IDO</xsl:attribute>
				<xsl:element name="DisplayName">IEC 61970 Identified Object Object Type</xsl:element>
				<xsl:element name="Description">IEC 61970 Identified Object Object Type</xsl:element>
				<References>
					<Reference ReferenceType="HasSubtype" IsForward="false">ns=1;s=Base CIM Class</Reference>
				</References>
			</UAObjectType>			
			<UAVariableType>
				<xsl:attribute name="NodeId">ns=1;s=IdentifiedObject.aliasName</xsl:attribute>
				<xsl:attribute name="BrowseName">1:IdentifiedObject.aliasName</xsl:attribute>
				<xsl:element name="DisplayName">IEC 61970 IdentifiedObject.aliasName Property Type</xsl:element>
				<xsl:element name="Description">IEC 61970 IdentifiedObject.aliasName Property Type</xsl:element>
				<References>
					<Reference ReferenceType="HasSubtype" IsForward="false">ns=1;s=Base CIM Property</Reference>
					<Reference ReferenceType="HasProperty" IsForward="false">ns=1;s=IDO</Reference>
				</References>
			</UAVariableType>
      
      <!-- Power System Resource Object Type-->
      <UAObjectType>
        <xsl:attribute name="NodeId">ns=1;s=PSR</xsl:attribute>
        <xsl:attribute name="BrowseName">1:PSR</xsl:attribute>
        <xsl:element name="DisplayName">IEC 61970 Power System Resource Object Object Type</xsl:element>
        <xsl:element name="Description">IEC 61970 Power System Resource Object Object Type</xsl:element>
        <References>
          <Reference ReferenceType="HasSubtype" IsForward="false">ns=1;s=IDO</Reference>
        </References>
      </UAObjectType>

      <!-- Season Object Type-->
      <UAObjectType>
        <xsl:attribute name="NodeId">ns=1;s=Se</xsl:attribute>
        <xsl:attribute name="BrowseName">1:Se</xsl:attribute>
        <xsl:element name="DisplayName">IEC 61970 Season Object Type</xsl:element>
        <xsl:element name="Description">IEC 61970 Season Object Type</xsl:element>
        <References>
          <Reference ReferenceType="HasSubtype" IsForward="false">ns=1;s=IDO</Reference>
        </References>
      </UAObjectType>
      <UAVariableType>
        <xsl:attribute name="NodeId">ns=1;s=Season.startDate</xsl:attribute>
        <xsl:attribute name="BrowseName">1:Season.startDate</xsl:attribute>
        <xsl:element name="DisplayName">IEC 61970 Season.startDate Property Type</xsl:element>
        <xsl:element name="Description">IEC 61970 Switch.startDate Property Type</xsl:element>
        <References>
          <Reference ReferenceType="HasSubtype" IsForward="false">ns=1;s=Base CIM Property</Reference>
          <Reference ReferenceType="HasProperty" IsForward="false">ns=1;s=Se</Reference>
        </References>
      </UAVariableType>
      <UAVariableType>
        <xsl:attribute name="NodeId">ns=1;s=Season.endDate</xsl:attribute>
        <xsl:attribute name="BrowseName">1:Season.endDate</xsl:attribute>
        <xsl:element name="DisplayName">IEC 61970 Season.endDate Property Type</xsl:element>
        <xsl:element name="Description">IEC 61970 Switch.endDate Property Type</xsl:element>
        <References>
          <Reference ReferenceType="HasSubtype" IsForward="false">ns=1;s=Base CIM Property</Reference>
          <Reference ReferenceType="HasProperty" IsForward="false">ns=1;s=Se</Reference>
        </References>
      </UAVariableType>
      <UAVariableType>
        <xsl:attribute name="NodeId">ns=1;s=Season.name</xsl:attribute>
        <xsl:attribute name="BrowseName">1:Season.name</xsl:attribute>
        <xsl:element name="DisplayName">IEC 61970 Season.name Property Type</xsl:element>
        <xsl:element name="Description">IEC 61970 Switch.name Property Type</xsl:element>
        <References>
          <Reference ReferenceType="HasSubtype" IsForward="false">ns=1;s=Base CIM Property</Reference>
          <Reference ReferenceType="HasProperty" IsForward="false">ns=1;s=Se</Reference>
        </References>
      </UAVariableType>
      <!-- Create Season Objects Folder -->
      <UAObject>
        <xsl:attribute name="NodeId">ns=1;s=Ses</xsl:attribute>
        <xsl:attribute name="BrowseName">1:Ses</xsl:attribute>
        <xsl:element name="DisplayName">IEC 61970 Seasons</xsl:element>
        <References>
          <Reference ReferenceType="Organizes" IsForward="false">i=85</Reference>
          <Reference ReferenceType="HasTypeDefinition">i=61</Reference>
        </References>
      </UAObject>

      <!-- Day Type Object Type -->
      <UAObjectType>
        <xsl:attribute name="NodeId">ns=1;s=DT</xsl:attribute>
        <xsl:attribute name="BrowseName">1:DT</xsl:attribute>
        <xsl:element name="DisplayName">IEC 61970 Day Type Object Type</xsl:element>
        <xsl:element name="Description">IEC 61970 Day Type Object Type</xsl:element>
        <References>
          <Reference ReferenceType="HasSubtype" IsForward="false">ns=1;s=IDO</Reference>
        </References>
      </UAObjectType>
      <!-- Create Day Type Objects Folder -->
      <UAObject>
        <xsl:attribute name="NodeId">ns=1;s=DTs</xsl:attribute>
        <xsl:attribute name="BrowseName">1:DTs</xsl:attribute>
        <xsl:element name="DisplayName">IEC 61970 Day Types</xsl:element>
        <References>
          <Reference ReferenceType="Organizes" IsForward="false">i=85</Reference>
          <Reference ReferenceType="HasTypeDefinition">i=61</Reference>
        </References>
      </UAObject>

      <!-- Geographical Region Object Type-->
      <UAObjectType>
        <xsl:attribute name="NodeId">ns=1;s=GR</xsl:attribute>
        <xsl:attribute name="BrowseName">1:GR</xsl:attribute>
        <xsl:element name="DisplayName">IEC 61970 Geographical Region Object Type</xsl:element>
        <xsl:element name="Description">IEC 61970 Geographical Region Object Type</xsl:element>
        <References>
          <Reference ReferenceType="HasSubtype" IsForward="false">ns=1;s=IDO</Reference>
        </References>
      </UAObjectType>
      <!-- Create Geographical Region Objects Folder -->
      <UAObject>
        <xsl:attribute name="NodeId">ns=1;s=GRs</xsl:attribute>
        <xsl:attribute name="BrowseName">1:GRs</xsl:attribute>
        <xsl:element name="DisplayName">IEC 61970 Geographical Regions</xsl:element>
        <References>
          <Reference ReferenceType="Organizes" IsForward="false">i=85</Reference>
          <Reference ReferenceType="HasTypeDefinition">i=61</Reference>
        </References>
      </UAObject>

      <!-- Sub Geographical Region Object Type-->
      <UAObjectType>
        <xsl:attribute name="NodeId">ns=1;s=SGR</xsl:attribute>
        <xsl:attribute name="BrowseName">1:SGR</xsl:attribute>
        <xsl:element name="DisplayName">IEC 61970 Sub Geographical Region Object Type</xsl:element>
        <xsl:element name="Description">IEC 61970 Sub Geographical Region Object Type</xsl:element>
        <References>
          <Reference ReferenceType="HasSubtype" IsForward="false">ns=1;s=IDO</Reference>
        </References>
      </UAObjectType>
      <UAReferenceType>
        <xsl:attribute name="NodeId">ns=1;s=SubGeographicalRegion.Region</xsl:attribute>
        <xsl:attribute name="BrowseName">1:SubGeographicalRegion.Region</xsl:attribute>
        <xsl:attribute name="IsAbstract">false</xsl:attribute>
        <xsl:attribute name="Symmetric">false</xsl:attribute>
        <xsl:element name="DisplayName">IEC 61970 SubGeographicalRegion.Region Reference</xsl:element>
        <References>
          <Reference ReferenceType="HasSubtype" IsForward="false">ns=1;s=Base CIM Reference</Reference>
        </References>
        <xsl:element name="InverseName">Region.SubGeographicalRegion</xsl:element>
      </UAReferenceType>
      <!-- Create Sub Geographical Region Objects Folder -->
      <UAObject>
        <xsl:attribute name="NodeId">ns=1;s=SGRs</xsl:attribute>
        <xsl:attribute name="BrowseName">1:SGRs</xsl:attribute>
        <xsl:element name="DisplayName">IEC 61970 Sub Geographical Region</xsl:element>
        <References>
          <Reference ReferenceType="Organizes" IsForward="false">i=85</Reference>
          <Reference ReferenceType="HasTypeDefinition">i=61</Reference>
        </References>
      </UAObject>

      <!-- Rotating Machine Object Type-->
      <UAObjectType>
        <xsl:attribute name="NodeId">ns=1;s=RM</xsl:attribute>
        <xsl:attribute name="BrowseName">1:RM</xsl:attribute>
        <xsl:element name="DisplayName">IEC 61970 Rotating Machine Object Type</xsl:element>
        <xsl:element name="Description">IEC 61970 Rotating Machine Object Type</xsl:element>
        <References>
          <Reference ReferenceType="HasSubtype" IsForward="false">ns=1;s=CE</Reference>
        </References>
      </UAObjectType>
      <UAReferenceType>
        <xsl:attribute name="NodeId">ns=1;s=RotatingMachine.GeneratingUnit</xsl:attribute>
        <xsl:attribute name="BrowseName">1:RotatingMachine.GeneratingUnit</xsl:attribute>
        <xsl:attribute name="IsAbstract">false</xsl:attribute>
        <xsl:attribute name="Symmetric">false</xsl:attribute>
        <xsl:element name="DisplayName">IEC 61970 RotatingMachine.GeneratingUnit Reference</xsl:element>
        <References>
          <Reference ReferenceType="HasSubtype" IsForward="false">ns=1;s=Base CIM Reference</Reference>
        </References>
        <xsl:element name="InverseName">GeneratingUnit.RotatingMachine</xsl:element>
      </UAReferenceType>
      <UAVariableType>
        <xsl:attribute name="NodeId">ns=1;s=RotatingMachine.ratedS</xsl:attribute>
        <xsl:attribute name="BrowseName">1:RotatingMachine.ratedS</xsl:attribute>
        <xsl:element name="DisplayName">IEC 61970 RotatingMachine.ratedS Property Type</xsl:element>
        <xsl:element name="Description">IEC 61970 RotatingMachine.ratedS Property Type</xsl:element>
        <References>
          <Reference ReferenceType="HasSubtype" IsForward="false">ns=1;s=Base CIM Property</Reference>
          <Reference ReferenceType="HasProperty" IsForward="false">ns=1;s=RM</Reference>
        </References>
      </UAVariableType>
      
      <!-- Synchronous Machine Object Type-->
      <UAObjectType>
        <xsl:attribute name="NodeId">ns=1;s=SM</xsl:attribute>
        <xsl:attribute name="BrowseName">1:SM</xsl:attribute>
        <xsl:element name="DisplayName">IEC 61970 Synchronous Machine Object Type</xsl:element>
        <xsl:element name="Description">IEC 61970 Synchronous Machine Object Type</xsl:element>
        <References>
          <Reference ReferenceType="HasSubtype" IsForward="false">ns=1;s=RM</Reference>
        </References>
      </UAObjectType>
      <UAVariableType>
        <xsl:attribute name="NodeId">ns=1;s=SynchronousMachine.maxQ</xsl:attribute>
        <xsl:attribute name="BrowseName">1:SynchronousMachine.maxQ</xsl:attribute>
        <xsl:element name="DisplayName">IEC 61970 SynchronousMachine.maxQ Property Type</xsl:element>
        <xsl:element name="Description">IEC 61970 SynchronousMachine.maxQ Property Type</xsl:element>
        <References>
          <Reference ReferenceType="HasSubtype" IsForward="false">ns=1;s=Base CIM Property</Reference>
          <Reference ReferenceType="HasProperty" IsForward="false">ns=1;s=SM</Reference>
        </References>
      </UAVariableType>
      <UAVariableType>
        <xsl:attribute name="NodeId">ns=1;s=SynchronousMachine.minQ</xsl:attribute>
        <xsl:attribute name="BrowseName">1:SynchronousMachine.minQ</xsl:attribute>
        <xsl:element name="DisplayName">IEC 61970 SynchronousMachine.minQ Property Type</xsl:element>
        <xsl:element name="Description">IEC 61970 SynchronousMachine.minQ Property Type</xsl:element>
        <References>
          <Reference ReferenceType="HasSubtype" IsForward="false">ns=1;s=Base CIM Property</Reference>
          <Reference ReferenceType="HasProperty" IsForward="false">ns=1;s=SM</Reference>
        </References>
      </UAVariableType>
      <UAVariableType>
        <xsl:attribute name="NodeId">ns=1;s=SynchronousMachine.r</xsl:attribute>
        <xsl:attribute name="BrowseName">1:SynchronousMachine.r</xsl:attribute>
        <xsl:element name="DisplayName">IEC 61970 SynchronousMachine.r Property Type</xsl:element>
        <xsl:element name="Description">IEC 61970 SynchronousMachine.r Property Type</xsl:element>
        <References>
          <Reference ReferenceType="HasSubtype" IsForward="false">ns=1;s=Base CIM Property</Reference>
          <Reference ReferenceType="HasProperty" IsForward="false">ns=1;s=SM</Reference>
        </References>
      </UAVariableType>
      <UAVariableType>
        <xsl:attribute name="NodeId">ns=1;s=SynchronousMachine.r0</xsl:attribute>
        <xsl:attribute name="BrowseName">1:SynchronousMachine.r0</xsl:attribute>
        <xsl:element name="DisplayName">IEC 61970 SynchronousMachine.r0 Property Type</xsl:element>
        <xsl:element name="Description">IEC 61970 SynchronousMachine.r0 Property Type</xsl:element>
        <References>
          <Reference ReferenceType="HasSubtype" IsForward="false">ns=1;s=Base CIM Property</Reference>
          <Reference ReferenceType="HasProperty" IsForward="false">ns=1;s=SM</Reference>
        </References>
      </UAVariableType>
      <UAVariableType>
        <xsl:attribute name="NodeId">ns=1;s=SynchronousMachine.r2</xsl:attribute>
        <xsl:attribute name="BrowseName">1:SynchronousMachine.r2</xsl:attribute>
        <xsl:element name="DisplayName">IEC 61970 SynchronousMachine.r2 Property Type</xsl:element>
        <xsl:element name="Description">IEC 61970 SynchronousMachine.r2 Property Type</xsl:element>
        <References>
          <Reference ReferenceType="HasSubtype" IsForward="false">ns=1;s=Base CIM Property</Reference>
          <Reference ReferenceType="HasProperty" IsForward="false">ns=1;s=SM</Reference>
        </References>
      </UAVariableType>
      <UAVariableType>
        <xsl:attribute name="NodeId">ns=1;s=SynchronousMachine.x</xsl:attribute>
        <xsl:attribute name="BrowseName">1:SynchronousMachine.x</xsl:attribute>
        <xsl:element name="DisplayName">IEC 61970 SynchronousMachine.x Property Type</xsl:element>
        <xsl:element name="Description">IEC 61970 SynchronousMachine.x Property Type</xsl:element>
        <References>
          <Reference ReferenceType="HasSubtype" IsForward="false">ns=1;s=Base CIM Property</Reference>
          <Reference ReferenceType="HasProperty" IsForward="false">ns=1;s=SM</Reference>
        </References>
      </UAVariableType>
      <UAVariableType>
        <xsl:attribute name="NodeId">ns=1;s=SynchronousMachine.x0</xsl:attribute>
        <xsl:attribute name="BrowseName">1:SynchronousMachine.x0</xsl:attribute>
        <xsl:element name="DisplayName">IEC 61970 SynchronousMachine.x0 Property Type</xsl:element>
        <xsl:element name="Description">IEC 61970 SynchronousMachine.x0 Property Type</xsl:element>
        <References>
          <Reference ReferenceType="HasSubtype" IsForward="false">ns=1;s=Base CIM Property</Reference>
          <Reference ReferenceType="HasProperty" IsForward="false">ns=1;s=SM</Reference>
        </References>
      </UAVariableType>
      <UAVariableType>
        <xsl:attribute name="NodeId">ns=1;s=SynchronousMachine.x2</xsl:attribute>
        <xsl:attribute name="BrowseName">1:SynchronousMachine.x2</xsl:attribute>
        <xsl:element name="DisplayName">IEC 61970 SynchronousMachine.x2 Property Type</xsl:element>
        <xsl:element name="Description">IEC 61970 SynchronousMachine.x2 Property Type</xsl:element>
        <References>
          <Reference ReferenceType="HasSubtype" IsForward="false">ns=1;s=Base CIM Property</Reference>
          <Reference ReferenceType="HasProperty" IsForward="false">ns=1;s=SM</Reference>
        </References>
      </UAVariableType>
      <UAVariableType>
        <xsl:attribute name="NodeId">ns=1;s=SynchronousMachine.operatingMode</xsl:attribute>
        <xsl:attribute name="BrowseName">1:SynchronousMachine.operatingMode</xsl:attribute>
        <xsl:element name="DisplayName">IEC 61970 SynchronousMachine.operatingMode Property Type</xsl:element>
        <xsl:element name="Description">IEC 61970 SynchronousMachine.operatingMode Property Type</xsl:element>
        <References>
          <Reference ReferenceType="HasSubtype" IsForward="false">ns=1;s=Base CIM Property</Reference>
          <Reference ReferenceType="HasProperty" IsForward="false">ns=1;s=SM</Reference>
        </References>
      </UAVariableType>
      <UAVariableType>
        <xsl:attribute name="NodeId">ns=1;s=SynchronousMachine.type</xsl:attribute>
        <xsl:attribute name="BrowseName">1:SynchronousMachine.type</xsl:attribute>
        <xsl:element name="DisplayName">IEC 61970 SynchronousMachine.type Property Type</xsl:element>
        <xsl:element name="Description">IEC 61970 SynchronousMachine.type Property Type</xsl:element>
        <References>
          <Reference ReferenceType="HasSubtype" IsForward="false">ns=1;s=Base CIM Property</Reference>
          <Reference ReferenceType="HasProperty" IsForward="false">ns=1;s=SM</Reference>
        </References>
      </UAVariableType>
      <UAVariableType>
        <xsl:attribute name="NodeId">ns=1;s=SynchronousMachine.referencePriority</xsl:attribute>
        <xsl:attribute name="BrowseName">1:SynchronousMachine.referencePriority</xsl:attribute>
        <xsl:element name="DisplayName">IEC 61970 SynchronousMachine.referencePriority Property Type</xsl:element>
        <xsl:element name="Description">IEC 61970 SynchronousMachine.referencePriority Property Type</xsl:element>
        <References>
          <Reference ReferenceType="HasSubtype" IsForward="false">ns=1;s=Base CIM Property</Reference>
          <Reference ReferenceType="HasProperty" IsForward="false">ns=1;s=SM</Reference>
        </References>
      </UAVariableType>
      <!-- Create Synchronous Machine Objects Folder -->
      <UAObject>
        <xsl:attribute name="NodeId">ns=1;s=SMs</xsl:attribute>
        <xsl:attribute name="BrowseName">1:SMs</xsl:attribute>
        <xsl:element name="DisplayName">IEC 61970 Synchronous Machines</xsl:element>
        <References>
          <Reference ReferenceType="Organizes" IsForward="false">i=85</Reference>
          <Reference ReferenceType="HasTypeDefinition">i=61</Reference>
        </References>
      </UAObject>

      <!-- Generating Unit Object Type-->
      <UAObjectType>
        <xsl:attribute name="NodeId">ns=1;s=GU</xsl:attribute>
        <xsl:attribute name="BrowseName">1:GU</xsl:attribute>
        <xsl:element name="DisplayName">IEC 61970 Generating Unit Object Type</xsl:element>
        <xsl:element name="Description">IEC 61970 Generating Unit Object Type</xsl:element>
        <References>
          <Reference ReferenceType="HasSubtype" IsForward="false">ns=1;s=PSR</Reference>
        </References>
      </UAObjectType>
      <UAVariableType>
        <xsl:attribute name="NodeId">ns=1;s=GeneratingUnit.genControlSource</xsl:attribute>
        <xsl:attribute name="BrowseName">1:GeneratingUnit.genControlSource</xsl:attribute>
        <xsl:element name="DisplayName">IEC 61970 GeneratingUnit.genControlSource Property Type</xsl:element>
        <xsl:element name="Description">IEC 61970 GeneratingUnit.genControlSource Property Type</xsl:element>
        <References>
          <Reference ReferenceType="HasSubtype" IsForward="false">ns=1;s=Base CIM Property</Reference>
          <Reference ReferenceType="HasProperty" IsForward="false">ns=1;s=GU</Reference>
        </References>
      </UAVariableType>
      <UAVariableType>
        <xsl:attribute name="NodeId">ns=1;s=GeneratingUnit.initialP</xsl:attribute>
        <xsl:attribute name="BrowseName">1:GeneratingUnit.initialP</xsl:attribute>
        <xsl:element name="DisplayName">IEC 61970 GeneratingUnit.initialP Property Type</xsl:element>
        <xsl:element name="Description">IEC 61970 GeneratingUnit.initialP Property Type</xsl:element>
        <References>
          <Reference ReferenceType="HasSubtype" IsForward="false">ns=1;s=Base CIM Property</Reference>
          <Reference ReferenceType="HasProperty" IsForward="false">ns=1;s=GU</Reference>
        </References>
      </UAVariableType>
      <UAVariableType>
        <xsl:attribute name="NodeId">ns=1;s=GeneratingUnit.nominalP</xsl:attribute>
        <xsl:attribute name="BrowseName">1:GeneratingUnit.nominalP</xsl:attribute>
        <xsl:element name="DisplayName">IEC 61970 GeneratingUnit.nominalP Property Type</xsl:element>
        <xsl:element name="Description">IEC 61970 GeneratingUnit.nominalP Property Type</xsl:element>
        <References>
          <Reference ReferenceType="HasSubtype" IsForward="false">ns=1;s=Base CIM Property</Reference>
          <Reference ReferenceType="HasProperty" IsForward="false">ns=1;s=GU</Reference>
        </References>
      </UAVariableType>
      <UAVariableType>
        <xsl:attribute name="NodeId">ns=1;s=GeneratingUnit.maxOperatingP</xsl:attribute>
        <xsl:attribute name="BrowseName">1:GeneratingUnit.maxOperatingP</xsl:attribute>
        <xsl:element name="DisplayName">IEC 61970 GeneratingUnit.maxOperatingP Property Type</xsl:element>
        <xsl:element name="Description">IEC 61970 GeneratingUnit.maxOperatingP Property Type</xsl:element>
        <References>
          <Reference ReferenceType="HasSubtype" IsForward="false">ns=1;s=Base CIM Property</Reference>
          <Reference ReferenceType="HasProperty" IsForward="false">ns=1;s=GU</Reference>
        </References>
      </UAVariableType>
      <UAVariableType>
        <xsl:attribute name="NodeId">ns=1;s=GeneratingUnit.minOperatingP</xsl:attribute>
        <xsl:attribute name="BrowseName">1:GeneratingUnit.minOperatingP</xsl:attribute>
        <xsl:element name="DisplayName">IEC 61970 GeneratingUnit.minOperatingP Property Type</xsl:element>
        <xsl:element name="Description">IEC 61970 GeneratingUnit.minOperatingP Property Type</xsl:element>
        <References>
          <Reference ReferenceType="HasSubtype" IsForward="false">ns=1;s=Base CIM Property</Reference>
          <Reference ReferenceType="HasProperty" IsForward="false">ns=1;s=GU</Reference>
        </References>
      </UAVariableType>

      <!-- Hydro Generating Unit Object Type-->
      <UAObjectType>
        <xsl:attribute name="NodeId">ns=1;s=HGU</xsl:attribute>
        <xsl:attribute name="BrowseName">1:HGU</xsl:attribute>
        <xsl:element name="DisplayName">IEC 61970 Hydro Generating Unit Object Type</xsl:element>
        <xsl:element name="Description">IEC 61970 Hydro Generating Unit Object Type</xsl:element>
        <References>
          <Reference ReferenceType="HasSubtype" IsForward="false">ns=1;s=GU</Reference>
        </References>
      </UAObjectType>
      <!-- Create Hydro Generating Unit Objects Folder -->
      <UAObject>
        <xsl:attribute name="NodeId">ns=1;s=HGUs</xsl:attribute>
        <xsl:attribute name="BrowseName">1:HGUs</xsl:attribute>
        <xsl:element name="DisplayName">IEC 61970 Hydro Generating Units</xsl:element>
        <References>
          <Reference ReferenceType="Organizes" IsForward="false">i=85</Reference>
          <Reference ReferenceType="HasTypeDefinition">i=61</Reference>
        </References>
      </UAObject>

      <!-- Base Voltage Level Object Type-->
      <UAObjectType>
        <xsl:attribute name="NodeId">ns=1;s=BV</xsl:attribute>
        <xsl:attribute name="BrowseName">1:BV</xsl:attribute>
        <xsl:element name="DisplayName">IEC 61970 Base Voltage Object Type</xsl:element>
        <xsl:element name="Description">IEC 61970 Base Voltage Object Type</xsl:element>
        <References>
          <Reference ReferenceType="HasSubtype" IsForward="false">ns=1;s=PSR</Reference>
        </References>
      </UAObjectType>
      <UAVariableType>
        <xsl:attribute name="NodeId">ns=1;s=BaseVoltage.nominalVoltage</xsl:attribute>
        <xsl:attribute name="BrowseName">1:BaseVoltage.nominalVoltage</xsl:attribute>
        <xsl:element name="DisplayName">IEC 61970 BaseVoltage.nominalVoltage Property Type</xsl:element>
        <xsl:element name="Description">IEC 61970BaseVoltage.nominalVoltage Property Type</xsl:element>
        <References>
          <Reference ReferenceType="HasSubtype" IsForward="false">ns=1;s=Base CIM Property</Reference>
          <Reference ReferenceType="HasProperty" IsForward="false">ns=1;s=BV</Reference>
        </References>
      </UAVariableType>
      <!-- Create Base Voltage Objects Folder -->
      <UAObject>
        <xsl:attribute name="NodeId">ns=1;s=BVs</xsl:attribute>
        <xsl:attribute name="BrowseName">1:BVs</xsl:attribute>
        <xsl:element name="DisplayName">IEC 61970 Base Voltages</xsl:element>
        <References>
          <Reference ReferenceType="Organizes" IsForward="false">i=85</Reference>
          <Reference ReferenceType="HasTypeDefinition">i=61</Reference>
        </References>
      </UAObject>

      <!-- Line Object Type-->
      <UAObjectType>
        <xsl:attribute name="NodeId">ns=1;s=Li</xsl:attribute>
        <xsl:attribute name="BrowseName">1:Li</xsl:attribute>
        <xsl:element name="DisplayName">IEC 61970 Line Object Type</xsl:element>
        <xsl:element name="Description">IEC 61970 Line Object Type</xsl:element>
        <References>
          <Reference ReferenceType="HasSubtype" IsForward="false">ns=1;s=CE</Reference>
        </References>
      </UAObjectType>
      <UAReferenceType>
        <xsl:attribute name="NodeId">ns=1;s=Line.Region</xsl:attribute>
        <xsl:attribute name="BrowseName">1:Line.Region</xsl:attribute>
        <xsl:attribute name="IsAbstract">false</xsl:attribute>
        <xsl:attribute name="Symmetric">false</xsl:attribute>
        <xsl:element name="DisplayName">IEC 61970 Line.Region Reference</xsl:element>
        <References>
          <Reference ReferenceType="HasSubtype" IsForward="false">ns=1;s=Base CIM Reference</Reference>
        </References>
        <xsl:element name="InverseName">Region.Line</xsl:element>
      </UAReferenceType>
      <!-- Create Line Objects Folder -->
      <UAObject>
        <xsl:attribute name="NodeId">ns=1;s=Lis</xsl:attribute>
        <xsl:attribute name="BrowseName">1:Lis</xsl:attribute>
        <xsl:element name="DisplayName">IEC 61970 Lines</xsl:element>
        <References>
          <Reference ReferenceType="Organizes" IsForward="false">i=85</Reference>
          <Reference ReferenceType="HasTypeDefinition">i=61</Reference>
        </References>
      </UAObject>

      <!-- Equipment Object Type-->
      <UAObjectType>
        <xsl:attribute name="NodeId">ns=1;s=Eq</xsl:attribute>
        <xsl:attribute name="BrowseName">1:Eq</xsl:attribute>
        <xsl:element name="DisplayName">IEC 61970 Equipment Object Type</xsl:element>
        <xsl:element name="Description">IEC 61970 Equipment Object Type</xsl:element>
        <References>
          <Reference ReferenceType="HasSubtype" IsForward="false">ns=1;s=PSR</Reference>
        </References>
      </UAObjectType>
      <UAReferenceType>
        <xsl:attribute name="NodeId">ns=1;s=Equipment.EquipmentContainer</xsl:attribute>
        <xsl:attribute name="BrowseName">1:Equipment.EquipmentContainer</xsl:attribute>
        <xsl:attribute name="IsAbstract">false</xsl:attribute>
        <xsl:attribute name="Symmetric">false</xsl:attribute>
        <xsl:element name="DisplayName">IEC 61970 Equipment.EquipmentContainer Reference</xsl:element>
        <References>
          <Reference ReferenceType="HasSubtype" IsForward="false">ns=1;s=Base CIM Reference</Reference>
        </References>
        <xsl:element name="InverseName">EquipmentContainer.Equipment</xsl:element>
      </UAReferenceType>

      <!-- Conducting Equipment Object Type-->
      <UAObjectType>
        <xsl:attribute name="NodeId">ns=1;s=CE</xsl:attribute>
        <xsl:attribute name="BrowseName">1:CE</xsl:attribute>
        <xsl:element name="DisplayName">IEC 61970 Conducting Equipment Object Type</xsl:element>
        <xsl:element name="Description">IEC 61970 Conducting Equipment Object Type</xsl:element>
        <References>
          <Reference ReferenceType="HasSubtype" IsForward="false">ns=1;s=Eq</Reference>
        </References>
      </UAObjectType>
      <UAReferenceType>
        <xsl:attribute name="NodeId">ns=1;s=ConductingEquipment.BaseVoltage</xsl:attribute>
        <xsl:attribute name="BrowseName">1:ConductingEquipment.BaseVoltage</xsl:attribute>
        <xsl:attribute name="IsAbstract">false</xsl:attribute>
        <xsl:attribute name="Symmetric">false</xsl:attribute>
        <xsl:element name="DisplayName">IEC 61970 ConductingEquipment.BaseVoltage Reference</xsl:element>
        <References>
          <Reference ReferenceType="HasSubtype" IsForward="false">ns=1;s=Base CIM Reference</Reference>
        </References>
        <xsl:element name="InverseName">BaseVoltage.ConductingEquipment</xsl:element>
      </UAReferenceType>
      
      <!-- Conductor Object Type-->
      <UAObjectType>
        <xsl:attribute name="NodeId">ns=1;s=Co</xsl:attribute>
        <xsl:attribute name="BrowseName">1:Co</xsl:attribute>
        <xsl:element name="DisplayName">IEC 61970 Conductor Object Type</xsl:element>
        <xsl:element name="Description">IEC 61970 Conductor Object Type</xsl:element>
        <References>
          <Reference ReferenceType="HasSubtype" IsForward="false">ns=1;s=CE</Reference>
        </References>
      </UAObjectType>
      <UAVariableType>
        <xsl:attribute name="NodeId">ns=1;s=Conductor.length</xsl:attribute>
        <xsl:attribute name="BrowseName">1:Conductor.length</xsl:attribute>
        <xsl:element name="DisplayName">IEC 61970 Conductor.length Property Type</xsl:element>
        <xsl:element name="Description">IEC 61970 Conductor.length Property Type</xsl:element>
        <References>
          <Reference ReferenceType="HasSubtype" IsForward="false">ns=1;s=Base CIM Property</Reference>
          <Reference ReferenceType="HasProperty" IsForward="false">ns=1;s=Co</Reference>
        </References>
      </UAVariableType>

      <!-- AC Line Segment Object Type-->
      <UAObjectType>
        <xsl:attribute name="NodeId">ns=1;s=LS</xsl:attribute>
        <xsl:attribute name="BrowseName">1:LS</xsl:attribute>
        <xsl:element name="DisplayName">IEC 61970 AC Line Segment Object Type</xsl:element>
        <xsl:element name="Description">IEC 61970 AC Line Segment Object Type</xsl:element>
        <References>
          <Reference ReferenceType="HasSubtype" IsForward="false">ns=1;s=Co</Reference>
        </References>
      </UAObjectType>
      <UAVariableType>
        <xsl:attribute name="NodeId">ns=1;s=ACLineSegment.gch</xsl:attribute>
        <xsl:attribute name="BrowseName">1:ACLineSegment.gch</xsl:attribute>
        <xsl:element name="DisplayName">IEC 61970 ACLineSegment.gch Property Type</xsl:element>
        <xsl:element name="Description">IEC 61970 ACLineSegment.gch Property Type</xsl:element>
        <References>
          <Reference ReferenceType="HasSubtype" IsForward="false">ns=1;s=Base CIM Property</Reference>
          <Reference ReferenceType="HasProperty" IsForward="false">ns=1;s=LS</Reference>
        </References>
      </UAVariableType>
      <UAVariableType>
        <xsl:attribute name="NodeId">ns=1;s=ACLineSegment.g0ch</xsl:attribute>
        <xsl:attribute name="BrowseName">1:ACLineSegment.g0ch</xsl:attribute>
        <xsl:element name="DisplayName">IEC 61970 ACLineSegment.g0ch Property Type</xsl:element>
        <xsl:element name="Description">IEC 61970 ACLineSegment.g0ch Property Type</xsl:element>
        <References>
          <Reference ReferenceType="HasSubtype" IsForward="false">ns=1;s=Base CIM Property</Reference>
          <Reference ReferenceType="HasProperty" IsForward="false">ns=1;s=LS</Reference>
        </References>
      </UAVariableType>
      <UAVariableType>
        <xsl:attribute name="NodeId">ns=1;s=ACLineSegment.bch</xsl:attribute>
        <xsl:attribute name="BrowseName">1:ACLineSegment.bch</xsl:attribute>
        <xsl:element name="DisplayName">IEC 61970 ACLineSegment.bch Property Type</xsl:element>
        <xsl:element name="Description">IEC 61970 ACLineSegment.bch Property Type</xsl:element>
        <References>
          <Reference ReferenceType="HasSubtype" IsForward="false">ns=1;s=Base CIM Property</Reference>
          <Reference ReferenceType="HasProperty" IsForward="false">ns=1;s=LS</Reference>
        </References>
      </UAVariableType>
      <UAVariableType>
        <xsl:attribute name="NodeId">ns=1;s=ACLineSegment.b0ch</xsl:attribute>
        <xsl:attribute name="BrowseName">1:ACLineSegment.b0ch</xsl:attribute>
        <xsl:element name="DisplayName">IEC 61970 ACLineSegment.b0ch Property Type</xsl:element>
        <xsl:element name="Description">IEC 61970 ACLineSegment.b0ch Property Type</xsl:element>
        <References>
          <Reference ReferenceType="HasSubtype" IsForward="false">ns=1;s=Base CIM Property</Reference>
          <Reference ReferenceType="HasProperty" IsForward="false">ns=1;s=LS</Reference>
        </References>
      </UAVariableType>
      <UAVariableType>
        <xsl:attribute name="NodeId">ns=1;s=ACLineSegment.r</xsl:attribute>
        <xsl:attribute name="BrowseName">1:ACLineSegment.r</xsl:attribute>
        <xsl:element name="DisplayName">IEC 61970 ACLineSegment.r Property Type</xsl:element>
        <xsl:element name="Description">IEC 61970 ACLineSegment.r Property Type</xsl:element>
        <References>
          <Reference ReferenceType="HasSubtype" IsForward="false">ns=1;s=Base CIM Property</Reference>
          <Reference ReferenceType="HasProperty" IsForward="false">ns=1;s=LS</Reference>
        </References>
      </UAVariableType>
      <UAVariableType>
        <xsl:attribute name="NodeId">ns=1;s=ACLineSegment.r0</xsl:attribute>
        <xsl:attribute name="BrowseName">1:ACLineSegment.r0</xsl:attribute>
        <xsl:element name="DisplayName">IEC 61970 ACLineSegment.r0 Property Type</xsl:element>
        <xsl:element name="Description">IEC 61970 ACLineSegment.r0 Property Type</xsl:element>
        <References>
          <Reference ReferenceType="HasSubtype" IsForward="false">ns=1;s=Base CIM Property</Reference>
          <Reference ReferenceType="HasProperty" IsForward="false">ns=1;s=LS</Reference>
        </References>
      </UAVariableType>
      <UAVariableType>
        <xsl:attribute name="NodeId">ns=1;s=ACLineSegment.x</xsl:attribute>
        <xsl:attribute name="BrowseName">1:ACLineSegment.x</xsl:attribute>
        <xsl:element name="DisplayName">IEC 61970 ACLineSegment.x Property Type</xsl:element>
        <xsl:element name="Description">IEC 61970 ACLineSegment.x Property Type</xsl:element>
        <References>
          <Reference ReferenceType="HasSubtype" IsForward="false">ns=1;s=Base CIM Property</Reference>
          <Reference ReferenceType="HasProperty" IsForward="false">ns=1;s=LS</Reference>
        </References>
      </UAVariableType>
      <UAVariableType>
        <xsl:attribute name="NodeId">ns=1;s=ACLineSegment.x0</xsl:attribute>
        <xsl:attribute name="BrowseName">1:ACLineSegment.x0</xsl:attribute>
        <xsl:element name="DisplayName">IEC 61970 ACLineSegment.x0 Property Type</xsl:element>
        <xsl:element name="Description">IEC 61970 ACLineSegment.x0 Property Type</xsl:element>
        <References>
          <Reference ReferenceType="HasSubtype" IsForward="false">ns=1;s=Base CIM Property</Reference>
          <Reference ReferenceType="HasProperty" IsForward="false">ns=1;s=LS</Reference>
        </References>
      </UAVariableType>
      <!-- Create AC Line Segment Objects Folder -->
      <UAObject>
        <xsl:attribute name="NodeId">ns=1;s=LSs</xsl:attribute>
        <xsl:attribute name="BrowseName">1:LSs</xsl:attribute>
        <xsl:element name="DisplayName">IEC 61970 AC Line Segments</xsl:element>
        <References>
          <Reference ReferenceType="Organizes" IsForward="false">i=85</Reference>
          <Reference ReferenceType="HasTypeDefinition">i=61</Reference>
        </References>
      </UAObject>

      <!-- Busbar Section Object Type -->
      <UAObjectType>
        <xsl:attribute name="NodeId">ns=1;s=BBS</xsl:attribute>
        <xsl:attribute name="BrowseName">1:BBS</xsl:attribute>
        <xsl:element name="DisplayName">IEC 61970 BusbarSection Object Type</xsl:element>
        <xsl:element name="Description">IEC 61970 BusbarSection Object Type</xsl:element>
        <References>
          <Reference ReferenceType="HasSubtype" IsForward="false">ns=1;s=CE</Reference>
        </References>
      </UAObjectType>
      <!-- Create Busbar Section Objects Folder -->
      <UAObject>
        <xsl:attribute name="NodeId">ns=1;s=BBSs</xsl:attribute>
        <xsl:attribute name="BrowseName">1:BBSs</xsl:attribute>
        <xsl:element name="DisplayName">IEC 61970 Busbar Sections</xsl:element>
        <References>
          <Reference ReferenceType="Organizes" IsForward="false">i=85</Reference>
          <Reference ReferenceType="HasTypeDefinition">i=61</Reference>
        </References>
      </UAObject>

      <!-- Switch Object Type-->
      <UAObjectType>
        <xsl:attribute name="NodeId">ns=1;s=Sw</xsl:attribute>
        <xsl:attribute name="BrowseName">1:Sw</xsl:attribute>
        <xsl:element name="DisplayName">IEC 61970 Switch Object Type</xsl:element>
        <xsl:element name="Description">IEC 61970 Switch Object Type</xsl:element>
        <References>
          <Reference ReferenceType="HasSubtype" IsForward="false">ns=1;s=CE</Reference>
        </References>
      </UAObjectType>
      <UAVariableType>
        <xsl:attribute name="NodeId">ns=1;s=Switch.ratedCurrent</xsl:attribute>
        <xsl:attribute name="BrowseName">1:Switch.ratedCurrent</xsl:attribute>
        <xsl:element name="DisplayName">IEC 61970 Switch.ratedCurrent Property Type</xsl:element>
        <xsl:element name="Description">IEC 61970 Switch.ratedCurrent Property Type</xsl:element>
        <References>
          <Reference ReferenceType="HasSubtype" IsForward="false">ns=1;s=Base CIM Property</Reference>
          <Reference ReferenceType="HasProperty" IsForward="false">ns=1;s=Sw</Reference>
        </References>
      </UAVariableType>
      <UAVariableType>
        <xsl:attribute name="NodeId">ns=1;s=Switch.normallyOpen</xsl:attribute>
        <xsl:attribute name="BrowseName">1:Switch.normallyOpen</xsl:attribute>
        <xsl:element name="DisplayName">IEC 61970 Switch.normallyOpen Property Type</xsl:element>
        <xsl:element name="Description">IEC 61970 Switch.normallyOpen Property Type</xsl:element>
        <References>
          <Reference ReferenceType="HasSubtype" IsForward="false">ns=1;s=Base CIM Property</Reference>
          <Reference ReferenceType="HasProperty" IsForward="false">ns=1;s=Sw</Reference>
        </References>
      </UAVariableType>
      
      <!-- Breaker Object Type-->			
			<UAObjectType>
				<xsl:attribute name="NodeId">ns=1;s=Br</xsl:attribute>
				<xsl:attribute name="BrowseName">1:Br</xsl:attribute>
				<xsl:element name="DisplayName">IEC 61970 Breaker Object Type</xsl:element>
				<xsl:element name="Description">IEC 61970 Breaker Object Type</xsl:element>
				<References>
					<Reference ReferenceType="HasSubtype" IsForward="false">ns=1;s=Sw</Reference>
				</References>
			</UAObjectType>		
			<!-- Create Breaker Objects Folder -->		
			<UAObject>
				<xsl:attribute name="NodeId">ns=1;s=Brs</xsl:attribute>
				<xsl:attribute name="BrowseName">1:Brs</xsl:attribute>
				<xsl:element name="DisplayName">IEC 61970 Breakers</xsl:element>
				<References>
					<Reference ReferenceType="Organizes" IsForward="false">i=85</Reference>
					<Reference ReferenceType="HasTypeDefinition">i=61</Reference>
				</References>
			</UAObject>

      <!-- Connectivity Node Object Type -->
      <UAObjectType>
        <xsl:attribute name="NodeId">ns=1;s=CN</xsl:attribute>
        <xsl:attribute name="BrowseName">1:CN</xsl:attribute>
        <xsl:element name="DisplayName">IEC 61970 Connectivity Node Object Type</xsl:element>
        <xsl:element name="Description">IEC 61970 Connectivity Node Object Type</xsl:element>
        <References>
          <Reference ReferenceType="HasSubtype" IsForward="false">ns=1;s=IDO</Reference>
        </References>
      </UAObjectType>
      <UAReferenceType>
        <xsl:attribute name="NodeId">ns=1;s=ConnectivityNode.ConnectivityNodeContainer</xsl:attribute>
        <xsl:attribute name="BrowseName">1:ConnectivityNode.ConnectivityNodeContainer</xsl:attribute>
        <xsl:attribute name="IsAbstract">false</xsl:attribute>
        <xsl:attribute name="Symmetric">false</xsl:attribute>
        <xsl:element name="DisplayName">IEC 61970 ConnectivityNode.ConnectivityNodeContainer Reference</xsl:element>
        <References>
          <Reference ReferenceType="HasSubtype" IsForward="false">ns=1;s=Base CIM Reference</Reference>
        </References>
        <xsl:element name="InverseName">ConnectivityNodeContainer.ConnectivityNode</xsl:element>
      </UAReferenceType>      
      <!-- Create Connectivity Node Objects Folder -->
      <UAObject>
        <xsl:attribute name="NodeId">ns=1;s=CNs</xsl:attribute>
        <xsl:attribute name="BrowseName">1:CNs</xsl:attribute>
        <xsl:element name="DisplayName">IEC 61970 Connectivity Nodes</xsl:element>
        <References>
          <Reference ReferenceType="Organizes" IsForward="false">i=85</Reference>
          <Reference ReferenceType="HasTypeDefinition">i=61</Reference>
        </References>
      </UAObject>

      <!-- Terminal Object Type -->
      <UAObjectType>
        <xsl:attribute name="NodeId">ns=1;s=Te</xsl:attribute>
        <xsl:attribute name="BrowseName">1:Te</xsl:attribute>
        <xsl:element name="DisplayName">IEC 61970 Terminal Object Type</xsl:element>
        <xsl:element name="Description">IEC 61970 Terminal Object Type</xsl:element>
        <References>
          <Reference ReferenceType="HasSubtype" IsForward="false">ns=1;s=IDO</Reference>
        </References>
      </UAObjectType>
      <UAReferenceType>
        <xsl:attribute name="NodeId">ns=1;s=Terminal.ConductingEquipment</xsl:attribute>
        <xsl:attribute name="BrowseName">1:Terminal.ConductingEquipment</xsl:attribute>
        <xsl:attribute name="IsAbstract">false</xsl:attribute>
        <xsl:attribute name="Symmetric">false</xsl:attribute>
        <xsl:element name="DisplayName">IEC 61970 Terminal.ConductingEquipment Reference</xsl:element>
        <References>
          <Reference ReferenceType="HasSubtype" IsForward="false">ns=1;s=Base CIM Reference</Reference>
        </References>
        <xsl:element name="InverseName">ConductingEquipment.Terminal</xsl:element>
      </UAReferenceType>
      <UAReferenceType>
        <xsl:attribute name="NodeId">ns=1;s=Terminal.ConnectivityNode</xsl:attribute>
        <xsl:attribute name="BrowseName">1:Terminal.ConnectivityNode</xsl:attribute>
        <xsl:attribute name="IsAbstract">false</xsl:attribute>
        <xsl:attribute name="Symmetric">false</xsl:attribute>
        <xsl:element name="DisplayName">IEC 61970 Terminal.ConnectivityNode Reference</xsl:element>
        <References>
          <Reference ReferenceType="HasSubtype" IsForward="false">ns=1;s=Base CIM Reference</Reference>
        </References>
        <xsl:element name="InverseName">ConnectivityNode.Terminal</xsl:element>
      </UAReferenceType>
      <UAVariableType>
        <xsl:attribute name="NodeId">ns=1;s=Terminal.sequenceNumber</xsl:attribute>
        <xsl:attribute name="BrowseName">1:Terminal.sequenceNumber</xsl:attribute>
        <xsl:element name="DisplayName">IEC 61970 Terminal.sequenceNumber Property Type</xsl:element>
        <xsl:element name="Description">IEC 61970 Terminal.sequenceNumber Property Type</xsl:element>
        <References>
          <Reference ReferenceType="HasSubtype" IsForward="false">ns=1;s=Base CIM Property</Reference>
          <Reference ReferenceType="HasProperty" IsForward="false">ns=1;s=Te</Reference>
        </References>
      </UAVariableType>
      <!-- Create Terminal Objects Folder -->
      <UAObject>
        <xsl:attribute name="NodeId">ns=1;s=Tes</xsl:attribute>
        <xsl:attribute name="BrowseName">1:Tes</xsl:attribute>
        <xsl:element name="DisplayName">IEC 61970 Terminals</xsl:element>
        <References>
          <Reference ReferenceType="Organizes" IsForward="false">i=85</Reference>
          <Reference ReferenceType="HasTypeDefinition">i=61</Reference>
        </References>
      </UAObject>

      <!-- Operational Limit Type Object Type-->
      <UAObjectType>
        <xsl:attribute name="NodeId">ns=1;s=OLT</xsl:attribute>
        <xsl:attribute name="BrowseName">1:OLT</xsl:attribute>
        <xsl:element name="DisplayName">IEC 61970 Operational Limit Type Object Type</xsl:element>
        <xsl:element name="Description">IEC 61970 Operational Limit Type Object Type</xsl:element>
        <References>
          <Reference ReferenceType="HasSubtype" IsForward="false">ns=1;s=IDO</Reference>
        </References>
      </UAObjectType>
      <UAVariableType>
        <xsl:attribute name="NodeId">ns=1;s=OperationalLimitType.direction</xsl:attribute>
        <xsl:attribute name="BrowseName">1:OperationalLimitType.direction</xsl:attribute>
        <xsl:element name="DisplayName">IEC 61970 OperationalLimitType.direction Property Type</xsl:element>
        <xsl:element name="Description">IEC OperationalLimitType.direction Property Type</xsl:element>
        <References>
          <Reference ReferenceType="HasSubtype" IsForward="false">ns=1;s=Base CIM Property</Reference>
          <Reference ReferenceType="HasProperty" IsForward="false">ns=1;s=OLT</Reference>
        </References>
      </UAVariableType>
      <UAVariableType>
        <xsl:attribute name="NodeId">ns=1;s=OperationalLimitType.acceptableDuration</xsl:attribute>
        <xsl:attribute name="BrowseName">1:OperationalLimitType.acceptableDuration</xsl:attribute>
        <xsl:element name="DisplayName">IEC 61970 OperationalLimitType.acceptableDuration Property Type</xsl:element>
        <xsl:element name="Description">IEC OperationalLimitType.acceptableDuration Property Type</xsl:element>
        <References>
          <Reference ReferenceType="HasSubtype" IsForward="false">ns=1;s=Base CIM Property</Reference>
          <Reference ReferenceType="HasProperty" IsForward="false">ns=1;s=OLT</Reference>
        </References>
      </UAVariableType>
      <!-- Create Operational Limit Type Objects Folder -->
      <UAObject>
        <xsl:attribute name="NodeId">ns=1;s=OLTs</xsl:attribute>
        <xsl:attribute name="BrowseName">1:OLTs</xsl:attribute>
        <xsl:element name="DisplayName">IEC 61970 Operational Limit Types</xsl:element>
        <References>
          <Reference ReferenceType="Organizes" IsForward="false">i=85</Reference>
          <Reference ReferenceType="HasTypeDefinition">i=61</Reference>
        </References>
      </UAObject>
      
      <!-- Active (Real) Power Limit Object Type-->
      <UAObjectType>
        <xsl:attribute name="NodeId">ns=1;s=RPL</xsl:attribute>
        <xsl:attribute name="BrowseName">1:RPL</xsl:attribute>
        <xsl:element name="DisplayName">IEC 61970 Active (Real) Power Limit Object Type</xsl:element>
        <xsl:element name="Description">IEC 61970 Active (Real) Power Limit Object Type</xsl:element>
        <References>
          <Reference ReferenceType="HasSubtype" IsForward="false">ns=1;s=IDO</Reference>
        </References>
      </UAObjectType>
      <UAReferenceType>
        <xsl:attribute name="NodeId">ns=1;s=ActivePowerLimit.OperationalLimitType</xsl:attribute>
        <xsl:attribute name="BrowseName">1:ActivePowerLimit.OperationalLimitType</xsl:attribute>
        <xsl:attribute name="IsAbstract">false</xsl:attribute>
        <xsl:attribute name="Symmetric">false</xsl:attribute>
        <xsl:element name="DisplayName">IEC 61970 ActivePowerLimit.OperationalLimitType Reference</xsl:element>
        <References>
          <Reference ReferenceType="HasSubtype" IsForward="false">ns=1;s=Base CIM Reference</Reference>
        </References>
        <xsl:element name="InverseName">OperationalLimitType.ActivePowerLimit</xsl:element>
      </UAReferenceType>
      <UAReferenceType>
        <xsl:attribute name="NodeId">ns=1;s=ActivePowerLimit.OperationalLimitSet</xsl:attribute>
        <xsl:attribute name="BrowseName">1:ActivePowerLimit.OperationalLimitSet</xsl:attribute>
        <xsl:attribute name="IsAbstract">false</xsl:attribute>
        <xsl:attribute name="Symmetric">false</xsl:attribute>
        <xsl:element name="DisplayName">IEC 61970 ActivePowerLimit.OperationalLimitSet Reference</xsl:element>
        <References>
          <Reference ReferenceType="HasSubtype" IsForward="false">ns=1;s=Base CIM Reference</Reference>
        </References>
        <xsl:element name="InverseName">OperationalLimitSet.ActivePowerLimit</xsl:element>
      </UAReferenceType>
      <UAVariableType>
        <xsl:attribute name="NodeId">ns=1;s=ActivePowerLimit.value</xsl:attribute>
        <xsl:attribute name="BrowseName">1:ActivePowerLimit.value</xsl:attribute>
        <xsl:element name="DisplayName">IEC 61970 ActivePowerLimit.value Property Type</xsl:element>
        <xsl:element name="Description">IEC 61970 ActivePowerLimit.value Property Type</xsl:element>
        <References>
          <Reference ReferenceType="HasSubtype" IsForward="false">ns=1;s=Base CIM Property</Reference>
          <Reference ReferenceType="HasProperty" IsForward="false">ns=1;s=RM</Reference>
        </References>
      </UAVariableType>
      <!-- Create Active (Real) Power Limit Objects Folder -->
      <UAObject>
        <xsl:attribute name="NodeId">ns=1;s=RPLs</xsl:attribute>
        <xsl:attribute name="BrowseName">1:RPLs</xsl:attribute>
        <xsl:element name="DisplayName">IEC 61970 Active (Real) Power Limits</xsl:element>
        <References>
          <Reference ReferenceType="Organizes" IsForward="false">i=85</Reference>
          <Reference ReferenceType="HasTypeDefinition">i=61</Reference>
        </References>
      </UAObject>

      <!-- Apparent Power Limit Object Type-->
      <UAObjectType>
        <xsl:attribute name="NodeId">ns=1;s=APL</xsl:attribute>
        <xsl:attribute name="BrowseName">1:APL</xsl:attribute>
        <xsl:element name="DisplayName">IEC 61970 Apparent Power Limit Object Type</xsl:element>
        <xsl:element name="Description">IEC 61970 Apparent Power Limit Object Type</xsl:element>
        <References>
          <Reference ReferenceType="HasSubtype" IsForward="false">ns=1;s=IDO</Reference>
        </References>
      </UAObjectType>
      <UAReferenceType>
        <xsl:attribute name="NodeId">ns=1;s=OperationalLimit.OperationalLimitType</xsl:attribute>
        <xsl:attribute name="BrowseName">1:OperationalLimit.OperationalLimitType</xsl:attribute>
        <xsl:attribute name="IsAbstract">false</xsl:attribute>
        <xsl:attribute name="Symmetric">false</xsl:attribute>
        <xsl:element name="DisplayName">IEC 61970 OperationalLimit.OperationalLimitType Reference</xsl:element>
        <References>
          <Reference ReferenceType="HasSubtype" IsForward="false">ns=1;s=Base CIM Reference</Reference>
        </References>
        <xsl:element name="InverseName">OperationalLimitType.OperationalLimit</xsl:element>
      </UAReferenceType>
      <UAReferenceType>
        <xsl:attribute name="NodeId">ns=1;s=OperationalLimit.OperationalLimitSet</xsl:attribute>
        <xsl:attribute name="BrowseName">1:OperationalLimit.OperationalLimitSet</xsl:attribute>
        <xsl:attribute name="IsAbstract">false</xsl:attribute>
        <xsl:attribute name="Symmetric">false</xsl:attribute>
        <xsl:element name="DisplayName">IEC 61970 OperationalLimit.OperationalLimitSet Reference</xsl:element>
        <References>
          <Reference ReferenceType="HasSubtype" IsForward="false">ns=1;s=Base CIM Reference</Reference>
        </References>
        <xsl:element name="InverseName">OperationalLimitSet.OperationalLimit</xsl:element>
      </UAReferenceType>
      <UAVariableType>
        <xsl:attribute name="NodeId">ns=1;s=ApparentPowerLimit.value</xsl:attribute>
        <xsl:attribute name="BrowseName">1:ApparentPowerLimit.value</xsl:attribute>
        <xsl:element name="DisplayName">IEC 61970 ApparentPowerLimit.value Property Type</xsl:element>
        <xsl:element name="Description">IEC 61970 ApparentPowerLimit.value Property Type</xsl:element>
        <References>
          <Reference ReferenceType="HasSubtype" IsForward="false">ns=1;s=Base CIM Property</Reference>
          <Reference ReferenceType="HasProperty" IsForward="false">ns=1;s=RM</Reference>
        </References>
      </UAVariableType>
      <!-- Create Apparent Power Limit Objects Folder -->
      <UAObject>
        <xsl:attribute name="NodeId">ns=1;s=APLs</xsl:attribute>
        <xsl:attribute name="BrowseName">1:APLs</xsl:attribute>
        <xsl:element name="DisplayName">IEC 61970 Apparent Power Limits</xsl:element>
        <References>
          <Reference ReferenceType="Organizes" IsForward="false">i=85</Reference>
          <Reference ReferenceType="HasTypeDefinition">i=61</Reference>
        </References>
      </UAObject>

      <!-- Measurement Object Type -->
      <UAObjectType>
        <xsl:attribute name="NodeId">ns=1;s=M</xsl:attribute>
        <xsl:attribute name="BrowseName">1:M</xsl:attribute>
        <xsl:element name="DisplayName">IEC 61970 Measurement Object Type</xsl:element>
        <xsl:element name="Description">IEC 61970 Measurement Object Type</xsl:element>
        <References>
          <Reference ReferenceType="HasSubtype" IsForward="false">ns=1;s=IDO</Reference>
        </References>
      </UAObjectType>
      <UAReferenceType>
        <xsl:attribute name="NodeId">ns=1;s=Measurement.PowerSystemResource</xsl:attribute>
        <xsl:attribute name="BrowseName">1:Measurement.PowerSystemResource</xsl:attribute>
        <xsl:attribute name="IsAbstract">false</xsl:attribute>
        <xsl:attribute name="Symmetric">false</xsl:attribute>
        <xsl:element name="DisplayName">IEC 61970 Measurement.PowerSystemResource Reference</xsl:element>
        <References>
          <Reference ReferenceType="HasSubtype" IsForward="false">ns=1;s=Base CIM Reference</Reference>
        </References>
        <xsl:element name="InverseName">PowerSystemResource.Measurement</xsl:element>
      </UAReferenceType>
      <UAReferenceType>
        <xsl:attribute name="NodeId">ns=1;s=Measurement.Terminal</xsl:attribute>
        <xsl:attribute name="BrowseName">1:Measurement.Terminal</xsl:attribute>
        <xsl:attribute name="IsAbstract">false</xsl:attribute>
        <xsl:attribute name="Symmetric">false</xsl:attribute>
        <xsl:element name="DisplayName">IEC 61970 Measurement.Terminal Reference</xsl:element>
        <References>
          <Reference ReferenceType="HasSubtype" IsForward="false">ns=1;s=Base CIM Reference</Reference>
        </References>
        <xsl:element name="InverseName">Terminal.Measurement</xsl:element>
      </UAReferenceType>
      <UAVariableType>
        <xsl:attribute name="NodeId">ns=1;s=Measurement.measurementType</xsl:attribute>
        <xsl:attribute name="BrowseName">1:Measurement.measurementType</xsl:attribute>
        <xsl:element name="DisplayName">IEC 61970 Measurement.measurementType Property Type</xsl:element>
        <xsl:element name="Description">IEC 61970 Measurement.measurementType Property Type</xsl:element>
        <References>
          <Reference ReferenceType="HasSubtype" IsForward="false">ns=1;s=Base CIM Property</Reference>
          <Reference ReferenceType="HasProperty" IsForward="false">ns=1;s=M</Reference>
        </References>
      </UAVariableType>
      <UAVariableType>
        <xsl:attribute name="NodeId">ns=1;s=Measurement.unitSymbol</xsl:attribute>
        <xsl:attribute name="BrowseName">1:Measurement.unitSymbol</xsl:attribute>
        <xsl:element name="DisplayName">IEC 61970 Measurement.unitSymbol Property Type</xsl:element>
        <xsl:element name="Description">IEC 61970 Measurement.unitSymbol Property Type</xsl:element>
        <References>
          <Reference ReferenceType="HasSubtype" IsForward="false">ns=1;s=Base CIM Property</Reference>
          <Reference ReferenceType="HasProperty" IsForward="false">ns=1;s=M</Reference>
        </References>
      </UAVariableType>
      <UAVariableType>
        <xsl:attribute name="NodeId">ns=1;s=Measurement.unitMultiplier</xsl:attribute>
        <xsl:attribute name="BrowseName">1:Measurement.unitMultiplier</xsl:attribute>
        <xsl:element name="DisplayName">IEC 61970 Measurement.unitMultiplier Property Type</xsl:element>
        <xsl:element name="Description">IEC 61970 Measurement.unitMultiplier Property Type</xsl:element>
        <References>
          <Reference ReferenceType="HasSubtype" IsForward="false">ns=1;s=Base CIM Property</Reference>
          <Reference ReferenceType="HasProperty" IsForward="false">ns=1;s=M</Reference>
        </References>
      </UAVariableType>
      
      <!-- Discrete Object Type -->
      <UAObjectType>
        <xsl:attribute name="NodeId">ns=1;s=D</xsl:attribute>
        <xsl:attribute name="BrowseName">1:D</xsl:attribute>
        <xsl:element name="DisplayName">IEC 61970 Discrete Object Type</xsl:element>
        <xsl:element name="Description">IEC 61970 Discrete Object Type</xsl:element>
        <References>
          <Reference ReferenceType="HasSubtype" IsForward="false">ns=1;s=M</Reference>
        </References>
      </UAObjectType>
      <UAVariableType>
        <xsl:attribute name="NodeId">ns=1;s=Discrete.normalValue</xsl:attribute>
        <xsl:attribute name="BrowseName">1:Discrete.normalValue</xsl:attribute>
        <xsl:element name="DisplayName">IEC 61970 Discrete.normalValue Property Type</xsl:element>
        <xsl:element name="Description">IEC 61970 Discrete.normalValue Property Type</xsl:element>
        <References>
          <Reference ReferenceType="HasSubtype" IsForward="false">ns=1;s=Base CIM Property</Reference>
          <Reference ReferenceType="HasProperty" IsForward="false">ns=1;s=D</Reference>
        </References>
      </UAVariableType>
      <!-- Create Discrete Objects Folder -->
      <UAObject>
        <xsl:attribute name="NodeId">ns=1;s=Ds</xsl:attribute>
        <xsl:attribute name="BrowseName">1:Ds</xsl:attribute>
        <xsl:element name="DisplayName">IEC 61970 Discretes</xsl:element>
        <References>
          <Reference ReferenceType="Organizes" IsForward="false">i=85</Reference>
          <Reference ReferenceType="HasTypeDefinition">i=61</Reference>
        </References>
      </UAObject>

      <!-- Analog Object Type -->
      <UAObjectType>
        <xsl:attribute name="NodeId">ns=1;s=A</xsl:attribute>
        <xsl:attribute name="BrowseName">1:A</xsl:attribute>
        <xsl:element name="DisplayName">IEC 61970 Analog Object Type</xsl:element>
        <xsl:element name="Description">IEC 61970 Analog Object Type</xsl:element>
        <References>
          <Reference ReferenceType="HasSubtype" IsForward="false">ns=1;s=M</Reference>
        </References>
      </UAObjectType>
      <UAVariableType>
        <xsl:attribute name="NodeId">ns=1;s=Analog.maxValue</xsl:attribute>
        <xsl:attribute name="BrowseName">1:Analog.maxValue</xsl:attribute>
        <xsl:element name="DisplayName">IEC 61970 Analog.maxValue Property Type</xsl:element>
        <xsl:element name="Description">IEC 61970 Analog.maxValue Property Type</xsl:element>
        <References>
          <Reference ReferenceType="HasSubtype" IsForward="false">ns=1;s=Base CIM Property</Reference>
          <Reference ReferenceType="HasProperty" IsForward="false">ns=1;s=A</Reference>
        </References>
      </UAVariableType>
      <UAVariableType>
        <xsl:attribute name="NodeId">ns=1;s=Analog.minValue</xsl:attribute>
        <xsl:attribute name="BrowseName">1:Analog.minValue</xsl:attribute>
        <xsl:element name="DisplayName">IEC 61970 Analog.minValue Property Type</xsl:element>
        <xsl:element name="Description">IEC 61970 Analog.minValue Property Type</xsl:element>
        <References>
          <Reference ReferenceType="HasSubtype" IsForward="false">ns=1;s=Base CIM Property</Reference>
          <Reference ReferenceType="HasProperty" IsForward="false">ns=1;s=A</Reference>
        </References>
      </UAVariableType>
      <UAVariableType>
        <xsl:attribute name="NodeId">ns=1;s=Analog.normalValue</xsl:attribute>
        <xsl:attribute name="BrowseName">1:Analog.normalValue</xsl:attribute>
        <xsl:element name="DisplayName">IEC 61970 Analog.normalValue Property Type</xsl:element>
        <xsl:element name="Description">IEC 61970 Analog.normalValue Property Type</xsl:element>
        <References>
          <Reference ReferenceType="HasSubtype" IsForward="false">ns=1;s=Base CIM Property</Reference>
          <Reference ReferenceType="HasProperty" IsForward="false">ns=1;s=A</Reference>
        </References>
      </UAVariableType>
      <UAVariableType>
        <xsl:attribute name="NodeId">ns=1;s=Analog.positiveFlowIn</xsl:attribute>
        <xsl:attribute name="BrowseName">1:Analog.positiveFlowIn</xsl:attribute>
        <xsl:element name="DisplayName">IEC 61970 Analog.positiveFlowIn Property Type</xsl:element>
        <xsl:element name="Description">IEC 61970 Analog.positiveFlowIn Property Type</xsl:element>
        <References>
          <Reference ReferenceType="HasSubtype" IsForward="false">ns=1;s=Base CIM Property</Reference>
          <Reference ReferenceType="HasProperty" IsForward="false">ns=1;s=A</Reference>
        </References>
      </UAVariableType>
      <!-- Create Analog Objects Folder -->
      <UAObject>
        <xsl:attribute name="NodeId">ns=1;s=As</xsl:attribute>
        <xsl:attribute name="BrowseName">1:As</xsl:attribute>
        <xsl:element name="DisplayName">IEC 61970 Analogs</xsl:element>
        <References>
          <Reference ReferenceType="Organizes" IsForward="false">i=85</Reference>
          <Reference ReferenceType="HasTypeDefinition">i=61</Reference>
        </References>
      </UAObject>

      <!-- Measurement Value Object Type -->
      <UAObjectType>
        <xsl:attribute name="NodeId">ns=1;s=MV</xsl:attribute>
        <xsl:attribute name="BrowseName">1:MV</xsl:attribute>
        <xsl:element name="DisplayName">IEC 61970 Measurement Value Object Type</xsl:element>
        <xsl:element name="Description">IEC 61970 Measurement Value Object Type</xsl:element>
        <References>
          <Reference ReferenceType="HasSubtype" IsForward="false">ns=1;s=IDO</Reference>
        </References>
      </UAObjectType>
      
      <!-- Discrete Value Object Type -->
      <UAObjectType>
        <xsl:attribute name="NodeId">ns=1;s=DV</xsl:attribute>
        <xsl:attribute name="BrowseName">1:DV</xsl:attribute>
        <xsl:element name="DisplayName">IEC 61970 Discrete Value Object Type</xsl:element>
        <xsl:element name="Description">IEC 61970 Discrete Value Object Type</xsl:element>
        <References>
          <Reference ReferenceType="HasSubtype" IsForward="false">ns=1;s=MV</Reference>
        </References>
      </UAObjectType>
      <UAReferenceType>
        <xsl:attribute name="NodeId">ns=1;s=DiscreteValue.Discrete</xsl:attribute>
        <xsl:attribute name="BrowseName">1:DiscreteValue.Discrete</xsl:attribute>
        <xsl:attribute name="IsAbstract">false</xsl:attribute>
        <xsl:attribute name="Symmetric">false</xsl:attribute>
        <xsl:element name="DisplayName">IEC 61970 DiscreteValue.Discrete Reference</xsl:element>
        <References>
          <Reference ReferenceType="HasSubtype" IsForward="false">ns=1;s=Base CIM Reference</Reference>
        </References>
        <xsl:element name="InverseName">Discrete.DiscreteValue</xsl:element>
      </UAReferenceType>
      <!-- Create Discrete Value Objects Folder -->
      <UAObject>
        <xsl:attribute name="NodeId">ns=1;s=DVs</xsl:attribute>
        <xsl:attribute name="BrowseName">1:DVs</xsl:attribute>
        <xsl:element name="DisplayName">IEC 61970 Discrete Values</xsl:element>
        <References>
          <Reference ReferenceType="Organizes" IsForward="false">i=85</Reference>
          <Reference ReferenceType="HasTypeDefinition">i=61</Reference>
        </References>
      </UAObject>

      <!-- Analog Value Object Type -->
      <UAObjectType>
        <xsl:attribute name="NodeId">ns=1;s=AV</xsl:attribute>
        <xsl:attribute name="BrowseName">1:AV</xsl:attribute>
        <xsl:element name="DisplayName">IEC 61970 Analog Value Object Type</xsl:element>
        <xsl:element name="Description">IEC 61970 Analog Value Object Type</xsl:element>
        <References>
          <Reference ReferenceType="HasSubtype" IsForward="false">ns=1;s=MV</Reference>
        </References>
      </UAObjectType>
      <UAReferenceType>
        <xsl:attribute name="NodeId">ns=1;s=AnalogValue.Analog</xsl:attribute>
        <xsl:attribute name="BrowseName">1:AnalogValue.Analog</xsl:attribute>
        <xsl:attribute name="IsAbstract">false</xsl:attribute>
        <xsl:attribute name="Symmetric">false</xsl:attribute>
        <xsl:element name="DisplayName">IEC 61970 AnalogValue.Analog Reference</xsl:element>
        <References>
          <Reference ReferenceType="HasSubtype" IsForward="false">ns=1;s=Base CIM Reference</Reference>
        </References>
        <xsl:element name="InverseName">Analog.AnalogValue</xsl:element>
      </UAReferenceType>
      <!-- Create Analog Value Objects Folder -->
      <UAObject>
        <xsl:attribute name="NodeId">ns=1;s=AVs</xsl:attribute>
        <xsl:attribute name="BrowseName">1:AVs</xsl:attribute>
        <xsl:element name="DisplayName">IEC 61970 Analog Values</xsl:element>
        <References>
          <Reference ReferenceType="Organizes" IsForward="false">i=85</Reference>
          <Reference ReferenceType="HasTypeDefinition">i=61</Reference>
        </References>
      </UAObject>

      <!-- Measurement Value Source Object Type -->
      <UAObjectType>
        <xsl:attribute name="NodeId">ns=1;s=MVS</xsl:attribute>
        <xsl:attribute name="BrowseName">1:MVS</xsl:attribute>
        <xsl:element name="DisplayName">IEC 61970 Measurement Value Source Object Type</xsl:element>
        <xsl:element name="Description">IEC 61970 Measurement Value Source Object Type</xsl:element>
        <References>
          <Reference ReferenceType="HasSubtype" IsForward="false">ns=1;s=IDO</Reference>
        </References>
      </UAObjectType>
      <UAReferenceType>
        <xsl:attribute name="NodeId">ns=1;s=MeasurementValue.MeasurementValueSource</xsl:attribute>
        <xsl:attribute name="BrowseName">1:MeasurementValue.MeasurementValueSource</xsl:attribute>
        <xsl:attribute name="IsAbstract">false</xsl:attribute>
        <xsl:attribute name="Symmetric">false</xsl:attribute>
        <xsl:element name="DisplayName">IEC 61970 MeasurementValue.MeasurementValueSource Reference</xsl:element>
        <References>
          <Reference ReferenceType="HasSubtype" IsForward="false">ns=1;s=Base CIM Reference</Reference>
        </References>
        <xsl:element name="InverseName">MeasurementValueSource.MeasurementValue</xsl:element>
      </UAReferenceType>
      <!-- Create Measurement Value Source Objects Folder -->
      <UAObject>
        <xsl:attribute name="NodeId">ns=1;s=MVSs</xsl:attribute>
        <xsl:attribute name="BrowseName">1:MVSs</xsl:attribute>
        <xsl:element name="DisplayName">IEC 61970 Measurement Value Sources</xsl:element>
        <References>
          <Reference ReferenceType="Organizes" IsForward="false">i=85</Reference>
          <Reference ReferenceType="HasTypeDefinition">i=61</Reference>
        </References>
      </UAObject>

<!-- *************************** -->
<!-- Parse CIM XML Instance File -->
<!-- **************************  -->      
<!-- *************************** -->
      
      <!-- Parse Day Type Objects-->
      <xsl:for-each select="rdf:RDF/cim:DayType">
        <UAObject>
          <xsl:attribute name="NodeId" namespace="" select="fn:concat('ns=1;s=', fn:string(@rdf:ID))"/>
          <xsl:attribute name="BrowseName" namespace="" select="fn:concat('1:',fn:string(cim:IdentifiedObject.name))"/>
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
        <UAVariable>
          <xsl:attribute name="NodeId" namespace=""  select="fn:concat(fn:concat('ns=1;s=', fn:string(@rdf:ID)), xs:string(fn:node-name(cim:IdentifiedObject.aliasName)))"/>
          <xsl:attribute name="BrowseName" namespace="" select="fn:concat('1:', xs:string(fn:node-name(cim:IdentifiedObject.aliasName)))"/>
          <xsl:element name="DisplayName">IdentifiedObject.aliasName</xsl:element>
          <References>
            <Reference ReferenceType="HasTypeDefinition" IsForward="true">ns=1;s=IdentifiedObject.aliasName</Reference>
            <Reference>
              <xsl:attribute name="ReferenceType">HasProperty</xsl:attribute>
              <xsl:attribute name="IsForward">false</xsl:attribute>
              <xsl:sequence select="fn:concat('ns=1;s=', fn:string(@rdf:ID))"/>
            </Reference>
          </References>
          <Value>
            <uax:String>
              <xsl:value-of select="fn:string(cim:IdentifiedObject.aliasName)"/>
            </uax:String>
          </Value>
        </UAVariable>
      </xsl:for-each>

      <!-- Parse GeographicalRegion Objects-->
      <xsl:for-each select="rdf:RDF/cim:GeographicalRegion">
        <UAObject>
          <xsl:attribute name="NodeId" namespace="" select="fn:concat('ns=1;s=', fn:string(@rdf:ID))"/>
          <xsl:attribute name="BrowseName" namespace="" select="fn:concat('1:',fn:string(cim:IdentifiedObject.name))"/>
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
        <UAVariable>
          <xsl:attribute name="NodeId" namespace=""  select="fn:concat(fn:concat('ns=1;s=', fn:string(@rdf:ID)), xs:string(fn:node-name(cim:IdentifiedObject.aliasName)))"/>
          <xsl:attribute name="BrowseName" namespace="" select="fn:concat('1:', xs:string(fn:node-name(cim:IdentifiedObject.aliasName)))"/>
          <xsl:element name="DisplayName">IdentifiedObject.aliasName</xsl:element>
          <References>
            <Reference ReferenceType="HasTypeDefinition" IsForward="true">ns=1;s=IdentifiedObject.aliasName</Reference>
            <Reference>
              <xsl:attribute name="ReferenceType">HasProperty</xsl:attribute>
              <xsl:attribute name="IsForward">false</xsl:attribute>
              <xsl:sequence select="fn:concat('ns=1;s=', fn:string(@rdf:ID))"/>
            </Reference>
          </References>
          <Value>
            <uax:String>
              <xsl:value-of select="fn:string(cim:IdentifiedObject.aliasName)"/>
            </uax:String>
          </Value>
        </UAVariable>
      </xsl:for-each>

      <!-- Parse Sub Geographical Region Objects-->
      <xsl:for-each select="rdf:RDF/cim:SubGeographicalRegion">
        <UAObject>
          <xsl:attribute name="NodeId" namespace="" select="fn:concat('ns=1;s=', fn:string(@rdf:ID))"/>
          <xsl:attribute name="BrowseName" namespace="" select="fn:concat('1:',fn:string(cim:IdentifiedObject.name))"/>
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
              <xsl:attribute	name="ReferenceType">ns=1;s=SubGeographicalRegion.Region</xsl:attribute>
              <xsl:attribute name="IsForward">true</xsl:attribute>
              <xsl:sequence select="fn:concat('ns=1;s=', fn:substring(cim:SubGeographicalRegion.Region/@rdf:resource,2,33))"/>
            </Reference>
          </References>
        </UAObject>
        <UAVariable>
          <xsl:attribute name="NodeId" namespace=""  select="fn:concat(fn:concat('ns=1;s=', fn:string(@rdf:ID)), xs:string(fn:node-name(cim:IdentifiedObject.aliasName)))"/>
          <xsl:attribute name="BrowseName" namespace="" select="fn:concat('1:', xs:string(fn:node-name(cim:IdentifiedObject.aliasName)))"/>
          <xsl:element name="DisplayName">IdentifiedObject.aliasName</xsl:element>
          <References>
            <Reference ReferenceType="HasTypeDefinition" IsForward="true">ns=1;s=IdentifiedObject.aliasName</Reference>
            <Reference>
              <xsl:attribute name="ReferenceType">HasProperty</xsl:attribute>
              <xsl:attribute name="IsForward">false</xsl:attribute>
              <xsl:sequence select="fn:concat('ns=1;s=', fn:string(@rdf:ID))"/>
            </Reference>
          </References>
          <Value>
            <uax:String>
              <xsl:value-of select="fn:string(cim:IdentifiedObject.aliasName)"/>
            </uax:String>
          </Value>
        </UAVariable>
      </xsl:for-each>

      <!-- Parse Base Voltage Objects-->			
			<xsl:for-each select="rdf:RDF/cim:BaseVoltage">
				<UAObject>
					<xsl:attribute name="NodeId" namespace="" select="fn:concat('ns=1;s=',fn:string(@rdf:ID))"/>
					<xsl:attribute name="BrowseName" namespace="" select="fn:concat('1:',fn:string(cim:IdentifiedObject.name))"/>
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
        <UAVariable>
					<xsl:attribute name="NodeId" namespace=""  select="fn:concat('ns=1;s=', fn:concat( fn:string(@rdf:ID),xs:string(fn:node-name(cim:BaseVoltage.nominalVoltage))))"/>
					<xsl:attribute name="BrowseName" namespace="" select="fn:concat('1:', xs:string(fn:node-name(cim:BaseVoltage.nominalVoltage)))"/>
					<xsl:element name="DisplayName">BaseVoltage.nominalVoltage</xsl:element>					
					<References>
						<Reference ReferenceType="HasTypeDefinition" IsForward="true">ns=1;s=BaseVoltage.nominalVoltage</Reference>
						<Reference>
							<xsl:attribute name="ReferenceType">HasProperty</xsl:attribute>
							<xsl:attribute name="IsForward">false</xsl:attribute>
							<xsl:sequence select="fn:concat('ns=1;s=', fn:string(@rdf:ID))"/>
						</Reference>
					</References>
          <Value>
            <uax:String>
              <xsl:value-of select="fn:string(cim:BaseVoltage.nominalVoltage)"/>
            </uax:String>
          </Value>
        </UAVariable>
			</xsl:for-each>

      <!-- Parse Line Objects-->
      <xsl:for-each select="rdf:RDF/cim:Line">
        <UAObject>
          <xsl:attribute name="NodeId" namespace="" select="fn:concat('ns=1;s=', fn:string(@rdf:ID))"/>
          <xsl:attribute name="BrowseName" namespace="" select="fn:concat('1:',fn:string(cim:IdentifiedObject.name))"/>
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
              <xsl:attribute	name="ReferenceType">ns=1;s=Line.Region</xsl:attribute>
              <xsl:attribute name="IsForward">true</xsl:attribute>
              <xsl:sequence select="fn:concat('ns=1;s=', fn:substring(cim:Line.Region/@rdf:resource,2,33))"/>
            </Reference>
          </References>
        </UAObject>
        <UAVariable>
          <xsl:attribute name="NodeId" namespace=""  select="fn:concat(fn:concat('ns=1;s=', fn:string(@rdf:ID)), xs:string(fn:node-name(cim:IdentifiedObject.aliasName)))"/>
          <xsl:attribute name="BrowseName" namespace="" select="fn:concat('1:', xs:string(fn:node-name(cim:IdentifiedObject.aliasName)))"/>
          <xsl:element name="DisplayName">IdentifiedObject.aliasName</xsl:element>
          <References>
            <Reference ReferenceType="HasTypeDefinition" IsForward="true">ns=1;s=IdentifiedObject.aliasName</Reference>
            <Reference>
              <xsl:attribute name="ReferenceType">HasProperty</xsl:attribute>
              <xsl:attribute name="IsForward">false</xsl:attribute>
              <xsl:sequence select="fn:concat('ns=1;s=', fn:string(@rdf:ID))"/>
            </Reference>
          </References>
          <Value>
            <uax:String>
              <xsl:value-of select="fn:string(cim:IdentifiedObject.aliasName)"/>
            </uax:String>
          </Value>
        </UAVariable>
      </xsl:for-each>

      <!-- Parse Synchronous Machine Objects-->
      <xsl:for-each select="rdf:RDF/cim:SynchronousMachine">
        <UAObject>
          <xsl:attribute name="NodeId" namespace="" select="fn:concat('ns=1;s=', fn:string(@rdf:ID))"/>
          <xsl:attribute name="BrowseName" namespace="" select="fn:concat('1:',fn:string(cim:IdentifiedObject.name))"/>
          <DisplayName>
            <xsl:sequence select="fn:string(cim:IdentifiedObject.name)"/>
          </DisplayName>
          <Description>
            <xsl:sequence select="fn:concat(fn:string(cim:IdentifiedObject.name), ' Synchronous Machine')"/>
          </Description>
          <References>
            <Reference ReferenceType="Organizes" IsForward="false">ns=1;s=SMs</Reference>
            <Reference ReferenceType="HasTypeDefinition" IsForward="true">ns=1;s=SM</Reference>
            <Reference>
              <xsl:attribute	name="ReferenceType">ns=1;s=RotatingMachine.GeneratingUnit</xsl:attribute>
              <xsl:attribute name="IsForward">true</xsl:attribute>
              <xsl:sequence select="fn:concat('ns=1;s=', fn:substring(cim:RotatingMachine.GeneratingUnit/@rdf:resource,2,33))"/>
            </Reference>
            <Reference>
              <xsl:attribute	name="ReferenceType">ns=1;s=Equipment.EquipmentContainer</xsl:attribute>
              <xsl:attribute name="IsForward">true</xsl:attribute>
              <xsl:sequence select="fn:concat('ns=1;s=', fn:substring(cim:Equipment.EquipmentContainer/@rdf:resource,2,33))"/>
            </Reference>
            <Reference>
              <xsl:attribute	name="ReferenceType">ns=1;s=ConductingEquipment.BaseVoltage</xsl:attribute>
              <xsl:attribute name="IsForward">true</xsl:attribute>
              <xsl:sequence select="fn:concat('ns=1;s=', fn:substring(cim:ConductingEquipment.BaseVoltage/@rdf:resource,2,33))"/>
            </Reference>
          </References>
        </UAObject>
        <UAVariable>
          <xsl:attribute name="NodeId" namespace=""  select="fn:concat(fn:concat('ns=1;s=', fn:string(@rdf:ID)), xs:string(fn:node-name(cim:IdentifiedObject.aliasName)))"/>
          <xsl:attribute name="BrowseName" namespace="" select="fn:concat('1:', xs:string(fn:node-name(cim:IdentifiedObject.aliasName)))"/>
          <xsl:element name="DisplayName">IdentifiedObject.aliasName</xsl:element>
          <References>
            <Reference ReferenceType="HasTypeDefinition" IsForward="true">ns=1;s=IdentifiedObject.aliasName</Reference>
            <Reference>
              <xsl:attribute name="ReferenceType">HasProperty</xsl:attribute>
              <xsl:attribute name="IsForward">false</xsl:attribute>
              <xsl:sequence select="fn:concat('ns=1;s=', fn:string(@rdf:ID))"/>
            </Reference>
          </References>
          <Value>
            <uax:String>
              <xsl:value-of select="fn:string(cim:IdentifiedObject.aliasName)"/>
            </uax:String>
          </Value>
        </UAVariable>
        <UAVariable>
          <xsl:attribute name="NodeId" namespace=""  select="fn:concat('ns=1;s=', fn:concat( fn:string(@rdf:ID),xs:string(fn:node-name(cim:RotatingMachine.ratedS))))"/>
          <xsl:attribute name="BrowseName" namespace="" select="fn:concat('1:', xs:string(fn:node-name(cim:RotatingMachine.ratedS)))"/>
          <xsl:element name="DisplayName">RotatingMachine.ratedS</xsl:element>
          <References>
            <Reference ReferenceType="HasTypeDefinition" IsForward="true">ns=1;s=RotatingMachine.ratedS</Reference>
            <Reference>
              <xsl:attribute name="ReferenceType">HasProperty</xsl:attribute>
              <xsl:attribute name="IsForward">false</xsl:attribute>
              <xsl:sequence select="fn:concat('ns=1;s=', fn:string(@rdf:ID))"/>
            </Reference>
          </References>
          <Value>
            <uax:String>
              <xsl:value-of select="fn:string(cim:RotatingMachine.ratedS)"/>
            </uax:String>
          </Value>
        </UAVariable>
        <UAVariable>
          <xsl:attribute name="NodeId" namespace=""  select="fn:concat('ns=1;s=', fn:concat( fn:string(@rdf:ID),xs:string(fn:node-name(cim:SynchronousMachine.maxQ))))"/>
          <xsl:attribute name="BrowseName" namespace="" select="fn:concat('1:', xs:string(fn:node-name(cim:SynchronousMachine.maxQ)))"/>
          <xsl:element name="DisplayName">SynchronousMachine.maxQ</xsl:element>
          <References>
            <Reference ReferenceType="HasTypeDefinition" IsForward="true">ns=1;s=SynchronousMachine.maxQ</Reference>
            <Reference>
              <xsl:attribute name="ReferenceType">HasProperty</xsl:attribute>
              <xsl:attribute name="IsForward">false</xsl:attribute>
              <xsl:sequence select="fn:concat('ns=1;s=', fn:string(@rdf:ID))"/>
            </Reference>
          </References>
          <Value>
            <uax:String>
              <xsl:value-of select="fn:string(cim:SynchronousMachine.maxQ)"/>
            </uax:String>
          </Value>
        </UAVariable>
        <UAVariable>
          <xsl:attribute name="NodeId" namespace=""  select="fn:concat('ns=1;s=', fn:concat( fn:string(@rdf:ID),xs:string(fn:node-name(cim:SynchronousMachine.minQ))))"/>
          <xsl:attribute name="BrowseName" namespace="" select="fn:concat('1:', xs:string(fn:node-name(cim:SynchronousMachine.minQ)))"/>
          <xsl:element name="DisplayName">SynchronousMachine.minQ</xsl:element>
          <References>
            <Reference ReferenceType="HasTypeDefinition" IsForward="true">ns=1;s=SynchronousMachine.minQ</Reference>
            <Reference>
              <xsl:attribute name="ReferenceType">HasProperty</xsl:attribute>
              <xsl:attribute name="IsForward">false</xsl:attribute>
              <xsl:sequence select="fn:concat('ns=1;s=', fn:string(@rdf:ID))"/>
            </Reference>
          </References>
          <Value>
            <uax:String>
              <xsl:value-of select="fn:string(cim:SynchronousMachine.minQ)"/>
            </uax:String>
          </Value>
        </UAVariable>
        <UAVariable>
          <xsl:attribute name="NodeId" namespace=""  select="fn:concat('ns=1;s=', fn:concat( fn:string(@rdf:ID),xs:string(fn:node-name(cim:SynchronousMachine.r))))"/>
          <xsl:attribute name="BrowseName" namespace="" select="fn:concat('1:', xs:string(fn:node-name(cim:SynchronousMachine.r)))"/>
          <xsl:element name="DisplayName">SynchronousMachine.r</xsl:element>
          <References>
            <Reference ReferenceType="HasTypeDefinition" IsForward="true">ns=1;s=SynchronousMachine.r</Reference>
            <Reference>
              <xsl:attribute name="ReferenceType">HasProperty</xsl:attribute>
              <xsl:attribute name="IsForward">false</xsl:attribute>
              <xsl:sequence select="fn:concat('ns=1;s=', fn:string(@rdf:ID))"/>
            </Reference>
          </References>
          <Value>
            <uax:String>
              <xsl:value-of select="fn:string(cim:SynchronousMachine.r)"/>
            </uax:String>
          </Value>
        </UAVariable>
        <UAVariable>
          <xsl:attribute name="NodeId" namespace=""  select="fn:concat('ns=1;s=', fn:concat( fn:string(@rdf:ID),xs:string(fn:node-name(cim:SynchronousMachine.r0))))"/>
          <xsl:attribute name="BrowseName" namespace="" select="fn:concat('1:', xs:string(fn:node-name(cim:SynchronousMachine.r0)))"/>
          <xsl:element name="DisplayName">SynchronousMachine.r0</xsl:element>
          <References>
            <Reference ReferenceType="HasTypeDefinition" IsForward="true">ns=1;s=SynchronousMachine.r0</Reference>
            <Reference>
              <xsl:attribute name="ReferenceType">HasProperty</xsl:attribute>
              <xsl:attribute name="IsForward">false</xsl:attribute>
              <xsl:sequence select="fn:concat('ns=1;s=', fn:string(@rdf:ID))"/>
            </Reference>
          </References>
          <Value>
            <uax:String>
              <xsl:value-of select="fn:string(cim:SynchronousMachine.r0)"/>
            </uax:String>
          </Value>
        </UAVariable>
        <UAVariable>
          <xsl:attribute name="NodeId" namespace=""  select="fn:concat('ns=1;s=', fn:concat( fn:string(@rdf:ID),xs:string(fn:node-name(cim:SynchronousMachine.r2))))"/>
          <xsl:attribute name="BrowseName" namespace="" select="fn:concat('1:', xs:string(fn:node-name(cim:SynchronousMachine.r2)))"/>
          <xsl:element name="DisplayName">SynchronousMachine.r2</xsl:element>
          <References>
            <Reference ReferenceType="HasTypeDefinition" IsForward="true">ns=1;s=SynchronousMachine.r2</Reference>
            <Reference>
              <xsl:attribute name="ReferenceType">HasProperty</xsl:attribute>
              <xsl:attribute name="IsForward">false</xsl:attribute>
              <xsl:sequence select="fn:concat('ns=1;s=', fn:string(@rdf:ID))"/>
            </Reference>
          </References>
          <Value>
            <uax:String>
              <xsl:value-of select="fn:string(cim:SynchronousMachine.r2)"/>
            </uax:String>
          </Value>
        </UAVariable>
        <UAVariable>
          <xsl:attribute name="NodeId" namespace=""  select="fn:concat('ns=1;s=', fn:concat( fn:string(@rdf:ID),xs:string(fn:node-name(cim:SynchronousMachine.x))))"/>
          <xsl:attribute name="BrowseName" namespace="" select="fn:concat('1:', xs:string(fn:node-name(cim:SynchronousMachine.x)))"/>
          <xsl:element name="DisplayName">SynchronousMachine.x</xsl:element>
          <References>
            <Reference ReferenceType="HasTypeDefinition" IsForward="true">ns=1;s=SynchronousMachine.x</Reference>
            <Reference>
              <xsl:attribute name="ReferenceType">HasProperty</xsl:attribute>
              <xsl:attribute name="IsForward">false</xsl:attribute>
              <xsl:sequence select="fn:concat('ns=1;s=', fn:string(@rdf:ID))"/>
            </Reference>
          </References>
          <Value>
            <uax:String>
              <xsl:value-of select="fn:string(cim:SynchronousMachine.x)"/>
            </uax:String>
          </Value>
        </UAVariable>
        <UAVariable>
          <xsl:attribute name="NodeId" namespace=""  select="fn:concat('ns=1;s=', fn:concat( fn:string(@rdf:ID),xs:string(fn:node-name(cim:SynchronousMachine.x0))))"/>
          <xsl:attribute name="BrowseName" namespace="" select="fn:concat('1:', xs:string(fn:node-name(cim:SynchronousMachine.x0)))"/>
          <xsl:element name="DisplayName">SynchronousMachine.x0</xsl:element>
          <References>
            <Reference ReferenceType="HasTypeDefinition" IsForward="true">ns=1;s=SynchronousMachine.x0</Reference>
            <Reference>
              <xsl:attribute name="ReferenceType">HasProperty</xsl:attribute>
              <xsl:attribute name="IsForward">false</xsl:attribute>
              <xsl:sequence select="fn:concat('ns=1;s=', fn:string(@rdf:ID))"/>
            </Reference>
          </References>
          <Value>
            <uax:String>
              <xsl:value-of select="fn:string(cim:SynchronousMachine.x0)"/>
            </uax:String>
          </Value>
        </UAVariable>
        <UAVariable>
          <xsl:attribute name="NodeId" namespace=""  select="fn:concat('ns=1;s=', fn:concat( fn:string(@rdf:ID),xs:string(fn:node-name(cim:SynchronousMachine.x2))))"/>
          <xsl:attribute name="BrowseName" namespace="" select="fn:concat('1:', xs:string(fn:node-name(cim:SynchronousMachine.x2)))"/>
          <xsl:element name="DisplayName">SynchronousMachine.x2</xsl:element>
          <References>
            <Reference ReferenceType="HasTypeDefinition" IsForward="true">ns=1;s=SynchronousMachine.x2</Reference>
            <Reference>
              <xsl:attribute name="ReferenceType">HasProperty</xsl:attribute>
              <xsl:attribute name="IsForward">false</xsl:attribute>
              <xsl:sequence select="fn:concat('ns=1;s=', fn:string(@rdf:ID))"/>
            </Reference>
          </References>
          <Value>
            <uax:String>
              <xsl:value-of select="fn:string(cim:SynchronousMachine.x2)"/>
            </uax:String>
          </Value>
        </UAVariable>
        <UAVariable>
          <xsl:attribute name="NodeId" namespace=""  select="fn:concat('ns=1;s=', fn:concat( fn:string(@rdf:ID),xs:string(fn:node-name(cim:SynchronousMachine.operatingMode))))"/>
          <xsl:attribute name="BrowseName" namespace="" select="fn:concat('1:', xs:string(fn:node-name(cim:SynchronousMachine.operatingMode)))"/>
          <xsl:element name="DisplayName">SynchronousMachine.operatingMode</xsl:element>
          <References>
            <Reference ReferenceType="HasTypeDefinition" IsForward="true">ns=1;s=SynchronousMachine.operatingMode</Reference>
            <Reference>
              <xsl:attribute name="ReferenceType">HasProperty</xsl:attribute>
              <xsl:attribute name="IsForward">false</xsl:attribute>
              <xsl:sequence select="fn:concat('ns=1;s=', fn:string(@rdf:ID))"/>
            </Reference>
          </References>
          <Value>
            <uax:String>
              <xsl:value-of select="fn:string(cim:SynchronousMachine.operatingMode/@rdf:resource)"/>
            </uax:String>
          </Value>
        </UAVariable>
        <UAVariable>
          <xsl:attribute name="NodeId" namespace=""  select="fn:concat('ns=1;s=', fn:concat( fn:string(@rdf:ID),xs:string(fn:node-name(cim:SynchronousMachine.type))))"/>
          <xsl:attribute name="BrowseName" namespace="" select="fn:concat('1:', xs:string(fn:node-name(cim:SynchronousMachine.type)))"/>
          <xsl:element name="DisplayName">SynchronousMachine.type</xsl:element>
          <References>
            <Reference ReferenceType="HasTypeDefinition" IsForward="true">ns=1;s=SynchronousMachine.type</Reference>
            <Reference>
              <xsl:attribute name="ReferenceType">HasProperty</xsl:attribute>
              <xsl:attribute name="IsForward">false</xsl:attribute>
              <xsl:sequence select="fn:concat('ns=1;s=', fn:string(@rdf:ID))"/>
            </Reference>
          </References>
          <Value>
            <uax:String>
              <xsl:value-of select="fn:string(cim:SynchronousMachine.type/@rdf:resource)"/>
            </uax:String>
          </Value>
        </UAVariable>
        <UAVariable>
          <xsl:attribute name="NodeId" namespace=""  select="fn:concat('ns=1;s=', fn:concat( fn:string(@rdf:ID),xs:string(fn:node-name(cim:SynchronousMachine.referencePriority))))"/>
          <xsl:attribute name="BrowseName" namespace="" select="fn:concat('1:', xs:string(fn:node-name(cim:SynchronousMachine.referencePriority)))"/>
          <xsl:element name="DisplayName">SynchronousMachine.referencePriority</xsl:element>
          <References>
            <Reference ReferenceType="HasTypeDefinition" IsForward="true">ns=1;s=SynchronousMachine.referencePriority</Reference>
            <Reference>
              <xsl:attribute name="ReferenceType">HasProperty</xsl:attribute>
              <xsl:attribute name="IsForward">false</xsl:attribute>
              <xsl:sequence select="fn:concat('ns=1;s=', fn:string(@rdf:ID))"/>
            </Reference>
          </References>
          <Value>
            <uax:String>
              <xsl:value-of select="fn:string(cim:SynchronousMachine.referencePriority)"/>
            </uax:String>
          </Value>
        </UAVariable>
      </xsl:for-each>

      <!-- Parse Hydro GeneratingUnit Objects-->
      <xsl:for-each select="rdf:RDF/cim:HydroGeneratingUnit">
        <UAObject>
          <xsl:attribute name="NodeId" namespace="" select="fn:concat('ns=1;s=', fn:string(@rdf:ID))"/>
          <xsl:attribute name="BrowseName" namespace="" select="fn:concat('1:',fn:string(cim:IdentifiedObject.name))"/>
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
              <xsl:attribute	name="ReferenceType">ns=1;s=Equipment.EquipmentContainer</xsl:attribute>
              <xsl:attribute name="IsForward">true</xsl:attribute>
              <xsl:sequence select="fn:concat('ns=1;s=', fn:substring(cim:Equipment.EquipmentContainer/@rdf:resource,2,33))"/>
            </Reference>
          </References>
        </UAObject>
        <UAVariable>
          <xsl:attribute name="NodeId" namespace=""  select="fn:concat(fn:concat('ns=1;s=', fn:string(@rdf:ID)), xs:string(fn:node-name(cim:IdentifiedObject.aliasName)))"/>
          <xsl:attribute name="BrowseName" namespace="" select="fn:concat('1:', xs:string(fn:node-name(cim:IdentifiedObject.aliasName)))"/>
          <xsl:element name="DisplayName">IdentifiedObject.aliasName</xsl:element>
          <References>
            <Reference ReferenceType="HasTypeDefinition" IsForward="true">ns=1;s=IdentifiedObject.aliasName</Reference>
            <Reference>
              <xsl:attribute name="ReferenceType">HasProperty</xsl:attribute>
              <xsl:attribute name="IsForward">false</xsl:attribute>
              <xsl:sequence select="fn:concat('ns=1;s=', fn:string(@rdf:ID))"/>
            </Reference>
          </References>
          <Value>
            <uax:String>
              <xsl:value-of select="fn:string(cim:IdentifiedObject.aliasName)"/>
            </uax:String>
          </Value>
        </UAVariable>
        <UAVariable>
          <xsl:attribute name="NodeId" namespace=""  select="fn:concat(fn:concat('ns=1;s=', fn:string(@rdf:ID)), xs:string(fn:node-name(cim:GeneratingUnit.genControlSource)))"/>
          <xsl:attribute name="BrowseName" namespace="" select="fn:concat('1:', xs:string(fn:node-name(cim:GeneratingUnit.genControlSource)))"/>
          <xsl:element name="DisplayName">GeneratingUnit.genControlSource</xsl:element>
          <References>
            <Reference ReferenceType="HasTypeDefinition" IsForward="true">ns=1;s=GeneratingUnit.genControlSource</Reference>
            <Reference>
              <xsl:attribute name="ReferenceType">HasProperty</xsl:attribute>
              <xsl:attribute name="IsForward">false</xsl:attribute>
              <xsl:sequence select="fn:concat('ns=1;s=', fn:string(@rdf:ID))"/>
            </Reference>
          </References>
          <Value>
            <uax:String>
              <xsl:value-of select="fn:string(cim:GeneratingUnit.genControlSource/@rdf:resource)"/>
            </uax:String>
          </Value>
        </UAVariable>
        <UAVariable>
          <xsl:attribute name="NodeId" namespace=""  select="fn:concat(fn:concat('ns=1;s=', fn:string(@rdf:ID)), xs:string(fn:node-name(cim:GeneratingUnit.initialP)))"/>
          <xsl:attribute name="BrowseName" namespace="" select="fn:concat('1:', xs:string(fn:node-name(cim:GeneratingUnit.initialP)))"/>
          <xsl:element name="DisplayName">GeneratingUnit.initialP</xsl:element>
          <References>
            <Reference ReferenceType="HasTypeDefinition" IsForward="true">ns=1;s=GeneratingUnit.initialP</Reference>
            <Reference>
              <xsl:attribute name="ReferenceType">HasProperty</xsl:attribute>
              <xsl:attribute name="IsForward">false</xsl:attribute>
              <xsl:sequence select="fn:concat('ns=1;s=', fn:string(@rdf:ID))"/>
            </Reference>
          </References>
          <Value>
            <uax:String>
              <xsl:value-of select="fn:string(cim:GeneratingUnit.initialP)"/>
            </uax:String>
          </Value>
        </UAVariable>
        <UAVariable>
          <xsl:attribute name="NodeId" namespace=""  select="fn:concat(fn:concat('ns=1;s=', fn:string(@rdf:ID)), xs:string(fn:node-name(cim:GeneratingUnit.nominalP)))"/>
          <xsl:attribute name="BrowseName" namespace="" select="fn:concat('1:', xs:string(fn:node-name(cim:GeneratingUnit.nominalP)))"/>
          <xsl:element name="DisplayName">GeneratingUnit.nominalP</xsl:element>
          <References>
            <Reference ReferenceType="HasTypeDefinition" IsForward="true">ns=1;s=GeneratingUnit.nominalP</Reference>
            <Reference>
              <xsl:attribute name="ReferenceType">HasProperty</xsl:attribute>
              <xsl:attribute name="IsForward">false</xsl:attribute>
              <xsl:sequence select="fn:concat('ns=1;s=', fn:string(@rdf:ID))"/>
            </Reference>
          </References>
          <Value>
            <uax:String>
              <xsl:value-of select="fn:string(cim:GeneratingUnit.nominalP)"/>
            </uax:String>
          </Value>
        </UAVariable>
        <UAVariable>
          <xsl:attribute name="NodeId" namespace=""  select="fn:concat(fn:concat('ns=1;s=', fn:string(@rdf:ID)), xs:string(fn:node-name(cim:GeneratingUnit.maxOperatingP)))"/>
          <xsl:attribute name="BrowseName" namespace="" select="fn:concat('1:', xs:string(fn:node-name(cim:GeneratingUnit.maxOperatingP)))"/>
          <xsl:element name="DisplayName">GeneratingUnit.maxOperatingP</xsl:element>
          <References>
            <Reference ReferenceType="HasTypeDefinition" IsForward="true">ns=1;s=GeneratingUnit.maxOperatingP</Reference>
            <Reference>
              <xsl:attribute name="ReferenceType">HasProperty</xsl:attribute>
              <xsl:attribute name="IsForward">false</xsl:attribute>
              <xsl:sequence select="fn:concat('ns=1;s=', fn:string(@rdf:ID))"/>
            </Reference>
          </References>
          <Value>
            <uax:String>
              <xsl:value-of select="fn:string(cim:GeneratingUnit.maxOperatingP)"/>
            </uax:String>
          </Value>
        </UAVariable>
        <UAVariable>
          <xsl:attribute name="NodeId" namespace=""  select="fn:concat(fn:concat('ns=1;s=', fn:string(@rdf:ID)), xs:string(fn:node-name(cim:GeneratingUnit.minOperatingP)))"/>
          <xsl:attribute name="BrowseName" namespace="" select="fn:concat('1:', xs:string(fn:node-name(cim:GeneratingUnit.minOperatingP)))"/>
          <xsl:element name="DisplayName">GeneratingUnit.minOperatingP</xsl:element>
          <References>
            <Reference ReferenceType="HasTypeDefinition" IsForward="true">ns=1;s=GeneratingUnit.minOperatingP</Reference>
            <Reference>
              <xsl:attribute name="ReferenceType">HasProperty</xsl:attribute>
              <xsl:attribute name="IsForward">false</xsl:attribute>
              <xsl:sequence select="fn:concat('ns=1;s=', fn:string(@rdf:ID))"/>
            </Reference>
          </References>
          <Value>
            <uax:String>
              <xsl:value-of select="fn:string(cim:GeneratingUnit.minOperatingP)"/>
            </uax:String>
          </Value>
        </UAVariable>
      </xsl:for-each>

      <!-- Parse AC Line Segment Objects-->
      <xsl:for-each select="rdf:RDF/cim:ACLineSegment">
        <UAObject>
          <xsl:attribute name="NodeId" namespace="" select="fn:concat('ns=1;s=', fn:string(@rdf:ID))"/>
          <xsl:attribute name="BrowseName" namespace="" select="fn:concat('1:',fn:string(cim:IdentifiedObject.name))"/>
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
              <xsl:attribute	name="ReferenceType">ns=1;s=ConductingEquipment.BaseVoltage</xsl:attribute>
              <xsl:attribute name="IsForward">true</xsl:attribute>
              <xsl:sequence select="fn:concat('ns=1;s=', fn:substring(cim:ConductingEquipment.BaseVoltage/@rdf:resource,2,33))"/>
            </Reference>
            <Reference>
              <xsl:attribute	name="ReferenceType">ns=1;s=Equipment.EquipmentContainer</xsl:attribute>
              <xsl:attribute name="IsForward">true</xsl:attribute>
              <xsl:sequence select="fn:concat('ns=1;s=', fn:substring(cim:Equipment.EquipmentContainer/@rdf:resource,2,33))"/>
            </Reference>
          </References>
        </UAObject>
        <UAVariable>
          <xsl:attribute name="NodeId" namespace=""  select="fn:concat(fn:concat('ns=1;s=', fn:string(@rdf:ID)), xs:string(fn:node-name(cim:IdentifiedObject.aliasName)))"/>
          <xsl:attribute name="BrowseName" namespace="" select="fn:concat('1:', xs:string(fn:node-name(cim:IdentifiedObject.aliasName)))"/>
          <xsl:element name="DisplayName">IdentifiedObject.aliasName</xsl:element>
          <References>
            <Reference ReferenceType="HasTypeDefinition" IsForward="true">ns=1;s=IdentifiedObject.aliasName</Reference>
            <Reference>
              <xsl:attribute name="ReferenceType">HasProperty</xsl:attribute>
              <xsl:attribute name="IsForward">false</xsl:attribute>
              <xsl:sequence select="fn:concat('ns=1;s=', fn:string(@rdf:ID))"/>
            </Reference>
          </References>
          <Value>
            <uax:String>
              <xsl:value-of select="fn:string(cim:IdentifiedObject.aliasName)"/>
            </uax:String>
          </Value>
        </UAVariable>
        <UAVariable>
          <xsl:attribute name="NodeId" namespace=""  select="fn:concat('ns=1;s=', fn:concat( fn:string(@rdf:ID),xs:string(fn:node-name(cim:ACLineSegment.gch))))"/>
          <xsl:attribute name="BrowseName" namespace="" select="fn:concat('1:', xs:string(fn:node-name(cim:ACLineSegment.gch)))"/>
          <xsl:element name="DisplayName">ACLineSegment.gch</xsl:element>
          <References>
            <Reference ReferenceType="HasTypeDefinition" IsForward="true">ns=1;s=ACLineSegment.gch</Reference>
            <Reference>
              <xsl:attribute name="ReferenceType">HasProperty</xsl:attribute>
              <xsl:attribute name="IsForward">false</xsl:attribute>
              <xsl:sequence select="fn:concat('ns=1;s=', fn:string(@rdf:ID))"/>
            </Reference>
          </References>
          <Value>
            <uax:String>
              <xsl:value-of select="fn:string(cim:ACLineSegment.gch)"/>
            </uax:String>
          </Value>
        </UAVariable>
        <UAVariable>
          <xsl:attribute name="NodeId" namespace=""  select="fn:concat('ns=1;s=', fn:concat( fn:string(@rdf:ID),xs:string(fn:node-name(cim:ACLineSegment.g0ch))))"/>
          <xsl:attribute name="BrowseName" namespace="" select="fn:concat('1:', xs:string(fn:node-name(cim:ACLineSegment.g0ch)))"/>
          <xsl:element name="DisplayName">ACLineSegment.g0ch</xsl:element>
          <References>
            <Reference ReferenceType="HasTypeDefinition" IsForward="true">ns=1;s=ACLineSegment.g0ch</Reference>
            <Reference>
              <xsl:attribute name="ReferenceType">HasProperty</xsl:attribute>
              <xsl:attribute name="IsForward">false</xsl:attribute>
              <xsl:sequence select="fn:concat('ns=1;s=', fn:string(@rdf:ID))"/>
            </Reference>
          </References>
          <Value>
            <uax:String>
              <xsl:value-of select="fn:string(cim:ACLineSegment.g0ch)"/>
            </uax:String>
          </Value>
        </UAVariable>
        <UAVariable>
          <xsl:attribute name="NodeId" namespace=""  select="fn:concat('ns=1;s=', fn:concat( fn:string(@rdf:ID),xs:string(fn:node-name(cim:ACLineSegment.bch))))"/>
          <xsl:attribute name="BrowseName" namespace="" select="fn:concat('1:', xs:string(fn:node-name(cim:ACLineSegment.bch)))"/>
          <xsl:element name="DisplayName">ACLineSegment.bch</xsl:element>
          <References>
            <Reference ReferenceType="HasTypeDefinition" IsForward="true">ns=1;s=ACLineSegment.bch</Reference>
            <Reference>
              <xsl:attribute name="ReferenceType">HasProperty</xsl:attribute>
              <xsl:attribute name="IsForward">false</xsl:attribute>
              <xsl:sequence select="fn:concat('ns=1;s=', fn:string(@rdf:ID))"/>
            </Reference>
          </References>
          <Value>
            <uax:String>
              <xsl:value-of select="fn:string(cim:ACLineSegment.bch)"/>
            </uax:String>
          </Value>
        </UAVariable>
        <UAVariable>
          <xsl:attribute name="NodeId" namespace=""  select="fn:concat('ns=1;s=', fn:concat( fn:string(@rdf:ID),xs:string(fn:node-name(cim:ACLineSegment.b0ch))))"/>
          <xsl:attribute name="BrowseName" namespace="" select="fn:concat('1:', xs:string(fn:node-name(cim:ACLineSegment.b0ch)))"/>
          <xsl:element name="DisplayName">ACLineSegment.b0ch</xsl:element>
          <References>
            <Reference ReferenceType="HasTypeDefinition" IsForward="true">ns=1;s=ACLineSegment.b0ch</Reference>
            <Reference>
              <xsl:attribute name="ReferenceType">HasProperty</xsl:attribute>
              <xsl:attribute name="IsForward">false</xsl:attribute>
              <xsl:sequence select="fn:concat('ns=1;s=', fn:string(@rdf:ID))"/>
            </Reference>
          </References>
          <Value>
            <uax:String>
              <xsl:value-of select="fn:string(cim:ACLineSegment.b0ch)"/>
            </uax:String>
          </Value>
        </UAVariable>
        <UAVariable>
          <xsl:attribute name="NodeId" namespace=""  select="fn:concat('ns=1;s=', fn:concat( fn:string(@rdf:ID),xs:string(fn:node-name(cim:ACLineSegment.r))))"/>
          <xsl:attribute name="BrowseName" namespace="" select="fn:concat('1:', xs:string(fn:node-name(cim:ACLineSegment.r)))"/>
          <xsl:element name="DisplayName">ACLineSegment.r</xsl:element>
          <References>
            <Reference ReferenceType="HasTypeDefinition" IsForward="true">ns=1;s=ACLineSegment.r</Reference>
            <Reference>
              <xsl:attribute name="ReferenceType">HasProperty</xsl:attribute>
              <xsl:attribute name="IsForward">false</xsl:attribute>
              <xsl:sequence select="fn:concat('ns=1;s=', fn:string(@rdf:ID))"/>
            </Reference>
          </References>
          <Value>
            <uax:String>
              <xsl:value-of select="fn:string(cim:ACLineSegment.r)"/>
            </uax:String>
          </Value>
        </UAVariable>
        <UAVariable>
          <xsl:attribute name="NodeId" namespace=""  select="fn:concat('ns=1;s=', fn:concat( fn:string(@rdf:ID),xs:string(fn:node-name(cim:ACLineSegment.r0))))"/>
          <xsl:attribute name="BrowseName" namespace="" select="fn:concat('1:', xs:string(fn:node-name(cim:ACLineSegment.r0)))"/>
          <xsl:element name="DisplayName">ACLineSegment.r0</xsl:element>
          <References>
            <Reference ReferenceType="HasTypeDefinition" IsForward="true">ns=1;s=ACLineSegment.r0</Reference>
            <Reference>
              <xsl:attribute name="ReferenceType">HasProperty</xsl:attribute>
              <xsl:attribute name="IsForward">false</xsl:attribute>
              <xsl:sequence select="fn:concat('ns=1;s=', fn:string(@rdf:ID))"/>
            </Reference>
          </References>
          <Value>
            <uax:String>
              <xsl:value-of select="fn:string(cim:ACLineSegment.r0)"/>
            </uax:String>
          </Value>
        </UAVariable>
        <UAVariable>
          <xsl:attribute name="NodeId" namespace=""  select="fn:concat('ns=1;s=', fn:concat( fn:string(@rdf:ID),xs:string(fn:node-name(cim:ACLineSegment.x))))"/>
          <xsl:attribute name="BrowseName" namespace="" select="fn:concat('1:', xs:string(fn:node-name(cim:ACLineSegment.x)))"/>
          <xsl:element name="DisplayName">ACLineSegment.x</xsl:element>
          <References>
            <Reference ReferenceType="HasTypeDefinition" IsForward="true">ns=1;s=ACLineSegment.x</Reference>
            <Reference>
              <xsl:attribute name="ReferenceType">HasProperty</xsl:attribute>
              <xsl:attribute name="IsForward">false</xsl:attribute>
              <xsl:sequence select="fn:concat('ns=1;s=', fn:string(@rdf:ID))"/>
            </Reference>
          </References>
          <Value>
            <uax:String>
              <xsl:value-of select="fn:string(cim:ACLineSegment.x)"/>
            </uax:String>
          </Value>
        </UAVariable>
        <UAVariable>
          <xsl:attribute name="NodeId" namespace=""  select="fn:concat('ns=1;s=', fn:concat( fn:string(@rdf:ID),xs:string(fn:node-name(cim:ACLineSegment.x0))))"/>
          <xsl:attribute name="BrowseName" namespace="" select="fn:concat('1:', xs:string(fn:node-name(cim:ACLineSegment.x0)))"/>
          <xsl:element name="DisplayName">ACLineSegment.x0</xsl:element>
          <References>
            <Reference ReferenceType="HasTypeDefinition" IsForward="true">ns=1;s=ACLineSegment.x0</Reference>
            <Reference>
              <xsl:attribute name="ReferenceType">HasProperty</xsl:attribute>
              <xsl:attribute name="IsForward">false</xsl:attribute>
              <xsl:sequence select="fn:concat('ns=1;s=', fn:string(@rdf:ID))"/>
            </Reference>
          </References>
          <Value>
            <uax:String>
              <xsl:value-of select="fn:string(cim:ACLineSegment.x0)"/>
            </uax:String>
          </Value>
        </UAVariable>
        <UAVariable>
          <xsl:attribute name="NodeId" namespace=""  select="fn:concat('ns=1;s=', fn:concat( fn:string(@rdf:ID),xs:string(fn:node-name(cim:ACLineSegment.x0))))"/>
          <xsl:attribute name="BrowseName" namespace="" select="fn:concat('1:', xs:string(fn:node-name(cim:ACLineSegment.x0)))"/>
          <xsl:element name="DisplayName">ACLineSegment.x0</xsl:element>
          <References>
            <Reference ReferenceType="HasTypeDefinition" IsForward="true">ns=1;s=ACLineSegment.x0</Reference>
            <Reference>
              <xsl:attribute name="ReferenceType">HasProperty</xsl:attribute>
              <xsl:attribute name="IsForward">false</xsl:attribute>
              <xsl:sequence select="fn:concat('ns=1;s=', fn:string(@rdf:ID))"/>
            </Reference>
          </References>
          <Value>
            <uax:String>
              <xsl:value-of select="fn:string(cim:ACLineSegment.x0)"/>
            </uax:String>
          </Value>
        </UAVariable>
        <UAVariable>
          <xsl:attribute name="NodeId" namespace=""  select="fn:concat('ns=1;s=', fn:concat( fn:string(@rdf:ID),xs:string(fn:node-name(cim:Conductor.length))))"/>
          <xsl:attribute name="BrowseName" namespace="" select="fn:concat('1:', xs:string(fn:node-name(cim:Conductor.length)))"/>
          <xsl:element name="DisplayName">Conductor.length</xsl:element>
          <References>
            <Reference ReferenceType="HasTypeDefinition" IsForward="true">ns=1;s=Conductor.length</Reference>
            <Reference>
              <xsl:attribute name="ReferenceType">HasProperty</xsl:attribute>
              <xsl:attribute name="IsForward">false</xsl:attribute>
              <xsl:sequence select="fn:concat('ns=1;s=', fn:string(@rdf:ID))"/>
            </Reference>
          </References>
          <Value>
            <uax:String>
              <xsl:value-of select="fn:string(cim:Conductor.length)"/>
            </uax:String>
          </Value>
        </UAVariable>
      </xsl:for-each>

      <!-- Parse Busbar Section Objects-->
      <xsl:for-each select="rdf:RDF/cim:BusbarSection">
        <UAObject>
          <xsl:attribute name="NodeId" namespace="" select="fn:concat('ns=1;s=', fn:string(@rdf:ID))"/>
          <xsl:attribute name="BrowseName" namespace="" select="fn:concat('1:',fn:string(cim:IdentifiedObject.name))"/>
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
              <xsl:attribute	name="ReferenceType">ns=1;s=Equipment.EquipmentContainer</xsl:attribute>
              <xsl:attribute name="IsForward">true</xsl:attribute>
              <xsl:sequence select="fn:concat('ns=1;s=', fn:substring(cim:Equipment.EquipmentContainer/@rdf:resource,2,33))"/>
            </Reference>
            <Reference>
              <xsl:attribute	name="ReferenceType">ns=1;s=ConductingEquipment.BaseVoltage</xsl:attribute>
              <xsl:attribute name="IsForward">true</xsl:attribute>
              <xsl:sequence select="fn:concat('ns=1;s=', fn:substring(cim:ConductingEquipment.BaseVoltage/@rdf:resource,2,33))"/>
            </Reference>
          </References>
        </UAObject>
        <UAVariable>
          <xsl:attribute name="NodeId" namespace=""  select="fn:concat(fn:concat('ns=1;s=', fn:string(@rdf:ID)), xs:string(fn:node-name(cim:IdentifiedObject.aliasName)))"/>
          <xsl:attribute name="BrowseName" namespace="" select="fn:concat('1:', xs:string(fn:node-name(cim:IdentifiedObject.aliasName)))"/>
          <xsl:element name="DisplayName">IdentifiedObject.aliasName</xsl:element>
          <References>
            <Reference ReferenceType="HasTypeDefinition" IsForward="true">ns=1;s=IdentifiedObject.aliasName</Reference>
            <Reference>
              <xsl:attribute name="ReferenceType">HasProperty</xsl:attribute>
              <xsl:attribute name="IsForward">false</xsl:attribute>
              <xsl:sequence select="fn:concat('ns=1;s=', fn:string(@rdf:ID))"/>
            </Reference>
          </References>
          <Value>
            <uax:String>
              <xsl:value-of select="fn:string(cim:IdentifiedObject.aliasName)"/>
            </uax:String>
          </Value>
        </UAVariable>
      </xsl:for-each>

      <!-- Parse Breaker Objects-->			
			<xsl:for-each select="rdf:RDF/cim:Breaker">
				<UAObject>
					<xsl:attribute name="NodeId" namespace="" select="fn:concat('ns=1;s=', fn:string(@rdf:ID))"/>
					<xsl:attribute name="BrowseName" namespace="" select="fn:concat('1:',fn:string(cim:IdentifiedObject.name))"/>
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
							<xsl:attribute	name="ReferenceType">ns=1;s=Equipment.EquipmentContainer</xsl:attribute>
							<xsl:attribute name="IsForward">true</xsl:attribute>
							<xsl:sequence select="fn:concat('ns=1;s=', fn:substring(cim:Equipment.EquipmentContainer/@rdf:resource,2,33))"/>
						</Reference>
						<Reference>
							<xsl:attribute	name="ReferenceType">ns=1;s=ConductingEquipment.BaseVoltage</xsl:attribute>
							<xsl:attribute name="IsForward">true</xsl:attribute>
							<xsl:sequence select="fn:concat('ns=1;s=', fn:substring(cim:ConductingEquipment.BaseVoltage/@rdf:resource,2,33))"/>
						</Reference>
					</References>				
				</UAObject>
				<UAVariable>
					<xsl:attribute name="NodeId" namespace=""  select="fn:concat(fn:concat('ns=1;s=', fn:string(@rdf:ID)), xs:string(fn:node-name(cim:IdentifiedObject.aliasName)))"/>
					<xsl:attribute name="BrowseName" namespace="" select="fn:concat('1:', xs:string(fn:node-name(cim:IdentifiedObject.aliasName)))"/>
					<xsl:element name="DisplayName">IdentifiedObject.aliasName</xsl:element>
					<References>
						<Reference ReferenceType="HasTypeDefinition" IsForward="true">ns=1;s=IdentifiedObject.aliasName</Reference>
						<Reference>
							<xsl:attribute name="ReferenceType">HasProperty</xsl:attribute>
							<xsl:attribute name="IsForward">false</xsl:attribute>
							<xsl:sequence select="fn:concat('ns=1;s=', fn:string(@rdf:ID))"/>
						</Reference>
					</References>
          <Value>
            <uax:String>
              <xsl:value-of select="fn:string(cim:IdentifiedObject.aliasName)"/>
            </uax:String>
          </Value>
        </UAVariable>
				<UAVariable>
					<xsl:attribute name="NodeId" namespace=""  select="fn:concat(fn:concat('ns=1;s=', fn:string(@rdf:ID)), xs:string(fn:node-name(cim:Switch.ratedCurrent)))"/>
					<xsl:attribute name="BrowseName" namespace="" select="fn:concat('1:', xs:string(fn:node-name(cim:Switch.ratedCurrent)))"/>
					<xsl:element name="DisplayName">Switch.ratedCurrent</xsl:element>
					<References>
						<Reference ReferenceType="HasTypeDefinition" IsForward="true">ns=1;s=Switch.ratedCurrent</Reference>
						<Reference>
							<xsl:attribute name="ReferenceType">HasProperty</xsl:attribute>
							<xsl:attribute name="IsForward">false</xsl:attribute>
							<xsl:sequence select="fn:concat('ns=1;s=', fn:string(@rdf:ID))"/>
						</Reference>
					</References>
          <Value>
            <uax:String>
              <xsl:value-of select="fn:string(cim:Switch.ratedCurrent)"/>
            </uax:String>
          </Value>
				</UAVariable>
				<UAVariable>
					<xsl:attribute name="NodeId" namespace=""  select="fn:concat(fn:concat('ns=1;s=', fn:string(@rdf:ID)), xs:string(fn:node-name(cim:Switch.normalOpen)))"/>
					<xsl:attribute name="BrowseName" namespace="" select="fn:concat('1:', xs:string(fn:node-name(cim:Switch.normalOpen)))"/>
					<xsl:element name="DisplayName">Switch.normalOpen</xsl:element>
					<References>
						<Reference ReferenceType="HasTypeDefinition" IsForward="true">ns=1;s=Switch.normalOpen</Reference>
						<Reference>
							<xsl:attribute name="ReferenceType">HasProperty</xsl:attribute>
							<xsl:attribute name="IsForward">false</xsl:attribute>
							<xsl:sequence select="fn:concat('ns=1;s=', fn:string(@rdf:ID))"/>
						</Reference>
					</References>
          <Value>
            <uax:String>
              <xsl:value-of select="fn:string(cim:Switch.normalOpen)"/>
            </uax:String>
          </Value>
        </UAVariable>
			</xsl:for-each>	

      <!-- Parse Connectivity Node Objects-->
      <xsl:for-each select="rdf:RDF/cim:ConnectivityNode">
        <UAObject>
          <xsl:attribute name="NodeId" namespace="" select="fn:concat('ns=1;s=', fn:string(@rdf:ID))"/>
          <xsl:attribute name="BrowseName" namespace="" select="fn:concat('1:',fn:string(cim:IdentifiedObject.name))"/>
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
              <xsl:attribute	name="ReferenceType">ns=1;s=ConnectivityNode.ConnectivityNodeContainer</xsl:attribute>
              <xsl:attribute name="IsForward">true</xsl:attribute>
              <xsl:sequence select="fn:concat('ns=1;s=', fn:substring(cim:ConnectivityNode.ConnectivityNodeContainer/@rdf:resource,2,33))"/>
            </Reference>
          </References>
        </UAObject>        
      </xsl:for-each>

      <!-- Parse Terminal Objects-->
      <xsl:for-each select="rdf:RDF/cim:Terminal">
        <UAObject>
          <xsl:attribute name="NodeId" namespace="" select="fn:concat('ns=1;s=', fn:string(@rdf:ID))"/>
          <xsl:attribute name="BrowseName" namespace="" select="fn:concat('1:',fn:string(cim:IdentifiedObject.name))"/>
          <DisplayName>
            <xsl:sequence select="fn:string(cim:IdentifiedObject.name)"/>
          </DisplayName>
          <Description>
            <xsl:sequence select="fn:concat(fn:string(cim:IdentifiedObject.name), ' Terminal')"/>
          </Description>
          <References>
            <Reference ReferenceType="Organizes" IsForward="false">ns=1;s=Tes</Reference>
            <Reference ReferenceType="HasTypeDefinition" IsForward="true">ns=1;s=Te</Reference>
            <Reference>
              <xsl:attribute	name="ReferenceType">ns=1;s=Terminal.ConductingEquipment</xsl:attribute>
              <xsl:attribute name="IsForward">true</xsl:attribute>
              <xsl:sequence select="fn:concat('ns=1;s=', fn:substring(cim:Terminal.ConductingEquipment/@rdf:resource,2,33))"/>
            </Reference>
            <Reference>
              <xsl:attribute	name="ReferenceType">ns=1;s=Terminal.ConnectivityNode</xsl:attribute>
              <xsl:attribute name="IsForward">true</xsl:attribute>
              <xsl:sequence select="fn:concat('ns=1;s=', fn:substring(cim:Terminal.ConnectivityNode/@rdf:resource,2,33))"/>
            </Reference>
          </References>
        </UAObject>
        <UAVariable>
          <xsl:attribute name="NodeId" namespace=""  select="fn:concat(fn:concat('ns=1;s=', fn:string(@rdf:ID)), xs:string(fn:node-name(cim:Terminal.sequenceNumber)))"/>
          <xsl:attribute name="BrowseName" namespace="" select="fn:concat('1:', xs:string(fn:node-name(cim:Terminal.sequenceNumber)))"/>
          <xsl:element name="DisplayName">Terminal.sequenceNumber</xsl:element>
          <References>
            <Reference ReferenceType="HasTypeDefinition" IsForward="true">ns=1;s=Terminal.sequenceNumber</Reference>
            <Reference>
              <xsl:attribute name="ReferenceType">HasProperty</xsl:attribute>
              <xsl:attribute name="IsForward">false</xsl:attribute>
              <xsl:sequence select="fn:concat('ns=1;s=', fn:string(@rdf:ID))"/>
            </Reference>
          </References>
          <Value>
            <uax:String>
              <xsl:value-of select="fn:string(cim:Terminal.sequenceNumber)"/>
            </uax:String>
          </Value>
        </UAVariable>
      </xsl:for-each>

      <!-- Parse Operational Limit Type Objects-->
      <xsl:for-each select="rdf:RDF/cim:OperationalLimitType">
        <UAObject>
          <xsl:attribute name="NodeId" namespace="" select="fn:concat('ns=1;s=', fn:string(@rdf:ID))"/>
          <xsl:attribute name="BrowseName" namespace="" select="fn:concat('1:',fn:string(cim:IdentifiedObject.name))"/>
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
        <UAVariable>
          <xsl:attribute name="NodeId" namespace=""  select="fn:concat(fn:concat('ns=1;s=', fn:string(@rdf:ID)), xs:string(fn:node-name(cim:OperationalLimitType.direction)))"/>
          <xsl:attribute name="BrowseName" namespace="" select="fn:concat('1:', xs:string(fn:node-name(cim:OperationalLimitType.direction)))"/>
          <xsl:element name="DisplayName">OperationalLimitType.direction</xsl:element>
          <References>
            <Reference ReferenceType="HasTypeDefinition" IsForward="true">ns=1;s=OperationalLimitType.direction</Reference>
            <Reference>
              <xsl:attribute name="ReferenceType">HasProperty</xsl:attribute>
              <xsl:attribute name="IsForward">false</xsl:attribute>
              <xsl:sequence select="fn:concat('ns=1;s=', fn:string(@rdf:ID))"/>
            </Reference>
          </References>
          <Value>
            <uax:String>
              <xsl:value-of select="fn:string(cim:OperationalLimitType.direction/@rdf:resource)"/>
            </uax:String>
          </Value>
        </UAVariable>
        <UAVariable>
          <xsl:attribute name="NodeId" namespace=""  select="fn:concat(fn:concat('ns=1;s=', fn:string(@rdf:ID)), xs:string(fn:node-name(cim:OperationalLimitType.acceptableDuration)))"/>
          <xsl:attribute name="BrowseName" namespace="" select="fn:concat('1:', xs:string(fn:node-name(cim:OperationalLimitType.acceptableDuration)))"/>
          <xsl:element name="DisplayName">OperationalLimitType.acceptableDuration</xsl:element>
          <References>
            <Reference ReferenceType="HasTypeDefinition" IsForward="true">ns=1;s=OperationalLimitType.acceptableDuration</Reference>
            <Reference>
              <xsl:attribute name="ReferenceType">HasProperty</xsl:attribute>
              <xsl:attribute name="IsForward">false</xsl:attribute>
              <xsl:sequence select="fn:concat('ns=1;s=', fn:string(@rdf:ID))"/>
            </Reference>
          </References>
          <Value>
            <uax:String>
              <xsl:value-of select="fn:string(cim:OperationalLimitType.acceptableDuration)"/>
            </uax:String>
          </Value>
        </UAVariable>
      </xsl:for-each>

      <!-- Parse Active (Real) Power Limit Objects-->
      <xsl:for-each select="rdf:RDF/cim:ActivePowerLimit">
        <UAObject>
          <xsl:attribute name="NodeId" namespace="" select="fn:concat('ns=1;s=', fn:string(@rdf:ID))"/>
          <xsl:attribute name="BrowseName" namespace="" select="fn:concat('1:',fn:string(@rdf:ID))"/>
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
              <xsl:attribute	name="ReferenceType">ns=1;s=ActivePowerLimit.OperationalLimitType</xsl:attribute>
              <xsl:attribute name="IsForward">true</xsl:attribute>
              <xsl:sequence select="fn:concat('ns=1;s=', fn:substring(cim:ActivePowerLimit.OperationalLimitType/@rdf:resource,2,33))"/>
            </Reference>
            <Reference>
              <xsl:attribute	name="ReferenceType">ns=1;s=ActivePowerLimit.OperationalLimitSet</xsl:attribute>
              <xsl:attribute name="IsForward">true</xsl:attribute>
              <xsl:sequence select="fn:concat('ns=1;s=', fn:substring(cim:ActivePowerLimit.OperationalLimitSet/@rdf:resource,2,33))"/>
            </Reference>
          </References>
        </UAObject>
        <UAVariable>
          <xsl:attribute name="NodeId" namespace=""  select="fn:concat(fn:concat('ns=1;s=', fn:string(@rdf:ID)), xs:string(fn:node-name(cim:ActivePowerLimit.value)))"/>
          <xsl:attribute name="BrowseName" namespace="" select="fn:concat('1:', xs:string(fn:node-name(cim:ActivePowerLimit.value)))"/>
          <xsl:element name="DisplayName">ActivePowerLimit.value</xsl:element>
          <References>
            <Reference ReferenceType="HasTypeDefinition" IsForward="true">ns=1;s=ActivePowerLimit.value</Reference>
            <Reference>
              <xsl:attribute name="ReferenceType">HasProperty</xsl:attribute>
              <xsl:attribute name="IsForward">false</xsl:attribute>
              <xsl:sequence select="fn:concat('ns=1;s=', fn:string(@rdf:ID))"/>
            </Reference>
          </References>
          <Value>
            <uax:String>
              <xsl:value-of select="fn:string(cim:ActivePowerLimit.value)"/>
            </uax:String>
          </Value>
        </UAVariable>
      </xsl:for-each>

      <!-- Parse Apparent Power Limit Objects-->
      <xsl:for-each select="rdf:RDF/cim:ApparentPowerLimit">
        <UAObject>
          <xsl:attribute name="NodeId" namespace="" select="fn:concat('ns=1;s=', fn:string(@rdf:ID))"/>
          <xsl:attribute name="BrowseName" namespace="" select="fn:concat('1:',fn:string(@rdf:ID))"/>
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
              <xsl:attribute	name="ReferenceType">ns=1;s=OperationalLimit.OperationalLimitType</xsl:attribute>
              <xsl:attribute name="IsForward">true</xsl:attribute>
              <xsl:sequence select="fn:concat('ns=1;s=', fn:substring(cim:OperationalLimit.OperationalLimitType/@rdf:resource,2,33))"/>
            </Reference>
            <Reference>
              <xsl:attribute	name="ReferenceType">ns=1;s=OperationalLimit.OperationalLimitSet</xsl:attribute>
              <xsl:attribute name="IsForward">true</xsl:attribute>
              <xsl:sequence select="fn:concat('ns=1;s=', fn:substring(cim:OperationalLimit.OperationalLimitSet/@rdf:resource,2,33))"/>
            </Reference>
          </References>
        </UAObject>
        <UAVariable>
          <xsl:attribute name="NodeId" namespace=""  select="fn:concat(fn:concat('ns=1;s=', fn:string(@rdf:ID)), xs:string(fn:node-name(cim:ActivePowerLimit.value)))"/>
          <xsl:attribute name="BrowseName" namespace="" select="fn:concat('1:', xs:string(fn:node-name(cim:ActivePowerLimit.value)))"/>
          <xsl:element name="DisplayName">ActivePowerLimit.value</xsl:element>
          <References>
            <Reference ReferenceType="HasTypeDefinition" IsForward="true">ns=1;s=ApparentPowerLimit.value</Reference>
            <Reference>
              <xsl:attribute name="ReferenceType">HasProperty</xsl:attribute>
              <xsl:attribute name="IsForward">false</xsl:attribute>
              <xsl:sequence select="fn:concat('ns=1;s=', fn:string(@rdf:ID))"/>
            </Reference>
          </References>
          <Value>
            <uax:String>
              <xsl:value-of select="fn:string(cim:ApparentPowerLimit.value)"/>
            </uax:String>
          </Value>
        </UAVariable>
      </xsl:for-each>

      <!-- Parse Discrete Type Objects-->
      <xsl:for-each select="rdf:RDF/cim:Discrete">
        <UAObject>
          <xsl:attribute name="NodeId" namespace="" select="fn:concat('ns=1;s=', fn:string(@rdf:ID))"/>
          <xsl:attribute name="BrowseName" namespace="" select="fn:concat('1:',fn:string(cim:IdentifiedObject.name))"/>
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
              <xsl:attribute	name="ReferenceType">ns=1;s=Measurement.PowerSystemResource</xsl:attribute>
              <xsl:attribute name="IsForward">true</xsl:attribute>
              <xsl:sequence select="fn:concat('ns=1;s=', fn:substring(cim:Measurement.PowerSystemResource/@rdf:resource,2,33))"/>
            </Reference>
            <!--
            <Reference>
              <xsl:attribute	name="ReferenceType">ns=1;s=Measurement.UnitSymbol</xsl:attribute>
              <xsl:attribute name="IsForward">true</xsl:attribute>
              <xsl:sequence select="fn:concat('ns=1;s=', fn:substring(cim:Measurement.UnitSymbol/@rdf:resource,2,33))"/>
            </Reference>
            <Reference>
              <xsl:attribute	name="ReferenceType">ns=1;s=Measurement.UnitMultiplier</xsl:attribute>
              <xsl:attribute name="IsForward">true</xsl:attribute>
              <xsl:sequence select="fn:concat('ns=1;s=', fn:substring(cim:Measurement.UnitMultiplier/@rdf:resource,2,33))"/>
            </Reference>
            -->
          </References>
        </UAObject>
        <UAVariable>
          <xsl:attribute name="NodeId" namespace=""  select="fn:concat(fn:concat('ns=1;s=', fn:string(@rdf:ID)), xs:string(fn:node-name(cim:IdentifiedObject.aliasName)))"/>
          <xsl:attribute name="BrowseName" namespace="" select="fn:concat('1:', xs:string(fn:node-name(cim:IdentifiedObject.aliasName)))"/>
          <xsl:element name="DisplayName">IdentifiedObject.aliasName</xsl:element>
          <References>
            <Reference ReferenceType="HasTypeDefinition" IsForward="true">ns=1;s=IdentifiedObject.aliasName</Reference>
            <Reference>
              <xsl:attribute name="ReferenceType">HasProperty</xsl:attribute>
              <xsl:attribute name="IsForward">false</xsl:attribute>
              <xsl:sequence select="fn:concat('ns=1;s=', fn:string(@rdf:ID))"/>
            </Reference>
          </References>
          <Value>
            <uax:String>
              <xsl:value-of select="fn:string(cim:IdentifiedObject.aliasName)"/>
            </uax:String>
          </Value>
        </UAVariable>
        <UAVariable>
          <xsl:attribute name="NodeId" namespace=""  select="fn:concat(fn:concat('ns=1;s=', fn:string(@rdf:ID)), xs:string(fn:node-name(cim:Measurement.measurementType)))"/>
          <xsl:attribute name="BrowseName" namespace="" select="fn:concat('1:', xs:string(fn:node-name(cim:Measurement.measurementType)))"/>
          <xsl:element name="DisplayName">Measurement.measurementType</xsl:element>
          <References>
            <Reference ReferenceType="HasTypeDefinition" IsForward="true">ns=1;s=Measurement.measurementType</Reference>
            <Reference>
              <xsl:attribute name="ReferenceType">HasProperty</xsl:attribute>
              <xsl:attribute name="IsForward">false</xsl:attribute>
              <xsl:sequence select="fn:concat('ns=1;s=', fn:string(@rdf:ID))"/>
            </Reference>
          </References>
          <Value>
            <uax:String>
              <xsl:value-of select="fn:string(cim:Measurement.measurementType)"/>
            </uax:String>
          </Value>
        </UAVariable>
        <UAVariable>
          <xsl:attribute name="NodeId" namespace=""  select="fn:concat(fn:concat('ns=1;s=', fn:string(@rdf:ID)), xs:string(fn:node-name(cim:Discrete.normalValue)))"/>
          <xsl:attribute name="BrowseName" namespace="" select="fn:concat('1:', xs:string(fn:node-name(cim:Discrete.normalValue)))"/>
          <xsl:element name="DisplayName">Discrete.normalValue</xsl:element>
          <References>
            <Reference ReferenceType="HasTypeDefinition" IsForward="true">ns=1;s=Discrete.normalValue</Reference>
            <Reference>
              <xsl:attribute name="ReferenceType">HasProperty</xsl:attribute>
              <xsl:attribute name="IsForward">false</xsl:attribute>
              <xsl:sequence select="fn:concat('ns=1;s=', fn:string(@rdf:ID))"/>
            </Reference>
          </References>
          <Value>
            <uax:String>
              <xsl:value-of select="fn:string(cim:Discrete.normalValue)"/>
            </uax:String>
          </Value>
        </UAVariable>
        <UAVariable>
          <xsl:attribute name="NodeId" namespace=""  select="fn:concat(fn:concat('ns=1;s=', fn:string(@rdf:ID)), xs:string(fn:node-name(cim:Measurement.unitSymbol)))"/>
          <xsl:attribute name="BrowseName" namespace="" select="fn:concat('1:', xs:string(fn:node-name(cim:Measurement.unitSymbol)))"/>
          <xsl:element name="DisplayName">Measurement.unitSymbol</xsl:element>
          <References>
            <Reference ReferenceType="HasTypeDefinition" IsForward="true">ns=1;s=Measurement.unitSymbol</Reference>
            <Reference>
              <xsl:attribute name="ReferenceType">HasProperty</xsl:attribute>
              <xsl:attribute name="IsForward">false</xsl:attribute>
              <xsl:sequence select="fn:concat('ns=1;s=', fn:string(@rdf:ID))"/>
            </Reference>
          </References>
          <Value>
            <uax:String>
              <xsl:value-of select="fn:string(cim:Measurement.unitSymbol/@rdf:resource)"/>
            </uax:String>
          </Value>
        </UAVariable>
        <UAVariable>
          <xsl:attribute name="NodeId" namespace=""  select="fn:concat(fn:concat('ns=1;s=', fn:string(@rdf:ID)), xs:string(fn:node-name(cim:Measurement.unitMultiplier)))"/>
          <xsl:attribute name="BrowseName" namespace="" select="fn:concat('1:', xs:string(fn:node-name(cim:Measurement.unitMultiplier)))"/>
          <xsl:element name="DisplayName">Measurement.unitMultiplier</xsl:element>
          <References>
            <Reference ReferenceType="HasTypeDefinition" IsForward="true">ns=1;s=Measurement.unitMultiplier</Reference>
            <Reference>
              <xsl:attribute name="ReferenceType">HasProperty</xsl:attribute>
              <xsl:attribute name="IsForward">false</xsl:attribute>
              <xsl:sequence select="fn:concat('ns=1;s=', fn:string(@rdf:ID))"/>
            </Reference>
          </References>
          <Value>
            <uax:String>
              <xsl:value-of select="fn:string(cim:Measurement.unitMultiplier/@rdf:resource)"/>
            </uax:String>
          </Value>
        </UAVariable>
      </xsl:for-each>

      <!-- Parse Analog Type Objects-->
      <xsl:for-each select="rdf:RDF/cim:Analog">
        <UAObject>
          <xsl:attribute name="NodeId" namespace="" select="fn:concat('ns=1;s=', fn:string(@rdf:ID))"/>
          <xsl:attribute name="BrowseName" namespace="" select="fn:concat('1:',fn:string(cim:IdentifiedObject.name))"/>
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
              <xsl:attribute	name="ReferenceType">ns=1;s=Measurement.PowerSystemResource</xsl:attribute>
              <xsl:attribute name="IsForward">true</xsl:attribute>
              <xsl:sequence select="fn:concat('ns=1;s=', fn:substring(cim:Measurement.PowerSystemResource/@rdf:resource,2,33))"/>
            </Reference>
            <Reference>
              <xsl:attribute	name="ReferenceType">ns=1;s=Measurement.Terminal</xsl:attribute>
              <xsl:attribute name="IsForward">true</xsl:attribute>
              <xsl:sequence select="fn:concat('ns=1;s=', fn:substring(cim:Measurement.Terminal/@rdf:resource,2,33))"/>
            </Reference>
          </References>
        </UAObject>
        <UAVariable>
          <xsl:attribute name="NodeId" namespace=""  select="fn:concat(fn:concat('ns=1;s=', fn:string(@rdf:ID)), xs:string(fn:node-name(cim:IdentifiedObject.aliasName)))"/>
          <xsl:attribute name="BrowseName" namespace="" select="fn:concat('1:', xs:string(fn:node-name(cim:IdentifiedObject.aliasName)))"/>
          <xsl:element name="DisplayName">IdentifiedObject.aliasName</xsl:element>
          <References>
            <Reference ReferenceType="HasTypeDefinition" IsForward="true">ns=1;s=IdentifiedObject.aliasName</Reference>
            <Reference>
              <xsl:attribute name="ReferenceType">HasProperty</xsl:attribute>
              <xsl:attribute name="IsForward">false</xsl:attribute>
              <xsl:sequence select="fn:concat('ns=1;s=', fn:string(@rdf:ID))"/>
            </Reference>
          </References>
          <Value>
            <uax:String>
              <xsl:value-of select="fn:string(cim:IdentifiedObject.aliasName)"/>
            </uax:String>
          </Value>
        </UAVariable>
        <UAVariable>
          <xsl:attribute name="NodeId" namespace=""  select="fn:concat(fn:concat('ns=1;s=', fn:string(@rdf:ID)), xs:string(fn:node-name(cim:Measurement.measurementType)))"/>
          <xsl:attribute name="BrowseName" namespace="" select="fn:concat('1:', xs:string(fn:node-name(cim:Measurement.measurementType)))"/>
          <xsl:element name="DisplayName">Measurement.measurementType</xsl:element>
          <References>
            <Reference ReferenceType="HasTypeDefinition" IsForward="true">ns=1;s=Measurement.measurementType</Reference>
            <Reference>
              <xsl:attribute name="ReferenceType">HasProperty</xsl:attribute>
              <xsl:attribute name="IsForward">false</xsl:attribute>
              <xsl:sequence select="fn:concat('ns=1;s=', fn:string(@rdf:ID))"/>
            </Reference>
          </References>
          <Value>
            <uax:String>
              <xsl:value-of select="fn:string(cim:Measurement.measurementType)"/>
            </uax:String>
          </Value>
        </UAVariable>
        <UAVariable>
          <xsl:attribute name="NodeId" namespace=""  select="fn:concat(fn:concat('ns=1;s=', fn:string(@rdf:ID)), xs:string(fn:node-name(cim:Analog.maxValue)))"/>
          <xsl:attribute name="BrowseName" namespace="" select="fn:concat('1:', xs:string(fn:node-name(cim:Analog.maxValue)))"/>
          <xsl:element name="DisplayName">Analog.maxValue</xsl:element>
          <References>
            <Reference ReferenceType="HasTypeDefinition" IsForward="true">ns=1;s=Analog.maxValue</Reference>
            <Reference>
              <xsl:attribute name="ReferenceType">HasProperty</xsl:attribute>
              <xsl:attribute name="IsForward">false</xsl:attribute>
              <xsl:sequence select="fn:concat('ns=1;s=', fn:string(@rdf:ID))"/>
            </Reference>
          </References>
          <Value>
            <uax:String>
              <xsl:value-of select="fn:string(cim:Analog.maxValue)"/>
            </uax:String>
          </Value>
        </UAVariable>
        <UAVariable>
          <xsl:attribute name="NodeId" namespace=""  select="fn:concat(fn:concat('ns=1;s=', fn:string(@rdf:ID)), xs:string(fn:node-name(cim:Analog.minValue)))"/>
          <xsl:attribute name="BrowseName" namespace="" select="fn:concat('1:', xs:string(fn:node-name(cim:Analog.minValue)))"/>
          <xsl:element name="DisplayName">Analog.minValue</xsl:element>
          <References>
            <Reference ReferenceType="HasTypeDefinition" IsForward="true">ns=1;s=Analog.minValue</Reference>
            <Reference>
              <xsl:attribute name="ReferenceType">HasProperty</xsl:attribute>
              <xsl:attribute name="IsForward">false</xsl:attribute>
              <xsl:sequence select="fn:concat('ns=1;s=', fn:string(@rdf:ID))"/>
            </Reference>
          </References>
          <Value>
            <uax:String>
              <xsl:value-of select="fn:string(cim:Analog.minValue)"/>
            </uax:String>
          </Value>
        </UAVariable>
        <UAVariable>
          <xsl:attribute name="NodeId" namespace=""  select="fn:concat(fn:concat('ns=1;s=', fn:string(@rdf:ID)), xs:string(fn:node-name(cim:Analog.normalValue)))"/>
          <xsl:attribute name="BrowseName" namespace="" select="fn:concat('1:', xs:string(fn:node-name(cim:Analog.normalValue)))"/>
          <xsl:element name="DisplayName">Analog.normalValue</xsl:element>
          <References>
            <Reference ReferenceType="HasTypeDefinition" IsForward="true">ns=1;s=Analog.normalValue</Reference>
            <Reference>
              <xsl:attribute name="ReferenceType">HasProperty</xsl:attribute>
              <xsl:attribute name="IsForward">false</xsl:attribute>
              <xsl:sequence select="fn:concat('ns=1;s=', fn:string(@rdf:ID))"/>
            </Reference>
          </References>
          <Value>
            <uax:String>
              <xsl:value-of select="fn:string(cim:Analog.normalValue)"/>
            </uax:String>
          </Value>
        </UAVariable>
        <UAVariable>
          <xsl:attribute name="NodeId" namespace=""  select="fn:concat(fn:concat('ns=1;s=', fn:string(@rdf:ID)), xs:string(fn:node-name(cim:Analog.positiveFlowIn)))"/>
          <xsl:attribute name="BrowseName" namespace="" select="fn:concat('1:', xs:string(fn:node-name(cim:Analog.positiveFlowIn)))"/>
          <xsl:element name="DisplayName">Analog.positiveFlowIn</xsl:element>
          <References>
            <Reference ReferenceType="HasTypeDefinition" IsForward="true">ns=1;s=Analog.positiveFlowIn</Reference>
            <Reference>
              <xsl:attribute name="ReferenceType">HasProperty</xsl:attribute>
              <xsl:attribute name="IsForward">false</xsl:attribute>
              <xsl:sequence select="fn:concat('ns=1;s=', fn:string(@rdf:ID))"/>
            </Reference>
          </References>
          <Value>
            <uax:String>
              <xsl:value-of select="fn:string(cim:Analog.positiveFlowIn)"/>
            </uax:String>
          </Value>
        </UAVariable>
        <UAVariable>
          <xsl:attribute name="NodeId" namespace=""  select="fn:concat(fn:concat('ns=1;s=', fn:string(@rdf:ID)), xs:string(fn:node-name(cim:Measurement.unitSymbol)))"/>
          <xsl:attribute name="BrowseName" namespace="" select="fn:concat('1:', xs:string(fn:node-name(cim:Measurement.unitSymbol)))"/>
          <xsl:element name="DisplayName">Measurement.unitSymbol</xsl:element>
          <References>
            <Reference ReferenceType="HasTypeDefinition" IsForward="true">ns=1;s=Measurement.unitSymbol</Reference>
            <Reference>
              <xsl:attribute name="ReferenceType">HasProperty</xsl:attribute>
              <xsl:attribute name="IsForward">false</xsl:attribute>
              <xsl:sequence select="fn:concat('ns=1;s=', fn:string(@rdf:ID))"/>
            </Reference>
          </References>
          <Value>
            <uax:String>
              <xsl:value-of select="fn:string(cim:Measurement.unitSymbol/@rdf:resource)"/>
            </uax:String>
          </Value>
        </UAVariable>
        <UAVariable>
          <xsl:attribute name="NodeId" namespace=""  select="fn:concat(fn:concat('ns=1;s=', fn:string(@rdf:ID)), xs:string(fn:node-name(cim:Measurement.unitMultiplier)))"/>
          <xsl:attribute name="BrowseName" namespace="" select="fn:concat('1:', xs:string(fn:node-name(cim:Measurement.unitMultiplier)))"/>
          <xsl:element name="DisplayName">Measurement.unitMultiplier</xsl:element>
          <References>
            <Reference ReferenceType="HasTypeDefinition" IsForward="true">ns=1;s=Measurement.unitMultiplier</Reference>
            <Reference>
              <xsl:attribute name="ReferenceType">HasProperty</xsl:attribute>
              <xsl:attribute name="IsForward">false</xsl:attribute>
              <xsl:sequence select="fn:concat('ns=1;s=', fn:string(@rdf:ID))"/>
            </Reference>
          </References>
          <Value>
            <uax:String>
              <xsl:value-of select="fn:string(cim:Measurement.unitMultiplier/@rdf:resource)"/>
            </uax:String>
          </Value>
        </UAVariable>
      </xsl:for-each>

      <!-- Parse Discrete Value Objects-->
      <xsl:for-each select="rdf:RDF/cim:DiscreteValue">
        <UAObject>
          <xsl:attribute name="NodeId" namespace="" select="fn:concat('ns=1;s=', fn:string(@rdf:ID))"/>
          <xsl:attribute name="BrowseName" namespace="" select="fn:concat('1:',fn:string(cim:IdentifiedObject.name))"/>
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
              <xsl:attribute	name="ReferenceType">ns=1;s=DiscreteValue.Discrete</xsl:attribute>
              <xsl:attribute name="IsForward">true</xsl:attribute>
              <xsl:sequence select="fn:concat('ns=1;s=', fn:substring(cim:DiscreteValue.Discrete/@rdf:resource,2,33))"/>
            </Reference>
            <Reference>
              <xsl:attribute	name="ReferenceType">ns=1;s=MeasurementValue.MeasurementValueSource</xsl:attribute>
              <xsl:attribute name="IsForward">true</xsl:attribute>
              <xsl:sequence select="fn:concat('ns=1;s=', fn:substring(cim:MeasurementValue.MeasurementValueSource/@rdf:resource,2,33))"/>
            </Reference>
          </References>
        </UAObject>
        <UAVariable>
          <xsl:attribute name="NodeId" namespace=""  select="fn:concat(fn:concat('ns=1;s=', fn:string(@rdf:ID)), xs:string(fn:node-name(cim:IdentifiedObject.aliasName)))"/>
          <xsl:attribute name="BrowseName" namespace="" select="fn:concat('1:', xs:string(fn:node-name(cim:IdentifiedObject.aliasName)))"/>
          <xsl:element name="DisplayName">IdentifiedObject.aliasName</xsl:element>
          <References>
            <Reference ReferenceType="HasTypeDefinition" IsForward="true">ns=1;s=IdentifiedObject.aliasName</Reference>
            <Reference>
              <xsl:attribute name="ReferenceType">HasProperty</xsl:attribute>
              <xsl:attribute name="IsForward">false</xsl:attribute>
              <xsl:sequence select="fn:concat('ns=1;s=', fn:string(@rdf:ID))"/>
            </Reference>
          </References>
          <Value>
            <uax:String>
              <xsl:value-of select="fn:string(cim:IdentifiedObject.aliasName)"/>
            </uax:String>
          </Value>
        </UAVariable>
      </xsl:for-each>

      <!-- Parse Analog Value Objects-->
      <xsl:for-each select="rdf:RDF/cim:AnalogValue">
        <UAObject>
          <xsl:attribute name="NodeId" namespace="" select="fn:concat('ns=1;s=', fn:string(@rdf:ID))"/>
          <xsl:attribute name="BrowseName" namespace="" select="fn:concat('1:',fn:string(cim:IdentifiedObject.name))"/>
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
              <xsl:attribute	name="ReferenceType">ns=1;s=AnalogValue.Analog</xsl:attribute>
              <xsl:attribute name="IsForward">true</xsl:attribute>
              <xsl:sequence select="fn:concat('ns=1;s=', fn:substring(cim:AnalogValue.Analog/@rdf:resource,2,33))"/>
            </Reference>
            <Reference>
              <xsl:attribute	name="ReferenceType">ns=1;s=MeasurementValue.MeasurementValueSource</xsl:attribute>
              <xsl:attribute name="IsForward">true</xsl:attribute>
              <xsl:sequence select="fn:concat('ns=1;s=', fn:substring(cim:MeasurementValue.MeasurementValueSource/@rdf:resource,2,33))"/>
            </Reference>
          </References>
        </UAObject>
        <UAVariable>
          <xsl:attribute name="NodeId" namespace=""  select="fn:concat(fn:concat('ns=1;s=', fn:string(@rdf:ID)), xs:string(fn:node-name(cim:IdentifiedObject.aliasName)))"/>
          <xsl:attribute name="BrowseName" namespace="" select="fn:concat('1:', xs:string(fn:node-name(cim:IdentifiedObject.aliasName)))"/>
          <xsl:element name="DisplayName">IdentifiedObject.aliasName</xsl:element>
          <References>
            <Reference ReferenceType="HasTypeDefinition" IsForward="true">ns=1;s=IdentifiedObject.aliasName</Reference>
            <Reference>
              <xsl:attribute name="ReferenceType">HasProperty</xsl:attribute>
              <xsl:attribute name="IsForward">false</xsl:attribute>
              <xsl:sequence select="fn:concat('ns=1;s=', fn:string(@rdf:ID))"/>
            </Reference>
          </References>
          <Value>
            <uax:String>
              <xsl:value-of select="fn:string(cim:IdentifiedObject.aliasName)"/>
            </uax:String>
          </Value>
        </UAVariable>
      </xsl:for-each>

      <!-- Parse MeasurementValueSource Objects-->
      <xsl:for-each select="rdf:RDF/cim:MeasurementValueSource">
        <UAObject>
          <xsl:attribute name="NodeId" namespace="" select="fn:concat('ns=1;s=', fn:string(@rdf:ID))"/>
          <xsl:attribute name="BrowseName" namespace="" select="fn:concat('1:',fn:string(cim:IdentifiedObject.name))"/>
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
</xsl:stylesheet>