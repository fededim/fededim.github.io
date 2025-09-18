<?xml version="1.0" encoding="UTF-8"?>
<!-- @version $Id: 8d63ac934c137cd2e35054d7595bf0fc23c901d7 $ -->
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

	<!-- version of this stylesheet document  -->
	<xsl:param name="ODIS_E_STYLESHEET_VERSION">14.0.9</xsl:param>
	
	<xsl:param name="Prop_expand_tree_views">false</xsl:param>

	<xsl:param name="Text_ReadSubCompoList">006.05 Subsystem-Verbauliste</xsl:param>
	<xsl:param name="Text_WriteSubCompoList">006.05 Subsystem-Verbauliste codieren</xsl:param>
	<xsl:param name="Text_ReadSWCOList">006.06 Software Compositions Verbauliste</xsl:param>
	<xsl:param name="Text_WriteSWCOList">006.06 Software Compositions Verbauliste codieren</xsl:param>
	<xsl:param name="Text_Unknown">unbekannt</xsl:param>

	<xsl:param name="Text_DiagBatteryState">Batteriestatus</xsl:param>
	<xsl:param name="Text_DtcFilterType">Filteroption für Ereignisspeichereinträge</xsl:param>
	
	<xsl:param name="Text_DiagFilterState">Status Diagnosefilter</xsl:param>
	<xsl:param name="Text_DiagFilterStatePassive">Passiv</xsl:param>
	<xsl:param name="Text_DiagFilterStateActive">Aktiv</xsl:param>
	<xsl:param name="Text_DiagFilterStateActiveHood">Aktiv</xsl:param>
	<xsl:param name="Text_DiagFilterStateActiveBlinker">Aktiv</xsl:param>
	<xsl:param name="Text_DiagFilterStateActiveSFD">Aktiv</xsl:param>

	<xsl:param name="Text_DtcEnvironment">DTC-Umgebungsbedingungen</xsl:param>
	<xsl:param name="Text_DtcSnapshot">DTC-Snapshots</xsl:param>
	<xsl:param name="Text_DtcStatus">DTC-Status</xsl:param>
	<xsl:param name="Text_OverallState">Gesamtstatus</xsl:param>
	<xsl:param name="Text_State">Status</xsl:param>
	<xsl:param name="Text_Overall">Übergreifend</xsl:param>
	<xsl:param name="Text_Measurements">Messwerte</xsl:param>
	<xsl:param name="Text_Parameter">Parameter</xsl:param>
	<xsl:param name="Text_Setting">Grundeinstellung</xsl:param>
	<xsl:param name="Text_ImmediateRoutine">005.05 Kurzläufer-Routine (Start)</xsl:param>
	<xsl:param name="Text_Setting_Status_Records">Routinen Status Records</xsl:param>
	<xsl:param name="Text_Setting_Status">Routinen Status</xsl:param>
	<xsl:param name="Text_Setting_Result">Routinen Result</xsl:param>
	<xsl:param name="Text_Setting_Start">005 Grundeinstellung (Start)</xsl:param>
	<xsl:param name="Text_Setting_Stop">005 Grundeinstellung (Stopp)</xsl:param>
	<xsl:param name="Text_Setting_Next">005 Grundeinstellung (Nächste)</xsl:param>
	<xsl:param name="Text_Actuator">Stellglied</xsl:param>
	<xsl:param name="Text_Actuator_State">Stellgliedstatus</xsl:param>
	<xsl:param name="Text_ActDiag_Start">004 Stellglied (Start)</xsl:param>
	<xsl:param name="Text_ActDiag_Next">004 Stellglied (Nächste)</xsl:param>
	<xsl:param name="Text_ActDiag_Stop">004 Stellglied (Stopp)</xsl:param>
	<xsl:param name="Text_WorkshopCode">Werkstattcode</xsl:param>
	<xsl:param name="Text_Version">Version</xsl:param>
	<xsl:param name="Text_VersionNumber">VersionNumber</xsl:param>
	<xsl:param name="Text_Release">Release</xsl:param>
	<xsl:param name="Text_DiagKrnl">Diagnosekernel</xsl:param>
	<xsl:param name="Text_Mcd">MCD</xsl:param>
	<xsl:param name="Text_Ecf">ECF</xsl:param>
	<xsl:param name="Text_PduApi">PDU-API</xsl:param>
	<xsl:param name="Text_Component">Komponente</xsl:param>
	<xsl:param name="Text_Bezeichn">Bezeichnung</xsl:param>
	<xsl:param name="Text_Trademark">Trademark</xsl:param>
	<xsl:param name="Text_Build">Build</xsl:param>
	<xsl:param name="Text_BuildDate">Build-Datum</xsl:param>
	<xsl:param name="Text_TypePlace">Messtyp / Messort</xsl:param>
	<xsl:param name="Text_Vin">Fahrzeug-Ident.-Nr.</xsl:param>
	<xsl:param name="Text_SystemEnv">Systemumgebung</xsl:param>
	<xsl:param name="Text_Account">Login-Account</xsl:param>
	<xsl:param name="Text_ComputerName">PC-Name</xsl:param>
	<xsl:param name="Text_OperatingSystem">Betriebssystem</xsl:param>
	<xsl:param name="Text_processor">Prozessor</xsl:param>
	<xsl:param name="Text_Ram">RAM</xsl:param>
	<xsl:param name="Text_DiagHw">Diagnose-Hardware</xsl:param>
	<xsl:param name="Text_Vehicle">Fahrzeug</xsl:param>
	<xsl:param name="Text_VinAbr">VIN</xsl:param>
	<xsl:param name="Text_manufacturer">Hersteller</xsl:param>
	<xsl:param name="Text_model">Modell</xsl:param>
	<xsl:param name="Text_modelyear">Modelljahr</xsl:param>
	<xsl:param name="Text_variant">Variante</xsl:param>
	<xsl:param name="Text_mkb">Motorkennbuchstabe</xsl:param>
	<xsl:param name="Text_DayCounter">Tageszähler</xsl:param>
	<xsl:param name="Text_CentrUnlearningCounter">Zentraler Verlernzähler</xsl:param>
	<xsl:param name="Text_LastClearDate">Datum des letzten funktionalen Ereignisspeicher löschen</xsl:param>
	<xsl:param name="Text_Milage">Laufleistung</xsl:param>
	<xsl:param name="Text_OnboardTime">Onboard-Uhrzeit</xsl:param>
	<xsl:param name="Text_CentrDate">Zentrales Fahrzeugdatum</xsl:param>
	<xsl:param name="Text_CentrTime">Zentrale Fahrzeuguhrzeit</xsl:param>
	<xsl:param name="Text_McdProj">MCD-Projekt</xsl:param>
	<xsl:param name="Text_McdProjVers">MCD-Projekt Version</xsl:param>
	<xsl:param name="Text_McdProjVI">VehicleInformation</xsl:param>
	<xsl:param name="Text_Cooperation">Kooperation</xsl:param>
	<xsl:param name="Text_Content">Inhalt</xsl:param>
	<xsl:param name="Text_CommData">Kommunikationsdaten</xsl:param>
	<xsl:param name="Text_Ecu">ECU</xsl:param>
	<xsl:param name="Text_Status">Status</xsl:param>
	<xsl:param name="Text_ErrText">Fehlertext</xsl:param>
	<xsl:param name="Text_Top">Top</xsl:param>
	<xsl:param name="Text_NoEntries">Keine Einträge</xsl:param>
	<xsl:param name="Text_DtcText">DTC-Text</xsl:param>
	<xsl:param name="Text_StatCode">Statuscode</xsl:param>
	<xsl:param name="Text_Eigenschaft">Eigenschaft</xsl:param>
	<xsl:param name="Text_Before">Vorher</xsl:param>
	<xsl:param name="Text_After">Nachher</xsl:param>
	<xsl:param name="Text_NoDatasetCompare">Kein Datensatz-Versionsvergleich verfügbar.</xsl:param>
	<xsl:param name="Text_NoStyleshImpl">Oder Stylesheet-Implementierung fehlt noch.</xsl:param>
	<xsl:param name="Text_DiagAddr">Steuergeräteadresse</xsl:param>
	<xsl:param name="Text_Responses">Antworten</xsl:param>
	<xsl:param name="Text_Byte">Byte</xsl:param>
	<xsl:param name="Text_MeasurementVal">003 Messwerte</xsl:param>
	<xsl:param name="Text_Master">Master</xsl:param>
	<xsl:param name="Text_Subsystem">Subsystem</xsl:param>
	<xsl:param name="Text_SWCO">Software Composition</xsl:param>
	<xsl:param name="Text_SWC">Software Component</xsl:param>
	<xsl:param name="Text_Name">Name</xsl:param>
	<xsl:param name="Text_Value">Wert</xsl:param>
	<xsl:param name="Text_Adr">Adr.</xsl:param>
	<xsl:param name="Text_ReadAdopt">007 Anpassung lesen</xsl:param>
	<xsl:param name="Text_WriteAdopt">007 Anpassung schreiben</xsl:param>
	<xsl:param name="Text_Reset_Adaptation">007 Anpassung zurücksetzen</xsl:param>
	<xsl:param name="Text_BasicSetting">005 Grundeinstellung</xsl:param>
	<xsl:param name="Text_ReadCoding">006 Codierung lesen</xsl:param>
	<xsl:param name="Text_WriteCoding">006 Codierung schreiben</xsl:param>
	<xsl:param name="Text_WriteDataset">010.01 Datensatz schreiben</xsl:param>
	<xsl:param name="Text_Eventmemory">002 Ereignisspeicher</xsl:param>
	<xsl:param name="Text_EventmemoryDev">002 Entwickler Ereignisspeicher</xsl:param>
	<xsl:param name="Text_EventMemoryClear">002.02 Ereignisspeicher löschen</xsl:param>
	<xsl:param name="Text_EventMemoryClearDev">002.02 Entwickler Ereignisspeicher löschen</xsl:param>
	<xsl:param name="Text_UpdProgramming_01">042 Flashen</xsl:param>
	<xsl:param name="Text_Ident">001 Identifikation</xsl:param>
	<xsl:param name="Text_ErwIdent">001 Erweiterte Identifikation</xsl:param>
	<xsl:param name="Text_MultipleIdentification">012.1 Multiple Identifikationsdaten</xsl:param>
	<xsl:param name="Text_MultipleMeasurement">012.2 Multiple Messwerte</xsl:param>
	<xsl:param name="Text_MultipleAdaptation">012.3 Multiple Anpassungen</xsl:param>
	<xsl:param name="Text_ActDiag">004 Stellgliedtest</xsl:param>
	<xsl:param name="Text_SecAccess">008 Zugriffsberechtigung</xsl:param>
	<xsl:param name="Text_ReadEeprom">010.02 Speicherzellen lesen</xsl:param>
	<xsl:param name="Text_WriteEeprom">010.02 Speicherzellen schreiben</xsl:param>
	<xsl:param name="Text_HexService">011.01 Hex-Service</xsl:param>
	<xsl:param name="Text_DataUpload">011.05 Datenupload</xsl:param>
	<xsl:param name="Text_RollerTestStandMode">045.01 Rollenmodus</xsl:param>
	<xsl:param name="Text_Obd">040 Kundendienst OBD</xsl:param>
	<xsl:param name="Text_ResetEcu">ECU Reset</xsl:param>
	<xsl:param name="Text_CompList">Verbauliste</xsl:param>
	<xsl:param name="Text_CompList_Json">Verbauliste/Verwendete JSON-Steuerdatei</xsl:param>
	<xsl:param name="Text_List">Liste</xsl:param>
	<xsl:param name="Text_ContrUnit">Steuergerät</xsl:param>
	<xsl:param name="Text_ContrUnitName">SG-Name</xsl:param>
	<xsl:param name="Text_VwAudiPartnumber">VW/Audi-TNR</xsl:param>
	<xsl:param name="Text_Sw">SW</xsl:param>
	<xsl:param name="Text_Hw">HW</xsl:param>
	<xsl:param name="Text_Dtc">DTC</xsl:param>
	<xsl:param name="Text_ContrUnitList">Steuergeräteliste</xsl:param>
	<xsl:param name="Text_NodeAddress">Knotenadresse</xsl:param>
	<xsl:param name="Text_Coded">Codiert</xsl:param>
	<xsl:param name="Text_Detected">Erkannt</xsl:param>
	<xsl:param name="Text_NodeId">Node-ID</xsl:param>
	<xsl:param name="Text_Bussystem">Text_Bussystem</xsl:param>
	<xsl:param name="Text_SleepBit">Sleep-Bit</xsl:param>
	<xsl:param name="Text_Yes">ja</xsl:param>
	<xsl:param name="Text_No">nein</xsl:param>
	<xsl:param name="Text_FlashVorg">Flash-Vorgang</xsl:param>
	<xsl:param name="Text_Session">Session</xsl:param>
	<xsl:param name="Text_JsonFile">JSON-Steuerdatei</xsl:param>
	<xsl:param name="Text_Result">Ergebnis</xsl:param>
	<xsl:param name="Text_Duration">Dauer</xsl:param>
	<xsl:param name="Text_FileSize">Dateigröße</xsl:param>
	<xsl:param name="Text_FlashHint">Hinweis</xsl:param>
	<xsl:param name="Text_FlashSequenceOrder">Die Flash-Reihenfolge wurde vom Anwender editiert. Neue Position:</xsl:param>
	<xsl:param name="Text_BeforeFlash">Vor dem Update</xsl:param>
	<xsl:param name="Text_AfterFlash">Nach dem Update</xsl:param>
	<xsl:param name="Text_ResultProtocol">Ergebnisprotokoll</xsl:param>
	<xsl:param name="Text_BZDProtocol">Fahrzeugdokumentation</xsl:param>
	<xsl:param name="Text_SwapFodStatus">SWaP/FoD-Status</xsl:param>
	<xsl:param name="Text_SwapPublicKey">SWaP Public Key</xsl:param>
	<xsl:param name="Text_SwapStateUnlocked">Freigeschaltet</xsl:param>
	<xsl:param name="Text_SwapStateUnlockedInactive">Freigeschaltet und Inaktiv</xsl:param>
	<xsl:param name="Text_SwapStateUnlockedExpired">Freischaltung abgelaufen</xsl:param>
	<xsl:param name="Text_SwapStateUnlockedError">Fehler bei Verteilung der Freischaltung</xsl:param>
	<xsl:param name="Text_SwapStateNotUnlocked">Nicht freigeschaltet</xsl:param>
	<xsl:param name="Text_SwapStateUndefined">Nicht definiert</xsl:param>
	<xsl:param name="Text_SwapUnlockedState">Freischaltstatus</xsl:param>
	<xsl:param name="Text_SwapFsIds">FS-IDs</xsl:param>
	<xsl:param name="Text_SwapStatusByte">Statusbyte</xsl:param>
	<xsl:param name="Text_SwapFod">SWaP/FoD</xsl:param>
	<xsl:param name="Text_EventmemoryPrimary">Primäre Ereignisse</xsl:param>
	<xsl:param name="Text_EventmemoryHint">Informationen</xsl:param>
	<xsl:param name="Text_expand_all">Alle expandieren</xsl:param>
	<xsl:param name="Text_collapse_all">Alle zuklappen</xsl:param>
	<xsl:param name="Text_Comment">Kommentar</xsl:param>

<xsl:key name="index_ecu" match="ecu" use="ecu_id"/>

<xsl:variable name="wahl_sdg"></xsl:variable>
<xsl:variable name="wahl_freezeframe">freezeframe_darstellen</xsl:variable>
<xsl:variable name="wahl_ti_name"></xsl:variable>
<xsl:variable name="wahl_ti_value"></xsl:variable>
<xsl:variable name="wahl_ti_unit"></xsl:variable>

<!-- Template for the main Protocol structure, containing styles and required javascript functions -->
<xsl:template match="protocol">

  <!-- translation for document kind -->
  <xsl:variable name="documentKind">
    <xsl:choose>
      <xsl:when test="information/document_name = 'Fahrzeugdokumentation'">
        <xsl:value-of select="$Text_BZDProtocol" />
      </xsl:when>
      <xsl:otherwise>
        <xsl:value-of select="$Text_ResultProtocol" />
      </xsl:otherwise>
    </xsl:choose>
  </xsl:variable>

  <html>
    <head>
      <xsl:apply-templates select="orientation_right_to_left" />
      <title>
        <xsl:value-of select="$documentKind"/>
      </title>
    </head>

    <body>
      <xsl:call-template name="addJavascriptButtons"/>
      <xsl:call-template name="addHeaderInformations">
        <xsl:with-param name="document_name" select="$documentKind" />
      </xsl:call-template>
      <xsl:call-template name="addVehicleInformations"/>
      <xsl:call-template name="addCommunicationInformations"/>
    </body>
  </html>
</xsl:template>

<!--  Template to display the javascript portions -->
<xsl:template match="orientation_right_to_left">

  <!-- Choose the orientation and the alignment to be used in all styles-->
  <xsl:variable name="textOrientation">
    <xsl:choose>
      <xsl:when test="current() = 'true'">rtl</xsl:when>
      <xsl:otherwise>ltr</xsl:otherwise>
    </xsl:choose>
  </xsl:variable>
  <xsl:variable name="textAlignment">
    <xsl:choose>
      <xsl:when test="current() = 'true'">right</xsl:when>
      <xsl:otherwise>left</xsl:otherwise>
    </xsl:choose>
  </xsl:variable>
  <xsl:variable name="textAlignmentOpposite">
    <xsl:choose>
      <xsl:when test="current() = 'true'">left</xsl:when>
      <xsl:otherwise>right</xsl:otherwise>
    </xsl:choose>
  </xsl:variable>

  <style type="text/css">
		html {direction:<xsl:value-of select="$textOrientation"/>;}
		table {border-width:0pt;border-color:black;border-style:solid;border-collapse:collapse;padding:0;margin:0;width:200mm;table-layout:auto}
		.border_style {border-width:1pt;border-color:black;border-style:solid;border-collapse:collapse;padding-<xsl:value-of select="$textAlignment"/>:5;padding-<xsl:value-of select="$textAlignmentOpposite"/>:5;margin-top:10;margin-bottom:10;width:195mm}
		tr {border-width:0pt;border-color:black;border-style:solid;padding:0;margin:0;text-align:<xsl:value-of select="$textAlignment"/>}
		td {border-width:0pt;border-color:black;border-style:solid;padding:0;margin:0;text-align:<xsl:value-of select="$textAlignment"/>}
		.align_opposite {text-align:<xsl:value-of select="$textAlignmentOpposite"/>;}
		span {margin-top:0pt;margin-bottom:0pt}
		div {margin-top:0pt;margin-bottom:10pt;margin-<xsl:value-of select="$textAlignment"/>:16pt}
		p {margin-top:0pt;margin-bottom:0pt}
		.p_mini {margin-top:0pt;margin-bottom:0pt}
		.p_small {margin-top:10pt;margin-bottom:10pt}
		.p_big {margin-top:16pt;margin-bottom:16pt}
		.courier_style {margin-top:0;margin-bottom:0;font-size:10pt;font-family:"Courier New";direction:<xsl:value-of select="$textOrientation"/>}
		.default_obd_mode {color:blue;margin-top:0;margin-bottom:0;font-size:10pt;font-weight:bold;font-family:Arial;direction:<xsl:value-of select="$textOrientation"/>}
		.default_error {color:red;margin-top:0;margin-bottom:0;font-size:10pt;font-family:Arial;direction:<xsl:value-of select="$textOrientation"/>}
		.default_error_b {color:red;margin-top:0;margin-bottom:0;font-size:10pt;font-family:Arial;font-weight:bold;direction:<xsl:value-of select="$textOrientation"/>}
		.default_warn {color:orange;margin-top:0;margin-bottom:0;font-size:10pt;font-family:Arial;direction:<xsl:value-of select="$textOrientation"/>}
		.default_warn_b {color:orange;margin-top:0;margin-bottom:0;font-size:10pt;font-family:Arial;font-weight:bold;direction:<xsl:value-of select="$textOrientation"/>}
		.default_ok {color:green;margin-top:0;margin-bottom:0;font-size:10pt;font-family:Arial;direction:<xsl:value-of select="$textOrientation"/>}
		.compstylenotequal {color:red;margin-top:0;margin-bottom:0;font-size:10pt;font-weight:bold;font-family:Arial;direction:<xsl:value-of select="$textOrientation"/>}
		.compstyleequal {margin-top:0;margin-bottom:0;font-size:10pt;font-family:Arial;direction:<xsl:value-of select="$textOrientation"/>}
		.default_style {margin-top:0;margin-bottom:0;font-size:10pt;font-family:Arial;direction:<xsl:value-of select="$textOrientation"/>}
		.default_style_revert_align {margin-top:0;margin-bottom:0;font-size:10pt;font-family:Arial;direction:<xsl:value-of select="$textAlignmentOpposite"/>}
		.default_style_topmargin {margin-top:15;margin-bottom:0;font-size:10pt;font-family:Arial;direction:<xsl:value-of select="$textOrientation"/>}
		.default_style_b {margin-top:0;margin-bottom:0;font-size:10pt;font-family:Arial;font-weight:bold;direction:<xsl:value-of select="$textOrientation"/>}
		.default_style_b_indent {text-indent:20pt;margin-top:0;margin-bottom:0;font-size:10pt;font-family:Arial;font-weight:bold;direction:<xsl:value-of select="$textOrientation"/>}
		.default_style_bu {margin-top:0;margin-bottom:0;font-size:10pt;font-family:Arial;font-weight:bold;text-decoration:underline;direction:<xsl:value-of select="$textOrientation"/>}
		.default_style_bu_topmargin {margin-top:15;margin-bottom:0;font-size:10pt;font-family:Arial;font-weight:bold;text-decoration:underline;direction:<xsl:value-of select="$textOrientation"/>}
		.default_style_bu_diagfunction {background-color:#C0C0C0;margin-top:15;margin-bottom:0;font-size:10pt;font-family:Arial;font-weight:bold;text-decoration:underline;direction:<xsl:value-of select="$textOrientation"/>}
		.default_style_diagfunction {background-color:#C0C0C0;margin-top:15;margin-bottom:0;font-size:10pt;font-family:Arial;direction:<xsl:value-of select="$textOrientation"/>}
		.default_style_ecu {background-color:#8FBCE6;margin-top:15;margin-bottom:0;font-size:10pt;font-family:Arial;font-weight:bold;direction:<xsl:value-of select="$textOrientation"/>}<!-- foxsven: Original: #E0E0E0 -->
		.default_style_big_bi {margin-top:0;margin-bottom:0;font-size:16pt;font-family:Arial;font-weight:bold;font-style:italic;direction:<xsl:value-of select="$textOrientation"/>}
		.default_style_big_b {margin-top:0;margin-bottom:0;font-size:20pt;font-family:Arial;font-weight:bold;direction:<xsl:value-of select="$textOrientation"/>}
		.header_style_big {margin-top:0;margin-bottom:0;font-size:13pt;font-family:Arial;font-weight:bold;direction:<xsl:value-of select="$textOrientation"/>}
		.header_style_bigu {margin-top:0;margin-bottom:0;font-size:13pt;font-family:Arial;font-weight:bold;direction:<xsl:value-of select="$textOrientation"/>;text-decoration:underline}
		.header_style_small {margin-top:0;margin-bottom:0;font-size:11pt;font-family:Arial;direction:<xsl:value-of select="$textOrientation"/>}
		.small_style {margin-top:0;margin-bottom:0;font-size:8pt;font-family:Arial;direction:<xsl:value-of select="$textOrientation"/>}
		.very_small_style {margin-top:0;margin-bottom:0;font-size:6pt;font-family:Arial;direction:<xsl:value-of select="$textOrientation"/>}
		.small_style_b {margin-top:0;margin-bottom:0;font-size:8pt;font-family:Arial;font-weight:bold;direction:<xsl:value-of select="$textOrientation"/>}
		.small_style_bu {margin-top:0;margin-bottom:0;font-size:8pt;font-family:Arial;font-weight:bold;text-decoration:underline;direction:<xsl:value-of select="$textOrientation"/>}
		.font_arial {font-family:Arial}
		.font_courier {font-family:"Courier New"}
		.font_sidis {font-family:SidisSymbole}
		.font_symbol {font-family:"Symbol"}
		.font_wingdings {font-family:"Wingdings"}
		.size_small {font-size:10pt}
		.size_big {font-size:12pt}
		.color_black {color:#000000}
		.color_red {color:#FF0000}
		.color_green {color:#006400}
		.color_blue {color:#0000FF}
		.color_yellow {color:#FFF405}
		.color_green2 {color:#92C027}
		.color_blue2 {color:#6BBCE4}
		.style_normal {font-style:normal}
		.style_italic {font-style:italic}
		.weight_normal {font-weight:normal}
		.weight_bold {font-weight:bold}

		.table_spec {border-width:0;border-collapse:collapse;padding:0;margin:0;width:100%}
	 
		td.border_cell{border-width:1pt;border-color:black;border-style:solid;padding:0;margin:0;text-align:<xsl:value-of select="$textAlignment"/>}
		td.border_bottom{border-color:black;border-top:blank;border-bottom:solid;border-bottom-width:thin;border-right:blank;border-left:blank;padding:0;margin:0;text-align:<xsl:value-of select="$textAlignment"/>}
		table.small_table {border-width:0pt;border-color:black;border-style:solid;border-collapse:collapse;padding:0;margin:0;width:47mm;table-layout:auto;font-size:10pt;font-family:Arial}

		/* Styles for the expansion mechanism */
		input.treeView {float:<xsl:value-of select="$textAlignment"/> !important; z-index:-1 !important; position:absolute; vertical-align:middle;  width:0px; height:0px; overflow:hidden;}
		label.treeView.hover {text-decoration:underline; vertical-align:middle;}
		label.treeView {cursor:pointer; vertical-align:middle;}
		.treeView_label_content { position:relative; <xsl:value-of select="$textAlignment"/>:1.5em; vertical-align:middle;}
		.treeView_selector_item { position:absolute; display:table-cell; vertical-align:middle; border:1px solid; padding-<xsl:value-of select="$textAlignment"/>:0.33em; padding-<xsl:value-of select="$textAlignmentOpposite"/>:0.33em; background-color:#E7E7E7; font-family:Consolas,'Courier New',Courier; margin-top:0;margin-bottom:0;font-size:10pt;font-weight:bold;direction:<xsl:value-of select="$textOrientation"/>}
		<xsl:choose>
			<xsl:when test="$Prop_expand_tree_views = 'false'">
			.treeView_content {clear:<xsl:value-of select="$textAlignment"/>; margin-<xsl:value-of select="$textAlignment"/>:2%; width:98%; background-color:#ffffff; display:none}
				</xsl:when>
			<xsl:otherwise>
			.treeView_content {clear:<xsl:value-of select="$textAlignment"/>; margin-<xsl:value-of select="$textAlignment"/>:2%; width:98%; background-color:#ffffff; display:block}
			</xsl:otherwise>
		</xsl:choose>
	
	 
		@media screen
		{
		  body { margin-top:0;margin-bottom:0 }
		  .table_spec2 {border-width:0;border-collapse:collapse;padding:0;margin:0;width:100%}
		  p {margin-top:0pt;margin-bottom:0pt }
		  .nichtdrucken {font-size:10pt;font-family:Arial;direction:<xsl:value-of select="$textOrientation"/>}
		}
	 
		#button_bar {position:fixed; <xsl:value-of select="$textAlignmentOpposite"/>:15px; text-align:<xsl:value-of select="$textAlignment"/>;}
		#button_bar span {display:block;}

		@media print
		{
          body { margin-top:0;margin-bottom:0 }
          .table_spec2 {border-width:0;border-collapse:collapse;padding:0;margin:0;width:195mm}
          p {margin-top:0pt;margin-bottom:0pt }
          .nichtdrucken {font-size:10pt;font-family:Arial;direction:<xsl:value-of select="$textOrientation"/>;display:none}

		  /* do not print expansion mechanism items*/ 
		  .treeView_selector_item,
		  input.treeView { display:none; }
		  .treeView_label_content { position:static; }
		  #button_bar {display:none;}
		}
	  </style>


	  <script type="text/javascript">
		<![CDATA[

		  function showHideSectionsAfterCheckbox(checkbox) {
			var startMarker = document.getElementById("start_marker_"+checkbox.id);
			showHideSectionByNode(startMarker.nextSibling, !(checkbox.checked));
		  }
		
		  function showSectionsByID(id) {
			var checkbox = document.getElementById("treeView_"+id);
			checkbox.checked=true;
			showHideSectionsAfterCheckbox(checkbox);
		  }
		
	 	  function set_all_treeViews(expand) {
			var input_elements = document.getElementsByName("treeView_checkbox");
			for (var i=0; i<input_elements.length; i++) {
			  if (expand) {
				if (!input_elements[i].checked) {
				  input_elements[i].checked=true;
				  showHideSectionsAfterCheckbox(input_elements[i]);
				}
			  }
			  else {
				if (input_elements[i].checked) {
				  input_elements[i].checked=false;
				  showHideSectionsAfterCheckbox(input_elements[i]);
				}
			  }
			}	
		  }

		  function expand_parent_node(nodeId) {
			var input_elements = document.getElementsByName(nodeId);
			expand_parent_node_recursivly(input_elements[0].parentNode);
		  }
		  function expand_parent_node_recursivly(node) {
			if (node.className == "treeView_content") {
			  checkChildCheckbox(node.previousSibling);
			  var currentNode = node.previousSibling;
			}
			else {
			  expand_parent_node_recursivly(node.parentNode);
			}
		  }
		  function checkChildCheckbox(node) {
			if (node.name == "treeView_checkbox") {
			  node.checked=true;
			  showHideSectionsAfterCheckbox(node);
			}
			else {
			  for (var i=0; i<node.childNodes.length; i++) {
				checkChildCheckbox(node.childNodes[i]);
			  }
			}
		  }
		
		  function showHideSectionByNode(node, hideBoolean) {
			for (var sibling=node; sibling!=null; sibling=sibling.nextSibling) {
			  with(sibling) {
				if (nodeType == 1) {
				  if (className == "treeView_content") {
					if (hideBoolean) {
					  style.display="none";
					}
					else {
					  //FireFox table display fix:
					  if (nodeName.toUpperCase() == "TBODY") {
						style.display="table-row-group";
					  }
					  else {
						style.display="block";
					  }
					}
				  } 
				  else if (className == "treeView") {
					if (nodeName.toLowerCase() == "input") {
					  if (type == "hidden") {
						return;
					  }
					  //Ignore the checkbox input itself
					}
					else if (nodeName.toLowerCase() == "label") {
					  for (var i=0; i<childNodes.length; i++) {
						with (childNodes[i]) {
						  if (className == "treeView_selector_item") {
							if (hideBoolean) {
							  firstChild.nodeValue="+";
							}
							else {
							  firstChild.nodeValue="-";
							}
							break;
						  }
						}
					  }
					}
				  } 
				  else {
					showHideSectionByNode(childNodes[0], hideBoolean);
				  }
				}
			  }
			}
		  }
		]]>
	  </script>
</xsl:template>

  <!-- Buttons to expand or collapse the complete protocol -->
  <xsl:template name="addJavascriptButtons">
    <div id="button_bar" class="button_bar">
      <span>
        <button type="button" name="expand_all" onChange="javascript:set_all_treeViews(true);" onClick="javascript:set_all_treeViews(true);">
          <span>
            <xsl:value-of select="$Text_expand_all" />
          </span>
        </button>
      </span>
      <span>
        <button type="button" name="collapse_all" onChange="javascript:set_all_treeViews(false);" onClick="javascript:set_all_treeViews(false);">
          <span>
            <xsl:value-of select="$Text_collapse_all"></xsl:value-of>
          </span>
        </button>
      </span>
    </div>
  </xsl:template>

  <!-- Display header information (application name, protocol type, timestamp) -->
  <xsl:template name="addHeaderInformations">
    <xsl:param name="document_name" />
    <table style="border-bottom-style=groove;border-bottom-color=black;border-bottom-width=2">
      <tr>
        <!-- Display Software Name (ODIS Engineering) -->
        <td valign='bottom' style='width:45mm;'>
          <p class="header_style_big">
            <xsl:value-of select="information/software_name" />
          </p>
        </td>

        <td valign='bottom' style='width:80mm;text-align:center'>
          <p class="header_style_big">
             <xsl:value-of select="$document_name"/>
          </p>
        </td>

        <td valign='bottom' class="align_opposite" style='width:45mm;'>
          <p class="header_style_small">
            <xsl:for-each select="time_of_issue">
              <xsl:call-template name="display_timestamp">
                <xsl:with-param name="date">
                  <xsl:value-of select="." />
                </xsl:with-param>
              </xsl:call-template>
              <br />
            </xsl:for-each>
          </p>
        </td>
      </tr>
      <tr>
        <td colspan="3" style="text-align: center">
          <p class="header_style_small">
            <xsl:value-of select="information/confidentiality_level" />
          </p>
        </td>
      </tr>
    </table>
    <p class="p_small"></p>

    <script language='JavaScript'>
      ReadVersion('<xsl:value-of select="xsl_version" />','<xsl:value-of select="attention_string" />','<xsl:value-of select="version_string" />','<xsl:value-of select="warning_string" />')
    </script>
    <table>
      <tr>
        <xsl:for-each select="information/workshop_code">
          <td valign='top' style='width:105mm'>
            <p class="default_style_bu">
              <xsl:value-of select="$Text_WorkshopCode"/>
              <xsl:text>:</xsl:text>
            </p>
          </td>
        </xsl:for-each>
        <xsl:for-each select="information/version">
          <td valign='top' style='width:65mm'>
            <p class="default_style_bu">
              <xsl:value-of select="$Text_Version"/>
              <xsl:text>:</xsl:text>
            </p>
          </td>
        </xsl:for-each>
      </tr>
      <tr>
        <xsl:for-each select="information/workshop_code">
          <td valign='top' style='width:105mm'>
            <p class="default_style">
              <xsl:value-of select="serial_number" />
              <xsl:text> </xsl:text>
              <xsl:value-of select="importer_number" />
              <xsl:text> </xsl:text>
              <xsl:value-of select="dealer_number" />
            </p>
          </td>
        </xsl:for-each>

        <xsl:for-each select="information/version">
          <td style='width:65mm;padding:0'>
            <xsl:for-each select="number">
			  <xsl:variable name="versionNumberWithBetaMark">
			    <xsl:choose>
				  <xsl:when test="./../showBeta='true'">
				    <xsl:value-of select="concat(.,' (BETA)')"/>
				  </xsl:when>
				  <xsl:otherwise>
				    <xsl:value-of select="."/>
				  </xsl:otherwise>
				</xsl:choose>
			  </xsl:variable>
              <xsl:call-template name="display_value_pair">
			    <xsl:with-param name="key" select="$Text_VersionNumber" />
                <xsl:with-param name="value" select="$versionNumberWithBetaMark" />
              </xsl:call-template>
            </xsl:for-each>
            <xsl:for-each select="release">
              <xsl:call-template name="display_value_pair">
                <xsl:with-param name="key" select="$Text_Release" />
                <xsl:with-param name="value" select="." />
              </xsl:call-template>
            </xsl:for-each>
            <xsl:for-each select="kernel">
              <xsl:call-template name="display_value_pair">
                <xsl:with-param name="key" select="$Text_DiagKrnl" />
                <xsl:with-param name="value" select="." />
              </xsl:call-template>
            </xsl:for-each>
            <xsl:for-each select="mcd">
              <xsl:call-template name="display_value_pair">
                <xsl:with-param name="key" select="$Text_Mcd" />
                <xsl:with-param name="value" select="." />
              </xsl:call-template>
            </xsl:for-each>
            <xsl:for-each select="ecf">
              <xsl:call-template name="display_value_pair">
                <xsl:with-param name="key" select="$Text_Ecf" />
                <xsl:with-param name="value" select="." />
              </xsl:call-template>
            </xsl:for-each>
            <xsl:for-each select="pdu_api">
              <xsl:call-template name="display_value_pair">
                <xsl:with-param name="key" select="$Text_PduApi" />
                <xsl:with-param name="value" select="." />
              </xsl:call-template>
            </xsl:for-each>
            <xsl:for-each select="parts">
              <b>
                <xsl:value-of select="$Text_Component"/>
                <xsl:text>: </xsl:text>
              </b>
              <br />
              <xsl:for-each select="product_or_component">
                <xsl:call-template name="display_value_pair">
                  <xsl:with-param name="indent" select="'&#160;'"/>
                  <xsl:with-param name="key" select="$Text_Bezeichn" />
                  <xsl:with-param name="value" select="." />
                </xsl:call-template>
              </xsl:for-each>
              <xsl:for-each select="trademark">
                <xsl:call-template name="display_value_pair">
                  <xsl:with-param name="indent" select="'&#160;'"/>
                  <xsl:with-param name="key" select="$Text_Trademark" />
                  <xsl:with-param name="value" select="." />
                </xsl:call-template>
              </xsl:for-each>
              <xsl:for-each select="build">
                <xsl:call-template name="display_value_pair">
                  <xsl:with-param name="indent" select="'&#160;'"/>
                  <xsl:with-param name="key" select="$Text_Build" />
                  <xsl:with-param name="value" select="." />
                </xsl:call-template>
              </xsl:for-each>
              <xsl:for-each select="build_time_stamp">
                <xsl:call-template name="display_value_pair">
                  <xsl:with-param name="indent" select="'&#160;'"/>
                  <xsl:with-param name="key" select="$Text_BuildDate" />
                  <xsl:with-param name="value">
                    <xsl:call-template name="display_timestamp">
                      <xsl:with-param name="date">
                        <xsl:value-of select="." />
                      </xsl:with-param>
                    </xsl:call-template>
                  </xsl:with-param>
                </xsl:call-template>
                <br />
              </xsl:for-each>
            </xsl:for-each>
          </td>
        </xsl:for-each>
      </tr>
    </table>

    <p class="p_small"></p>

    <table>
      <tr>
        <td valign='top' style='width:105mm'>
          <p class="default_style_bu">
            <xsl:value-of select="$Text_TypePlace"/>
          </p>
        </td>
        <td valign='top' style='width:65mm'>
          <p class="default_style_bu">
            <xsl:value-of select="$Text_Vin"/>
            <xsl:text>: </xsl:text>
          </p>
        </td>
      </tr>
      <tr>
        <td valign='top' style='width:105mm'>
          <p class="default_style">
            <xsl:value-of select="information/measurement_type_display_name" />
            <br />
            <xsl:value-of select="information/location_display_name" />
          </p>
        </td>
        <td valign='top' style='width:65mm'>
          <p class="default_style">
            <xsl:value-of select="vehicle/vehicle_data[display_name='vin']/display_value" />
            <xsl:if test="vehicle/vehicle_data[display_name='internal_vehicle_nb']/display_value">
              <br />
              <xsl:value-of select="vehicle/vehicle_data[display_name='internal_vehicle_nb']/display_value" />
            </xsl:if>
          </p>
        </td>
      </tr>
    </table>

    <p class="p_small"></p>

    <table>
      <tr>
        <td valign='top' style='width:105mm'>
          <p class="default_style_bu">
            <xsl:value-of select="$Text_SystemEnv"/>
          </p>
          <p class="default_style">
            <xsl:for-each select="information/login_account">
              <xsl:call-template name="display_value_pair">
                <xsl:with-param name="key" select="$Text_Account" />
                <xsl:with-param name="value" select="." />
              </xsl:call-template>
            </xsl:for-each>
            <xsl:for-each select="information/pc_name">
              <xsl:call-template name="display_value_pair">
                <xsl:with-param name="key" select="$Text_ComputerName" />
                <xsl:with-param name="value" select="." />
              </xsl:call-template>
            </xsl:for-each>
            <xsl:for-each select="information/pc_os">
              <xsl:call-template name="display_value_pair">
                <xsl:with-param name="key" select="$Text_OperatingSystem" />
                <xsl:with-param name="value" select="." />
              </xsl:call-template>
            </xsl:for-each>
            <xsl:for-each select="information/pc_ecu">
              <xsl:call-template name="display_value_pair">
                <xsl:with-param name="key" select="$Text_processor" />
                <xsl:with-param name="value" select="." />
              </xsl:call-template>
            </xsl:for-each>
            <xsl:for-each select="information/pc_ram">
              <xsl:call-template name="display_value_pair">
                <xsl:with-param name="key" select="$Text_Ram" />
                <xsl:with-param name="value" select="." />
              </xsl:call-template>
            </xsl:for-each>
            <xsl:for-each select="information/diag_hardware">
              <xsl:call-template name="display_value_pair">
                <xsl:with-param name="key" select="$Text_DiagHw" />
                <xsl:with-param name="value" select="." />
              </xsl:call-template>
            </xsl:for-each>
          </p>
        </td>
        <td valign='top' style='width:65mm'>
          <p class="default_style_bu"></p>
        </td>
      </tr>
    </table>

    <p class="p_small"></p>
  </xsl:template>

  <xsl:template name="addVehicleInformations">
    <table>
      <tr>
        <td valign='top' style='width:200mm'>
          <p class="default_style_bu">
            <xsl:value-of select="$Text_Vehicle"/>
          </p>
          <xsl:for-each select="vehicle/vehicle_data[display_name='vin']">
            <xsl:call-template name="display_value_pair">
              <xsl:with-param name="key" select="$Text_VinAbr" />
              <xsl:with-param name="value">
                <xsl:value-of select="display_value" />
              </xsl:with-param>
            </xsl:call-template>
          </xsl:for-each>

          <xsl:for-each select="vehicle/vehicle_data[display_name='manufacturer']">
            <xsl:call-template name="display_value_pair">
              <xsl:with-param name="key" select="$Text_manufacturer" />
              <xsl:with-param name="value">
                <xsl:value-of select="display_value" />
              </xsl:with-param>
            </xsl:call-template>
          </xsl:for-each>

          <xsl:for-each select="vehicle/vehicle_data[display_name='model']">
            <xsl:call-template name="display_value_pair">
              <xsl:with-param name="key" select="$Text_model" />
              <xsl:with-param name="value">
                <xsl:value-of select="display_value" />
              </xsl:with-param>
            </xsl:call-template>
          </xsl:for-each>

          <xsl:for-each select="vehicle/vehicle_data[display_name='modelyear']">
            <xsl:call-template name="display_value_pair">
              <xsl:with-param name="key" select="$Text_modelyear" />
              <xsl:with-param name="value">
                <xsl:value-of select="display_value" />
              </xsl:with-param>
            </xsl:call-template>
          </xsl:for-each>

          <xsl:for-each select="vehicle/vehicle_data[display_name='variant']">
            <xsl:call-template name="display_value_pair">
              <xsl:with-param name="key" select="$Text_variant" />
              <xsl:with-param name="value">
                <xsl:value-of select="display_value" />
              </xsl:with-param>
            </xsl:call-template>
          </xsl:for-each>

          <xsl:for-each select="vehicle/vehicle_data[display_name='mkb']">
            <xsl:call-template name="display_value_pair">
              <xsl:with-param name="key" select="$Text_mkb" />
              <xsl:with-param name="value">
                <xsl:value-of select="display_value" />
              </xsl:with-param>
            </xsl:call-template>
          </xsl:for-each>

          <xsl:for-each select="vehicle/vehicle_data[display_name='daycounter']">
            <xsl:call-template name="display_value_pair">
              <xsl:with-param name="key" select="$Text_DayCounter" />
              <xsl:with-param name="value">
                <xsl:value-of select="display_value" />
              </xsl:with-param>
            </xsl:call-template>
          </xsl:for-each>

          <xsl:for-each select="vehicle/vehicle_data[display_name='unlearncounter']">
            <xsl:call-template name="display_value_pair">
              <xsl:with-param name="key" select="$Text_CentrUnlearningCounter" />
              <xsl:with-param name="value">
                <xsl:value-of select="display_value" />
              </xsl:with-param>
            </xsl:call-template>
          </xsl:for-each>

          <xsl:for-each select="vehicle/vehicle_data[display_name='date_of_last_functional_dtc_cleanup']">
            <xsl:call-template name="display_value_pair">
              <xsl:with-param name="key" select="$Text_LastClearDate" />
              <xsl:with-param name="value">
                <xsl:value-of select="display_value" />
              </xsl:with-param>
            </xsl:call-template>
          </xsl:for-each>

          <xsl:for-each select="vehicle/vehicle_data[display_name='mileage']">
            <xsl:call-template name="display_value_pair">
              <xsl:with-param name="key" select="$Text_Milage" />
              <xsl:with-param name="value">
                <xsl:value-of select="display_value" />
                <xsl:text>&#160;</xsl:text>
                <xsl:for-each select="../vehicle_data[display_name='unit_of_mileage']">
                  <xsl:value-of select="display_value" />
                </xsl:for-each>
              </xsl:with-param>
            </xsl:call-template>
          </xsl:for-each>

          <xsl:for-each select="vehicle/vehicle_data[display_name='onboard_time']">
            <xsl:call-template name="display_value_pair">
              <xsl:with-param name="key" select="$Text_OnboardTime" />
              <xsl:with-param name="value">
                <xsl:value-of select="display_value" />
              </xsl:with-param>
            </xsl:call-template>
          </xsl:for-each>

          <xsl:for-each select="vehicle/vehicle_data[display_name='vehicle_date']">
            <xsl:call-template name="display_value_pair">
              <xsl:with-param name="key" select="$Text_CentrDate" />
              <xsl:with-param name="value">
                <xsl:value-of select="display_value" />
              </xsl:with-param>
            </xsl:call-template>
          </xsl:for-each>

          <xsl:for-each select="vehicle/vehicle_data[display_name='vehicle_time']">
            <xsl:call-template name="display_value_pair">
              <xsl:with-param name="key" select="$Text_CentrTime" />
              <xsl:with-param name="value">
                <xsl:value-of select="display_value" />
              </xsl:with-param>
            </xsl:call-template>
          </xsl:for-each>

          <xsl:for-each select="vehicle/vehicle_data[display_name='diag_filter_state']">
            <xsl:call-template name="display_value_pair">
              <xsl:with-param name="key" select="$Text_DiagFilterState" />
              <xsl:with-param name="value">
                <xsl:if test="./display_value='PASSIVE'">
                  <xsl:value-of select="$Text_DiagFilterStatePassive"/>
                </xsl:if>
                <xsl:if test="./display_value='ACTIVE'">
                  <xsl:value-of select="$Text_DiagFilterStateActive"/>
                </xsl:if>
                <xsl:if test="./display_value='ACTIVE_HOOD'">
                  <xsl:value-of select="$Text_DiagFilterStateActiveHood"/>
                </xsl:if>
                <xsl:if test="./display_value='ACTIVE_BLINKER'">
                  <xsl:value-of select="$Text_DiagFilterStateActiveBlinker"/>
                </xsl:if>
                <xsl:if test="./display_value='ACTIVE_SFD'">
                  <xsl:value-of select="$Text_DiagFilterStateActiveSFD"/>
                </xsl:if>
              </xsl:with-param>
            </xsl:call-template>
          </xsl:for-each>

          <xsl:for-each select="vehicle/odx_info[display_name='project']">
            <xsl:call-template name="display_value_pair">
              <xsl:with-param name="key" select="$Text_McdProj" />
              <xsl:with-param name="value">
                <xsl:value-of select="display_value" />
              </xsl:with-param>
            </xsl:call-template>
          </xsl:for-each>

          <xsl:for-each select="vehicle/odx_info[display_name='project_version']">
            <xsl:call-template name="display_value_pair">
              <xsl:with-param name="key" select="$Text_McdProjVers" />
              <xsl:with-param name="value">
                <xsl:value-of select="display_value" />
              </xsl:with-param>
            </xsl:call-template>
          </xsl:for-each>
          
          <xsl:for-each select="vehicle/odx_info[display_name='vehicle_info']">
            <xsl:call-template name="display_value_pair">
              <xsl:with-param name="key" select="$Text_McdProjVI" />
              <xsl:with-param name="value">
                <xsl:value-of select="display_value" />
              </xsl:with-param>
            </xsl:call-template>
          </xsl:for-each>

          <xsl:for-each select="vehicle/vehicle_data[display_name='cooperation']">
            <xsl:call-template name="display_value_pair">
              <xsl:with-param name="key" select="$Text_Cooperation" />
              <xsl:with-param name="value">
                <xsl:value-of select="display_value" />
              </xsl:with-param>
            </xsl:call-template>
          </xsl:for-each>
        </td>
      </tr>
    </table>

    <xsl:if test="not(count(vehicle/vehicle_data[display_name='battery_state'])='0')">
      <p class="p_small"></p>
      <table>
        <tr>
          <td valign='top' style='width:200mm'>
            <p class="default_style_bu">
              <xsl:value-of select="$Text_DiagBatteryState"/>
            </p>
            <xsl:for-each select="vehicle/vehicle_data[display_name='battery_state']">
              <p class="default_style">
                <xsl:value-of select="display_value" />
              </p>
            </xsl:for-each>
          </td>
        </tr>
      </table>
    </xsl:if>
    <xsl:if test="not(count(vehicle/vehicle_data[display_name='dtc_env_filter'])='0')">
      <p class="p_small"></p>
      <table>
        <tr>
          <td valign='top' style='width:200mm'>
            <p class="default_style_bu">
              <xsl:value-of select="$Text_DtcFilterType"/>
            </p>
            <xsl:for-each select="vehicle/vehicle_data[display_name='dtc_env_filter']">
              <p class="default_style">
                <xsl:value-of select="display_value" />
              </p>
            </xsl:for-each>
          </td>
        </tr>
      </table>
    </xsl:if>
    <p class="p_small"></p>
  </xsl:template>

  <xsl:template name="addCommunicationInformations">
    <table>
      <tr>
        <td valign='top' style='width:200mm'>&#160;</td>
      </tr>
      <tr>
        <td valign='top' style='width:200mm'>
          <p class="header_style_bigu">
            <a name="inhalt">
              <xsl:value-of select="$Text_Content"/>
            </a>
          </p>
          <p class="p_small"></p>
          <xsl:choose>
            <xsl:when test="vehicle/communications/ecus/@type='read_bzd'">
              <xsl:call-template name="display_index_bzd" />
            </xsl:when>
            <xsl:when test="vehicle/communications/ecus/@type='flash'">
              <xsl:call-template name="display_index_flash" />
            </xsl:when>
            <xsl:otherwise>
              <xsl:call-template name="display_index" />
            </xsl:otherwise>
          </xsl:choose>
          <p class="p_small"></p>
        </td>
      </tr>
      <tr>
        <td valign='top' style='width:200mm'>
          &#160;
        </td>
      </tr>
      <tr>
        <td valign='top' style='width:200mm'>
          <p class="header_style_bigu">
            <xsl:value-of select="$Text_CommData"/>
          </p>
          <p class="p_small"></p>
          <p class="default_style">
            <xsl:call-template name="display_comments">
              <xsl:with-param name="ParentTag" select="vehicle/communications" />
            </xsl:call-template>

            <xsl:for-each select="vehicle/communications/*">
              <xsl:choose>
                <xsl:when test="@type='single_ecu_diagnostic' or @type='read_events' or @type='read_codings' or @type='read_bzd' or @type='ecu_data_transfer' or @type='obd'">
                  <xsl:for-each select="ecu">
                    <xsl:call-template name="display_generic_ecu_info" />
                    <xsl:call-template name="display_generic_ecu_communication" />
                  </xsl:for-each>
                </xsl:when>
                <xsl:when test="@type='flash'">
                  <xsl:call-template name="display_flash" />
                </xsl:when>
                <xsl:when test="@type='roller_test_stand_mode'">
                  <xsl:call-template name="display_roller_test_stand_mode" />
                </xsl:when>
                <xsl:when test="self::gw_routing_tables">
                  <xsl:call-template name="display_routing_tables" />
                </xsl:when>
                <xsl:when test="self::vehicle_functions">
                  <xsl:for-each select="vehicle_function">
                    <xsl:call-template name="display_generic_vehicle_function_info" />
                    <xsl:call-template name="display_generic_vehicle_function_responses" />
                  </xsl:for-each>
                </xsl:when>
                <xsl:when test="@type='read_measurements'">
                  <xsl:call-template name="display_read_measurements_table" />
                </xsl:when>
              </xsl:choose>
              <xsl:call-template name="display_comments">
                <xsl:with-param name="ParentTag" select="." />
              </xsl:call-template>
            </xsl:for-each>
          </p>
        </td>
      </tr>
    </table>   
  </xsl:template>

<!-- Template for displaying key- value pairs -->
<xsl:template name="display_value_pair">
  <xsl:param name="key" />
  <xsl:param name="value" />
  <xsl:param name="indent"/>

   <table style="display:inline;width:auto;margin:0;">
	<tr>
	  <td class="default_style"><xsl:value-of select="$indent"/></td>
	  <td class="default_style"><b><xsl:value-of select="$key"/></b></td>
	  <td class="default_style"><b><xsl:text>: </xsl:text></b></td>
	  <td class="default_style">&#160;</td>
	  <td class="default_style"><xsl:value-of select="$value"/></td>
	</tr>
  </table>
  <br/>
</xsl:template>

<!-- Template for displaying protocol comments  -->
<xsl:template name="display_comments">
  <xsl:param name="ParentTag" />

  <xsl:for-each select="$ParentTag/comment">
    <table>
      <tr>
        <td valign='top' style='width:105mm'>
          <p class="default_style_bu_diagfunction">
            <a name="{generate-id()}">
              <xsl:value-of select="$Text_Comment"/>
            </a>
          </p>
        </td>
        <td class="align_opposite" valign='top' style='width=65mm;'>
          <p class="default_style_diagfunction">
            <xsl:for-each select="time_stamp">
              <xsl:call-template name="display_timestamp">
                <xsl:with-param name="date">
                  <xsl:value-of select="." />
                </xsl:with-param>
              </xsl:call-template>
              <xsl:text> </xsl:text>
              <a href="#inhalt">
                <xsl:value-of select="$Text_Top"/>
                <xsl:text>^</xsl:text>
              </a>
              <br />
            </xsl:for-each>
          </p>
        </td>
      </tr>
    </table>
    <table class="default_style">
      <tr>
        <td valign='top' style='width:20mm'></td>
		<td valign='top' style='width:150mm'>
          <xsl:value-of select="text"/>
        </td>
      </tr>
    </table>
  </xsl:for-each>  
</xsl:template>
  
<!-- Template -->
<xsl:template name="display_roller_test_stand_mode">
  <table class="default_style">
    <tr>
      <td valign='top' style='width:105mm'>
        <p class="default_style_ecu">
          <a name="{generate-id()}">
            <xsl:value-of select="ecu[1]/ecu_master/display_name" />
          </a>
          <xsl:for-each select="ecu/ecu_master">
            <a name="{generate-id()}">
            </a>
          </xsl:for-each>
        </p>
      </td>
      <td class="align_opposite" valign='top' style='width:65mm;'>
        <p class="default_style_ecu">
          &#160;<xsl:for-each select="ecu[1]/time_stamp">
            <a name="{generate-id()}">
              <xsl:call-template name="display_timestamp">
                <xsl:with-param name="date">
                  <xsl:value-of select="." />
                </xsl:with-param>
              </xsl:call-template>
            </a>
          </xsl:for-each>
        </p>
      </td>
    </tr>
  </table>  
  <table>
    <tr>
      <td valign='top' style="width:65mm">
        <p class="default_style_b">
		<xsl:value-of select="$Text_Ecu"/>
        </p>
      </td>
      <td valign='top' style="width:33mm">
        <p class="default_style_b">
		<xsl:value-of select="$Text_Status"/>
        </p>
      </td>
      <td valign='top' style="width:65mm">
        <p class="default_style_b">
		<xsl:value-of select="$Text_ErrText"/>
        </p>
      </td>
      <td class="default_style_revert_align">
        <a href="#inhalt">
		<xsl:value-of select="$Text_Top"/><xsl:text>^</xsl:text>
        </a>
      </td>
    </tr>
    <xsl:for-each select="ecu">
      <tr>
        <td>
          <p class="default_style">
            <a name="{generate-id()}">
              <xsl:value-of select="ecu_id"/>
              <xsl:text> - </xsl:text>
              <xsl:value-of select="ecu_name"/>
            </a>
          </p>
        </td>
        <td>
          <p class="default_style">
            <xsl:value-of select="ecu_master/values[ti_name='STATE']/display_value"/>
            <xsl:text>&#160;</xsl:text>
          </p>
        </td>
        <td>
          <p class="default_style">
            <xsl:value-of select="ecu_master/values[ti_name='ADDITIONAL_INFO']/display_value"/>
            <xsl:text>&#160;</xsl:text>
          </p>
        </td>
      </tr>
    </xsl:for-each>
  </table>
  <p class="p_small" />
</xsl:template>

<!-- Template to display the subsystem component list -->
<xsl:template name="display_subsystem_component_list">
  <!-- show available result information -->
  <xsl:if test="not(count(values[@type='result'])='0')">
	<table class="default_style">
	  <xsl:for-each select="values[@type='result']">
		<xsl:if test="./ti_value = 'succeeded'">
		  <p class="default_ok"><xsl:value-of select="./display_value"/></p>
		</xsl:if>
		<xsl:if test="./ti_value = 'failed'">
		  <p class="default_error"><xsl:value-of select="./display_value"/></p>
		</xsl:if>				
	  </xsl:for-each>
	</table>
  </xsl:if>

  <xsl:if test="not(count(values[not (@type='result')])='0')">
	<table class="default_style">
	  <!-- table header -->
	  <tr>
		<td valign='top' style='width:110mm'><p class="default_style_bu">ECU-Name</p></td>
		<td valign='top' style='width:35mm'><p class="default_style_bu"><xsl:value-of select="$Text_Coded"/></p></td>
		<td valign='top' style='width:35mm'><p class="default_style_bu"><xsl:value-of select="$Text_Detected"/></p></td>
		<td valign='top' style='width:30mm'><p class="default_style_bu"><xsl:value-of select="$Text_Bussystem"/></p></td>
	  </tr>

	  <!-- repeat for each subsystem entry -->
	  <xsl:for-each select="values[not (@type='result')]">
		<tr>
		  <!-- subsystem address and name -->
		  <td valign='top' style='width:90mm'><xsl:value-of select="./display_value"/></td>
			<!-- coded state -->
  		  <td>
		    <xsl:choose>
			  <xsl:when test="./values[./display_name='Coded']/display_value='yes'"><xsl:value-of select="$Text_Yes"/></xsl:when>
			  <xsl:when test="./values[./display_name='Coded']/display_value='no'"><xsl:value-of select="$Text_No"/></xsl:when>
			  <xsl:when test="./values[./display_name='Coded']/display_value='unknown'"><xsl:value-of select="$Text_Unknown"/></xsl:when>
			  <xsl:otherwise><xsl:value-of select="./values[./display_name='Coded']/display_value" /></xsl:otherwise>
		    </xsl:choose>
		  </td>

		  <!-- present state -->
		  <td>
			<xsl:choose>
			  <xsl:when test="./values[./display_name='Present']/display_value='online'"><xsl:value-of select="$Text_Yes"/></xsl:when>
			  <xsl:when test="./values[./display_name='Present']/display_value='offline'"><xsl:value-of select="$Text_No"/></xsl:when>
		      <xsl:when test="./values[./display_name='Present']/display_value='unknown'"><xsl:value-of select="$Text_Unknown"/></xsl:when>
			  <xsl:otherwise><xsl:value-of select="./values[./display_name='Present']/display_value" /></xsl:otherwise>
			</xsl:choose>
		  </td>

		  <!-- databus info -->
		  <td><xsl:value-of select="./values[./display_name='GW-Info']/display_value"/></td>
		</tr>
	  </xsl:for-each>
	</table>
  </xsl:if>
</xsl:template>

<!-- Template to display the software component list -->
<xsl:template name="display_swco_list">
  <!-- show available result information -->
  <xsl:if test="not(count(values[@type='result'])='0')">
	<table class="default_style">
	  <xsl:for-each select="values[@type='result']">
		<xsl:if test="./ti_value = 'succeeded'">
		  <p class="default_ok"><xsl:value-of select="./display_value"/></p>
		</xsl:if>
		<xsl:if test="./ti_value = 'failed'">
		  <p class="default_error"><xsl:value-of select="./display_value"/></p>
		</xsl:if>				
	  </xsl:for-each>
	</table>
  </xsl:if>

  <xsl:if test="not(count(values[not (@type='result')])='0')">
	<table class="default_style">
	  <!-- table header -->
	  <tr>
		<td valign='top' style='width:110mm'><p class="default_style_bu"><xsl:value-of select="$Text_NodeAddress"/></p></td>
		<td valign='top' style='width:35mm'><p class="default_style_bu"><xsl:value-of select="$Text_Coded"/></p></td>
		<td valign='top' style='width:35mm'><p class="default_style_bu"><xsl:value-of select="$Text_Detected"/></p></td>
	  </tr>

	  <!-- repeat for each software composition entry -->
	  <xsl:for-each select="values[not (@type='result')]">
		<tr>
		  <!-- SWCO address and name -->
		  <td valign='top' style='width:90mm'><xsl:value-of select="./display_value"/></td>

		  <!-- coded state -->
		  <td>
			<xsl:choose>
			  <xsl:when test="./values[./display_name='Coded']/display_value='yes'"><xsl:value-of select="$Text_Yes"/></xsl:when>
			  <xsl:when test="./values[./display_name='Coded']/display_value='no'"><xsl:value-of select="$Text_No"/></xsl:when>
			  <xsl:when test="./values[./display_name='Coded']/display_value='unknown'"><xsl:value-of select="$Text_Unknown"/></xsl:when>
			  <xsl:otherwise><xsl:value-of select="./values[./display_name='Coded']/display_value" /></xsl:otherwise>
			</xsl:choose>
		  </td>

		  <!-- present state -->
		  <td>
			<xsl:choose>
			  <xsl:when test="./values[./display_name='Present']/display_value='online'"><xsl:value-of select="$Text_Yes"/></xsl:when>
			  <xsl:when test="./values[./display_name='Present']/display_value='offline'"><xsl:value-of select="$Text_No"/></xsl:when>
			  <xsl:when test="./values[./display_name='Present']/display_value='unknown'"><xsl:value-of select="$Text_Unknown"/></xsl:when>
			  <xsl:otherwise><xsl:value-of select="./values[./display_name='Present']/display_value" /></xsl:otherwise>
			</xsl:choose>
		  </td>
		</tr>
	  </xsl:for-each>
	</table>
  </xsl:if>
</xsl:template>

<!-- Template for displaying DTC information including sub information (environment variables, snapshots ...) -->
<xsl:template name="display_dtc">
  <!-- dtc-code and dtc-name -->
  <tr>
	<td colspan="2">
      <span class="default_style_b">
		<xsl:if test="fault_number and sae_number and hex_fault_number">
		  <xsl:value-of select="sae_number" />
		  <xsl:text> ($</xsl:text>
		  <xsl:value-of select="hex_fault_number" />
		  <xsl:text> / </xsl:text>
		  <xsl:value-of select="fault_number" />
		  <xsl:text>)</xsl:text>
		</xsl:if>
		<xsl:if test="fault_number and sae_number and not(hex_fault_number)">
		  <xsl:value-of select="sae_number" />
		  <xsl:text> (</xsl:text>
		  <xsl:value-of select="fault_number" />
		  <xsl:text>)</xsl:text>
		</xsl:if>
		<xsl:if test="fault_number and not(sae_number) and hex_fault_number">
		  <xsl:text> $</xsl:text>
		  <xsl:value-of select="hex_fault_number" />
		  <xsl:text> / </xsl:text>
		  <xsl:value-of select="fault_number" />
		</xsl:if>
		<xsl:if test="fault_number and not(sae_number) and not(hex_fault_number)">
		  <xsl:value-of select="fault_number" />
		</xsl:if>
	    <xsl:if test="not(fault_number) and sae_number">
		  <xsl:value-of select="sae_number" />
		</xsl:if>
        <xsl:text> </xsl:text>
        <xsl:for-each select="display_name">
          <xsl:if test=".!='' and not (../@type)"><xsl:value-of select="." /></xsl:if>
	      <xsl:if test="../@type='event_memory' and not(../values)"><xsl:value-of select="$Text_NoEntries"/></xsl:if>
	      <xsl:if test="../@type='dev_event_memory' and not(../values)"><xsl:value-of select="$Text_NoEntries"/></xsl:if>
        </xsl:for-each>
      </span>
    </td>
  </tr>

  <!-- dtc-text -->
  <xsl:for-each select="dtc_text">
	<tr>
	  <td colspan="2"><xsl:value-of select="$Text_DtcText"/><xsl:text>: </xsl:text><xsl:value-of select="." /></td>
	</tr>
  </xsl:for-each>

  <!-- dtc-environment-values -->
  <xsl:if test="measurement_values">
	<xsl:call-template name="display_table_subtitle"><xsl:with-param name="subtitle" select="$Text_DtcEnvironment"/></xsl:call-template>
    <xsl:if test="$wahl_freezeframe='freezeframe_darstellen'">
      <xsl:for-each select="measurement_values">
			<xsl:call-template name="display_generic_read_measurements_table"><xsl:with-param name="divlevel" select="2" /><xsl:with-param name="hide_addr" select="1"/></xsl:call-template>
	  </xsl:for-each>
      <tr>
		<td colspan="2"><p class="p_small"></p></td>
	  </tr>
    </xsl:if>   
  </xsl:if>

  <!-- dtc-snapshots -->
  <xsl:if test="snapshot_values">
    <xsl:call-template name="display_table_subtitle"><xsl:with-param name="subtitle" select="$Text_DtcSnapshot"/></xsl:call-template>
	<xsl:if test="$wahl_freezeframe='freezeframe_darstellen'">
      <xsl:for-each select="snapshot_values">
		<xsl:call-template name="display_generic_read_measurements_table"><xsl:with-param name="divlevel" select="2" /><xsl:with-param name="hide_addr" select="1"/></xsl:call-template>
	  </xsl:for-each>
    </xsl:if>   
  </xsl:if>
  <!-- dtc-status -->
  <xsl:if test="event_status/event">
	<xsl:call-template name="display_table_subtitle">
		<xsl:with-param name="subtitle" select="$Text_DtcStatus"/>
 		<xsl:with-param name="subtitleValue" select="event_status/event[display_name='DTC-Status']/display_value"/>
	</xsl:call-template>    
	<xsl:if test="$wahl_freezeframe='freezeframe_darstellen'">
      <div>
        <xsl:for-each select="event_status/event[not(display_name='DTC-Status')]">
		  <xsl:call-template name="display_generic_read_measurements_table">
			<xsl:with-param name="divlevel" select="3" />
			<xsl:with-param name="hide_addr" select="1"/>
		  </xsl:call-template>
		</xsl:for-each>
      </div>
      <tr>
		<td colspan="2"><p class="p_small"></p></td>
	  </tr>
    </xsl:if>    
  </xsl:if>
	
  <!-- sdg -->
  <xsl:if test="$wahl_sdg='sdg_darstellen'">
    <xsl:if test="fault_text/values_result">
      <xsl:for-each select="fault_text/values_result"><xsl:call-template name="display_sdg" /></xsl:for-each>
    </xsl:if>
  </xsl:if>
</xsl:template>

<!-- Template to create a table bubtitle -->
<xsl:template name="display_table_subtitle">
  <xsl:param name="subtitle" />
  <xsl:param name="subtitleValue" select="''"/> 
  <tr>
    <td valign="top" class="default_style">
      <span class="default_style_b">
		<xsl:text>&#160;&#160;&#160;&#160;&#160;</xsl:text>
		<xsl:value-of select="$subtitle"/>
	  </span>
	</td>
	<xsl:if test="not($subtitleValue = '')">
	<td valign="top" class="default_style">
      <span class="default_style">
		<xsl:value-of select="$subtitleValue"/>
	  </span>
	</td>
    </xsl:if>
  </tr>
</xsl:template>

<!-- Template to display the measurement table names with different indents -->
<xsl:template name="display_table_measurement_name">
  <xsl:param name="divlevel" />
  <xsl:choose>
	<xsl:when test="$divlevel='1'">&#160;&#160;&#160;</xsl:when>
	<xsl:when test="$divlevel='2'">&#160;&#160;&#160;&#160;&#160;&#160;</xsl:when>
	<xsl:when test="$divlevel='3'">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;</xsl:when>
	<xsl:when test="$divlevel='4'">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;</xsl:when>
	<xsl:when test="$divlevel='5'">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;</xsl:when>
	<xsl:when test="$divlevel='6'">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;</xsl:when>
	<xsl:when test="$divlevel='7'">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;</xsl:when>
  </xsl:choose>
  <xsl:if test="ti_name|display_name">
	<span class="default_style_b">
	  <xsl:if test="$wahl_ti_name='ti_name_darstellen'">
		<xsl:for-each select="ti_name"><xsl:value-of select="." /><xsl:text> - </xsl:text></xsl:for-each>
	  </xsl:if>
	 </span>
	<xsl:for-each select="display_name"><span class="default_style_b"><xsl:value-of select="." /></span></xsl:for-each>
  </xsl:if>
</xsl:template>

<!-- Template displaying measurement values -->
<xsl:template name="display_table_measurement_value">
  <xsl:if test="$wahl_ti_value='ti_value_darstellen'">
	<xsl:for-each select="ti_value">
	  <xsl:value-of select="." />
	  <xsl:text> - </xsl:text>
	</xsl:for-each>
  </xsl:if>
  <xsl:for-each select="display_value">
	<xsl:value-of select="." />
  </xsl:for-each>
  <xsl:if test="$wahl_ti_unit='ti_unit_darstellen'">
	<xsl:for-each select="ti_unit">
	  <xsl:text> </xsl:text>
	  <xsl:value-of select="." />
	  <xsl:text> - </xsl:text>
	</xsl:for-each>
  </xsl:if>
  <xsl:text> </xsl:text>
  <xsl:for-each select="display_unit">
	<xsl:value-of select="." />
  </xsl:for-each>
  <xsl:if test="position()=last()">
	<p class="p_small"></p>
  </xsl:if>
</xsl:template>

<!-- Template for displaying basic settings uds/kwp (calls correct template) -->
<xsl:template name="display_basicsettings_iocontrol">
  <xsl:if test="count(values[ti_name='overall'])!='0'">
	<xsl:call-template name="display_basicsettings_iocontrol_uds"></xsl:call-template>
  </xsl:if>
  <xsl:if test="count(values[ti_name='overall'])='0'">
	<xsl:call-template name="display_basicsettings_iocontrol_kwp"></xsl:call-template>
  </xsl:if>
</xsl:template>

<!-- Template for displaying immediate routines -->
<xsl:template name="display_immediateRoutine">
  <!-- repeat for each immediate routine -->	
  <xsl:for-each select="values[display_name!='overall']">
	<!-- name of specific immediate routine -->
    <tr>
	  <td valign="top" class="default_style">
	    <span class="default_style_b">
		  <xsl:value-of select="./display_name"/>
		</span>
	  </td>
  	</tr>

	<!-- parameters of immediate routine -->	
    <tr>
      <td valign="top" class="default_style">
	    <span class="default_style_b">
		  <xsl:text>&#160;&#160;&#160;</xsl:text>
		  <xsl:value-of select="$Text_Parameter"/>
		</span>
	  </td>
	</tr>
	<xsl:for-each select="./values[@type='parameter']">
	  <xsl:call-template name="display_generic_read_measurements_table">
		<xsl:with-param name="divlevel" select="3" />
		<xsl:with-param name="hide_addr" select="1"/>
	  </xsl:call-template>
    </xsl:for-each>
	<xsl:choose>
	  <xsl:when test="./ti_value='failed'">
		<tr>
		  <td valign="top" class="default_error">
			<span>
			  <xsl:text>&#160;&#160;&#160;</xsl:text>
			  <xsl:value-of select="./display_value"/>
  			</span>
		  </td>
		</tr>
	  </xsl:when>
	  <xsl:otherwise>
		<!-- result values of the immediate routine (Routine Status Records) -->
		<xsl:call-template name="display_basicsettings_iocontrol_state_values">
		  <xsl:with-param name="state_ti_name">ROUTINE_STATUS_RECORDS</xsl:with-param>
		  <xsl:with-param name="title" select="$Text_Setting_Status_Records"/> 
	    </xsl:call-template>	
	  </xsl:otherwise>
    </xsl:choose>
  </xsl:for-each>
</xsl:template>

<!-- Template for displaying basic settings kwp (gets called from display_basicsettings_iocontrol) -->
<xsl:template name="display_basicsettings_iocontrol_kwp">
  <xsl:for-each select="values">
    <!-- name and state of routine or setting -->
	<tr>
	  <td valign="top" class="default_style">
		<span class="default_style_b">
		  <xsl:value-of select="./display_name"/>
		</span>
	  </td>
	  <td valign="top" class="default_style">
	  	  <xsl:value-of select="./display_value"/>
	  </td>
	</tr>

	<!-- measurements of routine or setting -->
    <xsl:for-each select="values[ti_name='ECU_ID']">
      <xsl:for-each select="values">
        <xsl:call-template name="display_generic" />
	  </xsl:for-each>
	  <tr><td colspan="2"><p class="p_small"></p></td></tr>
    </xsl:for-each>
  </xsl:for-each>
</xsl:template>

<!-- Template for displaying basic settings uds (gets called from display_basicsettings_iocontrol) -->
<xsl:template name="display_basicsettings_iocontrol_uds">
  <!-- Overall state -->	
  <tr>
	<td valign="top" class="default_style">
	  <span class="default_style_b">
		<xsl:value-of select="$Text_Overall"/>
	  </span>
	</td>
  </tr>
  <tr>
	<td valign="top" class="default_style">
	  <span class="default_style_b">
		<xsl:text>&#160;&#160;&#160;</xsl:text>
		<xsl:value-of select="$Text_OverallState"/>
	  </span>
	</td>
	<td valign="top" class="default_style">
	  <xsl:value-of select="values[ti_name='overall']/display_value"/>
	</td>
  </tr>
	
  <!-- Overall measurements -->	
  <xsl:if test="not(count(values[ti_name='overall']/values[ti_name='ECU_ID'])='0')">
	<tr>
	  <td valign="top" class="default_style">
		<span class="default_style_b">
		  <xsl:text>&#160;&#160;&#160;</xsl:text>
		  <xsl:value-of select="$Text_Measurements"/>
		</span>
	  </td>
	</tr>
	<xsl:for-each select="values[ti_name='overall']/values[ti_name='ECU_ID']">
	  <xsl:for-each select="values[@type='measurement']">
		<xsl:call-template name="display_generic_read_measurements_table">
		  <xsl:with-param name="divlevel" select="3" />
		  <xsl:with-param name="hide_addr" select="1"/>
		  <xsl:with-param name="alternative_addr" select="../display_value"/>
		</xsl:call-template>
	  </xsl:for-each>
	</xsl:for-each>
  </xsl:if>

  <!-- specific routines or settings -->	
  <xsl:for-each select="values[display_name!='overall']">
	<!-- name of specific routine or setting -->
	<tr>
	  <td valign="top" class="default_style">
		<span class="default_style_b">
		  <xsl:if test="starts-with(../@type, 'basicsettings')">
			<xsl:value-of select="$Text_Setting"/>
		  </xsl:if>
		  <xsl:if test="starts-with(../@type, 'iocontrol')">
			<xsl:value-of select="$Text_Actuator"/>
		  </xsl:if>
		  <xsl:text>: </xsl:text>
		  <xsl:value-of select="./display_name"/>
		</span>
	  </td>
	</tr>

	<!-- state of specific routine or setting -->
	<xsl:if test ="string-length(./display_value) > 0">
      <tr>
		<td valign="top" class="default_style">
		  <span class="default_style_b">
			<xsl:text>&#160;&#160;&#160;</xsl:text>
			<xsl:value-of select="$Text_State"/>
		  </span>
		</td>
		<td valign="top" class="default_style">
		  <xsl:value-of select="./display_value"/>
	   	</td>
	  </tr>
	</xsl:if>  	

  	<!-- state measurements of specific iocontrol -->
	<xsl:call-template name="display_basicsettings_iocontrol_state_values">
	  <xsl:with-param name="state_ti_name">IO_CONTROL_STATE</xsl:with-param>
	  <xsl:with-param name="title" select="$Text_Actuator_State"/> 
	</xsl:call-template>

	<!-- states of specific basic setting (Routine Status) -->
	<xsl:call-template name="display_basicsettings_iocontrol_state_values">
	  <xsl:with-param name="state_ti_name">ROUTINE_STATUS</xsl:with-param>
	  <xsl:with-param name="title" select="$Text_Setting_Status"/> 
	</xsl:call-template>	  

  	<!-- states of specific basic setting (Routine Result) -->
	<xsl:call-template name="display_basicsettings_iocontrol_state_values">
	  <xsl:with-param name="state_ti_name">ROUTINE_RESULT</xsl:with-param>
	  <xsl:with-param name="title" select="$Text_Setting_Result"/> 
	</xsl:call-template>	  
	  
	<!-- states of specific basic setting (Routine Status Records) -->
	<xsl:call-template name="display_basicsettings_iocontrol_state_values">
	  <xsl:with-param name="state_ti_name">ROUTINE_STATUS_RECORDS</xsl:with-param>
	  <xsl:with-param name="title" select="$Text_Setting_Status_Records"/> 
	</xsl:call-template>	  

	<!-- parameters of specific routine or setting -->	
	<tr>
  	  <td valign="top" class="default_style">
		<span class="default_style_b">
		  <xsl:text>&#160;&#160;&#160;</xsl:text>
		  <xsl:value-of select="$Text_Parameter"/>
		</span>
	  </td>
	</tr>
	<xsl:for-each select="./values[@type='parameter']">
	  <xsl:call-template name="display_generic_read_measurements_table">
		<xsl:with-param name="divlevel" select="3" />
		  <xsl:with-param name="hide_addr" select="1"/>
	  </xsl:call-template>
    </xsl:for-each>

	<!-- measurements of specific routine or setting -->
	<xsl:if test="not(count(./values[@type='result'])='0')">
	  <tr>
		<td valign="top" class="default_style">
		  <span class="default_style_b">
			<xsl:text>&#160;&#160;&#160;</xsl:text>
			<xsl:value-of select="$Text_Measurements"/>
		  </span>
		</td>
	  </tr>
	  <xsl:for-each select="./values[@type='result']">
		<xsl:for-each select="values[@type='measurement']">
		  <xsl:call-template name="display_generic_read_measurements_table">
			<xsl:with-param name="divlevel" select="3" />
			<xsl:with-param name="hide_addr" select="1"/>
			<xsl:with-param name="alternative_addr" select="../display_value"/>
		  </xsl:call-template>
		</xsl:for-each>
	  </xsl:for-each>
	</xsl:if>  
  </xsl:for-each>
</xsl:template>

<!-- Template displaying basic settings state -->
<xsl:template name="display_basicsettings_iocontrol_state_values">
  <xsl:param name="state_ti_name" />
  <xsl:param name="title" />
  
  <xsl:if test="not(count(./values[@type='state' and ti_name=$state_ti_name])='0')">
	<tr>
	  <td valign="top" class="default_style">
		<span class="default_style_b">
		  <xsl:text>&#160;&#160;&#160;</xsl:text>
		  <xsl:value-of select="$title"/>
		</span>
	  </td>
	</tr>
	<xsl:for-each select="./values[@type='state' and ti_name=$state_ti_name]">
	  <xsl:for-each select="values">
		<xsl:call-template name="display_generic_read_measurements_table">
		  <xsl:with-param name="divlevel" select="3" />
		  <xsl:with-param name="hide_addr" select="1"/>
		</xsl:call-template>
	  </xsl:for-each>
	</xsl:for-each>
  </xsl:if>  
</xsl:template>

<!-- Template displaying a dataset -->
<xsl:template name="display_dataset">
  <xsl:for-each select="values[ti_name='dataset_name']">
    <tr>
	  <td>
		<p class="default_style_b"><xsl:value-of select="display_name" /></p></td><td><p class="default_style"><xsl:value-of select="display_value" /></p>
	  </td>
	</tr>
  </xsl:for-each>
  <xsl:for-each select="values[ti_name='dataset_size']">
    <tr>
      <td valign='top'><p class="default_style_b"><xsl:value-of select="display_name" /></p></td>
      <td valign='top'><p class="default_style"><xsl:value-of select="display_value" /><xsl:text> </xsl:text><xsl:value-of select="$Text_Byte"/></p></td>
    </tr>
  </xsl:for-each>
  <xsl:for-each select="values[ti_name='jobname']">
    <tr>
      <td valign='top'><p class="default_style_b"><xsl:value-of select="display_name" /></p></td>
      <td valign='top'><p class="default_style"><xsl:value-of select="display_value" /></p></td>
    </tr>
  </xsl:for-each>
  <xsl:for-each select="values[ti_name='jobstatus']">
    <tr>
      <td valign='top'><p class="default_style_b"><xsl:value-of select="display_name" /></p></td>
      <td valign='top'>
        <xsl:choose>
		<xsl:when test="ti_value='0'"><p class="default_ok"><xsl:value-of select="display_value" /><br/><xsl:text>(</xsl:text><xsl:value-of select="$Text_StatCode"/><xsl:text>: </xsl:text><xsl:value-of select="ti_value" />)</p></xsl:when>
		<xsl:otherwise><p class="default_error"><xsl:value-of select="display_value" /><br/><xsl:text>(</xsl:text><xsl:value-of select="$Text_StatCode"/><xsl:text>: </xsl:text><xsl:value-of select="ti_value" />)</p></xsl:otherwise>
        </xsl:choose>
      </td>
    </tr>
  </xsl:for-each>
  <xsl:for-each select="values[ti_name='jobinfo']">
    <tr>
      <td valign='top'><p class="default_style_b"><xsl:value-of select="display_name" /></p></td>
      <td valign='top'>
        <xsl:for-each select="values">
          <p class="default_style"><xsl:value-of select="display_value" /></p>
  	    </xsl:for-each>  
      </td>
    </tr>
  </xsl:for-each>
  <xsl:for-each select="values[ti_name='dataset_ident']">
    <tr><td valign='top'><p class="default_style_b"><xsl:value-of select="display_name" /></p></td><td></td></tr>
    <xsl:for-each select="values">
      <xsl:call-template name="display_generic_read_measurements_table"><xsl:with-param name="divlevel">1</xsl:with-param><xsl:with-param name="hide_addr" select="1"/></xsl:call-template>
    </xsl:for-each>
  </xsl:for-each>
  <xsl:for-each select="values[ti_name='dataset_consistency']">
    <tr><td valign='top'><p class="default_style_b"><xsl:value-of select="display_name" /></p></td><td></td></tr>
    <xsl:for-each select="values">
      <xsl:call-template name="display_generic_read_measurements_table"><xsl:with-param name="divlevel">1</xsl:with-param><xsl:with-param name="hide_addr" select="1"/></xsl:call-template>
    </xsl:for-each>
  </xsl:for-each>
  <tr>
    <td colspan='2'>
      <table cols="3" style='margin-top:10'>
        <tr>
		  <td valign='top' style="width:65mm"><p class="default_style_b"><xsl:value-of select="$Text_Eigenschaft"/></p></td>
		  <td valign='top' style="width:33mm"><p class="default_style_b"><xsl:value-of select="$Text_Before"/></p></td>
		  <td valign='top' style="width:32mm"><p class="default_style_b"><xsl:value-of select="$Text_After"/></p></td>
        </tr>
        <tr>
          <td valign='top' style="width:65mm"><p class="default_style_b"><xsl:value-of select="values[ti_name='dataset_version_pre']/display_name"/></p></td>
          <td valign='top' style="width:33mm"></td>
          <td valign='top' style="width:32mm"></td>
        </tr>
		<xsl:choose>
          <xsl:when test="values[ti_name='dataset_version_pre']/values/values/values/values"><!-- UDS-Struktur, inkl Mux und Struktur ausgeklappt-->
            <xsl:variable name="label" select="values[ti_name='dataset_version_pre']/values/display_name" />             
            <xsl:for-each select="values[ti_name='dataset_version_pre']/values/values/values/values">
              <xsl:variable name="pos" select="position()" />
              <xsl:call-template name="comparison_dataset">
                <xsl:with-param name="label"><xsl:value-of select="display_name" /></xsl:with-param>
                <xsl:with-param name="left_display_value"><xsl:value-of select="display_value" /></xsl:with-param>
                <xsl:with-param name="right_display_value"><xsl:value-of select="../../../../../values[ti_name='dataset_version_post']/values/values/values[$pos]/values/display_value" /></xsl:with-param>
              </xsl:call-template>
            </xsl:for-each>
          </xsl:when>
          <xsl:otherwise>
            <xsl:choose>
              <xsl:when test="values[ti_name='dataset_version_pre']/values/values/values"><!-- UDS-Struktur, ohne Mux mit Struktur ausgeklappt -->
                <xsl:variable name="label" select="values[ti_name='dataset_version_pre']/values/display_name" />             
                <xsl:for-each select="values[ti_name='dataset_version_pre']/values/values/values">
                  <xsl:variable name="pos" select="position()" />
                  <xsl:call-template name="comparison_dataset">
                    <xsl:with-param name="label"><xsl:value-of select="display_name" /></xsl:with-param>
                    <xsl:with-param name="left_display_value"><xsl:value-of select="display_value" /></xsl:with-param>
                    <xsl:with-param name="right_display_value"><xsl:value-of select="../../../../values[ti_name='dataset_version_post']/values/values/values[$pos]/display_value" /></xsl:with-param> <!-- foxsven: original fehlerhaft ../../../../values[ti_name='dataset_version_post']/values/values[$pos]/values/display_value -->
                  </xsl:call-template>
                </xsl:for-each>
              </xsl:when>
              <xsl:otherwise>
                <xsl:choose>
                  <xsl:when test="values[ti_name='dataset_version_pre']/values/values"><!-- UDS-Struktur, ohne Mux ohne Struktur ausgeklappt-->
                    <xsl:variable name="label" select="values[ti_name='dataset_version_pre']/values/display_name" />             
                    <xsl:for-each select="values[ti_name='dataset_version_pre']/values/values">
                      <xsl:variable name="pos" select="position()" />
                      <xsl:call-template name="comparison_dataset">
                        <xsl:with-param name="label"><xsl:value-of select="display_name" /></xsl:with-param>
                        <xsl:with-param name="left_display_value"><xsl:value-of select="display_value" /></xsl:with-param>
                        <xsl:with-param name="right_display_value"><xsl:value-of select="../../../values[ti_name='dataset_version_post']/values/values[$pos]/display_value" /></xsl:with-param>
                      </xsl:call-template>
                    </xsl:for-each>
                  </xsl:when>
                  <xsl:otherwise>
                    <xsl:choose>
                      <xsl:when test="values[ti_name='dataset_version_pre']/values"> <!-- foxsven: für DSDL2 (Implementierung anhand Beispielprotokoll, 03.09.2013)-->
                        <xsl:variable name="label" select="values[ti_name='dataset_version_pre']/values/display_name" />
                        <xsl:for-each select="values[ti_name='dataset_version_pre']/values">
                          <xsl:variable name="pos" select="position()" />
                          <xsl:call-template name="comparison_dataset">
                            <xsl:with-param name="label"><xsl:value-of select="display_name" /></xsl:with-param>
                            <xsl:with-param name="left_display_value"><xsl:value-of select="display_value" /></xsl:with-param>
                            <xsl:with-param name="right_display_value"><xsl:value-of select="../../values[ti_name='dataset_version_post']/values[$pos]/display_value"/></xsl:with-param>
                          </xsl:call-template>
                        </xsl:for-each>
                      </xsl:when>
                      <xsl:otherwise>
                        <tr>
                          <td>
                            <p class="default_style">
                              <xsl:value-of select="$Text_NoDatasetCompare"/>
                              <br />
                              <xsl:value-of select="$Text_NoStyleshImpl"/>
                            </p>
                          </td>
                          <td></td>
                          <td></td>
                        </tr>
                        <!-- KWP noch nicht enthalten-->
                      </xsl:otherwise>
                    </xsl:choose>
                  </xsl:otherwise>
                </xsl:choose>
              </xsl:otherwise>
            </xsl:choose>
          </xsl:otherwise>
        </xsl:choose>
        <tr><td colspan='3'><p class="default_style">&#160;</p></td></tr>
      </table>
    </td>
  </tr>
</xsl:template>


<!-- Template to display a multiple measurement table -->
<xsl:template name="display_multiple_measurements_table">
  <xsl:param name="divlevel" />
  <tr>
    <td valign="top" class="default_style" style='width:105mm'>
	  <xsl:choose>
		<xsl:when test="$divlevel='1'">&#160;&#160;&#160;</xsl:when>
		<xsl:when test="$divlevel='2'">&#160;&#160;&#160;&#160;&#160;&#160;</xsl:when>
		<xsl:when test="$divlevel='3'">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;</xsl:when>
		<xsl:when test="$divlevel='4'">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;</xsl:when>
		<xsl:when test="$divlevel='5'">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;</xsl:when>
		<xsl:when test="$divlevel='6'">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;</xsl:when>
		<xsl:when test="$divlevel='7'">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;</xsl:when>
	  </xsl:choose> 
 
	  <xsl:if test="ti_name|display_name">
	    <span class="default_style_b">
	      <xsl:if test="$wahl_ti_name='ti_name_darstellen'"><xsl:for-each select="ti_name"><xsl:value-of select="." /><xsl:text> - </xsl:text></xsl:for-each></xsl:if>
	    </span>
	    <xsl:for-each select="display_name"><span class="default_style_b"><xsl:value-of select="." /></span></xsl:for-each>
	  </xsl:if>
	</td>
 
	<td valign="top" colspan="2" style="width:95mm">		
		<xsl:attribute name="class">default_style</xsl:attribute>

		<xsl:if test="$wahl_ti_value='ti_value_darstellen'"><xsl:for-each select="ti_value"><xsl:value-of select="." /><xsl:text> - </xsl:text></xsl:for-each></xsl:if>
		<xsl:for-each select="display_value"><xsl:value-of select="." /></xsl:for-each>
		<xsl:if test="$wahl_ti_unit='ti_unit_darstellen'"><xsl:for-each select="ti_unit"><xsl:text> </xsl:text><xsl:value-of select="." /><xsl:text> - </xsl:text></xsl:for-each></xsl:if>
		<xsl:text> </xsl:text><xsl:for-each select="display_unit"><xsl:value-of select="." /></xsl:for-each>
		<xsl:if test="position()=last()"><p class="p_small"></p></xsl:if>
	</td>
  </tr>
    
  <xsl:if test="values">
    <xsl:for-each select="values">
      <xsl:call-template name="display_multiple_measurements_table">
        <xsl:with-param name="divlevel"><xsl:value-of select="$divlevel+1" /></xsl:with-param>
      </xsl:call-template>
    </xsl:for-each>
  </xsl:if>
</xsl:template>


<!-- Template to display the extended ident data -->
<xsl:template name="display_extended_ident">
    <xsl:if test="ti_name='NO_ECU_COMM'"><tr><td colspan="3"><p class="default_error"><xsl:value-of select="display_name" /></p></td></tr></xsl:if>
    <xsl:if test="ti_name='NO_RUNTIME_DATA'"><tr><td colspan="3"><p class="default_style_b"><xsl:value-of select="display_name" /></p></td></tr></xsl:if>
    <xsl:if test="@type='obd'"><tr><td colspan="3"><p class="default_obd_mode"><xsl:value-of select="display_name"/></p></td></tr></xsl:if>
     
	<xsl:for-each select="values">
        <xsl:variable name="ti_name" select="./ti_name"/>   
		<xsl:choose>
			<xsl:when test="count(values) = 0">
				<xsl:call-template name="display_extended_ident_simple_table_row" />
			</xsl:when>
			<xsl:otherwise>
			  <tr>
				<td colspan="3">
				  <!-- start the expansion mechanism -->
				  <xsl:call-template name="func_treeView_mark_start">
					<xsl:with-param name="id">measurements_hide_<xsl:value-of select="generate-id(.)" /></xsl:with-param>
				  </xsl:call-template>

				  <!-- add the label and icon for the expansion mechanism -->
				  <xsl:call-template name="func_treeView_label">
					<xsl:with-param name="id">measurements_hide_<xsl:value-of select="generate-id(.)" /></xsl:with-param>
					<xsl:with-param name="label">
					    <span class="default_style_b">
						<xsl:if test="$wahl_ti_name='ti_name_darstellen'">
							<xsl:for-each select="ti_name">
								<xsl:value-of select="." /><xsl:text> - </xsl:text>
							</xsl:for-each>
						</xsl:if>
					  </span>
					  <xsl:for-each select="display_name">
						<span class="default_style_b">
							<xsl:value-of select="." />
						</span>
					  </xsl:for-each>
					</xsl:with-param>
				  </xsl:call-template>

				  <!-- insert the identification data -->
				  <span class="treeView_content" id="content_{generate-id(.)}">	
					<table>
						<xsl:if test="display_value">
							<tr>
								<td style="width:105mm" />
								<td colspan="2" style="width:95mm"><span class="default_style"><xsl:value-of select="./display_value" /></span></td>
							</tr>
						</xsl:if>

						<!-- insert all ident values -->
						<xsl:for-each select="values">
							<xsl:call-template name="display_multiple_measurements_table">
								<xsl:with-param name="divlevel" select="0" />
							</xsl:call-template>
						</xsl:for-each>
					 </table>
				  </span>
				  <!-- stop the expansion mechanism -->
				  <xsl:call-template name="func_treeView_stop" />
				</td>
			  </tr>
			</xsl:otherwise>
		</xsl:choose>
    </xsl:for-each>
</xsl:template>


<!-- Template to display a multiple measurement table -->
<xsl:template name="display_extended_ident_simple_table_row">
  <tr>
    <td valign="top" class="default_style" style='width:109mm'>
	  <xsl:if test="ti_name|display_name">
	    <span class="default_style_b">
	      <xsl:if test="$wahl_ti_name='ti_name_darstellen'"><xsl:for-each select="ti_name"><xsl:value-of select="." /><xsl:text> - </xsl:text></xsl:for-each></xsl:if>
	    </span>
	    <xsl:for-each select="display_name"><span class="default_style_b">&#160;&#160;&#160;&#160;&#160;<xsl:value-of select="." /></span></xsl:for-each>
	  </xsl:if>
	</td>
 
	<td valign="top" colspan="2" style="width:91mm">		
		<xsl:attribute name="class">default_style</xsl:attribute>

		<xsl:if test="$wahl_ti_value='ti_value_darstellen'"><xsl:for-each select="ti_value"><xsl:value-of select="." /><xsl:text> - </xsl:text></xsl:for-each></xsl:if>
		<xsl:for-each select="display_value"><xsl:value-of select="." /></xsl:for-each>
		<xsl:if test="$wahl_ti_unit='ti_unit_darstellen'"><xsl:for-each select="ti_unit"><xsl:text> </xsl:text><xsl:value-of select="." /><xsl:text> - </xsl:text></xsl:for-each></xsl:if>
		<xsl:text> </xsl:text><xsl:for-each select="display_unit"><xsl:value-of select="." /></xsl:for-each>
		<xsl:if test="position()=last()"><p class="p_small"></p></xsl:if>
	</td>
  </tr>
</xsl:template>


<!-- Template to display the multiple data -->
<xsl:template name="display_multiple_data">
    <xsl:for-each select="values">
      <xsl:variable name="ti_name" select="./ti_name"/> 
	  <xsl:if test="ti_value='failed'">
	  	<tr>
	  		<td style="width:115mm" />
	  		<td colspan="2" style="width:85mm"><span class="default_error"><xsl:value-of select="./display_value" /></span></td>
		</tr>	
	  </xsl:if>

	  <!--  add only the blocks with their measurements -->
	  <xsl:if test="starts-with($ti_name, 'block_number_')">
		  <tr>
		  	<td colspan="3">
		  	  <!-- start the expansion mechanism -->
		  	  <xsl:call-template name="func_treeView_mark_start">
			  	<xsl:with-param name="id">measurements_hide_<xsl:value-of select="generate-id(.)" /></xsl:with-param>
			  </xsl:call-template>

			  <!-- add the label and icon for the expansion mechanism -->
		  	  <xsl:call-template name="func_treeView_label">
				<xsl:with-param name="id">measurements_hide_<xsl:value-of select="generate-id(.)" /></xsl:with-param>
				<xsl:with-param name="label">
				  <span class="default_style_b">
					<xsl:if test="$wahl_ti_name='ti_name_darstellen'"><xsl:for-each select="ti_name"><xsl:value-of select="." /><xsl:text> - </xsl:text></xsl:for-each></xsl:if>
				  </span>
				  <xsl:for-each select="display_name"><span class="default_style_b"><xsl:value-of select="." /></span></xsl:for-each>
				</xsl:with-param>
			  </xsl:call-template>

			  <!-- insert the measurement data -->
		  	  <span class="treeView_content" id="content_{generate-id(.)}">
				  <table>
				  	  <!-- insert all block measurements -->
					  <xsl:for-each select="values">
				  		  <xsl:call-template name="display_multiple_measurements_table">
							<xsl:with-param name="divlevel" select="0" />
						  </xsl:call-template>
					  </xsl:for-each>
				  </table>
			  </span>
			  <!-- stop the expansion mechanism -->
			  <xsl:call-template name="func_treeView_stop" />
			</td>
		  </tr>		  
	  </xsl:if>
    </xsl:for-each>
</xsl:template>


<!-- Main Template for displaying generic information. Handles all types of information. -->
<xsl:template name="display_generic">
  <!-- display event memory information -->
  <xsl:if test="fault_number or sae_number">
    <xsl:call-template name="display_dtc" />
  </xsl:if>

  <!--  display multiple data -->
  <xsl:if test="@type='multiple_ident_data' or @type='multiple_measurement_data' or @type='multiple_adaptation_data'">
	<xsl:call-template name="display_multiple_data" />
  </xsl:if>

  <!-- display extended identification data -->
  <xsl:if test="@type='ident' or @type='obd' or @type='adaption_read' or @type='adaption_write'">
    <xsl:if test="ti_name='NO_ECU_COMM'"><tr><td colspan="3"><p class="default_error"><xsl:value-of select="display_name" /></p></td></tr></xsl:if>
    <xsl:if test="ti_name='NO_RUNTIME_DATA'"><tr><td colspan="3"><p class="default_style_b"><xsl:value-of select="display_name" /></p></td></tr></xsl:if>
    <xsl:if test="@type='obd'"><tr><td colspan="3"><p class="default_obd_mode"><xsl:value-of select="display_name"/></p></td></tr></xsl:if>
    <xsl:for-each select="values">
	  <xsl:call-template name="display_generic_read_measurements_table">
		<xsl:with-param name="divlevel" select="0" />
		<xsl:with-param name="hide_addr" select="1"/>
		<xsl:with-param name="expandable" select="../@type='extended_ident'" />	
	  </xsl:call-template>
    </xsl:for-each>
  </xsl:if>

  <!-- display extended identification data -->
  <xsl:if test="@type='extended_ident'">
	<xsl:call-template name="display_extended_ident" />
  </xsl:if>

  <!-- Display the  -->
  <xsl:if test="@type='ident'">
	<xsl:call-template name="display_swap_fod_status" />
  </xsl:if>
  
  <!-- display subsystem components -->
  <xsl:if test="@type='subsystem_component_list_read' or @type='subsystem_component_list_write'">
    <xsl:call-template name="display_subsystem_component_list" />
  </xsl:if>

  <!-- display sowtware components -->
  <xsl:if test="@type='swco_swc_list_read' or @type='swco_swc_list_write'">
    <xsl:call-template name="display_swco_list" />
  </xsl:if>
  
  <!-- display a dataset -->
  <xsl:if test="@type='dataset'">
    <xsl:call-template name="display_dataset"></xsl:call-template>
  </xsl:if>
  
  <!-- display basic settings (uds/kwp)-->
  <xsl:if test="starts-with(@type,'basicsettings') or starts-with(@type,'iocontrol')">
    <xsl:call-template name="display_basicsettings_iocontrol"></xsl:call-template>
  </xsl:if>

  <!-- Display imediate routines -->
  <xsl:if test="starts-with(@type,'immediateRoutine')">
    <xsl:call-template name="display_immediateRoutine"></xsl:call-template>
  </xsl:if>
  
  <!-- Display vehicle function status bytes -->
  <xsl:if test="ti_name='vehicleFunctionStatusByte'">
	<xsl:call-template name="display_vehiclefunction_status_byte" />
  </xsl:if>
  
  <!--................... -->
  <xsl:if test="not(fault_number) and not(sae_number) and not(@type='swco_swc_list_read') and not(@type='subsystem_component_list_read') 
				and not(@type='extended_ident') and not(@type='subsystem_component_list_write') and not(starts-with(@type,'basicsettings')) 
				and not(starts-with(@type,'iocontrol')) and not(starts-with(@type,'immediateRoutine')) and not(@type='dataset') 
				and not (@type='ident') and not (@type='obd') and not(@type='multiple_ident_data') and not(@type='adaption_read')
				and not(@type='multiple_measurement_data') and not(@type='multiple_adaptation_data')
				and not(@type='adaption_write') and not (ti_name='vehicleFunctionStatusByte')">
    <tr>
      <td valign='top' style='width:105mm'>
		<xsl:if test="ti_name|display_name">
		  <span class="default_style_b">
			<xsl:if test="$wahl_ti_name='ti_name_darstellen'"><xsl:for-each select="ti_name"><xsl:value-of select="." /><xsl:text> - </xsl:text></xsl:for-each></xsl:if>
		  </span>
		  <xsl:for-each select="display_name">
			<xsl:if test=".!='' and not (../@type)"><span class="default_style_b"><xsl:value-of select="." /></span><xsl:text>: </xsl:text></xsl:if>
			<xsl:if test=".!='' and (../@type='result')"><span class="default_style_b"><xsl:value-of select="." /></span><xsl:text>: </xsl:text></xsl:if>
			<xsl:if test="../@type='event_memory' and not(../values)"><xsl:value-of select="$Text_NoEntries"/></xsl:if>
			<xsl:if test="../@type='dev_event_memory' and not(../values)"><xsl:value-of select="$Text_NoEntries"/></xsl:if>
		  </xsl:for-each>
		</xsl:if>
      </td>

      <td valign='top' style='width:65mm'>
		<span class="default_style">
          <xsl:if test="$wahl_ti_value='ti_value_darstellen'">
			<xsl:for-each select="ti_value">
			  <xsl:value-of select="." /><xsl:text> - </xsl:text>
			</xsl:for-each>
		  </xsl:if>
		  <xsl:for-each select="display_value">
			<xsl:choose>
              <xsl:when test="../ti_value='succeeded'"><span class="default_ok"><xsl:value-of select="." /></span></xsl:when>
              <xsl:when test="../ti_value='failed'"><span class="default_error"><xsl:value-of select="." /></span></xsl:when>
              <xsl:otherwise><xsl:value-of select="." /></xsl:otherwise>
			</xsl:choose>
          </xsl:for-each>
          <xsl:choose>
			<xsl:when test="display_name">
              <xsl:call-template name="display_long_coding_uds">
				<xsl:with-param name="bin_str" select="bin_value"></xsl:with-param>
				<xsl:with-param name="hex_str" select="hex_value"></xsl:with-param>
              </xsl:call-template>
			</xsl:when>
			<xsl:otherwise>
              <xsl:call-template name="display_long_coding_kwp">
				<xsl:with-param name="bin_str" select="bin_value"></xsl:with-param>
				<xsl:with-param name="hex_str" select="hex_value"></xsl:with-param>
				<xsl:with-param name="byte_count" select="0"></xsl:with-param>
              </xsl:call-template>
			</xsl:otherwise>
          </xsl:choose>
          <xsl:text> </xsl:text>
		  <xsl:for-each select="display_unit">
			<xsl:value-of select="." />
		  </xsl:for-each>
		</span>
      </td>
    </tr>
    
    <xsl:for-each select="gw_id">
	  <tr><td><b><xsl:value-of select="$Text_DiagAddr"/><xsl:text>: </xsl:text></b></td><td><xsl:value-of select="." /></td></tr>
	</xsl:for-each>
    
    <xsl:if test="values">
	  <!-- Different behaviour for event memories, they get devided into errors and hints -->
	  <xsl:if test="./@type='event_memory'">
		<xsl:call-template name="splitEventmemoryAndDisplayExpandable" />
	  </xsl:if>
	  <xsl:if test="not(./@type='event_memory')">
		<xsl:for-each select="values">
		  <xsl:call-template name="display_generic" />
		</xsl:for-each>
	  </xsl:if>
	  <tr>
		<td colspan="2"><p class="p_small"></p></td>
	  </tr>
    </xsl:if>

    <xsl:for-each select="responses">
	  <tr>
		<td colspan="2">
		  <xsl:value-of select="$Text_Responses"/><xsl:text>:</xsl:text>
		</td>
	  </tr>
      <xsl:for-each select="values"><xsl:call-template name="display_generic" /></xsl:for-each>
    </xsl:for-each>
  </xsl:if>
</xsl:template>

<!-- Template to devide event memories into errors and hints. Provides expand and collapse mechanism.  -->
<xsl:template name ="splitEventmemoryAndDisplayExpandable">
  <tr>
	<td>
	  <!-- Eventmemories with priorities lower than 6 are errors -->	
	  <xsl:if test="not(count(values[measurement_values/values[display_value &lt; 6 and (ti_name = 'PRIORITY' or ti_name = 'MAS00978')] or not(measurement_values/values[(ti_name = 'PRIORITY' or ti_name = 'MAS00978')])])='0')">
		<xsl:call-template name="func_treeView_mark_start">
		  <xsl:with-param name="id">errormemory_<xsl:value-of select="generate-id(.)" /></xsl:with-param>
		</xsl:call-template>
		<table>
		  <tr>
			<td>
			  <p class="eventmemory_subheadline">
				<xsl:call-template name="func_treeView_label">
				  <xsl:with-param name="id">errormemory_<xsl:value-of select="generate-id(.)" /></xsl:with-param>
				  <xsl:with-param name="label">
					<span class="default_error_b">
					  <xsl:value-of select="$Text_EventmemoryPrimary"/>
					  <xsl:text> (</xsl:text>
					  <xsl:value-of select="count(values[measurement_values/values[display_value &lt; 6 and (ti_name = 'PRIORITY' or ti_name = 'MAS00978')] or not(measurement_values/values[ti_name = 'PRIORITY' or ti_name = 'MAS00978'])])"/>
					  <xsl:text>)</xsl:text>
					  <xsl:text>:</xsl:text>
  					</span>
				  </xsl:with-param>
				</xsl:call-template>
			  </p>
			</td>
		  </tr>
		</table>
		<span class="treeView_content" id="content_{generate-id(.)}">
		  <table>
			<xsl:for-each select="values[measurement_values/values[display_value &lt; 6 and (ti_name = 'PRIORITY' or ti_name = 'MAS00978')] or not(measurement_values/values[ti_name = 'PRIORITY' or ti_name = 'MAS00978'])]">
			  <xsl:call-template name="display_generic" />
			</xsl:for-each>
		  </table>
		</span>
	  </xsl:if>
			
	  <!-- Eventmemories with priorities grater than 5 are hints -->	
	  <xsl:if test="not(count(values[measurement_values/values[display_value &gt; 5 and (ti_name = 'PRIORITY' or ti_name = 'MAS00978')]])='0')">
		<xsl:call-template name="func_treeView_mark_start">
		  <xsl:with-param name="id">hintmemory_<xsl:value-of select="generate-id(.)" /></xsl:with-param>
		</xsl:call-template>
		<table>
		  <tr>
			<td>
			  <p class="eventmemory_subheadline">
				<xsl:call-template name="func_treeView_label">
				  <xsl:with-param name="id">hintmemory_<xsl:value-of select="generate-id(.)" /></xsl:with-param>
				  <xsl:with-param name="label">
					<span class="default_warn_b">
					  <xsl:value-of select="$Text_EventmemoryHint"/>
					  <xsl:text> (</xsl:text>
					  <xsl:value-of select="count(values[measurement_values/values[display_value &gt; 5 and (ti_name = 'PRIORITY' or ti_name = 'MAS00978')]])"/>
					  <xsl:text>)</xsl:text>
					  <xsl:text>:</xsl:text>
					</span>
				  </xsl:with-param>
				</xsl:call-template>
			  </p>
			</td>
		  </tr>
		</table>
		<span class="treeView_content" id="content_{generate-id(.)}">
		  <table>
			<xsl:for-each select="values[measurement_values/values[display_value &gt; 5 and (ti_name = 'PRIORITY' or ti_name = 'MAS00978')]]">
			  <xsl:call-template name="display_generic" />
			</xsl:for-each>
		  </table>
		</span>
	  </xsl:if>	
	</td>
  </tr>
</xsl:template>

<!-- Template to display KWP codung values -->
<xsl:template name ="display_long_coding_kwp">
  <xsl:param name ="bin_str"></xsl:param>
  <xsl:param name ="hex_str"></xsl:param>
  <xsl:param name ="byte_count"></xsl:param>
  <xsl:if test ="string-length($bin_str) > 0">
    <tr>
      <td>
		<xsl:value-of select="$Text_Byte"/><xsl:text> </xsl:text>
		<xsl:value-of select="$byte_count"/>
		<xsl:text>: </xsl:text>
      </td>
      <td>
		<xsl:value-of select="substring($bin_str, 0, 5)"/>
		<xsl:text> </xsl:text>
		<xsl:value-of select="substring($bin_str, 5, 4)"/>
		<xsl:text> ($</xsl:text>
        <xsl:call-template name="toUpper">
          <xsl:with-param name="toBeTranslated" select="substring($hex_str, 0, 3)"/>
        </xsl:call-template>
		<xsl:text>)</xsl:text>
      </td>
    </tr>
    <xsl:call-template name="display_long_coding_kwp">
      <xsl:with-param name="bin_str" select="substring($bin_str, 9, string-length($bin_str))"></xsl:with-param>
      <xsl:with-param name="hex_str" select="substring($hex_str, 3, string-length($hex_str))"></xsl:with-param>
      <xsl:with-param name="byte_count" select="$byte_count+1"></xsl:with-param> 
    </xsl:call-template>
  </xsl:if>
</xsl:template>

<!-- Template to display UDS coding values -->
<xsl:template name ="display_long_coding_uds">
  <xsl:param name ="bin_str"></xsl:param>
  <xsl:param name ="hex_str"></xsl:param>
  <xsl:if test ="string-length($bin_str) > 0">
    <tr>
      <td/>
      <td>
        <xsl:value-of select="substring($bin_str, 0, 5)"/>
        <xsl:text> </xsl:text>
        <xsl:value-of select="substring($bin_str, 5, 4)"/>
        <xsl:text> ($</xsl:text>
        <xsl:call-template name="toUpper">
          <xsl:with-param name="toBeTranslated" select="substring($hex_str, 0, 3)"/>
        </xsl:call-template>
        <xsl:text>)</xsl:text>
      </td>
    </tr>
    <xsl:call-template name="display_long_coding_uds">
      <xsl:with-param name="bin_str" select="substring($bin_str, 9, string-length($bin_str))"></xsl:with-param>
      <xsl:with-param name="hex_str" select="substring($hex_str, 3, string-length($hex_str))"></xsl:with-param>
    </xsl:call-template>
  </xsl:if>
</xsl:template>

<!-- Template to transform the provided text (Hex-Value) into upper case -->
<xsl:template name="toUpper">
  <xsl:param name="toBeTranslated"></xsl:param>
  <xsl:param name="upper" select="'ABCDEF0123456789'"></xsl:param>
  <xsl:param name="lower" select="'abcdef0123456789'"></xsl:param>
  <xsl:value-of select="translate($toBeTranslated, $lower, $upper)"/>
</xsl:template>

<!-- Template to display a measurements table -->
<xsl:template name="display_generic_read_measurements_table">
  <xsl:param name="divlevel" />
  <xsl:param name="hide_addr" />
  <xsl:param name="alternative_addr" />
  <xsl:param name="expandable" select="false" />
  <xsl:param name="expand_content" select="false" />
    
  <xsl:if test="$expandable and values">
	<xsl:call-template name="func_treeView_mark_start">
	  <xsl:with-param name="id">measurements_hide_<xsl:value-of select="generate-id(.)" /></xsl:with-param>
	</xsl:call-template>
  </xsl:if>
  
  <tr>
	<xsl:if test="$expand_content">
	  <xsl:attribute name="class">treeView_content</xsl:attribute>
	</xsl:if>

    <td valign="top" class="default_style" style='width:105mm'>
	  <xsl:choose>
		<xsl:when test="$divlevel='1'">&#160;&#160;&#160;</xsl:when>
		<xsl:when test="$divlevel='2'">&#160;&#160;&#160;&#160;&#160;&#160;</xsl:when>
		<xsl:when test="$divlevel='3'">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;</xsl:when>
		<xsl:when test="$divlevel='4'">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;</xsl:when>
		<xsl:when test="$divlevel='5'">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;</xsl:when>
		<xsl:when test="$divlevel='6'">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;</xsl:when>
		<xsl:when test="$divlevel='7'">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;</xsl:when>
	  </xsl:choose> 
	  <xsl:if test="$expandable and not(values) or $expand_content">
		&#160;&#160;&#160;&#160;
	  </xsl:if>	  
	  <xsl:if test="ti_name|display_name">

		<xsl:if test="$expandable and values">
		  <xsl:call-template name="func_treeView_label">
			<xsl:with-param name="id">measurements_hide_<xsl:value-of select="generate-id(.)" /></xsl:with-param>
			<xsl:with-param name="label">
			  <span class="default_style_b">
				<xsl:if test="$wahl_ti_name='ti_name_darstellen'"><xsl:for-each select="ti_name"><xsl:value-of select="." /><xsl:text> - </xsl:text></xsl:for-each></xsl:if>
			  </span>
			  <xsl:for-each select="display_name"><span class="default_style_b"><xsl:value-of select="." /></span></xsl:for-each>
			</xsl:with-param>
		  </xsl:call-template>
		</xsl:if>
		<xsl:if test="not($expandable and values)">
		  <span class="default_style_b">
			<xsl:if test="$wahl_ti_name='ti_name_darstellen'"><xsl:for-each select="ti_name"><xsl:value-of select="." /><xsl:text> - </xsl:text></xsl:for-each></xsl:if>
		  </span>
		  <xsl:for-each select="display_name"><span class="default_style_b"><xsl:value-of select="." /></span></xsl:for-each>
		</xsl:if>
	  </xsl:if>
	</td>
  
	<xsl:variable name="colspan"><xsl:choose><xsl:when test="$hide_addr='1'">2</xsl:when><xsl:otherwise>1</xsl:otherwise></xsl:choose></xsl:variable>
	<xsl:variable name="tdwidth"><xsl:choose><xsl:when test="$hide_addr='1'">95mm</xsl:when><xsl:otherwise>85mm</xsl:otherwise></xsl:choose></xsl:variable>
  
	<td valign="top" colspan="{$colspan}" style="width:{$tdwidth}">		
	  <!-- Use different styling for errorstate -->
	  <xsl:if test = "display_name = 'ERRORSTATE'">
		<xsl:if test = "display_value = 'sporadic'">
		  <xsl:attribute name="class">default_warn</xsl:attribute>
		</xsl:if>
		<xsl:if test = "not(display_value = 'sporadic')">
		  <xsl:attribute name="class">default_error</xsl:attribute>	
		</xsl:if>
	  </xsl:if>
	  <xsl:if test = "not(display_name = 'ERRORSTATE')">
		<xsl:attribute name="class">default_style</xsl:attribute>
	  </xsl:if>

	  <xsl:if test="$wahl_ti_value='ti_value_darstellen'"><xsl:for-each select="ti_value"><xsl:value-of select="." /><xsl:text> - </xsl:text></xsl:for-each></xsl:if>
	  <!--ti_value 'succeeded' und 'failed' (für OBD) darstellen, wenn kein Display_value-->
	  <xsl:if test="ti_value and not (display_value)">
		<xsl:for-each select="ti_value">
		  <xsl:if test=". = 'succeeded'">
			<p class="default_ok">
			  <xsl:value-of select="."/>
			</p>
		  </xsl:if>
		  <xsl:if test=". = 'failed'">
			<p class="default_error">
			  <xsl:value-of select="."/>
			</p>
		  </xsl:if>
		</xsl:for-each>
	  </xsl:if>
	  <xsl:for-each select="display_value"><xsl:value-of select="." /></xsl:for-each>
	  <xsl:if test="$wahl_ti_unit='ti_unit_darstellen'"><xsl:for-each select="ti_unit"><xsl:text> </xsl:text><xsl:value-of select="." /><xsl:text> - </xsl:text></xsl:for-each></xsl:if>
	  <xsl:text> </xsl:text><xsl:for-each select="display_unit"><xsl:value-of select="." /></xsl:for-each>
	  <xsl:if test="position()=last()"><p class="p_small"></p></xsl:if>
	</td>

	<xsl:if test="$alternative_addr!=''">
      <td class="default_style" style="width:10mm">
		<xsl:if test="$divlevel='3'"><xsl:value-of select="$alternative_addr" /></xsl:if>
		<xsl:if test="not ($divlevel='3')">&#160;</xsl:if>
      </td>
	</xsl:if>

	<xsl:if test="$hide_addr!='1'">
      <td class="default_style" style="width:10mm">
		<xsl:if test="$divlevel='0'"><xsl:value-of select="../../ecu_id" /></xsl:if>
		<xsl:if test="not ($divlevel='0')">&#160;</xsl:if>
      </td>
	</xsl:if>
  </tr>
    
  <xsl:if test="values">
    <xsl:for-each select="values">
      <xsl:call-template name="display_generic_read_measurements_table">
        <xsl:with-param name="divlevel"><xsl:value-of select="$divlevel+1" /></xsl:with-param>
        <xsl:with-param name="hide_addr"><xsl:value-of select="$hide_addr" /></xsl:with-param>
        <xsl:with-param name="expand_content" select="$expandable or $expand_content" />
      </xsl:call-template>
    </xsl:for-each>
  </xsl:if>
  <xsl:if test="ti_name='UNLEARNINGCOUNTER'">
    <xsl:if test="following-sibling::*[1]">
      <tr>
        <td colspan="3">
		  <p class="default_style_b"><br />&#160;&#160;&#160;&#160;&#160;&#160;<xsl:value-of select="$Text_MeasurementVal"/></p>
		</td>
      </tr>
    </xsl:if>
  </xsl:if>
</xsl:template>

<!-- Template to display generic ECU info -->
<xsl:template name="display_generic_ecu_info">
  <table>
    <tr>
      <td valign='top' style='width:145mm'>
	    <p class="default_style_ecu"><xsl:value-of select="$Text_Ecu"/><xsl:text>: </xsl:text><xsl:value-of select="ecu_id" /><xsl:text> - </xsl:text><xsl:value-of select="ecu_name" /></p>
      </td>
      <td class="align_opposite" valign='top' style='width:65mm;'>
        <p class="default_style_ecu">&#160;<xsl:for-each select="time_stamp"><xsl:call-template name="display_timestamp"><xsl:with-param name="date"><xsl:value-of select="." /></xsl:with-param></xsl:call-template></xsl:for-each></p>
      </td>
    </tr>
    <tr>
      <td valign='top'>
        <p class="default_style"><xsl:value-of select="logicallink" />
          <xsl:if test="tester_odx_variant"><xsl:text> (</xsl:text><xsl:value-of select="tester_odx_variant" /><xsl:text>)</xsl:text></xsl:if>
		</p>
      </td>
      <td></td>
    </tr>
  </table>
</xsl:template>

<!-- Template to display generic vehicle info. -->
<xsl:template name="display_generic_vehicle_function_info">
  <table>
    <tr>
      <td valign='top' style='width:105mm'>
        <p class="default_style_ecu">
          <a name="{generate-id()}"><xsl:value-of select="display_name" /></a>
          <xsl:if test="display_value"><xsl:text> - </xsl:text><xsl:value-of select="display_value" /></xsl:if>
        </p>
      </td>
      <td class="align_opposite" valign='top' style='width:65mm;'>
        <p class="default_style_ecu">&#160;<xsl:for-each select="time_stamp"><xsl:call-template name="display_timestamp"><xsl:with-param name="date"><xsl:value-of select="." /></xsl:with-param></xsl:call-template></xsl:for-each></p>
      </td>
    </tr>
  </table>
</xsl:template>

<!-- Template to display a vehicle response -->
<xsl:template name="display_generic_vehicle_function_responses">
  <table>
    <tr>
      <xsl:for-each select="responses/values">
        <xsl:call-template name="display_generic" />
      </xsl:for-each>
    </tr>
 </table>
</xsl:template>

<!-- Template to display ECU communication -->
<xsl:template name="display_generic_ecu_communication">
  <xsl:for-each select="ecu_master">
	<xsl:call-template name="func_treeView_mark_start">
	  <xsl:with-param name="id">master_entry_<xsl:value-of select="generate-id(.)" /></xsl:with-param>
	</xsl:call-template>

	<table>
	  <tr>
		<td valign='top' style='width:135mm'>
		  <p class="default_style_bu_diagfunction">
			<xsl:call-template name="func_treeView_label">
			  <xsl:with-param name="id">master_entry_<xsl:value-of select="generate-id(.)" /></xsl:with-param>
			  <xsl:with-param name="label">
				<a name="{generate-id()}"><xsl:value-of select="$Text_Master"/><xsl:text> - </xsl:text></a>
				<xsl:call-template name="display_service_type" />
			  </xsl:with-param>
			</xsl:call-template>
		  </p>
		</td>
		<td class="align_opposite" valign='top' style='width=65mm;'>
		  <p class="default_style_diagfunction">
			<xsl:for-each select="time_stamp">
			  <xsl:call-template name="display_timestamp"><xsl:with-param name="date"><xsl:value-of select="." /></xsl:with-param></xsl:call-template>
			  <xsl:text> </xsl:text>
			  <a href="#inhalt"><xsl:value-of select="$Text_Top"/><xsl:text>^</xsl:text></a><br />
			</xsl:for-each>
		  </p>
		</td>
	  </tr>
	</table>
	<span class="treeView_content" id="content_{generate-id(.)}">
	  <table class="default_style">
		<xsl:call-template name="display_generic" />
	  </table>
	</span>
  </xsl:for-each>
  
  <!-- Display all subsystems grouped -->
  <xsl:if test="count(./ecu_subsystem/subsystem) &gt; 0">
	<xsl:call-template name="func_treeView_mark_start">
	  <xsl:with-param name="id">subsystem_entry_<xsl:value-of select="generate-id(.)" /></xsl:with-param>
	</xsl:call-template>

	<table>
	  <tr>
		<td valign='top' style='width:135mm'>
		  <p class="default_style_bu_diagfunction">
			<xsl:call-template name="func_treeView_label">
			  <xsl:with-param name="id">subsystem_entry_<xsl:value-of select="generate-id(.)" /></xsl:with-param>
			  <xsl:with-param name="label">
				<xsl:value-of select="$Text_Subsystem"/><xsl:text> (</xsl:text>
				<xsl:value-of select="count(./ecu_subsystem/subsystem)"/><xsl:text>) </xsl:text>
			  </xsl:with-param>
			</xsl:call-template>
		  </p>
		</td>
	  </tr>
	</table>
	<span class="treeView_content" id="content_{generate-id(.)}">
	  <xsl:for-each select="ecu_subsystem/subsystem">
		<span class="default_style_bu_topmargin">
		  <xsl:value-of select="$Text_Subsystem"/>
		  <xsl:text> - </xsl:text>
		  <xsl:call-template name="display_service_type" />
		  <xsl:text>: </xsl:text>
		  <xsl:value-of select="./ti_name" />
		</span>
		<table class="default_style"><xsl:call-template name="display_generic" /></table>
	  </xsl:for-each>
	</span>  
  </xsl:if>	
  
  <!--new begin-->
  <xsl:for-each select="ecu_swco/swco">
    <p class="default_style_bu_topmargin">
	  <xsl:value-of select="$Text_SWCO"/>
	  <xsl:text> - </xsl:text>
	  <xsl:call-template name="display_service_type" />
	  <xsl:text>: </xsl:text>
	  <xsl:value-of select="./ti_name" />
	</p>
	<table class="default_style">
	  <xsl:call-template name="display_generic" />
	</table>
	<xsl:for-each select="swc_list/swc">
	  <p class="default_style_bu_topmargin">
		<xsl:value-of select="$Text_SWC"/>
		<xsl:text> - </xsl:text>
		<xsl:call-template name="display_service_type" />
		<xsl:text>: </xsl:text>
		<xsl:value-of select="./ti_name" />
	  </p>
	  <table class="default_style">
		<xsl:call-template name="display_generic" />
	  </table>	
	</xsl:for-each>
  </xsl:for-each>
  <!--new end-->
</xsl:template>

<!-- Template to display generic responses -->
<xsl:template name="display_generic_responses">
  <xsl:for-each select="ecu_master">
	<table class="default_style"><xsl:call-template name="display_generic" /></table>
  </xsl:for-each>
  <xsl:for-each select="ecu_subsystem/subsystem">
	<p class="default_style_bu_topmargin"><xsl:value-of select="$Text_Subsystem"/>
      <xsl:text> - </xsl:text>
      <xsl:call-template name="display_service_type" />
    </p>
	<table class="default_style"><xsl:call-template name="display_generic" /></table>
  </xsl:for-each>
</xsl:template>

<!-- Template -->
<xsl:template name="display_read_measurements_table">
  <table>
    <tr>
      <td valign='top' style='width:105mm'>
        <p class="default_style_ecu">
		  <a name="{generate-id()}"><xsl:value-of select="ecu[1]/ecu_master[1]/display_name" /></a>
		</p>
      </td>
      <td class="align_opposite" valign='top' style='width=65mm;'>
		<p class="default_style_ecu">&#160;<xsl:for-each select="ecu[1]/ecu_master[1]/time_stamp"><xsl:call-template name="display_timestamp"><xsl:with-param name="date"><xsl:value-of select="." /></xsl:with-param></xsl:call-template><br /></xsl:for-each></p>
      </td>
    </tr>
    <tr>
      <td></td>
      <td class="default_style_revert_align"><a href="#inhalt"><xsl:value-of select="$Text_Top"/><xsl:text>^</xsl:text></a></td>
    </tr>
  </table>

  <table>
    <tr>
      <td valign='top' style='width:100mm'>
        <p class="default_style_bu">
		  <xsl:value-of select="$Text_Name"/>
		  <p class="p_small"></p>
		</p>
      </td>
      <td valign='top' style='width=55mm'>
	    <p class="default_style_bu"><xsl:value-of select="$Text_Value"/></p>
		<p class="p_small"></p>
      </td>
      <td valign='top' style='width:10mm'>
		<p class="default_style_bu">
		  <xsl:value-of select="$Text_Adr"/>
		  <p class="p_small"></p>
		</p>
      </td>
    </tr>

    <xsl:for-each select="ecu/ecu_master">
      <a name="{generate-id()}">
		<xsl:for-each select="values">
          <xsl:call-template name="display_generic_read_measurements_table"><xsl:with-param name="divlevel">0</xsl:with-param></xsl:call-template>
		</xsl:for-each>
      </a>
    </xsl:for-each>
  </table>
</xsl:template>

<!-- This template prints the memory selection of a developer event memory. -->
<xsl:template name="print_event_memory_selection">
  <xsl:if test="display_name[not(*) and contains(., '(') and contains(., ')')]">
	<xsl:text> (</xsl:text>
	<xsl:value-of select="substring-before(substring-after(., '('), ')')"/>
	<xsl:text>)</xsl:text>	
  </xsl:if>
  <xsl:text> </xsl:text>
</xsl:template>

<!-- Template to display the service type (adaption, basic settings, coding, ...) -->
<xsl:template name="display_service_type">
  <xsl:choose>
	<xsl:when test="@type='hex_service'"><xsl:value-of select="$Text_HexService"/></xsl:when>
	<xsl:when test="@type='adaption_read'"><xsl:value-of select="$Text_ReadAdopt"/></xsl:when>
	<xsl:when test="@type='subsystem_component_list_read'"><xsl:value-of select="$Text_ReadSubCompoList"/></xsl:when>
	<xsl:when test="@type='subsystem_component_list_write'"><xsl:value-of select="$Text_WriteSubCompoList"/></xsl:when>
	<xsl:when test="@type='swco_swc_list_read'"><xsl:value-of select="$Text_ReadSWCOList"/></xsl:when>
	<xsl:when test="@type='swco_swc_list_write'"><xsl:value-of select="$Text_WriteSWCOList"/></xsl:when>
    <xsl:when test="@type='adaption_write'"><xsl:value-of select="$Text_WriteAdopt"/></xsl:when>
    <xsl:when test="@type='adaption_reset'"><xsl:value-of select="$Text_Reset_Adaptation"/></xsl:when>
    <xsl:when test="@type='basicsettings'"><xsl:value-of select="$Text_BasicSetting"/></xsl:when>
	<xsl:when test="@type='basicsettings_start'"><xsl:value-of select="$Text_Setting_Start"/></xsl:when>
	<xsl:when test="@type='basicsettings_stop'"><xsl:value-of select="$Text_Setting_Stop"/></xsl:when>
	<xsl:when test="@type='basicsettings_next'"><xsl:value-of select="$Text_Setting_Next"/></xsl:when>
	<xsl:when test="@type='immediateRoutine'"><xsl:value-of select="$Text_ImmediateRoutine"/></xsl:when>
    <xsl:when test="@type='coding_read'"><xsl:value-of select="$Text_ReadCoding"/></xsl:when>
    <xsl:when test="@type='coding_write'"><xsl:value-of select="$Text_WriteCoding"/></xsl:when>
    <xsl:when test="@type='dataset'"><xsl:value-of select="$Text_WriteDataset"/></xsl:when>
	<xsl:when test="@type='dataset_upload'"><xsl:value-of select="$Text_DataUpload"/></xsl:when>
	<xsl:when test="@type='event_memory_clear'"><xsl:value-of select="$Text_EventMemoryClear"/></xsl:when>
	<xsl:when test="@type='dev_event_memory_clear'"><xsl:value-of select="$Text_EventMemoryClearDev"/>
		<xsl:call-template name="print_event_memory_selection"/>
	</xsl:when>
    <xsl:when test="@type='dev_event_memory'"><xsl:value-of select="$Text_EventmemoryDev"/>
	  <xsl:call-template name="print_event_memory_selection"/>
      <xsl:if test="not(count(values)='0')"><span class="default_error"><xsl:text>(</xsl:text><xsl:value-of select="count(values)"/><xsl:text>)</xsl:text></span></xsl:if>
      <xsl:if test="count(values)='0'"><span class="default_ok"><xsl:text>(0)</xsl:text></span></xsl:if>
    </xsl:when>
    <xsl:when test="@type='event_memory'"><xsl:value-of select="$Text_Eventmemory"/><xsl:text> </xsl:text>
	  <!-- Display event momory amount separatly for hints and errors (based on the DTC priority) -->
      <xsl:if test="not(count(values)='0')">
	  	<xsl:variable name = "tmp_error_memory_count" select="count(values[measurement_values/values[display_value &lt; 6 and (ti_name = 'PRIORITY' or ti_name = 'MAS00978')] or not(measurement_values/values[ti_name = 'PRIORITY' or ti_name = 'MAS00978'])])"/>
		<xsl:variable name = "tmp_hint_memory_count" select="count(values[measurement_values/values[display_value &gt; 5 and (ti_name = 'PRIORITY' or ti_name = 'MAS00978')]])"/>
		<xsl:text>(</xsl:text>	
		<xsl:if test="$tmp_error_memory_count &gt; 0">
		  <span class="default_error">
			<xsl:value-of select="$tmp_error_memory_count"/>
		  </span>
		</xsl:if>
		<xsl:if test="$tmp_error_memory_count &gt; 0 and $tmp_hint_memory_count &gt; 0">
		  <xsl:text> / </xsl:text>
		</xsl:if>
		<xsl:if test="$tmp_hint_memory_count &gt; 0">
		  <span class="default_warn">
			<xsl:value-of select="$tmp_hint_memory_count"/>
		  </span>
		</xsl:if>
		<xsl:text>)</xsl:text>
	  </xsl:if>
	  <!-- display gree 0 if no dtcs exist for the ecu -->
      <xsl:if test="count(values)='0'">
	    <span class="default_ok"><xsl:text>(0)</xsl:text></span>
	  </xsl:if>
    </xsl:when>
    <xsl:when test="@type='flash'"><xsl:value-of select="$Text_UpdProgramming_01"/></xsl:when>
	<xsl:when test="@type='ident'"><xsl:value-of select="$Text_Ident"/></xsl:when>
	<xsl:when test="@type='extended_ident'"><xsl:value-of select="$Text_ErwIdent"/></xsl:when>
	<xsl:when test="@type='multiple_ident_data'"><xsl:value-of select="$Text_MultipleIdentification"/></xsl:when>
	<xsl:when test="@type='multiple_measurement_data'"><xsl:value-of select="$Text_MultipleMeasurement"/></xsl:when>
	<xsl:when test="@type='multiple_adaptation_data'"><xsl:value-of select="$Text_MultipleAdaptation"/></xsl:when>
	<xsl:when test="@type='iocontrol'"><xsl:value-of select="$Text_ActDiag"/></xsl:when>
	<xsl:when test="@type='iocontrol_start'"><xsl:value-of select="$Text_ActDiag_Start"/></xsl:when>
	<xsl:when test="@type='iocontrol_next'"><xsl:value-of select="$Text_ActDiag_Next"/></xsl:when>
	<xsl:when test="@type='iocontrol_stop'"><xsl:value-of select="$Text_ActDiag_Stop"/></xsl:when>
	<xsl:when test="@type='measurement'"><xsl:value-of select="$Text_MeasurementVal"/></xsl:when>
	<xsl:when test="@type='security_access'"><xsl:value-of select="$Text_SecAccess"/></xsl:when>
    <xsl:when test="@type='clear_all_dtc'"><xsl:text>ClearAllDTC</xsl:text></xsl:when>
    <xsl:when test="@type='memory_read'"><xsl:value-of select="$Text_ReadEeprom"/></xsl:when>
	<xsl:when test="@type='memory_write'"><xsl:value-of select="$Text_WriteEeprom"/></xsl:when>
	<xsl:when test="@type='roller_test_stand_mode'"><xsl:value-of select="$Text_RollerTestStandMode"/></xsl:when>
	<xsl:when test="@type='obd'"><xsl:value-of select="$Text_Obd"/></xsl:when>
	<xsl:when test="@type='reset_ecu'"><xsl:value-of select="$Text_ResetEcu"/></xsl:when>
  </xsl:choose>
</xsl:template>

<!-- Template to display a time stamp -->
<xsl:template name="display_timestamp">
  <xsl:param name="date" />
  <xsl:if test="$date!=''">
    <xsl:value-of select="substring($date,9,2)"/><xsl:text>.</xsl:text>
    <xsl:value-of select="substring($date,6,2)"/><xsl:text>.</xsl:text>
    <xsl:value-of select="substring($date,1,4)"/><xsl:text> </xsl:text>
    <xsl:value-of select="substring($date,12,12)"/>
  </xsl:if>  
</xsl:template>

<!-- Template -->
<xsl:template name="display_index"> <!-- hier ggf. noch Flashen zufügen -->
  <table>
    <tr>
      <td valign='top' style='width:50mm'>
	    <p class="default_style"><xsl:value-of select="$Text_CompList"/></p>
      </td>
      <td valign='top' style='width:120mm'>
        <p class="default_style">
          <xsl:for-each select="//gw_routing_table">
		    <a href="#{generate-id()}"><xsl:value-of select="$Text_List"/><xsl:text> </xsl:text><xsl:number level="any" format="1" /></a>
            <xsl:if test="not(position()=last())"><xsl:text>, </xsl:text></xsl:if>
          </xsl:for-each>
        </p>
      </td>
    </tr>
    <xsl:for-each select="//ecu[count(. | key('index_ecu', ecu_id)[1]) = 1]">
      <xsl:sort select="ecu_id"/>
	  <xsl:variable name="cur_id"><xsl:value-of select="ecu_id"/></xsl:variable>      
      <tr>
        <td valign='top' style='width:130mm'>
          <p class="default_style_b">
            <xsl:value-of select="ecu_id" /><xsl:text> - </xsl:text><xsl:value-of select="ecu_name" />
          </p>
        </td>
        <td valign='top' style='width:90mm'>
          <p class="default_style">
            <xsl:for-each select="//ecu[ecu_id=$cur_id]">
              <xsl:for-each select="ecu_master">
                <xsl:variable name="linkid">
                  <xsl:if test="not(@type='measurement')"><xsl:value-of select="generate-id()" /></xsl:if>
                  <xsl:if test="@type='measurement' and not(../../@type='read_measurements')"><xsl:value-of select="generate-id()" /></xsl:if>
                  <xsl:if test="@type='measurement' and ../../@type='read_measurements'"><xsl:value-of select="generate-id(../..)" /></xsl:if>
                </xsl:variable>
                <a href="#{$linkid}">
                  <xsl:call-template name="display_service_type"><xsl:with-param name="type"><xsl:value-of select="@type" /></xsl:with-param></xsl:call-template>
                </a>
				<xsl:if test="@type='ident'">
				  <xsl:for-each select="swap_fod_status">
					<xsl:text> </xsl:text>
					<xsl:variable name="linkTarget" select="generate-id(.)"/>
					<!-- the fod status may not be expanded and, thus, must be expanded first in order to be able to use the link. -->
					<a href="#{$linkTarget}" onClick="javascript:expand_parent_node('{$linkTarget}');">
                      <xsl:value-of select="$Text_SwapFodStatus"/>
					</a>
                  </xsl:for-each>
				</xsl:if>
                <xsl:text> </xsl:text>
              </xsl:for-each>
            </xsl:for-each>
          </p>
        </td>
      </tr>
    </xsl:for-each>
    <xsl:for-each select="//vehicle_function">
      <tr>
        <td valign='top' style='width:200mm'>
          <p class="default_style">
            <a href="#{generate-id()}">
              <xsl:value-of select="display_name" />
              <xsl:if test="display_value"><xsl:text> - </xsl:text><xsl:value-of select="display_value" /></xsl:if>
            </a>
          </p>
        </td>
      </tr>
    </xsl:for-each>
  </table>
</xsl:template>

<!-- TEmplate to create the BZD Protocol index -->
<xsl:template name="display_index_bzd">
  <table>
    <tr>
	  <td><p class="default_style_b"><xsl:value-of select="$Text_ContrUnit"/></p></td>
	  <td><p class="default_style_b"><xsl:value-of select="$Text_ContrUnitName"/></p></td>
	  <td><p class="default_style_b"><xsl:value-of select="$Text_VwAudiPartnumber"/></p></td>
	  <td><p class="default_style_b"><xsl:value-of select="$Text_Sw"/></p></td>
	  <td><p class="default_style_b"><xsl:value-of select="$Text_Hw"/></p></td>
	  <td><p class="default_style_b"><xsl:value-of select="$Text_Dtc"/></p></td>
	  <td><p class="default_style_b"><xsl:value-of select="$Text_SwapFod"/></p></td>
    </tr>
    <tr><td colspan='7' style='height:1px;background-color:#000000'></td></tr>
    <xsl:for-each select="//ecu[count(. | key('index_ecu', ecu_id)[1]) = 1]">
      <xsl:sort select="ecu_id"/>
      <xsl:variable name="cur_id"><xsl:value-of select="ecu_id"/></xsl:variable>
      <tr>
        <td valign='top'>
          <p class="default_style_b">
            <xsl:variable name="link"><xsl:for-each select="ecu_master[@type='ident']"><xsl:value-of select="generate-id()" /></xsl:for-each></xsl:variable>
            <a href="#{$link}">
			  <xsl:value-of select="ecu_id" />
			  <xsl:text> - </xsl:text><xsl:value-of select="ecu_name" />
			</a>
          </p>
        </td>
        <td valign='top'>
          <p class='default_style'>
            <xsl:value-of select="ecu_master/values[ti_name='IDE00013']/display_value" />
          </p>
        </td>
        <td valign='top'>
          <p class='default_style'>
            <xsl:value-of select="ecu_master/values[ti_name='IDE00007']/display_value" />
          </p>
        </td>
        <td valign='top'>
          <p class='default_style'>
            <xsl:value-of select="ecu_master/values[ti_name='IDE00008']/display_value" />
          </p>
        </td>
        <td valign='top'>
          <p class='default_style'>
            <xsl:value-of select="ecu_master/values[ti_name='IDE00016']/display_value" />
          </p>
        </td>
        <td valign='top' style='text-align=center'>
          <p class="default_style">
            <xsl:for-each select="//ecu[ecu_id=$cur_id]">
              <xsl:for-each select="ecu_master[@type='event_memory']">
                <xsl:variable name="linkid">
                  <xsl:value-of select="generate-id()" />
                </xsl:variable>
				<xsl:if test="not(count(values)='0')">
				  <xsl:variable name = "tmp_error_memory_count" select="count(values[measurement_values/values[display_value &lt; 6 and (ti_name = 'PRIORITY' or ti_name = 'MAS00978')] or not(measurement_values/values[ti_name = 'PRIORITY' or ti_name = 'MAS00978'])])"/>
				  <xsl:variable name = "tmp_hint_memory_count" select="count(values[measurement_values/values[display_value &gt; 5 and (ti_name = 'PRIORITY' or ti_name = 'MAS00978')]])"/>
				  <a href="#{$linkid}">
					<xsl:if test="$tmp_error_memory_count &gt; 0">
					  <span class="default_error">
						<xsl:value-of select="$tmp_error_memory_count"/>
					  </span>
					</xsl:if>
					<xsl:if test="$tmp_error_memory_count &gt; 0 and $tmp_hint_memory_count &gt; 0">
					  <xsl:text> / </xsl:text>
					</xsl:if>
					<xsl:if test="$tmp_hint_memory_count &gt; 0">
					  <span class="default_warn">
						<xsl:value-of select="$tmp_hint_memory_count"/>
					  </span>
					</xsl:if>
				  </a>
				</xsl:if>
                <xsl:if test="count(values)='0'"><span class="default_ok"><xsl:text>0</xsl:text></span></xsl:if>
              </xsl:for-each>
              <xsl:for-each select="ecu_master[@type='dev_event_memory']">
                <xsl:variable name="linkid">
                  <xsl:value-of select="generate-id()" />
                </xsl:variable>
                <xsl:if test="not(count(values)='0')"><a href="#{$linkid}"><span class="default_error"><xsl:value-of select="count(values)"/></span></a></xsl:if>
                <xsl:if test="count(values)='0'"><span class="default_ok"><xsl:text>0</xsl:text></span></xsl:if>
              </xsl:for-each>
            </xsl:for-each>
          </p>
        </td>
        <td valign='top'>
          <p class="default_style_b">
			<xsl:for-each select="ecu_master[@type='ident']">
			  <xsl:for-each select="swap_fod_status">
			    <xsl:text> </xsl:text>
			    <xsl:variable name="linkTarget" select="generate-id(.)"/>
				<!-- the fod status may not be expanded and, thus, must be expanded first in order to be able to use the link. -->
			    <a href="#{$linkTarget}" onClick="javascript:expand_parent_node('{$linkTarget}');">
			      <xsl:value-of select="$Text_Status" />
			    </a>
			  </xsl:for-each>
			</xsl:for-each>
          </p>
        </td>
      </tr>
    </xsl:for-each>
  </table>
</xsl:template>

<!-- Template to create the Flash Protocol Index -->
<xsl:template name="display_index_flash">
  <table>
    <tr>
      <td valign='top' style='width:180mm'>
	    <p class="default_style"><xsl:value-of select="$Text_CompList_Json"/></p>
      </td>
      <td valign='top' style='width:120mm'>
        <p class="default_style">
          <xsl:for-each select="//gw_routing_table">
		    <a href="#{generate-id()}"><xsl:value-of select="$Text_List"/><xsl:text> </xsl:text><xsl:number level="any" format="1" /></a>
            <xsl:if test="not(position()=last())"><xsl:text>, </xsl:text></xsl:if>
          </xsl:for-each>
        </p>
      </td>
    </tr>
    <xsl:for-each select="//ecu[count(. | key('index_ecu', ecu_id)[1]) = 1]">
      <!--xsl:sort select="ecu_id"/-->
	  
	  <xsl:variable name="cur_json">
		<xsl:value-of select="./ecu_master[@type='flash']/values[display_name='FLASH_SEQUENCE_ORDER_FILE']/display_value" />	  
	  </xsl:variable>
	  <xsl:variable name="previous_json">
		<xsl:value-of select="preceding-sibling::*[1]/ecu_master[@type='flash']/values[display_name='FLASH_SEQUENCE_ORDER_FILE']/display_value" />	  
	  </xsl:variable> 
	  
	  <!-- Show the json file, but only for the first ecu referencing it (flash order is assumed so all ecus included in the json file are grouped together) -->
	  <xsl:if test="$cur_json != $previous_json">
	    <tr>
          <td valign='top' style='width:130mm'>
            <p class="default_style_b">
			  <xsl:value-of select="$cur_json"/>
            </p>
          </td>
		  <td/>
		</tr>
	  </xsl:if>
	  
	  <xsl:variable name="cur_id"><xsl:value-of select="ecu_id"/></xsl:variable>      
      <tr>
        <td valign='top' style='width:130mm'>
		  <p>
			<!-- use indent if the ecu is part of a json definition -->
			<xsl:attribute name="class">
			  <xsl:if test="$cur_json!=''">default_style_b_indent</xsl:if>
			  <xsl:if test="$cur_json=''">default_style_b</xsl:if>
			</xsl:attribute>
            <xsl:value-of select="ecu_id" /><xsl:text> - </xsl:text><xsl:value-of select="ecu_name" />
          </p>
        </td>
        <td valign='top' style='width:90mm'>
          <p class="default_style">
            <xsl:for-each select="//ecu[ecu_id=$cur_id]">
              <xsl:for-each select="ecu_master">
                <xsl:variable name="linkid">
                  <xsl:if test="not(@type='measurement')"><xsl:value-of select="generate-id()" /></xsl:if>
                  <xsl:if test="@type='measurement' and not(../../@type='read_measurements')"><xsl:value-of select="generate-id()" /></xsl:if>
                  <xsl:if test="@type='measurement' and ../../@type='read_measurements'"><xsl:value-of select="generate-id(../..)" /></xsl:if>
                </xsl:variable>
                <a href="#{$linkid}">
                  <xsl:call-template name="display_service_type"><xsl:with-param name="type"><xsl:value-of select="@type" /></xsl:with-param></xsl:call-template>
                </a>
                <xsl:text> </xsl:text>
              </xsl:for-each>
            </xsl:for-each>
          </p>
        </td>
      </tr>
    </xsl:for-each>
    <xsl:for-each select="//vehicle_function">
      <tr>
        <td valign='top' style='width:200mm'>
          <p class="default_style">
            <a href="#{generate-id()}">
              <xsl:value-of select="display_name" />
              <xsl:if test="display_value"><xsl:text> - </xsl:text><xsl:value-of select="display_value" /></xsl:if>
            </a>
          </p>
        </td>
      </tr>
    </xsl:for-each>
  </table>
</xsl:template>

<!-- Template -->
<xsl:template name="display_routing_tables">
  <xsl:for-each select="gw_routing_table">
    <xsl:choose>
      <xsl:when test="ecu_id">
	    <xsl:variable name="ecuID" select="ecu_id"></xsl:variable>
        <table class="default_style">
          <tr>
            <td valign='top' style='width:105mm'>
			  <p class="default_style_ecu">
				<a name="{generate-id()}"><xsl:value-of select="$Text_Ecu"/><xsl:text>: </xsl:text></a>
				<xsl:value-of select="ecu_id" /><xsl:text> - </xsl:text>
				<xsl:value-of select="../../../communications/ecus/ecu[ecu_id=$ecuID]/ecu_name" />
			  </p>
            </td>
            <td class="align_opposite" valign='top' style='width:65mm;'>
              <p class="default_style_ecu">&#160;<xsl:for-each select="time_stamp"><xsl:call-template name="display_timestamp"><xsl:with-param name="date"><xsl:value-of select="." /></xsl:with-param></xsl:call-template></xsl:for-each></p>
            </td>
          </tr>
        </table>
        <table>
          <tr>
            <td valign='top' style='width:105mm'>
              <p class="default_style_bu_diagfunction">
                <a name="{generate-id()}">
                  <xsl:choose>
					<xsl:when test="gw_table/values/display_name='Coded'"><xsl:value-of select="$Text_CompList"/></xsl:when>
					<xsl:otherwise><xsl:value-of select="$Text_ContrUnitList"/></xsl:otherwise>
                  </xsl:choose>
                </a>
              </p>
            </td>
            <td class="align_opposite" valign='top' style='width=65mm;'>
              <p class="default_style_diagfunction">
				<xsl:for-each select="time_stamp"><xsl:call-template name="display_timestamp"><xsl:with-param name="date"><xsl:value-of select="." /></xsl:with-param></xsl:call-template><xsl:text> </xsl:text><a href="#inhalt"><xsl:value-of select="$Text_Top"/><xsl:text>^</xsl:text></a><br /></xsl:for-each>
              </p>
            </td>
          </tr>
          <tr> <!-- foxsven: Leere Zeile, da sonst sehr gedrungen. -->
            <td valign='top' style='width:105mm'>
              <xsl:text>&#160;</xsl:text>
            </td>
            <td class="align_opposite" valign='top' style='width=65mm;'></td>
          </tr>
        </table>
      </xsl:when>
      <xsl:otherwise>
        <table class="default_style">
          <tr>
            <td valign='top' style='width:105mm'>
		      <p class="default_style_ecu"><a name="{generate-id()}"><xsl:value-of select="$Text_ContrUnitList"/></a><xsl:value-of select="ecu_id" /></p>
            </td>
            <td class="align_opposite" valign='top' style='width:65mm;'>
              <p class="default_style_ecu">&#160;<xsl:for-each select="time_stamp"><xsl:call-template name="display_timestamp"><xsl:with-param name="date"><xsl:value-of select="." /></xsl:with-param></xsl:call-template></xsl:for-each></p>
            </td>
          </tr>
        </table>
      </xsl:otherwise>
    </xsl:choose>
    
    <table class="default_style">
      <tr>
        <td valign='top' style='width:90mm'>
          <p class="default_style_bu"><xsl:value-of select="gw_table[1]/values[1]/display_name" /></p>
        </td>
		<xsl:if test="not(gw_table[1]/values[2])"><td valign='top' style='width:20mm'><p class="default_style_bu"><xsl:value-of select="$Text_Dtc"/></p></td></xsl:if>
        <xsl:for-each select="gw_table[1]/values">
          <xsl:if test="position()>1">
            <xsl:choose>
		      <xsl:when test="display_name='Coded'"><td valign='top' style='width:20mm'><p class="default_style_bu"><xsl:value-of select="$Text_Coded"/></p></td></xsl:when>
		      <xsl:when test="display_name='Available'"><td valign='top' style='width:20mm'><p class="default_style_bu"><xsl:value-of select="$Text_Detected"/></p></td></xsl:when>
		      <xsl:when test="display_name='KD-Bit'"><td valign='top' style='width:20mm'><p class="default_style_bu"><xsl:value-of select="$Text_Dtc"/></p></td></xsl:when>
		      <xsl:when test="display_name='Node-ID'"><td valign='top' style='width:20mm'><p class="default_style_bu"><xsl:value-of select="$Text_NodeId"/></p></td></xsl:when>
		      <xsl:when test="display_name='GW-Info'"><td valign='top' style='width:40mm'><p class="default_style_bu"><xsl:value-of select="$Text_Bussystem"/></p></td></xsl:when>
		      <xsl:when test="display_name='Sleep-Bit'"><td valign='top' style='width:35mm'><p class="default_style_bu"><xsl:value-of select="$Text_SleepBit"/></p></td></xsl:when>
              <xsl:otherwise><td valign='top' style='width:35mm'><p class="default_style_bu"><xsl:value-of select="display_name" /></p></td></xsl:otherwise>
            </xsl:choose>
          </xsl:if>
        </xsl:for-each>
      </tr>
      <xsl:for-each select="gw_table">
        <tr>
          <xsl:for-each select="values">
            <td valign='top'>
              <xsl:if test="position()=1"><xsl:value-of select="../gw_id" /><xsl:text> - </xsl:text></xsl:if>
              <xsl:choose>
				<xsl:when test="display_value='true'"><xsl:value-of select="$Text_Yes"/></xsl:when>
				<xsl:when test="display_value='false'"><xsl:value-of select="$Text_No"/></xsl:when>
                <xsl:otherwise><xsl:value-of select="display_value" /></xsl:otherwise>
              </xsl:choose>
            </td>
          </xsl:for-each>
        </tr>	            	            
      </xsl:for-each>
    </table>
  </xsl:for-each>
</xsl:template>

<!-- Template to display -->
<xsl:template name="display_flash">
  <xsl:variable name="dn_session">FLASH_SESSION_NAME</xsl:variable>
  <xsl:variable name="dn_sequence_order_file">FLASH_SEQUENCE_ORDER_FILE</xsl:variable>
  <xsl:variable name="dn_session_result">FLASH_SESSION_RESULT</xsl:variable>
  <xsl:variable name="dn_duration">FLASH_SESSION_TIME_DURATION</xsl:variable>
  <xsl:variable name="dn_file_size">FLASH_FILE_SIZE</xsl:variable>
  <xsl:variable name="dn_changed_sequence_order">FLASH_CHANGED_SEQUENCE_ORDER</xsl:variable>

  <table class="default_style">
    <tr>
      <td valign='top' style='width:200mm'>
	      <p class="default_style_ecu"><xsl:value-of select="$Text_UpdProgramming_01"/></p>
      </td>
    </tr>
  </table>

  <xsl:for-each select="ecu">
    <xsl:call-template name="display_generic_ecu_info" />
    
	<!-- ############################################# -->
	<!-- ##             FLASH RESULTS               ## -->
	<!-- ############################################# -->
    <xsl:for-each select="ecu_master[@type='flash']|ecu_subsystem/subsystem[@type='flash']">
      <xsl:variable name="jobstatus"><xsl:value-of select="values[display_name=$dn_session_result]/display_value" /></xsl:variable>

      <!-- table 'Flash-Vorgang' which is basically the header of the flash comparison (Session, Ergebnis, Dauer, Dateigröße) -->
      <table cols="3">
        <tr>
          <td valign='top' style='width:200mm'>
            <table>
		      <tr><td colspan="2" valign='top' style='width:200mm'><p class="default_style_bu_diagfunction"><a name="{generate-id()}"><xsl:value-of select="$Text_FlashVorg"/></a></p></td><td class="align_opposite" valign='top' style='width:65mm;' rowspan="4"><p class="default_style_diagfunction"><xsl:for-each select="time_stamp"><xsl:call-template name="display_timestamp"><xsl:with-param name="date"><xsl:value-of select="." /></xsl:with-param></xsl:call-template></xsl:for-each></p></td></tr>
		      <tr><td valign='top' style='width:50mm'><p class="default_style"><xsl:value-of select="$Text_Session"/><xsl:text>:</xsl:text></p></td><td valign='top' style='width:150mm'><p class="default_style"><xsl:value-of select="values[display_name=$dn_session]/display_value" /></p></td></tr>
		      <!-- show json file if it exists for this EUC-->
			  <xsl:if test="values[display_name=$dn_sequence_order_file]/display_value != ''">
				<tr><td valign='top' style='width:50mm'><p class="default_style"><xsl:value-of select="$Text_JsonFile"/><xsl:text>:</xsl:text></p></td><td valign='top' style='width:150mm'><p class="default_style"><xsl:value-of select="values[display_name=$dn_sequence_order_file]/display_value" /></p></td></tr>
			  </xsl:if>
			  <tr>
			    <td valign='top'><p class="default_style"><xsl:value-of select="$Text_Result"/><xsl:text>:</xsl:text></p></td>
			    <td valign='top'>
                  <xsl:if test="$jobstatus='job completed successfully'"><p class="default_ok"><xsl:value-of select="values[display_name=$dn_session_result]/display_value" /></p></xsl:if>
                  <xsl:if test="not($jobstatus='job completed successfully')"><p class="default_error"><xsl:value-of select="values[display_name=$dn_session_result]/display_value" /></p></xsl:if>
                </td>
			  </tr>
	          <tr><td valign='top'><p class="default_style"><xsl:value-of select="$Text_Duration"/><xsl:text>:</xsl:text></p></td><td valign='top'><p class="default_style"><xsl:value-of select="values[display_name=$dn_duration]/display_value" /></p></td></tr>
	          <tr><td valign='top'><p class="default_style"><xsl:value-of select="$Text_FileSize"/><xsl:text>:</xsl:text></p></td><td valign='top'><p class="default_style"><xsl:value-of select="values[display_name=$dn_file_size]/display_value" /><xsl:text> </xsl:text><xsl:value-of select="$Text_Byte"/></p></td></tr>

		      <!-- CCB_DS_2248 -->
		      <xsl:if test="values[display_name=$dn_changed_sequence_order]/display_value != ''">
			    <tr>
				  <td valign='top'><p class="default_style"><xsl:value-of select="$Text_FlashHint"/><xsl:text>:</xsl:text></p></td>
				  <td valign='top'><p class="default_warn"><xsl:value-of select="$Text_FlashSequenceOrder"/><xsl:text> </xsl:text><xsl:value-of select="values[display_name=$dn_changed_sequence_order]/display_value" /></p></td>
			    </tr>
		      </xsl:if>	  
			</table>
          </td>
        </tr>
      </table>
	  
	  <!-- Smal horizontal space -->
      <p class="p_small"></p>
	  
	  <!-- The flash comparison table (Eigenschaft, Vor dem Update, Nach dem Update) -->
	  <table>
		<!-- Header texts -->
		<tr>
		  <td valign='top' style='width:50mm'><p class="default_style_b"><xsl:value-of select="$Text_Eigenschaft"/></p></td>
		  <td valign='top' style='width:60mm'><p class="default_style_b"><xsl:value-of select="$Text_BeforeFlash"/></p></td>
		  <td valign='top' style='width:60mm'><p class="default_style_b"><xsl:value-of select="$Text_AfterFlash"/></p></td>
		</tr>
		
		<!-- loop all values from before the flash ( before: <ecu_master type="flash">) and display them together with the value after the flashing-->
		<xsl:for-each select="preceding-sibling::*[1]">
		  <xsl:for-each select="values">
			<xsl:variable name="pos"><xsl:value-of select="position()" /></xsl:variable>
			<xsl:variable name="dn"><xsl:value-of select="display_name" /></xsl:variable>
			<!-- The row containing data from first level childeren (<values> directly under the <ecu_master type="flash_ident"> tag) -->
			<tr>
			  <td valign='top' style='width:50mm'>
			    <!-- Display the parameter bold if it has sub parameters -->
				<xsl:choose>
				  <xsl:when test="values">
					<p class="default_style_b"><xsl:value-of select="display_name" /></p>
				  </xsl:when>
				  <xsl:otherwise>
					<p class="default_style"><xsl:value-of select="display_name" /></p>
				  </xsl:otherwise>
				</xsl:choose>
			  </td>
			  <td valign='top' style='width:60mm'><p class="default_style"><xsl:value-of select="display_value" /></p></td>
			  <td valign='top' style='width:60mm'>
				<xsl:if test="not($jobstatus='flashing was aborted')">
				  <!-- search for the entry (before flash) the corresponding entry after the flashing -->
				  <xsl:for-each select="../following-sibling::*[1]">
					<p class="default_style">
					  <xsl:value-of select="following-sibling::*[1]/values[display_name=$dn]/display_value" />
					</p>
					<xsl:if test="$pos=1">
					  <xsl:if test="following-sibling::*[1][ti_name='NO_ECU_COMM']">
						<p class="default_error"><xsl:value-of select="following-sibling::*[1]/display_name" /></p>
					  </xsl:if>
					</xsl:if>
				  </xsl:for-each>
				</xsl:if>
			  </td>
			</tr>
			
			<!-- Display sub parameter (child <values>elements of the element that just got displayed) recursivly if thex exist -->
			<xsl:if test="values">
			  <tr>
				<td colspan='3'>
				  <!-- create new table with an extra column for an indent -->
				  <table>
					<xsl:for-each select="values">
					  <xsl:call-template name="display_children_before_and_after_flash_recursiv">
						<xsl:with-param name="recursion_depth">
						  <xsl:value-of select="1" />
						</xsl:with-param>
						<xsl:with-param name="dn">
						  <xsl:value-of select="$dn" />
						</xsl:with-param>
						<xsl:with-param name="prev_position">
						  <xsl:value-of select="1" />
						</xsl:with-param>
					  </xsl:call-template>
					</xsl:for-each>
				  </table>
				</td>
			  </tr>
			</xsl:if>
		  </xsl:for-each>      
		</xsl:for-each>

		<!-- Display all values that exist after the flashing, but not before. The other values (that existed before flashing) have already been displayed -->
		<xsl:if test="not($jobstatus='flashing was aborted')">
		  <xsl:for-each select="following-sibling::*[1]">
			<xsl:for-each select="values">
			  <xsl:variable name="dn"><xsl:value-of select="display_name" /></xsl:variable>
			  <xsl:variable name="vorhanden">
				<xsl:for-each select="../preceding-sibling::*[1]">
				  <xsl:value-of select="preceding-sibling::*[1]/values[display_name=$dn]/display_name" />
				</xsl:for-each>
			  </xsl:variable>
			  <xsl:if test="$vorhanden=''">
				<tr>
				  <td valign='top' style='width:50mm'>
					<!-- Display the parameter bold if it has sub parameters -->
					<xsl:choose>
					  <xsl:when test="values">
						<p class="default_style_b"><xsl:value-of select="display_name" /></p>
					  </xsl:when>
					  <xsl:otherwise>
						<p class="default_style"><xsl:value-of select="display_name" /></p>
					  </xsl:otherwise>
					</xsl:choose>
				  </td>
				  <td valign='top' style='width:60mm'><p class="default_style">&#160;</p></td>
				  <td valign='top' style='width:60mm'><p class="default_style"><xsl:value-of select="display_value" /></p></td>
				</tr>
				<!-- Display the values of this current element recursivly (only values after flash) -->
				<xsl:if test="values">
				  <tr>
					<td colspan='3'>
					  <!-- create new table with an extra column for an indent -->
					  <table>
						<xsl:for-each select="values">
						  <xsl:call-template name="display_children_after_flash_recursiv">
							<xsl:with-param name="recursion_depth">
							  <xsl:value-of select="1" />
							</xsl:with-param>
						  </xsl:call-template>
						</xsl:for-each>
					  </table>
					</td>
				  </tr>
				</xsl:if>
			  </xsl:if>
			</xsl:for-each>      
		  </xsl:for-each>
		</xsl:if>
	  </table>
    </xsl:for-each>
  </xsl:for-each>
</xsl:template>

<!-- Template to display sdg -->
<xsl:template name="display_sdg">
</xsl:template>

<!-- Template that compares datasets -->
<xsl:template name="comparison_dataset">
  <xsl:param name="label" />
  <xsl:param name="left_display_value" />
  <xsl:param name="right_display_value" />
	
  <tr>
	<xsl:variable name="format">compstyle<xsl:if test="not($left_display_value=$right_display_value)">not</xsl:if>equal</xsl:variable>
	<td valign="top" style="width:65mm">
	  <p class="default_style_b"><xsl:value-of select="$label" /></p>
	</td>
	<td valign="top" style="width:33mm">
	  <p class="{$format}"><xsl:value-of select="$left_display_value"/></p>
	</td>
	<td valign="top" style="width:32mm">
	  <p class="{$format}"><xsl:value-of select="$right_display_value"/></p>
	</td>
  </tr>
</xsl:template>

<!-- This template displays the flash parameter values (before and after flash) recursivly  -->
<xsl:template name="display_children_before_and_after_flash_recursiv">
  <!-- The current recursion depth that is used to find corresponding elements after the flashing depending on the depth the element must be found differently-->
  <xsl:param name="recursion_depth" />
  <!-- The display name the parent element for which to display the values recursivly -->
  <xsl:param name="dn" />
  <!-- The position of the parent element that is used to find the corresponding element for recursion depth 2-->
  <xsl:param name="prev_position" />

  <!-- the position of the element (compared to its direct siblings), needed in case multiple elements with the same display name exist (to find the corresponding element after the flashing) -->
  <xsl:variable name="position" select="count(preceding-sibling::*[display_name = display_name])"></xsl:variable>

  <tr>
	<td valign='top' style='width:{$recursion_depth * 2}mm'></td>
    <td valign='top' style='width:50mm'><p class="default_style"><xsl:value-of select="display_name" /></p></td>
    <td valign='top' style='width:60mm'><p class="default_style"><xsl:value-of select="display_value" /></p></td>
	<td valign='top' style='width:60mm'>
	  <!-- Find parameter after the flashig (with recursion depth 1) -->
	  <xsl:if test="$recursion_depth = 1">
	    <!-- Go two elements in the hirachie up (which is the <ecu_master type="flash_ident"> tag) -->
	    <!-- Then to the second following sibling (first is <ecu_master type="flash">, second is the flash_ident after the flashing) -->
	    <!-- Only consider values with a display name that equals the displayname of the parent element (for which the values are displayed recursivly) -->
	    <!-- Use the value on the correct position (in case many values with same name exist) -->
	    <xsl:for-each select="../../following-sibling::*[2]/values[display_name=$dn]/values[$position + 1]">
		  <p class="default_style">
		    <xsl:value-of select="display_value" />
		  </p>
        </xsl:for-each>
	  </xsl:if>  
			
	  <!-- Find parameter after the flashig (with recursion depth 2) -->
	  <xsl:if test="$recursion_depth = 2">
		<xsl:for-each select="../../../following-sibling::*[2]/values[display_name=$dn]/values/values[$position + 1]">
		  <p class="default_style">
			<xsl:value-of select="display_value" />
		  </p>
		</xsl:for-each>
	  </xsl:if> 

	  <!-- Find parameter after the flashig (with recursion depth 3) -->
	  <xsl:if test="$recursion_depth = 3">
		<xsl:variable name="index1" select="substring-before(substring-after($prev_position,';'),';')"></xsl:variable>
		<xsl:for-each select="../../../../following-sibling::*[2]/values[display_name=$dn]/values/values[$index1 + 1]/values[$position + 1]">
		  <p class="default_style">
			<xsl:value-of select="display_value" />
		  </p>
		</xsl:for-each>
	  </xsl:if> 

	  <!-- Find parameter after the flashig (with recursion depth 4) -->
	  <xsl:if test="$recursion_depth = 4">
		<xsl:variable name="index1" select="substring-before(substring-after($prev_position,';'),';')"></xsl:variable>
		<xsl:variable name="index2" select="substring-before(substring-after(substring-after($prev_position,';'),';'),';')"></xsl:variable>
		<xsl:for-each select="../../../../../following-sibling::*[2]/values[display_name=$dn]/values/values[$index1 + 1]/values[$index2 + 1]/values[$position + 1]">
		  <p class="default_style">
			<xsl:value-of select="display_value" />
		  </p>
		</xsl:for-each>
	  </xsl:if> 

	  <!-- Find parameter after the flashig (with recursion depth 5) -->
	  <xsl:if test="$recursion_depth = 5">
		<xsl:variable name="index1" select="substring-before(substring-after($prev_position,';'),';')"></xsl:variable>
		<xsl:variable name="index2" select="substring-before(substring-after(substring-after($prev_position,';'),';'),';')"></xsl:variable>
		<xsl:variable name="index3" select="substring-before(substring-after(substring-after(substring-after($prev_position,';'),';'),';'),';')"></xsl:variable>
		<xsl:for-each select="../../../../../../following-sibling::*[2]/values[display_name=$dn]/values/values[$index1 + 1]/values[$index2 + 1]/values[$index3 + 1]/values[$position + 1]">
		  <p class="default_style">
			<xsl:value-of select="display_value" />
		  </p>
		</xsl:for-each>
	  </xsl:if> 
	</td>
  </tr>

  <!-- Recursiv call for all the contained value elements of this currently processed value element (if maximal recursion depth is not reached yet)-->
  <xsl:if test="(count(values) &gt; 0) and ($recursion_depth &lt; 5)">
	<tr>
	  <td colspan='4'>
		<table>
		  <xsl:for-each select="values">
			<xsl:call-template name="display_children_before_and_after_flash_recursiv">
			  <xsl:with-param name="recursion_depth">
				<xsl:value-of select="$recursion_depth + 1"/>
			  </xsl:with-param>
			  <xsl:with-param name="dn">
				<xsl:value-of select="$dn"/>
			  </xsl:with-param>
			  <xsl:with-param name="prev_position">
				<xsl:value-of select="$position"/>
			  </xsl:with-param>
			</xsl:call-template>
		  </xsl:for-each>
		</table>
	  </td>
	</tr>
  </xsl:if> 
</xsl:template>

<!-- This template displays the flash parameter values (after flash, parent values did not exist before) recursivly  -->
<xsl:template name="display_children_after_flash_recursiv">
  <!-- The current recursion depth. Used to determine the correct indent-->
  <xsl:param name="recursion_depth" />
  <tr>
	<td valign='top' style='width:{$recursion_depth * 2}mm'></td>
    <td valign='top' style='width:50mm'><p class="default_style"><xsl:value-of select="display_name" /></p></td>
    <td valign='top' style='width:60mm'></td>
    <td valign='top' style='width:60mm'><p class="default_style"><xsl:value-of select="display_value" /></p></td>
  </tr>
  <!-- Recursiv call for all the contained value elements of this currently processed value element -->
  <xsl:if test="values">
	<tr>
	  <td colspan='4'>
		<table>
		  <xsl:for-each select="values">
			<xsl:call-template name="display_children_after_flash_recursiv">
			  <xsl:with-param name="recursion_depth">
				<xsl:value-of select="$recursion_depth + 1"/>
			  </xsl:with-param>
			</xsl:call-template>
		  </xsl:for-each>
		</table>
	  </td>
	</tr>
  </xsl:if> 
</xsl:template>

<!-- This template displays the SwaP status functions UDS data -->
<xsl:template name="display_swap_fod_status">
  <xsl:for-each select="swap_fod_status">
	<tr>
	  <td valign='top'>
  	    <p class="default_style_bu_diagfunction">
		  <a name="{generate-id()}"><xsl:value-of select="$Text_Master"/><xsl:text> - </xsl:text></a>
	      <xsl:value-of select="$Text_SwapFodStatus"/>
	    </p>
	  </td>
	  <td class="align_opposite" colspan='2'>
  	    <p class="default_style_diagfunction">
		  <a href="#inhalt">
            <xsl:value-of select="$Text_Top"/>
            <xsl:text>^</xsl:text>
          </a>
		</p>
	  </td>
	</tr>
	<tr>
	  <td valign='top' class="default_style_b">
		<xsl:value-of select="$Text_SwapPublicKey"/>
	  </td>
	  <td valign='top' colspan='2'>
		<xsl:value-of select="swap_public_key"/>
	  </td>
	</tr>
	<tr>
	</tr>
	<tr>
	  <td>
		<br></br>
	  </td>
	  <td valign='top' colspan='2'>
		<br></br>
	  </td>
	</tr>
	<tr>
	  <td class="border_cell">
        <b><xsl:value-of select="$Text_SwapUnlockedState"/></b>
      </td>
	  <td class="border_cell">
		<b><xsl:value-of select="$Text_SwapFsIds"/></b>
      </td>
	  <td class="border_cell">
		<b><xsl:value-of select="$Text_SwapStatusByte"/></b>
	  </td>
	</tr>
	<xsl:for-each select="swap_state_functions_uds">
	  <tr>
	    <td valign='middle' class="border_cell">
          <xsl:call-template name="display_swap_state" />
        </td>
		<td class="border_cell">
          <xsl:call-template name="display_swap_fs_id" />
        </td>
		<td class="border_cell">
          <xsl:call-template name="display_swap_status_byte" />
	    </td>
	  </tr>
	</xsl:for-each>
  </xsl:for-each>
</xsl:template>

<!-- This template displays the value for the enumeration SwapState -->
<xsl:template name="display_swap_state">
  <xsl:if test="swap_state='swap_state_unlocked'"><xsl:value-of select="$Text_SwapStateUnlocked"/></xsl:if>
  <xsl:if test="swap_state='swap_state_unlocked_inactive'"><xsl:value-of select="$Text_SwapStateUnlockedInactive"/></xsl:if>
  <xsl:if test="swap_state='swap_state_unlocked_expired'"><xsl:value-of select="$Text_SwapStateUnlockedExpired"/></xsl:if>
  <xsl:if test="swap_state='swap_state_unlocked_error'"><xsl:value-of select="$Text_SwapStateUnlockedError"/></xsl:if>
  <xsl:if test="swap_state='swap_state_not_unlocked'"><xsl:value-of select="$Text_SwapStateNotUnlocked"/></xsl:if>
  <xsl:if test="swap_state='swap_state_undefined'"><xsl:value-of select="$Text_SwapStateUndefined"/></xsl:if>
</xsl:template>

<!-- This template displays the values of all swap_state_function.function_sid of the current swap_state_functions_uds -->
<xsl:template name="display_swap_fs_id">
  <table class="small_table">
	<xsl:for-each select="swap_state_function">
	  <tr>
		<td>
		  <xsl:if test="not(position()=last())">
			<xsl:attribute name="class">border_bottom</xsl:attribute>
	      </xsl:if>
		  <xsl:value-of select="function_sid"/>
	    </td>
	  </tr>
	</xsl:for-each>
  </table>
</xsl:template>

<!-- This template displays the values of all swap_state_function.status_byte of the current swap_state_functions_uds -->
<xsl:template name="display_swap_status_byte">
  <table class="small_table">
	<xsl:for-each select="swap_state_function">
	  <tr>
		<td>
		  <xsl:if test="not(position()=last())">
			<xsl:attribute name="class">border_bottom</xsl:attribute>
	      </xsl:if>
		  <xsl:value-of select="status_byte"/>
	    </td>
	  </tr>
	</xsl:for-each>
  </table>
</xsl:template>

<!-- This template displays the values of a vehicle function status byte XML-values element -->
<xsl:template name="display_vehiclefunction_status_byte">
  <tr>
    <td valign='top' style='width:105mm' class="border_cell">
	  <xsl:for-each select="display_name">
	    <xsl:if test="../ti_name='vehicleFunctionStatusByte'">
	      <span class="default_style_b"><xsl:value-of select="." /></span>
		</xsl:if>
	    <xsl:if test="not(../ti_name='vehicleFunctionStatusByte')">
	      <span class="default_style">
		    <xsl:value-of select="." />
		  </span>
		  <xsl:text>: </xsl:text>
		</xsl:if>
	  </xsl:for-each>
	  <xsl:if test="not(display_name)">
	    <span class="default_style">
		  <xsl:text>---: </xsl:text>
		</span>
	  </xsl:if>
    </td>
    <td valign='top' style='width:65mm' class="border_cell">
	  <span class="default_style">
		<xsl:for-each select="display_value">
		  <xsl:value-of select="." />
        </xsl:for-each>
	  </span>
    </td>
  </tr>
  <xsl:for-each select="values">
    <xsl:call-template name="display_vehiclefunction_status_byte" />
  </xsl:for-each>
</xsl:template>

<!-- Template to mark a protocol expansion mechanism star -->
<xsl:template name="func_treeView_mark_start">
  <xsl:param name="id" select="generate-id(.)" />
  <input type="hidden" class="treeView" name="treeView_parse_start" id="start_marker_treeView_{translate($id, '&#x20;&#x9;&#xD;&#xA;', '')}" /> 
</xsl:template>
	
<!-- Template to mark an explicit expansion mechanism stop (otherwise the expansion stops based on the tag hierarchie)-->
<xsl:template name="func_treeView_stop">
  <input type="hidden" class="treeView" name="treeView_parse_stop" />
</xsl:template>

<!-- Template to create a lable for the expansion mechanism (to expand/collapse) -->	
<xsl:template name="func_treeView_label">
  <xsl:param name="id" select="generate-id(.)" />
  <xsl:param name="label" select="'Lorem Ipsum (tree node head)'" />
  <span class="treeView_header">
		<xsl:choose>
			<xsl:when test="$Prop_expand_tree_views = 'false'">
				<input type="checkbox" name="treeView_checkbox" onChange="javascript:showHideSectionsAfterCheckbox(this)" onClick="javascript:showHideSectionsAfterCheckbox(this)" class="treeView" id="treeView_{translate($id, '&#x20;&#x9;&#xD;&#xA;', '')}" />
				<label for="treeView_{translate($id, '&#x20;&#x9;&#xD;&#xA;', '')}" id="label_{translate($id, '&#x20;&#x9;&#xD;&#xA;', '')}" class="treeView"><span class="treeView_selector_item">+</span><span class="treeView_label_content"><xsl:copy-of select="$label" /></span></label>
			</xsl:when>
			<xsl:otherwise>
				<input type="checkbox" name="treeView_checkbox" onChange="javascript:showHideSectionsAfterCheckbox(this)" onClick="javascript:showHideSectionsAfterCheckbox(this)" class="treeView" id="treeView_{translate($id, '&#x20;&#x9;&#xD;&#xA;', '')}" checked="checked" />
				<label for="treeView_{translate($id, '&#x20;&#x9;&#xD;&#xA;', '')}" id="label_{translate($id, '&#x20;&#x9;&#xD;&#xA;', '')}" class="treeView"><span class="treeView_selector_item">-</span><span class="treeView_label_content"><xsl:copy-of select="$label" /></span></label>
			</xsl:otherwise>
		</xsl:choose>
  </span>
</xsl:template>	
</xsl:stylesheet>
