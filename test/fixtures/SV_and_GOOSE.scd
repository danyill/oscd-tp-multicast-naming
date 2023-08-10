<?xml version="1.0" encoding="UTF-8"?>
<SCL xmlns="http://www.iec.ch/61850/2003/SCL" version="2007" revision="B" release="4" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:siebase="http://www.siemens.com/energy/2009/09/siprotec5/SieBase" xmlns:IEC_60870_5_104="http://www.iec.ch/61850-80-1/2007/SCL" xmlns:eIEC61850-6-100="http://www.iec.ch/61850/2019/SCL/6-100" xmlns:siedig="http://www.siemens.com/energy/2011/11/Siedig">
	<Header id="SV_and_GOOSE"/>
	<Communication>
		<SubNetwork name="Default_subnet">
			<ConnectedAP iedName="SIEMENS_7UT85_001" apName="F" redProt="prp">
				<Address>
					<P xsi:type="tP_IP" type="IP">10.124.136.247</P>
					<P xsi:type="tP_IP-SUBNET" type="IP-SUBNET">255.255.255.0</P>
					<P xsi:type="tP_IP-GATEWAY" type="IP-GATEWAY">10.124.136.1</P>
					<P type="OSI-AP-Title">1,3,9999,23</P>
					<P type="OSI-AE-Qualifier">23</P>
					<P type="OSI-PSEL">00000001</P>
					<P type="OSI-SSEL">0001</P>
					<P type="OSI-TSEL">0001</P>
				</Address>
			</ConnectedAP>
			<ConnectedAP iedName="SIEMENS_6MU85_001" apName="F" redProt="prp">
				<Address>
					<P xsi:type="tP_IP" type="IP">10.124.136.253</P>
					<P xsi:type="tP_IP-SUBNET" type="IP-SUBNET">255.255.255.0</P>
					<P xsi:type="tP_IP-GATEWAY" type="IP-GATEWAY">10.124.136.1</P>
					<P type="OSI-AP-Title">1,3,9999,23</P>
					<P type="OSI-AE-Qualifier">23</P>
					<P type="OSI-PSEL">00000001</P>
					<P type="OSI-SSEL">0001</P>
					<P type="OSI-TSEL">0001</P>
				</Address>
				<GSE ldInst="CB" cbName="Ind_1">
					<Address>
						<P xsi:type="tP_VLAN-ID" type="VLAN-ID">3EE</P>
						<P xsi:type="tP_VLAN-PRIORITY" type="VLAN-PRIORITY">4</P>
						<P xsi:type="tP_MAC-Address" type="MAC-Address">01-0C-CD-01-01-00</P>
						<P xsi:type="tP_APPID" type="APPID">8FF7</P>
					</Address>
					<MinTime unit="s" multiplier="m">4</MinTime>
					<MaxTime unit="s" multiplier="m">1000</MaxTime>
				</GSE>
				<GSE ldInst="Prot" cbName="Customer_CBFail">
					<Address>
						<P xsi:type="tP_VLAN-ID" type="VLAN-ID">3EE</P>
						<P xsi:type="tP_VLAN-PRIORITY" type="VLAN-PRIORITY">4</P>
						<P xsi:type="tP_MAC-Address" type="MAC-Address">01-0C-CD-01-01-01</P>
						<P xsi:type="tP_APPID" type="APPID">0001</P>
					</Address>
					<MinTime unit="s" multiplier="m">1</MinTime>
					<MaxTime unit="s" multiplier="m">1000</MaxTime>
				</GSE>
				<GSE ldInst="Prot" cbName="Test">
					<Address>
						<P xsi:type="tP_VLAN-ID" type="VLAN-ID">3EE</P>
						<P xsi:type="tP_VLAN-PRIORITY" type="VLAN-PRIORITY">4</P>
						<P xsi:type="tP_MAC-Address" type="MAC-Address">01-0C-CD-01-01-02</P>
						<P xsi:type="tP_APPID" type="APPID">900B</P>
					</Address>
					<MinTime unit="s" multiplier="m">4</MinTime>
					<MaxTime unit="s" multiplier="m">1000</MaxTime>
				</GSE>
				<GSE ldInst="Prot_Mechanical" cbName="Ctl_1">
					<Address>
						<P xsi:type="tP_VLAN-ID" type="VLAN-ID">3EE</P>
						<P xsi:type="tP_VLAN-PRIORITY" type="VLAN-PRIORITY">4</P>
						<P xsi:type="tP_MAC-Address" type="MAC-Address">01-0C-CD-01-01-03</P>
						<P xsi:type="tP_APPID" type="APPID">0006</P>
					</Address>
					<MinTime unit="s" multiplier="m">1</MinTime>
					<MaxTime unit="s" multiplier="m">1000</MaxTime>
				</GSE>
				<SMV ldInst="PortF_MU1" cbName="MSVCB01">
					<Address>
						<P xsi:type="tP_VLAN-ID" type="VLAN-ID">3EF</P>
						<P xsi:type="tP_VLAN-PRIORITY" type="VLAN-PRIORITY">4</P>
						<P xsi:type="tP_MAC-Address" type="MAC-Address">01-0C-CD-04-01-00</P>
						<P xsi:type="tP_APPID" type="APPID">6000</P>
					</Address>
				</SMV>
			</ConnectedAP>
		</SubNetwork>
	</Communication>
	<IED desc="Tx_Prot" name="SIEMENS_7UT85_001" type="7UT85" manufacturer="SIEMENS" configVersion="V09.50.01" originalSclVersion="2007" originalSclRevision="B" originalSclRelease="4">
		<Private type="Siemens-s7ManagerName">Tx_Prot</Private>
		<Private type="Siemens-ICD-Language">en-US</Private>
		<Private type="Siemens-Siprotec5-Product-Code">7UT85-DAAA-AA0-0AAAA0-A20111-13121A-ABD000-000AC0-CC1BA1</Private>
		<Private type="Siemens-Siprotec5-Application-Template">7UT8x_2WindTransformer_Basic</Private>
		<Private type="Siemens-Siprotec5-Communication-Configuration-Version">95001</Private>
		<Private type="Siemens-Siprotec5-Configuration-Version">V09.50.01</Private>
		<Private type="HasDexFileAttached">G:\kingston\digital-substation\standard-packages\standard-package-files\7ut85-transformer-protection\v0_2\typicals\Siprotec_Tx_Prot.dex5</Private>
		<Private type="Siemens-IsSiprotec5IED"/>
		<Services nameLength="64">
			<ClientServices goose="true" gsse="false" bufReport="false" unbufReport="false" readLog="false" sv="true" supportsLdName="true" maxGOOSE="128" maxSMV="16" rGOOSE="false" rSV="false" noIctBinding="false">
				<TimeSyncProt sntp="true" c37_238="false" other="false" iec61850_9_3="true"/>
			</ClientServices>
			<DynAssociation max="6"/>
			<SettingGroups>
				<SGEdit resvTms="true"/>
			</SettingGroups>
			<GetDirectory/>
			<GetDataObjectDefinition/>
			<DataObjectDirectory/>
			<GetDataSetValue/>
			<DataSetDirectory/>
			<ConfDataSet max="50" maxAttributes="200" modify="true"/>
			<DynDataSet max="30" maxAttributes="60"/>
			<ReadWrite/>
			<ConfReportControl max="60" bufMode="both" bufConf="true"/>
			<GetCBValues/>
			<ReportSettings cbName="Conf" datSet="Dyn" rptID="Dyn" optFields="Dyn" bufTime="Dyn" trgOps="Dyn" intgPd="Dyn" resvTms="true"/>
			<GSESettings cbName="Conf" datSet="Conf" appID="Conf" dataLabel="Fix" kdaParticipant="false"/>
			<ConfLNs fixPrefix="false" fixLnInst="false"/>
			<ConfLdName/>
			<GOOSE max="16" fixedOffs="false" goose="true" rGOOSE="false"/>
			<FileHandling/>
			<SupSubscription maxGo="128" maxSv="60"/>
			<ValueHandling setToRO="false"/>
			<RedProt hsr="true" prp="true" rstp="true"/>
			<CommProt ipv6="false"/>
		</Services>
		<AccessPoint desc="Port F" name="F" router="false" clock="false">
			<Server timeout="0">
				<Private type="Siemens-MasterId">d2621d0a-c7c5-4990-bf3a-3cbd94d38c61</Private>
				<Authentication none="true"/>
				<LDevice desc="Application" inst="Application">
					<Private type="Siemens-MasterId">2a380453-67d0-4c1d-85c4-34818e119f7b</Private>
					<LN0 lnClass="LLN0" inst="" lnType="SIEMENS_7UT85_001SIPROTEC5_LNType_LLN0_Application" desc="General">
						<Private type="Siemens-MasterId">0f278955-5470-42e5-83ba-2ecf0155d3d7</Private>
						<ReportControl name="A_URCB" rptID="TEMPLATEApplication/LLN0$RP$A_URCB" confRev="1" buffered="false">
							<Private type="Siemens-Siprotec5-IsPredefined"/>
							<OptFields/>
						</ReportControl>
						<ReportControl name="A_URCB_1" rptID="TEMPLATEApplication/LLN0$RP$A_URCB_1" confRev="1" buffered="false">
							<Private type="Siemens-Siprotec5-IsPredefined"/>
							<OptFields/>
						</ReportControl>
						<ReportControl name="A_URCB_2" rptID="TEMPLATEApplication/LLN0$RP$A_URCB_2" confRev="1" buffered="false">
							<Private type="Siemens-Siprotec5-IsPredefined"/>
							<OptFields/>
						</ReportControl>
						<ReportControl name="A_URCB_3" rptID="TEMPLATEApplication/LLN0$RP$A_URCB_3" confRev="1" buffered="false">
							<Private type="Siemens-Siprotec5-IsPredefined"/>
							<OptFields/>
						</ReportControl>
						<ReportControl name="A_URCB_4" rptID="TEMPLATEApplication/LLN0$RP$A_URCB_4" confRev="1" buffered="false">
							<Private type="Siemens-Siprotec5-IsPredefined"/>
							<OptFields/>
						</ReportControl>
						<ReportControl name="A_URCB_5" rptID="TEMPLATEApplication/LLN0$RP$A_URCB_5" confRev="1" buffered="false">
							<Private type="Siemens-Siprotec5-IsPredefined"/>
							<OptFields/>
						</ReportControl>
						<ReportControl name="A_URCB_6" rptID="TEMPLATEApplication/LLN0$RP$A_URCB_6" confRev="1" buffered="false">
							<Private type="Siemens-Siprotec5-IsPredefined"/>
							<OptFields/>
						</ReportControl>
						<ReportControl name="A_URCB_7" rptID="TEMPLATEApplication/LLN0$RP$A_URCB_7" confRev="1" buffered="false">
							<Private type="Siemens-Siprotec5-IsPredefined"/>
							<OptFields/>
						</ReportControl>
						<ReportControl name="A_URCB_8" rptID="TEMPLATEApplication/LLN0$RP$A_URCB_8" confRev="1" buffered="false">
							<Private type="Siemens-Siprotec5-IsPredefined"/>
							<OptFields/>
						</ReportControl>
						<ReportControl name="A_URCB_9" rptID="TEMPLATEApplication/LLN0$RP$A_URCB_9" confRev="1" buffered="false">
							<Private type="Siemens-Siprotec5-IsPredefined"/>
							<OptFields/>
						</ReportControl>
						<ReportControl name="A_URCB_10" rptID="TEMPLATEApplication/LLN0$RP$A_URCB_10" confRev="1" buffered="false">
							<Private type="Siemens-Siprotec5-IsPredefined"/>
							<OptFields/>
						</ReportControl>
						<ReportControl name="A_URCB_11" rptID="TEMPLATEApplication/LLN0$RP$A_URCB_11" confRev="1" buffered="false">
							<Private type="Siemens-Siprotec5-IsPredefined"/>
							<OptFields/>
						</ReportControl>
						<ReportControl name="A_URCB_12" rptID="TEMPLATEApplication/LLN0$RP$A_URCB_12" confRev="1" buffered="false">
							<Private type="Siemens-Siprotec5-IsPredefined"/>
							<OptFields/>
						</ReportControl>
						<ReportControl name="A_URCB_13" rptID="TEMPLATEApplication/LLN0$RP$A_URCB_13" confRev="1" buffered="false">
							<Private type="Siemens-Siprotec5-IsPredefined"/>
							<OptFields/>
						</ReportControl>
						<ReportControl name="A_URCB_14" rptID="TEMPLATEApplication/LLN0$RP$A_URCB_14" confRev="1" buffered="false">
							<Private type="Siemens-Siprotec5-IsPredefined"/>
							<OptFields/>
						</ReportControl>
						<ReportControl name="A_URCB_15" rptID="TEMPLATEApplication/LLN0$RP$A_URCB_15" confRev="1" buffered="false">
							<Private type="Siemens-Siprotec5-IsPredefined"/>
							<OptFields/>
						</ReportControl>
						<ReportControl name="A_URCB_16" rptID="TEMPLATEApplication/LLN0$RP$A_URCB_16" confRev="1" buffered="false">
							<Private type="Siemens-Siprotec5-IsPredefined"/>
							<OptFields/>
						</ReportControl>
						<ReportControl name="A_URCB_17" rptID="TEMPLATEApplication/LLN0$RP$A_URCB_17" confRev="1" buffered="false">
							<Private type="Siemens-Siprotec5-IsPredefined"/>
							<OptFields/>
						</ReportControl>
						<ReportControl name="A_URCB_18" rptID="TEMPLATEApplication/LLN0$RP$A_URCB_18" confRev="1" buffered="false">
							<Private type="Siemens-Siprotec5-IsPredefined"/>
							<OptFields/>
						</ReportControl>
						<ReportControl name="A_URCB_19" rptID="TEMPLATEApplication/LLN0$RP$A_URCB_19" confRev="1" buffered="false">
							<Private type="Siemens-Siprotec5-IsPredefined"/>
							<OptFields/>
						</ReportControl>
						<ReportControl name="A_URCB_20" rptID="TEMPLATEApplication/LLN0$RP$A_URCB_20" confRev="1" buffered="false">
							<Private type="Siemens-Siprotec5-IsPredefined"/>
							<OptFields/>
						</ReportControl>
						<ReportControl name="A_URCB_21" rptID="TEMPLATEApplication/LLN0$RP$A_URCB_21" confRev="1" buffered="false">
							<Private type="Siemens-Siprotec5-IsPredefined"/>
							<OptFields/>
						</ReportControl>
						<ReportControl name="A_URCB_22" rptID="TEMPLATEApplication/LLN0$RP$A_URCB_22" confRev="1" buffered="false">
							<Private type="Siemens-Siprotec5-IsPredefined"/>
							<OptFields/>
						</ReportControl>
						<ReportControl name="A_URCB_23" rptID="TEMPLATEApplication/LLN0$RP$A_URCB_23" confRev="1" buffered="false">
							<Private type="Siemens-Siprotec5-IsPredefined"/>
							<OptFields/>
						</ReportControl>
						<ReportControl name="A_URCB_24" rptID="TEMPLATEApplication/LLN0$RP$A_URCB_24" confRev="1" buffered="false">
							<Private type="Siemens-Siprotec5-IsPredefined"/>
							<OptFields/>
						</ReportControl>
						<ReportControl name="A_URCB_25" rptID="TEMPLATEApplication/LLN0$RP$A_URCB_25" confRev="1" buffered="false">
							<Private type="Siemens-Siprotec5-IsPredefined"/>
							<OptFields/>
						</ReportControl>
						<ReportControl name="A_URCB_26" rptID="TEMPLATEApplication/LLN0$RP$A_URCB_26" confRev="1" buffered="false">
							<Private type="Siemens-Siprotec5-IsPredefined"/>
							<OptFields/>
						</ReportControl>
						<ReportControl name="A_URCB_27" rptID="TEMPLATEApplication/LLN0$RP$A_URCB_27" confRev="1" buffered="false">
							<Private type="Siemens-Siprotec5-IsPredefined"/>
							<OptFields/>
						</ReportControl>
						<ReportControl name="A_URCB_28" rptID="TEMPLATEApplication/LLN0$RP$A_URCB_28" confRev="1" buffered="false">
							<Private type="Siemens-Siprotec5-IsPredefined"/>
							<OptFields/>
						</ReportControl>
						<ReportControl name="A_URCB_29" rptID="TEMPLATEApplication/LLN0$RP$A_URCB_29" confRev="1" buffered="false">
							<Private type="Siemens-Siprotec5-IsPredefined"/>
							<OptFields/>
						</ReportControl>
						<DOI name="SGChoiceB1" desc="&gt;SG choice bit 1"/>
						<DOI name="SGChoiceB2" desc="&gt;SG choice bit 2"/>
						<DOI name="SGChoiceB3" desc="&gt;SG choice bit 3"/>
						<DOI name="LedTstStrt" desc="&gt;LED reset"/>
						<DOI name="FloOn" desc="&gt;Dev. funct.logout on"/>
						<DOI name="FloOff" desc="&gt;Dev. funct.logout off"/>
						<DOI name="LightOn" desc="&gt;Light on"/>
						<DOI name="BOBlocked" desc="&gt;Block relays"/>
						<DOI name="FloCmd" desc="Logged off via control"/>
						<DOI name="FloState" desc="Device logged off"/>
						<DOI name="Beh" desc="Behavior"/>
						<DOI name="Health" desc="Health (61850 only)"/>
						<DOI name="HealthDev" desc="Health"/>
						<DOI name="NamPlt" desc="Name plate">
							<DAI name="configRev">
								<Val>2023-06-08 08:36:18</Val>
							</DAI>
							<DAI name="ldNs">
								<Val>IEC 61850-7-4:2007B</Val>
							</DAI>
						</DOI>
						<DOI name="Inactive" desc="Protection inactive"/>
						<DOI name="LedTstOut" desc="LED have been reset"/>
						<DOI name="LocKey" desc="Sw.authority key/set">
							<DAI name="dataNs">
								<Val>IEC 61850-7-4:2007B</Val>
							</DAI>
						</DOI>
						<DOI name="SwAuth" desc="Switching authority"/>
						<DOI name="SwMod" desc="Switching mode"/>
						<DOI name="ActiveSG" desc="Active settings group"/>
						<DOI name="FunInTest" desc="Functions in Test mode"/>
						<DOI name="AcqBlkAct" desc="Acq.blocking active"/>
						<DOI name="SubstAct" desc="Manual update active"/>
						<DOI name="Mod" desc="Application mode"/>
						<DOI name="ProtOnOff" desc="Protection on"/>
						<DOI name="FnctLO" desc="Device logout"/>
						<DOI name="LocSta" desc="Switching auth. station">
							<DAI name="dataNs">
								<Val>IEC 61850-7-4:2007B</Val>
							</DAI>
						</DOI>
						<DOI name="SwAuthEna1" desc="Enable sw. auth. 1">
							<DAI name="operTimeout">
								<Val>1000</Val>
							</DAI>
						</DOI>
						<DOI name="SwAuthEna2" desc="Enable sw. auth. 2">
							<DAI name="operTimeout">
								<Val>1000</Val>
							</DAI>
						</DOI>
						<DOI name="SwAuthEna3" desc="Enable sw. auth. 3">
							<DAI name="operTimeout">
								<Val>1000</Val>
							</DAI>
						</DOI>
						<DOI name="SwAuthEna4" desc="Enable sw. auth. 4">
							<DAI name="operTimeout">
								<Val>1000</Val>
							</DAI>
						</DOI>
						<DOI name="SwAuthEna5" desc="Enable sw. auth. 5">
							<DAI name="operTimeout">
								<Val>1000</Val>
							</DAI>
						</DOI>
						<DOI name="LEDRs" desc="LED reset"/>
						<DOI name="MltLev" desc="Multiple sw.auth. levels">
							<DAI name="setVal">
								<Val>false</Val>
							</DAI>
							<DAI name="dataNs">
								<Val>IEC 61850-7-4:2007B</Val>
							</DAI>
						</DOI>
						<SettingControl numOfSGs="2" actSG="1">
							<Private type="Siemens-MasterId">0a61e58a-1eac-4a84-8ddd-1b9c4847c5dc</Private>
						</SettingControl>
					</LN0>
					<LN lnClass="LPHD" inst="0" lnType="SIPROTEC5_LNType_LPHD" desc="Device" prefix="">
						<Private type="Siemens-MasterId">dbd7ab62-9211-4634-adfa-2604adb7302d</Private>
						<DOI name="PhyNam" desc="Physical device name">
							<DAI name="vendor">
								<Val>SIEMENS</Val>
							</DAI>
							<DAI name="hwRev">
								<Val>7UT85-DAAA-AA0-0AAAA0-A20111-13121A-ABD000-000AC0-CC1BA1</Val>
							</DAI>
							<DAI name="swRev">
								<Val>V09.50</Val>
							</DAI>
							<DAI name="model">
								<Val>7UT85</Val>
							</DAI>
							<DAI name="d">
								<Val>SIEMENS SIPROTEC 5</Val>
							</DAI>
						</DOI>
						<DOI name="PhyHealth" desc="Physical health"/>
						<DOI name="Proxy" desc="Proxy"/>
						<DOI name="PwrUp" desc="Device startup"/>
						<DOI name="Sim" desc="GOOSE/SV sim.mode"/>
						<DOI name="OpTmh" desc="Device operating hours">
							<SDI name="units">
								<DAI name="SIUnit">
									<Val>h</Val>
								</DAI>
							</SDI>
						</DOI>
						<DOI name="NamPlt" desc="Name plate">
							<DAI name="configRev">
								<Val>2023-06-08 08:36:18</Val>
							</DAI>
						</DOI>
						<DOI name="GoStop" desc="&gt;GOOSE Stop"/>
						<DOI name="SvStop" desc="&gt;SV Stop"/>
						<DOI name="LifeCon" desc="Life contact"/>
						<DOI name="BatFail" desc="Battery failure"/>
						<DOI name="ClkFail" desc="Clock fail"/>
						<DOI name="ErrMeasT" desc="Error meas. trans."/>
						<DOI name="ErrComp" desc="Compensation error"/>
						<DOI name="ErrOffset" desc="Offset error"/>
						<DOI name="DigsiAct" desc="DIGSI active"/>
						<DOI name="SimuMode" desc="Simulation mode active"/>
						<DOI name="CommMode" desc="Commiss. mode active"/>
						<DOI name="ErrMemory" desc="Error memory"/>
						<DOI name="AuxPwrFail" desc="Auxiliary Power Fail"/>
						<DOI name="SeuHappened" desc="SEU happened"/>
						<DOI name="PSModFail" desc="Power sup. Module fail."/>
						<DOI name="PSModOK" desc="Power sup. Module OK"/>
						<DOI name="OsopNotCon" desc="OSOP not connected"/>
						<DOI name="PSAuxPwrFail" desc="Pow. sup. aux. pow. fail."/>
						<DOI name="PSAuxPwrOK" desc="Power sup.aux.pow.OK"/>
						<DOI name="PSModFailSps" desc="Power sup. Module fail."/>
						<DOI name="PSAuxFailSps" desc="Pow. sup. aux. pow. fail."/>
						<DOI name="Logon" desc="Cyber Security state"/>
						<DOI name="CybSecEvt" desc="Cyber-security event"/>
						<DOI name="MsgLost" desc="Event lost"/>
						<DOI name="ChtBlk" desc="Chatter blocking"/>
						<DOI name="FlshDskHth" desc="Flash disk health"/>
						<DOI name="PrcModIna" desc="Process mode inactive"/>
					</LN>
					<LN lnClass="CALH" inst="0" lnType="SIPROTEC5_LNType_CALH_Application" desc="Alarm handling" prefix="">
						<Private type="Siemens-MasterId">930edbcd-57dd-4906-a268-a922196e0c9a</Private>
						<DOI name="Mod" desc="Mode (controllable)"/>
						<DOI name="Beh" desc="Behavior"/>
						<DOI name="Health" desc="Health"/>
						<DOI name="NamPlt" desc="Name plate">
							<DAI name="configRev">
								<Val>2023-06-08 08:36:18</Val>
							</DAI>
						</DOI>
						<DOI name="GrAlm" desc="Group alarm"/>
						<DOI name="GrWrn" desc="Group warning"/>
						<DOI name="GrInd" desc="Group indication"/>
						<DOI name="GrIndIn" desc="&gt;Group indication"/>
						<DOI name="GrWrnIn" desc="&gt;Group Warning"/>
						<DOI name="GrAlmIn" desc="&gt;Group Alarm"/>
					</LN>
					<LN lnClass="LTIM" inst="0" lnType="SIPROTEC5_LNType_LTIM_Application" desc="Time managem." prefix="">
						<Private type="Siemens-MasterId">5282449e-1c5f-40b3-ac96-dcd9dcfb3dd3</Private>
						<DOI name="Mod" desc="Mode (status only)"/>
						<DOI name="Beh" desc="Behavior"/>
						<DOI name="Health" desc="Health"/>
						<DOI name="NamPlt" desc="Name plate">
							<DAI name="configRev">
								<Val>2023-06-08 08:36:18</Val>
							</DAI>
						</DOI>
						<DOI name="TmDT" desc="Daylight saving time"/>
						<DOI name="TmOfsTmm" desc="Time zone offset to UTC">
							<DAI name="setVal">
								<Val>720</Val>
							</DAI>
							<DAI name="minVal">
								<Val>-720</Val>
							</DAI>
							<DAI name="maxVal">
								<Val>840</Val>
							</DAI>
							<DAI name="stepSize">
								<Val>15</Val>
							</DAI>
							<SDI name="units">
								<DAI name="SIUnit">
									<Val>min</Val>
								</DAI>
							</SDI>
						</DOI>
						<DOI name="TmUseDT" desc="Switch daylight sav. time">
							<DAI name="setVal">
								<Val>true</Val>
							</DAI>
						</DOI>
						<DOI name="TmChgDT" desc="Start of daylight sav. time">
							<SDI name="setCal">
								<DAI name="occ">
									<Val>0</Val>
								</DAI>
								<DAI name="occType">
									<Val>WeekDay</Val>
								</DAI>
								<DAI name="occPer">
									<Val>Year</Val>
								</DAI>
								<DAI name="weekDay">
									<Val>Sunday</Val>
								</DAI>
								<DAI name="month">
									<Val>September</Val>
								</DAI>
								<DAI name="day">
									<Val>0</Val>
								</DAI>
								<DAI name="hr">
									<Val>2</Val>
								</DAI>
								<DAI name="mn">
									<Val>0</Val>
								</DAI>
							</SDI>
						</DOI>
						<DOI name="TmChgST" desc="End of daylight sav. time">
							<SDI name="setCal">
								<DAI name="occ">
									<Val>1</Val>
								</DAI>
								<DAI name="occType">
									<Val>WeekDay</Val>
								</DAI>
								<DAI name="occPer">
									<Val>Year</Val>
								</DAI>
								<DAI name="weekDay">
									<Val>Sunday</Val>
								</DAI>
								<DAI name="month">
									<Val>April</Val>
								</DAI>
								<DAI name="day">
									<Val>0</Val>
								</DAI>
								<DAI name="hr">
									<Val>3</Val>
								</DAI>
								<DAI name="mn">
									<Val>0</Val>
								</DAI>
							</SDI>
						</DOI>
						<DOI name="ClkSetMan" desc="Clock set manually"/>
					</LN>
					<LN lnClass="LTMS" inst="0" lnType="SIPROTEC5_LNType_LTMS_Application" desc="Time sync." prefix="">
						<Private type="Siemens-MasterId">a583bdd9-b6bb-48b3-b083-1811f51bf65b</Private>
						<DOI name="Mod" desc="Mode (status only)"/>
						<DOI name="Beh" desc="Behavior"/>
						<DOI name="Health" desc="Health"/>
						<DOI name="NamPlt" desc="Name plate">
							<DAI name="configRev">
								<Val>2023-06-08 08:36:18</Val>
							</DAI>
						</DOI>
						<DOI name="TmSrc" desc="Current time source"/>
						<DOI name="TmSrcTyp" desc="Type of clock source"/>
						<DOI name="TmChSt1" desc="Status time source 1"/>
						<DOI name="TmChSt2" desc="Status time source 2"/>
						<DOI name="TmSynErr" desc="Time sync. error"/>
						<DOI name="LeapSecond" desc="Leap second"/>
						<DOI name="Sync" desc="High accuracy"/>
					</LN>
					<LN lnClass="LTRK" inst="0" lnType="SIPROTEC5_LNType_LTRK_Application" desc="Service track." prefix="">
						<Private type="Siemens-MasterId">a88bdd35-daf1-4853-a10c-1ed948fd8b45</Private>
						<DOI name="Mod" desc="Mode (status only)"/>
						<DOI name="Beh" desc="Behavior"/>
						<DOI name="Health" desc="Health"/>
						<DOI name="NamPlt" desc="Name plate">
							<DAI name="configRev">
								<Val>2023-06-08 08:36:18</Val>
							</DAI>
						</DOI>
						<DOI name="GenTrk" desc="Common Tracking"/>
						<DOI name="SgcbTrk" desc="Settings grps. access"/>
					</LN>
					<LN lnClass="GAPC" inst="0" lnType="SIEMENS_7UT85_001SIPROTEC5_LNType_ResetLed" desc="LED not in FG" prefix="RSLED">
						<Private type="Siemens-MasterId">b6a6bea4-bcae-450c-a9b6-f397018de9b1</Private>
						<DOI name="Mod" desc="Mode (controllable)"/>
						<DOI name="Beh" desc="Behavior"/>
						<DOI name="Health" desc="Health"/>
						<DOI name="NamPlt" desc="Name plate">
							<DAI name="configRev">
								<Val>2023-06-08 08:36:18</Val>
							</DAI>
						</DOI>
						<DOI name="ResetIn" desc="&gt;LED reset"/>
						<DOI name="LedTstOut" desc="LED have been reset"/>
						<DOI name="ResetCtl" desc="Reset LEDs"/>
					</LN>
					<LN lnClass="GAPC" inst="1" lnType="SIEMENS_7UT85_001SIPROTEC5_LNType_USER_Universal" desc="SCADA Indications" prefix="SCADA_">
						<Private type="Siemens-MasterId">6ccd7932-ed4d-4d87-bc7a-3aad0c3314aa</Private>
						<DOI name="Mod" desc="Mode (controllable)"/>
						<DOI name="Beh" desc="Behavior"/>
						<DOI name="Health" desc="Health"/>
						<DOI name="NamPlt" desc="Name plate">
							<DAI name="configRev">
								<Val>2023-06-08 08:36:18</Val>
							</DAI>
							<DAI name="lnNs">
								<Val>Transpower:2023</Val>
							</DAI>
						</DOI>
						<DOI name="Trip" desc="Relay Trip">
							<DAI name="dataNs">
								<Val>Transpower:2023</Val>
							</DAI>
						</DOI>
						<DOI name="EF" desc="Earth Fault"/>
						<DOI name="PhRFlt" desc="Red Phase Fault">
							<DAI name="dataNs">
								<Val>Transpower:2023</Val>
							</DAI>
						</DOI>
						<DOI name="PhYFlt" desc="Yellow Phase Fault">
							<DAI name="dataNs">
								<Val>Transpower:2023</Val>
							</DAI>
						</DOI>
						<DOI name="PhBFlt" desc="Blue Phase Fault">
							<DAI name="dataNs">
								<Val>Transpower:2023</Val>
							</DAI>
						</DOI>
						<DOI name="CommTrip" desc="Commissioning Trip"/>
						<DOI name="NomSetGrpAct" desc="Norm Settings Group Act">
							<DAI name="dataNs">
								<Val>Transpower:2023</Val>
							</DAI>
						</DOI>
						<DOI name="ComSetGrpAct" desc="Comm Settings Group Act">
							<DAI name="dataNs">
								<Val>Transpower:2023</Val>
							</DAI>
						</DOI>
						<DOI name="BackupTrip" desc="Backup Prot Trip">
							<DAI name="dataNs">
								<Val>Transpower:2023</Val>
							</DAI>
						</DOI>
					</LN>
				</LDevice>
				<LDevice desc="Binary IO" inst="BinIO">
					<Private type="Siemens-MasterId">6c720c56-1ea0-454c-8c4b-d82e75f4628c</Private>
					<LN0 lnClass="LLN0" inst="" lnType="SIEMENS_7UT85_001SIPROTEC5_LNType_LLN0_LDevice_Generic" desc="BinIO/LLN0">
						<Private type="Siemens-MasterId">924f3a4f-e897-4721-aca0-a6e18b667c44</Private>
						<DOI name="Beh" desc="Behavior"/>
						<DOI name="Health" desc="Health"/>
						<DOI name="NamPlt" desc="Name plate">
							<DAI name="configRev">
								<Val>2023-01-12 02:02:23</Val>
							</DAI>
							<DAI name="ldNs">
								<Val>IEC 61850-7-4:2007B</Val>
							</DAI>
						</DOI>
						<DOI name="Mod" desc="Mode (controllable)"/>
						<DOI name="GrRef" desc="GrRef">
							<DAI name="setSrcRef">
								<Val>@Application</Val>
							</DAI>
						</DOI>
					</LN0>
				</LDevice>
				<LDevice desc="Binary IO_BI" inst="BinIO_BinaryInputs">
					<Private type="Siemens-MasterId">2582056a-b4f3-4002-a0e0-e2801a364a57</Private>
					<LN0 lnClass="LLN0" inst="" lnType="SIEMENS_7UT85_001SIPROTEC5_LNType_LLN0_LDevice_Generic" desc="BinIO_BinaryInputs/LLN0">
						<Private type="Siemens-MasterId">2f98967c-41f9-4378-8939-128b8b1a7567</Private>
						<DOI name="Beh" desc="Behavior"/>
						<DOI name="Health" desc="Health"/>
						<DOI name="NamPlt" desc="Name plate">
							<DAI name="configRev">
								<Val>2023-06-08 08:36:18</Val>
							</DAI>
							<DAI name="ldNs">
								<Val>IEC 61850-7-4:2007B</Val>
							</DAI>
						</DOI>
						<DOI name="Mod" desc="Mode (controllable)"/>
						<DOI name="GrRef" desc="GrRef">
							<DAI name="setSrcRef">
								<Val>@BinIO</Val>
							</DAI>
						</DOI>
					</LN0>
					<LN lnClass="LPDI" inst="1" lnType="SIPROTEC5_LNType_LPDI_BinaryInput" desc="Binary input  1.1" prefix="">
						<Private type="Siemens-MasterId">a91543f5-a506-45e3-97b3-3d1a8ec04416</Private>
						<DOI name="Mod" desc="Mode (status only)"/>
						<DOI name="Beh" desc="Behavior"/>
						<DOI name="Health" desc="Health"/>
						<DOI name="NamPlt" desc="Name plate">
							<DAI name="configRev">
								<Val>2023-06-08 08:36:18</Val>
							</DAI>
						</DOI>
						<DOI name="In" desc="Digital input"/>
					</LN>
					<LN lnClass="LPDI" inst="2" lnType="SIPROTEC5_LNType_LPDI_BinaryInput" desc="Binary input  1.2" prefix="">
						<Private type="Siemens-MasterId">c01fcc8c-ec2b-440b-b3f6-cc9e3ff323a9</Private>
						<DOI name="Mod" desc="Mode (status only)"/>
						<DOI name="Beh" desc="Behavior"/>
						<DOI name="Health" desc="Health"/>
						<DOI name="NamPlt" desc="Name plate">
							<DAI name="configRev">
								<Val>2023-06-08 08:36:18</Val>
							</DAI>
						</DOI>
						<DOI name="In" desc="Digital input"/>
					</LN>
					<LN lnClass="LPDI" inst="3" lnType="SIPROTEC5_LNType_LPDI_BinaryInput" desc="Binary input  1.3" prefix="">
						<Private type="Siemens-MasterId">25e167e9-8db3-48c8-a842-f1d7757af6d7</Private>
						<DOI name="Mod" desc="Mode (status only)"/>
						<DOI name="Beh" desc="Behavior"/>
						<DOI name="Health" desc="Health"/>
						<DOI name="NamPlt" desc="Name plate">
							<DAI name="configRev">
								<Val>2023-06-08 08:36:18</Val>
							</DAI>
						</DOI>
						<DOI name="In" desc="Digital input"/>
					</LN>
					<LN lnClass="LPDI" inst="4" lnType="SIPROTEC5_LNType_LPDI_BinaryInput" desc="Binary input  1.4" prefix="">
						<Private type="Siemens-MasterId">dd03f277-492e-41ad-944e-4a068f066b4f</Private>
						<DOI name="Mod" desc="Mode (status only)"/>
						<DOI name="Beh" desc="Behavior"/>
						<DOI name="Health" desc="Health"/>
						<DOI name="NamPlt" desc="Name plate">
							<DAI name="configRev">
								<Val>2023-06-08 08:36:18</Val>
							</DAI>
						</DOI>
						<DOI name="In" desc="Digital input"/>
					</LN>
					<LN lnClass="LPDI" inst="5" lnType="SIPROTEC5_LNType_LPDI_BinaryInput" desc="Binary input  2.1" prefix="">
						<Private type="Siemens-MasterId">77ae3b1f-f631-4810-8e95-fd175e45e52e</Private>
						<DOI name="Mod" desc="Mode (status only)"/>
						<DOI name="Beh" desc="Behavior"/>
						<DOI name="Health" desc="Health"/>
						<DOI name="NamPlt" desc="Name plate">
							<DAI name="configRev">
								<Val>2023-06-08 08:36:18</Val>
							</DAI>
						</DOI>
						<DOI name="In" desc="Digital input"/>
					</LN>
					<LN lnClass="LPDI" inst="6" lnType="SIPROTEC5_LNType_LPDI_BinaryInput" desc="Binary input  2.2" prefix="">
						<Private type="Siemens-MasterId">e3c3d86d-7100-4cbd-81a3-d2f829232787</Private>
						<DOI name="Mod" desc="Mode (status only)"/>
						<DOI name="Beh" desc="Behavior"/>
						<DOI name="Health" desc="Health"/>
						<DOI name="NamPlt" desc="Name plate">
							<DAI name="configRev">
								<Val>2023-06-08 08:36:18</Val>
							</DAI>
						</DOI>
						<DOI name="In" desc="Digital input"/>
					</LN>
					<LN lnClass="LPDI" inst="7" lnType="SIPROTEC5_LNType_LPDI_BinaryInput" desc="Binary input  2.3" prefix="">
						<Private type="Siemens-MasterId">13d6caf1-e2a1-4bfd-ba93-7c9c0c57bca0</Private>
						<DOI name="Mod" desc="Mode (status only)"/>
						<DOI name="Beh" desc="Behavior"/>
						<DOI name="Health" desc="Health"/>
						<DOI name="NamPlt" desc="Name plate">
							<DAI name="configRev">
								<Val>2023-06-08 08:36:18</Val>
							</DAI>
						</DOI>
						<DOI name="In" desc="Digital input"/>
					</LN>
				</LDevice>
				<LDevice desc="Binary IO_BO" inst="BinIO_BinaryOutputs">
					<Private type="Siemens-MasterId">59e6a884-5fd5-473d-86cc-689eddc6ec36</Private>
					<LN0 lnClass="LLN0" inst="" lnType="SIEMENS_7UT85_001SIPROTEC5_LNType_LLN0_LDevice_Generic" desc="BinIO_BinaryOutputs/LLN0">
						<Private type="Siemens-MasterId">13346326-b4fc-4a69-b074-5aabf8ae79be</Private>
						<DOI name="Beh" desc="Behavior"/>
						<DOI name="Health" desc="Health"/>
						<DOI name="NamPlt" desc="Name plate">
							<DAI name="configRev">
								<Val>2023-06-08 08:36:18</Val>
							</DAI>
							<DAI name="ldNs">
								<Val>IEC 61850-7-4:2007B</Val>
							</DAI>
						</DOI>
						<DOI name="Mod" desc="Mode (controllable)"/>
						<DOI name="GrRef" desc="GrRef">
							<DAI name="setSrcRef">
								<Val>@BinIO</Val>
							</DAI>
						</DOI>
					</LN0>
					<LN lnClass="LPDO" inst="1" lnType="SIPROTEC5_LNType_LPDO_BinaryOutput" desc="Binary output  1.1" prefix="">
						<Private type="Siemens-MasterId">90f9b4c7-e516-4b6d-97c9-368ee70f8230</Private>
						<DOI name="Mod" desc="Mode (status only)"/>
						<DOI name="Beh" desc="Behavior"/>
						<DOI name="Health" desc="Health"/>
						<DOI name="NamPlt" desc="Name plate">
							<DAI name="configRev">
								<Val>2023-06-08 08:36:18</Val>
							</DAI>
						</DOI>
						<DOI name="OutSPS" desc="Digital output"/>
					</LN>
					<LN lnClass="LPDO" inst="2" lnType="SIPROTEC5_LNType_LPDO_BinaryOutput" desc="Binary output  1.2" prefix="">
						<Private type="Siemens-MasterId">c2bbc516-8aec-4e99-92dc-76427abe0a84</Private>
						<DOI name="Mod" desc="Mode (status only)"/>
						<DOI name="Beh" desc="Behavior"/>
						<DOI name="Health" desc="Health"/>
						<DOI name="NamPlt" desc="Name plate">
							<DAI name="configRev">
								<Val>2023-06-08 08:36:18</Val>
							</DAI>
						</DOI>
						<DOI name="OutSPS" desc="Digital output"/>
					</LN>
					<LN lnClass="LPDO" inst="3" lnType="SIPROTEC5_LNType_LPDO_BinaryOutput" desc="Binary output  1.3" prefix="">
						<Private type="Siemens-MasterId">e51bdaa8-8322-4fe8-971d-882fbf4ef300</Private>
						<DOI name="Mod" desc="Mode (status only)"/>
						<DOI name="Beh" desc="Behavior"/>
						<DOI name="Health" desc="Health"/>
						<DOI name="NamPlt" desc="Name plate">
							<DAI name="configRev">
								<Val>2023-06-08 08:36:18</Val>
							</DAI>
						</DOI>
						<DOI name="OutSPS" desc="Digital output"/>
					</LN>
					<LN lnClass="LPDO" inst="4" lnType="SIPROTEC5_LNType_LPDO_BinaryOutput" desc="Binary output  1.4" prefix="">
						<Private type="Siemens-MasterId">6a752bf6-aa53-467c-ab40-ce3bfe2e565c</Private>
						<DOI name="Mod" desc="Mode (status only)"/>
						<DOI name="Beh" desc="Behavior"/>
						<DOI name="Health" desc="Health"/>
						<DOI name="NamPlt" desc="Name plate">
							<DAI name="configRev">
								<Val>2023-06-08 08:36:18</Val>
							</DAI>
						</DOI>
						<DOI name="OutSPS" desc="Digital output"/>
					</LN>
					<LN lnClass="LPDO" inst="5" lnType="SIPROTEC5_LNType_LPDO_BinaryOutput" desc="Binary output  2.1" prefix="">
						<Private type="Siemens-MasterId">166938d8-063a-4ab5-8ce8-b347483281ce</Private>
						<DOI name="Mod" desc="Mode (status only)"/>
						<DOI name="Beh" desc="Behavior"/>
						<DOI name="Health" desc="Health"/>
						<DOI name="NamPlt" desc="Name plate">
							<DAI name="configRev">
								<Val>2023-06-08 08:36:18</Val>
							</DAI>
						</DOI>
						<DOI name="OutSPS" desc="Digital output"/>
					</LN>
					<LN lnClass="LPDO" inst="6" lnType="SIPROTEC5_LNType_LPDO_BinaryOutput" desc="Binary output  2.2" prefix="">
						<Private type="Siemens-MasterId">1b64fa4a-761c-4800-8b81-b9926fb53b25</Private>
						<DOI name="Mod" desc="Mode (status only)"/>
						<DOI name="Beh" desc="Behavior"/>
						<DOI name="Health" desc="Health"/>
						<DOI name="NamPlt" desc="Name plate">
							<DAI name="configRev">
								<Val>2023-06-08 08:36:18</Val>
							</DAI>
						</DOI>
						<DOI name="OutSPS" desc="Digital output"/>
					</LN>
				</LDevice>
				<LDevice desc="Com. supervision" inst="ComSupervision">
					<Private type="Siemens-MasterId">d55857b0-c972-4514-8323-4f73a52e053a</Private>
					<LN0 lnClass="LLN0" inst="" lnType="SIEMENS_7UT85_001SIPROTEC5_LNType_LLN0_LDevice_Generic" desc="ComSupervision/LLN0">
						<Private type="Siemens-MasterId">32035aed-02c7-4779-a854-89db506ef066</Private>
						<DOI name="Beh" desc="Behavior"/>
						<DOI name="Health" desc="Health"/>
						<DOI name="NamPlt" desc="Name plate">
							<DAI name="configRev">
								<Val>2023-01-12 02:02:23</Val>
							</DAI>
							<DAI name="ldNs">
								<Val>IEC 61850-7-4:2007B</Val>
							</DAI>
						</DOI>
						<DOI name="Mod" desc="Mode (controllable)"/>
						<DOI name="GrRef" desc="GrRef">
							<DAI name="setSrcRef">
								<Val>@Application</Val>
							</DAI>
						</DOI>
					</LN0>
				</LDevice>
				<LDevice desc="Com. supervision_GOOSE supervis." inst="ComSupervision_GOOSE">
					<Private type="Siemens-MasterId">dea2d400-763d-4595-b490-2bf2564a2733</Private>
					<LN0 lnClass="LLN0" inst="" lnType="SIEMENS_7UT85_001SIPROTEC5_LNType_LLN0_LDevice_Generic" desc="ComSupervision_GOOSE/LLN0">
						<Private type="Siemens-MasterId">a53a3243-d719-4984-b64e-f8874711fa7f</Private>
						<DOI name="Beh" desc="Behavior"/>
						<DOI name="Health" desc="Health"/>
						<DOI name="NamPlt" desc="Name plate">
							<DAI name="configRev">
								<Val>2023-06-08 08:36:18</Val>
							</DAI>
							<DAI name="ldNs">
								<Val>IEC 61850-7-4:2007B</Val>
							</DAI>
						</DOI>
						<DOI name="Mod" desc="Mode (controllable)"/>
						<DOI name="GrRef" desc="GrRef">
							<DAI name="setSrcRef">
								<Val>@ComSupervision</Val>
							</DAI>
						</DOI>
					</LN0>
					<LN lnClass="CALH" inst="1" lnType="SIPROTEC5_LNType_CALH_LGOS" desc="Group Indicat." prefix="">
						<Private type="Siemens-MasterId">1c4f10fe-ce6a-496e-b187-c53a8efff49b</Private>
						<DOI name="Mod" desc="Mode (controllable)"/>
						<DOI name="Beh" desc="Behavior"/>
						<DOI name="Health" desc="Health"/>
						<DOI name="NamPlt" desc="Name plate">
							<DAI name="configRev">
								<Val>2023-06-08 08:36:18</Val>
							</DAI>
						</DOI>
						<DOI name="GrAlm" desc="Group alarm"/>
						<DOI name="GrInd" desc="Group indication"/>
					</LN>
					<LN lnClass="LGOS" inst="1" lnType="SIEMENS_7UT85_001SIPROTEC5_LNType_LGOS" desc="HV_MU_Ind" prefix="HV_">
						<Private type="Siemens-MasterId">e2ef9acd-453b-40eb-a417-c17af6a6a69e</Private>
						<DOI name="Mod" desc="Mode (controllable)"/>
						<DOI name="Beh" desc="Behavior"/>
						<DOI name="Health" desc="Health"/>
						<DOI name="NamPlt" desc="Name plate">
							<DAI name="configRev">
								<Val>2023-06-08 08:36:18</Val>
							</DAI>
						</DOI>
						<DOI name="NdsCom" desc="Needs commissioning"/>
						<DOI name="St" desc="Status subscription"/>
						<DOI name="SimSt" desc="Status Sim messages"/>
						<DOI name="ConfRevNum" desc="Exp. conf. rev."/>
						<DOI name="RxConfRevNum" desc="Rec. conf. rev."/>
						<DOI name="GoCBRef" desc="Ref. GOOSE CB"/>
						<DOI name="DiagErr" desc="Diagnosis error"/>
					</LN>
					<LN lnClass="LGOS" inst="1" lnType="SIEMENS_7UT85_001SIPROTEC5_LNType_LGOS" desc="LV_MU_Ind" prefix="LV_">
						<Private type="Siemens-MasterId">fed2eef7-23c0-4971-abde-476840187dc1</Private>
						<DOI name="Mod" desc="Mode (controllable)"/>
						<DOI name="Beh" desc="Behavior"/>
						<DOI name="Health" desc="Health"/>
						<DOI name="NamPlt" desc="Name plate">
							<DAI name="configRev">
								<Val>2023-06-08 08:36:18</Val>
							</DAI>
						</DOI>
						<DOI name="NdsCom" desc="Needs commissioning"/>
						<DOI name="St" desc="Status subscription"/>
						<DOI name="SimSt" desc="Status Sim messages"/>
						<DOI name="ConfRevNum" desc="Exp. conf. rev."/>
						<DOI name="RxConfRevNum" desc="Rec. conf. rev."/>
						<DOI name="GoCBRef" desc="Ref. GOOSE CB"/>
						<DOI name="DiagErr" desc="Diagnosis error"/>
					</LN>
					<LN lnClass="LGOS" inst="2" lnType="SIEMENS_7UT85_001SIPROTEC5_LNType_LGOS" desc="HV_MU_Trips" prefix="HV_">
						<Private type="Siemens-MasterId">519eae52-3f4b-4c3b-9441-98ebd278de44</Private>
						<DOI name="Mod" desc="Mode (controllable)"/>
						<DOI name="Beh" desc="Behavior"/>
						<DOI name="Health" desc="Health"/>
						<DOI name="NamPlt" desc="Name plate">
							<DAI name="configRev">
								<Val>2023-06-08 08:36:18</Val>
							</DAI>
						</DOI>
						<DOI name="NdsCom" desc="Needs commissioning"/>
						<DOI name="St" desc="Status subscription"/>
						<DOI name="SimSt" desc="Status Sim messages"/>
						<DOI name="ConfRevNum" desc="Exp. conf. rev."/>
						<DOI name="RxConfRevNum" desc="Rec. conf. rev."/>
						<DOI name="GoCBRef" desc="Ref. GOOSE CB"/>
						<DOI name="DiagErr" desc="Diagnosis error"/>
					</LN>
					<LN lnClass="LGOS" inst="1" lnType="SIEMENS_7UT85_001SIPROTEC5_LNType_LGOS" desc="HV_BZ" prefix="HVBZ_">
						<Private type="Siemens-MasterId">9ba3cd94-564b-4115-8167-f3a6b7805cc2</Private>
						<DOI name="Mod" desc="Mode (controllable)"/>
						<DOI name="Beh" desc="Behavior"/>
						<DOI name="Health" desc="Health"/>
						<DOI name="NamPlt" desc="Name plate">
							<DAI name="configRev">
								<Val>2023-06-08 08:36:18</Val>
							</DAI>
						</DOI>
						<DOI name="NdsCom" desc="Needs commissioning"/>
						<DOI name="St" desc="Status subscription"/>
						<DOI name="SimSt" desc="Status Sim messages"/>
						<DOI name="ConfRevNum" desc="Exp. conf. rev."/>
						<DOI name="RxConfRevNum" desc="Rec. conf. rev."/>
						<DOI name="GoCBRef" desc="Ref. GOOSE CB"/>
						<DOI name="DiagErr" desc="Diagnosis error"/>
					</LN>
					<LN lnClass="LGOS" inst="1" lnType="SIEMENS_7UT85_001SIPROTEC5_LNType_LGOS" desc="LV_BZ" prefix="LVBZ_">
						<Private type="Siemens-MasterId">c147fd3c-2c58-48ad-86b8-15be666698ab</Private>
						<DOI name="Mod" desc="Mode (controllable)"/>
						<DOI name="Beh" desc="Behavior"/>
						<DOI name="Health" desc="Health"/>
						<DOI name="NamPlt" desc="Name plate">
							<DAI name="configRev">
								<Val>2023-06-08 08:36:18</Val>
							</DAI>
						</DOI>
						<DOI name="NdsCom" desc="Needs commissioning"/>
						<DOI name="St" desc="Status subscription"/>
						<DOI name="SimSt" desc="Status Sim messages"/>
						<DOI name="ConfRevNum" desc="Exp. conf. rev."/>
						<DOI name="RxConfRevNum" desc="Rec. conf. rev."/>
						<DOI name="GoCBRef" desc="Ref. GOOSE CB"/>
						<DOI name="DiagErr" desc="Diagnosis error"/>
					</LN>
					<LN lnClass="LGOS" inst="1" lnType="SIEMENS_7UT85_001SIPROTEC5_LNType_LGOS" desc="Cooling_Controls" prefix="Cool_">
						<Private type="Siemens-MasterId">d4ddaf2a-5540-426c-afe4-90addc5f1bbd</Private>
						<DOI name="Mod" desc="Mode (controllable)"/>
						<DOI name="Beh" desc="Behavior"/>
						<DOI name="Health" desc="Health"/>
						<DOI name="NamPlt" desc="Name plate">
							<DAI name="configRev">
								<Val>2023-06-08 08:36:18</Val>
							</DAI>
						</DOI>
						<DOI name="NdsCom" desc="Needs commissioning"/>
						<DOI name="St" desc="Status subscription"/>
						<DOI name="SimSt" desc="Status Sim messages"/>
						<DOI name="ConfRevNum" desc="Exp. conf. rev."/>
						<DOI name="RxConfRevNum" desc="Rec. conf. rev."/>
						<DOI name="GoCBRef" desc="Ref. GOOSE CB"/>
						<DOI name="DiagErr" desc="Diagnosis error"/>
					</LN>
					<LN lnClass="LGOS" inst="1" lnType="SIEMENS_7UT85_001SIPROTEC5_LNType_LGOS" desc="VReg" prefix="VReg_">
						<Private type="Siemens-MasterId">13d0c1aa-c50f-4278-bea8-79bb3d1f9aa7</Private>
						<DOI name="Mod" desc="Mode (controllable)"/>
						<DOI name="Beh" desc="Behavior"/>
						<DOI name="Health" desc="Health"/>
						<DOI name="NamPlt" desc="Name plate">
							<DAI name="configRev">
								<Val>2023-06-08 08:36:18</Val>
							</DAI>
						</DOI>
						<DOI name="NdsCom" desc="Needs commissioning"/>
						<DOI name="St" desc="Status subscription"/>
						<DOI name="SimSt" desc="Status Sim messages"/>
						<DOI name="ConfRevNum" desc="Exp. conf. rev."/>
						<DOI name="RxConfRevNum" desc="Rec. conf. rev."/>
						<DOI name="GoCBRef" desc="Ref. GOOSE CB"/>
						<DOI name="DiagErr" desc="Diagnosis error"/>
					</LN>
				</LDevice>
				<LDevice desc="Com. supervision_SV supervision" inst="ComSupervision_SV">
					<Private type="Siemens-MasterId">912a6ef6-dfe5-4afd-9a93-879a20ff3912</Private>
					<LN0 lnClass="LLN0" inst="" lnType="SIEMENS_7UT85_001SIPROTEC5_LNType_LLN0_LDevice_Generic" desc="ComSupervision_SV/LLN0">
						<Private type="Siemens-MasterId">f2797146-e0fd-4aba-9d0c-de6df35b8581</Private>
						<DOI name="Beh" desc="Behavior"/>
						<DOI name="Health" desc="Health"/>
						<DOI name="NamPlt" desc="Name plate">
							<DAI name="configRev">
								<Val>2023-06-08 08:36:18</Val>
							</DAI>
							<DAI name="ldNs">
								<Val>IEC 61850-7-4:2007B</Val>
							</DAI>
						</DOI>
						<DOI name="Mod" desc="Mode (controllable)"/>
						<DOI name="GrRef" desc="GrRef">
							<DAI name="setSrcRef">
								<Val>@ComSupervision</Val>
							</DAI>
						</DOI>
					</LN0>
					<LN lnClass="CALH" inst="1" lnType="SIPROTEC5_LNType_CALH_LGOS" desc="Group Indicat." prefix="">
						<Private type="Siemens-MasterId">d826b003-6168-4b86-871e-0fde82989220</Private>
						<DOI name="Mod" desc="Mode (controllable)"/>
						<DOI name="Beh" desc="Behavior"/>
						<DOI name="Health" desc="Health"/>
						<DOI name="NamPlt" desc="Name plate">
							<DAI name="configRev">
								<Val>2023-06-08 08:36:18</Val>
							</DAI>
						</DOI>
						<DOI name="GrAlm" desc="Group alarm"/>
						<DOI name="GrInd" desc="Group indication"/>
					</LN>
					<LN lnClass="LSVS" inst="1" lnType="SIPROTEC5_LNType_LSVS" desc="HV_MU" prefix="HV_">
						<Private type="Siemens-MasterId">05c860d1-5990-44f7-95a2-6f56a39fe868</Private>
						<DOI name="Mod" desc="Mode (controllable)"/>
						<DOI name="Beh" desc="Behavior"/>
						<DOI name="Health" desc="Health"/>
						<DOI name="NamPlt" desc="Name plate">
							<DAI name="configRev">
								<Val>2023-06-08 08:36:18</Val>
							</DAI>
						</DOI>
						<DOI name="St" desc="Status subscription"/>
						<DOI name="SimSt" desc="Status Sim messages"/>
						<DOI name="ConfRevNum" desc="Exp. conf. rev."/>
						<DOI name="SvCBRef" desc="Ref. SV CB"/>
						<DOI name="SvId" desc="SV ID of sup. stream"/>
						<DOI name="DiagErrSmv" desc="Diagnosis error"/>
						<DOI name="DiagSynch" desc="Diagnosis sync."/>
						<DOI name="PubSynId" desc="Publisher SynchSrcId"/>
						<DOI name="SubSynId" desc="Subscriber SynchSrcId"/>
					</LN>
					<LN lnClass="LSVS" inst="1" lnType="SIPROTEC5_LNType_LSVS" desc="LV_MU" prefix="LV_">
						<Private type="Siemens-MasterId">6b86b4da-fac6-4f1d-80c2-5af07476f1d5</Private>
						<DOI name="Mod" desc="Mode (controllable)"/>
						<DOI name="Beh" desc="Behavior"/>
						<DOI name="Health" desc="Health"/>
						<DOI name="NamPlt" desc="Name plate">
							<DAI name="configRev">
								<Val>2023-06-08 08:36:18</Val>
							</DAI>
						</DOI>
						<DOI name="St" desc="Status subscription"/>
						<DOI name="SimSt" desc="Status Sim messages"/>
						<DOI name="ConfRevNum" desc="Exp. conf. rev."/>
						<DOI name="SvCBRef" desc="Ref. SV CB"/>
						<DOI name="SvId" desc="SV ID of sup. stream"/>
						<DOI name="DiagErrSmv" desc="Diagnosis error"/>
						<DOI name="DiagSynch" desc="Diagnosis sync."/>
						<DOI name="PubSynId" desc="Publisher SynchSrcId"/>
						<DOI name="SubSynId" desc="Subscriber SynchSrcId"/>
					</LN>
				</LDevice>
				<LDevice desc="Dif" inst="Dif">
					<Private type="Siemens-MasterId">8c5d9f00-6938-48fb-9112-120e87d21cd9</Private>
					<LN0 lnClass="LLN0" inst="" lnType="SIEMENS_7UT85_001SIPROTEC5_LNType_LLN0_LDevice_Generic" desc="Dif/LLN0">
						<Private type="Siemens-MasterId">5be5fd6f-ee23-4c33-a857-4327cf9720e2</Private>
						<DOI name="Beh" desc="Behavior"/>
						<DOI name="Health" desc="Health"/>
						<DOI name="NamPlt" desc="Name plate">
							<DAI name="configRev">
								<Val>2023-06-08 08:36:18</Val>
							</DAI>
							<DAI name="ldNs">
								<Val>IEC 61850-7-4:2007B</Val>
							</DAI>
						</DOI>
						<DOI name="Mod" desc="Mode (controllable)"/>
						<DOI name="GrRef" desc="GrRef">
							<DAI name="setSrcRef">
								<Val>@Application</Val>
							</DAI>
						</DOI>
					</LN0>
					<LN lnClass="PTRC" inst="1" lnType="SIPROTEC5_LNType_PTRC_FG_GABC_Without_DirRouting_Op_1_3pol" desc="Group indicat." prefix="">
						<Private type="Siemens-MasterId">7bc4101d-0a0b-40f7-aff0-a9ef244e8de8</Private>
						<DOI name="Mod" desc="Mode (controllable)"/>
						<DOI name="Beh" desc="Behavior"/>
						<DOI name="Health" desc="Health"/>
						<DOI name="NamPlt" desc="Name plate">
							<DAI name="configRev">
								<Val>2023-06-08 08:36:18</Val>
							</DAI>
						</DOI>
						<DOI name="Op" desc="Operate"/>
						<DOI name="Str" desc="Pickup"/>
					</LN>
					<LN lnClass="GAPC" inst="1" lnType="SIEMENS_7UT85_001SIPROTEC5_LNType_ResetLed" desc="Reset LED Group" prefix="RSLED">
						<Private type="Siemens-MasterId">ccefb2a3-5165-4f09-b893-e4fa907a6481</Private>
						<DOI name="Mod" desc="Mode (controllable)"/>
						<DOI name="Beh" desc="Behavior"/>
						<DOI name="Health" desc="Health"/>
						<DOI name="NamPlt" desc="Name plate">
							<DAI name="configRev">
								<Val>2023-06-08 08:36:18</Val>
							</DAI>
						</DOI>
						<DOI name="ResetIn" desc="&gt;LED reset"/>
						<DOI name="LedTstOut" desc="LED have been reset"/>
						<DOI name="ResetCtl" desc="Reset LEDs"/>
					</LN>
				</LDevice>
				<LDevice desc="Dif_Buch(Main)" inst="Dif_Buch_Main">
					<Private type="Siemens-MasterId">662eb102-e05e-4460-ae34-2de87ebb2ce1</Private>
					<LN0 lnClass="LLN0" inst="" lnType="SIEMENS_7UT85_001SIPROTEC5_LNType_LLN0_LDevice_Generic" desc="Dif_Buch_Main/LLN0">
						<Private type="Siemens-MasterId">bc366594-bc3b-47db-a447-948306c5a726</Private>
						<DOI name="Beh" desc="Behavior"/>
						<DOI name="Health" desc="Health"/>
						<DOI name="NamPlt" desc="Name plate">
							<DAI name="configRev">
								<Val>2023-06-08 08:36:18</Val>
							</DAI>
							<DAI name="ldNs">
								<Val>IEC 61850-7-4:2007B</Val>
							</DAI>
						</DOI>
						<DOI name="Mod" desc="Mode (controllable)"/>
						<DOI name="GrRef" desc="GrRef">
							<DAI name="setSrcRef">
								<Val>@Dif</Val>
							</DAI>
						</DOI>
					</LN0>
					<LN lnClass="PSCH" inst="1" lnType="SIPROTEC5_LNType_PSCH_ExtTrip" desc="Stage 1" prefix="EXT_">
						<Private type="Siemens-MasterId">b6db7443-1991-4eea-a277-544daeca6895</Private>
						<DOI name="Mod" desc="Mode (controllable)"/>
						<DOI name="Beh" desc="Behavior"/>
						<DOI name="Health" desc="Health"/>
						<DOI name="NamPlt" desc="Name plate">
							<DAI name="configRev">
								<Val>2023-06-08 08:36:18</Val>
							</DAI>
						</DOI>
						<DOI name="Str" desc="Pickup"/>
						<DOI name="Op" desc="Operate"/>
						<DOI name="Blk" desc="&gt;Block function"/>
						<DOI name="ExtIn" desc="&gt;External trip"/>
						<DOI name="Inactive" desc="Inactive"/>
						<DOI name="OpTmExp" desc="Operate delay expired"/>
						<DOI name="RxExtIn1" desc="RxExtIn1">
							<DAI name="dataNs">
								<Val>SIPROTEC5/userdefined</Val>
							</DAI>
						</DOI>
						<Inputs>
							<ExtRef desc="RxExtIn1" intAddr="RxExtIn1;/Ind/stVal" pServT="GOOSE" pDO="Ind" pDA="stVal"/>
							<ExtRef desc="RxExtIn1" intAddr="RxExtIn1;/Ind/q" pServT="GOOSE" pDO="Ind" pDA="q"/>
						</Inputs>
					</LN>
				</LDevice>
				<LDevice desc="Dif_Buch(TCh)" inst="Dif_Buch_TCh">
					<Private type="Siemens-MasterId">bc5d3233-331d-4e6d-893c-419d93dcf3aa</Private>
					<LN0 lnClass="LLN0" inst="" lnType="SIEMENS_7UT85_001SIPROTEC5_LNType_LLN0_LDevice_Generic" desc="Dif_Buch_TCh/LLN0">
						<Private type="Siemens-MasterId">cbb024b5-4e5e-4905-8e6f-e4ead6393a31</Private>
						<DOI name="Beh" desc="Behavior"/>
						<DOI name="Health" desc="Health"/>
						<DOI name="NamPlt" desc="Name plate">
							<DAI name="configRev">
								<Val>2023-06-08 08:36:18</Val>
							</DAI>
							<DAI name="ldNs">
								<Val>IEC 61850-7-4:2007B</Val>
							</DAI>
						</DOI>
						<DOI name="Mod" desc="Mode (controllable)"/>
						<DOI name="GrRef" desc="GrRef">
							<DAI name="setSrcRef">
								<Val>@Dif</Val>
							</DAI>
						</DOI>
					</LN0>
					<LN lnClass="PSCH" inst="1" lnType="SIPROTEC5_LNType_PSCH_ExtTrip" desc="Stage 1" prefix="EXT_">
						<Private type="Siemens-MasterId">31222f1e-df07-41ac-9947-fecae4ca8107</Private>
						<DOI name="Mod" desc="Mode (controllable)"/>
						<DOI name="Beh" desc="Behavior"/>
						<DOI name="Health" desc="Health"/>
						<DOI name="NamPlt" desc="Name plate">
							<DAI name="configRev">
								<Val>2023-06-08 08:36:18</Val>
							</DAI>
						</DOI>
						<DOI name="Str" desc="Pickup"/>
						<DOI name="Op" desc="Operate"/>
						<DOI name="Blk" desc="&gt;Block function"/>
						<DOI name="ExtIn" desc="&gt;External trip"/>
						<DOI name="Inactive" desc="Inactive"/>
						<DOI name="OpTmExp" desc="Operate delay expired"/>
						<DOI name="RxExtIn1" desc="RxExtIn1">
							<DAI name="dataNs">
								<Val>SIPROTEC5/userdefined</Val>
							</DAI>
						</DOI>
						<Inputs>
							<ExtRef desc="RxExtIn1" intAddr="RxExtIn1;/Ind/stVal" pServT="GOOSE" pDO="Ind" pDA="stVal"/>
							<ExtRef desc="RxExtIn1" intAddr="RxExtIn1;/Ind/q" pServT="GOOSE" pDO="Ind" pDA="q"/>
						</Inputs>
					</LN>
				</LDevice>
				<LDevice desc="Dif_Dif" inst="Dif_Dif">
					<Private type="Siemens-MasterId">6431164d-556c-45b7-ad91-d722e7b9dbac</Private>
					<LN0 lnClass="LLN0" inst="" lnType="SIEMENS_7UT85_001SIPROTEC5_LNType_LLN0_LDevice_Generic" desc="Dif_Dif/LLN0">
						<Private type="Siemens-MasterId">decf1f1f-e390-4497-a03c-ed73eb7fec73</Private>
						<DOI name="Beh" desc="Behavior"/>
						<DOI name="Health" desc="Health"/>
						<DOI name="NamPlt" desc="Name plate">
							<DAI name="configRev">
								<Val>2023-06-08 09:02:55</Val>
							</DAI>
							<DAI name="ldNs">
								<Val>IEC 61850-7-4:2007B</Val>
							</DAI>
						</DOI>
						<DOI name="Mod" desc="Mode (controllable)"/>
						<DOI name="GrRef" desc="GrRef">
							<DAI name="setSrcRef">
								<Val>@Dif</Val>
							</DAI>
						</DOI>
					</LN0>
					<LN lnClass="GAPC" inst="1" lnType="SIPROTEC5_LNType_GAPC_FB0_TDIFF" desc="General" prefix="S_">
						<Private type="Siemens-MasterId">19f795af-483c-47ab-9604-6d6f08a837d1</Private>
						<DOI name="Mod" desc="Mode (status only)"/>
						<DOI name="Beh" desc="Behavior"/>
						<DOI name="Health" desc="Health"/>
						<DOI name="NamPlt" desc="Name plate">
							<DAI name="configRev">
								<Val>2023-06-08 09:02:55</Val>
							</DAI>
						</DOI>
						<DOI name="DifAClc" desc="I diff.">
							<SDI name="phsA" desc="I diff.:A">
								<DAI name="db">
									<Val>10000</Val>
								</DAI>
							</SDI>
							<SDI name="phsB" desc="I diff.:B">
								<DAI name="db">
									<Val>10000</Val>
								</DAI>
							</SDI>
							<SDI name="phsC" desc="I diff.:C">
								<DAI name="db">
									<Val>10000</Val>
								</DAI>
							</SDI>
						</DOI>
						<DOI name="RstA" desc="I restr.">
							<SDI name="phsA" desc="I restr.:A">
								<DAI name="db">
									<Val>10000</Val>
								</DAI>
							</SDI>
							<SDI name="phsB" desc="I restr.:B">
								<DAI name="db">
									<Val>10000</Val>
								</DAI>
							</SDI>
							<SDI name="phsC" desc="I restr.:C">
								<DAI name="db">
									<Val>10000</Val>
								</DAI>
							</SDI>
						</DOI>
						<DOI name="DiffOpA" desc="I diff. operate phA"/>
						<DOI name="DiffOpB" desc="I diff. operate phB"/>
						<DOI name="DiffOpC" desc="I diff. operate phC"/>
						<DOI name="RestrOpA" desc="I restr. operate phA"/>
						<DOI name="RestrOpB" desc="I restr. operate phB"/>
						<DOI name="RestrOpC" desc="I restr. operate phC"/>
						<DOI name="AdAdjIna" desc="Adapt. adjustm. inact."/>
					</LN>
					<LN lnClass="PDIF" inst="1" lnType="SIPROTEC5_LNType_TDIFF_Restrained" desc="I-DIFF" prefix="TR_">
						<Private type="Siemens-MasterId">2287eb18-b15e-45f7-9e47-b63ce55def90</Private>
						<DOI name="Mod" desc="Mode (controllable)"/>
						<DOI name="Beh" desc="Behavior"/>
						<DOI name="Health" desc="Health"/>
						<DOI name="NamPlt" desc="Name plate">
							<DAI name="configRev">
								<Val>2023-06-08 09:02:55</Val>
							</DAI>
						</DOI>
						<DOI name="Str" desc="Pickup"/>
						<DOI name="Op" desc="Operate"/>
						<DOI name="Blk" desc="&gt;Block stage"/>
						<DOI name="Inactive" desc="Inactive"/>
						<DOI name="IrsBlk" desc="Blocked by inrush"/>
						<DOI name="Irs2HaDet" desc="Blocked by 2.Harmon."/>
						<DOI name="ICrsBlk2Ha" desc="Crossblock by 2.Harm."/>
						<DOI name="IrsCWADet" desc="Blocked by CWA"/>
						<DOI name="Irs3HaDet" desc="Blocked by 3.Harmon."/>
						<DOI name="ICrsBlk3Ha" desc="Crossblock by 3.Harm."/>
						<DOI name="Irs5HaDet" desc="Blocked by 5.Harmon."/>
						<DOI name="ICrsBlk5Ha" desc="Crossblock by 5.Harm."/>
						<DOI name="ExtFltStr" desc="Blocked by ext. fault"/>
						<DOI name="ExtCrsBlk" desc="Crossbl. by ext. fault"/>
						<DOI name="OpTmExp" desc="Operate delay expired"/>
						<DOI name="Slope1Val" desc="Slope 1"/>
						<DOI name="StartChrR" desc="Incr. of char. (Start)"/>
						<DOI name="DCChrR" desc="Increase of char. (DC)"/>
						<DOI name="CWAIntFlt" desc="CWA int. fault detected"/>
					</LN>
					<LN lnClass="PDIF" inst="1" lnType="SIPROTEC5_LNType_TDIFF_FastUnrestrained" desc="I-DIFF fast" prefix="TRF_">
						<Private type="Siemens-MasterId">dde7134f-8c4a-4d1f-a110-b50fba87a237</Private>
						<DOI name="Mod" desc="Mode (controllable)"/>
						<DOI name="Beh" desc="Behavior"/>
						<DOI name="Health" desc="Health"/>
						<DOI name="NamPlt" desc="Name plate">
							<DAI name="configRev">
								<Val>2023-06-08 09:02:55</Val>
							</DAI>
						</DOI>
						<DOI name="Str" desc="Pickup"/>
						<DOI name="Op" desc="Operate"/>
						<DOI name="Blk" desc="&gt;Block stage"/>
						<DOI name="Inactive" desc="Inactive"/>
						<DOI name="OpTmExp" desc="Operate delay expired"/>
					</LN>
					<LN lnClass="PTRC" inst="1" lnType="SIPROTEC5_LNType_PTRC_FG_GABC_Without_DirRouting_Op_1_3pol" desc="Group indicat." prefix="">
						<Private type="Siemens-MasterId">3807eb49-5436-4e29-8369-353935f61984</Private>
						<DOI name="Mod" desc="Mode (controllable)"/>
						<DOI name="Beh" desc="Behavior"/>
						<DOI name="Health" desc="Health"/>
						<DOI name="NamPlt" desc="Name plate">
							<DAI name="configRev">
								<Val>2023-06-08 09:02:55</Val>
							</DAI>
						</DOI>
						<DOI name="Op" desc="Operate"/>
						<DOI name="Str" desc="Pickup"/>
					</LN>
				</LDevice>
				<LDevice desc="Dif_PrRel(LS)" inst="Dif_PrRel_LS">
					<Private type="Siemens-MasterId">5a24fe1c-24f7-4fd6-af81-f712ba233b14</Private>
					<LN0 lnClass="LLN0" inst="" lnType="SIEMENS_7UT85_001SIPROTEC5_LNType_LLN0_LDevice_Generic" desc="Dif_PrRel_LS/LLN0">
						<Private type="Siemens-MasterId">6d1ce193-330d-448a-af29-41c9df88d7a1</Private>
						<DOI name="Beh" desc="Behavior"/>
						<DOI name="Health" desc="Health"/>
						<DOI name="NamPlt" desc="Name plate">
							<DAI name="configRev">
								<Val>2023-06-08 09:02:55</Val>
							</DAI>
							<DAI name="ldNs">
								<Val>IEC 61850-7-4:2007B</Val>
							</DAI>
						</DOI>
						<DOI name="Mod" desc="Mode (controllable)"/>
						<DOI name="GrRef" desc="GrRef">
							<DAI name="setSrcRef">
								<Val>@Dif</Val>
							</DAI>
						</DOI>
					</LN0>
					<LN lnClass="PSCH" inst="1" lnType="SIPROTEC5_LNType_PSCH_ExtTrip" desc="Stage 1" prefix="EXT_">
						<Private type="Siemens-MasterId">f7ace9c2-f91b-4b07-b983-638427da9051</Private>
						<DOI name="Mod" desc="Mode (controllable)"/>
						<DOI name="Beh" desc="Behavior"/>
						<DOI name="Health" desc="Health"/>
						<DOI name="NamPlt" desc="Name plate">
							<DAI name="configRev">
								<Val>2023-06-08 09:02:55</Val>
							</DAI>
						</DOI>
						<DOI name="Str" desc="Pickup"/>
						<DOI name="Op" desc="Operate"/>
						<DOI name="Blk" desc="&gt;Block function"/>
						<DOI name="ExtIn" desc="&gt;External trip"/>
						<DOI name="Inactive" desc="Inactive"/>
						<DOI name="OpTmExp" desc="Operate delay expired"/>
						<DOI name="RxExtIn1" desc="RxExtIn1">
							<DAI name="dataNs">
								<Val>SIPROTEC5/userdefined</Val>
							</DAI>
						</DOI>
						<Inputs>
							<ExtRef desc="RxExtIn1" intAddr="RxExtIn1;/Ind/stVal" pServT="GOOSE" pDO="Ind" pDA="stVal"/>
							<ExtRef desc="RxExtIn1" intAddr="RxExtIn1;/Ind/q" pServT="GOOSE" pDO="Ind" pDA="q"/>
						</Inputs>
					</LN>
				</LDevice>
				<LDevice desc="Dif_PrRel(Main)" inst="Dif_PrRel_Main">
					<Private type="Siemens-MasterId">b7f6106e-c6b6-4bb0-aa10-018eafb64ec5</Private>
					<LN0 lnClass="LLN0" inst="" lnType="SIEMENS_7UT85_001SIPROTEC5_LNType_LLN0_LDevice_Generic" desc="Dif_PrRel_Main/LLN0">
						<Private type="Siemens-MasterId">4c428a9c-3d76-4f04-8a82-46cf4dc2f21e</Private>
						<DOI name="Beh" desc="Behavior"/>
						<DOI name="Health" desc="Health"/>
						<DOI name="NamPlt" desc="Name plate">
							<DAI name="configRev">
								<Val>2023-06-08 09:02:55</Val>
							</DAI>
							<DAI name="ldNs">
								<Val>IEC 61850-7-4:2007B</Val>
							</DAI>
						</DOI>
						<DOI name="Mod" desc="Mode (controllable)"/>
						<DOI name="GrRef" desc="GrRef">
							<DAI name="setSrcRef">
								<Val>@Dif</Val>
							</DAI>
						</DOI>
					</LN0>
					<LN lnClass="PSCH" inst="1" lnType="SIPROTEC5_LNType_PSCH_ExtTrip" desc="Stage 1" prefix="EXT_">
						<Private type="Siemens-MasterId">6f16a452-410d-4a83-8701-9f8462abcd7c</Private>
						<DOI name="Mod" desc="Mode (controllable)"/>
						<DOI name="Beh" desc="Behavior"/>
						<DOI name="Health" desc="Health"/>
						<DOI name="NamPlt" desc="Name plate">
							<DAI name="configRev">
								<Val>2023-06-08 09:02:55</Val>
							</DAI>
						</DOI>
						<DOI name="Str" desc="Pickup"/>
						<DOI name="Op" desc="Operate"/>
						<DOI name="Blk" desc="&gt;Block function"/>
						<DOI name="ExtIn" desc="&gt;External trip"/>
						<DOI name="Inactive" desc="Inactive"/>
						<DOI name="OpTmExp" desc="Operate delay expired"/>
						<DOI name="RxExtIn1" desc="RxExtIn1">
							<DAI name="dataNs">
								<Val>SIPROTEC5/userdefined</Val>
							</DAI>
						</DOI>
						<Inputs>
							<ExtRef desc="RxExtIn1" intAddr="RxExtIn1;/Ind/stVal" pServT="GOOSE" pDO="Ind" pDA="stVal"/>
							<ExtRef desc="RxExtIn1" intAddr="RxExtIn1;/Ind/q" pServT="GOOSE" pDO="Ind" pDA="q"/>
						</Inputs>
					</LN>
				</LDevice>
				<LDevice desc="Dif_PrRel(TCh)" inst="Dif_PrRel_TCh">
					<Private type="Siemens-MasterId">3af4a5e9-3e48-47a7-96d7-c9b7c25fdd1b</Private>
					<LN0 lnClass="LLN0" inst="" lnType="SIEMENS_7UT85_001SIPROTEC5_LNType_LLN0_LDevice_Generic" desc="Dif_PrRel_TCh/LLN0">
						<Private type="Siemens-MasterId">2e9312ac-c4d5-42ab-a508-8691f5a974d0</Private>
						<DOI name="Beh" desc="Behavior"/>
						<DOI name="Health" desc="Health"/>
						<DOI name="NamPlt" desc="Name plate">
							<DAI name="configRev">
								<Val>2023-06-08 09:02:55</Val>
							</DAI>
							<DAI name="ldNs">
								<Val>IEC 61850-7-4:2007B</Val>
							</DAI>
						</DOI>
						<DOI name="Mod" desc="Mode (controllable)"/>
						<DOI name="GrRef" desc="GrRef">
							<DAI name="setSrcRef">
								<Val>@Dif</Val>
							</DAI>
						</DOI>
					</LN0>
					<LN lnClass="PSCH" inst="1" lnType="SIPROTEC5_LNType_PSCH_ExtTrip" desc="Stage 1" prefix="EXT_">
						<Private type="Siemens-MasterId">f66c474d-63fd-4d0c-bb20-afc1e900d33b</Private>
						<DOI name="Mod" desc="Mode (controllable)"/>
						<DOI name="Beh" desc="Behavior"/>
						<DOI name="Health" desc="Health"/>
						<DOI name="NamPlt" desc="Name plate">
							<DAI name="configRev">
								<Val>2023-06-08 09:02:55</Val>
							</DAI>
						</DOI>
						<DOI name="Str" desc="Pickup"/>
						<DOI name="Op" desc="Operate"/>
						<DOI name="Blk" desc="&gt;Block function"/>
						<DOI name="ExtIn" desc="&gt;External trip"/>
						<DOI name="Inactive" desc="Inactive"/>
						<DOI name="OpTmExp" desc="Operate delay expired"/>
						<DOI name="RxExtIn1" desc="RxExtIn1">
							<DAI name="dataNs">
								<Val>SIPROTEC5/userdefined</Val>
							</DAI>
						</DOI>
						<Inputs>
							<ExtRef desc="RxExtIn1" intAddr="RxExtIn1;/Ind/stVal" pServT="GOOSE" pDO="Ind" pDA="stVal"/>
							<ExtRef desc="RxExtIn1" intAddr="RxExtIn1;/Ind/q" pServT="GOOSE" pDO="Ind" pDA="q"/>
						</Inputs>
					</LN>
				</LDevice>
				<LDevice desc="Dif_Temp(Main)" inst="Dif_Temp_Main">
					<Private type="Siemens-MasterId">139cee23-0b8f-4f85-b63c-66467a5c62b3</Private>
					<LN0 lnClass="LLN0" inst="" lnType="SIEMENS_7UT85_001SIPROTEC5_LNType_LLN0_LDevice_Generic" desc="Dif_Temp_Main/LLN0">
						<Private type="Siemens-MasterId">84d36d96-a3de-4a06-b1af-5ef2ca882ccb</Private>
						<DOI name="Beh" desc="Behavior"/>
						<DOI name="Health" desc="Health"/>
						<DOI name="NamPlt" desc="Name plate">
							<DAI name="configRev">
								<Val>2023-06-08 08:36:18</Val>
							</DAI>
							<DAI name="ldNs">
								<Val>IEC 61850-7-4:2007B</Val>
							</DAI>
						</DOI>
						<DOI name="Mod" desc="Mode (controllable)"/>
						<DOI name="GrRef" desc="GrRef">
							<DAI name="setSrcRef">
								<Val>@Dif</Val>
							</DAI>
						</DOI>
					</LN0>
					<LN lnClass="PSCH" inst="1" lnType="SIPROTEC5_LNType_PSCH_ExtTrip" desc="Stage 1" prefix="EXT_">
						<Private type="Siemens-MasterId">30512fca-5ecb-4a7d-9d16-cfb2bae49d77</Private>
						<DOI name="Mod" desc="Mode (controllable)"/>
						<DOI name="Beh" desc="Behavior"/>
						<DOI name="Health" desc="Health"/>
						<DOI name="NamPlt" desc="Name plate">
							<DAI name="configRev">
								<Val>2023-06-08 08:36:18</Val>
							</DAI>
						</DOI>
						<DOI name="Str" desc="Pickup"/>
						<DOI name="Op" desc="Operate"/>
						<DOI name="Blk" desc="&gt;Block function"/>
						<DOI name="ExtIn" desc="&gt;External trip"/>
						<DOI name="Inactive" desc="Inactive"/>
						<DOI name="OpTmExp" desc="Operate delay expired"/>
						<DOI name="RxExtIn1" desc="RxExtIn1">
							<DAI name="dataNs">
								<Val>SIPROTEC5/userdefined</Val>
							</DAI>
						</DOI>
						<Inputs>
							<ExtRef desc="RxExtIn1" intAddr="RxExtIn1;/Ind/stVal" pServT="GOOSE" pDO="Ind" pDA="stVal"/>
							<ExtRef desc="RxExtIn1" intAddr="RxExtIn1;/Ind/q" pServT="GOOSE" pDO="Ind" pDA="q"/>
						</Inputs>
					</LN>
				</LDevice>
				<LDevice desc="DistLV" inst="DistLV">
					<Private type="Siemens-MasterId">c51c9132-5dde-4fcb-9d48-abba0b0bfe6e</Private>
					<LN0 lnClass="LLN0" inst="" lnType="SIEMENS_7UT85_001SIPROTEC5_LNType_LLN0_LDevice_Generic" desc="DistLV/LLN0">
						<Private type="Siemens-MasterId">086a1ad8-2800-45c4-981b-e0d33cf1f80d</Private>
						<DOI name="Beh" desc="Behavior"/>
						<DOI name="Health" desc="Health"/>
						<DOI name="NamPlt" desc="Name plate">
							<DAI name="configRev">
								<Val>2023-06-08 08:36:18</Val>
							</DAI>
							<DAI name="ldNs">
								<Val>IEC 61850-7-4:2007B</Val>
							</DAI>
						</DOI>
						<DOI name="Mod" desc="Mode (controllable)"/>
						<DOI name="GrRef" desc="GrRef">
							<DAI name="setSrcRef">
								<Val>@Application</Val>
							</DAI>
						</DOI>
					</LN0>
					<LN lnClass="ZLIN" inst="1" lnType="SIPROTEC5_LNType_ZLIN_FB0_FGLine" desc="General" prefix="">
						<Private type="Siemens-MasterId">fbdc45db-af40-4825-82c0-dad71a4f6ad4</Private>
						<DOI name="Mod" desc="Mode (controllable)"/>
						<DOI name="Beh" desc="Behavior"/>
						<DOI name="Health" desc="Health"/>
						<DOI name="NamPlt" desc="Name plate">
							<DAI name="configRev">
								<Val>2023-06-08 08:36:18</Val>
							</DAI>
						</DOI>
					</LN>
					<LN lnClass="PTRC" inst="1" lnType="SIEMENS_7UT85_001SIPROTEC5_LNType_PTRC_FG_Line_3ph" desc="Group indicat." prefix="">
						<Private type="Siemens-MasterId">3d09cb90-8f36-4462-8282-86cb32772005</Private>
						<DOI name="Mod" desc="Mode (controllable)"/>
						<DOI name="Beh" desc="Behavior"/>
						<DOI name="Health" desc="Health"/>
						<DOI name="NamPlt" desc="Name plate">
							<DAI name="configRev">
								<Val>2023-06-08 08:36:18</Val>
							</DAI>
						</DOI>
						<DOI name="Op" desc="Operate"/>
						<DOI name="Str" desc="Pickup"/>
					</LN>
					<LN lnClass="SBWI" inst="1" lnType="SIPROTEC5_LNType_SBWS_BW_confirm" desc="Brk.wire conf" prefix="CF_">
						<Private type="Siemens-MasterId">8a4203d9-b048-4ec7-954c-dc780f5f2230</Private>
						<DOI name="Mod" desc="Mode (controllable)"/>
						<DOI name="Beh" desc="Behavior"/>
						<DOI name="Health" desc="Health"/>
						<DOI name="NamPlt" desc="Name plate">
							<DAI name="configRev">
								<Val>2023-06-08 08:36:18</Val>
							</DAI>
						</DOI>
						<DOI name="Inactive" desc="Inactive"/>
					</LN>
					<LN lnClass="GAPC" inst="1" lnType="SIEMENS_7UT85_001SIPROTEC5_LNType_ResetLed" desc="Reset LED Group" prefix="RSLED">
						<Private type="Siemens-MasterId">5bb73a67-9e6f-4d2e-af87-a12ebc9b4064</Private>
						<DOI name="Mod" desc="Mode (controllable)"/>
						<DOI name="Beh" desc="Behavior"/>
						<DOI name="Health" desc="Health"/>
						<DOI name="NamPlt" desc="Name plate">
							<DAI name="configRev">
								<Val>2023-06-08 08:36:18</Val>
							</DAI>
						</DOI>
						<DOI name="ResetIn" desc="&gt;LED reset"/>
						<DOI name="LedTstOut" desc="LED have been reset"/>
						<DOI name="ResetCtl" desc="Reset LEDs"/>
					</LN>
				</LDevice>
				<LDevice desc="DistLV_DistLV" inst="DistLV_DistLV">
					<Private type="Siemens-MasterId">78399aea-6648-40e3-81de-8a9f1a224f72</Private>
					<LN0 lnClass="LLN0" inst="" lnType="SIEMENS_7UT85_001SIPROTEC5_LNType_LLN0_LDevice_Generic" desc="DistLV_DistLV/LLN0">
						<Private type="Siemens-MasterId">8882e060-fdde-442c-96e3-3db30989f673</Private>
						<DOI name="Beh" desc="Behavior"/>
						<DOI name="Health" desc="Health"/>
						<DOI name="NamPlt" desc="Name plate">
							<DAI name="configRev">
								<Val>2023-06-08 08:36:18</Val>
							</DAI>
							<DAI name="ldNs">
								<Val>IEC 61850-7-4:2007B</Val>
							</DAI>
						</DOI>
						<DOI name="Mod" desc="Mode (controllable)"/>
						<DOI name="GrRef" desc="GrRef">
							<DAI name="setSrcRef">
								<Val>@DistLV</Val>
							</DAI>
						</DOI>
					</LN0>
					<LN lnClass="GAPC" inst="1" lnType="SIPROTEC5_LNType_GAPC_FB0_DisGnd3pol" desc="General" prefix="">
						<Private type="Siemens-MasterId">004d66db-f07d-4981-8c6e-a15b4357f556</Private>
						<DOI name="Mod" desc="Mode (controllable)"/>
						<DOI name="Beh" desc="Behavior"/>
						<DOI name="Health" desc="Health"/>
						<DOI name="NamPlt" desc="Name plate">
							<DAI name="configRev">
								<Val>2023-06-08 08:36:18</Val>
							</DAI>
						</DOI>
						<DOI name="Blk" desc="&gt;Block function"/>
						<DOI name="Inactive" desc="Inactive"/>
						<DOI name="ZPhGnd" desc="Z ph-g">
							<SDI name="phsA" desc="Z ph-g:A">
								<SDI name="units">
									<DAI name="SIUnit">
										<Val>ohm</Val>
									</DAI>
								</SDI>
								<DAI name="db">
									<Val>10000</Val>
								</DAI>
								<DAI name="dbRef">
									<Val>15.7217722</Val>
								</DAI>
							</SDI>
							<SDI name="phsB" desc="Z ph-g:B">
								<SDI name="units">
									<DAI name="SIUnit">
										<Val>ohm</Val>
									</DAI>
								</SDI>
								<DAI name="db">
									<Val>10000</Val>
								</DAI>
								<DAI name="dbRef">
									<Val>15.7217722</Val>
								</DAI>
							</SDI>
							<SDI name="phsC" desc="Z ph-g:C">
								<SDI name="units">
									<DAI name="SIUnit">
										<Val>ohm</Val>
									</DAI>
								</SDI>
								<DAI name="db">
									<Val>10000</Val>
								</DAI>
								<DAI name="dbRef">
									<Val>15.7217722</Val>
								</DAI>
							</SDI>
						</DOI>
						<DOI name="ZPhPh" desc="Z ph-ph">
							<SDI name="phsAB" desc="Z ph-ph:AB">
								<SDI name="units">
									<DAI name="SIUnit">
										<Val>ohm</Val>
									</DAI>
								</SDI>
								<DAI name="db">
									<Val>10000</Val>
								</DAI>
								<DAI name="dbRef">
									<Val>15.7217722</Val>
								</DAI>
							</SDI>
							<SDI name="phsBC" desc="Z ph-ph:BC">
								<SDI name="units">
									<DAI name="SIUnit">
										<Val>ohm</Val>
									</DAI>
								</SDI>
								<DAI name="db">
									<Val>10000</Val>
								</DAI>
								<DAI name="dbRef">
									<Val>15.7217722</Val>
								</DAI>
							</SDI>
							<SDI name="phsCA" desc="Z ph-ph:CA">
								<SDI name="units">
									<DAI name="SIUnit">
										<Val>ohm</Val>
									</DAI>
								</SDI>
								<DAI name="db">
									<Val>10000</Val>
								</DAI>
								<DAI name="dbRef">
									<Val>15.7217722</Val>
								</DAI>
							</SDI>
						</DOI>
					</LN>
					<LN lnClass="PTRC" inst="1" lnType="SIPROTEC5_LNType_PTRC_AdvPTRCDis3pol" desc="Group indicat." prefix="DISA_">
						<Private type="Siemens-MasterId">f5583fda-48a5-4d0e-a6fb-65fb076c3b04</Private>
						<DOI name="Mod" desc="Mode (controllable)"/>
						<DOI name="Beh" desc="Behavior"/>
						<DOI name="Health" desc="Health"/>
						<DOI name="NamPlt" desc="Name plate">
							<DAI name="configRev">
								<Val>2023-06-08 08:36:18</Val>
							</DAI>
						</DOI>
						<DOI name="Op" desc="Operate"/>
						<DOI name="Str" desc="Pickup"/>
						<DOI name="SelLoopAG" desc="Selected loop AG"/>
						<DOI name="SelLoopBG" desc="Selected loop BG"/>
						<DOI name="SelLoopCG" desc="Selected loop CG"/>
						<DOI name="SelLoopAB" desc="Selected loop AB"/>
						<DOI name="SelLoopBC" desc="Selected loop BC"/>
						<DOI name="SelLoopCA" desc="Selected loop CA"/>
					</LN>
					<LN lnClass="GAPC" inst="1" lnType="SIPROTEC5_LNType_GAPC_DisImpedanceExcitation" desc="Pickup Z&lt;" prefix="PU_">
						<Private type="Siemens-MasterId">6fea7fd4-9892-4942-8706-8b26df7252bb</Private>
						<DOI name="Mod" desc="Mode (controllable)"/>
						<DOI name="Beh" desc="Behavior"/>
						<DOI name="Health" desc="Health"/>
						<DOI name="NamPlt" desc="Name plate">
							<DAI name="configRev">
								<Val>2023-06-08 08:36:18</Val>
							</DAI>
						</DOI>
					</LN>
					<LN lnClass="PDIS" inst="1" lnType="SIPROTEC5_LNType_PDIS_DisPolygonZone3pol" desc="Dist_Quad" prefix="QUAD_">
						<Private type="Siemens-MasterId">723a7905-d4c8-4360-a808-6d9ab8e07c02</Private>
						<DOI name="Mod" desc="Mode (controllable)"/>
						<DOI name="Beh" desc="Behavior"/>
						<DOI name="Health" desc="Health"/>
						<DOI name="NamPlt" desc="Name plate">
							<DAI name="configRev">
								<Val>2023-06-08 08:36:18</Val>
							</DAI>
						</DOI>
						<DOI name="Str" desc="Pickup"/>
						<DOI name="Op" desc="Operate"/>
						<DOI name="Blk" desc="&gt;Block stage"/>
						<DOI name="BlkPhsGnd" desc="&gt;Block ph-g loops"/>
						<DOI name="BlkPhsPhs" desc="&gt;Block ph-ph loops"/>
						<DOI name="Inactive" desc="Inactive"/>
						<DOI name="StrAG" desc="Pickup loop AG"/>
						<DOI name="StrBG" desc="Pickup loop BG"/>
						<DOI name="StrCG" desc="Pickup loop CG"/>
						<DOI name="StrAB" desc="Pickup loop AB"/>
						<DOI name="StrBC" desc="Pickup loop BC"/>
						<DOI name="StrCA" desc="Pickup loop CA"/>
						<DOI name="OpTmExp" desc="Operate delay expired"/>
					</LN>
					<LN lnClass="PDIS" inst="1" lnType="SIPROTEC5_LNType_PDIS_DisPolygonZone3pol" desc="DistLV_Mho" prefix="MHO_">
						<Private type="Siemens-MasterId">24548e65-e831-48d0-a9aa-94df97da3e33</Private>
						<DOI name="Mod" desc="Mode (controllable)"/>
						<DOI name="Beh" desc="Behavior"/>
						<DOI name="Health" desc="Health"/>
						<DOI name="NamPlt" desc="Name plate">
							<DAI name="configRev">
								<Val>2023-06-08 08:36:18</Val>
							</DAI>
						</DOI>
						<DOI name="Str" desc="Pickup"/>
						<DOI name="Op" desc="Operate"/>
						<DOI name="Blk" desc="&gt;Block stage"/>
						<DOI name="BlkPhsGnd" desc="&gt;Block ph-g loops"/>
						<DOI name="BlkPhsPhs" desc="&gt;Block ph-ph loops"/>
						<DOI name="Inactive" desc="Inactive"/>
						<DOI name="StrAG" desc="Pickup loop AG"/>
						<DOI name="StrBG" desc="Pickup loop BG"/>
						<DOI name="StrCG" desc="Pickup loop CG"/>
						<DOI name="StrAB" desc="Pickup loop AB"/>
						<DOI name="StrBC" desc="Pickup loop BC"/>
						<DOI name="StrCA" desc="Pickup loop CA"/>
						<DOI name="OpTmExp" desc="Operate delay expired"/>
					</LN>
				</LDevice>
				<LDevice desc="DistLV_Energ" inst="DistLV_Energy">
					<Private type="Siemens-MasterId">b09608d1-d55c-4fd0-9c17-2d475b814174</Private>
					<LN0 lnClass="LLN0" inst="" lnType="SIEMENS_7UT85_001SIPROTEC5_LNType_LLN0_LDevice_Generic" desc="DistLV_Energy/LLN0">
						<Private type="Siemens-MasterId">c2cc91cf-ed58-497d-9d92-a08d7d95901b</Private>
						<DOI name="Beh" desc="Behavior"/>
						<DOI name="Health" desc="Health"/>
						<DOI name="NamPlt" desc="Name plate">
							<DAI name="configRev">
								<Val>2023-06-08 08:36:18</Val>
							</DAI>
							<DAI name="ldNs">
								<Val>IEC 61850-7-4:2007B</Val>
							</DAI>
						</DOI>
						<DOI name="Mod" desc="Mode (controllable)"/>
						<DOI name="GrRef" desc="GrRef">
							<DAI name="setSrcRef">
								<Val>@DistLV</Val>
							</DAI>
						</DOI>
					</LN0>
					<LN lnClass="MMTR" inst="1" lnType="SIPROTEC5_LNType_MMTR_OpMeas_Energy_3ph" desc="Energy" prefix="XPRE_">
						<Private type="Siemens-MasterId">6f131c58-9f15-499a-a93d-138fb4e9d0f0</Private>
						<DOI name="Mod" desc="Mode (controllable)"/>
						<DOI name="Beh" desc="Behavior"/>
						<DOI name="Health" desc="Health"/>
						<DOI name="NamPlt" desc="Name plate">
							<DAI name="configRev">
								<Val>2023-06-08 08:36:18</Val>
							</DAI>
						</DOI>
						<DOI name="SupWh" desc="Wp+">
							<SDI name="units">
								<DAI name="SIUnit">
									<Val>Wh</Val>
								</DAI>
								<DAI name="multiplier">
									<Val>M</Val>
								</DAI>
							</SDI>
							<DAI name="pulsQty">
								<Val>0.001999566</Val>
							</DAI>
						</DOI>
						<DOI name="SupVArh" desc="Wq+">
							<SDI name="units">
								<DAI name="SIUnit">
									<Val>VArh</Val>
								</DAI>
								<DAI name="multiplier">
									<Val>M</Val>
								</DAI>
							</SDI>
							<DAI name="pulsQty">
								<Val>0.001999566</Val>
							</DAI>
						</DOI>
						<DOI name="DmdWh" desc="Wp-">
							<SDI name="units">
								<DAI name="SIUnit">
									<Val>Wh</Val>
								</DAI>
								<DAI name="multiplier">
									<Val>M</Val>
								</DAI>
							</SDI>
							<DAI name="pulsQty">
								<Val>0.001999566</Val>
							</DAI>
						</DOI>
						<DOI name="DmdVArh" desc="Wq-">
							<SDI name="units">
								<DAI name="SIUnit">
									<Val>VArh</Val>
								</DAI>
								<DAI name="multiplier">
									<Val>M</Val>
								</DAI>
							</SDI>
							<DAI name="pulsQty">
								<Val>0.001999566</Val>
							</DAI>
						</DOI>
						<DOI name="SetSupWh" desc="Set Wp+">
							<SDI name="SBOw">
								<SDI name="ctlVal">
									<DAI name="f"/>
								</SDI>
							</SDI>
							<SDI name="Oper">
								<SDI name="ctlVal">
									<DAI name="f"/>
								</SDI>
							</SDI>
							<SDI name="Cancel">
								<SDI name="ctlVal">
									<DAI name="f"/>
								</SDI>
							</SDI>
						</DOI>
						<DOI name="SetSupVArh" desc="Set Wq+">
							<SDI name="SBOw">
								<SDI name="ctlVal">
									<DAI name="f"/>
								</SDI>
							</SDI>
							<SDI name="Oper">
								<SDI name="ctlVal">
									<DAI name="f"/>
								</SDI>
							</SDI>
							<SDI name="Cancel">
								<SDI name="ctlVal">
									<DAI name="f"/>
								</SDI>
							</SDI>
						</DOI>
						<DOI name="SetDmdWh" desc="Set Wp-">
							<SDI name="SBOw">
								<SDI name="ctlVal">
									<DAI name="f"/>
								</SDI>
							</SDI>
							<SDI name="Oper">
								<SDI name="ctlVal">
									<DAI name="f"/>
								</SDI>
							</SDI>
							<SDI name="Cancel">
								<SDI name="ctlVal">
									<DAI name="f"/>
								</SDI>
							</SDI>
						</DOI>
						<DOI name="SetDmdVArh" desc="Set Wq-">
							<SDI name="SBOw">
								<SDI name="ctlVal">
									<DAI name="f"/>
								</SDI>
							</SDI>
							<SDI name="Oper">
								<SDI name="ctlVal">
									<DAI name="f"/>
								</SDI>
							</SDI>
							<SDI name="Cancel">
								<SDI name="ctlVal">
									<DAI name="f"/>
								</SDI>
							</SDI>
						</DOI>
					</LN>
				</LDevice>
				<LDevice desc="DistLV_FdSym" inst="DistLV_FundSymComp">
					<Private type="Siemens-MasterId">452e43b3-2623-4f56-a548-992bc934024e</Private>
					<LN0 lnClass="LLN0" inst="" lnType="SIEMENS_7UT85_001SIPROTEC5_LNType_LLN0_LDevice_Generic" desc="DistLV_FundSymComp/LLN0">
						<Private type="Siemens-MasterId">2e88bc6c-1f65-47d7-a1eb-a6f6bebc541c</Private>
						<DOI name="Beh" desc="Behavior"/>
						<DOI name="Health" desc="Health"/>
						<DOI name="NamPlt" desc="Name plate">
							<DAI name="configRev">
								<Val>2023-06-08 08:36:18</Val>
							</DAI>
							<DAI name="ldNs">
								<Val>IEC 61850-7-4:2007B</Val>
							</DAI>
						</DOI>
						<DOI name="Mod" desc="Mode (controllable)"/>
						<DOI name="GrRef" desc="GrRef">
							<DAI name="setSrcRef">
								<Val>@DistLV</Val>
							</DAI>
						</DOI>
					</LN0>
					<LN lnClass="MMXU" inst="1" lnType="SIPROTEC5_LNType_MMXU_OpMeas_Fund_3ph_Pres" desc="Fundam" prefix="FPRE_">
						<Private type="Siemens-MasterId">8b66dad8-8252-4d18-8fa5-9a8842fd1eda</Private>
						<DOI name="Mod" desc="Mode (controllable)"/>
						<DOI name="Beh" desc="Behavior"/>
						<DOI name="Health" desc="Health"/>
						<DOI name="NamPlt" desc="Name plate">
							<DAI name="configRev">
								<Val>2023-06-08 08:36:18</Val>
							</DAI>
						</DOI>
						<DOI name="PPV" desc="Vpp">
							<SDI name="phsAB" desc="Vpp:AB">
								<SDI name="units">
									<DAI name="SIUnit">
										<Val>V</Val>
									</DAI>
									<DAI name="multiplier">
										<Val>k</Val>
									</DAI>
								</SDI>
								<DAI name="db">
									<Val>2000</Val>
								</DAI>
								<DAI name="dbRef">
									<Val>33</Val>
								</DAI>
							</SDI>
							<SDI name="phsBC" desc="Vpp:BC">
								<SDI name="units">
									<DAI name="SIUnit">
										<Val>V</Val>
									</DAI>
									<DAI name="multiplier">
										<Val>k</Val>
									</DAI>
								</SDI>
								<DAI name="db">
									<Val>2000</Val>
								</DAI>
								<DAI name="dbRef">
									<Val>33</Val>
								</DAI>
							</SDI>
							<SDI name="phsCA" desc="Vpp:CA">
								<SDI name="units">
									<DAI name="SIUnit">
										<Val>V</Val>
									</DAI>
									<DAI name="multiplier">
										<Val>k</Val>
									</DAI>
								</SDI>
								<DAI name="db">
									<Val>2000</Val>
								</DAI>
								<DAI name="dbRef">
									<Val>33</Val>
								</DAI>
							</SDI>
						</DOI>
						<DOI name="PhV" desc="Vph">
							<SDI name="phsA" desc="Vph:A">
								<SDI name="units">
									<DAI name="SIUnit">
										<Val>V</Val>
									</DAI>
									<DAI name="multiplier">
										<Val>k</Val>
									</DAI>
								</SDI>
								<DAI name="db">
									<Val>2000</Val>
								</DAI>
								<DAI name="dbRef">
									<Val>19.0531178</Val>
								</DAI>
							</SDI>
							<SDI name="phsB" desc="Vph:B">
								<SDI name="units">
									<DAI name="SIUnit">
										<Val>V</Val>
									</DAI>
									<DAI name="multiplier">
										<Val>k</Val>
									</DAI>
								</SDI>
								<DAI name="db">
									<Val>2000</Val>
								</DAI>
								<DAI name="dbRef">
									<Val>19.0531178</Val>
								</DAI>
							</SDI>
							<SDI name="phsC" desc="Vph:C">
								<SDI name="units">
									<DAI name="SIUnit">
										<Val>V</Val>
									</DAI>
									<DAI name="multiplier">
										<Val>k</Val>
									</DAI>
								</SDI>
								<DAI name="db">
									<Val>2000</Val>
								</DAI>
								<DAI name="dbRef">
									<Val>19.0531178</Val>
								</DAI>
							</SDI>
							<SDI name="res" desc="Vph:res">
								<SDI name="units">
									<DAI name="SIUnit">
										<Val>V</Val>
									</DAI>
								</SDI>
								<DAI name="db">
									<Val>20000</Val>
								</DAI>
								<DAI name="dbRef">
									<Val>19.0531178</Val>
								</DAI>
							</SDI>
						</DOI>
						<DOI name="A" desc="Iph">
							<SDI name="phsA" desc="Iph:A">
								<SDI name="units">
									<DAI name="SIUnit">
										<Val>A</Val>
									</DAI>
								</SDI>
								<DAI name="db">
									<Val>10000</Val>
								</DAI>
								<DAI name="dbRef">
									<Val>2099</Val>
								</DAI>
							</SDI>
							<SDI name="phsB" desc="Iph:B">
								<SDI name="units">
									<DAI name="SIUnit">
										<Val>A</Val>
									</DAI>
								</SDI>
								<DAI name="db">
									<Val>10000</Val>
								</DAI>
								<DAI name="dbRef">
									<Val>2099</Val>
								</DAI>
							</SDI>
							<SDI name="phsC" desc="Iph:C">
								<SDI name="units">
									<DAI name="SIUnit">
										<Val>A</Val>
									</DAI>
								</SDI>
								<DAI name="db">
									<Val>10000</Val>
								</DAI>
								<DAI name="dbRef">
									<Val>2099</Val>
								</DAI>
							</SDI>
							<SDI name="res" desc="Iph:res">
								<SDI name="units">
									<DAI name="SIUnit">
										<Val>A</Val>
									</DAI>
								</SDI>
								<DAI name="db">
									<Val>100000</Val>
								</DAI>
								<DAI name="dbRef">
									<Val>2099</Val>
								</DAI>
							</SDI>
						</DOI>
						<DOI name="VneutC" desc="VN">
							<SDI name="units">
								<DAI name="SIUnit">
									<Val>V</Val>
								</DAI>
								<DAI name="multiplier">
									<Val>k</Val>
								</DAI>
							</SDI>
							<DAI name="db">
								<Val>2000</Val>
							</DAI>
							<DAI name="dbRef">
								<Val>19.0531178</Val>
							</DAI>
						</DOI>
						<DOI name="AneutC" desc="IN">
							<SDI name="units">
								<DAI name="SIUnit">
									<Val>A</Val>
								</DAI>
							</SDI>
							<DAI name="db">
								<Val>10000</Val>
							</DAI>
							<DAI name="dbRef">
								<Val>2099</Val>
							</DAI>
						</DOI>
					</LN>
					<LN lnClass="MMXN" inst="1" lnType="SIPROTEC5_LNType_MMXN_OpMeas_Fund_1ph_Pres" desc="Fundam" prefix="FPRE_">
						<Private type="Siemens-MasterId">15dac54d-e505-4575-a935-0d2bd091fb3a</Private>
						<DOI name="Mod" desc="Mode (controllable)"/>
						<DOI name="Beh" desc="Behavior"/>
						<DOI name="Health" desc="Health"/>
						<DOI name="NamPlt" desc="Name plate">
							<DAI name="configRev">
								<Val>2023-06-08 08:36:18</Val>
							</DAI>
						</DOI>
						<DOI name="VxC" desc="V">
							<SDI name="units">
								<DAI name="SIUnit">
									<Val>V</Val>
								</DAI>
							</SDI>
							<DAI name="db">
								<Val>2000</Val>
							</DAI>
						</DOI>
						<DOI name="VsynxC" desc="Vsy">
							<SDI name="units">
								<DAI name="SIUnit">
									<Val>V</Val>
								</DAI>
							</SDI>
							<DAI name="db">
								<Val>2000</Val>
							</DAI>
						</DOI>
						<DOI name="ANparLnC" desc="INp.line">
							<SDI name="units">
								<DAI name="SIUnit">
									<Val>A</Val>
								</DAI>
							</SDI>
							<DAI name="db">
								<Val>10000</Val>
							</DAI>
						</DOI>
						<DOI name="AstarPtC" desc="IY traf.">
							<SDI name="units">
								<DAI name="SIUnit">
									<Val>A</Val>
								</DAI>
							</SDI>
							<DAI name="db">
								<Val>10000</Val>
							</DAI>
						</DOI>
						<DOI name="AxC" desc="I">
							<SDI name="units">
								<DAI name="SIUnit">
									<Val>A</Val>
								</DAI>
							</SDI>
							<DAI name="db">
								<Val>10000</Val>
							</DAI>
						</DOI>
						<DOI name="VneutC" desc="VN">
							<SDI name="units">
								<DAI name="SIUnit">
									<Val>V</Val>
								</DAI>
							</SDI>
							<DAI name="db">
								<Val>2000</Val>
							</DAI>
						</DOI>
						<DOI name="Vseq0" desc="Vseq:0">
							<SDI name="units">
								<DAI name="SIUnit">
									<Val>V</Val>
								</DAI>
							</SDI>
							<DAI name="db">
								<Val>2000</Val>
							</DAI>
						</DOI>
					</LN>
					<LN lnClass="MSQI" inst="1" lnType="SIPROTEC5_LNType_MSQI_OpMeas_Symm_Pres" desc="Sy.co." prefix="XPRE_">
						<Private type="Siemens-MasterId">9e7ed7f8-82cd-4ca9-abbe-28aecb0c3529</Private>
						<DOI name="Mod" desc="Mode (controllable)"/>
						<DOI name="Beh" desc="Behavior"/>
						<DOI name="Health" desc="Health"/>
						<DOI name="NamPlt" desc="Name plate">
							<DAI name="configRev">
								<Val>2023-06-08 08:36:18</Val>
							</DAI>
						</DOI>
						<DOI name="SeqA" desc="Iseq">
							<SDI name="c1" desc="Iseq:1">
								<SDI name="units">
									<DAI name="SIUnit">
										<Val>A</Val>
									</DAI>
								</SDI>
								<DAI name="db">
									<Val>10000</Val>
								</DAI>
								<DAI name="dbRef">
									<Val>2099</Val>
								</DAI>
							</SDI>
							<SDI name="c2" desc="Iseq:2">
								<SDI name="units">
									<DAI name="SIUnit">
										<Val>A</Val>
									</DAI>
								</SDI>
								<DAI name="db">
									<Val>10000</Val>
								</DAI>
								<DAI name="dbRef">
									<Val>2099</Val>
								</DAI>
							</SDI>
							<SDI name="c3" desc="Iseq:0">
								<SDI name="units">
									<DAI name="SIUnit">
										<Val>A</Val>
									</DAI>
								</SDI>
								<DAI name="db">
									<Val>10000</Val>
								</DAI>
								<DAI name="dbRef">
									<Val>2099</Val>
								</DAI>
							</SDI>
						</DOI>
						<DOI name="SeqV" desc="Vseq">
							<SDI name="c1" desc="Vseq:1">
								<SDI name="units">
									<DAI name="SIUnit">
										<Val>V</Val>
									</DAI>
									<DAI name="multiplier">
										<Val>k</Val>
									</DAI>
								</SDI>
								<DAI name="db">
									<Val>2000</Val>
								</DAI>
								<DAI name="dbRef">
									<Val>19.0531178</Val>
								</DAI>
							</SDI>
							<SDI name="c2" desc="Vseq:2">
								<SDI name="units">
									<DAI name="SIUnit">
										<Val>V</Val>
									</DAI>
									<DAI name="multiplier">
										<Val>k</Val>
									</DAI>
								</SDI>
								<DAI name="db">
									<Val>2000</Val>
								</DAI>
								<DAI name="dbRef">
									<Val>19.0531178</Val>
								</DAI>
							</SDI>
							<SDI name="c3" desc="Vseq:0">
								<SDI name="units">
									<DAI name="SIUnit">
										<Val>V</Val>
									</DAI>
									<DAI name="multiplier">
										<Val>k</Val>
									</DAI>
								</SDI>
								<DAI name="db">
									<Val>2000</Val>
								</DAI>
								<DAI name="dbRef">
									<Val>19.0531178</Val>
								</DAI>
							</SDI>
						</DOI>
					</LN>
				</LDevice>
				<LDevice desc="DistLV_OMV" inst="DistLV_OperationalValues">
					<Private type="Siemens-MasterId">cf80b484-4e96-42ab-bdde-69c1f75eb251</Private>
					<LN0 lnClass="LLN0" inst="" lnType="SIEMENS_7UT85_001SIPROTEC5_LNType_LLN0_LDevice_Generic" desc="DistLV_OperationalValues/LLN0">
						<Private type="Siemens-MasterId">cfe276f7-7ff7-40da-aa4f-a54603926296</Private>
						<DOI name="Beh" desc="Behavior"/>
						<DOI name="Health" desc="Health"/>
						<DOI name="NamPlt" desc="Name plate">
							<DAI name="configRev">
								<Val>2023-06-08 08:36:18</Val>
							</DAI>
							<DAI name="ldNs">
								<Val>IEC 61850-7-4:2007B</Val>
							</DAI>
						</DOI>
						<DOI name="Mod" desc="Mode (controllable)"/>
						<DOI name="GrRef" desc="GrRef">
							<DAI name="setSrcRef">
								<Val>@DistLV</Val>
							</DAI>
						</DOI>
					</LN0>
					<LN lnClass="MMXU" inst="1" lnType="SIPROTEC5_LNType_MMXU_OpMeas_RMS_3ph_Pres" desc="RMS" prefix="RPRE_">
						<Private type="Siemens-MasterId">641ec71c-80cb-47f7-8501-3a89e96b10ec</Private>
						<DOI name="Mod" desc="Mode (controllable)"/>
						<DOI name="Beh" desc="Behavior"/>
						<DOI name="Health" desc="Health"/>
						<DOI name="NamPlt" desc="Name plate">
							<DAI name="configRev">
								<Val>2023-06-08 08:36:18</Val>
							</DAI>
						</DOI>
						<DOI name="PPV" desc="Vpp">
							<SDI name="phsAB" desc="Vpp:AB">
								<SDI name="units">
									<DAI name="SIUnit">
										<Val>V</Val>
									</DAI>
									<DAI name="multiplier">
										<Val>k</Val>
									</DAI>
								</SDI>
								<DAI name="db">
									<Val>152</Val>
								</DAI>
								<DAI name="dbRef">
									<Val>33</Val>
								</DAI>
							</SDI>
							<SDI name="phsBC" desc="Vpp:BC">
								<SDI name="units">
									<DAI name="SIUnit">
										<Val>V</Val>
									</DAI>
									<DAI name="multiplier">
										<Val>k</Val>
									</DAI>
								</SDI>
								<DAI name="db">
									<Val>152</Val>
								</DAI>
								<DAI name="dbRef">
									<Val>33</Val>
								</DAI>
							</SDI>
							<SDI name="phsCA" desc="Vpp:CA">
								<SDI name="units">
									<DAI name="SIUnit">
										<Val>V</Val>
									</DAI>
									<DAI name="multiplier">
										<Val>k</Val>
									</DAI>
								</SDI>
								<DAI name="db">
									<Val>152</Val>
								</DAI>
								<DAI name="dbRef">
									<Val>33</Val>
								</DAI>
							</SDI>
						</DOI>
						<DOI name="PhV" desc="Vph">
							<SDI name="phsA" desc="Vph:A">
								<SDI name="units">
									<DAI name="SIUnit">
										<Val>V</Val>
									</DAI>
									<DAI name="multiplier">
										<Val>k</Val>
									</DAI>
								</SDI>
								<DAI name="db">
									<Val>2000</Val>
								</DAI>
								<DAI name="dbRef">
									<Val>19.0531178</Val>
								</DAI>
							</SDI>
							<SDI name="phsB" desc="Vph:B">
								<SDI name="units">
									<DAI name="SIUnit">
										<Val>V</Val>
									</DAI>
									<DAI name="multiplier">
										<Val>k</Val>
									</DAI>
								</SDI>
								<DAI name="db">
									<Val>2000</Val>
								</DAI>
								<DAI name="dbRef">
									<Val>19.0531178</Val>
								</DAI>
							</SDI>
							<SDI name="phsC" desc="Vph:C">
								<SDI name="units">
									<DAI name="SIUnit">
										<Val>V</Val>
									</DAI>
									<DAI name="multiplier">
										<Val>k</Val>
									</DAI>
								</SDI>
								<DAI name="db">
									<Val>2000</Val>
								</DAI>
								<DAI name="dbRef">
									<Val>19.0531178</Val>
								</DAI>
							</SDI>
							<SDI name="res" desc="Vph:res">
								<SDI name="units">
									<DAI name="SIUnit">
										<Val>V</Val>
									</DAI>
								</SDI>
								<DAI name="db">
									<Val>20000</Val>
								</DAI>
								<DAI name="dbRef">
									<Val>19.0531178</Val>
								</DAI>
							</SDI>
						</DOI>
						<DOI name="A" desc="Iph">
							<SDI name="phsA" desc="Iph:A">
								<SDI name="units">
									<DAI name="SIUnit">
										<Val>A</Val>
									</DAI>
								</SDI>
								<DAI name="db">
									<Val>25</Val>
								</DAI>
								<DAI name="dbRef">
									<Val>2099</Val>
								</DAI>
							</SDI>
							<SDI name="phsB" desc="Iph:B">
								<SDI name="units">
									<DAI name="SIUnit">
										<Val>A</Val>
									</DAI>
								</SDI>
								<DAI name="db">
									<Val>25</Val>
								</DAI>
								<DAI name="dbRef">
									<Val>2099</Val>
								</DAI>
							</SDI>
							<SDI name="phsC" desc="Iph:C">
								<SDI name="units">
									<DAI name="SIUnit">
										<Val>A</Val>
									</DAI>
								</SDI>
								<DAI name="db">
									<Val>25</Val>
								</DAI>
								<DAI name="dbRef">
									<Val>2099</Val>
								</DAI>
							</SDI>
							<SDI name="res" desc="Iph:res">
								<SDI name="units">
									<DAI name="SIUnit">
										<Val>A</Val>
									</DAI>
								</SDI>
								<DAI name="db">
									<Val>25</Val>
								</DAI>
								<DAI name="dbRef">
									<Val>2099</Val>
								</DAI>
							</SDI>
						</DOI>
						<DOI name="Vneut" desc="VN">
							<SDI name="units">
								<DAI name="SIUnit">
									<Val>V</Val>
								</DAI>
								<DAI name="multiplier">
									<Val>k</Val>
								</DAI>
							</SDI>
							<DAI name="db">
								<Val>2000</Val>
							</DAI>
							<DAI name="dbRef">
								<Val>19.0531178</Val>
							</DAI>
						</DOI>
						<DOI name="Aneut" desc="IN">
							<SDI name="units">
								<DAI name="SIUnit">
									<Val>A</Val>
								</DAI>
							</SDI>
							<DAI name="db">
								<Val>10000</Val>
							</DAI>
							<DAI name="dbRef">
								<Val>2099</Val>
							</DAI>
						</DOI>
					</LN>
					<LN lnClass="MMXN" inst="1" lnType="SIPROTEC5_LNType_MMXN_OpMeas_RMS_1ph_Pres" desc="RMS" prefix="RPRE_">
						<Private type="Siemens-MasterId">a04b8fd8-d670-4c9a-ace4-89c223c7bd8d</Private>
						<DOI name="Mod" desc="Mode (controllable)"/>
						<DOI name="Beh" desc="Behavior"/>
						<DOI name="Health" desc="Health"/>
						<DOI name="NamPlt" desc="Name plate">
							<DAI name="configRev">
								<Val>2023-06-08 08:36:18</Val>
							</DAI>
						</DOI>
						<DOI name="ANparLn" desc="INp.line">
							<SDI name="units">
								<DAI name="SIUnit">
									<Val>A</Val>
								</DAI>
							</SDI>
							<DAI name="db">
								<Val>10000</Val>
							</DAI>
						</DOI>
						<DOI name="AstarPt" desc="IY traf.">
							<SDI name="units">
								<DAI name="SIUnit">
									<Val>A</Val>
								</DAI>
							</SDI>
							<DAI name="db">
								<Val>10000</Val>
							</DAI>
						</DOI>
					</LN>
					<LN lnClass="MMXU" inst="1" lnType="SIPROTEC5_LNType_MMXU_OpMeas_Power_3ph_Pres" desc="Power" prefix="PPRE_">
						<Private type="Siemens-MasterId">27473501-e2d4-4913-9cb4-59144601a7b6</Private>
						<DOI name="Mod" desc="Mode (controllable)"/>
						<DOI name="Beh" desc="Behavior"/>
						<DOI name="Health" desc="Health"/>
						<DOI name="NamPlt" desc="Name plate">
							<DAI name="configRev">
								<Val>2023-06-08 08:36:18</Val>
							</DAI>
						</DOI>
						<DOI name="TotW" desc="P tot">
							<SDI name="units">
								<DAI name="SIUnit">
									<Val>W</Val>
								</DAI>
								<DAI name="multiplier">
									<Val>M</Val>
								</DAI>
							</SDI>
							<DAI name="db">
								<Val>42</Val>
							</DAI>
							<DAI name="dbRef">
								<Val>119.973961</Val>
							</DAI>
						</DOI>
						<DOI name="TotVAr" desc="Q tot">
							<SDI name="units">
								<DAI name="SIUnit">
									<Val>VAr</Val>
								</DAI>
								<DAI name="multiplier">
									<Val>M</Val>
								</DAI>
							</SDI>
							<DAI name="db">
								<Val>42</Val>
							</DAI>
							<DAI name="dbRef">
								<Val>119.973961</Val>
							</DAI>
						</DOI>
						<DOI name="TotVA" desc="S tot">
							<SDI name="units">
								<DAI name="SIUnit">
									<Val>VA</Val>
								</DAI>
								<DAI name="multiplier">
									<Val>M</Val>
								</DAI>
							</SDI>
							<DAI name="db">
								<Val>42</Val>
							</DAI>
							<DAI name="dbRef">
								<Val>119.973961</Val>
							</DAI>
						</DOI>
						<DOI name="TotPF" desc="cos φ">
							<SDI name="units">
								<DAI name="SIUnit">
									<Val>cos(phi)</Val>
								</DAI>
							</SDI>
							<DAI name="db">
								<Val>10000</Val>
							</DAI>
						</DOI>
						<DOI name="Hz" desc="f">
							<SDI name="units">
								<DAI name="SIUnit">
									<Val>Hz</Val>
								</DAI>
							</SDI>
							<DAI name="db">
								<Val>10</Val>
							</DAI>
							<DAI name="dbRef">
								<Val>50</Val>
							</DAI>
						</DOI>
						<DOI name="W" desc="P">
							<SDI name="phsA" desc="P:A">
								<SDI name="units">
									<DAI name="SIUnit">
										<Val>W</Val>
									</DAI>
									<DAI name="multiplier">
										<Val>M</Val>
									</DAI>
								</SDI>
								<DAI name="db">
									<Val>125</Val>
								</DAI>
								<DAI name="dbRef">
									<Val>39.99132</Val>
								</DAI>
							</SDI>
							<SDI name="phsB" desc="P:B">
								<SDI name="units">
									<DAI name="SIUnit">
										<Val>W</Val>
									</DAI>
									<DAI name="multiplier">
										<Val>M</Val>
									</DAI>
								</SDI>
								<DAI name="db">
									<Val>125</Val>
								</DAI>
								<DAI name="dbRef">
									<Val>39.99132</Val>
								</DAI>
							</SDI>
							<SDI name="phsC" desc="P:C">
								<SDI name="units">
									<DAI name="SIUnit">
										<Val>W</Val>
									</DAI>
									<DAI name="multiplier">
										<Val>M</Val>
									</DAI>
								</SDI>
								<DAI name="db">
									<Val>125</Val>
								</DAI>
								<DAI name="dbRef">
									<Val>39.99132</Val>
								</DAI>
							</SDI>
						</DOI>
						<DOI name="VAr" desc="Q">
							<SDI name="phsA" desc="Q:A">
								<SDI name="units">
									<DAI name="SIUnit">
										<Val>VAr</Val>
									</DAI>
									<DAI name="multiplier">
										<Val>M</Val>
									</DAI>
								</SDI>
								<DAI name="db">
									<Val>125</Val>
								</DAI>
								<DAI name="dbRef">
									<Val>39.99132</Val>
								</DAI>
							</SDI>
							<SDI name="phsB" desc="Q:B">
								<SDI name="units">
									<DAI name="SIUnit">
										<Val>VAr</Val>
									</DAI>
									<DAI name="multiplier">
										<Val>M</Val>
									</DAI>
								</SDI>
								<DAI name="db">
									<Val>125</Val>
								</DAI>
								<DAI name="dbRef">
									<Val>39.99132</Val>
								</DAI>
							</SDI>
							<SDI name="phsC" desc="Q:C">
								<SDI name="units">
									<DAI name="SIUnit">
										<Val>VAr</Val>
									</DAI>
									<DAI name="multiplier">
										<Val>M</Val>
									</DAI>
								</SDI>
								<DAI name="db">
									<Val>125</Val>
								</DAI>
								<DAI name="dbRef">
									<Val>39.99132</Val>
								</DAI>
							</SDI>
						</DOI>
						<DOI name="VA" desc="S">
							<SDI name="phsA" desc="S:A">
								<SDI name="units">
									<DAI name="SIUnit">
										<Val>VA</Val>
									</DAI>
									<DAI name="multiplier">
										<Val>M</Val>
									</DAI>
								</SDI>
								<DAI name="db">
									<Val>125</Val>
								</DAI>
								<DAI name="dbRef">
									<Val>39.99132</Val>
								</DAI>
							</SDI>
							<SDI name="phsB" desc="S:B">
								<SDI name="units">
									<DAI name="SIUnit">
										<Val>VA</Val>
									</DAI>
									<DAI name="multiplier">
										<Val>M</Val>
									</DAI>
								</SDI>
								<DAI name="db">
									<Val>125</Val>
								</DAI>
								<DAI name="dbRef">
									<Val>39.99132</Val>
								</DAI>
							</SDI>
							<SDI name="phsC" desc="S:C">
								<SDI name="units">
									<DAI name="SIUnit">
										<Val>VA</Val>
									</DAI>
									<DAI name="multiplier">
										<Val>M</Val>
									</DAI>
								</SDI>
								<DAI name="db">
									<Val>125</Val>
								</DAI>
								<DAI name="dbRef">
									<Val>39.99132</Val>
								</DAI>
							</SDI>
						</DOI>
					</LN>
				</LDevice>
				<LDevice desc="DistLV_ProMon" inst="DistLV_ProcessMonitor">
					<Private type="Siemens-MasterId">eef008d7-3d88-4329-b376-76f31bdb5a88</Private>
					<LN0 lnClass="LLN0" inst="" lnType="SIEMENS_7UT85_001SIPROTEC5_LNType_LLN0_LDevice_Generic" desc="DistLV_ProcessMonitor/LLN0">
						<Private type="Siemens-MasterId">055f9b30-10ae-4c98-8ae1-6de8b09e1dba</Private>
						<DOI name="Beh" desc="Behavior"/>
						<DOI name="Health" desc="Health"/>
						<DOI name="NamPlt" desc="Name plate">
							<DAI name="configRev">
								<Val>2023-06-08 08:36:18</Val>
							</DAI>
							<DAI name="ldNs">
								<Val>IEC 61850-7-4:2007B</Val>
							</DAI>
						</DOI>
						<DOI name="Mod" desc="Mode (controllable)"/>
						<DOI name="GrRef" desc="GrRef">
							<DAI name="setSrcRef">
								<Val>@DistLV</Val>
							</DAI>
						</DOI>
					</LN0>
					<LN lnClass="ROPA" inst="1" lnType="SIPROTEC5_LNType_ROPA_OpenPoleCurrent" desc="Curr.criterion" prefix="PROM_">
						<Private type="Siemens-MasterId">6ee31636-b1e8-44b9-bc39-47606c1b991c</Private>
						<DOI name="Mod" desc="Mode (controllable)"/>
						<DOI name="Beh" desc="Behavior"/>
						<DOI name="Health" desc="Health"/>
						<DOI name="NamPlt" desc="Name plate">
							<DAI name="configRev">
								<Val>2023-06-08 08:36:18</Val>
							</DAI>
						</DOI>
						<DOI name="Inactive" desc="Inactive"/>
					</LN>
					<LN lnClass="RSSR" inst="1" lnType="SIPROTEC5_LNType_RSSR_SwitchingStateRecognition" desc="Closure detec." prefix="PROM_">
						<Private type="Siemens-MasterId">f9494d03-c0d3-4ccd-acd9-8eb3ad3ec6dc</Private>
						<DOI name="Mod" desc="Mode (controllable)"/>
						<DOI name="Beh" desc="Behavior"/>
						<DOI name="Health" desc="Health"/>
						<DOI name="NamPlt" desc="Name plate">
							<DAI name="configRev">
								<Val>2023-06-08 08:36:18</Val>
							</DAI>
						</DOI>
						<DOI name="DisCntrOpn" desc="&gt;Disconnector open"/>
						<DOI name="Inactive" desc="Inactive"/>
						<DOI name="SwitchOn" desc="Closure"/>
					</LN>
					<LN lnClass="ROPD" inst="1" lnType="SIPROTEC5_LNType_ROPD_OpenPoleDetector" desc="1pol.open det." prefix="PROM_">
						<Private type="Siemens-MasterId">070ce964-228d-44dc-b3e7-b3c88cb45a46</Private>
						<DOI name="Mod" desc="Mode (controllable)"/>
						<DOI name="Beh" desc="Behavior"/>
						<DOI name="Health" desc="Health"/>
						<DOI name="NamPlt" desc="Name plate">
							<DAI name="configRev">
								<Val>2023-06-08 08:36:18</Val>
							</DAI>
						</DOI>
						<DOI name="Inactive" desc="Inactive"/>
						<DOI name="SPlDeadTm" desc="1-pole open"/>
					</LN>
				</LDevice>
				<LDevice desc="HV breaker" inst="HVCB">
					<Private type="Siemens-MasterId">c8b26364-0f07-4888-8290-937f89b16b5c</Private>
					<LN0 lnClass="LLN0" inst="" lnType="SIEMENS_7UT85_001SIPROTEC5_LNType_LLN0_LDevice_Generic" desc="HVCB/LLN0">
						<Private type="Siemens-MasterId">2291a91e-e5ff-4a8f-a097-dca1f0210de5</Private>
						<DOI name="Beh" desc="Behavior"/>
						<DOI name="Health" desc="Health"/>
						<DOI name="NamPlt" desc="Name plate">
							<DAI name="configRev">
								<Val>2023-06-08 08:36:18</Val>
							</DAI>
							<DAI name="ldNs">
								<Val>IEC 61850-7-4:2007B</Val>
							</DAI>
						</DOI>
						<DOI name="Mod" desc="Mode (controllable)"/>
						<DOI name="GrRef" desc="GrRef">
							<DAI name="setSrcRef">
								<Val>@Application</Val>
							</DAI>
						</DOI>
					</LN0>
					<LN lnClass="GAPC" inst="1" lnType="SIPROTEC5_LNType_GAPC_DisImpedanceExcitation" desc="General" prefix="">
						<Private type="Siemens-MasterId">03ed21bb-ee17-403a-8973-6429c9927dfa</Private>
						<DOI name="Mod" desc="Mode (status only)"/>
						<DOI name="Beh" desc="Behavior"/>
						<DOI name="Health" desc="Health"/>
						<DOI name="NamPlt" desc="Name plate">
							<DAI name="configRev">
								<Val>2023-06-08 08:36:18</Val>
							</DAI>
						</DOI>
					</LN>
					<LN lnClass="PTRC" inst="1" lnType="SIEMENS_7UT85_001SIPROTEC5_LNType_PTRC_Trip_1_3pol" desc="Trip logic" prefix="">
						<Private type="Siemens-MasterId">cbb9ed72-7ad5-46c1-9689-f4b494d6ac74</Private>
						<DOI name="Mod" desc="Mode (controllable)"/>
						<DOI name="Beh" desc="Behavior"/>
						<DOI name="Health" desc="Health"/>
						<DOI name="NamPlt" desc="Name plate">
							<DAI name="configRev">
								<Val>2023-06-08 08:36:18</Val>
							</DAI>
						</DOI>
						<DOI name="Tr" desc="Trip indication"/>
						<DOI name="Op" desc="Operate"/>
						<DOI name="Str" desc="Pickup"/>
						<DOI name="Trip3pCoup" desc="1pole trip coupl.3pole"/>
						<DOI name="TrpBbpDiff" desc="Trip ind.:Busbar diff.prt."/>
						<DOI name="TrpBbpBFP" desc="Trip ind.:Busbar BFP"/>
						<DOI name="TrpBbpExt" desc="Trip ind.:Busbar ext.trip"/>
					</LN>
					<LN lnClass="XCBR" inst="4" lnType="SIEMENS_7UT85_001SIPROTEC5_LNType_XCBR_1pol_Ctl" desc="Circuit break." prefix="">
						<Private type="Siemens-MasterId">50d3940d-98c0-48ad-9900-b8996844129b</Private>
						<DOI name="Mod" desc="Mode (controllable)"/>
						<DOI name="Beh" desc="Behavior"/>
						<DOI name="Health" desc="Health"/>
						<DOI name="NamPlt" desc="Name plate">
							<DAI name="configRev">
								<Val>2023-06-08 08:36:18</Val>
							</DAI>
						</DOI>
						<DOI name="Loc" desc="Switching auth. local"/>
						<DOI name="EEHealth" desc="External health"/>
						<DOI name="OpCnt" desc="Op.ct."/>
						<DOI name="Pos" desc="Position 3-pole">
							<SDI name="pulseConfig">
								<DAI name="cmdQual">
									<Val>pulse</Val>
								</DAI>
								<DAI name="onDur">
									<Val>500</Val>
								</DAI>
								<DAI name="offDur">
									<Val>0</Val>
								</DAI>
								<DAI name="numPls">
									<Val>1</Val>
								</DAI>
							</SDI>
						</DOI>
						<DOI name="BlkOpn" desc="Block opening"/>
						<DOI name="BlkCls" desc="Block closing"/>
						<DOI name="SumSwARs" desc="ΣI Brk.">
							<SDI name="units">
								<DAI name="SIUnit">
									<Val>A</Val>
								</DAI>
							</SDI>
							<DAI name="pulsQty">
								<Val>0.001</Val>
							</DAI>
						</DOI>
						<DOI name="POWCap" desc="PoW capability"/>
						<DOI name="SetOpCntA" desc="Set op.counter phs A">
							<DAI name="maxVal">
								<Val>999999999</Val>
							</DAI>
						</DOI>
						<DOI name="SetOpCntB" desc="Set op.counter phs B">
							<DAI name="maxVal">
								<Val>999999999</Val>
							</DAI>
						</DOI>
						<DOI name="SetOpCntC" desc="Set op.counter phs C">
							<DAI name="maxVal">
								<Val>999999999</Val>
							</DAI>
						</DOI>
						<DOI name="SetOpnHrs" desc="Set CB open hours">
							<DAI name="maxVal">
								<Val>9999999</Val>
							</DAI>
						</DOI>
						<DOI name="SetOpHrs" desc="Set operating hours">
							<DAI name="maxVal">
								<Val>9999999</Val>
							</DAI>
						</DOI>
						<DOI name="SetSwASumA" desc="Set break.cur.sum phA">
							<SDI name="SBOw">
								<SDI name="ctlVal">
									<DAI name="f"/>
								</SDI>
							</SDI>
							<SDI name="Oper">
								<SDI name="ctlVal">
									<DAI name="f"/>
								</SDI>
							</SDI>
							<SDI name="Cancel">
								<SDI name="ctlVal">
									<DAI name="f"/>
								</SDI>
							</SDI>
						</DOI>
						<DOI name="SetSwASumB" desc="Set break.cur.sum phB">
							<SDI name="SBOw">
								<SDI name="ctlVal">
									<DAI name="f"/>
								</SDI>
							</SDI>
							<SDI name="Oper">
								<SDI name="ctlVal">
									<DAI name="f"/>
								</SDI>
							</SDI>
							<SDI name="Cancel">
								<SDI name="ctlVal">
									<DAI name="f"/>
								</SDI>
							</SDI>
						</DOI>
						<DOI name="SetSwASumC" desc="Set break.cur.sum phC">
							<SDI name="SBOw">
								<SDI name="ctlVal">
									<DAI name="f"/>
								</SDI>
							</SDI>
							<SDI name="Oper">
								<SDI name="ctlVal">
									<DAI name="f"/>
								</SDI>
							</SDI>
							<SDI name="Cancel">
								<SDI name="ctlVal">
									<DAI name="f"/>
								</SDI>
							</SDI>
						</DOI>
						<DOI name="AqBlk" desc="&gt;Acquisition blocking"/>
						<DOI name="Rdy" desc="&gt;Ready"/>
						<DOI name="RsSwStat" desc="&gt;Reset switch statist."/>
						<DOI name="RsAqBlkSub" desc="&gt;Reset AcqBlk&amp;Subst"/>
						<DOI name="TripRelViaBi" desc="&gt;Trip release BBP"/>
						<DOI name="TripOpnCmd" desc="Trip/open cmd. 3-pole"/>
						<DOI name="TripCmdA" desc="Trip only pole A"/>
						<DOI name="TripCmdB" desc="Trip only pole B"/>
						<DOI name="TripCmdC" desc="Trip only pole C"/>
						<DOI name="ClsCmd" desc="Close command"/>
						<DOI name="OpnCmdA" desc="Open cmd. 1-pole phsA"/>
						<DOI name="OpnCmdB" desc="Open cmd. 1-pole phsB"/>
						<DOI name="OpnCmdC" desc="Open cmd. 1-pole phsC"/>
						<DOI name="ClsCmdA" desc="Close cmd. 1-pole phsA"/>
						<DOI name="ClsCmdB" desc="Close cmd. 1-pole phsB"/>
						<DOI name="ClsCmdC" desc="Close cmd. 1-pole phsC"/>
						<DOI name="CmdActv" desc="Command active"/>
						<DOI name="AlmSupp" desc="Alarm suppression"/>
						<DOI name="DefTr" desc="Definitive trip"/>
						<DOI name="OpCntPhA" desc="Op.ct. A"/>
						<DOI name="OpCntPhB" desc="Op.ct. B"/>
						<DOI name="OpCntPhC" desc="Op.ct. C"/>
						<DOI name="SumSwARsA" desc="ΣIA Brk.">
							<SDI name="units">
								<DAI name="SIUnit">
									<Val>A</Val>
								</DAI>
							</SDI>
							<DAI name="pulsQty">
								<Val>0.001</Val>
							</DAI>
						</DOI>
						<DOI name="SumSwARsB" desc="ΣIB Brk.">
							<SDI name="units">
								<DAI name="SIUnit">
									<Val>A</Val>
								</DAI>
							</SDI>
							<DAI name="pulsQty">
								<Val>0.001</Val>
							</DAI>
						</DOI>
						<DOI name="SumSwARsC" desc="ΣIC Brk.">
							<SDI name="units">
								<DAI name="SIUnit">
									<Val>A</Val>
								</DAI>
							</SDI>
							<DAI name="pulsQty">
								<Val>0.001</Val>
							</DAI>
						</DOI>
						<DOI name="SwAphsA" desc="Break.-current phs A">
							<SDI name="units">
								<DAI name="SIUnit">
									<Val>A</Val>
								</DAI>
							</SDI>
						</DOI>
						<DOI name="SwAphsB" desc="Break.-current phs B">
							<SDI name="units">
								<DAI name="SIUnit">
									<Val>A</Val>
								</DAI>
							</SDI>
						</DOI>
						<DOI name="SwAphsC" desc="Break.-current phs C">
							<SDI name="units">
								<DAI name="SIUnit">
									<Val>A</Val>
								</DAI>
							</SDI>
						</DOI>
						<DOI name="SwANeut" desc="Break. current 3I0/IN">
							<SDI name="units">
								<DAI name="SIUnit">
									<Val>A</Val>
								</DAI>
							</SDI>
						</DOI>
						<DOI name="SwVphsA" desc="Break. voltage phs A">
							<SDI name="units">
								<DAI name="SIUnit">
									<Val>V</Val>
								</DAI>
								<DAI name="multiplier">
									<Val>k</Val>
								</DAI>
							</SDI>
						</DOI>
						<DOI name="SwVphsB" desc="Break. voltage phs B">
							<SDI name="units">
								<DAI name="SIUnit">
									<Val>V</Val>
								</DAI>
								<DAI name="multiplier">
									<Val>k</Val>
								</DAI>
							</SDI>
						</DOI>
						<DOI name="SwVphsC" desc="Break. voltage phs C">
							<SDI name="units">
								<DAI name="SIUnit">
									<Val>V</Val>
								</DAI>
								<DAI name="multiplier">
									<Val>k</Val>
								</DAI>
							</SDI>
						</DOI>
						<DOI name="CBOpnHrs" desc="CB open hours">
							<SDI name="units">
								<DAI name="SIUnit">
									<Val>h</Val>
								</DAI>
							</SDI>
						</DOI>
						<DOI name="OpHrs" desc="Operating hours">
							<SDI name="units">
								<DAI name="SIUnit">
									<Val>h</Val>
								</DAI>
							</SDI>
						</DOI>
						<DOI name="BbpBlockDO" desc="BBP trip relays blocked"/>
						<DOI name="NoTrpRelBi" desc="no release of trip cmd"/>
						<DOI name="RxPos1" desc="RxPos1">
							<DAI name="dataNs">
								<Val>SIPROTEC5/userdefined</Val>
							</DAI>
						</DOI>
						<DOI name="RxPosA1" desc="RxPosA1">
							<DAI name="dataNs">
								<Val>SIPROTEC5/userdefined</Val>
							</DAI>
						</DOI>
						<DOI name="RxPosB1" desc="RxPosB1">
							<DAI name="dataNs">
								<Val>SIPROTEC5/userdefined</Val>
							</DAI>
						</DOI>
						<DOI name="RxPosC1" desc="RxPosC1">
							<DAI name="dataNs">
								<Val>SIPROTEC5/userdefined</Val>
							</DAI>
						</DOI>
						<DOI name="WetSup" desc="HV Wett.sup">
							<DAI name="dataNs">
								<Val>Transpower:2023</Val>
							</DAI>
						</DOI>
						<Inputs>
							<ExtRef desc="RxPos1" intAddr="RxPos1;/Pos/stVal" pServT="GOOSE" pDO="Pos" pDA="stVal"/>
							<ExtRef desc="RxPos1" intAddr="RxPos1;/Pos/q" pServT="GOOSE" pDO="Pos" pDA="q"/>
							<ExtRef desc="RxPosA1" intAddr="RxPosA1;/Pos/stVal" pServT="GOOSE" pDO="Pos" pDA="stVal"/>
							<ExtRef desc="RxPosA1" intAddr="RxPosA1;/Pos/q" pServT="GOOSE" pDO="Pos" pDA="q"/>
							<ExtRef desc="RxPosB1" intAddr="RxPosB1;/Pos/stVal" pServT="GOOSE" pDO="Pos" pDA="stVal"/>
							<ExtRef desc="RxPosB1" intAddr="RxPosB1;/Pos/q" pServT="GOOSE" pDO="Pos" pDA="q"/>
							<ExtRef desc="RxPosC1" intAddr="RxPosC1;/Pos/stVal" pServT="GOOSE" pDO="Pos" pDA="stVal"/>
							<ExtRef desc="RxPosC1" intAddr="RxPosC1;/Pos/q" pServT="GOOSE" pDO="Pos" pDA="q"/>
							<ExtRef desc="HV Wett.sup" intAddr="WetSup;/Ind/stVal" pServT="GOOSE" pDO="Ind" pDA="stVal"/>
							<ExtRef desc="HV Wett.sup" intAddr="WetSup;/Ind/q" pServT="GOOSE" pDO="Ind" pDA="q"/>
							<ExtRef desc="HV Wett.sup" intAddr="WetSup;/Ind/t" pServT="GOOSE" pDO="Ind" pDA="t"/>
						</Inputs>
					</LN>
					<LN lnClass="XCBR" inst="1" lnType="SIEMENS_7UT85_001SIPROTEC5_LNType_XCBR_1pol_PhsX" desc="CB phs A" prefix="">
						<Private type="Siemens-MasterId">c15e17c7-f5e3-42cc-843e-a8301f6e5c32</Private>
						<DOI name="Mod" desc="Mode (controllable)"/>
						<DOI name="Beh" desc="Behavior"/>
						<DOI name="Health" desc="Health"/>
						<DOI name="NamPlt" desc="Name plate">
							<DAI name="configRev">
								<Val>2023-06-08 08:36:18</Val>
							</DAI>
						</DOI>
						<DOI name="Loc" desc="Switching auth. local"/>
						<DOI name="OpCnt" desc="Op.ct."/>
						<DOI name="Pos" desc="Cmd. with feedback"/>
						<DOI name="BlkOpn" desc="Block opening"/>
						<DOI name="BlkCls" desc="Block closing"/>
						<DOI name="SumSwARs" desc="ΣI Brk.">
							<SDI name="units">
								<DAI name="SIUnit">
									<Val>A</Val>
								</DAI>
							</SDI>
						</DOI>
					</LN>
					<LN lnClass="XCBR" inst="2" lnType="SIEMENS_7UT85_001SIPROTEC5_LNType_XCBR_1pol_PhsX" desc="CB phs B" prefix="">
						<Private type="Siemens-MasterId">8cd5d3bf-13fa-44d3-81e1-672c6f73bfd0</Private>
						<DOI name="Mod" desc="Mode (controllable)"/>
						<DOI name="Beh" desc="Behavior"/>
						<DOI name="Health" desc="Health"/>
						<DOI name="NamPlt" desc="Name plate">
							<DAI name="configRev">
								<Val>2023-06-08 08:36:18</Val>
							</DAI>
						</DOI>
						<DOI name="Loc" desc="Switching auth. local"/>
						<DOI name="OpCnt" desc="Op.ct."/>
						<DOI name="Pos" desc="Cmd. with feedback"/>
						<DOI name="BlkOpn" desc="Block opening"/>
						<DOI name="BlkCls" desc="Block closing"/>
						<DOI name="SumSwARs" desc="ΣI Brk.">
							<SDI name="units">
								<DAI name="SIUnit">
									<Val>A</Val>
								</DAI>
							</SDI>
						</DOI>
					</LN>
					<LN lnClass="XCBR" inst="3" lnType="SIEMENS_7UT85_001SIPROTEC5_LNType_XCBR_1pol_PhsX" desc="CB phs C" prefix="">
						<Private type="Siemens-MasterId">080860e2-96ab-43e2-9dc3-36af489281d3</Private>
						<DOI name="Mod" desc="Mode (controllable)"/>
						<DOI name="Beh" desc="Behavior"/>
						<DOI name="Health" desc="Health"/>
						<DOI name="NamPlt" desc="Name plate">
							<DAI name="configRev">
								<Val>2023-06-08 08:36:18</Val>
							</DAI>
						</DOI>
						<DOI name="Loc" desc="Switching auth. local"/>
						<DOI name="OpCnt" desc="Op.ct."/>
						<DOI name="Pos" desc="Cmd. with feedback"/>
						<DOI name="BlkOpn" desc="Block opening"/>
						<DOI name="BlkCls" desc="Block closing"/>
						<DOI name="SumSwARs" desc="ΣI Brk.">
							<SDI name="units">
								<DAI name="SIUnit">
									<Val>A</Val>
								</DAI>
							</SDI>
						</DOI>
					</LN>
					<LN lnClass="GAPC" inst="2" lnType="SIEMENS_7UT85_001SIPROTEC5_LNType_GAPC_ManualClose" desc="Manual close" prefix="">
						<Private type="Siemens-MasterId">eb4c0077-eaca-42f2-9adf-27a39bc14d49</Private>
						<DOI name="Mod" desc="Mode (controllable)"/>
						<DOI name="Beh" desc="Behavior"/>
						<DOI name="Health" desc="Health"/>
						<DOI name="NamPlt" desc="Name plate">
							<DAI name="configRev">
								<Val>2023-06-08 08:36:18</Val>
							</DAI>
						</DOI>
						<DOI name="Blk" desc="&gt;Block manual close"/>
						<DOI name="Input" desc="&gt;Input"/>
						<DOI name="Detected" desc="Detected"/>
					</LN>
					<LN lnClass="GAPC" inst="1" lnType="SIEMENS_7UT85_001SIPROTEC5_LNType_ResetLed" desc="Reset LED Group" prefix="RSLED">
						<Private type="Siemens-MasterId">199dc9bf-f5cd-47b6-a111-c1843cf138f7</Private>
						<DOI name="Mod" desc="Mode (controllable)"/>
						<DOI name="Beh" desc="Behavior"/>
						<DOI name="Health" desc="Health"/>
						<DOI name="NamPlt" desc="Name plate">
							<DAI name="configRev">
								<Val>2023-06-08 08:36:18</Val>
							</DAI>
						</DOI>
						<DOI name="ResetIn" desc="&gt;LED reset"/>
						<DOI name="LedTstOut" desc="LED have been reset"/>
						<DOI name="ResetCtl" desc="Reset LEDs"/>
					</LN>
					<LN lnClass="CSWI" inst="1" lnType="SIEMENS_7UT85_001SIPROTEC5_LNType_CSWI" desc="Control" prefix="">
						<Private type="Siemens-MasterId">56686089-3c1d-4c79-9ee1-073cd9405f01</Private>
						<Private type="Siemens-LN-Dependency"/>
						<DOI name="Mod" desc="Mode (controllable)"/>
						<DOI name="Beh" desc="Behavior"/>
						<DOI name="Health" desc="Health"/>
						<DOI name="NamPlt" desc="Name plate">
							<DAI name="configRev">
								<Val>2023-06-08 08:36:18</Val>
							</DAI>
						</DOI>
						<DOI name="Loc" desc="Switching auth. local"/>
						<DOI name="Pos" desc="Cmd. with feedback">
							<DAI name="ctlModel">
								<Val>sbo-with-enhanced-security</Val>
							</DAI>
							<DAI name="sboTimeout">
								<Val>30000</Val>
							</DAI>
							<DAI name="operTimeout">
								<Val>1000</Val>
							</DAI>
						</DOI>
						<DOI name="LocKey" desc="Sw.author. key switch"/>
						<DOI name="LocSta" desc="Switching auth. station">
							<DAI name="ctlModel">
								<Val>status-only</Val>
							</DAI>
						</DOI>
						<DOI name="SwAuth" desc="Switching authority"/>
						<DOI name="SwMod" desc="Switching mode"/>
						<DOI name="SwAuthEna1" desc="Enable sw. auth. 1">
							<DAI name="operTimeout">
								<Val>1000</Val>
							</DAI>
						</DOI>
						<DOI name="SwAuthEna2" desc="Enable sw. auth. 2">
							<DAI name="operTimeout">
								<Val>1000</Val>
							</DAI>
						</DOI>
						<DOI name="SwAuthEna3" desc="Enable sw. auth. 3">
							<DAI name="operTimeout">
								<Val>1000</Val>
							</DAI>
						</DOI>
						<DOI name="SwAuthEna4" desc="Enable sw. auth. 4">
							<DAI name="operTimeout">
								<Val>1000</Val>
							</DAI>
						</DOI>
						<DOI name="SwAuthEna5" desc="Enable sw. auth. 5">
							<DAI name="operTimeout">
								<Val>1000</Val>
							</DAI>
						</DOI>
						<DOI name="OpnCmd" desc="CB Open Cmd">
							<DAI name="dataNs">
								<Val>Transpower:2023</Val>
							</DAI>
						</DOI>
						<DOI name="ClsCmd" desc="CB Close Cmd">
							<DAI name="dataNs">
								<Val>Transpower:2023</Val>
							</DAI>
						</DOI>
					</LN>
					<LN lnClass="CILO" inst="1" lnType="SIPROTEC5_LNType_CILO" desc="Interlocking" prefix="">
						<Private type="Siemens-MasterId">162bfa74-e469-46dc-bd34-d5435b90b243</Private>
						<DOI name="Mod" desc="Mode (controllable)"/>
						<DOI name="Beh" desc="Behavior"/>
						<DOI name="Health" desc="Health"/>
						<DOI name="NamPlt" desc="Name plate">
							<DAI name="configRev">
								<Val>2023-06-08 08:36:18</Val>
							</DAI>
						</DOI>
						<DOI name="EnaOpn" desc="&gt;Enable opening"/>
						<DOI name="EnaCls" desc="&gt;Enable closing"/>
						<DOI name="EnaOpnFix" desc="&gt;Enable opening(fixed)"/>
						<DOI name="EnaClsFix" desc="&gt;Enable closing (fixed)"/>
					</LN>
					<LN lnClass="GAPC" inst="1" lnType="SIPROTEC5_LNType_GAPC_CBT_1pol" desc="CB test" prefix="CBT_">
						<Private type="Siemens-MasterId">3ccc3743-9eb1-48d4-ba90-801ab07ebd3b</Private>
						<DOI name="Mod" desc="Mode (controllable)"/>
						<DOI name="Beh" desc="Behavior"/>
						<DOI name="Health" desc="Health"/>
						<DOI name="NamPlt" desc="Name plate">
							<DAI name="configRev">
								<Val>2023-06-08 08:36:18</Val>
							</DAI>
						</DOI>
						<DOI name="StrTst3p" desc="3-pole open-close">
							<DAI name="operTimeout">
								<Val>6100</Val>
							</DAI>
						</DOI>
						<DOI name="StrTstPhsA" desc="Pole A open-close">
							<DAI name="operTimeout">
								<Val>6100</Val>
							</DAI>
						</DOI>
						<DOI name="StrTstPhsB" desc="Pole B open-close">
							<DAI name="operTimeout">
								<Val>6100</Val>
							</DAI>
						</DOI>
						<DOI name="StrTstPhsC" desc="Pole C open-close">
							<DAI name="operTimeout">
								<Val>6100</Val>
							</DAI>
						</DOI>
						<DOI name="TstExec" desc="Test execution"/>
						<DOI name="TstTr" desc="Trip command issued"/>
						<DOI name="TstCls" desc="Close command issued"/>
						<DOI name="TstCnc" desc="Test canceled"/>
					</LN>
					<LN lnClass="RBRF" inst="1" lnType="SIPROTEC5_LNType_RBRF_Adv_1_3pol" desc="CBFail" prefix="">
						<Private type="Siemens-MasterId">828a2cd9-b321-442d-912c-3220d0bf3c90</Private>
						<DOI name="Mod" desc="Mode (controllable)"/>
						<DOI name="Beh" desc="Behavior"/>
						<DOI name="Health" desc="Health"/>
						<DOI name="NamPlt" desc="Name plate">
							<DAI name="configRev">
								<Val>2023-06-08 08:36:18</Val>
							</DAI>
						</DOI>
						<DOI name="Str" desc="Pickup"/>
						<DOI name="OpEx" desc="Trip T2"/>
						<DOI name="OpIn" desc="Retrip T1"/>
						<DOI name="Blk" desc="&gt;Block function"/>
						<DOI name="ThreshEF" desc="&gt;Threshold sensitive"/>
						<DOI name="Init3p" desc="&gt;Start 3-pole"/>
						<DOI name="InitPhA" desc="&gt;Start pole A"/>
						<DOI name="InitPhB" desc="&gt;Start pole B"/>
						<DOI name="InitPhC" desc="&gt;Start pole C"/>
						<DOI name="BFRel1p" desc="&gt;Release 1-pole"/>
						<DOI name="BFRel3p" desc="&gt;Release 3-pole"/>
						<DOI name="CBFaulty" desc="&gt;CB defect"/>
						<DOI name="Initdef3p" desc="Fail. BI 'Start 3pole'"/>
						<DOI name="InitdefPhA" desc="Fail. BI 'Start poleA'"/>
						<DOI name="InitdefPhB" desc="Fail. BI 'Start poleB'"/>
						<DOI name="InitdefPhC" desc="Fail. BI 'Start poleC'"/>
						<DOI name="RelCBdef1p" desc="Fail. BI 'release 1p.'"/>
						<DOI name="RelCBdef3p" desc="Fail. BI 'release 3p.'"/>
						<DOI name="OpCBdef3p" desc="Fail. no BI release 3p"/>
						<DOI name="OpCBdefPhA" desc="Fail. no BI rel.pole A"/>
						<DOI name="OpCBdefPhB" desc="Fail. no BI rel.pole B"/>
						<DOI name="OpCBdefPhC" desc="Fail. no BI rel.pole C"/>
						<DOI name="BFInitNR" desc="BI start routing miss."/>
						<DOI name="AuxCritNR" desc="BI aux.ct. rout. miss."/>
						<DOI name="Inactive" desc="Inactive"/>
						<DOI name="ImmOp" desc="Immediate Operate"/>
						<DOI name="CBFailPole" desc="CB failure pole"/>
						<DOI name="DlyByInvMV" desc="Oper. del. by inv. meas."/>
					</LN>
				</LDevice>
				<LDevice desc="HV breaker_FdOMV" inst="HVCB_Fundamental">
					<Private type="Siemens-MasterId">62c74dfd-2122-4949-a24d-5859ee7d8452</Private>
					<LN0 lnClass="LLN0" inst="" lnType="SIEMENS_7UT85_001SIPROTEC5_LNType_LLN0_LDevice_Generic" desc="HVCB_Fundamental/LLN0">
						<Private type="Siemens-MasterId">5a110be4-d8cb-4871-8f59-b37596356047</Private>
						<DOI name="Beh" desc="Behavior"/>
						<DOI name="Health" desc="Health"/>
						<DOI name="NamPlt" desc="Name plate">
							<DAI name="configRev">
								<Val>2023-06-08 08:36:18</Val>
							</DAI>
							<DAI name="ldNs">
								<Val>IEC 61850-7-4:2007B</Val>
							</DAI>
						</DOI>
						<DOI name="Mod" desc="Mode (controllable)"/>
						<DOI name="GrRef" desc="GrRef">
							<DAI name="setSrcRef">
								<Val>@HVCB</Val>
							</DAI>
						</DOI>
					</LN0>
					<LN lnClass="MMXU" inst="1" lnType="SIPROTEC5_LNType_MMXU_OpMeas_Fund_3ph_Pres" desc="Fundam" prefix="FPRE_">
						<Private type="Siemens-MasterId">a791f311-df0a-411f-b424-be0febe2b158</Private>
						<DOI name="Mod" desc="Mode (controllable)"/>
						<DOI name="Beh" desc="Behavior"/>
						<DOI name="Health" desc="Health"/>
						<DOI name="NamPlt" desc="Name plate">
							<DAI name="configRev">
								<Val>2023-06-08 08:36:18</Val>
							</DAI>
						</DOI>
						<DOI name="PPV" desc="Vpp">
							<SDI name="phsAB" desc="Vpp:AB">
								<SDI name="units">
									<DAI name="SIUnit">
										<Val>V</Val>
									</DAI>
									<DAI name="multiplier">
										<Val>k</Val>
									</DAI>
								</SDI>
								<DAI name="db">
									<Val>2000</Val>
								</DAI>
								<DAI name="dbRef">
									<Val>220</Val>
								</DAI>
							</SDI>
							<SDI name="phsBC" desc="Vpp:BC">
								<SDI name="units">
									<DAI name="SIUnit">
										<Val>V</Val>
									</DAI>
									<DAI name="multiplier">
										<Val>k</Val>
									</DAI>
								</SDI>
								<DAI name="db">
									<Val>2000</Val>
								</DAI>
								<DAI name="dbRef">
									<Val>220</Val>
								</DAI>
							</SDI>
							<SDI name="phsCA" desc="Vpp:CA">
								<SDI name="units">
									<DAI name="SIUnit">
										<Val>V</Val>
									</DAI>
									<DAI name="multiplier">
										<Val>k</Val>
									</DAI>
								</SDI>
								<DAI name="db">
									<Val>2000</Val>
								</DAI>
								<DAI name="dbRef">
									<Val>220</Val>
								</DAI>
							</SDI>
						</DOI>
						<DOI name="PhV" desc="Vph">
							<SDI name="phsA" desc="Vph:A">
								<SDI name="units">
									<DAI name="SIUnit">
										<Val>V</Val>
									</DAI>
									<DAI name="multiplier">
										<Val>k</Val>
									</DAI>
								</SDI>
								<DAI name="db">
									<Val>2000</Val>
								</DAI>
								<DAI name="dbRef">
									<Val>127.02079</Val>
								</DAI>
							</SDI>
							<SDI name="phsB" desc="Vph:B">
								<SDI name="units">
									<DAI name="SIUnit">
										<Val>V</Val>
									</DAI>
									<DAI name="multiplier">
										<Val>k</Val>
									</DAI>
								</SDI>
								<DAI name="db">
									<Val>2000</Val>
								</DAI>
								<DAI name="dbRef">
									<Val>127.02079</Val>
								</DAI>
							</SDI>
							<SDI name="phsC" desc="Vph:C">
								<SDI name="units">
									<DAI name="SIUnit">
										<Val>V</Val>
									</DAI>
									<DAI name="multiplier">
										<Val>k</Val>
									</DAI>
								</SDI>
								<DAI name="db">
									<Val>2000</Val>
								</DAI>
								<DAI name="dbRef">
									<Val>127.02079</Val>
								</DAI>
							</SDI>
							<SDI name="res" desc="Vph:res">
								<SDI name="units">
									<DAI name="SIUnit">
										<Val>V</Val>
									</DAI>
								</SDI>
								<DAI name="db">
									<Val>20000</Val>
								</DAI>
								<DAI name="dbRef">
									<Val>127.02079</Val>
								</DAI>
							</SDI>
						</DOI>
						<DOI name="A" desc="Iph">
							<SDI name="phsA" desc="Iph:A">
								<SDI name="units">
									<DAI name="SIUnit">
										<Val>A</Val>
									</DAI>
								</SDI>
								<DAI name="db">
									<Val>10000</Val>
								</DAI>
								<DAI name="dbRef">
									<Val>400</Val>
								</DAI>
							</SDI>
							<SDI name="phsB" desc="Iph:B">
								<SDI name="units">
									<DAI name="SIUnit">
										<Val>A</Val>
									</DAI>
								</SDI>
								<DAI name="db">
									<Val>10000</Val>
								</DAI>
								<DAI name="dbRef">
									<Val>400</Val>
								</DAI>
							</SDI>
							<SDI name="phsC" desc="Iph:C">
								<SDI name="units">
									<DAI name="SIUnit">
										<Val>A</Val>
									</DAI>
								</SDI>
								<DAI name="db">
									<Val>10000</Val>
								</DAI>
								<DAI name="dbRef">
									<Val>400</Val>
								</DAI>
							</SDI>
							<SDI name="res" desc="Iph:res">
								<SDI name="units">
									<DAI name="SIUnit">
										<Val>A</Val>
									</DAI>
								</SDI>
								<DAI name="db">
									<Val>100000</Val>
								</DAI>
								<DAI name="dbRef">
									<Val>400</Val>
								</DAI>
							</SDI>
						</DOI>
						<DOI name="VneutC" desc="VN">
							<SDI name="units">
								<DAI name="SIUnit">
									<Val>V</Val>
								</DAI>
								<DAI name="multiplier">
									<Val>k</Val>
								</DAI>
							</SDI>
							<DAI name="db">
								<Val>2000</Val>
							</DAI>
							<DAI name="dbRef">
								<Val>127.02079</Val>
							</DAI>
						</DOI>
						<DOI name="AneutC" desc="IN">
							<SDI name="units">
								<DAI name="SIUnit">
									<Val>A</Val>
								</DAI>
							</SDI>
							<DAI name="db">
								<Val>10000</Val>
							</DAI>
							<DAI name="dbRef">
								<Val>400</Val>
							</DAI>
						</DOI>
					</LN>
				</LDevice>
				<LDevice desc="HV side" inst="HV_Side">
					<Private type="Siemens-MasterId">246bff99-fe39-45fe-bcc3-a9644db41dfb</Private>
					<LN0 lnClass="LLN0" inst="" lnType="SIEMENS_7UT85_001SIPROTEC5_LNType_LLN0_LDevice_Generic" desc="HV_Side/LLN0">
						<Private type="Siemens-MasterId">8e839b05-4081-4446-a781-a3e352675694</Private>
						<DOI name="Beh" desc="Behavior"/>
						<DOI name="Health" desc="Health"/>
						<DOI name="NamPlt" desc="Name plate">
							<DAI name="configRev">
								<Val>2023-06-08 08:36:18</Val>
							</DAI>
							<DAI name="ldNs">
								<Val>IEC 61850-7-4:2007B</Val>
							</DAI>
						</DOI>
						<DOI name="Mod" desc="Mode (controllable)"/>
						<DOI name="GrRef" desc="GrRef">
							<DAI name="setSrcRef">
								<Val>@Application</Val>
							</DAI>
						</DOI>
					</LN0>
					<LN lnClass="YPTR" inst="1" lnType="SIPROTEC5_LNType_YPTR_FB0_FGTransformerSide" desc="General" prefix="STR_">
						<Private type="Siemens-MasterId">f702888f-9ca9-421e-b18a-d1f2fa28e180</Private>
						<DOI name="Mod" desc="Mode (controllable)"/>
						<DOI name="Beh" desc="Behavior"/>
						<DOI name="Health" desc="Health"/>
						<DOI name="NamPlt" desc="Name plate">
							<DAI name="configRev">
								<Val>2023-06-08 08:36:18</Val>
							</DAI>
						</DOI>
					</LN>
					<LN lnClass="PTRC" inst="1" lnType="SIEMENS_7UT85_001SIPROTEC5_LNType_PTRC_FG_Line_3ph" desc="Group indicat." prefix="">
						<Private type="Siemens-MasterId">8c627fba-3d45-401b-96d6-0a71ecb373ac</Private>
						<DOI name="Mod" desc="Mode (controllable)"/>
						<DOI name="Beh" desc="Behavior"/>
						<DOI name="Health" desc="Health"/>
						<DOI name="NamPlt" desc="Name plate">
							<DAI name="configRev">
								<Val>2023-06-08 08:36:18</Val>
							</DAI>
						</DOI>
						<DOI name="Op" desc="Operate"/>
						<DOI name="Str" desc="Pickup"/>
					</LN>
					<LN lnClass="GAPC" inst="1" lnType="SIEMENS_7UT85_001SIPROTEC5_LNType_ResetLed" desc="Reset LED Group" prefix="RSLED">
						<Private type="Siemens-MasterId">c27c02ca-3af2-4186-b362-f608c107b4ec</Private>
						<DOI name="Mod" desc="Mode (controllable)"/>
						<DOI name="Beh" desc="Behavior"/>
						<DOI name="Health" desc="Health"/>
						<DOI name="NamPlt" desc="Name plate">
							<DAI name="configRev">
								<Val>2023-06-08 08:36:18</Val>
							</DAI>
						</DOI>
						<DOI name="ResetIn" desc="&gt;LED reset"/>
						<DOI name="LedTstOut" desc="LED have been reset"/>
						<DOI name="ResetCtl" desc="Reset LEDs"/>
					</LN>
					<LN lnClass="SFFM" inst="1" lnType="SIPROTEC5_LNType_SFFM" desc="Mes.v.fail.det" prefix="">
						<Private type="Siemens-MasterId">87205d59-e3e6-4279-a99f-c9e010c0c4b6</Private>
						<DOI name="Mod" desc="Mode (controllable)"/>
						<DOI name="Beh" desc="Behavior"/>
						<DOI name="Health" desc="Health"/>
						<DOI name="NamPlt" desc="Name plate">
							<DAI name="configRev">
								<Val>2023-06-08 08:36:18</Val>
							</DAI>
						</DOI>
						<DOI name="Blk" desc="&gt;Block function"/>
						<DOI name="Inactive" desc="Inactive"/>
						<DOI name="FuseFail" desc="Alarm"/>
						<DOI name="TripolFail" desc="3ph.failure-alarm"/>
						<DOI name="SO3polFail" desc="SO 3ph.failure-alarm"/>
						<DOI name="AsymDlFail" desc="Asym.fail.-alarm"/>
						<DOI name="AsymFail" desc="Asym.fail.-inst.alarm"/>
						<DOI name="HVVTSup" desc="HV VT Supervision">
							<DAI name="dataNs">
								<Val>Transpower:2023</Val>
							</DAI>
						</DOI>
					</LN>
					<LN lnClass="PHAR" inst="1" lnType="SIPROTEC5_LNType_PHAR" desc="Inrush detect." prefix="">
						<Private type="Siemens-MasterId">947f4840-eeb7-44d1-8b29-e7d58ba97c19</Private>
						<DOI name="Mod" desc="Mode (controllable)"/>
						<DOI name="Beh" desc="Behavior"/>
						<DOI name="Health" desc="Health"/>
						<DOI name="NamPlt" desc="Name plate">
							<DAI name="configRev">
								<Val>2023-06-08 08:36:18</Val>
							</DAI>
						</DOI>
						<DOI name="Str" desc="Pickup"/>
						<DOI name="Blk" desc="&gt;Block stage"/>
						<DOI name="Inactive" desc="Inactive"/>
						<DOI name="Irs2HaDetA" desc="2.harmonic phase A"/>
						<DOI name="Irs2HaDetB" desc="2.harmonic phase B"/>
						<DOI name="Irs2HaDetC" desc="2.harmonic phase C"/>
						<DOI name="IrsCWADet" desc="CWA"/>
						<DOI name="IrsCrsBlk" desc="Cross-blocking"/>
					</LN>
				</LDevice>
				<LDevice desc="HV side_2Stage Trip" inst="HV_Side_2Stage">
					<Private type="Siemens-MasterId">712668f4-bea4-4b65-9a95-324ea9d6790d</Private>
					<LN0 lnClass="LLN0" inst="" lnType="SIEMENS_7UT85_001SIPROTEC5_LNType_LLN0_LDevice_Generic" desc="HV_Side_2Stage/LLN0">
						<Private type="Siemens-MasterId">c352d674-47e0-4339-a28b-481e6397f212</Private>
						<DOI name="Beh" desc="Behavior"/>
						<DOI name="Health" desc="Health"/>
						<DOI name="NamPlt" desc="Name plate">
							<DAI name="configRev">
								<Val>2023-06-08 08:36:18</Val>
							</DAI>
							<DAI name="ldNs">
								<Val>IEC 61850-7-4:2007B</Val>
							</DAI>
						</DOI>
						<DOI name="Mod" desc="Mode (controllable)"/>
						<DOI name="GrRef" desc="GrRef">
							<DAI name="setSrcRef">
								<Val>@HV_Side</Val>
							</DAI>
						</DOI>
					</LN0>
					<LN lnClass="PSCH" inst="1" lnType="SIEMENS_7UT85_001SIPROTEC5_LNType_PSCH_ExtTrip_1" desc="Stage 1" prefix="EXT_">
						<Private type="Siemens-MasterId">2595eb62-241e-4954-aa29-7c861af62a84</Private>
						<DOI name="Mod" desc="Mode (controllable)"/>
						<DOI name="Beh" desc="Behavior"/>
						<DOI name="Health" desc="Health"/>
						<DOI name="NamPlt" desc="Name plate">
							<DAI name="configRev">
								<Val>2023-06-08 08:36:18</Val>
							</DAI>
						</DOI>
						<DOI name="Str" desc="Pickup"/>
						<DOI name="Op" desc="Operate"/>
						<DOI name="Blk" desc="&gt;Block function"/>
						<DOI name="ExtIn" desc="&gt;External trip"/>
						<DOI name="Inactive" desc="Inactive"/>
						<DOI name="OpTmExp" desc="Operate delay expired"/>
					</LN>
				</LDevice>
				<LDevice desc="HV side_BZ Trip" inst="HV_Side_BusTrip">
					<Private type="Siemens-MasterId">8b17ad62-e7c6-4924-94e6-45c374b368b3</Private>
					<LN0 lnClass="LLN0" inst="" lnType="SIEMENS_7UT85_001SIPROTEC5_LNType_LLN0_LDevice_Generic" desc="HV_Side_BusTrip/LLN0">
						<Private type="Siemens-MasterId">5642d31b-9167-43b9-ac47-4c01af2a66c4</Private>
						<DOI name="Beh" desc="Behavior"/>
						<DOI name="Health" desc="Health"/>
						<DOI name="NamPlt" desc="Name plate">
							<DAI name="configRev">
								<Val>2023-06-08 08:36:18</Val>
							</DAI>
							<DAI name="ldNs">
								<Val>IEC 61850-7-4:2007B</Val>
							</DAI>
						</DOI>
						<DOI name="Mod" desc="Mode (controllable)"/>
						<DOI name="GrRef" desc="GrRef">
							<DAI name="setSrcRef">
								<Val>@HV_Side</Val>
							</DAI>
						</DOI>
					</LN0>
					<LN lnClass="PSCH" inst="1" lnType="SIPROTEC5_LNType_PSCH_ExtTrip" desc="Stage 1" prefix="EXT_">
						<Private type="Siemens-MasterId">710336f6-a0b7-4c1a-833b-99ae62a16301</Private>
						<DOI name="Mod" desc="Mode (controllable)"/>
						<DOI name="Beh" desc="Behavior"/>
						<DOI name="Health" desc="Health"/>
						<DOI name="NamPlt" desc="Name plate">
							<DAI name="configRev">
								<Val>2023-06-08 08:36:18</Val>
							</DAI>
						</DOI>
						<DOI name="Str" desc="Pickup"/>
						<DOI name="Op" desc="Operate"/>
						<DOI name="Blk" desc="&gt;Block function"/>
						<DOI name="ExtIn" desc="&gt;External trip"/>
						<DOI name="Inactive" desc="Inactive"/>
						<DOI name="OpTmExp" desc="Operate delay expired"/>
						<DOI name="RxExtIn1" desc="Bus trip">
							<DAI name="dataNs">
								<Val>SIPROTEC5/userdefined</Val>
							</DAI>
						</DOI>
						<Inputs>
							<ExtRef desc="Bus trip" intAddr="RxExtIn1;/Ind/stVal" pServT="GOOSE" pDO="Ind" pDA="stVal"/>
							<ExtRef desc="Bus trip" intAddr="RxExtIn1;/Ind/q" pServT="GOOSE" pDO="Ind" pDA="q"/>
						</Inputs>
					</LN>
				</LDevice>
				<LDevice desc="HV side_HVCB Trip" inst="HV_Side_CB_Trip">
					<Private type="Siemens-MasterId">0b954178-897d-427c-8276-d7a193078c05</Private>
					<LN0 lnClass="LLN0" inst="" lnType="SIEMENS_7UT85_001SIPROTEC5_LNType_LLN0_LDevice_Generic" desc="HV_Side_CB_Trip/LLN0">
						<Private type="Siemens-MasterId">3c6d0a69-8f4a-4a5c-acab-018b091884a6</Private>
						<DOI name="Beh" desc="Behavior"/>
						<DOI name="Health" desc="Health"/>
						<DOI name="NamPlt" desc="Name plate">
							<DAI name="configRev">
								<Val>2023-06-08 08:36:18</Val>
							</DAI>
							<DAI name="ldNs">
								<Val>IEC 61850-7-4:2007B</Val>
							</DAI>
						</DOI>
						<DOI name="Mod" desc="Mode (controllable)"/>
						<DOI name="GrRef" desc="GrRef">
							<DAI name="setSrcRef">
								<Val>@HV_Side</Val>
							</DAI>
						</DOI>
					</LN0>
					<LN lnClass="PSCH" inst="1" lnType="SIEMENS_7UT85_001SIPROTEC5_LNType_PSCH_ExtTrip_1" desc="Stage 1" prefix="EXT_">
						<Private type="Siemens-MasterId">73be4e0d-5405-4f75-8a9a-809101e091ea</Private>
						<DOI name="Mod" desc="Mode (controllable)"/>
						<DOI name="Beh" desc="Behavior"/>
						<DOI name="Health" desc="Health"/>
						<DOI name="NamPlt" desc="Name plate">
							<DAI name="configRev">
								<Val>2023-06-08 08:36:18</Val>
							</DAI>
						</DOI>
						<DOI name="Str" desc="Pickup"/>
						<DOI name="Op" desc="Operate"/>
						<DOI name="Blk" desc="&gt;Block function"/>
						<DOI name="ExtIn" desc="&gt;External trip"/>
						<DOI name="Inactive" desc="Inactive"/>
						<DOI name="OpTmExp" desc="Operate delay expired"/>
					</LN>
				</LDevice>
				<LDevice desc="HV side_OC_HV" inst="HV_Side_Comm_OC">
					<Private type="Siemens-MasterId">3acfd7fb-87b2-42c9-93f6-e7946f98742d</Private>
					<LN0 lnClass="LLN0" inst="" lnType="SIEMENS_7UT85_001SIPROTEC5_LNType_LLN0_LDevice_Generic" desc="HV_Side_Comm_OC/LLN0">
						<Private type="Siemens-MasterId">57a3e81d-b769-44e4-b50d-00ea0b230e1d</Private>
						<DOI name="Beh" desc="Behavior"/>
						<DOI name="Health" desc="Health"/>
						<DOI name="NamPlt" desc="Name plate">
							<DAI name="configRev">
								<Val>2023-06-08 08:36:18</Val>
							</DAI>
							<DAI name="ldNs">
								<Val>IEC 61850-7-4:2007B</Val>
							</DAI>
						</DOI>
						<DOI name="Mod" desc="Mode (controllable)"/>
						<DOI name="GrRef" desc="GrRef">
							<DAI name="setSrcRef">
								<Val>@HV_Side</Val>
							</DAI>
						</DOI>
					</LN0>
					<LN lnClass="GAPC" inst="1" lnType="SIPROTEC5_LNType_GAPC_FB0_OCP_3ph" desc="General" prefix="">
						<Private type="Siemens-MasterId">0972c126-4293-4fd8-83c1-3adb6cc9b04b</Private>
						<DOI name="Mod" desc="Mode (controllable)"/>
						<DOI name="Beh" desc="Behavior"/>
						<DOI name="Health" desc="Health"/>
						<DOI name="NamPlt" desc="Name plate">
							<DAI name="configRev">
								<Val>2023-06-08 08:36:18</Val>
							</DAI>
						</DOI>
						<DOI name="ActEmgMod" desc="&gt;Activation emg. mode"/>
						<DOI name="EmgcyMod" desc="Emergency mode act."/>
					</LN>
					<LN lnClass="PTRC" inst="1" lnType="SIPROTEC5_LNType_PTRC_FG_GABC_Without_DirRouting_Op_1_3pol" desc="Group indicat." prefix="">
						<Private type="Siemens-MasterId">4aefe79d-ae75-4811-8633-197ef37225dd</Private>
						<DOI name="Mod" desc="Mode (controllable)"/>
						<DOI name="Beh" desc="Behavior"/>
						<DOI name="Health" desc="Health"/>
						<DOI name="NamPlt" desc="Name plate">
							<DAI name="configRev">
								<Val>2023-06-08 08:36:18</Val>
							</DAI>
						</DOI>
						<DOI name="Op" desc="Operate"/>
						<DOI name="Str" desc="Pickup"/>
					</LN>
					<LN lnClass="PTOC" inst="1" lnType="SIPROTEC5_LNType_PTOC_3ph_IOCP_3pol" desc="Comm_OC_HV" prefix="II_">
						<Private type="Siemens-MasterId">a6a1bf6c-a569-456d-9cb4-5aa287330df5</Private>
						<DOI name="Mod" desc="Mode (controllable)"/>
						<DOI name="Beh" desc="Behavior"/>
						<DOI name="Health" desc="Health"/>
						<DOI name="NamPlt" desc="Name plate">
							<DAI name="configRev">
								<Val>2023-06-08 08:36:18</Val>
							</DAI>
						</DOI>
						<DOI name="Str" desc="Pickup"/>
						<DOI name="Op" desc="Operate"/>
						<DOI name="Blk" desc="&gt;Block stage"/>
						<DOI name="ActDynSet" desc="&gt;Activ. dyn. settings"/>
						<DOI name="BlkOpDlTm" desc="&gt;Block delay &amp; op."/>
						<DOI name="Inactive" desc="Inactive"/>
						<DOI name="InrshBlkOp" desc="Inrush blocks operate"/>
						<DOI name="DySgRc1CAc" desc="Dyn.set. AR cycle1act."/>
						<DOI name="DySgRc2CAc" desc="Dyn.set. AR cycle2act."/>
						<DOI name="DySgRc3CAc" desc="Dyn.set. AR cycle3act."/>
						<DOI name="DySgRG3CAc" desc="Dyn.set. ARcycl.&gt;3act"/>
						<DOI name="DySgCLPAct" desc="Dyn.set. CLP active"/>
						<DOI name="DynSgBIAct" desc="Dyn.set. BI active"/>
						<DOI name="DynBlkStr" desc="Dyn. set. blks. pickup"/>
						<DOI name="DskRng" desc="Disk emulation running"/>
						<DOI name="OpTmExp" desc="Operate delay expired"/>
						<DOI name="I0ElimIph" desc="I0el.Iph">
							<SDI name="phsA" desc="I0el.Iph:A">
								<SDI name="units">
									<DAI name="SIUnit">
										<Val>A</Val>
									</DAI>
								</SDI>
								<DAI name="db">
									<Val>10000</Val>
								</DAI>
								<DAI name="dbRef">
									<Val>314.918335</Val>
								</DAI>
							</SDI>
							<SDI name="phsB" desc="I0el.Iph:B">
								<SDI name="units">
									<DAI name="SIUnit">
										<Val>A</Val>
									</DAI>
								</SDI>
								<DAI name="db">
									<Val>10000</Val>
								</DAI>
								<DAI name="dbRef">
									<Val>314.918335</Val>
								</DAI>
							</SDI>
							<SDI name="phsC" desc="I0el.Iph:C">
								<SDI name="units">
									<DAI name="SIUnit">
										<Val>A</Val>
									</DAI>
								</SDI>
								<DAI name="db">
									<Val>10000</Val>
								</DAI>
								<DAI name="dbRef">
									<Val>314.918335</Val>
								</DAI>
							</SDI>
						</DOI>
					</LN>
				</LDevice>
				<LDevice desc="HV side_FdSym" inst="HV_Side_FundSymComp">
					<Private type="Siemens-MasterId">609ace9c-fe8d-413c-8e83-78ddd0a3c242</Private>
					<LN0 lnClass="LLN0" inst="" lnType="SIEMENS_7UT85_001SIPROTEC5_LNType_LLN0_LDevice_Generic" desc="HV_Side_FundSymComp/LLN0">
						<Private type="Siemens-MasterId">3ed1d58f-aa0d-4df3-8b6d-a12eb6fd76c6</Private>
						<DOI name="Beh" desc="Behavior"/>
						<DOI name="Health" desc="Health"/>
						<DOI name="NamPlt" desc="Name plate">
							<DAI name="configRev">
								<Val>2023-06-08 08:36:18</Val>
							</DAI>
							<DAI name="ldNs">
								<Val>IEC 61850-7-4:2007B</Val>
							</DAI>
						</DOI>
						<DOI name="Mod" desc="Mode (controllable)"/>
						<DOI name="GrRef" desc="GrRef">
							<DAI name="setSrcRef">
								<Val>@HV_Side</Val>
							</DAI>
						</DOI>
					</LN0>
					<LN lnClass="MMXU" inst="1" lnType="SIPROTEC5_LNType_MMXU_OpMeas_Fund_3ph_Pres" desc="Fundam" prefix="FPRE_">
						<Private type="Siemens-MasterId">0ff8a1f6-0ff1-409c-accb-21d74cd4deb4</Private>
						<DOI name="Mod" desc="Mode (controllable)"/>
						<DOI name="Beh" desc="Behavior"/>
						<DOI name="Health" desc="Health"/>
						<DOI name="NamPlt" desc="Name plate">
							<DAI name="configRev">
								<Val>2023-06-08 08:36:18</Val>
							</DAI>
						</DOI>
						<DOI name="PPV" desc="Vpp">
							<SDI name="phsAB" desc="Vpp:AB">
								<SDI name="units">
									<DAI name="SIUnit">
										<Val>V</Val>
									</DAI>
									<DAI name="multiplier">
										<Val>k</Val>
									</DAI>
								</SDI>
								<DAI name="db">
									<Val>23</Val>
								</DAI>
								<DAI name="dbAng">
									<Val>1000</Val>
								</DAI>
								<DAI name="dbRef">
									<Val>220</Val>
								</DAI>
							</SDI>
							<SDI name="phsBC" desc="Vpp:BC">
								<SDI name="units">
									<DAI name="SIUnit">
										<Val>V</Val>
									</DAI>
									<DAI name="multiplier">
										<Val>k</Val>
									</DAI>
								</SDI>
								<DAI name="db">
									<Val>23</Val>
								</DAI>
								<DAI name="dbAng">
									<Val>1000</Val>
								</DAI>
								<DAI name="dbRef">
									<Val>220</Val>
								</DAI>
							</SDI>
							<SDI name="phsCA" desc="Vpp:CA">
								<SDI name="units">
									<DAI name="SIUnit">
										<Val>V</Val>
									</DAI>
									<DAI name="multiplier">
										<Val>k</Val>
									</DAI>
								</SDI>
								<DAI name="db">
									<Val>23</Val>
								</DAI>
								<DAI name="dbAng">
									<Val>1000</Val>
								</DAI>
								<DAI name="dbRef">
									<Val>220</Val>
								</DAI>
							</SDI>
						</DOI>
						<DOI name="PhV" desc="Vph">
							<SDI name="phsA" desc="Vph:A">
								<SDI name="units">
									<DAI name="SIUnit">
										<Val>V</Val>
									</DAI>
									<DAI name="multiplier">
										<Val>k</Val>
									</DAI>
								</SDI>
								<DAI name="db">
									<Val>23</Val>
								</DAI>
								<DAI name="dbAng">
									<Val>1000</Val>
								</DAI>
								<DAI name="dbRef">
									<Val>127.02079</Val>
								</DAI>
							</SDI>
							<SDI name="phsB" desc="Vph:B">
								<SDI name="units">
									<DAI name="SIUnit">
										<Val>V</Val>
									</DAI>
									<DAI name="multiplier">
										<Val>k</Val>
									</DAI>
								</SDI>
								<DAI name="db">
									<Val>23</Val>
								</DAI>
								<DAI name="dbAng">
									<Val>1000</Val>
								</DAI>
								<DAI name="dbRef">
									<Val>127.02079</Val>
								</DAI>
							</SDI>
							<SDI name="phsC" desc="Vph:C">
								<SDI name="units">
									<DAI name="SIUnit">
										<Val>V</Val>
									</DAI>
									<DAI name="multiplier">
										<Val>k</Val>
									</DAI>
								</SDI>
								<DAI name="db">
									<Val>23</Val>
								</DAI>
								<DAI name="dbAng">
									<Val>1000</Val>
								</DAI>
								<DAI name="dbRef">
									<Val>127.02079</Val>
								</DAI>
							</SDI>
							<SDI name="res" desc="Vph:res">
								<SDI name="units">
									<DAI name="SIUnit">
										<Val>V</Val>
									</DAI>
								</SDI>
								<DAI name="db">
									<Val>23</Val>
								</DAI>
								<DAI name="dbAng">
									<Val>1000</Val>
								</DAI>
								<DAI name="dbRef">
									<Val>127.02079</Val>
								</DAI>
							</SDI>
						</DOI>
						<DOI name="A" desc="Iph">
							<SDI name="phsA" desc="Iph:A">
								<SDI name="units">
									<DAI name="SIUnit">
										<Val>A</Val>
									</DAI>
								</SDI>
								<DAI name="db">
									<Val>21</Val>
								</DAI>
								<DAI name="dbAng">
									<Val>1000</Val>
								</DAI>
								<DAI name="dbRef">
									<Val>314.918335</Val>
								</DAI>
							</SDI>
							<SDI name="phsB" desc="Iph:B">
								<SDI name="units">
									<DAI name="SIUnit">
										<Val>A</Val>
									</DAI>
								</SDI>
								<DAI name="db">
									<Val>21</Val>
								</DAI>
								<DAI name="dbAng">
									<Val>1000</Val>
								</DAI>
								<DAI name="dbRef">
									<Val>314.918335</Val>
								</DAI>
							</SDI>
							<SDI name="phsC" desc="Iph:C">
								<SDI name="units">
									<DAI name="SIUnit">
										<Val>A</Val>
									</DAI>
								</SDI>
								<DAI name="db">
									<Val>21</Val>
								</DAI>
								<DAI name="dbAng">
									<Val>1000</Val>
								</DAI>
								<DAI name="dbRef">
									<Val>314.918335</Val>
								</DAI>
							</SDI>
							<SDI name="res" desc="Iph:res">
								<SDI name="units">
									<DAI name="SIUnit">
										<Val>A</Val>
									</DAI>
								</SDI>
								<DAI name="db">
									<Val>21</Val>
								</DAI>
								<DAI name="dbAng">
									<Val>1000</Val>
								</DAI>
								<DAI name="dbRef">
									<Val>314.918335</Val>
								</DAI>
							</SDI>
						</DOI>
						<DOI name="VneutC" desc="VN">
							<SDI name="units">
								<DAI name="SIUnit">
									<Val>V</Val>
								</DAI>
								<DAI name="multiplier">
									<Val>k</Val>
								</DAI>
							</SDI>
							<DAI name="db">
								<Val>2000</Val>
							</DAI>
							<DAI name="dbRef">
								<Val>127.02079</Val>
							</DAI>
						</DOI>
						<DOI name="AneutC" desc="IN">
							<SDI name="units">
								<DAI name="SIUnit">
									<Val>A</Val>
								</DAI>
							</SDI>
							<DAI name="db">
								<Val>21</Val>
							</DAI>
							<DAI name="dbAng">
								<Val>1000</Val>
							</DAI>
							<DAI name="dbRef">
								<Val>314.918335</Val>
							</DAI>
						</DOI>
					</LN>
					<LN lnClass="MMXN" inst="1" lnType="SIPROTEC5_LNType_MMXN_OpMeas_Fund_1ph_Pres" desc="Fundam" prefix="FPRE_">
						<Private type="Siemens-MasterId">354a456f-8e64-419f-a9f2-b725675bd3ee</Private>
						<DOI name="Mod" desc="Mode (controllable)"/>
						<DOI name="Beh" desc="Behavior"/>
						<DOI name="Health" desc="Health"/>
						<DOI name="NamPlt" desc="Name plate">
							<DAI name="configRev">
								<Val>2023-06-08 08:36:18</Val>
							</DAI>
						</DOI>
						<DOI name="VxC" desc="V">
							<SDI name="units">
								<DAI name="SIUnit">
									<Val>V</Val>
								</DAI>
							</SDI>
							<DAI name="db">
								<Val>2000</Val>
							</DAI>
						</DOI>
						<DOI name="VsynxC" desc="Vsy">
							<SDI name="units">
								<DAI name="SIUnit">
									<Val>V</Val>
								</DAI>
							</SDI>
							<DAI name="db">
								<Val>2000</Val>
							</DAI>
						</DOI>
						<DOI name="ANparLnC" desc="INp.line">
							<SDI name="units">
								<DAI name="SIUnit">
									<Val>A</Val>
								</DAI>
							</SDI>
							<DAI name="db">
								<Val>10000</Val>
							</DAI>
						</DOI>
						<DOI name="AstarPtC" desc="IY traf.">
							<SDI name="units">
								<DAI name="SIUnit">
									<Val>A</Val>
								</DAI>
							</SDI>
							<DAI name="db">
								<Val>10000</Val>
							</DAI>
						</DOI>
						<DOI name="AxC" desc="I">
							<SDI name="units">
								<DAI name="SIUnit">
									<Val>A</Val>
								</DAI>
							</SDI>
							<DAI name="db">
								<Val>10000</Val>
							</DAI>
						</DOI>
						<DOI name="VneutC" desc="VN">
							<SDI name="units">
								<DAI name="SIUnit">
									<Val>V</Val>
								</DAI>
							</SDI>
							<DAI name="db">
								<Val>2000</Val>
							</DAI>
						</DOI>
						<DOI name="Vseq0" desc="Vseq:0">
							<SDI name="units">
								<DAI name="SIUnit">
									<Val>V</Val>
								</DAI>
							</SDI>
							<DAI name="db">
								<Val>2000</Val>
							</DAI>
						</DOI>
					</LN>
					<LN lnClass="MSQI" inst="1" lnType="SIPROTEC5_LNType_MSQI_OpMeas_Symm_Pres" desc="Sy.co." prefix="XPRE_">
						<Private type="Siemens-MasterId">718a7a95-57c6-4377-bb43-17d95f5dd32b</Private>
						<DOI name="Mod" desc="Mode (controllable)"/>
						<DOI name="Beh" desc="Behavior"/>
						<DOI name="Health" desc="Health"/>
						<DOI name="NamPlt" desc="Name plate">
							<DAI name="configRev">
								<Val>2023-06-08 08:36:18</Val>
							</DAI>
						</DOI>
						<DOI name="SeqA" desc="Iseq">
							<SDI name="c1" desc="Iseq:1">
								<SDI name="units">
									<DAI name="SIUnit">
										<Val>A</Val>
									</DAI>
								</SDI>
								<DAI name="db">
									<Val>21</Val>
								</DAI>
								<DAI name="dbAng">
									<Val>1000</Val>
								</DAI>
								<DAI name="dbRef">
									<Val>314.918335</Val>
								</DAI>
							</SDI>
							<SDI name="c2" desc="Iseq:2">
								<SDI name="units">
									<DAI name="SIUnit">
										<Val>A</Val>
									</DAI>
								</SDI>
								<DAI name="db">
									<Val>21</Val>
								</DAI>
								<DAI name="dbAng">
									<Val>1000</Val>
								</DAI>
								<DAI name="dbRef">
									<Val>314.918335</Val>
								</DAI>
							</SDI>
							<SDI name="c3" desc="Iseq:0">
								<SDI name="units">
									<DAI name="SIUnit">
										<Val>A</Val>
									</DAI>
								</SDI>
								<DAI name="db">
									<Val>21</Val>
								</DAI>
								<DAI name="dbAng">
									<Val>1000</Val>
								</DAI>
								<DAI name="dbRef">
									<Val>314.918335</Val>
								</DAI>
							</SDI>
						</DOI>
						<DOI name="SeqV" desc="Vseq">
							<SDI name="c1" desc="Vseq:1">
								<SDI name="units">
									<DAI name="SIUnit">
										<Val>V</Val>
									</DAI>
									<DAI name="multiplier">
										<Val>k</Val>
									</DAI>
								</SDI>
								<DAI name="db">
									<Val>23</Val>
								</DAI>
								<DAI name="dbAng">
									<Val>1000</Val>
								</DAI>
								<DAI name="dbRef">
									<Val>127.02079</Val>
								</DAI>
							</SDI>
							<SDI name="c2" desc="Vseq:2">
								<SDI name="units">
									<DAI name="SIUnit">
										<Val>V</Val>
									</DAI>
									<DAI name="multiplier">
										<Val>k</Val>
									</DAI>
								</SDI>
								<DAI name="db">
									<Val>23</Val>
								</DAI>
								<DAI name="dbAng">
									<Val>1000</Val>
								</DAI>
								<DAI name="dbRef">
									<Val>127.02079</Val>
								</DAI>
							</SDI>
							<SDI name="c3" desc="Vseq:0">
								<SDI name="units">
									<DAI name="SIUnit">
										<Val>V</Val>
									</DAI>
									<DAI name="multiplier">
										<Val>k</Val>
									</DAI>
								</SDI>
								<DAI name="db">
									<Val>23</Val>
								</DAI>
								<DAI name="dbAng">
									<Val>1000</Val>
								</DAI>
								<DAI name="dbRef">
									<Val>127.02079</Val>
								</DAI>
							</SDI>
						</DOI>
					</LN>
				</LDevice>
				<LDevice desc="HV side_OMV" inst="HV_Side_OperationalValues">
					<Private type="Siemens-MasterId">0df63f17-bcd2-4da6-aaff-0f82f0bce6b3</Private>
					<LN0 lnClass="LLN0" inst="" lnType="SIEMENS_7UT85_001SIPROTEC5_LNType_LLN0_LDevice_Generic" desc="HV_Side_OperationalValues/LLN0">
						<Private type="Siemens-MasterId">df440f0d-74c7-44d0-9ce6-27a95819ad9d</Private>
						<DOI name="Beh" desc="Behavior"/>
						<DOI name="Health" desc="Health"/>
						<DOI name="NamPlt" desc="Name plate">
							<DAI name="configRev">
								<Val>2023-06-08 08:36:18</Val>
							</DAI>
							<DAI name="ldNs">
								<Val>IEC 61850-7-4:2007B</Val>
							</DAI>
						</DOI>
						<DOI name="Mod" desc="Mode (controllable)"/>
						<DOI name="GrRef" desc="GrRef">
							<DAI name="setSrcRef">
								<Val>@HV_Side</Val>
							</DAI>
						</DOI>
					</LN0>
					<LN lnClass="MMXU" inst="1" lnType="SIPROTEC5_LNType_MMXU_OpMeas_RMS_3ph_Pres" desc="RMS" prefix="RPRE_">
						<Private type="Siemens-MasterId">51be5b31-9716-4419-95db-a92ee6d5cdea</Private>
						<DOI name="Mod" desc="Mode (controllable)"/>
						<DOI name="Beh" desc="Behavior"/>
						<DOI name="Health" desc="Health"/>
						<DOI name="NamPlt" desc="Name plate">
							<DAI name="configRev">
								<Val>2023-06-08 08:36:18</Val>
							</DAI>
						</DOI>
						<DOI name="PPV" desc="Vpp">
							<SDI name="phsAB" desc="Vpp:AB">
								<SDI name="units">
									<DAI name="SIUnit">
										<Val>V</Val>
									</DAI>
									<DAI name="multiplier">
										<Val>k</Val>
									</DAI>
								</SDI>
								<DAI name="db">
									<Val>23</Val>
								</DAI>
								<DAI name="dbRef">
									<Val>220</Val>
								</DAI>
							</SDI>
							<SDI name="phsBC" desc="Vpp:BC">
								<SDI name="units">
									<DAI name="SIUnit">
										<Val>V</Val>
									</DAI>
									<DAI name="multiplier">
										<Val>k</Val>
									</DAI>
								</SDI>
								<DAI name="db">
									<Val>23</Val>
								</DAI>
								<DAI name="dbRef">
									<Val>220</Val>
								</DAI>
							</SDI>
							<SDI name="phsCA" desc="Vpp:CA">
								<SDI name="units">
									<DAI name="SIUnit">
										<Val>V</Val>
									</DAI>
									<DAI name="multiplier">
										<Val>k</Val>
									</DAI>
								</SDI>
								<DAI name="db">
									<Val>23</Val>
								</DAI>
								<DAI name="dbRef">
									<Val>220</Val>
								</DAI>
							</SDI>
						</DOI>
						<DOI name="PhV" desc="Vph">
							<SDI name="phsA" desc="Vph:A">
								<SDI name="units">
									<DAI name="SIUnit">
										<Val>V</Val>
									</DAI>
									<DAI name="multiplier">
										<Val>k</Val>
									</DAI>
								</SDI>
								<DAI name="db">
									<Val>23</Val>
								</DAI>
								<DAI name="dbRef">
									<Val>127.02079</Val>
								</DAI>
							</SDI>
							<SDI name="phsB" desc="Vph:B">
								<SDI name="units">
									<DAI name="SIUnit">
										<Val>V</Val>
									</DAI>
									<DAI name="multiplier">
										<Val>k</Val>
									</DAI>
								</SDI>
								<DAI name="db">
									<Val>23</Val>
								</DAI>
								<DAI name="dbRef">
									<Val>127.02079</Val>
								</DAI>
							</SDI>
							<SDI name="phsC" desc="Vph:C">
								<SDI name="units">
									<DAI name="SIUnit">
										<Val>V</Val>
									</DAI>
									<DAI name="multiplier">
										<Val>k</Val>
									</DAI>
								</SDI>
								<DAI name="db">
									<Val>23</Val>
								</DAI>
								<DAI name="dbRef">
									<Val>127.02079</Val>
								</DAI>
							</SDI>
							<SDI name="res" desc="Vph:res">
								<SDI name="units">
									<DAI name="SIUnit">
										<Val>V</Val>
									</DAI>
								</SDI>
								<DAI name="db">
									<Val>23</Val>
								</DAI>
								<DAI name="dbRef">
									<Val>127.02079</Val>
								</DAI>
							</SDI>
						</DOI>
						<DOI name="A" desc="Iph">
							<SDI name="phsA" desc="Iph:A">
								<SDI name="units">
									<DAI name="SIUnit">
										<Val>A</Val>
									</DAI>
								</SDI>
								<DAI name="db">
									<Val>21</Val>
								</DAI>
								<DAI name="dbRef">
									<Val>314.918335</Val>
								</DAI>
							</SDI>
							<SDI name="phsB" desc="Iph:B">
								<SDI name="units">
									<DAI name="SIUnit">
										<Val>A</Val>
									</DAI>
								</SDI>
								<DAI name="db">
									<Val>21</Val>
								</DAI>
								<DAI name="dbRef">
									<Val>314.918335</Val>
								</DAI>
							</SDI>
							<SDI name="phsC" desc="Iph:C">
								<SDI name="units">
									<DAI name="SIUnit">
										<Val>A</Val>
									</DAI>
								</SDI>
								<DAI name="db">
									<Val>21</Val>
								</DAI>
								<DAI name="dbRef">
									<Val>314.918335</Val>
								</DAI>
							</SDI>
							<SDI name="res" desc="Iph:res">
								<SDI name="units">
									<DAI name="SIUnit">
										<Val>A</Val>
									</DAI>
								</SDI>
								<DAI name="db">
									<Val>21</Val>
								</DAI>
								<DAI name="dbRef">
									<Val>314.918335</Val>
								</DAI>
							</SDI>
						</DOI>
						<DOI name="Vneut" desc="VN">
							<SDI name="units">
								<DAI name="SIUnit">
									<Val>V</Val>
								</DAI>
								<DAI name="multiplier">
									<Val>k</Val>
								</DAI>
							</SDI>
							<DAI name="db">
								<Val>2000</Val>
							</DAI>
							<DAI name="dbRef">
								<Val>127.02079</Val>
							</DAI>
						</DOI>
						<DOI name="Aneut" desc="IN">
							<SDI name="units">
								<DAI name="SIUnit">
									<Val>A</Val>
								</DAI>
							</SDI>
							<DAI name="db">
								<Val>21</Val>
							</DAI>
							<DAI name="dbRef">
								<Val>314.918335</Val>
							</DAI>
						</DOI>
					</LN>
					<LN lnClass="MMXN" inst="1" lnType="SIPROTEC5_LNType_MMXN_OpMeas_RMS_1ph_Pres" desc="RMS" prefix="RPRE_">
						<Private type="Siemens-MasterId">39cf5ef0-d506-43fa-8c37-9529c6ab9f06</Private>
						<DOI name="Mod" desc="Mode (controllable)"/>
						<DOI name="Beh" desc="Behavior"/>
						<DOI name="Health" desc="Health"/>
						<DOI name="NamPlt" desc="Name plate">
							<DAI name="configRev">
								<Val>2023-06-08 08:36:18</Val>
							</DAI>
						</DOI>
						<DOI name="ANparLn" desc="INp.line">
							<SDI name="units">
								<DAI name="SIUnit">
									<Val>A</Val>
								</DAI>
							</SDI>
							<DAI name="db">
								<Val>10000</Val>
							</DAI>
						</DOI>
						<DOI name="AstarPt" desc="IY traf.">
							<SDI name="units">
								<DAI name="SIUnit">
									<Val>A</Val>
								</DAI>
							</SDI>
							<DAI name="db">
								<Val>10000</Val>
							</DAI>
						</DOI>
					</LN>
					<LN lnClass="MMXU" inst="1" lnType="SIPROTEC5_LNType_MMXU_OpMeas_Power_3ph_Pres" desc="Power" prefix="PPRE_">
						<Private type="Siemens-MasterId">864c90a5-97f5-48c3-a1c3-6fd0f1b91cdd</Private>
						<DOI name="Mod" desc="Mode (controllable)"/>
						<DOI name="Beh" desc="Behavior"/>
						<DOI name="Health" desc="Health"/>
						<DOI name="NamPlt" desc="Name plate">
							<DAI name="configRev">
								<Val>2023-06-08 08:36:18</Val>
							</DAI>
						</DOI>
						<DOI name="TotW" desc="P tot">
							<SDI name="units">
								<DAI name="SIUnit">
									<Val>W</Val>
								</DAI>
								<DAI name="multiplier">
									<Val>M</Val>
								</DAI>
							</SDI>
							<DAI name="db">
								<Val>10</Val>
							</DAI>
							<DAI name="dbRef">
								<Val>120</Val>
							</DAI>
						</DOI>
						<DOI name="TotVAr" desc="Q tot">
							<SDI name="units">
								<DAI name="SIUnit">
									<Val>VAr</Val>
								</DAI>
								<DAI name="multiplier">
									<Val>M</Val>
								</DAI>
							</SDI>
							<DAI name="db">
								<Val>10</Val>
							</DAI>
							<DAI name="dbRef">
								<Val>120</Val>
							</DAI>
						</DOI>
						<DOI name="TotVA" desc="S tot">
							<SDI name="units">
								<DAI name="SIUnit">
									<Val>VA</Val>
								</DAI>
								<DAI name="multiplier">
									<Val>M</Val>
								</DAI>
							</SDI>
							<DAI name="db">
								<Val>10</Val>
							</DAI>
							<DAI name="dbRef">
								<Val>120</Val>
							</DAI>
						</DOI>
						<DOI name="TotPF" desc="cos φ">
							<SDI name="units">
								<DAI name="SIUnit">
									<Val>cos(phi)</Val>
								</DAI>
							</SDI>
							<DAI name="db">
								<Val>10000</Val>
							</DAI>
						</DOI>
						<DOI name="Hz" desc="f">
							<SDI name="units">
								<DAI name="SIUnit">
									<Val>Hz</Val>
								</DAI>
							</SDI>
							<DAI name="db">
								<Val>10</Val>
							</DAI>
							<DAI name="dbRef">
								<Val>50</Val>
							</DAI>
						</DOI>
						<DOI name="W" desc="P">
							<SDI name="phsA" desc="P:A">
								<SDI name="units">
									<DAI name="SIUnit">
										<Val>W</Val>
									</DAI>
									<DAI name="multiplier">
										<Val>M</Val>
									</DAI>
								</SDI>
								<DAI name="db">
									<Val>125</Val>
								</DAI>
								<DAI name="dbRef">
									<Val>40</Val>
								</DAI>
							</SDI>
							<SDI name="phsB" desc="P:B">
								<SDI name="units">
									<DAI name="SIUnit">
										<Val>W</Val>
									</DAI>
									<DAI name="multiplier">
										<Val>M</Val>
									</DAI>
								</SDI>
								<DAI name="db">
									<Val>125</Val>
								</DAI>
								<DAI name="dbRef">
									<Val>40</Val>
								</DAI>
							</SDI>
							<SDI name="phsC" desc="P:C">
								<SDI name="units">
									<DAI name="SIUnit">
										<Val>W</Val>
									</DAI>
									<DAI name="multiplier">
										<Val>M</Val>
									</DAI>
								</SDI>
								<DAI name="db">
									<Val>125</Val>
								</DAI>
								<DAI name="dbRef">
									<Val>40</Val>
								</DAI>
							</SDI>
						</DOI>
						<DOI name="VAr" desc="Q">
							<SDI name="phsA" desc="Q:A">
								<SDI name="units">
									<DAI name="SIUnit">
										<Val>VAr</Val>
									</DAI>
									<DAI name="multiplier">
										<Val>M</Val>
									</DAI>
								</SDI>
								<DAI name="db">
									<Val>125</Val>
								</DAI>
								<DAI name="dbRef">
									<Val>40</Val>
								</DAI>
							</SDI>
							<SDI name="phsB" desc="Q:B">
								<SDI name="units">
									<DAI name="SIUnit">
										<Val>VAr</Val>
									</DAI>
									<DAI name="multiplier">
										<Val>M</Val>
									</DAI>
								</SDI>
								<DAI name="db">
									<Val>125</Val>
								</DAI>
								<DAI name="dbRef">
									<Val>40</Val>
								</DAI>
							</SDI>
							<SDI name="phsC" desc="Q:C">
								<SDI name="units">
									<DAI name="SIUnit">
										<Val>VAr</Val>
									</DAI>
									<DAI name="multiplier">
										<Val>M</Val>
									</DAI>
								</SDI>
								<DAI name="db">
									<Val>125</Val>
								</DAI>
								<DAI name="dbRef">
									<Val>40</Val>
								</DAI>
							</SDI>
						</DOI>
						<DOI name="VA" desc="S">
							<SDI name="phsA" desc="S:A">
								<SDI name="units">
									<DAI name="SIUnit">
										<Val>VA</Val>
									</DAI>
									<DAI name="multiplier">
										<Val>M</Val>
									</DAI>
								</SDI>
								<DAI name="db">
									<Val>125</Val>
								</DAI>
								<DAI name="dbRef">
									<Val>40</Val>
								</DAI>
							</SDI>
							<SDI name="phsB" desc="S:B">
								<SDI name="units">
									<DAI name="SIUnit">
										<Val>VA</Val>
									</DAI>
									<DAI name="multiplier">
										<Val>M</Val>
									</DAI>
								</SDI>
								<DAI name="db">
									<Val>125</Val>
								</DAI>
								<DAI name="dbRef">
									<Val>40</Val>
								</DAI>
							</SDI>
							<SDI name="phsC" desc="S:C">
								<SDI name="units">
									<DAI name="SIUnit">
										<Val>VA</Val>
									</DAI>
									<DAI name="multiplier">
										<Val>M</Val>
									</DAI>
								</SDI>
								<DAI name="db">
									<Val>125</Val>
								</DAI>
								<DAI name="dbRef">
									<Val>40</Val>
								</DAI>
							</SDI>
						</DOI>
					</LN>
				</LDevice>
				<LDevice desc="HV side_ProMon" inst="HV_Side_ProcessMonitor">
					<Private type="Siemens-MasterId">d7b110dc-5ebd-4792-bcae-49203a48d4e6</Private>
					<LN0 lnClass="LLN0" inst="" lnType="SIEMENS_7UT85_001SIPROTEC5_LNType_LLN0_LDevice_Generic" desc="HV_Side_ProcessMonitor/LLN0">
						<Private type="Siemens-MasterId">83af6f61-2688-4d8e-b225-1bf9210ffa13</Private>
						<DOI name="Beh" desc="Behavior"/>
						<DOI name="Health" desc="Health"/>
						<DOI name="NamPlt" desc="Name plate">
							<DAI name="configRev">
								<Val>2023-06-08 08:36:18</Val>
							</DAI>
							<DAI name="ldNs">
								<Val>IEC 61850-7-4:2007B</Val>
							</DAI>
						</DOI>
						<DOI name="Mod" desc="Mode (controllable)"/>
						<DOI name="GrRef" desc="GrRef">
							<DAI name="setSrcRef">
								<Val>@HV_Side</Val>
							</DAI>
						</DOI>
					</LN0>
					<LN lnClass="ROPA" inst="1" lnType="SIPROTEC5_LNType_ROPA_OpenPoleCurrent" desc="Curr.criterion" prefix="PROM_">
						<Private type="Siemens-MasterId">c796ab29-25f3-4c91-9960-f8d308cbf89d</Private>
						<DOI name="Mod" desc="Mode (controllable)"/>
						<DOI name="Beh" desc="Behavior"/>
						<DOI name="Health" desc="Health"/>
						<DOI name="NamPlt" desc="Name plate">
							<DAI name="configRev">
								<Val>2023-06-08 08:36:18</Val>
							</DAI>
						</DOI>
						<DOI name="Inactive" desc="Inactive"/>
					</LN>
					<LN lnClass="RSSR" inst="1" lnType="SIPROTEC5_LNType_RSSR_SwitchingStateRecognition" desc="Closure detec." prefix="PROM_">
						<Private type="Siemens-MasterId">e1fe29ca-6343-43ed-98f5-13acbfe33175</Private>
						<DOI name="Mod" desc="Mode (controllable)"/>
						<DOI name="Beh" desc="Behavior"/>
						<DOI name="Health" desc="Health"/>
						<DOI name="NamPlt" desc="Name plate">
							<DAI name="configRev">
								<Val>2023-06-08 08:36:18</Val>
							</DAI>
						</DOI>
						<DOI name="DisCntrOpn" desc="&gt;Disconnector open"/>
						<DOI name="Inactive" desc="Inactive"/>
						<DOI name="SwitchOn" desc="Closure"/>
					</LN>
				</LDevice>
				<LDevice desc="HV side_HV VT" inst="HV_Side_VT">
					<Private type="Siemens-MasterId">56571275-09cb-454f-872c-3b4150ae3fae</Private>
					<LN0 lnClass="LLN0" inst="" lnType="SIEMENS_7UT85_001SIPROTEC5_LNType_LLN0_LDevice_Generic" desc="HV_Side_VT/LLN0">
						<Private type="Siemens-MasterId">28e90280-b7eb-4a39-96e2-c6c2a2e8e160</Private>
						<DOI name="Beh" desc="Behavior"/>
						<DOI name="Health" desc="Health"/>
						<DOI name="NamPlt" desc="Name plate">
							<DAI name="configRev">
								<Val>2023-06-08 08:36:18</Val>
							</DAI>
							<DAI name="ldNs">
								<Val>IEC 61850-7-4:2007B</Val>
							</DAI>
						</DOI>
						<DOI name="Mod" desc="Mode (controllable)"/>
						<DOI name="GrRef" desc="GrRef">
							<DAI name="setSrcRef">
								<Val>@HV_Side</Val>
							</DAI>
						</DOI>
					</LN0>
					<LN lnClass="PTRC" inst="1" lnType="SIPROTEC5_LNType_PTRC_FN_Str_GABC_Without_DirRouting_Op_3pol" desc="Group indicat." prefix="">
						<Private type="Siemens-MasterId">372f2ba7-6f57-4d1c-839c-c07ef98b15f6</Private>
						<DOI name="Mod" desc="Mode (controllable)"/>
						<DOI name="Beh" desc="Behavior"/>
						<DOI name="Health" desc="Health"/>
						<DOI name="NamPlt" desc="Name plate">
							<DAI name="configRev">
								<Val>2023-06-08 08:36:18</Val>
							</DAI>
						</DOI>
						<DOI name="Op" desc="Operate"/>
						<DOI name="Str" desc="Pickup"/>
					</LN>
					<LN lnClass="PTOV" inst="1" lnType="SIPROTEC5_LNType_PTOV" desc="HV_VT_Healthy" prefix="">
						<Private type="Siemens-MasterId">2a9e7013-8f43-4ba1-8746-50e99b88b9d4</Private>
						<DOI name="Mod" desc="Mode (controllable)"/>
						<DOI name="Beh" desc="Behavior"/>
						<DOI name="Health" desc="Health"/>
						<DOI name="NamPlt" desc="Name plate">
							<DAI name="configRev">
								<Val>2023-06-08 08:36:18</Val>
							</DAI>
						</DOI>
						<DOI name="Str" desc="Pickup"/>
						<DOI name="Op" desc="Operate"/>
						<DOI name="Blk" desc="&gt;Block stage"/>
						<DOI name="Inactive" desc="Inactive"/>
						<DOI name="StrAB" desc="Pickup loop AB"/>
						<DOI name="StrBC" desc="Pickup loop BC"/>
						<DOI name="StrCA" desc="Pickup loop CA"/>
						<DOI name="OpTmExp" desc="Operate delay expired"/>
					</LN>
					<LN lnClass="PTRC" inst="2" lnType="SIPROTEC5_LNType_PTRC_FN_Str_NonPhsSel_Without_DirRouting_Op_3pol" desc="Group indicat." prefix="">
						<Private type="Siemens-MasterId">9f460ef4-a8b0-4479-a173-e22705c6f3cf</Private>
						<DOI name="Mod" desc="Mode (controllable)"/>
						<DOI name="Beh" desc="Behavior"/>
						<DOI name="Health" desc="Health"/>
						<DOI name="NamPlt" desc="Name plate">
							<DAI name="configRev">
								<Val>2023-06-08 08:36:18</Val>
							</DAI>
						</DOI>
						<DOI name="Op" desc="Operate"/>
						<DOI name="Str" desc="Pickup"/>
					</LN>
					<LN lnClass="PTOV" inst="1" lnType="SIPROTEC5_LNType_V0_PTOV" desc="ResV(DefT)HV" prefix="V0x">
						<Private type="Siemens-MasterId">ecc096ec-bba9-4742-b26b-70ba9ad411f2</Private>
						<DOI name="Mod" desc="Mode (controllable)"/>
						<DOI name="Beh" desc="Behavior"/>
						<DOI name="Health" desc="Health"/>
						<DOI name="NamPlt" desc="Name plate">
							<DAI name="configRev">
								<Val>2023-06-08 08:36:18</Val>
							</DAI>
						</DOI>
						<DOI name="Str" desc="Pickup"/>
						<DOI name="Op" desc="Operate"/>
						<DOI name="Blk" desc="&gt;Block stage"/>
						<DOI name="Inactive" desc="Inactive"/>
						<DOI name="FaultyPhs" desc="Faulty phase"/>
						<DOI name="OpTmExp" desc="Operate delay expired"/>
					</LN>
				</LDevice>
				<LDevice desc="LV breaker" inst="LVCB">
					<Private type="Siemens-MasterId">b2dc53ff-3a16-49ae-8998-ffd003dfe426</Private>
					<LN0 lnClass="LLN0" inst="" lnType="SIEMENS_7UT85_001SIPROTEC5_LNType_LLN0_LDevice_Generic" desc="LVCB/LLN0">
						<Private type="Siemens-MasterId">1b71d47e-8739-46a3-8e8c-3af11f135651</Private>
						<DOI name="Beh" desc="Behavior"/>
						<DOI name="Health" desc="Health"/>
						<DOI name="NamPlt" desc="Name plate">
							<DAI name="configRev">
								<Val>2023-06-08 08:36:18</Val>
							</DAI>
							<DAI name="ldNs">
								<Val>IEC 61850-7-4:2007B</Val>
							</DAI>
						</DOI>
						<DOI name="Mod" desc="Mode (controllable)"/>
						<DOI name="GrRef" desc="GrRef">
							<DAI name="setSrcRef">
								<Val>@Application</Val>
							</DAI>
						</DOI>
					</LN0>
					<LN lnClass="GAPC" inst="1" lnType="SIPROTEC5_LNType_GAPC_DisImpedanceExcitation" desc="General" prefix="">
						<Private type="Siemens-MasterId">e39dfd32-469e-4008-8e09-0c2974b0d1fa</Private>
						<DOI name="Mod" desc="Mode (status only)"/>
						<DOI name="Beh" desc="Behavior"/>
						<DOI name="Health" desc="Health"/>
						<DOI name="NamPlt" desc="Name plate">
							<DAI name="configRev">
								<Val>2023-06-08 08:36:18</Val>
							</DAI>
						</DOI>
					</LN>
					<LN lnClass="PTRC" inst="1" lnType="SIEMENS_7UT85_001SIPROTEC5_LNType_PTRC_Trip_1_3pol" desc="Trip logic" prefix="">
						<Private type="Siemens-MasterId">03efcb14-a1ba-4d80-ae70-4a7c96a42410</Private>
						<DOI name="Mod" desc="Mode (controllable)"/>
						<DOI name="Beh" desc="Behavior"/>
						<DOI name="Health" desc="Health"/>
						<DOI name="NamPlt" desc="Name plate">
							<DAI name="configRev">
								<Val>2023-06-08 08:36:18</Val>
							</DAI>
						</DOI>
						<DOI name="Tr" desc="Trip indication"/>
						<DOI name="Op" desc="Operate"/>
						<DOI name="Str" desc="Pickup"/>
						<DOI name="Trip3pCoup" desc="1pole trip coupl.3pole"/>
						<DOI name="TrpBbpDiff" desc="Trip ind.:Busbar diff.prt."/>
						<DOI name="TrpBbpBFP" desc="Trip ind.:Busbar BFP"/>
						<DOI name="TrpBbpExt" desc="Trip ind.:Busbar ext.trip"/>
					</LN>
					<LN lnClass="XCBR" inst="4" lnType="SIEMENS_7UT85_001SIPROTEC5_LNType_XCBR_1pol_Ctl" desc="Circuit break." prefix="">
						<Private type="Siemens-MasterId">f1f3d2f5-10fe-4a7a-8ff7-8b590d46a6ad</Private>
						<DOI name="Mod" desc="Mode (controllable)"/>
						<DOI name="Beh" desc="Behavior"/>
						<DOI name="Health" desc="Health"/>
						<DOI name="NamPlt" desc="Name plate">
							<DAI name="configRev">
								<Val>2023-06-08 08:36:18</Val>
							</DAI>
						</DOI>
						<DOI name="Loc" desc="Switching auth. local"/>
						<DOI name="EEHealth" desc="External health"/>
						<DOI name="OpCnt" desc="Op.ct."/>
						<DOI name="Pos" desc="Position 3-pole">
							<SDI name="pulseConfig">
								<DAI name="cmdQual">
									<Val>pulse</Val>
								</DAI>
								<DAI name="onDur">
									<Val>500</Val>
								</DAI>
								<DAI name="offDur">
									<Val>0</Val>
								</DAI>
								<DAI name="numPls">
									<Val>1</Val>
								</DAI>
							</SDI>
						</DOI>
						<DOI name="BlkOpn" desc="Block opening"/>
						<DOI name="BlkCls" desc="Block closing"/>
						<DOI name="SumSwARs" desc="ΣI Brk.">
							<SDI name="units">
								<DAI name="SIUnit">
									<Val>A</Val>
								</DAI>
							</SDI>
							<DAI name="pulsQty">
								<Val>0.001</Val>
							</DAI>
						</DOI>
						<DOI name="POWCap" desc="PoW capability"/>
						<DOI name="SetOpCntA" desc="Set op.counter phs A">
							<DAI name="maxVal">
								<Val>999999999</Val>
							</DAI>
						</DOI>
						<DOI name="SetOpCntB" desc="Set op.counter phs B">
							<DAI name="maxVal">
								<Val>999999999</Val>
							</DAI>
						</DOI>
						<DOI name="SetOpCntC" desc="Set op.counter phs C">
							<DAI name="maxVal">
								<Val>999999999</Val>
							</DAI>
						</DOI>
						<DOI name="SetOpnHrs" desc="Set CB open hours">
							<DAI name="maxVal">
								<Val>9999999</Val>
							</DAI>
						</DOI>
						<DOI name="SetOpHrs" desc="Set operating hours">
							<DAI name="maxVal">
								<Val>9999999</Val>
							</DAI>
						</DOI>
						<DOI name="SetSwASumA" desc="Set break.cur.sum phA">
							<SDI name="SBOw">
								<SDI name="ctlVal">
									<DAI name="f"/>
								</SDI>
							</SDI>
							<SDI name="Oper">
								<SDI name="ctlVal">
									<DAI name="f"/>
								</SDI>
							</SDI>
							<SDI name="Cancel">
								<SDI name="ctlVal">
									<DAI name="f"/>
								</SDI>
							</SDI>
						</DOI>
						<DOI name="SetSwASumB" desc="Set break.cur.sum phB">
							<SDI name="SBOw">
								<SDI name="ctlVal">
									<DAI name="f"/>
								</SDI>
							</SDI>
							<SDI name="Oper">
								<SDI name="ctlVal">
									<DAI name="f"/>
								</SDI>
							</SDI>
							<SDI name="Cancel">
								<SDI name="ctlVal">
									<DAI name="f"/>
								</SDI>
							</SDI>
						</DOI>
						<DOI name="SetSwASumC" desc="Set break.cur.sum phC">
							<SDI name="SBOw">
								<SDI name="ctlVal">
									<DAI name="f"/>
								</SDI>
							</SDI>
							<SDI name="Oper">
								<SDI name="ctlVal">
									<DAI name="f"/>
								</SDI>
							</SDI>
							<SDI name="Cancel">
								<SDI name="ctlVal">
									<DAI name="f"/>
								</SDI>
							</SDI>
						</DOI>
						<DOI name="AqBlk" desc="&gt;Acquisition blocking"/>
						<DOI name="Rdy" desc="&gt;Ready"/>
						<DOI name="RsSwStat" desc="&gt;Reset switch statist."/>
						<DOI name="RsAqBlkSub" desc="&gt;Reset AcqBlk&amp;Subst"/>
						<DOI name="TripRelViaBi" desc="&gt;Trip release BBP"/>
						<DOI name="TripOpnCmd" desc="Trip/open cmd. 3-pole"/>
						<DOI name="TripCmdA" desc="Trip only pole A"/>
						<DOI name="TripCmdB" desc="Trip only pole B"/>
						<DOI name="TripCmdC" desc="Trip only pole C"/>
						<DOI name="ClsCmd" desc="Close command"/>
						<DOI name="OpnCmdA" desc="Open cmd. 1-pole phsA"/>
						<DOI name="OpnCmdB" desc="Open cmd. 1-pole phsB"/>
						<DOI name="OpnCmdC" desc="Open cmd. 1-pole phsC"/>
						<DOI name="ClsCmdA" desc="Close cmd. 1-pole phsA"/>
						<DOI name="ClsCmdB" desc="Close cmd. 1-pole phsB"/>
						<DOI name="ClsCmdC" desc="Close cmd. 1-pole phsC"/>
						<DOI name="CmdActv" desc="Command active"/>
						<DOI name="AlmSupp" desc="Alarm suppression"/>
						<DOI name="DefTr" desc="Definitive trip"/>
						<DOI name="OpCntPhA" desc="Op.ct. A"/>
						<DOI name="OpCntPhB" desc="Op.ct. B"/>
						<DOI name="OpCntPhC" desc="Op.ct. C"/>
						<DOI name="SumSwARsA" desc="ΣIA Brk.">
							<SDI name="units">
								<DAI name="SIUnit">
									<Val>A</Val>
								</DAI>
							</SDI>
							<DAI name="pulsQty">
								<Val>0.001</Val>
							</DAI>
						</DOI>
						<DOI name="SumSwARsB" desc="ΣIB Brk.">
							<SDI name="units">
								<DAI name="SIUnit">
									<Val>A</Val>
								</DAI>
							</SDI>
							<DAI name="pulsQty">
								<Val>0.001</Val>
							</DAI>
						</DOI>
						<DOI name="SumSwARsC" desc="ΣIC Brk.">
							<SDI name="units">
								<DAI name="SIUnit">
									<Val>A</Val>
								</DAI>
							</SDI>
							<DAI name="pulsQty">
								<Val>0.001</Val>
							</DAI>
						</DOI>
						<DOI name="SwAphsA" desc="Break.-current phs A">
							<SDI name="units">
								<DAI name="SIUnit">
									<Val>A</Val>
								</DAI>
							</SDI>
						</DOI>
						<DOI name="SwAphsB" desc="Break.-current phs B">
							<SDI name="units">
								<DAI name="SIUnit">
									<Val>A</Val>
								</DAI>
							</SDI>
						</DOI>
						<DOI name="SwAphsC" desc="Break.-current phs C">
							<SDI name="units">
								<DAI name="SIUnit">
									<Val>A</Val>
								</DAI>
							</SDI>
						</DOI>
						<DOI name="SwANeut" desc="Break. current 3I0/IN">
							<SDI name="units">
								<DAI name="SIUnit">
									<Val>A</Val>
								</DAI>
							</SDI>
						</DOI>
						<DOI name="SwVphsA" desc="Break. voltage phs A">
							<SDI name="units">
								<DAI name="SIUnit">
									<Val>V</Val>
								</DAI>
								<DAI name="multiplier">
									<Val>k</Val>
								</DAI>
							</SDI>
						</DOI>
						<DOI name="SwVphsB" desc="Break. voltage phs B">
							<SDI name="units">
								<DAI name="SIUnit">
									<Val>V</Val>
								</DAI>
								<DAI name="multiplier">
									<Val>k</Val>
								</DAI>
							</SDI>
						</DOI>
						<DOI name="SwVphsC" desc="Break. voltage phs C">
							<SDI name="units">
								<DAI name="SIUnit">
									<Val>V</Val>
								</DAI>
								<DAI name="multiplier">
									<Val>k</Val>
								</DAI>
							</SDI>
						</DOI>
						<DOI name="CBOpnHrs" desc="CB open hours">
							<SDI name="units">
								<DAI name="SIUnit">
									<Val>h</Val>
								</DAI>
							</SDI>
						</DOI>
						<DOI name="OpHrs" desc="Operating hours">
							<SDI name="units">
								<DAI name="SIUnit">
									<Val>h</Val>
								</DAI>
							</SDI>
						</DOI>
						<DOI name="BbpBlockDO" desc="BBP trip relays blocked"/>
						<DOI name="NoTrpRelBi" desc="no release of trip cmd"/>
						<DOI name="RxPos1" desc="RxPos1">
							<DAI name="dataNs">
								<Val>SIPROTEC5/userdefined</Val>
							</DAI>
						</DOI>
						<DOI name="RxPosA1" desc="RxPosA1">
							<DAI name="dataNs">
								<Val>SIPROTEC5/userdefined</Val>
							</DAI>
						</DOI>
						<DOI name="RxPosB1" desc="RxPosB1">
							<DAI name="dataNs">
								<Val>SIPROTEC5/userdefined</Val>
							</DAI>
						</DOI>
						<DOI name="RxPosC1" desc="RxPosC1">
							<DAI name="dataNs">
								<Val>SIPROTEC5/userdefined</Val>
							</DAI>
						</DOI>
						<DOI name="WetSup" desc="LV Wett.sup">
							<DAI name="dataNs">
								<Val>Transpower:2023</Val>
							</DAI>
						</DOI>
						<Inputs>
							<ExtRef desc="RxPos1" intAddr="RxPos1;/Pos/stVal" pServT="GOOSE" pDO="Pos" pDA="stVal"/>
							<ExtRef desc="RxPos1" intAddr="RxPos1;/Pos/q" pServT="GOOSE" pDO="Pos" pDA="q"/>
							<ExtRef desc="RxPosA1" intAddr="RxPosA1;/Pos/stVal" pServT="GOOSE" pDO="Pos" pDA="stVal"/>
							<ExtRef desc="RxPosA1" intAddr="RxPosA1;/Pos/q" pServT="GOOSE" pDO="Pos" pDA="q"/>
							<ExtRef desc="RxPosB1" intAddr="RxPosB1;/Pos/stVal" pServT="GOOSE" pDO="Pos" pDA="stVal"/>
							<ExtRef desc="RxPosB1" intAddr="RxPosB1;/Pos/q" pServT="GOOSE" pDO="Pos" pDA="q"/>
							<ExtRef desc="RxPosC1" intAddr="RxPosC1;/Pos/stVal" pServT="GOOSE" pDO="Pos" pDA="stVal"/>
							<ExtRef desc="RxPosC1" intAddr="RxPosC1;/Pos/q" pServT="GOOSE" pDO="Pos" pDA="q"/>
							<ExtRef desc="LV Wett.sup" intAddr="WetSup;/Ind/stVal" pServT="GOOSE" pDO="Ind" pDA="stVal"/>
							<ExtRef desc="LV Wett.sup" intAddr="WetSup;/Ind/q" pServT="GOOSE" pDO="Ind" pDA="q"/>
							<ExtRef desc="LV Wett.sup" intAddr="WetSup;/Ind/t" pServT="GOOSE" pDO="Ind" pDA="t"/>
						</Inputs>
					</LN>
					<LN lnClass="XCBR" inst="1" lnType="SIEMENS_7UT85_001SIPROTEC5_LNType_XCBR_1pol_PhsX" desc="CB phs A" prefix="">
						<Private type="Siemens-MasterId">92910ef0-1406-4f9c-8f98-42ae20f877af</Private>
						<DOI name="Mod" desc="Mode (controllable)"/>
						<DOI name="Beh" desc="Behavior"/>
						<DOI name="Health" desc="Health"/>
						<DOI name="NamPlt" desc="Name plate">
							<DAI name="configRev">
								<Val>2023-06-08 08:36:18</Val>
							</DAI>
						</DOI>
						<DOI name="Loc" desc="Switching auth. local"/>
						<DOI name="OpCnt" desc="Op.ct."/>
						<DOI name="Pos" desc="Cmd. with feedback"/>
						<DOI name="BlkOpn" desc="Block opening"/>
						<DOI name="BlkCls" desc="Block closing"/>
						<DOI name="SumSwARs" desc="ΣI Brk.">
							<SDI name="units">
								<DAI name="SIUnit">
									<Val>A</Val>
								</DAI>
							</SDI>
						</DOI>
					</LN>
					<LN lnClass="XCBR" inst="2" lnType="SIEMENS_7UT85_001SIPROTEC5_LNType_XCBR_1pol_PhsX" desc="CB phs B" prefix="">
						<Private type="Siemens-MasterId">34ea1ee1-17b7-4df6-854f-4752b4cd5dca</Private>
						<DOI name="Mod" desc="Mode (controllable)"/>
						<DOI name="Beh" desc="Behavior"/>
						<DOI name="Health" desc="Health"/>
						<DOI name="NamPlt" desc="Name plate">
							<DAI name="configRev">
								<Val>2023-06-08 08:36:18</Val>
							</DAI>
						</DOI>
						<DOI name="Loc" desc="Switching auth. local"/>
						<DOI name="OpCnt" desc="Op.ct."/>
						<DOI name="Pos" desc="Cmd. with feedback"/>
						<DOI name="BlkOpn" desc="Block opening"/>
						<DOI name="BlkCls" desc="Block closing"/>
						<DOI name="SumSwARs" desc="ΣI Brk.">
							<SDI name="units">
								<DAI name="SIUnit">
									<Val>A</Val>
								</DAI>
							</SDI>
						</DOI>
					</LN>
					<LN lnClass="XCBR" inst="3" lnType="SIEMENS_7UT85_001SIPROTEC5_LNType_XCBR_1pol_PhsX" desc="CB phs C" prefix="">
						<Private type="Siemens-MasterId">fc353a7f-1ccd-4a43-86f1-5b93a617b654</Private>
						<DOI name="Mod" desc="Mode (controllable)"/>
						<DOI name="Beh" desc="Behavior"/>
						<DOI name="Health" desc="Health"/>
						<DOI name="NamPlt" desc="Name plate">
							<DAI name="configRev">
								<Val>2023-06-08 08:36:18</Val>
							</DAI>
						</DOI>
						<DOI name="Loc" desc="Switching auth. local"/>
						<DOI name="OpCnt" desc="Op.ct."/>
						<DOI name="Pos" desc="Cmd. with feedback"/>
						<DOI name="BlkOpn" desc="Block opening"/>
						<DOI name="BlkCls" desc="Block closing"/>
						<DOI name="SumSwARs" desc="ΣI Brk.">
							<SDI name="units">
								<DAI name="SIUnit">
									<Val>A</Val>
								</DAI>
							</SDI>
						</DOI>
					</LN>
					<LN lnClass="GAPC" inst="2" lnType="SIEMENS_7UT85_001SIPROTEC5_LNType_GAPC_ManualClose" desc="Manual close" prefix="">
						<Private type="Siemens-MasterId">0787527f-08f8-455f-97b4-570ebbfd4e50</Private>
						<DOI name="Mod" desc="Mode (controllable)"/>
						<DOI name="Beh" desc="Behavior"/>
						<DOI name="Health" desc="Health"/>
						<DOI name="NamPlt" desc="Name plate">
							<DAI name="configRev">
								<Val>2023-06-08 08:36:18</Val>
							</DAI>
						</DOI>
						<DOI name="Blk" desc="&gt;Block manual close"/>
						<DOI name="Input" desc="&gt;Input"/>
						<DOI name="Detected" desc="Detected"/>
					</LN>
					<LN lnClass="GAPC" inst="1" lnType="SIEMENS_7UT85_001SIPROTEC5_LNType_ResetLed" desc="Reset LED Group" prefix="RSLED">
						<Private type="Siemens-MasterId">f5367dfe-6d02-4416-9cc6-2139d09e85c2</Private>
						<DOI name="Mod" desc="Mode (controllable)"/>
						<DOI name="Beh" desc="Behavior"/>
						<DOI name="Health" desc="Health"/>
						<DOI name="NamPlt" desc="Name plate">
							<DAI name="configRev">
								<Val>2023-06-08 08:36:18</Val>
							</DAI>
						</DOI>
						<DOI name="ResetIn" desc="&gt;LED reset"/>
						<DOI name="LedTstOut" desc="LED have been reset"/>
						<DOI name="ResetCtl" desc="Reset LEDs"/>
					</LN>
					<LN lnClass="CSWI" inst="1" lnType="SIEMENS_7UT85_001SIPROTEC5_LNType_CSWI" desc="Control" prefix="">
						<Private type="Siemens-MasterId">abb005f9-c28a-42d1-bd47-b432cdcf691e</Private>
						<Private type="Siemens-LN-Dependency"/>
						<DOI name="Mod" desc="Mode (controllable)"/>
						<DOI name="Beh" desc="Behavior"/>
						<DOI name="Health" desc="Health"/>
						<DOI name="NamPlt" desc="Name plate">
							<DAI name="configRev">
								<Val>2023-06-08 08:36:18</Val>
							</DAI>
						</DOI>
						<DOI name="Loc" desc="Switching auth. local"/>
						<DOI name="Pos" desc="Cmd. with feedback">
							<DAI name="ctlModel">
								<Val>sbo-with-enhanced-security</Val>
							</DAI>
							<DAI name="sboTimeout">
								<Val>30000</Val>
							</DAI>
							<DAI name="operTimeout">
								<Val>1000</Val>
							</DAI>
						</DOI>
						<DOI name="LocKey" desc="Sw.author. key switch"/>
						<DOI name="LocSta" desc="Switching auth. station">
							<DAI name="ctlModel">
								<Val>status-only</Val>
							</DAI>
						</DOI>
						<DOI name="SwAuth" desc="Switching authority"/>
						<DOI name="SwMod" desc="Switching mode"/>
						<DOI name="SwAuthEna1" desc="Enable sw. auth. 1">
							<DAI name="operTimeout">
								<Val>1000</Val>
							</DAI>
						</DOI>
						<DOI name="SwAuthEna2" desc="Enable sw. auth. 2">
							<DAI name="operTimeout">
								<Val>1000</Val>
							</DAI>
						</DOI>
						<DOI name="SwAuthEna3" desc="Enable sw. auth. 3">
							<DAI name="operTimeout">
								<Val>1000</Val>
							</DAI>
						</DOI>
						<DOI name="SwAuthEna4" desc="Enable sw. auth. 4">
							<DAI name="operTimeout">
								<Val>1000</Val>
							</DAI>
						</DOI>
						<DOI name="SwAuthEna5" desc="Enable sw. auth. 5">
							<DAI name="operTimeout">
								<Val>1000</Val>
							</DAI>
						</DOI>
						<DOI name="OpnCmd" desc="CB Open Cmd">
							<DAI name="dataNs">
								<Val>Transpower:2023</Val>
							</DAI>
						</DOI>
						<DOI name="ClsCmd" desc="CB Close Cmd">
							<DAI name="dataNs">
								<Val>Transpower:2023</Val>
							</DAI>
						</DOI>
					</LN>
					<LN lnClass="CILO" inst="1" lnType="SIPROTEC5_LNType_CILO" desc="Interlocking" prefix="">
						<Private type="Siemens-MasterId">f620d6fa-f298-40e2-8bff-2236314e2dee</Private>
						<DOI name="Mod" desc="Mode (controllable)"/>
						<DOI name="Beh" desc="Behavior"/>
						<DOI name="Health" desc="Health"/>
						<DOI name="NamPlt" desc="Name plate">
							<DAI name="configRev">
								<Val>2023-06-08 08:36:18</Val>
							</DAI>
						</DOI>
						<DOI name="EnaOpn" desc="&gt;Enable opening"/>
						<DOI name="EnaCls" desc="&gt;Enable closing"/>
						<DOI name="EnaOpnFix" desc="&gt;Enable opening(fixed)"/>
						<DOI name="EnaClsFix" desc="&gt;Enable closing (fixed)"/>
					</LN>
					<LN lnClass="GAPC" inst="1" lnType="SIPROTEC5_LNType_GAPC_CBT_1pol" desc="CB test" prefix="CBT_">
						<Private type="Siemens-MasterId">7f23276c-13ce-47f6-9ab8-3ee214b14342</Private>
						<DOI name="Mod" desc="Mode (controllable)"/>
						<DOI name="Beh" desc="Behavior"/>
						<DOI name="Health" desc="Health"/>
						<DOI name="NamPlt" desc="Name plate">
							<DAI name="configRev">
								<Val>2023-06-08 08:36:18</Val>
							</DAI>
						</DOI>
						<DOI name="StrTst3p" desc="3-pole open-close">
							<DAI name="operTimeout">
								<Val>6100</Val>
							</DAI>
						</DOI>
						<DOI name="StrTstPhsA" desc="Pole A open-close">
							<DAI name="operTimeout">
								<Val>6100</Val>
							</DAI>
						</DOI>
						<DOI name="StrTstPhsB" desc="Pole B open-close">
							<DAI name="operTimeout">
								<Val>6100</Val>
							</DAI>
						</DOI>
						<DOI name="StrTstPhsC" desc="Pole C open-close">
							<DAI name="operTimeout">
								<Val>6100</Val>
							</DAI>
						</DOI>
						<DOI name="TstExec" desc="Test execution"/>
						<DOI name="TstTr" desc="Trip command issued"/>
						<DOI name="TstCls" desc="Close command issued"/>
						<DOI name="TstCnc" desc="Test canceled"/>
					</LN>
					<LN lnClass="RBRF" inst="1" lnType="SIPROTEC5_LNType_RBRF_Adv_1_3pol_1" desc="CBFail" prefix="">
						<Private type="Siemens-MasterId">ba76f30d-38a9-4539-af00-e1144c0f7aac</Private>
						<DOI name="Mod" desc="Mode (controllable)"/>
						<DOI name="Beh" desc="Behavior"/>
						<DOI name="Health" desc="Health"/>
						<DOI name="NamPlt" desc="Name plate">
							<DAI name="configRev">
								<Val>2023-06-08 08:36:18</Val>
							</DAI>
						</DOI>
						<DOI name="Str" desc="Pickup"/>
						<DOI name="OpEx" desc="Trip T2"/>
						<DOI name="OpIn" desc="Retrip T1"/>
						<DOI name="Blk" desc="&gt;Block function"/>
						<DOI name="ThreshEF" desc="&gt;Threshold sensitive"/>
						<DOI name="Init3p" desc="&gt;Start 3-pole"/>
						<DOI name="InitPhA" desc="&gt;Start pole A"/>
						<DOI name="InitPhB" desc="&gt;Start pole B"/>
						<DOI name="InitPhC" desc="&gt;Start pole C"/>
						<DOI name="BFRel1p" desc="&gt;Release 1-pole"/>
						<DOI name="BFRel3p" desc="&gt;Release 3-pole"/>
						<DOI name="CBFaulty" desc="&gt;CB defect"/>
						<DOI name="Initdef3p" desc="Fail. BI 'Start 3pole'"/>
						<DOI name="InitdefPhA" desc="Fail. BI 'Start poleA'"/>
						<DOI name="InitdefPhB" desc="Fail. BI 'Start poleB'"/>
						<DOI name="InitdefPhC" desc="Fail. BI 'Start poleC'"/>
						<DOI name="RelCBdef1p" desc="Fail. BI 'release 1p.'"/>
						<DOI name="RelCBdef3p" desc="Fail. BI 'release 3p.'"/>
						<DOI name="OpCBdef3p" desc="Fail. no BI release 3p"/>
						<DOI name="OpCBdefPhA" desc="Fail. no BI rel.pole A"/>
						<DOI name="OpCBdefPhB" desc="Fail. no BI rel.pole B"/>
						<DOI name="OpCBdefPhC" desc="Fail. no BI rel.pole C"/>
						<DOI name="BFInitNR" desc="BI start routing miss."/>
						<DOI name="AuxCritNR" desc="BI aux.ct. rout. miss."/>
						<DOI name="Inactive" desc="Inactive"/>
						<DOI name="ImmOp" desc="Immediate Operate"/>
						<DOI name="CBFailPole" desc="CB failure pole"/>
						<DOI name="DlyByInvMV" desc="Oper. del. by inv. meas."/>
						<DOI name="RxInit3p1" desc="RxInit3p1">
							<DAI name="dataNs">
								<Val>SIPROTEC5/userdefined</Val>
							</DAI>
						</DOI>
						<Inputs>
							<ExtRef desc="RxInit3p1" intAddr="RxInit3p1;/Ind/stVal" pServT="GOOSE" pDO="Ind" pDA="stVal"/>
							<ExtRef desc="RxInit3p1" intAddr="RxInit3p1;/Ind/q" pServT="GOOSE" pDO="Ind" pDA="q"/>
						</Inputs>
					</LN>
				</LDevice>
				<LDevice desc="LV breaker_FdOMV" inst="LVCB_Fundamental">
					<Private type="Siemens-MasterId">d65bda4d-2f2d-4def-a8bd-a3c7e8b5190e</Private>
					<LN0 lnClass="LLN0" inst="" lnType="SIEMENS_7UT85_001SIPROTEC5_LNType_LLN0_LDevice_Generic" desc="LVCB_Fundamental/LLN0">
						<Private type="Siemens-MasterId">ad6e4bca-fc86-42b3-8fe1-ba98ef7516f5</Private>
						<DOI name="Beh" desc="Behavior"/>
						<DOI name="Health" desc="Health"/>
						<DOI name="NamPlt" desc="Name plate">
							<DAI name="configRev">
								<Val>2023-06-08 08:36:18</Val>
							</DAI>
							<DAI name="ldNs">
								<Val>IEC 61850-7-4:2007B</Val>
							</DAI>
						</DOI>
						<DOI name="Mod" desc="Mode (controllable)"/>
						<DOI name="GrRef" desc="GrRef">
							<DAI name="setSrcRef">
								<Val>@LVCB</Val>
							</DAI>
						</DOI>
					</LN0>
					<LN lnClass="MMXU" inst="1" lnType="SIPROTEC5_LNType_MMXU_OpMeas_Fund_3ph_Pres" desc="Fundam" prefix="FPRE_">
						<Private type="Siemens-MasterId">4997a399-0653-43a6-8c18-9baa3a4b6908</Private>
						<DOI name="Mod" desc="Mode (controllable)"/>
						<DOI name="Beh" desc="Behavior"/>
						<DOI name="Health" desc="Health"/>
						<DOI name="NamPlt" desc="Name plate">
							<DAI name="configRev">
								<Val>2023-06-08 08:36:18</Val>
							</DAI>
						</DOI>
						<DOI name="PPV" desc="Vpp">
							<SDI name="phsAB" desc="Vpp:AB">
								<SDI name="units">
									<DAI name="SIUnit">
										<Val>V</Val>
									</DAI>
									<DAI name="multiplier">
										<Val>k</Val>
									</DAI>
								</SDI>
								<DAI name="db">
									<Val>2000</Val>
								</DAI>
								<DAI name="dbRef">
									<Val>33</Val>
								</DAI>
							</SDI>
							<SDI name="phsBC" desc="Vpp:BC">
								<SDI name="units">
									<DAI name="SIUnit">
										<Val>V</Val>
									</DAI>
									<DAI name="multiplier">
										<Val>k</Val>
									</DAI>
								</SDI>
								<DAI name="db">
									<Val>2000</Val>
								</DAI>
								<DAI name="dbRef">
									<Val>33</Val>
								</DAI>
							</SDI>
							<SDI name="phsCA" desc="Vpp:CA">
								<SDI name="units">
									<DAI name="SIUnit">
										<Val>V</Val>
									</DAI>
									<DAI name="multiplier">
										<Val>k</Val>
									</DAI>
								</SDI>
								<DAI name="db">
									<Val>2000</Val>
								</DAI>
								<DAI name="dbRef">
									<Val>33</Val>
								</DAI>
							</SDI>
						</DOI>
						<DOI name="PhV" desc="Vph">
							<SDI name="phsA" desc="Vph:A">
								<SDI name="units">
									<DAI name="SIUnit">
										<Val>V</Val>
									</DAI>
									<DAI name="multiplier">
										<Val>k</Val>
									</DAI>
								</SDI>
								<DAI name="db">
									<Val>2000</Val>
								</DAI>
								<DAI name="dbRef">
									<Val>19.0531178</Val>
								</DAI>
							</SDI>
							<SDI name="phsB" desc="Vph:B">
								<SDI name="units">
									<DAI name="SIUnit">
										<Val>V</Val>
									</DAI>
									<DAI name="multiplier">
										<Val>k</Val>
									</DAI>
								</SDI>
								<DAI name="db">
									<Val>2000</Val>
								</DAI>
								<DAI name="dbRef">
									<Val>19.0531178</Val>
								</DAI>
							</SDI>
							<SDI name="phsC" desc="Vph:C">
								<SDI name="units">
									<DAI name="SIUnit">
										<Val>V</Val>
									</DAI>
									<DAI name="multiplier">
										<Val>k</Val>
									</DAI>
								</SDI>
								<DAI name="db">
									<Val>2000</Val>
								</DAI>
								<DAI name="dbRef">
									<Val>19.0531178</Val>
								</DAI>
							</SDI>
							<SDI name="res" desc="Vph:res">
								<SDI name="units">
									<DAI name="SIUnit">
										<Val>V</Val>
									</DAI>
								</SDI>
								<DAI name="db">
									<Val>20000</Val>
								</DAI>
								<DAI name="dbRef">
									<Val>19.0531178</Val>
								</DAI>
							</SDI>
						</DOI>
						<DOI name="A" desc="Iph">
							<SDI name="phsA" desc="Iph:A">
								<SDI name="units">
									<DAI name="SIUnit">
										<Val>A</Val>
									</DAI>
								</SDI>
								<DAI name="db">
									<Val>10000</Val>
								</DAI>
								<DAI name="dbRef">
									<Val>2400</Val>
								</DAI>
							</SDI>
							<SDI name="phsB" desc="Iph:B">
								<SDI name="units">
									<DAI name="SIUnit">
										<Val>A</Val>
									</DAI>
								</SDI>
								<DAI name="db">
									<Val>10000</Val>
								</DAI>
								<DAI name="dbRef">
									<Val>2400</Val>
								</DAI>
							</SDI>
							<SDI name="phsC" desc="Iph:C">
								<SDI name="units">
									<DAI name="SIUnit">
										<Val>A</Val>
									</DAI>
								</SDI>
								<DAI name="db">
									<Val>10000</Val>
								</DAI>
								<DAI name="dbRef">
									<Val>2400</Val>
								</DAI>
							</SDI>
							<SDI name="res" desc="Iph:res">
								<SDI name="units">
									<DAI name="SIUnit">
										<Val>A</Val>
									</DAI>
								</SDI>
								<DAI name="db">
									<Val>100000</Val>
								</DAI>
								<DAI name="dbRef">
									<Val>2400</Val>
								</DAI>
							</SDI>
						</DOI>
						<DOI name="VneutC" desc="VN">
							<SDI name="units">
								<DAI name="SIUnit">
									<Val>V</Val>
								</DAI>
								<DAI name="multiplier">
									<Val>k</Val>
								</DAI>
							</SDI>
							<DAI name="db">
								<Val>2000</Val>
							</DAI>
							<DAI name="dbRef">
								<Val>19.0531178</Val>
							</DAI>
						</DOI>
						<DOI name="AneutC" desc="IN">
							<SDI name="units">
								<DAI name="SIUnit">
									<Val>A</Val>
								</DAI>
							</SDI>
							<DAI name="db">
								<Val>10000</Val>
							</DAI>
							<DAI name="dbRef">
								<Val>2400</Val>
							</DAI>
						</DOI>
					</LN>
				</LDevice>
				<LDevice desc="LV side" inst="LV_Side">
					<Private type="Siemens-MasterId">0f2341cb-962b-4820-beda-ae39dd7e3b29</Private>
					<LN0 lnClass="LLN0" inst="" lnType="SIEMENS_7UT85_001SIPROTEC5_LNType_LLN0_LDevice_Generic" desc="LV_Side/LLN0">
						<Private type="Siemens-MasterId">d94f5a4e-ab80-4055-93a9-bc50db35d659</Private>
						<DOI name="Beh" desc="Behavior"/>
						<DOI name="Health" desc="Health"/>
						<DOI name="NamPlt" desc="Name plate">
							<DAI name="configRev">
								<Val>2023-06-08 08:36:18</Val>
							</DAI>
							<DAI name="ldNs">
								<Val>IEC 61850-7-4:2007B</Val>
							</DAI>
						</DOI>
						<DOI name="Mod" desc="Mode (controllable)"/>
						<DOI name="GrRef" desc="GrRef">
							<DAI name="setSrcRef">
								<Val>@Application</Val>
							</DAI>
						</DOI>
					</LN0>
					<LN lnClass="YPTR" inst="1" lnType="SIPROTEC5_LNType_YPTR_FB0_FGTransformerSide" desc="General" prefix="STR_">
						<Private type="Siemens-MasterId">07300c47-3776-4b45-af50-00dee05b86a1</Private>
						<DOI name="Mod" desc="Mode (controllable)"/>
						<DOI name="Beh" desc="Behavior"/>
						<DOI name="Health" desc="Health"/>
						<DOI name="NamPlt" desc="Name plate">
							<DAI name="configRev">
								<Val>2023-06-08 08:36:18</Val>
							</DAI>
						</DOI>
					</LN>
					<LN lnClass="PTRC" inst="1" lnType="SIEMENS_7UT85_001SIPROTEC5_LNType_PTRC_FG_Line_3ph" desc="Group indicat." prefix="">
						<Private type="Siemens-MasterId">20461b50-3da8-49b4-abb7-70f0ea876010</Private>
						<DOI name="Mod" desc="Mode (controllable)"/>
						<DOI name="Beh" desc="Behavior"/>
						<DOI name="Health" desc="Health"/>
						<DOI name="NamPlt" desc="Name plate">
							<DAI name="configRev">
								<Val>2023-06-08 08:36:18</Val>
							</DAI>
						</DOI>
						<DOI name="Op" desc="Operate"/>
						<DOI name="Str" desc="Pickup"/>
					</LN>
					<LN lnClass="GAPC" inst="1" lnType="SIEMENS_7UT85_001SIPROTEC5_LNType_ResetLed" desc="Reset LED Group" prefix="RSLED">
						<Private type="Siemens-MasterId">1edcf830-b66d-47ca-8d79-37d3d0ee4396</Private>
						<DOI name="Mod" desc="Mode (controllable)"/>
						<DOI name="Beh" desc="Behavior"/>
						<DOI name="Health" desc="Health"/>
						<DOI name="NamPlt" desc="Name plate">
							<DAI name="configRev">
								<Val>2023-06-08 08:36:18</Val>
							</DAI>
						</DOI>
						<DOI name="ResetIn" desc="&gt;LED reset"/>
						<DOI name="LedTstOut" desc="LED have been reset"/>
						<DOI name="ResetCtl" desc="Reset LEDs"/>
					</LN>
					<LN lnClass="PHAR" inst="1" lnType="SIPROTEC5_LNType_PHAR" desc="Inrush detect." prefix="">
						<Private type="Siemens-MasterId">28279c39-5b80-493c-adab-460ced47de3e</Private>
						<DOI name="Mod" desc="Mode (controllable)"/>
						<DOI name="Beh" desc="Behavior"/>
						<DOI name="Health" desc="Health"/>
						<DOI name="NamPlt" desc="Name plate">
							<DAI name="configRev">
								<Val>2023-06-08 08:36:18</Val>
							</DAI>
						</DOI>
						<DOI name="Str" desc="Pickup"/>
						<DOI name="Blk" desc="&gt;Block stage"/>
						<DOI name="Inactive" desc="Inactive"/>
						<DOI name="Irs2HaDetA" desc="2.harmonic phase A"/>
						<DOI name="Irs2HaDetB" desc="2.harmonic phase B"/>
						<DOI name="Irs2HaDetC" desc="2.harmonic phase C"/>
						<DOI name="IrsCWADet" desc="CWA"/>
						<DOI name="IrsCrsBlk" desc="Cross-blocking"/>
					</LN>
					<LN lnClass="SFFM" inst="1" lnType="SIPROTEC5_LNType_SFFM_1" desc="Mes.v.fail.det" prefix="">
						<Private type="Siemens-MasterId">f56eb285-fa22-4bee-a33b-b15627f753f7</Private>
						<DOI name="Mod" desc="Mode (controllable)"/>
						<DOI name="Beh" desc="Behavior"/>
						<DOI name="Health" desc="Health"/>
						<DOI name="NamPlt" desc="Name plate">
							<DAI name="configRev">
								<Val>2023-06-08 08:36:18</Val>
							</DAI>
						</DOI>
						<DOI name="Blk" desc="&gt;Block function"/>
						<DOI name="Inactive" desc="Inactive"/>
						<DOI name="FuseFail" desc="Alarm"/>
						<DOI name="TripolFail" desc="3ph.failure-alarm"/>
						<DOI name="SO3polFail" desc="SO 3ph.failure-alarm"/>
						<DOI name="AsymDlFail" desc="Asym.fail.-alarm"/>
						<DOI name="AsymFail" desc="Asym.fail.-inst.alarm"/>
						<DOI name="LVVTSup" desc="LV VT Supervision">
							<DAI name="dataNs">
								<Val>Transpower:2023</Val>
							</DAI>
						</DOI>
					</LN>
					<LN lnClass="PDIF" inst="1" lnType="SIPROTEC5_LNType_REF" desc="Dif(EF)LV" prefix="REF_">
						<Private type="Siemens-MasterId">6ec6ee12-be27-450c-bf0e-82c97851c802</Private>
						<DOI name="Mod" desc="Mode (controllable)"/>
						<DOI name="Beh" desc="Behavior"/>
						<DOI name="Health" desc="Health"/>
						<DOI name="NamPlt" desc="Name plate">
							<DAI name="configRev">
								<Val>2023-06-08 08:36:18</Val>
							</DAI>
						</DOI>
						<DOI name="Str" desc="Pickup"/>
						<DOI name="Op" desc="Operate"/>
						<DOI name="BlkFct" desc="&gt;Block function"/>
						<DOI name="Inactive" desc="Inactive"/>
						<DOI name="OpTmExp" desc="Operate delay expired"/>
						<DOI name="BlkDirDet" desc="Block by direct. det."/>
						<DOI name="REFD" desc="I REF,operate">
							<DAI name="db">
								<Val>10000</Val>
							</DAI>
						</DOI>
						<DOI name="REFS" desc="I Angle,REF">
							<DAI name="db">
								<Val>10000</Val>
							</DAI>
						</DOI>
						<DOI name="REFDOp" desc="I REF,Trip operate"/>
						<DOI name="REFSOp" desc="I angle,REF operate"/>
						<DOI name="DifAClc1ph" desc="I diff.">
							<DAI name="db">
								<Val>10000</Val>
							</DAI>
						</DOI>
						<DOI name="RstA1ph" desc="I restr.">
							<DAI name="db">
								<Val>10000</Val>
							</DAI>
						</DOI>
					</LN>
				</LDevice>
				<LDevice desc="LV side_LVCB Trip" inst="LV_Side_CB_Trip">
					<Private type="Siemens-MasterId">4e01b2c4-6a4b-4379-abd0-ca1757684af3</Private>
					<LN0 lnClass="LLN0" inst="" lnType="SIEMENS_7UT85_001SIPROTEC5_LNType_LLN0_LDevice_Generic" desc="LV_Side_CB_Trip/LLN0">
						<Private type="Siemens-MasterId">78cc3a7f-2664-4205-ae2d-8ff416f88a83</Private>
						<DOI name="Beh" desc="Behavior"/>
						<DOI name="Health" desc="Health"/>
						<DOI name="NamPlt" desc="Name plate">
							<DAI name="configRev">
								<Val>2023-06-08 08:36:18</Val>
							</DAI>
							<DAI name="ldNs">
								<Val>IEC 61850-7-4:2007B</Val>
							</DAI>
						</DOI>
						<DOI name="Mod" desc="Mode (controllable)"/>
						<DOI name="GrRef" desc="GrRef">
							<DAI name="setSrcRef">
								<Val>@LV_Side</Val>
							</DAI>
						</DOI>
					</LN0>
					<LN lnClass="PSCH" inst="1" lnType="SIEMENS_7UT85_001SIPROTEC5_LNType_PSCH_ExtTrip_1" desc="Stage 1" prefix="EXT_">
						<Private type="Siemens-MasterId">256baf05-fb2b-487a-ac33-2dea9fb96173</Private>
						<DOI name="Mod" desc="Mode (controllable)"/>
						<DOI name="Beh" desc="Behavior"/>
						<DOI name="Health" desc="Health"/>
						<DOI name="NamPlt" desc="Name plate">
							<DAI name="configRev">
								<Val>2023-06-08 08:36:18</Val>
							</DAI>
						</DOI>
						<DOI name="Str" desc="Pickup"/>
						<DOI name="Op" desc="Operate"/>
						<DOI name="Blk" desc="&gt;Block function"/>
						<DOI name="ExtIn" desc="&gt;External trip"/>
						<DOI name="Inactive" desc="Inactive"/>
						<DOI name="OpTmExp" desc="Operate delay expired"/>
					</LN>
				</LDevice>
				<LDevice desc="LV side neutral_EFPermit" inst="LV_Side_EFPermit">
					<Private type="Siemens-MasterId">3d542508-b5fe-408c-8ffb-3c16b28a3060</Private>
					<LN0 lnClass="LLN0" inst="" lnType="SIEMENS_7UT85_001SIPROTEC5_LNType_LLN0_LDevice_Generic" desc="LV_Side_EFPermit/LLN0">
						<Private type="Siemens-MasterId">0cdb0a98-6851-4816-9fb5-0837cdb03cac</Private>
						<DOI name="Beh" desc="Behavior"/>
						<DOI name="Health" desc="Health"/>
						<DOI name="NamPlt" desc="Name plate">
							<DAI name="configRev">
								<Val>2023-06-08 08:36:18</Val>
							</DAI>
							<DAI name="ldNs">
								<Val>IEC 61850-7-4:2007B</Val>
							</DAI>
						</DOI>
						<DOI name="Mod" desc="Mode (controllable)"/>
						<DOI name="GrRef" desc="GrRef">
							<DAI name="setSrcRef">
								<Val>@LV_Side_N</Val>
							</DAI>
						</DOI>
					</LN0>
					<LN lnClass="PTRC" inst="1" lnType="SIPROTEC5_LNType_PTRC_FN_Str_NonPhsSel_Without_DirRouting_Op_3pol" desc="Group indicat." prefix="">
						<Private type="Siemens-MasterId">68a81bcc-e0dd-4f16-8ff2-5c863814b8d6</Private>
						<DOI name="Mod" desc="Mode (controllable)"/>
						<DOI name="Beh" desc="Behavior"/>
						<DOI name="Health" desc="Health"/>
						<DOI name="NamPlt" desc="Name plate">
							<DAI name="configRev">
								<Val>2023-06-08 08:36:18</Val>
							</DAI>
						</DOI>
						<DOI name="Op" desc="Operate"/>
						<DOI name="Str" desc="Pickup"/>
					</LN>
					<LN lnClass="PTOC" inst="1" lnType="SIPROTEC5_LNType_PTOC_1ph_DOCP" desc="EF(Permit)LV" prefix="ID_">
						<Private type="Siemens-MasterId">18b5625f-251c-4fbe-8d81-27c6922ab9b8</Private>
						<DOI name="Mod" desc="Mode (controllable)"/>
						<DOI name="Beh" desc="Behavior"/>
						<DOI name="Health" desc="Health"/>
						<DOI name="NamPlt" desc="Name plate">
							<DAI name="configRev">
								<Val>2023-06-08 08:36:18</Val>
							</DAI>
						</DOI>
						<DOI name="Str" desc="Pickup"/>
						<DOI name="Op" desc="Operate"/>
						<DOI name="BlkStg" desc="&gt;Block stage"/>
						<DOI name="BlkOpDlTm" desc="&gt;Block delay &amp; op."/>
						<DOI name="Inactive" desc="Inactive"/>
						<DOI name="InrshBlkOp" desc="Inrush blocks operate"/>
						<DOI name="OpTmExp" desc="Operate delay expired"/>
					</LN>
				</LDevice>
				<LDevice desc="LV side_FdSym" inst="LV_Side_FundSymComp">
					<Private type="Siemens-MasterId">9e3bd2a4-3f72-425b-b750-73f425ff72a2</Private>
					<LN0 lnClass="LLN0" inst="" lnType="SIEMENS_7UT85_001SIPROTEC5_LNType_LLN0_LDevice_Generic" desc="LV_Side_FundSymComp/LLN0">
						<Private type="Siemens-MasterId">051666b9-b0aa-4526-bc46-7a74f0eb75ff</Private>
						<DOI name="Beh" desc="Behavior"/>
						<DOI name="Health" desc="Health"/>
						<DOI name="NamPlt" desc="Name plate">
							<DAI name="configRev">
								<Val>2023-06-08 08:36:18</Val>
							</DAI>
							<DAI name="ldNs">
								<Val>IEC 61850-7-4:2007B</Val>
							</DAI>
						</DOI>
						<DOI name="Mod" desc="Mode (controllable)"/>
						<DOI name="GrRef" desc="GrRef">
							<DAI name="setSrcRef">
								<Val>@LV_Side</Val>
							</DAI>
						</DOI>
					</LN0>
					<LN lnClass="MMXU" inst="1" lnType="SIPROTEC5_LNType_MMXU_OpMeas_Fund_3ph_Pres" desc="Fundam" prefix="FPRE_">
						<Private type="Siemens-MasterId">0fb35698-a1b6-40e4-a117-2f9fd4685f78</Private>
						<DOI name="Mod" desc="Mode (controllable)"/>
						<DOI name="Beh" desc="Behavior"/>
						<DOI name="Health" desc="Health"/>
						<DOI name="NamPlt" desc="Name plate">
							<DAI name="configRev">
								<Val>2023-06-08 08:36:18</Val>
							</DAI>
						</DOI>
						<DOI name="PPV" desc="Vpp">
							<SDI name="phsAB" desc="Vpp:AB">
								<SDI name="units">
									<DAI name="SIUnit">
										<Val>V</Val>
									</DAI>
									<DAI name="multiplier">
										<Val>k</Val>
									</DAI>
								</SDI>
								<DAI name="db">
									<Val>23</Val>
								</DAI>
								<DAI name="dbAng">
									<Val>1000</Val>
								</DAI>
								<DAI name="dbRef">
									<Val>33</Val>
								</DAI>
							</SDI>
							<SDI name="phsBC" desc="Vpp:BC">
								<SDI name="units">
									<DAI name="SIUnit">
										<Val>V</Val>
									</DAI>
									<DAI name="multiplier">
										<Val>k</Val>
									</DAI>
								</SDI>
								<DAI name="db">
									<Val>23</Val>
								</DAI>
								<DAI name="dbAng">
									<Val>1000</Val>
								</DAI>
								<DAI name="dbRef">
									<Val>33</Val>
								</DAI>
							</SDI>
							<SDI name="phsCA" desc="Vpp:CA">
								<SDI name="units">
									<DAI name="SIUnit">
										<Val>V</Val>
									</DAI>
									<DAI name="multiplier">
										<Val>k</Val>
									</DAI>
								</SDI>
								<DAI name="db">
									<Val>23</Val>
								</DAI>
								<DAI name="dbAng">
									<Val>1000</Val>
								</DAI>
								<DAI name="dbRef">
									<Val>33</Val>
								</DAI>
							</SDI>
						</DOI>
						<DOI name="PhV" desc="Vph">
							<SDI name="phsA" desc="Vph:A">
								<SDI name="units">
									<DAI name="SIUnit">
										<Val>V</Val>
									</DAI>
									<DAI name="multiplier">
										<Val>k</Val>
									</DAI>
								</SDI>
								<DAI name="db">
									<Val>23</Val>
								</DAI>
								<DAI name="dbAng">
									<Val>1000</Val>
								</DAI>
								<DAI name="dbRef">
									<Val>19.0531178</Val>
								</DAI>
							</SDI>
							<SDI name="phsB" desc="Vph:B">
								<SDI name="units">
									<DAI name="SIUnit">
										<Val>V</Val>
									</DAI>
									<DAI name="multiplier">
										<Val>k</Val>
									</DAI>
								</SDI>
								<DAI name="db">
									<Val>23</Val>
								</DAI>
								<DAI name="dbAng">
									<Val>1000</Val>
								</DAI>
								<DAI name="dbRef">
									<Val>19.0531178</Val>
								</DAI>
							</SDI>
							<SDI name="phsC" desc="Vph:C">
								<SDI name="units">
									<DAI name="SIUnit">
										<Val>V</Val>
									</DAI>
									<DAI name="multiplier">
										<Val>k</Val>
									</DAI>
								</SDI>
								<DAI name="db">
									<Val>23</Val>
								</DAI>
								<DAI name="dbAng">
									<Val>1000</Val>
								</DAI>
								<DAI name="dbRef">
									<Val>19.0531178</Val>
								</DAI>
							</SDI>
							<SDI name="res" desc="Vph:res">
								<SDI name="units">
									<DAI name="SIUnit">
										<Val>V</Val>
									</DAI>
								</SDI>
								<DAI name="db">
									<Val>23</Val>
								</DAI>
								<DAI name="dbAng">
									<Val>1000</Val>
								</DAI>
								<DAI name="dbRef">
									<Val>19.0531178</Val>
								</DAI>
							</SDI>
						</DOI>
						<DOI name="A" desc="Iph">
							<SDI name="phsA" desc="Iph:A">
								<SDI name="units">
									<DAI name="SIUnit">
										<Val>A</Val>
									</DAI>
								</SDI>
								<DAI name="db">
									<Val>21</Val>
								</DAI>
								<DAI name="dbAng">
									<Val>1000</Val>
								</DAI>
								<DAI name="dbRef">
									<Val>2099.45557</Val>
								</DAI>
							</SDI>
							<SDI name="phsB" desc="Iph:B">
								<SDI name="units">
									<DAI name="SIUnit">
										<Val>A</Val>
									</DAI>
								</SDI>
								<DAI name="db">
									<Val>21</Val>
								</DAI>
								<DAI name="dbAng">
									<Val>1000</Val>
								</DAI>
								<DAI name="dbRef">
									<Val>2099.45557</Val>
								</DAI>
							</SDI>
							<SDI name="phsC" desc="Iph:C">
								<SDI name="units">
									<DAI name="SIUnit">
										<Val>A</Val>
									</DAI>
								</SDI>
								<DAI name="db">
									<Val>21</Val>
								</DAI>
								<DAI name="dbAng">
									<Val>1000</Val>
								</DAI>
								<DAI name="dbRef">
									<Val>2099.45557</Val>
								</DAI>
							</SDI>
							<SDI name="res" desc="Iph:res">
								<SDI name="units">
									<DAI name="SIUnit">
										<Val>A</Val>
									</DAI>
								</SDI>
								<DAI name="db">
									<Val>21</Val>
								</DAI>
								<DAI name="dbAng">
									<Val>1000</Val>
								</DAI>
								<DAI name="dbRef">
									<Val>2099.45557</Val>
								</DAI>
							</SDI>
						</DOI>
						<DOI name="VneutC" desc="VN">
							<SDI name="units">
								<DAI name="SIUnit">
									<Val>V</Val>
								</DAI>
								<DAI name="multiplier">
									<Val>k</Val>
								</DAI>
							</SDI>
							<DAI name="db">
								<Val>2000</Val>
							</DAI>
							<DAI name="dbRef">
								<Val>19.0531178</Val>
							</DAI>
						</DOI>
						<DOI name="AneutC" desc="IN">
							<SDI name="units">
								<DAI name="SIUnit">
									<Val>A</Val>
								</DAI>
							</SDI>
							<DAI name="db">
								<Val>21</Val>
							</DAI>
							<DAI name="dbAng">
								<Val>1000</Val>
							</DAI>
							<DAI name="dbRef">
								<Val>2099.45557</Val>
							</DAI>
						</DOI>
					</LN>
					<LN lnClass="MMXN" inst="1" lnType="SIPROTEC5_LNType_MMXN_OpMeas_Fund_1ph_Pres" desc="Fundam" prefix="FPRE_">
						<Private type="Siemens-MasterId">96eac36c-9c2e-4c84-b06d-9ceec5d5e500</Private>
						<DOI name="Mod" desc="Mode (controllable)"/>
						<DOI name="Beh" desc="Behavior"/>
						<DOI name="Health" desc="Health"/>
						<DOI name="NamPlt" desc="Name plate">
							<DAI name="configRev">
								<Val>2023-06-08 08:36:18</Val>
							</DAI>
						</DOI>
						<DOI name="VxC" desc="V">
							<SDI name="units">
								<DAI name="SIUnit">
									<Val>V</Val>
								</DAI>
							</SDI>
							<DAI name="db">
								<Val>2000</Val>
							</DAI>
						</DOI>
						<DOI name="VsynxC" desc="Vsy">
							<SDI name="units">
								<DAI name="SIUnit">
									<Val>V</Val>
								</DAI>
							</SDI>
							<DAI name="db">
								<Val>2000</Val>
							</DAI>
						</DOI>
						<DOI name="ANparLnC" desc="INp.line">
							<SDI name="units">
								<DAI name="SIUnit">
									<Val>A</Val>
								</DAI>
							</SDI>
							<DAI name="db">
								<Val>10000</Val>
							</DAI>
						</DOI>
						<DOI name="AstarPtC" desc="IY traf.">
							<SDI name="units">
								<DAI name="SIUnit">
									<Val>A</Val>
								</DAI>
							</SDI>
							<DAI name="db">
								<Val>10000</Val>
							</DAI>
						</DOI>
						<DOI name="AxC" desc="I">
							<SDI name="units">
								<DAI name="SIUnit">
									<Val>A</Val>
								</DAI>
							</SDI>
							<DAI name="db">
								<Val>10000</Val>
							</DAI>
						</DOI>
						<DOI name="VneutC" desc="VN">
							<SDI name="units">
								<DAI name="SIUnit">
									<Val>V</Val>
								</DAI>
							</SDI>
							<DAI name="db">
								<Val>2000</Val>
							</DAI>
						</DOI>
						<DOI name="Vseq0" desc="Vseq:0">
							<SDI name="units">
								<DAI name="SIUnit">
									<Val>V</Val>
								</DAI>
							</SDI>
							<DAI name="db">
								<Val>2000</Val>
							</DAI>
						</DOI>
					</LN>
					<LN lnClass="MSQI" inst="1" lnType="SIPROTEC5_LNType_MSQI_OpMeas_Symm_Pres" desc="Sy.co." prefix="XPRE_">
						<Private type="Siemens-MasterId">5f65da80-7b10-4723-9ff8-5209b4682833</Private>
						<DOI name="Mod" desc="Mode (controllable)"/>
						<DOI name="Beh" desc="Behavior"/>
						<DOI name="Health" desc="Health"/>
						<DOI name="NamPlt" desc="Name plate">
							<DAI name="configRev">
								<Val>2023-06-08 08:36:18</Val>
							</DAI>
						</DOI>
						<DOI name="SeqA" desc="Iseq">
							<SDI name="c1" desc="Iseq:1">
								<SDI name="units">
									<DAI name="SIUnit">
										<Val>A</Val>
									</DAI>
								</SDI>
								<DAI name="db">
									<Val>21</Val>
								</DAI>
								<DAI name="dbAng">
									<Val>1000</Val>
								</DAI>
								<DAI name="dbRef">
									<Val>2099.45557</Val>
								</DAI>
							</SDI>
							<SDI name="c2" desc="Iseq:2">
								<SDI name="units">
									<DAI name="SIUnit">
										<Val>A</Val>
									</DAI>
								</SDI>
								<DAI name="db">
									<Val>21</Val>
								</DAI>
								<DAI name="dbAng">
									<Val>1000</Val>
								</DAI>
								<DAI name="dbRef">
									<Val>2099.45557</Val>
								</DAI>
							</SDI>
							<SDI name="c3" desc="Iseq:0">
								<SDI name="units">
									<DAI name="SIUnit">
										<Val>A</Val>
									</DAI>
								</SDI>
								<DAI name="db">
									<Val>21</Val>
								</DAI>
								<DAI name="dbAng">
									<Val>1000</Val>
								</DAI>
								<DAI name="dbRef">
									<Val>2099.45557</Val>
								</DAI>
							</SDI>
						</DOI>
						<DOI name="SeqV" desc="Vseq">
							<SDI name="c1" desc="Vseq:1">
								<SDI name="units">
									<DAI name="SIUnit">
										<Val>V</Val>
									</DAI>
									<DAI name="multiplier">
										<Val>k</Val>
									</DAI>
								</SDI>
								<DAI name="db">
									<Val>23</Val>
								</DAI>
								<DAI name="dbAng">
									<Val>1000</Val>
								</DAI>
								<DAI name="dbRef">
									<Val>19.0531178</Val>
								</DAI>
							</SDI>
							<SDI name="c2" desc="Vseq:2">
								<SDI name="units">
									<DAI name="SIUnit">
										<Val>V</Val>
									</DAI>
									<DAI name="multiplier">
										<Val>k</Val>
									</DAI>
								</SDI>
								<DAI name="db">
									<Val>23</Val>
								</DAI>
								<DAI name="dbAng">
									<Val>1000</Val>
								</DAI>
								<DAI name="dbRef">
									<Val>19.0531178</Val>
								</DAI>
							</SDI>
							<SDI name="c3" desc="Vseq:0">
								<SDI name="units">
									<DAI name="SIUnit">
										<Val>V</Val>
									</DAI>
									<DAI name="multiplier">
										<Val>k</Val>
									</DAI>
								</SDI>
								<DAI name="db">
									<Val>23</Val>
								</DAI>
								<DAI name="dbAng">
									<Val>1000</Val>
								</DAI>
								<DAI name="dbRef">
									<Val>19.0531178</Val>
								</DAI>
							</SDI>
						</DOI>
					</LN>
				</LDevice>
				<LDevice desc="LV side neutral" inst="LV_Side_N">
					<Private type="Siemens-MasterId">778656bc-4938-4b68-a669-b9acd50dfbce</Private>
					<LN0 lnClass="LLN0" inst="" lnType="SIEMENS_7UT85_001SIPROTEC5_LNType_LLN0_LDevice_Generic" desc="LV_Side_N/LLN0">
						<Private type="Siemens-MasterId">e67c5f68-70de-4418-a797-57f8f7e5e930</Private>
						<DOI name="Beh" desc="Behavior"/>
						<DOI name="Health" desc="Health"/>
						<DOI name="NamPlt" desc="Name plate">
							<DAI name="configRev">
								<Val>2023-06-08 08:36:18</Val>
							</DAI>
							<DAI name="ldNs">
								<Val>IEC 61850-7-4:2007B</Val>
							</DAI>
						</DOI>
						<DOI name="Mod" desc="Mode (controllable)"/>
						<DOI name="GrRef" desc="GrRef">
							<DAI name="setSrcRef">
								<Val>@Application</Val>
							</DAI>
						</DOI>
					</LN0>
					<LN lnClass="GAPC" inst="1" lnType="SIPROTEC5_LNType_GAPC_DisImpedanceExcitation" desc="General" prefix="VI1P_">
						<Private type="Siemens-MasterId">2f3c3edc-93e6-4c1f-913d-82436c6c180d</Private>
						<DOI name="Mod" desc="Mode (controllable)"/>
						<DOI name="Beh" desc="Behavior"/>
						<DOI name="Health" desc="Health"/>
						<DOI name="NamPlt" desc="Name plate">
							<DAI name="configRev">
								<Val>2023-06-08 08:36:18</Val>
							</DAI>
						</DOI>
					</LN>
					<LN lnClass="PTRC" inst="1" lnType="SIPROTEC5_LNType_PTRC_FN_Str_NonPhsSel_Without_DirRouting_Op_3pol" desc="Group indicat." prefix="">
						<Private type="Siemens-MasterId">b431e950-e7c7-4638-9a57-a7a6b1b87e1e</Private>
						<DOI name="Mod" desc="Mode (controllable)"/>
						<DOI name="Beh" desc="Behavior"/>
						<DOI name="Health" desc="Health"/>
						<DOI name="NamPlt" desc="Name plate">
							<DAI name="configRev">
								<Val>2023-06-08 08:36:18</Val>
							</DAI>
						</DOI>
						<DOI name="Op" desc="Operate"/>
						<DOI name="Str" desc="Pickup"/>
					</LN>
					<LN lnClass="GAPC" inst="1" lnType="SIEMENS_7UT85_001SIPROTEC5_LNType_ResetLed" desc="Reset LED Group" prefix="RSLED">
						<Private type="Siemens-MasterId">6a9626f1-89a8-4934-b9a2-a3f582bed041</Private>
						<DOI name="Mod" desc="Mode (controllable)"/>
						<DOI name="Beh" desc="Behavior"/>
						<DOI name="Health" desc="Health"/>
						<DOI name="NamPlt" desc="Name plate">
							<DAI name="configRev">
								<Val>2023-06-08 08:36:18</Val>
							</DAI>
						</DOI>
						<DOI name="ResetIn" desc="&gt;LED reset"/>
						<DOI name="LedTstOut" desc="LED have been reset"/>
						<DOI name="ResetCtl" desc="Reset LEDs"/>
					</LN>
				</LDevice>
				<LDevice desc="LV side neutral_EFLV_Elements" inst="LV_Side_N_EF">
					<Private type="Siemens-MasterId">a26cd8c9-e0ad-43cd-911a-e46e93a01326</Private>
					<LN0 lnClass="LLN0" inst="" lnType="SIEMENS_7UT85_001SIPROTEC5_LNType_LLN0_LDevice_Generic" desc="LV_Side_N_EF/LLN0">
						<Private type="Siemens-MasterId">39af435e-d45e-4272-8db8-f3d9ee9b6e2c</Private>
						<DOI name="Beh" desc="Behavior"/>
						<DOI name="Health" desc="Health"/>
						<DOI name="NamPlt" desc="Name plate">
							<DAI name="configRev">
								<Val>2023-06-08 08:36:18</Val>
							</DAI>
							<DAI name="ldNs">
								<Val>IEC 61850-7-4:2007B</Val>
							</DAI>
						</DOI>
						<DOI name="Mod" desc="Mode (controllable)"/>
						<DOI name="GrRef" desc="GrRef">
							<DAI name="setSrcRef">
								<Val>@LV_Side_N</Val>
							</DAI>
						</DOI>
					</LN0>
					<LN lnClass="PTRC" inst="1" lnType="SIPROTEC5_LNType_PTRC_FN_Str_NonPhsSel_Without_DirRouting_Op_3pol" desc="Group indicat." prefix="">
						<Private type="Siemens-MasterId">2e050808-2cea-44c9-a0ad-8b1a2939dcdf</Private>
						<DOI name="Mod" desc="Mode (controllable)"/>
						<DOI name="Beh" desc="Behavior"/>
						<DOI name="Health" desc="Health"/>
						<DOI name="NamPlt" desc="Name plate">
							<DAI name="configRev">
								<Val>2023-06-08 08:36:18</Val>
							</DAI>
						</DOI>
						<DOI name="Op" desc="Operate"/>
						<DOI name="Str" desc="Pickup"/>
					</LN>
					<LN lnClass="PTOC" inst="1" lnType="SIPROTEC5_LNType_PTOC_1ph_DOCP" desc="EF(DefT,Neut)LV" prefix="ID_">
						<Private type="Siemens-MasterId">e1d2280a-c7e8-4aba-94f1-95aa2e27fcd5</Private>
						<DOI name="Mod" desc="Mode (controllable)"/>
						<DOI name="Beh" desc="Behavior"/>
						<DOI name="Health" desc="Health"/>
						<DOI name="NamPlt" desc="Name plate">
							<DAI name="configRev">
								<Val>2023-06-08 08:36:18</Val>
							</DAI>
						</DOI>
						<DOI name="Str" desc="Pickup"/>
						<DOI name="Op" desc="Operate"/>
						<DOI name="BlkStg" desc="&gt;Block stage"/>
						<DOI name="BlkOpDlTm" desc="&gt;Block delay &amp; op."/>
						<DOI name="Inactive" desc="Inactive"/>
						<DOI name="InrshBlkOp" desc="Inrush blocks operate"/>
						<DOI name="OpTmExp" desc="Operate delay expired"/>
					</LN>
					<LN lnClass="PTOC" inst="2" lnType="SIPROTEC5_LNType_PTOC_1ph_DOCP" desc="Comm_EF_LV" prefix="ID_">
						<Private type="Siemens-MasterId">34d58d63-4701-416f-ab3a-81d955606f97</Private>
						<DOI name="Mod" desc="Mode (controllable)"/>
						<DOI name="Beh" desc="Behavior"/>
						<DOI name="Health" desc="Health"/>
						<DOI name="NamPlt" desc="Name plate">
							<DAI name="configRev">
								<Val>2023-06-08 08:36:18</Val>
							</DAI>
						</DOI>
						<DOI name="Str" desc="Pickup"/>
						<DOI name="Op" desc="Operate"/>
						<DOI name="BlkStg" desc="&gt;Block stage"/>
						<DOI name="BlkOpDlTm" desc="&gt;Block delay &amp; op."/>
						<DOI name="Inactive" desc="Inactive"/>
						<DOI name="InrshBlkOp" desc="Inrush blocks operate"/>
						<DOI name="OpTmExp" desc="Operate delay expired"/>
					</LN>
					<LN lnClass="PTOC" inst="3" lnType="SIPROTEC5_LNType_PTOC_1ph_DOCP" desc="EF(Alarm)" prefix="ID_">
						<Private type="Siemens-MasterId">87808227-9a85-4a2d-bbd9-6cb40d31b71b</Private>
						<DOI name="Mod" desc="Mode (controllable)"/>
						<DOI name="Beh" desc="Behavior"/>
						<DOI name="Health" desc="Health"/>
						<DOI name="NamPlt" desc="Name plate">
							<DAI name="configRev">
								<Val>2023-06-08 08:36:18</Val>
							</DAI>
						</DOI>
						<DOI name="Str" desc="Pickup"/>
						<DOI name="Op" desc="Operate"/>
						<DOI name="BlkStg" desc="&gt;Block stage"/>
						<DOI name="BlkOpDlTm" desc="&gt;Block delay &amp; op."/>
						<DOI name="Inactive" desc="Inactive"/>
						<DOI name="InrshBlkOp" desc="Inrush blocks operate"/>
						<DOI name="OpTmExp" desc="Operate delay expired"/>
					</LN>
				</LDevice>
				<LDevice desc="LV side neutral_FdOMV" inst="LV_Side_N_Fundamental">
					<Private type="Siemens-MasterId">e97eb0e0-2c03-4050-b9d5-10c0dd606e15</Private>
					<LN0 lnClass="LLN0" inst="" lnType="SIEMENS_7UT85_001SIPROTEC5_LNType_LLN0_LDevice_Generic" desc="LV_Side_N_Fundamental/LLN0">
						<Private type="Siemens-MasterId">81c667e5-48cb-4629-a788-3976180d3cde</Private>
						<DOI name="Beh" desc="Behavior"/>
						<DOI name="Health" desc="Health"/>
						<DOI name="NamPlt" desc="Name plate">
							<DAI name="configRev">
								<Val>2023-06-08 08:36:18</Val>
							</DAI>
							<DAI name="ldNs">
								<Val>IEC 61850-7-4:2007B</Val>
							</DAI>
						</DOI>
						<DOI name="Mod" desc="Mode (controllable)"/>
						<DOI name="GrRef" desc="GrRef">
							<DAI name="setSrcRef">
								<Val>@LV_Side_N</Val>
							</DAI>
						</DOI>
					</LN0>
					<LN lnClass="MMXN" inst="1" lnType="SIPROTEC5_LNType_MMXN_OpMeas_Fund_1ph_Pres" desc="Fundam" prefix="FPRE_">
						<Private type="Siemens-MasterId">0a39eecb-8e07-40bb-bd42-e51ef4672689</Private>
						<DOI name="Mod" desc="Mode (controllable)"/>
						<DOI name="Beh" desc="Behavior"/>
						<DOI name="Health" desc="Health"/>
						<DOI name="NamPlt" desc="Name plate">
							<DAI name="configRev">
								<Val>2023-06-08 08:36:18</Val>
							</DAI>
						</DOI>
						<DOI name="VxC" desc="V">
							<SDI name="units">
								<DAI name="SIUnit">
									<Val>V</Val>
								</DAI>
							</SDI>
							<DAI name="db">
								<Val>2000</Val>
							</DAI>
						</DOI>
						<DOI name="VsynxC" desc="Vsy">
							<SDI name="units">
								<DAI name="SIUnit">
									<Val>V</Val>
								</DAI>
							</SDI>
							<DAI name="db">
								<Val>2000</Val>
							</DAI>
						</DOI>
						<DOI name="ANparLnC" desc="INp.line">
							<SDI name="units">
								<DAI name="SIUnit">
									<Val>A</Val>
								</DAI>
							</SDI>
							<DAI name="db">
								<Val>10000</Val>
							</DAI>
						</DOI>
						<DOI name="AstarPtC" desc="IY traf.">
							<SDI name="units">
								<DAI name="SIUnit">
									<Val>A</Val>
								</DAI>
							</SDI>
							<DAI name="db">
								<Val>10000</Val>
							</DAI>
						</DOI>
						<DOI name="AxC" desc="I">
							<SDI name="units">
								<DAI name="SIUnit">
									<Val>A</Val>
								</DAI>
							</SDI>
							<DAI name="db">
								<Val>10000</Val>
							</DAI>
							<DAI name="dbRef">
								<Val>2099.45557</Val>
							</DAI>
						</DOI>
						<DOI name="VneutC" desc="VN">
							<SDI name="units">
								<DAI name="SIUnit">
									<Val>V</Val>
								</DAI>
							</SDI>
							<DAI name="db">
								<Val>2000</Val>
							</DAI>
						</DOI>
						<DOI name="Vseq0" desc="Vseq:0">
							<SDI name="units">
								<DAI name="SIUnit">
									<Val>V</Val>
								</DAI>
							</SDI>
							<DAI name="db">
								<Val>2000</Val>
							</DAI>
						</DOI>
					</LN>
				</LDevice>
				<LDevice desc="LV side_OC_LV" inst="LV_Side_OC_LV1">
					<Private type="Siemens-MasterId">5ba816c1-824b-41f5-897a-dd3e68d1f035</Private>
					<LN0 lnClass="LLN0" inst="" lnType="SIEMENS_7UT85_001SIPROTEC5_LNType_LLN0_LDevice_Generic" desc="LV_Side_OC_LV1/LLN0">
						<Private type="Siemens-MasterId">e623fc90-4a15-4645-bba8-a370507af270</Private>
						<DOI name="Beh" desc="Behavior"/>
						<DOI name="Health" desc="Health"/>
						<DOI name="NamPlt" desc="Name plate">
							<DAI name="configRev">
								<Val>2023-06-08 08:36:18</Val>
							</DAI>
							<DAI name="ldNs">
								<Val>IEC 61850-7-4:2007B</Val>
							</DAI>
						</DOI>
						<DOI name="Mod" desc="Mode (controllable)"/>
						<DOI name="GrRef" desc="GrRef">
							<DAI name="setSrcRef">
								<Val>@LV_Side</Val>
							</DAI>
						</DOI>
					</LN0>
					<LN lnClass="PTRC" inst="1" lnType="SIPROTEC5_LNType_PTRC_FN_Str_GABC_Without_DirRouting_Op_3pol" desc="Group indicat." prefix="">
						<Private type="Siemens-MasterId">cdfce506-bd0b-433e-8ae4-db6f92ccb081</Private>
						<DOI name="Mod" desc="Mode (controllable)"/>
						<DOI name="Beh" desc="Behavior"/>
						<DOI name="Health" desc="Health"/>
						<DOI name="NamPlt" desc="Name plate">
							<DAI name="configRev">
								<Val>2023-06-08 08:36:18</Val>
							</DAI>
						</DOI>
						<DOI name="Op" desc="Operate"/>
						<DOI name="Str" desc="Pickup"/>
					</LN>
					<LN lnClass="PTOC" inst="1" lnType="SIPROTEC5_LNType_PTOC_3ph_DOCP_3pol_Bas" desc="OC(DefT)LV" prefix="ID_">
						<Private type="Siemens-MasterId">edb4f3f1-3c17-400d-af30-d647120451ac</Private>
						<DOI name="Mod" desc="Mode (controllable)"/>
						<DOI name="Beh" desc="Behavior"/>
						<DOI name="Health" desc="Health"/>
						<DOI name="NamPlt" desc="Name plate">
							<DAI name="configRev">
								<Val>2023-06-08 08:36:18</Val>
							</DAI>
						</DOI>
						<DOI name="Str" desc="Pickup"/>
						<DOI name="Op" desc="Operate"/>
						<DOI name="Blk" desc="&gt;Block stage"/>
						<DOI name="BlkOpDlTm" desc="&gt;Block delay &amp; op."/>
						<DOI name="Inactive" desc="Inactive"/>
						<DOI name="InrshBlkOp" desc="Inrush blocks operate"/>
						<DOI name="OpTmExp" desc="Operate delay expired"/>
					</LN>
					<LN lnClass="PTOC" inst="1" lnType="SIPROTEC5_LNType_PTOC_3ph_IOCP_3pol_Bas" desc="OC(IT)LV" prefix="II_">
						<Private type="Siemens-MasterId">1185aa9a-a55b-495d-a626-c76d09f074ea</Private>
						<DOI name="Mod" desc="Mode (controllable)"/>
						<DOI name="Beh" desc="Behavior"/>
						<DOI name="Health" desc="Health"/>
						<DOI name="NamPlt" desc="Name plate">
							<DAI name="configRev">
								<Val>2023-06-08 08:36:18</Val>
							</DAI>
						</DOI>
						<DOI name="Str" desc="Pickup"/>
						<DOI name="Op" desc="Operate"/>
						<DOI name="Blk" desc="&gt;Block stage"/>
						<DOI name="BlkOpDlTm" desc="&gt;Block delay &amp; op."/>
						<DOI name="Inactive" desc="Inactive"/>
						<DOI name="InrshBlkOp" desc="Inrush blocks operate"/>
						<DOI name="DskRng" desc="Disk emulation running"/>
						<DOI name="OpTmExp" desc="Operate delay expired"/>
					</LN>
					<LN lnClass="PTOC" inst="3" lnType="SIPROTEC5_LNType_PTOC_3ph_DOCP_3pol_Bas" desc="Comm_OC(DefT)LV" prefix="ID_">
						<Private type="Siemens-MasterId">eeca648a-afa4-4081-b4ab-eb677b35a335</Private>
						<DOI name="Mod" desc="Mode (controllable)"/>
						<DOI name="Beh" desc="Behavior"/>
						<DOI name="Health" desc="Health"/>
						<DOI name="NamPlt" desc="Name plate">
							<DAI name="configRev">
								<Val>2023-06-08 08:36:18</Val>
							</DAI>
						</DOI>
						<DOI name="Str" desc="Pickup"/>
						<DOI name="Op" desc="Operate"/>
						<DOI name="Blk" desc="&gt;Block stage"/>
						<DOI name="BlkOpDlTm" desc="&gt;Block delay &amp; op."/>
						<DOI name="Inactive" desc="Inactive"/>
						<DOI name="InrshBlkOp" desc="Inrush blocks operate"/>
						<DOI name="OpTmExp" desc="Operate delay expired"/>
					</LN>
					<LN lnClass="GAPC" inst="1" lnType="SIPROTEC5_LNType_ChartSetting_SPG" desc="OC(DefT)LV VCon Enable" prefix="CFC">
						<Private type="Siemens-MasterId">e9c377c3-8982-4540-8c2f-f2354cf1305d</Private>
						<DOI name="Mod" desc="Mode (controllable)"/>
						<DOI name="Beh" desc="Behavior"/>
						<DOI name="Health" desc="Health"/>
						<DOI name="NamPlt" desc="Name plate">
							<DAI name="configRev">
								<Val>2023-06-08 08:36:18</Val>
							</DAI>
						</DOI>
						<DOI name="Val" desc="Setting value"/>
					</LN>
					<LN lnClass="GAPC" inst="3" lnType="SIPROTEC5_LNType_ChartSetting_SPG" desc="OC(IT)LV VCon Enable" prefix="CFC">
						<Private type="Siemens-MasterId">acbc344a-e220-4ff2-a06d-6b8bdfc35ecb</Private>
						<DOI name="Mod" desc="Mode (controllable)"/>
						<DOI name="Beh" desc="Behavior"/>
						<DOI name="Health" desc="Health"/>
						<DOI name="NamPlt" desc="Name plate">
							<DAI name="configRev">
								<Val>2023-06-08 08:36:18</Val>
							</DAI>
						</DOI>
						<DOI name="Val" desc="Setting value"/>
					</LN>
				</LDevice>
				<LDevice desc="LV side_Spare_OC_LV" inst="LV_Side_OC_LV2">
					<Private type="Siemens-MasterId">de3ee069-c090-4cc8-afde-d028472b78ec</Private>
					<LN0 lnClass="LLN0" inst="" lnType="SIEMENS_7UT85_001SIPROTEC5_LNType_LLN0_LDevice_Generic" desc="LV_Side_OC_LV2/LLN0">
						<Private type="Siemens-MasterId">290fdd64-aff7-439a-b46f-6c9dac851e20</Private>
						<DOI name="Beh" desc="Behavior"/>
						<DOI name="Health" desc="Health"/>
						<DOI name="NamPlt" desc="Name plate">
							<DAI name="configRev">
								<Val>2023-06-08 08:36:18</Val>
							</DAI>
							<DAI name="ldNs">
								<Val>IEC 61850-7-4:2007B</Val>
							</DAI>
						</DOI>
						<DOI name="Mod" desc="Mode (controllable)"/>
						<DOI name="GrRef" desc="GrRef">
							<DAI name="setSrcRef">
								<Val>@LV_Side</Val>
							</DAI>
						</DOI>
					</LN0>
					<LN lnClass="PTRC" inst="1" lnType="SIPROTEC5_LNType_PTRC_FN_Str_GABC_Without_DirRouting_Op_3pol" desc="Group indicat." prefix="">
						<Private type="Siemens-MasterId">b626362a-abb6-48b8-900d-b07719b3282f</Private>
						<DOI name="Mod" desc="Mode (controllable)"/>
						<DOI name="Beh" desc="Behavior"/>
						<DOI name="Health" desc="Health"/>
						<DOI name="NamPlt" desc="Name plate">
							<DAI name="configRev">
								<Val>2023-06-08 08:36:18</Val>
							</DAI>
						</DOI>
						<DOI name="Op" desc="Operate"/>
						<DOI name="Str" desc="Pickup"/>
					</LN>
					<LN lnClass="PTOC" inst="1" lnType="SIPROTEC5_LNType_PTOC_3ph_DOCP_3pol_Bas" desc="Spare_OC(DefT)LV" prefix="ID_">
						<Private type="Siemens-MasterId">8618f2ef-42b3-4118-9024-b4cdd316cc0d</Private>
						<DOI name="Mod" desc="Mode (controllable)"/>
						<DOI name="Beh" desc="Behavior"/>
						<DOI name="Health" desc="Health"/>
						<DOI name="NamPlt" desc="Name plate">
							<DAI name="configRev">
								<Val>2023-06-08 08:36:18</Val>
							</DAI>
						</DOI>
						<DOI name="Str" desc="Pickup"/>
						<DOI name="Op" desc="Operate"/>
						<DOI name="Blk" desc="&gt;Block stage"/>
						<DOI name="BlkOpDlTm" desc="&gt;Block delay &amp; op."/>
						<DOI name="Inactive" desc="Inactive"/>
						<DOI name="InrshBlkOp" desc="Inrush blocks operate"/>
						<DOI name="OpTmExp" desc="Operate delay expired"/>
					</LN>
					<LN lnClass="PTOC" inst="1" lnType="SIPROTEC5_LNType_PTOC_3ph_IOCP_3pol_Bas" desc="Spare_OC(IT)LV" prefix="II_">
						<Private type="Siemens-MasterId">80983a36-758e-4a6d-acdb-b95db7e9eb31</Private>
						<DOI name="Mod" desc="Mode (controllable)"/>
						<DOI name="Beh" desc="Behavior"/>
						<DOI name="Health" desc="Health"/>
						<DOI name="NamPlt" desc="Name plate">
							<DAI name="configRev">
								<Val>2023-06-08 08:36:18</Val>
							</DAI>
						</DOI>
						<DOI name="Str" desc="Pickup"/>
						<DOI name="Op" desc="Operate"/>
						<DOI name="Blk" desc="&gt;Block stage"/>
						<DOI name="BlkOpDlTm" desc="&gt;Block delay &amp; op."/>
						<DOI name="Inactive" desc="Inactive"/>
						<DOI name="InrshBlkOp" desc="Inrush blocks operate"/>
						<DOI name="DskRng" desc="Disk emulation running"/>
						<DOI name="OpTmExp" desc="Operate delay expired"/>
					</LN>
					<LN lnClass="GAPC" inst="1" lnType="SIPROTEC5_LNType_ChartSetting_SPG" desc="Spare_OC(DefT)LV VCon Enable" prefix="CFC">
						<Private type="Siemens-MasterId">0fd1e49b-4c44-429b-b477-00c85ed5a096</Private>
						<DOI name="Mod" desc="Mode (controllable)"/>
						<DOI name="Beh" desc="Behavior"/>
						<DOI name="Health" desc="Health"/>
						<DOI name="NamPlt" desc="Name plate">
							<DAI name="configRev">
								<Val>2023-06-08 08:36:18</Val>
							</DAI>
						</DOI>
						<DOI name="Val" desc="Setting value"/>
					</LN>
					<LN lnClass="GAPC" inst="2" lnType="SIPROTEC5_LNType_ChartSetting_SPG" desc="Spare_OC(IT)LV VCon Enable" prefix="CFC">
						<Private type="Siemens-MasterId">934f1b53-5e60-4626-a292-1d4b83507770</Private>
						<DOI name="Mod" desc="Mode (controllable)"/>
						<DOI name="Beh" desc="Behavior"/>
						<DOI name="Health" desc="Health"/>
						<DOI name="NamPlt" desc="Name plate">
							<DAI name="configRev">
								<Val>2023-06-08 08:36:18</Val>
							</DAI>
						</DOI>
						<DOI name="Val" desc="Setting value"/>
					</LN>
				</LDevice>
				<LDevice desc="LV side_OC(SOTF)LV" inst="LV_Side_OC_SOTF">
					<Private type="Siemens-MasterId">65b67c5b-e2c6-470e-aa0a-6bd91fcce8c9</Private>
					<LN0 lnClass="LLN0" inst="" lnType="SIEMENS_7UT85_001SIPROTEC5_LNType_LLN0_LDevice_Generic" desc="LV_Side_OC_SOTF/LLN0">
						<Private type="Siemens-MasterId">854252c4-e92e-49f8-ac13-742cb9869365</Private>
						<DOI name="Beh" desc="Behavior"/>
						<DOI name="Health" desc="Health"/>
						<DOI name="NamPlt" desc="Name plate">
							<DAI name="configRev">
								<Val>2023-06-08 08:36:18</Val>
							</DAI>
							<DAI name="ldNs">
								<Val>IEC 61850-7-4:2007B</Val>
							</DAI>
						</DOI>
						<DOI name="Mod" desc="Mode (controllable)"/>
						<DOI name="GrRef" desc="GrRef">
							<DAI name="setSrcRef">
								<Val>@LV_Side</Val>
							</DAI>
						</DOI>
					</LN0>
					<LN lnClass="GAPC" inst="1" lnType="SIPROTEC5_LNType_GAPC_FB0_OCP_3ph" desc="General" prefix="">
						<Private type="Siemens-MasterId">ebdfb0a3-40fe-421e-b61e-ddf88826e1e4</Private>
						<DOI name="Mod" desc="Mode (controllable)"/>
						<DOI name="Beh" desc="Behavior"/>
						<DOI name="Health" desc="Health"/>
						<DOI name="NamPlt" desc="Name plate">
							<DAI name="configRev">
								<Val>2023-06-08 08:36:18</Val>
							</DAI>
						</DOI>
						<DOI name="ActEmgMod" desc="&gt;Activation emg. mode"/>
						<DOI name="EmgcyMod" desc="Emergency mode act."/>
					</LN>
					<LN lnClass="PTRC" inst="1" lnType="SIPROTEC5_LNType_PTRC_FN_Str_GABC_Without_DirRouting_Op_1_3pol_1" desc="Group indicat." prefix="">
						<Private type="Siemens-MasterId">146ffd38-6a85-4516-9cb9-a3606dd0ecff</Private>
						<DOI name="Mod" desc="Mode (controllable)"/>
						<DOI name="Beh" desc="Behavior"/>
						<DOI name="Health" desc="Health"/>
						<DOI name="NamPlt" desc="Name plate">
							<DAI name="configRev">
								<Val>2023-06-08 08:36:18</Val>
							</DAI>
						</DOI>
						<DOI name="Op" desc="Operate"/>
						<DOI name="Str" desc="Pickup"/>
						<DOI name="SOTFLV" desc="OC(SOTF)LV">
							<DAI name="dataNs">
								<Val>Transpower:2023</Val>
							</DAI>
						</DOI>
					</LN>
					<LN lnClass="PTOC" inst="1" lnType="SIPROTEC5_LNType_PTOC_3ph_IOCP_3pol" desc="OC(SOTF)LV" prefix="II_">
						<Private type="Siemens-MasterId">d863006d-2833-4b5c-ad1e-11be484d5053</Private>
						<DOI name="Mod" desc="Mode (controllable)"/>
						<DOI name="Beh" desc="Behavior"/>
						<DOI name="Health" desc="Health"/>
						<DOI name="NamPlt" desc="Name plate">
							<DAI name="configRev">
								<Val>2023-06-08 08:36:18</Val>
							</DAI>
						</DOI>
						<DOI name="Str" desc="Pickup"/>
						<DOI name="Op" desc="Operate"/>
						<DOI name="Blk" desc="&gt;Block stage"/>
						<DOI name="ActDynSet" desc="&gt;Activ. dyn. settings"/>
						<DOI name="BlkOpDlTm" desc="&gt;Block delay &amp; op."/>
						<DOI name="Inactive" desc="Inactive"/>
						<DOI name="InrshBlkOp" desc="Inrush blocks operate"/>
						<DOI name="DySgRc1CAc" desc="Dyn.set. AR cycle1act."/>
						<DOI name="DySgRc2CAc" desc="Dyn.set. AR cycle2act."/>
						<DOI name="DySgRc3CAc" desc="Dyn.set. AR cycle3act."/>
						<DOI name="DySgRG3CAc" desc="Dyn.set. ARcycl.&gt;3act"/>
						<DOI name="DySgCLPAct" desc="Dyn.set. CLP active"/>
						<DOI name="DynSgBIAct" desc="Dyn.set. BI active"/>
						<DOI name="DynBlkStr" desc="Dyn. set. blks. pickup"/>
						<DOI name="DskRng" desc="Disk emulation running"/>
						<DOI name="OpTmExp" desc="Operate delay expired"/>
						<DOI name="I0ElimIph" desc="I0el.Iph">
							<SDI name="phsA" desc="I0el.Iph:A">
								<SDI name="units">
									<DAI name="SIUnit">
										<Val>A</Val>
									</DAI>
								</SDI>
								<DAI name="db">
									<Val>10000</Val>
								</DAI>
								<DAI name="dbRef">
									<Val>2099.45557</Val>
								</DAI>
							</SDI>
							<SDI name="phsB" desc="I0el.Iph:B">
								<SDI name="units">
									<DAI name="SIUnit">
										<Val>A</Val>
									</DAI>
								</SDI>
								<DAI name="db">
									<Val>10000</Val>
								</DAI>
								<DAI name="dbRef">
									<Val>2099.45557</Val>
								</DAI>
							</SDI>
							<SDI name="phsC" desc="I0el.Iph:C">
								<SDI name="units">
									<DAI name="SIUnit">
										<Val>A</Val>
									</DAI>
								</SDI>
								<DAI name="db">
									<Val>10000</Val>
								</DAI>
								<DAI name="dbRef">
									<Val>2099.45557</Val>
								</DAI>
							</SDI>
						</DOI>
					</LN>
				</LDevice>
				<LDevice desc="LV side_OMV" inst="LV_Side_OperationalValues">
					<Private type="Siemens-MasterId">94440d32-d3dc-4883-8bcf-eb56ceb7a91f</Private>
					<LN0 lnClass="LLN0" inst="" lnType="SIEMENS_7UT85_001SIPROTEC5_LNType_LLN0_LDevice_Generic" desc="LV_Side_OperationalValues/LLN0">
						<Private type="Siemens-MasterId">b21a7b5b-bbe1-4f8a-9f31-8182ffffcc62</Private>
						<DOI name="Beh" desc="Behavior"/>
						<DOI name="Health" desc="Health"/>
						<DOI name="NamPlt" desc="Name plate">
							<DAI name="configRev">
								<Val>2023-06-08 08:36:18</Val>
							</DAI>
							<DAI name="ldNs">
								<Val>IEC 61850-7-4:2007B</Val>
							</DAI>
						</DOI>
						<DOI name="Mod" desc="Mode (controllable)"/>
						<DOI name="GrRef" desc="GrRef">
							<DAI name="setSrcRef">
								<Val>@LV_Side</Val>
							</DAI>
						</DOI>
					</LN0>
					<LN lnClass="MMXU" inst="1" lnType="SIPROTEC5_LNType_MMXU_OpMeas_RMS_3ph_Pres" desc="RMS" prefix="RPRE_">
						<Private type="Siemens-MasterId">ac220e9c-4c6a-46c0-bb35-17d24ba9cdcf</Private>
						<DOI name="Mod" desc="Mode (controllable)"/>
						<DOI name="Beh" desc="Behavior"/>
						<DOI name="Health" desc="Health"/>
						<DOI name="NamPlt" desc="Name plate">
							<DAI name="configRev">
								<Val>2023-06-08 08:36:18</Val>
							</DAI>
						</DOI>
						<DOI name="PPV" desc="Vpp">
							<SDI name="phsAB" desc="Vpp:AB">
								<SDI name="units">
									<DAI name="SIUnit">
										<Val>V</Val>
									</DAI>
									<DAI name="multiplier">
										<Val>k</Val>
									</DAI>
								</SDI>
								<DAI name="db">
									<Val>152</Val>
								</DAI>
								<DAI name="dbRef">
									<Val>33</Val>
								</DAI>
							</SDI>
							<SDI name="phsBC" desc="Vpp:BC">
								<SDI name="units">
									<DAI name="SIUnit">
										<Val>V</Val>
									</DAI>
									<DAI name="multiplier">
										<Val>k</Val>
									</DAI>
								</SDI>
								<DAI name="db">
									<Val>152</Val>
								</DAI>
								<DAI name="dbRef">
									<Val>33</Val>
								</DAI>
							</SDI>
							<SDI name="phsCA" desc="Vpp:CA">
								<SDI name="units">
									<DAI name="SIUnit">
										<Val>V</Val>
									</DAI>
									<DAI name="multiplier">
										<Val>k</Val>
									</DAI>
								</SDI>
								<DAI name="db">
									<Val>152</Val>
								</DAI>
								<DAI name="dbRef">
									<Val>33</Val>
								</DAI>
							</SDI>
						</DOI>
						<DOI name="PhV" desc="Vph">
							<SDI name="phsA" desc="Vph:A">
								<SDI name="units">
									<DAI name="SIUnit">
										<Val>V</Val>
									</DAI>
									<DAI name="multiplier">
										<Val>k</Val>
									</DAI>
								</SDI>
								<DAI name="db">
									<Val>2000</Val>
								</DAI>
								<DAI name="dbRef">
									<Val>19.0531178</Val>
								</DAI>
							</SDI>
							<SDI name="phsB" desc="Vph:B">
								<SDI name="units">
									<DAI name="SIUnit">
										<Val>V</Val>
									</DAI>
									<DAI name="multiplier">
										<Val>k</Val>
									</DAI>
								</SDI>
								<DAI name="db">
									<Val>2000</Val>
								</DAI>
								<DAI name="dbRef">
									<Val>19.0531178</Val>
								</DAI>
							</SDI>
							<SDI name="phsC" desc="Vph:C">
								<SDI name="units">
									<DAI name="SIUnit">
										<Val>V</Val>
									</DAI>
									<DAI name="multiplier">
										<Val>k</Val>
									</DAI>
								</SDI>
								<DAI name="db">
									<Val>2000</Val>
								</DAI>
								<DAI name="dbRef">
									<Val>19.0531178</Val>
								</DAI>
							</SDI>
							<SDI name="res" desc="Vph:res">
								<SDI name="units">
									<DAI name="SIUnit">
										<Val>V</Val>
									</DAI>
								</SDI>
								<DAI name="db">
									<Val>20000</Val>
								</DAI>
								<DAI name="dbRef">
									<Val>19.0531178</Val>
								</DAI>
							</SDI>
						</DOI>
						<DOI name="A" desc="Iph">
							<SDI name="phsA" desc="Iph:A">
								<SDI name="units">
									<DAI name="SIUnit">
										<Val>A</Val>
									</DAI>
								</SDI>
								<DAI name="db">
									<Val>25</Val>
								</DAI>
								<DAI name="dbRef">
									<Val>2099.45557</Val>
								</DAI>
							</SDI>
							<SDI name="phsB" desc="Iph:B">
								<SDI name="units">
									<DAI name="SIUnit">
										<Val>A</Val>
									</DAI>
								</SDI>
								<DAI name="db">
									<Val>25</Val>
								</DAI>
								<DAI name="dbRef">
									<Val>2099.45557</Val>
								</DAI>
							</SDI>
							<SDI name="phsC" desc="Iph:C">
								<SDI name="units">
									<DAI name="SIUnit">
										<Val>A</Val>
									</DAI>
								</SDI>
								<DAI name="db">
									<Val>25</Val>
								</DAI>
								<DAI name="dbRef">
									<Val>2099.45557</Val>
								</DAI>
							</SDI>
							<SDI name="res" desc="Iph:res">
								<SDI name="units">
									<DAI name="SIUnit">
										<Val>A</Val>
									</DAI>
								</SDI>
								<DAI name="db">
									<Val>100000</Val>
								</DAI>
								<DAI name="dbRef">
									<Val>2099.45557</Val>
								</DAI>
							</SDI>
						</DOI>
						<DOI name="Vneut" desc="VN">
							<SDI name="units">
								<DAI name="SIUnit">
									<Val>V</Val>
								</DAI>
								<DAI name="multiplier">
									<Val>k</Val>
								</DAI>
							</SDI>
							<DAI name="db">
								<Val>2000</Val>
							</DAI>
							<DAI name="dbRef">
								<Val>19.0531178</Val>
							</DAI>
						</DOI>
						<DOI name="Aneut" desc="IN">
							<SDI name="units">
								<DAI name="SIUnit">
									<Val>A</Val>
								</DAI>
							</SDI>
							<DAI name="db">
								<Val>10000</Val>
							</DAI>
							<DAI name="dbRef">
								<Val>2099.45557</Val>
							</DAI>
						</DOI>
					</LN>
					<LN lnClass="MMXN" inst="1" lnType="SIPROTEC5_LNType_MMXN_OpMeas_RMS_1ph_Pres" desc="RMS" prefix="RPRE_">
						<Private type="Siemens-MasterId">7d69309e-7599-41a8-972a-6001098c7dd8</Private>
						<DOI name="Mod" desc="Mode (controllable)"/>
						<DOI name="Beh" desc="Behavior"/>
						<DOI name="Health" desc="Health"/>
						<DOI name="NamPlt" desc="Name plate">
							<DAI name="configRev">
								<Val>2023-06-08 08:36:18</Val>
							</DAI>
						</DOI>
						<DOI name="ANparLn" desc="INp.line">
							<SDI name="units">
								<DAI name="SIUnit">
									<Val>A</Val>
								</DAI>
							</SDI>
							<DAI name="db">
								<Val>10000</Val>
							</DAI>
						</DOI>
						<DOI name="AstarPt" desc="IY traf.">
							<SDI name="units">
								<DAI name="SIUnit">
									<Val>A</Val>
								</DAI>
							</SDI>
							<DAI name="db">
								<Val>10000</Val>
							</DAI>
						</DOI>
					</LN>
					<LN lnClass="MMXU" inst="1" lnType="SIPROTEC5_LNType_MMXU_OpMeas_Power_3ph_Pres" desc="Power" prefix="PPRE_">
						<Private type="Siemens-MasterId">a954cb85-1739-46a8-9567-20e2d66628a1</Private>
						<DOI name="Mod" desc="Mode (controllable)"/>
						<DOI name="Beh" desc="Behavior"/>
						<DOI name="Health" desc="Health"/>
						<DOI name="NamPlt" desc="Name plate">
							<DAI name="configRev">
								<Val>2023-06-08 08:36:18</Val>
							</DAI>
						</DOI>
						<DOI name="TotW" desc="P tot">
							<SDI name="units">
								<DAI name="SIUnit">
									<Val>W</Val>
								</DAI>
								<DAI name="multiplier">
									<Val>M</Val>
								</DAI>
							</SDI>
							<DAI name="db">
								<Val>42</Val>
							</DAI>
							<DAI name="dbRef">
								<Val>120</Val>
							</DAI>
						</DOI>
						<DOI name="TotVAr" desc="Q tot">
							<SDI name="units">
								<DAI name="SIUnit">
									<Val>VAr</Val>
								</DAI>
								<DAI name="multiplier">
									<Val>M</Val>
								</DAI>
							</SDI>
							<DAI name="db">
								<Val>42</Val>
							</DAI>
							<DAI name="dbRef">
								<Val>120</Val>
							</DAI>
						</DOI>
						<DOI name="TotVA" desc="S tot">
							<SDI name="units">
								<DAI name="SIUnit">
									<Val>VA</Val>
								</DAI>
								<DAI name="multiplier">
									<Val>M</Val>
								</DAI>
							</SDI>
							<DAI name="db">
								<Val>42</Val>
							</DAI>
							<DAI name="dbRef">
								<Val>120</Val>
							</DAI>
						</DOI>
						<DOI name="TotPF" desc="cos φ">
							<SDI name="units">
								<DAI name="SIUnit">
									<Val>cos(phi)</Val>
								</DAI>
							</SDI>
							<DAI name="db">
								<Val>10000</Val>
							</DAI>
						</DOI>
						<DOI name="Hz" desc="f">
							<SDI name="units">
								<DAI name="SIUnit">
									<Val>Hz</Val>
								</DAI>
							</SDI>
							<DAI name="db">
								<Val>10</Val>
							</DAI>
							<DAI name="dbRef">
								<Val>50</Val>
							</DAI>
						</DOI>
						<DOI name="W" desc="P">
							<SDI name="phsA" desc="P:A">
								<SDI name="units">
									<DAI name="SIUnit">
										<Val>W</Val>
									</DAI>
									<DAI name="multiplier">
										<Val>M</Val>
									</DAI>
								</SDI>
								<DAI name="db">
									<Val>125</Val>
								</DAI>
								<DAI name="dbRef">
									<Val>40</Val>
								</DAI>
							</SDI>
							<SDI name="phsB" desc="P:B">
								<SDI name="units">
									<DAI name="SIUnit">
										<Val>W</Val>
									</DAI>
									<DAI name="multiplier">
										<Val>M</Val>
									</DAI>
								</SDI>
								<DAI name="db">
									<Val>125</Val>
								</DAI>
								<DAI name="dbRef">
									<Val>40</Val>
								</DAI>
							</SDI>
							<SDI name="phsC" desc="P:C">
								<SDI name="units">
									<DAI name="SIUnit">
										<Val>W</Val>
									</DAI>
									<DAI name="multiplier">
										<Val>M</Val>
									</DAI>
								</SDI>
								<DAI name="db">
									<Val>125</Val>
								</DAI>
								<DAI name="dbRef">
									<Val>40</Val>
								</DAI>
							</SDI>
						</DOI>
						<DOI name="VAr" desc="Q">
							<SDI name="phsA" desc="Q:A">
								<SDI name="units">
									<DAI name="SIUnit">
										<Val>VAr</Val>
									</DAI>
									<DAI name="multiplier">
										<Val>M</Val>
									</DAI>
								</SDI>
								<DAI name="db">
									<Val>125</Val>
								</DAI>
								<DAI name="dbRef">
									<Val>40</Val>
								</DAI>
							</SDI>
							<SDI name="phsB" desc="Q:B">
								<SDI name="units">
									<DAI name="SIUnit">
										<Val>VAr</Val>
									</DAI>
									<DAI name="multiplier">
										<Val>M</Val>
									</DAI>
								</SDI>
								<DAI name="db">
									<Val>125</Val>
								</DAI>
								<DAI name="dbRef">
									<Val>40</Val>
								</DAI>
							</SDI>
							<SDI name="phsC" desc="Q:C">
								<SDI name="units">
									<DAI name="SIUnit">
										<Val>VAr</Val>
									</DAI>
									<DAI name="multiplier">
										<Val>M</Val>
									</DAI>
								</SDI>
								<DAI name="db">
									<Val>125</Val>
								</DAI>
								<DAI name="dbRef">
									<Val>40</Val>
								</DAI>
							</SDI>
						</DOI>
						<DOI name="VA" desc="S">
							<SDI name="phsA" desc="S:A">
								<SDI name="units">
									<DAI name="SIUnit">
										<Val>VA</Val>
									</DAI>
									<DAI name="multiplier">
										<Val>M</Val>
									</DAI>
								</SDI>
								<DAI name="db">
									<Val>125</Val>
								</DAI>
								<DAI name="dbRef">
									<Val>40</Val>
								</DAI>
							</SDI>
							<SDI name="phsB" desc="S:B">
								<SDI name="units">
									<DAI name="SIUnit">
										<Val>VA</Val>
									</DAI>
									<DAI name="multiplier">
										<Val>M</Val>
									</DAI>
								</SDI>
								<DAI name="db">
									<Val>125</Val>
								</DAI>
								<DAI name="dbRef">
									<Val>40</Val>
								</DAI>
							</SDI>
							<SDI name="phsC" desc="S:C">
								<SDI name="units">
									<DAI name="SIUnit">
										<Val>VA</Val>
									</DAI>
									<DAI name="multiplier">
										<Val>M</Val>
									</DAI>
								</SDI>
								<DAI name="db">
									<Val>125</Val>
								</DAI>
								<DAI name="dbRef">
									<Val>40</Val>
								</DAI>
							</SDI>
						</DOI>
					</LN>
				</LDevice>
				<LDevice desc="LV side_ProMon" inst="LV_Side_ProcessMonitor">
					<Private type="Siemens-MasterId">e69cff93-328b-4f8d-8f09-6d7ebd632aef</Private>
					<LN0 lnClass="LLN0" inst="" lnType="SIEMENS_7UT85_001SIPROTEC5_LNType_LLN0_LDevice_Generic" desc="LV_Side_ProcessMonitor/LLN0">
						<Private type="Siemens-MasterId">0f5d3120-0f0c-4adf-9b62-7d4dffdb774f</Private>
						<DOI name="Beh" desc="Behavior"/>
						<DOI name="Health" desc="Health"/>
						<DOI name="NamPlt" desc="Name plate">
							<DAI name="configRev">
								<Val>2023-06-08 08:36:18</Val>
							</DAI>
							<DAI name="ldNs">
								<Val>IEC 61850-7-4:2007B</Val>
							</DAI>
						</DOI>
						<DOI name="Mod" desc="Mode (controllable)"/>
						<DOI name="GrRef" desc="GrRef">
							<DAI name="setSrcRef">
								<Val>@LV_Side</Val>
							</DAI>
						</DOI>
					</LN0>
					<LN lnClass="ROPA" inst="1" lnType="SIPROTEC5_LNType_ROPA_OpenPoleCurrent" desc="Curr.criterion" prefix="PROM_">
						<Private type="Siemens-MasterId">68d56248-5175-493b-bb4a-3df1d05bf226</Private>
						<DOI name="Mod" desc="Mode (controllable)"/>
						<DOI name="Beh" desc="Behavior"/>
						<DOI name="Health" desc="Health"/>
						<DOI name="NamPlt" desc="Name plate">
							<DAI name="configRev">
								<Val>2023-06-08 08:36:18</Val>
							</DAI>
						</DOI>
						<DOI name="Inactive" desc="Inactive"/>
					</LN>
					<LN lnClass="RSSR" inst="1" lnType="SIPROTEC5_LNType_RSSR_SwitchingStateRecognition" desc="Closure detec." prefix="PROM_">
						<Private type="Siemens-MasterId">5681dd94-a0d2-41cf-a519-91a095d5a33c</Private>
						<DOI name="Mod" desc="Mode (controllable)"/>
						<DOI name="Beh" desc="Behavior"/>
						<DOI name="Health" desc="Health"/>
						<DOI name="NamPlt" desc="Name plate">
							<DAI name="configRev">
								<Val>2023-06-08 08:36:18</Val>
							</DAI>
						</DOI>
						<DOI name="DisCntrOpn" desc="&gt;Disconnector open"/>
						<DOI name="Inactive" desc="Inactive"/>
						<DOI name="SwitchOn" desc="Closure"/>
					</LN>
				</LDevice>
				<LDevice desc="LV side_UImpLV" inst="LV_Side_UImpLV">
					<Private type="Siemens-MasterId">0578cc72-5fb5-4fbe-b0d5-4a8da5fce641</Private>
					<LN0 lnClass="LLN0" inst="" lnType="SIEMENS_7UT85_001SIPROTEC5_LNType_LLN0_LDevice_Generic" desc="LV_Side_UImpLV/LLN0">
						<Private type="Siemens-MasterId">38e94cea-9a29-4fc9-ad34-3c997fd40ac2</Private>
						<DOI name="Beh" desc="Behavior"/>
						<DOI name="Health" desc="Health"/>
						<DOI name="NamPlt" desc="Name plate">
							<DAI name="configRev">
								<Val>2023-06-08 08:36:18</Val>
							</DAI>
							<DAI name="ldNs">
								<Val>IEC 61850-7-4:2007B</Val>
							</DAI>
						</DOI>
						<DOI name="Mod" desc="Mode (controllable)"/>
						<DOI name="GrRef" desc="GrRef">
							<DAI name="setSrcRef">
								<Val>@LV_Side</Val>
							</DAI>
						</DOI>
					</LN0>
					<LN lnClass="GAPC" inst="1" lnType="SIPROTEC5_LNType_GAPC_FB0_IMP" desc="General" prefix="">
						<Private type="Siemens-MasterId">2820f203-55f4-4796-93c9-b62dd514fd80</Private>
						<DOI name="Mod" desc="Mode (controllable)"/>
						<DOI name="Beh" desc="Behavior"/>
						<DOI name="Health" desc="Health"/>
						<DOI name="NamPlt" desc="Name plate">
							<DAI name="configRev">
								<Val>2023-06-08 08:36:18</Val>
							</DAI>
						</DOI>
						<DOI name="Inactive" desc="Inactive"/>
						<DOI name="LoopOCPU" desc="Overcurrent pickup"/>
						<DOI name="VSealIn" desc="Pickup I&gt;+V-seal-in"/>
					</LN>
					<LN lnClass="PTRC" inst="1" lnType="SIPROTEC5_LNType_PTRC_ImpPTRC" desc="Group indicat." prefix="IMP_">
						<Private type="Siemens-MasterId">f74aa6c6-ae96-4ee9-b74e-142c09780eeb</Private>
						<DOI name="Mod" desc="Mode (controllable)"/>
						<DOI name="Beh" desc="Behavior"/>
						<DOI name="Health" desc="Health"/>
						<DOI name="NamPlt" desc="Name plate">
							<DAI name="configRev">
								<Val>2023-06-08 08:36:18</Val>
							</DAI>
						</DOI>
						<DOI name="Op" desc="Operate"/>
						<DOI name="Str" desc="Pickup"/>
						<DOI name="SelLoopAG" desc="Selected loop AG"/>
						<DOI name="SelLoopBG" desc="Selected loop BG"/>
						<DOI name="SelLoopCG" desc="Selected loop CG"/>
						<DOI name="SelLoopAB" desc="Selected loop AB"/>
						<DOI name="SelLoopBC" desc="Selected loop BC"/>
						<DOI name="SelLoopCA" desc="Selected loop CA"/>
					</LN>
					<LN lnClass="PDIS" inst="1" lnType="SIPROTEC5_LNType_PDIS_ImpedanceProtectionZone" desc="UImpLV" prefix="IMP_">
						<Private type="Siemens-MasterId">3d5b0f3f-0239-437f-9f72-027b279f7938</Private>
						<DOI name="Mod" desc="Mode (controllable)"/>
						<DOI name="Beh" desc="Behavior"/>
						<DOI name="Health" desc="Health"/>
						<DOI name="NamPlt" desc="Name plate">
							<DAI name="configRev">
								<Val>2023-06-08 08:36:18</Val>
							</DAI>
						</DOI>
						<DOI name="Str" desc="Pickup"/>
						<DOI name="Op" desc="Operate"/>
						<DOI name="Blk" desc="&gt;Block stage"/>
						<DOI name="Inactive" desc="Inactive"/>
						<DOI name="OpTmExp" desc="Operate delay expired"/>
					</LN>
				</LDevice>
				<LDevice desc="LV side_UV for VCon" inst="LV_Side_UV_VCon">
					<Private type="Siemens-MasterId">df48295e-2415-4677-850f-845c8c8a3cf1</Private>
					<LN0 lnClass="LLN0" inst="" lnType="SIEMENS_7UT85_001SIPROTEC5_LNType_LLN0_LDevice_Generic" desc="LV_Side_UV_VCon/LLN0">
						<Private type="Siemens-MasterId">432f2f07-4c1c-456d-ac41-c3b9a88461ad</Private>
						<DOI name="Beh" desc="Behavior"/>
						<DOI name="Health" desc="Health"/>
						<DOI name="NamPlt" desc="Name plate">
							<DAI name="configRev">
								<Val>2023-06-08 08:36:18</Val>
							</DAI>
							<DAI name="ldNs">
								<Val>IEC 61850-7-4:2007B</Val>
							</DAI>
						</DOI>
						<DOI name="Mod" desc="Mode (controllable)"/>
						<DOI name="GrRef" desc="GrRef">
							<DAI name="setSrcRef">
								<Val>@LV_Side</Val>
							</DAI>
						</DOI>
					</LN0>
					<LN lnClass="GAPC" inst="1" lnType="SIPROTEC5_LNType_GAPC_FB0_UVP_3ph_3pol" desc="General" prefix="">
						<Private type="Siemens-MasterId">49595e42-49f3-4be4-bf04-da9cb5a9c448</Private>
						<DOI name="Mod" desc="Mode (controllable)"/>
						<DOI name="Beh" desc="Behavior"/>
						<DOI name="Health" desc="Health"/>
						<DOI name="NamPlt" desc="Name plate">
							<DAI name="configRev">
								<Val>2023-06-08 08:36:18</Val>
							</DAI>
						</DOI>
						<DOI name="ASupRel" desc="&gt;Current flow-criterion"/>
						<DOI name="ASupFulfil" desc="Current crit. fulf."/>
					</LN>
					<LN lnClass="PTRC" inst="1" lnType="SIPROTEC5_LNType_PTRC_FN_Str_GABC_Without_DirRouting_Op_3pol" desc="Group indicat." prefix="">
						<Private type="Siemens-MasterId">2e0c839e-bb30-4676-b6a8-91a63b516f7c</Private>
						<DOI name="Mod" desc="Mode (controllable)"/>
						<DOI name="Beh" desc="Behavior"/>
						<DOI name="Health" desc="Health"/>
						<DOI name="NamPlt" desc="Name plate">
							<DAI name="configRev">
								<Val>2023-06-08 08:36:18</Val>
							</DAI>
						</DOI>
						<DOI name="Op" desc="Operate"/>
						<DOI name="Str" desc="Pickup"/>
					</LN>
					<LN lnClass="PTUV" inst="1" lnType="SIPROTEC5_LNType_PTUV" desc="UV for VCon" prefix="">
						<Private type="Siemens-MasterId">78f886bb-7edc-420a-a82e-59599ada51a0</Private>
						<DOI name="Mod" desc="Mode (controllable)"/>
						<DOI name="Beh" desc="Behavior"/>
						<DOI name="Health" desc="Health"/>
						<DOI name="NamPlt" desc="Name plate">
							<DAI name="configRev">
								<Val>2023-06-08 08:36:18</Val>
							</DAI>
						</DOI>
						<DOI name="Str" desc="Pickup"/>
						<DOI name="Op" desc="Operate"/>
						<DOI name="Blk" desc="&gt;Block stage"/>
						<DOI name="Inactive" desc="Inactive"/>
						<DOI name="StrAB" desc="Pickup loop AB"/>
						<DOI name="StrBC" desc="Pickup loop BC"/>
						<DOI name="StrCA" desc="Pickup loop CA"/>
						<DOI name="OpTmExp" desc="Operate delay expired"/>
					</LN>
				</LDevice>
				<LDevice desc="LV side_LatchingVCon Trip" inst="LV_Side_VCon_Latch_Trip">
					<Private type="Siemens-MasterId">8b6f1b85-0928-4b2a-abbb-03ec0e19faab</Private>
					<LN0 lnClass="LLN0" inst="" lnType="SIEMENS_7UT85_001SIPROTEC5_LNType_LLN0_LDevice_Generic" desc="LV_Side_VCon_Latch_Trip/LLN0">
						<Private type="Siemens-MasterId">02204ffa-ce93-479c-8790-bb78dfe478f2</Private>
						<DOI name="Beh" desc="Behavior"/>
						<DOI name="Health" desc="Health"/>
						<DOI name="NamPlt" desc="Name plate">
							<DAI name="configRev">
								<Val>2023-06-08 08:36:18</Val>
							</DAI>
							<DAI name="ldNs">
								<Val>IEC 61850-7-4:2007B</Val>
							</DAI>
						</DOI>
						<DOI name="Mod" desc="Mode (controllable)"/>
						<DOI name="GrRef" desc="GrRef">
							<DAI name="setSrcRef">
								<Val>@LV_Side</Val>
							</DAI>
						</DOI>
					</LN0>
					<LN lnClass="PSCH" inst="1" lnType="SIEMENS_7UT85_001SIPROTEC5_LNType_PSCH_ExtTrip_1" desc="Stage 1" prefix="EXT_">
						<Private type="Siemens-MasterId">0e323fe9-5951-4cc7-9d8e-731248e6439c</Private>
						<DOI name="Mod" desc="Mode (controllable)"/>
						<DOI name="Beh" desc="Behavior"/>
						<DOI name="Health" desc="Health"/>
						<DOI name="NamPlt" desc="Name plate">
							<DAI name="configRev">
								<Val>2023-06-08 08:36:18</Val>
							</DAI>
						</DOI>
						<DOI name="Str" desc="Pickup"/>
						<DOI name="Op" desc="Operate"/>
						<DOI name="Blk" desc="&gt;Block function"/>
						<DOI name="ExtIn" desc="&gt;External trip"/>
						<DOI name="Inactive" desc="Inactive"/>
						<DOI name="OpTmExp" desc="Operate delay expired"/>
					</LN>
				</LDevice>
				<LDevice desc="LV side_VCon Trip" inst="LV_Side_VCon_Trip">
					<Private type="Siemens-MasterId">a4fa8a64-f668-4095-9450-8848fb606928</Private>
					<LN0 lnClass="LLN0" inst="" lnType="SIEMENS_7UT85_001SIPROTEC5_LNType_LLN0_LDevice_Generic" desc="LV_Side_VCon_Trip/LLN0">
						<Private type="Siemens-MasterId">7c58efd1-53fb-4cdf-ad11-fef67d3c9c79</Private>
						<DOI name="Beh" desc="Behavior"/>
						<DOI name="Health" desc="Health"/>
						<DOI name="NamPlt" desc="Name plate">
							<DAI name="configRev">
								<Val>2023-06-08 08:36:18</Val>
							</DAI>
							<DAI name="ldNs">
								<Val>IEC 61850-7-4:2007B</Val>
							</DAI>
						</DOI>
						<DOI name="Mod" desc="Mode (controllable)"/>
						<DOI name="GrRef" desc="GrRef">
							<DAI name="setSrcRef">
								<Val>@LV_Side</Val>
							</DAI>
						</DOI>
					</LN0>
					<LN lnClass="PSCH" inst="1" lnType="SIEMENS_7UT85_001SIPROTEC5_LNType_PSCH_ExtTrip_1" desc="Stage 1" prefix="EXT_">
						<Private type="Siemens-MasterId">f7952cb5-6922-444b-860f-8dcd24652a5f</Private>
						<DOI name="Mod" desc="Mode (controllable)"/>
						<DOI name="Beh" desc="Behavior"/>
						<DOI name="Health" desc="Health"/>
						<DOI name="NamPlt" desc="Name plate">
							<DAI name="configRev">
								<Val>2023-06-08 08:36:18</Val>
							</DAI>
						</DOI>
						<DOI name="Str" desc="Pickup"/>
						<DOI name="Op" desc="Operate"/>
						<DOI name="Blk" desc="&gt;Block function"/>
						<DOI name="ExtIn" desc="&gt;External trip"/>
						<DOI name="Inactive" desc="Inactive"/>
						<DOI name="OpTmExp" desc="Operate delay expired"/>
					</LN>
				</LDevice>
				<LDevice desc="LV side_LV VT healthy" inst="LV_Side_VT_Healthy">
					<Private type="Siemens-MasterId">e7457e6a-f583-4a32-96d0-9607e8fa88ef</Private>
					<LN0 lnClass="LLN0" inst="" lnType="SIEMENS_7UT85_001SIPROTEC5_LNType_LLN0_LDevice_Generic" desc="LV_Side_VT_Healthy/LLN0">
						<Private type="Siemens-MasterId">7f439136-e3b7-479b-8fd9-d86679cc2808</Private>
						<DOI name="Beh" desc="Behavior"/>
						<DOI name="Health" desc="Health"/>
						<DOI name="NamPlt" desc="Name plate">
							<DAI name="configRev">
								<Val>2023-06-08 08:36:18</Val>
							</DAI>
							<DAI name="ldNs">
								<Val>IEC 61850-7-4:2007B</Val>
							</DAI>
						</DOI>
						<DOI name="Mod" desc="Mode (controllable)"/>
						<DOI name="GrRef" desc="GrRef">
							<DAI name="setSrcRef">
								<Val>@LV_Side</Val>
							</DAI>
						</DOI>
					</LN0>
					<LN lnClass="PTRC" inst="1" lnType="SIPROTEC5_LNType_PTRC_FN_Str_GABC_Without_DirRouting_Op_3pol" desc="Group indicat." prefix="">
						<Private type="Siemens-MasterId">c900622f-a611-40b9-a018-741d1b3213e6</Private>
						<DOI name="Mod" desc="Mode (controllable)"/>
						<DOI name="Beh" desc="Behavior"/>
						<DOI name="Health" desc="Health"/>
						<DOI name="NamPlt" desc="Name plate">
							<DAI name="configRev">
								<Val>2023-06-08 08:36:18</Val>
							</DAI>
						</DOI>
						<DOI name="Op" desc="Operate"/>
						<DOI name="Str" desc="Pickup"/>
					</LN>
					<LN lnClass="PTOV" inst="1" lnType="SIPROTEC5_LNType_PTOV" desc="LV VT Healthy" prefix="">
						<Private type="Siemens-MasterId">8d67bd77-8a23-44d3-9a44-897c3579a2ad</Private>
						<DOI name="Mod" desc="Mode (controllable)"/>
						<DOI name="Beh" desc="Behavior"/>
						<DOI name="Health" desc="Health"/>
						<DOI name="NamPlt" desc="Name plate">
							<DAI name="configRev">
								<Val>2023-06-08 08:36:18</Val>
							</DAI>
						</DOI>
						<DOI name="Str" desc="Pickup"/>
						<DOI name="Op" desc="Operate"/>
						<DOI name="Blk" desc="&gt;Block stage"/>
						<DOI name="Inactive" desc="Inactive"/>
						<DOI name="StrAB" desc="Pickup loop AB"/>
						<DOI name="StrBC" desc="Pickup loop BC"/>
						<DOI name="StrCA" desc="Pickup loop CA"/>
						<DOI name="OpTmExp" desc="Operate delay expired"/>
					</LN>
				</LDevice>
				<LDevice desc="OL(NER)LV" inst="OL_NER_LV">
					<Private type="Siemens-MasterId">4ed54c60-df5d-4933-b240-ec5b3904b8fc</Private>
					<LN0 lnClass="LLN0" inst="" lnType="SIEMENS_7UT85_001SIPROTEC5_LNType_LLN0_LDevice_Generic" desc="OL_NER_LV/LLN0">
						<Private type="Siemens-MasterId">c1a233c9-1038-422e-b556-39d85e2a1cff</Private>
						<DOI name="Beh" desc="Behavior"/>
						<DOI name="Health" desc="Health"/>
						<DOI name="NamPlt" desc="Name plate">
							<DAI name="configRev">
								<Val>2023-06-08 09:02:55</Val>
							</DAI>
							<DAI name="ldNs">
								<Val>IEC 61850-7-4:2007B</Val>
							</DAI>
						</DOI>
						<DOI name="Mod" desc="Mode (controllable)"/>
						<DOI name="GrRef" desc="GrRef">
							<DAI name="setSrcRef">
								<Val>@Application</Val>
							</DAI>
						</DOI>
					</LN0>
					<LN lnClass="GAPC" inst="1" lnType="SIPROTEC5_LNType_GAPC_DisImpedanceExcitation" desc="General" prefix="VI1P_">
						<Private type="Siemens-MasterId">0561f695-7d93-4b74-809e-976d235dea20</Private>
						<DOI name="Mod" desc="Mode (controllable)"/>
						<DOI name="Beh" desc="Behavior"/>
						<DOI name="Health" desc="Health"/>
						<DOI name="NamPlt" desc="Name plate">
							<DAI name="configRev">
								<Val>2023-06-08 09:02:55</Val>
							</DAI>
						</DOI>
					</LN>
					<LN lnClass="PTRC" inst="1" lnType="SIPROTEC5_LNType_PTRC_FN_Str_NonPhsSel_Without_DirRouting_Op_3pol" desc="Group indicat." prefix="">
						<Private type="Siemens-MasterId">3b099fd3-1d68-4df9-bec4-d5222a4417aa</Private>
						<DOI name="Mod" desc="Mode (controllable)"/>
						<DOI name="Beh" desc="Behavior"/>
						<DOI name="Health" desc="Health"/>
						<DOI name="NamPlt" desc="Name plate">
							<DAI name="configRev">
								<Val>2023-06-08 09:02:55</Val>
							</DAI>
						</DOI>
						<DOI name="Op" desc="Operate"/>
						<DOI name="Str" desc="Pickup"/>
					</LN>
					<LN lnClass="GAPC" inst="1" lnType="SIEMENS_7UT85_001SIPROTEC5_LNType_ResetLed" desc="Reset LED Group" prefix="RSLED">
						<Private type="Siemens-MasterId">a08b5936-7a66-414e-b36e-1be59030c537</Private>
						<DOI name="Mod" desc="Mode (controllable)"/>
						<DOI name="Beh" desc="Behavior"/>
						<DOI name="Health" desc="Health"/>
						<DOI name="NamPlt" desc="Name plate">
							<DAI name="configRev">
								<Val>2023-06-08 09:02:55</Val>
							</DAI>
						</DOI>
						<DOI name="ResetIn" desc="&gt;LED reset"/>
						<DOI name="LedTstOut" desc="LED have been reset"/>
						<DOI name="ResetCtl" desc="Reset LEDs"/>
					</LN>
					<LN lnClass="PTTR" inst="1" lnType="SIPROTEC5_LNType_PTTR_1ph" desc="OL(NER)LV" prefix="">
						<Private type="Siemens-MasterId">b183fbb5-8b47-4c0c-9a91-fedff4045aba</Private>
						<DOI name="Mod" desc="Mode (controllable)"/>
						<DOI name="Beh" desc="Behavior"/>
						<DOI name="Health" desc="Health"/>
						<DOI name="NamPlt" desc="Name plate">
							<DAI name="configRev">
								<Val>2023-06-08 09:02:55</Val>
							</DAI>
						</DOI>
						<DOI name="TmpRl" desc="Overload">
							<DAI name="db">
								<Val>100</Val>
							</DAI>
						</DOI>
						<DOI name="Str" desc="Pickup"/>
						<DOI name="Op" desc="Operate"/>
						<DOI name="AlmThm" desc="Thermal warning"/>
						<DOI name="Blk" desc="&gt;Block stage"/>
						<DOI name="RsThmRep" desc="&gt;Reset thermal replica"/>
						<DOI name="Inactive" desc="Inactive"/>
						<DOI name="OpAlmOnly" desc="Operate alarm only"/>
						<DOI name="AlmA" desc="Current warning"/>
						<DOI name="TmsUtlCls" desc="Time until close">
							<DAI name="db">
								<Val>100</Val>
							</DAI>
						</DOI>
						<DOI name="TmsUtlTr" desc="Time until trip">
							<DAI name="db">
								<Val>100</Val>
							</DAI>
						</DOI>
						<DOI name="AEquiva" desc="Equival. current">
							<SDI name="units">
								<DAI name="SIUnit">
									<Val>A</Val>
								</DAI>
							</SDI>
							<DAI name="db">
								<Val>100</Val>
							</DAI>
							<DAI name="dbRef">
								<Val>1000</Val>
							</DAI>
						</DOI>
					</LN>
				</LDevice>
				<LDevice desc="OL(NER)LV_FdOMV" inst="OL_NER_LV_Fundamental">
					<Private type="Siemens-MasterId">19a0e018-4bde-4da2-b0f8-dfd9cceb1c7a</Private>
					<LN0 lnClass="LLN0" inst="" lnType="SIEMENS_7UT85_001SIPROTEC5_LNType_LLN0_LDevice_Generic" desc="OL_NER_LV_Fundamental/LLN0">
						<Private type="Siemens-MasterId">eb4a5616-4160-4f46-8a8d-5f3d59e3472b</Private>
						<DOI name="Beh" desc="Behavior"/>
						<DOI name="Health" desc="Health"/>
						<DOI name="NamPlt" desc="Name plate">
							<DAI name="configRev">
								<Val>2023-06-08 09:02:55</Val>
							</DAI>
							<DAI name="ldNs">
								<Val>IEC 61850-7-4:2007B</Val>
							</DAI>
						</DOI>
						<DOI name="Mod" desc="Mode (controllable)"/>
						<DOI name="GrRef" desc="GrRef">
							<DAI name="setSrcRef">
								<Val>@OL_NER_LV</Val>
							</DAI>
						</DOI>
					</LN0>
					<LN lnClass="MMXN" inst="1" lnType="SIPROTEC5_LNType_MMXN_OpMeas_Fund_1ph_Pres" desc="Fundam" prefix="FPRE_">
						<Private type="Siemens-MasterId">e83d5e82-0160-4a22-ae7e-be77101c51cd</Private>
						<DOI name="Mod" desc="Mode (controllable)"/>
						<DOI name="Beh" desc="Behavior"/>
						<DOI name="Health" desc="Health"/>
						<DOI name="NamPlt" desc="Name plate">
							<DAI name="configRev">
								<Val>2023-06-08 09:02:55</Val>
							</DAI>
						</DOI>
						<DOI name="VxC" desc="V">
							<SDI name="units">
								<DAI name="SIUnit">
									<Val>V</Val>
								</DAI>
							</SDI>
							<DAI name="db">
								<Val>2000</Val>
							</DAI>
						</DOI>
						<DOI name="VsynxC" desc="Vsy">
							<SDI name="units">
								<DAI name="SIUnit">
									<Val>V</Val>
								</DAI>
							</SDI>
							<DAI name="db">
								<Val>2000</Val>
							</DAI>
						</DOI>
						<DOI name="ANparLnC" desc="INp.line">
							<SDI name="units">
								<DAI name="SIUnit">
									<Val>A</Val>
								</DAI>
							</SDI>
							<DAI name="db">
								<Val>10000</Val>
							</DAI>
						</DOI>
						<DOI name="AstarPtC" desc="IY traf.">
							<SDI name="units">
								<DAI name="SIUnit">
									<Val>A</Val>
								</DAI>
							</SDI>
							<DAI name="db">
								<Val>10000</Val>
							</DAI>
						</DOI>
						<DOI name="AxC" desc="I">
							<SDI name="units">
								<DAI name="SIUnit">
									<Val>A</Val>
								</DAI>
							</SDI>
							<DAI name="db">
								<Val>10000</Val>
							</DAI>
							<DAI name="dbRef">
								<Val>1000</Val>
							</DAI>
						</DOI>
						<DOI name="VneutC" desc="VN">
							<SDI name="units">
								<DAI name="SIUnit">
									<Val>V</Val>
								</DAI>
							</SDI>
							<DAI name="db">
								<Val>2000</Val>
							</DAI>
						</DOI>
						<DOI name="Vseq0" desc="Vseq:0">
							<SDI name="units">
								<DAI name="SIUnit">
									<Val>V</Val>
								</DAI>
							</SDI>
							<DAI name="db">
								<Val>2000</Val>
							</DAI>
						</DOI>
					</LN>
				</LDevice>
				<LDevice desc="F:ETH-BD-2FO" inst="PortF">
					<Private type="Siemens-MasterId">3fc26708-1ced-4226-8838-195f5a26ec70</Private>
					<LN0 lnClass="LLN0" inst="" lnType="SIEMENS_7UT85_001SIPROTEC5_LNType_LLN0_LDevice_Generic" desc="PortF/LLN0">
						<Private type="Siemens-MasterId">d0d8a384-8070-4372-bc78-03c6c9f04615</Private>
						<DOI name="Beh" desc="Behavior"/>
						<DOI name="Health" desc="Health"/>
						<DOI name="NamPlt" desc="Name plate">
							<DAI name="configRev">
								<Val>2023-01-12 02:02:23</Val>
							</DAI>
							<DAI name="ldNs">
								<Val>IEC 61850-7-4:2007B</Val>
							</DAI>
						</DOI>
						<DOI name="Mod" desc="Mode (controllable)"/>
						<DOI name="GrRef" desc="GrRef">
							<DAI name="setSrcRef">
								<Val>@Application</Val>
							</DAI>
						</DOI>
					</LN0>
				</LDevice>
				<LDevice desc="F:ETH-BD-2FO_Chan.1" inst="PortF_Channel1">
					<Private type="Siemens-MasterId">f3bdc65b-f8b4-4fd1-9137-a411d223ecdf</Private>
					<LN0 lnClass="LLN0" inst="" lnType="SIEMENS_7UT85_001SIPROTEC5_LNType_LLN0_LDevice_Generic" desc="PortF_Channel1/LLN0">
						<Private type="Siemens-MasterId">d334da4a-9da0-47e8-8bfd-0e36e377928f</Private>
						<DOI name="Beh" desc="Behavior"/>
						<DOI name="Health" desc="Health"/>
						<DOI name="NamPlt" desc="Name plate">
							<DAI name="configRev">
								<Val>2023-06-08 08:36:18</Val>
							</DAI>
							<DAI name="ldNs">
								<Val>IEC 61850-7-4:2007B</Val>
							</DAI>
						</DOI>
						<DOI name="Mod" desc="Mode (controllable)"/>
						<DOI name="GrRef" desc="GrRef">
							<DAI name="setSrcRef">
								<Val>@PortF</Val>
							</DAI>
						</DOI>
					</LN0>
					<LN lnClass="LCCH" inst="1" lnType="SIPROTEC5_LNType_LCCH_PRP" desc="PRP" prefix="PRP_">
						<Private type="Siemens-MasterId">8032bfe5-0ffb-4cd0-91bd-62e4f4866d95</Private>
						<DOI name="Mod" desc="Mode (controllable)"/>
						<DOI name="Beh" desc="Behavior"/>
						<DOI name="Health" desc="Health"/>
						<DOI name="NamPlt" desc="Name plate">
							<DAI name="configRev">
								<Val>2023-06-08 08:36:18</Val>
							</DAI>
						</DOI>
						<DOI name="ChLiv" desc="Channel Live"/>
						<DOI name="RedChLiv" desc="Redund. Channel Live"/>
						<DOI name="ChFail" desc="Channel 1 Fail">
							<DAI name="dataNs">
								<Val>Transpower:2023</Val>
							</DAI>
						</DOI>
						<DOI name="RedChFail" desc="Channel 2 Fail">
							<DAI name="dataNs">
								<Val>Transpower:2023</Val>
							</DAI>
						</DOI>
					</LN>
					<LN lnClass="LTPC" inst="1" lnType="SIEMENS_7UT85_001SIPROTEC5_LNType_LTPC_IEEE1588HiAcc" desc="IEEE 1588" prefix="PTP_">
						<Private type="Siemens-MasterId">9f067e6b-5505-43e9-9396-8d03f573d61d</Private>
						<DOI name="Mod" desc="Mode (controllable)"/>
						<DOI name="Beh" desc="Behavior"/>
						<DOI name="Health" desc="Health"/>
						<DOI name="NamPlt" desc="Name plate">
							<DAI name="configRev">
								<Val>2023-06-08 08:36:18</Val>
							</DAI>
							<DAI name="lnNs">
								<Val>(Tr)IEC 61850-90-4:2018A</Val>
							</DAI>
						</DOI>
						<DOI name="ClkAcc" desc="Clock accuracy"/>
						<DOI name="ClkClass" desc="Clock class"/>
						<DOI name="ClkId" desc="Clock identity"/>
						<DOI name="GmClkClass" desc="GM clock class"/>
						<DOI name="GmClkId" desc="GM clock identity"/>
						<DOI name="GmClkPrio1" desc="GM clock priority 1"/>
						<DOI name="GmClkPrio2" desc="GM clock priority 2"/>
						<DOI name="GmClkAcc" desc="GM clock accuracy"/>
						<DOI name="MePathDlTmns" desc="Mean path delay"/>
						<DOI name="NumPorts" desc="Number of ports"/>
						<DOI name="OfsMaster" desc="Offset from master">
							<SDI name="units">
								<DAI name="SIUnit">
									<Val>ns</Val>
								</DAI>
							</SDI>
						</DOI>
						<DOI name="OfsUtc" desc="UtcOffset valid"/>
						<DOI name="OfsUtcTms" desc="UtcOffset">
							<SDI name="units">
								<DAI name="SIUnit">
									<Val>s</Val>
								</DAI>
							</SDI>
						</DOI>
						<DOI name="PrntClkId" desc="Master-clock identity"/>
						<DOI name="Stepsr" desc="Steps removed"/>
						<DOI name="TmSrcVal" desc="Time source"/>
						<DOI name="TwoStep" desc="2-step"/>
						<DOI name="PrntPortId" desc="Master-port identity"/>
						<DOI name="GmClkVar" desc="GmClkVar"/>
						<DOI name="ClkVar" desc="Clock variance"/>
						<DOI name="ClkPrio1" desc="Clock priority 1">
							<DAI name="setVal">
								<Val>255</Val>
							</DAI>
							<DAI name="maxVal">
								<Val>255</Val>
							</DAI>
							<DAI name="stepSize">
								<Val>1</Val>
							</DAI>
						</DOI>
						<DOI name="ClkPrio2" desc="Clock priority 2">
							<DAI name="setVal">
								<Val>255</Val>
							</DAI>
							<DAI name="maxVal">
								<Val>255</Val>
							</DAI>
							<DAI name="stepSize">
								<Val>1</Val>
							</DAI>
						</DOI>
						<DOI name="DomainNum" desc="Domain number">
							<DAI name="setVal">
								<Val>0</Val>
							</DAI>
							<DAI name="maxVal">
								<Val>255</Val>
							</DAI>
							<DAI name="stepSize">
								<Val>1</Val>
							</DAI>
						</DOI>
						<DOI name="OfsLimTmns" desc="Max. offset from master">
							<DAI name="setVal">
								<Val>1000</Val>
							</DAI>
							<DAI name="maxVal">
								<Val>10000</Val>
							</DAI>
							<DAI name="stepSize">
								<Val>1</Val>
							</DAI>
						</DOI>
						<DOI name="Slave" desc="Slave only">
							<DAI name="setVal">
								<Val>true</Val>
							</DAI>
						</DOI>
						<DOI name="PrntPortNum" desc="Master-port identity">
							<DAI name="setVal">
								<Val>0</Val>
							</DAI>
							<DAI name="maxVal">
								<Val>255</Val>
							</DAI>
							<DAI name="stepSize">
								<Val>1</Val>
							</DAI>
						</DOI>
						<DOI name="ChLiv" desc="Channel Live"/>
						<DOI name="ServoStatus" desc="Clock servo status"/>
						<DOI name="ChFail" desc="PTP Failed">
							<DAI name="dataNs">
								<Val>Transpower:2023</Val>
							</DAI>
						</DOI>
					</LN>
					<LN lnClass="LCCH" inst="1" lnType="SIPROTEC5_LNType_LCCH_SNMP" desc="SNMP" prefix="SNMP_">
						<Private type="Siemens-MasterId">a3d5faeb-b143-4f6a-afe1-e4cf27c7349d</Private>
						<DOI name="Mod" desc="Mode (controllable)"/>
						<DOI name="Beh" desc="Behavior"/>
						<DOI name="Health" desc="Health"/>
						<DOI name="NamPlt" desc="Name plate">
							<DAI name="configRev">
								<Val>2023-06-08 08:36:18</Val>
							</DAI>
						</DOI>
						<DOI name="ChLiv" desc="Channel Live"/>
					</LN>
					<LN lnClass="LCCH" inst="1" lnType="SIPROTEC5_LNType_LCCH_SNMP" desc="IEC 61850-8-1" prefix="">
						<Private type="Siemens-MasterId">43f84892-250d-4c70-bf39-6c8cfa3806c6</Private>
						<DOI name="Mod" desc="Mode (controllable)"/>
						<DOI name="Beh" desc="Behavior"/>
						<DOI name="Health" desc="Health"/>
						<DOI name="NamPlt" desc="Name plate">
							<DAI name="configRev">
								<Val>2023-06-08 08:36:18</Val>
							</DAI>
						</DOI>
						<DOI name="ChLiv" desc="Channel Live"/>
					</LN>
					<LN lnClass="LCCH" inst="1" lnType="SIPROTEC5_LNType_LCCH_SNMP" desc="9-2 Client" prefix="PBCL_">
						<Private type="Siemens-MasterId">affb0c1f-938e-49bd-9093-bb29200f3313</Private>
						<DOI name="Mod" desc="Mode (status only)"/>
						<DOI name="Beh" desc="Behavior"/>
						<DOI name="Health" desc="Health"/>
						<DOI name="NamPlt" desc="Name plate">
							<DAI name="configRev">
								<Val>2023-06-08 08:36:18</Val>
							</DAI>
						</DOI>
						<DOI name="ChLiv" desc="Channel Live"/>
					</LN>
					<LN lnClass="LTTC" inst="1" lnType="SIPROTEC5_LNType_LTTC_IEEE1588HiAcc" desc="IEEE 1588 TC" prefix="PTP_">
						<Private type="Siemens-MasterId">6a5dd997-22b4-4c3e-a35f-3327a81bf15f</Private>
						<DOI name="Mod" desc="Mode (controllable)"/>
						<DOI name="Beh" desc="Behavior"/>
						<DOI name="Health" desc="Health"/>
						<DOI name="NamPlt" desc="Name plate">
							<DAI name="configRev">
								<Val>2023-06-08 08:36:18</Val>
							</DAI>
							<DAI name="lnNs">
								<Val>(Tr)IEC 61850-90-4:2018A</Val>
							</DAI>
						</DOI>
						<DOI name="DomainNum" desc="Domain number">
							<DAI name="setVal">
								<Val>0</Val>
							</DAI>
							<DAI name="maxVal">
								<Val>255</Val>
							</DAI>
							<DAI name="stepSize">
								<Val>1</Val>
							</DAI>
						</DOI>
						<DOI name="ChLiv" desc="Channel Live"/>
					</LN>
					<LN lnClass="LCCH" inst="1" lnType="SIPROTEC5_LNType_LCCH_SNMP" desc="IEEE 1588 Chan" prefix="PTP_">
						<Private type="Siemens-MasterId">09419a51-2c64-416d-8bd1-92e9cf0bc125</Private>
						<DOI name="Mod" desc="Mode (controllable)"/>
						<DOI name="Beh" desc="Behavior"/>
						<DOI name="Health" desc="Health"/>
						<DOI name="NamPlt" desc="Name plate">
							<DAI name="configRev">
								<Val>2023-06-08 08:36:18</Val>
							</DAI>
						</DOI>
						<DOI name="ChLiv" desc="Channel Live"/>
					</LN>
				</LDevice>
				<LDevice desc="J:Onboard Ethernet" inst="PortJ">
					<Private type="Siemens-MasterId">2b196f76-f358-483d-8a94-10324dec7cda</Private>
					<LN0 lnClass="LLN0" inst="" lnType="SIEMENS_7UT85_001SIPROTEC5_LNType_LLN0_LDevice_Generic" desc="PortJ/LLN0">
						<Private type="Siemens-MasterId">1448650c-9842-4aec-987c-c4cc2758da73</Private>
						<DOI name="Beh" desc="Behavior"/>
						<DOI name="Health" desc="Health"/>
						<DOI name="NamPlt" desc="Name plate">
							<DAI name="configRev">
								<Val>2023-01-12 02:02:23</Val>
							</DAI>
							<DAI name="ldNs">
								<Val>IEC 61850-7-4:2007B</Val>
							</DAI>
						</DOI>
						<DOI name="Mod" desc="Mode (controllable)"/>
						<DOI name="GrRef" desc="GrRef">
							<DAI name="setSrcRef">
								<Val>@Application</Val>
							</DAI>
						</DOI>
					</LN0>
				</LDevice>
				<LDevice desc="J:Onboard Ethernet_Chan.1" inst="PortJ_Channel1">
					<Private type="Siemens-MasterId">99848d9c-c89b-47ed-9297-9fbe2422d409</Private>
					<LN0 lnClass="LLN0" inst="" lnType="SIEMENS_7UT85_001SIPROTEC5_LNType_LLN0_LDevice_Generic" desc="PortJ_Channel1/LLN0">
						<Private type="Siemens-MasterId">88f01f46-5829-46a3-9d06-4308c50a3e35</Private>
						<DOI name="Beh" desc="Behavior"/>
						<DOI name="Health" desc="Health"/>
						<DOI name="NamPlt" desc="Name plate">
							<DAI name="configRev">
								<Val>2023-01-12 02:02:23</Val>
							</DAI>
							<DAI name="ldNs">
								<Val>IEC 61850-7-4:2007B</Val>
							</DAI>
						</DOI>
						<DOI name="Mod" desc="Mode (controllable)"/>
						<DOI name="GrRef" desc="GrRef">
							<DAI name="setSrcRef">
								<Val>@PortJ</Val>
							</DAI>
						</DOI>
					</LN0>
				</LDevice>
				<LDevice desc="PowS" inst="PowS">
					<Private type="Siemens-MasterId">c74ba779-3aa2-4940-b356-cf3f454cdf32</Private>
					<LN0 lnClass="LLN0" inst="" lnType="SIEMENS_7UT85_001SIPROTEC5_LNType_LLN0_LDevice_Generic" desc="PowS/LLN0">
						<Private type="Siemens-MasterId">f8bbadc4-e903-4157-81e6-3cbcd25dbf63</Private>
						<DOI name="Beh" desc="Behavior"/>
						<DOI name="Health" desc="Health"/>
						<DOI name="NamPlt" desc="Name plate">
							<DAI name="configRev">
								<Val>2023-06-08 08:36:18</Val>
							</DAI>
							<DAI name="ldNs">
								<Val>IEC 61850-7-4:2007B</Val>
							</DAI>
						</DOI>
						<DOI name="Mod" desc="Mode (controllable)"/>
						<DOI name="GrRef" desc="GrRef">
							<DAI name="setSrcRef">
								<Val>@Application</Val>
							</DAI>
						</DOI>
					</LN0>
					<LN lnClass="GAPC" inst="1" lnType="SIPROTEC5_LNType_GAPC_FB0_PowerSystem" desc="General" prefix="">
						<Private type="Siemens-MasterId">deb74d38-43c7-4d8c-bfb5-a4e106040bb9</Private>
						<DOI name="Mod" desc="Mode (controllable)"/>
						<DOI name="Beh" desc="Behavior"/>
						<DOI name="Health" desc="Health"/>
						<DOI name="NamPlt" desc="Name plate">
							<DAI name="configRev">
								<Val>2023-06-08 08:36:18</Val>
							</DAI>
						</DOI>
						<DOI name="PhaseRev" desc="&gt;Phs-rotation reversal"/>
						<DOI name="InvPhases" desc="&gt;Invert Phases"/>
						<DOI name="PhRevABC" desc="Phase sequence ABC"/>
						<DOI name="PhRevACB" desc="Phase sequence ACB"/>
						<DOI name="FOutOfRg" desc="Freq.out of oper.range"/>
					</LN>
				</LDevice>
				<LDevice desc="PowS_HV Phase CT" inst="PowS_HV_PhaseCT">
					<Private type="Siemens-MasterId">8192e213-09da-4097-8477-c79dfd974695</Private>
					<LN0 lnClass="LLN0" inst="" lnType="SIEMENS_7UT85_001SIPROTEC5_LNType_LLN0_LDevice_Generic" desc="PowS_HV_PhaseCT/LLN0">
						<Private type="Siemens-MasterId">368ba21e-1819-4ba1-9ebb-139597e966e8</Private>
						<DOI name="Beh" desc="Behavior"/>
						<DOI name="Health" desc="Health"/>
						<DOI name="NamPlt" desc="Name plate">
							<DAI name="configRev">
								<Val>2023-06-08 08:36:18</Val>
							</DAI>
							<DAI name="ldNs">
								<Val>IEC 61850-7-4:2007B</Val>
							</DAI>
						</DOI>
						<DOI name="Mod" desc="Mode (controllable)"/>
						<DOI name="GrRef" desc="GrRef">
							<DAI name="setSrcRef">
								<Val>@PowS</Val>
							</DAI>
						</DOI>
					</LN0>
					<LN lnClass="GAPC" inst="1" lnType="SIEMENS_7UT85_001SIPROTEC5_LNType_GAPC_FB0_MUCurrent_3ph" desc="CT 3-phase" prefix="CT3P_">
						<Private type="Siemens-MasterId">15d387f9-394a-4b2a-ad34-cb7ace038a63</Private>
						<DOI name="Mod" desc="Mode (controllable)"/>
						<DOI name="Beh" desc="Behavior"/>
						<DOI name="Health" desc="Health"/>
						<DOI name="NamPlt" desc="Name plate">
							<DAI name="configRev">
								<Val>2023-06-08 08:36:18</Val>
							</DAI>
						</DOI>
						<DOI name="CtrlIn" desc="Disconnection"/>
						<DOI name="DisSet" desc="&gt;Disconnection on"/>
						<DOI name="DisReset" desc="&gt;Disconnection off"/>
						<DOI name="InvPhABCur" desc="Phases AB inverted"/>
						<DOI name="InvPhBCCur" desc="Phases BC inverted"/>
						<DOI name="InvPhACCur" desc="Phases AC inverted"/>
						<DOI name="StateBi" desc="Disconnection via BI"/>
						<DOI name="StateCmd" desc="Disconnect. via control"/>
					</LN>
					<LN lnClass="TCTR" inst="1" lnType="SIPROTEC5_LNType_TCTR" desc="CT 1" prefix="I01A">
						<Private type="Siemens-MasterId">4689ca89-8ae3-4b8a-94e6-091371b14245</Private>
						<DOI name="Mod" desc="Mode (status only)"/>
						<DOI name="Beh" desc="Behavior"/>
						<DOI name="Health" desc="Health"/>
						<DOI name="NamPlt" desc="Name plate">
							<DAI name="configRev">
								<Val>2023-06-08 08:36:18</Val>
							</DAI>
							<DAI name="lnNs">
								<Val>IEC 61869-9:2016A</Val>
							</DAI>
						</DOI>
						<DOI name="ARtg" desc="Rated primary current">
							<SDI name="setMag">
								<DAI name="f">
									<Val>400</Val>
								</DAI>
							</SDI>
							<SDI name="units">
								<DAI name="SIUnit">
									<Val>A</Val>
								</DAI>
							</SDI>
							<SDI name="minVal">
								<DAI name="f">
									<Val>1</Val>
								</DAI>
							</SDI>
							<SDI name="maxVal">
								<DAI name="f">
									<Val>100000</Val>
								</DAI>
							</SDI>
							<SDI name="stepSize">
								<DAI name="f">
									<Val>0.1</Val>
								</DAI>
							</SDI>
						</DOI>
						<DOI name="Rat" desc="Rat">
							<SDI name="setMag">
								<DAI name="f">
									<Val>400</Val>
								</DAI>
							</SDI>
							<SDI name="maxVal">
								<DAI name="f">
									<Val>10000</Val>
								</DAI>
							</SDI>
							<SDI name="stepSize">
								<DAI name="f">
									<Val>0.1</Val>
								</DAI>
							</SDI>
						</DOI>
						<DOI name="HzRtg" desc="Rated frequency">
							<SDI name="setMag">
								<DAI name="f">
									<Val>50</Val>
								</DAI>
							</SDI>
							<SDI name="units">
								<DAI name="SIUnit">
									<Val>Hz</Val>
								</DAI>
							</SDI>
							<SDI name="minVal">
								<DAI name="f">
									<Val>16.67</Val>
								</DAI>
							</SDI>
							<SDI name="maxVal">
								<DAI name="f">
									<Val>60</Val>
								</DAI>
							</SDI>
							<SDI name="stepSize">
								<DAI name="f">
									<Val>0.01</Val>
								</DAI>
							</SDI>
						</DOI>
						<DOI name="Cor" desc="Magnitude correction">
							<SDI name="setMag">
								<DAI name="f">
									<Val>1</Val>
								</DAI>
							</SDI>
							<SDI name="minVal">
								<DAI name="f">
									<Val>0.01</Val>
								</DAI>
							</SDI>
							<SDI name="maxVal">
								<DAI name="f">
									<Val>10</Val>
								</DAI>
							</SDI>
							<SDI name="stepSize">
								<DAI name="f">
									<Val>1E-05</Val>
								</DAI>
							</SDI>
						</DOI>
						<DOI name="AmpSv" desc="Sampled val. current">
							<SDI name="units">
								<DAI name="SIUnit">
									<Val>A</Val>
								</DAI>
							</SDI>
							<SDI name="sVC">
								<DAI name="scaleFactor">
									<Val>0.001</Val>
								</DAI>
							</SDI>
						</DOI>
						<DOI name="Trp" desc="Transient perform. class">
							<DAI name="setVal">
								<Val>TPM</Val>
							</DAI>
						</DOI>
						<DOI name="ScndTmms" desc="Second. loop time const.">
							<DAI name="setVal">
								<Val>210</Val>
							</DAI>
							<DAI name="minVal">
								<Val>1</Val>
							</DAI>
							<DAI name="maxVal">
								<Val>2147483647</Val>
							</DAI>
						</DOI>
						<DOI name="Clip" desc="Ratio of clipping limit">
							<SDI name="setMag">
								<DAI name="f">
									<Val>100</Val>
								</DAI>
							</SDI>
							<SDI name="maxVal">
								<DAI name="f">
									<Val>100</Val>
								</DAI>
							</SDI>
							<SDI name="stepSize">
								<DAI name="f">
									<Val>0.01</Val>
								</DAI>
							</SDI>
						</DOI>
						<DOI name="AccMeas" desc="Meas. accuracy class">
							<DAI name="setVal">
								<Val>0.2S</Val>
							</DAI>
						</DOI>
						<DOI name="AccPro" desc="Prot. accuracy class">
							<DAI name="setVal">
								<Val>1</Val>
							</DAI>
						</DOI>
						<DOI name="HoldTmms" desc="Holdover time">
							<DAI name="setVal">
								<Val>5000</Val>
							</DAI>
							<DAI name="minVal">
								<Val>500</Val>
							</DAI>
							<DAI name="maxVal">
								<Val>90000</Val>
							</DAI>
						</DOI>
						<DOI name="NamAccRtg" desc="NamAccRtg">
							<DAI name="val">
								<Val>0,5S/5P20</Val>
							</DAI>
						</DOI>
						<DOI name="NamARtg" desc="NamARtg">
							<DAI name="val">
								<Val>200;400;800</Val>
							</DAI>
						</DOI>
						<DOI name="NamClipRtg" desc="NamClipRtg">
							<DAI name="val">
								<Val>20</Val>
							</DAI>
						</DOI>
						<Inputs>
							<ExtRef desc="PowS_HV Phase CT.CT 1" intAddr="AmpSv;TCTR/AmpSv/instMag.i" pServT="SMV" pLN="TCTR" pDO="AmpSv" pDA="instMag.i"/>
							<ExtRef desc="PowS_HV Phase CT.CT 1" intAddr="AmpSv;TCTR/AmpSv/q" pServT="SMV" pLN="TCTR" pDO="AmpSv" pDA="q"/>
						</Inputs>
					</LN>
					<LN lnClass="TCTR" inst="2" lnType="SIPROTEC5_LNType_TCTR" desc="CT 2" prefix="I01B">
						<Private type="Siemens-MasterId">784c2d6c-3a39-403d-8589-c1c8cdb9b80e</Private>
						<DOI name="Mod" desc="Mode (status only)"/>
						<DOI name="Beh" desc="Behavior"/>
						<DOI name="Health" desc="Health"/>
						<DOI name="NamPlt" desc="Name plate">
							<DAI name="configRev">
								<Val>2023-06-08 08:36:18</Val>
							</DAI>
							<DAI name="lnNs">
								<Val>IEC 61869-9:2016A</Val>
							</DAI>
						</DOI>
						<DOI name="ARtg" desc="Rated primary current">
							<SDI name="setMag">
								<DAI name="f">
									<Val>400</Val>
								</DAI>
							</SDI>
							<SDI name="units">
								<DAI name="SIUnit">
									<Val>A</Val>
								</DAI>
							</SDI>
							<SDI name="minVal">
								<DAI name="f">
									<Val>1</Val>
								</DAI>
							</SDI>
							<SDI name="maxVal">
								<DAI name="f">
									<Val>100000</Val>
								</DAI>
							</SDI>
							<SDI name="stepSize">
								<DAI name="f">
									<Val>0.1</Val>
								</DAI>
							</SDI>
						</DOI>
						<DOI name="Rat" desc="Rat">
							<SDI name="setMag">
								<DAI name="f">
									<Val>400</Val>
								</DAI>
							</SDI>
							<SDI name="maxVal">
								<DAI name="f">
									<Val>10000</Val>
								</DAI>
							</SDI>
							<SDI name="stepSize">
								<DAI name="f">
									<Val>0.1</Val>
								</DAI>
							</SDI>
						</DOI>
						<DOI name="HzRtg" desc="Rated frequency">
							<SDI name="setMag">
								<DAI name="f">
									<Val>50</Val>
								</DAI>
							</SDI>
							<SDI name="units">
								<DAI name="SIUnit">
									<Val>Hz</Val>
								</DAI>
							</SDI>
							<SDI name="minVal">
								<DAI name="f">
									<Val>16.67</Val>
								</DAI>
							</SDI>
							<SDI name="maxVal">
								<DAI name="f">
									<Val>60</Val>
								</DAI>
							</SDI>
							<SDI name="stepSize">
								<DAI name="f">
									<Val>0.01</Val>
								</DAI>
							</SDI>
						</DOI>
						<DOI name="Cor" desc="Magnitude correction">
							<SDI name="setMag">
								<DAI name="f">
									<Val>1</Val>
								</DAI>
							</SDI>
							<SDI name="minVal">
								<DAI name="f">
									<Val>0.01</Val>
								</DAI>
							</SDI>
							<SDI name="maxVal">
								<DAI name="f">
									<Val>10</Val>
								</DAI>
							</SDI>
							<SDI name="stepSize">
								<DAI name="f">
									<Val>1E-05</Val>
								</DAI>
							</SDI>
						</DOI>
						<DOI name="AmpSv" desc="Sampled val. current">
							<SDI name="units">
								<DAI name="SIUnit">
									<Val>A</Val>
								</DAI>
							</SDI>
							<SDI name="sVC">
								<DAI name="scaleFactor">
									<Val>0.001</Val>
								</DAI>
							</SDI>
						</DOI>
						<DOI name="Trp" desc="Transient perform. class">
							<DAI name="setVal">
								<Val>TPM</Val>
							</DAI>
						</DOI>
						<DOI name="ScndTmms" desc="Second. loop time const.">
							<DAI name="setVal">
								<Val>210</Val>
							</DAI>
							<DAI name="minVal">
								<Val>1</Val>
							</DAI>
							<DAI name="maxVal">
								<Val>2147483647</Val>
							</DAI>
						</DOI>
						<DOI name="Clip" desc="Ratio of clipping limit">
							<SDI name="setMag">
								<DAI name="f">
									<Val>100</Val>
								</DAI>
							</SDI>
							<SDI name="maxVal">
								<DAI name="f">
									<Val>100</Val>
								</DAI>
							</SDI>
							<SDI name="stepSize">
								<DAI name="f">
									<Val>0.01</Val>
								</DAI>
							</SDI>
						</DOI>
						<DOI name="AccMeas" desc="Meas. accuracy class">
							<DAI name="setVal">
								<Val>0.2S</Val>
							</DAI>
						</DOI>
						<DOI name="AccPro" desc="Prot. accuracy class">
							<DAI name="setVal">
								<Val>1</Val>
							</DAI>
						</DOI>
						<DOI name="HoldTmms" desc="Holdover time">
							<DAI name="setVal">
								<Val>5000</Val>
							</DAI>
							<DAI name="minVal">
								<Val>500</Val>
							</DAI>
							<DAI name="maxVal">
								<Val>90000</Val>
							</DAI>
						</DOI>
						<DOI name="NamAccRtg" desc="NamAccRtg">
							<DAI name="val">
								<Val>0,5S/5P20</Val>
							</DAI>
						</DOI>
						<DOI name="NamARtg" desc="NamARtg">
							<DAI name="val">
								<Val>200;400;800</Val>
							</DAI>
						</DOI>
						<DOI name="NamClipRtg" desc="NamClipRtg">
							<DAI name="val">
								<Val>20</Val>
							</DAI>
						</DOI>
						<Inputs>
							<ExtRef desc="PowS_HV Phase CT.CT 2" intAddr="AmpSv;TCTR/AmpSv/instMag.i" pServT="SMV" pLN="TCTR" pDO="AmpSv" pDA="instMag.i"/>
							<ExtRef desc="PowS_HV Phase CT.CT 2" intAddr="AmpSv;TCTR/AmpSv/q" pServT="SMV" pLN="TCTR" pDO="AmpSv" pDA="q"/>
						</Inputs>
					</LN>
					<LN lnClass="TCTR" inst="3" lnType="SIPROTEC5_LNType_TCTR" desc="CT 3" prefix="I01C">
						<Private type="Siemens-MasterId">db222e5b-6488-412c-8572-0df80cf8da75</Private>
						<DOI name="Mod" desc="Mode (status only)"/>
						<DOI name="Beh" desc="Behavior"/>
						<DOI name="Health" desc="Health"/>
						<DOI name="NamPlt" desc="Name plate">
							<DAI name="configRev">
								<Val>2023-06-08 08:36:18</Val>
							</DAI>
							<DAI name="lnNs">
								<Val>IEC 61869-9:2016A</Val>
							</DAI>
						</DOI>
						<DOI name="ARtg" desc="Rated primary current">
							<SDI name="setMag">
								<DAI name="f">
									<Val>400</Val>
								</DAI>
							</SDI>
							<SDI name="units">
								<DAI name="SIUnit">
									<Val>A</Val>
								</DAI>
							</SDI>
							<SDI name="minVal">
								<DAI name="f">
									<Val>1</Val>
								</DAI>
							</SDI>
							<SDI name="maxVal">
								<DAI name="f">
									<Val>100000</Val>
								</DAI>
							</SDI>
							<SDI name="stepSize">
								<DAI name="f">
									<Val>0.1</Val>
								</DAI>
							</SDI>
						</DOI>
						<DOI name="Rat" desc="Rat">
							<SDI name="setMag">
								<DAI name="f">
									<Val>400</Val>
								</DAI>
							</SDI>
							<SDI name="maxVal">
								<DAI name="f">
									<Val>10000</Val>
								</DAI>
							</SDI>
							<SDI name="stepSize">
								<DAI name="f">
									<Val>0.1</Val>
								</DAI>
							</SDI>
						</DOI>
						<DOI name="HzRtg" desc="Rated frequency">
							<SDI name="setMag">
								<DAI name="f">
									<Val>50</Val>
								</DAI>
							</SDI>
							<SDI name="units">
								<DAI name="SIUnit">
									<Val>Hz</Val>
								</DAI>
							</SDI>
							<SDI name="minVal">
								<DAI name="f">
									<Val>16.67</Val>
								</DAI>
							</SDI>
							<SDI name="maxVal">
								<DAI name="f">
									<Val>60</Val>
								</DAI>
							</SDI>
							<SDI name="stepSize">
								<DAI name="f">
									<Val>0.01</Val>
								</DAI>
							</SDI>
						</DOI>
						<DOI name="Cor" desc="Magnitude correction">
							<SDI name="setMag">
								<DAI name="f">
									<Val>1</Val>
								</DAI>
							</SDI>
							<SDI name="minVal">
								<DAI name="f">
									<Val>0.01</Val>
								</DAI>
							</SDI>
							<SDI name="maxVal">
								<DAI name="f">
									<Val>10</Val>
								</DAI>
							</SDI>
							<SDI name="stepSize">
								<DAI name="f">
									<Val>1E-05</Val>
								</DAI>
							</SDI>
						</DOI>
						<DOI name="AmpSv" desc="Sampled val. current">
							<SDI name="units">
								<DAI name="SIUnit">
									<Val>A</Val>
								</DAI>
							</SDI>
							<SDI name="sVC">
								<DAI name="scaleFactor">
									<Val>0.001</Val>
								</DAI>
							</SDI>
						</DOI>
						<DOI name="Trp" desc="Transient perform. class">
							<DAI name="setVal">
								<Val>TPM</Val>
							</DAI>
						</DOI>
						<DOI name="ScndTmms" desc="Second. loop time const.">
							<DAI name="setVal">
								<Val>210</Val>
							</DAI>
							<DAI name="minVal">
								<Val>1</Val>
							</DAI>
							<DAI name="maxVal">
								<Val>2147483647</Val>
							</DAI>
						</DOI>
						<DOI name="Clip" desc="Ratio of clipping limit">
							<SDI name="setMag">
								<DAI name="f">
									<Val>100</Val>
								</DAI>
							</SDI>
							<SDI name="maxVal">
								<DAI name="f">
									<Val>100</Val>
								</DAI>
							</SDI>
							<SDI name="stepSize">
								<DAI name="f">
									<Val>0.01</Val>
								</DAI>
							</SDI>
						</DOI>
						<DOI name="AccMeas" desc="Meas. accuracy class">
							<DAI name="setVal">
								<Val>0.2S</Val>
							</DAI>
						</DOI>
						<DOI name="AccPro" desc="Prot. accuracy class">
							<DAI name="setVal">
								<Val>1</Val>
							</DAI>
						</DOI>
						<DOI name="HoldTmms" desc="Holdover time">
							<DAI name="setVal">
								<Val>5000</Val>
							</DAI>
							<DAI name="minVal">
								<Val>500</Val>
							</DAI>
							<DAI name="maxVal">
								<Val>90000</Val>
							</DAI>
						</DOI>
						<DOI name="NamAccRtg" desc="NamAccRtg">
							<DAI name="val">
								<Val>0,5S/5P20</Val>
							</DAI>
						</DOI>
						<DOI name="NamARtg" desc="NamARtg">
							<DAI name="val">
								<Val>200;400;800</Val>
							</DAI>
						</DOI>
						<DOI name="NamClipRtg" desc="NamClipRtg">
							<DAI name="val">
								<Val>20</Val>
							</DAI>
						</DOI>
						<Inputs>
							<ExtRef desc="PowS_HV Phase CT.CT 3" intAddr="AmpSv;TCTR/AmpSv/instMag.i" pServT="SMV" pLN="TCTR" pDO="AmpSv" pDA="instMag.i"/>
							<ExtRef desc="PowS_HV Phase CT.CT 3" intAddr="AmpSv;TCTR/AmpSv/q" pServT="SMV" pLN="TCTR" pDO="AmpSv" pDA="q"/>
						</Inputs>
					</LN>
					<LN lnClass="TCTR" inst="4" lnType="SIPROTEC5_LNType_TCTR" desc="CT 4" prefix="I01N">
						<Private type="Siemens-MasterId">1ed6f555-46f7-438b-9e92-df5b6d6ac6a9</Private>
						<DOI name="Mod" desc="Mode (status only)"/>
						<DOI name="Beh" desc="Behavior"/>
						<DOI name="Health" desc="Health"/>
						<DOI name="NamPlt" desc="Name plate">
							<DAI name="configRev">
								<Val>2023-06-08 08:36:18</Val>
							</DAI>
							<DAI name="lnNs">
								<Val>IEC 61869-9:2016A</Val>
							</DAI>
						</DOI>
						<DOI name="ARtg" desc="Rated primary current">
							<SDI name="setMag">
								<DAI name="f">
									<Val>400</Val>
								</DAI>
							</SDI>
							<SDI name="units">
								<DAI name="SIUnit">
									<Val>A</Val>
								</DAI>
							</SDI>
							<SDI name="minVal">
								<DAI name="f">
									<Val>1</Val>
								</DAI>
							</SDI>
							<SDI name="maxVal">
								<DAI name="f">
									<Val>100000</Val>
								</DAI>
							</SDI>
							<SDI name="stepSize">
								<DAI name="f">
									<Val>0.1</Val>
								</DAI>
							</SDI>
						</DOI>
						<DOI name="Rat" desc="Rat">
							<SDI name="setMag">
								<DAI name="f">
									<Val>400</Val>
								</DAI>
							</SDI>
							<SDI name="maxVal">
								<DAI name="f">
									<Val>10000</Val>
								</DAI>
							</SDI>
							<SDI name="stepSize">
								<DAI name="f">
									<Val>0.1</Val>
								</DAI>
							</SDI>
						</DOI>
						<DOI name="HzRtg" desc="Rated frequency">
							<SDI name="setMag">
								<DAI name="f">
									<Val>50</Val>
								</DAI>
							</SDI>
							<SDI name="units">
								<DAI name="SIUnit">
									<Val>Hz</Val>
								</DAI>
							</SDI>
							<SDI name="minVal">
								<DAI name="f">
									<Val>16.67</Val>
								</DAI>
							</SDI>
							<SDI name="maxVal">
								<DAI name="f">
									<Val>60</Val>
								</DAI>
							</SDI>
							<SDI name="stepSize">
								<DAI name="f">
									<Val>0.01</Val>
								</DAI>
							</SDI>
						</DOI>
						<DOI name="Cor" desc="Magnitude correction">
							<SDI name="setMag">
								<DAI name="f">
									<Val>1</Val>
								</DAI>
							</SDI>
							<SDI name="minVal">
								<DAI name="f">
									<Val>0.01</Val>
								</DAI>
							</SDI>
							<SDI name="maxVal">
								<DAI name="f">
									<Val>10</Val>
								</DAI>
							</SDI>
							<SDI name="stepSize">
								<DAI name="f">
									<Val>1E-05</Val>
								</DAI>
							</SDI>
						</DOI>
						<DOI name="AmpSv" desc="Sampled val. current">
							<SDI name="units">
								<DAI name="SIUnit">
									<Val>A</Val>
								</DAI>
							</SDI>
							<SDI name="sVC">
								<DAI name="scaleFactor">
									<Val>0.001</Val>
								</DAI>
							</SDI>
						</DOI>
						<DOI name="Trp" desc="Transient perform. class">
							<DAI name="setVal">
								<Val>TPM</Val>
							</DAI>
						</DOI>
						<DOI name="ScndTmms" desc="Second. loop time const.">
							<DAI name="setVal">
								<Val>210</Val>
							</DAI>
							<DAI name="minVal">
								<Val>1</Val>
							</DAI>
							<DAI name="maxVal">
								<Val>2147483647</Val>
							</DAI>
						</DOI>
						<DOI name="Clip" desc="Ratio of clipping limit">
							<SDI name="setMag">
								<DAI name="f">
									<Val>100</Val>
								</DAI>
							</SDI>
							<SDI name="maxVal">
								<DAI name="f">
									<Val>100</Val>
								</DAI>
							</SDI>
							<SDI name="stepSize">
								<DAI name="f">
									<Val>0.01</Val>
								</DAI>
							</SDI>
						</DOI>
						<DOI name="AccMeas" desc="Meas. accuracy class">
							<DAI name="setVal">
								<Val>0.2S</Val>
							</DAI>
						</DOI>
						<DOI name="AccPro" desc="Prot. accuracy class">
							<DAI name="setVal">
								<Val>1</Val>
							</DAI>
						</DOI>
						<DOI name="HoldTmms" desc="Holdover time">
							<DAI name="setVal">
								<Val>5000</Val>
							</DAI>
							<DAI name="minVal">
								<Val>500</Val>
							</DAI>
							<DAI name="maxVal">
								<Val>90000</Val>
							</DAI>
						</DOI>
						<DOI name="NamAccRtg" desc="NamAccRtg">
							<DAI name="val">
								<Val>0,5S/5P20</Val>
							</DAI>
						</DOI>
						<DOI name="NamARtg" desc="NamARtg">
							<DAI name="val">
								<Val>200;400;800</Val>
							</DAI>
						</DOI>
						<DOI name="NamClipRtg" desc="NamClipRtg">
							<DAI name="val">
								<Val>20</Val>
							</DAI>
						</DOI>
						<Inputs>
							<ExtRef desc="PowS_HV Phase CT.CT 4" intAddr="AmpSv;TCTR/AmpSv/instMag.i" pServT="SMV" pLN="TCTR" pDO="AmpSv" pDA="instMag.i"/>
							<ExtRef desc="PowS_HV Phase CT.CT 4" intAddr="AmpSv;TCTR/AmpSv/q" pServT="SMV" pLN="TCTR" pDO="AmpSv" pDA="q"/>
						</Inputs>
					</LN>
					<LN lnClass="SBWI" inst="1" lnType="SIPROTEC5_LNType_SBWS_BW_Tr" desc="Brk.wire det." prefix="TR_">
						<Private type="Siemens-MasterId">2584b335-13a9-4273-a18c-e78ca934e54b</Private>
						<DOI name="Mod" desc="Mode (controllable)"/>
						<DOI name="Beh" desc="Behavior"/>
						<DOI name="Health" desc="Health"/>
						<DOI name="NamPlt" desc="Name plate">
							<DAI name="configRev">
								<Val>2023-06-08 08:36:18</Val>
							</DAI>
						</DOI>
						<DOI name="ResetBW" desc="&gt;Block function"/>
						<DOI name="Inactive" desc="Inactive"/>
						<DOI name="PhABWsus" desc="Phs A BW suspected"/>
						<DOI name="PhBBWsus" desc="Phs B BW suspected"/>
						<DOI name="PhCBWsus" desc="Phs C BW suspected"/>
						<DOI name="PhABW" desc="Phase A broken wire"/>
						<DOI name="PhBBW" desc="Phase B broken wire"/>
						<DOI name="PhCBW" desc="Phase C broken wire"/>
						<DOI name="BWsus" desc="Broken wire suspected"/>
						<DOI name="BrokenWire" desc="Broken wire confirmed"/>
					</LN>
					<LN lnClass="SSYM" inst="1" lnType="SIPROTEC5_LNType_SSYM_CurBalSV" desc="Supv. balan. I" prefix="I_">
						<Private type="Siemens-MasterId">0927b1bf-403b-48fc-b130-09921ba47446</Private>
						<DOI name="Mod" desc="Mode (controllable)"/>
						<DOI name="Beh" desc="Behavior"/>
						<DOI name="Health" desc="Health"/>
						<DOI name="NamPlt" desc="Name plate">
							<DAI name="configRev">
								<Val>2023-06-08 08:36:18</Val>
							</DAI>
						</DOI>
						<DOI name="Blk" desc="&gt;Block function"/>
						<DOI name="Failure" desc="Failure"/>
					</LN>
					<LN lnClass="SPSQ" inst="1" lnType="SIPROTEC5_LNType_SPSQ_CurPhSeqSV" desc="Supv. ph.seq.I" prefix="I_">
						<Private type="Siemens-MasterId">fb45a390-7bdd-415c-9ed4-0399642a6160</Private>
						<DOI name="Mod" desc="Mode (controllable)"/>
						<DOI name="Beh" desc="Behavior"/>
						<DOI name="Health" desc="Health"/>
						<DOI name="NamPlt" desc="Name plate">
							<DAI name="configRev">
								<Val>2023-06-08 08:36:18</Val>
							</DAI>
						</DOI>
						<DOI name="Blk" desc="&gt;Block function"/>
						<DOI name="Inactive" desc="Inactive"/>
						<DOI name="Failure" desc="Failure"/>
					</LN>
					<LN lnClass="SSUM" inst="1" lnType="SIPROTEC5_LNType_SSUM_SlowCurSumSV" desc="Supv. sum I" prefix="I_">
						<Private type="Siemens-MasterId">d3d77edf-005f-4820-afb8-b8365d99e469</Private>
						<DOI name="Mod" desc="Mode (controllable)"/>
						<DOI name="Beh" desc="Behavior"/>
						<DOI name="Health" desc="Health"/>
						<DOI name="NamPlt" desc="Name plate">
							<DAI name="configRev">
								<Val>2023-06-08 08:36:18</Val>
							</DAI>
						</DOI>
						<DOI name="Blk" desc="&gt;Block function"/>
						<DOI name="Failure" desc="Failure"/>
					</LN>
					<LN lnClass="SADC" inst="1" lnType="SIPROTEC5_LNType_SADC_FastCurSumSV" desc="Supv.ADC sum I" prefix="ISUM_">
						<Private type="Siemens-MasterId">ab31fd57-6dc2-4d19-ba77-6dfd0e594188</Private>
						<DOI name="Mod" desc="Mode (controllable)"/>
						<DOI name="Beh" desc="Behavior"/>
						<DOI name="Health" desc="Health"/>
						<DOI name="NamPlt" desc="Name plate">
							<DAI name="configRev">
								<Val>2023-06-08 08:36:18</Val>
							</DAI>
						</DOI>
						<DOI name="Blk" desc="&gt;Block function"/>
						<DOI name="Inactive" desc="Inactive"/>
						<DOI name="Failure" desc="Failure"/>
					</LN>
				</LDevice>
				<LDevice desc="PowS_HV Phase VT" inst="PowS_HV_PhaseVT">
					<Private type="Siemens-MasterId">5ca09a89-0986-4096-8486-04f7cf6573ae</Private>
					<LN0 lnClass="LLN0" inst="" lnType="SIEMENS_7UT85_001SIPROTEC5_LNType_LLN0_LDevice_Generic" desc="PowS_HV_PhaseVT/LLN0">
						<Private type="Siemens-MasterId">e60ec72e-c1de-4833-a8f6-7a534d2412b5</Private>
						<DOI name="Beh" desc="Behavior"/>
						<DOI name="Health" desc="Health"/>
						<DOI name="NamPlt" desc="Name plate">
							<DAI name="configRev">
								<Val>2023-06-08 08:36:18</Val>
							</DAI>
							<DAI name="ldNs">
								<Val>IEC 61850-7-4:2007B</Val>
							</DAI>
						</DOI>
						<DOI name="Mod" desc="Mode (controllable)"/>
						<DOI name="GrRef" desc="GrRef">
							<DAI name="setSrcRef">
								<Val>@PowS</Val>
							</DAI>
						</DOI>
					</LN0>
					<LN lnClass="GAPC" inst="1" lnType="SIPROTEC5_LNType_GAPC_FB0_MUVoltage_3ph" desc="VT 3-phase" prefix="VT3P_">
						<Private type="Siemens-MasterId">4310da72-24b7-4922-b4cb-9ec095727d68</Private>
						<DOI name="Mod" desc="Mode (controllable)"/>
						<DOI name="Beh" desc="Behavior"/>
						<DOI name="Health" desc="Health"/>
						<DOI name="NamPlt" desc="Name plate">
							<DAI name="configRev">
								<Val>2023-06-08 08:36:18</Val>
							</DAI>
						</DOI>
						<DOI name="InvPhABVol" desc="Phases AB inverted"/>
						<DOI name="InvPhBCVol" desc="Phases BC inverted"/>
						<DOI name="InvPhACVol" desc="Phases AC inverted"/>
					</LN>
					<LN lnClass="TVTR" inst="1" lnType="SIPROTEC5_LNType_TVTR" desc="VT 1" prefix="U01A">
						<Private type="Siemens-MasterId">944b7a4c-c077-4d30-b399-16019a21a368</Private>
						<DOI name="Mod" desc="Mode (status only)"/>
						<DOI name="Beh" desc="Behavior"/>
						<DOI name="Health" desc="Health"/>
						<DOI name="NamPlt" desc="Name plate">
							<DAI name="configRev">
								<Val>2023-06-08 08:36:18</Val>
							</DAI>
							<DAI name="lnNs">
								<Val>IEC 61869-9:2016A</Val>
							</DAI>
						</DOI>
						<DOI name="VolSv" desc="Sampled val. voltage">
							<SDI name="units">
								<DAI name="SIUnit">
									<Val>V</Val>
								</DAI>
							</SDI>
							<SDI name="sVC">
								<DAI name="scaleFactor">
									<Val>0.01</Val>
								</DAI>
							</SDI>
						</DOI>
						<DOI name="VRtg" desc="Rated primary voltage">
							<SDI name="setMag">
								<DAI name="f">
									<Val>230.940109</Val>
								</DAI>
							</SDI>
							<SDI name="units">
								<DAI name="SIUnit">
									<Val>V</Val>
								</DAI>
								<DAI name="multiplier">
									<Val>k</Val>
								</DAI>
							</SDI>
							<SDI name="minVal">
								<DAI name="f">
									<Val>0.1</Val>
								</DAI>
							</SDI>
							<SDI name="maxVal">
								<DAI name="f">
									<Val>1200</Val>
								</DAI>
							</SDI>
							<SDI name="stepSize">
								<DAI name="f">
									<Val>0.01</Val>
								</DAI>
							</SDI>
						</DOI>
						<DOI name="HzRtg" desc="Rated frequency">
							<SDI name="setMag">
								<DAI name="f">
									<Val>50</Val>
								</DAI>
							</SDI>
							<SDI name="units">
								<DAI name="SIUnit">
									<Val>Hz</Val>
								</DAI>
							</SDI>
							<SDI name="minVal">
								<DAI name="f">
									<Val>16.67</Val>
								</DAI>
							</SDI>
							<SDI name="maxVal">
								<DAI name="f">
									<Val>60</Val>
								</DAI>
							</SDI>
							<SDI name="stepSize">
								<DAI name="f">
									<Val>0.01</Val>
								</DAI>
							</SDI>
						</DOI>
						<DOI name="Rat" desc="Rat">
							<SDI name="setMag">
								<DAI name="f">
									<Val>4000</Val>
								</DAI>
							</SDI>
							<SDI name="maxVal">
								<DAI name="f">
									<Val>10000</Val>
								</DAI>
							</SDI>
							<SDI name="stepSize">
								<DAI name="f">
									<Val>0.1</Val>
								</DAI>
							</SDI>
						</DOI>
						<DOI name="Cor" desc="Magnitude correction">
							<SDI name="setMag">
								<DAI name="f">
									<Val>1</Val>
								</DAI>
							</SDI>
							<SDI name="minVal">
								<DAI name="f">
									<Val>0.01</Val>
								</DAI>
							</SDI>
							<SDI name="maxVal">
								<DAI name="f">
									<Val>10</Val>
								</DAI>
							</SDI>
							<SDI name="stepSize">
								<DAI name="f">
									<Val>1E-05</Val>
								</DAI>
							</SDI>
						</DOI>
						<DOI name="Clip" desc="Ratio of clipping limit">
							<SDI name="setMag">
								<DAI name="f">
									<Val>3.46410155</Val>
								</DAI>
							</SDI>
							<SDI name="maxVal">
								<DAI name="f">
									<Val>100</Val>
								</DAI>
							</SDI>
							<SDI name="stepSize">
								<DAI name="f">
									<Val>0.01</Val>
								</DAI>
							</SDI>
						</DOI>
						<DOI name="AccMeas" desc="Meas. accuracy class">
							<DAI name="setVal">
								<Val>0.2S</Val>
							</DAI>
						</DOI>
						<DOI name="AccPro" desc="Prot. accuracy class">
							<DAI name="setVal">
								<Val>1</Val>
							</DAI>
						</DOI>
						<DOI name="HoldTmms" desc="Holdover time">
							<DAI name="setVal">
								<Val>5000</Val>
							</DAI>
							<DAI name="minVal">
								<Val>500</Val>
							</DAI>
							<DAI name="maxVal">
								<Val>90000</Val>
							</DAI>
						</DOI>
						<DOI name="NamAccRtg" desc="NamAccRtg">
							<DAI name="val">
								<Val>0,5/3P</Val>
							</DAI>
						</DOI>
						<DOI name="NamVRtg" desc="NamVRtg">
							<DAI name="val">
								<Val>173000</Val>
							</DAI>
						</DOI>
						<DOI name="NamClipRtg" desc="NamClipRtg">
							<DAI name="val">
								<Val>2</Val>
							</DAI>
						</DOI>
						<Inputs>
							<ExtRef desc="PowS_HV Phase VT.VT 1" intAddr="VolSv;TVTR/VolSv/instMag.i" pServT="SMV" pLN="TVTR" pDO="VolSv" pDA="instMag.i"/>
							<ExtRef desc="PowS_HV Phase VT.VT 1" intAddr="VolSv;TVTR/VolSv/q" pServT="SMV" pLN="TVTR" pDO="VolSv" pDA="q"/>
						</Inputs>
					</LN>
					<LN lnClass="TVTR" inst="2" lnType="SIPROTEC5_LNType_TVTR" desc="VT 2" prefix="U01B">
						<Private type="Siemens-MasterId">dddf5e01-031d-437a-b0d0-48eee9c32b16</Private>
						<DOI name="Mod" desc="Mode (status only)"/>
						<DOI name="Beh" desc="Behavior"/>
						<DOI name="Health" desc="Health"/>
						<DOI name="NamPlt" desc="Name plate">
							<DAI name="configRev">
								<Val>2023-06-08 08:36:18</Val>
							</DAI>
							<DAI name="lnNs">
								<Val>IEC 61869-9:2016A</Val>
							</DAI>
						</DOI>
						<DOI name="VolSv" desc="Sampled val. voltage">
							<SDI name="units">
								<DAI name="SIUnit">
									<Val>V</Val>
								</DAI>
							</SDI>
							<SDI name="sVC">
								<DAI name="scaleFactor">
									<Val>0.01</Val>
								</DAI>
							</SDI>
						</DOI>
						<DOI name="VRtg" desc="Rated primary voltage">
							<SDI name="setMag">
								<DAI name="f">
									<Val>230.940109</Val>
								</DAI>
							</SDI>
							<SDI name="units">
								<DAI name="SIUnit">
									<Val>V</Val>
								</DAI>
								<DAI name="multiplier">
									<Val>k</Val>
								</DAI>
							</SDI>
							<SDI name="minVal">
								<DAI name="f">
									<Val>0.1</Val>
								</DAI>
							</SDI>
							<SDI name="maxVal">
								<DAI name="f">
									<Val>1200</Val>
								</DAI>
							</SDI>
							<SDI name="stepSize">
								<DAI name="f">
									<Val>0.01</Val>
								</DAI>
							</SDI>
						</DOI>
						<DOI name="HzRtg" desc="Rated frequency">
							<SDI name="setMag">
								<DAI name="f">
									<Val>50</Val>
								</DAI>
							</SDI>
							<SDI name="units">
								<DAI name="SIUnit">
									<Val>Hz</Val>
								</DAI>
							</SDI>
							<SDI name="minVal">
								<DAI name="f">
									<Val>16.67</Val>
								</DAI>
							</SDI>
							<SDI name="maxVal">
								<DAI name="f">
									<Val>60</Val>
								</DAI>
							</SDI>
							<SDI name="stepSize">
								<DAI name="f">
									<Val>0.01</Val>
								</DAI>
							</SDI>
						</DOI>
						<DOI name="Rat" desc="Rat">
							<SDI name="setMag">
								<DAI name="f">
									<Val>4000</Val>
								</DAI>
							</SDI>
							<SDI name="maxVal">
								<DAI name="f">
									<Val>10000</Val>
								</DAI>
							</SDI>
							<SDI name="stepSize">
								<DAI name="f">
									<Val>0.1</Val>
								</DAI>
							</SDI>
						</DOI>
						<DOI name="Cor" desc="Magnitude correction">
							<SDI name="setMag">
								<DAI name="f">
									<Val>1</Val>
								</DAI>
							</SDI>
							<SDI name="minVal">
								<DAI name="f">
									<Val>0.01</Val>
								</DAI>
							</SDI>
							<SDI name="maxVal">
								<DAI name="f">
									<Val>10</Val>
								</DAI>
							</SDI>
							<SDI name="stepSize">
								<DAI name="f">
									<Val>1E-05</Val>
								</DAI>
							</SDI>
						</DOI>
						<DOI name="Clip" desc="Ratio of clipping limit">
							<SDI name="setMag">
								<DAI name="f">
									<Val>3.46410155</Val>
								</DAI>
							</SDI>
							<SDI name="maxVal">
								<DAI name="f">
									<Val>100</Val>
								</DAI>
							</SDI>
							<SDI name="stepSize">
								<DAI name="f">
									<Val>0.01</Val>
								</DAI>
							</SDI>
						</DOI>
						<DOI name="AccMeas" desc="Meas. accuracy class">
							<DAI name="setVal">
								<Val>0.2S</Val>
							</DAI>
						</DOI>
						<DOI name="AccPro" desc="Prot. accuracy class">
							<DAI name="setVal">
								<Val>1</Val>
							</DAI>
						</DOI>
						<DOI name="HoldTmms" desc="Holdover time">
							<DAI name="setVal">
								<Val>5000</Val>
							</DAI>
							<DAI name="minVal">
								<Val>500</Val>
							</DAI>
							<DAI name="maxVal">
								<Val>90000</Val>
							</DAI>
						</DOI>
						<DOI name="NamAccRtg" desc="NamAccRtg">
							<DAI name="val">
								<Val>0,5/3P</Val>
							</DAI>
						</DOI>
						<DOI name="NamVRtg" desc="NamVRtg">
							<DAI name="val">
								<Val>173000</Val>
							</DAI>
						</DOI>
						<DOI name="NamClipRtg" desc="NamClipRtg">
							<DAI name="val">
								<Val>2</Val>
							</DAI>
						</DOI>
						<Inputs>
							<ExtRef desc="PowS_HV Phase VT.VT 2" intAddr="VolSv;TVTR/VolSv/instMag.i" pServT="SMV" pLN="TVTR" pDO="VolSv" pDA="instMag.i"/>
							<ExtRef desc="PowS_HV Phase VT.VT 2" intAddr="VolSv;TVTR/VolSv/q" pServT="SMV" pLN="TVTR" pDO="VolSv" pDA="q"/>
						</Inputs>
					</LN>
					<LN lnClass="TVTR" inst="3" lnType="SIPROTEC5_LNType_TVTR" desc="VT 3" prefix="U01C">
						<Private type="Siemens-MasterId">023398de-e9e8-4af8-816b-802f42adfd09</Private>
						<DOI name="Mod" desc="Mode (status only)"/>
						<DOI name="Beh" desc="Behavior"/>
						<DOI name="Health" desc="Health"/>
						<DOI name="NamPlt" desc="Name plate">
							<DAI name="configRev">
								<Val>2023-06-08 08:36:18</Val>
							</DAI>
							<DAI name="lnNs">
								<Val>IEC 61869-9:2016A</Val>
							</DAI>
						</DOI>
						<DOI name="VolSv" desc="Sampled val. voltage">
							<SDI name="units">
								<DAI name="SIUnit">
									<Val>V</Val>
								</DAI>
							</SDI>
							<SDI name="sVC">
								<DAI name="scaleFactor">
									<Val>0.01</Val>
								</DAI>
							</SDI>
						</DOI>
						<DOI name="VRtg" desc="Rated primary voltage">
							<SDI name="setMag">
								<DAI name="f">
									<Val>230.940109</Val>
								</DAI>
							</SDI>
							<SDI name="units">
								<DAI name="SIUnit">
									<Val>V</Val>
								</DAI>
								<DAI name="multiplier">
									<Val>k</Val>
								</DAI>
							</SDI>
							<SDI name="minVal">
								<DAI name="f">
									<Val>0.1</Val>
								</DAI>
							</SDI>
							<SDI name="maxVal">
								<DAI name="f">
									<Val>1200</Val>
								</DAI>
							</SDI>
							<SDI name="stepSize">
								<DAI name="f">
									<Val>0.01</Val>
								</DAI>
							</SDI>
						</DOI>
						<DOI name="HzRtg" desc="Rated frequency">
							<SDI name="setMag">
								<DAI name="f">
									<Val>50</Val>
								</DAI>
							</SDI>
							<SDI name="units">
								<DAI name="SIUnit">
									<Val>Hz</Val>
								</DAI>
							</SDI>
							<SDI name="minVal">
								<DAI name="f">
									<Val>16.67</Val>
								</DAI>
							</SDI>
							<SDI name="maxVal">
								<DAI name="f">
									<Val>60</Val>
								</DAI>
							</SDI>
							<SDI name="stepSize">
								<DAI name="f">
									<Val>0.01</Val>
								</DAI>
							</SDI>
						</DOI>
						<DOI name="Rat" desc="Rat">
							<SDI name="setMag">
								<DAI name="f">
									<Val>4000</Val>
								</DAI>
							</SDI>
							<SDI name="maxVal">
								<DAI name="f">
									<Val>10000</Val>
								</DAI>
							</SDI>
							<SDI name="stepSize">
								<DAI name="f">
									<Val>0.1</Val>
								</DAI>
							</SDI>
						</DOI>
						<DOI name="Cor" desc="Magnitude correction">
							<SDI name="setMag">
								<DAI name="f">
									<Val>1</Val>
								</DAI>
							</SDI>
							<SDI name="minVal">
								<DAI name="f">
									<Val>0.01</Val>
								</DAI>
							</SDI>
							<SDI name="maxVal">
								<DAI name="f">
									<Val>10</Val>
								</DAI>
							</SDI>
							<SDI name="stepSize">
								<DAI name="f">
									<Val>1E-05</Val>
								</DAI>
							</SDI>
						</DOI>
						<DOI name="Clip" desc="Ratio of clipping limit">
							<SDI name="setMag">
								<DAI name="f">
									<Val>3.46410155</Val>
								</DAI>
							</SDI>
							<SDI name="maxVal">
								<DAI name="f">
									<Val>100</Val>
								</DAI>
							</SDI>
							<SDI name="stepSize">
								<DAI name="f">
									<Val>0.01</Val>
								</DAI>
							</SDI>
						</DOI>
						<DOI name="AccMeas" desc="Meas. accuracy class">
							<DAI name="setVal">
								<Val>0.2S</Val>
							</DAI>
						</DOI>
						<DOI name="AccPro" desc="Prot. accuracy class">
							<DAI name="setVal">
								<Val>1</Val>
							</DAI>
						</DOI>
						<DOI name="HoldTmms" desc="Holdover time">
							<DAI name="setVal">
								<Val>5000</Val>
							</DAI>
							<DAI name="minVal">
								<Val>500</Val>
							</DAI>
							<DAI name="maxVal">
								<Val>90000</Val>
							</DAI>
						</DOI>
						<DOI name="NamAccRtg" desc="NamAccRtg">
							<DAI name="val">
								<Val>0,5/3P</Val>
							</DAI>
						</DOI>
						<DOI name="NamVRtg" desc="NamVRtg">
							<DAI name="val">
								<Val>173000</Val>
							</DAI>
						</DOI>
						<DOI name="NamClipRtg" desc="NamClipRtg">
							<DAI name="val">
								<Val>2</Val>
							</DAI>
						</DOI>
						<Inputs>
							<ExtRef desc="PowS_HV Phase VT.VT 3" intAddr="VolSv;TVTR/VolSv/instMag.i" pServT="SMV" pLN="TVTR" pDO="VolSv" pDA="instMag.i"/>
							<ExtRef desc="PowS_HV Phase VT.VT 3" intAddr="VolSv;TVTR/VolSv/q" pServT="SMV" pLN="TVTR" pDO="VolSv" pDA="q"/>
						</Inputs>
					</LN>
					<LN lnClass="TVTR" inst="4" lnType="SIPROTEC5_LNType_TVTR" desc="VT 4" prefix="U01N">
						<Private type="Siemens-MasterId">5b31828b-167d-456c-bef6-155da50be350</Private>
						<DOI name="Mod" desc="Mode (status only)"/>
						<DOI name="Beh" desc="Behavior"/>
						<DOI name="Health" desc="Health"/>
						<DOI name="NamPlt" desc="Name plate">
							<DAI name="configRev">
								<Val>2023-06-08 08:36:18</Val>
							</DAI>
							<DAI name="lnNs">
								<Val>IEC 61869-9:2016A</Val>
							</DAI>
						</DOI>
						<DOI name="VolSv" desc="Sampled val. voltage">
							<SDI name="units">
								<DAI name="SIUnit">
									<Val>V</Val>
								</DAI>
							</SDI>
							<SDI name="sVC">
								<DAI name="scaleFactor">
									<Val>0.01</Val>
								</DAI>
							</SDI>
						</DOI>
						<DOI name="VRtg" desc="Rated primary voltage">
							<SDI name="setMag">
								<DAI name="f">
									<Val>230.940109</Val>
								</DAI>
							</SDI>
							<SDI name="units">
								<DAI name="SIUnit">
									<Val>V</Val>
								</DAI>
								<DAI name="multiplier">
									<Val>k</Val>
								</DAI>
							</SDI>
							<SDI name="minVal">
								<DAI name="f">
									<Val>0.1</Val>
								</DAI>
							</SDI>
							<SDI name="maxVal">
								<DAI name="f">
									<Val>1200</Val>
								</DAI>
							</SDI>
							<SDI name="stepSize">
								<DAI name="f">
									<Val>0.01</Val>
								</DAI>
							</SDI>
						</DOI>
						<DOI name="HzRtg" desc="Rated frequency">
							<SDI name="setMag">
								<DAI name="f">
									<Val>50</Val>
								</DAI>
							</SDI>
							<SDI name="units">
								<DAI name="SIUnit">
									<Val>Hz</Val>
								</DAI>
							</SDI>
							<SDI name="minVal">
								<DAI name="f">
									<Val>16.67</Val>
								</DAI>
							</SDI>
							<SDI name="maxVal">
								<DAI name="f">
									<Val>60</Val>
								</DAI>
							</SDI>
							<SDI name="stepSize">
								<DAI name="f">
									<Val>0.01</Val>
								</DAI>
							</SDI>
						</DOI>
						<DOI name="Rat" desc="Rat">
							<SDI name="setMag">
								<DAI name="f">
									<Val>2312.13867</Val>
								</DAI>
							</SDI>
							<SDI name="maxVal">
								<DAI name="f">
									<Val>10000</Val>
								</DAI>
							</SDI>
							<SDI name="stepSize">
								<DAI name="f">
									<Val>0.1</Val>
								</DAI>
							</SDI>
						</DOI>
						<DOI name="Cor" desc="Magnitude correction">
							<SDI name="setMag">
								<DAI name="f">
									<Val>1</Val>
								</DAI>
							</SDI>
							<SDI name="minVal">
								<DAI name="f">
									<Val>0.01</Val>
								</DAI>
							</SDI>
							<SDI name="maxVal">
								<DAI name="f">
									<Val>10</Val>
								</DAI>
							</SDI>
							<SDI name="stepSize">
								<DAI name="f">
									<Val>1E-05</Val>
								</DAI>
							</SDI>
						</DOI>
						<DOI name="Clip" desc="Ratio of clipping limit">
							<SDI name="setMag">
								<DAI name="f">
									<Val>3.46410155</Val>
								</DAI>
							</SDI>
							<SDI name="maxVal">
								<DAI name="f">
									<Val>100</Val>
								</DAI>
							</SDI>
							<SDI name="stepSize">
								<DAI name="f">
									<Val>0.01</Val>
								</DAI>
							</SDI>
						</DOI>
						<DOI name="AccMeas" desc="Meas. accuracy class">
							<DAI name="setVal">
								<Val>0.2S</Val>
							</DAI>
						</DOI>
						<DOI name="AccPro" desc="Prot. accuracy class">
							<DAI name="setVal">
								<Val>1</Val>
							</DAI>
						</DOI>
						<DOI name="HoldTmms" desc="Holdover time">
							<DAI name="setVal">
								<Val>5000</Val>
							</DAI>
							<DAI name="minVal">
								<Val>500</Val>
							</DAI>
							<DAI name="maxVal">
								<Val>90000</Val>
							</DAI>
						</DOI>
						<DOI name="NamAccRtg" desc="NamAccRtg">
							<DAI name="val">
								<Val>0,5/3P</Val>
							</DAI>
						</DOI>
						<DOI name="NamVRtg" desc="NamVRtg">
							<DAI name="val">
								<Val>173000</Val>
							</DAI>
						</DOI>
						<DOI name="NamClipRtg" desc="NamClipRtg">
							<DAI name="val">
								<Val>2</Val>
							</DAI>
						</DOI>
					</LN>
					<LN lnClass="SSYM" inst="1" lnType="SIPROTEC5_LNType_SSYM_CurBalSV" desc="Supv. balan. V" prefix="U_">
						<Private type="Siemens-MasterId">9a533cc5-bf2d-4f28-a8bd-245097353b65</Private>
						<DOI name="Mod" desc="Mode (controllable)"/>
						<DOI name="Beh" desc="Behavior"/>
						<DOI name="Health" desc="Health"/>
						<DOI name="NamPlt" desc="Name plate">
							<DAI name="configRev">
								<Val>2023-06-08 08:36:18</Val>
							</DAI>
						</DOI>
						<DOI name="Blk" desc="&gt;Block function"/>
						<DOI name="Failure" desc="Failure"/>
					</LN>
					<LN lnClass="SPSQ" inst="1" lnType="SIPROTEC5_LNType_SPSQ_CurPhSeqSV" desc="Supv. ph.seq.V" prefix="U_">
						<Private type="Siemens-MasterId">bf95d057-a3f9-41df-bab8-e4e25849f9fd</Private>
						<DOI name="Mod" desc="Mode (controllable)"/>
						<DOI name="Beh" desc="Behavior"/>
						<DOI name="Health" desc="Health"/>
						<DOI name="NamPlt" desc="Name plate">
							<DAI name="configRev">
								<Val>2023-06-08 08:36:18</Val>
							</DAI>
						</DOI>
						<DOI name="Blk" desc="&gt;Block function"/>
						<DOI name="Inactive" desc="Inactive"/>
						<DOI name="Failure" desc="Failure"/>
					</LN>
					<LN lnClass="SSUM" inst="1" lnType="SIPROTEC5_LNType_SSUM_SlowCurSumSV" desc="Supv. sum V" prefix="U_">
						<Private type="Siemens-MasterId">b73f2b00-11a7-40a0-bd6b-ea7eef8ed1ee</Private>
						<DOI name="Mod" desc="Mode (controllable)"/>
						<DOI name="Beh" desc="Behavior"/>
						<DOI name="Health" desc="Health"/>
						<DOI name="NamPlt" desc="Name plate">
							<DAI name="configRev">
								<Val>2023-06-08 08:36:18</Val>
							</DAI>
						</DOI>
						<DOI name="Blk" desc="&gt;Block function"/>
						<DOI name="Failure" desc="Failure"/>
					</LN>
					<LN lnClass="SFFM" inst="1" lnType="SIPROTEC5_LNType_SFFM_SMCB" desc="VT miniatureCB" prefix="VTCB_">
						<Private type="Siemens-MasterId">f552347a-eb67-4794-a889-f51df32c1051</Private>
						<DOI name="Mod" desc="Mode (controllable)"/>
						<DOI name="Beh" desc="Behavior"/>
						<DOI name="Health" desc="Health"/>
						<DOI name="NamPlt" desc="Name plate">
							<DAI name="configRev">
								<Val>2023-06-08 08:36:18</Val>
							</DAI>
						</DOI>
						<DOI name="VTmcb" desc="&gt;Open"/>
					</LN>
				</LDevice>
				<LDevice desc="PowS_LV NCT" inst="PowS_LV_NCT">
					<Private type="Siemens-MasterId">338019f5-aa29-4b57-adba-1fa8b78d9d26</Private>
					<LN0 lnClass="LLN0" inst="" lnType="SIEMENS_7UT85_001SIPROTEC5_LNType_LLN0_LDevice_Generic" desc="PowS_LV_NCT/LLN0">
						<Private type="Siemens-MasterId">576244a3-af2e-42e2-aba1-9dbefdc4455b</Private>
						<DOI name="Beh" desc="Behavior"/>
						<DOI name="Health" desc="Health"/>
						<DOI name="NamPlt" desc="Name plate">
							<DAI name="configRev">
								<Val>2023-06-08 08:36:18</Val>
							</DAI>
							<DAI name="ldNs">
								<Val>IEC 61850-7-4:2007B</Val>
							</DAI>
						</DOI>
						<DOI name="Mod" desc="Mode (controllable)"/>
						<DOI name="GrRef" desc="GrRef">
							<DAI name="setSrcRef">
								<Val>@PowS</Val>
							</DAI>
						</DOI>
					</LN0>
					<LN lnClass="GAPC" inst="1" lnType="SIPROTEC5_LNType_GAPC_FB0_MUCurrent_1ph" desc="General" prefix="">
						<Private type="Siemens-MasterId">6b76c982-107e-4c89-b2f9-4da49cc33ed4</Private>
						<DOI name="Mod" desc="Mode (controllable)"/>
						<DOI name="Beh" desc="Behavior"/>
						<DOI name="Health" desc="Health"/>
						<DOI name="NamPlt" desc="Name plate">
							<DAI name="configRev">
								<Val>2023-06-08 08:36:18</Val>
							</DAI>
						</DOI>
						<DOI name="PhCurrent" desc="Iph">
							<DAI name="db">
								<Val>10000</Val>
							</DAI>
						</DOI>
					</LN>
					<LN lnClass="TCTR" inst="1" lnType="SIPROTEC5_LNType_TCTR" desc="LV NCT" prefix="I02A">
						<Private type="Siemens-MasterId">d5cf2f5d-c76d-4797-b0cb-035d6e0ba59f</Private>
						<DOI name="Mod" desc="Mode (status only)"/>
						<DOI name="Beh" desc="Behavior"/>
						<DOI name="Health" desc="Health"/>
						<DOI name="NamPlt" desc="Name plate">
							<DAI name="configRev">
								<Val>2023-06-08 08:36:18</Val>
							</DAI>
							<DAI name="lnNs">
								<Val>IEC 61869-9:2016A</Val>
							</DAI>
						</DOI>
						<DOI name="ARtg" desc="Rated primary current">
							<SDI name="setMag">
								<DAI name="f">
									<Val>1000</Val>
								</DAI>
							</SDI>
							<SDI name="units">
								<DAI name="SIUnit">
									<Val>A</Val>
								</DAI>
							</SDI>
							<SDI name="minVal">
								<DAI name="f">
									<Val>1</Val>
								</DAI>
							</SDI>
							<SDI name="maxVal">
								<DAI name="f">
									<Val>100000</Val>
								</DAI>
							</SDI>
							<SDI name="stepSize">
								<DAI name="f">
									<Val>0.1</Val>
								</DAI>
							</SDI>
						</DOI>
						<DOI name="Rat" desc="Rat">
							<SDI name="setMag">
								<DAI name="f">
									<Val>1000</Val>
								</DAI>
							</SDI>
							<SDI name="maxVal">
								<DAI name="f">
									<Val>10000</Val>
								</DAI>
							</SDI>
							<SDI name="stepSize">
								<DAI name="f">
									<Val>0.1</Val>
								</DAI>
							</SDI>
						</DOI>
						<DOI name="HzRtg" desc="Rated frequency">
							<SDI name="setMag">
								<DAI name="f">
									<Val>50</Val>
								</DAI>
							</SDI>
							<SDI name="units">
								<DAI name="SIUnit">
									<Val>Hz</Val>
								</DAI>
							</SDI>
							<SDI name="minVal">
								<DAI name="f">
									<Val>16.67</Val>
								</DAI>
							</SDI>
							<SDI name="maxVal">
								<DAI name="f">
									<Val>60</Val>
								</DAI>
							</SDI>
							<SDI name="stepSize">
								<DAI name="f">
									<Val>0.01</Val>
								</DAI>
							</SDI>
						</DOI>
						<DOI name="Cor" desc="Magnitude correction">
							<SDI name="setMag">
								<DAI name="f">
									<Val>1</Val>
								</DAI>
							</SDI>
							<SDI name="minVal">
								<DAI name="f">
									<Val>0.01</Val>
								</DAI>
							</SDI>
							<SDI name="maxVal">
								<DAI name="f">
									<Val>10</Val>
								</DAI>
							</SDI>
							<SDI name="stepSize">
								<DAI name="f">
									<Val>1E-05</Val>
								</DAI>
							</SDI>
						</DOI>
						<DOI name="AmpSv" desc="Sampled val. current">
							<SDI name="units">
								<DAI name="SIUnit">
									<Val>A</Val>
								</DAI>
							</SDI>
							<SDI name="sVC">
								<DAI name="scaleFactor">
									<Val>0.001</Val>
								</DAI>
							</SDI>
						</DOI>
						<DOI name="Trp" desc="Transient perform. class">
							<DAI name="setVal">
								<Val>TPM</Val>
							</DAI>
						</DOI>
						<DOI name="ScndTmms" desc="Second. loop time const.">
							<DAI name="setVal">
								<Val>210</Val>
							</DAI>
							<DAI name="minVal">
								<Val>1</Val>
							</DAI>
							<DAI name="maxVal">
								<Val>2147483647</Val>
							</DAI>
						</DOI>
						<DOI name="Clip" desc="Ratio of clipping limit">
							<SDI name="setMag">
								<DAI name="f">
									<Val>100</Val>
								</DAI>
							</SDI>
							<SDI name="maxVal">
								<DAI name="f">
									<Val>100</Val>
								</DAI>
							</SDI>
							<SDI name="stepSize">
								<DAI name="f">
									<Val>0.01</Val>
								</DAI>
							</SDI>
						</DOI>
						<DOI name="AccMeas" desc="Meas. accuracy class">
							<DAI name="setVal">
								<Val>0.2S</Val>
							</DAI>
						</DOI>
						<DOI name="AccPro" desc="Prot. accuracy class">
							<DAI name="setVal">
								<Val>1</Val>
							</DAI>
						</DOI>
						<DOI name="HoldTmms" desc="Holdover time">
							<DAI name="setVal">
								<Val>5000</Val>
							</DAI>
							<DAI name="minVal">
								<Val>500</Val>
							</DAI>
							<DAI name="maxVal">
								<Val>90000</Val>
							</DAI>
						</DOI>
						<DOI name="NamAccRtg" desc="NamAccRtg">
							<DAI name="val">
								<Val>0,5S/5P20</Val>
							</DAI>
						</DOI>
						<DOI name="NamARtg" desc="NamARtg">
							<DAI name="val">
								<Val>200;400;800</Val>
							</DAI>
						</DOI>
						<DOI name="NamClipRtg" desc="NamClipRtg">
							<DAI name="val">
								<Val>20</Val>
							</DAI>
						</DOI>
						<Inputs>
							<ExtRef desc="PowS_LV NCT.LV NCT" intAddr="AmpSv;TCTR/AmpSv/instMag.i" pServT="SMV" pLN="TCTR" pDO="AmpSv" pDA="instMag.i"/>
							<ExtRef desc="PowS_LV NCT.LV NCT" intAddr="AmpSv;TCTR/AmpSv/q" pServT="SMV" pLN="TCTR" pDO="AmpSv" pDA="q"/>
						</Inputs>
					</LN>
				</LDevice>
				<LDevice desc="PowS_LV Phase CT" inst="PowS_LV_PhaseCT">
					<Private type="Siemens-MasterId">e5539f8d-37ed-40af-8503-9b5f65315b14</Private>
					<LN0 lnClass="LLN0" inst="" lnType="SIEMENS_7UT85_001SIPROTEC5_LNType_LLN0_LDevice_Generic" desc="PowS_LV_PhaseCT/LLN0">
						<Private type="Siemens-MasterId">fc16f390-d4e8-43ad-a5fc-28ac246f24ad</Private>
						<DOI name="Beh" desc="Behavior"/>
						<DOI name="Health" desc="Health"/>
						<DOI name="NamPlt" desc="Name plate">
							<DAI name="configRev">
								<Val>2023-06-08 08:36:18</Val>
							</DAI>
							<DAI name="ldNs">
								<Val>IEC 61850-7-4:2007B</Val>
							</DAI>
						</DOI>
						<DOI name="Mod" desc="Mode (controllable)"/>
						<DOI name="GrRef" desc="GrRef">
							<DAI name="setSrcRef">
								<Val>@PowS</Val>
							</DAI>
						</DOI>
					</LN0>
					<LN lnClass="GAPC" inst="1" lnType="SIEMENS_7UT85_001SIPROTEC5_LNType_GAPC_FB0_MUCurrent_3ph" desc="CT 3-phase" prefix="CT3P_">
						<Private type="Siemens-MasterId">14d01ffe-53c7-4b7a-b682-cc56755087e1</Private>
						<DOI name="Mod" desc="Mode (controllable)"/>
						<DOI name="Beh" desc="Behavior"/>
						<DOI name="Health" desc="Health"/>
						<DOI name="NamPlt" desc="Name plate">
							<DAI name="configRev">
								<Val>2023-06-08 08:36:18</Val>
							</DAI>
						</DOI>
						<DOI name="CtrlIn" desc="Disconnection"/>
						<DOI name="DisSet" desc="&gt;Disconnection on"/>
						<DOI name="DisReset" desc="&gt;Disconnection off"/>
						<DOI name="InvPhABCur" desc="Phases AB inverted"/>
						<DOI name="InvPhBCCur" desc="Phases BC inverted"/>
						<DOI name="InvPhACCur" desc="Phases AC inverted"/>
						<DOI name="StateBi" desc="Disconnection via BI"/>
						<DOI name="StateCmd" desc="Disconnect. via control"/>
					</LN>
					<LN lnClass="TCTR" inst="1" lnType="SIPROTEC5_LNType_TCTR" desc="CT 1" prefix="I02A">
						<Private type="Siemens-MasterId">c307fc02-40d7-4185-99f2-0a088584b100</Private>
						<DOI name="Mod" desc="Mode (status only)"/>
						<DOI name="Beh" desc="Behavior"/>
						<DOI name="Health" desc="Health"/>
						<DOI name="NamPlt" desc="Name plate">
							<DAI name="configRev">
								<Val>2023-06-08 08:36:18</Val>
							</DAI>
							<DAI name="lnNs">
								<Val>IEC 61869-9:2016A</Val>
							</DAI>
						</DOI>
						<DOI name="ARtg" desc="Rated primary current">
							<SDI name="setMag">
								<DAI name="f">
									<Val>2400</Val>
								</DAI>
							</SDI>
							<SDI name="units">
								<DAI name="SIUnit">
									<Val>A</Val>
								</DAI>
							</SDI>
							<SDI name="minVal">
								<DAI name="f">
									<Val>1</Val>
								</DAI>
							</SDI>
							<SDI name="maxVal">
								<DAI name="f">
									<Val>100000</Val>
								</DAI>
							</SDI>
							<SDI name="stepSize">
								<DAI name="f">
									<Val>0.1</Val>
								</DAI>
							</SDI>
						</DOI>
						<DOI name="Rat" desc="Rat">
							<SDI name="setMag">
								<DAI name="f">
									<Val>2400</Val>
								</DAI>
							</SDI>
							<SDI name="maxVal">
								<DAI name="f">
									<Val>10000</Val>
								</DAI>
							</SDI>
							<SDI name="stepSize">
								<DAI name="f">
									<Val>0.1</Val>
								</DAI>
							</SDI>
						</DOI>
						<DOI name="HzRtg" desc="Rated frequency">
							<SDI name="setMag">
								<DAI name="f">
									<Val>50</Val>
								</DAI>
							</SDI>
							<SDI name="units">
								<DAI name="SIUnit">
									<Val>Hz</Val>
								</DAI>
							</SDI>
							<SDI name="minVal">
								<DAI name="f">
									<Val>16.67</Val>
								</DAI>
							</SDI>
							<SDI name="maxVal">
								<DAI name="f">
									<Val>60</Val>
								</DAI>
							</SDI>
							<SDI name="stepSize">
								<DAI name="f">
									<Val>0.01</Val>
								</DAI>
							</SDI>
						</DOI>
						<DOI name="Cor" desc="Magnitude correction">
							<SDI name="setMag">
								<DAI name="f">
									<Val>1</Val>
								</DAI>
							</SDI>
							<SDI name="minVal">
								<DAI name="f">
									<Val>0.01</Val>
								</DAI>
							</SDI>
							<SDI name="maxVal">
								<DAI name="f">
									<Val>10</Val>
								</DAI>
							</SDI>
							<SDI name="stepSize">
								<DAI name="f">
									<Val>1E-05</Val>
								</DAI>
							</SDI>
						</DOI>
						<DOI name="AmpSv" desc="Sampled val. current">
							<SDI name="units">
								<DAI name="SIUnit">
									<Val>A</Val>
								</DAI>
							</SDI>
							<SDI name="sVC">
								<DAI name="scaleFactor">
									<Val>0.001</Val>
								</DAI>
							</SDI>
						</DOI>
						<DOI name="Trp" desc="Transient perform. class">
							<DAI name="setVal">
								<Val>TPM</Val>
							</DAI>
						</DOI>
						<DOI name="ScndTmms" desc="Second. loop time const.">
							<DAI name="setVal">
								<Val>210</Val>
							</DAI>
							<DAI name="minVal">
								<Val>1</Val>
							</DAI>
							<DAI name="maxVal">
								<Val>2147483647</Val>
							</DAI>
						</DOI>
						<DOI name="Clip" desc="Ratio of clipping limit">
							<SDI name="setMag">
								<DAI name="f">
									<Val>100</Val>
								</DAI>
							</SDI>
							<SDI name="maxVal">
								<DAI name="f">
									<Val>100</Val>
								</DAI>
							</SDI>
							<SDI name="stepSize">
								<DAI name="f">
									<Val>0.01</Val>
								</DAI>
							</SDI>
						</DOI>
						<DOI name="AccMeas" desc="Meas. accuracy class">
							<DAI name="setVal">
								<Val>0.2S</Val>
							</DAI>
						</DOI>
						<DOI name="AccPro" desc="Prot. accuracy class">
							<DAI name="setVal">
								<Val>1</Val>
							</DAI>
						</DOI>
						<DOI name="HoldTmms" desc="Holdover time">
							<DAI name="setVal">
								<Val>5000</Val>
							</DAI>
							<DAI name="minVal">
								<Val>500</Val>
							</DAI>
							<DAI name="maxVal">
								<Val>90000</Val>
							</DAI>
						</DOI>
						<DOI name="NamAccRtg" desc="NamAccRtg">
							<DAI name="val">
								<Val>0,5S/5P20</Val>
							</DAI>
						</DOI>
						<DOI name="NamARtg" desc="NamARtg">
							<DAI name="val">
								<Val>200;400;800</Val>
							</DAI>
						</DOI>
						<DOI name="NamClipRtg" desc="NamClipRtg">
							<DAI name="val">
								<Val>20</Val>
							</DAI>
						</DOI>
						<Inputs>
							<ExtRef desc="PowS_LV Phase CT.CT 1" intAddr="AmpSv;TCTR/AmpSv/instMag.i" pServT="SMV" pLN="TCTR" pDO="AmpSv" pDA="instMag.i"/>
							<ExtRef desc="PowS_LV Phase CT.CT 1" intAddr="AmpSv;TCTR/AmpSv/q" pServT="SMV" pLN="TCTR" pDO="AmpSv" pDA="q"/>
						</Inputs>
					</LN>
					<LN lnClass="TCTR" inst="2" lnType="SIPROTEC5_LNType_TCTR" desc="CT 2" prefix="I02B">
						<Private type="Siemens-MasterId">79574679-4cef-4ed6-a9c8-bbbfb4d27e7c</Private>
						<DOI name="Mod" desc="Mode (status only)"/>
						<DOI name="Beh" desc="Behavior"/>
						<DOI name="Health" desc="Health"/>
						<DOI name="NamPlt" desc="Name plate">
							<DAI name="configRev">
								<Val>2023-06-08 08:36:18</Val>
							</DAI>
							<DAI name="lnNs">
								<Val>IEC 61869-9:2016A</Val>
							</DAI>
						</DOI>
						<DOI name="ARtg" desc="Rated primary current">
							<SDI name="setMag">
								<DAI name="f">
									<Val>2400</Val>
								</DAI>
							</SDI>
							<SDI name="units">
								<DAI name="SIUnit">
									<Val>A</Val>
								</DAI>
							</SDI>
							<SDI name="minVal">
								<DAI name="f">
									<Val>1</Val>
								</DAI>
							</SDI>
							<SDI name="maxVal">
								<DAI name="f">
									<Val>100000</Val>
								</DAI>
							</SDI>
							<SDI name="stepSize">
								<DAI name="f">
									<Val>0.1</Val>
								</DAI>
							</SDI>
						</DOI>
						<DOI name="Rat" desc="Rat">
							<SDI name="setMag">
								<DAI name="f">
									<Val>2400</Val>
								</DAI>
							</SDI>
							<SDI name="maxVal">
								<DAI name="f">
									<Val>10000</Val>
								</DAI>
							</SDI>
							<SDI name="stepSize">
								<DAI name="f">
									<Val>0.1</Val>
								</DAI>
							</SDI>
						</DOI>
						<DOI name="HzRtg" desc="Rated frequency">
							<SDI name="setMag">
								<DAI name="f">
									<Val>50</Val>
								</DAI>
							</SDI>
							<SDI name="units">
								<DAI name="SIUnit">
									<Val>Hz</Val>
								</DAI>
							</SDI>
							<SDI name="minVal">
								<DAI name="f">
									<Val>16.67</Val>
								</DAI>
							</SDI>
							<SDI name="maxVal">
								<DAI name="f">
									<Val>60</Val>
								</DAI>
							</SDI>
							<SDI name="stepSize">
								<DAI name="f">
									<Val>0.01</Val>
								</DAI>
							</SDI>
						</DOI>
						<DOI name="Cor" desc="Magnitude correction">
							<SDI name="setMag">
								<DAI name="f">
									<Val>1</Val>
								</DAI>
							</SDI>
							<SDI name="minVal">
								<DAI name="f">
									<Val>0.01</Val>
								</DAI>
							</SDI>
							<SDI name="maxVal">
								<DAI name="f">
									<Val>10</Val>
								</DAI>
							</SDI>
							<SDI name="stepSize">
								<DAI name="f">
									<Val>1E-05</Val>
								</DAI>
							</SDI>
						</DOI>
						<DOI name="AmpSv" desc="Sampled val. current">
							<SDI name="units">
								<DAI name="SIUnit">
									<Val>A</Val>
								</DAI>
							</SDI>
							<SDI name="sVC">
								<DAI name="scaleFactor">
									<Val>0.001</Val>
								</DAI>
							</SDI>
						</DOI>
						<DOI name="Trp" desc="Transient perform. class">
							<DAI name="setVal">
								<Val>TPM</Val>
							</DAI>
						</DOI>
						<DOI name="ScndTmms" desc="Second. loop time const.">
							<DAI name="setVal">
								<Val>210</Val>
							</DAI>
							<DAI name="minVal">
								<Val>1</Val>
							</DAI>
							<DAI name="maxVal">
								<Val>2147483647</Val>
							</DAI>
						</DOI>
						<DOI name="Clip" desc="Ratio of clipping limit">
							<SDI name="setMag">
								<DAI name="f">
									<Val>100</Val>
								</DAI>
							</SDI>
							<SDI name="maxVal">
								<DAI name="f">
									<Val>100</Val>
								</DAI>
							</SDI>
							<SDI name="stepSize">
								<DAI name="f">
									<Val>0.01</Val>
								</DAI>
							</SDI>
						</DOI>
						<DOI name="AccMeas" desc="Meas. accuracy class">
							<DAI name="setVal">
								<Val>0.2S</Val>
							</DAI>
						</DOI>
						<DOI name="AccPro" desc="Prot. accuracy class">
							<DAI name="setVal">
								<Val>1</Val>
							</DAI>
						</DOI>
						<DOI name="HoldTmms" desc="Holdover time">
							<DAI name="setVal">
								<Val>5000</Val>
							</DAI>
							<DAI name="minVal">
								<Val>500</Val>
							</DAI>
							<DAI name="maxVal">
								<Val>90000</Val>
							</DAI>
						</DOI>
						<DOI name="NamAccRtg" desc="NamAccRtg">
							<DAI name="val">
								<Val>0,5S/5P20</Val>
							</DAI>
						</DOI>
						<DOI name="NamARtg" desc="NamARtg">
							<DAI name="val">
								<Val>200;400;800</Val>
							</DAI>
						</DOI>
						<DOI name="NamClipRtg" desc="NamClipRtg">
							<DAI name="val">
								<Val>20</Val>
							</DAI>
						</DOI>
						<Inputs>
							<ExtRef desc="PowS_LV Phase CT.CT 2" intAddr="AmpSv;TCTR/AmpSv/instMag.i" pServT="SMV" pLN="TCTR" pDO="AmpSv" pDA="instMag.i"/>
							<ExtRef desc="PowS_LV Phase CT.CT 2" intAddr="AmpSv;TCTR/AmpSv/q" pServT="SMV" pLN="TCTR" pDO="AmpSv" pDA="q"/>
						</Inputs>
					</LN>
					<LN lnClass="TCTR" inst="3" lnType="SIPROTEC5_LNType_TCTR" desc="CT 3" prefix="I02C">
						<Private type="Siemens-MasterId">1d899524-0242-4a11-8617-98f3eb6a912f</Private>
						<DOI name="Mod" desc="Mode (status only)"/>
						<DOI name="Beh" desc="Behavior"/>
						<DOI name="Health" desc="Health"/>
						<DOI name="NamPlt" desc="Name plate">
							<DAI name="configRev">
								<Val>2023-06-08 08:36:18</Val>
							</DAI>
							<DAI name="lnNs">
								<Val>IEC 61869-9:2016A</Val>
							</DAI>
						</DOI>
						<DOI name="ARtg" desc="Rated primary current">
							<SDI name="setMag">
								<DAI name="f">
									<Val>2400</Val>
								</DAI>
							</SDI>
							<SDI name="units">
								<DAI name="SIUnit">
									<Val>A</Val>
								</DAI>
							</SDI>
							<SDI name="minVal">
								<DAI name="f">
									<Val>1</Val>
								</DAI>
							</SDI>
							<SDI name="maxVal">
								<DAI name="f">
									<Val>100000</Val>
								</DAI>
							</SDI>
							<SDI name="stepSize">
								<DAI name="f">
									<Val>0.1</Val>
								</DAI>
							</SDI>
						</DOI>
						<DOI name="Rat" desc="Rat">
							<SDI name="setMag">
								<DAI name="f">
									<Val>2400</Val>
								</DAI>
							</SDI>
							<SDI name="maxVal">
								<DAI name="f">
									<Val>10000</Val>
								</DAI>
							</SDI>
							<SDI name="stepSize">
								<DAI name="f">
									<Val>0.1</Val>
								</DAI>
							</SDI>
						</DOI>
						<DOI name="HzRtg" desc="Rated frequency">
							<SDI name="setMag">
								<DAI name="f">
									<Val>50</Val>
								</DAI>
							</SDI>
							<SDI name="units">
								<DAI name="SIUnit">
									<Val>Hz</Val>
								</DAI>
							</SDI>
							<SDI name="minVal">
								<DAI name="f">
									<Val>16.67</Val>
								</DAI>
							</SDI>
							<SDI name="maxVal">
								<DAI name="f">
									<Val>60</Val>
								</DAI>
							</SDI>
							<SDI name="stepSize">
								<DAI name="f">
									<Val>0.01</Val>
								</DAI>
							</SDI>
						</DOI>
						<DOI name="Cor" desc="Magnitude correction">
							<SDI name="setMag">
								<DAI name="f">
									<Val>1</Val>
								</DAI>
							</SDI>
							<SDI name="minVal">
								<DAI name="f">
									<Val>0.01</Val>
								</DAI>
							</SDI>
							<SDI name="maxVal">
								<DAI name="f">
									<Val>10</Val>
								</DAI>
							</SDI>
							<SDI name="stepSize">
								<DAI name="f">
									<Val>1E-05</Val>
								</DAI>
							</SDI>
						</DOI>
						<DOI name="AmpSv" desc="Sampled val. current">
							<SDI name="units">
								<DAI name="SIUnit">
									<Val>A</Val>
								</DAI>
							</SDI>
							<SDI name="sVC">
								<DAI name="scaleFactor">
									<Val>0.001</Val>
								</DAI>
							</SDI>
						</DOI>
						<DOI name="Trp" desc="Transient perform. class">
							<DAI name="setVal">
								<Val>TPM</Val>
							</DAI>
						</DOI>
						<DOI name="ScndTmms" desc="Second. loop time const.">
							<DAI name="setVal">
								<Val>210</Val>
							</DAI>
							<DAI name="minVal">
								<Val>1</Val>
							</DAI>
							<DAI name="maxVal">
								<Val>2147483647</Val>
							</DAI>
						</DOI>
						<DOI name="Clip" desc="Ratio of clipping limit">
							<SDI name="setMag">
								<DAI name="f">
									<Val>100</Val>
								</DAI>
							</SDI>
							<SDI name="maxVal">
								<DAI name="f">
									<Val>100</Val>
								</DAI>
							</SDI>
							<SDI name="stepSize">
								<DAI name="f">
									<Val>0.01</Val>
								</DAI>
							</SDI>
						</DOI>
						<DOI name="AccMeas" desc="Meas. accuracy class">
							<DAI name="setVal">
								<Val>0.2S</Val>
							</DAI>
						</DOI>
						<DOI name="AccPro" desc="Prot. accuracy class">
							<DAI name="setVal">
								<Val>1</Val>
							</DAI>
						</DOI>
						<DOI name="HoldTmms" desc="Holdover time">
							<DAI name="setVal">
								<Val>5000</Val>
							</DAI>
							<DAI name="minVal">
								<Val>500</Val>
							</DAI>
							<DAI name="maxVal">
								<Val>90000</Val>
							</DAI>
						</DOI>
						<DOI name="NamAccRtg" desc="NamAccRtg">
							<DAI name="val">
								<Val>0,5S/5P20</Val>
							</DAI>
						</DOI>
						<DOI name="NamARtg" desc="NamARtg">
							<DAI name="val">
								<Val>200;400;800</Val>
							</DAI>
						</DOI>
						<DOI name="NamClipRtg" desc="NamClipRtg">
							<DAI name="val">
								<Val>20</Val>
							</DAI>
						</DOI>
						<Inputs>
							<ExtRef desc="PowS_LV Phase CT.CT 3" intAddr="AmpSv;TCTR/AmpSv/instMag.i" pServT="SMV" pLN="TCTR" pDO="AmpSv" pDA="instMag.i"/>
							<ExtRef desc="PowS_LV Phase CT.CT 3" intAddr="AmpSv;TCTR/AmpSv/q" pServT="SMV" pLN="TCTR" pDO="AmpSv" pDA="q"/>
						</Inputs>
					</LN>
					<LN lnClass="TCTR" inst="4" lnType="SIPROTEC5_LNType_TCTR" desc="CT 4" prefix="I02N">
						<Private type="Siemens-MasterId">1215dc4c-d182-4501-aacb-2ddf303177ef</Private>
						<DOI name="Mod" desc="Mode (status only)"/>
						<DOI name="Beh" desc="Behavior"/>
						<DOI name="Health" desc="Health"/>
						<DOI name="NamPlt" desc="Name plate">
							<DAI name="configRev">
								<Val>2023-06-08 08:36:18</Val>
							</DAI>
							<DAI name="lnNs">
								<Val>IEC 61869-9:2016A</Val>
							</DAI>
						</DOI>
						<DOI name="ARtg" desc="Rated primary current">
							<SDI name="setMag">
								<DAI name="f">
									<Val>2400</Val>
								</DAI>
							</SDI>
							<SDI name="units">
								<DAI name="SIUnit">
									<Val>A</Val>
								</DAI>
							</SDI>
							<SDI name="minVal">
								<DAI name="f">
									<Val>1</Val>
								</DAI>
							</SDI>
							<SDI name="maxVal">
								<DAI name="f">
									<Val>100000</Val>
								</DAI>
							</SDI>
							<SDI name="stepSize">
								<DAI name="f">
									<Val>0.1</Val>
								</DAI>
							</SDI>
						</DOI>
						<DOI name="Rat" desc="Rat">
							<SDI name="setMag">
								<DAI name="f">
									<Val>2400</Val>
								</DAI>
							</SDI>
							<SDI name="maxVal">
								<DAI name="f">
									<Val>10000</Val>
								</DAI>
							</SDI>
							<SDI name="stepSize">
								<DAI name="f">
									<Val>0.1</Val>
								</DAI>
							</SDI>
						</DOI>
						<DOI name="HzRtg" desc="Rated frequency">
							<SDI name="setMag">
								<DAI name="f">
									<Val>50</Val>
								</DAI>
							</SDI>
							<SDI name="units">
								<DAI name="SIUnit">
									<Val>Hz</Val>
								</DAI>
							</SDI>
							<SDI name="minVal">
								<DAI name="f">
									<Val>16.67</Val>
								</DAI>
							</SDI>
							<SDI name="maxVal">
								<DAI name="f">
									<Val>60</Val>
								</DAI>
							</SDI>
							<SDI name="stepSize">
								<DAI name="f">
									<Val>0.01</Val>
								</DAI>
							</SDI>
						</DOI>
						<DOI name="Cor" desc="Magnitude correction">
							<SDI name="setMag">
								<DAI name="f">
									<Val>1</Val>
								</DAI>
							</SDI>
							<SDI name="minVal">
								<DAI name="f">
									<Val>0.01</Val>
								</DAI>
							</SDI>
							<SDI name="maxVal">
								<DAI name="f">
									<Val>10</Val>
								</DAI>
							</SDI>
							<SDI name="stepSize">
								<DAI name="f">
									<Val>1E-05</Val>
								</DAI>
							</SDI>
						</DOI>
						<DOI name="AmpSv" desc="Sampled val. current">
							<SDI name="units">
								<DAI name="SIUnit">
									<Val>A</Val>
								</DAI>
							</SDI>
							<SDI name="sVC">
								<DAI name="scaleFactor">
									<Val>0.001</Val>
								</DAI>
							</SDI>
						</DOI>
						<DOI name="Trp" desc="Transient perform. class">
							<DAI name="setVal">
								<Val>TPM</Val>
							</DAI>
						</DOI>
						<DOI name="ScndTmms" desc="Second. loop time const.">
							<DAI name="setVal">
								<Val>210</Val>
							</DAI>
							<DAI name="minVal">
								<Val>1</Val>
							</DAI>
							<DAI name="maxVal">
								<Val>2147483647</Val>
							</DAI>
						</DOI>
						<DOI name="Clip" desc="Ratio of clipping limit">
							<SDI name="setMag">
								<DAI name="f">
									<Val>100</Val>
								</DAI>
							</SDI>
							<SDI name="maxVal">
								<DAI name="f">
									<Val>100</Val>
								</DAI>
							</SDI>
							<SDI name="stepSize">
								<DAI name="f">
									<Val>0.01</Val>
								</DAI>
							</SDI>
						</DOI>
						<DOI name="AccMeas" desc="Meas. accuracy class">
							<DAI name="setVal">
								<Val>0.2S</Val>
							</DAI>
						</DOI>
						<DOI name="AccPro" desc="Prot. accuracy class">
							<DAI name="setVal">
								<Val>1</Val>
							</DAI>
						</DOI>
						<DOI name="HoldTmms" desc="Holdover time">
							<DAI name="setVal">
								<Val>5000</Val>
							</DAI>
							<DAI name="minVal">
								<Val>500</Val>
							</DAI>
							<DAI name="maxVal">
								<Val>90000</Val>
							</DAI>
						</DOI>
						<DOI name="NamAccRtg" desc="NamAccRtg">
							<DAI name="val">
								<Val>0,5S/5P20</Val>
							</DAI>
						</DOI>
						<DOI name="NamARtg" desc="NamARtg">
							<DAI name="val">
								<Val>200;400;800</Val>
							</DAI>
						</DOI>
						<DOI name="NamClipRtg" desc="NamClipRtg">
							<DAI name="val">
								<Val>20</Val>
							</DAI>
						</DOI>
						<Inputs>
							<ExtRef desc="PowS_LV Phase CT.CT 4" intAddr="AmpSv;TCTR/AmpSv/instMag.i" pServT="SMV" pLN="TCTR" pDO="AmpSv" pDA="instMag.i"/>
							<ExtRef desc="PowS_LV Phase CT.CT 4" intAddr="AmpSv;TCTR/AmpSv/q" pServT="SMV" pLN="TCTR" pDO="AmpSv" pDA="q"/>
						</Inputs>
					</LN>
					<LN lnClass="SBWI" inst="1" lnType="SIPROTEC5_LNType_SBWS_BW_Tr" desc="Brk.wire det." prefix="TR_">
						<Private type="Siemens-MasterId">fa73c3e1-b17f-4a20-9f1a-63421a42855b</Private>
						<DOI name="Mod" desc="Mode (controllable)"/>
						<DOI name="Beh" desc="Behavior"/>
						<DOI name="Health" desc="Health"/>
						<DOI name="NamPlt" desc="Name plate">
							<DAI name="configRev">
								<Val>2023-06-08 08:36:18</Val>
							</DAI>
						</DOI>
						<DOI name="ResetBW" desc="&gt;Block function"/>
						<DOI name="Inactive" desc="Inactive"/>
						<DOI name="PhABWsus" desc="Phs A BW suspected"/>
						<DOI name="PhBBWsus" desc="Phs B BW suspected"/>
						<DOI name="PhCBWsus" desc="Phs C BW suspected"/>
						<DOI name="PhABW" desc="Phase A broken wire"/>
						<DOI name="PhBBW" desc="Phase B broken wire"/>
						<DOI name="PhCBW" desc="Phase C broken wire"/>
						<DOI name="BWsus" desc="Broken wire suspected"/>
						<DOI name="BrokenWire" desc="Broken wire confirmed"/>
					</LN>
					<LN lnClass="SSYM" inst="1" lnType="SIPROTEC5_LNType_SSYM_CurBalSV" desc="Supv. balan. I" prefix="I_">
						<Private type="Siemens-MasterId">fa869241-c623-4ae2-a6e7-ef642c1d3a51</Private>
						<DOI name="Mod" desc="Mode (controllable)"/>
						<DOI name="Beh" desc="Behavior"/>
						<DOI name="Health" desc="Health"/>
						<DOI name="NamPlt" desc="Name plate">
							<DAI name="configRev">
								<Val>2023-06-08 08:36:18</Val>
							</DAI>
						</DOI>
						<DOI name="Blk" desc="&gt;Block function"/>
						<DOI name="Failure" desc="Failure"/>
					</LN>
					<LN lnClass="SPSQ" inst="1" lnType="SIPROTEC5_LNType_SPSQ_CurPhSeqSV" desc="Supv. ph.seq.I" prefix="I_">
						<Private type="Siemens-MasterId">cb0b06cb-6169-45d3-881f-bcdc18a3b23c</Private>
						<DOI name="Mod" desc="Mode (controllable)"/>
						<DOI name="Beh" desc="Behavior"/>
						<DOI name="Health" desc="Health"/>
						<DOI name="NamPlt" desc="Name plate">
							<DAI name="configRev">
								<Val>2023-06-08 08:36:18</Val>
							</DAI>
						</DOI>
						<DOI name="Blk" desc="&gt;Block function"/>
						<DOI name="Inactive" desc="Inactive"/>
						<DOI name="Failure" desc="Failure"/>
					</LN>
					<LN lnClass="SSUM" inst="1" lnType="SIPROTEC5_LNType_SSUM_SlowCurSumSV" desc="Supv. sum I" prefix="I_">
						<Private type="Siemens-MasterId">d9590993-7ba2-4685-bbc1-1826c8aa3d14</Private>
						<DOI name="Mod" desc="Mode (controllable)"/>
						<DOI name="Beh" desc="Behavior"/>
						<DOI name="Health" desc="Health"/>
						<DOI name="NamPlt" desc="Name plate">
							<DAI name="configRev">
								<Val>2023-06-08 08:36:18</Val>
							</DAI>
						</DOI>
						<DOI name="Blk" desc="&gt;Block function"/>
						<DOI name="Failure" desc="Failure"/>
					</LN>
					<LN lnClass="SADC" inst="1" lnType="SIPROTEC5_LNType_SADC_FastCurSumSV" desc="Supv.ADC sum I" prefix="ISUM_">
						<Private type="Siemens-MasterId">a76a418c-4fad-4ecd-b7f6-0af5a36dfd1f</Private>
						<DOI name="Mod" desc="Mode (controllable)"/>
						<DOI name="Beh" desc="Behavior"/>
						<DOI name="Health" desc="Health"/>
						<DOI name="NamPlt" desc="Name plate">
							<DAI name="configRev">
								<Val>2023-06-08 08:36:18</Val>
							</DAI>
						</DOI>
						<DOI name="Blk" desc="&gt;Block function"/>
						<DOI name="Inactive" desc="Inactive"/>
						<DOI name="Failure" desc="Failure"/>
					</LN>
				</LDevice>
				<LDevice desc="PowS_LV Phase VT" inst="PowS_LV_PhaseVT">
					<Private type="Siemens-MasterId">9542abee-75fd-4803-a4b9-5ba7e5ae1405</Private>
					<LN0 lnClass="LLN0" inst="" lnType="SIEMENS_7UT85_001SIPROTEC5_LNType_LLN0_LDevice_Generic" desc="PowS_LV_PhaseVT/LLN0">
						<Private type="Siemens-MasterId">bb46f349-237a-4902-b3dc-2f615057f027</Private>
						<DOI name="Beh" desc="Behavior"/>
						<DOI name="Health" desc="Health"/>
						<DOI name="NamPlt" desc="Name plate">
							<DAI name="configRev">
								<Val>2023-06-08 08:36:18</Val>
							</DAI>
							<DAI name="ldNs">
								<Val>IEC 61850-7-4:2007B</Val>
							</DAI>
						</DOI>
						<DOI name="Mod" desc="Mode (controllable)"/>
						<DOI name="GrRef" desc="GrRef">
							<DAI name="setSrcRef">
								<Val>@PowS</Val>
							</DAI>
						</DOI>
					</LN0>
					<LN lnClass="GAPC" inst="1" lnType="SIPROTEC5_LNType_GAPC_FB0_MUVoltage_3ph" desc="VT 3-phase" prefix="VT3P_">
						<Private type="Siemens-MasterId">911a241b-5512-4e8f-92ab-1e32a6a675b1</Private>
						<DOI name="Mod" desc="Mode (controllable)"/>
						<DOI name="Beh" desc="Behavior"/>
						<DOI name="Health" desc="Health"/>
						<DOI name="NamPlt" desc="Name plate">
							<DAI name="configRev">
								<Val>2023-06-08 08:36:18</Val>
							</DAI>
						</DOI>
						<DOI name="InvPhABVol" desc="Phases AB inverted"/>
						<DOI name="InvPhBCVol" desc="Phases BC inverted"/>
						<DOI name="InvPhACVol" desc="Phases AC inverted"/>
					</LN>
					<LN lnClass="TVTR" inst="1" lnType="SIPROTEC5_LNType_TVTR" desc="VT 1" prefix="U02A">
						<Private type="Siemens-MasterId">4088fe14-1076-4028-9a5e-60b38754f854</Private>
						<DOI name="Mod" desc="Mode (status only)"/>
						<DOI name="Beh" desc="Behavior"/>
						<DOI name="Health" desc="Health"/>
						<DOI name="NamPlt" desc="Name plate">
							<DAI name="configRev">
								<Val>2023-06-08 08:36:18</Val>
							</DAI>
							<DAI name="lnNs">
								<Val>IEC 61869-9:2016A</Val>
							</DAI>
						</DOI>
						<DOI name="VolSv" desc="Sampled val. voltage">
							<SDI name="units">
								<DAI name="SIUnit">
									<Val>V</Val>
								</DAI>
							</SDI>
							<SDI name="sVC">
								<DAI name="scaleFactor">
									<Val>0.01</Val>
								</DAI>
							</SDI>
						</DOI>
						<DOI name="VRtg" desc="Rated primary voltage">
							<SDI name="setMag">
								<DAI name="f">
									<Val>230.940109</Val>
								</DAI>
							</SDI>
							<SDI name="units">
								<DAI name="SIUnit">
									<Val>V</Val>
								</DAI>
								<DAI name="multiplier">
									<Val>k</Val>
								</DAI>
							</SDI>
							<SDI name="minVal">
								<DAI name="f">
									<Val>0.1</Val>
								</DAI>
							</SDI>
							<SDI name="maxVal">
								<DAI name="f">
									<Val>1200</Val>
								</DAI>
							</SDI>
							<SDI name="stepSize">
								<DAI name="f">
									<Val>0.01</Val>
								</DAI>
							</SDI>
						</DOI>
						<DOI name="HzRtg" desc="Rated frequency">
							<SDI name="setMag">
								<DAI name="f">
									<Val>50</Val>
								</DAI>
							</SDI>
							<SDI name="units">
								<DAI name="SIUnit">
									<Val>Hz</Val>
								</DAI>
							</SDI>
							<SDI name="minVal">
								<DAI name="f">
									<Val>16.67</Val>
								</DAI>
							</SDI>
							<SDI name="maxVal">
								<DAI name="f">
									<Val>60</Val>
								</DAI>
							</SDI>
							<SDI name="stepSize">
								<DAI name="f">
									<Val>0.01</Val>
								</DAI>
							</SDI>
						</DOI>
						<DOI name="Rat" desc="Rat">
							<SDI name="setMag">
								<DAI name="f">
									<Val>4000</Val>
								</DAI>
							</SDI>
							<SDI name="maxVal">
								<DAI name="f">
									<Val>10000</Val>
								</DAI>
							</SDI>
							<SDI name="stepSize">
								<DAI name="f">
									<Val>0.1</Val>
								</DAI>
							</SDI>
						</DOI>
						<DOI name="Cor" desc="Magnitude correction">
							<SDI name="setMag">
								<DAI name="f">
									<Val>1</Val>
								</DAI>
							</SDI>
							<SDI name="minVal">
								<DAI name="f">
									<Val>0.01</Val>
								</DAI>
							</SDI>
							<SDI name="maxVal">
								<DAI name="f">
									<Val>10</Val>
								</DAI>
							</SDI>
							<SDI name="stepSize">
								<DAI name="f">
									<Val>1E-05</Val>
								</DAI>
							</SDI>
						</DOI>
						<DOI name="Clip" desc="Ratio of clipping limit">
							<SDI name="setMag">
								<DAI name="f">
									<Val>3.46410155</Val>
								</DAI>
							</SDI>
							<SDI name="maxVal">
								<DAI name="f">
									<Val>100</Val>
								</DAI>
							</SDI>
							<SDI name="stepSize">
								<DAI name="f">
									<Val>0.01</Val>
								</DAI>
							</SDI>
						</DOI>
						<DOI name="AccMeas" desc="Meas. accuracy class">
							<DAI name="setVal">
								<Val>0.2S</Val>
							</DAI>
						</DOI>
						<DOI name="AccPro" desc="Prot. accuracy class">
							<DAI name="setVal">
								<Val>1</Val>
							</DAI>
						</DOI>
						<DOI name="HoldTmms" desc="Holdover time">
							<DAI name="setVal">
								<Val>5000</Val>
							</DAI>
							<DAI name="minVal">
								<Val>500</Val>
							</DAI>
							<DAI name="maxVal">
								<Val>90000</Val>
							</DAI>
						</DOI>
						<DOI name="NamAccRtg" desc="NamAccRtg">
							<DAI name="val">
								<Val>0,5/3P</Val>
							</DAI>
						</DOI>
						<DOI name="NamVRtg" desc="NamVRtg">
							<DAI name="val">
								<Val>173000</Val>
							</DAI>
						</DOI>
						<DOI name="NamClipRtg" desc="NamClipRtg">
							<DAI name="val">
								<Val>2</Val>
							</DAI>
						</DOI>
						<Inputs>
							<ExtRef desc="PowS_LV Phase VT.VT 1" intAddr="VolSv;TVTR/VolSv/instMag.i" pServT="SMV" pLN="TVTR" pDO="VolSv" pDA="instMag.i"/>
							<ExtRef desc="PowS_LV Phase VT.VT 1" intAddr="VolSv;TVTR/VolSv/q" pServT="SMV" pLN="TVTR" pDO="VolSv" pDA="q"/>
						</Inputs>
					</LN>
					<LN lnClass="TVTR" inst="2" lnType="SIPROTEC5_LNType_TVTR" desc="VT 2" prefix="U02B">
						<Private type="Siemens-MasterId">1dcc643f-9132-44af-b0c7-8558d89d3ea2</Private>
						<DOI name="Mod" desc="Mode (status only)"/>
						<DOI name="Beh" desc="Behavior"/>
						<DOI name="Health" desc="Health"/>
						<DOI name="NamPlt" desc="Name plate">
							<DAI name="configRev">
								<Val>2023-06-08 08:36:18</Val>
							</DAI>
							<DAI name="lnNs">
								<Val>IEC 61869-9:2016A</Val>
							</DAI>
						</DOI>
						<DOI name="VolSv" desc="Sampled val. voltage">
							<SDI name="units">
								<DAI name="SIUnit">
									<Val>V</Val>
								</DAI>
							</SDI>
							<SDI name="sVC">
								<DAI name="scaleFactor">
									<Val>0.01</Val>
								</DAI>
							</SDI>
						</DOI>
						<DOI name="VRtg" desc="Rated primary voltage">
							<SDI name="setMag">
								<DAI name="f">
									<Val>230.940109</Val>
								</DAI>
							</SDI>
							<SDI name="units">
								<DAI name="SIUnit">
									<Val>V</Val>
								</DAI>
								<DAI name="multiplier">
									<Val>k</Val>
								</DAI>
							</SDI>
							<SDI name="minVal">
								<DAI name="f">
									<Val>0.1</Val>
								</DAI>
							</SDI>
							<SDI name="maxVal">
								<DAI name="f">
									<Val>1200</Val>
								</DAI>
							</SDI>
							<SDI name="stepSize">
								<DAI name="f">
									<Val>0.01</Val>
								</DAI>
							</SDI>
						</DOI>
						<DOI name="HzRtg" desc="Rated frequency">
							<SDI name="setMag">
								<DAI name="f">
									<Val>50</Val>
								</DAI>
							</SDI>
							<SDI name="units">
								<DAI name="SIUnit">
									<Val>Hz</Val>
								</DAI>
							</SDI>
							<SDI name="minVal">
								<DAI name="f">
									<Val>16.67</Val>
								</DAI>
							</SDI>
							<SDI name="maxVal">
								<DAI name="f">
									<Val>60</Val>
								</DAI>
							</SDI>
							<SDI name="stepSize">
								<DAI name="f">
									<Val>0.01</Val>
								</DAI>
							</SDI>
						</DOI>
						<DOI name="Rat" desc="Rat">
							<SDI name="setMag">
								<DAI name="f">
									<Val>4000</Val>
								</DAI>
							</SDI>
							<SDI name="maxVal">
								<DAI name="f">
									<Val>10000</Val>
								</DAI>
							</SDI>
							<SDI name="stepSize">
								<DAI name="f">
									<Val>0.1</Val>
								</DAI>
							</SDI>
						</DOI>
						<DOI name="Cor" desc="Magnitude correction">
							<SDI name="setMag">
								<DAI name="f">
									<Val>1</Val>
								</DAI>
							</SDI>
							<SDI name="minVal">
								<DAI name="f">
									<Val>0.01</Val>
								</DAI>
							</SDI>
							<SDI name="maxVal">
								<DAI name="f">
									<Val>10</Val>
								</DAI>
							</SDI>
							<SDI name="stepSize">
								<DAI name="f">
									<Val>1E-05</Val>
								</DAI>
							</SDI>
						</DOI>
						<DOI name="Clip" desc="Ratio of clipping limit">
							<SDI name="setMag">
								<DAI name="f">
									<Val>3.46410155</Val>
								</DAI>
							</SDI>
							<SDI name="maxVal">
								<DAI name="f">
									<Val>100</Val>
								</DAI>
							</SDI>
							<SDI name="stepSize">
								<DAI name="f">
									<Val>0.01</Val>
								</DAI>
							</SDI>
						</DOI>
						<DOI name="AccMeas" desc="Meas. accuracy class">
							<DAI name="setVal">
								<Val>0.2S</Val>
							</DAI>
						</DOI>
						<DOI name="AccPro" desc="Prot. accuracy class">
							<DAI name="setVal">
								<Val>1</Val>
							</DAI>
						</DOI>
						<DOI name="HoldTmms" desc="Holdover time">
							<DAI name="setVal">
								<Val>5000</Val>
							</DAI>
							<DAI name="minVal">
								<Val>500</Val>
							</DAI>
							<DAI name="maxVal">
								<Val>90000</Val>
							</DAI>
						</DOI>
						<DOI name="NamAccRtg" desc="NamAccRtg">
							<DAI name="val">
								<Val>0,5/3P</Val>
							</DAI>
						</DOI>
						<DOI name="NamVRtg" desc="NamVRtg">
							<DAI name="val">
								<Val>173000</Val>
							</DAI>
						</DOI>
						<DOI name="NamClipRtg" desc="NamClipRtg">
							<DAI name="val">
								<Val>2</Val>
							</DAI>
						</DOI>
						<Inputs>
							<ExtRef desc="PowS_LV Phase VT.VT 2" intAddr="VolSv;TVTR/VolSv/instMag.i" pServT="SMV" pLN="TVTR" pDO="VolSv" pDA="instMag.i"/>
							<ExtRef desc="PowS_LV Phase VT.VT 2" intAddr="VolSv;TVTR/VolSv/q" pServT="SMV" pLN="TVTR" pDO="VolSv" pDA="q"/>
						</Inputs>
					</LN>
					<LN lnClass="TVTR" inst="3" lnType="SIPROTEC5_LNType_TVTR" desc="VT 3" prefix="U02C">
						<Private type="Siemens-MasterId">3549191b-b662-4860-99e7-416d5c6e4585</Private>
						<DOI name="Mod" desc="Mode (status only)"/>
						<DOI name="Beh" desc="Behavior"/>
						<DOI name="Health" desc="Health"/>
						<DOI name="NamPlt" desc="Name plate">
							<DAI name="configRev">
								<Val>2023-06-08 08:36:18</Val>
							</DAI>
							<DAI name="lnNs">
								<Val>IEC 61869-9:2016A</Val>
							</DAI>
						</DOI>
						<DOI name="VolSv" desc="Sampled val. voltage">
							<SDI name="units">
								<DAI name="SIUnit">
									<Val>V</Val>
								</DAI>
							</SDI>
							<SDI name="sVC">
								<DAI name="scaleFactor">
									<Val>0.01</Val>
								</DAI>
							</SDI>
						</DOI>
						<DOI name="VRtg" desc="Rated primary voltage">
							<SDI name="setMag">
								<DAI name="f">
									<Val>230.940109</Val>
								</DAI>
							</SDI>
							<SDI name="units">
								<DAI name="SIUnit">
									<Val>V</Val>
								</DAI>
								<DAI name="multiplier">
									<Val>k</Val>
								</DAI>
							</SDI>
							<SDI name="minVal">
								<DAI name="f">
									<Val>0.1</Val>
								</DAI>
							</SDI>
							<SDI name="maxVal">
								<DAI name="f">
									<Val>1200</Val>
								</DAI>
							</SDI>
							<SDI name="stepSize">
								<DAI name="f">
									<Val>0.01</Val>
								</DAI>
							</SDI>
						</DOI>
						<DOI name="HzRtg" desc="Rated frequency">
							<SDI name="setMag">
								<DAI name="f">
									<Val>50</Val>
								</DAI>
							</SDI>
							<SDI name="units">
								<DAI name="SIUnit">
									<Val>Hz</Val>
								</DAI>
							</SDI>
							<SDI name="minVal">
								<DAI name="f">
									<Val>16.67</Val>
								</DAI>
							</SDI>
							<SDI name="maxVal">
								<DAI name="f">
									<Val>60</Val>
								</DAI>
							</SDI>
							<SDI name="stepSize">
								<DAI name="f">
									<Val>0.01</Val>
								</DAI>
							</SDI>
						</DOI>
						<DOI name="Rat" desc="Rat">
							<SDI name="setMag">
								<DAI name="f">
									<Val>4000</Val>
								</DAI>
							</SDI>
							<SDI name="maxVal">
								<DAI name="f">
									<Val>10000</Val>
								</DAI>
							</SDI>
							<SDI name="stepSize">
								<DAI name="f">
									<Val>0.1</Val>
								</DAI>
							</SDI>
						</DOI>
						<DOI name="Cor" desc="Magnitude correction">
							<SDI name="setMag">
								<DAI name="f">
									<Val>1</Val>
								</DAI>
							</SDI>
							<SDI name="minVal">
								<DAI name="f">
									<Val>0.01</Val>
								</DAI>
							</SDI>
							<SDI name="maxVal">
								<DAI name="f">
									<Val>10</Val>
								</DAI>
							</SDI>
							<SDI name="stepSize">
								<DAI name="f">
									<Val>1E-05</Val>
								</DAI>
							</SDI>
						</DOI>
						<DOI name="Clip" desc="Ratio of clipping limit">
							<SDI name="setMag">
								<DAI name="f">
									<Val>3.46410155</Val>
								</DAI>
							</SDI>
							<SDI name="maxVal">
								<DAI name="f">
									<Val>100</Val>
								</DAI>
							</SDI>
							<SDI name="stepSize">
								<DAI name="f">
									<Val>0.01</Val>
								</DAI>
							</SDI>
						</DOI>
						<DOI name="AccMeas" desc="Meas. accuracy class">
							<DAI name="setVal">
								<Val>0.2S</Val>
							</DAI>
						</DOI>
						<DOI name="AccPro" desc="Prot. accuracy class">
							<DAI name="setVal">
								<Val>1</Val>
							</DAI>
						</DOI>
						<DOI name="HoldTmms" desc="Holdover time">
							<DAI name="setVal">
								<Val>5000</Val>
							</DAI>
							<DAI name="minVal">
								<Val>500</Val>
							</DAI>
							<DAI name="maxVal">
								<Val>90000</Val>
							</DAI>
						</DOI>
						<DOI name="NamAccRtg" desc="NamAccRtg">
							<DAI name="val">
								<Val>0,5/3P</Val>
							</DAI>
						</DOI>
						<DOI name="NamVRtg" desc="NamVRtg">
							<DAI name="val">
								<Val>173000</Val>
							</DAI>
						</DOI>
						<DOI name="NamClipRtg" desc="NamClipRtg">
							<DAI name="val">
								<Val>2</Val>
							</DAI>
						</DOI>
						<Inputs>
							<ExtRef desc="PowS_LV Phase VT.VT 3" intAddr="VolSv;TVTR/VolSv/instMag.i" pServT="SMV" pLN="TVTR" pDO="VolSv" pDA="instMag.i"/>
							<ExtRef desc="PowS_LV Phase VT.VT 3" intAddr="VolSv;TVTR/VolSv/q" pServT="SMV" pLN="TVTR" pDO="VolSv" pDA="q"/>
						</Inputs>
					</LN>
					<LN lnClass="TVTR" inst="4" lnType="SIPROTEC5_LNType_TVTR" desc="VT 4" prefix="U02N">
						<Private type="Siemens-MasterId">27366b63-eee1-4362-a7d5-20e0154d8210</Private>
						<DOI name="Mod" desc="Mode (status only)"/>
						<DOI name="Beh" desc="Behavior"/>
						<DOI name="Health" desc="Health"/>
						<DOI name="NamPlt" desc="Name plate">
							<DAI name="configRev">
								<Val>2023-06-08 08:36:18</Val>
							</DAI>
							<DAI name="lnNs">
								<Val>IEC 61869-9:2016A</Val>
							</DAI>
						</DOI>
						<DOI name="VolSv" desc="Sampled val. voltage">
							<SDI name="units">
								<DAI name="SIUnit">
									<Val>V</Val>
								</DAI>
							</SDI>
							<SDI name="sVC">
								<DAI name="scaleFactor">
									<Val>0.01</Val>
								</DAI>
							</SDI>
						</DOI>
						<DOI name="VRtg" desc="Rated primary voltage">
							<SDI name="setMag">
								<DAI name="f">
									<Val>230.940109</Val>
								</DAI>
							</SDI>
							<SDI name="units">
								<DAI name="SIUnit">
									<Val>V</Val>
								</DAI>
								<DAI name="multiplier">
									<Val>k</Val>
								</DAI>
							</SDI>
							<SDI name="minVal">
								<DAI name="f">
									<Val>0.1</Val>
								</DAI>
							</SDI>
							<SDI name="maxVal">
								<DAI name="f">
									<Val>1200</Val>
								</DAI>
							</SDI>
							<SDI name="stepSize">
								<DAI name="f">
									<Val>0.01</Val>
								</DAI>
							</SDI>
						</DOI>
						<DOI name="HzRtg" desc="Rated frequency">
							<SDI name="setMag">
								<DAI name="f">
									<Val>50</Val>
								</DAI>
							</SDI>
							<SDI name="units">
								<DAI name="SIUnit">
									<Val>Hz</Val>
								</DAI>
							</SDI>
							<SDI name="minVal">
								<DAI name="f">
									<Val>16.67</Val>
								</DAI>
							</SDI>
							<SDI name="maxVal">
								<DAI name="f">
									<Val>60</Val>
								</DAI>
							</SDI>
							<SDI name="stepSize">
								<DAI name="f">
									<Val>0.01</Val>
								</DAI>
							</SDI>
						</DOI>
						<DOI name="Rat" desc="Rat">
							<SDI name="setMag">
								<DAI name="f">
									<Val>2312.13867</Val>
								</DAI>
							</SDI>
							<SDI name="maxVal">
								<DAI name="f">
									<Val>10000</Val>
								</DAI>
							</SDI>
							<SDI name="stepSize">
								<DAI name="f">
									<Val>0.1</Val>
								</DAI>
							</SDI>
						</DOI>
						<DOI name="Cor" desc="Magnitude correction">
							<SDI name="setMag">
								<DAI name="f">
									<Val>1</Val>
								</DAI>
							</SDI>
							<SDI name="minVal">
								<DAI name="f">
									<Val>0.01</Val>
								</DAI>
							</SDI>
							<SDI name="maxVal">
								<DAI name="f">
									<Val>10</Val>
								</DAI>
							</SDI>
							<SDI name="stepSize">
								<DAI name="f">
									<Val>1E-05</Val>
								</DAI>
							</SDI>
						</DOI>
						<DOI name="Clip" desc="Ratio of clipping limit">
							<SDI name="setMag">
								<DAI name="f">
									<Val>3.46410155</Val>
								</DAI>
							</SDI>
							<SDI name="maxVal">
								<DAI name="f">
									<Val>100</Val>
								</DAI>
							</SDI>
							<SDI name="stepSize">
								<DAI name="f">
									<Val>0.01</Val>
								</DAI>
							</SDI>
						</DOI>
						<DOI name="AccMeas" desc="Meas. accuracy class">
							<DAI name="setVal">
								<Val>0.2S</Val>
							</DAI>
						</DOI>
						<DOI name="AccPro" desc="Prot. accuracy class">
							<DAI name="setVal">
								<Val>1</Val>
							</DAI>
						</DOI>
						<DOI name="HoldTmms" desc="Holdover time">
							<DAI name="setVal">
								<Val>5000</Val>
							</DAI>
							<DAI name="minVal">
								<Val>500</Val>
							</DAI>
							<DAI name="maxVal">
								<Val>90000</Val>
							</DAI>
						</DOI>
						<DOI name="NamAccRtg" desc="NamAccRtg">
							<DAI name="val">
								<Val>0,5/3P</Val>
							</DAI>
						</DOI>
						<DOI name="NamVRtg" desc="NamVRtg">
							<DAI name="val">
								<Val>173000</Val>
							</DAI>
						</DOI>
						<DOI name="NamClipRtg" desc="NamClipRtg">
							<DAI name="val">
								<Val>2</Val>
							</DAI>
						</DOI>
					</LN>
					<LN lnClass="SSYM" inst="1" lnType="SIPROTEC5_LNType_SSYM_CurBalSV" desc="Supv. balan. V" prefix="U_">
						<Private type="Siemens-MasterId">93c82f99-0b44-4c14-9556-99839c8b4c47</Private>
						<DOI name="Mod" desc="Mode (controllable)"/>
						<DOI name="Beh" desc="Behavior"/>
						<DOI name="Health" desc="Health"/>
						<DOI name="NamPlt" desc="Name plate">
							<DAI name="configRev">
								<Val>2023-06-08 08:36:18</Val>
							</DAI>
						</DOI>
						<DOI name="Blk" desc="&gt;Block function"/>
						<DOI name="Failure" desc="Failure"/>
					</LN>
					<LN lnClass="SPSQ" inst="1" lnType="SIPROTEC5_LNType_SPSQ_CurPhSeqSV" desc="Supv. ph.seq.V" prefix="U_">
						<Private type="Siemens-MasterId">55dce6e1-6351-48ac-94e0-f6fa135e9a08</Private>
						<DOI name="Mod" desc="Mode (controllable)"/>
						<DOI name="Beh" desc="Behavior"/>
						<DOI name="Health" desc="Health"/>
						<DOI name="NamPlt" desc="Name plate">
							<DAI name="configRev">
								<Val>2023-06-08 08:36:18</Val>
							</DAI>
						</DOI>
						<DOI name="Blk" desc="&gt;Block function"/>
						<DOI name="Inactive" desc="Inactive"/>
						<DOI name="Failure" desc="Failure"/>
					</LN>
					<LN lnClass="SSUM" inst="1" lnType="SIPROTEC5_LNType_SSUM_SlowCurSumSV" desc="Supv. sum V" prefix="U_">
						<Private type="Siemens-MasterId">33b362cd-e247-45ca-8480-63302032a111</Private>
						<DOI name="Mod" desc="Mode (controllable)"/>
						<DOI name="Beh" desc="Behavior"/>
						<DOI name="Health" desc="Health"/>
						<DOI name="NamPlt" desc="Name plate">
							<DAI name="configRev">
								<Val>2023-06-08 08:36:18</Val>
							</DAI>
						</DOI>
						<DOI name="Blk" desc="&gt;Block function"/>
						<DOI name="Failure" desc="Failure"/>
					</LN>
					<LN lnClass="SFFM" inst="1" lnType="SIPROTEC5_LNType_SFFM_SMCB" desc="VT miniatureCB" prefix="VTCB_">
						<Private type="Siemens-MasterId">63dc5d71-e1ff-4e39-8f08-c9d15f480e8e</Private>
						<DOI name="Mod" desc="Mode (controllable)"/>
						<DOI name="Beh" desc="Behavior"/>
						<DOI name="Health" desc="Health"/>
						<DOI name="NamPlt" desc="Name plate">
							<DAI name="configRev">
								<Val>2023-06-08 08:36:18</Val>
							</DAI>
						</DOI>
						<DOI name="VTmcb" desc="&gt;Open"/>
					</LN>
				</LDevice>
				<LDevice desc="Rec" inst="Rec">
					<Private type="Siemens-MasterId">fb145f08-6057-4792-a35c-932e354558c6</Private>
					<LN0 lnClass="LLN0" inst="" lnType="SIEMENS_7UT85_001SIPROTEC5_LNType_LLN0_LDevice_Generic" desc="Rec/LLN0">
						<Private type="Siemens-MasterId">a807f802-4a72-414a-8763-931403b7c5d3</Private>
						<DOI name="Beh" desc="Behavior"/>
						<DOI name="Health" desc="Health"/>
						<DOI name="NamPlt" desc="Name plate">
							<DAI name="configRev">
								<Val>2023-06-08 08:36:18</Val>
							</DAI>
							<DAI name="ldNs">
								<Val>IEC 61850-7-4:2007B</Val>
							</DAI>
						</DOI>
						<DOI name="Mod" desc="Mode (controllable)"/>
						<DOI name="GrRef" desc="GrRef">
							<DAI name="setSrcRef">
								<Val>@Application</Val>
							</DAI>
						</DOI>
					</LN0>
					<LN lnClass="GAPC" inst="1" lnType="SIPROTEC5_LNType_GAPC_DisImpedanceExcitation" desc="General" prefix="RCDG_">
						<Private type="Siemens-MasterId">9aa9e5c4-7506-4285-8497-d8055dbf75b9</Private>
						<DOI name="Mod" desc="Mode (controllable)"/>
						<DOI name="Beh" desc="Behavior"/>
						<DOI name="Health" desc="Health"/>
						<DOI name="NamPlt" desc="Name plate">
							<DAI name="configRev">
								<Val>2023-06-08 08:36:18</Val>
							</DAI>
						</DOI>
					</LN>
					<LN lnClass="GAPC" inst="1" lnType="SIPROTEC5_LNType_GAPC_GroundFaultLog" desc="Grnd.-flt log" prefix="GFLG_">
						<Private type="Siemens-MasterId">bf366848-5d40-411b-8358-8993120ce0d7</Private>
						<DOI name="Mod" desc="Mode (controllable)"/>
						<DOI name="Beh" desc="Behavior"/>
						<DOI name="Health" desc="Health"/>
						<DOI name="NamPlt" desc="Name plate">
							<DAI name="configRev">
								<Val>2023-06-08 08:36:18</Val>
							</DAI>
						</DOI>
						<DOI name="GflNum" desc="Fault number"/>
						<DOI name="GflFull" desc="Ground-fault log is full"/>
					</LN>
				</LDevice>
				<LDevice desc="Rec_FltRec" inst="Rec_FaultRecorder">
					<Private type="Siemens-MasterId">f41888bd-4960-4b1c-ab94-5dd10175dfbe</Private>
					<LN0 lnClass="LLN0" inst="" lnType="SIEMENS_7UT85_001SIPROTEC5_LNType_LLN0_LDevice_Generic" desc="Rec_FaultRecorder/LLN0">
						<Private type="Siemens-MasterId">84d120d9-cdab-44df-b447-b24b9087ac4e</Private>
						<DOI name="Beh" desc="Behavior"/>
						<DOI name="Health" desc="Health"/>
						<DOI name="NamPlt" desc="Name plate">
							<DAI name="configRev">
								<Val>2023-06-08 08:36:18</Val>
							</DAI>
							<DAI name="ldNs">
								<Val>IEC 61850-7-4:2007B</Val>
							</DAI>
						</DOI>
						<DOI name="Mod" desc="Mode (controllable)"/>
						<DOI name="GrRef" desc="GrRef">
							<DAI name="setSrcRef">
								<Val>@Rec</Val>
							</DAI>
						</DOI>
					</LN0>
					<LN lnClass="GAPC" inst="1" lnType="SIPROTEC5_LNType_GAPC_DisImpedanceExcitation" desc="General" prefix="RCDR_">
						<Private type="Siemens-MasterId">19ebeff7-ed06-4e3e-8d61-53adbbb9d5ae</Private>
						<DOI name="Mod" desc="Mode (controllable)"/>
						<DOI name="Beh" desc="Behavior"/>
						<DOI name="Health" desc="Health"/>
						<DOI name="NamPlt" desc="Name plate">
							<DAI name="configRev">
								<Val>2023-06-08 08:36:18</Val>
							</DAI>
						</DOI>
					</LN>
					<LN lnClass="RDRE" inst="1" lnType="SIEMENS_7UT85_001SIPROTEC5_LNType_RDRE_DEF" desc="Control" prefix="DEF_">
						<Private type="Siemens-MasterId">ea757afe-846d-4d2a-ab2f-6b8203940593</Private>
						<DOI name="Mod" desc="Mode (controllable)"/>
						<DOI name="Beh" desc="Behavior"/>
						<DOI name="Health" desc="Health"/>
						<DOI name="NamPlt" desc="Name plate">
							<DAI name="configRev">
								<Val>2023-06-08 08:36:18</Val>
							</DAI>
						</DOI>
						<DOI name="RcdTrg" desc="Start record"/>
						<DOI name="MemRs" desc="Reset memory">
							<DAI name="operTimeout">
								<Val>30000</Val>
							</DAI>
						</DOI>
						<DOI name="MemClr" desc="Clear memory">
							<DAI name="operTimeout">
								<Val>30000</Val>
							</DAI>
						</DOI>
						<DOI name="RcdMade" desc="Record made"/>
						<DOI name="FltNum" desc="Fault number"/>
						<DOI name="RcdStr" desc="Recording started"/>
						<DOI name="StrExt" desc="&gt;External start"/>
						<DOI name="ManTrg" desc="&gt;Manual start"/>
						<DOI name="FltLogFull" desc="Fault log is full"/>
					</LN>
				</LDevice>
				<LDevice desc="VReg" inst="VReg">
					<Private type="Siemens-MasterId">4b0a65c1-cf3f-4ed5-87d8-6c71efa5368b</Private>
					<LN0 lnClass="LLN0" inst="" lnType="SIEMENS_7UT85_001SIPROTEC5_LNType_LLN0_LDevice_Generic" desc="VReg/LLN0">
						<Private type="Siemens-MasterId">b5840379-bc75-4cd7-8567-28f1e7466461</Private>
						<DOI name="Beh" desc="Behavior"/>
						<DOI name="Health" desc="Health"/>
						<DOI name="NamPlt" desc="Name plate">
							<DAI name="configRev">
								<Val>2023-06-08 08:36:18</Val>
							</DAI>
							<DAI name="ldNs">
								<Val>IEC 61850-7-4:2007B</Val>
							</DAI>
						</DOI>
						<DOI name="Mod" desc="Mode (controllable)"/>
						<DOI name="GrRef" desc="GrRef">
							<DAI name="setSrcRef">
								<Val>@Application</Val>
							</DAI>
						</DOI>
					</LN0>
					<LN lnClass="GAPC" inst="1" lnType="SIPROTEC5_LNType_GAPC_DisImpedanceExcitation" desc="General" prefix="">
						<Private type="Siemens-MasterId">d3d5be49-2e6d-47b0-8064-41ae86160dec</Private>
						<DOI name="Mod" desc="Mode (status only)"/>
						<DOI name="Beh" desc="Behavior"/>
						<DOI name="Health" desc="Health"/>
						<DOI name="NamPlt" desc="Name plate">
							<DAI name="configRev">
								<Val>2023-06-08 08:36:18</Val>
							</DAI>
						</DOI>
					</LN>
					<LN lnClass="YLTC" inst="1" lnType="SIPROTEC5_LNType_YLTC_StausOnly" desc="Tap changer" prefix="STON_">
						<Private type="Siemens-MasterId">84709402-4194-4568-a58e-a1df1c77fe4d</Private>
						<DOI name="Mod" desc="Mode (controllable)"/>
						<DOI name="Beh" desc="Behavior"/>
						<DOI name="Health" desc="Health"/>
						<DOI name="NamPlt" desc="Name plate">
							<DAI name="configRev">
								<Val>2023-06-08 08:36:18</Val>
							</DAI>
						</DOI>
						<DOI name="LocKey" desc="Sw.author. key switch"/>
						<DOI name="Loc" desc="Switching auth. local"/>
						<DOI name="EndPosR" desc="End higher pos.reached"/>
						<DOI name="EndPosL" desc="End lower pos.reached"/>
						<DOI name="LocSta" desc="Switching auth. station"/>
						<DOI name="TapChg" desc="Position">
							<DAI name="subEna"/>
							<DAI name="blkEna"/>
							<DAI name="maxVal">
								<Val>19</Val>
							</DAI>
						</DOI>
						<DOI name="OpCnt" desc="Op.ct."/>
						<DOI name="SetOpCnt" desc="Set operation counter">
							<DAI name="maxVal">
								<Val>999999999</Val>
							</DAI>
						</DOI>
						<DOI name="TapErrRs" desc="Reset failure"/>
						<DOI name="SetMotSupT" desc="Motor supervision time"/>
						<DOI name="Enable" desc="&gt;Enable"/>
						<DOI name="AqBlk" desc="&gt;Acquisition blocking"/>
						<DOI name="HigCmd" desc="Higher command"/>
						<DOI name="LowCmd" desc="Lower command"/>
						<DOI name="CmdActv" desc="Command active"/>
						<DOI name="MotDrv" desc="Motor sup. time expired"/>
						<DOI name="TapPosErr" desc="Position failure"/>
						<DOI name="TapPos" desc="TapPos">
							<DAI name="dataNs">
								<Val>Transpower:2023</Val>
							</DAI>
						</DOI>
						<DOI name="TapRaise" desc="Tap Raise">
							<DAI name="dataNs">
								<Val>Transpower:2023</Val>
							</DAI>
						</DOI>
						<DOI name="TapLower" desc="Tap Lower">
							<DAI name="dataNs">
								<Val>Transpower:2023</Val>
							</DAI>
						</DOI>
						<Inputs>
							<ExtRef desc="TapPos" intAddr="TapPos;/AnIn/mag.f" pServT="GOOSE" pDO="AnIn" pDA="mag.f"/>
							<ExtRef desc="TapPos" intAddr="TapPos;/AnIn/q" pServT="GOOSE" pDO="AnIn" pDA="q"/>
							<ExtRef desc="TapPos" intAddr="TapPos;/AnIn/t" pServT="GOOSE" pDO="AnIn" pDA="t"/>
						</Inputs>
					</LN>
					<LN lnClass="ATCC" inst="1" lnType="SIPROTEC5_LNType_ATCC" desc="AVR" prefix="">
						<Private type="Siemens-MasterId">b91e8ee0-7ed9-4417-818a-068e3397fd15</Private>
						<DOI name="Mod" desc="Mode (controllable)"/>
						<DOI name="Beh" desc="Behavior"/>
						<DOI name="Health" desc="Health"/>
						<DOI name="NamPlt" desc="Name plate">
							<DAI name="configRev">
								<Val>2023-06-08 08:36:18</Val>
							</DAI>
						</DOI>
						<DOI name="Loc" desc="Switching auth. local"/>
						<DOI name="LocKey" desc="Sw.author. key switch"/>
						<DOI name="LTCBlkVLo" desc="V&lt; Blocking"/>
						<DOI name="LTCBlkAHi" desc="I&gt; Blocking"/>
						<DOI name="EndPosR" desc="End Higher pos. Auto"/>
						<DOI name="EndPosL" desc="End Lower pos. Auto"/>
						<DOI name="CtlV" desc="V act.">
							<SDI name="units">
								<DAI name="SIUnit">
									<Val>V</Val>
								</DAI>
								<DAI name="multiplier">
									<Val>k</Val>
								</DAI>
							</SDI>
							<DAI name="db">
								<Val>2000</Val>
							</DAI>
							<DAI name="dbRef">
								<Val>33</Val>
							</DAI>
						</DOI>
						<DOI name="LodA" desc="I load">
							<SDI name="units">
								<DAI name="SIUnit">
									<Val>A</Val>
								</DAI>
							</SDI>
							<DAI name="db">
								<Val>10000</Val>
							</DAI>
							<DAI name="dbRef">
								<Val>2099.45557</Val>
							</DAI>
						</DOI>
						<DOI name="PhAng" desc="PhAng">
							<DAI name="db">
								<Val>333</Val>
							</DAI>
						</DOI>
						<DOI name="CircA" desc="I circul.">
							<SDI name="units">
								<DAI name="SIUnit">
									<Val>A</Val>
								</DAI>
							</SDI>
							<DAI name="db">
								<Val>10</Val>
							</DAI>
							<DAI name="dbRef">
								<Val>2099.45557</Val>
							</DAI>
						</DOI>
						<DOI name="HiCtlV" desc="V max">
							<SDI name="units">
								<DAI name="SIUnit">
									<Val>V</Val>
								</DAI>
								<DAI name="multiplier">
									<Val>k</Val>
								</DAI>
							</SDI>
						</DOI>
						<DOI name="LoCtlV" desc="V min">
							<SDI name="units">
								<DAI name="SIUnit">
									<Val>V</Val>
								</DAI>
								<DAI name="multiplier">
									<Val>k</Val>
								</DAI>
							</SDI>
						</DOI>
						<DOI name="TapChg" desc="Cmd. with feedback">
							<DAI name="subEna"/>
							<DAI name="blkEna"/>
							<DAI name="ctlModel">
								<Val>direct-with-enhanced-security</Val>
							</DAI>
							<DAI name="operTimeout">
								<Val>10000</Val>
							</DAI>
						</DOI>
						<DOI name="ParOp" desc="Parallel operation"/>
						<DOI name="LTCBlk" desc="Block auto"/>
						<DOI name="Auto" desc="Operating mode"/>
						<DOI name="ResetMiMa" desc="&gt;Reset min./max."/>
						<DOI name="CtlVAvg" desc="Vact.m">
							<SDI name="units">
								<DAI name="SIUnit">
									<Val>V</Val>
								</DAI>
								<DAI name="multiplier">
									<Val>k</Val>
								</DAI>
							</SDI>
							<DAI name="db">
								<Val>2000</Val>
							</DAI>
							<DAI name="dbRef">
								<Val>33</Val>
							</DAI>
						</DOI>
						<DOI name="CtlD" desc="ΔV act.">
							<DAI name="db">
								<Val>2000</Val>
							</DAI>
						</DOI>
						<DOI name="CtlDV" desc="ΔV act V">
							<DAI name="db">
								<Val>2000</Val>
							</DAI>
						</DOI>
						<DOI name="CtlDCC" desc="ΔV act C">
							<DAI name="db">
								<Val>2000</Val>
							</DAI>
						</DOI>
						<DOI name="LodSumA" desc="I load Σ">
							<SDI name="units">
								<DAI name="SIUnit">
									<Val>A</Val>
								</DAI>
							</SDI>
							<DAI name="db">
								<Val>10000</Val>
							</DAI>
							<DAI name="dbRef">
								<Val>2099.45557</Val>
							</DAI>
						</DOI>
						<DOI name="BndExc" desc="Bandwidth &gt;"/>
						<DOI name="BndBelow" desc="Bandwidth &lt;"/>
						<DOI name="RnbkL" desc="Fast Step Up active"/>
						<DOI name="RnbkR" desc="Fast Step Down active"/>
						<DOI name="AMonitor" desc="Auto Monitor"/>
						<DOI name="AutoInactive" desc="Auto inactive"/>
						<DOI name="BlkVMin" desc="Vmin Limiting"/>
						<DOI name="BlkVMax" desc="Vmax Limiting"/>
						<DOI name="AutoBlk" desc="Auto Blocking"/>
						<DOI name="ManBlk" desc="Manual Blocking"/>
						<DOI name="LTCBlkALo" desc="I&lt; Blocking"/>
						<DOI name="VTSup" desc="VT supervision"/>
						<DOI name="CircABlk" desc="Circul. current blocking"/>
						<DOI name="BndCtlAct" desc="V target">
							<SDI name="units">
								<DAI name="SIUnit">
									<Val>V</Val>
								</DAI>
								<DAI name="multiplier">
									<Val>k</Val>
								</DAI>
							</SDI>
							<DAI name="db">
								<Val>2000</Val>
							</DAI>
							<DAI name="dbRef">
								<Val>33</Val>
							</DAI>
						</DOI>
						<DOI name="ErrNoMast" desc="No. of master is not 1"/>
						<DOI name="AutoBlkLoc" desc="Automatic block. local"/>
						<DOI name="ParTrfBeh" desc="Local parallel mode"/>
						<DOI name="ParTrfId" desc="Local para. transf. id"/>
						<DOI name="ParTrfErrL" desc="Cause of par.op. error"/>
						<DOI name="ParTrfErr" desc="Parallel-operation error"/>
						<DOI name="InvX" desc="1/X trf.">
							<DAI name="db">
								<Val>2000</Val>
							</DAI>
						</DOI>
						<DOI name="RstCtlVMax" desc="Reset seq. voltage"/>
						<DOI name="RstCtlVMin" desc="Reset seq. voltage"/>
						<DOI name="BndCtrEn1" desc="Target voltage 1"/>
						<DOI name="BndCtrEn2" desc="Target voltage 2"/>
						<DOI name="BndCtrEn3" desc="Target voltage 3"/>
						<DOI name="BndCtrEn4" desc="Target voltage 4"/>
						<DOI name="SetBndCtr" desc="Set target voltage">
							<SDI name="SBOw">
								<SDI name="ctlVal">
									<DAI name="f"/>
								</SDI>
							</SDI>
							<SDI name="Oper">
								<SDI name="ctlVal">
									<DAI name="f"/>
								</SDI>
							</SDI>
							<SDI name="Cancel">
								<SDI name="ctlVal">
									<DAI name="f"/>
								</SDI>
							</SDI>
						</DOI>
						<DOI name="SetBndWid" desc="Set bandwidth">
							<SDI name="units">
								<DAI name="SIUnit">
									<Val>%</Val>
								</DAI>
							</SDI>
							<SDI name="minVal">
								<DAI name="f">
									<Val>0.2</Val>
								</DAI>
							</SDI>
							<SDI name="SBOw">
								<SDI name="ctlVal">
									<DAI name="f"/>
								</SDI>
							</SDI>
							<SDI name="Oper">
								<SDI name="ctlVal">
									<DAI name="f"/>
								</SDI>
							</SDI>
							<SDI name="Cancel">
								<SDI name="ctlVal">
									<DAI name="f"/>
								</SDI>
							</SDI>
						</DOI>
						<DOI name="BlkT1" desc="Block T1"/>
						<DOI name="ParGrp" desc="Parallel group">
							<DAI name="minVal">
								<Val>1</Val>
							</DAI>
							<DAI name="maxVal">
								<Val>4</Val>
							</DAI>
						</DOI>
						<DOI name="ForceMast" desc="Force master "/>
					</LN>
				</LDevice>
				<LDevice desc="VReg_90V Parallel operation" inst="VReg_90VParallelOperation">
					<Private type="Siemens-MasterId">14b6635e-9e0a-4a32-8e31-8db2912e2153</Private>
					<LN0 lnClass="LLN0" inst="" lnType="SIEMENS_7UT85_001SIPROTEC5_LNType_LLN0_LDevice_Generic" desc="VReg_90VParallelOperation/LLN0">
						<Private type="Siemens-MasterId">03418878-40b1-44c4-8c81-fb65b93e90ec</Private>
						<DOI name="Beh" desc="Behavior"/>
						<DOI name="Health" desc="Health"/>
						<DOI name="NamPlt" desc="Name plate">
							<DAI name="configRev">
								<Val>2023-06-08 08:36:18</Val>
							</DAI>
							<DAI name="ldNs">
								<Val>IEC 61850-7-4:2007B</Val>
							</DAI>
						</DOI>
						<DOI name="Mod" desc="Mode (controllable)"/>
						<DOI name="GrRef" desc="GrRef">
							<DAI name="setSrcRef">
								<Val>@VReg</Val>
							</DAI>
						</DOI>
					</LN0>
					<LN lnClass="ATCC" inst="1" lnType="SIPROTEC5_LNType_ATCC_Parallel_Goose_Proxy" desc="ParallelProxy1" prefix="Proxy">
						<Private type="Siemens-MasterId">3a8888a4-7843-4d46-95e2-013273e18406</Private>
						<DOI name="Mod" desc="Mode (controllable)"/>
						<DOI name="Blk" desc="&gt;Block"/>
						<DOI name="Auto" desc="Operating mode">
							<DAI name="ctlModel">
								<Val>status-only</Val>
							</DAI>
						</DOI>
						<DOI name="ParOp" desc="Parallel operation">
							<DAI name="ctlModel">
								<Val>status-only</Val>
							</DAI>
						</DOI>
						<DOI name="TapChg" desc="Cmd. with feedback">
							<DAI name="subEna"/>
							<DAI name="blkEna"/>
							<DAI name="operTimeout">
								<Val>10000</Val>
							</DAI>
						</DOI>
						<DOI name="CtlV" desc="V act.">
							<SDI name="units">
								<DAI name="SIUnit">
									<Val>V</Val>
								</DAI>
							</SDI>
						</DOI>
						<DOI name="LodA" desc="I load">
							<SDI name="units">
								<DAI name="SIUnit">
									<Val>A</Val>
								</DAI>
							</SDI>
						</DOI>
						<DOI name="PhAng" desc="PhAng">
							<SDI name="units">
								<DAI name="SIUnit">
									<Val>deg</Val>
								</DAI>
							</SDI>
						</DOI>
						<DOI name="Beh" desc="Behavior"/>
						<DOI name="Health" desc="Health"/>
						<DOI name="NamPlt" desc="Name plate">
							<DAI name="configRev">
								<Val>2023-06-08 08:36:18</Val>
							</DAI>
						</DOI>
						<DOI name="RHealth" desc="Remote Health"/>
						<DOI name="ParGrp" desc="Parallel group">
							<DAI name="minVal">
								<Val>1</Val>
							</DAI>
							<DAI name="maxVal">
								<Val>4</Val>
							</DAI>
						</DOI>
						<DOI name="PTrfBeh" desc="Remote parallel mode"/>
						<DOI name="PTrfId" desc="Remote para. transf. id"/>
						<DOI name="IncParGrp" desc="Parallel mode active"/>
						<DOI name="PaAutoBlk" desc="Parallel Auto Blocking"/>
						<DOI name="ErrTapDif" desc="Error tap difference"/>
						<DOI name="RxRHealth1" desc="RxRHealth1">
							<DAI name="dataNs">
								<Val>SIPROTEC5/userdefined</Val>
							</DAI>
						</DOI>
						<DOI name="RxBlk1" desc="RxBlk1">
							<DAI name="dataNs">
								<Val>SIPROTEC5/userdefined</Val>
							</DAI>
						</DOI>
						<DOI name="RxAuto1" desc="RxAuto1">
							<DAI name="dataNs">
								<Val>SIPROTEC5/userdefined</Val>
							</DAI>
						</DOI>
						<DOI name="RxParOp1" desc="RxParOp1">
							<DAI name="dataNs">
								<Val>SIPROTEC5/userdefined</Val>
							</DAI>
						</DOI>
						<DOI name="RxParGrp1" desc="RxParGrp1">
							<DAI name="dataNs">
								<Val>SIPROTEC5/userdefined</Val>
							</DAI>
						</DOI>
						<DOI name="RxPTrfBeh1" desc="RxPTrfBeh1">
							<DAI name="dataNs">
								<Val>SIPROTEC5/userdefined</Val>
							</DAI>
						</DOI>
						<DOI name="RxTapChg1" desc="RxTapChg1">
							<DAI name="dataNs">
								<Val>SIPROTEC5/userdefined</Val>
							</DAI>
						</DOI>
						<DOI name="RxPTrfId1" desc="RxPTrfId1">
							<DAI name="dataNs">
								<Val>SIPROTEC5/userdefined</Val>
							</DAI>
						</DOI>
						<DOI name="RxCtlV1" desc="RxCtlV1">
							<DAI name="dataNs">
								<Val>SIPROTEC5/userdefined</Val>
							</DAI>
						</DOI>
						<DOI name="RxInvX1" desc="RxInvX1">
							<DAI name="dataNs">
								<Val>SIPROTEC5/userdefined</Val>
							</DAI>
						</DOI>
						<DOI name="RxLodA1" desc="RxLodA1">
							<DAI name="dataNs">
								<Val>SIPROTEC5/userdefined</Val>
							</DAI>
						</DOI>
						<DOI name="RxPhAng1" desc="RxPhAng1">
							<DAI name="dataNs">
								<Val>SIPROTEC5/userdefined</Val>
							</DAI>
						</DOI>
						<Inputs>
							<ExtRef desc="RxRHealth1" intAddr="RxRHealth1;ATCC/Health/stVal" pServT="GOOSE" pLN="ATCC" pDO="Health" pDA="stVal"/>
							<ExtRef desc="RxRHealth1" intAddr="RxRHealth1;ATCC/Health/q" pServT="GOOSE" pLN="ATCC" pDO="Health" pDA="q"/>
							<ExtRef desc="RxBlk1" intAddr="RxBlk1;/Blk/stVal" pServT="GOOSE" pDO="Blk" pDA="stVal"/>
							<ExtRef desc="RxBlk1" intAddr="RxBlk1;/Blk/q" pServT="GOOSE" pDO="Blk" pDA="q"/>
							<ExtRef desc="RxAuto1" intAddr="RxAuto1;ATCC/Auto/stVal" pServT="GOOSE" pLN="ATCC" pDO="Auto" pDA="stVal"/>
							<ExtRef desc="RxAuto1" intAddr="RxAuto1;ATCC/Auto/q" pServT="GOOSE" pLN="ATCC" pDO="Auto" pDA="q"/>
							<ExtRef desc="RxParOp1" intAddr="RxParOp1;ATCC/ParOp/stVal" pServT="GOOSE" pLN="ATCC" pDO="ParOp" pDA="stVal"/>
							<ExtRef desc="RxParOp1" intAddr="RxParOp1;ATCC/ParOp/q" pServT="GOOSE" pLN="ATCC" pDO="ParOp" pDA="q"/>
							<ExtRef desc="RxParGrp1" intAddr="RxParGrp1;/ISCSO/stVal" pServT="GOOSE" pDO="ISCSO" pDA="stVal"/>
							<ExtRef desc="RxParGrp1" intAddr="RxParGrp1;/ISCSO/q" pServT="GOOSE" pDO="ISCSO" pDA="q"/>
							<ExtRef desc="RxPTrfBeh1" intAddr="RxPTrfBeh1;/IntIn/stVal" pServT="GOOSE" pDO="IntIn" pDA="stVal"/>
							<ExtRef desc="RxPTrfBeh1" intAddr="RxPTrfBeh1;/IntIn/q" pServT="GOOSE" pDO="IntIn" pDA="q"/>
							<ExtRef desc="RxTapChg1" intAddr="RxTapChg1;ATCC/TapChg/valWTr.posVal" pServT="GOOSE" pLN="ATCC" pDO="TapChg" pDA="valWTr.posVal"/>
							<ExtRef desc="RxTapChg1" intAddr="RxTapChg1;ATCC/TapChg/valWTr.transInd" pServT="GOOSE" pLN="ATCC" pDO="TapChg" pDA="valWTr.transInd"/>
							<ExtRef desc="RxTapChg1" intAddr="RxTapChg1;ATCC/TapChg/q" pServT="GOOSE" pLN="ATCC" pDO="TapChg" pDA="q"/>
							<ExtRef desc="RxPTrfId1" intAddr="RxPTrfId1;/IntIn/stVal" pServT="GOOSE" pDO="IntIn" pDA="stVal"/>
							<ExtRef desc="RxPTrfId1" intAddr="RxPTrfId1;/IntIn/q" pServT="GOOSE" pDO="IntIn" pDA="q"/>
							<ExtRef desc="RxCtlV1" intAddr="RxCtlV1;ATCC/CtlV/mag.f" pServT="GOOSE" pLN="ATCC" pDO="CtlV" pDA="mag.f"/>
							<ExtRef desc="RxCtlV1" intAddr="RxCtlV1;ATCC/CtlV/q" pServT="GOOSE" pLN="ATCC" pDO="CtlV" pDA="q"/>
							<ExtRef desc="RxInvX1" intAddr="RxInvX1;/AnIn/mag.f" pServT="GOOSE" pDO="AnIn" pDA="mag.f"/>
							<ExtRef desc="RxInvX1" intAddr="RxInvX1;/AnIn/q" pServT="GOOSE" pDO="AnIn" pDA="q"/>
							<ExtRef desc="RxLodA1" intAddr="RxLodA1;ATCC/LodA/mag.f" pServT="GOOSE" pLN="ATCC" pDO="LodA" pDA="mag.f"/>
							<ExtRef desc="RxLodA1" intAddr="RxLodA1;ATCC/LodA/q" pServT="GOOSE" pLN="ATCC" pDO="LodA" pDA="q"/>
							<ExtRef desc="RxPhAng1" intAddr="RxPhAng1;ATCC/PhAng/mag.f" pServT="GOOSE" pLN="ATCC" pDO="PhAng" pDA="mag.f"/>
							<ExtRef desc="RxPhAng1" intAddr="RxPhAng1;ATCC/PhAng/q" pServT="GOOSE" pLN="ATCC" pDO="PhAng" pDA="q"/>
							<ExtRef desc="RxRHealth1" intAddr="RxRHealth1;ATCC/Health/stVal" pServT="GOOSE" pLN="ATCC" pDO="Health" pDA="stVal"/>
							<ExtRef desc="RxRHealth1" intAddr="RxRHealth1;ATCC/Health/q" pServT="GOOSE" pLN="ATCC" pDO="Health" pDA="q"/>
							<ExtRef desc="RxBlk1" intAddr="RxBlk1;/Blk/stVal" pServT="GOOSE" pDO="Blk" pDA="stVal"/>
							<ExtRef desc="RxBlk1" intAddr="RxBlk1;/Blk/q" pServT="GOOSE" pDO="Blk" pDA="q"/>
							<ExtRef desc="RxAuto1" intAddr="RxAuto1;ATCC/Auto/stVal" pServT="GOOSE" pLN="ATCC" pDO="Auto" pDA="stVal"/>
							<ExtRef desc="RxAuto1" intAddr="RxAuto1;ATCC/Auto/q" pServT="GOOSE" pLN="ATCC" pDO="Auto" pDA="q"/>
							<ExtRef desc="RxParOp1" intAddr="RxParOp1;ATCC/ParOp/stVal" pServT="GOOSE" pLN="ATCC" pDO="ParOp" pDA="stVal"/>
							<ExtRef desc="RxParOp1" intAddr="RxParOp1;ATCC/ParOp/q" pServT="GOOSE" pLN="ATCC" pDO="ParOp" pDA="q"/>
							<ExtRef desc="RxParGrp1" intAddr="RxParGrp1;/ISCSO/stVal" pServT="GOOSE" pDO="ISCSO" pDA="stVal"/>
							<ExtRef desc="RxParGrp1" intAddr="RxParGrp1;/ISCSO/q" pServT="GOOSE" pDO="ISCSO" pDA="q"/>
							<ExtRef desc="RxPTrfBeh1" intAddr="RxPTrfBeh1;/IntIn/stVal" pServT="GOOSE" pDO="IntIn" pDA="stVal"/>
							<ExtRef desc="RxPTrfBeh1" intAddr="RxPTrfBeh1;/IntIn/q" pServT="GOOSE" pDO="IntIn" pDA="q"/>
							<ExtRef desc="RxTapChg1" intAddr="RxTapChg1;ATCC/TapChg/valWTr.posVal" pServT="GOOSE" pLN="ATCC" pDO="TapChg" pDA="valWTr.posVal"/>
							<ExtRef desc="RxTapChg1" intAddr="RxTapChg1;ATCC/TapChg/valWTr.transInd" pServT="GOOSE" pLN="ATCC" pDO="TapChg" pDA="valWTr.transInd"/>
							<ExtRef desc="RxTapChg1" intAddr="RxTapChg1;ATCC/TapChg/q" pServT="GOOSE" pLN="ATCC" pDO="TapChg" pDA="q"/>
							<ExtRef desc="RxPTrfId1" intAddr="RxPTrfId1;/IntIn/stVal" pServT="GOOSE" pDO="IntIn" pDA="stVal"/>
							<ExtRef desc="RxPTrfId1" intAddr="RxPTrfId1;/IntIn/q" pServT="GOOSE" pDO="IntIn" pDA="q"/>
							<ExtRef desc="RxCtlV1" intAddr="RxCtlV1;ATCC/CtlV/mag.f" pServT="GOOSE" pLN="ATCC" pDO="CtlV" pDA="mag.f"/>
							<ExtRef desc="RxCtlV1" intAddr="RxCtlV1;ATCC/CtlV/q" pServT="GOOSE" pLN="ATCC" pDO="CtlV" pDA="q"/>
							<ExtRef desc="RxInvX1" intAddr="RxInvX1;/AnIn/mag.f" pServT="GOOSE" pDO="AnIn" pDA="mag.f"/>
							<ExtRef desc="RxInvX1" intAddr="RxInvX1;/AnIn/q" pServT="GOOSE" pDO="AnIn" pDA="q"/>
							<ExtRef desc="RxLodA1" intAddr="RxLodA1;ATCC/LodA/mag.f" pServT="GOOSE" pLN="ATCC" pDO="LodA" pDA="mag.f"/>
							<ExtRef desc="RxLodA1" intAddr="RxLodA1;ATCC/LodA/q" pServT="GOOSE" pLN="ATCC" pDO="LodA" pDA="q"/>
							<ExtRef desc="RxPhAng1" intAddr="RxPhAng1;ATCC/PhAng/mag.f" pServT="GOOSE" pLN="ATCC" pDO="PhAng" pDA="mag.f"/>
							<ExtRef desc="RxPhAng1" intAddr="RxPhAng1;ATCC/PhAng/q" pServT="GOOSE" pLN="ATCC" pDO="PhAng" pDA="q"/>
						</Inputs>
					</LN>
				</LDevice>
				<LDevice desc="VReg_FdOMV" inst="VReg_Fundamental">
					<Private type="Siemens-MasterId">1d03e1f1-98ab-4f80-97e2-0f641e436fbc</Private>
					<LN0 lnClass="LLN0" inst="" lnType="SIEMENS_7UT85_001SIPROTEC5_LNType_LLN0_LDevice_Generic" desc="VReg_Fundamental/LLN0">
						<Private type="Siemens-MasterId">1b16c040-f61d-4616-8840-dd818f6c6f9e</Private>
						<DOI name="Beh" desc="Behavior"/>
						<DOI name="Health" desc="Health"/>
						<DOI name="NamPlt" desc="Name plate">
							<DAI name="configRev">
								<Val>2023-06-08 08:36:18</Val>
							</DAI>
							<DAI name="ldNs">
								<Val>IEC 61850-7-4:2007B</Val>
							</DAI>
						</DOI>
						<DOI name="Mod" desc="Mode (controllable)"/>
						<DOI name="GrRef" desc="GrRef">
							<DAI name="setSrcRef">
								<Val>@VReg</Val>
							</DAI>
						</DOI>
					</LN0>
					<LN lnClass="MMXU" inst="1" lnType="SIPROTEC5_LNType_MMXU_OpMeas_Fund_3ph_Pres" desc="Fundam" prefix="FPRE_">
						<Private type="Siemens-MasterId">42778684-e11f-4ab8-8be3-ee2c4a40a991</Private>
						<DOI name="Mod" desc="Mode (controllable)"/>
						<DOI name="Beh" desc="Behavior"/>
						<DOI name="Health" desc="Health"/>
						<DOI name="NamPlt" desc="Name plate">
							<DAI name="configRev">
								<Val>2023-06-08 08:36:18</Val>
							</DAI>
						</DOI>
						<DOI name="PPV" desc="Vpp">
							<SDI name="phsAB" desc="Vpp:AB">
								<SDI name="units">
									<DAI name="SIUnit">
										<Val>V</Val>
									</DAI>
									<DAI name="multiplier">
										<Val>k</Val>
									</DAI>
								</SDI>
								<DAI name="db">
									<Val>2000</Val>
								</DAI>
								<DAI name="dbRef">
									<Val>33</Val>
								</DAI>
							</SDI>
							<SDI name="phsBC" desc="Vpp:BC">
								<SDI name="units">
									<DAI name="SIUnit">
										<Val>V</Val>
									</DAI>
									<DAI name="multiplier">
										<Val>k</Val>
									</DAI>
								</SDI>
								<DAI name="db">
									<Val>2000</Val>
								</DAI>
								<DAI name="dbRef">
									<Val>33</Val>
								</DAI>
							</SDI>
							<SDI name="phsCA" desc="Vpp:CA">
								<SDI name="units">
									<DAI name="SIUnit">
										<Val>V</Val>
									</DAI>
									<DAI name="multiplier">
										<Val>k</Val>
									</DAI>
								</SDI>
								<DAI name="db">
									<Val>2000</Val>
								</DAI>
								<DAI name="dbRef">
									<Val>33</Val>
								</DAI>
							</SDI>
						</DOI>
						<DOI name="PhV" desc="Vph">
							<SDI name="phsA" desc="Vph:A">
								<SDI name="units">
									<DAI name="SIUnit">
										<Val>V</Val>
									</DAI>
									<DAI name="multiplier">
										<Val>k</Val>
									</DAI>
								</SDI>
								<DAI name="db">
									<Val>2000</Val>
								</DAI>
								<DAI name="dbRef">
									<Val>19.0531178</Val>
								</DAI>
							</SDI>
							<SDI name="phsB" desc="Vph:B">
								<SDI name="units">
									<DAI name="SIUnit">
										<Val>V</Val>
									</DAI>
									<DAI name="multiplier">
										<Val>k</Val>
									</DAI>
								</SDI>
								<DAI name="db">
									<Val>2000</Val>
								</DAI>
								<DAI name="dbRef">
									<Val>19.0531178</Val>
								</DAI>
							</SDI>
							<SDI name="phsC" desc="Vph:C">
								<SDI name="units">
									<DAI name="SIUnit">
										<Val>V</Val>
									</DAI>
									<DAI name="multiplier">
										<Val>k</Val>
									</DAI>
								</SDI>
								<DAI name="db">
									<Val>2000</Val>
								</DAI>
								<DAI name="dbRef">
									<Val>19.0531178</Val>
								</DAI>
							</SDI>
							<SDI name="res" desc="Vph:res">
								<SDI name="units">
									<DAI name="SIUnit">
										<Val>V</Val>
									</DAI>
								</SDI>
								<DAI name="db">
									<Val>20000</Val>
								</DAI>
								<DAI name="dbRef">
									<Val>19.0531178</Val>
								</DAI>
							</SDI>
						</DOI>
						<DOI name="A" desc="Iph">
							<SDI name="phsA" desc="Iph:A">
								<SDI name="units">
									<DAI name="SIUnit">
										<Val>A</Val>
									</DAI>
								</SDI>
								<DAI name="db">
									<Val>10000</Val>
								</DAI>
								<DAI name="dbRef">
									<Val>2099.45557</Val>
								</DAI>
							</SDI>
							<SDI name="phsB" desc="Iph:B">
								<SDI name="units">
									<DAI name="SIUnit">
										<Val>A</Val>
									</DAI>
								</SDI>
								<DAI name="db">
									<Val>10000</Val>
								</DAI>
								<DAI name="dbRef">
									<Val>2099.45557</Val>
								</DAI>
							</SDI>
							<SDI name="phsC" desc="Iph:C">
								<SDI name="units">
									<DAI name="SIUnit">
										<Val>A</Val>
									</DAI>
								</SDI>
								<DAI name="db">
									<Val>10000</Val>
								</DAI>
								<DAI name="dbRef">
									<Val>2099.45557</Val>
								</DAI>
							</SDI>
							<SDI name="res" desc="Iph:res">
								<SDI name="units">
									<DAI name="SIUnit">
										<Val>A</Val>
									</DAI>
								</SDI>
								<DAI name="db">
									<Val>100000</Val>
								</DAI>
								<DAI name="dbRef">
									<Val>2099.45557</Val>
								</DAI>
							</SDI>
						</DOI>
						<DOI name="VneutC" desc="VN">
							<SDI name="units">
								<DAI name="SIUnit">
									<Val>V</Val>
								</DAI>
								<DAI name="multiplier">
									<Val>k</Val>
								</DAI>
							</SDI>
							<DAI name="db">
								<Val>2000</Val>
							</DAI>
							<DAI name="dbRef">
								<Val>19.0531178</Val>
							</DAI>
						</DOI>
						<DOI name="AneutC" desc="IN">
							<SDI name="units">
								<DAI name="SIUnit">
									<Val>A</Val>
								</DAI>
							</SDI>
							<DAI name="db">
								<Val>10000</Val>
							</DAI>
							<DAI name="dbRef">
								<Val>2099.45557</Val>
							</DAI>
						</DOI>
					</LN>
				</LDevice>
				<LDevice desc="VReg_Power values" inst="VReg_PowerValues">
					<Private type="Siemens-MasterId">8d1ece6e-596e-4958-827d-bee3e39c5dde</Private>
					<LN0 lnClass="LLN0" inst="" lnType="SIEMENS_7UT85_001SIPROTEC5_LNType_LLN0_LDevice_Generic" desc="VReg_PowerValues/LLN0">
						<Private type="Siemens-MasterId">17c9f72b-f1ee-4493-83ce-ce4cc9de6fce</Private>
						<DOI name="Beh" desc="Behavior"/>
						<DOI name="Health" desc="Health"/>
						<DOI name="NamPlt" desc="Name plate">
							<DAI name="configRev">
								<Val>2023-06-08 08:36:18</Val>
							</DAI>
							<DAI name="ldNs">
								<Val>IEC 61850-7-4:2007B</Val>
							</DAI>
						</DOI>
						<DOI name="Mod" desc="Mode (controllable)"/>
						<DOI name="GrRef" desc="GrRef">
							<DAI name="setSrcRef">
								<Val>@VReg</Val>
							</DAI>
						</DOI>
					</LN0>
					<LN lnClass="MMXU" inst="1" lnType="SIPROTEC5_LNType_MMXU_OpMeas_Power_3ph_Pres" desc="Power" prefix="PPRE_">
						<Private type="Siemens-MasterId">b41f9f42-9654-4238-88fd-1c243cb2829c</Private>
						<DOI name="Mod" desc="Mode (controllable)"/>
						<DOI name="Beh" desc="Behavior"/>
						<DOI name="Health" desc="Health"/>
						<DOI name="NamPlt" desc="Name plate">
							<DAI name="configRev">
								<Val>2023-06-08 08:36:18</Val>
							</DAI>
						</DOI>
						<DOI name="TotW" desc="P tot">
							<SDI name="units">
								<DAI name="SIUnit">
									<Val>W</Val>
								</DAI>
								<DAI name="multiplier">
									<Val>M</Val>
								</DAI>
							</SDI>
							<DAI name="db">
								<Val>10000</Val>
							</DAI>
							<DAI name="dbRef">
								<Val>120</Val>
							</DAI>
						</DOI>
						<DOI name="TotVAr" desc="Q tot">
							<SDI name="units">
								<DAI name="SIUnit">
									<Val>VAr</Val>
								</DAI>
								<DAI name="multiplier">
									<Val>M</Val>
								</DAI>
							</SDI>
							<DAI name="db">
								<Val>10000</Val>
							</DAI>
							<DAI name="dbRef">
								<Val>120</Val>
							</DAI>
						</DOI>
						<DOI name="TotVA" desc="S tot">
							<SDI name="units">
								<DAI name="SIUnit">
									<Val>VA</Val>
								</DAI>
								<DAI name="multiplier">
									<Val>M</Val>
								</DAI>
							</SDI>
							<DAI name="db">
								<Val>10000</Val>
							</DAI>
							<DAI name="dbRef">
								<Val>120</Val>
							</DAI>
						</DOI>
						<DOI name="TotPF" desc="cos φ">
							<SDI name="units">
								<DAI name="SIUnit">
									<Val>cos(phi)</Val>
								</DAI>
							</SDI>
							<DAI name="db">
								<Val>10000</Val>
							</DAI>
						</DOI>
						<DOI name="Hz" desc="f">
							<SDI name="units">
								<DAI name="SIUnit">
									<Val>Hz</Val>
								</DAI>
							</SDI>
							<DAI name="db">
								<Val>100</Val>
							</DAI>
							<DAI name="dbRef">
								<Val>50</Val>
							</DAI>
						</DOI>
						<DOI name="W" desc="P">
							<SDI name="phsA" desc="P:A">
								<SDI name="units">
									<DAI name="SIUnit">
										<Val>W</Val>
									</DAI>
									<DAI name="multiplier">
										<Val>M</Val>
									</DAI>
								</SDI>
								<DAI name="db">
									<Val>10000</Val>
								</DAI>
								<DAI name="dbRef">
									<Val>40</Val>
								</DAI>
							</SDI>
							<SDI name="phsB" desc="P:B">
								<SDI name="units">
									<DAI name="SIUnit">
										<Val>W</Val>
									</DAI>
									<DAI name="multiplier">
										<Val>M</Val>
									</DAI>
								</SDI>
								<DAI name="db">
									<Val>10000</Val>
								</DAI>
								<DAI name="dbRef">
									<Val>40</Val>
								</DAI>
							</SDI>
							<SDI name="phsC" desc="P:C">
								<SDI name="units">
									<DAI name="SIUnit">
										<Val>W</Val>
									</DAI>
									<DAI name="multiplier">
										<Val>M</Val>
									</DAI>
								</SDI>
								<DAI name="db">
									<Val>10000</Val>
								</DAI>
								<DAI name="dbRef">
									<Val>40</Val>
								</DAI>
							</SDI>
						</DOI>
						<DOI name="VAr" desc="Q">
							<SDI name="phsA" desc="Q:A">
								<SDI name="units">
									<DAI name="SIUnit">
										<Val>VAr</Val>
									</DAI>
									<DAI name="multiplier">
										<Val>M</Val>
									</DAI>
								</SDI>
								<DAI name="db">
									<Val>10000</Val>
								</DAI>
								<DAI name="dbRef">
									<Val>40</Val>
								</DAI>
							</SDI>
							<SDI name="phsB" desc="Q:B">
								<SDI name="units">
									<DAI name="SIUnit">
										<Val>VAr</Val>
									</DAI>
									<DAI name="multiplier">
										<Val>M</Val>
									</DAI>
								</SDI>
								<DAI name="db">
									<Val>10000</Val>
								</DAI>
								<DAI name="dbRef">
									<Val>40</Val>
								</DAI>
							</SDI>
							<SDI name="phsC" desc="Q:C">
								<SDI name="units">
									<DAI name="SIUnit">
										<Val>VAr</Val>
									</DAI>
									<DAI name="multiplier">
										<Val>M</Val>
									</DAI>
								</SDI>
								<DAI name="db">
									<Val>10000</Val>
								</DAI>
								<DAI name="dbRef">
									<Val>40</Val>
								</DAI>
							</SDI>
						</DOI>
						<DOI name="VA" desc="S">
							<SDI name="phsA" desc="S:A">
								<SDI name="units">
									<DAI name="SIUnit">
										<Val>VA</Val>
									</DAI>
									<DAI name="multiplier">
										<Val>M</Val>
									</DAI>
								</SDI>
								<DAI name="db">
									<Val>10000</Val>
								</DAI>
								<DAI name="dbRef">
									<Val>40</Val>
								</DAI>
							</SDI>
							<SDI name="phsB" desc="S:B">
								<SDI name="units">
									<DAI name="SIUnit">
										<Val>VA</Val>
									</DAI>
									<DAI name="multiplier">
										<Val>M</Val>
									</DAI>
								</SDI>
								<DAI name="db">
									<Val>10000</Val>
								</DAI>
								<DAI name="dbRef">
									<Val>40</Val>
								</DAI>
							</SDI>
							<SDI name="phsC" desc="S:C">
								<SDI name="units">
									<DAI name="SIUnit">
										<Val>VA</Val>
									</DAI>
									<DAI name="multiplier">
										<Val>M</Val>
									</DAI>
								</SDI>
								<DAI name="db">
									<Val>10000</Val>
								</DAI>
								<DAI name="dbRef">
									<Val>40</Val>
								</DAI>
							</SDI>
						</DOI>
					</LN>
				</LDevice>
			</Server>
		</AccessPoint>
	</IED>
	<IED desc="Merging_Unit" name="SIEMENS_6MU85_001" type="6MU85" manufacturer="SIEMENS" configVersion="V09.50.01" originalSclVersion="2007" originalSclRevision="B" originalSclRelease="4">
		<Private type="Siemens-s7ManagerName">Merging_Unit</Private>
		<Private type="Siemens-ICD-Language">en-US</Private>
		<Private type="Siemens-Siprotec5-Product-Code">6MU85-DAAA-AA0-0AAAA0-AH0111-11111A-ABD000-000AC0-CB1BA1-CA1</Private>
		<Private type="Siemens-Siprotec5-Application-Template">6MU85_4I4U</Private>
		<Private type="Siemens-Siprotec5-Communication-Configuration-Version">95001</Private>
		<Private type="Siemens-Siprotec5-Configuration-Version">V09.50.01</Private>
		<Private type="HasDexFileAttached">C:\Users\raumatij\gitlab\digital-substation\standard-packages\standard-package-files\6mu85-merging-unit\v0_4\Siprotec_Merging_Unit.dex5</Private>
		<Private type="Siemens-IsSiprotec5IED"/>
		<Services nameLength="64">
			<ClientServices goose="true" gsse="false" bufReport="false" unbufReport="false" readLog="false" sv="false" supportsLdName="true" maxGOOSE="128" rGOOSE="false" rSV="false" noIctBinding="false">
				<TimeSyncProt sntp="true" c37_238="false" other="false" iec61850_9_3="true"/>
			</ClientServices>
			<DynAssociation max="6"/>
			<SettingGroups>
				<SGEdit resvTms="true"/>
			</SettingGroups>
			<GetDirectory/>
			<GetDataObjectDefinition/>
			<DataObjectDirectory/>
			<GetDataSetValue/>
			<DataSetDirectory/>
			<ConfDataSet max="50" maxAttributes="200" modify="true"/>
			<DynDataSet max="30" maxAttributes="60"/>
			<ReadWrite/>
			<ConfReportControl max="60" bufMode="both" bufConf="true"/>
			<GetCBValues/>
			<ReportSettings cbName="Conf" datSet="Dyn" rptID="Dyn" optFields="Dyn" bufTime="Dyn" trgOps="Dyn" intgPd="Dyn" resvTms="true"/>
			<GSESettings cbName="Conf" datSet="Conf" appID="Conf" dataLabel="Fix" kdaParticipant="false"/>
			<ConfLNs fixPrefix="false" fixLnInst="false"/>
			<ConfLdName/>
			<GOOSE max="16" fixedOffs="false" goose="true" rGOOSE="false"/>
			<FileHandling/>
			<SupSubscription maxGo="128" maxSv="0"/>
			<ValueHandling setToRO="false"/>
			<RedProt hsr="true" prp="true" rstp="true"/>
			<CommProt ipv6="false"/>
			<SMVSettings cbName="Conf" datSet="Fix" svID="Conf" optFields="Fix" smpRate="Fix" samplesPerSec="true" synchSrcId="true" nofASDU="Fix" kdaParticipant="false">
				<SmpRate>80</SmpRate>
				<SmpRate>256</SmpRate>
				<SamplesPerSec>4000</SamplesPerSec>
				<SamplesPerSec>4800</SamplesPerSec>
				<SamplesPerSec>12800</SamplesPerSec>
				<SamplesPerSec>14400</SamplesPerSec>
				<SamplesPerSec>15360</SamplesPerSec>
			</SMVSettings>
			<SMVsc max="1" delivery="multicast" deliveryConf="false" sv="true" rSV="false"/>
		</Services>
		<AccessPoint desc="Port F" name="F" router="false" clock="false">
			<Server timeout="0">
				<Private type="Siemens-MasterId">475a89fc-b478-4f1e-8a04-0eb4e03d5c2d</Private>
				<Authentication none="true"/>
				<LDevice desc="Application" inst="Application">
					<Private type="Siemens-MasterId">a9b45d69-8999-4761-9658-c7fc74627935</Private>
					<LN0 lnClass="LLN0" inst="" lnType="SIPROTEC5_LNType_LLN0_Application" desc="General">
						<Private type="Siemens-MasterId">7b606d21-5490-4595-a670-24af297309d6</Private>
						<DataSet name="Analogue">
							<FCDA ldInst="Prot_FundSymComp" prefix="FPRE_" lnClass="MMXU" lnInst="1" doName="A.phsA" fc="MX"/>
							<FCDA ldInst="Prot_FundSymComp" prefix="FPRE_" lnClass="MMXU" lnInst="1" doName="A.phsB" fc="MX"/>
							<FCDA ldInst="Prot_FundSymComp" prefix="FPRE_" lnClass="MMXU" lnInst="1" doName="A.phsC" fc="MX"/>
							<FCDA ldInst="Prot_FundSymComp" prefix="FPRE_" lnClass="MMXU" lnInst="1" doName="A.res" fc="MX"/>
							<FCDA ldInst="Prot_FundSymComp" prefix="FPRE_" lnClass="MMXU" lnInst="1" doName="PPV.phsAB" fc="MX"/>
							<FCDA ldInst="Prot_FundSymComp" prefix="FPRE_" lnClass="MMXU" lnInst="1" doName="PPV.phsBC" fc="MX"/>
							<FCDA ldInst="Prot_FundSymComp" prefix="FPRE_" lnClass="MMXU" lnInst="1" doName="PPV.phsCA" fc="MX"/>
							<FCDA ldInst="Prot_FundSymComp" prefix="XPRE_" lnClass="MSQI" lnInst="1" doName="SeqA.c2" fc="MX"/>
							<FCDA ldInst="Prot_FundSymComp" prefix="XPRE_" lnClass="MSQI" lnInst="1" doName="SeqA.c3" fc="MX"/>
							<FCDA ldInst="Prot_FundSymComp" prefix="XPRE_" lnClass="MSQI" lnInst="1" doName="SeqV.c2" fc="MX"/>
							<FCDA ldInst="Prot_FundSymComp" prefix="XPRE_" lnClass="MSQI" lnInst="1" doName="SeqV.c3" fc="MX"/>
							<FCDA ldInst="PowS_SingleCT1" prefix="" lnClass="GAPC" lnInst="1" doName="PhCurrent" fc="MX"/>
							<FCDA ldInst="PowS_SingleCT2" prefix="" lnClass="GAPC" lnInst="1" doName="PhCurrent" fc="MX"/>
							<FCDA ldInst="PowS_SingleCT3" prefix="" lnClass="GAPC" lnInst="1" doName="PhCurrent" fc="MX"/>
							<FCDA ldInst="PowS_SingleCT4" prefix="" lnClass="GAPC" lnInst="1" doName="PhCurrent" fc="MX"/>
							<FCDA ldInst="PowS_SingleVT" prefix="" lnClass="GAPC" lnInst="1" doName="PhVoltage" fc="MX"/>
						</DataSet>
						<DataSet name="Indication">
							<FCDA ldInst="Application" prefix="" lnClass="LPHD" lnInst="0" doName="PhyHealth" fc="ST"/>
							<FCDA ldInst="Application" prefix="" lnClass="CALH" lnInst="0" doName="GrAlm" fc="ST"/>
							<FCDA ldInst="Application" prefix="" lnClass="CALH" lnInst="0" doName="GrWrn" fc="ST"/>
							<FCDA ldInst="Application" prefix="" lnClass="LLN0" doName="Mod" fc="ST"/>
							<FCDA ldInst="Application" prefix="" lnClass="LLN0" doName="Beh" fc="ST"/>
							<FCDA ldInst="Application" prefix="" lnClass="LLN0" doName="Health" fc="ST"/>
							<FCDA ldInst="Application" prefix="" lnClass="LPHD" lnInst="0" doName="Sim" fc="ST"/>
							<FCDA ldInst="Application" prefix="" lnClass="LLN0" doName="FnctLO" fc="ST"/>
							<FCDA ldInst="Application" prefix="" lnClass="LTMS" lnInst="0" doName="TmSynErr" fc="ST"/>
							<FCDA ldInst="Application" prefix="" lnClass="LTMS" lnInst="0" doName="Sync" fc="ST"/>
							<FCDA ldInst="PortF_Channel1" prefix="PRP_" lnClass="LCCH" lnInst="1" doName="ChLiv" fc="ST"/>
							<FCDA ldInst="PortF_Channel1" prefix="PRP_" lnClass="LCCH" lnInst="1" doName="RedChLiv" fc="ST"/>
							<FCDA ldInst="CB" prefix="" lnClass="XCBR" lnInst="4" doName="Pos" fc="ST"/>
							<FCDA ldInst="DCB_Blocking" prefix="" lnClass="XSWI" lnInst="1" doName="Pos" fc="ST"/>
							<FCDA ldInst="CB" prefix="" lnClass="PTRC" lnInst="1" doName="Op" fc="ST"/>
							<FCDA ldInst="CB" prefix="BI1_" lnClass="ZAXN" lnInst="1" doName="Failure" fc="ST"/>
							<FCDA ldInst="CB" prefix="BI1_" lnClass="ZAXN" lnInst="1" doName="WetSupFail" fc="ST"/>
							<FCDA ldInst="ComSupervision_GOOSE" prefix="" lnClass="CALH" lnInst="1" doName="GrAlm" fc="ST"/>
							<FCDA ldInst="ComSupervision_GOOSE" prefix="" lnClass="LGOS" lnInst="1" doName="St" fc="ST"/>
							<FCDA ldInst="ComSupervision_GOOSE" prefix="" lnClass="LGOS" lnInst="1" doName="SimSt" fc="ST"/>
							<FCDA ldInst="ComSupervision_GOOSE" prefix="" lnClass="LGOS" lnInst="2" doName="St" fc="ST"/>
							<FCDA ldInst="ComSupervision_GOOSE" prefix="" lnClass="LGOS" lnInst="2" doName="SimSt" fc="ST"/>
							<FCDA ldInst="Prot" prefix="CUST_" lnClass="RBRF" lnInst="1" doName="OpEx" fc="ST"/>
						</DataSet>
						<DataSet name="Test">
							<FCDA ldInst="Application" prefix="" lnClass="LLN0" doName="LEDRs" fc="ST"/>
							<FCDA ldInst="Application" prefix="" lnClass="LLN0" doName="Mod" fc="ST"/>
							<FCDA ldInst="Application" prefix="" lnClass="LLN0" doName="FnctLO" fc="ST"/>
							<FCDA ldInst="Application" prefix="" lnClass="LPHD" lnInst="0" doName="Sim" fc="ST"/>
							<FCDA ldInst="CB" prefix="" lnClass="CSWI" lnInst="1" doName="Pos" fc="ST"/>
							<FCDA ldInst="Prot_BayTrip" prefix="EXT_" lnClass="PSCH" lnInst="1" doName="ExtIn" fc="ST"/>
							<FCDA ldInst="Prot_BayTrip" prefix="EXT_" lnClass="PSCH" lnInst="1" doName="TestExtIn" fc="ST"/>
							<FCDA ldInst="Prot_BusbarTrip" prefix="EXT_" lnClass="PSCH" lnInst="1" doName="ExtIn" fc="ST"/>
							<FCDA ldInst="Prot_BusbarTrip" prefix="EXT_" lnClass="PSCH" lnInst="1" doName="TestExtIn" fc="ST"/>
							<FCDA ldInst="Prot_Mechanical" prefix="MAIN_" lnClass="SIML" lnInst="1" doName="GasFlwTr" fc="ST"/>
							<FCDA ldInst="Prot_Mechanical" prefix="TCH_" lnClass="SIML" lnInst="1" doName="GasFlwTr" fc="ST"/>
							<FCDA ldInst="Prot_Mechanical" prefix="MAIN_" lnClass="SPRS" lnInst="1" doName="Trip" fc="ST"/>
							<FCDA ldInst="Prot_Mechanical" prefix="TCH_" lnClass="SPRS" lnInst="1" doName="Trip" fc="ST"/>
							<FCDA ldInst="Prot_Mechanical" prefix="ETLS_" lnClass="SPRS" lnInst="1" doName="Trip" fc="ST"/>
							<FCDA ldInst="Prot_Mechanical" prefix="ET_" lnClass="STMP" lnInst="1" doName="Trip" fc="ST"/>
							<FCDA ldInst="Prot" prefix="CUST_" lnClass="RBRF" lnInst="1" doName="OpEx" fc="ST"/>
							<FCDA ldInst="PortF_Channel1" prefix="PTP_" lnClass="LTPC" lnInst="1" doName="GmClkClass" fc="ST"/>
							<FCDA ldInst="PortF_Channel1" prefix="PTP_" lnClass="LTPC" lnInst="1" doName="GmClkId" fc="ST"/>
							<FCDA ldInst="PortF_Channel1" prefix="PTP_" lnClass="LTPC" lnInst="1" doName="GmClkAcc" fc="ST"/>
							<FCDA ldInst="PortF_Channel1" prefix="PTP_" lnClass="LTPC" lnInst="1" doName="ChLiv" fc="ST"/>
						</DataSet>
						<ReportControl name="SCADA_Analogue" datSet="Analogue" intgPd="3600000" rptID="T_6MU85_TxCouplerLine/Application/LLN0$RP$SCADA_Analogue" confRev="1" bufTime="500">
							<TrgOps dchg="true" qchg="true" dupd="true" period="true" gi="true"/>
							<OptFields seqNum="true" timeStamp="true" dataSet="true" reasonCode="true" dataRef="false" entryID="false" configRef="true" bufOvfl="false"/>
							<RptEnabled max="4"/>
						</ReportControl>
						<ReportControl name="Test_Analogue" datSet="Analogue" intgPd="3600000" rptID="T_6MU85_TxCouplerLine/Application/LLN0$RP$Test_Analogue" confRev="1" bufTime="500">
							<TrgOps dchg="true" qchg="true" dupd="true" period="true" gi="true"/>
							<OptFields seqNum="true" timeStamp="true" dataSet="true" reasonCode="true" dataRef="true" entryID="false" configRef="true" bufOvfl="true"/>
							<RptEnabled max="1"/>
						</ReportControl>
						<ReportControl name="SCADA_Indication" datSet="Indication" intgPd="3600000" rptID="T_6MU85_TxCouplerLine/Application/LLN0$BR$SCADA_Indication" confRev="70001" buffered="true" bufTime="500">
							<TrgOps dchg="true" qchg="true" dupd="true" period="true" gi="true"/>
							<OptFields seqNum="true" timeStamp="true" dataSet="true" reasonCode="true" dataRef="false" entryID="true" configRef="true" bufOvfl="false"/>
							<RptEnabled max="4"/>
						</ReportControl>
						<ReportControl name="Test_Indication" datSet="Indication" intgPd="3600000" rptID="T_6MU85_TxCouplerLine/Application/LLN0$BR$Test_Indication" confRev="70001" buffered="true" bufTime="500">
							<TrgOps dchg="true" qchg="true" dupd="true" period="true" gi="true"/>
							<OptFields seqNum="true" timeStamp="true" dataSet="true" reasonCode="true" dataRef="true" entryID="true" configRef="true" bufOvfl="false"/>
							<RptEnabled max="1"/>
						</ReportControl>
						<ReportControl name="Test_Test" datSet="Test" intgPd="3600000" rptID="T_6MU85_TxCouplerLine/Application/LLN0$BR$Test_Test" confRev="170001" buffered="true" bufTime="500">
							<TrgOps dchg="true" qchg="true" dupd="true" period="true" gi="true"/>
							<OptFields seqNum="true" timeStamp="true" dataSet="true" reasonCode="true" dataRef="true" entryID="true" configRef="true" bufOvfl="true"/>
							<RptEnabled max="1"/>
						</ReportControl>
						<ReportControl name="A_URCB" rptID="TEMPLATEApplication/LLN0$RP$A_URCB" confRev="1" buffered="false">
							<Private type="Siemens-Siprotec5-IsPredefined"/>
							<OptFields/>
						</ReportControl>
						<ReportControl name="A_URCB_1" rptID="TEMPLATEApplication/LLN0$RP$A_URCB_1" confRev="1" buffered="false">
							<Private type="Siemens-Siprotec5-IsPredefined"/>
							<OptFields/>
						</ReportControl>
						<ReportControl name="A_URCB_2" rptID="TEMPLATEApplication/LLN0$RP$A_URCB_2" confRev="1" buffered="false">
							<Private type="Siemens-Siprotec5-IsPredefined"/>
							<OptFields/>
						</ReportControl>
						<ReportControl name="A_URCB_3" rptID="TEMPLATEApplication/LLN0$RP$A_URCB_3" confRev="1" buffered="false">
							<Private type="Siemens-Siprotec5-IsPredefined"/>
							<OptFields/>
						</ReportControl>
						<ReportControl name="A_URCB_4" rptID="TEMPLATEApplication/LLN0$RP$A_URCB_4" confRev="1" buffered="false">
							<Private type="Siemens-Siprotec5-IsPredefined"/>
							<OptFields/>
						</ReportControl>
						<ReportControl name="A_URCB_5" rptID="TEMPLATEApplication/LLN0$RP$A_URCB_5" confRev="1" buffered="false">
							<Private type="Siemens-Siprotec5-IsPredefined"/>
							<OptFields/>
						</ReportControl>
						<ReportControl name="A_URCB_6" rptID="TEMPLATEApplication/LLN0$RP$A_URCB_6" confRev="1" buffered="false">
							<Private type="Siemens-Siprotec5-IsPredefined"/>
							<OptFields/>
						</ReportControl>
						<ReportControl name="A_URCB_7" rptID="TEMPLATEApplication/LLN0$RP$A_URCB_7" confRev="1" buffered="false">
							<Private type="Siemens-Siprotec5-IsPredefined"/>
							<OptFields/>
						</ReportControl>
						<ReportControl name="A_URCB_8" rptID="TEMPLATEApplication/LLN0$RP$A_URCB_8" confRev="1" buffered="false">
							<Private type="Siemens-Siprotec5-IsPredefined"/>
							<OptFields/>
						</ReportControl>
						<ReportControl name="A_URCB_9" rptID="TEMPLATEApplication/LLN0$RP$A_URCB_9" confRev="1" buffered="false">
							<Private type="Siemens-Siprotec5-IsPredefined"/>
							<OptFields/>
						</ReportControl>
						<ReportControl name="A_URCB_10" rptID="TEMPLATEApplication/LLN0$RP$A_URCB_10" confRev="1" buffered="false">
							<Private type="Siemens-Siprotec5-IsPredefined"/>
							<OptFields/>
						</ReportControl>
						<ReportControl name="A_URCB_11" rptID="TEMPLATEApplication/LLN0$RP$A_URCB_11" confRev="1" buffered="false">
							<Private type="Siemens-Siprotec5-IsPredefined"/>
							<OptFields/>
						</ReportControl>
						<ReportControl name="A_URCB_12" rptID="TEMPLATEApplication/LLN0$RP$A_URCB_12" confRev="1" buffered="false">
							<Private type="Siemens-Siprotec5-IsPredefined"/>
							<OptFields/>
						</ReportControl>
						<ReportControl name="A_URCB_13" rptID="TEMPLATEApplication/LLN0$RP$A_URCB_13" confRev="1" buffered="false">
							<Private type="Siemens-Siprotec5-IsPredefined"/>
							<OptFields/>
						</ReportControl>
						<ReportControl name="A_URCB_14" rptID="TEMPLATEApplication/LLN0$RP$A_URCB_14" confRev="1" buffered="false">
							<Private type="Siemens-Siprotec5-IsPredefined"/>
							<OptFields/>
						</ReportControl>
						<ReportControl name="A_URCB_15" rptID="TEMPLATEApplication/LLN0$RP$A_URCB_15" confRev="1" buffered="false">
							<Private type="Siemens-Siprotec5-IsPredefined"/>
							<OptFields/>
						</ReportControl>
						<ReportControl name="A_URCB_16" rptID="TEMPLATEApplication/LLN0$RP$A_URCB_16" confRev="1" buffered="false">
							<Private type="Siemens-Siprotec5-IsPredefined"/>
							<OptFields/>
						</ReportControl>
						<ReportControl name="A_URCB_17" rptID="TEMPLATEApplication/LLN0$RP$A_URCB_17" confRev="1" buffered="false">
							<Private type="Siemens-Siprotec5-IsPredefined"/>
							<OptFields/>
						</ReportControl>
						<ReportControl name="A_URCB_18" rptID="TEMPLATEApplication/LLN0$RP$A_URCB_18" confRev="1" buffered="false">
							<Private type="Siemens-Siprotec5-IsPredefined"/>
							<OptFields/>
						</ReportControl>
						<ReportControl name="A_URCB_19" rptID="TEMPLATEApplication/LLN0$RP$A_URCB_19" confRev="1" buffered="false">
							<Private type="Siemens-Siprotec5-IsPredefined"/>
							<OptFields/>
						</ReportControl>
						<ReportControl name="A_URCB_20" rptID="TEMPLATEApplication/LLN0$RP$A_URCB_20" confRev="1" buffered="false">
							<Private type="Siemens-Siprotec5-IsPredefined"/>
							<OptFields/>
						</ReportControl>
						<ReportControl name="A_URCB_21" rptID="TEMPLATEApplication/LLN0$RP$A_URCB_21" confRev="1" buffered="false">
							<Private type="Siemens-Siprotec5-IsPredefined"/>
							<OptFields/>
						</ReportControl>
						<ReportControl name="A_URCB_22" rptID="TEMPLATEApplication/LLN0$RP$A_URCB_22" confRev="1" buffered="false">
							<Private type="Siemens-Siprotec5-IsPredefined"/>
							<OptFields/>
						</ReportControl>
						<ReportControl name="A_URCB_23" rptID="TEMPLATEApplication/LLN0$RP$A_URCB_23" confRev="1" buffered="false">
							<Private type="Siemens-Siprotec5-IsPredefined"/>
							<OptFields/>
						</ReportControl>
						<ReportControl name="A_URCB_24" rptID="TEMPLATEApplication/LLN0$RP$A_URCB_24" confRev="1" buffered="false">
							<Private type="Siemens-Siprotec5-IsPredefined"/>
							<OptFields/>
						</ReportControl>
						<ReportControl name="A_URCB_25" rptID="TEMPLATEApplication/LLN0$RP$A_URCB_25" confRev="1" buffered="false">
							<Private type="Siemens-Siprotec5-IsPredefined"/>
							<OptFields/>
						</ReportControl>
						<ReportControl name="A_URCB_26" rptID="TEMPLATEApplication/LLN0$RP$A_URCB_26" confRev="1" buffered="false">
							<Private type="Siemens-Siprotec5-IsPredefined"/>
							<OptFields/>
						</ReportControl>
						<ReportControl name="A_URCB_27" rptID="TEMPLATEApplication/LLN0$RP$A_URCB_27" confRev="1" buffered="false">
							<Private type="Siemens-Siprotec5-IsPredefined"/>
							<OptFields/>
						</ReportControl>
						<ReportControl name="A_URCB_28" rptID="TEMPLATEApplication/LLN0$RP$A_URCB_28" confRev="1" buffered="false">
							<Private type="Siemens-Siprotec5-IsPredefined"/>
							<OptFields/>
						</ReportControl>
						<ReportControl name="A_URCB_29" rptID="TEMPLATEApplication/LLN0$RP$A_URCB_29" confRev="1" buffered="false">
							<Private type="Siemens-Siprotec5-IsPredefined"/>
							<OptFields/>
						</ReportControl>
						<DOI name="Mod" desc="Application mode"/>
						<DOI name="Beh" desc="Behavior"/>
						<DOI name="Health" desc="Health (61850 only)"/>
						<DOI name="NamPlt" desc="Name plate">
							<DAI name="configRev">
								<Val>2023-04-19 10:34:17</Val>
							</DAI>
							<DAI name="ldNs">
								<Val>IEC 61850-7-4:2007B</Val>
							</DAI>
						</DOI>
						<DOI name="LEDRs" desc="LED reset"/>
						<DOI name="LocKey" desc="Sw.authority key/set">
							<DAI name="dataNs">
								<Val>IEC 61850-7-4:2007B</Val>
							</DAI>
						</DOI>
						<DOI name="LocSta" desc="Switching auth. station">
							<DAI name="dataNs">
								<Val>IEC 61850-7-4:2007B</Val>
							</DAI>
						</DOI>
						<DOI name="MltLev" desc="Multiple sw.auth. levels">
							<DAI name="setVal">
								<Val>false</Val>
							</DAI>
							<DAI name="dataNs">
								<Val>IEC 61850-7-4:2007B</Val>
							</DAI>
						</DOI>
						<DOI name="ProtOnOff" desc="Protection on"/>
						<DOI name="FnctLO" desc="Device logout"/>
						<DOI name="SwAuthEna1" desc="Enable sw. auth. 1">
							<DAI name="operTimeout">
								<Val>1000</Val>
							</DAI>
						</DOI>
						<DOI name="SwAuthEna2" desc="Enable sw. auth. 2">
							<DAI name="operTimeout">
								<Val>1000</Val>
							</DAI>
						</DOI>
						<DOI name="SwAuthEna3" desc="Enable sw. auth. 3">
							<DAI name="operTimeout">
								<Val>1000</Val>
							</DAI>
						</DOI>
						<DOI name="SwAuthEna4" desc="Enable sw. auth. 4">
							<DAI name="operTimeout">
								<Val>1000</Val>
							</DAI>
						</DOI>
						<DOI name="SwAuthEna5" desc="Enable sw. auth. 5">
							<DAI name="operTimeout">
								<Val>1000</Val>
							</DAI>
						</DOI>
						<DOI name="LedTstStrt" desc="&gt;LED reset"/>
						<DOI name="FloOn" desc="&gt;Dev. funct.logout on"/>
						<DOI name="FloOff" desc="&gt;Dev. funct.logout off"/>
						<DOI name="SGChoiceB1" desc="&gt;SG choice bit 1"/>
						<DOI name="SGChoiceB2" desc="&gt;SG choice bit 2"/>
						<DOI name="SGChoiceB3" desc="&gt;SG choice bit 3"/>
						<DOI name="LightOn" desc="&gt;Light on"/>
						<DOI name="BOBlocked" desc="&gt;Block relays"/>
						<DOI name="Inactive" desc="Protection inactive"/>
						<DOI name="HealthDev" desc="Health"/>
						<DOI name="LedTstOut" desc="LED have been reset"/>
						<DOI name="FloCmd" desc="Logged off via control"/>
						<DOI name="FloState" desc="Device logged off"/>
						<DOI name="SwAuth" desc="Switching authority"/>
						<DOI name="SwMod" desc="Switching mode"/>
						<DOI name="AcqBlkAct" desc="Acq.blocking active"/>
						<DOI name="SubstAct" desc="Manual update active"/>
						<DOI name="ActiveSG" desc="Active settings group"/>
						<DOI name="FunInTest" desc="Functions in Test mode"/>
						<SettingControl numOfSGs="2" actSG="1">
							<Private type="Siemens-MasterId">4f56ac0c-cdec-4d39-8bd8-4610225b916e</Private>
						</SettingControl>
					</LN0>
					<LN lnClass="LPHD" inst="0" lnType="SIPROTEC5_LNType_LPHD" desc="Device" prefix="">
						<Private type="Siemens-MasterId">2200d731-a62c-4725-9c29-5db4b9d7c748</Private>
						<DOI name="PhyNam" desc="Physical device name">
							<DAI name="vendor">
								<Val>SIEMENS</Val>
							</DAI>
							<DAI name="hwRev">
								<Val>6MU85-DAAA-AA0-0AAAA0-AH0111-11111A-ABD000-000AC0-CB1BA1-CA1</Val>
							</DAI>
							<DAI name="swRev">
								<Val>V09.50</Val>
							</DAI>
							<DAI name="model">
								<Val>6MU85</Val>
							</DAI>
							<DAI name="d">
								<Val>SIEMENS SIPROTEC 5</Val>
							</DAI>
						</DOI>
						<DOI name="PhyHealth" desc="Physical health"/>
						<DOI name="Proxy" desc="Proxy"/>
						<DOI name="PwrUp" desc="Device startup"/>
						<DOI name="Sim" desc="GOOSE/SV sim.mode"/>
						<DOI name="OpTmh" desc="Device operating hours">
							<SDI name="units">
								<DAI name="SIUnit">
									<Val>h</Val>
								</DAI>
							</SDI>
						</DOI>
						<DOI name="NamPlt" desc="Name plate">
							<DAI name="configRev">
								<Val>2023-04-04 22:48:07</Val>
							</DAI>
						</DOI>
						<DOI name="GoStop" desc="&gt;GOOSE Stop"/>
						<DOI name="SvStop" desc="&gt;SV Stop"/>
						<DOI name="LifeCon" desc="Life contact"/>
						<DOI name="BatFail" desc="Battery failure"/>
						<DOI name="ClkFail" desc="Clock fail"/>
						<DOI name="ErrMeasT" desc="Error meas. trans."/>
						<DOI name="ErrComp" desc="Compensation error"/>
						<DOI name="ErrOffset" desc="Offset error"/>
						<DOI name="DigsiAct" desc="DIGSI active"/>
						<DOI name="SimuMode" desc="Simulation mode active"/>
						<DOI name="CommMode" desc="Commiss. mode active"/>
						<DOI name="ErrMemory" desc="Error memory"/>
						<DOI name="AuxPwrFail" desc="Auxiliary Power Fail"/>
						<DOI name="SeuHappened" desc="SEU happened"/>
						<DOI name="PSModFail" desc="Power sup. Module fail."/>
						<DOI name="PSModOK" desc="Power sup. Module OK"/>
						<DOI name="OsopNotCon" desc="OSOP not connected"/>
						<DOI name="PSAuxPwrFail" desc="Pow. sup. aux. pow. fail."/>
						<DOI name="PSAuxPwrOK" desc="Power sup.aux.pow.OK"/>
						<DOI name="PSModFailSps" desc="Power sup. Module fail."/>
						<DOI name="PSAuxFailSps" desc="Pow. sup. aux. pow. fail."/>
						<DOI name="Logon" desc="Cyber Security state"/>
						<DOI name="CybSecEvt" desc="Cyber-security event"/>
						<DOI name="MsgLost" desc="Event lost"/>
						<DOI name="ChtBlk" desc="Chatter blocking"/>
						<DOI name="FlshDskHth" desc="Flash disk health"/>
						<DOI name="PrcModIna" desc="Process mode inactive"/>
					</LN>
					<LN lnClass="CALH" inst="0" lnType="SIPROTEC5_LNType_CALH_Application" desc="Alarm handling" prefix="">
						<Private type="Siemens-MasterId">0c5771ea-44f5-48bd-8494-a87a545488ec</Private>
						<DOI name="Mod" desc="Mode (controllable)"/>
						<DOI name="Beh" desc="Behavior"/>
						<DOI name="Health" desc="Health"/>
						<DOI name="NamPlt" desc="Name plate">
							<DAI name="configRev">
								<Val>2023-04-04 22:48:07</Val>
							</DAI>
						</DOI>
						<DOI name="GrAlm" desc="Group alarm"/>
						<DOI name="GrWrn" desc="Group warning"/>
						<DOI name="GrInd" desc="Group indication"/>
						<DOI name="GrIndIn" desc="&gt;Group indication"/>
						<DOI name="GrWrnIn" desc="&gt;Group Warning"/>
						<DOI name="GrAlmIn" desc="&gt;Group Alarm"/>
					</LN>
					<LN lnClass="LTIM" inst="0" lnType="SIPROTEC5_LNType_LTIM_Application" desc="Time managem." prefix="">
						<Private type="Siemens-MasterId">b29f1cfc-2219-430b-b7ed-1faaeb58150d</Private>
						<DOI name="Mod" desc="Mode (status only)"/>
						<DOI name="Beh" desc="Behavior"/>
						<DOI name="Health" desc="Health"/>
						<DOI name="NamPlt" desc="Name plate">
							<DAI name="configRev">
								<Val>2023-04-04 22:48:07</Val>
							</DAI>
						</DOI>
						<DOI name="TmDT" desc="Daylight saving time"/>
						<DOI name="TmOfsTmm" desc="Time zone offset to UTC">
							<DAI name="setVal">
								<Val>720</Val>
							</DAI>
							<DAI name="minVal">
								<Val>-720</Val>
							</DAI>
							<DAI name="maxVal">
								<Val>840</Val>
							</DAI>
							<DAI name="stepSize">
								<Val>15</Val>
							</DAI>
							<SDI name="units">
								<DAI name="SIUnit">
									<Val>min</Val>
								</DAI>
							</SDI>
						</DOI>
						<DOI name="TmUseDT" desc="Switch daylight sav. time">
							<DAI name="setVal">
								<Val>true</Val>
							</DAI>
						</DOI>
						<DOI name="TmChgDT" desc="Start of daylight sav. time">
							<SDI name="setCal">
								<DAI name="occ">
									<Val>0</Val>
								</DAI>
								<DAI name="occType">
									<Val>WeekDay</Val>
								</DAI>
								<DAI name="occPer">
									<Val>Year</Val>
								</DAI>
								<DAI name="weekDay">
									<Val>Sunday</Val>
								</DAI>
								<DAI name="month">
									<Val>September</Val>
								</DAI>
								<DAI name="day">
									<Val>0</Val>
								</DAI>
								<DAI name="hr">
									<Val>2</Val>
								</DAI>
								<DAI name="mn">
									<Val>0</Val>
								</DAI>
							</SDI>
						</DOI>
						<DOI name="TmChgST" desc="End of daylight sav. time">
							<SDI name="setCal">
								<DAI name="occ">
									<Val>1</Val>
								</DAI>
								<DAI name="occType">
									<Val>WeekDay</Val>
								</DAI>
								<DAI name="occPer">
									<Val>Year</Val>
								</DAI>
								<DAI name="weekDay">
									<Val>Sunday</Val>
								</DAI>
								<DAI name="month">
									<Val>April</Val>
								</DAI>
								<DAI name="day">
									<Val>0</Val>
								</DAI>
								<DAI name="hr">
									<Val>3</Val>
								</DAI>
								<DAI name="mn">
									<Val>0</Val>
								</DAI>
							</SDI>
						</DOI>
						<DOI name="ClkSetMan" desc="Clock set manually"/>
					</LN>
					<LN lnClass="LTMS" inst="0" lnType="SIPROTEC5_LNType_LTMS_Application" desc="Time sync." prefix="">
						<Private type="Siemens-MasterId">4972251c-974e-4690-a471-5651f7cbfca5</Private>
						<DOI name="Mod" desc="Mode (status only)"/>
						<DOI name="Beh" desc="Behavior"/>
						<DOI name="Health" desc="Health"/>
						<DOI name="NamPlt" desc="Name plate">
							<DAI name="configRev">
								<Val>2023-04-04 22:48:07</Val>
							</DAI>
						</DOI>
						<DOI name="TmSrc" desc="Current time source"/>
						<DOI name="TmSrcTyp" desc="Type of clock source"/>
						<DOI name="TmChSt1" desc="Status time source 1"/>
						<DOI name="TmChSt2" desc="Status time source 2"/>
						<DOI name="TmSynErr" desc="Time sync. error"/>
						<DOI name="LeapSecond" desc="Leap second"/>
						<DOI name="Sync" desc="High accuracy"/>
					</LN>
					<LN lnClass="LTRK" inst="0" lnType="SIPROTEC5_LNType_LTRK_Application" desc="Service track." prefix="">
						<Private type="Siemens-MasterId">3ca14655-ee89-442c-acd6-730b78fb3ce1</Private>
						<DOI name="Mod" desc="Mode (status only)"/>
						<DOI name="Beh" desc="Behavior"/>
						<DOI name="Health" desc="Health"/>
						<DOI name="NamPlt" desc="Name plate">
							<DAI name="configRev">
								<Val>2023-04-04 22:48:07</Val>
							</DAI>
						</DOI>
						<DOI name="GenTrk" desc="Common Tracking"/>
						<DOI name="SgcbTrk" desc="Settings grps. access"/>
					</LN>
					<LN lnClass="GAPC" inst="0" lnType="SIPROTEC5_LNType_ResetLed" desc="LED not in FG" prefix="RSLED">
						<Private type="Siemens-MasterId">2927e8dd-29a0-4f85-9795-99959bc3662f</Private>
						<DOI name="Mod" desc="Mode (controllable)"/>
						<DOI name="Beh" desc="Behavior"/>
						<DOI name="Health" desc="Health"/>
						<DOI name="NamPlt" desc="Name plate">
							<DAI name="configRev">
								<Val>2023-04-04 22:48:07</Val>
							</DAI>
						</DOI>
						<DOI name="ResetIn" desc="&gt;LED reset"/>
						<DOI name="LedTstOut" desc="LED have been reset"/>
						<DOI name="ResetCtl" desc="Reset LEDs"/>
					</LN>
					<LN lnClass="GGIO" inst="1" lnType="SIPROTEC5_LNType_USER_Universal" desc="Binary outputs" prefix="BO_">
						<Private type="Siemens-MasterId">3fb6b30f-e8bf-48c1-a620-07842467779c</Private>
						<DOI name="Mod" desc="Mode (controllable)"/>
						<DOI name="Beh" desc="Behavior"/>
						<DOI name="Health" desc="Health"/>
						<DOI name="NamPlt" desc="Name plate">
							<DAI name="configRev">
								<Val>2023-04-19 10:34:17</Val>
							</DAI>
							<DAI name="lnNs">
								<Val>Transpower:2023</Val>
							</DAI>
						</DOI>
						<DOI name="BO1" desc="BO1.1"/>
						<DOI name="BO2" desc="BO1.2"/>
						<DOI name="BO3" desc="BO1.3"/>
						<DOI name="BO4" desc="BO1.4"/>
					</LN>
				</LDevice>
				<LDevice desc="Binary IO" inst="BinIO">
					<Private type="Siemens-MasterId">ccf1cf32-a803-4375-a445-946c8f2f98ef</Private>
					<LN0 lnClass="LLN0" inst="" lnType="SIPROTEC5_LNType_LLN0_LDevice_Generic" desc="BinIO/LLN0">
						<Private type="Siemens-MasterId">49bd34f9-4072-4835-a9db-71bf530f69fc</Private>
						<DOI name="Mod" desc="Mode (controllable)"/>
						<DOI name="Beh" desc="Behavior"/>
						<DOI name="Health" desc="Health"/>
						<DOI name="NamPlt" desc="Name plate">
							<DAI name="configRev">
								<Val>2023-01-05 21:44:38</Val>
							</DAI>
							<DAI name="ldNs">
								<Val>IEC 61850-7-4:2007B</Val>
							</DAI>
						</DOI>
						<DOI name="GrRef" desc="GrRef">
							<DAI name="setSrcRef">
								<Val>@Application</Val>
							</DAI>
						</DOI>
					</LN0>
				</LDevice>
				<LDevice desc="Binary IO_BI" inst="BinIO_BinaryInputs">
					<Private type="Siemens-MasterId">e35da912-94b8-41fd-a27a-51f56dad5650</Private>
					<LN0 lnClass="LLN0" inst="" lnType="SIPROTEC5_LNType_LLN0_LDevice_Generic" desc="BinIO_BinaryInputs/LLN0">
						<Private type="Siemens-MasterId">3e98b4ef-256e-4e95-afd2-598f3ebe5483</Private>
						<DOI name="Mod" desc="Mode (controllable)"/>
						<DOI name="Beh" desc="Behavior"/>
						<DOI name="Health" desc="Health"/>
						<DOI name="NamPlt" desc="Name plate">
							<DAI name="configRev">
								<Val>2023-04-04 22:48:07</Val>
							</DAI>
							<DAI name="ldNs">
								<Val>IEC 61850-7-4:2007B</Val>
							</DAI>
						</DOI>
						<DOI name="GrRef" desc="GrRef">
							<DAI name="setSrcRef">
								<Val>@BinIO</Val>
							</DAI>
						</DOI>
					</LN0>
					<LN lnClass="LPDI" inst="1" lnType="SIPROTEC5_LNType_LPDI_BinaryInput" desc="Binary input  1.1" prefix="">
						<Private type="Siemens-MasterId">e39f3e37-5388-4f3d-913b-c6054684af29</Private>
						<DOI name="Mod" desc="Mode (status only)"/>
						<DOI name="Beh" desc="Behavior"/>
						<DOI name="Health" desc="Health"/>
						<DOI name="NamPlt" desc="Name plate">
							<DAI name="configRev">
								<Val>2023-04-04 22:48:07</Val>
							</DAI>
						</DOI>
						<DOI name="In" desc="Digital input"/>
					</LN>
					<LN lnClass="LPDI" inst="2" lnType="SIPROTEC5_LNType_LPDI_BinaryInput" desc="Binary input  1.2" prefix="">
						<Private type="Siemens-MasterId">c2d28b91-f9e1-49a7-9b76-ae1e2c5435ea</Private>
						<DOI name="Mod" desc="Mode (status only)"/>
						<DOI name="Beh" desc="Behavior"/>
						<DOI name="Health" desc="Health"/>
						<DOI name="NamPlt" desc="Name plate">
							<DAI name="configRev">
								<Val>2023-04-04 22:48:07</Val>
							</DAI>
						</DOI>
						<DOI name="In" desc="Digital input"/>
					</LN>
					<LN lnClass="LPDI" inst="3" lnType="SIPROTEC5_LNType_LPDI_BinaryInput" desc="Binary input  1.3" prefix="">
						<Private type="Siemens-MasterId">88c5add6-669c-4b00-bfcc-4b626a89ebf2</Private>
						<DOI name="Mod" desc="Mode (status only)"/>
						<DOI name="Beh" desc="Behavior"/>
						<DOI name="Health" desc="Health"/>
						<DOI name="NamPlt" desc="Name plate">
							<DAI name="configRev">
								<Val>2023-04-04 22:48:07</Val>
							</DAI>
						</DOI>
						<DOI name="In" desc="Digital input"/>
					</LN>
					<LN lnClass="LPDI" inst="4" lnType="SIPROTEC5_LNType_LPDI_BinaryInput" desc="Binary input  1.4" prefix="">
						<Private type="Siemens-MasterId">85db321f-f247-4770-8d2b-4e3f448573c2</Private>
						<DOI name="Mod" desc="Mode (status only)"/>
						<DOI name="Beh" desc="Behavior"/>
						<DOI name="Health" desc="Health"/>
						<DOI name="NamPlt" desc="Name plate">
							<DAI name="configRev">
								<Val>2023-04-04 22:48:07</Val>
							</DAI>
						</DOI>
						<DOI name="In" desc="Digital input"/>
					</LN>
					<LN lnClass="LPDI" inst="5" lnType="SIPROTEC5_LNType_LPDI_BinaryInput" desc="Binary input  1.5" prefix="">
						<Private type="Siemens-MasterId">d56ff831-0867-4df0-a546-87cbc7ebb1f0</Private>
						<DOI name="Mod" desc="Mode (status only)"/>
						<DOI name="Beh" desc="Behavior"/>
						<DOI name="Health" desc="Health"/>
						<DOI name="NamPlt" desc="Name plate">
							<DAI name="configRev">
								<Val>2023-04-04 22:48:07</Val>
							</DAI>
						</DOI>
						<DOI name="In" desc="Digital input"/>
					</LN>
					<LN lnClass="LPDI" inst="6" lnType="SIPROTEC5_LNType_LPDI_BinaryInput" desc="Binary input  1.6" prefix="">
						<Private type="Siemens-MasterId">40928e27-80c3-4ae6-9635-7d2ec1f2fcba</Private>
						<DOI name="Mod" desc="Mode (status only)"/>
						<DOI name="Beh" desc="Behavior"/>
						<DOI name="Health" desc="Health"/>
						<DOI name="NamPlt" desc="Name plate">
							<DAI name="configRev">
								<Val>2023-04-04 22:48:07</Val>
							</DAI>
						</DOI>
						<DOI name="In" desc="Digital input"/>
					</LN>
					<LN lnClass="LPDI" inst="7" lnType="SIPROTEC5_LNType_LPDI_BinaryInput" desc="Binary input  1.7" prefix="">
						<Private type="Siemens-MasterId">6f79e620-bb67-4b68-9da6-9f4880ee1a89</Private>
						<DOI name="Mod" desc="Mode (status only)"/>
						<DOI name="Beh" desc="Behavior"/>
						<DOI name="Health" desc="Health"/>
						<DOI name="NamPlt" desc="Name plate">
							<DAI name="configRev">
								<Val>2023-04-04 22:48:07</Val>
							</DAI>
						</DOI>
						<DOI name="In" desc="Digital input"/>
					</LN>
					<LN lnClass="LPDI" inst="8" lnType="SIPROTEC5_LNType_LPDI_BinaryInput" desc="Binary input  1.8" prefix="">
						<Private type="Siemens-MasterId">3250f571-3f5e-41f1-96be-47a04d459b73</Private>
						<DOI name="Mod" desc="Mode (status only)"/>
						<DOI name="Beh" desc="Behavior"/>
						<DOI name="Health" desc="Health"/>
						<DOI name="NamPlt" desc="Name plate">
							<DAI name="configRev">
								<Val>2023-04-04 22:48:07</Val>
							</DAI>
						</DOI>
						<DOI name="In" desc="Digital input"/>
					</LN>
					<LN lnClass="LPDI" inst="9" lnType="SIPROTEC5_LNType_LPDI_BinaryInput" desc="Binary input  2.1" prefix="">
						<Private type="Siemens-MasterId">7ac42d23-c66e-4b85-bb48-a7bf014554f6</Private>
						<DOI name="Mod" desc="Mode (status only)"/>
						<DOI name="Beh" desc="Behavior"/>
						<DOI name="Health" desc="Health"/>
						<DOI name="NamPlt" desc="Name plate">
							<DAI name="configRev">
								<Val>2023-04-04 22:48:07</Val>
							</DAI>
						</DOI>
						<DOI name="In" desc="Digital input"/>
					</LN>
					<LN lnClass="LPDI" inst="10" lnType="SIPROTEC5_LNType_LPDI_BinaryInput" desc="Binary input  2.2" prefix="">
						<Private type="Siemens-MasterId">fb0f5d94-b87d-4e77-9aa4-6eb6df1433ce</Private>
						<DOI name="Mod" desc="Mode (status only)"/>
						<DOI name="Beh" desc="Behavior"/>
						<DOI name="Health" desc="Health"/>
						<DOI name="NamPlt" desc="Name plate">
							<DAI name="configRev">
								<Val>2023-04-04 22:48:07</Val>
							</DAI>
						</DOI>
						<DOI name="In" desc="Digital input"/>
					</LN>
					<LN lnClass="LPDI" inst="11" lnType="SIPROTEC5_LNType_LPDI_BinaryInput" desc="Binary input  2.3" prefix="">
						<Private type="Siemens-MasterId">1aed3fe9-c211-457b-b45c-2520024767b2</Private>
						<DOI name="Mod" desc="Mode (status only)"/>
						<DOI name="Beh" desc="Behavior"/>
						<DOI name="Health" desc="Health"/>
						<DOI name="NamPlt" desc="Name plate">
							<DAI name="configRev">
								<Val>2023-04-04 22:48:07</Val>
							</DAI>
						</DOI>
						<DOI name="In" desc="Digital input"/>
					</LN>
					<LN lnClass="LPDI" inst="12" lnType="SIPROTEC5_LNType_LPDI_BinaryInput" desc="Binary input  3.1" prefix="">
						<Private type="Siemens-MasterId">7aef8458-36af-4e93-9aa1-f00d31834eaf</Private>
						<DOI name="Mod" desc="Mode (status only)"/>
						<DOI name="Beh" desc="Behavior"/>
						<DOI name="Health" desc="Health"/>
						<DOI name="NamPlt" desc="Name plate">
							<DAI name="configRev">
								<Val>2023-04-04 22:48:07</Val>
							</DAI>
						</DOI>
						<DOI name="In" desc="Digital input"/>
					</LN>
					<LN lnClass="LPDI" inst="13" lnType="SIPROTEC5_LNType_LPDI_BinaryInput" desc="Binary input  3.2" prefix="">
						<Private type="Siemens-MasterId">527473c9-7556-4452-8012-f6898bf457a5</Private>
						<DOI name="Mod" desc="Mode (status only)"/>
						<DOI name="Beh" desc="Behavior"/>
						<DOI name="Health" desc="Health"/>
						<DOI name="NamPlt" desc="Name plate">
							<DAI name="configRev">
								<Val>2023-04-04 22:48:07</Val>
							</DAI>
						</DOI>
						<DOI name="In" desc="Digital input"/>
					</LN>
					<LN lnClass="LPDI" inst="14" lnType="SIPROTEC5_LNType_LPDI_BinaryInput" desc="Binary input  3.3" prefix="">
						<Private type="Siemens-MasterId">2dce0485-d20c-45cb-be9e-479452c1c343</Private>
						<DOI name="Mod" desc="Mode (status only)"/>
						<DOI name="Beh" desc="Behavior"/>
						<DOI name="Health" desc="Health"/>
						<DOI name="NamPlt" desc="Name plate">
							<DAI name="configRev">
								<Val>2023-04-04 22:48:07</Val>
							</DAI>
						</DOI>
						<DOI name="In" desc="Digital input"/>
					</LN>
					<LN lnClass="LPDI" inst="15" lnType="SIPROTEC5_LNType_LPDI_BinaryInput" desc="Binary input  3.4" prefix="">
						<Private type="Siemens-MasterId">ea848f24-fe74-414e-9ffc-d02d03f15cc9</Private>
						<DOI name="Mod" desc="Mode (status only)"/>
						<DOI name="Beh" desc="Behavior"/>
						<DOI name="Health" desc="Health"/>
						<DOI name="NamPlt" desc="Name plate">
							<DAI name="configRev">
								<Val>2023-04-04 22:48:07</Val>
							</DAI>
						</DOI>
						<DOI name="In" desc="Digital input"/>
					</LN>
					<LN lnClass="LPDI" inst="16" lnType="SIPROTEC5_LNType_LPDI_BinaryInput" desc="Binary input  3.5" prefix="">
						<Private type="Siemens-MasterId">6829e996-3ef5-47af-b41b-a5c34a7f2e1a</Private>
						<DOI name="Mod" desc="Mode (status only)"/>
						<DOI name="Beh" desc="Behavior"/>
						<DOI name="Health" desc="Health"/>
						<DOI name="NamPlt" desc="Name plate">
							<DAI name="configRev">
								<Val>2023-04-04 22:48:07</Val>
							</DAI>
						</DOI>
						<DOI name="In" desc="Digital input"/>
					</LN>
					<LN lnClass="LPDI" inst="17" lnType="SIPROTEC5_LNType_LPDI_BinaryInput" desc="Binary input  3.6" prefix="">
						<Private type="Siemens-MasterId">1b616371-5d34-43a7-8479-5f95d49e292d</Private>
						<DOI name="Mod" desc="Mode (status only)"/>
						<DOI name="Beh" desc="Behavior"/>
						<DOI name="Health" desc="Health"/>
						<DOI name="NamPlt" desc="Name plate">
							<DAI name="configRev">
								<Val>2023-04-04 22:48:07</Val>
							</DAI>
						</DOI>
						<DOI name="In" desc="Digital input"/>
					</LN>
					<LN lnClass="LPDI" inst="18" lnType="SIPROTEC5_LNType_LPDI_BinaryInput" desc="Binary input  3.7" prefix="">
						<Private type="Siemens-MasterId">44cdeee9-1e0a-471a-820e-9c45191d590e</Private>
						<DOI name="Mod" desc="Mode (status only)"/>
						<DOI name="Beh" desc="Behavior"/>
						<DOI name="Health" desc="Health"/>
						<DOI name="NamPlt" desc="Name plate">
							<DAI name="configRev">
								<Val>2023-04-04 22:48:07</Val>
							</DAI>
						</DOI>
						<DOI name="In" desc="Digital input"/>
					</LN>
					<LN lnClass="LPDI" inst="19" lnType="SIPROTEC5_LNType_LPDI_BinaryInput" desc="Binary input  3.8" prefix="">
						<Private type="Siemens-MasterId">c4763964-4dc2-49ba-8f55-2bbe91bfd662</Private>
						<DOI name="Mod" desc="Mode (status only)"/>
						<DOI name="Beh" desc="Behavior"/>
						<DOI name="Health" desc="Health"/>
						<DOI name="NamPlt" desc="Name plate">
							<DAI name="configRev">
								<Val>2023-04-04 22:48:07</Val>
							</DAI>
						</DOI>
						<DOI name="In" desc="Digital input"/>
					</LN>
				</LDevice>
				<LDevice desc="Binary IO_BO" inst="BinIO_BinaryOutputs">
					<Private type="Siemens-MasterId">2069b2ab-9b09-4ec3-9170-be4686b43b39</Private>
					<LN0 lnClass="LLN0" inst="" lnType="SIPROTEC5_LNType_LLN0_LDevice_Generic" desc="BinIO_BinaryOutputs/LLN0">
						<Private type="Siemens-MasterId">1d10db71-9aa4-4296-9cfa-63d417e0ecec</Private>
						<DOI name="Mod" desc="Mode (controllable)"/>
						<DOI name="Beh" desc="Behavior"/>
						<DOI name="Health" desc="Health"/>
						<DOI name="NamPlt" desc="Name plate">
							<DAI name="configRev">
								<Val>2023-04-04 22:48:07</Val>
							</DAI>
							<DAI name="ldNs">
								<Val>IEC 61850-7-4:2007B</Val>
							</DAI>
						</DOI>
						<DOI name="GrRef" desc="GrRef">
							<DAI name="setSrcRef">
								<Val>@BinIO</Val>
							</DAI>
						</DOI>
					</LN0>
					<LN lnClass="LPDO" inst="1" lnType="SIPROTEC5_LNType_LPDO_BinaryOutput" desc="Binary output  1.1" prefix="">
						<Private type="Siemens-MasterId">e3b17888-98fa-4f8a-b26c-6ead36f3f38e</Private>
						<DOI name="Mod" desc="Mode (status only)"/>
						<DOI name="Beh" desc="Behavior"/>
						<DOI name="Health" desc="Health"/>
						<DOI name="NamPlt" desc="Name plate">
							<DAI name="configRev">
								<Val>2023-04-04 22:48:07</Val>
							</DAI>
						</DOI>
						<DOI name="OutSPS" desc="Digital output"/>
					</LN>
					<LN lnClass="LPDO" inst="2" lnType="SIPROTEC5_LNType_LPDO_BinaryOutput" desc="Binary output  1.2" prefix="">
						<Private type="Siemens-MasterId">018f6aec-e2c4-4f9b-a2e3-390a26b9baa1</Private>
						<DOI name="Mod" desc="Mode (status only)"/>
						<DOI name="Beh" desc="Behavior"/>
						<DOI name="Health" desc="Health"/>
						<DOI name="NamPlt" desc="Name plate">
							<DAI name="configRev">
								<Val>2023-04-04 22:48:07</Val>
							</DAI>
						</DOI>
						<DOI name="OutSPS" desc="Digital output"/>
					</LN>
					<LN lnClass="LPDO" inst="3" lnType="SIPROTEC5_LNType_LPDO_BinaryOutput" desc="Binary output  1.3" prefix="">
						<Private type="Siemens-MasterId">a06d9b49-fa3d-4a59-9d58-79a5dc8a66dc</Private>
						<DOI name="Mod" desc="Mode (status only)"/>
						<DOI name="Beh" desc="Behavior"/>
						<DOI name="Health" desc="Health"/>
						<DOI name="NamPlt" desc="Name plate">
							<DAI name="configRev">
								<Val>2023-04-04 22:48:07</Val>
							</DAI>
						</DOI>
						<DOI name="OutSPS" desc="Digital output"/>
					</LN>
					<LN lnClass="LPDO" inst="4" lnType="SIPROTEC5_LNType_LPDO_BinaryOutput" desc="Binary output  1.4" prefix="">
						<Private type="Siemens-MasterId">e57f3d28-711e-46e8-a8ec-253460f9395d</Private>
						<DOI name="Mod" desc="Mode (status only)"/>
						<DOI name="Beh" desc="Behavior"/>
						<DOI name="Health" desc="Health"/>
						<DOI name="NamPlt" desc="Name plate">
							<DAI name="configRev">
								<Val>2023-04-04 22:48:07</Val>
							</DAI>
						</DOI>
						<DOI name="OutSPS" desc="Digital output"/>
					</LN>
					<LN lnClass="LPDO" inst="5" lnType="SIPROTEC5_LNType_LPDO_BinaryOutput" desc="Binary output  1.5" prefix="">
						<Private type="Siemens-MasterId">39e9a46c-6b51-4eed-b7a9-35cc43cb44b6</Private>
						<DOI name="Mod" desc="Mode (status only)"/>
						<DOI name="Beh" desc="Behavior"/>
						<DOI name="Health" desc="Health"/>
						<DOI name="NamPlt" desc="Name plate">
							<DAI name="configRev">
								<Val>2023-04-04 22:48:07</Val>
							</DAI>
						</DOI>
						<DOI name="OutSPS" desc="Digital output"/>
					</LN>
					<LN lnClass="LPDO" inst="6" lnType="SIPROTEC5_LNType_LPDO_BinaryOutput" desc="Binary output  1.6" prefix="">
						<Private type="Siemens-MasterId">a507eae5-bc9a-493c-8f18-f72f590e4154</Private>
						<DOI name="Mod" desc="Mode (status only)"/>
						<DOI name="Beh" desc="Behavior"/>
						<DOI name="Health" desc="Health"/>
						<DOI name="NamPlt" desc="Name plate">
							<DAI name="configRev">
								<Val>2023-04-04 22:48:07</Val>
							</DAI>
						</DOI>
						<DOI name="OutSPS" desc="Digital output"/>
					</LN>
					<LN lnClass="LPDO" inst="7" lnType="SIPROTEC5_LNType_LPDO_BinaryOutput" desc="Binary output  2.1" prefix="">
						<Private type="Siemens-MasterId">b70a6870-1abb-482a-9312-fe3caa5bd733</Private>
						<DOI name="Mod" desc="Mode (status only)"/>
						<DOI name="Beh" desc="Behavior"/>
						<DOI name="Health" desc="Health"/>
						<DOI name="NamPlt" desc="Name plate">
							<DAI name="configRev">
								<Val>2023-04-04 22:48:07</Val>
							</DAI>
						</DOI>
						<DOI name="OutSPS" desc="Digital output"/>
					</LN>
					<LN lnClass="LPDO" inst="8" lnType="SIPROTEC5_LNType_LPDO_BinaryOutput" desc="Binary output  2.2" prefix="">
						<Private type="Siemens-MasterId">67041417-0373-4cb6-bca2-5452cbcad502</Private>
						<DOI name="Mod" desc="Mode (status only)"/>
						<DOI name="Beh" desc="Behavior"/>
						<DOI name="Health" desc="Health"/>
						<DOI name="NamPlt" desc="Name plate">
							<DAI name="configRev">
								<Val>2023-04-04 22:48:07</Val>
							</DAI>
						</DOI>
						<DOI name="OutSPS" desc="Digital output"/>
					</LN>
					<LN lnClass="LPDO" inst="9" lnType="SIPROTEC5_LNType_LPDO_BinaryOutput" desc="Binary output  3.1" prefix="">
						<Private type="Siemens-MasterId">b799b7ee-3e15-4e42-9ae4-83bbe1b9bf2b</Private>
						<DOI name="Mod" desc="Mode (status only)"/>
						<DOI name="Beh" desc="Behavior"/>
						<DOI name="Health" desc="Health"/>
						<DOI name="NamPlt" desc="Name plate">
							<DAI name="configRev">
								<Val>2023-04-04 22:48:07</Val>
							</DAI>
						</DOI>
						<DOI name="OutSPS" desc="Digital output"/>
					</LN>
					<LN lnClass="LPDO" inst="10" lnType="SIPROTEC5_LNType_LPDO_BinaryOutput" desc="Binary output  3.2" prefix="">
						<Private type="Siemens-MasterId">2fa3a5b1-44b3-470d-bf5d-5306a8c00277</Private>
						<DOI name="Mod" desc="Mode (status only)"/>
						<DOI name="Beh" desc="Behavior"/>
						<DOI name="Health" desc="Health"/>
						<DOI name="NamPlt" desc="Name plate">
							<DAI name="configRev">
								<Val>2023-04-04 22:48:07</Val>
							</DAI>
						</DOI>
						<DOI name="OutSPS" desc="Digital output"/>
					</LN>
					<LN lnClass="LPDO" inst="11" lnType="SIPROTEC5_LNType_LPDO_BinaryOutput" desc="Binary output  3.3" prefix="">
						<Private type="Siemens-MasterId">9e7b17dc-2470-4ad6-a480-b4a60112f5e1</Private>
						<DOI name="Mod" desc="Mode (status only)"/>
						<DOI name="Beh" desc="Behavior"/>
						<DOI name="Health" desc="Health"/>
						<DOI name="NamPlt" desc="Name plate">
							<DAI name="configRev">
								<Val>2023-04-04 22:48:07</Val>
							</DAI>
						</DOI>
						<DOI name="OutSPS" desc="Digital output"/>
					</LN>
					<LN lnClass="LPDO" inst="12" lnType="SIPROTEC5_LNType_LPDO_BinaryOutput" desc="Binary output  3.4" prefix="">
						<Private type="Siemens-MasterId">73f763e1-4424-4356-b0eb-ddf75a1a0a94</Private>
						<DOI name="Mod" desc="Mode (status only)"/>
						<DOI name="Beh" desc="Behavior"/>
						<DOI name="Health" desc="Health"/>
						<DOI name="NamPlt" desc="Name plate">
							<DAI name="configRev">
								<Val>2023-04-04 22:48:07</Val>
							</DAI>
						</DOI>
						<DOI name="OutSPS" desc="Digital output"/>
					</LN>
					<LN lnClass="LPDO" inst="13" lnType="SIPROTEC5_LNType_LPDO_BinaryOutput" desc="Binary output  3.5" prefix="">
						<Private type="Siemens-MasterId">ffbe14fa-063b-4580-89fb-1fe0d3650302</Private>
						<DOI name="Mod" desc="Mode (status only)"/>
						<DOI name="Beh" desc="Behavior"/>
						<DOI name="Health" desc="Health"/>
						<DOI name="NamPlt" desc="Name plate">
							<DAI name="configRev">
								<Val>2023-04-04 22:48:07</Val>
							</DAI>
						</DOI>
						<DOI name="OutSPS" desc="Digital output"/>
					</LN>
					<LN lnClass="LPDO" inst="14" lnType="SIPROTEC5_LNType_LPDO_BinaryOutput" desc="Binary output  3.6" prefix="">
						<Private type="Siemens-MasterId">311d564d-cbc0-411e-9143-8de5399b5a56</Private>
						<DOI name="Mod" desc="Mode (status only)"/>
						<DOI name="Beh" desc="Behavior"/>
						<DOI name="Health" desc="Health"/>
						<DOI name="NamPlt" desc="Name plate">
							<DAI name="configRev">
								<Val>2023-04-04 22:48:07</Val>
							</DAI>
						</DOI>
						<DOI name="OutSPS" desc="Digital output"/>
					</LN>
				</LDevice>
				<LDevice desc="Breaker" inst="CB">
					<Private type="Siemens-MasterId">ace8dbf9-f636-4a3a-ba17-9a2610668852</Private>
					<LN0 lnClass="LLN0" inst="" lnType="SIPROTEC5_LNType_LLN0_LDevice_Generic" desc="CB/LLN0">
						<Private type="Siemens-MasterId">1b8b39eb-2f78-425a-9022-d5751dd60edc</Private>
						<DataSet name="Ind_1">
							<FCDA ldInst="CB" prefix="" lnClass="XCBR" lnInst="4" doName="Pos" daName="stVal" fc="ST"/>
							<FCDA ldInst="CB" prefix="" lnClass="XCBR" lnInst="4" doName="Pos" daName="q" fc="ST"/>
							<FCDA ldInst="DCB_Blocking" prefix="" lnClass="XSWI" lnInst="1" doName="Pos" daName="stVal" fc="ST"/>
							<FCDA ldInst="DCB_Blocking" prefix="" lnClass="XSWI" lnInst="1" doName="Pos" daName="q" fc="ST"/>
							<FCDA ldInst="CB" prefix="BI1_" lnClass="ZAXN" lnInst="1" doName="WetSupFail" daName="stVal" fc="ST"/>
							<FCDA ldInst="CB" prefix="BI1_" lnClass="ZAXN" lnInst="1" doName="WetSupFail" daName="q" fc="ST"/>
						</DataSet>
						<DOI name="Mod" desc="Mode (controllable)"/>
						<DOI name="Beh" desc="Behavior"/>
						<DOI name="Health" desc="Health"/>
						<DOI name="NamPlt" desc="Name plate">
							<DAI name="configRev">
								<Val>2023-04-19 10:34:17</Val>
							</DAI>
							<DAI name="ldNs">
								<Val>IEC 61850-7-4:2007B</Val>
							</DAI>
						</DOI>
						<DOI name="GrRef" desc="GrRef">
							<DAI name="setSrcRef">
								<Val>@Application</Val>
							</DAI>
						</DOI>
						<GSEControl name="Ind_1" datSet="Ind_1" confRev="1" type="GOOSE" appID="XAT_xxx_M2$Ind_1"/>
					</LN0>
					<LN lnClass="GAPC" inst="1" lnType="SIPROTEC5_LNType_GAPC_FB0_FGBreaker_1pol" desc="General" prefix="">
						<Private type="Siemens-MasterId">052b0f49-7b1b-4f52-b430-162015152c9e</Private>
						<DOI name="Mod" desc="Mode (status only)"/>
						<DOI name="Beh" desc="Behavior"/>
						<DOI name="Health" desc="Health"/>
						<DOI name="NamPlt" desc="Name plate">
							<DAI name="configRev">
								<Val>2023-04-04 22:48:07</Val>
							</DAI>
						</DOI>
					</LN>
					<LN lnClass="PTRC" inst="1" lnType="SIPROTEC5_LNType_PTRC_Trip_1_3pol" desc="Trip logic" prefix="">
						<Private type="Siemens-MasterId">c67c8175-ed4d-4fa1-9328-123c450a7217</Private>
						<DOI name="Mod" desc="Mode (controllable)"/>
						<DOI name="Beh" desc="Behavior"/>
						<DOI name="Health" desc="Health"/>
						<DOI name="NamPlt" desc="Name plate">
							<DAI name="configRev">
								<Val>2023-04-04 22:48:07</Val>
							</DAI>
						</DOI>
						<DOI name="Tr" desc="Trip indication"/>
						<DOI name="Op" desc="Operate"/>
						<DOI name="Str" desc="Pickup"/>
						<DOI name="Trip3pCoup" desc="1pole trip coupl.3pole"/>
						<DOI name="TrpBbpDiff" desc="Trip ind.:Busbar diff.prt."/>
						<DOI name="TrpBbpBFP" desc="Trip ind.:Busbar BFP"/>
						<DOI name="TrpBbpExt" desc="Trip ind.:Busbar ext.trip"/>
					</LN>
					<LN lnClass="XCBR" inst="4" lnType="SIPROTEC5_LNType_XCBR_1pol_Ctl" desc="Circuit break." prefix="">
						<Private type="Siemens-MasterId">38541d6a-8cdb-4119-9fed-829583625162</Private>
						<DOI name="Mod" desc="Mode (controllable)"/>
						<DOI name="Beh" desc="Behavior"/>
						<DOI name="Health" desc="Health"/>
						<DOI name="NamPlt" desc="Name plate">
							<DAI name="configRev">
								<Val>2023-04-04 22:48:07</Val>
							</DAI>
						</DOI>
						<DOI name="Loc" desc="Switching auth. local"/>
						<DOI name="EEHealth" desc="External health"/>
						<DOI name="OpCnt" desc="Op.ct."/>
						<DOI name="Pos" desc="Position 3-pole">
							<SDI name="pulseConfig">
								<DAI name="cmdQual">
									<Val>pulse</Val>
								</DAI>
								<DAI name="onDur">
									<Val>500</Val>
								</DAI>
								<DAI name="offDur">
									<Val>0</Val>
								</DAI>
								<DAI name="numPls">
									<Val>1</Val>
								</DAI>
							</SDI>
						</DOI>
						<DOI name="BlkOpn" desc="Block opening"/>
						<DOI name="BlkCls" desc="Block closing"/>
						<DOI name="SumSwARs" desc="ΣI Brk.">
							<SDI name="units">
								<DAI name="SIUnit">
									<Val>A</Val>
								</DAI>
							</SDI>
							<DAI name="pulsQty">
								<Val>0.001</Val>
							</DAI>
						</DOI>
						<DOI name="POWCap" desc="PoW capability"/>
						<DOI name="SetOpCntA" desc="Set op.counter phs A">
							<DAI name="maxVal">
								<Val>999999999</Val>
							</DAI>
						</DOI>
						<DOI name="SetOpCntB" desc="Set op.counter phs B">
							<DAI name="maxVal">
								<Val>999999999</Val>
							</DAI>
						</DOI>
						<DOI name="SetOpCntC" desc="Set op.counter phs C">
							<DAI name="maxVal">
								<Val>999999999</Val>
							</DAI>
						</DOI>
						<DOI name="SetOpnHrs" desc="Set CB open hours">
							<DAI name="maxVal">
								<Val>9999999</Val>
							</DAI>
						</DOI>
						<DOI name="SetOpHrs" desc="Set operating hours">
							<DAI name="maxVal">
								<Val>9999999</Val>
							</DAI>
						</DOI>
						<DOI name="SetSwASumA" desc="Set break.cur.sum phA">
							<SDI name="SBOw">
								<SDI name="ctlVal">
									<DAI name="f"/>
								</SDI>
							</SDI>
							<SDI name="Oper">
								<SDI name="ctlVal">
									<DAI name="f"/>
								</SDI>
							</SDI>
							<SDI name="Cancel">
								<SDI name="ctlVal">
									<DAI name="f"/>
								</SDI>
							</SDI>
						</DOI>
						<DOI name="SetSwASumB" desc="Set break.cur.sum phB">
							<SDI name="SBOw">
								<SDI name="ctlVal">
									<DAI name="f"/>
								</SDI>
							</SDI>
							<SDI name="Oper">
								<SDI name="ctlVal">
									<DAI name="f"/>
								</SDI>
							</SDI>
							<SDI name="Cancel">
								<SDI name="ctlVal">
									<DAI name="f"/>
								</SDI>
							</SDI>
						</DOI>
						<DOI name="SetSwASumC" desc="Set break.cur.sum phC">
							<SDI name="SBOw">
								<SDI name="ctlVal">
									<DAI name="f"/>
								</SDI>
							</SDI>
							<SDI name="Oper">
								<SDI name="ctlVal">
									<DAI name="f"/>
								</SDI>
							</SDI>
							<SDI name="Cancel">
								<SDI name="ctlVal">
									<DAI name="f"/>
								</SDI>
							</SDI>
						</DOI>
						<DOI name="AqBlk" desc="&gt;Acquisition blocking"/>
						<DOI name="Rdy" desc="&gt;Ready"/>
						<DOI name="RsSwStat" desc="&gt;Reset switch statist."/>
						<DOI name="RsAqBlkSub" desc="&gt;Reset AcqBlk&amp;Subst"/>
						<DOI name="TripRelViaBi" desc="&gt;Trip release BBP"/>
						<DOI name="TripOpnCmd" desc="Trip/open cmd. 3-pole"/>
						<DOI name="TripCmdA" desc="Trip only pole A"/>
						<DOI name="TripCmdB" desc="Trip only pole B"/>
						<DOI name="TripCmdC" desc="Trip only pole C"/>
						<DOI name="ClsCmd" desc="Close command"/>
						<DOI name="OpnCmdA" desc="Open cmd. 1-pole phsA"/>
						<DOI name="OpnCmdB" desc="Open cmd. 1-pole phsB"/>
						<DOI name="OpnCmdC" desc="Open cmd. 1-pole phsC"/>
						<DOI name="ClsCmdA" desc="Close cmd. 1-pole phsA"/>
						<DOI name="ClsCmdB" desc="Close cmd. 1-pole phsB"/>
						<DOI name="ClsCmdC" desc="Close cmd. 1-pole phsC"/>
						<DOI name="CmdActv" desc="Command active"/>
						<DOI name="AlmSupp" desc="Alarm suppression"/>
						<DOI name="DefTr" desc="Definitive trip"/>
						<DOI name="OpCntPhA" desc="Op.ct. A"/>
						<DOI name="OpCntPhB" desc="Op.ct. B"/>
						<DOI name="OpCntPhC" desc="Op.ct. C"/>
						<DOI name="SumSwARsA" desc="ΣIA Brk.">
							<SDI name="units">
								<DAI name="SIUnit">
									<Val>A</Val>
								</DAI>
							</SDI>
							<DAI name="pulsQty">
								<Val>0.001</Val>
							</DAI>
						</DOI>
						<DOI name="SumSwARsB" desc="ΣIB Brk.">
							<SDI name="units">
								<DAI name="SIUnit">
									<Val>A</Val>
								</DAI>
							</SDI>
							<DAI name="pulsQty">
								<Val>0.001</Val>
							</DAI>
						</DOI>
						<DOI name="SumSwARsC" desc="ΣIC Brk.">
							<SDI name="units">
								<DAI name="SIUnit">
									<Val>A</Val>
								</DAI>
							</SDI>
							<DAI name="pulsQty">
								<Val>0.001</Val>
							</DAI>
						</DOI>
						<DOI name="SwAphsA" desc="Break.-current phs A">
							<SDI name="units">
								<DAI name="SIUnit">
									<Val>A</Val>
								</DAI>
							</SDI>
						</DOI>
						<DOI name="SwAphsB" desc="Break.-current phs B">
							<SDI name="units">
								<DAI name="SIUnit">
									<Val>A</Val>
								</DAI>
							</SDI>
						</DOI>
						<DOI name="SwAphsC" desc="Break.-current phs C">
							<SDI name="units">
								<DAI name="SIUnit">
									<Val>A</Val>
								</DAI>
							</SDI>
						</DOI>
						<DOI name="SwANeut" desc="Break. current 3I0/IN">
							<SDI name="units">
								<DAI name="SIUnit">
									<Val>A</Val>
								</DAI>
							</SDI>
						</DOI>
						<DOI name="SwVphsA" desc="Break. voltage phs A">
							<SDI name="units">
								<DAI name="SIUnit">
									<Val>V</Val>
								</DAI>
								<DAI name="multiplier">
									<Val>k</Val>
								</DAI>
							</SDI>
						</DOI>
						<DOI name="SwVphsB" desc="Break. voltage phs B">
							<SDI name="units">
								<DAI name="SIUnit">
									<Val>V</Val>
								</DAI>
								<DAI name="multiplier">
									<Val>k</Val>
								</DAI>
							</SDI>
						</DOI>
						<DOI name="SwVphsC" desc="Break. voltage phs C">
							<SDI name="units">
								<DAI name="SIUnit">
									<Val>V</Val>
								</DAI>
								<DAI name="multiplier">
									<Val>k</Val>
								</DAI>
							</SDI>
						</DOI>
						<DOI name="CBOpnHrs" desc="CB open hours">
							<SDI name="units">
								<DAI name="SIUnit">
									<Val>h</Val>
								</DAI>
							</SDI>
						</DOI>
						<DOI name="OpHrs" desc="Operating hours">
							<SDI name="units">
								<DAI name="SIUnit">
									<Val>h</Val>
								</DAI>
							</SDI>
						</DOI>
						<DOI name="BbpBlockDO" desc="BBP trip relays blocked"/>
						<DOI name="NoTrpRelBi" desc="no release of trip cmd"/>
					</LN>
					<LN lnClass="XCBR" inst="1" lnType="SIPROTEC5_LNType_XCBR_1pol_PhsX" desc="CB phs A" prefix="">
						<Private type="Siemens-MasterId">6eecff4c-fd7b-46ae-b864-1ef6c3120e50</Private>
						<DOI name="Mod" desc="Mode (controllable)"/>
						<DOI name="Beh" desc="Behavior"/>
						<DOI name="Health" desc="Health"/>
						<DOI name="NamPlt" desc="Name plate">
							<DAI name="configRev">
								<Val>2023-04-04 22:48:07</Val>
							</DAI>
						</DOI>
						<DOI name="Loc" desc="Switching auth. local"/>
						<DOI name="OpCnt" desc="Op.ct."/>
						<DOI name="Pos" desc="Cmd. with feedback"/>
						<DOI name="BlkOpn" desc="Block opening"/>
						<DOI name="BlkCls" desc="Block closing"/>
						<DOI name="SumSwARs" desc="ΣI Brk.">
							<SDI name="units">
								<DAI name="SIUnit">
									<Val>A</Val>
								</DAI>
							</SDI>
						</DOI>
					</LN>
					<LN lnClass="XCBR" inst="2" lnType="SIPROTEC5_LNType_XCBR_1pol_PhsX" desc="CB phs B" prefix="">
						<Private type="Siemens-MasterId">9c6f6827-9f91-446a-a045-d2866045b21c</Private>
						<DOI name="Mod" desc="Mode (controllable)"/>
						<DOI name="Beh" desc="Behavior"/>
						<DOI name="Health" desc="Health"/>
						<DOI name="NamPlt" desc="Name plate">
							<DAI name="configRev">
								<Val>2023-04-04 22:48:07</Val>
							</DAI>
						</DOI>
						<DOI name="Loc" desc="Switching auth. local"/>
						<DOI name="OpCnt" desc="Op.ct."/>
						<DOI name="Pos" desc="Cmd. with feedback"/>
						<DOI name="BlkOpn" desc="Block opening"/>
						<DOI name="BlkCls" desc="Block closing"/>
						<DOI name="SumSwARs" desc="ΣI Brk.">
							<SDI name="units">
								<DAI name="SIUnit">
									<Val>A</Val>
								</DAI>
							</SDI>
						</DOI>
					</LN>
					<LN lnClass="XCBR" inst="3" lnType="SIPROTEC5_LNType_XCBR_1pol_PhsX" desc="CB phs C" prefix="">
						<Private type="Siemens-MasterId">819876c3-87b8-43bb-8a66-0924c63fc17d</Private>
						<DOI name="Mod" desc="Mode (controllable)"/>
						<DOI name="Beh" desc="Behavior"/>
						<DOI name="Health" desc="Health"/>
						<DOI name="NamPlt" desc="Name plate">
							<DAI name="configRev">
								<Val>2023-04-04 22:48:07</Val>
							</DAI>
						</DOI>
						<DOI name="Loc" desc="Switching auth. local"/>
						<DOI name="OpCnt" desc="Op.ct."/>
						<DOI name="Pos" desc="Cmd. with feedback"/>
						<DOI name="BlkOpn" desc="Block opening"/>
						<DOI name="BlkCls" desc="Block closing"/>
						<DOI name="SumSwARs" desc="ΣI Brk.">
							<SDI name="units">
								<DAI name="SIUnit">
									<Val>A</Val>
								</DAI>
							</SDI>
						</DOI>
					</LN>
					<LN lnClass="GAPC" inst="2" lnType="SIPROTEC5_LNType_GAPC_ManualClose" desc="Manual close" prefix="">
						<Private type="Siemens-MasterId">327a1237-81bd-4e7d-9b63-ded44c969ce1</Private>
						<DOI name="Mod" desc="Mode (controllable)"/>
						<DOI name="Beh" desc="Behavior"/>
						<DOI name="Health" desc="Health"/>
						<DOI name="NamPlt" desc="Name plate">
							<DAI name="configRev">
								<Val>2023-04-04 22:48:07</Val>
							</DAI>
						</DOI>
						<DOI name="Blk" desc="&gt;Block manual close"/>
						<DOI name="Input" desc="&gt;Input"/>
						<DOI name="Detected" desc="Detected"/>
						<DOI name="RxInput1" desc="RxInput1">
							<DAI name="dataNs">
								<Val>SIPROTEC5/userdefined</Val>
							</DAI>
						</DOI>
						<Inputs>
							<ExtRef desc="RxInput1" intAddr="RxInput1;/Ind/stVal" pServT="GOOSE" pDO="Ind" pDA="stVal"/>
							<ExtRef desc="RxInput1" intAddr="RxInput1;/Ind/q" pServT="GOOSE" pDO="Ind" pDA="q"/>
						</Inputs>
					</LN>
					<LN lnClass="GAPC" inst="1" lnType="SIPROTEC5_LNType_ResetLed" desc="Reset LED Group" prefix="RSLED">
						<Private type="Siemens-MasterId">d61b14fe-a62f-41d0-8bf2-10ed573f8709</Private>
						<DOI name="Mod" desc="Mode (controllable)"/>
						<DOI name="Beh" desc="Behavior"/>
						<DOI name="Health" desc="Health"/>
						<DOI name="NamPlt" desc="Name plate">
							<DAI name="configRev">
								<Val>2023-04-04 22:48:07</Val>
							</DAI>
						</DOI>
						<DOI name="ResetIn" desc="&gt;LED reset"/>
						<DOI name="LedTstOut" desc="LED have been reset"/>
						<DOI name="ResetCtl" desc="Reset LEDs"/>
					</LN>
					<LN lnClass="CSWI" inst="1" lnType="SIPROTEC5_LNType_CSWI" desc="Control" prefix="">
						<Private type="Siemens-MasterId">3d4d3739-14ce-4646-a5a4-9c7e0f8a92fd</Private>
						<Private type="Siemens-LN-Dependency"/>
						<DOI name="Mod" desc="Mode (controllable)"/>
						<DOI name="Beh" desc="Behavior"/>
						<DOI name="Health" desc="Health"/>
						<DOI name="NamPlt" desc="Name plate">
							<DAI name="configRev">
								<Val>2023-04-04 22:48:07</Val>
							</DAI>
						</DOI>
						<DOI name="Loc" desc="Switching auth. local"/>
						<DOI name="Pos" desc="Cmd. with feedback">
							<DAI name="ctlModel">
								<Val>direct-with-enhanced-security</Val>
							</DAI>
							<DAI name="sboTimeout">
								<Val>30000</Val>
							</DAI>
							<DAI name="operTimeout">
								<Val>1000</Val>
							</DAI>
						</DOI>
						<DOI name="LocKey" desc="Sw.author. key switch"/>
						<DOI name="LocSta" desc="Switching auth. station">
							<DAI name="ctlModel">
								<Val>status-only</Val>
							</DAI>
						</DOI>
						<DOI name="SwAuth" desc="Switching authority"/>
						<DOI name="SwMod" desc="Switching mode"/>
						<DOI name="SwAuthEna1" desc="Enable sw. auth. 1">
							<DAI name="operTimeout">
								<Val>1000</Val>
							</DAI>
						</DOI>
						<DOI name="SwAuthEna2" desc="Enable sw. auth. 2">
							<DAI name="operTimeout">
								<Val>1000</Val>
							</DAI>
						</DOI>
						<DOI name="SwAuthEna3" desc="Enable sw. auth. 3">
							<DAI name="operTimeout">
								<Val>1000</Val>
							</DAI>
						</DOI>
						<DOI name="SwAuthEna4" desc="Enable sw. auth. 4">
							<DAI name="operTimeout">
								<Val>1000</Val>
							</DAI>
						</DOI>
						<DOI name="SwAuthEna5" desc="Enable sw. auth. 5">
							<DAI name="operTimeout">
								<Val>1000</Val>
							</DAI>
						</DOI>
						<DOI name="OpOpn" desc="CB open command">
							<DAI name="dataNs">
								<Val>Transpower:2023</Val>
							</DAI>
						</DOI>
						<DOI name="OpCls" desc="CB close command">
							<DAI name="dataNs">
								<Val>Transpower:2023</Val>
							</DAI>
						</DOI>
						<DOI name="ClsCmdOK" desc="Cls Command OK">
							<DAI name="dataNs">
								<Val>Transpower:2023</Val>
							</DAI>
						</DOI>
						<DOI name="ClsCmdERR" desc="Cls Command ERR">
							<DAI name="dataNs">
								<Val>Transpower:2023</Val>
							</DAI>
						</DOI>
						<DOI name="OpnCmdOK" desc="Opn Command OK">
							<DAI name="dataNs">
								<Val>Transpower:2023</Val>
							</DAI>
						</DOI>
						<DOI name="OpnCmdERR" desc="Opn Command ERR">
							<DAI name="dataNs">
								<Val>Transpower:2023</Val>
							</DAI>
						</DOI>
						<Inputs>
							<ExtRef desc="CB open command" intAddr="OpOpn;/Ind/stVal" pServT="GOOSE" pDO="Ind" pDA="stVal"/>
							<ExtRef desc="CB open command" intAddr="OpOpn;/Ind/q" pServT="GOOSE" pDO="Ind" pDA="q"/>
							<ExtRef desc="CB open command" intAddr="OpOpn;/Ind/t" pServT="GOOSE" pDO="Ind" pDA="t"/>
							<ExtRef desc="CB close command" intAddr="OpCls;/Ind/stVal" pServT="GOOSE" pDO="Ind" pDA="stVal"/>
							<ExtRef desc="CB close command" intAddr="OpCls;/Ind/q" pServT="GOOSE" pDO="Ind" pDA="q"/>
							<ExtRef desc="CB close command" intAddr="OpCls;/Ind/t" pServT="GOOSE" pDO="Ind" pDA="t"/>
						</Inputs>
					</LN>
					<LN lnClass="CILO" inst="1" lnType="SIPROTEC5_LNType_CILO" desc="Interlocking" prefix="">
						<Private type="Siemens-MasterId">b7fbd74a-31bd-4bba-b624-ef773dfc1fd7</Private>
						<DOI name="Mod" desc="Mode (controllable)"/>
						<DOI name="Beh" desc="Behavior"/>
						<DOI name="Health" desc="Health"/>
						<DOI name="NamPlt" desc="Name plate">
							<DAI name="configRev">
								<Val>2023-04-04 22:48:07</Val>
							</DAI>
						</DOI>
						<DOI name="EnaOpn" desc="&gt;Enable opening"/>
						<DOI name="EnaCls" desc="&gt;Enable closing"/>
						<DOI name="EnaOpnFix" desc="&gt;Enable opening(fixed)"/>
						<DOI name="EnaClsFix" desc="&gt;Enable closing (fixed)"/>
					</LN>
					<LN lnClass="GAPC" inst="1" lnType="SIPROTEC5_LNType_GAPC_CBT_1pol" desc="CB test" prefix="CBT_">
						<Private type="Siemens-MasterId">7c4a6860-3133-44d3-a2f4-ab35a6c4e13f</Private>
						<DOI name="Mod" desc="Mode (controllable)"/>
						<DOI name="Beh" desc="Behavior"/>
						<DOI name="Health" desc="Health"/>
						<DOI name="NamPlt" desc="Name plate">
							<DAI name="configRev">
								<Val>2023-04-04 22:48:07</Val>
							</DAI>
						</DOI>
						<DOI name="StrTst3p" desc="3-pole open-close">
							<DAI name="operTimeout">
								<Val>6100</Val>
							</DAI>
						</DOI>
						<DOI name="StrTstPhsA" desc="Pole A open-close">
							<DAI name="operTimeout">
								<Val>6100</Val>
							</DAI>
						</DOI>
						<DOI name="StrTstPhsB" desc="Pole B open-close">
							<DAI name="operTimeout">
								<Val>6100</Val>
							</DAI>
						</DOI>
						<DOI name="StrTstPhsC" desc="Pole C open-close">
							<DAI name="operTimeout">
								<Val>6100</Val>
							</DAI>
						</DOI>
						<DOI name="TstExec" desc="Test execution"/>
						<DOI name="TstTr" desc="Trip command issued"/>
						<DOI name="TstCls" desc="Close command issued"/>
						<DOI name="TstCnc" desc="Test canceled"/>
					</LN>
					<LN lnClass="ZAXN" inst="1" lnType="SIPROTEC5_LNType_STCS_1BI_1_3pol" desc="Trip circuit sup." prefix="BI1_">
						<Private type="Siemens-MasterId">6441644f-bd97-431f-91da-176dd9e7fa70</Private>
						<DOI name="Mod" desc="Mode (controllable)"/>
						<DOI name="Beh" desc="Behavior"/>
						<DOI name="Health" desc="Health"/>
						<DOI name="NamPlt" desc="Name plate">
							<DAI name="configRev">
								<Val>2023-04-19 10:34:17</Val>
							</DAI>
						</DOI>
						<DOI name="Blk" desc="&gt;Block function"/>
						<DOI name="TripRelay1" desc="&gt;Trip relay phsA"/>
						<DOI name="TripRelay2" desc="&gt;Trip relay phsB"/>
						<DOI name="TripRelay3" desc="&gt;Trip relay phsC"/>
						<DOI name="Inactive" desc="Inactive"/>
						<DOI name="Failure1" desc="Trip-circuit fail.phsA"/>
						<DOI name="Failure2" desc="Trip-circuit fail.phsB"/>
						<DOI name="Failure3" desc="Trip-circuit fail.phsC"/>
						<DOI name="CfgErrPhA" desc="PhA input sig.n.routed"/>
						<DOI name="CfgErrPhB" desc="PhB input sig.n.routed"/>
						<DOI name="CfgErrPhC" desc="PhC input sig.n.routed"/>
						<DOI name="WetSupFail" desc="Wett.sup fail">
							<DAI name="dataNs">
								<Val>Transpower:2023</Val>
							</DAI>
						</DOI>
						<DOI name="Failure" desc="Failure">
							<DAI name="dataNs">
								<Val>Transpower:2023</Val>
							</DAI>
						</DOI>
					</LN>
				</LDevice>
				<LDevice desc="Breaker_FdOMV" inst="CB_Fundamental">
					<Private type="Siemens-MasterId">5df57f5b-b59c-4eb8-ae06-db92952ed43e</Private>
					<LN0 lnClass="LLN0" inst="" lnType="SIPROTEC5_LNType_LLN0_LDevice_Generic" desc="CB_Fundamental/LLN0">
						<Private type="Siemens-MasterId">e913220a-8888-4128-af4d-441d491a92c5</Private>
						<DOI name="Mod" desc="Mode (controllable)"/>
						<DOI name="Beh" desc="Behavior"/>
						<DOI name="Health" desc="Health"/>
						<DOI name="NamPlt" desc="Name plate">
							<DAI name="configRev">
								<Val>2023-04-04 22:48:07</Val>
							</DAI>
							<DAI name="ldNs">
								<Val>IEC 61850-7-4:2007B</Val>
							</DAI>
						</DOI>
						<DOI name="GrRef" desc="GrRef">
							<DAI name="setSrcRef">
								<Val>@CB</Val>
							</DAI>
						</DOI>
					</LN0>
					<LN lnClass="MMXU" inst="1" lnType="SIPROTEC5_LNType_MMXU_OpMeas_Fund_3ph_Pres" desc="Fundam" prefix="FPRE_">
						<Private type="Siemens-MasterId">fe0c980e-e0b0-4e85-9034-e530a5c943c4</Private>
						<DOI name="Mod" desc="Mode (controllable)"/>
						<DOI name="Beh" desc="Behavior"/>
						<DOI name="Health" desc="Health"/>
						<DOI name="NamPlt" desc="Name plate">
							<DAI name="configRev">
								<Val>2023-04-04 22:48:07</Val>
							</DAI>
						</DOI>
						<DOI name="PPV" desc="Vpp">
							<SDI name="phsAB" desc="Vpp:AB">
								<SDI name="units">
									<DAI name="SIUnit">
										<Val>V</Val>
									</DAI>
									<DAI name="multiplier">
										<Val>k</Val>
									</DAI>
								</SDI>
								<DAI name="db">
									<Val>2000</Val>
								</DAI>
								<DAI name="dbRef">
									<Val>220</Val>
								</DAI>
							</SDI>
							<SDI name="phsBC" desc="Vpp:BC">
								<SDI name="units">
									<DAI name="SIUnit">
										<Val>V</Val>
									</DAI>
									<DAI name="multiplier">
										<Val>k</Val>
									</DAI>
								</SDI>
								<DAI name="db">
									<Val>2000</Val>
								</DAI>
								<DAI name="dbRef">
									<Val>220</Val>
								</DAI>
							</SDI>
							<SDI name="phsCA" desc="Vpp:CA">
								<SDI name="units">
									<DAI name="SIUnit">
										<Val>V</Val>
									</DAI>
									<DAI name="multiplier">
										<Val>k</Val>
									</DAI>
								</SDI>
								<DAI name="db">
									<Val>2000</Val>
								</DAI>
								<DAI name="dbRef">
									<Val>220</Val>
								</DAI>
							</SDI>
						</DOI>
						<DOI name="PhV" desc="Vph">
							<SDI name="phsA" desc="Vph:A">
								<SDI name="units">
									<DAI name="SIUnit">
										<Val>V</Val>
									</DAI>
									<DAI name="multiplier">
										<Val>k</Val>
									</DAI>
								</SDI>
								<DAI name="db">
									<Val>2000</Val>
								</DAI>
								<DAI name="dbRef">
									<Val>127.02079</Val>
								</DAI>
							</SDI>
							<SDI name="phsB" desc="Vph:B">
								<SDI name="units">
									<DAI name="SIUnit">
										<Val>V</Val>
									</DAI>
									<DAI name="multiplier">
										<Val>k</Val>
									</DAI>
								</SDI>
								<DAI name="db">
									<Val>2000</Val>
								</DAI>
								<DAI name="dbRef">
									<Val>127.02079</Val>
								</DAI>
							</SDI>
							<SDI name="phsC" desc="Vph:C">
								<SDI name="units">
									<DAI name="SIUnit">
										<Val>V</Val>
									</DAI>
									<DAI name="multiplier">
										<Val>k</Val>
									</DAI>
								</SDI>
								<DAI name="db">
									<Val>2000</Val>
								</DAI>
								<DAI name="dbRef">
									<Val>127.02079</Val>
								</DAI>
							</SDI>
							<SDI name="res" desc="Vph:res">
								<SDI name="units">
									<DAI name="SIUnit">
										<Val>V</Val>
									</DAI>
								</SDI>
								<DAI name="db">
									<Val>20000</Val>
								</DAI>
								<DAI name="dbRef">
									<Val>127.02079</Val>
								</DAI>
							</SDI>
						</DOI>
						<DOI name="A" desc="Iph">
							<SDI name="phsA" desc="Iph:A">
								<SDI name="units">
									<DAI name="SIUnit">
										<Val>A</Val>
									</DAI>
								</SDI>
								<DAI name="db">
									<Val>10000</Val>
								</DAI>
								<DAI name="dbRef">
									<Val>400</Val>
								</DAI>
							</SDI>
							<SDI name="phsB" desc="Iph:B">
								<SDI name="units">
									<DAI name="SIUnit">
										<Val>A</Val>
									</DAI>
								</SDI>
								<DAI name="db">
									<Val>10000</Val>
								</DAI>
								<DAI name="dbRef">
									<Val>400</Val>
								</DAI>
							</SDI>
							<SDI name="phsC" desc="Iph:C">
								<SDI name="units">
									<DAI name="SIUnit">
										<Val>A</Val>
									</DAI>
								</SDI>
								<DAI name="db">
									<Val>10000</Val>
								</DAI>
								<DAI name="dbRef">
									<Val>400</Val>
								</DAI>
							</SDI>
							<SDI name="res" desc="Iph:res">
								<SDI name="units">
									<DAI name="SIUnit">
										<Val>A</Val>
									</DAI>
								</SDI>
								<DAI name="db">
									<Val>100000</Val>
								</DAI>
								<DAI name="dbRef">
									<Val>400</Val>
								</DAI>
							</SDI>
						</DOI>
						<DOI name="VneutC" desc="VN">
							<SDI name="units">
								<DAI name="SIUnit">
									<Val>V</Val>
								</DAI>
								<DAI name="multiplier">
									<Val>k</Val>
								</DAI>
							</SDI>
							<DAI name="db">
								<Val>2000</Val>
							</DAI>
							<DAI name="dbRef">
								<Val>127.02079</Val>
							</DAI>
						</DOI>
						<DOI name="AneutC" desc="IN">
							<SDI name="units">
								<DAI name="SIUnit">
									<Val>A</Val>
								</DAI>
							</SDI>
							<DAI name="db">
								<Val>10000</Val>
							</DAI>
							<DAI name="dbRef">
								<Val>400</Val>
							</DAI>
						</DOI>
					</LN>
				</LDevice>
				<LDevice desc="Com. supervision" inst="ComSupervision">
					<Private type="Siemens-MasterId">dc39701f-d941-42f2-8c65-69e5d4467fec</Private>
					<LN0 lnClass="LLN0" inst="" lnType="SIPROTEC5_LNType_LLN0_LDevice_Generic" desc="ComSupervision/LLN0">
						<Private type="Siemens-MasterId">0cb02d56-c9c3-4b57-8ee8-b7a877c82a1d</Private>
						<DOI name="Mod" desc="Mode (controllable)"/>
						<DOI name="Beh" desc="Behavior"/>
						<DOI name="Health" desc="Health"/>
						<DOI name="NamPlt" desc="Name plate">
							<DAI name="configRev">
								<Val>2023-01-05 21:44:38</Val>
							</DAI>
							<DAI name="ldNs">
								<Val>IEC 61850-7-4:2007B</Val>
							</DAI>
						</DOI>
						<DOI name="GrRef" desc="GrRef">
							<DAI name="setSrcRef">
								<Val>@Application</Val>
							</DAI>
						</DOI>
					</LN0>
				</LDevice>
				<LDevice desc="Com. supervision_GOOSE supervis." inst="ComSupervision_GOOSE">
					<Private type="Siemens-MasterId">3b969d6f-219e-450d-b5bd-3d53fc3a92de</Private>
					<LN0 lnClass="LLN0" inst="" lnType="SIPROTEC5_LNType_LLN0_LDevice_Generic" desc="ComSupervision_GOOSE/LLN0">
						<Private type="Siemens-MasterId">7943b8ef-39b9-436d-a062-2925dc96f618</Private>
						<DOI name="Mod" desc="Mode (controllable)"/>
						<DOI name="Beh" desc="Behavior"/>
						<DOI name="Health" desc="Health"/>
						<DOI name="NamPlt" desc="Name plate">
							<DAI name="configRev">
								<Val>2023-04-04 22:48:07</Val>
							</DAI>
							<DAI name="ldNs">
								<Val>IEC 61850-7-4:2007B</Val>
							</DAI>
						</DOI>
						<DOI name="GrRef" desc="GrRef">
							<DAI name="setSrcRef">
								<Val>@ComSupervision</Val>
							</DAI>
						</DOI>
					</LN0>
					<LN lnClass="CALH" inst="1" lnType="SIPROTEC5_LNType_CALH_LGOS" desc="Group Indicat." prefix="">
						<Private type="Siemens-MasterId">ae34f558-4efb-4b74-a866-146f18d27a8d</Private>
						<DOI name="Mod" desc="Mode (controllable)"/>
						<DOI name="Beh" desc="Behavior"/>
						<DOI name="Health" desc="Health"/>
						<DOI name="NamPlt" desc="Name plate">
							<DAI name="configRev">
								<Val>2023-04-04 22:48:07</Val>
							</DAI>
						</DOI>
						<DOI name="GrAlm" desc="Group alarm"/>
						<DOI name="GrInd" desc="Group indication"/>
					</LN>
					<LN lnClass="LGOS" inst="1" lnType="SIPROTEC5_LNType_LGOS" desc="Bay" prefix="">
						<Private type="Siemens-MasterId">517f8584-a219-493b-ac16-422a770d590d</Private>
						<DOI name="Mod" desc="Mode (controllable)"/>
						<DOI name="Beh" desc="Behavior"/>
						<DOI name="Health" desc="Health"/>
						<DOI name="NamPlt" desc="Name plate">
							<DAI name="configRev">
								<Val>2023-04-04 22:48:07</Val>
							</DAI>
						</DOI>
						<DOI name="NdsCom" desc="Needs commissioning"/>
						<DOI name="St" desc="Status subscription"/>
						<DOI name="SimSt" desc="Status Sim messages"/>
						<DOI name="ConfRevNum" desc="Exp. conf. rev."/>
						<DOI name="RxConfRevNum" desc="Rec. conf. rev."/>
						<DOI name="GoCBRef" desc="Ref. GOOSE CB"/>
						<DOI name="DiagErr" desc="Diagnosis error"/>
					</LN>
					<LN lnClass="LGOS" inst="2" lnType="SIPROTEC5_LNType_LGOS" desc="Busbar" prefix="">
						<Private type="Siemens-MasterId">a9948165-f5bb-4596-b023-a85599e70f79</Private>
						<DOI name="Mod" desc="Mode (controllable)"/>
						<DOI name="Beh" desc="Behavior"/>
						<DOI name="Health" desc="Health"/>
						<DOI name="NamPlt" desc="Name plate">
							<DAI name="configRev">
								<Val>2023-04-04 22:48:07</Val>
							</DAI>
						</DOI>
						<DOI name="NdsCom" desc="Needs commissioning"/>
						<DOI name="St" desc="Status subscription"/>
						<DOI name="SimSt" desc="Status Sim messages"/>
						<DOI name="ConfRevNum" desc="Exp. conf. rev."/>
						<DOI name="RxConfRevNum" desc="Rec. conf. rev."/>
						<DOI name="GoCBRef" desc="Ref. GOOSE CB"/>
						<DOI name="DiagErr" desc="Diagnosis error"/>
					</LN>
				</LDevice>
				<LDevice desc="DCB blocking device" inst="DCB_Blocking">
					<Private type="Siemens-MasterId">f4ff479d-9e63-4faa-a357-4a0c11f5e323</Private>
					<LN0 lnClass="LLN0" inst="" lnType="SIPROTEC5_LNType_LLN0_LDevice_Generic" desc="DCB_Blocking/LLN0">
						<Private type="Siemens-MasterId">ba9a4def-1c51-4bae-9e4e-38daee637a99</Private>
						<DOI name="Mod" desc="Mode (controllable)"/>
						<DOI name="Beh" desc="Behavior"/>
						<DOI name="Health" desc="Health"/>
						<DOI name="NamPlt" desc="Name plate">
							<DAI name="configRev">
								<Val>2023-04-04 22:48:07</Val>
							</DAI>
							<DAI name="ldNs">
								<Val>IEC 61850-7-4:2007B</Val>
							</DAI>
						</DOI>
						<DOI name="GrRef" desc="GrRef">
							<DAI name="setSrcRef">
								<Val>@Application</Val>
							</DAI>
						</DOI>
					</LN0>
					<LN lnClass="XSWI" inst="1" lnType="SIPROTEC5_LNType_XSWI_StatusOnly" desc="Blocking" prefix="">
						<Private type="Siemens-MasterId">6514b715-718b-46b5-8cc7-74d74fe7a270</Private>
						<DOI name="Mod" desc="Mode (status only)"/>
						<DOI name="Beh" desc="Behavior"/>
						<DOI name="Health" desc="Health"/>
						<DOI name="NamPlt" desc="Name plate">
							<DAI name="configRev">
								<Val>2023-04-04 22:48:07</Val>
							</DAI>
						</DOI>
						<DOI name="Loc" desc="Switching auth. local"/>
						<DOI name="OpCnt" desc="Op.ct."/>
						<DOI name="Pos" desc="Position"/>
						<DOI name="BlkOpn" desc="Block opening"/>
						<DOI name="BlkCls" desc="Block closing"/>
						<DOI name="SwTyp" desc="Switching-device type"/>
						<DOI name="AqBlk" desc="&gt;Acquisition blocking"/>
					</LN>
				</LDevice>
				<LDevice desc="F:ETH-BD-2FO" inst="PortF">
					<Private type="Siemens-MasterId">47ea78a6-076b-4fac-bb92-29f3e6e38822</Private>
					<LN0 lnClass="LLN0" inst="" lnType="SIPROTEC5_LNType_LLN0_LDevice_Generic" desc="PortF/LLN0">
						<Private type="Siemens-MasterId">bd9036a9-d026-4b03-b73d-e7d37dfc0807</Private>
						<DOI name="Mod" desc="Mode (controllable)"/>
						<DOI name="Beh" desc="Behavior"/>
						<DOI name="Health" desc="Health"/>
						<DOI name="NamPlt" desc="Name plate">
							<DAI name="configRev">
								<Val>2023-01-05 21:44:38</Val>
							</DAI>
							<DAI name="ldNs">
								<Val>IEC 61850-7-4:2007B</Val>
							</DAI>
						</DOI>
						<DOI name="GrRef" desc="GrRef">
							<DAI name="setSrcRef">
								<Val>@Application</Val>
							</DAI>
						</DOI>
					</LN0>
				</LDevice>
				<LDevice desc="F:ETH-BD-2FO_Chan.1" inst="PortF_Channel1">
					<Private type="Siemens-MasterId">1cfc3d75-c565-4eb6-8216-b97bd24e0fc5</Private>
					<LN0 lnClass="LLN0" inst="" lnType="SIPROTEC5_LNType_LLN0_LDevice_Generic" desc="PortF_Channel1/LLN0">
						<Private type="Siemens-MasterId">342c96bc-ef90-4352-8869-429ceed559d3</Private>
						<DOI name="Mod" desc="Mode (controllable)"/>
						<DOI name="Beh" desc="Behavior"/>
						<DOI name="Health" desc="Health"/>
						<DOI name="NamPlt" desc="Name plate">
							<DAI name="configRev">
								<Val>2023-04-26 03:30:15</Val>
							</DAI>
							<DAI name="ldNs">
								<Val>IEC 61850-7-4:2007B</Val>
							</DAI>
						</DOI>
						<DOI name="GrRef" desc="GrRef">
							<DAI name="setSrcRef">
								<Val>@PortF</Val>
							</DAI>
						</DOI>
					</LN0>
					<LN lnClass="LCCH" inst="1" lnType="SIPROTEC5_LNType_LCCH_PRP" desc="PRP" prefix="PRP_">
						<Private type="Siemens-MasterId">f7696df7-d69f-4c63-9a4d-540db5d2cb70</Private>
						<DOI name="Mod" desc="Mode (controllable)"/>
						<DOI name="Beh" desc="Behavior"/>
						<DOI name="Health" desc="Health"/>
						<DOI name="NamPlt" desc="Name plate">
							<DAI name="configRev">
								<Val>2023-04-26 02:06:09</Val>
							</DAI>
						</DOI>
						<DOI name="ChLiv" desc="Channel Live"/>
						<DOI name="RedChLiv" desc="Redund. Channel Live"/>
						<DOI name="ChFail" desc="Channel 1 Fail">
							<DAI name="dataNs">
								<Val>Transpower:2023</Val>
							</DAI>
						</DOI>
						<DOI name="RedChFail" desc="Channel 2 Fail">
							<DAI name="dataNs">
								<Val>Transpower:2023</Val>
							</DAI>
						</DOI>
					</LN>
					<LN lnClass="LTPC" inst="1" lnType="SIPROTEC5_LNType_LTPC_IEEE1588HiAcc" desc="IEEE 1588" prefix="PTP_">
						<Private type="Siemens-MasterId">96a35641-3014-45ee-8064-824514f5a212</Private>
						<DOI name="Mod" desc="Mode (controllable)"/>
						<DOI name="Beh" desc="Behavior"/>
						<DOI name="Health" desc="Health"/>
						<DOI name="NamPlt" desc="Name plate">
							<DAI name="configRev">
								<Val>2023-04-26 03:30:15</Val>
							</DAI>
							<DAI name="lnNs">
								<Val>(Tr)IEC 61850-90-4:2018A</Val>
							</DAI>
						</DOI>
						<DOI name="ClkAcc" desc="Clock accuracy"/>
						<DOI name="ClkClass" desc="Clock class"/>
						<DOI name="ClkId" desc="Clock identity"/>
						<DOI name="GmClkClass" desc="GM clock class"/>
						<DOI name="GmClkId" desc="GM clock identity"/>
						<DOI name="GmClkPrio1" desc="GM clock priority 1"/>
						<DOI name="GmClkPrio2" desc="GM clock priority 2"/>
						<DOI name="GmClkAcc" desc="GM clock accuracy"/>
						<DOI name="MePathDlTmns" desc="Mean path delay"/>
						<DOI name="NumPorts" desc="Number of ports"/>
						<DOI name="OfsMaster" desc="Offset from master">
							<SDI name="units">
								<DAI name="SIUnit">
									<Val>ns</Val>
								</DAI>
							</SDI>
						</DOI>
						<DOI name="OfsUtc" desc="UtcOffset valid"/>
						<DOI name="OfsUtcTms" desc="UtcOffset">
							<SDI name="units">
								<DAI name="SIUnit">
									<Val>s</Val>
								</DAI>
							</SDI>
						</DOI>
						<DOI name="PrntClkId" desc="Master-clock identity"/>
						<DOI name="Stepsr" desc="Steps removed"/>
						<DOI name="TmSrcVal" desc="Time source"/>
						<DOI name="TwoStep" desc="2-step"/>
						<DOI name="PrntPortId" desc="Master-port identity"/>
						<DOI name="GmClkVar" desc="GmClkVar"/>
						<DOI name="ClkVar" desc="Clock variance"/>
						<DOI name="ClkPrio1" desc="Clock priority 1">
							<DAI name="setVal">
								<Val>255</Val>
							</DAI>
							<DAI name="maxVal">
								<Val>255</Val>
							</DAI>
							<DAI name="stepSize">
								<Val>1</Val>
							</DAI>
						</DOI>
						<DOI name="ClkPrio2" desc="Clock priority 2">
							<DAI name="setVal">
								<Val>255</Val>
							</DAI>
							<DAI name="maxVal">
								<Val>255</Val>
							</DAI>
							<DAI name="stepSize">
								<Val>1</Val>
							</DAI>
						</DOI>
						<DOI name="DomainNum" desc="Domain number">
							<DAI name="setVal">
								<Val>0</Val>
							</DAI>
							<DAI name="maxVal">
								<Val>255</Val>
							</DAI>
							<DAI name="stepSize">
								<Val>1</Val>
							</DAI>
						</DOI>
						<DOI name="OfsLimTmns" desc="Max. offset from master">
							<DAI name="setVal">
								<Val>1000</Val>
							</DAI>
							<DAI name="maxVal">
								<Val>10000</Val>
							</DAI>
							<DAI name="stepSize">
								<Val>1</Val>
							</DAI>
						</DOI>
						<DOI name="Slave" desc="Slave only">
							<DAI name="setVal">
								<Val>true</Val>
							</DAI>
						</DOI>
						<DOI name="PrntPortNum" desc="Master-port identity">
							<DAI name="setVal">
								<Val>0</Val>
							</DAI>
							<DAI name="maxVal">
								<Val>255</Val>
							</DAI>
							<DAI name="stepSize">
								<Val>1</Val>
							</DAI>
						</DOI>
						<DOI name="ChLiv" desc="Channel Live"/>
						<DOI name="ServoStatus" desc="Clock servo status"/>
						<DOI name="ChFail" desc="PTP Failed">
							<DAI name="dataNs">
								<Val>Transpower:2023</Val>
							</DAI>
						</DOI>
					</LN>
					<LN lnClass="LCCH" inst="1" lnType="SIPROTEC5_LNType_LCCH_SNMP" desc="SNMP" prefix="SNMP_">
						<Private type="Siemens-MasterId">204a771a-6509-4dda-8437-b5a295df2555</Private>
						<DOI name="Mod" desc="Mode (controllable)"/>
						<DOI name="Beh" desc="Behavior"/>
						<DOI name="Health" desc="Health"/>
						<DOI name="NamPlt" desc="Name plate">
							<DAI name="configRev">
								<Val>2023-04-04 22:48:07</Val>
							</DAI>
						</DOI>
						<DOI name="ChLiv" desc="Channel Live"/>
					</LN>
					<LN lnClass="LCCH" inst="1" lnType="SIPROTEC5_LNType_LCCH_SNMP" desc="IEC 61850-8-1" prefix="">
						<Private type="Siemens-MasterId">e0f0c289-640b-403a-8f4d-523c41458a7e</Private>
						<DOI name="Mod" desc="Mode (controllable)"/>
						<DOI name="Beh" desc="Behavior"/>
						<DOI name="Health" desc="Health"/>
						<DOI name="NamPlt" desc="Name plate">
							<DAI name="configRev">
								<Val>2023-04-04 22:48:07</Val>
							</DAI>
						</DOI>
						<DOI name="ChLiv" desc="Channel Live"/>
					</LN>
					<LN lnClass="LCCH" inst="1" lnType="SIPROTEC5_LNType_LCCH_SNMP" desc="9-2 Merg.unit" prefix="PBMU_">
						<Private type="Siemens-MasterId">2857c61f-bc8d-4a7b-972e-a825b32e567e</Private>
						<DOI name="Mod" desc="Mode (status only)"/>
						<DOI name="Beh" desc="Behavior"/>
						<DOI name="Health" desc="Health"/>
						<DOI name="NamPlt" desc="Name plate">
							<DAI name="configRev">
								<Val>2023-04-04 22:48:07</Val>
							</DAI>
						</DOI>
						<DOI name="ChLiv" desc="Channel Live"/>
					</LN>
					<LN lnClass="LCCH" inst="1" lnType="SIPROTEC5_LNType_LCCH_SNMP" desc="IEEE 1588 Chan" prefix="PTP_">
						<Private type="Siemens-MasterId">96a35641-3014-45ee-8064-824514f5a212</Private>
						<DOI name="Mod" desc="Mode (controllable)"/>
						<DOI name="Beh" desc="Behavior"/>
						<DOI name="Health" desc="Health"/>
						<DOI name="NamPlt" desc="Name plate">
							<DAI name="configRev">
								<Val>2023-04-19 10:34:17</Val>
							</DAI>
						</DOI>
						<DOI name="ChLiv" desc="Channel Live"/>
					</LN>
				</LDevice>
				<LDevice desc="F:ETH-BD-2FO_MU 1" inst="PortF_MU1">
					<Private type="Siemens-MasterId">380ee1de-782c-4066-96e6-6c34635e05ba</Private>
					<LN0 lnClass="LLN0" inst="" lnType="SIPROTEC5_LNType_LLN0_LDevice_Generic" desc="PortF_MU1/LLN0">
						<Private type="Siemens-MasterId">87ec8c5a-d266-41bb-8f85-a1c94be03aea</Private>
						<DataSet name="PhsMeas3">
							<Private type="Siemens-GUID">3f2113ff-7a89-485a-b14c-30ecca1a4445</Private>
							<FCDA ldInst="PowS_PhaseCT" prefix="I01A" lnClass="TCTR" lnInst="1" doName="AmpSv" daName="instMag.i" fc="MX"/>
							<FCDA ldInst="PowS_PhaseCT" prefix="I01A" lnClass="TCTR" lnInst="1" doName="AmpSv" daName="q" fc="MX"/>
							<FCDA ldInst="PowS_PhaseCT" prefix="I01B" lnClass="TCTR" lnInst="2" doName="AmpSv" daName="instMag.i" fc="MX"/>
							<FCDA ldInst="PowS_PhaseCT" prefix="I01B" lnClass="TCTR" lnInst="2" doName="AmpSv" daName="q" fc="MX"/>
							<FCDA ldInst="PowS_PhaseCT" prefix="I01C" lnClass="TCTR" lnInst="3" doName="AmpSv" daName="instMag.i" fc="MX"/>
							<FCDA ldInst="PowS_PhaseCT" prefix="I01C" lnClass="TCTR" lnInst="3" doName="AmpSv" daName="q" fc="MX"/>
							<FCDA ldInst="PowS_PhaseCT" prefix="I01N" lnClass="TCTR" lnInst="4" doName="AmpSv" daName="instMag.i" fc="MX"/>
							<FCDA ldInst="PowS_PhaseCT" prefix="I01N" lnClass="TCTR" lnInst="4" doName="AmpSv" daName="q" fc="MX"/>
							<FCDA ldInst="PowS_SingleCT1" prefix="I01A" lnClass="TCTR" lnInst="1" doName="AmpSv" daName="instMag.i" fc="MX"/>
							<FCDA ldInst="PowS_SingleCT1" prefix="I01A" lnClass="TCTR" lnInst="1" doName="AmpSv" daName="q" fc="MX"/>
							<FCDA ldInst="PowS_SingleCT2" prefix="I02A" lnClass="TCTR" lnInst="1" doName="AmpSv" daName="instMag.i" fc="MX"/>
							<FCDA ldInst="PowS_SingleCT2" prefix="I02A" lnClass="TCTR" lnInst="1" doName="AmpSv" daName="q" fc="MX"/>
							<FCDA ldInst="PowS_SingleCT3" prefix="I03A" lnClass="TCTR" lnInst="1" doName="AmpSv" daName="instMag.i" fc="MX"/>
							<FCDA ldInst="PowS_SingleCT3" prefix="I03A" lnClass="TCTR" lnInst="1" doName="AmpSv" daName="q" fc="MX"/>
							<FCDA ldInst="PowS_SingleCT4" prefix="I04A" lnClass="TCTR" lnInst="1" doName="AmpSv" daName="instMag.i" fc="MX"/>
							<FCDA ldInst="PowS_SingleCT4" prefix="I04A" lnClass="TCTR" lnInst="1" doName="AmpSv" daName="q" fc="MX"/>
							<FCDA ldInst="PowS_PhaseVT" prefix="U01A" lnClass="TVTR" lnInst="1" doName="VolSv" daName="instMag.i" fc="MX"/>
							<FCDA ldInst="PowS_PhaseVT" prefix="U01A" lnClass="TVTR" lnInst="1" doName="VolSv" daName="q" fc="MX"/>
							<FCDA ldInst="PowS_PhaseVT" prefix="U01B" lnClass="TVTR" lnInst="2" doName="VolSv" daName="instMag.i" fc="MX"/>
							<FCDA ldInst="PowS_PhaseVT" prefix="U01B" lnClass="TVTR" lnInst="2" doName="VolSv" daName="q" fc="MX"/>
							<FCDA ldInst="PowS_PhaseVT" prefix="U01C" lnClass="TVTR" lnInst="3" doName="VolSv" daName="instMag.i" fc="MX"/>
							<FCDA ldInst="PowS_PhaseVT" prefix="U01C" lnClass="TVTR" lnInst="3" doName="VolSv" daName="q" fc="MX"/>
							<FCDA ldInst="PowS_SingleVT" prefix="U01A" lnClass="TVTR" lnInst="1" doName="VolSv" daName="instMag.i" fc="MX"/>
							<FCDA ldInst="PowS_SingleVT" prefix="U01A" lnClass="TVTR" lnInst="1" doName="VolSv" daName="q" fc="MX"/>
						</DataSet>
						<DOI name="Mod" desc="Mode (controllable)"/>
						<DOI name="Beh" desc="Behavior"/>
						<DOI name="Health" desc="Health"/>
						<DOI name="NamPlt" desc="Name plate">
							<DAI name="configRev">
								<Val>2023-04-04 22:48:07</Val>
							</DAI>
							<DAI name="ldNs">
								<Val>IEC 61850-7-4:2007B</Val>
							</DAI>
						</DOI>
						<DOI name="GrRef" desc="GrRef">
							<DAI name="setSrcRef">
								<Val>@PortF</Val>
							</DAI>
						</DOI>
						<SampledValueControl name="MSVCB01" datSet="PhsMeas3" confRev="1" smvID="24576" multicast="true" smpRate="4000" nofASDU="1" smpMod="SmpPerSec">
							<SmvOpts refreshTime="false" sampleSynchronized="true" sampleRate="false" dataSet="false" security="false" synchSourceId="true"/>
						</SampledValueControl>
					</LN0>
					<LN lnClass="LPHD" inst="1" lnType="SIPROTEC5_LNType_LPHD_LD_PBMergingUnit" desc="Device MU" prefix="">
						<Private type="Siemens-MasterId">e27ba4f1-0afd-4c91-bcd1-d8910abb09a8</Private>
						<DOI name="NamPlt" desc="Name plate">
							<DAI name="configRev">
								<Val>2023-04-04 22:48:07</Val>
							</DAI>
							<DAI name="lnNs">
								<Val>IEC 61869-9:2016A</Val>
							</DAI>
						</DOI>
						<DOI name="PhyNam" desc="Physical device name">
							<DAI name="vendor">
								<Val>SIEMENS</Val>
							</DAI>
							<DAI name="d">
								<Val>SIEMENS SIPROTEC 5 Merging unit</Val>
							</DAI>
						</DOI>
						<DOI name="PhyHealth" desc="Physical health"/>
						<DOI name="Proxy" desc="Proxy"/>
						<DOI name="NamVariant" desc="NamVariant">
							<DAI name="val">
								<Val>F4000S1I0-24U0-24;F4800S1-2I0-24U0-24;F12800S8I0-16U0-16;F14400S6I0-24U0-24;F15360S8I0-16U0-16;</Val>
							</DAI>
						</DOI>
						<DOI name="NamHzRtg" desc="NamHzRtg">
							<DAI name="val">
								<Val>50;60</Val>
							</DAI>
						</DOI>
						<DOI name="NamHoldRtg" desc="NamHoldRtg">
							<DAI name="val">
								<Val>0-3600</Val>
							</DAI>
						</DOI>
						<DOI name="NamMaxDlRtg" desc="NamMaxDlRtg">
							<DAI name="val">
								<Val>1150</Val>
							</DAI>
						</DOI>
						<DOI name="MaxDl" desc="Max.delay time of samples">
							<DAI name="setVal">
								<Val>1150</Val>
							</DAI>
							<DAI name="maxVal">
								<Val>2147483647</Val>
							</DAI>
							<DAI name="stepSize">
								<Val>1</Val>
							</DAI>
							<SDI name="units">
								<DAI name="SIUnit">
									<Val>s</Val>
								</DAI>
								<DAI name="multiplier">
									<Val>µ</Val>
								</DAI>
							</SDI>
						</DOI>
					</LN>
				</LDevice>
				<LDevice desc="J:Onboard Ethernet" inst="PortJ">
					<Private type="Siemens-MasterId">29a2489e-3af5-48fa-8d67-92a5605d2ca6</Private>
					<LN0 lnClass="LLN0" inst="" lnType="SIPROTEC5_LNType_LLN0_LDevice_Generic" desc="PortJ/LLN0">
						<Private type="Siemens-MasterId">0ae8f4cd-c39f-4e9c-9cce-e5e903e73da9</Private>
						<DOI name="Mod" desc="Mode (controllable)"/>
						<DOI name="Beh" desc="Behavior"/>
						<DOI name="Health" desc="Health"/>
						<DOI name="NamPlt" desc="Name plate">
							<DAI name="configRev">
								<Val>2023-01-05 21:44:38</Val>
							</DAI>
							<DAI name="ldNs">
								<Val>IEC 61850-7-4:2007B</Val>
							</DAI>
						</DOI>
						<DOI name="GrRef" desc="GrRef">
							<DAI name="setSrcRef">
								<Val>@Application</Val>
							</DAI>
						</DOI>
					</LN0>
				</LDevice>
				<LDevice desc="J:Onboard Ethernet_Chan.1" inst="PortJ_Channel1">
					<Private type="Siemens-MasterId">30dbdd6a-a70d-4be7-8c2c-dc8fc25a40ef</Private>
					<LN0 lnClass="LLN0" inst="" lnType="SIPROTEC5_LNType_LLN0_LDevice_Generic" desc="PortJ_Channel1/LLN0">
						<Private type="Siemens-MasterId">32d67bc6-fab6-401e-b0e5-07b492d25a16</Private>
						<DOI name="Mod" desc="Mode (controllable)"/>
						<DOI name="Beh" desc="Behavior"/>
						<DOI name="Health" desc="Health"/>
						<DOI name="NamPlt" desc="Name plate">
							<DAI name="configRev">
								<Val>2023-01-05 21:44:38</Val>
							</DAI>
							<DAI name="ldNs">
								<Val>IEC 61850-7-4:2007B</Val>
							</DAI>
						</DOI>
						<DOI name="GrRef" desc="GrRef">
							<DAI name="setSrcRef">
								<Val>@PortJ</Val>
							</DAI>
						</DOI>
					</LN0>
				</LDevice>
				<LDevice desc="PowS" inst="PowS">
					<Private type="Siemens-MasterId">98c39d81-7d4c-484a-b098-97d67eb1d392</Private>
					<LN0 lnClass="LLN0" inst="" lnType="SIPROTEC5_LNType_LLN0_LDevice_Generic" desc="PowS/LLN0">
						<Private type="Siemens-MasterId">dc781d7e-be7f-4b70-807a-300c70a46b74</Private>
						<DOI name="Mod" desc="Mode (controllable)"/>
						<DOI name="Beh" desc="Behavior"/>
						<DOI name="Health" desc="Health"/>
						<DOI name="NamPlt" desc="Name plate">
							<DAI name="configRev">
								<Val>2023-04-04 22:48:07</Val>
							</DAI>
							<DAI name="ldNs">
								<Val>IEC 61850-7-4:2007B</Val>
							</DAI>
						</DOI>
						<DOI name="GrRef" desc="GrRef">
							<DAI name="setSrcRef">
								<Val>@Application</Val>
							</DAI>
						</DOI>
					</LN0>
					<LN lnClass="GAPC" inst="1" lnType="SIPROTEC5_LNType_GAPC_FB0_PowerSystem" desc="General" prefix="">
						<Private type="Siemens-MasterId">c9fe752d-97f7-43a8-a58b-ff5b93308432</Private>
						<DOI name="Mod" desc="Mode (controllable)"/>
						<DOI name="Beh" desc="Behavior"/>
						<DOI name="Health" desc="Health"/>
						<DOI name="NamPlt" desc="Name plate">
							<DAI name="configRev">
								<Val>2023-04-04 22:48:07</Val>
							</DAI>
						</DOI>
						<DOI name="PhaseRev" desc="&gt;Phs-rotation reversal"/>
						<DOI name="InvPhases" desc="&gt;Invert Phases"/>
						<DOI name="PhRevABC" desc="Phase sequence ABC"/>
						<DOI name="PhRevACB" desc="Phase sequence ACB"/>
						<DOI name="FOutOfRg" desc="Freq.out of oper.range"/>
					</LN>
				</LDevice>
				<LDevice desc="PowS_Phase CT" inst="PowS_PhaseCT">
					<Private type="Siemens-MasterId">a117fdf4-4198-4158-a465-3637d621dca9</Private>
					<LN0 lnClass="LLN0" inst="" lnType="SIPROTEC5_LNType_LLN0_LDevice_Generic" desc="PowS_PhaseCT/LLN0">
						<Private type="Siemens-MasterId">4ad99aa2-1f7c-47cc-bad4-997ba7b4e806</Private>
						<DOI name="Mod" desc="Mode (controllable)"/>
						<DOI name="Beh" desc="Behavior"/>
						<DOI name="Health" desc="Health"/>
						<DOI name="NamPlt" desc="Name plate">
							<DAI name="configRev">
								<Val>2023-04-04 22:48:07</Val>
							</DAI>
							<DAI name="ldNs">
								<Val>IEC 61850-7-4:2007B</Val>
							</DAI>
						</DOI>
						<DOI name="GrRef" desc="GrRef">
							<DAI name="setSrcRef">
								<Val>@PowS</Val>
							</DAI>
						</DOI>
					</LN0>
					<LN lnClass="GAPC" inst="1" lnType="SIPROTEC5_LNType_GAPC_FB0_MUCurrent_3ph" desc="CT 3-phase" prefix="CT3P_">
						<Private type="Siemens-MasterId">45923af3-9eff-43e2-b3cb-4e6d3c82248f</Private>
						<DOI name="Mod" desc="Mode (controllable)"/>
						<DOI name="Beh" desc="Behavior"/>
						<DOI name="Health" desc="Health"/>
						<DOI name="NamPlt" desc="Name plate">
							<DAI name="configRev">
								<Val>2023-04-04 22:48:07</Val>
							</DAI>
						</DOI>
						<DOI name="CtrlIn" desc="Disconnection"/>
						<DOI name="DisSet" desc="&gt;Disconnection on"/>
						<DOI name="DisReset" desc="&gt;Disconnection off"/>
						<DOI name="InvPhABCur" desc="Phases AB inverted"/>
						<DOI name="InvPhBCCur" desc="Phases BC inverted"/>
						<DOI name="InvPhACCur" desc="Phases AC inverted"/>
						<DOI name="StateBi" desc="Disconnection via BI"/>
						<DOI name="StateCmd" desc="Disconnect. via control"/>
					</LN>
					<LN lnClass="TCTR" inst="1" lnType="SIPROTEC5_LNType_TCTR" desc="CT 1" prefix="I01A">
						<Private type="Siemens-MasterId">20229de1-a80a-43cd-b8a2-934ef8fa432f</Private>
						<DOI name="Mod" desc="Mode (status only)"/>
						<DOI name="Beh" desc="Behavior"/>
						<DOI name="Health" desc="Health"/>
						<DOI name="NamPlt" desc="Name plate">
							<DAI name="configRev">
								<Val>2023-04-04 22:48:07</Val>
							</DAI>
							<DAI name="lnNs">
								<Val>IEC 61869-9:2016A</Val>
							</DAI>
						</DOI>
						<DOI name="ARtg" desc="Rated primary current">
							<SDI name="setMag">
								<DAI name="f">
									<Val>400</Val>
								</DAI>
							</SDI>
							<SDI name="units">
								<DAI name="SIUnit">
									<Val>A</Val>
								</DAI>
							</SDI>
							<SDI name="minVal">
								<DAI name="f">
									<Val>1</Val>
								</DAI>
							</SDI>
							<SDI name="maxVal">
								<DAI name="f">
									<Val>100000</Val>
								</DAI>
							</SDI>
							<SDI name="stepSize">
								<DAI name="f">
									<Val>0.1</Val>
								</DAI>
							</SDI>
						</DOI>
						<DOI name="Rat" desc="Rat">
							<SDI name="setMag">
								<DAI name="f">
									<Val>400</Val>
								</DAI>
							</SDI>
							<SDI name="maxVal">
								<DAI name="f">
									<Val>10000</Val>
								</DAI>
							</SDI>
							<SDI name="stepSize">
								<DAI name="f">
									<Val>0.1</Val>
								</DAI>
							</SDI>
						</DOI>
						<DOI name="HzRtg" desc="Rated frequency">
							<SDI name="setMag">
								<DAI name="f">
									<Val>50</Val>
								</DAI>
							</SDI>
							<SDI name="units">
								<DAI name="SIUnit">
									<Val>Hz</Val>
								</DAI>
							</SDI>
							<SDI name="minVal">
								<DAI name="f">
									<Val>16.67</Val>
								</DAI>
							</SDI>
							<SDI name="maxVal">
								<DAI name="f">
									<Val>60</Val>
								</DAI>
							</SDI>
							<SDI name="stepSize">
								<DAI name="f">
									<Val>0.01</Val>
								</DAI>
							</SDI>
						</DOI>
						<DOI name="Cor" desc="Magnitude correction">
							<SDI name="setMag">
								<DAI name="f">
									<Val>1</Val>
								</DAI>
							</SDI>
							<SDI name="minVal">
								<DAI name="f">
									<Val>0.01</Val>
								</DAI>
							</SDI>
							<SDI name="maxVal">
								<DAI name="f">
									<Val>10</Val>
								</DAI>
							</SDI>
							<SDI name="stepSize">
								<DAI name="f">
									<Val>1E-05</Val>
								</DAI>
							</SDI>
						</DOI>
						<DOI name="AmpSv" desc="Sampled val. current">
							<SDI name="units">
								<DAI name="SIUnit">
									<Val>A</Val>
								</DAI>
							</SDI>
							<SDI name="sVC">
								<DAI name="scaleFactor">
									<Val>0.001</Val>
								</DAI>
							</SDI>
						</DOI>
						<DOI name="Trp" desc="Transient perform. class">
							<DAI name="setVal">
								<Val>TPM</Val>
							</DAI>
						</DOI>
						<DOI name="ScndTmms" desc="Second. loop time const.">
							<DAI name="setVal">
								<Val>210</Val>
							</DAI>
							<DAI name="minVal">
								<Val>1</Val>
							</DAI>
							<DAI name="maxVal">
								<Val>2147483647</Val>
							</DAI>
						</DOI>
						<DOI name="Clip" desc="Ratio of clipping limit">
							<SDI name="setMag">
								<DAI name="f">
									<Val>100</Val>
								</DAI>
							</SDI>
							<SDI name="maxVal">
								<DAI name="f">
									<Val>100</Val>
								</DAI>
							</SDI>
							<SDI name="stepSize">
								<DAI name="f">
									<Val>0.01</Val>
								</DAI>
							</SDI>
						</DOI>
						<DOI name="AccMeas" desc="Meas. accuracy class">
							<DAI name="setVal">
								<Val>0.2S</Val>
							</DAI>
						</DOI>
						<DOI name="AccPro" desc="Prot. accuracy class">
							<DAI name="setVal">
								<Val>1</Val>
							</DAI>
						</DOI>
						<DOI name="HoldTmms" desc="Holdover time">
							<DAI name="setVal">
								<Val>5000</Val>
							</DAI>
							<DAI name="minVal">
								<Val>500</Val>
							</DAI>
							<DAI name="maxVal">
								<Val>90000</Val>
							</DAI>
						</DOI>
						<DOI name="NamAccRtg" desc="NamAccRtg">
							<DAI name="val">
								<Val>0,5S/5P20</Val>
							</DAI>
						</DOI>
						<DOI name="NamARtg" desc="NamARtg">
							<DAI name="val">
								<Val>200;400;800</Val>
							</DAI>
						</DOI>
						<DOI name="NamClipRtg" desc="NamClipRtg">
							<DAI name="val">
								<Val>20</Val>
							</DAI>
						</DOI>
					</LN>
					<LN lnClass="TCTR" inst="2" lnType="SIPROTEC5_LNType_TCTR" desc="CT 2" prefix="I01B">
						<Private type="Siemens-MasterId">9610e4d5-d284-4c1e-a4ba-e41c878bc203</Private>
						<DOI name="Mod" desc="Mode (status only)"/>
						<DOI name="Beh" desc="Behavior"/>
						<DOI name="Health" desc="Health"/>
						<DOI name="NamPlt" desc="Name plate">
							<DAI name="configRev">
								<Val>2023-04-04 22:48:07</Val>
							</DAI>
							<DAI name="lnNs">
								<Val>IEC 61869-9:2016A</Val>
							</DAI>
						</DOI>
						<DOI name="ARtg" desc="Rated primary current">
							<SDI name="setMag">
								<DAI name="f">
									<Val>400</Val>
								</DAI>
							</SDI>
							<SDI name="units">
								<DAI name="SIUnit">
									<Val>A</Val>
								</DAI>
							</SDI>
							<SDI name="minVal">
								<DAI name="f">
									<Val>1</Val>
								</DAI>
							</SDI>
							<SDI name="maxVal">
								<DAI name="f">
									<Val>100000</Val>
								</DAI>
							</SDI>
							<SDI name="stepSize">
								<DAI name="f">
									<Val>0.1</Val>
								</DAI>
							</SDI>
						</DOI>
						<DOI name="Rat" desc="Rat">
							<SDI name="setMag">
								<DAI name="f">
									<Val>400</Val>
								</DAI>
							</SDI>
							<SDI name="maxVal">
								<DAI name="f">
									<Val>10000</Val>
								</DAI>
							</SDI>
							<SDI name="stepSize">
								<DAI name="f">
									<Val>0.1</Val>
								</DAI>
							</SDI>
						</DOI>
						<DOI name="HzRtg" desc="Rated frequency">
							<SDI name="setMag">
								<DAI name="f">
									<Val>50</Val>
								</DAI>
							</SDI>
							<SDI name="units">
								<DAI name="SIUnit">
									<Val>Hz</Val>
								</DAI>
							</SDI>
							<SDI name="minVal">
								<DAI name="f">
									<Val>16.67</Val>
								</DAI>
							</SDI>
							<SDI name="maxVal">
								<DAI name="f">
									<Val>60</Val>
								</DAI>
							</SDI>
							<SDI name="stepSize">
								<DAI name="f">
									<Val>0.01</Val>
								</DAI>
							</SDI>
						</DOI>
						<DOI name="Cor" desc="Magnitude correction">
							<SDI name="setMag">
								<DAI name="f">
									<Val>1</Val>
								</DAI>
							</SDI>
							<SDI name="minVal">
								<DAI name="f">
									<Val>0.01</Val>
								</DAI>
							</SDI>
							<SDI name="maxVal">
								<DAI name="f">
									<Val>10</Val>
								</DAI>
							</SDI>
							<SDI name="stepSize">
								<DAI name="f">
									<Val>1E-05</Val>
								</DAI>
							</SDI>
						</DOI>
						<DOI name="AmpSv" desc="Sampled val. current">
							<SDI name="units">
								<DAI name="SIUnit">
									<Val>A</Val>
								</DAI>
							</SDI>
							<SDI name="sVC">
								<DAI name="scaleFactor">
									<Val>0.001</Val>
								</DAI>
							</SDI>
						</DOI>
						<DOI name="Trp" desc="Transient perform. class">
							<DAI name="setVal">
								<Val>TPM</Val>
							</DAI>
						</DOI>
						<DOI name="ScndTmms" desc="Second. loop time const.">
							<DAI name="setVal">
								<Val>210</Val>
							</DAI>
							<DAI name="minVal">
								<Val>1</Val>
							</DAI>
							<DAI name="maxVal">
								<Val>2147483647</Val>
							</DAI>
						</DOI>
						<DOI name="Clip" desc="Ratio of clipping limit">
							<SDI name="setMag">
								<DAI name="f">
									<Val>100</Val>
								</DAI>
							</SDI>
							<SDI name="maxVal">
								<DAI name="f">
									<Val>100</Val>
								</DAI>
							</SDI>
							<SDI name="stepSize">
								<DAI name="f">
									<Val>0.01</Val>
								</DAI>
							</SDI>
						</DOI>
						<DOI name="AccMeas" desc="Meas. accuracy class">
							<DAI name="setVal">
								<Val>0.2S</Val>
							</DAI>
						</DOI>
						<DOI name="AccPro" desc="Prot. accuracy class">
							<DAI name="setVal">
								<Val>1</Val>
							</DAI>
						</DOI>
						<DOI name="HoldTmms" desc="Holdover time">
							<DAI name="setVal">
								<Val>5000</Val>
							</DAI>
							<DAI name="minVal">
								<Val>500</Val>
							</DAI>
							<DAI name="maxVal">
								<Val>90000</Val>
							</DAI>
						</DOI>
						<DOI name="NamAccRtg" desc="NamAccRtg">
							<DAI name="val">
								<Val>0,5S/5P20</Val>
							</DAI>
						</DOI>
						<DOI name="NamARtg" desc="NamARtg">
							<DAI name="val">
								<Val>200;400;800</Val>
							</DAI>
						</DOI>
						<DOI name="NamClipRtg" desc="NamClipRtg">
							<DAI name="val">
								<Val>20</Val>
							</DAI>
						</DOI>
					</LN>
					<LN lnClass="TCTR" inst="3" lnType="SIPROTEC5_LNType_TCTR" desc="CT 3" prefix="I01C">
						<Private type="Siemens-MasterId">591c83ec-f784-4ab0-a6b7-326da32bbdb5</Private>
						<DOI name="Mod" desc="Mode (status only)"/>
						<DOI name="Beh" desc="Behavior"/>
						<DOI name="Health" desc="Health"/>
						<DOI name="NamPlt" desc="Name plate">
							<DAI name="configRev">
								<Val>2023-04-04 22:48:07</Val>
							</DAI>
							<DAI name="lnNs">
								<Val>IEC 61869-9:2016A</Val>
							</DAI>
						</DOI>
						<DOI name="ARtg" desc="Rated primary current">
							<SDI name="setMag">
								<DAI name="f">
									<Val>400</Val>
								</DAI>
							</SDI>
							<SDI name="units">
								<DAI name="SIUnit">
									<Val>A</Val>
								</DAI>
							</SDI>
							<SDI name="minVal">
								<DAI name="f">
									<Val>1</Val>
								</DAI>
							</SDI>
							<SDI name="maxVal">
								<DAI name="f">
									<Val>100000</Val>
								</DAI>
							</SDI>
							<SDI name="stepSize">
								<DAI name="f">
									<Val>0.1</Val>
								</DAI>
							</SDI>
						</DOI>
						<DOI name="Rat" desc="Rat">
							<SDI name="setMag">
								<DAI name="f">
									<Val>400</Val>
								</DAI>
							</SDI>
							<SDI name="maxVal">
								<DAI name="f">
									<Val>10000</Val>
								</DAI>
							</SDI>
							<SDI name="stepSize">
								<DAI name="f">
									<Val>0.1</Val>
								</DAI>
							</SDI>
						</DOI>
						<DOI name="HzRtg" desc="Rated frequency">
							<SDI name="setMag">
								<DAI name="f">
									<Val>50</Val>
								</DAI>
							</SDI>
							<SDI name="units">
								<DAI name="SIUnit">
									<Val>Hz</Val>
								</DAI>
							</SDI>
							<SDI name="minVal">
								<DAI name="f">
									<Val>16.67</Val>
								</DAI>
							</SDI>
							<SDI name="maxVal">
								<DAI name="f">
									<Val>60</Val>
								</DAI>
							</SDI>
							<SDI name="stepSize">
								<DAI name="f">
									<Val>0.01</Val>
								</DAI>
							</SDI>
						</DOI>
						<DOI name="Cor" desc="Magnitude correction">
							<SDI name="setMag">
								<DAI name="f">
									<Val>1</Val>
								</DAI>
							</SDI>
							<SDI name="minVal">
								<DAI name="f">
									<Val>0.01</Val>
								</DAI>
							</SDI>
							<SDI name="maxVal">
								<DAI name="f">
									<Val>10</Val>
								</DAI>
							</SDI>
							<SDI name="stepSize">
								<DAI name="f">
									<Val>1E-05</Val>
								</DAI>
							</SDI>
						</DOI>
						<DOI name="AmpSv" desc="Sampled val. current">
							<SDI name="units">
								<DAI name="SIUnit">
									<Val>A</Val>
								</DAI>
							</SDI>
							<SDI name="sVC">
								<DAI name="scaleFactor">
									<Val>0.001</Val>
								</DAI>
							</SDI>
						</DOI>
						<DOI name="Trp" desc="Transient perform. class">
							<DAI name="setVal">
								<Val>TPM</Val>
							</DAI>
						</DOI>
						<DOI name="ScndTmms" desc="Second. loop time const.">
							<DAI name="setVal">
								<Val>210</Val>
							</DAI>
							<DAI name="minVal">
								<Val>1</Val>
							</DAI>
							<DAI name="maxVal">
								<Val>2147483647</Val>
							</DAI>
						</DOI>
						<DOI name="Clip" desc="Ratio of clipping limit">
							<SDI name="setMag">
								<DAI name="f">
									<Val>100</Val>
								</DAI>
							</SDI>
							<SDI name="maxVal">
								<DAI name="f">
									<Val>100</Val>
								</DAI>
							</SDI>
							<SDI name="stepSize">
								<DAI name="f">
									<Val>0.01</Val>
								</DAI>
							</SDI>
						</DOI>
						<DOI name="AccMeas" desc="Meas. accuracy class">
							<DAI name="setVal">
								<Val>0.2S</Val>
							</DAI>
						</DOI>
						<DOI name="AccPro" desc="Prot. accuracy class">
							<DAI name="setVal">
								<Val>1</Val>
							</DAI>
						</DOI>
						<DOI name="HoldTmms" desc="Holdover time">
							<DAI name="setVal">
								<Val>5000</Val>
							</DAI>
							<DAI name="minVal">
								<Val>500</Val>
							</DAI>
							<DAI name="maxVal">
								<Val>90000</Val>
							</DAI>
						</DOI>
						<DOI name="NamAccRtg" desc="NamAccRtg">
							<DAI name="val">
								<Val>0,5S/5P20</Val>
							</DAI>
						</DOI>
						<DOI name="NamARtg" desc="NamARtg">
							<DAI name="val">
								<Val>200;400;800</Val>
							</DAI>
						</DOI>
						<DOI name="NamClipRtg" desc="NamClipRtg">
							<DAI name="val">
								<Val>20</Val>
							</DAI>
						</DOI>
					</LN>
					<LN lnClass="TCTR" inst="4" lnType="SIPROTEC5_LNType_TCTR" desc="CT 4" prefix="I01N">
						<Private type="Siemens-MasterId">78b773ad-5ce4-4752-b52f-06ed38ddd1c2</Private>
						<DOI name="Mod" desc="Mode (status only)"/>
						<DOI name="Beh" desc="Behavior"/>
						<DOI name="Health" desc="Health"/>
						<DOI name="NamPlt" desc="Name plate">
							<DAI name="configRev">
								<Val>2023-04-04 22:48:07</Val>
							</DAI>
							<DAI name="lnNs">
								<Val>IEC 61869-9:2016A</Val>
							</DAI>
						</DOI>
						<DOI name="ARtg" desc="Rated primary current">
							<SDI name="setMag">
								<DAI name="f">
									<Val>400</Val>
								</DAI>
							</SDI>
							<SDI name="units">
								<DAI name="SIUnit">
									<Val>A</Val>
								</DAI>
							</SDI>
							<SDI name="minVal">
								<DAI name="f">
									<Val>1</Val>
								</DAI>
							</SDI>
							<SDI name="maxVal">
								<DAI name="f">
									<Val>100000</Val>
								</DAI>
							</SDI>
							<SDI name="stepSize">
								<DAI name="f">
									<Val>0.1</Val>
								</DAI>
							</SDI>
						</DOI>
						<DOI name="Rat" desc="Rat">
							<SDI name="setMag">
								<DAI name="f">
									<Val>400</Val>
								</DAI>
							</SDI>
							<SDI name="maxVal">
								<DAI name="f">
									<Val>10000</Val>
								</DAI>
							</SDI>
							<SDI name="stepSize">
								<DAI name="f">
									<Val>0.1</Val>
								</DAI>
							</SDI>
						</DOI>
						<DOI name="HzRtg" desc="Rated frequency">
							<SDI name="setMag">
								<DAI name="f">
									<Val>50</Val>
								</DAI>
							</SDI>
							<SDI name="units">
								<DAI name="SIUnit">
									<Val>Hz</Val>
								</DAI>
							</SDI>
							<SDI name="minVal">
								<DAI name="f">
									<Val>16.67</Val>
								</DAI>
							</SDI>
							<SDI name="maxVal">
								<DAI name="f">
									<Val>60</Val>
								</DAI>
							</SDI>
							<SDI name="stepSize">
								<DAI name="f">
									<Val>0.01</Val>
								</DAI>
							</SDI>
						</DOI>
						<DOI name="Cor" desc="Magnitude correction">
							<SDI name="setMag">
								<DAI name="f">
									<Val>1</Val>
								</DAI>
							</SDI>
							<SDI name="minVal">
								<DAI name="f">
									<Val>0.01</Val>
								</DAI>
							</SDI>
							<SDI name="maxVal">
								<DAI name="f">
									<Val>10</Val>
								</DAI>
							</SDI>
							<SDI name="stepSize">
								<DAI name="f">
									<Val>1E-05</Val>
								</DAI>
							</SDI>
						</DOI>
						<DOI name="AmpSv" desc="Sampled val. current">
							<SDI name="units">
								<DAI name="SIUnit">
									<Val>A</Val>
								</DAI>
							</SDI>
							<SDI name="sVC">
								<DAI name="scaleFactor">
									<Val>0.001</Val>
								</DAI>
							</SDI>
						</DOI>
						<DOI name="Trp" desc="Transient perform. class">
							<DAI name="setVal">
								<Val>TPM</Val>
							</DAI>
						</DOI>
						<DOI name="ScndTmms" desc="Second. loop time const.">
							<DAI name="setVal">
								<Val>210</Val>
							</DAI>
							<DAI name="minVal">
								<Val>1</Val>
							</DAI>
							<DAI name="maxVal">
								<Val>2147483647</Val>
							</DAI>
						</DOI>
						<DOI name="Clip" desc="Ratio of clipping limit">
							<SDI name="setMag">
								<DAI name="f">
									<Val>100</Val>
								</DAI>
							</SDI>
							<SDI name="maxVal">
								<DAI name="f">
									<Val>100</Val>
								</DAI>
							</SDI>
							<SDI name="stepSize">
								<DAI name="f">
									<Val>0.01</Val>
								</DAI>
							</SDI>
						</DOI>
						<DOI name="AccMeas" desc="Meas. accuracy class">
							<DAI name="setVal">
								<Val>0.2S</Val>
							</DAI>
						</DOI>
						<DOI name="AccPro" desc="Prot. accuracy class">
							<DAI name="setVal">
								<Val>1</Val>
							</DAI>
						</DOI>
						<DOI name="HoldTmms" desc="Holdover time">
							<DAI name="setVal">
								<Val>5000</Val>
							</DAI>
							<DAI name="minVal">
								<Val>500</Val>
							</DAI>
							<DAI name="maxVal">
								<Val>90000</Val>
							</DAI>
						</DOI>
						<DOI name="NamAccRtg" desc="NamAccRtg">
							<DAI name="val">
								<Val>0,5S/5P20</Val>
							</DAI>
						</DOI>
						<DOI name="NamARtg" desc="NamARtg">
							<DAI name="val">
								<Val>200;400;800</Val>
							</DAI>
						</DOI>
						<DOI name="NamClipRtg" desc="NamClipRtg">
							<DAI name="val">
								<Val>20</Val>
							</DAI>
						</DOI>
					</LN>
					<LN lnClass="SBWI" inst="1" lnType="SIPROTEC5_LNType_SBWS_BW_Tr" desc="Brk.wire det." prefix="TR_">
						<Private type="Siemens-MasterId">ec2544fb-0819-4e35-a6cd-82f81fcce75e</Private>
						<DOI name="Mod" desc="Mode (controllable)"/>
						<DOI name="Beh" desc="Behavior"/>
						<DOI name="Health" desc="Health"/>
						<DOI name="NamPlt" desc="Name plate">
							<DAI name="configRev">
								<Val>2023-04-04 22:48:07</Val>
							</DAI>
						</DOI>
						<DOI name="ResetBW" desc="&gt;Block function"/>
						<DOI name="Inactive" desc="Inactive"/>
						<DOI name="PhABWsus" desc="Phs A BW suspected"/>
						<DOI name="PhBBWsus" desc="Phs B BW suspected"/>
						<DOI name="PhCBWsus" desc="Phs C BW suspected"/>
						<DOI name="PhABW" desc="Phase A broken wire"/>
						<DOI name="PhBBW" desc="Phase B broken wire"/>
						<DOI name="PhCBW" desc="Phase C broken wire"/>
						<DOI name="BWsus" desc="Broken wire suspected"/>
						<DOI name="BrokenWire" desc="Broken wire confirmed"/>
					</LN>
					<LN lnClass="SSYM" inst="1" lnType="SIPROTEC5_LNType_SSYM_CurBalSV" desc="Supv. balan. I" prefix="I_">
						<Private type="Siemens-MasterId">aa9e3f54-473e-4625-8b78-1abf52101751</Private>
						<DOI name="Mod" desc="Mode (controllable)"/>
						<DOI name="Beh" desc="Behavior"/>
						<DOI name="Health" desc="Health"/>
						<DOI name="NamPlt" desc="Name plate">
							<DAI name="configRev">
								<Val>2023-04-04 22:48:07</Val>
							</DAI>
						</DOI>
						<DOI name="Blk" desc="&gt;Block function"/>
						<DOI name="Failure" desc="Failure"/>
					</LN>
					<LN lnClass="SPSQ" inst="1" lnType="SIPROTEC5_LNType_SPSQ_CurPhSeqSV" desc="Supv. ph.seq.I" prefix="I_">
						<Private type="Siemens-MasterId">a5c5c639-94bf-4655-965a-f3ffe8ed3141</Private>
						<DOI name="Mod" desc="Mode (controllable)"/>
						<DOI name="Beh" desc="Behavior"/>
						<DOI name="Health" desc="Health"/>
						<DOI name="NamPlt" desc="Name plate">
							<DAI name="configRev">
								<Val>2023-04-04 22:48:07</Val>
							</DAI>
						</DOI>
						<DOI name="Blk" desc="&gt;Block function"/>
						<DOI name="Inactive" desc="Inactive"/>
						<DOI name="Failure" desc="Failure"/>
					</LN>
					<LN lnClass="SSUM" inst="1" lnType="SIPROTEC5_LNType_SSUM_SlowCurSumSV" desc="Supv. sum I" prefix="I_">
						<Private type="Siemens-MasterId">b797d5c1-414f-4480-97fc-6265a6843e5b</Private>
						<DOI name="Mod" desc="Mode (controllable)"/>
						<DOI name="Beh" desc="Behavior"/>
						<DOI name="Health" desc="Health"/>
						<DOI name="NamPlt" desc="Name plate">
							<DAI name="configRev">
								<Val>2023-04-04 22:48:07</Val>
							</DAI>
						</DOI>
						<DOI name="Blk" desc="&gt;Block function"/>
						<DOI name="Failure" desc="Failure"/>
					</LN>
					<LN lnClass="SADC" inst="1" lnType="SIPROTEC5_LNType_SADC_FastCurSumSV" desc="Supv.ADC sum I" prefix="ISUM_">
						<Private type="Siemens-MasterId">1e068617-ff0f-40a6-989a-f6ae6b642798</Private>
						<DOI name="Mod" desc="Mode (controllable)"/>
						<DOI name="Beh" desc="Behavior"/>
						<DOI name="Health" desc="Health"/>
						<DOI name="NamPlt" desc="Name plate">
							<DAI name="configRev">
								<Val>2023-04-04 22:48:07</Val>
							</DAI>
						</DOI>
						<DOI name="Blk" desc="&gt;Block function"/>
						<DOI name="Inactive" desc="Inactive"/>
						<DOI name="Failure" desc="Failure"/>
					</LN>
				</LDevice>
				<LDevice desc="PowS_Phase VT" inst="PowS_PhaseVT">
					<Private type="Siemens-MasterId">d021a528-b32f-4d11-954f-712550fc420b</Private>
					<LN0 lnClass="LLN0" inst="" lnType="SIPROTEC5_LNType_LLN0_LDevice_Generic" desc="PowS_PhaseVT/LLN0">
						<Private type="Siemens-MasterId">2b90c28b-9ca9-4711-84e5-2f3f6527387d</Private>
						<DOI name="Mod" desc="Mode (controllable)"/>
						<DOI name="Beh" desc="Behavior"/>
						<DOI name="Health" desc="Health"/>
						<DOI name="NamPlt" desc="Name plate">
							<DAI name="configRev">
								<Val>2023-04-04 22:48:07</Val>
							</DAI>
							<DAI name="ldNs">
								<Val>IEC 61850-7-4:2007B</Val>
							</DAI>
						</DOI>
						<DOI name="GrRef" desc="GrRef">
							<DAI name="setSrcRef">
								<Val>@PowS</Val>
							</DAI>
						</DOI>
					</LN0>
					<LN lnClass="GAPC" inst="1" lnType="SIPROTEC5_LNType_GAPC_FB0_MUVoltage_3ph" desc="VT 3-phase" prefix="VT3P_">
						<Private type="Siemens-MasterId">84f7fc83-f300-4bba-9bd4-b3ae99c9c528</Private>
						<DOI name="Mod" desc="Mode (controllable)"/>
						<DOI name="Beh" desc="Behavior"/>
						<DOI name="Health" desc="Health"/>
						<DOI name="NamPlt" desc="Name plate">
							<DAI name="configRev">
								<Val>2023-04-04 22:48:07</Val>
							</DAI>
						</DOI>
						<DOI name="InvPhABVol" desc="Phases AB inverted"/>
						<DOI name="InvPhBCVol" desc="Phases BC inverted"/>
						<DOI name="InvPhACVol" desc="Phases AC inverted"/>
					</LN>
					<LN lnClass="TVTR" inst="1" lnType="SIPROTEC5_LNType_TVTR" desc="VT 1" prefix="U01A">
						<Private type="Siemens-MasterId">0cda070a-0a00-437e-b66a-3fdc9d340cac</Private>
						<DOI name="Mod" desc="Mode (status only)"/>
						<DOI name="Beh" desc="Behavior"/>
						<DOI name="Health" desc="Health"/>
						<DOI name="NamPlt" desc="Name plate">
							<DAI name="configRev">
								<Val>2023-04-04 22:48:07</Val>
							</DAI>
							<DAI name="lnNs">
								<Val>IEC 61869-9:2016A</Val>
							</DAI>
						</DOI>
						<DOI name="VolSv" desc="Sampled val. voltage">
							<SDI name="units">
								<DAI name="SIUnit">
									<Val>V</Val>
								</DAI>
							</SDI>
							<SDI name="sVC">
								<DAI name="scaleFactor">
									<Val>0.01</Val>
								</DAI>
							</SDI>
						</DOI>
						<DOI name="VRtg" desc="Rated primary voltage">
							<SDI name="setMag">
								<DAI name="f">
									<Val>127.017059</Val>
								</DAI>
							</SDI>
							<SDI name="units">
								<DAI name="SIUnit">
									<Val>V</Val>
								</DAI>
								<DAI name="multiplier">
									<Val>k</Val>
								</DAI>
							</SDI>
							<SDI name="minVal">
								<DAI name="f">
									<Val>0.1</Val>
								</DAI>
							</SDI>
							<SDI name="maxVal">
								<DAI name="f">
									<Val>1200</Val>
								</DAI>
							</SDI>
							<SDI name="stepSize">
								<DAI name="f">
									<Val>0.01</Val>
								</DAI>
							</SDI>
						</DOI>
						<DOI name="HzRtg" desc="Rated frequency">
							<SDI name="setMag">
								<DAI name="f">
									<Val>50</Val>
								</DAI>
							</SDI>
							<SDI name="units">
								<DAI name="SIUnit">
									<Val>Hz</Val>
								</DAI>
							</SDI>
							<SDI name="minVal">
								<DAI name="f">
									<Val>16.67</Val>
								</DAI>
							</SDI>
							<SDI name="maxVal">
								<DAI name="f">
									<Val>60</Val>
								</DAI>
							</SDI>
							<SDI name="stepSize">
								<DAI name="f">
									<Val>0.01</Val>
								</DAI>
							</SDI>
						</DOI>
						<DOI name="Rat" desc="Rat">
							<SDI name="setMag">
								<DAI name="f">
									<Val>2000</Val>
								</DAI>
							</SDI>
							<SDI name="maxVal">
								<DAI name="f">
									<Val>10000</Val>
								</DAI>
							</SDI>
							<SDI name="stepSize">
								<DAI name="f">
									<Val>0.1</Val>
								</DAI>
							</SDI>
						</DOI>
						<DOI name="Cor" desc="Magnitude correction">
							<SDI name="setMag">
								<DAI name="f">
									<Val>1</Val>
								</DAI>
							</SDI>
							<SDI name="minVal">
								<DAI name="f">
									<Val>0.01</Val>
								</DAI>
							</SDI>
							<SDI name="maxVal">
								<DAI name="f">
									<Val>10</Val>
								</DAI>
							</SDI>
							<SDI name="stepSize">
								<DAI name="f">
									<Val>1E-05</Val>
								</DAI>
							</SDI>
						</DOI>
						<DOI name="Clip" desc="Ratio of clipping limit">
							<SDI name="setMag">
								<DAI name="f">
									<Val>3.14918327</Val>
								</DAI>
							</SDI>
							<SDI name="maxVal">
								<DAI name="f">
									<Val>100</Val>
								</DAI>
							</SDI>
							<SDI name="stepSize">
								<DAI name="f">
									<Val>0.01</Val>
								</DAI>
							</SDI>
						</DOI>
						<DOI name="AccMeas" desc="Meas. accuracy class">
							<DAI name="setVal">
								<Val>0.2S</Val>
							</DAI>
						</DOI>
						<DOI name="AccPro" desc="Prot. accuracy class">
							<DAI name="setVal">
								<Val>1</Val>
							</DAI>
						</DOI>
						<DOI name="HoldTmms" desc="Holdover time">
							<DAI name="setVal">
								<Val>5000</Val>
							</DAI>
							<DAI name="minVal">
								<Val>500</Val>
							</DAI>
							<DAI name="maxVal">
								<Val>90000</Val>
							</DAI>
						</DOI>
						<DOI name="NamAccRtg" desc="NamAccRtg">
							<DAI name="val">
								<Val>0,5/3P</Val>
							</DAI>
						</DOI>
						<DOI name="NamVRtg" desc="NamVRtg">
							<DAI name="val">
								<Val>173000</Val>
							</DAI>
						</DOI>
						<DOI name="NamClipRtg" desc="NamClipRtg">
							<DAI name="val">
								<Val>2</Val>
							</DAI>
						</DOI>
					</LN>
					<LN lnClass="TVTR" inst="2" lnType="SIPROTEC5_LNType_TVTR" desc="VT 2" prefix="U01B">
						<Private type="Siemens-MasterId">9002446d-f022-4805-83e8-d63f7eccf851</Private>
						<DOI name="Mod" desc="Mode (status only)"/>
						<DOI name="Beh" desc="Behavior"/>
						<DOI name="Health" desc="Health"/>
						<DOI name="NamPlt" desc="Name plate">
							<DAI name="configRev">
								<Val>2023-04-04 22:48:07</Val>
							</DAI>
							<DAI name="lnNs">
								<Val>IEC 61869-9:2016A</Val>
							</DAI>
						</DOI>
						<DOI name="VolSv" desc="Sampled val. voltage">
							<SDI name="units">
								<DAI name="SIUnit">
									<Val>V</Val>
								</DAI>
							</SDI>
							<SDI name="sVC">
								<DAI name="scaleFactor">
									<Val>0.01</Val>
								</DAI>
							</SDI>
						</DOI>
						<DOI name="VRtg" desc="Rated primary voltage">
							<SDI name="setMag">
								<DAI name="f">
									<Val>127.017059</Val>
								</DAI>
							</SDI>
							<SDI name="units">
								<DAI name="SIUnit">
									<Val>V</Val>
								</DAI>
								<DAI name="multiplier">
									<Val>k</Val>
								</DAI>
							</SDI>
							<SDI name="minVal">
								<DAI name="f">
									<Val>0.1</Val>
								</DAI>
							</SDI>
							<SDI name="maxVal">
								<DAI name="f">
									<Val>1200</Val>
								</DAI>
							</SDI>
							<SDI name="stepSize">
								<DAI name="f">
									<Val>0.01</Val>
								</DAI>
							</SDI>
						</DOI>
						<DOI name="HzRtg" desc="Rated frequency">
							<SDI name="setMag">
								<DAI name="f">
									<Val>50</Val>
								</DAI>
							</SDI>
							<SDI name="units">
								<DAI name="SIUnit">
									<Val>Hz</Val>
								</DAI>
							</SDI>
							<SDI name="minVal">
								<DAI name="f">
									<Val>16.67</Val>
								</DAI>
							</SDI>
							<SDI name="maxVal">
								<DAI name="f">
									<Val>60</Val>
								</DAI>
							</SDI>
							<SDI name="stepSize">
								<DAI name="f">
									<Val>0.01</Val>
								</DAI>
							</SDI>
						</DOI>
						<DOI name="Rat" desc="Rat">
							<SDI name="setMag">
								<DAI name="f">
									<Val>2000</Val>
								</DAI>
							</SDI>
							<SDI name="maxVal">
								<DAI name="f">
									<Val>10000</Val>
								</DAI>
							</SDI>
							<SDI name="stepSize">
								<DAI name="f">
									<Val>0.1</Val>
								</DAI>
							</SDI>
						</DOI>
						<DOI name="Cor" desc="Magnitude correction">
							<SDI name="setMag">
								<DAI name="f">
									<Val>1</Val>
								</DAI>
							</SDI>
							<SDI name="minVal">
								<DAI name="f">
									<Val>0.01</Val>
								</DAI>
							</SDI>
							<SDI name="maxVal">
								<DAI name="f">
									<Val>10</Val>
								</DAI>
							</SDI>
							<SDI name="stepSize">
								<DAI name="f">
									<Val>1E-05</Val>
								</DAI>
							</SDI>
						</DOI>
						<DOI name="Clip" desc="Ratio of clipping limit">
							<SDI name="setMag">
								<DAI name="f">
									<Val>3.14918327</Val>
								</DAI>
							</SDI>
							<SDI name="maxVal">
								<DAI name="f">
									<Val>100</Val>
								</DAI>
							</SDI>
							<SDI name="stepSize">
								<DAI name="f">
									<Val>0.01</Val>
								</DAI>
							</SDI>
						</DOI>
						<DOI name="AccMeas" desc="Meas. accuracy class">
							<DAI name="setVal">
								<Val>0.2S</Val>
							</DAI>
						</DOI>
						<DOI name="AccPro" desc="Prot. accuracy class">
							<DAI name="setVal">
								<Val>1</Val>
							</DAI>
						</DOI>
						<DOI name="HoldTmms" desc="Holdover time">
							<DAI name="setVal">
								<Val>5000</Val>
							</DAI>
							<DAI name="minVal">
								<Val>500</Val>
							</DAI>
							<DAI name="maxVal">
								<Val>90000</Val>
							</DAI>
						</DOI>
						<DOI name="NamAccRtg" desc="NamAccRtg">
							<DAI name="val">
								<Val>0,5/3P</Val>
							</DAI>
						</DOI>
						<DOI name="NamVRtg" desc="NamVRtg">
							<DAI name="val">
								<Val>173000</Val>
							</DAI>
						</DOI>
						<DOI name="NamClipRtg" desc="NamClipRtg">
							<DAI name="val">
								<Val>2</Val>
							</DAI>
						</DOI>
					</LN>
					<LN lnClass="TVTR" inst="3" lnType="SIPROTEC5_LNType_TVTR" desc="VT 3" prefix="U01C">
						<Private type="Siemens-MasterId">1b522cd9-9211-414f-a6cb-f09e189d94c2</Private>
						<DOI name="Mod" desc="Mode (status only)"/>
						<DOI name="Beh" desc="Behavior"/>
						<DOI name="Health" desc="Health"/>
						<DOI name="NamPlt" desc="Name plate">
							<DAI name="configRev">
								<Val>2023-04-04 22:48:07</Val>
							</DAI>
							<DAI name="lnNs">
								<Val>IEC 61869-9:2016A</Val>
							</DAI>
						</DOI>
						<DOI name="VolSv" desc="Sampled val. voltage">
							<SDI name="units">
								<DAI name="SIUnit">
									<Val>V</Val>
								</DAI>
							</SDI>
							<SDI name="sVC">
								<DAI name="scaleFactor">
									<Val>0.01</Val>
								</DAI>
							</SDI>
						</DOI>
						<DOI name="VRtg" desc="Rated primary voltage">
							<SDI name="setMag">
								<DAI name="f">
									<Val>127.017059</Val>
								</DAI>
							</SDI>
							<SDI name="units">
								<DAI name="SIUnit">
									<Val>V</Val>
								</DAI>
								<DAI name="multiplier">
									<Val>k</Val>
								</DAI>
							</SDI>
							<SDI name="minVal">
								<DAI name="f">
									<Val>0.1</Val>
								</DAI>
							</SDI>
							<SDI name="maxVal">
								<DAI name="f">
									<Val>1200</Val>
								</DAI>
							</SDI>
							<SDI name="stepSize">
								<DAI name="f">
									<Val>0.01</Val>
								</DAI>
							</SDI>
						</DOI>
						<DOI name="HzRtg" desc="Rated frequency">
							<SDI name="setMag">
								<DAI name="f">
									<Val>50</Val>
								</DAI>
							</SDI>
							<SDI name="units">
								<DAI name="SIUnit">
									<Val>Hz</Val>
								</DAI>
							</SDI>
							<SDI name="minVal">
								<DAI name="f">
									<Val>16.67</Val>
								</DAI>
							</SDI>
							<SDI name="maxVal">
								<DAI name="f">
									<Val>60</Val>
								</DAI>
							</SDI>
							<SDI name="stepSize">
								<DAI name="f">
									<Val>0.01</Val>
								</DAI>
							</SDI>
						</DOI>
						<DOI name="Rat" desc="Rat">
							<SDI name="setMag">
								<DAI name="f">
									<Val>2000</Val>
								</DAI>
							</SDI>
							<SDI name="maxVal">
								<DAI name="f">
									<Val>10000</Val>
								</DAI>
							</SDI>
							<SDI name="stepSize">
								<DAI name="f">
									<Val>0.1</Val>
								</DAI>
							</SDI>
						</DOI>
						<DOI name="Cor" desc="Magnitude correction">
							<SDI name="setMag">
								<DAI name="f">
									<Val>1</Val>
								</DAI>
							</SDI>
							<SDI name="minVal">
								<DAI name="f">
									<Val>0.01</Val>
								</DAI>
							</SDI>
							<SDI name="maxVal">
								<DAI name="f">
									<Val>10</Val>
								</DAI>
							</SDI>
							<SDI name="stepSize">
								<DAI name="f">
									<Val>1E-05</Val>
								</DAI>
							</SDI>
						</DOI>
						<DOI name="Clip" desc="Ratio of clipping limit">
							<SDI name="setMag">
								<DAI name="f">
									<Val>3.14918327</Val>
								</DAI>
							</SDI>
							<SDI name="maxVal">
								<DAI name="f">
									<Val>100</Val>
								</DAI>
							</SDI>
							<SDI name="stepSize">
								<DAI name="f">
									<Val>0.01</Val>
								</DAI>
							</SDI>
						</DOI>
						<DOI name="AccMeas" desc="Meas. accuracy class">
							<DAI name="setVal">
								<Val>0.2S</Val>
							</DAI>
						</DOI>
						<DOI name="AccPro" desc="Prot. accuracy class">
							<DAI name="setVal">
								<Val>1</Val>
							</DAI>
						</DOI>
						<DOI name="HoldTmms" desc="Holdover time">
							<DAI name="setVal">
								<Val>5000</Val>
							</DAI>
							<DAI name="minVal">
								<Val>500</Val>
							</DAI>
							<DAI name="maxVal">
								<Val>90000</Val>
							</DAI>
						</DOI>
						<DOI name="NamAccRtg" desc="NamAccRtg">
							<DAI name="val">
								<Val>0,5/3P</Val>
							</DAI>
						</DOI>
						<DOI name="NamVRtg" desc="NamVRtg">
							<DAI name="val">
								<Val>173000</Val>
							</DAI>
						</DOI>
						<DOI name="NamClipRtg" desc="NamClipRtg">
							<DAI name="val">
								<Val>2</Val>
							</DAI>
						</DOI>
					</LN>
					<LN lnClass="TVTR" inst="4" lnType="SIPROTEC5_LNType_TVTR" desc="VT 4" prefix="U01N">
						<Private type="Siemens-MasterId">f1494dae-93a1-4cc5-8b7b-3ca8066fb9e6</Private>
						<DOI name="Mod" desc="Mode (status only)"/>
						<DOI name="Beh" desc="Behavior"/>
						<DOI name="Health" desc="Health"/>
						<DOI name="NamPlt" desc="Name plate">
							<DAI name="configRev">
								<Val>2023-04-04 22:48:07</Val>
							</DAI>
							<DAI name="lnNs">
								<Val>IEC 61869-9:2016A</Val>
							</DAI>
						</DOI>
						<DOI name="VolSv" desc="Sampled val. voltage">
							<SDI name="units">
								<DAI name="SIUnit">
									<Val>V</Val>
								</DAI>
							</SDI>
							<SDI name="sVC">
								<DAI name="scaleFactor">
									<Val>0.01</Val>
								</DAI>
							</SDI>
						</DOI>
						<DOI name="VRtg" desc="Rated primary voltage">
							<SDI name="setMag">
								<DAI name="f">
									<Val>127.017059</Val>
								</DAI>
							</SDI>
							<SDI name="units">
								<DAI name="SIUnit">
									<Val>V</Val>
								</DAI>
								<DAI name="multiplier">
									<Val>k</Val>
								</DAI>
							</SDI>
							<SDI name="minVal">
								<DAI name="f">
									<Val>0.1</Val>
								</DAI>
							</SDI>
							<SDI name="maxVal">
								<DAI name="f">
									<Val>1200</Val>
								</DAI>
							</SDI>
							<SDI name="stepSize">
								<DAI name="f">
									<Val>0.01</Val>
								</DAI>
							</SDI>
						</DOI>
						<DOI name="HzRtg" desc="Rated frequency">
							<SDI name="setMag">
								<DAI name="f">
									<Val>50</Val>
								</DAI>
							</SDI>
							<SDI name="units">
								<DAI name="SIUnit">
									<Val>Hz</Val>
								</DAI>
							</SDI>
							<SDI name="minVal">
								<DAI name="f">
									<Val>16.67</Val>
								</DAI>
							</SDI>
							<SDI name="maxVal">
								<DAI name="f">
									<Val>60</Val>
								</DAI>
							</SDI>
							<SDI name="stepSize">
								<DAI name="f">
									<Val>0.01</Val>
								</DAI>
							</SDI>
						</DOI>
						<DOI name="Rat" desc="Rat">
							<SDI name="setMag">
								<DAI name="f">
									<Val>1156.06934</Val>
								</DAI>
							</SDI>
							<SDI name="maxVal">
								<DAI name="f">
									<Val>10000</Val>
								</DAI>
							</SDI>
							<SDI name="stepSize">
								<DAI name="f">
									<Val>0.1</Val>
								</DAI>
							</SDI>
						</DOI>
						<DOI name="Cor" desc="Magnitude correction">
							<SDI name="setMag">
								<DAI name="f">
									<Val>1</Val>
								</DAI>
							</SDI>
							<SDI name="minVal">
								<DAI name="f">
									<Val>0.01</Val>
								</DAI>
							</SDI>
							<SDI name="maxVal">
								<DAI name="f">
									<Val>10</Val>
								</DAI>
							</SDI>
							<SDI name="stepSize">
								<DAI name="f">
									<Val>1E-05</Val>
								</DAI>
							</SDI>
						</DOI>
						<DOI name="Clip" desc="Ratio of clipping limit">
							<SDI name="setMag">
								<DAI name="f">
									<Val>3.14918327</Val>
								</DAI>
							</SDI>
							<SDI name="maxVal">
								<DAI name="f">
									<Val>100</Val>
								</DAI>
							</SDI>
							<SDI name="stepSize">
								<DAI name="f">
									<Val>0.01</Val>
								</DAI>
							</SDI>
						</DOI>
						<DOI name="AccMeas" desc="Meas. accuracy class">
							<DAI name="setVal">
								<Val>0.2S</Val>
							</DAI>
						</DOI>
						<DOI name="AccPro" desc="Prot. accuracy class">
							<DAI name="setVal">
								<Val>1</Val>
							</DAI>
						</DOI>
						<DOI name="HoldTmms" desc="Holdover time">
							<DAI name="setVal">
								<Val>5000</Val>
							</DAI>
							<DAI name="minVal">
								<Val>500</Val>
							</DAI>
							<DAI name="maxVal">
								<Val>90000</Val>
							</DAI>
						</DOI>
						<DOI name="NamAccRtg" desc="NamAccRtg">
							<DAI name="val">
								<Val>0,5/3P</Val>
							</DAI>
						</DOI>
						<DOI name="NamVRtg" desc="NamVRtg">
							<DAI name="val">
								<Val>173000</Val>
							</DAI>
						</DOI>
						<DOI name="NamClipRtg" desc="NamClipRtg">
							<DAI name="val">
								<Val>2</Val>
							</DAI>
						</DOI>
					</LN>
					<LN lnClass="SSYM" inst="1" lnType="SIPROTEC5_LNType_SSYM_CurBalSV" desc="Supv. balan. V" prefix="U_">
						<Private type="Siemens-MasterId">5bd9c364-9a2f-4d47-8aea-7cdbe929d25c</Private>
						<DOI name="Mod" desc="Mode (controllable)"/>
						<DOI name="Beh" desc="Behavior"/>
						<DOI name="Health" desc="Health"/>
						<DOI name="NamPlt" desc="Name plate">
							<DAI name="configRev">
								<Val>2023-04-04 22:48:07</Val>
							</DAI>
						</DOI>
						<DOI name="Blk" desc="&gt;Block function"/>
						<DOI name="Failure" desc="Failure"/>
					</LN>
					<LN lnClass="SPSQ" inst="1" lnType="SIPROTEC5_LNType_SPSQ_CurPhSeqSV" desc="Supv. ph.seq.V" prefix="U_">
						<Private type="Siemens-MasterId">111ac088-8508-4eab-80c0-3323a8e57a04</Private>
						<DOI name="Mod" desc="Mode (controllable)"/>
						<DOI name="Beh" desc="Behavior"/>
						<DOI name="Health" desc="Health"/>
						<DOI name="NamPlt" desc="Name plate">
							<DAI name="configRev">
								<Val>2023-04-04 22:48:07</Val>
							</DAI>
						</DOI>
						<DOI name="Blk" desc="&gt;Block function"/>
						<DOI name="Inactive" desc="Inactive"/>
						<DOI name="Failure" desc="Failure"/>
					</LN>
					<LN lnClass="SSUM" inst="1" lnType="SIPROTEC5_LNType_SSUM_SlowCurSumSV" desc="Supv. sum V" prefix="U_">
						<Private type="Siemens-MasterId">50075318-de31-4d00-94b4-db71139646f4</Private>
						<DOI name="Mod" desc="Mode (controllable)"/>
						<DOI name="Beh" desc="Behavior"/>
						<DOI name="Health" desc="Health"/>
						<DOI name="NamPlt" desc="Name plate">
							<DAI name="configRev">
								<Val>2023-04-04 22:48:07</Val>
							</DAI>
						</DOI>
						<DOI name="Blk" desc="&gt;Block function"/>
						<DOI name="Failure" desc="Failure"/>
					</LN>
					<LN lnClass="SFFM" inst="1" lnType="SIPROTEC5_LNType_SFFM_SMCB" desc="VT miniatureCB" prefix="VTCB_">
						<Private type="Siemens-MasterId">593e3eaa-6ce2-4b0f-a0e6-a8d2cee0441c</Private>
						<DOI name="Mod" desc="Mode (controllable)"/>
						<DOI name="Beh" desc="Behavior"/>
						<DOI name="Health" desc="Health"/>
						<DOI name="NamPlt" desc="Name plate">
							<DAI name="configRev">
								<Val>2023-04-04 22:48:07</Val>
							</DAI>
						</DOI>
						<DOI name="VTmcb" desc="&gt;Open"/>
					</LN>
				</LDevice>
				<LDevice desc="PowS_Single CT 1" inst="PowS_SingleCT1">
					<Private type="Siemens-MasterId">9b6d77a2-98dc-456f-b64c-8319d3feac04</Private>
					<LN0 lnClass="LLN0" inst="" lnType="SIPROTEC5_LNType_LLN0_LDevice_Generic" desc="PowS_SingleCT1/LLN0">
						<Private type="Siemens-MasterId">c4c8123a-2046-47f4-8659-506e21bd1cbc</Private>
						<DOI name="Mod" desc="Mode (controllable)"/>
						<DOI name="Beh" desc="Behavior"/>
						<DOI name="Health" desc="Health"/>
						<DOI name="NamPlt" desc="Name plate">
							<DAI name="configRev">
								<Val>2023-04-04 22:48:07</Val>
							</DAI>
							<DAI name="ldNs">
								<Val>IEC 61850-7-4:2007B</Val>
							</DAI>
						</DOI>
						<DOI name="GrRef" desc="GrRef">
							<DAI name="setSrcRef">
								<Val>@PowS</Val>
							</DAI>
						</DOI>
					</LN0>
					<LN lnClass="GAPC" inst="1" lnType="SIPROTEC5_LNType_GAPC_FB0_MUCurrent_1ph" desc="General" prefix="">
						<Private type="Siemens-MasterId">030b3efe-dbf8-4461-b9be-03cc16731d9e</Private>
						<DOI name="Mod" desc="Mode (controllable)"/>
						<DOI name="Beh" desc="Behavior"/>
						<DOI name="Health" desc="Health"/>
						<DOI name="NamPlt" desc="Name plate">
							<DAI name="configRev">
								<Val>2023-04-04 22:48:07</Val>
							</DAI>
						</DOI>
						<DOI name="PhCurrent" desc="Iph">
							<DAI name="db">
								<Val>10000</Val>
							</DAI>
						</DOI>
					</LN>
					<LN lnClass="TCTR" inst="1" lnType="SIPROTEC5_LNType_TCTR" desc="CT 1" prefix="I01A">
						<Private type="Siemens-MasterId">a76fe354-0b44-44e0-b305-f148088a4f8a</Private>
						<DOI name="Mod" desc="Mode (status only)"/>
						<DOI name="Beh" desc="Behavior"/>
						<DOI name="Health" desc="Health"/>
						<DOI name="NamPlt" desc="Name plate">
							<DAI name="configRev">
								<Val>2023-04-04 22:48:07</Val>
							</DAI>
							<DAI name="lnNs">
								<Val>IEC 61869-9:2016A</Val>
							</DAI>
						</DOI>
						<DOI name="ARtg" desc="Rated primary current">
							<SDI name="setMag">
								<DAI name="f">
									<Val>200</Val>
								</DAI>
							</SDI>
							<SDI name="units">
								<DAI name="SIUnit">
									<Val>A</Val>
								</DAI>
							</SDI>
							<SDI name="minVal">
								<DAI name="f">
									<Val>1</Val>
								</DAI>
							</SDI>
							<SDI name="maxVal">
								<DAI name="f">
									<Val>100000</Val>
								</DAI>
							</SDI>
							<SDI name="stepSize">
								<DAI name="f">
									<Val>0.1</Val>
								</DAI>
							</SDI>
						</DOI>
						<DOI name="Rat" desc="Rat">
							<SDI name="setMag">
								<DAI name="f">
									<Val>200</Val>
								</DAI>
							</SDI>
							<SDI name="maxVal">
								<DAI name="f">
									<Val>10000</Val>
								</DAI>
							</SDI>
							<SDI name="stepSize">
								<DAI name="f">
									<Val>0.1</Val>
								</DAI>
							</SDI>
						</DOI>
						<DOI name="HzRtg" desc="Rated frequency">
							<SDI name="setMag">
								<DAI name="f">
									<Val>50</Val>
								</DAI>
							</SDI>
							<SDI name="units">
								<DAI name="SIUnit">
									<Val>Hz</Val>
								</DAI>
							</SDI>
							<SDI name="minVal">
								<DAI name="f">
									<Val>16.67</Val>
								</DAI>
							</SDI>
							<SDI name="maxVal">
								<DAI name="f">
									<Val>60</Val>
								</DAI>
							</SDI>
							<SDI name="stepSize">
								<DAI name="f">
									<Val>0.01</Val>
								</DAI>
							</SDI>
						</DOI>
						<DOI name="Cor" desc="Magnitude correction">
							<SDI name="setMag">
								<DAI name="f">
									<Val>1</Val>
								</DAI>
							</SDI>
							<SDI name="minVal">
								<DAI name="f">
									<Val>0.01</Val>
								</DAI>
							</SDI>
							<SDI name="maxVal">
								<DAI name="f">
									<Val>10</Val>
								</DAI>
							</SDI>
							<SDI name="stepSize">
								<DAI name="f">
									<Val>1E-05</Val>
								</DAI>
							</SDI>
						</DOI>
						<DOI name="AmpSv" desc="Sampled val. current">
							<SDI name="units">
								<DAI name="SIUnit">
									<Val>A</Val>
								</DAI>
							</SDI>
							<SDI name="sVC">
								<DAI name="scaleFactor">
									<Val>0.001</Val>
								</DAI>
							</SDI>
						</DOI>
						<DOI name="Trp" desc="Transient perform. class">
							<DAI name="setVal">
								<Val>TPM</Val>
							</DAI>
						</DOI>
						<DOI name="ScndTmms" desc="Second. loop time const.">
							<DAI name="setVal">
								<Val>210</Val>
							</DAI>
							<DAI name="minVal">
								<Val>1</Val>
							</DAI>
							<DAI name="maxVal">
								<Val>2147483647</Val>
							</DAI>
						</DOI>
						<DOI name="Clip" desc="Ratio of clipping limit">
							<SDI name="setMag">
								<DAI name="f">
									<Val>100</Val>
								</DAI>
							</SDI>
							<SDI name="maxVal">
								<DAI name="f">
									<Val>100</Val>
								</DAI>
							</SDI>
							<SDI name="stepSize">
								<DAI name="f">
									<Val>0.01</Val>
								</DAI>
							</SDI>
						</DOI>
						<DOI name="AccMeas" desc="Meas. accuracy class">
							<DAI name="setVal">
								<Val>0.2S</Val>
							</DAI>
						</DOI>
						<DOI name="AccPro" desc="Prot. accuracy class">
							<DAI name="setVal">
								<Val>1</Val>
							</DAI>
						</DOI>
						<DOI name="HoldTmms" desc="Holdover time">
							<DAI name="setVal">
								<Val>5000</Val>
							</DAI>
							<DAI name="minVal">
								<Val>500</Val>
							</DAI>
							<DAI name="maxVal">
								<Val>90000</Val>
							</DAI>
						</DOI>
						<DOI name="NamAccRtg" desc="NamAccRtg">
							<DAI name="val">
								<Val>0,5S/5P20</Val>
							</DAI>
						</DOI>
						<DOI name="NamARtg" desc="NamARtg">
							<DAI name="val">
								<Val>200;400;800</Val>
							</DAI>
						</DOI>
						<DOI name="NamClipRtg" desc="NamClipRtg">
							<DAI name="val">
								<Val>20</Val>
							</DAI>
						</DOI>
					</LN>
				</LDevice>
				<LDevice desc="PowS_Single CT 2" inst="PowS_SingleCT2">
					<Private type="Siemens-MasterId">4ff100e3-7b56-4fcd-814a-f74b491a25f6</Private>
					<LN0 lnClass="LLN0" inst="" lnType="SIPROTEC5_LNType_LLN0_LDevice_Generic" desc="PowS_SingleCT2/LLN0">
						<Private type="Siemens-MasterId">2561270f-7726-41e0-bf12-77e92f139766</Private>
						<DOI name="Mod" desc="Mode (controllable)"/>
						<DOI name="Beh" desc="Behavior"/>
						<DOI name="Health" desc="Health"/>
						<DOI name="NamPlt" desc="Name plate">
							<DAI name="configRev">
								<Val>2023-04-04 22:48:07</Val>
							</DAI>
							<DAI name="ldNs">
								<Val>IEC 61850-7-4:2007B</Val>
							</DAI>
						</DOI>
						<DOI name="GrRef" desc="GrRef">
							<DAI name="setSrcRef">
								<Val>@PowS</Val>
							</DAI>
						</DOI>
					</LN0>
					<LN lnClass="GAPC" inst="1" lnType="SIPROTEC5_LNType_GAPC_FB0_MUCurrent_1ph" desc="General" prefix="">
						<Private type="Siemens-MasterId">b4f780ee-b5d8-4505-b038-d6c9db7f12dc</Private>
						<DOI name="Mod" desc="Mode (controllable)"/>
						<DOI name="Beh" desc="Behavior"/>
						<DOI name="Health" desc="Health"/>
						<DOI name="NamPlt" desc="Name plate">
							<DAI name="configRev">
								<Val>2023-04-04 22:48:07</Val>
							</DAI>
						</DOI>
						<DOI name="PhCurrent" desc="Iph">
							<DAI name="db">
								<Val>10000</Val>
							</DAI>
						</DOI>
					</LN>
					<LN lnClass="TCTR" inst="1" lnType="SIPROTEC5_LNType_TCTR" desc="CT 1" prefix="I02A">
						<Private type="Siemens-MasterId">212fed73-4b51-4616-aa1c-61cc39adf3b0</Private>
						<DOI name="Mod" desc="Mode (status only)"/>
						<DOI name="Beh" desc="Behavior"/>
						<DOI name="Health" desc="Health"/>
						<DOI name="NamPlt" desc="Name plate">
							<DAI name="configRev">
								<Val>2023-04-04 22:48:07</Val>
							</DAI>
							<DAI name="lnNs">
								<Val>IEC 61869-9:2016A</Val>
							</DAI>
						</DOI>
						<DOI name="ARtg" desc="Rated primary current">
							<SDI name="setMag">
								<DAI name="f">
									<Val>200</Val>
								</DAI>
							</SDI>
							<SDI name="units">
								<DAI name="SIUnit">
									<Val>A</Val>
								</DAI>
							</SDI>
							<SDI name="minVal">
								<DAI name="f">
									<Val>1</Val>
								</DAI>
							</SDI>
							<SDI name="maxVal">
								<DAI name="f">
									<Val>100000</Val>
								</DAI>
							</SDI>
							<SDI name="stepSize">
								<DAI name="f">
									<Val>0.1</Val>
								</DAI>
							</SDI>
						</DOI>
						<DOI name="Rat" desc="Rat">
							<SDI name="setMag">
								<DAI name="f">
									<Val>200</Val>
								</DAI>
							</SDI>
							<SDI name="maxVal">
								<DAI name="f">
									<Val>10000</Val>
								</DAI>
							</SDI>
							<SDI name="stepSize">
								<DAI name="f">
									<Val>0.1</Val>
								</DAI>
							</SDI>
						</DOI>
						<DOI name="HzRtg" desc="Rated frequency">
							<SDI name="setMag">
								<DAI name="f">
									<Val>50</Val>
								</DAI>
							</SDI>
							<SDI name="units">
								<DAI name="SIUnit">
									<Val>Hz</Val>
								</DAI>
							</SDI>
							<SDI name="minVal">
								<DAI name="f">
									<Val>16.67</Val>
								</DAI>
							</SDI>
							<SDI name="maxVal">
								<DAI name="f">
									<Val>60</Val>
								</DAI>
							</SDI>
							<SDI name="stepSize">
								<DAI name="f">
									<Val>0.01</Val>
								</DAI>
							</SDI>
						</DOI>
						<DOI name="Cor" desc="Magnitude correction">
							<SDI name="setMag">
								<DAI name="f">
									<Val>1</Val>
								</DAI>
							</SDI>
							<SDI name="minVal">
								<DAI name="f">
									<Val>0.01</Val>
								</DAI>
							</SDI>
							<SDI name="maxVal">
								<DAI name="f">
									<Val>10</Val>
								</DAI>
							</SDI>
							<SDI name="stepSize">
								<DAI name="f">
									<Val>1E-05</Val>
								</DAI>
							</SDI>
						</DOI>
						<DOI name="AmpSv" desc="Sampled val. current">
							<SDI name="units">
								<DAI name="SIUnit">
									<Val>A</Val>
								</DAI>
							</SDI>
							<SDI name="sVC">
								<DAI name="scaleFactor">
									<Val>0.001</Val>
								</DAI>
							</SDI>
						</DOI>
						<DOI name="Trp" desc="Transient perform. class">
							<DAI name="setVal">
								<Val>TPM</Val>
							</DAI>
						</DOI>
						<DOI name="ScndTmms" desc="Second. loop time const.">
							<DAI name="setVal">
								<Val>210</Val>
							</DAI>
							<DAI name="minVal">
								<Val>1</Val>
							</DAI>
							<DAI name="maxVal">
								<Val>2147483647</Val>
							</DAI>
						</DOI>
						<DOI name="Clip" desc="Ratio of clipping limit">
							<SDI name="setMag">
								<DAI name="f">
									<Val>100</Val>
								</DAI>
							</SDI>
							<SDI name="maxVal">
								<DAI name="f">
									<Val>100</Val>
								</DAI>
							</SDI>
							<SDI name="stepSize">
								<DAI name="f">
									<Val>0.01</Val>
								</DAI>
							</SDI>
						</DOI>
						<DOI name="AccMeas" desc="Meas. accuracy class">
							<DAI name="setVal">
								<Val>0.2S</Val>
							</DAI>
						</DOI>
						<DOI name="AccPro" desc="Prot. accuracy class">
							<DAI name="setVal">
								<Val>1</Val>
							</DAI>
						</DOI>
						<DOI name="HoldTmms" desc="Holdover time">
							<DAI name="setVal">
								<Val>5000</Val>
							</DAI>
							<DAI name="minVal">
								<Val>500</Val>
							</DAI>
							<DAI name="maxVal">
								<Val>90000</Val>
							</DAI>
						</DOI>
						<DOI name="NamAccRtg" desc="NamAccRtg">
							<DAI name="val">
								<Val>0,5S/5P20</Val>
							</DAI>
						</DOI>
						<DOI name="NamARtg" desc="NamARtg">
							<DAI name="val">
								<Val>200;400;800</Val>
							</DAI>
						</DOI>
						<DOI name="NamClipRtg" desc="NamClipRtg">
							<DAI name="val">
								<Val>20</Val>
							</DAI>
						</DOI>
					</LN>
				</LDevice>
				<LDevice desc="PowS_Single CT 3" inst="PowS_SingleCT3">
					<Private type="Siemens-MasterId">5b072c17-28fc-4974-bef9-4675ee095cd9</Private>
					<LN0 lnClass="LLN0" inst="" lnType="SIPROTEC5_LNType_LLN0_LDevice_Generic" desc="PowS_SingleCT3/LLN0">
						<Private type="Siemens-MasterId">0fa6bd7f-0adb-4a0c-b79b-bf25c9281454</Private>
						<DOI name="Mod" desc="Mode (controllable)"/>
						<DOI name="Beh" desc="Behavior"/>
						<DOI name="Health" desc="Health"/>
						<DOI name="NamPlt" desc="Name plate">
							<DAI name="configRev">
								<Val>2023-04-04 22:48:07</Val>
							</DAI>
							<DAI name="ldNs">
								<Val>IEC 61850-7-4:2007B</Val>
							</DAI>
						</DOI>
						<DOI name="GrRef" desc="GrRef">
							<DAI name="setSrcRef">
								<Val>@PowS</Val>
							</DAI>
						</DOI>
					</LN0>
					<LN lnClass="GAPC" inst="1" lnType="SIPROTEC5_LNType_GAPC_FB0_MUCurrent_1ph" desc="General" prefix="">
						<Private type="Siemens-MasterId">7342e51c-aa22-4077-a673-8b713af97d86</Private>
						<DOI name="Mod" desc="Mode (controllable)"/>
						<DOI name="Beh" desc="Behavior"/>
						<DOI name="Health" desc="Health"/>
						<DOI name="NamPlt" desc="Name plate">
							<DAI name="configRev">
								<Val>2023-04-04 22:48:07</Val>
							</DAI>
						</DOI>
						<DOI name="PhCurrent" desc="Iph">
							<DAI name="db">
								<Val>10000</Val>
							</DAI>
						</DOI>
					</LN>
					<LN lnClass="TCTR" inst="1" lnType="SIPROTEC5_LNType_TCTR" desc="CT 1" prefix="I03A">
						<Private type="Siemens-MasterId">0feaf8c1-b4b9-42a1-99bf-a5bebb7ed3a6</Private>
						<DOI name="Mod" desc="Mode (status only)"/>
						<DOI name="Beh" desc="Behavior"/>
						<DOI name="Health" desc="Health"/>
						<DOI name="NamPlt" desc="Name plate">
							<DAI name="configRev">
								<Val>2023-04-04 22:48:07</Val>
							</DAI>
							<DAI name="lnNs">
								<Val>IEC 61869-9:2016A</Val>
							</DAI>
						</DOI>
						<DOI name="ARtg" desc="Rated primary current">
							<SDI name="setMag">
								<DAI name="f">
									<Val>200</Val>
								</DAI>
							</SDI>
							<SDI name="units">
								<DAI name="SIUnit">
									<Val>A</Val>
								</DAI>
							</SDI>
							<SDI name="minVal">
								<DAI name="f">
									<Val>1</Val>
								</DAI>
							</SDI>
							<SDI name="maxVal">
								<DAI name="f">
									<Val>100000</Val>
								</DAI>
							</SDI>
							<SDI name="stepSize">
								<DAI name="f">
									<Val>0.1</Val>
								</DAI>
							</SDI>
						</DOI>
						<DOI name="Rat" desc="Rat">
							<SDI name="setMag">
								<DAI name="f">
									<Val>200</Val>
								</DAI>
							</SDI>
							<SDI name="maxVal">
								<DAI name="f">
									<Val>10000</Val>
								</DAI>
							</SDI>
							<SDI name="stepSize">
								<DAI name="f">
									<Val>0.1</Val>
								</DAI>
							</SDI>
						</DOI>
						<DOI name="HzRtg" desc="Rated frequency">
							<SDI name="setMag">
								<DAI name="f">
									<Val>50</Val>
								</DAI>
							</SDI>
							<SDI name="units">
								<DAI name="SIUnit">
									<Val>Hz</Val>
								</DAI>
							</SDI>
							<SDI name="minVal">
								<DAI name="f">
									<Val>16.67</Val>
								</DAI>
							</SDI>
							<SDI name="maxVal">
								<DAI name="f">
									<Val>60</Val>
								</DAI>
							</SDI>
							<SDI name="stepSize">
								<DAI name="f">
									<Val>0.01</Val>
								</DAI>
							</SDI>
						</DOI>
						<DOI name="Cor" desc="Magnitude correction">
							<SDI name="setMag">
								<DAI name="f">
									<Val>1</Val>
								</DAI>
							</SDI>
							<SDI name="minVal">
								<DAI name="f">
									<Val>0.01</Val>
								</DAI>
							</SDI>
							<SDI name="maxVal">
								<DAI name="f">
									<Val>10</Val>
								</DAI>
							</SDI>
							<SDI name="stepSize">
								<DAI name="f">
									<Val>1E-05</Val>
								</DAI>
							</SDI>
						</DOI>
						<DOI name="AmpSv" desc="Sampled val. current">
							<SDI name="units">
								<DAI name="SIUnit">
									<Val>A</Val>
								</DAI>
							</SDI>
							<SDI name="sVC">
								<DAI name="scaleFactor">
									<Val>0.001</Val>
								</DAI>
							</SDI>
						</DOI>
						<DOI name="Trp" desc="Transient perform. class">
							<DAI name="setVal">
								<Val>TPM</Val>
							</DAI>
						</DOI>
						<DOI name="ScndTmms" desc="Second. loop time const.">
							<DAI name="setVal">
								<Val>210</Val>
							</DAI>
							<DAI name="minVal">
								<Val>1</Val>
							</DAI>
							<DAI name="maxVal">
								<Val>2147483647</Val>
							</DAI>
						</DOI>
						<DOI name="Clip" desc="Ratio of clipping limit">
							<SDI name="setMag">
								<DAI name="f">
									<Val>100</Val>
								</DAI>
							</SDI>
							<SDI name="maxVal">
								<DAI name="f">
									<Val>100</Val>
								</DAI>
							</SDI>
							<SDI name="stepSize">
								<DAI name="f">
									<Val>0.01</Val>
								</DAI>
							</SDI>
						</DOI>
						<DOI name="AccMeas" desc="Meas. accuracy class">
							<DAI name="setVal">
								<Val>0.2S</Val>
							</DAI>
						</DOI>
						<DOI name="AccPro" desc="Prot. accuracy class">
							<DAI name="setVal">
								<Val>1</Val>
							</DAI>
						</DOI>
						<DOI name="HoldTmms" desc="Holdover time">
							<DAI name="setVal">
								<Val>5000</Val>
							</DAI>
							<DAI name="minVal">
								<Val>500</Val>
							</DAI>
							<DAI name="maxVal">
								<Val>90000</Val>
							</DAI>
						</DOI>
						<DOI name="NamAccRtg" desc="NamAccRtg">
							<DAI name="val">
								<Val>0,5S/5P20</Val>
							</DAI>
						</DOI>
						<DOI name="NamARtg" desc="NamARtg">
							<DAI name="val">
								<Val>200;400;800</Val>
							</DAI>
						</DOI>
						<DOI name="NamClipRtg" desc="NamClipRtg">
							<DAI name="val">
								<Val>20</Val>
							</DAI>
						</DOI>
					</LN>
				</LDevice>
				<LDevice desc="PowS_Single CT 4" inst="PowS_SingleCT4">
					<Private type="Siemens-MasterId">97c2e58f-bc51-4f45-84a5-8acd5c659dd2</Private>
					<LN0 lnClass="LLN0" inst="" lnType="SIPROTEC5_LNType_LLN0_LDevice_Generic" desc="PowS_SingleCT4/LLN0">
						<Private type="Siemens-MasterId">de88b1a3-107a-47cf-b7e4-cd822da7a14b</Private>
						<DOI name="Mod" desc="Mode (controllable)"/>
						<DOI name="Beh" desc="Behavior"/>
						<DOI name="Health" desc="Health"/>
						<DOI name="NamPlt" desc="Name plate">
							<DAI name="configRev">
								<Val>2023-04-04 22:48:07</Val>
							</DAI>
							<DAI name="ldNs">
								<Val>IEC 61850-7-4:2007B</Val>
							</DAI>
						</DOI>
						<DOI name="GrRef" desc="GrRef">
							<DAI name="setSrcRef">
								<Val>@PowS</Val>
							</DAI>
						</DOI>
					</LN0>
					<LN lnClass="GAPC" inst="1" lnType="SIPROTEC5_LNType_GAPC_FB0_MUCurrent_1ph" desc="General" prefix="">
						<Private type="Siemens-MasterId">ba4c972d-7635-44b8-8b1a-1d96badf6f68</Private>
						<DOI name="Mod" desc="Mode (controllable)"/>
						<DOI name="Beh" desc="Behavior"/>
						<DOI name="Health" desc="Health"/>
						<DOI name="NamPlt" desc="Name plate">
							<DAI name="configRev">
								<Val>2023-04-04 22:48:07</Val>
							</DAI>
						</DOI>
						<DOI name="PhCurrent" desc="Iph">
							<DAI name="db">
								<Val>10000</Val>
							</DAI>
						</DOI>
					</LN>
					<LN lnClass="TCTR" inst="1" lnType="SIPROTEC5_LNType_TCTR" desc="CT 1" prefix="I04A">
						<Private type="Siemens-MasterId">bdc933cd-ed12-454b-b51f-f249b14be660</Private>
						<DOI name="Mod" desc="Mode (status only)"/>
						<DOI name="Beh" desc="Behavior"/>
						<DOI name="Health" desc="Health"/>
						<DOI name="NamPlt" desc="Name plate">
							<DAI name="configRev">
								<Val>2023-04-04 22:48:07</Val>
							</DAI>
							<DAI name="lnNs">
								<Val>IEC 61869-9:2016A</Val>
							</DAI>
						</DOI>
						<DOI name="ARtg" desc="Rated primary current">
							<SDI name="setMag">
								<DAI name="f">
									<Val>200</Val>
								</DAI>
							</SDI>
							<SDI name="units">
								<DAI name="SIUnit">
									<Val>A</Val>
								</DAI>
							</SDI>
							<SDI name="minVal">
								<DAI name="f">
									<Val>1</Val>
								</DAI>
							</SDI>
							<SDI name="maxVal">
								<DAI name="f">
									<Val>100000</Val>
								</DAI>
							</SDI>
							<SDI name="stepSize">
								<DAI name="f">
									<Val>0.1</Val>
								</DAI>
							</SDI>
						</DOI>
						<DOI name="Rat" desc="Rat">
							<SDI name="setMag">
								<DAI name="f">
									<Val>200</Val>
								</DAI>
							</SDI>
							<SDI name="maxVal">
								<DAI name="f">
									<Val>10000</Val>
								</DAI>
							</SDI>
							<SDI name="stepSize">
								<DAI name="f">
									<Val>0.1</Val>
								</DAI>
							</SDI>
						</DOI>
						<DOI name="HzRtg" desc="Rated frequency">
							<SDI name="setMag">
								<DAI name="f">
									<Val>50</Val>
								</DAI>
							</SDI>
							<SDI name="units">
								<DAI name="SIUnit">
									<Val>Hz</Val>
								</DAI>
							</SDI>
							<SDI name="minVal">
								<DAI name="f">
									<Val>16.67</Val>
								</DAI>
							</SDI>
							<SDI name="maxVal">
								<DAI name="f">
									<Val>60</Val>
								</DAI>
							</SDI>
							<SDI name="stepSize">
								<DAI name="f">
									<Val>0.01</Val>
								</DAI>
							</SDI>
						</DOI>
						<DOI name="Cor" desc="Magnitude correction">
							<SDI name="setMag">
								<DAI name="f">
									<Val>1</Val>
								</DAI>
							</SDI>
							<SDI name="minVal">
								<DAI name="f">
									<Val>0.01</Val>
								</DAI>
							</SDI>
							<SDI name="maxVal">
								<DAI name="f">
									<Val>10</Val>
								</DAI>
							</SDI>
							<SDI name="stepSize">
								<DAI name="f">
									<Val>1E-05</Val>
								</DAI>
							</SDI>
						</DOI>
						<DOI name="AmpSv" desc="Sampled val. current">
							<SDI name="units">
								<DAI name="SIUnit">
									<Val>A</Val>
								</DAI>
							</SDI>
							<SDI name="sVC">
								<DAI name="scaleFactor">
									<Val>0.001</Val>
								</DAI>
							</SDI>
						</DOI>
						<DOI name="Trp" desc="Transient perform. class">
							<DAI name="setVal">
								<Val>TPM</Val>
							</DAI>
						</DOI>
						<DOI name="ScndTmms" desc="Second. loop time const.">
							<DAI name="setVal">
								<Val>210</Val>
							</DAI>
							<DAI name="minVal">
								<Val>1</Val>
							</DAI>
							<DAI name="maxVal">
								<Val>2147483647</Val>
							</DAI>
						</DOI>
						<DOI name="Clip" desc="Ratio of clipping limit">
							<SDI name="setMag">
								<DAI name="f">
									<Val>100</Val>
								</DAI>
							</SDI>
							<SDI name="maxVal">
								<DAI name="f">
									<Val>100</Val>
								</DAI>
							</SDI>
							<SDI name="stepSize">
								<DAI name="f">
									<Val>0.01</Val>
								</DAI>
							</SDI>
						</DOI>
						<DOI name="AccMeas" desc="Meas. accuracy class">
							<DAI name="setVal">
								<Val>0.2S</Val>
							</DAI>
						</DOI>
						<DOI name="AccPro" desc="Prot. accuracy class">
							<DAI name="setVal">
								<Val>1</Val>
							</DAI>
						</DOI>
						<DOI name="HoldTmms" desc="Holdover time">
							<DAI name="setVal">
								<Val>5000</Val>
							</DAI>
							<DAI name="minVal">
								<Val>500</Val>
							</DAI>
							<DAI name="maxVal">
								<Val>90000</Val>
							</DAI>
						</DOI>
						<DOI name="NamAccRtg" desc="NamAccRtg">
							<DAI name="val">
								<Val>0,5S/5P20</Val>
							</DAI>
						</DOI>
						<DOI name="NamARtg" desc="NamARtg">
							<DAI name="val">
								<Val>200;400;800</Val>
							</DAI>
						</DOI>
						<DOI name="NamClipRtg" desc="NamClipRtg">
							<DAI name="val">
								<Val>20</Val>
							</DAI>
						</DOI>
					</LN>
				</LDevice>
				<LDevice desc="PowS_Single VT" inst="PowS_SingleVT">
					<Private type="Siemens-MasterId">d512298d-df0d-4d86-b721-ac2e0e836974</Private>
					<LN0 lnClass="LLN0" inst="" lnType="SIPROTEC5_LNType_LLN0_LDevice_Generic" desc="PowS_SingleVT/LLN0">
						<Private type="Siemens-MasterId">5823bd0b-5307-48f7-b6d1-cbd1cc217ccd</Private>
						<DOI name="Mod" desc="Mode (controllable)"/>
						<DOI name="Beh" desc="Behavior"/>
						<DOI name="Health" desc="Health"/>
						<DOI name="NamPlt" desc="Name plate">
							<DAI name="configRev">
								<Val>2023-04-04 22:48:07</Val>
							</DAI>
							<DAI name="ldNs">
								<Val>IEC 61850-7-4:2007B</Val>
							</DAI>
						</DOI>
						<DOI name="GrRef" desc="GrRef">
							<DAI name="setSrcRef">
								<Val>@PowS</Val>
							</DAI>
						</DOI>
					</LN0>
					<LN lnClass="GAPC" inst="1" lnType="SIPROTEC5_LNType_GAPC_FB0_MUVoltage_1ph" desc="General" prefix="">
						<Private type="Siemens-MasterId">cdc50e4d-4d84-4b63-a431-593305270f23</Private>
						<DOI name="Mod" desc="Mode (controllable)"/>
						<DOI name="Beh" desc="Behavior"/>
						<DOI name="Health" desc="Health"/>
						<DOI name="NamPlt" desc="Name plate">
							<DAI name="configRev">
								<Val>2023-04-04 22:48:07</Val>
							</DAI>
						</DOI>
						<DOI name="PhVoltage" desc="Vph">
							<DAI name="db">
								<Val>2000</Val>
							</DAI>
						</DOI>
					</LN>
					<LN lnClass="TVTR" inst="1" lnType="SIPROTEC5_LNType_TVTR" desc="VT 1" prefix="U01A">
						<Private type="Siemens-MasterId">54ae2115-6d3a-49e2-b3d5-4a04af0e8bef</Private>
						<DOI name="Mod" desc="Mode (status only)"/>
						<DOI name="Beh" desc="Behavior"/>
						<DOI name="Health" desc="Health"/>
						<DOI name="NamPlt" desc="Name plate">
							<DAI name="configRev">
								<Val>2023-04-04 22:48:07</Val>
							</DAI>
							<DAI name="lnNs">
								<Val>IEC 61869-9:2016A</Val>
							</DAI>
						</DOI>
						<DOI name="VolSv" desc="Sampled val. voltage">
							<SDI name="units">
								<DAI name="SIUnit">
									<Val>V</Val>
								</DAI>
							</SDI>
							<SDI name="sVC">
								<DAI name="scaleFactor">
									<Val>0.01</Val>
								</DAI>
							</SDI>
						</DOI>
						<DOI name="VRtg" desc="Rated primary voltage">
							<SDI name="setMag">
								<DAI name="f">
									<Val>127.017059</Val>
								</DAI>
							</SDI>
							<SDI name="units">
								<DAI name="SIUnit">
									<Val>V</Val>
								</DAI>
								<DAI name="multiplier">
									<Val>k</Val>
								</DAI>
							</SDI>
							<SDI name="minVal">
								<DAI name="f">
									<Val>0.1</Val>
								</DAI>
							</SDI>
							<SDI name="maxVal">
								<DAI name="f">
									<Val>1200</Val>
								</DAI>
							</SDI>
							<SDI name="stepSize">
								<DAI name="f">
									<Val>0.01</Val>
								</DAI>
							</SDI>
						</DOI>
						<DOI name="HzRtg" desc="Rated frequency">
							<SDI name="setMag">
								<DAI name="f">
									<Val>50</Val>
								</DAI>
							</SDI>
							<SDI name="units">
								<DAI name="SIUnit">
									<Val>Hz</Val>
								</DAI>
							</SDI>
							<SDI name="minVal">
								<DAI name="f">
									<Val>16.67</Val>
								</DAI>
							</SDI>
							<SDI name="maxVal">
								<DAI name="f">
									<Val>60</Val>
								</DAI>
							</SDI>
							<SDI name="stepSize">
								<DAI name="f">
									<Val>0.01</Val>
								</DAI>
							</SDI>
						</DOI>
						<DOI name="Rat" desc="Rat">
							<SDI name="setMag">
								<DAI name="f">
									<Val>2000</Val>
								</DAI>
							</SDI>
							<SDI name="maxVal">
								<DAI name="f">
									<Val>10000</Val>
								</DAI>
							</SDI>
							<SDI name="stepSize">
								<DAI name="f">
									<Val>0.1</Val>
								</DAI>
							</SDI>
						</DOI>
						<DOI name="Cor" desc="Magnitude correction">
							<SDI name="setMag">
								<DAI name="f">
									<Val>1</Val>
								</DAI>
							</SDI>
							<SDI name="minVal">
								<DAI name="f">
									<Val>0.01</Val>
								</DAI>
							</SDI>
							<SDI name="maxVal">
								<DAI name="f">
									<Val>10</Val>
								</DAI>
							</SDI>
							<SDI name="stepSize">
								<DAI name="f">
									<Val>1E-05</Val>
								</DAI>
							</SDI>
						</DOI>
						<DOI name="Clip" desc="Ratio of clipping limit">
							<SDI name="setMag">
								<DAI name="f">
									<Val>3.14918327</Val>
								</DAI>
							</SDI>
							<SDI name="maxVal">
								<DAI name="f">
									<Val>100</Val>
								</DAI>
							</SDI>
							<SDI name="stepSize">
								<DAI name="f">
									<Val>0.01</Val>
								</DAI>
							</SDI>
						</DOI>
						<DOI name="AccMeas" desc="Meas. accuracy class">
							<DAI name="setVal">
								<Val>0.2S</Val>
							</DAI>
						</DOI>
						<DOI name="AccPro" desc="Prot. accuracy class">
							<DAI name="setVal">
								<Val>1</Val>
							</DAI>
						</DOI>
						<DOI name="HoldTmms" desc="Holdover time">
							<DAI name="setVal">
								<Val>5000</Val>
							</DAI>
							<DAI name="minVal">
								<Val>500</Val>
							</DAI>
							<DAI name="maxVal">
								<Val>90000</Val>
							</DAI>
						</DOI>
						<DOI name="NamAccRtg" desc="NamAccRtg">
							<DAI name="val">
								<Val>0,5/3P</Val>
							</DAI>
						</DOI>
						<DOI name="NamVRtg" desc="NamVRtg">
							<DAI name="val">
								<Val>173000</Val>
							</DAI>
						</DOI>
						<DOI name="NamClipRtg" desc="NamClipRtg">
							<DAI name="val">
								<Val>2</Val>
							</DAI>
						</DOI>
					</LN>
					<LN lnClass="SFFM" inst="1" lnType="SIPROTEC5_LNType_SFFM_SMCB" desc="VT miniatureCB" prefix="VTCB_">
						<Private type="Siemens-MasterId">5046c5fa-c789-4f87-98cb-782ccd7b9d53</Private>
						<DOI name="Mod" desc="Mode (controllable)"/>
						<DOI name="Beh" desc="Behavior"/>
						<DOI name="Health" desc="Health"/>
						<DOI name="NamPlt" desc="Name plate">
							<DAI name="configRev">
								<Val>2023-04-04 22:48:07</Val>
							</DAI>
						</DOI>
						<DOI name="VTmcb" desc="&gt;Open"/>
					</LN>
				</LDevice>
				<LDevice desc="Protection" inst="Prot">
					<Private type="Siemens-MasterId">eaa2e98c-26cb-4165-b262-9632ce1947ee</Private>
					<LN0 lnClass="LLN0" inst="" lnType="SIPROTEC5_LNType_LLN0_LDevice_Generic" desc="Prot/LLN0">
						<Private type="Siemens-MasterId">7d217983-cced-47e4-986a-f29f47aaf24d</Private>
						<DataSet name="Customer_CBFail">
							<FCDA ldInst="Prot" prefix="CUST_" lnClass="RBRF" lnInst="1" doName="OpEx" daName="general" fc="ST"/>
							<FCDA ldInst="Prot" prefix="CUST_" lnClass="RBRF" lnInst="1" doName="OpEx" daName="q" fc="ST"/>
						</DataSet>
						<DataSet name="Test">
							<FCDA ldInst="Rec_FaultRecorder" prefix="DEF_" lnClass="RDRE" lnInst="1" doName="FltNum" daName="stVal" fc="ST"/>
							<FCDA ldInst="Rec_FaultRecorder" prefix="DEF_" lnClass="RDRE" lnInst="1" doName="FltNum" daName="q" fc="ST"/>
						</DataSet>
						<DOI name="Mod" desc="Mode (controllable)"/>
						<DOI name="Beh" desc="Behavior"/>
						<DOI name="Health" desc="Health"/>
						<DOI name="NamPlt" desc="Name plate">
							<DAI name="configRev">
								<Val>2023-04-19 10:34:17</Val>
							</DAI>
							<DAI name="ldNs">
								<Val>IEC 61850-7-4:2007B</Val>
							</DAI>
						</DOI>
						<DOI name="GrRef" desc="GrRef">
							<DAI name="setSrcRef">
								<Val>@Application</Val>
							</DAI>
						</DOI>
						<GSEControl name="Customer_CBFail" datSet="Customer_CBFail" confRev="1" type="GOOSE" appID="T_6MU85_TxCouplerLine$Customer_CBFail"/>
						<GSEControl name="Test" datSet="Test" confRev="20001" type="GOOSE" appID="T_6MU85_TxCouplerLine$Test"/>
					</LN0>
					<LN lnClass="GAPC" inst="1" lnType="SIPROTEC5_LNType_GAPC_FB0_FGBreaker_1pol" desc="General" prefix="VI3P_">
						<Private type="Siemens-MasterId">4187cb6c-415b-47f7-9cc2-473602fd0d20</Private>
						<DOI name="Mod" desc="Mode (controllable)"/>
						<DOI name="Beh" desc="Behavior"/>
						<DOI name="Health" desc="Health"/>
						<DOI name="NamPlt" desc="Name plate">
							<DAI name="configRev">
								<Val>2023-04-19 10:34:17</Val>
							</DAI>
						</DOI>
					</LN>
					<LN lnClass="PTRC" inst="1" lnType="SIPROTEC5_LNType_PTRC_FG_Line_3ph" desc="Group indicat." prefix="">
						<Private type="Siemens-MasterId">c3f1fd1e-36b9-4519-b6eb-d0a7ba6be6b9</Private>
						<DOI name="Mod" desc="Mode (controllable)"/>
						<DOI name="Beh" desc="Behavior"/>
						<DOI name="Health" desc="Health"/>
						<DOI name="NamPlt" desc="Name plate">
							<DAI name="configRev">
								<Val>2023-04-19 10:34:17</Val>
							</DAI>
						</DOI>
						<DOI name="Op" desc="Operate"/>
						<DOI name="Str" desc="Pickup"/>
					</LN>
					<LN lnClass="SBWI" inst="1" lnType="SIPROTEC5_LNType_SBWS_BW_confirm" desc="Brk.wire conf" prefix="CF_">
						<Private type="Siemens-MasterId">c5547d50-cfde-4dd3-bb0e-2bb23298b703</Private>
						<DOI name="Mod" desc="Mode (controllable)"/>
						<DOI name="Beh" desc="Behavior"/>
						<DOI name="Health" desc="Health"/>
						<DOI name="NamPlt" desc="Name plate">
							<DAI name="configRev">
								<Val>2023-04-19 10:34:17</Val>
							</DAI>
						</DOI>
						<DOI name="Inactive" desc="Inactive"/>
					</LN>
					<LN lnClass="GAPC" inst="1" lnType="SIPROTEC5_LNType_ResetLed" desc="Reset LED Group" prefix="RSLED">
						<Private type="Siemens-MasterId">94acca10-050a-4c2c-afb9-f0917e2eb920</Private>
						<DOI name="Mod" desc="Mode (controllable)"/>
						<DOI name="Beh" desc="Behavior"/>
						<DOI name="Health" desc="Health"/>
						<DOI name="NamPlt" desc="Name plate">
							<DAI name="configRev">
								<Val>2023-04-19 10:34:17</Val>
							</DAI>
						</DOI>
						<DOI name="ResetIn" desc="&gt;LED reset"/>
						<DOI name="LedTstOut" desc="LED have been reset"/>
						<DOI name="ResetCtl" desc="Reset LEDs"/>
					</LN>
					<LN lnClass="RBRF" inst="1" lnType="SIPROTEC5_LNType_Ctl_USER_Universal" desc="Customer protection" prefix="CUST_">
						<Private type="Siemens-MasterId">b42d622c-ed40-4214-a739-805c9b61ba81</Private>
						<DOI name="Mod" desc="Mode (controllable)"/>
						<DOI name="Beh" desc="Behavior"/>
						<DOI name="Health" desc="Health"/>
						<DOI name="NamPlt" desc="Name plate">
							<DAI name="configRev">
								<Val>2023-04-19 10:34:17</Val>
							</DAI>
						</DOI>
						<DOI name="Loc" desc="Switching auth. local"/>
						<DOI name="LocKey" desc="Sw.author. key switch"/>
						<DOI name="LocSta" desc="Switching auth. station">
							<DAI name="ctlModel">
								<Val>status-only</Val>
							</DAI>
						</DOI>
						<DOI name="Ena" desc="&gt;Enable"/>
						<DOI name="EnaFix" desc="&gt;Enable (fixed)"/>
						<DOI name="SwAuth" desc="Switching authority"/>
						<DOI name="SwMod" desc="Switching mode"/>
						<DOI name="SwAuthEna1" desc="Enable sw. auth. 1">
							<DAI name="operTimeout">
								<Val>1000</Val>
							</DAI>
						</DOI>
						<DOI name="SwAuthEna2" desc="Enable sw. auth. 2">
							<DAI name="operTimeout">
								<Val>1000</Val>
							</DAI>
						</DOI>
						<DOI name="SwAuthEna3" desc="Enable sw. auth. 3">
							<DAI name="operTimeout">
								<Val>1000</Val>
							</DAI>
						</DOI>
						<DOI name="SwAuthEna4" desc="Enable sw. auth. 4">
							<DAI name="operTimeout">
								<Val>1000</Val>
							</DAI>
						</DOI>
						<DOI name="SwAuthEna5" desc="Enable sw. auth. 5">
							<DAI name="operTimeout">
								<Val>1000</Val>
							</DAI>
						</DOI>
						<DOI name="OpEx" desc="CBFail Operated">
							<DAI name="dataNs">
								<Val>SIPROTEC5/userdefined</Val>
							</DAI>
						</DOI>
						<DOI name="CBFail1" desc="CBFail backtrip 1">
							<DAI name="dataNs">
								<Val>Transpower:2023</Val>
							</DAI>
						</DOI>
						<DOI name="CBFail2" desc="CBFail backtrip 2">
							<DAI name="dataNs">
								<Val>Transpower:2023</Val>
							</DAI>
						</DOI>
					</LN>
				</LDevice>
				<LDevice desc="Protection_Bay LAT" inst="Prot_BayLAT">
					<Private type="Siemens-MasterId">af6412be-398a-4ad9-8d37-8055fd483a07</Private>
					<LN0 lnClass="LLN0" inst="" lnType="SIPROTEC5_LNType_LLN0_LDevice_Generic" desc="Prot_BayLAT/LLN0">
						<Private type="Siemens-MasterId">d5a04e02-2bb0-4765-9120-bf8e5f81982c</Private>
						<DOI name="Mod" desc="Mode (controllable)"/>
						<DOI name="Beh" desc="Behavior"/>
						<DOI name="Health" desc="Health"/>
						<DOI name="NamPlt" desc="Name plate">
							<DAI name="configRev">
								<Val>2023-05-22 09:45:15</Val>
							</DAI>
							<DAI name="ldNs">
								<Val>IEC 61850-7-4:2007B</Val>
							</DAI>
						</DOI>
						<DOI name="GrRef" desc="GrRef">
							<DAI name="setSrcRef">
								<Val>@Prot</Val>
							</DAI>
						</DOI>
					</LN0>
					<LN lnClass="PSCH" inst="1" lnType="SIPROTEC5_LNType_PSCH_ExtTrip" desc="Stage 1" prefix="EXT_">
						<Private type="Siemens-MasterId">3e0feceb-39e6-4ccf-8fb6-37461818b5a1</Private>
						<DOI name="Mod" desc="Mode (controllable)"/>
						<DOI name="Beh" desc="Behavior"/>
						<DOI name="Health" desc="Health"/>
						<DOI name="NamPlt" desc="Name plate">
							<DAI name="configRev">
								<Val>2023-05-22 09:45:15</Val>
							</DAI>
						</DOI>
						<DOI name="Str" desc="Pickup"/>
						<DOI name="Op" desc="Operate"/>
						<DOI name="Blk" desc="&gt;Block function"/>
						<DOI name="ExtIn" desc="&gt;External trip"/>
						<DOI name="Inactive" desc="Inactive"/>
						<DOI name="OpTmExp" desc="Operate delay expired"/>
						<DOI name="RxExtIn1" desc="Bay last attempt trip">
							<DAI name="dataNs">
								<Val>SIPROTEC5/userdefined</Val>
							</DAI>
						</DOI>
						<Inputs>
							<ExtRef desc="Bay last attempt trip" intAddr="RxExtIn1;/Ind/stVal" pServT="GOOSE" pDO="Ind" pDA="stVal"/>
							<ExtRef desc="Bay last attempt trip" intAddr="RxExtIn1;/Ind/q" pServT="GOOSE" pDO="Ind" pDA="q"/>
						</Inputs>
					</LN>
				</LDevice>
				<LDevice desc="Protection_Bay trip" inst="Prot_BayTrip">
					<Private type="Siemens-MasterId">4dd21c57-738f-47ae-911a-58fcaec2450c</Private>
					<LN0 lnClass="LLN0" inst="" lnType="SIPROTEC5_LNType_LLN0_LDevice_Generic" desc="Prot_BayTrip/LLN0">
						<Private type="Siemens-MasterId">632db2ce-343d-4679-8e99-3f89d38e83b5</Private>
						<DOI name="Mod" desc="Mode (controllable)"/>
						<DOI name="Beh" desc="Behavior"/>
						<DOI name="Health" desc="Health"/>
						<DOI name="NamPlt" desc="Name plate">
							<DAI name="configRev">
								<Val>2023-04-27 22:43:46</Val>
							</DAI>
							<DAI name="ldNs">
								<Val>IEC 61850-7-4:2007B</Val>
							</DAI>
						</DOI>
						<DOI name="GrRef" desc="GrRef">
							<DAI name="setSrcRef">
								<Val>@Prot</Val>
							</DAI>
						</DOI>
					</LN0>
					<LN lnClass="PSCH" inst="1" lnType="SIPROTEC5_LNType_PSCH_ExtTrip_1" desc="Stage 1" prefix="EXT_">
						<Private type="Siemens-MasterId">91c826ee-211e-45c9-b09e-071484a8320e</Private>
						<DOI name="Mod" desc="Mode (controllable)"/>
						<DOI name="Beh" desc="Behavior"/>
						<DOI name="Health" desc="Health"/>
						<DOI name="NamPlt" desc="Name plate">
							<DAI name="configRev">
								<Val>2023-04-27 22:43:46</Val>
							</DAI>
						</DOI>
						<DOI name="Str" desc="Pickup"/>
						<DOI name="Op" desc="Operate"/>
						<DOI name="Blk" desc="&gt;Block function"/>
						<DOI name="ExtIn" desc="&gt;External trip"/>
						<DOI name="Inactive" desc="Inactive"/>
						<DOI name="OpTmExp" desc="Operate delay expired"/>
						<DOI name="TestExtIn" desc="Test_Bay trip">
							<DAI name="dataNs">
								<Val>Transpower:2023</Val>
							</DAI>
						</DOI>
						<DOI name="RxExtIn1" desc="Bay trip">
							<DAI name="dataNs">
								<Val>SIPROTEC5/userdefined</Val>
							</DAI>
						</DOI>
						<Inputs>
							<ExtRef desc="Test_Bay trip" intAddr="TestExtIn;/Ind/stVal" pServT="GOOSE" pDO="Ind" pDA="stVal"/>
							<ExtRef desc="Test_Bay trip" intAddr="TestExtIn;/Ind/q" pServT="GOOSE" pDO="Ind" pDA="q"/>
							<ExtRef desc="Test_Bay trip" intAddr="TestExtIn;/Ind/t" pServT="GOOSE" pDO="Ind" pDA="t"/>
							<ExtRef desc="Bay trip" intAddr="RxExtIn1;/Ind/stVal" pServT="GOOSE" pDO="Ind" pDA="stVal"/>
							<ExtRef desc="Bay trip" intAddr="RxExtIn1;/Ind/q" pServT="GOOSE" pDO="Ind" pDA="q"/>
						</Inputs>
					</LN>
				</LDevice>
				<LDevice desc="Protection_Busbar trip" inst="Prot_BusbarTrip">
					<Private type="Siemens-MasterId">843e08bb-18d6-4991-beba-6b2697517b31</Private>
					<LN0 lnClass="LLN0" inst="" lnType="SIPROTEC5_LNType_LLN0_LDevice_Generic" desc="Prot_BusbarTrip/LLN0">
						<Private type="Siemens-MasterId">93fddbb1-2db9-42d6-ae2d-dfd8c7873060</Private>
						<DOI name="Mod" desc="Mode (controllable)"/>
						<DOI name="Beh" desc="Behavior"/>
						<DOI name="Health" desc="Health"/>
						<DOI name="NamPlt" desc="Name plate">
							<DAI name="configRev">
								<Val>2023-05-22 09:45:15</Val>
							</DAI>
							<DAI name="ldNs">
								<Val>IEC 61850-7-4:2007B</Val>
							</DAI>
						</DOI>
						<DOI name="GrRef" desc="GrRef">
							<DAI name="setSrcRef">
								<Val>@Prot</Val>
							</DAI>
						</DOI>
					</LN0>
					<LN lnClass="PSCH" inst="1" lnType="SIPROTEC5_LNType_PSCH_ExtTrip_2" desc="Stage 1" prefix="EXT_">
						<Private type="Siemens-MasterId">072c786c-50db-4ca3-ad1d-14f77a5a4d53</Private>
						<DOI name="Mod" desc="Mode (controllable)"/>
						<DOI name="Beh" desc="Behavior"/>
						<DOI name="Health" desc="Health"/>
						<DOI name="NamPlt" desc="Name plate">
							<DAI name="configRev">
								<Val>2023-05-22 09:45:15</Val>
							</DAI>
						</DOI>
						<DOI name="Str" desc="Pickup"/>
						<DOI name="Op" desc="Operate"/>
						<DOI name="Blk" desc="&gt;Block function"/>
						<DOI name="ExtIn" desc="&gt;External trip"/>
						<DOI name="Inactive" desc="Inactive"/>
						<DOI name="OpTmExp" desc="Operate delay expired"/>
						<DOI name="RxExtIn1" desc="Busbar trip">
							<DAI name="dataNs">
								<Val>SIPROTEC5/userdefined</Val>
							</DAI>
						</DOI>
						<DOI name="TestExtIn" desc="Test_Busbar trip">
							<DAI name="dataNs">
								<Val>Transpower:2023</Val>
							</DAI>
						</DOI>
						<Inputs>
							<ExtRef desc="Busbar trip" intAddr="RxExtIn1;/Ind/stVal" pServT="GOOSE" pDO="Ind" pDA="stVal"/>
							<ExtRef desc="Busbar trip" intAddr="RxExtIn1;/Ind/q" pServT="GOOSE" pDO="Ind" pDA="q"/>
							<ExtRef desc="Test_Busbar trip" intAddr="TestExtIn;/Ind/stVal" pServT="GOOSE" pDO="Ind" pDA="stVal"/>
							<ExtRef desc="Test_Busbar trip" intAddr="TestExtIn;/Ind/q" pServT="GOOSE" pDO="Ind" pDA="q"/>
							<ExtRef desc="Test_Busbar trip" intAddr="TestExtIn;/Ind/t" pServT="GOOSE" pDO="Ind" pDA="t"/>
						</Inputs>
					</LN>
				</LDevice>
				<LDevice desc="Protection_FdSym" inst="Prot_FundSymComp">
					<Private type="Siemens-MasterId">e19ab3ec-c08a-47aa-b71f-c16c5d024352</Private>
					<LN0 lnClass="LLN0" inst="" lnType="SIPROTEC5_LNType_LLN0_LDevice_Generic" desc="Prot_FundSymComp/LLN0">
						<Private type="Siemens-MasterId">eb587b43-0531-4a8d-96e0-d63b74320f15</Private>
						<DOI name="Mod" desc="Mode (controllable)"/>
						<DOI name="Beh" desc="Behavior"/>
						<DOI name="Health" desc="Health"/>
						<DOI name="NamPlt" desc="Name plate">
							<DAI name="configRev">
								<Val>2023-04-19 10:34:17</Val>
							</DAI>
							<DAI name="ldNs">
								<Val>IEC 61850-7-4:2007B</Val>
							</DAI>
						</DOI>
						<DOI name="GrRef" desc="GrRef">
							<DAI name="setSrcRef">
								<Val>@Prot</Val>
							</DAI>
						</DOI>
					</LN0>
					<LN lnClass="MMXU" inst="1" lnType="SIPROTEC5_LNType_MMXU_OpMeas_Fund_3ph_Pres" desc="Fundam" prefix="FPRE_">
						<Private type="Siemens-MasterId">c3bec610-20b6-4308-91c6-f2d1528de281</Private>
						<DOI name="Mod" desc="Mode (controllable)"/>
						<DOI name="Beh" desc="Behavior"/>
						<DOI name="Health" desc="Health"/>
						<DOI name="NamPlt" desc="Name plate">
							<DAI name="configRev">
								<Val>2023-04-19 10:34:17</Val>
							</DAI>
						</DOI>
						<DOI name="PPV" desc="Vpp">
							<SDI name="phsAB" desc="Vpp:AB">
								<SDI name="units">
									<DAI name="SIUnit">
										<Val>V</Val>
									</DAI>
									<DAI name="multiplier">
										<Val>k</Val>
									</DAI>
								</SDI>
								<DAI name="db">
									<Val>23</Val>
								</DAI>
								<DAI name="dbAng">
									<Val>1000</Val>
								</DAI>
								<DAI name="dbRef">
									<Val>220</Val>
								</DAI>
							</SDI>
							<SDI name="phsBC" desc="Vpp:BC">
								<SDI name="units">
									<DAI name="SIUnit">
										<Val>V</Val>
									</DAI>
									<DAI name="multiplier">
										<Val>k</Val>
									</DAI>
								</SDI>
								<DAI name="db">
									<Val>23</Val>
								</DAI>
								<DAI name="dbAng">
									<Val>1000</Val>
								</DAI>
								<DAI name="dbRef">
									<Val>220</Val>
								</DAI>
							</SDI>
							<SDI name="phsCA" desc="Vpp:CA">
								<SDI name="units">
									<DAI name="SIUnit">
										<Val>V</Val>
									</DAI>
									<DAI name="multiplier">
										<Val>k</Val>
									</DAI>
								</SDI>
								<DAI name="db">
									<Val>23</Val>
								</DAI>
								<DAI name="dbAng">
									<Val>1000</Val>
								</DAI>
								<DAI name="dbRef">
									<Val>220</Val>
								</DAI>
							</SDI>
						</DOI>
						<DOI name="PhV" desc="Vph">
							<SDI name="phsA" desc="Vph:A">
								<SDI name="units">
									<DAI name="SIUnit">
										<Val>V</Val>
									</DAI>
									<DAI name="multiplier">
										<Val>k</Val>
									</DAI>
								</SDI>
								<DAI name="db">
									<Val>23</Val>
								</DAI>
								<DAI name="dbAng">
									<Val>1000</Val>
								</DAI>
								<DAI name="dbRef">
									<Val>127.02079</Val>
								</DAI>
							</SDI>
							<SDI name="phsB" desc="Vph:B">
								<SDI name="units">
									<DAI name="SIUnit">
										<Val>V</Val>
									</DAI>
									<DAI name="multiplier">
										<Val>k</Val>
									</DAI>
								</SDI>
								<DAI name="db">
									<Val>23</Val>
								</DAI>
								<DAI name="dbAng">
									<Val>1000</Val>
								</DAI>
								<DAI name="dbRef">
									<Val>127.02079</Val>
								</DAI>
							</SDI>
							<SDI name="phsC" desc="Vph:C">
								<SDI name="units">
									<DAI name="SIUnit">
										<Val>V</Val>
									</DAI>
									<DAI name="multiplier">
										<Val>k</Val>
									</DAI>
								</SDI>
								<DAI name="db">
									<Val>23</Val>
								</DAI>
								<DAI name="dbAng">
									<Val>1000</Val>
								</DAI>
								<DAI name="dbRef">
									<Val>127.02079</Val>
								</DAI>
							</SDI>
							<SDI name="res" desc="Vph:res">
								<SDI name="units">
									<DAI name="SIUnit">
										<Val>V</Val>
									</DAI>
								</SDI>
								<DAI name="db">
									<Val>23</Val>
								</DAI>
								<DAI name="dbAng">
									<Val>1000</Val>
								</DAI>
								<DAI name="dbRef">
									<Val>127.02079</Val>
								</DAI>
							</SDI>
						</DOI>
						<DOI name="A" desc="Iph">
							<SDI name="phsA" desc="Iph:A">
								<SDI name="units">
									<DAI name="SIUnit">
										<Val>A</Val>
									</DAI>
								</SDI>
								<DAI name="db">
									<Val>21</Val>
								</DAI>
								<DAI name="dbAng">
									<Val>1000</Val>
								</DAI>
								<DAI name="dbRef">
									<Val>400</Val>
								</DAI>
							</SDI>
							<SDI name="phsB" desc="Iph:B">
								<SDI name="units">
									<DAI name="SIUnit">
										<Val>A</Val>
									</DAI>
								</SDI>
								<DAI name="db">
									<Val>21</Val>
								</DAI>
								<DAI name="dbAng">
									<Val>1000</Val>
								</DAI>
								<DAI name="dbRef">
									<Val>400</Val>
								</DAI>
							</SDI>
							<SDI name="phsC" desc="Iph:C">
								<SDI name="units">
									<DAI name="SIUnit">
										<Val>A</Val>
									</DAI>
								</SDI>
								<DAI name="db">
									<Val>21</Val>
								</DAI>
								<DAI name="dbAng">
									<Val>1000</Val>
								</DAI>
								<DAI name="dbRef">
									<Val>400</Val>
								</DAI>
							</SDI>
							<SDI name="res" desc="Iph:res">
								<SDI name="units">
									<DAI name="SIUnit">
										<Val>A</Val>
									</DAI>
								</SDI>
								<DAI name="db">
									<Val>21</Val>
								</DAI>
								<DAI name="dbAng">
									<Val>1000</Val>
								</DAI>
								<DAI name="dbRef">
									<Val>400</Val>
								</DAI>
							</SDI>
						</DOI>
						<DOI name="VneutC" desc="VN">
							<SDI name="units">
								<DAI name="SIUnit">
									<Val>V</Val>
								</DAI>
								<DAI name="multiplier">
									<Val>k</Val>
								</DAI>
							</SDI>
							<DAI name="db">
								<Val>2000</Val>
							</DAI>
							<DAI name="dbRef">
								<Val>127.02079</Val>
							</DAI>
						</DOI>
						<DOI name="AneutC" desc="IN">
							<SDI name="units">
								<DAI name="SIUnit">
									<Val>A</Val>
								</DAI>
							</SDI>
							<DAI name="db">
								<Val>21</Val>
							</DAI>
							<DAI name="dbRef">
								<Val>400</Val>
							</DAI>
						</DOI>
					</LN>
					<LN lnClass="MMXN" inst="1" lnType="SIPROTEC5_LNType_MMXN_OpMeas_Fund_1ph_Pres" desc="Fundam" prefix="FPRE_">
						<Private type="Siemens-MasterId">79c8cb8c-444f-4311-8c0e-0e22f146d87f</Private>
						<DOI name="Mod" desc="Mode (controllable)"/>
						<DOI name="Beh" desc="Behavior"/>
						<DOI name="Health" desc="Health"/>
						<DOI name="NamPlt" desc="Name plate">
							<DAI name="configRev">
								<Val>2023-04-19 10:34:17</Val>
							</DAI>
						</DOI>
						<DOI name="VxC" desc="V">
							<SDI name="units">
								<DAI name="SIUnit">
									<Val>V</Val>
								</DAI>
							</SDI>
							<DAI name="db">
								<Val>2000</Val>
							</DAI>
						</DOI>
						<DOI name="VsynxC" desc="Vsy">
							<SDI name="units">
								<DAI name="SIUnit">
									<Val>V</Val>
								</DAI>
							</SDI>
							<DAI name="db">
								<Val>2000</Val>
							</DAI>
						</DOI>
						<DOI name="ANparLnC" desc="INp.line">
							<SDI name="units">
								<DAI name="SIUnit">
									<Val>A</Val>
								</DAI>
							</SDI>
							<DAI name="db">
								<Val>10000</Val>
							</DAI>
						</DOI>
						<DOI name="AstarPtC" desc="IY traf.">
							<SDI name="units">
								<DAI name="SIUnit">
									<Val>A</Val>
								</DAI>
							</SDI>
							<DAI name="db">
								<Val>10000</Val>
							</DAI>
						</DOI>
						<DOI name="AxC" desc="I">
							<SDI name="units">
								<DAI name="SIUnit">
									<Val>A</Val>
								</DAI>
							</SDI>
							<DAI name="db">
								<Val>10000</Val>
							</DAI>
						</DOI>
						<DOI name="VneutC" desc="VN">
							<SDI name="units">
								<DAI name="SIUnit">
									<Val>V</Val>
								</DAI>
							</SDI>
							<DAI name="db">
								<Val>2000</Val>
							</DAI>
						</DOI>
						<DOI name="Vseq0" desc="Vseq:0">
							<SDI name="units">
								<DAI name="SIUnit">
									<Val>V</Val>
								</DAI>
							</SDI>
							<DAI name="db">
								<Val>2000</Val>
							</DAI>
						</DOI>
					</LN>
					<LN lnClass="MSQI" inst="1" lnType="SIPROTEC5_LNType_MSQI_OpMeas_Symm_Pres" desc="Sy.co." prefix="XPRE_">
						<Private type="Siemens-MasterId">04108eee-39db-4662-aa29-57fb1da4b35d</Private>
						<DOI name="Mod" desc="Mode (controllable)"/>
						<DOI name="Beh" desc="Behavior"/>
						<DOI name="Health" desc="Health"/>
						<DOI name="NamPlt" desc="Name plate">
							<DAI name="configRev">
								<Val>2023-04-19 10:34:17</Val>
							</DAI>
						</DOI>
						<DOI name="SeqA" desc="Iseq">
							<SDI name="c1" desc="Iseq:1">
								<SDI name="units">
									<DAI name="SIUnit">
										<Val>A</Val>
									</DAI>
								</SDI>
								<DAI name="db">
									<Val>21</Val>
								</DAI>
								<DAI name="dbAng">
									<Val>1000</Val>
								</DAI>
								<DAI name="dbRef">
									<Val>400</Val>
								</DAI>
							</SDI>
							<SDI name="c2" desc="Iseq:2">
								<SDI name="units">
									<DAI name="SIUnit">
										<Val>A</Val>
									</DAI>
								</SDI>
								<DAI name="db">
									<Val>21</Val>
								</DAI>
								<DAI name="dbAng">
									<Val>1000</Val>
								</DAI>
								<DAI name="dbRef">
									<Val>400</Val>
								</DAI>
							</SDI>
							<SDI name="c3" desc="Iseq:0">
								<SDI name="units">
									<DAI name="SIUnit">
										<Val>A</Val>
									</DAI>
								</SDI>
								<DAI name="db">
									<Val>21</Val>
								</DAI>
								<DAI name="dbAng">
									<Val>1000</Val>
								</DAI>
								<DAI name="dbRef">
									<Val>400</Val>
								</DAI>
							</SDI>
						</DOI>
						<DOI name="SeqV" desc="Vseq">
							<SDI name="c1" desc="Vseq:1">
								<SDI name="units">
									<DAI name="SIUnit">
										<Val>V</Val>
									</DAI>
									<DAI name="multiplier">
										<Val>k</Val>
									</DAI>
								</SDI>
								<DAI name="db">
									<Val>23</Val>
								</DAI>
								<DAI name="dbAng">
									<Val>1000</Val>
								</DAI>
								<DAI name="dbRef">
									<Val>127.02079</Val>
								</DAI>
							</SDI>
							<SDI name="c2" desc="Vseq:2">
								<SDI name="units">
									<DAI name="SIUnit">
										<Val>V</Val>
									</DAI>
									<DAI name="multiplier">
										<Val>k</Val>
									</DAI>
								</SDI>
								<DAI name="db">
									<Val>23</Val>
								</DAI>
								<DAI name="dbAng">
									<Val>1000</Val>
								</DAI>
								<DAI name="dbRef">
									<Val>127.02079</Val>
								</DAI>
							</SDI>
							<SDI name="c3" desc="Vseq:0">
								<SDI name="units">
									<DAI name="SIUnit">
										<Val>V</Val>
									</DAI>
									<DAI name="multiplier">
										<Val>k</Val>
									</DAI>
								</SDI>
								<DAI name="db">
									<Val>23</Val>
								</DAI>
								<DAI name="dbAng">
									<Val>1000</Val>
								</DAI>
								<DAI name="dbRef">
									<Val>127.02079</Val>
								</DAI>
							</SDI>
						</DOI>
					</LN>
				</LDevice>
				<LDevice desc="Protection_Mechanical trip" inst="Prot_Mechanical">
					<Private type="Siemens-MasterId">e6545484-9c44-4dcb-984e-298b22ada88d</Private>
					<LN0 lnClass="LLN0" inst="" lnType="SIPROTEC5_LNType_LLN0_LDevice_Generic" desc="Prot_Mechanical/LLN0">
						<Private type="Siemens-MasterId">19da4b3b-aaa7-429f-ac3b-4f6d06a491be</Private>
						<DataSet name="Ctl_1">
							<FCDA ldInst="Prot_Mechanical" prefix="MAIN_" lnClass="SIML" lnInst="1" doName="GasFlwTr" daName="stVal" fc="ST"/>
							<FCDA ldInst="Prot_Mechanical" prefix="MAIN_" lnClass="SIML" lnInst="1" doName="GasFlwTr" daName="q" fc="ST"/>
							<FCDA ldInst="Prot_Mechanical" prefix="TCH_" lnClass="SIML" lnInst="1" doName="GasFlwTr" daName="stVal" fc="ST"/>
							<FCDA ldInst="Prot_Mechanical" prefix="TCH_" lnClass="SIML" lnInst="1" doName="GasFlwTr" daName="q" fc="ST"/>
							<FCDA ldInst="Prot_Mechanical" prefix="MAIN_" lnClass="SPRS" lnInst="1" doName="Trip" daName="stVal" fc="ST"/>
							<FCDA ldInst="Prot_Mechanical" prefix="MAIN_" lnClass="SPRS" lnInst="1" doName="Trip" daName="q" fc="ST"/>
							<FCDA ldInst="Prot_Mechanical" prefix="TCH_" lnClass="SPRS" lnInst="1" doName="Trip" daName="stVal" fc="ST"/>
							<FCDA ldInst="Prot_Mechanical" prefix="TCH_" lnClass="SPRS" lnInst="1" doName="Trip" daName="q" fc="ST"/>
							<FCDA ldInst="Prot_Mechanical" prefix="ETLS_" lnClass="SPRS" lnInst="1" doName="Trip" daName="stVal" fc="ST"/>
							<FCDA ldInst="Prot_Mechanical" prefix="ETLS_" lnClass="SPRS" lnInst="1" doName="Trip" daName="q" fc="ST"/>
							<FCDA ldInst="Prot_Mechanical" prefix="ET_" lnClass="STMP" lnInst="1" doName="Trip" daName="stVal" fc="ST"/>
							<FCDA ldInst="Prot_Mechanical" prefix="ET_" lnClass="STMP" lnInst="1" doName="Trip" daName="q" fc="ST"/>
						</DataSet>
						<DOI name="Mod" desc="Mode (controllable)"/>
						<DOI name="Beh" desc="Behavior"/>
						<DOI name="Health" desc="Health"/>
						<DOI name="NamPlt" desc="Name plate">
							<DAI name="configRev">
								<Val>2023-04-19 10:34:17</Val>
							</DAI>
							<DAI name="ldNs">
								<Val>IEC 61850-7-4:2007B</Val>
							</DAI>
						</DOI>
						<DOI name="GrRef" desc="GrRef">
							<DAI name="setSrcRef">
								<Val>@Prot</Val>
							</DAI>
						</DOI>
						<GSEControl name="Ctl_1" datSet="Ctl_1" confRev="70001" type="GOOSE" appID="T_6MU85_TxCouplerLine$Ctl_1"/>
					</LN0>
					<LN lnClass="SIML" inst="1" lnType="SIPROTEC5_LNType_USER_Universal_1" desc="Buch(Main)" prefix="MAIN_">
						<Private type="Siemens-MasterId">0066c1f6-bfad-4868-866e-04ec1cbf7797</Private>
						<DOI name="Mod" desc="Mode (controllable)"/>
						<DOI name="Beh" desc="Behavior"/>
						<DOI name="Health" desc="Health"/>
						<DOI name="NamPlt" desc="Name plate">
							<DAI name="configRev">
								<Val>2023-04-19 10:34:17</Val>
							</DAI>
							<DAI name="lnNs">
								<Val>Siprotec5/user-defined</Val>
							</DAI>
						</DOI>
						<DOI name="GasFlwTr" desc="GasFlwTr"/>
						<DOI name="InsAlm" desc="InsAlm"/>
					</LN>
					<LN lnClass="SIML" inst="1" lnType="SIPROTEC5_LNType_USER_Universal_1" desc="Buch(TCh)" prefix="TCH_">
						<Private type="Siemens-MasterId">b9ef4a20-489a-4967-aeb1-528af2ff15bc</Private>
						<DOI name="Mod" desc="Mode (controllable)"/>
						<DOI name="Beh" desc="Behavior"/>
						<DOI name="Health" desc="Health"/>
						<DOI name="NamPlt" desc="Name plate">
							<DAI name="configRev">
								<Val>2023-04-19 10:34:17</Val>
							</DAI>
							<DAI name="lnNs">
								<Val>Siprotec5/user-defined</Val>
							</DAI>
						</DOI>
						<DOI name="GasFlwTr" desc="GasFlwTr"/>
						<DOI name="InsAlm" desc="InsAlm"/>
					</LN>
					<LN lnClass="SPRS" inst="1" lnType="SIPROTEC5_LNType_USER_Universal_3" desc="PrRel(Main)" prefix="MAIN_">
						<Private type="Siemens-MasterId">1717cab0-cb65-4f77-909d-07a98b1a1796</Private>
						<DOI name="Mod" desc="Mode (controllable)"/>
						<DOI name="Beh" desc="Behavior"/>
						<DOI name="Health" desc="Health"/>
						<DOI name="NamPlt" desc="Name plate">
							<DAI name="configRev">
								<Val>2023-04-19 10:34:17</Val>
							</DAI>
							<DAI name="lnNs">
								<Val>Siprotec5/user-defined</Val>
							</DAI>
						</DOI>
						<DOI name="Trip" desc="Trip"/>
						<DOI name="Pres" desc="Pres"/>
					</LN>
					<LN lnClass="SPRS" inst="1" lnType="SIPROTEC5_LNType_USER_Universal_3" desc="PrRel(TCh)" prefix="TCH_">
						<Private type="Siemens-MasterId">8fd5d51e-a498-4c03-b64b-9cbd28b6187d</Private>
						<DOI name="Mod" desc="Mode (controllable)"/>
						<DOI name="Beh" desc="Behavior"/>
						<DOI name="Health" desc="Health"/>
						<DOI name="NamPlt" desc="Name plate">
							<DAI name="configRev">
								<Val>2023-04-19 10:34:17</Val>
							</DAI>
							<DAI name="lnNs">
								<Val>Siprotec5/user-defined</Val>
							</DAI>
						</DOI>
						<DOI name="Trip" desc="Trip"/>
						<DOI name="Pres" desc="Pres"/>
					</LN>
					<LN lnClass="SPRS" inst="1" lnType="SIPROTEC5_LNType_USER_Universal_3" desc="PrRel(ET/LS)" prefix="ETLS_">
						<Private type="Siemens-MasterId">21f69e27-611a-4afa-8cbd-9493afba8e1c</Private>
						<DOI name="Mod" desc="Mode (controllable)"/>
						<DOI name="Beh" desc="Behavior"/>
						<DOI name="Health" desc="Health"/>
						<DOI name="NamPlt" desc="Name plate">
							<DAI name="configRev">
								<Val>2023-04-19 10:34:17</Val>
							</DAI>
							<DAI name="lnNs">
								<Val>Siprotec5/user-defined</Val>
							</DAI>
						</DOI>
						<DOI name="Trip" desc="Trip"/>
						<DOI name="Pres" desc="Pres"/>
					</LN>
					<LN lnClass="STMP" inst="1" lnType="SIPROTEC5_LNType_USER_Universal_6" desc="Temp(ET)" prefix="ET_">
						<Private type="Siemens-MasterId">2ad95730-b7a2-4b5e-88ab-b0b44c125c25</Private>
						<DOI name="Mod" desc="Mode (controllable)"/>
						<DOI name="Beh" desc="Behavior"/>
						<DOI name="Health" desc="Health"/>
						<DOI name="NamPlt" desc="Name plate">
							<DAI name="configRev">
								<Val>2023-04-19 10:34:17</Val>
							</DAI>
							<DAI name="lnNs">
								<Val>Siprotec5/user-defined</Val>
							</DAI>
						</DOI>
						<DOI name="Trip" desc="Trip"/>
					</LN>
				</LDevice>
				<LDevice desc="Protection_OMV" inst="Prot_OperationalValues">
					<Private type="Siemens-MasterId">c5daa78b-57b0-4de5-80db-549c066326a3</Private>
					<LN0 lnClass="LLN0" inst="" lnType="SIPROTEC5_LNType_LLN0_LDevice_Generic" desc="Prot_OperationalValues/LLN0">
						<Private type="Siemens-MasterId">66dd86b2-84c2-49fb-b17e-f7bd9e2da6eb</Private>
						<DOI name="Mod" desc="Mode (controllable)"/>
						<DOI name="Beh" desc="Behavior"/>
						<DOI name="Health" desc="Health"/>
						<DOI name="NamPlt" desc="Name plate">
							<DAI name="configRev">
								<Val>2023-04-19 10:34:17</Val>
							</DAI>
							<DAI name="ldNs">
								<Val>IEC 61850-7-4:2007B</Val>
							</DAI>
						</DOI>
						<DOI name="GrRef" desc="GrRef">
							<DAI name="setSrcRef">
								<Val>@Prot</Val>
							</DAI>
						</DOI>
					</LN0>
					<LN lnClass="MMXU" inst="1" lnType="SIPROTEC5_LNType_MMXU_OpMeas_RMS_3ph_Pres" desc="RMS" prefix="RPRE_">
						<Private type="Siemens-MasterId">851559d1-e3cc-45ff-be09-e474a56a7908</Private>
						<DOI name="Mod" desc="Mode (controllable)"/>
						<DOI name="Beh" desc="Behavior"/>
						<DOI name="Health" desc="Health"/>
						<DOI name="NamPlt" desc="Name plate">
							<DAI name="configRev">
								<Val>2023-04-19 10:34:17</Val>
							</DAI>
						</DOI>
						<DOI name="PPV" desc="Vpp">
							<SDI name="phsAB" desc="Vpp:AB">
								<SDI name="units">
									<DAI name="SIUnit">
										<Val>V</Val>
									</DAI>
									<DAI name="multiplier">
										<Val>k</Val>
									</DAI>
								</SDI>
								<DAI name="db">
									<Val>23</Val>
								</DAI>
								<DAI name="dbRef">
									<Val>220</Val>
								</DAI>
							</SDI>
							<SDI name="phsBC" desc="Vpp:BC">
								<SDI name="units">
									<DAI name="SIUnit">
										<Val>V</Val>
									</DAI>
									<DAI name="multiplier">
										<Val>k</Val>
									</DAI>
								</SDI>
								<DAI name="db">
									<Val>23</Val>
								</DAI>
								<DAI name="dbRef">
									<Val>220</Val>
								</DAI>
							</SDI>
							<SDI name="phsCA" desc="Vpp:CA">
								<SDI name="units">
									<DAI name="SIUnit">
										<Val>V</Val>
									</DAI>
									<DAI name="multiplier">
										<Val>k</Val>
									</DAI>
								</SDI>
								<DAI name="db">
									<Val>23</Val>
								</DAI>
								<DAI name="dbRef">
									<Val>220</Val>
								</DAI>
							</SDI>
						</DOI>
						<DOI name="PhV" desc="Vph">
							<SDI name="phsA" desc="Vph:A">
								<SDI name="units">
									<DAI name="SIUnit">
										<Val>V</Val>
									</DAI>
									<DAI name="multiplier">
										<Val>k</Val>
									</DAI>
								</SDI>
								<DAI name="db">
									<Val>23</Val>
								</DAI>
								<DAI name="dbRef">
									<Val>127.02079</Val>
								</DAI>
							</SDI>
							<SDI name="phsB" desc="Vph:B">
								<SDI name="units">
									<DAI name="SIUnit">
										<Val>V</Val>
									</DAI>
									<DAI name="multiplier">
										<Val>k</Val>
									</DAI>
								</SDI>
								<DAI name="db">
									<Val>23</Val>
								</DAI>
								<DAI name="dbRef">
									<Val>127.02079</Val>
								</DAI>
							</SDI>
							<SDI name="phsC" desc="Vph:C">
								<SDI name="units">
									<DAI name="SIUnit">
										<Val>V</Val>
									</DAI>
									<DAI name="multiplier">
										<Val>k</Val>
									</DAI>
								</SDI>
								<DAI name="db">
									<Val>23</Val>
								</DAI>
								<DAI name="dbRef">
									<Val>127.02079</Val>
								</DAI>
							</SDI>
							<SDI name="res" desc="Vph:res">
								<SDI name="units">
									<DAI name="SIUnit">
										<Val>V</Val>
									</DAI>
								</SDI>
								<DAI name="db">
									<Val>23</Val>
								</DAI>
								<DAI name="dbRef">
									<Val>127.02079</Val>
								</DAI>
							</SDI>
						</DOI>
						<DOI name="A" desc="Iph">
							<SDI name="phsA" desc="Iph:A">
								<SDI name="units">
									<DAI name="SIUnit">
										<Val>A</Val>
									</DAI>
								</SDI>
								<DAI name="db">
									<Val>21</Val>
								</DAI>
								<DAI name="dbRef">
									<Val>400</Val>
								</DAI>
							</SDI>
							<SDI name="phsB" desc="Iph:B">
								<SDI name="units">
									<DAI name="SIUnit">
										<Val>A</Val>
									</DAI>
								</SDI>
								<DAI name="db">
									<Val>21</Val>
								</DAI>
								<DAI name="dbRef">
									<Val>400</Val>
								</DAI>
							</SDI>
							<SDI name="phsC" desc="Iph:C">
								<SDI name="units">
									<DAI name="SIUnit">
										<Val>A</Val>
									</DAI>
								</SDI>
								<DAI name="db">
									<Val>21</Val>
								</DAI>
								<DAI name="dbRef">
									<Val>400</Val>
								</DAI>
							</SDI>
							<SDI name="res" desc="Iph:res">
								<SDI name="units">
									<DAI name="SIUnit">
										<Val>A</Val>
									</DAI>
								</SDI>
								<DAI name="db">
									<Val>21</Val>
								</DAI>
								<DAI name="dbRef">
									<Val>400</Val>
								</DAI>
							</SDI>
						</DOI>
						<DOI name="Vneut" desc="VN">
							<SDI name="units">
								<DAI name="SIUnit">
									<Val>V</Val>
								</DAI>
								<DAI name="multiplier">
									<Val>k</Val>
								</DAI>
							</SDI>
							<DAI name="db">
								<Val>2000</Val>
							</DAI>
							<DAI name="dbRef">
								<Val>127.02079</Val>
							</DAI>
						</DOI>
						<DOI name="Aneut" desc="IN">
							<SDI name="units">
								<DAI name="SIUnit">
									<Val>A</Val>
								</DAI>
							</SDI>
							<DAI name="db">
								<Val>21</Val>
							</DAI>
							<DAI name="dbRef">
								<Val>400</Val>
							</DAI>
						</DOI>
					</LN>
					<LN lnClass="MMXN" inst="1" lnType="SIPROTEC5_LNType_MMXN_OpMeas_RMS_1ph_Pres" desc="RMS" prefix="RPRE_">
						<Private type="Siemens-MasterId">8cd383be-c607-43f3-8a5e-48672a6b208e</Private>
						<DOI name="Mod" desc="Mode (controllable)"/>
						<DOI name="Beh" desc="Behavior"/>
						<DOI name="Health" desc="Health"/>
						<DOI name="NamPlt" desc="Name plate">
							<DAI name="configRev">
								<Val>2023-04-19 10:34:17</Val>
							</DAI>
						</DOI>
						<DOI name="ANparLn" desc="INp.line">
							<SDI name="units">
								<DAI name="SIUnit">
									<Val>A</Val>
								</DAI>
							</SDI>
							<DAI name="db">
								<Val>10000</Val>
							</DAI>
						</DOI>
						<DOI name="AstarPt" desc="IY traf.">
							<SDI name="units">
								<DAI name="SIUnit">
									<Val>A</Val>
								</DAI>
							</SDI>
							<DAI name="db">
								<Val>10000</Val>
							</DAI>
						</DOI>
					</LN>
					<LN lnClass="MMXU" inst="1" lnType="SIPROTEC5_LNType_MMXU_OpMeas_Power_3ph_Pres" desc="Power" prefix="PPRE_">
						<Private type="Siemens-MasterId">fab520a1-b3f8-4b58-bf6d-513895882131</Private>
						<DOI name="Mod" desc="Mode (controllable)"/>
						<DOI name="Beh" desc="Behavior"/>
						<DOI name="Health" desc="Health"/>
						<DOI name="NamPlt" desc="Name plate">
							<DAI name="configRev">
								<Val>2023-04-19 10:34:17</Val>
							</DAI>
						</DOI>
						<DOI name="TotW" desc="P tot">
							<SDI name="units">
								<DAI name="SIUnit">
									<Val>W</Val>
								</DAI>
								<DAI name="multiplier">
									<Val>M</Val>
								</DAI>
							</SDI>
							<DAI name="db">
								<Val>10</Val>
							</DAI>
							<DAI name="dbRef">
								<Val>152.420471</Val>
							</DAI>
						</DOI>
						<DOI name="TotVAr" desc="Q tot">
							<SDI name="units">
								<DAI name="SIUnit">
									<Val>VAr</Val>
								</DAI>
								<DAI name="multiplier">
									<Val>M</Val>
								</DAI>
							</SDI>
							<DAI name="db">
								<Val>10</Val>
							</DAI>
							<DAI name="dbRef">
								<Val>152.420471</Val>
							</DAI>
						</DOI>
						<DOI name="TotVA" desc="S tot">
							<SDI name="units">
								<DAI name="SIUnit">
									<Val>VA</Val>
								</DAI>
								<DAI name="multiplier">
									<Val>M</Val>
								</DAI>
							</SDI>
							<DAI name="db">
								<Val>10</Val>
							</DAI>
							<DAI name="dbRef">
								<Val>152.420471</Val>
							</DAI>
						</DOI>
						<DOI name="TotPF" desc="cos φ">
							<SDI name="units">
								<DAI name="SIUnit">
									<Val>cos(phi)</Val>
								</DAI>
							</SDI>
							<DAI name="db">
								<Val>10000</Val>
							</DAI>
						</DOI>
						<DOI name="Hz" desc="f">
							<SDI name="units">
								<DAI name="SIUnit">
									<Val>Hz</Val>
								</DAI>
							</SDI>
							<DAI name="db">
								<Val>10</Val>
							</DAI>
							<DAI name="dbRef">
								<Val>50</Val>
							</DAI>
						</DOI>
						<DOI name="W" desc="P">
							<SDI name="phsA" desc="P:A">
								<SDI name="units">
									<DAI name="SIUnit">
										<Val>W</Val>
									</DAI>
									<DAI name="multiplier">
										<Val>M</Val>
									</DAI>
								</SDI>
								<DAI name="db">
									<Val>10</Val>
								</DAI>
								<DAI name="dbRef">
									<Val>50.80682</Val>
								</DAI>
							</SDI>
							<SDI name="phsB" desc="P:B">
								<SDI name="units">
									<DAI name="SIUnit">
										<Val>W</Val>
									</DAI>
									<DAI name="multiplier">
										<Val>M</Val>
									</DAI>
								</SDI>
								<DAI name="db">
									<Val>10</Val>
								</DAI>
								<DAI name="dbRef">
									<Val>50.80682</Val>
								</DAI>
							</SDI>
							<SDI name="phsC" desc="P:C">
								<SDI name="units">
									<DAI name="SIUnit">
										<Val>W</Val>
									</DAI>
									<DAI name="multiplier">
										<Val>M</Val>
									</DAI>
								</SDI>
								<DAI name="db">
									<Val>10</Val>
								</DAI>
								<DAI name="dbRef">
									<Val>50.80682</Val>
								</DAI>
							</SDI>
						</DOI>
						<DOI name="VAr" desc="Q">
							<SDI name="phsA" desc="Q:A">
								<SDI name="units">
									<DAI name="SIUnit">
										<Val>VAr</Val>
									</DAI>
									<DAI name="multiplier">
										<Val>M</Val>
									</DAI>
								</SDI>
								<DAI name="db">
									<Val>10</Val>
								</DAI>
								<DAI name="dbRef">
									<Val>50.80682</Val>
								</DAI>
							</SDI>
							<SDI name="phsB" desc="Q:B">
								<SDI name="units">
									<DAI name="SIUnit">
										<Val>VAr</Val>
									</DAI>
									<DAI name="multiplier">
										<Val>M</Val>
									</DAI>
								</SDI>
								<DAI name="db">
									<Val>10</Val>
								</DAI>
								<DAI name="dbRef">
									<Val>50.80682</Val>
								</DAI>
							</SDI>
							<SDI name="phsC" desc="Q:C">
								<SDI name="units">
									<DAI name="SIUnit">
										<Val>VAr</Val>
									</DAI>
									<DAI name="multiplier">
										<Val>M</Val>
									</DAI>
								</SDI>
								<DAI name="db">
									<Val>10</Val>
								</DAI>
								<DAI name="dbRef">
									<Val>50.80682</Val>
								</DAI>
							</SDI>
						</DOI>
						<DOI name="VA" desc="S">
							<SDI name="phsA" desc="S:A">
								<SDI name="units">
									<DAI name="SIUnit">
										<Val>VA</Val>
									</DAI>
									<DAI name="multiplier">
										<Val>M</Val>
									</DAI>
								</SDI>
								<DAI name="db">
									<Val>10</Val>
								</DAI>
								<DAI name="dbRef">
									<Val>50.80682</Val>
								</DAI>
							</SDI>
							<SDI name="phsB" desc="S:B">
								<SDI name="units">
									<DAI name="SIUnit">
										<Val>VA</Val>
									</DAI>
									<DAI name="multiplier">
										<Val>M</Val>
									</DAI>
								</SDI>
								<DAI name="db">
									<Val>10</Val>
								</DAI>
								<DAI name="dbRef">
									<Val>50.80682</Val>
								</DAI>
							</SDI>
							<SDI name="phsC" desc="S:C">
								<SDI name="units">
									<DAI name="SIUnit">
										<Val>VA</Val>
									</DAI>
									<DAI name="multiplier">
										<Val>M</Val>
									</DAI>
								</SDI>
								<DAI name="db">
									<Val>10</Val>
								</DAI>
								<DAI name="dbRef">
									<Val>50.80682</Val>
								</DAI>
							</SDI>
						</DOI>
					</LN>
				</LDevice>
				<LDevice desc="Protection_ProMon" inst="Prot_ProcessMonitor">
					<Private type="Siemens-MasterId">244c6cb8-d961-425a-83d4-08c1075d4985</Private>
					<LN0 lnClass="LLN0" inst="" lnType="SIPROTEC5_LNType_LLN0_LDevice_Generic" desc="Prot_ProcessMonitor/LLN0">
						<Private type="Siemens-MasterId">1c5c0f84-edb8-4699-92bd-a7d4d150b7e1</Private>
						<DOI name="Mod" desc="Mode (controllable)"/>
						<DOI name="Beh" desc="Behavior"/>
						<DOI name="Health" desc="Health"/>
						<DOI name="NamPlt" desc="Name plate">
							<DAI name="configRev">
								<Val>2023-04-19 10:34:17</Val>
							</DAI>
							<DAI name="ldNs">
								<Val>IEC 61850-7-4:2007B</Val>
							</DAI>
						</DOI>
						<DOI name="GrRef" desc="GrRef">
							<DAI name="setSrcRef">
								<Val>@Prot</Val>
							</DAI>
						</DOI>
					</LN0>
					<LN lnClass="ROPA" inst="1" lnType="SIPROTEC5_LNType_ROPA_OpenPoleCurrent" desc="Curr.criterion" prefix="PROM_">
						<Private type="Siemens-MasterId">c86dfa48-3270-4095-8aa7-657fb3a93b15</Private>
						<DOI name="Mod" desc="Mode (controllable)"/>
						<DOI name="Beh" desc="Behavior"/>
						<DOI name="Health" desc="Health"/>
						<DOI name="NamPlt" desc="Name plate">
							<DAI name="configRev">
								<Val>2023-04-19 10:34:17</Val>
							</DAI>
						</DOI>
						<DOI name="Inactive" desc="Inactive"/>
					</LN>
					<LN lnClass="RSSR" inst="1" lnType="SIPROTEC5_LNType_RSSR_SwitchingStateRecognitionBasic" desc="Closure detec." prefix="PROM_">
						<Private type="Siemens-MasterId">9623f92c-652b-4cdc-b859-b0c7735ea6cd</Private>
						<DOI name="Mod" desc="Mode (controllable)"/>
						<DOI name="Beh" desc="Behavior"/>
						<DOI name="Health" desc="Health"/>
						<DOI name="NamPlt" desc="Name plate">
							<DAI name="configRev">
								<Val>2023-04-19 10:34:17</Val>
							</DAI>
						</DOI>
						<DOI name="DisCntrOpn" desc="&gt;Disconnector open"/>
						<DOI name="Inactive" desc="Inactive"/>
						<DOI name="SwitchOn" desc="Closure"/>
					</LN>
				</LDevice>
				<LDevice desc="Rec" inst="Rec">
					<Private type="Siemens-MasterId">1a54b6d5-6a3d-4fd0-84e2-b448de4a88e5</Private>
					<LN0 lnClass="LLN0" inst="" lnType="SIPROTEC5_LNType_LLN0_LDevice_Generic" desc="Rec/LLN0">
						<Private type="Siemens-MasterId">85a2e4a3-16ae-45b7-bc13-9d85a2e83a3e</Private>
						<DOI name="Mod" desc="Mode (controllable)"/>
						<DOI name="Beh" desc="Behavior"/>
						<DOI name="Health" desc="Health"/>
						<DOI name="NamPlt" desc="Name plate">
							<DAI name="configRev">
								<Val>2023-04-04 22:48:07</Val>
							</DAI>
							<DAI name="ldNs">
								<Val>IEC 61850-7-4:2007B</Val>
							</DAI>
						</DOI>
						<DOI name="GrRef" desc="GrRef">
							<DAI name="setSrcRef">
								<Val>@Application</Val>
							</DAI>
						</DOI>
					</LN0>
					<LN lnClass="GAPC" inst="1" lnType="SIPROTEC5_LNType_GAPC_FB0_FGBreaker_1pol" desc="General" prefix="RCDG_">
						<Private type="Siemens-MasterId">a916dc4e-00b1-4615-8a57-c2dc9b04e474</Private>
						<DOI name="Mod" desc="Mode (controllable)"/>
						<DOI name="Beh" desc="Behavior"/>
						<DOI name="Health" desc="Health"/>
						<DOI name="NamPlt" desc="Name plate">
							<DAI name="configRev">
								<Val>2023-04-04 22:48:07</Val>
							</DAI>
						</DOI>
					</LN>
					<LN lnClass="GAPC" inst="1" lnType="SIPROTEC5_LNType_GAPC_GroundFaultLog" desc="Grnd.-flt log" prefix="GFLG_">
						<Private type="Siemens-MasterId">504321ad-60f3-4150-8770-1c4e75790683</Private>
						<DOI name="Mod" desc="Mode (controllable)"/>
						<DOI name="Beh" desc="Behavior"/>
						<DOI name="Health" desc="Health"/>
						<DOI name="NamPlt" desc="Name plate">
							<DAI name="configRev">
								<Val>2023-04-04 22:48:07</Val>
							</DAI>
						</DOI>
						<DOI name="GflNum" desc="Fault number"/>
						<DOI name="GflFull" desc="Ground-fault log is full"/>
					</LN>
				</LDevice>
				<LDevice desc="Rec_FltRec" inst="Rec_FaultRecorder">
					<Private type="Siemens-MasterId">998c2e05-b091-487a-8467-e2a341b247c7</Private>
					<LN0 lnClass="LLN0" inst="" lnType="SIPROTEC5_LNType_LLN0_LDevice_Generic" desc="Rec_FaultRecorder/LLN0">
						<Private type="Siemens-MasterId">445c0fe6-8008-4e8f-9910-f155580a0dae</Private>
						<DOI name="Mod" desc="Mode (controllable)"/>
						<DOI name="Beh" desc="Behavior"/>
						<DOI name="Health" desc="Health"/>
						<DOI name="NamPlt" desc="Name plate">
							<DAI name="configRev">
								<Val>2023-04-04 22:48:07</Val>
							</DAI>
							<DAI name="ldNs">
								<Val>IEC 61850-7-4:2007B</Val>
							</DAI>
						</DOI>
						<DOI name="GrRef" desc="GrRef">
							<DAI name="setSrcRef">
								<Val>@Rec</Val>
							</DAI>
						</DOI>
					</LN0>
					<LN lnClass="GAPC" inst="1" lnType="SIPROTEC5_LNType_GAPC_FB0_FGBreaker_1pol" desc="General" prefix="RCDR_">
						<Private type="Siemens-MasterId">8534fcae-5343-4ffd-9e6d-66df7b01fc04</Private>
						<DOI name="Mod" desc="Mode (controllable)"/>
						<DOI name="Beh" desc="Behavior"/>
						<DOI name="Health" desc="Health"/>
						<DOI name="NamPlt" desc="Name plate">
							<DAI name="configRev">
								<Val>2023-04-04 22:48:07</Val>
							</DAI>
						</DOI>
					</LN>
					<LN lnClass="RDRE" inst="1" lnType="SIPROTEC5_LNType_RDRE_DEF" desc="Control" prefix="DEF_">
						<Private type="Siemens-MasterId">d5bce967-e415-4c15-ac3c-780ad8f6bbc0</Private>
						<DOI name="Mod" desc="Mode (controllable)"/>
						<DOI name="Beh" desc="Behavior"/>
						<DOI name="Health" desc="Health"/>
						<DOI name="NamPlt" desc="Name plate">
							<DAI name="configRev">
								<Val>2023-04-04 22:48:07</Val>
							</DAI>
						</DOI>
						<DOI name="RcdTrg" desc="Start record"/>
						<DOI name="MemRs" desc="Reset memory">
							<DAI name="operTimeout">
								<Val>30000</Val>
							</DAI>
						</DOI>
						<DOI name="MemClr" desc="Clear memory">
							<DAI name="operTimeout">
								<Val>30000</Val>
							</DAI>
						</DOI>
						<DOI name="RcdMade" desc="Record made"/>
						<DOI name="FltNum" desc="Fault number"/>
						<DOI name="RcdStr" desc="Recording started"/>
						<DOI name="StrExt" desc="&gt;External start"/>
						<DOI name="ManTrg" desc="&gt;Manual start"/>
						<DOI name="FltLogFull" desc="Fault log is full"/>
					</LN>
				</LDevice>
			</Server>
		</AccessPoint>
	</IED>
	<DataTypeTemplates>
		<LNodeType id="SIPROTEC5_LNType_ATCC_Parallel_Goose_Proxy" lnClass="ATCC">
			<DO name="Mod" type="SIPROTEC5_DOType_Mod_controllable_with_InitValVis_for_SIEMENS_LN_V09.50.01_V09.50.01"/>
			<DO name="Blk" type="SIPROTEC5_DOType_SPS_for_Input_V09.50.01_V09.50.01"/>
			<DO name="Auto" type="SIPROTEC5_DOType_SPC_ATCC_Auto_V09.50.01_V09.50.01"/>
			<DO name="ParOp" type="SIPROTEC5_DOType_SPC_statusOnly_and_dir_with_nor_sec_V09.50.01_V09.50.01"/>
			<DO name="TapChg" type="SIPROTEC5_DOType_BSC_controllable_without_BinaryInput_V09.50.01_V09.50.01"/>
			<DO name="CtlV" type="SIPROTEC5_DOType_MV_Float_V09.50.01_V09.50.01"/>
			<DO name="LodA" type="SIPROTEC5_DOType_MV_Float_V09.50.01_V09.50.01"/>
			<DO name="PhAng" type="SIPROTEC5_DOType_MV_Float_V09.50.01_V09.50.01"/>
			<DO name="Beh" type="SIPROTEC5_DOType_ENS_Behavior_V09.50.01_V09.50.01"/>
			<DO name="Health" type="SIPROTEC5_DOType_ENS_Health_V09.50.01_V09.50.01"/>
			<DO name="NamPlt" type="SIPROTEC5_DOType_LPL_NamPlt_for_Ed2_LN_V09.50.01_V09.50.01"/>
			<DO name="RHealth" type="SIPROTEC5_DOType_INS_INT32_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="ParGrp" type="SIPROTEC5_DOType_INC_controllable_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="PTrfBeh" type="SIPROTEC5_DOType_INS_INT32_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="PTrfId" type="SIPROTEC5_DOType_INS_INT32_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="IncParGrp" type="SIPROTEC5_DOType_SPS_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="PaAutoBlk" type="SIPROTEC5_DOType_SPS_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="ErrTapDif" type="SIPROTEC5_DOType_SPS_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="RxRHealth1" type="SIPROTEC5_DOType_INS_INT32_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="RxBlk1" type="SIPROTEC5_DOType_SPS_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="RxAuto1" type="SIPROTEC5_DOType_ComProxy_SPC_V09.50.01_V09.50.01"/>
			<DO name="RxParOp1" type="SIPROTEC5_DOType_ComProxy_SPC_V09.50.01_V09.50.01"/>
			<DO name="RxParGrp1" type="SIPROTEC5_DOType_ComProxy_INC_V09.50.01_V09.50.01"/>
			<DO name="RxPTrfBeh1" type="SIPROTEC5_DOType_INS_INT32_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="RxTapChg1" type="SIPROTEC5_DOType_ComProxy_BSC_V09.50.01_V09.50.01"/>
			<DO name="RxPTrfId1" type="SIPROTEC5_DOType_INS_INT32_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="RxCtlV1" type="SIPROTEC5_DOType_ComProxy_MV_V09.50.01_V09.50.01"/>
			<DO name="RxInvX1" type="SIPROTEC5_DOType_ComProxy_MV_V09.50.01_V09.50.01"/>
			<DO name="RxLodA1" type="SIPROTEC5_DOType_ComProxy_MV_V09.50.01_V09.50.01"/>
			<DO name="RxPhAng1" type="SIPROTEC5_DOType_ComProxy_MV_V09.50.01_V09.50.01"/>
		</LNodeType>
		<LNodeType id="SIPROTEC5_LNType_ATCC" lnClass="ATCC">
			<DO name="Mod" type="SIPROTEC5_DOType_Mod_status_only_with_InitVal_V09.50.01_V09.50.01"/>
			<DO name="Beh" type="SIPROTEC5_DOType_ENS_Behavior_V09.50.01_V09.50.01"/>
			<DO name="Health" type="SIPROTEC5_DOType_ENS_Health_V09.50.01_V09.50.01"/>
			<DO name="NamPlt" type="SIPROTEC5_DOType_LPL_NamPlt_for_Ed2_LN_V09.50.01_V09.50.01"/>
			<DO name="Loc" type="SIPROTEC5_DOType_SPS_V09.50.01_V09.50.01"/>
			<DO name="LocKey" type="SIPROTEC5_DOType_SPS_V09.50.01_V09.50.01"/>
			<DO name="LTCBlkVLo" type="SIPROTEC5_DOType_SPS_V09.50.01_V09.50.01"/>
			<DO name="LTCBlkAHi" type="SIPROTEC5_DOType_SPS_V09.50.01_V09.50.01"/>
			<DO name="EndPosR" type="SIPROTEC5_DOType_SPS_V09.50.01_V09.50.01"/>
			<DO name="EndPosL" type="SIPROTEC5_DOType_SPS_V09.50.01_V09.50.01"/>
			<DO name="CtlV" type="SIPROTEC5_DOType_MV_Float_V09.50.01_V09.50.01"/>
			<DO name="LodA" type="SIPROTEC5_DOType_MV_Float_V09.50.01_V09.50.01"/>
			<DO name="PhAng" type="SIPROTEC5_DOType_MV_Float_V09.50.01_V09.50.01"/>
			<DO name="CircA" type="SIPROTEC5_DOType_MV_Float_V09.50.01_V09.50.01"/>
			<DO name="HiCtlV" type="SIPROTEC5_DOType_MV_Float_dupd_V09.50.01_V09.50.01"/>
			<DO name="LoCtlV" type="SIPROTEC5_DOType_MV_Float_dupd_V09.50.01_V09.50.01"/>
			<DO name="TapChg" type="SIPROTEC5_DOType_BSC_controllable_without_BinaryInput_V09.50.01_V09.50.01"/>
			<DO name="ParOp" type="SIPROTEC5_DOType_SPC_statusOnly_and_dir_with_nor_sec_V09.50.01_V09.50.01"/>
			<DO name="LTCBlk" type="SIPROTEC5_DOType_SPC_dir_with_nor_sec_V09.50.01_V09.50.01"/>
			<DO name="Auto" type="SIPROTEC5_DOType_SPC_ATCC_Auto_V09.50.01_V09.50.01"/>
			<DO name="ResetMiMa" type="SIPROTEC5_DOType_SPS_for_Input_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="CtlVAvg" type="SIPROTEC5_DOType_MV_Float_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="CtlD" type="SIPROTEC5_DOType_MV_Float_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="CtlDV" type="SIPROTEC5_DOType_MV_Float_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="CtlDCC" type="SIPROTEC5_DOType_MV_Float_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="LodSumA" type="SIPROTEC5_DOType_MV_Float_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="BndExc" type="SIPROTEC5_DOType_SPS_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="BndBelow" type="SIPROTEC5_DOType_SPS_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="RnbkL" type="SIPROTEC5_DOType_SPS_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="RnbkR" type="SIPROTEC5_DOType_SPS_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="AMonitor" type="SIPROTEC5_DOType_SPS_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="AutoInactive" type="SIPROTEC5_DOType_SPS_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="BlkVMin" type="SIPROTEC5_DOType_SPS_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="BlkVMax" type="SIPROTEC5_DOType_SPS_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="AutoBlk" type="SIPROTEC5_DOType_SPS_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="ManBlk" type="SIPROTEC5_DOType_SPS_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="LTCBlkALo" type="SIPROTEC5_DOType_SPS_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="VTSup" type="SIPROTEC5_DOType_SPS_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="CircABlk" type="SIPROTEC5_DOType_SPS_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="BndCtlAct" type="SIPROTEC5_DOType_MV_Float_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="ErrNoMast" type="SIPROTEC5_DOType_SPS_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="AutoBlkLoc" type="SIPROTEC5_DOType_SPS_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="ParTrfBeh" type="SIPROTEC5_DOType_ENS_Parallel_Trafo_Behavior_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="ParTrfId" type="SIPROTEC5_DOType_INS_INT32_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="ParTrfErrL" type="SIPROTEC5_DOType_ENS_Parallel_Trafo_Error_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="ParTrfErr" type="SIPROTEC5_DOType_SPS_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="InvX" type="SIPROTEC5_DOType_MV_Float_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="RstCtlVMax" type="SIPROTEC5_DOType_INC_controllable_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="RstCtlVMin" type="SIPROTEC5_DOType_INC_controllable_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="BndCtrEn1" type="SIPROTEC5_DOType_SPC_dir_with_nor_sec_FnKey_toggle_on_off_with_InitVal_and_dataNs_V09.50.01_V09.50.01"/>
			<DO name="BndCtrEn2" type="SIPROTEC5_DOType_SPC_dir_with_nor_sec_FnKey_toggle_on_off_with_InitVal_and_dataNs_V09.50.01_V09.50.01"/>
			<DO name="BndCtrEn3" type="SIPROTEC5_DOType_SPC_dir_with_nor_sec_FnKey_toggle_on_off_with_InitVal_and_dataNs_V09.50.01_V09.50.01"/>
			<DO name="BndCtrEn4" type="SIPROTEC5_DOType_SPC_dir_with_nor_sec_FnKey_toggle_on_off_with_InitVal_and_dataNs_V09.50.01_V09.50.01"/>
			<DO name="SetBndCtr" type="SIPROTEC5_DOType_APC_FLOAT32_controllable_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="SetBndWid" type="SIPROTEC5_DOType_APC_FLOAT32_controllable_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="BlkT1" type="SIPROTEC5_DOType_SPC_ATCC_FnKey_toggle_on_off_status_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="ParGrp" type="SIPROTEC5_DOType_INC_controllable_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="ForceMast" type="SIPROTEC5_DOType_SPC_ATCC_FnKey_toggle_on_off_status_with_dataNs_V09.50.01_V09.50.01"/>
		</LNodeType>
		<LNodeType id="SIPROTEC5_LNType_YLTC_StausOnly" lnClass="YLTC">
			<DO name="Mod" type="SIPROTEC5_DOType_Mod_status_only_with_InitVal_V09.50.01_V09.50.01"/>
			<DO name="Beh" type="SIPROTEC5_DOType_ENS_Behavior_V09.50.01_V09.50.01"/>
			<DO name="Health" type="SIPROTEC5_DOType_ENS_Health_V09.50.01_V09.50.01"/>
			<DO name="NamPlt" type="SIPROTEC5_DOType_LPL_NamPlt_for_Ed2_LN_V09.50.01_V09.50.01"/>
			<DO name="LocKey" type="SIPROTEC5_DOType_SPS_V09.50.01_V09.50.01"/>
			<DO name="Loc" type="SIPROTEC5_DOType_SPS_V09.50.01_V09.50.01"/>
			<DO name="EndPosR" type="SIPROTEC5_DOType_SPS_V09.50.01_V09.50.01"/>
			<DO name="EndPosL" type="SIPROTEC5_DOType_SPS_V09.50.01_V09.50.01"/>
			<DO name="LocSta" type="SIPROTEC5_DOType_SPC_status_only_V09.50.01_V09.50.01"/>
			<DO name="TapChg" type="SIPROTEC5_DOType_BSC_controllable_V09.50.01_V09.50.01"/>
			<DO name="OpCnt" type="SIPROTEC5_DOType_INS_V09.50.01_V09.50.01"/>
			<DO name="SetOpCnt" type="SIPROTEC5_DOType_INC_controllable_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="TapErrRs" type="SIPROTEC5_DOType_SPC_dir_with_nor_sec_FnKey_toggle_on_off_with_InitVal_and_dataNs_V09.50.01_V09.50.01"/>
			<DO name="SetMotSupT" type="SIPROTEC5_DOType_INC_YLTC_controllable_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="Enable" type="SIPROTEC5_DOType_SPS_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="AqBlk" type="SIPROTEC5_DOType_SPS_for_Input_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="HigCmd" type="SIPROTEC5_DOType_SPS_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="LowCmd" type="SIPROTEC5_DOType_SPS_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="CmdActv" type="SIPROTEC5_DOType_SPS_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="MotDrv" type="SIPROTEC5_DOType_SPS_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="TapPosErr" type="SIPROTEC5_DOType_SPS_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="TapPos" type="SIPROTEC5_DOType_ComProxy_MV_V09.50.01_V09.50.01"/>
			<DO name="TapRaise" type="SIPROTEC5_DOType_SPC_without_feedback_UDEF_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="TapLower" type="SIPROTEC5_DOType_SPC_without_feedback_UDEF_with_dataNs_V09.50.01_V09.50.01"/>
		</LNodeType>
		<LNodeType id="SIEMENS_7UT85_001SIPROTEC5_LNType_RDRE_DEF" lnClass="RDRE">
			<DO name="Mod" type="SIPROTEC5_DOType_Mod_status_only_with_InitVal_V09.50.01_V09.50.01"/>
			<DO name="Beh" type="SIPROTEC5_DOType_ENS_Behavior_V09.50.01_V09.50.01"/>
			<DO name="Health" type="SIPROTEC5_DOType_ENS_Health_V09.50.01_V09.50.01"/>
			<DO name="NamPlt" type="SIPROTEC5_DOType_LPL_NamPlt_V09.50.01_V09.50.01"/>
			<DO name="RcdTrg" type="SIPROTEC5_DOType_SPC_dir_with_nor_sec_V09.50.01_V09.50.01"/>
			<DO name="MemRs" type="SIPROTEC5_DOType_SPC_dir_with_enh_sec_FnKey_on_V09.50.01_V09.50.01"/>
			<DO name="MemClr" type="SIPROTEC5_DOType_SPC_dir_with_enh_sec_FnKey_on_V09.50.01_V09.50.01"/>
			<DO name="RcdMade" type="SIPROTEC5_DOType_SPS_V09.50.01_V09.50.01"/>
			<DO name="FltNum" type="SIPROTEC5_DOType_INS_V09.50.01_V09.50.01"/>
			<DO name="RcdStr" type="SIPROTEC5_DOType_SPS_V09.50.01_V09.50.01"/>
			<DO name="StrExt" type="SIPROTEC5_DOType_SPS_for_Input_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="ManTrg" type="SIPROTEC5_DOType_SPS_for_Input_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="FltLogFull" type="SIPROTEC5_DOType_INS_INT32_with_dataNs_V09.50.01_V09.50.01"/>
		</LNodeType>
		<LNodeType id="SIEMENS_7UT85_001SIPROTEC5_LNType_GAPC_FB0_MUCurrent_3ph" lnClass="GAPC">
			<DO name="Mod" type="SIPROTEC5_DOType_Mod_status_only_with_InitVal_V09.50.01_V09.50.01"/>
			<DO name="Beh" type="SIPROTEC5_DOType_ENS_Behavior_V09.50.01_V09.50.01"/>
			<DO name="Health" type="SIPROTEC5_DOType_ENS_Health_V09.50.01_V09.50.01"/>
			<DO name="NamPlt" type="SIPROTEC5_DOType_LPL_NamPlt_for_Ed2_LN_V09.50.01_V09.50.01"/>
			<DO name="CtrlIn" type="SIPROTEC5_DOType_SPC_dir_with_nor_sec_FnKey_toggle_on_off_with_InitVal_and_dataNs_V09.50.01_V09.50.01"/>
			<DO name="DisSet" type="SIPROTEC5_DOType_SPS_for_Input_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="DisReset" type="SIPROTEC5_DOType_SPS_for_Input_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="InvPhABCur" type="SIPROTEC5_DOType_SPS_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="InvPhBCCur" type="SIPROTEC5_DOType_SPS_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="InvPhACCur" type="SIPROTEC5_DOType_SPS_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="StateBi" type="SIPROTEC5_DOType_SPS_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="StateCmd" type="SIPROTEC5_DOType_SPS_with_dataNs_V09.50.01_V09.50.01"/>
		</LNodeType>
		<LNodeType id="SIPROTEC5_LNType_LTTC_IEEE1588HiAcc" lnClass="LTTC">
			<DO name="Mod" type="SIPROTEC5_DOType_Mod_status_only_with_InitVal_V09.50.01_V09.50.01"/>
			<DO name="Beh" type="SIPROTEC5_DOType_ENS_Behavior_V09.50.01_V09.50.01"/>
			<DO name="Health" type="SIPROTEC5_DOType_ENS_Health_V09.50.01_V09.50.01"/>
			<DO name="NamPlt" type="SIPROTEC5_DOType_LPL_NamPlt_for_Ed2_LN_V09.50.01_V09.50.01"/>
			<DO name="DomainNum" type="SIPROTEC5_DOType_ING_INT32_edit_V09.50.01_V09.50.01"/>
			<DO name="ChLiv" type="SIPROTEC5_DOType_SPS_with_dataNs_V09.50.01_V09.50.01"/>
		</LNodeType>
		<LNodeType id="SIEMENS_7UT85_001SIPROTEC5_LNType_LTPC_IEEE1588HiAcc" lnClass="LTPC">
			<DO name="Mod" type="SIPROTEC5_DOType_Mod_status_only_with_InitVal_V09.50.01_V09.50.01"/>
			<DO name="Beh" type="SIPROTEC5_DOType_ENS_Behavior_V09.50.01_V09.50.01"/>
			<DO name="Health" type="SIPROTEC5_DOType_ENS_Health_V09.50.01_V09.50.01"/>
			<DO name="NamPlt" type="SIPROTEC5_DOType_LPL_NamPlt_for_Ed2_LN_V09.50.01_V09.50.01"/>
			<DO name="ClkAcc" type="SIPROTEC5_DOType_INS_V09.50.01_V09.50.01"/>
			<DO name="ClkClass" type="SIPROTEC5_DOType_INS_V09.50.01_V09.50.01"/>
			<DO name="ClkId" type="SIPROTEC5_DOType_VSS_V09.50.01_V09.50.01"/>
			<DO name="GmClkClass" type="SIPROTEC5_DOType_INS_V09.50.01_V09.50.01"/>
			<DO name="GmClkId" type="SIPROTEC5_DOType_VSS_V09.50.01_V09.50.01"/>
			<DO name="GmClkPrio1" type="SIPROTEC5_DOType_INS_V09.50.01_V09.50.01"/>
			<DO name="GmClkPrio2" type="SIPROTEC5_DOType_INS_V09.50.01_V09.50.01"/>
			<DO name="GmClkAcc" type="SIPROTEC5_DOType_INS_V09.50.01_V09.50.01"/>
			<DO name="MePathDlTmns" type="SIPROTEC5_DOType_INS_V09.50.01_V09.50.01"/>
			<DO name="NumPorts" type="SIPROTEC5_DOType_INS_V09.50.01_V09.50.01"/>
			<DO name="OfsMaster" type="SIPROTEC5_DOType_INS_INT32_with_units_V09.50.01_V09.50.01"/>
			<DO name="OfsUtc" type="SIPROTEC5_DOType_SPS_V09.50.01_V09.50.01"/>
			<DO name="OfsUtcTms" type="SIPROTEC5_DOType_INS_INT32_with_units_V09.50.01_V09.50.01"/>
			<DO name="PrntClkId" type="SIPROTEC5_DOType_VSS_V09.50.01_V09.50.01"/>
			<DO name="Stepsr" type="SIPROTEC5_DOType_INS_V09.50.01_V09.50.01"/>
			<DO name="TmSrcVal" type="SIPROTEC5_DOType_INS_V09.50.01_V09.50.01"/>
			<DO name="TwoStep" type="SIPROTEC5_DOType_SPS_V09.50.01_V09.50.01"/>
			<DO name="PrntPortId" type="SIPROTEC5_DOType_VSS_V09.50.01_V09.50.01"/>
			<DO name="GmClkVar" type="SIPROTEC5_DOType_INS_V09.50.01_V09.50.01"/>
			<DO name="ClkVar" type="SIPROTEC5_DOType_INS_V09.50.01_V09.50.01"/>
			<DO name="ClkPrio1" type="SIPROTEC5_DOType_ING_INT32_edit_V09.50.01_V09.50.01"/>
			<DO name="ClkPrio2" type="SIPROTEC5_DOType_ING_INT32_edit_V09.50.01_V09.50.01"/>
			<DO name="DomainNum" type="SIPROTEC5_DOType_ING_INT32_edit_V09.50.01_V09.50.01"/>
			<DO name="OfsLimTmns" type="SIPROTEC5_DOType_ING_INT32_div_readOnly_V09.50.01_V09.50.01"/>
			<DO name="Slave" type="SIPROTEC5_DOType_SPG_edit_V09.50.01_V09.50.01"/>
			<DO name="PrntPortNum" type="SIPROTEC5_DOType_ING_INT32_edit_V09.50.01_V09.50.01"/>
			<DO name="ChLiv" type="SIPROTEC5_DOType_SPS_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="ServoStatus" type="SIPROTEC5_DOType_INS_INT32_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="ChFail" type="SIPROTEC5_DOType_SPS_UDEF_with_dataNs_V09.50.01_V09.50.01"/>
		</LNodeType>
		<LNodeType id="SIPROTEC5_LNType_PTTR_1ph" lnClass="PTTR">
			<DO name="Mod" type="SIPROTEC5_DOType_Mod_controllable_with_InitValVis_for_SIEMENS_LN_V09.50.01_V09.50.01"/>
			<DO name="Beh" type="SIPROTEC5_DOType_ENS_Behavior_V09.50.01_V09.50.01"/>
			<DO name="Health" type="SIPROTEC5_DOType_ENS_Health_V09.50.01_V09.50.01"/>
			<DO name="NamPlt" type="SIPROTEC5_DOType_LPL_NamPlt_for_Ed2_LN_V09.50.01_V09.50.01"/>
			<DO name="TmpRl" type="SIPROTEC5_DOType_MV_Float_V09.50.01_V09.50.01"/>
			<DO name="Str" type="SIPROTEC5_DOType_ACD_NonPhsSel_Without_DirRouting_V09.50.01_V09.50.01"/>
			<DO name="Op" type="SIPROTEC5_DOType_ACT_3pol_V09.50.01_V09.50.01"/>
			<DO name="AlmThm" type="SIPROTEC5_DOType_SPS_V09.50.01_V09.50.01"/>
			<DO name="Blk" type="SIPROTEC5_DOType_SPS_for_Input_V09.50.01_V09.50.01"/>
			<DO name="RsThmRep" type="SIPROTEC5_DOType_SPS_for_Input_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="Inactive" type="SIPROTEC5_DOType_SPS_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="OpAlmOnly" type="SIPROTEC5_DOType_ACT_3pol_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="AlmA" type="SIPROTEC5_DOType_SPS_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="TmsUtlCls" type="SIPROTEC5_DOType_MV_Float_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="TmsUtlTr" type="SIPROTEC5_DOType_MV_Float_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="AEquiva" type="SIPROTEC5_DOType_MV_Float_with_dataNs_V09.50.01_V09.50.01"/>
		</LNodeType>
		<LNodeType id="SIPROTEC5_LNType_PTUV" lnClass="PTUV">
			<DO name="Mod" type="SIPROTEC5_DOType_Mod_controllable_with_InitValVis_for_SIEMENS_LN_V09.50.01_V09.50.01"/>
			<DO name="Beh" type="SIPROTEC5_DOType_ENS_Behavior_V09.50.01_V09.50.01"/>
			<DO name="Health" type="SIPROTEC5_DOType_ENS_Health_V09.50.01_V09.50.01"/>
			<DO name="NamPlt" type="SIPROTEC5_DOType_LPL_NamPlt_for_Ed2_LN_V09.50.01_V09.50.01"/>
			<DO name="Str" type="SIPROTEC5_DOType_ACD_PhsSel_GABC_Without_DirRouting_and_PhaseRouting_V09.50.01_V09.50.01"/>
			<DO name="Op" type="SIPROTEC5_DOType_ACT_3pol_V09.50.01_V09.50.01"/>
			<DO name="Blk" type="SIPROTEC5_DOType_SPS_for_Input_V09.50.01_V09.50.01"/>
			<DO name="Inactive" type="SIPROTEC5_DOType_SPS_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="StrAB" type="SIPROTEC5_DOType_SPS_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="StrBC" type="SIPROTEC5_DOType_SPS_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="StrCA" type="SIPROTEC5_DOType_SPS_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="OpTmExp" type="SIPROTEC5_DOType_ACT_3pol_with_dataNs_V09.50.01_V09.50.01"/>
		</LNodeType>
		<LNodeType id="SIPROTEC5_LNType_GAPC_FB0_UVP_3ph_3pol" lnClass="GAPC">
			<DO name="Mod" type="SIPROTEC5_DOType_Mod_status_only_with_InitVal_V09.50.01_V09.50.01"/>
			<DO name="Beh" type="SIPROTEC5_DOType_ENS_Behavior_V09.50.01_V09.50.01"/>
			<DO name="Health" type="SIPROTEC5_DOType_ENS_Health_V09.50.01_V09.50.01"/>
			<DO name="NamPlt" type="SIPROTEC5_DOType_LPL_NamPlt_for_Ed2_LN_V09.50.01_V09.50.01"/>
			<DO name="ASupRel" type="SIPROTEC5_DOType_SPS_for_Input_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="ASupFulfil" type="SIPROTEC5_DOType_SPS_with_dataNs_V09.50.01_V09.50.01"/>
		</LNodeType>
		<LNodeType id="SIPROTEC5_LNType_PDIS_ImpedanceProtectionZone" lnClass="PDIS">
			<DO name="Mod" type="SIPROTEC5_DOType_Mod_controllable_with_InitValVis_for_SIEMENS_LN_V09.50.01_V09.50.01"/>
			<DO name="Beh" type="SIPROTEC5_DOType_ENS_Behavior_V09.50.01_V09.50.01"/>
			<DO name="Health" type="SIPROTEC5_DOType_ENS_Health_V09.50.01_V09.50.01"/>
			<DO name="NamPlt" type="SIPROTEC5_DOType_LPL_NamPlt_for_Ed2_LN_V09.50.01_V09.50.01"/>
			<DO name="Str" type="SIPROTEC5_DOType_ACD_PhsSel_GABC_Without_DirRouting_and_PhaseRouting_V09.50.01_V09.50.01"/>
			<DO name="Op" type="SIPROTEC5_DOType_ACT_3pol_V09.50.01_V09.50.01"/>
			<DO name="Blk" type="SIPROTEC5_DOType_SPS_for_Input_V09.50.01_V09.50.01"/>
			<DO name="Inactive" type="SIPROTEC5_DOType_SPS_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="OpTmExp" type="SIPROTEC5_DOType_ACT_3pol_with_dataNs_V09.50.01_V09.50.01"/>
		</LNodeType>
		<LNodeType id="SIPROTEC5_LNType_PTRC_ImpPTRC" lnClass="PTRC">
			<DO name="Mod" type="SIPROTEC5_DOType_Mod_status_only_with_InitVal_V09.50.01_V09.50.01"/>
			<DO name="Beh" type="SIPROTEC5_DOType_ENS_Behavior_V09.50.01_V09.50.01"/>
			<DO name="Health" type="SIPROTEC5_DOType_ENS_Health_V09.50.01_V09.50.01"/>
			<DO name="NamPlt" type="SIPROTEC5_DOType_LPL_NamPlt_V09.50.01_V09.50.01"/>
			<DO name="Op" type="SIPROTEC5_DOType_ACT_3pol_V09.50.01_V09.50.01"/>
			<DO name="Str" type="SIPROTEC5_DOType_ACD_PhsSel_GABC_Without_DirRouting_and_PhaseRouting_V09.50.01_V09.50.01"/>
			<DO name="SelLoopAG" type="SIPROTEC5_DOType_ACD_NonPhsSel_Without_DirRouting_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="SelLoopBG" type="SIPROTEC5_DOType_ACD_NonPhsSel_Without_DirRouting_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="SelLoopCG" type="SIPROTEC5_DOType_ACD_NonPhsSel_Without_DirRouting_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="SelLoopAB" type="SIPROTEC5_DOType_ACD_NonPhsSel_Without_DirRouting_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="SelLoopBC" type="SIPROTEC5_DOType_ACD_NonPhsSel_Without_DirRouting_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="SelLoopCA" type="SIPROTEC5_DOType_ACD_NonPhsSel_Without_DirRouting_with_dataNs_V09.50.01_V09.50.01"/>
		</LNodeType>
		<LNodeType id="SIPROTEC5_LNType_GAPC_FB0_IMP" lnClass="GAPC">
			<DO name="Mod" type="SIPROTEC5_DOType_Mod_controllable_with_InitValVis_for_SIEMENS_LN_V09.50.01_V09.50.01"/>
			<DO name="Beh" type="SIPROTEC5_DOType_ENS_Behavior_V09.50.01_V09.50.01"/>
			<DO name="Health" type="SIPROTEC5_DOType_ENS_Health_V09.50.01_V09.50.01"/>
			<DO name="NamPlt" type="SIPROTEC5_DOType_LPL_NamPlt_for_Ed2_LN_V09.50.01_V09.50.01"/>
			<DO name="Inactive" type="SIPROTEC5_DOType_SPS_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="LoopOCPU" type="SIPROTEC5_DOType_ACT_1_3pol_GABC_simpleConversions_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="VSealIn" type="SIPROTEC5_DOType_ACT_3pol_with_dataNs_V09.50.01_V09.50.01"/>
		</LNodeType>
		<LNodeType id="SIPROTEC5_LNType_PTRC_FN_Str_GABC_Without_DirRouting_Op_1_3pol_1" lnClass="PTRC">
			<DO name="Mod" type="SIPROTEC5_DOType_Mod_status_only_with_InitVal_V09.50.01_V09.50.01"/>
			<DO name="Beh" type="SIPROTEC5_DOType_ENS_Behavior_V09.50.01_V09.50.01"/>
			<DO name="Health" type="SIPROTEC5_DOType_ENS_Health_V09.50.01_V09.50.01"/>
			<DO name="NamPlt" type="SIPROTEC5_DOType_LPL_NamPlt_V09.50.01_V09.50.01"/>
			<DO name="Op" type="SIPROTEC5_DOType_ACT_1_3pol_GABC_simpleConversions_V09.50.01_V09.50.01"/>
			<DO name="Str" type="SIPROTEC5_DOType_ACD_PhsSel_GABC_Without_DirRouting_and_PhaseRouting_V09.50.01_V09.50.01"/>
			<DO name="SOTFLV" type="SIPROTEC5_DOType_SPS_UDEF_with_dataNs_V09.50.01_V09.50.01"/>
		</LNodeType>
		<LNodeType id="SIPROTEC5_LNType_ChartSetting_SPG" lnClass="GAPC">
			<DO name="Mod" type="SIPROTEC5_DOType_Mod_status_only_with_InitVal_V09.50.01_V09.50.01"/>
			<DO name="Beh" type="SIPROTEC5_DOType_ENS_Behavior_V09.50.01_V09.50.01"/>
			<DO name="Health" type="SIPROTEC5_DOType_ENS_Health_V09.50.01_V09.50.01"/>
			<DO name="NamPlt" type="SIPROTEC5_DOType_LPL_NamPlt_for_Ed2_LN_V09.50.01_V09.50.01"/>
			<DO name="Val" type="SIPROTEC5_DOType_SPS_with_dataNs_V09.50.01_V09.50.01"/>
		</LNodeType>
		<LNodeType id="SIPROTEC5_LNType_PTOC_3ph_IOCP_3pol_Bas" lnClass="PTOC">
			<DO name="Mod" type="SIPROTEC5_DOType_Mod_controllable_with_InitValVis_for_SIEMENS_LN_V09.50.01_V09.50.01"/>
			<DO name="Beh" type="SIPROTEC5_DOType_ENS_Behavior_V09.50.01_V09.50.01"/>
			<DO name="Health" type="SIPROTEC5_DOType_ENS_Health_V09.50.01_V09.50.01"/>
			<DO name="NamPlt" type="SIPROTEC5_DOType_LPL_NamPlt_for_Ed2_LN_V09.50.01_V09.50.01"/>
			<DO name="Str" type="SIPROTEC5_DOType_ACD_PhsSel_GABC_Without_DirRouting_and_PhaseRouting_V09.50.01_V09.50.01"/>
			<DO name="Op" type="SIPROTEC5_DOType_ACT_3pol_V09.50.01_V09.50.01"/>
			<DO name="Blk" type="SIPROTEC5_DOType_SPS_for_Input_V09.50.01_V09.50.01"/>
			<DO name="BlkOpDlTm" type="SIPROTEC5_DOType_SPS_for_Input_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="Inactive" type="SIPROTEC5_DOType_SPS_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="InrshBlkOp" type="SIPROTEC5_DOType_ACT_3pol_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="DskRng" type="SIPROTEC5_DOType_SPS_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="OpTmExp" type="SIPROTEC5_DOType_ACT_3pol_with_dataNs_V09.50.01_V09.50.01"/>
		</LNodeType>
		<LNodeType id="SIPROTEC5_LNType_PTOC_3ph_DOCP_3pol_Bas" lnClass="PTOC">
			<DO name="Mod" type="SIPROTEC5_DOType_Mod_controllable_with_InitValVis_for_SIEMENS_LN_V09.50.01_V09.50.01"/>
			<DO name="Beh" type="SIPROTEC5_DOType_ENS_Behavior_V09.50.01_V09.50.01"/>
			<DO name="Health" type="SIPROTEC5_DOType_ENS_Health_V09.50.01_V09.50.01"/>
			<DO name="NamPlt" type="SIPROTEC5_DOType_LPL_NamPlt_for_Ed2_LN_V09.50.01_V09.50.01"/>
			<DO name="Str" type="SIPROTEC5_DOType_ACD_PhsSel_GABC_Without_DirRouting_and_PhaseRouting_V09.50.01_V09.50.01"/>
			<DO name="Op" type="SIPROTEC5_DOType_ACT_3pol_V09.50.01_V09.50.01"/>
			<DO name="Blk" type="SIPROTEC5_DOType_SPS_for_Input_V09.50.01_V09.50.01"/>
			<DO name="BlkOpDlTm" type="SIPROTEC5_DOType_SPS_for_Input_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="Inactive" type="SIPROTEC5_DOType_SPS_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="InrshBlkOp" type="SIPROTEC5_DOType_ACT_3pol_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="OpTmExp" type="SIPROTEC5_DOType_ACT_3pol_with_dataNs_V09.50.01_V09.50.01"/>
		</LNodeType>
		<LNodeType id="SIPROTEC5_LNType_PTOC_1ph_DOCP" lnClass="PTOC">
			<DO name="Mod" type="SIPROTEC5_DOType_Mod_controllable_with_InitValVis_for_SIEMENS_LN_V09.50.01_V09.50.01"/>
			<DO name="Beh" type="SIPROTEC5_DOType_ENS_Behavior_V09.50.01_V09.50.01"/>
			<DO name="Health" type="SIPROTEC5_DOType_ENS_Health_V09.50.01_V09.50.01"/>
			<DO name="NamPlt" type="SIPROTEC5_DOType_LPL_NamPlt_V09.50.01_V09.50.01"/>
			<DO name="Str" type="SIPROTEC5_DOType_ACD_NonPhsSel_Without_DirRouting_V09.50.01_V09.50.01"/>
			<DO name="Op" type="SIPROTEC5_DOType_ACT_3pol_V09.50.01_V09.50.01"/>
			<DO name="BlkStg" type="SIPROTEC5_DOType_SPS_for_Input_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="BlkOpDlTm" type="SIPROTEC5_DOType_SPS_for_Input_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="Inactive" type="SIPROTEC5_DOType_SPS_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="InrshBlkOp" type="SIPROTEC5_DOType_ACT_3pol_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="OpTmExp" type="SIPROTEC5_DOType_ACT_3pol_with_dataNs_V09.50.01_V09.50.01"/>
		</LNodeType>
		<LNodeType id="SIPROTEC5_LNType_REF" lnClass="PDIF">
			<DO name="Mod" type="SIPROTEC5_DOType_Mod_status_only_with_InitVal_V09.50.01_V09.50.01"/>
			<DO name="Beh" type="SIPROTEC5_DOType_ENS_Behavior_V09.50.01_V09.50.01"/>
			<DO name="Health" type="SIPROTEC5_DOType_ENS_Health_V09.50.01_V09.50.01"/>
			<DO name="NamPlt" type="SIPROTEC5_DOType_LPL_NamPlt_V09.50.01_V09.50.01"/>
			<DO name="Str" type="SIPROTEC5_DOType_ACD_NonPhsSel_Without_DirRouting_V09.50.01_V09.50.01"/>
			<DO name="Op" type="SIPROTEC5_DOType_ACT_3pol_V09.50.01_V09.50.01"/>
			<DO name="BlkFct" type="SIPROTEC5_DOType_SPS_for_Input_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="Inactive" type="SIPROTEC5_DOType_SPS_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="OpTmExp" type="SIPROTEC5_DOType_ACT_3pol_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="BlkDirDet" type="SIPROTEC5_DOType_SPS_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="REFD" type="SIPROTEC5_DOType_MV_Float_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="REFS" type="SIPROTEC5_DOType_MV_Float_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="REFDOp" type="SIPROTEC5_DOType_MV_Float_dupd_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="REFSOp" type="SIPROTEC5_DOType_MV_Float_dupd_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="DifAClc1ph" type="SIPROTEC5_DOType_MV_Float_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="RstA1ph" type="SIPROTEC5_DOType_MV_Float_with_dataNs_V09.50.01_V09.50.01"/>
		</LNodeType>
		<LNodeType id="SIPROTEC5_LNType_SFFM_1" lnClass="SFFM">
			<DO name="Mod" type="SIPROTEC5_DOType_Mod_controllable_with_InitValVis_for_SIEMENS_LN_V09.50.01_V09.50.01"/>
			<DO name="Beh" type="SIPROTEC5_DOType_ENS_Behavior_V09.50.01_V09.50.01"/>
			<DO name="Health" type="SIPROTEC5_DOType_ENS_Health_V09.50.01_V09.50.01"/>
			<DO name="NamPlt" type="SIPROTEC5_DOType_LPL_NamPlt_for_SIEMENS_LN_V09.50.01_V09.50.01"/>
			<DO name="Blk" type="SIPROTEC5_DOType_SPS_for_Input_V09.50.01_V09.50.01"/>
			<DO name="Inactive" type="SIPROTEC5_DOType_SPS_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="FuseFail" type="SIPROTEC5_DOType_SPS_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="TripolFail" type="SIPROTEC5_DOType_SPS_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="SO3polFail" type="SIPROTEC5_DOType_SPS_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="AsymDlFail" type="SIPROTEC5_DOType_SPS_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="AsymFail" type="SIPROTEC5_DOType_SPS_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="LVVTSup" type="SIPROTEC5_DOType_SPS_UDEF_with_dataNs_V09.50.01_V09.50.01"/>
		</LNodeType>
		<LNodeType id="SIPROTEC5_LNType_RBRF_Adv_1_3pol_1" lnClass="RBRF">
			<DO name="Mod" type="SIPROTEC5_DOType_Mod_controllable_with_InitValVis_for_SIEMENS_LN_V09.50.01_V09.50.01"/>
			<DO name="Beh" type="SIPROTEC5_DOType_ENS_Behavior_V09.50.01_V09.50.01"/>
			<DO name="Health" type="SIPROTEC5_DOType_ENS_Health_V09.50.01_V09.50.01"/>
			<DO name="NamPlt" type="SIPROTEC5_DOType_LPL_NamPlt_for_Ed2_LN_V09.50.01_V09.50.01"/>
			<DO name="Str" type="SIPROTEC5_DOType_ACD_PhsSel_GABC_Without_DirRouting_and_PhaseRouting_V09.50.01_V09.50.01"/>
			<DO name="OpEx" type="SIPROTEC5_DOType_ACT_3pol_V09.50.01_V09.50.01"/>
			<DO name="OpIn" type="SIPROTEC5_DOType_ACT_1_3pol_GABCN_V09.50.01_V09.50.01"/>
			<DO name="Blk" type="SIPROTEC5_DOType_SPS_for_Input_V09.50.01_V09.50.01"/>
			<DO name="ThreshEF" type="SIPROTEC5_DOType_SPS_for_Input_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="Init3p" type="SIPROTEC5_DOType_SPS_for_Input_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="InitPhA" type="SIPROTEC5_DOType_SPS_for_Input_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="InitPhB" type="SIPROTEC5_DOType_SPS_for_Input_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="InitPhC" type="SIPROTEC5_DOType_SPS_for_Input_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="BFRel1p" type="SIPROTEC5_DOType_SPS_for_Input_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="BFRel3p" type="SIPROTEC5_DOType_SPS_for_Input_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="CBFaulty" type="SIPROTEC5_DOType_SPS_for_Input_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="Initdef3p" type="SIPROTEC5_DOType_SPS_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="InitdefPhA" type="SIPROTEC5_DOType_SPS_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="InitdefPhB" type="SIPROTEC5_DOType_SPS_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="InitdefPhC" type="SIPROTEC5_DOType_SPS_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="RelCBdef1p" type="SIPROTEC5_DOType_SPS_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="RelCBdef3p" type="SIPROTEC5_DOType_SPS_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="OpCBdef3p" type="SIPROTEC5_DOType_SPS_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="OpCBdefPhA" type="SIPROTEC5_DOType_SPS_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="OpCBdefPhB" type="SIPROTEC5_DOType_SPS_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="OpCBdefPhC" type="SIPROTEC5_DOType_SPS_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="BFInitNR" type="SIPROTEC5_DOType_SPS_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="AuxCritNR" type="SIPROTEC5_DOType_SPS_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="Inactive" type="SIPROTEC5_DOType_SPS_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="ImmOp" type="SIPROTEC5_DOType_SPS_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="CBFailPole" type="SIPROTEC5_DOType_ACD_PhsSel_GABCN_Without_DirRouting_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="DlyByInvMV" type="SIPROTEC5_DOType_SPS_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="RxInit3p1" type="SIPROTEC5_DOType_SPS_with_dataNs_V09.50.01_V09.50.01"/>
		</LNodeType>
		<LNodeType id="SIPROTEC5_LNType_V0_PTOV" lnClass="PTOV">
			<DO name="Mod" type="SIPROTEC5_DOType_Mod_controllable_with_InitValVis_for_SIEMENS_LN_V09.50.01_V09.50.01"/>
			<DO name="Beh" type="SIPROTEC5_DOType_ENS_Behavior_V09.50.01_V09.50.01"/>
			<DO name="Health" type="SIPROTEC5_DOType_ENS_Health_V09.50.01_V09.50.01"/>
			<DO name="NamPlt" type="SIPROTEC5_DOType_LPL_NamPlt_for_Ed2_LN_V09.50.01_V09.50.01"/>
			<DO name="Str" type="SIPROTEC5_DOType_ACD_NonPhsSel_Without_DirRouting_V09.50.01_V09.50.01"/>
			<DO name="Op" type="SIPROTEC5_DOType_ACT_3pol_V09.50.01_V09.50.01"/>
			<DO name="Blk" type="SIPROTEC5_DOType_SPS_for_Input_V09.50.01_V09.50.01"/>
			<DO name="Inactive" type="SIPROTEC5_DOType_SPS_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="FaultyPhs" type="SIPROTEC5_DOType_ACT_1_3pol_GABC_simpleConversions_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="OpTmExp" type="SIPROTEC5_DOType_ACT_3pol_with_dataNs_V09.50.01_V09.50.01"/>
		</LNodeType>
		<LNodeType id="SIPROTEC5_LNType_PTRC_FN_Str_NonPhsSel_Without_DirRouting_Op_3pol" lnClass="PTRC">
			<DO name="Mod" type="SIPROTEC5_DOType_Mod_status_only_with_InitVal_V09.50.01_V09.50.01"/>
			<DO name="Beh" type="SIPROTEC5_DOType_ENS_Behavior_V09.50.01_V09.50.01"/>
			<DO name="Health" type="SIPROTEC5_DOType_ENS_Health_V09.50.01_V09.50.01"/>
			<DO name="NamPlt" type="SIPROTEC5_DOType_LPL_NamPlt_V09.50.01_V09.50.01"/>
			<DO name="Op" type="SIPROTEC5_DOType_ACT_3pol_V09.50.01_V09.50.01"/>
			<DO name="Str" type="SIPROTEC5_DOType_ACD_NonPhsSel_Without_DirRouting_V09.50.01_V09.50.01"/>
		</LNodeType>
		<LNodeType id="SIPROTEC5_LNType_PTOV" lnClass="PTOV">
			<DO name="Mod" type="SIPROTEC5_DOType_Mod_controllable_with_InitValVis_for_SIEMENS_LN_V09.50.01_V09.50.01"/>
			<DO name="Beh" type="SIPROTEC5_DOType_ENS_Behavior_V09.50.01_V09.50.01"/>
			<DO name="Health" type="SIPROTEC5_DOType_ENS_Health_V09.50.01_V09.50.01"/>
			<DO name="NamPlt" type="SIPROTEC5_DOType_LPL_NamPlt_for_Ed2_LN_V09.50.01_V09.50.01"/>
			<DO name="Str" type="SIPROTEC5_DOType_ACD_PhsSel_GABC_Without_DirRouting_and_PhaseRouting_V09.50.01_V09.50.01"/>
			<DO name="Op" type="SIPROTEC5_DOType_ACT_3pol_V09.50.01_V09.50.01"/>
			<DO name="Blk" type="SIPROTEC5_DOType_SPS_for_Input_V09.50.01_V09.50.01"/>
			<DO name="Inactive" type="SIPROTEC5_DOType_SPS_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="StrAB" type="SIPROTEC5_DOType_SPS_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="StrBC" type="SIPROTEC5_DOType_SPS_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="StrCA" type="SIPROTEC5_DOType_SPS_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="OpTmExp" type="SIPROTEC5_DOType_ACT_3pol_with_dataNs_V09.50.01_V09.50.01"/>
		</LNodeType>
		<LNodeType id="SIPROTEC5_LNType_PTRC_FN_Str_GABC_Without_DirRouting_Op_3pol" lnClass="PTRC">
			<DO name="Mod" type="SIPROTEC5_DOType_Mod_status_only_with_InitVal_V09.50.01_V09.50.01"/>
			<DO name="Beh" type="SIPROTEC5_DOType_ENS_Behavior_V09.50.01_V09.50.01"/>
			<DO name="Health" type="SIPROTEC5_DOType_ENS_Health_V09.50.01_V09.50.01"/>
			<DO name="NamPlt" type="SIPROTEC5_DOType_LPL_NamPlt_V09.50.01_V09.50.01"/>
			<DO name="Op" type="SIPROTEC5_DOType_ACT_3pol_V09.50.01_V09.50.01"/>
			<DO name="Str" type="SIPROTEC5_DOType_ACD_PhsSel_GABC_Without_DirRouting_and_PhaseRouting_V09.50.01_V09.50.01"/>
		</LNodeType>
		<LNodeType id="SIPROTEC5_LNType_PTOC_3ph_IOCP_3pol" lnClass="PTOC">
			<DO name="Mod" type="SIPROTEC5_DOType_Mod_controllable_with_InitValVis_for_SIEMENS_LN_V09.50.01_V09.50.01"/>
			<DO name="Beh" type="SIPROTEC5_DOType_ENS_Behavior_V09.50.01_V09.50.01"/>
			<DO name="Health" type="SIPROTEC5_DOType_ENS_Health_V09.50.01_V09.50.01"/>
			<DO name="NamPlt" type="SIPROTEC5_DOType_LPL_NamPlt_for_Ed2_LN_V09.50.01_V09.50.01"/>
			<DO name="Str" type="SIPROTEC5_DOType_ACD_PhsSel_GABC_Without_DirRouting_and_PhaseRouting_V09.50.01_V09.50.01"/>
			<DO name="Op" type="SIPROTEC5_DOType_ACT_1_3pol_GABC_simpleConversions_V09.50.01_V09.50.01"/>
			<DO name="Blk" type="SIPROTEC5_DOType_SPS_for_Input_V09.50.01_V09.50.01"/>
			<DO name="ActDynSet" type="SIPROTEC5_DOType_SPS_for_Input_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="BlkOpDlTm" type="SIPROTEC5_DOType_SPS_for_Input_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="Inactive" type="SIPROTEC5_DOType_SPS_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="InrshBlkOp" type="SIPROTEC5_DOType_ACT_1_3pol_GABC_simpleConversions_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="DySgRc1CAc" type="SIPROTEC5_DOType_SPS_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="DySgRc2CAc" type="SIPROTEC5_DOType_SPS_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="DySgRc3CAc" type="SIPROTEC5_DOType_SPS_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="DySgRG3CAc" type="SIPROTEC5_DOType_SPS_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="DySgCLPAct" type="SIPROTEC5_DOType_SPS_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="DynSgBIAct" type="SIPROTEC5_DOType_SPS_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="DynBlkStr" type="SIPROTEC5_DOType_SPS_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="DskRng" type="SIPROTEC5_DOType_SPS_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="OpTmExp" type="SIPROTEC5_DOType_ACT_1_3pol_GABC_simpleConversions_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="I0ElimIph" type="SIPROTEC5_DOType_WYE_ABC_mag_with_dataNs_V09.50.01_V09.50.01"/>
		</LNodeType>
		<LNodeType id="SIPROTEC5_LNType_GAPC_FB0_OCP_3ph" lnClass="GAPC">
			<DO name="Mod" type="SIPROTEC5_DOType_Mod_controllable_with_InitValVis_for_SIEMENS_LN_V09.50.01_V09.50.01"/>
			<DO name="Beh" type="SIPROTEC5_DOType_ENS_Behavior_V09.50.01_V09.50.01"/>
			<DO name="Health" type="SIPROTEC5_DOType_ENS_Health_V09.50.01_V09.50.01"/>
			<DO name="NamPlt" type="SIPROTEC5_DOType_LPL_NamPlt_for_Ed2_LN_V09.50.01_V09.50.01"/>
			<DO name="ActEmgMod" type="SIPROTEC5_DOType_SPS_for_Input_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="EmgcyMod" type="SIPROTEC5_DOType_SPS_with_dataNs_V09.50.01_V09.50.01"/>
		</LNodeType>
		<LNodeType id="SIEMENS_7UT85_001SIPROTEC5_LNType_PSCH_ExtTrip_1" lnClass="PSCH">
			<DO name="Mod" type="SIPROTEC5_DOType_Mod_controllable_with_InitValVis_for_SIEMENS_LN_V09.50.01_V09.50.01"/>
			<DO name="Beh" type="SIPROTEC5_DOType_ENS_Behavior_V09.50.01_V09.50.01"/>
			<DO name="Health" type="SIPROTEC5_DOType_ENS_Health_V09.50.01_V09.50.01"/>
			<DO name="NamPlt" type="SIPROTEC5_DOType_LPL_NamPlt_for_Ed2_LN_V09.50.01_V09.50.01"/>
			<DO name="Str" type="SIPROTEC5_DOType_ACD_NonPhsSel_Without_DirRouting_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="Op" type="SIPROTEC5_DOType_ACT_3pol_V09.50.01_V09.50.01"/>
			<DO name="Blk" type="SIPROTEC5_DOType_SPS_for_Input_V09.50.01_V09.50.01"/>
			<DO name="ExtIn" type="SIPROTEC5_DOType_SPS_for_Input_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="Inactive" type="SIPROTEC5_DOType_SPS_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="OpTmExp" type="SIPROTEC5_DOType_ACT_3pol_with_dataNs_V09.50.01_V09.50.01"/>
		</LNodeType>
		<LNodeType id="SIPROTEC5_LNType_PHAR" lnClass="PHAR">
			<DO name="Mod" type="SIPROTEC5_DOType_Mod_controllable_with_InitValVis_for_SIEMENS_LN_V09.50.01_V09.50.01"/>
			<DO name="Beh" type="SIPROTEC5_DOType_ENS_Behavior_V09.50.01_V09.50.01"/>
			<DO name="Health" type="SIPROTEC5_DOType_ENS_Health_V09.50.01_V09.50.01"/>
			<DO name="NamPlt" type="SIPROTEC5_DOType_LPL_NamPlt_for_Ed2_LN_V09.50.01_V09.50.01"/>
			<DO name="Str" type="SIPROTEC5_DOType_ACD_PhsSel_GABCN_V09.50.01_V09.50.01"/>
			<DO name="Blk" type="SIPROTEC5_DOType_SPS_for_Input_V09.50.01_V09.50.01"/>
			<DO name="Inactive" type="SIPROTEC5_DOType_SPS_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="Irs2HaDetA" type="SIPROTEC5_DOType_SPS_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="Irs2HaDetB" type="SIPROTEC5_DOType_SPS_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="Irs2HaDetC" type="SIPROTEC5_DOType_SPS_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="IrsCWADet" type="SIPROTEC5_DOType_SPS_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="IrsCrsBlk" type="SIPROTEC5_DOType_SPS_with_dataNs_V09.50.01_V09.50.01"/>
		</LNodeType>
		<LNodeType id="SIPROTEC5_LNType_SFFM" lnClass="SFFM">
			<DO name="Mod" type="SIPROTEC5_DOType_Mod_controllable_with_InitValVis_for_SIEMENS_LN_V09.50.01_V09.50.01"/>
			<DO name="Beh" type="SIPROTEC5_DOType_ENS_Behavior_V09.50.01_V09.50.01"/>
			<DO name="Health" type="SIPROTEC5_DOType_ENS_Health_V09.50.01_V09.50.01"/>
			<DO name="NamPlt" type="SIPROTEC5_DOType_LPL_NamPlt_for_SIEMENS_LN_V09.50.01_V09.50.01"/>
			<DO name="Blk" type="SIPROTEC5_DOType_SPS_for_Input_V09.50.01_V09.50.01"/>
			<DO name="Inactive" type="SIPROTEC5_DOType_SPS_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="FuseFail" type="SIPROTEC5_DOType_SPS_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="TripolFail" type="SIPROTEC5_DOType_SPS_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="SO3polFail" type="SIPROTEC5_DOType_SPS_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="AsymDlFail" type="SIPROTEC5_DOType_SPS_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="AsymFail" type="SIPROTEC5_DOType_SPS_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="HVVTSup" type="SIPROTEC5_DOType_SPS_UDEF_with_dataNs_V09.50.01_V09.50.01"/>
		</LNodeType>
		<LNodeType id="SIPROTEC5_LNType_YPTR_FB0_FGTransformerSide" lnClass="YPTR">
			<DO name="Mod" type="SIPROTEC5_DOType_Mod_status_only_with_InitVal_V09.50.01_V09.50.01"/>
			<DO name="Beh" type="SIPROTEC5_DOType_ENS_Behavior_V09.50.01_V09.50.01"/>
			<DO name="Health" type="SIPROTEC5_DOType_ENS_Health_V09.50.01_V09.50.01"/>
			<DO name="NamPlt" type="SIPROTEC5_DOType_LPL_NamPlt_for_Ed2_LN_V09.50.01_V09.50.01"/>
		</LNodeType>
		<LNodeType id="SIPROTEC5_LNType_RBRF_Adv_1_3pol" lnClass="RBRF">
			<DO name="Mod" type="SIPROTEC5_DOType_Mod_controllable_with_InitValVis_for_SIEMENS_LN_V09.50.01_V09.50.01"/>
			<DO name="Beh" type="SIPROTEC5_DOType_ENS_Behavior_V09.50.01_V09.50.01"/>
			<DO name="Health" type="SIPROTEC5_DOType_ENS_Health_V09.50.01_V09.50.01"/>
			<DO name="NamPlt" type="SIPROTEC5_DOType_LPL_NamPlt_for_Ed2_LN_V09.50.01_V09.50.01"/>
			<DO name="Str" type="SIPROTEC5_DOType_ACD_PhsSel_GABC_Without_DirRouting_and_PhaseRouting_V09.50.01_V09.50.01"/>
			<DO name="OpEx" type="SIPROTEC5_DOType_ACT_3pol_V09.50.01_V09.50.01"/>
			<DO name="OpIn" type="SIPROTEC5_DOType_ACT_1_3pol_GABCN_V09.50.01_V09.50.01"/>
			<DO name="Blk" type="SIPROTEC5_DOType_SPS_for_Input_V09.50.01_V09.50.01"/>
			<DO name="ThreshEF" type="SIPROTEC5_DOType_SPS_for_Input_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="Init3p" type="SIPROTEC5_DOType_SPS_for_Input_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="InitPhA" type="SIPROTEC5_DOType_SPS_for_Input_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="InitPhB" type="SIPROTEC5_DOType_SPS_for_Input_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="InitPhC" type="SIPROTEC5_DOType_SPS_for_Input_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="BFRel1p" type="SIPROTEC5_DOType_SPS_for_Input_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="BFRel3p" type="SIPROTEC5_DOType_SPS_for_Input_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="CBFaulty" type="SIPROTEC5_DOType_SPS_for_Input_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="Initdef3p" type="SIPROTEC5_DOType_SPS_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="InitdefPhA" type="SIPROTEC5_DOType_SPS_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="InitdefPhB" type="SIPROTEC5_DOType_SPS_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="InitdefPhC" type="SIPROTEC5_DOType_SPS_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="RelCBdef1p" type="SIPROTEC5_DOType_SPS_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="RelCBdef3p" type="SIPROTEC5_DOType_SPS_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="OpCBdef3p" type="SIPROTEC5_DOType_SPS_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="OpCBdefPhA" type="SIPROTEC5_DOType_SPS_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="OpCBdefPhB" type="SIPROTEC5_DOType_SPS_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="OpCBdefPhC" type="SIPROTEC5_DOType_SPS_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="BFInitNR" type="SIPROTEC5_DOType_SPS_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="AuxCritNR" type="SIPROTEC5_DOType_SPS_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="Inactive" type="SIPROTEC5_DOType_SPS_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="ImmOp" type="SIPROTEC5_DOType_SPS_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="CBFailPole" type="SIPROTEC5_DOType_ACD_PhsSel_GABCN_Without_DirRouting_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="DlyByInvMV" type="SIPROTEC5_DOType_SPS_with_dataNs_V09.50.01_V09.50.01"/>
		</LNodeType>
		<LNodeType id="SIEMENS_7UT85_001SIPROTEC5_LNType_CSWI" lnClass="CSWI">
			<DO name="Mod" type="SIPROTEC5_DOType_Mod_status_only_with_InitVal_V09.50.01_V09.50.01"/>
			<DO name="Beh" type="SIPROTEC5_DOType_ENS_Behavior_V09.50.01_V09.50.01"/>
			<DO name="Health" type="SIPROTEC5_DOType_ENS_Health_V09.50.01_V09.50.01"/>
			<DO name="NamPlt" type="SIPROTEC5_DOType_LPL_NamPlt_for_Ed2_LN_V09.50.01_V09.50.01"/>
			<DO name="Loc" type="SIPROTEC5_DOType_SPS_V09.50.01_V09.50.01"/>
			<DO name="Pos" type="SIPROTEC5_DOType_DPC_CSWI_Pos_V09.50.01_V09.50.01"/>
			<DO name="LocKey" type="SIPROTEC5_DOType_SPS_V09.50.01_V09.50.01"/>
			<DO name="LocSta" type="SIPROTEC5_DOType_SPC_statusOnly_and_dir_with_nor_sec_V09.50.01_V09.50.01"/>
			<DO name="SwAuth" type="SIPROTEC5_DOType_ENS_SwitchingAuthority_LocalDigsiStationRemote_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="SwMod" type="SIPROTEC5_DOType_ENS_SwitchingMode_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="SwAuthEna1" type="SIPROTEC5_DOType_SPC_dir_with_enh_sec_initVal_and_dataNs_V09.50.01_V09.50.01"/>
			<DO name="SwAuthEna2" type="SIPROTEC5_DOType_SPC_dir_with_enh_sec_initVal_and_dataNs_V09.50.01_V09.50.01"/>
			<DO name="SwAuthEna3" type="SIPROTEC5_DOType_SPC_dir_with_enh_sec_initVal_and_dataNs_V09.50.01_V09.50.01"/>
			<DO name="SwAuthEna4" type="SIPROTEC5_DOType_SPC_dir_with_enh_sec_initVal_and_dataNs_V09.50.01_V09.50.01"/>
			<DO name="SwAuthEna5" type="SIPROTEC5_DOType_SPC_dir_with_enh_sec_initVal_and_dataNs_V09.50.01_V09.50.01"/>
			<DO name="OpnCmd" type="SIPROTEC5_DOType_SPS_UDEF_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="ClsCmd" type="SIPROTEC5_DOType_SPS_UDEF_with_dataNs_V09.50.01_V09.50.01"/>
		</LNodeType>
		<LNodeType id="SIEMENS_7UT85_001SIPROTEC5_LNType_GAPC_ManualClose" lnClass="GAPC">
			<DO name="Mod" type="SIPROTEC5_DOType_Mod_controllable_with_InitValVis_for_SIEMENS_LN_V09.50.01_V09.50.01"/>
			<DO name="Beh" type="SIPROTEC5_DOType_ENS_Behavior_V09.50.01_V09.50.01"/>
			<DO name="Health" type="SIPROTEC5_DOType_ENS_Health_V09.50.01_V09.50.01"/>
			<DO name="NamPlt" type="SIPROTEC5_DOType_LPL_NamPlt_for_Ed2_LN_V09.50.01_V09.50.01"/>
			<DO name="Blk" type="SIPROTEC5_DOType_SPS_for_Input_V09.50.01_V09.50.01"/>
			<DO name="Input" type="SIPROTEC5_DOType_SPS_for_Input_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="Detected" type="SIPROTEC5_DOType_SPS_with_dataNs_V09.50.01_V09.50.01"/>
		</LNodeType>
		<LNodeType id="SIEMENS_7UT85_001SIPROTEC5_LNType_XCBR_1pol_PhsX" lnClass="XCBR">
			<DO name="Mod" type="SIPROTEC5_DOType_Mod_status_only_with_InitVal_V09.50.01_V09.50.01"/>
			<DO name="Beh" type="SIPROTEC5_DOType_ENS_Behavior_V09.50.01_V09.50.01"/>
			<DO name="Health" type="SIPROTEC5_DOType_ENS_Health_V09.50.01_V09.50.01"/>
			<DO name="NamPlt" type="SIPROTEC5_DOType_LPL_NamPlt_for_Ed2_LN_V09.50.01_V09.50.01"/>
			<DO name="Loc" type="SIPROTEC5_DOType_SPS_V09.50.01_V09.50.01"/>
			<DO name="OpCnt" type="SIPROTEC5_DOType_INS_V09.50.01_V09.50.01"/>
			<DO name="Pos" type="SIPROTEC5_DOType_DPC_Pos_status_only_V09.50.01_V09.50.01"/>
			<DO name="BlkOpn" type="SIPROTEC5_DOType_SPC_status_only_V09.50.01_V09.50.01"/>
			<DO name="BlkCls" type="SIPROTEC5_DOType_SPC_status_only_V09.50.01_V09.50.01"/>
			<DO name="SumSwARs" type="SIPROTEC5_DOType_BCR_noFreeze_V09.50.01_V09.50.01"/>
		</LNodeType>
		<LNodeType id="SIEMENS_7UT85_001SIPROTEC5_LNType_XCBR_1pol_Ctl" lnClass="XCBR">
			<DO name="Mod" type="SIPROTEC5_DOType_Mod_status_only_with_InitVal_V09.50.01_V09.50.01"/>
			<DO name="Beh" type="SIPROTEC5_DOType_ENS_Behavior_V09.50.01_V09.50.01"/>
			<DO name="Health" type="SIPROTEC5_DOType_ENS_Health_V09.50.01_V09.50.01"/>
			<DO name="NamPlt" type="SIPROTEC5_DOType_LPL_NamPlt_for_Ed2_LN_V09.50.01_V09.50.01"/>
			<DO name="Loc" type="SIPROTEC5_DOType_SPS_V09.50.01_V09.50.01"/>
			<DO name="EEHealth" type="SIPROTEC5_DOType_ENS_Health_V09.50.01_V09.50.01"/>
			<DO name="OpCnt" type="SIPROTEC5_DOType_INS_V09.50.01_V09.50.01"/>
			<DO name="Pos" type="SIPROTEC5_DOType_DPC_XCBR_Pos_V09.50.01_V09.50.01"/>
			<DO name="BlkOpn" type="SIPROTEC5_DOType_SPC_status_only_V09.50.01_V09.50.01"/>
			<DO name="BlkCls" type="SIPROTEC5_DOType_SPC_status_only_V09.50.01_V09.50.01"/>
			<DO name="SumSwARs" type="SIPROTEC5_DOType_BCR_noFreeze_V09.50.01_V09.50.01"/>
			<DO name="POWCap" type="SIPROTEC5_DOType_ENS_TextList_POWCap_V09.50.01_V09.50.01"/>
			<DO name="SetOpCntA" type="SIPROTEC5_DOType_INC_controllable_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="SetOpCntB" type="SIPROTEC5_DOType_INC_controllable_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="SetOpCntC" type="SIPROTEC5_DOType_INC_controllable_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="SetOpnHrs" type="SIPROTEC5_DOType_INC_controllable_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="SetOpHrs" type="SIPROTEC5_DOType_INC_controllable_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="SetSwASumA" type="SIPROTEC5_DOType_APC_FLOAT32_controllable_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="SetSwASumB" type="SIPROTEC5_DOType_APC_FLOAT32_controllable_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="SetSwASumC" type="SIPROTEC5_DOType_APC_FLOAT32_controllable_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="AqBlk" type="SIPROTEC5_DOType_SPS_for_Input_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="Rdy" type="SIPROTEC5_DOType_SPS_for_Input_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="RsSwStat" type="SIPROTEC5_DOType_SPS_for_Input_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="RsAqBlkSub" type="SIPROTEC5_DOType_SPS_for_Input_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="TripRelViaBi" type="SIPROTEC5_DOType_SPS_for_Input_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="TripOpnCmd" type="SIPROTEC5_DOType_SPS_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="TripCmdA" type="SIPROTEC5_DOType_SPS_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="TripCmdB" type="SIPROTEC5_DOType_SPS_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="TripCmdC" type="SIPROTEC5_DOType_SPS_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="ClsCmd" type="SIPROTEC5_DOType_SPS_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="OpnCmdA" type="SIPROTEC5_DOType_SPS_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="OpnCmdB" type="SIPROTEC5_DOType_SPS_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="OpnCmdC" type="SIPROTEC5_DOType_SPS_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="ClsCmdA" type="SIPROTEC5_DOType_SPS_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="ClsCmdB" type="SIPROTEC5_DOType_SPS_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="ClsCmdC" type="SIPROTEC5_DOType_SPS_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="CmdActv" type="SIPROTEC5_DOType_SPS_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="AlmSupp" type="SIPROTEC5_DOType_SPS_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="DefTr" type="SIPROTEC5_DOType_SPS_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="OpCntPhA" type="SIPROTEC5_DOType_INS_INT32_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="OpCntPhB" type="SIPROTEC5_DOType_INS_INT32_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="OpCntPhC" type="SIPROTEC5_DOType_INS_INT32_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="SumSwARsA" type="SIPROTEC5_DOType_BCR_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="SumSwARsB" type="SIPROTEC5_DOType_BCR_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="SumSwARsC" type="SIPROTEC5_DOType_BCR_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="SwAphsA" type="SIPROTEC5_DOType_MV_Float_dupd_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="SwAphsB" type="SIPROTEC5_DOType_MV_Float_dupd_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="SwAphsC" type="SIPROTEC5_DOType_MV_Float_dupd_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="SwANeut" type="SIPROTEC5_DOType_MV_Float_dupd_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="SwVphsA" type="SIPROTEC5_DOType_MV_Float_dupd_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="SwVphsB" type="SIPROTEC5_DOType_MV_Float_dupd_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="SwVphsC" type="SIPROTEC5_DOType_MV_Float_dupd_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="CBOpnHrs" type="SIPROTEC5_DOType_INS_INT32_with_units_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="OpHrs" type="SIPROTEC5_DOType_INS_INT32_with_units_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="BbpBlockDO" type="SIPROTEC5_DOType_SPS_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="NoTrpRelBi" type="SIPROTEC5_DOType_SPS_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="RxPos1" type="SIPROTEC5_DOType_ComProxy_DPC_V09.50.01_V09.50.01"/>
			<DO name="RxPosA1" type="SIPROTEC5_DOType_ComProxy_DPC_V09.50.01_V09.50.01"/>
			<DO name="RxPosB1" type="SIPROTEC5_DOType_ComProxy_DPC_V09.50.01_V09.50.01"/>
			<DO name="RxPosC1" type="SIPROTEC5_DOType_ComProxy_DPC_V09.50.01_V09.50.01"/>
			<DO name="WetSup" type="SIPROTEC5_DOType_SPS_with_dataNs_V09.50.01_V09.50.01"/>
		</LNodeType>
		<LNodeType id="SIEMENS_7UT85_001SIPROTEC5_LNType_PTRC_Trip_1_3pol" lnClass="PTRC">
			<DO name="Mod" type="SIPROTEC5_DOType_Mod_status_only_with_InitVal_V09.50.01_V09.50.01"/>
			<DO name="Beh" type="SIPROTEC5_DOType_ENS_Behavior_V09.50.01_V09.50.01"/>
			<DO name="Health" type="SIPROTEC5_DOType_ENS_Health_V09.50.01_V09.50.01"/>
			<DO name="NamPlt" type="SIPROTEC5_DOType_LPL_NamPlt_V09.50.01_V09.50.01"/>
			<DO name="Tr" type="SIPROTEC5_DOType_ACT_1_3pol_GABC_simpleConversions_V09.50.01_V09.50.01"/>
			<DO name="Op" type="SIPROTEC5_DOType_ACT_1_3pol_GABC_simpleConversions_V09.50.01_V09.50.01"/>
			<DO name="Str" type="SIPROTEC5_DOType_ACD_PhsSel_GABCN_V09.50.01_V09.50.01"/>
			<DO name="Trip3pCoup" type="SIPROTEC5_DOType_SPS_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="TrpBbpDiff" type="SIPROTEC5_DOType_ACT_3pol_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="TrpBbpBFP" type="SIPROTEC5_DOType_ACT_3pol_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="TrpBbpExt" type="SIPROTEC5_DOType_ACT_3pol_with_dataNs_V09.50.01_V09.50.01"/>
		</LNodeType>
		<LNodeType id="SIPROTEC5_LNType_ROPD_OpenPoleDetector" lnClass="ROPD">
			<DO name="Mod" type="SIPROTEC5_DOType_Mod_status_only_with_InitVal_V09.50.01_V09.50.01"/>
			<DO name="Beh" type="SIPROTEC5_DOType_ENS_Behavior_V09.50.01_V09.50.01"/>
			<DO name="Health" type="SIPROTEC5_DOType_ENS_Health_V09.50.01_V09.50.01"/>
			<DO name="NamPlt" type="SIPROTEC5_DOType_LPL_NamPlt_for_SIEMENS_LN_V09.50.01_V09.50.01"/>
			<DO name="Inactive" type="SIPROTEC5_DOType_SPS_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="SPlDeadTm" type="SIPROTEC5_DOType_ACT_1_3pol_GABC_simpleConversions_with_dataNs_V09.50.01_V09.50.01"/>
		</LNodeType>
		<LNodeType id="SIPROTEC5_LNType_RSSR_SwitchingStateRecognition" lnClass="RSSR">
			<DO name="Mod" type="SIPROTEC5_DOType_Mod_status_only_with_InitVal_V09.50.01_V09.50.01"/>
			<DO name="Beh" type="SIPROTEC5_DOType_ENS_Behavior_V09.50.01_V09.50.01"/>
			<DO name="Health" type="SIPROTEC5_DOType_ENS_Health_V09.50.01_V09.50.01"/>
			<DO name="NamPlt" type="SIPROTEC5_DOType_LPL_NamPlt_for_SIEMENS_LN_V09.50.01_V09.50.01"/>
			<DO name="DisCntrOpn" type="SIPROTEC5_DOType_SPS_for_Input_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="Inactive" type="SIPROTEC5_DOType_SPS_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="SwitchOn" type="SIPROTEC5_DOType_SPS_with_dataNs_V09.50.01_V09.50.01"/>
		</LNodeType>
		<LNodeType id="SIPROTEC5_LNType_MMTR_OpMeas_Energy_3ph" lnClass="MMTR">
			<DO name="Mod" type="SIPROTEC5_DOType_Mod_status_only_with_InitVal_V09.50.01_V09.50.01"/>
			<DO name="Beh" type="SIPROTEC5_DOType_ENS_Behavior_V09.50.01_V09.50.01"/>
			<DO name="Health" type="SIPROTEC5_DOType_ENS_Health_V09.50.01_V09.50.01"/>
			<DO name="NamPlt" type="SIPROTEC5_DOType_LPL_NamPlt_V09.50.01_V09.50.01"/>
			<DO name="SupWh" type="SIPROTEC5_DOType_BCR_V09.50.01_V09.50.01"/>
			<DO name="SupVArh" type="SIPROTEC5_DOType_BCR_V09.50.01_V09.50.01"/>
			<DO name="DmdWh" type="SIPROTEC5_DOType_BCR_V09.50.01_V09.50.01"/>
			<DO name="DmdVArh" type="SIPROTEC5_DOType_BCR_V09.50.01_V09.50.01"/>
			<DO name="SetSupWh" type="SIPROTEC5_DOType_APC_FLOAT32_controllable_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="SetSupVArh" type="SIPROTEC5_DOType_APC_FLOAT32_controllable_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="SetDmdWh" type="SIPROTEC5_DOType_APC_FLOAT32_controllable_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="SetDmdVArh" type="SIPROTEC5_DOType_APC_FLOAT32_controllable_with_dataNs_V09.50.01_V09.50.01"/>
		</LNodeType>
		<LNodeType id="SIPROTEC5_LNType_PDIS_DisPolygonZone3pol" lnClass="PDIS">
			<DO name="Mod" type="SIPROTEC5_DOType_Mod_controllable_with_InitValVis_for_SIEMENS_LN_V09.50.01_V09.50.01"/>
			<DO name="Beh" type="SIPROTEC5_DOType_ENS_Behavior_V09.50.01_V09.50.01"/>
			<DO name="Health" type="SIPROTEC5_DOType_ENS_Health_V09.50.01_V09.50.01"/>
			<DO name="NamPlt" type="SIPROTEC5_DOType_LPL_NamPlt_for_Ed2_LN_V09.50.01_V09.50.01"/>
			<DO name="Str" type="SIPROTEC5_DOType_ACD_PhsSel_GABCN_V09.50.01_V09.50.01"/>
			<DO name="Op" type="SIPROTEC5_DOType_ACT_3pol_V09.50.01_V09.50.01"/>
			<DO name="Blk" type="SIPROTEC5_DOType_SPS_for_Input_V09.50.01_V09.50.01"/>
			<DO name="BlkPhsGnd" type="SIPROTEC5_DOType_SPS_for_Input_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="BlkPhsPhs" type="SIPROTEC5_DOType_SPS_for_Input_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="Inactive" type="SIPROTEC5_DOType_SPS_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="StrAG" type="SIPROTEC5_DOType_ACD_NonPhsSel_Without_DirRouting_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="StrBG" type="SIPROTEC5_DOType_ACD_NonPhsSel_Without_DirRouting_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="StrCG" type="SIPROTEC5_DOType_ACD_NonPhsSel_Without_DirRouting_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="StrAB" type="SIPROTEC5_DOType_ACD_NonPhsSel_Without_DirRouting_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="StrBC" type="SIPROTEC5_DOType_ACD_NonPhsSel_Without_DirRouting_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="StrCA" type="SIPROTEC5_DOType_ACD_NonPhsSel_Without_DirRouting_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="OpTmExp" type="SIPROTEC5_DOType_ACT_3pol_with_dataNs_V09.50.01_V09.50.01"/>
		</LNodeType>
		<LNodeType id="SIPROTEC5_LNType_GAPC_DisImpedanceExcitation" lnClass="GAPC">
			<DO name="Mod" type="SIPROTEC5_DOType_Mod_status_only_with_InitVal_V09.50.01_V09.50.01"/>
			<DO name="Beh" type="SIPROTEC5_DOType_ENS_Behavior_V09.50.01_V09.50.01"/>
			<DO name="Health" type="SIPROTEC5_DOType_ENS_Health_V09.50.01_V09.50.01"/>
			<DO name="NamPlt" type="SIPROTEC5_DOType_LPL_NamPlt_for_Ed2_LN_V09.50.01_V09.50.01"/>
		</LNodeType>
		<LNodeType id="SIPROTEC5_LNType_PTRC_AdvPTRCDis3pol" lnClass="PTRC">
			<DO name="Mod" type="SIPROTEC5_DOType_Mod_status_only_with_InitVal_V09.50.01_V09.50.01"/>
			<DO name="Beh" type="SIPROTEC5_DOType_ENS_Behavior_V09.50.01_V09.50.01"/>
			<DO name="Health" type="SIPROTEC5_DOType_ENS_Health_V09.50.01_V09.50.01"/>
			<DO name="NamPlt" type="SIPROTEC5_DOType_LPL_NamPlt_V09.50.01_V09.50.01"/>
			<DO name="Op" type="SIPROTEC5_DOType_ACT_3pol_V09.50.01_V09.50.01"/>
			<DO name="Str" type="SIPROTEC5_DOType_ACD_PhsSel_GABCN_V09.50.01_V09.50.01"/>
			<DO name="SelLoopAG" type="SIPROTEC5_DOType_ACD_NonPhsSel_Without_DirRouting_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="SelLoopBG" type="SIPROTEC5_DOType_ACD_NonPhsSel_Without_DirRouting_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="SelLoopCG" type="SIPROTEC5_DOType_ACD_NonPhsSel_Without_DirRouting_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="SelLoopAB" type="SIPROTEC5_DOType_ACD_NonPhsSel_Without_DirRouting_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="SelLoopBC" type="SIPROTEC5_DOType_ACD_NonPhsSel_Without_DirRouting_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="SelLoopCA" type="SIPROTEC5_DOType_ACD_NonPhsSel_Without_DirRouting_with_dataNs_V09.50.01_V09.50.01"/>
		</LNodeType>
		<LNodeType id="SIPROTEC5_LNType_GAPC_FB0_DisGnd3pol" lnClass="GAPC">
			<DO name="Mod" type="SIPROTEC5_DOType_Mod_status_only_with_InitVal_V09.50.01_V09.50.01"/>
			<DO name="Beh" type="SIPROTEC5_DOType_ENS_Behavior_V09.50.01_V09.50.01"/>
			<DO name="Health" type="SIPROTEC5_DOType_ENS_Health_V09.50.01_V09.50.01"/>
			<DO name="NamPlt" type="SIPROTEC5_DOType_LPL_NamPlt_for_Ed2_LN_V09.50.01_V09.50.01"/>
			<DO name="Blk" type="SIPROTEC5_DOType_SPS_for_Input_V09.50.01_V09.50.01"/>
			<DO name="Inactive" type="SIPROTEC5_DOType_SPS_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="ZPhGnd" type="SIPROTEC5_DOType_WYE_ABC_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="ZPhPh" type="SIPROTEC5_DOType_DEL_with_dataNs_V09.50.01_V09.50.01"/>
		</LNodeType>
		<LNodeType id="SIEMENS_7UT85_001SIPROTEC5_LNType_PTRC_FG_Line_3ph" lnClass="PTRC">
			<DO name="Mod" type="SIPROTEC5_DOType_Mod_status_only_with_InitVal_V09.50.01_V09.50.01"/>
			<DO name="Beh" type="SIPROTEC5_DOType_ENS_Behavior_V09.50.01_V09.50.01"/>
			<DO name="Health" type="SIPROTEC5_DOType_ENS_Health_V09.50.01_V09.50.01"/>
			<DO name="NamPlt" type="SIPROTEC5_DOType_LPL_NamPlt_V09.50.01_V09.50.01"/>
			<DO name="Op" type="SIPROTEC5_DOType_ACT_1_3pol_GABC_simpleConversions_V09.50.01_V09.50.01"/>
			<DO name="Str" type="SIPROTEC5_DOType_ACD_PhsSel_GABCN_V09.50.01_V09.50.01"/>
		</LNodeType>
		<LNodeType id="SIPROTEC5_LNType_ZLIN_FB0_FGLine" lnClass="ZLIN">
			<DO name="Mod" type="SIPROTEC5_DOType_Mod_status_only_with_InitVal_V09.50.01_V09.50.01"/>
			<DO name="Beh" type="SIPROTEC5_DOType_ENS_Behavior_V09.50.01_V09.50.01"/>
			<DO name="Health" type="SIPROTEC5_DOType_ENS_Health_V09.50.01_V09.50.01"/>
			<DO name="NamPlt" type="SIPROTEC5_DOType_LPL_NamPlt_for_Ed2_LN_V09.50.01_V09.50.01"/>
		</LNodeType>
		<LNodeType id="SIPROTEC5_LNType_TDIFF_FastUnrestrained" lnClass="PDIF">
			<DO name="Mod" type="SIPROTEC5_DOType_Mod_controllable_with_InitValVis_for_SIEMENS_LN_V09.50.01_V09.50.01"/>
			<DO name="Beh" type="SIPROTEC5_DOType_ENS_Behavior_V09.50.01_V09.50.01"/>
			<DO name="Health" type="SIPROTEC5_DOType_ENS_Health_V09.50.01_V09.50.01"/>
			<DO name="NamPlt" type="SIPROTEC5_DOType_LPL_NamPlt_for_Ed2_LN_V09.50.01_V09.50.01"/>
			<DO name="Str" type="SIPROTEC5_DOType_ACD_PhsSel_GABC_Without_DirRouting_and_PhaseRouting_V09.50.01_V09.50.01"/>
			<DO name="Op" type="SIPROTEC5_DOType_ACT_1_3pol_GABC_simpleConversions_V09.50.01_V09.50.01"/>
			<DO name="Blk" type="SIPROTEC5_DOType_SPS_for_Input_V09.50.01_V09.50.01"/>
			<DO name="Inactive" type="SIPROTEC5_DOType_SPS_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="OpTmExp" type="SIPROTEC5_DOType_ACT_1_3pol_GABC_simpleConversions_with_dataNs_V09.50.01_V09.50.01"/>
		</LNodeType>
		<LNodeType id="SIPROTEC5_LNType_TDIFF_Restrained" lnClass="PDIF">
			<DO name="Mod" type="SIPROTEC5_DOType_Mod_controllable_with_InitValVis_for_SIEMENS_LN_V09.50.01_V09.50.01"/>
			<DO name="Beh" type="SIPROTEC5_DOType_ENS_Behavior_V09.50.01_V09.50.01"/>
			<DO name="Health" type="SIPROTEC5_DOType_ENS_Health_V09.50.01_V09.50.01"/>
			<DO name="NamPlt" type="SIPROTEC5_DOType_LPL_NamPlt_for_Ed2_LN_V09.50.01_V09.50.01"/>
			<DO name="Str" type="SIPROTEC5_DOType_ACD_PhsSel_GABC_Without_DirRouting_and_PhaseRouting_V09.50.01_V09.50.01"/>
			<DO name="Op" type="SIPROTEC5_DOType_ACT_1_3pol_GABC_simpleConversions_V09.50.01_V09.50.01"/>
			<DO name="Blk" type="SIPROTEC5_DOType_SPS_for_Input_V09.50.01_V09.50.01"/>
			<DO name="Inactive" type="SIPROTEC5_DOType_SPS_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="IrsBlk" type="SIPROTEC5_DOType_SPS_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="Irs2HaDet" type="SIPROTEC5_DOType_ACT_1_3pol_GABC_simpleConversions_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="ICrsBlk2Ha" type="SIPROTEC5_DOType_SPS_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="IrsCWADet" type="SIPROTEC5_DOType_SPS_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="Irs3HaDet" type="SIPROTEC5_DOType_ACT_1_3pol_GABC_simpleConversions_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="ICrsBlk3Ha" type="SIPROTEC5_DOType_SPS_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="Irs5HaDet" type="SIPROTEC5_DOType_ACT_1_3pol_GABC_simpleConversions_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="ICrsBlk5Ha" type="SIPROTEC5_DOType_SPS_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="ExtFltStr" type="SIPROTEC5_DOType_ACT_1_3pol_GABC_simpleConversions_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="ExtCrsBlk" type="SIPROTEC5_DOType_SPS_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="OpTmExp" type="SIPROTEC5_DOType_ACT_1_3pol_GABC_simpleConversions_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="Slope1Val" type="SIPROTEC5_DOType_MV_Float_dupd_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="StartChrR" type="SIPROTEC5_DOType_SPS_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="DCChrR" type="SIPROTEC5_DOType_SPS_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="CWAIntFlt" type="SIPROTEC5_DOType_SPS_with_dataNs_V09.50.01_V09.50.01"/>
		</LNodeType>
		<LNodeType id="SIPROTEC5_LNType_GAPC_FB0_TDIFF" lnClass="GAPC">
			<DO name="Mod" type="SIPROTEC5_DOType_Mod_status_only_with_InitVal_V09.50.01_V09.50.01"/>
			<DO name="Beh" type="SIPROTEC5_DOType_ENS_Behavior_V09.50.01_V09.50.01"/>
			<DO name="Health" type="SIPROTEC5_DOType_ENS_Health_V09.50.01_V09.50.01"/>
			<DO name="NamPlt" type="SIPROTEC5_DOType_LPL_NamPlt_for_Ed2_LN_V09.50.01_V09.50.01"/>
			<DO name="DifAClc" type="SIPROTEC5_DOType_WYE_ABC_mag_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="RstA" type="SIPROTEC5_DOType_WYE_ABC_mag_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="DiffOpA" type="SIPROTEC5_DOType_MV_Float_dupd_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="DiffOpB" type="SIPROTEC5_DOType_MV_Float_dupd_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="DiffOpC" type="SIPROTEC5_DOType_MV_Float_dupd_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="RestrOpA" type="SIPROTEC5_DOType_MV_Float_dupd_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="RestrOpB" type="SIPROTEC5_DOType_MV_Float_dupd_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="RestrOpC" type="SIPROTEC5_DOType_MV_Float_dupd_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="AdAdjIna" type="SIPROTEC5_DOType_SPS_with_dataNs_V09.50.01_V09.50.01"/>
		</LNodeType>
		<LNodeType id="SIPROTEC5_LNType_PTRC_FG_GABC_Without_DirRouting_Op_1_3pol" lnClass="PTRC">
			<DO name="Mod" type="SIPROTEC5_DOType_Mod_status_only_with_InitVal_V09.50.01_V09.50.01"/>
			<DO name="Beh" type="SIPROTEC5_DOType_ENS_Behavior_V09.50.01_V09.50.01"/>
			<DO name="Health" type="SIPROTEC5_DOType_ENS_Health_V09.50.01_V09.50.01"/>
			<DO name="NamPlt" type="SIPROTEC5_DOType_LPL_NamPlt_V09.50.01_V09.50.01"/>
			<DO name="Op" type="SIPROTEC5_DOType_ACT_1_3pol_GABC_simpleConversions_V09.50.01_V09.50.01"/>
			<DO name="Str" type="SIPROTEC5_DOType_ACD_PhsSel_GABC_Without_DirRouting_and_PhaseRouting_V09.50.01_V09.50.01"/>
		</LNodeType>
		<LNodeType id="SIPROTEC5_LNType_LSVS" lnClass="LSVS">
			<DO name="Mod" type="SIPROTEC5_DOType_Mod_controllable_OnOff_with_InitVal_V09.50.01_V09.50.01"/>
			<DO name="Beh" type="SIPROTEC5_DOType_ENS_Behavior_V09.50.01_V09.50.01"/>
			<DO name="Health" type="SIPROTEC5_DOType_ENS_Health_V09.50.01_V09.50.01"/>
			<DO name="NamPlt" type="SIPROTEC5_DOType_LPL_NamPlt_for_Ed2_LN_V09.50.01_V09.50.01"/>
			<DO name="St" type="SIPROTEC5_DOType_SPS_V09.50.01_V09.50.01"/>
			<DO name="SimSt" type="SIPROTEC5_DOType_SPS_V09.50.01_V09.50.01"/>
			<DO name="ConfRevNum" type="SIPROTEC5_DOType_INS_V09.50.01_V09.50.01"/>
			<DO name="SvCBRef" type="SIPROTEC5_DOType_ORG_external_V09.50.01_V09.50.01"/>
			<DO name="SvId" type="SIPROTEC5_DOType_VSS_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="DiagErrSmv" type="SIPROTEC5_DOType_ENS_LSVS_DiagErrSmv_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="DiagSynch" type="SIPROTEC5_DOType_ENS_LSVS_DiagSynch_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="PubSynId" type="SIPROTEC5_DOType_VSS_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="SubSynId" type="SIPROTEC5_DOType_VSS_with_dataNs_V09.50.01_V09.50.01"/>
		</LNodeType>
		<LNodeType id="SIEMENS_7UT85_001SIPROTEC5_LNType_LGOS" lnClass="LGOS">
			<DO name="Mod" type="SIPROTEC5_DOType_Mod_controllable_OnOff_with_InitVal_V09.50.01_V09.50.01"/>
			<DO name="Beh" type="SIPROTEC5_DOType_ENS_Behavior_V09.50.01_V09.50.01"/>
			<DO name="Health" type="SIPROTEC5_DOType_ENS_Health_V09.50.01_V09.50.01"/>
			<DO name="NamPlt" type="SIPROTEC5_DOType_LPL_NamPlt_for_Ed2_LN_V09.50.01_V09.50.01"/>
			<DO name="NdsCom" type="SIPROTEC5_DOType_SPS_V09.50.01_V09.50.01"/>
			<DO name="St" type="SIPROTEC5_DOType_SPS_V09.50.01_V09.50.01"/>
			<DO name="SimSt" type="SIPROTEC5_DOType_SPS_V09.50.01_V09.50.01"/>
			<DO name="ConfRevNum" type="SIPROTEC5_DOType_INS_V09.50.01_V09.50.01"/>
			<DO name="RxConfRevNum" type="SIPROTEC5_DOType_INS_V09.50.01_V09.50.01"/>
			<DO name="GoCBRef" type="SIPROTEC5_DOType_ORG_external_V09.50.01_V09.50.01"/>
			<DO name="DiagErr" type="SIPROTEC5_DOType_ENS_LGOS_DiagError_with_dataNs_V09.50.01_V09.50.01"/>
		</LNodeType>
		<LNodeType id="SIEMENS_7UT85_001SIPROTEC5_LNType_LLN0_LDevice_Generic" lnClass="LLN0">
			<DO name="Beh" type="SIPROTEC5_DOType_ENS_Behavior_V09.50.01_V09.50.01"/>
			<DO name="Health" type="SIPROTEC5_DOType_ENS_Health_V09.50.01_V09.50.01"/>
			<DO name="NamPlt" type="SIPROTEC5_DOType_LPL_NamPlt_for_LLN0_V09.50.01_V09.50.01"/>
			<DO name="Mod" type="SIPROTEC5_DOType_Mod_status_only_with_InitVal_V09.50.01_V09.50.01"/>
			<DO name="GrRef" type="SIPROTEC5_DOType_ORG_V09.50.01_V09.50.01"/>
		</LNodeType>
		<LNodeType id="SIEMENS_7UT85_001SIPROTEC5_LNType_USER_Universal" lnClass="GAPC">
			<DO name="Mod" type="SIPROTEC5_DOType_Mod_controllable_with_InitValVis_for_SIEMENS_LN_V09.50.01_V09.50.01"/>
			<DO name="Beh" type="SIPROTEC5_DOType_ENS_Behavior_V09.50.01_V09.50.01"/>
			<DO name="Health" type="SIPROTEC5_DOType_ENS_Health_V09.50.01_V09.50.01"/>
			<DO name="NamPlt" type="SIPROTEC5_DOType_LPL_NamPlt_for_SIEMENS_LN_V09.50.01_V09.50.01"/>
			<DO name="Trip" type="SIPROTEC5_DOType_SPS_UDEF_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="EF" type="SIPROTEC5_DOType_SPS_UDEF_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="PhRFlt" type="SIPROTEC5_DOType_SPS_UDEF_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="PhYFlt" type="SIPROTEC5_DOType_SPS_UDEF_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="PhBFlt" type="SIPROTEC5_DOType_SPS_UDEF_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="CommTrip" type="SIPROTEC5_DOType_SPS_UDEF_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="NomSetGrpAct" type="SIPROTEC5_DOType_SPS_UDEF_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="ComSetGrpAct" type="SIPROTEC5_DOType_SPS_UDEF_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="BackupTrip" type="SIPROTEC5_DOType_SPS_UDEF_with_dataNs_V09.50.01_V09.50.01"/>
		</LNodeType>
		<LNodeType id="SIEMENS_7UT85_001SIPROTEC5_LNType_ResetLed" lnClass="GAPC">
			<DO name="Mod" type="SIPROTEC5_DOType_Mod_status_only_with_InitVal_V09.50.01_V09.50.01"/>
			<DO name="Beh" type="SIPROTEC5_DOType_ENS_Behavior_V09.50.01_V09.50.01"/>
			<DO name="Health" type="SIPROTEC5_DOType_ENS_Health_V09.50.01_V09.50.01"/>
			<DO name="NamPlt" type="SIPROTEC5_DOType_LPL_NamPlt_for_Ed2_LN_V09.50.01_V09.50.01"/>
			<DO name="ResetIn" type="SIPROTEC5_DOType_SPS_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="LedTstOut" type="SIPROTEC5_DOType_SPS_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="ResetCtl" type="SIPROTEC5_DOType_SPC_dir_with_nor_sec_FnKey_toggle_on_off_with_InitVal_and_dataNs_V09.50.01_V09.50.01"/>
		</LNodeType>
		<LNodeType id="SIEMENS_7UT85_001SIPROTEC5_LNType_LLN0_Application" lnClass="LLN0">
			<DO name="SGChoiceB1" type="SIPROTEC5_DOType_SPS_for_Input_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="SGChoiceB2" type="SIPROTEC5_DOType_SPS_for_Input_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="SGChoiceB3" type="SIPROTEC5_DOType_SPS_for_Input_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="LedTstStrt" type="SIPROTEC5_DOType_SPS_for_Input_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="FloOn" type="SIPROTEC5_DOType_SPS_for_Input_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="FloOff" type="SIPROTEC5_DOType_SPS_for_Input_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="LightOn" type="SIPROTEC5_DOType_SPS_for_Input_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="BOBlocked" type="SIPROTEC5_DOType_SPS_for_Input_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="FloCmd" type="SIPROTEC5_DOType_SPS_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="FloState" type="SIPROTEC5_DOType_SPS_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="Beh" type="SIPROTEC5_DOType_ENS_Behavior_V09.50.01_V09.50.01"/>
			<DO name="Health" type="SIPROTEC5_DOType_ENS_Health_V09.50.01_V09.50.01"/>
			<DO name="HealthDev" type="SIPROTEC5_DOType_ENS_Health_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="NamPlt" type="SIPROTEC5_DOType_LPL_NamPlt_for_LLN0_V09.50.01_V09.50.01"/>
			<DO name="Inactive" type="SIPROTEC5_DOType_SPS_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="LedTstOut" type="SIPROTEC5_DOType_SPS_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="LocKey" type="SIPROTEC5_DOType_SPS_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="SwAuth" type="SIPROTEC5_DOType_ENS_SwitchingAuthority_LocalDigsiStationRemote_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="SwMod" type="SIPROTEC5_DOType_ENS_SwitchingMode_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="ActiveSG" type="SIPROTEC5_DOType_INS_INT32_dupd_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="FunInTest" type="SIPROTEC5_DOType_SPS_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="AcqBlkAct" type="SIPROTEC5_DOType_SPS_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="SubstAct" type="SIPROTEC5_DOType_SPS_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="Mod" type="SIPROTEC5_DOType_Mod_controllable_OnBlockedTestTestBlocked_with_InitVal_V09.50.01_V09.50.01"/>
			<DO name="ProtOnOff" type="SIPROTEC5_DOType_SPC_dir_with_nor_sec_FnKey_toggle_on_off_with_InitVal_and_dataNs_V09.50.01_V09.50.01"/>
			<DO name="FnctLO" type="SIPROTEC5_DOType_SPC_dir_with_nor_sec_FnKey_toggle_on_off_with_InitVal_and_dataNs_V09.50.01_V09.50.01"/>
			<DO name="LocSta" type="SIPROTEC5_DOType_SPC_dir_with_nor_sec_FnKey_toggle_on_off_with_InitVal_and_dataNs_V09.50.01_V09.50.01"/>
			<DO name="SwAuthEna1" type="SIPROTEC5_DOType_SPC_dir_with_enh_sec_initVal_and_dataNs_V09.50.01_V09.50.01"/>
			<DO name="SwAuthEna2" type="SIPROTEC5_DOType_SPC_dir_with_enh_sec_initVal_and_dataNs_V09.50.01_V09.50.01"/>
			<DO name="SwAuthEna3" type="SIPROTEC5_DOType_SPC_dir_with_enh_sec_initVal_and_dataNs_V09.50.01_V09.50.01"/>
			<DO name="SwAuthEna4" type="SIPROTEC5_DOType_SPC_dir_with_enh_sec_initVal_and_dataNs_V09.50.01_V09.50.01"/>
			<DO name="SwAuthEna5" type="SIPROTEC5_DOType_SPC_dir_with_enh_sec_initVal_and_dataNs_V09.50.01_V09.50.01"/>
			<DO name="LEDRs" type="SIPROTEC5_DOType_SPC_dir_with_nor_sec_V09.50.01_V09.50.01"/>
			<DO name="MltLev" type="SIPROTEC5_DOType_SPG_readOnly_with_dataNs_V09.50.01_V09.50.01"/>
		</LNodeType>
		<LNodeType id="SIPROTEC5_LNType_RDRE_DEF" lnClass="RDRE">
			<DO name="Mod" type="SIPROTEC5_DOType_Mod_status_only_with_InitVal_V09.50.01_V09.50.01"/>
			<DO name="Beh" type="SIPROTEC5_DOType_ENS_Behavior_V09.50.01_V09.50.01"/>
			<DO name="Health" type="SIPROTEC5_DOType_ENS_Health_V09.50.01_V09.50.01"/>
			<DO name="NamPlt" type="SIPROTEC5_DOType_LPL_NamPlt_V09.50.01_V09.50.01"/>
			<DO name="RcdTrg" type="SIPROTEC5_DOType_SPC_dir_with_nor_sec_V09.50.01_V09.50.01"/>
			<DO name="MemRs" type="SIPROTEC5_DOType_SPC_dir_with_enh_sec_FnKey_on_V09.50.01_V09.50.01"/>
			<DO name="MemClr" type="SIPROTEC5_DOType_SPC_dir_with_enh_sec_FnKey_on_V09.50.01_V09.50.01"/>
			<DO name="RcdMade" type="SIPROTEC5_DOType_SPS_V09.50.01_V09.50.01"/>
			<DO name="FltNum" type="SIPROTEC5_DOType_INS_INT32_V09.50.01_V09.50.01"/>
			<DO name="RcdStr" type="SIPROTEC5_DOType_SPS_V09.50.01_V09.50.01"/>
			<DO name="StrExt" type="SIPROTEC5_DOType_SPS_for_Input_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="ManTrg" type="SIPROTEC5_DOType_SPS_for_Input_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="FltLogFull" type="SIPROTEC5_DOType_INS_INT32_with_dataNs_V09.50.01_V09.50.01"/>
		</LNodeType>
		<LNodeType id="SIPROTEC5_LNType_GAPC_GroundFaultLog" lnClass="GAPC">
			<DO name="Mod" type="SIPROTEC5_DOType_Mod_status_only_with_InitVal_V09.50.01_V09.50.01"/>
			<DO name="Beh" type="SIPROTEC5_DOType_ENS_Behavior_V09.50.01_V09.50.01"/>
			<DO name="Health" type="SIPROTEC5_DOType_ENS_Health_V09.50.01_V09.50.01"/>
			<DO name="NamPlt" type="SIPROTEC5_DOType_LPL_NamPlt_for_Ed2_LN_V09.50.01_V09.50.01"/>
			<DO name="GflNum" type="SIPROTEC5_DOType_INS_INT32_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="GflFull" type="SIPROTEC5_DOType_INS_INT32_with_dataNs_V09.50.01_V09.50.01"/>
		</LNodeType>
		<LNodeType id="SIPROTEC5_LNType_RSSR_SwitchingStateRecognitionBasic" lnClass="RSSR">
			<DO name="Mod" type="SIPROTEC5_DOType_Mod_status_only_with_InitVal_V09.50.01_V09.50.01"/>
			<DO name="Beh" type="SIPROTEC5_DOType_ENS_Behavior_V09.50.01_V09.50.01"/>
			<DO name="Health" type="SIPROTEC5_DOType_ENS_Health_V09.50.01_V09.50.01"/>
			<DO name="NamPlt" type="SIPROTEC5_DOType_LPL_NamPlt_for_SIEMENS_LN_V09.50.01_V09.50.01"/>
			<DO name="DisCntrOpn" type="SIPROTEC5_DOType_SPS_for_Input_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="Inactive" type="SIPROTEC5_DOType_SPS_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="SwitchOn" type="SIPROTEC5_DOType_SPS_with_dataNs_V09.50.01_V09.50.01"/>
		</LNodeType>
		<LNodeType id="SIPROTEC5_LNType_ROPA_OpenPoleCurrent" lnClass="ROPA">
			<DO name="Mod" type="SIPROTEC5_DOType_Mod_status_only_with_InitVal_V09.50.01_V09.50.01"/>
			<DO name="Beh" type="SIPROTEC5_DOType_ENS_Behavior_V09.50.01_V09.50.01"/>
			<DO name="Health" type="SIPROTEC5_DOType_ENS_Health_V09.50.01_V09.50.01"/>
			<DO name="NamPlt" type="SIPROTEC5_DOType_LPL_NamPlt_for_SIEMENS_LN_V09.50.01_V09.50.01"/>
			<DO name="Inactive" type="SIPROTEC5_DOType_SPS_with_dataNs_V09.50.01_V09.50.01"/>
		</LNodeType>
		<LNodeType id="SIPROTEC5_LNType_MMXU_OpMeas_Power_3ph_Pres" lnClass="MMXU">
			<DO name="Mod" type="SIPROTEC5_DOType_Mod_status_only_with_InitVal_V09.50.01_V09.50.01"/>
			<DO name="Beh" type="SIPROTEC5_DOType_ENS_Behavior_V09.50.01_V09.50.01"/>
			<DO name="Health" type="SIPROTEC5_DOType_ENS_Health_V09.50.01_V09.50.01"/>
			<DO name="NamPlt" type="SIPROTEC5_DOType_LPL_NamPlt_for_Ed2_LN_V09.50.01_V09.50.01"/>
			<DO name="TotW" type="SIPROTEC5_DOType_MV_Float_V09.50.01_V09.50.01"/>
			<DO name="TotVAr" type="SIPROTEC5_DOType_MV_Float_V09.50.01_V09.50.01"/>
			<DO name="TotVA" type="SIPROTEC5_DOType_MV_Float_V09.50.01_V09.50.01"/>
			<DO name="TotPF" type="SIPROTEC5_DOType_MV_Float_V09.50.01_V09.50.01"/>
			<DO name="Hz" type="SIPROTEC5_DOType_MV_Float_V09.50.01_V09.50.01"/>
			<DO name="W" type="SIPROTEC5_DOType_WYE_ABC_mag_V09.50.01_V09.50.01"/>
			<DO name="VAr" type="SIPROTEC5_DOType_WYE_ABC_mag_V09.50.01_V09.50.01"/>
			<DO name="VA" type="SIPROTEC5_DOType_WYE_ABC_mag_V09.50.01_V09.50.01"/>
		</LNodeType>
		<LNodeType id="SIPROTEC5_LNType_MMXN_OpMeas_RMS_1ph_Pres" lnClass="MMXN">
			<DO name="Mod" type="SIPROTEC5_DOType_Mod_status_only_with_InitVal_V09.50.01_V09.50.01"/>
			<DO name="Beh" type="SIPROTEC5_DOType_ENS_Behavior_V09.50.01_V09.50.01"/>
			<DO name="Health" type="SIPROTEC5_DOType_ENS_Health_V09.50.01_V09.50.01"/>
			<DO name="NamPlt" type="SIPROTEC5_DOType_LPL_NamPlt_for_Ed2_LN_V09.50.01_V09.50.01"/>
			<DO name="ANparLn" type="SIPROTEC5_DOType_MV_Float_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="AstarPt" type="SIPROTEC5_DOType_MV_Float_with_dataNs_V09.50.01_V09.50.01"/>
		</LNodeType>
		<LNodeType id="SIPROTEC5_LNType_MMXU_OpMeas_RMS_3ph_Pres" lnClass="MMXU">
			<DO name="Mod" type="SIPROTEC5_DOType_Mod_status_only_with_InitVal_V09.50.01_V09.50.01"/>
			<DO name="Beh" type="SIPROTEC5_DOType_ENS_Behavior_V09.50.01_V09.50.01"/>
			<DO name="Health" type="SIPROTEC5_DOType_ENS_Health_V09.50.01_V09.50.01"/>
			<DO name="NamPlt" type="SIPROTEC5_DOType_LPL_NamPlt_for_Ed2_LN_V09.50.01_V09.50.01"/>
			<DO name="PPV" type="SIPROTEC5_DOType_DEL_mag_V09.50.01_V09.50.01"/>
			<DO name="PhV" type="SIPROTEC5_DOType_WYE_ABCRes_mag_V09.50.01_V09.50.01"/>
			<DO name="A" type="SIPROTEC5_DOType_WYE_ABCRes_mag_V09.50.01_V09.50.01"/>
			<DO name="Vneut" type="SIPROTEC5_DOType_MV_Float_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="Aneut" type="SIPROTEC5_DOType_MV_Float_with_dataNs_V09.50.01_V09.50.01"/>
		</LNodeType>
		<LNodeType id="SIPROTEC5_LNType_USER_Universal_6" lnClass="STMP">
			<DO name="Mod" type="SIPROTEC5_DOType_Mod_controllable_with_InitValVis_for_SIEMENS_LN_V09.50.01_V09.50.01"/>
			<DO name="Beh" type="SIPROTEC5_DOType_ENS_Behavior_V09.50.01_V09.50.01"/>
			<DO name="Health" type="SIPROTEC5_DOType_ENS_Health_V09.50.01_V09.50.01"/>
			<DO name="NamPlt" type="SIPROTEC5_DOType_LPL_NamPlt_for_SIEMENS_LN_V09.50.01_V09.50.01"/>
			<DO name="Trip" type="SIPROTEC5_DOType_SPS_UDEF_with_dataNs_V09.50.01_V09.50.01"/>
		</LNodeType>
		<LNodeType id="SIPROTEC5_LNType_USER_Universal_3" lnClass="SPRS">
			<DO name="Mod" type="SIPROTEC5_DOType_Mod_controllable_with_InitValVis_for_SIEMENS_LN_V09.50.01_V09.50.01"/>
			<DO name="Beh" type="SIPROTEC5_DOType_ENS_Behavior_V09.50.01_V09.50.01"/>
			<DO name="Health" type="SIPROTEC5_DOType_ENS_Health_V09.50.01_V09.50.01"/>
			<DO name="NamPlt" type="SIPROTEC5_DOType_LPL_NamPlt_for_SIEMENS_LN_V09.50.01_V09.50.01"/>
			<DO name="Trip" type="SIPROTEC5_DOType_SPS_UDEF_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="Pres" type="SIPROTEC5_DOType_MV_UDEF_with_dataNs_V09.50.01_V09.50.01"/>
		</LNodeType>
		<LNodeType id="SIPROTEC5_LNType_USER_Universal_1" lnClass="SIML">
			<DO name="Mod" type="SIPROTEC5_DOType_Mod_controllable_with_InitValVis_for_SIEMENS_LN_V09.50.01_V09.50.01"/>
			<DO name="Beh" type="SIPROTEC5_DOType_ENS_Behavior_V09.50.01_V09.50.01"/>
			<DO name="Health" type="SIPROTEC5_DOType_ENS_Health_V09.50.01_V09.50.01"/>
			<DO name="NamPlt" type="SIPROTEC5_DOType_LPL_NamPlt_for_SIEMENS_LN_V09.50.01_V09.50.01"/>
			<DO name="GasFlwTr" type="SIPROTEC5_DOType_SPS_UDEF_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="InsAlm" type="SIPROTEC5_DOType_SPS_UDEF_with_dataNs_V09.50.01_V09.50.01"/>
		</LNodeType>
		<LNodeType id="SIPROTEC5_LNType_MSQI_OpMeas_Symm_Pres" lnClass="MSQI">
			<DO name="Mod" type="SIPROTEC5_DOType_Mod_status_only_with_InitVal_V09.50.01_V09.50.01"/>
			<DO name="Beh" type="SIPROTEC5_DOType_ENS_Behavior_V09.50.01_V09.50.01"/>
			<DO name="Health" type="SIPROTEC5_DOType_ENS_Health_V09.50.01_V09.50.01"/>
			<DO name="NamPlt" type="SIPROTEC5_DOType_LPL_NamPlt_for_Ed2_LN_V09.50.01_V09.50.01"/>
			<DO name="SeqA" type="SIPROTEC5_DOType_SEQ_V09.50.01_V09.50.01"/>
			<DO name="SeqV" type="SIPROTEC5_DOType_SEQ_V09.50.01_V09.50.01"/>
		</LNodeType>
		<LNodeType id="SIPROTEC5_LNType_MMXN_OpMeas_Fund_1ph_Pres" lnClass="MMXN">
			<DO name="Mod" type="SIPROTEC5_DOType_Mod_status_only_with_InitVal_V09.50.01_V09.50.01"/>
			<DO name="Beh" type="SIPROTEC5_DOType_ENS_Behavior_V09.50.01_V09.50.01"/>
			<DO name="Health" type="SIPROTEC5_DOType_ENS_Health_V09.50.01_V09.50.01"/>
			<DO name="NamPlt" type="SIPROTEC5_DOType_LPL_NamPlt_for_Ed2_LN_V09.50.01_V09.50.01"/>
			<DO name="VxC" type="SIPROTEC5_DOType_CMV_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="VsynxC" type="SIPROTEC5_DOType_CMV_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="ANparLnC" type="SIPROTEC5_DOType_CMV_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="AstarPtC" type="SIPROTEC5_DOType_CMV_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="AxC" type="SIPROTEC5_DOType_CMV_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="VneutC" type="SIPROTEC5_DOType_CMV_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="Vseq0" type="SIPROTEC5_DOType_CMV_with_dataNs_V09.50.01_V09.50.01"/>
		</LNodeType>
		<LNodeType id="SIPROTEC5_LNType_PSCH_ExtTrip_2" lnClass="PSCH">
			<DO name="Mod" type="SIPROTEC5_DOType_Mod_controllable_with_InitValVis_for_SIEMENS_LN_V09.50.01_V09.50.01"/>
			<DO name="Beh" type="SIPROTEC5_DOType_ENS_Behavior_V09.50.01_V09.50.01"/>
			<DO name="Health" type="SIPROTEC5_DOType_ENS_Health_V09.50.01_V09.50.01"/>
			<DO name="NamPlt" type="SIPROTEC5_DOType_LPL_NamPlt_for_Ed2_LN_V09.50.01_V09.50.01"/>
			<DO name="Str" type="SIPROTEC5_DOType_ACD_NonPhsSel_Without_DirRouting_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="Op" type="SIPROTEC5_DOType_ACT_3pol_V09.50.01_V09.50.01"/>
			<DO name="Blk" type="SIPROTEC5_DOType_SPS_for_Input_V09.50.01_V09.50.01"/>
			<DO name="ExtIn" type="SIPROTEC5_DOType_SPS_for_Input_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="Inactive" type="SIPROTEC5_DOType_SPS_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="OpTmExp" type="SIPROTEC5_DOType_ACT_3pol_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="RxExtIn1" type="SIPROTEC5_DOType_SPS_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="TestExtIn" type="SIPROTEC5_DOType_SPS_with_dataNs_V09.50.01_V09.50.01"/>
		</LNodeType>
		<LNodeType id="SIPROTEC5_LNType_PSCH_ExtTrip_1" lnClass="PSCH">
			<DO name="Mod" type="SIPROTEC5_DOType_Mod_controllable_with_InitValVis_for_SIEMENS_LN_V09.50.01_V09.50.01"/>
			<DO name="Beh" type="SIPROTEC5_DOType_ENS_Behavior_V09.50.01_V09.50.01"/>
			<DO name="Health" type="SIPROTEC5_DOType_ENS_Health_V09.50.01_V09.50.01"/>
			<DO name="NamPlt" type="SIPROTEC5_DOType_LPL_NamPlt_for_Ed2_LN_V09.50.01_V09.50.01"/>
			<DO name="Str" type="SIPROTEC5_DOType_ACD_NonPhsSel_Without_DirRouting_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="Op" type="SIPROTEC5_DOType_ACT_3pol_V09.50.01_V09.50.01"/>
			<DO name="Blk" type="SIPROTEC5_DOType_SPS_for_Input_V09.50.01_V09.50.01"/>
			<DO name="ExtIn" type="SIPROTEC5_DOType_SPS_for_Input_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="Inactive" type="SIPROTEC5_DOType_SPS_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="OpTmExp" type="SIPROTEC5_DOType_ACT_3pol_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="TestExtIn" type="SIPROTEC5_DOType_SPS_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="RxExtIn1" type="SIPROTEC5_DOType_SPS_with_dataNs_V09.50.01_V09.50.01"/>
		</LNodeType>
		<LNodeType id="SIPROTEC5_LNType_PSCH_ExtTrip" lnClass="PSCH">
			<DO name="Mod" type="SIPROTEC5_DOType_Mod_controllable_with_InitValVis_for_SIEMENS_LN_V09.50.01_V09.50.01"/>
			<DO name="Beh" type="SIPROTEC5_DOType_ENS_Behavior_V09.50.01_V09.50.01"/>
			<DO name="Health" type="SIPROTEC5_DOType_ENS_Health_V09.50.01_V09.50.01"/>
			<DO name="NamPlt" type="SIPROTEC5_DOType_LPL_NamPlt_for_Ed2_LN_V09.50.01_V09.50.01"/>
			<DO name="Str" type="SIPROTEC5_DOType_ACD_NonPhsSel_Without_DirRouting_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="Op" type="SIPROTEC5_DOType_ACT_3pol_V09.50.01_V09.50.01"/>
			<DO name="Blk" type="SIPROTEC5_DOType_SPS_for_Input_V09.50.01_V09.50.01"/>
			<DO name="ExtIn" type="SIPROTEC5_DOType_SPS_for_Input_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="Inactive" type="SIPROTEC5_DOType_SPS_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="OpTmExp" type="SIPROTEC5_DOType_ACT_3pol_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="RxExtIn1" type="SIPROTEC5_DOType_SPS_with_dataNs_V09.50.01_V09.50.01"/>
		</LNodeType>
		<LNodeType id="SIPROTEC5_LNType_Ctl_USER_Universal" lnClass="RBRF">
			<DO name="Mod" type="SIPROTEC5_DOType_Mod_controllable_with_InitValVis_for_SIEMENS_LN_V09.50.01_V09.50.01"/>
			<DO name="Beh" type="SIPROTEC5_DOType_ENS_Behavior_V09.50.01_V09.50.01"/>
			<DO name="Health" type="SIPROTEC5_DOType_ENS_Health_V09.50.01_V09.50.01"/>
			<DO name="NamPlt" type="SIPROTEC5_DOType_LPL_NamPlt_for_SIEMENS_LN_V09.50.01_V09.50.01"/>
			<DO name="Loc" type="SIPROTEC5_DOType_SPS_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="LocKey" type="SIPROTEC5_DOType_SPS_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="LocSta" type="SIPROTEC5_DOType_SPC_statusOnly_and_dir_with_nor_sec_and_dataNs_V09.50.01_V09.50.01"/>
			<DO name="Ena" type="SIPROTEC5_DOType_SPS_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="EnaFix" type="SIPROTEC5_DOType_SPS_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="SwAuth" type="SIPROTEC5_DOType_ENS_SwitchingAuthority_LocalDigsiStationRemote_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="SwMod" type="SIPROTEC5_DOType_ENS_SwitchingMode_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="SwAuthEna1" type="SIPROTEC5_DOType_SPC_dir_with_enh_sec_initVal_and_dataNs_V09.50.01_V09.50.01"/>
			<DO name="SwAuthEna2" type="SIPROTEC5_DOType_SPC_dir_with_enh_sec_initVal_and_dataNs_V09.50.01_V09.50.01"/>
			<DO name="SwAuthEna3" type="SIPROTEC5_DOType_SPC_dir_with_enh_sec_initVal_and_dataNs_V09.50.01_V09.50.01"/>
			<DO name="SwAuthEna4" type="SIPROTEC5_DOType_SPC_dir_with_enh_sec_initVal_and_dataNs_V09.50.01_V09.50.01"/>
			<DO name="SwAuthEna5" type="SIPROTEC5_DOType_SPC_dir_with_enh_sec_initVal_and_dataNs_V09.50.01_V09.50.01"/>
			<DO name="OpEx" type="SIPROTEC5_DOType_ACT_UDEF_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="CBFail1" type="SIPROTEC5_DOType_SPS_UDEF_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="CBFail2" type="SIPROTEC5_DOType_SPS_UDEF_with_dataNs_V09.50.01_V09.50.01"/>
		</LNodeType>
		<LNodeType id="SIPROTEC5_LNType_SBWS_BW_confirm" lnClass="SBWI">
			<DO name="Mod" type="SIPROTEC5_DOType_Mod_controllable_with_InitValVis_for_SIEMENS_LN_V09.50.01_V09.50.01"/>
			<DO name="Beh" type="SIPROTEC5_DOType_ENS_Behavior_V09.50.01_V09.50.01"/>
			<DO name="Health" type="SIPROTEC5_DOType_ENS_Health_V09.50.01_V09.50.01"/>
			<DO name="NamPlt" type="SIPROTEC5_DOType_LPL_NamPlt_for_SIEMENS_LN_V09.50.01_V09.50.01"/>
			<DO name="Inactive" type="SIPROTEC5_DOType_SPS_with_dataNs_V09.50.01_V09.50.01"/>
		</LNodeType>
		<LNodeType id="SIPROTEC5_LNType_PTRC_FG_Line_3ph" lnClass="PTRC">
			<DO name="Mod" type="SIPROTEC5_DOType_Mod_status_only_with_InitVal_V09.50.01_V09.50.01"/>
			<DO name="Beh" type="SIPROTEC5_DOType_ENS_Behavior_V09.50.01_V09.50.01"/>
			<DO name="Health" type="SIPROTEC5_DOType_ENS_Health_V09.50.01_V09.50.01"/>
			<DO name="NamPlt" type="SIPROTEC5_DOType_LPL_NamPlt_V09.50.01_V09.50.01"/>
			<DO name="Op" type="SIPROTEC5_DOType_ACT_1_3pol_GABC_V09.50.01_V09.50.01"/>
			<DO name="Str" type="SIPROTEC5_DOType_ACD_PhsSel_GABCN_Without_DirRouting_V09.50.01_V09.50.01"/>
		</LNodeType>
		<LNodeType id="SIPROTEC5_LNType_GAPC_FB0_MUVoltage_1ph" lnClass="GAPC">
			<DO name="Mod" type="SIPROTEC5_DOType_Mod_status_only_with_InitVal_V09.50.01_V09.50.01"/>
			<DO name="Beh" type="SIPROTEC5_DOType_ENS_Behavior_V09.50.01_V09.50.01"/>
			<DO name="Health" type="SIPROTEC5_DOType_ENS_Health_V09.50.01_V09.50.01"/>
			<DO name="NamPlt" type="SIPROTEC5_DOType_LPL_NamPlt_for_Ed2_LN_V09.50.01_V09.50.01"/>
			<DO name="PhVoltage" type="SIPROTEC5_DOType_CMV_with_dataNs_V09.50.01_V09.50.01"/>
		</LNodeType>
		<LNodeType id="SIPROTEC5_LNType_GAPC_FB0_MUCurrent_1ph" lnClass="GAPC">
			<DO name="Mod" type="SIPROTEC5_DOType_Mod_status_only_with_InitVal_V09.50.01_V09.50.01"/>
			<DO name="Beh" type="SIPROTEC5_DOType_ENS_Behavior_V09.50.01_V09.50.01"/>
			<DO name="Health" type="SIPROTEC5_DOType_ENS_Health_V09.50.01_V09.50.01"/>
			<DO name="NamPlt" type="SIPROTEC5_DOType_LPL_NamPlt_for_Ed2_LN_V09.50.01_V09.50.01"/>
			<DO name="PhCurrent" type="SIPROTEC5_DOType_CMV_with_dataNs_V09.50.01_V09.50.01"/>
		</LNodeType>
		<LNodeType id="SIPROTEC5_LNType_SFFM_SMCB" lnClass="SFFM">
			<DO name="Mod" type="SIPROTEC5_DOType_Mod_controllable_with_InitValVis_for_SIEMENS_LN_V09.50.01_V09.50.01"/>
			<DO name="Beh" type="SIPROTEC5_DOType_ENS_Behavior_V09.50.01_V09.50.01"/>
			<DO name="Health" type="SIPROTEC5_DOType_ENS_Health_V09.50.01_V09.50.01"/>
			<DO name="NamPlt" type="SIPROTEC5_DOType_LPL_NamPlt_for_SIEMENS_LN_V09.50.01_V09.50.01"/>
			<DO name="VTmcb" type="SIPROTEC5_DOType_SPS_for_Input_with_dataNs_V09.50.01_V09.50.01"/>
		</LNodeType>
		<LNodeType id="SIPROTEC5_LNType_TVTR" lnClass="TVTR">
			<DO name="Mod" type="SIPROTEC5_DOType_Mod_status_only_with_InitVal_V09.50.01_V09.50.01"/>
			<DO name="Beh" type="SIPROTEC5_DOType_ENS_Behavior_V09.50.01_V09.50.01"/>
			<DO name="Health" type="SIPROTEC5_DOType_ENS_Health_V09.50.01_V09.50.01"/>
			<DO name="NamPlt" type="SIPROTEC5_DOType_LPL_NamPlt_for_Ed2_LN_V09.50.01_V09.50.01"/>
			<DO name="VolSv" type="SIPROTEC5_DOType_SAV_VDEWChannelNumber_V09.50.01_V09.50.01"/>
			<DO name="VRtg" type="SIPROTEC5_DOType_ASG_FLOAT32_readOnly_V09.50.01_V09.50.01"/>
			<DO name="HzRtg" type="SIPROTEC5_DOType_ASG_FLOAT32_readOnly_V09.50.01_V09.50.01"/>
			<DO name="Rat" type="SIPROTEC5_DOType_ASG_FLOAT32_readOnly_V09.50.01_V09.50.01"/>
			<DO name="Cor" type="SIPROTEC5_DOType_ASG_FLOAT32_edit_V09.50.01_V09.50.01"/>
			<DO name="Clip" type="SIPROTEC5_DOType_ASG_FLOAT32_edit_V09.50.01_V09.50.01"/>
			<DO name="AccMeas" type="SIPROTEC5_DOType_ENG_TextList_AccMeas_edit_V09.50.01_V09.50.01"/>
			<DO name="AccPro" type="SIPROTEC5_DOType_ENG_TextList_AccPro_edit_V09.50.01_V09.50.01"/>
			<DO name="HoldTmms" type="SIPROTEC5_DOType_ING_INT32_div_readOnly_V09.50.01_V09.50.01"/>
			<DO name="NamAccRtg" type="SIPROTEC5_DOType_VSD_readOnly_V09.50.01_V09.50.01"/>
			<DO name="NamVRtg" type="SIPROTEC5_DOType_VSD_readOnly_V09.50.01_V09.50.01"/>
			<DO name="NamClipRtg" type="SIPROTEC5_DOType_VSD_readOnly_V09.50.01_V09.50.01"/>
		</LNodeType>
		<LNodeType id="SIPROTEC5_LNType_GAPC_FB0_MUVoltage_3ph" lnClass="GAPC">
			<DO name="Mod" type="SIPROTEC5_DOType_Mod_status_only_with_InitVal_V09.50.01_V09.50.01"/>
			<DO name="Beh" type="SIPROTEC5_DOType_ENS_Behavior_V09.50.01_V09.50.01"/>
			<DO name="Health" type="SIPROTEC5_DOType_ENS_Health_V09.50.01_V09.50.01"/>
			<DO name="NamPlt" type="SIPROTEC5_DOType_LPL_NamPlt_for_Ed2_LN_V09.50.01_V09.50.01"/>
			<DO name="InvPhABVol" type="SIPROTEC5_DOType_SPS_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="InvPhBCVol" type="SIPROTEC5_DOType_SPS_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="InvPhACVol" type="SIPROTEC5_DOType_SPS_with_dataNs_V09.50.01_V09.50.01"/>
		</LNodeType>
		<LNodeType id="SIPROTEC5_LNType_SADC_FastCurSumSV" lnClass="SADC">
			<DO name="Mod" type="SIPROTEC5_DOType_Mod_controllable_with_InitValVis_for_SIEMENS_LN_V09.50.01_V09.50.01"/>
			<DO name="Beh" type="SIPROTEC5_DOType_ENS_Behavior_V09.50.01_V09.50.01"/>
			<DO name="Health" type="SIPROTEC5_DOType_ENS_Health_V09.50.01_V09.50.01"/>
			<DO name="NamPlt" type="SIPROTEC5_DOType_LPL_NamPlt_for_SIEMENS_LN_V09.50.01_V09.50.01"/>
			<DO name="Blk" type="SIPROTEC5_DOType_SPS_for_Input_V09.50.01_V09.50.01"/>
			<DO name="Inactive" type="SIPROTEC5_DOType_SPS_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="Failure" type="SIPROTEC5_DOType_SPS_with_dataNs_V09.50.01_V09.50.01"/>
		</LNodeType>
		<LNodeType id="SIPROTEC5_LNType_SSUM_SlowCurSumSV" lnClass="SSUM">
			<DO name="Mod" type="SIPROTEC5_DOType_Mod_controllable_with_InitValVis_for_SIEMENS_LN_V09.50.01_V09.50.01"/>
			<DO name="Beh" type="SIPROTEC5_DOType_ENS_Behavior_V09.50.01_V09.50.01"/>
			<DO name="Health" type="SIPROTEC5_DOType_ENS_Health_V09.50.01_V09.50.01"/>
			<DO name="NamPlt" type="SIPROTEC5_DOType_LPL_NamPlt_for_SIEMENS_LN_V09.50.01_V09.50.01"/>
			<DO name="Blk" type="SIPROTEC5_DOType_SPS_for_Input_V09.50.01_V09.50.01"/>
			<DO name="Failure" type="SIPROTEC5_DOType_SPS_with_dataNs_V09.50.01_V09.50.01"/>
		</LNodeType>
		<LNodeType id="SIPROTEC5_LNType_SPSQ_CurPhSeqSV" lnClass="SPSQ">
			<DO name="Mod" type="SIPROTEC5_DOType_Mod_controllable_with_InitValVis_for_SIEMENS_LN_V09.50.01_V09.50.01"/>
			<DO name="Beh" type="SIPROTEC5_DOType_ENS_Behavior_V09.50.01_V09.50.01"/>
			<DO name="Health" type="SIPROTEC5_DOType_ENS_Health_V09.50.01_V09.50.01"/>
			<DO name="NamPlt" type="SIPROTEC5_DOType_LPL_NamPlt_for_SIEMENS_LN_V09.50.01_V09.50.01"/>
			<DO name="Blk" type="SIPROTEC5_DOType_SPS_for_Input_V09.50.01_V09.50.01"/>
			<DO name="Inactive" type="SIPROTEC5_DOType_SPS_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="Failure" type="SIPROTEC5_DOType_SPS_with_dataNs_V09.50.01_V09.50.01"/>
		</LNodeType>
		<LNodeType id="SIPROTEC5_LNType_SSYM_CurBalSV" lnClass="SSYM">
			<DO name="Mod" type="SIPROTEC5_DOType_Mod_controllable_with_InitValVis_for_SIEMENS_LN_V09.50.01_V09.50.01"/>
			<DO name="Beh" type="SIPROTEC5_DOType_ENS_Behavior_V09.50.01_V09.50.01"/>
			<DO name="Health" type="SIPROTEC5_DOType_ENS_Health_V09.50.01_V09.50.01"/>
			<DO name="NamPlt" type="SIPROTEC5_DOType_LPL_NamPlt_for_SIEMENS_LN_V09.50.01_V09.50.01"/>
			<DO name="Blk" type="SIPROTEC5_DOType_SPS_for_Input_V09.50.01_V09.50.01"/>
			<DO name="Failure" type="SIPROTEC5_DOType_SPS_with_dataNs_V09.50.01_V09.50.01"/>
		</LNodeType>
		<LNodeType id="SIPROTEC5_LNType_SBWS_BW_Tr" lnClass="SBWI">
			<DO name="Mod" type="SIPROTEC5_DOType_Mod_controllable_with_InitValVis_for_SIEMENS_LN_V09.50.01_V09.50.01"/>
			<DO name="Beh" type="SIPROTEC5_DOType_ENS_Behavior_V09.50.01_V09.50.01"/>
			<DO name="Health" type="SIPROTEC5_DOType_ENS_Health_V09.50.01_V09.50.01"/>
			<DO name="NamPlt" type="SIPROTEC5_DOType_LPL_NamPlt_for_SIEMENS_LN_V09.50.01_V09.50.01"/>
			<DO name="ResetBW" type="SIPROTEC5_DOType_SPS_for_Input_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="Inactive" type="SIPROTEC5_DOType_SPS_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="PhABWsus" type="SIPROTEC5_DOType_SPS_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="PhBBWsus" type="SIPROTEC5_DOType_SPS_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="PhCBWsus" type="SIPROTEC5_DOType_SPS_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="PhABW" type="SIPROTEC5_DOType_SPS_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="PhBBW" type="SIPROTEC5_DOType_SPS_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="PhCBW" type="SIPROTEC5_DOType_SPS_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="BWsus" type="SIPROTEC5_DOType_SPS_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="BrokenWire" type="SIPROTEC5_DOType_SPS_with_dataNs_V09.50.01_V09.50.01"/>
		</LNodeType>
		<LNodeType id="SIPROTEC5_LNType_TCTR" lnClass="TCTR">
			<DO name="Mod" type="SIPROTEC5_DOType_Mod_status_only_with_InitVal_V09.50.01_V09.50.01"/>
			<DO name="Beh" type="SIPROTEC5_DOType_ENS_Behavior_V09.50.01_V09.50.01"/>
			<DO name="Health" type="SIPROTEC5_DOType_ENS_Health_V09.50.01_V09.50.01"/>
			<DO name="NamPlt" type="SIPROTEC5_DOType_LPL_NamPlt_for_Ed2_LN_V09.50.01_V09.50.01"/>
			<DO name="ARtg" type="SIPROTEC5_DOType_ASG_FLOAT32_edit_V09.50.01_V09.50.01"/>
			<DO name="Rat" type="SIPROTEC5_DOType_ASG_FLOAT32_readOnly_V09.50.01_V09.50.01"/>
			<DO name="HzRtg" type="SIPROTEC5_DOType_ASG_FLOAT32_readOnly_V09.50.01_V09.50.01"/>
			<DO name="Cor" type="SIPROTEC5_DOType_ASG_FLOAT32_edit_V09.50.01_V09.50.01"/>
			<DO name="AmpSv" type="SIPROTEC5_DOType_SAV_VDEWChannelNumber_V09.50.01_V09.50.01"/>
			<DO name="Trp" type="SIPROTEC5_DOType_ENG_TextList_Trp_edit_V09.50.01_V09.50.01"/>
			<DO name="ScndTmms" type="SIPROTEC5_DOType_ING_INT32_div_readOnly_V09.50.01_V09.50.01"/>
			<DO name="Clip" type="SIPROTEC5_DOType_ASG_FLOAT32_edit_V09.50.01_V09.50.01"/>
			<DO name="AccMeas" type="SIPROTEC5_DOType_ENG_TextList_AccMeas_edit_V09.50.01_V09.50.01"/>
			<DO name="AccPro" type="SIPROTEC5_DOType_ENG_TextList_AccPro_edit_V09.50.01_V09.50.01"/>
			<DO name="HoldTmms" type="SIPROTEC5_DOType_ING_INT32_div_readOnly_V09.50.01_V09.50.01"/>
			<DO name="NamAccRtg" type="SIPROTEC5_DOType_VSD_readOnly_V09.50.01_V09.50.01"/>
			<DO name="NamARtg" type="SIPROTEC5_DOType_VSD_readOnly_V09.50.01_V09.50.01"/>
			<DO name="NamClipRtg" type="SIPROTEC5_DOType_VSD_readOnly_V09.50.01_V09.50.01"/>
		</LNodeType>
		<LNodeType id="SIPROTEC5_LNType_GAPC_FB0_MUCurrent_3ph" lnClass="GAPC">
			<DO name="Mod" type="SIPROTEC5_DOType_Mod_status_only_with_InitVal_V09.50.01_V09.50.01"/>
			<DO name="Beh" type="SIPROTEC5_DOType_ENS_Behavior_V09.50.01_V09.50.01"/>
			<DO name="Health" type="SIPROTEC5_DOType_ENS_Health_V09.50.01_V09.50.01"/>
			<DO name="NamPlt" type="SIPROTEC5_DOType_LPL_NamPlt_for_Ed2_LN_V09.50.01_V09.50.01"/>
			<DO name="CtrlIn" type="SIPROTEC5_DOType_SPC_dir_with_nor_sec_FnKey_toggle_on_off_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="DisSet" type="SIPROTEC5_DOType_SPS_for_Input_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="DisReset" type="SIPROTEC5_DOType_SPS_for_Input_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="InvPhABCur" type="SIPROTEC5_DOType_SPS_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="InvPhBCCur" type="SIPROTEC5_DOType_SPS_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="InvPhACCur" type="SIPROTEC5_DOType_SPS_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="StateBi" type="SIPROTEC5_DOType_SPS_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="StateCmd" type="SIPROTEC5_DOType_SPS_with_dataNs_V09.50.01_V09.50.01"/>
		</LNodeType>
		<LNodeType id="SIPROTEC5_LNType_GAPC_FB0_PowerSystem" lnClass="GAPC">
			<DO name="Mod" type="SIPROTEC5_DOType_Mod_status_only_with_InitVal_V09.50.01_V09.50.01"/>
			<DO name="Beh" type="SIPROTEC5_DOType_ENS_Behavior_V09.50.01_V09.50.01"/>
			<DO name="Health" type="SIPROTEC5_DOType_ENS_Health_V09.50.01_V09.50.01"/>
			<DO name="NamPlt" type="SIPROTEC5_DOType_LPL_NamPlt_for_Ed2_LN_V09.50.01_V09.50.01"/>
			<DO name="PhaseRev" type="SIPROTEC5_DOType_SPS_for_Input_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="InvPhases" type="SIPROTEC5_DOType_SPS_for_Input_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="PhRevABC" type="SIPROTEC5_DOType_SPS_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="PhRevACB" type="SIPROTEC5_DOType_SPS_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="FOutOfRg" type="SIPROTEC5_DOType_SPS_with_dataNs_V09.50.01_V09.50.01"/>
		</LNodeType>
		<LNodeType id="SIPROTEC5_LNType_LPHD_LD_PBMergingUnit" lnClass="LPHD">
			<DO name="NamPlt" type="SIPROTEC5_DOType_LPL_NamPlt_for_Ed2_LN_V09.50.01_V09.50.01"/>
			<DO name="PhyNam" type="SIPROTEC5_DOType_DPL_V09.50.01_V09.50.01"/>
			<DO name="PhyHealth" type="SIPROTEC5_DOType_ENS_Health_V09.50.01_V09.50.01"/>
			<DO name="Proxy" type="SIPROTEC5_DOType_SPS_V09.50.01_V09.50.01"/>
			<DO name="NamVariant" type="SIPROTEC5_DOType_VSD_readOnly_V09.50.01_V09.50.01"/>
			<DO name="NamHzRtg" type="SIPROTEC5_DOType_VSD_readOnly_V09.50.01_V09.50.01"/>
			<DO name="NamHoldRtg" type="SIPROTEC5_DOType_VSD_readOnly_V09.50.01_V09.50.01"/>
			<DO name="NamMaxDlRtg" type="SIPROTEC5_DOType_VSD_readOnly_V09.50.01_V09.50.01"/>
			<DO name="MaxDl" type="SIPROTEC5_DOType_ING_INT32_edit_V09.50.01_V09.50.01"/>
		</LNodeType>
		<LNodeType id="SIPROTEC5_LNType_LCCH_SNMP" lnClass="LCCH">
			<DO name="Mod" type="SIPROTEC5_DOType_Mod_status_only_with_InitVal_V09.50.01_V09.50.01"/>
			<DO name="Beh" type="SIPROTEC5_DOType_ENS_Behavior_V09.50.01_V09.50.01"/>
			<DO name="Health" type="SIPROTEC5_DOType_ENS_Health_V09.50.01_V09.50.01"/>
			<DO name="NamPlt" type="SIPROTEC5_DOType_LPL_NamPlt_for_Ed2_LN_V09.50.01_V09.50.01"/>
			<DO name="ChLiv" type="SIPROTEC5_DOType_SPS_V09.50.01_V09.50.01"/>
		</LNodeType>
		<LNodeType id="SIPROTEC5_LNType_LTPC_IEEE1588HiAcc" lnClass="LTPC">
			<DO name="Mod" type="SIPROTEC5_DOType_Mod_status_only_with_InitVal_V09.50.01_V09.50.01"/>
			<DO name="Beh" type="SIPROTEC5_DOType_ENS_Behavior_V09.50.01_V09.50.01"/>
			<DO name="Health" type="SIPROTEC5_DOType_ENS_Health_V09.50.01_V09.50.01"/>
			<DO name="NamPlt" type="SIPROTEC5_DOType_LPL_NamPlt_for_Ed2_LN_V09.50.01_V09.50.01"/>
			<DO name="ClkAcc" type="SIPROTEC5_DOType_INS_INT32_V09.50.01_V09.50.01"/>
			<DO name="ClkClass" type="SIPROTEC5_DOType_INS_INT32_V09.50.01_V09.50.01"/>
			<DO name="ClkId" type="SIPROTEC5_DOType_VSS_V09.50.01_V09.50.01"/>
			<DO name="GmClkClass" type="SIPROTEC5_DOType_INS_INT32_V09.50.01_V09.50.01"/>
			<DO name="GmClkId" type="SIPROTEC5_DOType_VSS_V09.50.01_V09.50.01"/>
			<DO name="GmClkPrio1" type="SIPROTEC5_DOType_INS_INT32_V09.50.01_V09.50.01"/>
			<DO name="GmClkPrio2" type="SIPROTEC5_DOType_INS_INT32_V09.50.01_V09.50.01"/>
			<DO name="GmClkAcc" type="SIPROTEC5_DOType_INS_INT32_V09.50.01_V09.50.01"/>
			<DO name="MePathDlTmns" type="SIPROTEC5_DOType_INS_INT32_V09.50.01_V09.50.01"/>
			<DO name="NumPorts" type="SIPROTEC5_DOType_INS_INT32_V09.50.01_V09.50.01"/>
			<DO name="OfsMaster" type="SIPROTEC5_DOType_INS_INT32_with_units_V09.50.01_V09.50.01"/>
			<DO name="OfsUtc" type="SIPROTEC5_DOType_SPS_V09.50.01_V09.50.01"/>
			<DO name="OfsUtcTms" type="SIPROTEC5_DOType_INS_INT32_with_units_V09.50.01_V09.50.01"/>
			<DO name="PrntClkId" type="SIPROTEC5_DOType_VSS_V09.50.01_V09.50.01"/>
			<DO name="Stepsr" type="SIPROTEC5_DOType_INS_INT32_V09.50.01_V09.50.01"/>
			<DO name="TmSrcVal" type="SIPROTEC5_DOType_INS_INT32_V09.50.01_V09.50.01"/>
			<DO name="TwoStep" type="SIPROTEC5_DOType_SPS_V09.50.01_V09.50.01"/>
			<DO name="PrntPortId" type="SIPROTEC5_DOType_VSS_V09.50.01_V09.50.01"/>
			<DO name="GmClkVar" type="SIPROTEC5_DOType_INS_INT32_V09.50.01_V09.50.01"/>
			<DO name="ClkVar" type="SIPROTEC5_DOType_INS_INT32_V09.50.01_V09.50.01"/>
			<DO name="ClkPrio1" type="SIPROTEC5_DOType_ING_INT32_edit_V09.50.01_V09.50.01"/>
			<DO name="ClkPrio2" type="SIPROTEC5_DOType_ING_INT32_edit_V09.50.01_V09.50.01"/>
			<DO name="DomainNum" type="SIPROTEC5_DOType_ING_INT32_edit_V09.50.01_V09.50.01"/>
			<DO name="OfsLimTmns" type="SIPROTEC5_DOType_ING_INT32_div_readOnly_V09.50.01_V09.50.01"/>
			<DO name="Slave" type="SIPROTEC5_DOType_SPG_edit_V09.50.01_V09.50.01"/>
			<DO name="PrntPortNum" type="SIPROTEC5_DOType_ING_INT32_edit_V09.50.01_V09.50.01"/>
			<DO name="ChLiv" type="SIPROTEC5_DOType_SPS_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="ServoStatus" type="SIPROTEC5_DOType_INS_INT32_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="ChFail" type="SIPROTEC5_DOType_SPS_UDEF_with_dataNs_V09.50.01_V09.50.01"/>
		</LNodeType>
		<LNodeType id="SIPROTEC5_LNType_LCCH_PRP" lnClass="LCCH">
			<DO name="Mod" type="SIPROTEC5_DOType_Mod_status_only_with_InitVal_V09.50.01_V09.50.01"/>
			<DO name="Beh" type="SIPROTEC5_DOType_ENS_Behavior_V09.50.01_V09.50.01"/>
			<DO name="Health" type="SIPROTEC5_DOType_ENS_Health_V09.50.01_V09.50.01"/>
			<DO name="NamPlt" type="SIPROTEC5_DOType_LPL_NamPlt_for_Ed2_LN_V09.50.01_V09.50.01"/>
			<DO name="ChLiv" type="SIPROTEC5_DOType_SPS_V09.50.01_V09.50.01"/>
			<DO name="RedChLiv" type="SIPROTEC5_DOType_SPS_V09.50.01_V09.50.01"/>
			<DO name="ChFail" type="SIPROTEC5_DOType_SPS_UDEF_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="RedChFail" type="SIPROTEC5_DOType_SPS_UDEF_with_dataNs_V09.50.01_V09.50.01"/>
		</LNodeType>
		<LNodeType id="SIPROTEC5_LNType_XSWI_StatusOnly" lnClass="XSWI">
			<DO name="Mod" type="SIPROTEC5_DOType_Mod_status_only_with_InitVal_V09.50.01_V09.50.01"/>
			<DO name="Beh" type="SIPROTEC5_DOType_ENS_Behavior_V09.50.01_V09.50.01"/>
			<DO name="Health" type="SIPROTEC5_DOType_ENS_Health_V09.50.01_V09.50.01"/>
			<DO name="NamPlt" type="SIPROTEC5_DOType_LPL_NamPlt_for_Ed2_LN_V09.50.01_V09.50.01"/>
			<DO name="Loc" type="SIPROTEC5_DOType_SPS_V09.50.01_V09.50.01"/>
			<DO name="OpCnt" type="SIPROTEC5_DOType_INS_INT32_V09.50.01_V09.50.01"/>
			<DO name="Pos" type="SIPROTEC5_DOType_DPC_Pos_status_only_V09.50.01_V09.50.01"/>
			<DO name="BlkOpn" type="SIPROTEC5_DOType_SPC_status_only_V09.50.01_V09.50.01"/>
			<DO name="BlkCls" type="SIPROTEC5_DOType_SPC_status_only_V09.50.01_V09.50.01"/>
			<DO name="SwTyp" type="SIPROTEC5_DOType_ENS_SwitchType_V09.50.01_V09.50.01"/>
			<DO name="AqBlk" type="SIPROTEC5_DOType_SPS_for_Input_with_dataNs_V09.50.01_V09.50.01"/>
		</LNodeType>
		<LNodeType id="SIPROTEC5_LNType_LGOS" lnClass="LGOS">
			<DO name="Mod" type="SIPROTEC5_DOType_Mod_controllable_OnOff_with_InitVal_V09.50.01_V09.50.01"/>
			<DO name="Beh" type="SIPROTEC5_DOType_ENS_Behavior_V09.50.01_V09.50.01"/>
			<DO name="Health" type="SIPROTEC5_DOType_ENS_Health_V09.50.01_V09.50.01"/>
			<DO name="NamPlt" type="SIPROTEC5_DOType_LPL_NamPlt_for_Ed2_LN_V09.50.01_V09.50.01"/>
			<DO name="NdsCom" type="SIPROTEC5_DOType_SPS_V09.50.01_V09.50.01"/>
			<DO name="St" type="SIPROTEC5_DOType_SPS_V09.50.01_V09.50.01"/>
			<DO name="SimSt" type="SIPROTEC5_DOType_SPS_V09.50.01_V09.50.01"/>
			<DO name="ConfRevNum" type="SIPROTEC5_DOType_INS_INT32_V09.50.01_V09.50.01"/>
			<DO name="RxConfRevNum" type="SIPROTEC5_DOType_INS_INT32_V09.50.01_V09.50.01"/>
			<DO name="GoCBRef" type="SIPROTEC5_DOType_ORG_external_V09.50.01_V09.50.01"/>
			<DO name="DiagErr" type="SIPROTEC5_DOType_ENS_LGOS_DiagError_with_dataNs_V09.50.01_V09.50.01"/>
		</LNodeType>
		<LNodeType id="SIPROTEC5_LNType_CALH_LGOS" lnClass="CALH">
			<DO name="Mod" type="SIPROTEC5_DOType_Mod_status_only_with_InitVal_V09.50.01_V09.50.01"/>
			<DO name="Beh" type="SIPROTEC5_DOType_ENS_Behavior_V09.50.01_V09.50.01"/>
			<DO name="Health" type="SIPROTEC5_DOType_ENS_Health_V09.50.01_V09.50.01"/>
			<DO name="NamPlt" type="SIPROTEC5_DOType_LPL_NamPlt_for_Ed2_LN_V09.50.01_V09.50.01"/>
			<DO name="GrAlm" type="SIPROTEC5_DOType_SPS_V09.50.01_V09.50.01"/>
			<DO name="GrInd" type="SIPROTEC5_DOType_SPS_V09.50.01_V09.50.01"/>
		</LNodeType>
		<LNodeType id="SIPROTEC5_LNType_MMXU_OpMeas_Fund_3ph_Pres" lnClass="MMXU">
			<DO name="Mod" type="SIPROTEC5_DOType_Mod_status_only_with_InitVal_V09.50.01_V09.50.01"/>
			<DO name="Beh" type="SIPROTEC5_DOType_ENS_Behavior_V09.50.01_V09.50.01"/>
			<DO name="Health" type="SIPROTEC5_DOType_ENS_Health_V09.50.01_V09.50.01"/>
			<DO name="NamPlt" type="SIPROTEC5_DOType_LPL_NamPlt_for_Ed2_LN_V09.50.01_V09.50.01"/>
			<DO name="PPV" type="SIPROTEC5_DOType_DEL_V09.50.01_V09.50.01"/>
			<DO name="PhV" type="SIPROTEC5_DOType_WYE_ABCRes_V09.50.01_V09.50.01"/>
			<DO name="A" type="SIPROTEC5_DOType_WYE_ABCRes_V09.50.01_V09.50.01"/>
			<DO name="VneutC" type="SIPROTEC5_DOType_CMV_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="AneutC" type="SIPROTEC5_DOType_CMV_with_dataNs_V09.50.01_V09.50.01"/>
		</LNodeType>
		<LNodeType id="SIPROTEC5_LNType_STCS_1BI_1_3pol" lnClass="ZAXN">
			<DO name="Mod" type="SIPROTEC5_DOType_Mod_controllable_with_InitValVis_for_SIEMENS_LN_V09.50.01_V09.50.01"/>
			<DO name="Beh" type="SIPROTEC5_DOType_ENS_Behavior_V09.50.01_V09.50.01"/>
			<DO name="Health" type="SIPROTEC5_DOType_ENS_Health_V09.50.01_V09.50.01"/>
			<DO name="NamPlt" type="SIPROTEC5_DOType_LPL_NamPlt_for_Ed2_LN_V09.50.01_V09.50.01"/>
			<DO name="Blk" type="SIPROTEC5_DOType_SPS_for_Input_V09.50.01_V09.50.01"/>
			<DO name="TripRelay1" type="SIPROTEC5_DOType_SPS_for_Input_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="TripRelay2" type="SIPROTEC5_DOType_SPS_for_Input_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="TripRelay3" type="SIPROTEC5_DOType_SPS_for_Input_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="Inactive" type="SIPROTEC5_DOType_SPS_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="Failure1" type="SIPROTEC5_DOType_SPS_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="Failure2" type="SIPROTEC5_DOType_SPS_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="Failure3" type="SIPROTEC5_DOType_SPS_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="CfgErrPhA" type="SIPROTEC5_DOType_SPS_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="CfgErrPhB" type="SIPROTEC5_DOType_SPS_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="CfgErrPhC" type="SIPROTEC5_DOType_SPS_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="WetSupFail" type="SIPROTEC5_DOType_SPS_UDEF_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="Failure" type="SIPROTEC5_DOType_SPS_UDEF_with_dataNs_V09.50.01_V09.50.01"/>
		</LNodeType>
		<LNodeType id="SIPROTEC5_LNType_GAPC_CBT_1pol" lnClass="GAPC">
			<DO name="Mod" type="SIPROTEC5_DOType_Mod_status_only_with_InitVal_V09.50.01_V09.50.01"/>
			<DO name="Beh" type="SIPROTEC5_DOType_ENS_Behavior_V09.50.01_V09.50.01"/>
			<DO name="Health" type="SIPROTEC5_DOType_ENS_Health_V09.50.01_V09.50.01"/>
			<DO name="NamPlt" type="SIPROTEC5_DOType_LPL_NamPlt_for_Ed2_LN_V09.50.01_V09.50.01"/>
			<DO name="StrTst3p" type="SIPROTEC5_DOType_SPC_dir_with_enh_sec_initVal_and_dataNs_V09.50.01_V09.50.01"/>
			<DO name="StrTstPhsA" type="SIPROTEC5_DOType_SPC_dir_with_enh_sec_initVal_and_dataNs_V09.50.01_V09.50.01"/>
			<DO name="StrTstPhsB" type="SIPROTEC5_DOType_SPC_dir_with_enh_sec_initVal_and_dataNs_V09.50.01_V09.50.01"/>
			<DO name="StrTstPhsC" type="SIPROTEC5_DOType_SPC_dir_with_enh_sec_initVal_and_dataNs_V09.50.01_V09.50.01"/>
			<DO name="TstExec" type="SIPROTEC5_DOType_ENS_TextList_CBT_TstExec_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="TstTr" type="SIPROTEC5_DOType_ENS_TextList_CBT_TstTr_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="TstCls" type="SIPROTEC5_DOType_ENS_TextList_CBT_TstCls_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="TstCnc" type="SIPROTEC5_DOType_ENS_TextList_CBT_TstCnc_with_dataNs_V09.50.01_V09.50.01"/>
		</LNodeType>
		<LNodeType id="SIPROTEC5_LNType_CILO" lnClass="CILO">
			<DO name="Mod" type="SIPROTEC5_DOType_Mod_status_only_with_InitVal_V09.50.01_V09.50.01"/>
			<DO name="Beh" type="SIPROTEC5_DOType_ENS_Behavior_V09.50.01_V09.50.01"/>
			<DO name="Health" type="SIPROTEC5_DOType_ENS_Health_V09.50.01_V09.50.01"/>
			<DO name="NamPlt" type="SIPROTEC5_DOType_LPL_NamPlt_V09.50.01_V09.50.01"/>
			<DO name="EnaOpn" type="SIPROTEC5_DOType_SPS_V09.50.01_V09.50.01"/>
			<DO name="EnaCls" type="SIPROTEC5_DOType_SPS_V09.50.01_V09.50.01"/>
			<DO name="EnaOpnFix" type="SIPROTEC5_DOType_SPS_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="EnaClsFix" type="SIPROTEC5_DOType_SPS_with_dataNs_V09.50.01_V09.50.01"/>
		</LNodeType>
		<LNodeType id="SIPROTEC5_LNType_CSWI" lnClass="CSWI">
			<DO name="Mod" type="SIPROTEC5_DOType_Mod_status_only_with_InitVal_V09.50.01_V09.50.01"/>
			<DO name="Beh" type="SIPROTEC5_DOType_ENS_Behavior_V09.50.01_V09.50.01"/>
			<DO name="Health" type="SIPROTEC5_DOType_ENS_Health_V09.50.01_V09.50.01"/>
			<DO name="NamPlt" type="SIPROTEC5_DOType_LPL_NamPlt_for_Ed2_LN_V09.50.01_V09.50.01"/>
			<DO name="Loc" type="SIPROTEC5_DOType_SPS_V09.50.01_V09.50.01"/>
			<DO name="Pos" type="SIPROTEC5_DOType_DPC_CSWI_Pos_V09.50.01_V09.50.01"/>
			<DO name="LocKey" type="SIPROTEC5_DOType_SPS_V09.50.01_V09.50.01"/>
			<DO name="LocSta" type="SIPROTEC5_DOType_SPC_statusOnly_and_dir_with_nor_sec_V09.50.01_V09.50.01"/>
			<DO name="SwAuth" type="SIPROTEC5_DOType_ENS_SwitchingAuthority_LocalDigsiStationRemote_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="SwMod" type="SIPROTEC5_DOType_ENS_SwitchingMode_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="SwAuthEna1" type="SIPROTEC5_DOType_SPC_dir_with_enh_sec_initVal_and_dataNs_V09.50.01_V09.50.01"/>
			<DO name="SwAuthEna2" type="SIPROTEC5_DOType_SPC_dir_with_enh_sec_initVal_and_dataNs_V09.50.01_V09.50.01"/>
			<DO name="SwAuthEna3" type="SIPROTEC5_DOType_SPC_dir_with_enh_sec_initVal_and_dataNs_V09.50.01_V09.50.01"/>
			<DO name="SwAuthEna4" type="SIPROTEC5_DOType_SPC_dir_with_enh_sec_initVal_and_dataNs_V09.50.01_V09.50.01"/>
			<DO name="SwAuthEna5" type="SIPROTEC5_DOType_SPC_dir_with_enh_sec_initVal_and_dataNs_V09.50.01_V09.50.01"/>
			<DO name="OpOpn" type="SIPROTEC5_DOType_SPS_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="OpCls" type="SIPROTEC5_DOType_SPS_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="ClsCmdOK" type="SIPROTEC5_DOType_SPS_UDEF_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="ClsCmdERR" type="SIPROTEC5_DOType_SPS_UDEF_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="OpnCmdOK" type="SIPROTEC5_DOType_SPS_UDEF_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="OpnCmdERR" type="SIPROTEC5_DOType_SPS_UDEF_with_dataNs_V09.50.01_V09.50.01"/>
		</LNodeType>
		<LNodeType id="SIPROTEC5_LNType_GAPC_ManualClose" lnClass="GAPC">
			<DO name="Mod" type="SIPROTEC5_DOType_Mod_controllable_with_InitValVis_for_SIEMENS_LN_V09.50.01_V09.50.01"/>
			<DO name="Beh" type="SIPROTEC5_DOType_ENS_Behavior_V09.50.01_V09.50.01"/>
			<DO name="Health" type="SIPROTEC5_DOType_ENS_Health_V09.50.01_V09.50.01"/>
			<DO name="NamPlt" type="SIPROTEC5_DOType_LPL_NamPlt_for_Ed2_LN_V09.50.01_V09.50.01"/>
			<DO name="Blk" type="SIPROTEC5_DOType_SPS_for_Input_V09.50.01_V09.50.01"/>
			<DO name="Input" type="SIPROTEC5_DOType_SPS_for_Input_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="Detected" type="SIPROTEC5_DOType_SPS_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="RxInput1" type="SIPROTEC5_DOType_SPS_with_dataNs_V09.50.01_V09.50.01"/>
		</LNodeType>
		<LNodeType id="SIPROTEC5_LNType_XCBR_1pol_PhsX" lnClass="XCBR">
			<DO name="Mod" type="SIPROTEC5_DOType_Mod_status_only_with_InitVal_V09.50.01_V09.50.01"/>
			<DO name="Beh" type="SIPROTEC5_DOType_ENS_Behavior_V09.50.01_V09.50.01"/>
			<DO name="Health" type="SIPROTEC5_DOType_ENS_Health_V09.50.01_V09.50.01"/>
			<DO name="NamPlt" type="SIPROTEC5_DOType_LPL_NamPlt_for_Ed2_LN_V09.50.01_V09.50.01"/>
			<DO name="Loc" type="SIPROTEC5_DOType_SPS_V09.50.01_V09.50.01"/>
			<DO name="OpCnt" type="SIPROTEC5_DOType_INS_INT32_V09.50.01_V09.50.01"/>
			<DO name="Pos" type="SIPROTEC5_DOType_DPC_Pos_status_only_V09.50.01_V09.50.01"/>
			<DO name="BlkOpn" type="SIPROTEC5_DOType_SPC_status_only_V09.50.01_V09.50.01"/>
			<DO name="BlkCls" type="SIPROTEC5_DOType_SPC_status_only_V09.50.01_V09.50.01"/>
			<DO name="SumSwARs" type="SIPROTEC5_DOType_BCR_noFreeze_V09.50.01_V09.50.01"/>
		</LNodeType>
		<LNodeType id="SIPROTEC5_LNType_XCBR_1pol_Ctl" lnClass="XCBR">
			<DO name="Mod" type="SIPROTEC5_DOType_Mod_status_only_with_InitVal_V09.50.01_V09.50.01"/>
			<DO name="Beh" type="SIPROTEC5_DOType_ENS_Behavior_V09.50.01_V09.50.01"/>
			<DO name="Health" type="SIPROTEC5_DOType_ENS_Health_V09.50.01_V09.50.01"/>
			<DO name="NamPlt" type="SIPROTEC5_DOType_LPL_NamPlt_for_Ed2_LN_V09.50.01_V09.50.01"/>
			<DO name="Loc" type="SIPROTEC5_DOType_SPS_V09.50.01_V09.50.01"/>
			<DO name="EEHealth" type="SIPROTEC5_DOType_ENS_Health_V09.50.01_V09.50.01"/>
			<DO name="OpCnt" type="SIPROTEC5_DOType_INS_INT32_V09.50.01_V09.50.01"/>
			<DO name="Pos" type="SIPROTEC5_DOType_DPC_XCBR_Pos_V09.50.01_V09.50.01"/>
			<DO name="BlkOpn" type="SIPROTEC5_DOType_SPC_status_only_V09.50.01_V09.50.01"/>
			<DO name="BlkCls" type="SIPROTEC5_DOType_SPC_status_only_V09.50.01_V09.50.01"/>
			<DO name="SumSwARs" type="SIPROTEC5_DOType_BCR_noFreeze_V09.50.01_V09.50.01"/>
			<DO name="POWCap" type="SIPROTEC5_DOType_ENS_TextList_POWCap_V09.50.01_V09.50.01"/>
			<DO name="SetOpCntA" type="SIPROTEC5_DOType_INC_controllable_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="SetOpCntB" type="SIPROTEC5_DOType_INC_controllable_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="SetOpCntC" type="SIPROTEC5_DOType_INC_controllable_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="SetOpnHrs" type="SIPROTEC5_DOType_INC_controllable_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="SetOpHrs" type="SIPROTEC5_DOType_INC_controllable_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="SetSwASumA" type="SIPROTEC5_DOType_APC_FLOAT32_controllable_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="SetSwASumB" type="SIPROTEC5_DOType_APC_FLOAT32_controllable_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="SetSwASumC" type="SIPROTEC5_DOType_APC_FLOAT32_controllable_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="AqBlk" type="SIPROTEC5_DOType_SPS_for_Input_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="Rdy" type="SIPROTEC5_DOType_SPS_for_Input_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="RsSwStat" type="SIPROTEC5_DOType_SPS_for_Input_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="RsAqBlkSub" type="SIPROTEC5_DOType_SPS_for_Input_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="TripRelViaBi" type="SIPROTEC5_DOType_SPS_for_Input_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="TripOpnCmd" type="SIPROTEC5_DOType_SPS_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="TripCmdA" type="SIPROTEC5_DOType_SPS_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="TripCmdB" type="SIPROTEC5_DOType_SPS_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="TripCmdC" type="SIPROTEC5_DOType_SPS_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="ClsCmd" type="SIPROTEC5_DOType_SPS_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="OpnCmdA" type="SIPROTEC5_DOType_SPS_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="OpnCmdB" type="SIPROTEC5_DOType_SPS_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="OpnCmdC" type="SIPROTEC5_DOType_SPS_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="ClsCmdA" type="SIPROTEC5_DOType_SPS_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="ClsCmdB" type="SIPROTEC5_DOType_SPS_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="ClsCmdC" type="SIPROTEC5_DOType_SPS_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="CmdActv" type="SIPROTEC5_DOType_SPS_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="AlmSupp" type="SIPROTEC5_DOType_SPS_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="DefTr" type="SIPROTEC5_DOType_SPS_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="OpCntPhA" type="SIPROTEC5_DOType_INS_INT32_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="OpCntPhB" type="SIPROTEC5_DOType_INS_INT32_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="OpCntPhC" type="SIPROTEC5_DOType_INS_INT32_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="SumSwARsA" type="SIPROTEC5_DOType_BCR_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="SumSwARsB" type="SIPROTEC5_DOType_BCR_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="SumSwARsC" type="SIPROTEC5_DOType_BCR_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="SwAphsA" type="SIPROTEC5_DOType_MV_Float_dupd_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="SwAphsB" type="SIPROTEC5_DOType_MV_Float_dupd_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="SwAphsC" type="SIPROTEC5_DOType_MV_Float_dupd_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="SwANeut" type="SIPROTEC5_DOType_MV_Float_dupd_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="SwVphsA" type="SIPROTEC5_DOType_MV_Float_dupd_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="SwVphsB" type="SIPROTEC5_DOType_MV_Float_dupd_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="SwVphsC" type="SIPROTEC5_DOType_MV_Float_dupd_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="CBOpnHrs" type="SIPROTEC5_DOType_INS_INT32_with_units_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="OpHrs" type="SIPROTEC5_DOType_INS_INT32_with_units_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="BbpBlockDO" type="SIPROTEC5_DOType_SPS_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="NoTrpRelBi" type="SIPROTEC5_DOType_SPS_with_dataNs_V09.50.01_V09.50.01"/>
		</LNodeType>
		<LNodeType id="SIPROTEC5_LNType_PTRC_Trip_1_3pol" lnClass="PTRC">
			<DO name="Mod" type="SIPROTEC5_DOType_Mod_status_only_with_InitVal_V09.50.01_V09.50.01"/>
			<DO name="Beh" type="SIPROTEC5_DOType_ENS_Behavior_V09.50.01_V09.50.01"/>
			<DO name="Health" type="SIPROTEC5_DOType_ENS_Health_V09.50.01_V09.50.01"/>
			<DO name="NamPlt" type="SIPROTEC5_DOType_LPL_NamPlt_V09.50.01_V09.50.01"/>
			<DO name="Tr" type="SIPROTEC5_DOType_ACT_1_3pol_GABC_V09.50.01_V09.50.01"/>
			<DO name="Op" type="SIPROTEC5_DOType_ACT_1_3pol_GABC_V09.50.01_V09.50.01"/>
			<DO name="Str" type="SIPROTEC5_DOType_ACD_PhsSel_GABCN_Without_DirRouting_V09.50.01_V09.50.01"/>
			<DO name="Trip3pCoup" type="SIPROTEC5_DOType_SPS_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="TrpBbpDiff" type="SIPROTEC5_DOType_ACT_3pol_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="TrpBbpBFP" type="SIPROTEC5_DOType_ACT_3pol_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="TrpBbpExt" type="SIPROTEC5_DOType_ACT_3pol_with_dataNs_V09.50.01_V09.50.01"/>
		</LNodeType>
		<LNodeType id="SIPROTEC5_LNType_GAPC_FB0_FGBreaker_1pol" lnClass="GAPC">
			<DO name="Mod" type="SIPROTEC5_DOType_Mod_status_only_with_InitVal_V09.50.01_V09.50.01"/>
			<DO name="Beh" type="SIPROTEC5_DOType_ENS_Behavior_V09.50.01_V09.50.01"/>
			<DO name="Health" type="SIPROTEC5_DOType_ENS_Health_V09.50.01_V09.50.01"/>
			<DO name="NamPlt" type="SIPROTEC5_DOType_LPL_NamPlt_for_Ed2_LN_V09.50.01_V09.50.01"/>
		</LNodeType>
		<LNodeType id="SIPROTEC5_LNType_LPDO_BinaryOutput" lnClass="LPDO">
			<DO name="Mod" type="SIPROTEC5_DOType_Mod_status_only_with_InitVal_V09.50.01_V09.50.01"/>
			<DO name="Beh" type="SIPROTEC5_DOType_ENS_Behavior_V09.50.01_V09.50.01"/>
			<DO name="Health" type="SIPROTEC5_DOType_ENS_Health_V09.50.01_V09.50.01"/>
			<DO name="NamPlt" type="SIPROTEC5_DOType_LPL_NamPlt_for_SIEMENS_LN_V09.50.01_V09.50.01"/>
			<DO name="OutSPS" type="SIPROTEC5_DOType_SPS_with_dataNs_V09.50.01_V09.50.01"/>
		</LNodeType>
		<LNodeType id="SIPROTEC5_LNType_LPDI_BinaryInput" lnClass="LPDI">
			<DO name="Mod" type="SIPROTEC5_DOType_Mod_status_only_with_InitVal_V09.50.01_V09.50.01"/>
			<DO name="Beh" type="SIPROTEC5_DOType_ENS_Behavior_V09.50.01_V09.50.01"/>
			<DO name="Health" type="SIPROTEC5_DOType_ENS_Health_V09.50.01_V09.50.01"/>
			<DO name="NamPlt" type="SIPROTEC5_DOType_LPL_NamPlt_for_SIEMENS_LN_V09.50.01_V09.50.01"/>
			<DO name="In" type="SIPROTEC5_DOType_SPS_with_dataNs_V09.50.01_V09.50.01"/>
		</LNodeType>
		<LNodeType id="SIPROTEC5_LNType_LLN0_LDevice_Generic" lnClass="LLN0">
			<DO name="Mod" type="SIPROTEC5_DOType_Mod_status_only_with_InitVal_V09.50.01_V09.50.01"/>
			<DO name="Beh" type="SIPROTEC5_DOType_ENS_Behavior_V09.50.01_V09.50.01"/>
			<DO name="Health" type="SIPROTEC5_DOType_ENS_Health_V09.50.01_V09.50.01"/>
			<DO name="NamPlt" type="SIPROTEC5_DOType_LPL_NamPlt_for_LLN0_V09.50.01_V09.50.01"/>
			<DO name="GrRef" type="SIPROTEC5_DOType_ORG_V09.50.01_V09.50.01"/>
		</LNodeType>
		<LNodeType id="SIPROTEC5_LNType_USER_Universal" lnClass="GGIO">
			<DO name="Mod" type="SIPROTEC5_DOType_Mod_controllable_with_InitValVis_for_SIEMENS_LN_V09.50.01_V09.50.01"/>
			<DO name="Beh" type="SIPROTEC5_DOType_ENS_Behavior_V09.50.01_V09.50.01"/>
			<DO name="Health" type="SIPROTEC5_DOType_ENS_Health_V09.50.01_V09.50.01"/>
			<DO name="NamPlt" type="SIPROTEC5_DOType_LPL_NamPlt_for_SIEMENS_LN_V09.50.01_V09.50.01"/>
			<DO name="BO1" type="SIPROTEC5_DOType_SPS_UDEF_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="BO2" type="SIPROTEC5_DOType_SPS_UDEF_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="BO3" type="SIPROTEC5_DOType_SPS_UDEF_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="BO4" type="SIPROTEC5_DOType_SPS_UDEF_with_dataNs_V09.50.01_V09.50.01"/>
		</LNodeType>
		<LNodeType id="SIPROTEC5_LNType_ResetLed" lnClass="GAPC">
			<DO name="Mod" type="SIPROTEC5_DOType_Mod_status_only_with_InitVal_V09.50.01_V09.50.01"/>
			<DO name="Beh" type="SIPROTEC5_DOType_ENS_Behavior_V09.50.01_V09.50.01"/>
			<DO name="Health" type="SIPROTEC5_DOType_ENS_Health_V09.50.01_V09.50.01"/>
			<DO name="NamPlt" type="SIPROTEC5_DOType_LPL_NamPlt_for_Ed2_LN_V09.50.01_V09.50.01"/>
			<DO name="ResetIn" type="SIPROTEC5_DOType_SPS_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="LedTstOut" type="SIPROTEC5_DOType_SPS_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="ResetCtl" type="SIPROTEC5_DOType_SPC_dir_with_nor_sec_FnKey_toggle_on_off_with_dataNs_V09.50.01_V09.50.01"/>
		</LNodeType>
		<LNodeType id="SIPROTEC5_LNType_LTRK_Application" lnClass="LTRK">
			<DO name="Mod" type="SIPROTEC5_DOType_Mod_status_only_with_InitVal_V09.50.01_V09.50.01"/>
			<DO name="Beh" type="SIPROTEC5_DOType_ENS_Behavior_V09.50.01_V09.50.01"/>
			<DO name="Health" type="SIPROTEC5_DOType_ENS_Health_V09.50.01_V09.50.01"/>
			<DO name="NamPlt" type="SIPROTEC5_DOType_LPL_NamPlt_for_Ed2_LN_V09.50.01_V09.50.01"/>
			<DO name="GenTrk" type="SIPROTEC5_DOType_CST_V09.50.01_V09.50.01"/>
			<DO name="SgcbTrk" type="SIPROTEC5_DOType_STS_V09.50.01_V09.50.01"/>
		</LNodeType>
		<LNodeType id="SIPROTEC5_LNType_LTMS_Application" lnClass="LTMS">
			<DO name="Mod" type="SIPROTEC5_DOType_Mod_status_only_with_InitVal_V09.50.01_V09.50.01"/>
			<DO name="Beh" type="SIPROTEC5_DOType_ENS_Behavior_V09.50.01_V09.50.01"/>
			<DO name="Health" type="SIPROTEC5_DOType_ENS_Health_V09.50.01_V09.50.01"/>
			<DO name="NamPlt" type="SIPROTEC5_DOType_LPL_NamPlt_for_Ed2_LN_V09.50.01_V09.50.01"/>
			<DO name="TmSrc" type="SIPROTEC5_DOType_VSS_V09.50.01_V09.50.01"/>
			<DO name="TmSrcTyp" type="SIPROTEC5_DOType_ENS_TmSrcTyp_V09.50.01_V09.50.01"/>
			<DO name="TmChSt1" type="SIPROTEC5_DOType_SPS_V09.50.01_V09.50.01"/>
			<DO name="TmChSt2" type="SIPROTEC5_DOType_SPS_V09.50.01_V09.50.01"/>
			<DO name="TmSynErr" type="SIPROTEC5_DOType_SPS_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="LeapSecond" type="SIPROTEC5_DOType_SPS_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="Sync" type="SIPROTEC5_DOType_SPS_with_dataNs_V09.50.01_V09.50.01"/>
		</LNodeType>
		<LNodeType id="SIPROTEC5_LNType_LTIM_Application" lnClass="LTIM">
			<DO name="Mod" type="SIPROTEC5_DOType_Mod_status_only_with_InitVal_V09.50.01_V09.50.01"/>
			<DO name="Beh" type="SIPROTEC5_DOType_ENS_Behavior_V09.50.01_V09.50.01"/>
			<DO name="Health" type="SIPROTEC5_DOType_ENS_Health_V09.50.01_V09.50.01"/>
			<DO name="NamPlt" type="SIPROTEC5_DOType_LPL_NamPlt_for_Ed2_LN_V09.50.01_V09.50.01"/>
			<DO name="TmDT" type="SIPROTEC5_DOType_SPS_V09.50.01_V09.50.01"/>
			<DO name="TmOfsTmm" type="SIPROTEC5_DOType_ING_INT32_edit_V09.50.01_V09.50.01"/>
			<DO name="TmUseDT" type="SIPROTEC5_DOType_SPG_edit_V09.50.01_V09.50.01"/>
			<DO name="TmChgDT" type="SIPROTEC5_DOType_TSG_V09.50.01_V09.50.01"/>
			<DO name="TmChgST" type="SIPROTEC5_DOType_TSG_V09.50.01_V09.50.01"/>
			<DO name="ClkSetMan" type="SIPROTEC5_DOType_SPS_with_dataNs_V09.50.01_V09.50.01"/>
		</LNodeType>
		<LNodeType id="SIPROTEC5_LNType_CALH_Application" lnClass="CALH">
			<DO name="Mod" type="SIPROTEC5_DOType_Mod_status_only_with_InitVal_V09.50.01_V09.50.01"/>
			<DO name="Beh" type="SIPROTEC5_DOType_ENS_Behavior_V09.50.01_V09.50.01"/>
			<DO name="Health" type="SIPROTEC5_DOType_ENS_Health_V09.50.01_V09.50.01"/>
			<DO name="NamPlt" type="SIPROTEC5_DOType_LPL_NamPlt_for_Ed2_LN_V09.50.01_V09.50.01"/>
			<DO name="GrAlm" type="SIPROTEC5_DOType_SPS_V09.50.01_V09.50.01"/>
			<DO name="GrWrn" type="SIPROTEC5_DOType_SPS_V09.50.01_V09.50.01"/>
			<DO name="GrInd" type="SIPROTEC5_DOType_SPS_V09.50.01_V09.50.01"/>
			<DO name="GrIndIn" type="SIPROTEC5_DOType_SPS_for_Input_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="GrWrnIn" type="SIPROTEC5_DOType_SPS_for_Input_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="GrAlmIn" type="SIPROTEC5_DOType_SPS_for_Input_with_dataNs_V09.50.01_V09.50.01"/>
		</LNodeType>
		<LNodeType id="SIPROTEC5_LNType_LPHD" lnClass="LPHD">
			<DO name="PhyNam" type="SIPROTEC5_DOType_DPL_V09.50.01_V09.50.01"/>
			<DO name="PhyHealth" type="SIPROTEC5_DOType_ENS_Health_V09.50.01_V09.50.01"/>
			<DO name="Proxy" type="SIPROTEC5_DOType_SPS_V09.50.01_V09.50.01"/>
			<DO name="PwrUp" type="SIPROTEC5_DOType_SPS_V09.50.01_V09.50.01"/>
			<DO name="Sim" type="SIPROTEC5_DOType_SPC_dir_with_nor_sec_V09.50.01_V09.50.01"/>
			<DO name="OpTmh" type="SIPROTEC5_DOType_INS_INT32_with_units_V09.50.01_V09.50.01"/>
			<DO name="NamPlt" type="SIPROTEC5_DOType_LPL_NamPlt_for_Ed2_LN_V09.50.01_V09.50.01"/>
			<DO name="GoStop" type="SIPROTEC5_DOType_SPS_for_Input_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="SvStop" type="SIPROTEC5_DOType_SPS_for_Input_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="LifeCon" type="SIPROTEC5_DOType_SPS_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="BatFail" type="SIPROTEC5_DOType_SPS_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="ClkFail" type="SIPROTEC5_DOType_SPS_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="ErrMeasT" type="SIPROTEC5_DOType_ENS_ErrMeasT_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="ErrComp" type="SIPROTEC5_DOType_ENS_ErrComp_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="ErrOffset" type="SIPROTEC5_DOType_ENS_ErrOffset_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="DigsiAct" type="SIPROTEC5_DOType_SPS_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="SimuMode" type="SIPROTEC5_DOType_SPS_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="CommMode" type="SIPROTEC5_DOType_SPS_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="ErrMemory" type="SIPROTEC5_DOType_SPS_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="AuxPwrFail" type="SIPROTEC5_DOType_SPS_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="SeuHappened" type="SIPROTEC5_DOType_SPS_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="PSModFail" type="SIPROTEC5_DOType_INS_INT32_dupd_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="PSModOK" type="SIPROTEC5_DOType_INS_INT32_dupd_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="OsopNotCon" type="SIPROTEC5_DOType_SPS_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="PSAuxPwrFail" type="SIPROTEC5_DOType_INS_INT32_dupd_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="PSAuxPwrOK" type="SIPROTEC5_DOType_INS_INT32_dupd_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="PSModFailSps" type="SIPROTEC5_DOType_SPS_for_Input_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="PSAuxFailSps" type="SIPROTEC5_DOType_SPS_for_Input_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="Logon" type="SIPROTEC5_DOType_ENS_Login_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="CybSecEvt" type="SIPROTEC5_DOType_ENS_CyberSecEvent_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="MsgLost" type="SIPROTEC5_DOType_SPS_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="ChtBlk" type="SIPROTEC5_DOType_SPS_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="FlshDskHth" type="SIPROTEC5_DOType_ENS_Health_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="PrcModIna" type="SIPROTEC5_DOType_SPS_UDEF_with_dataNs_V09.50.01_V09.50.01"/>
		</LNodeType>
		<LNodeType id="SIPROTEC5_LNType_LLN0_Application" lnClass="LLN0">
			<DO name="Mod" type="SIPROTEC5_DOType_Mod_controllable_OnBlockedTestTestBlocked_with_InitVal_V09.50.01_V09.50.01"/>
			<DO name="Beh" type="SIPROTEC5_DOType_ENS_Behavior_V09.50.01_V09.50.01"/>
			<DO name="Health" type="SIPROTEC5_DOType_ENS_Health_V09.50.01_V09.50.01"/>
			<DO name="NamPlt" type="SIPROTEC5_DOType_LPL_NamPlt_for_LLN0_V09.50.01_V09.50.01"/>
			<DO name="LEDRs" type="SIPROTEC5_DOType_SPC_dir_with_nor_sec_V09.50.01_V09.50.01"/>
			<DO name="LocKey" type="SIPROTEC5_DOType_SPS_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="LocSta" type="SIPROTEC5_DOType_SPC_dir_with_nor_sec_FnKey_toggle_on_off_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="MltLev" type="SIPROTEC5_DOType_SPG_readOnly_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="ProtOnOff" type="SIPROTEC5_DOType_SPC_dir_with_nor_sec_FnKey_toggle_on_off_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="FnctLO" type="SIPROTEC5_DOType_SPC_dir_with_nor_sec_FnKey_toggle_on_off_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="SwAuthEna1" type="SIPROTEC5_DOType_SPC_dir_with_enh_sec_initVal_and_dataNs_V09.50.01_V09.50.01"/>
			<DO name="SwAuthEna2" type="SIPROTEC5_DOType_SPC_dir_with_enh_sec_initVal_and_dataNs_V09.50.01_V09.50.01"/>
			<DO name="SwAuthEna3" type="SIPROTEC5_DOType_SPC_dir_with_enh_sec_initVal_and_dataNs_V09.50.01_V09.50.01"/>
			<DO name="SwAuthEna4" type="SIPROTEC5_DOType_SPC_dir_with_enh_sec_initVal_and_dataNs_V09.50.01_V09.50.01"/>
			<DO name="SwAuthEna5" type="SIPROTEC5_DOType_SPC_dir_with_enh_sec_initVal_and_dataNs_V09.50.01_V09.50.01"/>
			<DO name="LedTstStrt" type="SIPROTEC5_DOType_SPS_for_Input_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="FloOn" type="SIPROTEC5_DOType_SPS_for_Input_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="FloOff" type="SIPROTEC5_DOType_SPS_for_Input_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="SGChoiceB1" type="SIPROTEC5_DOType_SPS_for_Input_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="SGChoiceB2" type="SIPROTEC5_DOType_SPS_for_Input_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="SGChoiceB3" type="SIPROTEC5_DOType_SPS_for_Input_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="LightOn" type="SIPROTEC5_DOType_SPS_for_Input_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="BOBlocked" type="SIPROTEC5_DOType_SPS_for_Input_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="Inactive" type="SIPROTEC5_DOType_SPS_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="HealthDev" type="SIPROTEC5_DOType_ENS_Health_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="LedTstOut" type="SIPROTEC5_DOType_SPS_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="FloCmd" type="SIPROTEC5_DOType_SPS_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="FloState" type="SIPROTEC5_DOType_SPS_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="SwAuth" type="SIPROTEC5_DOType_ENS_SwitchingAuthority_LocalDigsiStationRemote_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="SwMod" type="SIPROTEC5_DOType_ENS_SwitchingMode_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="AcqBlkAct" type="SIPROTEC5_DOType_SPS_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="SubstAct" type="SIPROTEC5_DOType_SPS_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="ActiveSG" type="SIPROTEC5_DOType_INS_INT32_dupd_with_dataNs_V09.50.01_V09.50.01"/>
			<DO name="FunInTest" type="SIPROTEC5_DOType_SPS_with_dataNs_V09.50.01_V09.50.01"/>
		</LNodeType>
		<DOType id="SIPROTEC5_DOType_ComProxy_SPC_V09.50.01_V09.50.01" cdc="SPC">
			<DA name="origin" bType="Struct" type="SIPROTEC5_DAType_origin_V09.50.01_V09.50.01" fc="ST"/>
			<DA name="ctlNum" bType="INT8U" fc="ST"/>
			<DA name="stVal" bType="BOOLEAN" dchg="true" fc="ST"/>
			<DA name="q" bType="Quality" qchg="true" fc="ST"/>
			<DA name="t" bType="Timestamp" fc="ST"/>
			<DA name="stSeld" bType="BOOLEAN" dchg="true" fc="ST"/>
			<DA name="opRcvd" bType="BOOLEAN" dchg="true" fc="OR"/>
			<DA name="opOk" bType="BOOLEAN" dchg="true" fc="OR"/>
			<DA name="tOpOk" bType="Timestamp" fc="OR"/>
			<DA name="ctlModel" bType="Enum" valKind="RO" type="SIPROTEC5_Textlist_ctlModel_status_only_V09.50.01_V09.50.01" dchg="true" fc="CF">
				<Val>status-only</Val>
			</DA>
			<DA name="dataNs" bType="VisString255" valKind="RO" fc="EX">
				<Val>SIPROTEC5</Val>
			</DA>
		</DOType>
		<DOType id="SIPROTEC5_DOType_ComProxy_INC_V09.50.01_V09.50.01" cdc="INC">
			<DA name="origin" bType="Struct" type="SIPROTEC5_DAType_origin_V09.50.01_V09.50.01" fc="ST"/>
			<DA name="ctlNum" bType="INT8U" fc="ST"/>
			<DA name="stVal" bType="INT32" dchg="true" fc="ST"/>
			<DA name="q" bType="Quality" qchg="true" fc="ST"/>
			<DA name="t" bType="Timestamp" fc="ST"/>
			<DA name="stSeld" bType="BOOLEAN" dchg="true" fc="ST"/>
			<DA name="opRcvd" bType="BOOLEAN" dchg="true" fc="OR"/>
			<DA name="opOk" bType="BOOLEAN" dchg="true" fc="OR"/>
			<DA name="tOpOk" bType="Timestamp" fc="OR"/>
			<DA name="ctlModel" bType="Enum" valKind="RO" type="SIPROTEC5_Textlist_ctlModel_status_only_V09.50.01_V09.50.01" dchg="true" fc="CF">
				<Val>status-only</Val>
			</DA>
			<DA name="dataNs" bType="VisString255" valKind="RO" fc="EX">
				<Val>SIPROTEC5</Val>
			</DA>
		</DOType>
		<DOType id="SIPROTEC5_DOType_ComProxy_BSC_V09.50.01_V09.50.01" cdc="BSC">
			<DA name="origin" bType="Struct" type="SIPROTEC5_DAType_origin_V09.50.01_V09.50.01" fc="ST"/>
			<DA name="ctlNum" bType="INT8U" fc="ST"/>
			<DA name="valWTr" bType="Struct" type="SIPROTEC5_DAType_ValWithTrans_V09.50.01_V09.50.01" dchg="true" fc="ST"/>
			<DA name="q" bType="Quality" qchg="true" fc="ST"/>
			<DA name="t" bType="Timestamp" fc="ST"/>
			<DA name="stSeld" bType="BOOLEAN" dchg="true" fc="ST"/>
			<DA name="opRcvd" bType="BOOLEAN" dchg="true" fc="OR"/>
			<DA name="opOk" bType="BOOLEAN" dchg="true" fc="OR"/>
			<DA name="tOpOk" bType="Timestamp" fc="OR"/>
			<DA name="persistent" bType="BOOLEAN" valKind="RO" dchg="true" fc="CF">
				<Val>false</Val>
			</DA>
			<DA name="ctlModel" bType="Enum" valKind="RO" type="SIPROTEC5_Textlist_ctlModel_status_only_V09.50.01_V09.50.01" dchg="true" fc="CF">
				<Val>status-only</Val>
			</DA>
			<DA name="dataNs" bType="VisString255" valKind="RO" fc="EX">
				<Val>SIPROTEC5</Val>
			</DA>
		</DOType>
		<DOType id="SIPROTEC5_DOType_MV_Float_dupd_V09.50.01_V09.50.01" cdc="MV">
			<DA name="instMag" bType="Struct" type="SIPROTEC5_DAType_AnalogValue_FLOAT32_V09.50.01_V09.50.01" fc="MX"/>
			<DA name="mag" bType="Struct" type="SIPROTEC5_DAType_AnalogValue_FLOAT32_V09.50.01_V09.50.01" dupd="true" fc="MX"/>
			<DA name="q" bType="Quality" qchg="true" fc="MX"/>
			<DA name="t" bType="Timestamp" fc="MX"/>
			<DA name="units" bType="Struct" type="SIPROTEC5_DAType_Units_1_V09.50.01_V09.50.01" dchg="true" fc="CF"/>
		</DOType>
		<DOType id="SIPROTEC5_DOType_BSC_controllable_without_BinaryInput_V09.50.01_V09.50.01" cdc="BSC">
			<DA name="origin" bType="Struct" type="SIPROTEC5_DAType_origin_V09.50.01_V09.50.01" fc="ST"/>
			<DA name="ctlNum" bType="INT8U" fc="ST"/>
			<DA name="valWTr" bType="Struct" type="SIPROTEC5_DAType_ValWithTrans_V09.50.01_V09.50.01" dchg="true" fc="ST"/>
			<DA name="q" bType="Quality" qchg="true" fc="ST"/>
			<DA name="t" bType="Timestamp" fc="ST"/>
			<DA name="stSeld" bType="BOOLEAN" dchg="true" fc="ST"/>
			<DA name="opRcvd" bType="BOOLEAN" dchg="true" fc="OR"/>
			<DA name="opOk" bType="BOOLEAN" dchg="true" fc="OR"/>
			<DA name="tOpOk" bType="Timestamp" fc="OR"/>
			<DA name="subEna" bType="BOOLEAN" fc="SV">
				<Val>false</Val>
			</DA>
			<DA name="subVal" bType="Struct" type="SIPROTEC5_DAType_ValWithTrans_V09.50.01_V09.50.01" fc="SV"/>
			<DA name="subQ" bType="Quality" fc="SV"/>
			<DA name="subID" bType="VisString64" fc="SV"/>
			<DA name="blkEna" bType="BOOLEAN" fc="BL">
				<Val>false</Val>
			</DA>
			<DA name="persistent" bType="BOOLEAN" valKind="RO" dchg="true" fc="CF">
				<Val>false</Val>
			</DA>
			<DA name="ctlModel" bType="Enum" type="SIPROTEC5_Textlist_ctlModel_V09.50.01_V09.50.01" dchg="true" fc="CF">
				<Val>status-only</Val>
			</DA>
			<DA name="sboTimeout" bType="INT32U" valKind="RO" dchg="true" fc="CF">
				<Val>30000</Val>
			</DA>
			<DA name="sboClass" bType="Enum" valKind="RO" type="SIPROTEC5_Textlist_sboClass_V09.50.01_V09.50.01" dchg="true" fc="CF">
				<Val>operate-once</Val>
			</DA>
			<DA name="operTimeout" bType="INT32U" valKind="RO" dchg="true" fc="CF">
				<Val>1000</Val>
			</DA>
			<DA name="SBO" bType="VisString129" fc="CO">
				<ProtNs type="8-MMS">IEC 61850-8-1:2003</ProtNs>
			</DA>
			<DA name="SBOw" bType="Struct" type="SIPROTEC5_DAType_Oper_TCMD_V09.50.01_V09.50.01" fc="CO"/>
			<DA name="Oper" bType="Struct" type="SIPROTEC5_DAType_Oper_TCMD_V09.50.01_V09.50.01" fc="CO"/>
			<DA name="Cancel" bType="Struct" type="SIPROTEC5_DAType_Cancel_TCMD_V09.50.01_V09.50.01" fc="CO"/>
		</DOType>
		<DOType id="SIPROTEC5_DOType_SPC_ATCC_Auto_V09.50.01_V09.50.01" cdc="SPC">
			<DA name="origin" bType="Struct" type="SIPROTEC5_DAType_origin_V09.50.01_V09.50.01" fc="ST"/>
			<DA name="ctlNum" bType="INT8U" fc="ST"/>
			<DA name="stVal" bType="BOOLEAN" dchg="true" fc="ST"/>
			<DA name="q" bType="Quality" qchg="true" fc="ST"/>
			<DA name="t" bType="Timestamp" fc="ST"/>
			<DA name="stSeld" bType="BOOLEAN" dchg="true" fc="ST"/>
			<DA name="opRcvd" bType="BOOLEAN" dchg="true" fc="OR"/>
			<DA name="opOk" bType="BOOLEAN" dchg="true" fc="OR"/>
			<DA name="tOpOk" bType="Timestamp" fc="OR"/>
			<DA name="subEna" bType="BOOLEAN" fc="SV"/>
			<DA name="subVal" bType="BOOLEAN" fc="SV"/>
			<DA name="subQ" bType="Quality" fc="SV"/>
			<DA name="subID" bType="VisString64" fc="SV"/>
			<DA name="blkEna" bType="BOOLEAN" fc="BL"/>
			<DA name="ctlModel" bType="Enum" valKind="RO" type="SIPROTEC5_Textlist_ctlModel_status_only_and_dir_with_nor_sec_V09.50.01_V09.50.01" fc="CF">
				<Val>direct-with-normal-security</Val>
			</DA>
			<DA name="Oper" bType="Struct" type="SIPROTEC5_DAType_Oper_Boolean_V09.50.01_V09.50.01" fc="CO"/>
			<DA name="Cancel" bType="Struct" type="SIPROTEC5_DAType_Cancel_Boolean_V09.50.01_V09.50.01" fc="CO"/>
		</DOType>
		<DOType id="SIPROTEC5_DOType_ENS_Parallel_Trafo_Behavior_with_dataNs_V09.50.01_V09.50.01" cdc="ENS">
			<DA name="stVal" bType="Enum" type="SIPROTEC5_Textlist_ParallelTrafoBeh_V09.50.01_V09.50.01" dchg="true" fc="ST"/>
			<DA name="q" bType="Quality" qchg="true" fc="ST"/>
			<DA name="t" bType="Timestamp" fc="ST"/>
			<DA name="dataNs" bType="VisString255" valKind="RO" fc="EX">
				<Val>SIPROTEC5</Val>
			</DA>
		</DOType>
		<DOType id="SIPROTEC5_DOType_ENS_Parallel_Trafo_Error_with_dataNs_V09.50.01_V09.50.01" cdc="ENS">
			<DA name="stVal" bType="Enum" type="SIPROTEC5_EnType_ParallelTrafoErr_V09.50.01_V09.50.01" dchg="true" fc="ST"/>
			<DA name="q" bType="Quality" qchg="true" fc="ST"/>
			<DA name="t" bType="Timestamp" fc="ST"/>
			<DA name="dataNs" bType="VisString255" valKind="RO" fc="EX">
				<Val>SIPROTEC5</Val>
			</DA>
		</DOType>
		<DOType id="SIPROTEC5_DOType_SPC_ATCC_FnKey_toggle_on_off_status_with_dataNs_V09.50.01_V09.50.01" cdc="SPC">
			<DA name="origin" bType="Struct" type="SIPROTEC5_DAType_origin_V09.50.01_V09.50.01" fc="ST"/>
			<DA name="ctlNum" bType="INT8U" fc="ST"/>
			<DA name="stVal" bType="BOOLEAN" dchg="true" fc="ST"/>
			<DA name="q" bType="Quality" qchg="true" fc="ST"/>
			<DA name="t" bType="Timestamp" fc="ST"/>
			<DA name="opRcvd" bType="BOOLEAN" dchg="true" fc="OR"/>
			<DA name="opOk" bType="BOOLEAN" dchg="true" fc="OR"/>
			<DA name="tOpOk" bType="Timestamp" fc="OR"/>
			<DA name="ctlModel" bType="Enum" valKind="RO" type="SIPROTEC5_Textlist_ctlModel_status_only_and_dir_with_nor_sec_V09.50.01_V09.50.01" dchg="true" fc="CF">
				<Val>direct-with-normal-security</Val>
			</DA>
			<DA name="dataNs" bType="VisString255" valKind="RO" fc="EX">
				<Val>SIPROTEC5</Val>
			</DA>
			<DA name="Oper" bType="Struct" type="SIPROTEC5_DAType_Oper_Boolean_V09.50.01_V09.50.01" fc="CO"/>
		</DOType>
		<DOType id="SIPROTEC5_DOType_BSC_controllable_V09.50.01_V09.50.01" cdc="BSC">
			<DA name="origin" bType="Struct" type="SIPROTEC5_DAType_origin_V09.50.01_V09.50.01" fc="ST"/>
			<DA name="ctlNum" bType="INT8U" fc="ST"/>
			<DA name="valWTr" bType="Struct" type="SIPROTEC5_DAType_ValWithTrans_V09.50.01_V09.50.01" dchg="true" fc="ST"/>
			<DA name="q" bType="Quality" qchg="true" fc="ST"/>
			<DA name="t" bType="Timestamp" fc="ST"/>
			<DA name="stSeld" bType="BOOLEAN" dchg="true" fc="ST"/>
			<DA name="opRcvd" bType="BOOLEAN" dchg="true" fc="OR"/>
			<DA name="opOk" bType="BOOLEAN" dchg="true" fc="OR"/>
			<DA name="tOpOk" bType="Timestamp" fc="OR"/>
			<DA name="subEna" bType="BOOLEAN" fc="SV">
				<Val>false</Val>
			</DA>
			<DA name="subVal" bType="Struct" type="SIPROTEC5_DAType_ValWithTrans_V09.50.01_V09.50.01" fc="SV"/>
			<DA name="subQ" bType="Quality" fc="SV"/>
			<DA name="subID" bType="VisString64" fc="SV"/>
			<DA name="blkEna" bType="BOOLEAN" fc="BL">
				<Val>false</Val>
			</DA>
			<DA name="persistent" bType="BOOLEAN" valKind="RO" dchg="true" fc="CF">
				<Val>false</Val>
			</DA>
			<DA name="ctlModel" bType="Enum" type="SIPROTEC5_Textlist_ctlModel_V09.50.01_V09.50.01" dchg="true" fc="CF">
				<Val>status-only</Val>
			</DA>
			<DA name="sboTimeout" bType="INT32U" valKind="RO" dchg="true" fc="CF">
				<Val>30000</Val>
			</DA>
			<DA name="sboClass" bType="Enum" valKind="RO" type="SIPROTEC5_Textlist_sboClass_V09.50.01_V09.50.01" dchg="true" fc="CF">
				<Val>operate-once</Val>
			</DA>
			<DA name="minVal" bType="INT8" valKind="Set" dchg="true" fc="CF">
				<Val>1</Val>
			</DA>
			<DA name="maxVal" bType="INT8" valKind="Set" dchg="true" fc="CF">
				<Val>15</Val>
			</DA>
			<DA name="operTimeout" bType="INT32U" valKind="RO" dchg="true" fc="CF">
				<Val>1000</Val>
			</DA>
			<DA name="SBO" bType="VisString129" fc="CO">
				<ProtNs type="8-MMS">IEC 61850-8-1:2003</ProtNs>
			</DA>
			<DA name="SBOw" bType="Struct" type="SIPROTEC5_DAType_Oper_TCMD_V09.50.01_V09.50.01" fc="CO"/>
			<DA name="Oper" bType="Struct" type="SIPROTEC5_DAType_Oper_TCMD_V09.50.01_V09.50.01" fc="CO"/>
			<DA name="Cancel" bType="Struct" type="SIPROTEC5_DAType_Cancel_TCMD_V09.50.01_V09.50.01" fc="CO"/>
		</DOType>
		<DOType id="SIPROTEC5_DOType_INC_YLTC_controllable_with_dataNs_V09.50.01_V09.50.01" cdc="INC">
			<DA name="origin" bType="Struct" type="SIPROTEC5_DAType_origin_V09.50.01_V09.50.01" fc="ST"/>
			<DA name="ctlNum" bType="INT8U" fc="ST"/>
			<DA name="stVal" bType="INT32" dchg="true" fc="ST"/>
			<DA name="q" bType="Quality" qchg="true" fc="ST"/>
			<DA name="t" bType="Timestamp" fc="ST"/>
			<DA name="stSeld" bType="BOOLEAN" dchg="true" fc="ST"/>
			<DA name="opRcvd" bType="BOOLEAN" dchg="true" fc="OR"/>
			<DA name="opOk" bType="BOOLEAN" dchg="true" fc="OR"/>
			<DA name="tOpOk" bType="Timestamp" fc="OR"/>
			<DA name="ctlModel" bType="Enum" valKind="RO" type="SIPROTEC5_Textlist_ctlModel_dir_with_enh_sec_V09.50.01_V09.50.01" dchg="true" fc="CF">
				<Val>direct-with-enhanced-security</Val>
			</DA>
			<DA name="operTimeout" bType="INT32U" dchg="true" fc="CF">
				<Val>1000</Val>
			</DA>
			<DA name="units" bType="Struct" type="SIPROTEC5_DAType_Units_ms_V09.50.01_V09.50.01" dchg="true" fc="CF"/>
			<DA name="dataNs" bType="VisString255" valKind="RO" fc="EX">
				<Val>SIPROTEC5</Val>
			</DA>
			<DA name="Oper" bType="Struct" type="SIPROTEC5_DAType_Oper_INT32_V09.50.01_V09.50.01" fc="CO"/>
			<DA name="Cancel" bType="Struct" type="SIPROTEC5_DAType_Cancel_INT32_V09.50.01_V09.50.01" fc="CO"/>
		</DOType>
		<DOType id="SIPROTEC5_DOType_ComProxy_MV_V09.50.01_V09.50.01" cdc="MV">
			<DA name="mag" bType="Struct" type="SIPROTEC5_DAType_AnalogValue_FLOAT32_V09.50.01_V09.50.01" dupd="true" fc="MX"/>
			<DA name="q" bType="Quality" qchg="true" fc="MX"/>
			<DA name="t" bType="Timestamp" fc="MX"/>
			<DA name="units" bType="Struct" type="SIPROTEC5_DAType_Units_1_V09.50.01_V09.50.01" dchg="true" fc="CF"/>
			<DA name="dataNs" bType="VisString255" valKind="RO" fc="EX">
				<Val>SIPROTEC5</Val>
			</DA>
		</DOType>
		<DOType id="SIPROTEC5_DOType_SPC_without_feedback_UDEF_with_dataNs_V09.50.01_V09.50.01" cdc="SPC">
			<DA name="origin" bType="Struct" type="SIPROTEC5_DAType_origin_V09.50.01_V09.50.01" fc="ST"/>
			<DA name="ctlNum" bType="INT8U" fc="ST"/>
			<DA name="stVal" bType="BOOLEAN" dchg="true" fc="ST"/>
			<DA name="q" bType="Quality" qchg="true" fc="ST"/>
			<DA name="t" bType="Timestamp" fc="ST"/>
			<DA name="stSeld" bType="BOOLEAN" dchg="true" fc="ST"/>
			<DA name="opRcvd" bType="BOOLEAN" dchg="true" fc="OR"/>
			<DA name="opOk" bType="BOOLEAN" dchg="true" fc="OR"/>
			<DA name="tOpOk" bType="Timestamp" fc="OR"/>
			<DA name="ctlModel" bType="Enum" type="SIPROTEC5_Textlist_ctlModel_sbo_and_dir_with_nor_sec_V09.50.01_V09.50.01" fc="CF">
				<Val>direct-with-normal-security</Val>
			</DA>
			<DA name="sboTimeout" bType="INT32U" dchg="true" fc="CF">
				<Val>10000</Val>
			</DA>
			<DA name="sboClass" bType="Enum" valKind="RO" type="SIPROTEC5_Textlist_sboClass_V09.50.01_V09.50.01" dchg="true" fc="CF">
				<Val>operate-once</Val>
			</DA>
			<DA name="dataNs" bType="VisString255" valKind="RO" fc="EX">
				<Val>SIPROTEC5/userdefined</Val>
			</DA>
			<DA name="SBO" bType="VisString129" fc="CO">
				<ProtNs type="8-MMS">IEC 61850-8-1:2003</ProtNs>
			</DA>
			<DA name="Oper" bType="Struct" type="SIPROTEC5_DAType_Oper_Boolean_V09.50.01_V09.50.01" fc="CO"/>
			<DA name="Cancel" bType="Struct" type="SIPROTEC5_DAType_Cancel_Boolean_V09.50.01_V09.50.01" fc="CO"/>
		</DOType>
		<DOType id="SIPROTEC5_DOType_ACD_NonPhsSel_Without_DirRouting_V09.50.01_V09.50.01" cdc="ACD">
			<DA name="general" bType="BOOLEAN" dchg="true" fc="ST"/>
			<DA name="dirGeneral" bType="Enum" type="SIPROTEC5_Textlist_DirectionGeneral_V09.50.01_V09.50.01" dchg="true" fc="ST"/>
			<DA name="q" bType="Quality" qchg="true" fc="ST"/>
			<DA name="t" bType="Timestamp" fc="ST"/>
		</DOType>
		<DOType id="SIPROTEC5_DOType_ACT_1_3pol_GABCN_V09.50.01_V09.50.01" cdc="ACT">
			<DA name="general" bType="BOOLEAN" dchg="true" fc="ST"/>
			<DA name="phsA" bType="BOOLEAN" dchg="true" fc="ST"/>
			<DA name="phsB" bType="BOOLEAN" dchg="true" fc="ST"/>
			<DA name="phsC" bType="BOOLEAN" dchg="true" fc="ST"/>
			<DA name="neut" bType="BOOLEAN" dchg="true" fc="ST"/>
			<DA name="q" bType="Quality" qchg="true" fc="ST"/>
			<DA name="t" bType="Timestamp" fc="ST"/>
		</DOType>
		<DOType id="SIPROTEC5_DOType_ACD_PhsSel_GABCN_Without_DirRouting_with_dataNs_V09.50.01_V09.50.01" cdc="ACD">
			<DA name="general" bType="BOOLEAN" dchg="true" fc="ST"/>
			<DA name="dirGeneral" bType="Enum" type="SIPROTEC5_Textlist_DirectionGeneral_V09.50.01_V09.50.01" dchg="true" fc="ST"/>
			<DA name="phsA" bType="BOOLEAN" dchg="true" fc="ST"/>
			<DA name="dirPhsA" bType="Enum" type="SIPROTEC5_Textlist_DirectionPhase_V09.50.01_V09.50.01" dchg="true" fc="ST"/>
			<DA name="phsB" bType="BOOLEAN" dchg="true" fc="ST"/>
			<DA name="dirPhsB" bType="Enum" type="SIPROTEC5_Textlist_DirectionPhase_V09.50.01_V09.50.01" dchg="true" fc="ST"/>
			<DA name="phsC" bType="BOOLEAN" dchg="true" fc="ST"/>
			<DA name="dirPhsC" bType="Enum" type="SIPROTEC5_Textlist_DirectionPhase_V09.50.01_V09.50.01" dchg="true" fc="ST"/>
			<DA name="neut" bType="BOOLEAN" dchg="true" fc="ST"/>
			<DA name="dirNeut" bType="Enum" type="SIPROTEC5_Textlist_DirectionPhase_V09.50.01_V09.50.01" dchg="true" fc="ST"/>
			<DA name="q" bType="Quality" qchg="true" fc="ST"/>
			<DA name="t" bType="Timestamp" fc="ST"/>
			<DA name="dataNs" bType="VisString255" valKind="RO" fc="EX">
				<Val>SIPROTEC5</Val>
			</DA>
		</DOType>
		<DOType id="SIPROTEC5_DOType_ComProxy_DPC_V09.50.01_V09.50.01" cdc="DPC">
			<DA name="origin" bType="Struct" type="SIPROTEC5_DAType_origin_V09.50.01_V09.50.01" fc="ST"/>
			<DA name="ctlNum" bType="INT8U" fc="ST"/>
			<DA name="stVal" bType="Dbpos" dchg="true" fc="ST"/>
			<DA name="q" bType="Quality" qchg="true" fc="ST"/>
			<DA name="t" bType="Timestamp" fc="ST"/>
			<DA name="stSeld" bType="BOOLEAN" dchg="true" fc="ST"/>
			<DA name="opRcvd" bType="BOOLEAN" dchg="true" fc="OR"/>
			<DA name="opOk" bType="BOOLEAN" dchg="true" fc="OR"/>
			<DA name="tOpOk" bType="Timestamp" fc="OR"/>
			<DA name="ctlModel" bType="Enum" valKind="RO" type="SIPROTEC5_Textlist_ctlModel_status_only_V09.50.01_V09.50.01" dchg="true" fc="CF">
				<Val>status-only</Val>
			</DA>
			<DA name="dataNs" bType="VisString255" valKind="RO" fc="EX">
				<Val>SIPROTEC5</Val>
			</DA>
		</DOType>
		<DOType id="SIPROTEC5_DOType_BCR_V09.50.01_V09.50.01" cdc="BCR">
			<DA name="actVal" bType="INT64" dchg="true" fc="ST"/>
			<DA name="frVal" bType="INT64" dupd="true" fc="ST"/>
			<DA name="frTm" bType="Timestamp" fc="ST"/>
			<DA name="q" bType="Quality" qchg="true" fc="ST"/>
			<DA name="t" bType="Timestamp" fc="ST"/>
			<DA name="units" bType="Struct" type="SIPROTEC5_DAType_Units_1_V09.50.01_V09.50.01" dchg="true" fc="CF"/>
			<DA name="pulsQty" bType="FLOAT32" valKind="RO" dchg="true" fc="CF">
				<Val>1</Val>
			</DA>
			<DA name="frEna" bType="BOOLEAN" valKind="RO" dchg="true" fc="CF">
				<Val>false</Val>
			</DA>
			<DA name="strTm" bType="Timestamp" valKind="RO" dchg="true" fc="CF"/>
			<DA name="frPd" bType="INT32" valKind="RO" dchg="true" fc="CF">
				<Val>0</Val>
			</DA>
			<DA name="frRs" bType="BOOLEAN" valKind="RO" dchg="true" fc="CF">
				<Val>false</Val>
			</DA>
		</DOType>
		<DOType id="SIPROTEC5_DOType_WYE_ABC_with_dataNs_V09.50.01_V09.50.01" cdc="WYE">
			<SDO name="phsA" type="SIPROTEC5_DOType_CMV_without_convertions_V09.50.01_V09.50.01"/>
			<SDO name="phsB" type="SIPROTEC5_DOType_CMV_without_convertions_V09.50.01_V09.50.01"/>
			<SDO name="phsC" type="SIPROTEC5_DOType_CMV_without_convertions_V09.50.01_V09.50.01"/>
			<DA name="dataNs" bType="VisString255" valKind="RO" fc="EX">
				<Val>SIPROTEC5</Val>
			</DA>
		</DOType>
		<DOType id="SIPROTEC5_DOType_DEL_with_dataNs_V09.50.01_V09.50.01" cdc="DEL">
			<SDO name="phsAB" type="SIPROTEC5_DOType_CMV_without_convertions_V09.50.01_V09.50.01"/>
			<SDO name="phsBC" type="SIPROTEC5_DOType_CMV_without_convertions_V09.50.01_V09.50.01"/>
			<SDO name="phsCA" type="SIPROTEC5_DOType_CMV_without_convertions_V09.50.01_V09.50.01"/>
			<DA name="dataNs" bType="VisString255" valKind="RO" fc="EX">
				<Val>SIPROTEC5</Val>
			</DA>
		</DOType>
		<DOType id="SIPROTEC5_DOType_ACD_PhsSel_GABCN_V09.50.01_V09.50.01" cdc="ACD">
			<DA name="general" bType="BOOLEAN" dchg="true" fc="ST"/>
			<DA name="dirGeneral" bType="Enum" type="SIPROTEC5_Textlist_DirectionGeneral_V09.50.01_V09.50.01" dchg="true" fc="ST"/>
			<DA name="phsA" bType="BOOLEAN" dchg="true" fc="ST"/>
			<DA name="dirPhsA" bType="Enum" type="SIPROTEC5_Textlist_DirectionPhase_V09.50.01_V09.50.01" dchg="true" fc="ST"/>
			<DA name="phsB" bType="BOOLEAN" dchg="true" fc="ST"/>
			<DA name="dirPhsB" bType="Enum" type="SIPROTEC5_Textlist_DirectionPhase_V09.50.01_V09.50.01" dchg="true" fc="ST"/>
			<DA name="phsC" bType="BOOLEAN" dchg="true" fc="ST"/>
			<DA name="dirPhsC" bType="Enum" type="SIPROTEC5_Textlist_DirectionPhase_V09.50.01_V09.50.01" dchg="true" fc="ST"/>
			<DA name="neut" bType="BOOLEAN" dchg="true" fc="ST"/>
			<DA name="dirNeut" bType="Enum" type="SIPROTEC5_Textlist_DirectionPhase_V09.50.01_V09.50.01" dchg="true" fc="ST"/>
			<DA name="q" bType="Quality" qchg="true" fc="ST"/>
			<DA name="t" bType="Timestamp" fc="ST"/>
		</DOType>
		<DOType id="SIPROTEC5_DOType_ACT_1_3pol_GABC_simpleConversions_with_dataNs_V09.50.01_V09.50.01" cdc="ACT">
			<DA name="general" bType="BOOLEAN" dchg="true" fc="ST"/>
			<DA name="phsA" bType="BOOLEAN" dchg="true" fc="ST"/>
			<DA name="phsB" bType="BOOLEAN" dchg="true" fc="ST"/>
			<DA name="phsC" bType="BOOLEAN" dchg="true" fc="ST"/>
			<DA name="q" bType="Quality" qchg="true" fc="ST"/>
			<DA name="t" bType="Timestamp" fc="ST"/>
			<DA name="dataNs" bType="VisString255" valKind="RO" fc="EX">
				<Val>SIPROTEC5</Val>
			</DA>
		</DOType>
		<DOType id="SIPROTEC5_DOType_WYE_ABC_mag_with_dataNs_V09.50.01_V09.50.01" cdc="WYE">
			<SDO name="phsA" type="SIPROTEC5_DOType_CMV_mag_without_convertions_V09.50.01_V09.50.01"/>
			<SDO name="phsB" type="SIPROTEC5_DOType_CMV_mag_without_convertions_V09.50.01_V09.50.01"/>
			<SDO name="phsC" type="SIPROTEC5_DOType_CMV_mag_without_convertions_V09.50.01_V09.50.01"/>
			<DA name="dataNs" bType="VisString255" valKind="RO" fc="EX">
				<Val>SIPROTEC5</Val>
			</DA>
		</DOType>
		<DOType id="SIPROTEC5_DOType_ACT_1_3pol_GABC_simpleConversions_V09.50.01_V09.50.01" cdc="ACT">
			<DA name="general" bType="BOOLEAN" dchg="true" fc="ST"/>
			<DA name="phsA" bType="BOOLEAN" dchg="true" fc="ST"/>
			<DA name="phsB" bType="BOOLEAN" dchg="true" fc="ST"/>
			<DA name="phsC" bType="BOOLEAN" dchg="true" fc="ST"/>
			<DA name="q" bType="Quality" qchg="true" fc="ST"/>
			<DA name="t" bType="Timestamp" fc="ST"/>
		</DOType>
		<DOType id="SIPROTEC5_DOType_ACD_PhsSel_GABC_Without_DirRouting_and_PhaseRouting_V09.50.01_V09.50.01" cdc="ACD">
			<DA name="general" bType="BOOLEAN" dchg="true" fc="ST"/>
			<DA name="dirGeneral" bType="Enum" type="SIPROTEC5_Textlist_DirectionGeneral_V09.50.01_V09.50.01" dchg="true" fc="ST"/>
			<DA name="phsA" bType="BOOLEAN" dchg="true" fc="ST"/>
			<DA name="dirPhsA" bType="Enum" type="SIPROTEC5_Textlist_DirectionPhase_V09.50.01_V09.50.01" dchg="true" fc="ST"/>
			<DA name="phsB" bType="BOOLEAN" dchg="true" fc="ST"/>
			<DA name="dirPhsB" bType="Enum" type="SIPROTEC5_Textlist_DirectionPhase_V09.50.01_V09.50.01" dchg="true" fc="ST"/>
			<DA name="phsC" bType="BOOLEAN" dchg="true" fc="ST"/>
			<DA name="dirPhsC" bType="Enum" type="SIPROTEC5_Textlist_DirectionPhase_V09.50.01_V09.50.01" dchg="true" fc="ST"/>
			<DA name="q" bType="Quality" qchg="true" fc="ST"/>
			<DA name="t" bType="Timestamp" fc="ST"/>
		</DOType>
		<DOType id="SIPROTEC5_DOType_ENS_LSVS_DiagErrSmv_with_dataNs_V09.50.01_V09.50.01" cdc="ENS">
			<DA name="stVal" bType="Enum" type="SIPROTEC5_Textlist_LSVS_DiagErrSmv_V09.50.01_V09.50.01" dchg="true" fc="ST"/>
			<DA name="q" bType="Quality" qchg="true" fc="ST"/>
			<DA name="t" bType="Timestamp" fc="ST"/>
			<DA name="dataNs" bType="VisString255" valKind="RO" fc="EX">
				<Val>SIPROTEC5</Val>
			</DA>
		</DOType>
		<DOType id="SIPROTEC5_DOType_ENS_LSVS_DiagSynch_with_dataNs_V09.50.01_V09.50.01" cdc="ENS">
			<DA name="stVal" bType="Enum" type="SIPROTEC5_Textlist_LSVS_DiagSynch_V09.50.01_V09.50.01" dchg="true" fc="ST"/>
			<DA name="q" bType="Quality" qchg="true" fc="ST"/>
			<DA name="t" bType="Timestamp" fc="ST"/>
			<DA name="dataNs" bType="VisString255" valKind="RO" fc="EX">
				<Val>SIPROTEC5</Val>
			</DA>
		</DOType>
		<DOType id="SIPROTEC5_DOType_VSS_with_dataNs_V09.50.01_V09.50.01" cdc="VSS">
			<DA name="stVal" bType="VisString255" dchg="true" fc="ST"/>
			<DA name="q" bType="Quality" qchg="true" fc="ST"/>
			<DA name="t" bType="Timestamp" fc="ST"/>
			<DA name="dataNs" bType="VisString255" valKind="RO" fc="EX">
				<Val>SIPROTEC5</Val>
			</DA>
		</DOType>
		<DOType id="SIPROTEC5_DOType_INS_V09.50.01_V09.50.01" cdc="INS">
			<DA name="stVal" bType="INT32" dchg="true" fc="ST"/>
			<DA name="q" bType="Quality" qchg="true" fc="ST"/>
			<DA name="t" bType="Timestamp" fc="ST"/>
		</DOType>
		<DOType id="SIPROTEC5_DOType_SPC_dir_with_nor_sec_FnKey_toggle_on_off_with_InitVal_and_dataNs_V09.50.01_V09.50.01" cdc="SPC">
			<DA name="origin" bType="Struct" type="SIPROTEC5_DAType_origin_V09.50.01_V09.50.01" fc="ST"/>
			<DA name="ctlNum" bType="INT8U" fc="ST"/>
			<DA name="stVal" bType="BOOLEAN" dchg="true" fc="ST"/>
			<DA name="q" bType="Quality" qchg="true" fc="ST"/>
			<DA name="t" bType="Timestamp" fc="ST"/>
			<DA name="opRcvd" bType="BOOLEAN" dchg="true" fc="OR"/>
			<DA name="opOk" bType="BOOLEAN" dchg="true" fc="OR"/>
			<DA name="tOpOk" bType="Timestamp" fc="OR"/>
			<DA name="ctlModel" bType="Enum" valKind="RO" type="SIPROTEC5_Textlist_ctlModel_dir_with_nor_sec_V09.50.01_V09.50.01" dchg="true" fc="CF">
				<Val>direct-with-normal-security</Val>
			</DA>
			<DA name="dataNs" bType="VisString255" valKind="RO" fc="EX">
				<Val>SIPROTEC5</Val>
			</DA>
			<DA name="Oper" bType="Struct" type="SIPROTEC5_DAType_Oper_Boolean_V09.50.01_V09.50.01" fc="CO"/>
		</DOType>
		<DOType id="SIPROTEC5_DOType_SPC_dir_with_enh_sec_FnKey_on_V09.50.01_V09.50.01" cdc="SPC">
			<DA name="origin" bType="Struct" type="SIPROTEC5_DAType_origin_V09.50.01_V09.50.01" fc="ST"/>
			<DA name="ctlNum" bType="INT8U" fc="ST"/>
			<DA name="stVal" bType="BOOLEAN" dchg="true" fc="ST"/>
			<DA name="q" bType="Quality" qchg="true" fc="ST"/>
			<DA name="t" bType="Timestamp" fc="ST"/>
			<DA name="opRcvd" bType="BOOLEAN" dchg="true" fc="OR"/>
			<DA name="opOk" bType="BOOLEAN" dchg="true" fc="OR"/>
			<DA name="tOpOk" bType="Timestamp" fc="OR"/>
			<DA name="ctlModel" bType="Enum" valKind="RO" type="SIPROTEC5_Textlist_ctlModel_dir_with_enh_sec_V09.50.01_V09.50.01" dchg="true" fc="CF">
				<Val>direct-with-enhanced-security</Val>
			</DA>
			<DA name="operTimeout" bType="INT32U" dchg="true" fc="CF">
				<Val>0</Val>
			</DA>
			<DA name="Oper" bType="Struct" type="SIPROTEC5_DAType_Oper_Boolean_V09.50.01_V09.50.01" fc="CO"/>
		</DOType>
		<DOType id="SIPROTEC5_DOType_MV_Float_V09.50.01_V09.50.01" cdc="MV">
			<DA name="instMag" bType="Struct" type="SIPROTEC5_DAType_AnalogValue_FLOAT32_V09.50.01_V09.50.01" fc="MX"/>
			<DA name="mag" bType="Struct" type="SIPROTEC5_DAType_AnalogValue_FLOAT32_V09.50.01_V09.50.01" dchg="true" fc="MX"/>
			<DA name="q" bType="Quality" qchg="true" fc="MX"/>
			<DA name="t" bType="Timestamp" fc="MX"/>
			<DA name="units" bType="Struct" type="SIPROTEC5_DAType_Units_1_V09.50.01_V09.50.01" dchg="true" fc="CF"/>
			<DA name="db" bType="INT32U" valKind="Set" dchg="true" fc="CF">
				<Val>0</Val>
			</DA>
			<DA name="dbRef" bType="FLOAT32" valKind="Set" dchg="true" fc="CF">
				<Val>0</Val>
			</DA>
		</DOType>
		<DOType id="SIPROTEC5_DOType_WYE_ABC_mag_V09.50.01_V09.50.01" cdc="WYE">
			<SDO name="phsA" type="SIPROTEC5_DOType_CMV_mag_without_convertions_V09.50.01_V09.50.01"/>
			<SDO name="phsB" type="SIPROTEC5_DOType_CMV_mag_without_convertions_V09.50.01_V09.50.01"/>
			<SDO name="phsC" type="SIPROTEC5_DOType_CMV_mag_without_convertions_V09.50.01_V09.50.01"/>
		</DOType>
		<DOType id="SIPROTEC5_DOType_DEL_mag_V09.50.01_V09.50.01" cdc="DEL">
			<SDO name="phsAB" type="SIPROTEC5_DOType_CMV_mag_without_convertions_V09.50.01_V09.50.01"/>
			<SDO name="phsBC" type="SIPROTEC5_DOType_CMV_mag_without_convertions_V09.50.01_V09.50.01"/>
			<SDO name="phsCA" type="SIPROTEC5_DOType_CMV_mag_without_convertions_V09.50.01_V09.50.01"/>
		</DOType>
		<DOType id="SIPROTEC5_DOType_CMV_mag_without_convertions_V09.50.01_V09.50.01" cdc="CMV">
			<DA name="instCVal" bType="Struct" type="SIPROTEC5_DAType_Vector_mag_V09.50.01_V09.50.01" fc="MX"/>
			<DA name="cVal" bType="Struct" type="SIPROTEC5_DAType_Vector_mag_V09.50.01_V09.50.01" dchg="true" fc="MX"/>
			<DA name="q" bType="Quality" qchg="true" fc="MX"/>
			<DA name="t" bType="Timestamp" fc="MX"/>
			<DA name="units" bType="Struct" type="SIPROTEC5_DAType_Units_1_V09.50.01_V09.50.01" dchg="true" fc="CF"/>
			<DA name="db" bType="INT32U" valKind="Set" dchg="true" fc="CF">
				<Val>0</Val>
			</DA>
			<DA name="dbRef" bType="FLOAT32" valKind="Set" dchg="true" fc="CF">
				<Val>0</Val>
			</DA>
		</DOType>
		<DOType id="SIPROTEC5_DOType_WYE_ABCRes_mag_V09.50.01_V09.50.01" cdc="WYE">
			<SDO name="phsA" type="SIPROTEC5_DOType_CMV_mag_without_convertions_V09.50.01_V09.50.01"/>
			<SDO name="phsB" type="SIPROTEC5_DOType_CMV_mag_without_convertions_V09.50.01_V09.50.01"/>
			<SDO name="phsC" type="SIPROTEC5_DOType_CMV_mag_without_convertions_V09.50.01_V09.50.01"/>
			<SDO name="res" type="SIPROTEC5_DOType_CMV_mag_without_convertions_V09.50.01_V09.50.01"/>
		</DOType>
		<DOType id="SIPROTEC5_DOType_MV_Float_with_dataNs_V09.50.01_V09.50.01" cdc="MV">
			<DA name="instMag" bType="Struct" type="SIPROTEC5_DAType_AnalogValue_FLOAT32_V09.50.01_V09.50.01" fc="MX"/>
			<DA name="mag" bType="Struct" type="SIPROTEC5_DAType_AnalogValue_FLOAT32_V09.50.01_V09.50.01" dchg="true" fc="MX"/>
			<DA name="q" bType="Quality" qchg="true" fc="MX"/>
			<DA name="t" bType="Timestamp" fc="MX"/>
			<DA name="units" bType="Struct" type="SIPROTEC5_DAType_Units_1_V09.50.01_V09.50.01" dchg="true" fc="CF"/>
			<DA name="db" bType="INT32U" valKind="Set" dchg="true" fc="CF">
				<Val>0</Val>
			</DA>
			<DA name="dbRef" bType="FLOAT32" valKind="Set" dchg="true" fc="CF">
				<Val>0</Val>
			</DA>
			<DA name="dataNs" bType="VisString255" valKind="RO" fc="EX">
				<Val>SIPROTEC5</Val>
			</DA>
		</DOType>
		<DOType id="SIPROTEC5_DOType_MV_UDEF_with_dataNs_V09.50.01_V09.50.01" cdc="MV">
			<DA name="instMag" bType="Struct" type="SIPROTEC5_DAType_AnalogValue_FLOAT32_V09.50.01_V09.50.01" fc="MX"/>
			<DA name="mag" bType="Struct" type="SIPROTEC5_DAType_AnalogValue_FLOAT32_V09.50.01_V09.50.01" dchg="true" fc="MX"/>
			<DA name="q" bType="Quality" qchg="true" fc="MX"/>
			<DA name="t" bType="Timestamp" fc="MX"/>
			<DA name="units" bType="Struct" type="SIPROTEC5_DAType_Units_with_visible_SIUnit_multiplier_posAfterDecPoint_V09.50.01_V09.50.01" dchg="true" fc="CF"/>
			<DA name="db" bType="INT32U" valKind="Set" dchg="true" fc="CF">
				<Val>10000</Val>
			</DA>
			<DA name="dbRef" bType="FLOAT32" valKind="Set" dchg="true" fc="CF">
				<Val>0</Val>
			</DA>
			<DA name="dataNs" bType="VisString255" valKind="RO" fc="EX">
				<Val>SIPROTEC5/userdefined</Val>
			</DA>
		</DOType>
		<DOType id="SIPROTEC5_DOType_SEQ_V09.50.01_V09.50.01" cdc="SEQ">
			<SDO name="c1" type="SIPROTEC5_DOType_CMV_without_convertions_V09.50.01_V09.50.01"/>
			<SDO name="c2" type="SIPROTEC5_DOType_CMV_without_convertions_V09.50.01_V09.50.01"/>
			<SDO name="c3" type="SIPROTEC5_DOType_CMV_without_convertions_V09.50.01_V09.50.01"/>
			<DA name="seqT" bType="Enum" type="SIPROTEC5_Textlist_SEQtype_V09.50.01_V09.50.01" fc="MX"/>
		</DOType>
		<DOType id="SIPROTEC5_DOType_ACD_NonPhsSel_Without_DirRouting_with_dataNs_V09.50.01_V09.50.01" cdc="ACD">
			<DA name="general" bType="BOOLEAN" dchg="true" fc="ST"/>
			<DA name="dirGeneral" bType="Enum" type="SIPROTEC5_Textlist_DirectionGeneral_V09.50.01_V09.50.01" dchg="true" fc="ST"/>
			<DA name="q" bType="Quality" qchg="true" fc="ST"/>
			<DA name="t" bType="Timestamp" fc="ST"/>
			<DA name="dataNs" bType="VisString255" valKind="RO" fc="EX">
				<Val>SIPROTEC5</Val>
			</DA>
		</DOType>
		<DOType id="SIPROTEC5_DOType_ACT_3pol_V09.50.01_V09.50.01" cdc="ACT">
			<DA name="general" bType="BOOLEAN" dchg="true" fc="ST"/>
			<DA name="q" bType="Quality" qchg="true" fc="ST"/>
			<DA name="t" bType="Timestamp" fc="ST"/>
		</DOType>
		<DOType id="SIPROTEC5_DOType_SPC_statusOnly_and_dir_with_nor_sec_and_dataNs_V09.50.01_V09.50.01" cdc="SPC">
			<DA name="origin" bType="Struct" type="SIPROTEC5_DAType_origin_V09.50.01_V09.50.01" fc="ST"/>
			<DA name="ctlNum" bType="INT8U" fc="ST"/>
			<DA name="stVal" bType="BOOLEAN" dchg="true" fc="ST"/>
			<DA name="q" bType="Quality" qchg="true" fc="ST"/>
			<DA name="t" bType="Timestamp" fc="ST"/>
			<DA name="opRcvd" bType="BOOLEAN" dchg="true" fc="OR"/>
			<DA name="opOk" bType="BOOLEAN" dchg="true" fc="OR"/>
			<DA name="tOpOk" bType="Timestamp" fc="OR"/>
			<DA name="ctlModel" bType="Enum" valKind="RO" type="SIPROTEC5_Textlist_ctlModel_status_only_and_dir_with_nor_sec_V09.50.01_V09.50.01" dchg="true" fc="CF">
				<Val>direct-with-normal-security</Val>
			</DA>
			<DA name="dataNs" bType="VisString255" valKind="RO" fc="EX">
				<Val>SIPROTEC5</Val>
			</DA>
			<DA name="Oper" bType="Struct" type="SIPROTEC5_DAType_Oper_Boolean_V09.50.01_V09.50.01" fc="CO"/>
		</DOType>
		<DOType id="SIPROTEC5_DOType_ACT_UDEF_with_dataNs_V09.50.01_V09.50.01" cdc="ACT">
			<DA name="general" bType="BOOLEAN" dchg="true" fc="ST"/>
			<DA name="phsA" bType="BOOLEAN" dchg="true" fc="ST"/>
			<DA name="phsB" bType="BOOLEAN" dchg="true" fc="ST"/>
			<DA name="phsC" bType="BOOLEAN" dchg="true" fc="ST"/>
			<DA name="neut" bType="BOOLEAN" dchg="true" fc="ST"/>
			<DA name="q" bType="Quality" qchg="true" fc="ST"/>
			<DA name="t" bType="Timestamp" fc="ST"/>
			<DA name="dataNs" bType="VisString255" valKind="RO" fc="EX">
				<Val>SIPROTEC5</Val>
			</DA>
		</DOType>
		<DOType id="SIPROTEC5_DOType_ASG_FLOAT32_readOnly_V09.50.01_V09.50.01" cdc="ASG">
			<DA name="setMag" bType="Struct" type="SIPROTEC5_DAType_AnalogValue_FLOAT32_readOnly_V09.50.01_V09.50.01" fc="SE"/>
			<DA name="units" bType="Struct" type="SIPROTEC5_DAType_Units_1_V09.50.01_V09.50.01" dchg="true" fc="CF"/>
			<DA name="minVal" bType="Struct" type="SIPROTEC5_DAType_AnalogValue_FLOAT32_readOnly_V09.50.01_V09.50.01" dchg="true" fc="CF"/>
			<DA name="maxVal" bType="Struct" type="SIPROTEC5_DAType_AnalogValue_FLOAT32_readOnly_V09.50.01_V09.50.01" dchg="true" fc="CF"/>
			<DA name="stepSize" bType="Struct" type="SIPROTEC5_DAType_AnalogValue_FLOAT32_readOnly_V09.50.01_V09.50.01" dchg="true" fc="CF"/>
		</DOType>
		<DOType id="SIPROTEC5_DOType_SAV_VDEWChannelNumber_V09.50.01_V09.50.01" cdc="SAV">
			<DA name="instMag" bType="Struct" type="SIPROTEC5_DAType_AnalogValue_INT32_V09.50.01_V09.50.01" fc="MX"/>
			<DA name="q" bType="Quality" qchg="true" fc="MX"/>
			<DA name="t" bType="Timestamp" fc="MX"/>
			<DA name="units" bType="Struct" type="SIPROTEC5_DAType_Units_1_V09.50.01_V09.50.01" dchg="true" fc="CF"/>
			<DA name="sVC" bType="Struct" type="SIPROTEC5_DAType_ScaledValueConfig_readOnly_V09.50.01_V09.50.01" dchg="true" fc="CF"/>
		</DOType>
		<DOType id="SIPROTEC5_DOType_ENG_TextList_Trp_edit_V09.50.01_V09.50.01" cdc="ENG">
			<DA name="setVal" bType="Enum" valKind="Set" type="SIPROTEC5_Textlist_Trp_V09.50.01_V09.50.01" fc="SE"/>
		</DOType>
		<DOType id="SIPROTEC5_DOType_ASG_FLOAT32_edit_V09.50.01_V09.50.01" cdc="ASG">
			<DA name="setMag" bType="Struct" type="SIPROTEC5_DAType_AnalogValue_FLOAT32_V09.50.01_V09.50.01" fc="SE"/>
			<DA name="units" bType="Struct" type="SIPROTEC5_DAType_Units_1_V09.50.01_V09.50.01" dchg="true" fc="CF"/>
			<DA name="minVal" bType="Struct" type="SIPROTEC5_DAType_AnalogValue_FLOAT32_readOnly_V09.50.01_V09.50.01" dchg="true" fc="CF"/>
			<DA name="maxVal" bType="Struct" type="SIPROTEC5_DAType_AnalogValue_FLOAT32_readOnly_V09.50.01_V09.50.01" dchg="true" fc="CF"/>
			<DA name="stepSize" bType="Struct" type="SIPROTEC5_DAType_AnalogValue_FLOAT32_readOnly_V09.50.01_V09.50.01" dchg="true" fc="CF"/>
		</DOType>
		<DOType id="SIPROTEC5_DOType_ENG_TextList_AccMeas_edit_V09.50.01_V09.50.01" cdc="ENG">
			<DA name="setVal" bType="Enum" valKind="Set" type="SIPROTEC5_EnType_InstrumentTransformerMeasurementRatingKind_V09.50.01_V09.50.01" fc="SE"/>
		</DOType>
		<DOType id="SIPROTEC5_DOType_ENG_TextList_AccPro_edit_V09.50.01_V09.50.01" cdc="ENG">
			<DA name="setVal" bType="Enum" valKind="Set" type="SIPROTEC5_EnType_InstrumentTransformerProtectionRatingKind_V09.50.01_V09.50.01" fc="SE"/>
		</DOType>
		<DOType id="SIPROTEC5_DOType_VSD_readOnly_V09.50.01_V09.50.01" cdc="VSD">
			<DA name="val" bType="VisString255" valKind="RO" fc="DC"/>
		</DOType>
		<DOType id="SIPROTEC5_DOType_ING_INT32_div_readOnly_V09.50.01_V09.50.01" cdc="ING">
			<DA name="setVal" bType="INT32" valKind="RO" fc="SE"/>
			<DA name="minVal" bType="INT32" valKind="RO" dchg="true" fc="CF">
				<Val>0</Val>
			</DA>
			<DA name="maxVal" bType="INT32" valKind="RO" dchg="true" fc="CF">
				<Val>0</Val>
			</DA>
			<DA name="stepSize" bType="INT32U" valKind="RO" dchg="true" fc="CF">
				<Val>0</Val>
			</DA>
		</DOType>
		<DOType id="SIPROTEC5_DOType_ENS_SwitchType_V09.50.01_V09.50.01" cdc="ENS">
			<DA name="stVal" bType="Enum" type="SIPROTEC5_EnType_SwitchType_V09.50.01_V09.50.01" dchg="true" fc="ST"/>
			<DA name="q" bType="Quality" qchg="true" fc="ST"/>
			<DA name="t" bType="Timestamp" fc="ST"/>
		</DOType>
		<DOType id="SIPROTEC5_DOType_Mod_controllable_OnOff_with_InitVal_V09.50.01_V09.50.01" cdc="ENC">
			<DA name="origin" bType="Struct" type="SIPROTEC5_DAType_origin_V09.50.01_V09.50.01" fc="ST"/>
			<DA name="ctlNum" bType="INT8U" fc="ST"/>
			<DA name="stVal" bType="Enum" type="SIPROTEC5_Textlist_Behavior_OnOff_V09.50.01_V09.50.01" dchg="true" fc="ST"/>
			<DA name="q" bType="Quality" qchg="true" fc="ST"/>
			<DA name="t" bType="Timestamp" fc="ST"/>
			<DA name="ctlModel" bType="Enum" valKind="RO" type="SIPROTEC5_Textlist_ctlModel_dir_with_nor_sec_V09.50.01_V09.50.01" dchg="true" fc="CF">
				<Val>direct-with-normal-security</Val>
			</DA>
			<DA name="Oper" bType="Struct" type="SIPROTEC5_DAType_Oper_Mod_OnOff_V09.50.01_V09.50.01" fc="CO"/>
		</DOType>
		<DOType id="SIPROTEC5_DOType_ORG_external_V09.50.01_V09.50.01" cdc="ORG">
			<DA name="setSrcRef" bType="ObjRef" valKind="RO" dchg="true" fc="SP" valImport="true"/>
		</DOType>
		<DOType id="SIPROTEC5_DOType_ENS_LGOS_DiagError_with_dataNs_V09.50.01_V09.50.01" cdc="ENS">
			<DA name="stVal" bType="Enum" type="SIPROTEC5_Textlist_LGOS_DiagError_V09.50.01_V09.50.01" dchg="true" fc="ST"/>
			<DA name="q" bType="Quality" qchg="true" fc="ST"/>
			<DA name="t" bType="Timestamp" fc="ST"/>
			<DA name="dataNs" bType="VisString255" valKind="RO" fc="EX">
				<Val>SIPROTEC5</Val>
			</DA>
		</DOType>
		<DOType id="SIPROTEC5_DOType_DEL_V09.50.01_V09.50.01" cdc="DEL">
			<SDO name="phsAB" type="SIPROTEC5_DOType_CMV_without_convertions_V09.50.01_V09.50.01"/>
			<SDO name="phsBC" type="SIPROTEC5_DOType_CMV_without_convertions_V09.50.01_V09.50.01"/>
			<SDO name="phsCA" type="SIPROTEC5_DOType_CMV_without_convertions_V09.50.01_V09.50.01"/>
		</DOType>
		<DOType id="SIPROTEC5_DOType_CMV_without_convertions_V09.50.01_V09.50.01" cdc="CMV">
			<DA name="instCVal" bType="Struct" type="SIPROTEC5_DAType_Vector_V09.50.01_V09.50.01" fc="MX"/>
			<DA name="cVal" bType="Struct" type="SIPROTEC5_DAType_Vector_V09.50.01_V09.50.01" dchg="true" fc="MX"/>
			<DA name="q" bType="Quality" qchg="true" fc="MX"/>
			<DA name="t" bType="Timestamp" fc="MX"/>
			<DA name="units" bType="Struct" type="SIPROTEC5_DAType_Units_1_V09.50.01_V09.50.01" dchg="true" fc="CF"/>
			<DA name="db" bType="INT32U" valKind="Set" dchg="true" fc="CF">
				<Val>0</Val>
			</DA>
			<DA name="dbAng" bType="INT32U" valKind="Set" dchg="true" fc="CF">
				<Val>333</Val>
			</DA>
			<DA name="dbRef" bType="FLOAT32" valKind="Set" dchg="true" fc="CF">
				<Val>0</Val>
			</DA>
			<DA name="dbAngRef" bType="FLOAT32" valKind="Set" dchg="true" fc="CF">
				<Val>360</Val>
			</DA>
		</DOType>
		<DOType id="SIPROTEC5_DOType_WYE_ABCRes_V09.50.01_V09.50.01" cdc="WYE">
			<SDO name="phsA" type="SIPROTEC5_DOType_CMV_without_convertions_V09.50.01_V09.50.01"/>
			<SDO name="phsB" type="SIPROTEC5_DOType_CMV_without_convertions_V09.50.01_V09.50.01"/>
			<SDO name="phsC" type="SIPROTEC5_DOType_CMV_without_convertions_V09.50.01_V09.50.01"/>
			<SDO name="res" type="SIPROTEC5_DOType_CMV_without_convertions_V09.50.01_V09.50.01"/>
		</DOType>
		<DOType id="SIPROTEC5_DOType_CMV_with_dataNs_V09.50.01_V09.50.01" cdc="CMV">
			<DA name="instCVal" bType="Struct" type="SIPROTEC5_DAType_Vector_V09.50.01_V09.50.01" fc="MX"/>
			<DA name="cVal" bType="Struct" type="SIPROTEC5_DAType_Vector_V09.50.01_V09.50.01" dchg="true" fc="MX"/>
			<DA name="q" bType="Quality" qchg="true" fc="MX"/>
			<DA name="t" bType="Timestamp" fc="MX"/>
			<DA name="units" bType="Struct" type="SIPROTEC5_DAType_Units_1_V09.50.01_V09.50.01" dchg="true" fc="CF"/>
			<DA name="db" bType="INT32U" valKind="Set" dchg="true" fc="CF">
				<Val>0</Val>
			</DA>
			<DA name="dbAng" bType="INT32U" valKind="Set" dchg="true" fc="CF">
				<Val>333</Val>
			</DA>
			<DA name="dbRef" bType="FLOAT32" valKind="Set" dchg="true" fc="CF">
				<Val>0</Val>
			</DA>
			<DA name="dbAngRef" bType="FLOAT32" valKind="Set" dchg="true" fc="CF">
				<Val>360</Val>
			</DA>
			<DA name="dataNs" bType="VisString255" valKind="RO" fc="EX">
				<Val>SIPROTEC5</Val>
			</DA>
		</DOType>
		<DOType id="SIPROTEC5_DOType_ENS_TextList_CBT_TstExec_with_dataNs_V09.50.01_V09.50.01" cdc="ENS">
			<DA name="stVal" bType="Enum" type="SIPROTEC5_Textlist_CBT_TstExec_V09.50.01_V09.50.01" dupd="true" fc="ST"/>
			<DA name="q" bType="Quality" qchg="true" fc="ST"/>
			<DA name="t" bType="Timestamp" fc="ST"/>
			<DA name="dataNs" bType="VisString255" valKind="RO" fc="EX">
				<Val>SIPROTEC5</Val>
			</DA>
		</DOType>
		<DOType id="SIPROTEC5_DOType_ENS_TextList_CBT_TstTr_with_dataNs_V09.50.01_V09.50.01" cdc="ENS">
			<DA name="stVal" bType="Enum" type="SIPROTEC5_Textlist_CBT_TstTr_V09.50.01_V09.50.01" dupd="true" fc="ST"/>
			<DA name="q" bType="Quality" qchg="true" fc="ST"/>
			<DA name="t" bType="Timestamp" fc="ST"/>
			<DA name="dataNs" bType="VisString255" valKind="RO" fc="EX">
				<Val>SIPROTEC5</Val>
			</DA>
		</DOType>
		<DOType id="SIPROTEC5_DOType_ENS_TextList_CBT_TstCls_with_dataNs_V09.50.01_V09.50.01" cdc="ENS">
			<DA name="stVal" bType="Enum" type="SIPROTEC5_Textlist_CBT_TstCls_V09.50.01_V09.50.01" dupd="true" fc="ST"/>
			<DA name="q" bType="Quality" qchg="true" fc="ST"/>
			<DA name="t" bType="Timestamp" fc="ST"/>
			<DA name="dataNs" bType="VisString255" valKind="RO" fc="EX">
				<Val>SIPROTEC5</Val>
			</DA>
		</DOType>
		<DOType id="SIPROTEC5_DOType_ENS_TextList_CBT_TstCnc_with_dataNs_V09.50.01_V09.50.01" cdc="ENS">
			<DA name="stVal" bType="Enum" type="SIPROTEC5_Textlist_CBT_TstCnc_V09.50.01_V09.50.01" dupd="true" fc="ST"/>
			<DA name="q" bType="Quality" qchg="true" fc="ST"/>
			<DA name="t" bType="Timestamp" fc="ST"/>
			<DA name="dataNs" bType="VisString255" valKind="RO" fc="EX">
				<Val>SIPROTEC5</Val>
			</DA>
		</DOType>
		<DOType id="SIPROTEC5_DOType_DPC_CSWI_Pos_V09.50.01_V09.50.01" cdc="DPC">
			<DA name="origin" bType="Struct" type="SIPROTEC5_DAType_origin_V09.50.01_V09.50.01" fc="ST"/>
			<DA name="ctlNum" bType="INT8U" fc="ST"/>
			<DA name="stVal" bType="Dbpos" dchg="true" fc="ST"/>
			<DA name="q" bType="Quality" qchg="true" fc="ST"/>
			<DA name="t" bType="Timestamp" fc="ST"/>
			<DA name="stSeld" bType="BOOLEAN" dchg="true" fc="ST"/>
			<DA name="opRcvd" bType="BOOLEAN" dchg="true" fc="OR"/>
			<DA name="opOk" bType="BOOLEAN" dchg="true" fc="OR"/>
			<DA name="tOpOk" bType="Timestamp" fc="OR"/>
			<DA name="ctlModel" bType="Enum" valKind="RO" type="SIPROTEC5_Textlist_ctlModel_V09.50.01_V09.50.01" dchg="true" fc="CF">
				<Val>status-only</Val>
			</DA>
			<DA name="sboTimeout" bType="INT32U" valKind="RO" dchg="true" fc="CF">
				<Val>0</Val>
			</DA>
			<DA name="operTimeout" bType="INT32U" valKind="RO" dchg="true" fc="CF">
				<Val>0</Val>
			</DA>
			<DA name="SBO" bType="VisString129" fc="CO">
				<ProtNs type="8-MMS">IEC 61850-8-1:2003</ProtNs>
			</DA>
			<DA name="SBOw" bType="Struct" type="SIPROTEC5_DAType_Oper_Boolean_V09.50.01_V09.50.01" fc="CO"/>
			<DA name="Oper" bType="Struct" type="SIPROTEC5_DAType_Oper_Boolean_V09.50.01_V09.50.01" fc="CO"/>
			<DA name="Cancel" bType="Struct" type="SIPROTEC5_DAType_Cancel_Boolean_V09.50.01_V09.50.01" fc="CO"/>
		</DOType>
		<DOType id="SIPROTEC5_DOType_SPC_statusOnly_and_dir_with_nor_sec_V09.50.01_V09.50.01" cdc="SPC">
			<DA name="origin" bType="Struct" type="SIPROTEC5_DAType_origin_V09.50.01_V09.50.01" fc="ST"/>
			<DA name="ctlNum" bType="INT8U" fc="ST"/>
			<DA name="stVal" bType="BOOLEAN" dchg="true" fc="ST"/>
			<DA name="q" bType="Quality" qchg="true" fc="ST"/>
			<DA name="t" bType="Timestamp" fc="ST"/>
			<DA name="opRcvd" bType="BOOLEAN" dchg="true" fc="OR"/>
			<DA name="opOk" bType="BOOLEAN" dchg="true" fc="OR"/>
			<DA name="tOpOk" bType="Timestamp" fc="OR"/>
			<DA name="ctlModel" bType="Enum" valKind="RO" type="SIPROTEC5_Textlist_ctlModel_status_only_and_dir_with_nor_sec_V09.50.01_V09.50.01" dchg="true" fc="CF">
				<Val>direct-with-normal-security</Val>
			</DA>
			<DA name="Oper" bType="Struct" type="SIPROTEC5_DAType_Oper_Boolean_V09.50.01_V09.50.01" fc="CO"/>
		</DOType>
		<DOType id="SIPROTEC5_DOType_SPS_for_Input_V09.50.01_V09.50.01" cdc="SPS">
			<DA name="stVal" bType="BOOLEAN" dchg="true" fc="ST"/>
			<DA name="q" bType="Quality" qchg="true" fc="ST"/>
			<DA name="t" bType="Timestamp" fc="ST"/>
			<DA name="subEna" bType="BOOLEAN" fc="SV"/>
			<DA name="subVal" bType="BOOLEAN" fc="SV"/>
			<DA name="subQ" bType="Quality" fc="SV"/>
			<DA name="subID" bType="VisString64" fc="SV"/>
		</DOType>
		<DOType id="SIPROTEC5_DOType_DPC_Pos_status_only_V09.50.01_V09.50.01" cdc="DPC">
			<DA name="origin" bType="Struct" type="SIPROTEC5_DAType_origin_V09.50.01_V09.50.01" fc="ST"/>
			<DA name="ctlNum" bType="INT8U" fc="ST"/>
			<DA name="stVal" bType="Dbpos" dchg="true" fc="ST"/>
			<DA name="q" bType="Quality" qchg="true" fc="ST"/>
			<DA name="t" bType="Timestamp" fc="ST"/>
			<DA name="opRcvd" bType="BOOLEAN" dchg="true" fc="OR"/>
			<DA name="opOk" bType="BOOLEAN" dchg="true" fc="OR"/>
			<DA name="tOpOk" bType="Timestamp" fc="OR"/>
			<DA name="subEna" bType="BOOLEAN" fc="SV"/>
			<DA name="subVal" bType="Dbpos" fc="SV"/>
			<DA name="subQ" bType="Quality" fc="SV"/>
			<DA name="subID" bType="VisString64" fc="SV"/>
			<DA name="blkEna" bType="BOOLEAN" fc="BL"/>
			<DA name="ctlModel" bType="Enum" valKind="RO" type="SIPROTEC5_Textlist_ctlModel_status_only_V09.50.01_V09.50.01" dchg="true" fc="CF">
				<Val>status-only</Val>
			</DA>
		</DOType>
		<DOType id="SIPROTEC5_DOType_INS_INT32_V09.50.01_V09.50.01" cdc="INS">
			<DA name="stVal" bType="INT32" dchg="true" fc="ST"/>
			<DA name="q" bType="Quality" qchg="true" fc="ST"/>
			<DA name="t" bType="Timestamp" fc="ST"/>
		</DOType>
		<DOType id="SIPROTEC5_DOType_DPC_XCBR_Pos_V09.50.01_V09.50.01" cdc="DPC">
			<DA name="origin" bType="Struct" type="SIPROTEC5_DAType_origin_V09.50.01_V09.50.01" fc="ST"/>
			<DA name="ctlNum" bType="INT8U" fc="ST"/>
			<DA name="stVal" bType="Dbpos" dchg="true" fc="ST"/>
			<DA name="q" bType="Quality" qchg="true" fc="ST"/>
			<DA name="t" bType="Timestamp" fc="ST"/>
			<DA name="stSeld" bType="BOOLEAN" dchg="true" fc="ST"/>
			<DA name="opRcvd" bType="BOOLEAN" dchg="true" fc="OR"/>
			<DA name="opOk" bType="BOOLEAN" dchg="true" fc="OR"/>
			<DA name="tOpOk" bType="Timestamp" fc="OR"/>
			<DA name="subEna" bType="BOOLEAN" fc="SV"/>
			<DA name="subVal" bType="Dbpos" fc="SV"/>
			<DA name="subQ" bType="Quality" fc="SV"/>
			<DA name="subID" bType="VisString64" fc="SV"/>
			<DA name="blkEna" bType="BOOLEAN" fc="BL"/>
			<DA name="pulseConfig" bType="Struct" type="SIPROTEC5_DAType_PulseConfig_XCBR_V09.50.01_V09.50.01" dchg="true" fc="CF"/>
			<DA name="ctlModel" bType="Enum" valKind="RO" type="SIPROTEC5_Textlist_ctlModel_status_only_V09.50.01_V09.50.01" dchg="true" fc="CF">
				<Val>status-only</Val>
			</DA>
		</DOType>
		<DOType id="SIPROTEC5_DOType_SPC_status_only_V09.50.01_V09.50.01" cdc="SPC">
			<DA name="stVal" bType="BOOLEAN" dchg="true" fc="ST"/>
			<DA name="q" bType="Quality" qchg="true" fc="ST"/>
			<DA name="t" bType="Timestamp" fc="ST"/>
			<DA name="opRcvd" bType="BOOLEAN" dchg="true" fc="OR"/>
			<DA name="opOk" bType="BOOLEAN" dchg="true" fc="OR"/>
			<DA name="tOpOk" bType="Timestamp" fc="OR"/>
			<DA name="ctlModel" bType="Enum" valKind="RO" type="SIPROTEC5_Textlist_ctlModel_status_only_V09.50.01_V09.50.01" dchg="true" fc="CF">
				<Val>status-only</Val>
			</DA>
		</DOType>
		<DOType id="SIPROTEC5_DOType_BCR_noFreeze_V09.50.01_V09.50.01" cdc="BCR">
			<DA name="actVal" bType="INT64" dchg="true" fc="ST"/>
			<DA name="q" bType="Quality" qchg="true" fc="ST"/>
			<DA name="t" bType="Timestamp" fc="ST"/>
			<DA name="units" bType="Struct" type="SIPROTEC5_DAType_Units_1_V09.50.01_V09.50.01" dchg="true" fc="CF"/>
			<DA name="pulsQty" bType="FLOAT32" valKind="RO" dchg="true" fc="CF">
				<Val>1</Val>
			</DA>
		</DOType>
		<DOType id="SIPROTEC5_DOType_ENS_TextList_POWCap_V09.50.01_V09.50.01" cdc="ENS">
			<DA name="stVal" bType="Enum" type="SIPROTEC5_Textlist_POWCap_V09.50.01_V09.50.01" dchg="true" fc="ST"/>
			<DA name="q" bType="Quality" qchg="true" fc="ST"/>
			<DA name="t" bType="Timestamp" fc="ST"/>
		</DOType>
		<DOType id="SIPROTEC5_DOType_INC_controllable_with_dataNs_V09.50.01_V09.50.01" cdc="INC">
			<DA name="origin" bType="Struct" type="SIPROTEC5_DAType_origin_V09.50.01_V09.50.01" fc="ST"/>
			<DA name="ctlNum" bType="INT8U" fc="ST"/>
			<DA name="stVal" bType="INT32" dchg="true" fc="ST"/>
			<DA name="q" bType="Quality" qchg="true" fc="ST"/>
			<DA name="t" bType="Timestamp" fc="ST"/>
			<DA name="opRcvd" bType="BOOLEAN" dchg="true" fc="OR"/>
			<DA name="opOk" bType="BOOLEAN" dchg="true" fc="OR"/>
			<DA name="tOpOk" bType="Timestamp" fc="OR"/>
			<DA name="ctlModel" bType="Enum" valKind="RO" type="SIPROTEC5_Textlist_ctlModel_dir_with_nor_sec_V09.50.01_V09.50.01" dchg="true" fc="CF">
				<Val>direct-with-normal-security</Val>
			</DA>
			<DA name="minVal" bType="INT32" valKind="RO" dchg="true" fc="CF">
				<Val>0</Val>
			</DA>
			<DA name="maxVal" bType="INT32" valKind="RO" dchg="true" fc="CF">
				<Val>0</Val>
			</DA>
			<DA name="dataNs" bType="VisString255" valKind="RO" fc="EX">
				<Val>SIPROTEC5</Val>
			</DA>
			<DA name="Oper" bType="Struct" type="SIPROTEC5_DAType_Oper_INT32_V09.50.01_V09.50.01" fc="CO"/>
		</DOType>
		<DOType id="SIPROTEC5_DOType_APC_FLOAT32_controllable_with_dataNs_V09.50.01_V09.50.01" cdc="APC">
			<DA name="origin" bType="Struct" type="SIPROTEC5_DAType_origin_V09.50.01_V09.50.01" fc="MX"/>
			<DA name="ctlNum" bType="INT8U" fc="MX"/>
			<DA name="mxVal" bType="Struct" type="SIPROTEC5_DAType_AnalogValue_FLOAT32_V09.50.01_V09.50.01" dchg="true" fc="MX"/>
			<DA name="q" bType="Quality" qchg="true" fc="MX"/>
			<DA name="t" bType="Timestamp" fc="MX"/>
			<DA name="stSeld" bType="BOOLEAN" dchg="true" fc="MX"/>
			<DA name="opRcvd" bType="BOOLEAN" dchg="true" fc="OR"/>
			<DA name="opOk" bType="BOOLEAN" dchg="true" fc="OR"/>
			<DA name="tOpOk" bType="Timestamp" fc="OR"/>
			<DA name="ctlModel" bType="Enum" valKind="RO" type="SIPROTEC5_Textlist_ctlModel_dir_with_nor_sec_V09.50.01_V09.50.01" dchg="true" fc="CF">
				<Val>direct-with-normal-security</Val>
			</DA>
			<DA name="sboTimeout" bType="INT32U" valKind="RO" dchg="true" fc="CF">
				<Val>0</Val>
			</DA>
			<DA name="sboClass" bType="Enum" valKind="RO" type="SIPROTEC5_Textlist_sboClass_V09.50.01_V09.50.01" dchg="true" fc="CF">
				<Val>operate-once</Val>
			</DA>
			<DA name="units" bType="Struct" type="SIPROTEC5_DAType_Units_1_V09.50.01_V09.50.01" dchg="true" fc="CF"/>
			<DA name="minVal" bType="Struct" type="SIPROTEC5_DAType_AnalogValue_FLOAT32_readOnly_V09.50.01_V09.50.01" dchg="true" fc="CF"/>
			<DA name="dbRef" bType="FLOAT32" valKind="RO" dchg="true" fc="CF">
				<Val>0</Val>
			</DA>
			<DA name="dataNs" bType="VisString255" valKind="RO" fc="EX">
				<Val>SIPROTEC5</Val>
			</DA>
			<DA name="SBO" bType="VisString129" fc="CO">
				<ProtNs type="8-MMS">IEC 61850-8-1:2003</ProtNs>
			</DA>
			<DA name="SBOw" bType="Struct" type="SIPROTEC5_DAType_Oper_Analog_V09.50.01_V09.50.01" fc="CO"/>
			<DA name="Oper" bType="Struct" type="SIPROTEC5_DAType_Oper_Analog_V09.50.01_V09.50.01" fc="CO"/>
			<DA name="Cancel" bType="Struct" type="SIPROTEC5_DAType_Cancel_Analog_V09.50.01_V09.50.01" fc="CO"/>
		</DOType>
		<DOType id="SIPROTEC5_DOType_INS_INT32_with_dataNs_V09.50.01_V09.50.01" cdc="INS">
			<DA name="stVal" bType="INT32" dchg="true" fc="ST"/>
			<DA name="q" bType="Quality" qchg="true" fc="ST"/>
			<DA name="t" bType="Timestamp" fc="ST"/>
			<DA name="dataNs" bType="VisString255" valKind="RO" fc="EX">
				<Val>SIPROTEC5</Val>
			</DA>
		</DOType>
		<DOType id="SIPROTEC5_DOType_BCR_with_dataNs_V09.50.01_V09.50.01" cdc="BCR">
			<DA name="actVal" bType="INT64" dchg="true" fc="ST"/>
			<DA name="q" bType="Quality" qchg="true" fc="ST"/>
			<DA name="t" bType="Timestamp" fc="ST"/>
			<DA name="units" bType="Struct" type="SIPROTEC5_DAType_Units_1_V09.50.01_V09.50.01" dchg="true" fc="CF"/>
			<DA name="pulsQty" bType="FLOAT32" valKind="RO" dchg="true" fc="CF">
				<Val>1</Val>
			</DA>
			<DA name="dataNs" bType="VisString255" valKind="RO" fc="EX">
				<Val>SIPROTEC5</Val>
			</DA>
		</DOType>
		<DOType id="SIPROTEC5_DOType_MV_Float_dupd_with_dataNs_V09.50.01_V09.50.01" cdc="MV">
			<DA name="instMag" bType="Struct" type="SIPROTEC5_DAType_AnalogValue_FLOAT32_V09.50.01_V09.50.01" fc="MX"/>
			<DA name="mag" bType="Struct" type="SIPROTEC5_DAType_AnalogValue_FLOAT32_V09.50.01_V09.50.01" dupd="true" fc="MX"/>
			<DA name="q" bType="Quality" qchg="true" fc="MX"/>
			<DA name="t" bType="Timestamp" fc="MX"/>
			<DA name="units" bType="Struct" type="SIPROTEC5_DAType_Units_1_V09.50.01_V09.50.01" dchg="true" fc="CF"/>
			<DA name="dataNs" bType="VisString255" valKind="RO" fc="EX">
				<Val>SIPROTEC5</Val>
			</DA>
		</DOType>
		<DOType id="SIPROTEC5_DOType_INS_INT32_with_units_with_dataNs_V09.50.01_V09.50.01" cdc="INS">
			<DA name="stVal" bType="INT32" dchg="true" fc="ST"/>
			<DA name="q" bType="Quality" qchg="true" fc="ST"/>
			<DA name="t" bType="Timestamp" fc="ST"/>
			<DA name="units" bType="Struct" type="SIPROTEC5_DAType_Units_1_V09.50.01_V09.50.01" dchg="true" fc="CF"/>
			<DA name="dataNs" bType="VisString255" valKind="RO" fc="EX">
				<Val>SIPROTEC5</Val>
			</DA>
		</DOType>
		<DOType id="SIPROTEC5_DOType_LPL_NamPlt_V09.50.01_V09.50.01" cdc="LPL">
			<DA name="vendor" bType="VisString255" valKind="RO" fc="DC">
				<Val>SIEMENS</Val>
			</DA>
			<DA name="swRev" bType="VisString255" valKind="RO" fc="DC"/>
			<DA name="d" bType="VisString255" valKind="RO" fc="DC"/>
			<DA name="configRev" bType="VisString255" valKind="RO" fc="DC"/>
		</DOType>
		<DOType id="SIPROTEC5_DOType_ACT_1_3pol_GABC_V09.50.01_V09.50.01" cdc="ACT">
			<DA name="general" bType="BOOLEAN" dchg="true" fc="ST"/>
			<DA name="phsA" bType="BOOLEAN" dchg="true" fc="ST"/>
			<DA name="phsB" bType="BOOLEAN" dchg="true" fc="ST"/>
			<DA name="phsC" bType="BOOLEAN" dchg="true" fc="ST"/>
			<DA name="q" bType="Quality" qchg="true" fc="ST"/>
			<DA name="t" bType="Timestamp" fc="ST"/>
		</DOType>
		<DOType id="SIPROTEC5_DOType_ACD_PhsSel_GABCN_Without_DirRouting_V09.50.01_V09.50.01" cdc="ACD">
			<DA name="general" bType="BOOLEAN" dchg="true" fc="ST"/>
			<DA name="dirGeneral" bType="Enum" type="SIPROTEC5_Textlist_DirectionGeneral_V09.50.01_V09.50.01" dchg="true" fc="ST"/>
			<DA name="phsA" bType="BOOLEAN" dchg="true" fc="ST"/>
			<DA name="dirPhsA" bType="Enum" type="SIPROTEC5_Textlist_DirectionPhase_V09.50.01_V09.50.01" dchg="true" fc="ST"/>
			<DA name="phsB" bType="BOOLEAN" dchg="true" fc="ST"/>
			<DA name="dirPhsB" bType="Enum" type="SIPROTEC5_Textlist_DirectionPhase_V09.50.01_V09.50.01" dchg="true" fc="ST"/>
			<DA name="phsC" bType="BOOLEAN" dchg="true" fc="ST"/>
			<DA name="dirPhsC" bType="Enum" type="SIPROTEC5_Textlist_DirectionPhase_V09.50.01_V09.50.01" dchg="true" fc="ST"/>
			<DA name="neut" bType="BOOLEAN" dchg="true" fc="ST"/>
			<DA name="dirNeut" bType="Enum" type="SIPROTEC5_Textlist_DirectionPhase_V09.50.01_V09.50.01" dchg="true" fc="ST"/>
			<DA name="q" bType="Quality" qchg="true" fc="ST"/>
			<DA name="t" bType="Timestamp" fc="ST"/>
		</DOType>
		<DOType id="SIPROTEC5_DOType_ACT_3pol_with_dataNs_V09.50.01_V09.50.01" cdc="ACT">
			<DA name="general" bType="BOOLEAN" dchg="true" fc="ST"/>
			<DA name="q" bType="Quality" qchg="true" fc="ST"/>
			<DA name="t" bType="Timestamp" fc="ST"/>
			<DA name="dataNs" bType="VisString255" valKind="RO" fc="EX">
				<Val>SIPROTEC5</Val>
			</DA>
		</DOType>
		<DOType id="SIPROTEC5_DOType_ORG_V09.50.01_V09.50.01" cdc="ORG">
			<DA name="setSrcRef" bType="ObjRef" valKind="RO" dchg="true" fc="SP"/>
		</DOType>
		<DOType id="SIPROTEC5_DOType_Mod_controllable_with_InitValVis_for_SIEMENS_LN_V09.50.01_V09.50.01" cdc="ENC">
			<DA name="origin" bType="Struct" type="SIPROTEC5_DAType_origin_V09.50.01_V09.50.01" fc="ST"/>
			<DA name="ctlNum" bType="INT8U" fc="ST"/>
			<DA name="stVal" bType="Enum" type="SIPROTEC5_Textlist_Behavior_V09.50.01_V09.50.01" dchg="true" fc="ST"/>
			<DA name="q" bType="Quality" qchg="true" fc="ST"/>
			<DA name="t" bType="Timestamp" fc="ST"/>
			<DA name="ctlModel" bType="Enum" valKind="RO" type="SIPROTEC5_Textlist_ctlModel_dir_with_nor_sec_V09.50.01_V09.50.01" dchg="true" fc="CF">
				<Val>direct-with-normal-security</Val>
			</DA>
			<DA name="Oper" bType="Struct" type="SIPROTEC5_DAType_Oper_Mod_V09.50.01_V09.50.01" fc="CO"/>
		</DOType>
		<DOType id="SIPROTEC5_DOType_LPL_NamPlt_for_SIEMENS_LN_V09.50.01_V09.50.01" cdc="LPL">
			<DA name="vendor" bType="VisString255" valKind="RO" fc="DC">
				<Val>SIEMENS</Val>
			</DA>
			<DA name="swRev" bType="VisString255" valKind="RO" fc="DC"/>
			<DA name="d" bType="VisString255" valKind="RO" fc="DC"/>
			<DA name="configRev" bType="VisString255" valKind="RO" fc="DC"/>
			<DA name="lnNs" bType="VisString255" valKind="RO" fc="EX">
				<Val>SIPROTEC5</Val>
			</DA>
		</DOType>
		<DOType id="SIPROTEC5_DOType_CST_V09.50.01_V09.50.01" cdc="CST">
			<DA name="objRef" bType="ObjRef" dupd="true" fc="SR"/>
			<DA name="serviceType" bType="Enum" type="SIPROTEC5_Textlist_ServiceType_V09.50.01_V09.50.01" fc="SR"/>
			<DA name="errorCode" bType="Enum" type="SIPROTEC5_Textlist_ServiceError_V09.50.01_V09.50.01" fc="SR"/>
			<DA name="originatorID" bType="Octet64" fc="SR"/>
			<DA name="t" bType="Timestamp" fc="SR"/>
		</DOType>
		<DOType id="SIPROTEC5_DOType_STS_V09.50.01_V09.50.01" cdc="STS">
			<DA name="objRef" bType="ObjRef" dupd="true" fc="SR"/>
			<DA name="serviceType" bType="Enum" type="SIPROTEC5_Textlist_ServiceType_V09.50.01_V09.50.01" fc="SR"/>
			<DA name="errorCode" bType="Enum" type="SIPROTEC5_Textlist_ServiceError_V09.50.01_V09.50.01" fc="SR"/>
			<DA name="originatorID" bType="Octet64" fc="SR"/>
			<DA name="t" bType="Timestamp" fc="SR"/>
			<DA name="numOfSG" bType="INT8U" fc="SR"/>
			<DA name="actSG" bType="INT8U" fc="SR"/>
			<DA name="editSG" bType="INT8U" fc="SR"/>
			<DA name="cnfEdit" bType="BOOLEAN" fc="SR"/>
			<DA name="lActTm" bType="Timestamp" fc="SR"/>
		</DOType>
		<DOType id="SIPROTEC5_DOType_VSS_V09.50.01_V09.50.01" cdc="VSS">
			<DA name="stVal" bType="VisString255" dchg="true" fc="ST"/>
			<DA name="q" bType="Quality" qchg="true" fc="ST"/>
			<DA name="t" bType="Timestamp" fc="ST"/>
		</DOType>
		<DOType id="SIPROTEC5_DOType_ENS_TmSrcTyp_V09.50.01_V09.50.01" cdc="ENS">
			<DA name="stVal" bType="Enum" type="SIPROTEC5_Textlist_TmSrcTyp_V09.50.01_V09.50.01" dchg="true" fc="ST"/>
			<DA name="q" bType="Quality" qchg="true" fc="ST"/>
			<DA name="t" bType="Timestamp" fc="ST"/>
		</DOType>
		<DOType id="SIPROTEC5_DOType_ING_INT32_edit_V09.50.01_V09.50.01" cdc="ING">
			<DA name="setVal" bType="INT32" valKind="Set" fc="SE"/>
			<DA name="minVal" bType="INT32" valKind="RO" dchg="true" fc="CF">
				<Val>0</Val>
			</DA>
			<DA name="maxVal" bType="INT32" valKind="RO" dchg="true" fc="CF">
				<Val>0</Val>
			</DA>
			<DA name="stepSize" bType="INT32U" valKind="RO" dchg="true" fc="CF">
				<Val>0</Val>
			</DA>
			<DA name="units" bType="Struct" type="SIPROTEC5_DAType_Units_1_V09.50.01_V09.50.01" dchg="true" fc="CF"/>
		</DOType>
		<DOType id="SIPROTEC5_DOType_SPG_edit_V09.50.01_V09.50.01" cdc="SPG">
			<DA name="setVal" bType="BOOLEAN" valKind="Set" fc="SE"/>
		</DOType>
		<DOType id="SIPROTEC5_DOType_TSG_V09.50.01_V09.50.01" cdc="TSG">
			<DA name="setCal" bType="Struct" type="SIPROTEC5_DAType_CalendarTime_V09.50.01_V09.50.01" fc="SE"/>
		</DOType>
		<DOType id="SIPROTEC5_DOType_Mod_status_only_with_InitVal_V09.50.01_V09.50.01" cdc="ENC">
			<DA name="stVal" bType="Enum" type="SIPROTEC5_Textlist_Behavior_V09.50.01_V09.50.01" dchg="true" fc="ST">
				<Val>on</Val>
			</DA>
			<DA name="q" bType="Quality" qchg="true" fc="ST"/>
			<DA name="t" bType="Timestamp" fc="ST"/>
			<DA name="ctlModel" bType="Enum" valKind="RO" type="SIPROTEC5_Textlist_ctlModel_status_only_V09.50.01_V09.50.01" dchg="true" fc="CF">
				<Val>status-only</Val>
			</DA>
		</DOType>
		<DOType id="SIPROTEC5_DOType_DPL_V09.50.01_V09.50.01" cdc="DPL">
			<DA name="vendor" bType="VisString255" valKind="RO" fc="DC"/>
			<DA name="hwRev" bType="VisString255" valKind="RO" fc="DC"/>
			<DA name="swRev" bType="VisString255" valKind="RO" fc="DC"/>
			<DA name="serNum" bType="VisString255" valKind="RO" fc="DC"/>
			<DA name="model" bType="VisString255" valKind="RO" fc="DC"/>
			<DA name="location" bType="VisString255" valKind="RO" fc="DC"/>
			<DA name="owner" bType="VisString255" valKind="RO" fc="DC"/>
			<DA name="d" bType="VisString255" valKind="RO" fc="DC"/>
		</DOType>
		<DOType id="SIPROTEC5_DOType_SPS_V09.50.01_V09.50.01" cdc="SPS">
			<DA name="stVal" bType="BOOLEAN" dchg="true" fc="ST"/>
			<DA name="q" bType="Quality" qchg="true" fc="ST"/>
			<DA name="t" bType="Timestamp" fc="ST"/>
		</DOType>
		<DOType id="SIPROTEC5_DOType_INS_INT32_with_units_V09.50.01_V09.50.01" cdc="INS">
			<DA name="stVal" bType="INT32" dchg="true" fc="ST"/>
			<DA name="q" bType="Quality" qchg="true" fc="ST"/>
			<DA name="t" bType="Timestamp" fc="ST"/>
			<DA name="units" bType="Struct" type="SIPROTEC5_DAType_Units_1_V09.50.01_V09.50.01" dchg="true" fc="CF"/>
		</DOType>
		<DOType id="SIPROTEC5_DOType_LPL_NamPlt_for_Ed2_LN_V09.50.01_V09.50.01" cdc="LPL">
			<DA name="vendor" bType="VisString255" valKind="RO" fc="DC">
				<Val>SIEMENS</Val>
			</DA>
			<DA name="swRev" bType="VisString255" valKind="RO" fc="DC"/>
			<DA name="d" bType="VisString255" valKind="RO" fc="DC"/>
			<DA name="configRev" bType="VisString255" valKind="RO" fc="DC"/>
			<DA name="lnNs" bType="VisString255" valKind="RO" fc="EX">
				<Val>IEC 61850-7-4:2007B</Val>
			</DA>
		</DOType>
		<DOType id="SIPROTEC5_DOType_ENS_ErrMeasT_with_dataNs_V09.50.01_V09.50.01" cdc="ENS">
			<DA name="stVal" bType="Enum" type="SIPROTEC5_EnType_ErrMeasT_V09.50.01_V09.50.01" dchg="true" fc="ST"/>
			<DA name="q" bType="Quality" qchg="true" fc="ST"/>
			<DA name="t" bType="Timestamp" fc="ST"/>
			<DA name="dataNs" bType="VisString255" valKind="RO" fc="EX">
				<Val>SIPROTEC5</Val>
			</DA>
		</DOType>
		<DOType id="SIPROTEC5_DOType_ENS_ErrComp_with_dataNs_V09.50.01_V09.50.01" cdc="ENS">
			<DA name="stVal" bType="Enum" type="SIPROTEC5_EnType_ErrComp_V09.50.01_V09.50.01" dupd="true" fc="ST"/>
			<DA name="q" bType="Quality" qchg="true" fc="ST"/>
			<DA name="t" bType="Timestamp" fc="ST"/>
			<DA name="dataNs" bType="VisString255" valKind="RO" fc="EX">
				<Val>SIPROTEC5</Val>
			</DA>
		</DOType>
		<DOType id="SIPROTEC5_DOType_ENS_ErrOffset_with_dataNs_V09.50.01_V09.50.01" cdc="ENS">
			<DA name="stVal" bType="Enum" type="SIPROTEC5_EnType_ErrOffset_V09.50.01_V09.50.01" dchg="true" fc="ST"/>
			<DA name="q" bType="Quality" qchg="true" fc="ST"/>
			<DA name="t" bType="Timestamp" fc="ST"/>
			<DA name="dataNs" bType="VisString255" valKind="RO" fc="EX">
				<Val>SIPROTEC5</Val>
			</DA>
		</DOType>
		<DOType id="SIPROTEC5_DOType_ENS_Login_with_dataNs_V09.50.01_V09.50.01" cdc="ENS">
			<DA name="stVal" bType="Enum" type="SIPROTEC5_EnType_Login_V09.50.01_V09.50.01" dchg="true" fc="ST"/>
			<DA name="q" bType="Quality" qchg="true" fc="ST"/>
			<DA name="t" bType="Timestamp" fc="ST"/>
			<DA name="dataNs" bType="VisString255" valKind="RO" fc="EX">
				<Val>SIPROTEC5</Val>
			</DA>
		</DOType>
		<DOType id="SIPROTEC5_DOType_ENS_CyberSecEvent_with_dataNs_V09.50.01_V09.50.01" cdc="ENS">
			<DA name="stVal" bType="Enum" type="SIPROTEC5_EnType_Login_V09.50.01_V09.50.01" dupd="true" fc="ST"/>
			<DA name="q" bType="Quality" qchg="true" fc="ST"/>
			<DA name="t" bType="Timestamp" fc="ST"/>
			<DA name="dataNs" bType="VisString255" valKind="RO" fc="EX">
				<Val>SIPROTEC5</Val>
			</DA>
		</DOType>
		<DOType id="SIPROTEC5_DOType_SPS_UDEF_with_dataNs_V09.50.01_V09.50.01" cdc="SPS">
			<DA name="stVal" bType="BOOLEAN" dchg="true" fc="ST"/>
			<DA name="q" bType="Quality" qchg="true" fc="ST"/>
			<DA name="t" bType="Timestamp" fc="ST"/>
			<DA name="subEna" bType="BOOLEAN" fc="SV"/>
			<DA name="subVal" bType="BOOLEAN" fc="SV"/>
			<DA name="subQ" bType="Quality" fc="SV"/>
			<DA name="subID" bType="VisString64" fc="SV"/>
			<DA name="blkEna" bType="BOOLEAN" fc="BL"/>
			<DA name="dataNs" bType="VisString255" valKind="RO" fc="EX">
				<Val>SIPROTEC5/userdefined</Val>
			</DA>
		</DOType>
		<DOType id="SIPROTEC5_DOType_Mod_controllable_OnBlockedTestTestBlocked_with_InitVal_V09.50.01_V09.50.01" cdc="ENC">
			<DA name="origin" bType="Struct" type="SIPROTEC5_DAType_origin_V09.50.01_V09.50.01" fc="ST"/>
			<DA name="ctlNum" bType="INT8U" fc="ST"/>
			<DA name="stVal" bType="Enum" type="SIPROTEC5_Textlist_Behavior_OnBlockedTestTestBlocked_V09.50.01_V09.50.01" dchg="true" fc="ST"/>
			<DA name="q" bType="Quality" qchg="true" fc="ST"/>
			<DA name="t" bType="Timestamp" fc="ST"/>
			<DA name="ctlModel" bType="Enum" valKind="RO" type="SIPROTEC5_Textlist_ctlModel_dir_with_nor_sec_V09.50.01_V09.50.01" dchg="true" fc="CF">
				<Val>direct-with-normal-security</Val>
			</DA>
			<DA name="Oper" bType="Struct" type="SIPROTEC5_DAType_Oper_Mod_OnBlockedTestTestBlocked_V09.50.01_V09.50.01" fc="CO"/>
		</DOType>
		<DOType id="SIPROTEC5_DOType_ENS_Behavior_V09.50.01_V09.50.01" cdc="ENS">
			<DA name="stVal" bType="Enum" type="SIPROTEC5_Textlist_Behavior_V09.50.01_V09.50.01" dchg="true" fc="ST"/>
			<DA name="q" bType="Quality" qchg="true" fc="ST"/>
			<DA name="t" bType="Timestamp" fc="ST"/>
		</DOType>
		<DOType id="SIPROTEC5_DOType_ENS_Health_V09.50.01_V09.50.01" cdc="ENS">
			<DA name="stVal" bType="Enum" type="SIPROTEC5_Textlist_Health_V09.50.01_V09.50.01" dchg="true" fc="ST"/>
			<DA name="q" bType="Quality" qchg="true" fc="ST"/>
			<DA name="t" bType="Timestamp" fc="ST"/>
		</DOType>
		<DOType id="SIPROTEC5_DOType_LPL_NamPlt_for_LLN0_V09.50.01_V09.50.01" cdc="LPL">
			<DA name="vendor" bType="VisString255" valKind="RO" fc="DC">
				<Val>SIEMENS</Val>
			</DA>
			<DA name="swRev" bType="VisString255" valKind="RO" fc="DC"/>
			<DA name="d" bType="VisString255" valKind="RO" fc="DC"/>
			<DA name="configRev" bType="VisString255" valKind="RO" fc="DC"/>
			<DA name="ldNs" bType="VisString255" valKind="RO" fc="EX"/>
		</DOType>
		<DOType id="SIPROTEC5_DOType_SPC_dir_with_nor_sec_V09.50.01_V09.50.01" cdc="SPC">
			<DA name="origin" bType="Struct" type="SIPROTEC5_DAType_origin_V09.50.01_V09.50.01" fc="ST"/>
			<DA name="ctlNum" bType="INT8U" fc="ST"/>
			<DA name="stVal" bType="BOOLEAN" dchg="true" fc="ST"/>
			<DA name="q" bType="Quality" qchg="true" fc="ST"/>
			<DA name="t" bType="Timestamp" fc="ST"/>
			<DA name="opRcvd" bType="BOOLEAN" dchg="true" fc="OR"/>
			<DA name="opOk" bType="BOOLEAN" dchg="true" fc="OR"/>
			<DA name="tOpOk" bType="Timestamp" fc="OR"/>
			<DA name="ctlModel" bType="Enum" valKind="RO" type="SIPROTEC5_Textlist_ctlModel_dir_with_nor_sec_V09.50.01_V09.50.01" dchg="true" fc="CF">
				<Val>direct-with-normal-security</Val>
			</DA>
			<DA name="Oper" bType="Struct" type="SIPROTEC5_DAType_Oper_Boolean_V09.50.01_V09.50.01" fc="CO"/>
		</DOType>
		<DOType id="SIPROTEC5_DOType_SPG_readOnly_with_dataNs_V09.50.01_V09.50.01" cdc="SPG">
			<DA name="setVal" bType="BOOLEAN" valKind="RO" fc="SE"/>
			<DA name="dataNs" bType="VisString255" valKind="RO" fc="EX">
				<Val>SIPROTEC5</Val>
			</DA>
		</DOType>
		<DOType id="SIPROTEC5_DOType_SPC_dir_with_nor_sec_FnKey_toggle_on_off_with_dataNs_V09.50.01_V09.50.01" cdc="SPC">
			<DA name="origin" bType="Struct" type="SIPROTEC5_DAType_origin_V09.50.01_V09.50.01" fc="ST"/>
			<DA name="ctlNum" bType="INT8U" fc="ST"/>
			<DA name="stVal" bType="BOOLEAN" dchg="true" fc="ST"/>
			<DA name="q" bType="Quality" qchg="true" fc="ST"/>
			<DA name="t" bType="Timestamp" fc="ST"/>
			<DA name="opRcvd" bType="BOOLEAN" dchg="true" fc="OR"/>
			<DA name="opOk" bType="BOOLEAN" dchg="true" fc="OR"/>
			<DA name="tOpOk" bType="Timestamp" fc="OR"/>
			<DA name="ctlModel" bType="Enum" valKind="RO" type="SIPROTEC5_Textlist_ctlModel_dir_with_nor_sec_V09.50.01_V09.50.01" dchg="true" fc="CF">
				<Val>direct-with-normal-security</Val>
			</DA>
			<DA name="dataNs" bType="VisString255" valKind="RO" fc="EX">
				<Val>SIPROTEC5</Val>
			</DA>
			<DA name="Oper" bType="Struct" type="SIPROTEC5_DAType_Oper_Boolean_V09.50.01_V09.50.01" fc="CO"/>
		</DOType>
		<DOType id="SIPROTEC5_DOType_SPC_dir_with_enh_sec_initVal_and_dataNs_V09.50.01_V09.50.01" cdc="SPC">
			<DA name="origin" bType="Struct" type="SIPROTEC5_DAType_origin_V09.50.01_V09.50.01" fc="ST"/>
			<DA name="ctlNum" bType="INT8U" fc="ST"/>
			<DA name="stVal" bType="BOOLEAN" dchg="true" fc="ST"/>
			<DA name="q" bType="Quality" qchg="true" fc="ST"/>
			<DA name="t" bType="Timestamp" fc="ST"/>
			<DA name="opRcvd" bType="BOOLEAN" dchg="true" fc="OR"/>
			<DA name="opOk" bType="BOOLEAN" dchg="true" fc="OR"/>
			<DA name="tOpOk" bType="Timestamp" fc="OR"/>
			<DA name="ctlModel" bType="Enum" valKind="RO" type="SIPROTEC5_Textlist_ctlModel_dir_with_enh_sec_V09.50.01_V09.50.01" dchg="true" fc="CF">
				<Val>direct-with-enhanced-security</Val>
			</DA>
			<DA name="operTimeout" bType="INT32U" valKind="RO" dchg="true" fc="CF">
				<Val>0</Val>
			</DA>
			<DA name="dataNs" bType="VisString255" valKind="RO" fc="EX">
				<Val>SIPROTEC5</Val>
			</DA>
			<DA name="Oper" bType="Struct" type="SIPROTEC5_DAType_Oper_Boolean_V09.50.01_V09.50.01" fc="CO"/>
		</DOType>
		<DOType id="SIPROTEC5_DOType_SPS_for_Input_with_dataNs_V09.50.01_V09.50.01" cdc="SPS">
			<DA name="stVal" bType="BOOLEAN" dchg="true" fc="ST"/>
			<DA name="q" bType="Quality" qchg="true" fc="ST"/>
			<DA name="t" bType="Timestamp" fc="ST"/>
			<DA name="subEna" bType="BOOLEAN" fc="SV"/>
			<DA name="subVal" bType="BOOLEAN" fc="SV"/>
			<DA name="subQ" bType="Quality" fc="SV"/>
			<DA name="subID" bType="VisString64" fc="SV"/>
			<DA name="dataNs" bType="VisString255" valKind="RO" fc="EX">
				<Val>SIPROTEC5</Val>
			</DA>
		</DOType>
		<DOType id="SIPROTEC5_DOType_ENS_Health_with_dataNs_V09.50.01_V09.50.01" cdc="ENS">
			<DA name="stVal" bType="Enum" type="SIPROTEC5_Textlist_Health_V09.50.01_V09.50.01" dchg="true" fc="ST"/>
			<DA name="q" bType="Quality" qchg="true" fc="ST"/>
			<DA name="t" bType="Timestamp" fc="ST"/>
			<DA name="dataNs" bType="VisString255" valKind="RO" fc="EX">
				<Val>SIPROTEC5</Val>
			</DA>
		</DOType>
		<DOType id="SIPROTEC5_DOType_ENS_SwitchingAuthority_LocalDigsiStationRemote_with_dataNs_V09.50.01_V09.50.01" cdc="ENS">
			<DA name="stVal" bType="Enum" type="SIPROTEC5_EnType_SwitchingAuthority_LocalDigsiStationRemote_V09.50.01_V09.50.01" dchg="true" fc="ST"/>
			<DA name="q" bType="Quality" qchg="true" fc="ST"/>
			<DA name="t" bType="Timestamp" fc="ST"/>
			<DA name="dataNs" bType="VisString255" valKind="RO" fc="EX">
				<Val>SIPROTEC5</Val>
			</DA>
		</DOType>
		<DOType id="SIPROTEC5_DOType_ENS_SwitchingMode_with_dataNs_V09.50.01_V09.50.01" cdc="ENS">
			<DA name="stVal" bType="Enum" type="SIPROTEC5_EnType_SwitchingMode_V09.50.01_V09.50.01" dchg="true" fc="ST"/>
			<DA name="q" bType="Quality" qchg="true" fc="ST"/>
			<DA name="t" bType="Timestamp" fc="ST"/>
			<DA name="dataNs" bType="VisString255" valKind="RO" fc="EX">
				<Val>SIPROTEC5</Val>
			</DA>
		</DOType>
		<DOType id="SIPROTEC5_DOType_INS_INT32_dupd_with_dataNs_V09.50.01_V09.50.01" cdc="INS">
			<DA name="stVal" bType="INT32" dupd="true" fc="ST"/>
			<DA name="q" bType="Quality" qchg="true" fc="ST"/>
			<DA name="t" bType="Timestamp" fc="ST"/>
			<DA name="dataNs" bType="VisString255" valKind="RO" fc="EX">
				<Val>SIPROTEC5</Val>
			</DA>
		</DOType>
		<DOType id="SIPROTEC5_DOType_SPS_with_dataNs_V09.50.01_V09.50.01" cdc="SPS">
			<DA name="stVal" bType="BOOLEAN" dchg="true" fc="ST"/>
			<DA name="q" bType="Quality" qchg="true" fc="ST"/>
			<DA name="t" bType="Timestamp" fc="ST"/>
			<DA name="dataNs" bType="VisString255" valKind="RO" fc="EX">
				<Val>SIPROTEC5</Val>
			</DA>
		</DOType>
		<DAType id="SIPROTEC5_DAType_Cancel_TCMD_V09.50.01_V09.50.01">
			<BDA name="ctlVal" bType="Tcmd"/>
			<BDA name="origin" bType="Struct" type="SIPROTEC5_DAType_origin_V09.50.01_V09.50.01"/>
			<BDA name="ctlNum" bType="INT8U"/>
			<BDA name="T" bType="Timestamp"/>
			<BDA name="Test" bType="BOOLEAN"/>
			<ProtNs type="8-MMS">IEC 61850-8-1:2003</ProtNs>
		</DAType>
		<DAType id="SIPROTEC5_DAType_Oper_TCMD_V09.50.01_V09.50.01">
			<BDA name="ctlVal" bType="Tcmd"/>
			<BDA name="origin" bType="Struct" type="SIPROTEC5_DAType_origin_V09.50.01_V09.50.01"/>
			<BDA name="ctlNum" bType="INT8U"/>
			<BDA name="T" bType="Timestamp"/>
			<BDA name="Test" bType="BOOLEAN"/>
			<BDA name="Check" bType="Check"/>
			<ProtNs type="8-MMS">IEC 61850-8-1:2003</ProtNs>
		</DAType>
		<DAType id="SIPROTEC5_DAType_ValWithTrans_V09.50.01_V09.50.01">
			<BDA name="posVal" bType="INT8"/>
			<BDA name="transInd" bType="BOOLEAN"/>
		</DAType>
		<DAType id="SIPROTEC5_DAType_Cancel_INT32_V09.50.01_V09.50.01">
			<BDA name="ctlVal" bType="INT32"/>
			<BDA name="origin" bType="Struct" type="SIPROTEC5_DAType_origin_V09.50.01_V09.50.01"/>
			<BDA name="ctlNum" bType="INT8U"/>
			<BDA name="T" bType="Timestamp"/>
			<BDA name="Test" bType="BOOLEAN"/>
			<ProtNs type="8-MMS">IEC 61850-8-1:2003</ProtNs>
		</DAType>
		<DAType id="SIPROTEC5_DAType_Units_ms_V09.50.01_V09.50.01">
			<BDA name="SIUnit" bType="Enum" valKind="RO" type="SIPROTEC5_EnType_SIUnit_V09.50.01_V09.50.01">
				<Val>s</Val>
			</BDA>
			<BDA name="multiplier" bType="Enum" valKind="RO" type="SIPROTEC5_EnType_Multiplier_V09.50.01_V09.50.01">
				<Val>m</Val>
			</BDA>
		</DAType>
		<DAType id="SIPROTEC5_DAType_Vector_mag_V09.50.01_V09.50.01">
			<BDA name="mag" bType="Struct" type="SIPROTEC5_DAType_AnalogValue_FLOAT32_V09.50.01_V09.50.01"/>
		</DAType>
		<DAType id="SIPROTEC5_DAType_Units_with_visible_SIUnit_multiplier_posAfterDecPoint_V09.50.01_V09.50.01">
			<BDA name="SIUnit" bType="Enum" type="SIPROTEC5_EnType_SIUnit_V09.50.01_V09.50.01"/>
			<BDA name="multiplier" bType="Enum" type="SIPROTEC5_EnType_Multiplier_V09.50.01_V09.50.01"/>
		</DAType>
		<DAType id="SIPROTEC5_DAType_ScaledValueConfig_readOnly_V09.50.01_V09.50.01">
			<BDA name="scaleFactor" bType="FLOAT32" valKind="RO">
				<Val>1</Val>
			</BDA>
			<BDA name="offset" bType="FLOAT32" valKind="RO">
				<Val>0</Val>
			</BDA>
		</DAType>
		<DAType id="SIPROTEC5_DAType_AnalogValue_INT32_V09.50.01_V09.50.01">
			<BDA name="i" bType="INT32"/>
		</DAType>
		<DAType id="SIPROTEC5_DAType_Oper_Mod_OnOff_V09.50.01_V09.50.01">
			<BDA name="ctlVal" bType="Enum" type="SIPROTEC5_Textlist_Behavior_OnOff_V09.50.01_V09.50.01"/>
			<BDA name="origin" bType="Struct" type="SIPROTEC5_DAType_origin_V09.50.01_V09.50.01"/>
			<BDA name="ctlNum" bType="INT8U"/>
			<BDA name="T" bType="Timestamp"/>
			<BDA name="Test" bType="BOOLEAN"/>
			<BDA name="Check" bType="Check"/>
			<ProtNs type="8-MMS">IEC 61850-8-1:2003</ProtNs>
		</DAType>
		<DAType id="SIPROTEC5_DAType_Vector_V09.50.01_V09.50.01">
			<BDA name="mag" bType="Struct" type="SIPROTEC5_DAType_AnalogValue_FLOAT32_V09.50.01_V09.50.01"/>
			<BDA name="ang" bType="Struct" type="SIPROTEC5_DAType_AnalogValue_FLOAT32_V09.50.01_V09.50.01"/>
		</DAType>
		<DAType id="SIPROTEC5_DAType_Cancel_Boolean_V09.50.01_V09.50.01">
			<BDA name="ctlVal" bType="BOOLEAN"/>
			<BDA name="origin" bType="Struct" type="SIPROTEC5_DAType_origin_V09.50.01_V09.50.01"/>
			<BDA name="ctlNum" bType="INT8U"/>
			<BDA name="T" bType="Timestamp"/>
			<BDA name="Test" bType="BOOLEAN"/>
			<ProtNs type="8-MMS">IEC 61850-8-1:2003</ProtNs>
		</DAType>
		<DAType id="SIPROTEC5_DAType_PulseConfig_XCBR_V09.50.01_V09.50.01">
			<BDA name="cmdQual" bType="Enum" valKind="RO" type="SIPROTEC5_Textlist_PulseConfigCmdQual_V09.50.01_V09.50.01"/>
			<BDA name="onDur" bType="INT32U" valKind="RO"/>
			<BDA name="offDur" bType="INT32U" valKind="RO"/>
			<BDA name="numPls" bType="INT32U" valKind="RO"/>
		</DAType>
		<DAType id="SIPROTEC5_DAType_Oper_INT32_V09.50.01_V09.50.01">
			<BDA name="ctlVal" bType="INT32"/>
			<BDA name="origin" bType="Struct" type="SIPROTEC5_DAType_origin_V09.50.01_V09.50.01"/>
			<BDA name="ctlNum" bType="INT8U"/>
			<BDA name="T" bType="Timestamp"/>
			<BDA name="Test" bType="BOOLEAN"/>
			<BDA name="Check" bType="Check"/>
			<ProtNs type="8-MMS">IEC 61850-8-1:2003</ProtNs>
		</DAType>
		<DAType id="SIPROTEC5_DAType_Cancel_Analog_V09.50.01_V09.50.01">
			<BDA name="ctlVal" bType="Struct" type="SIPROTEC5_DAType_AnalogValue_FLOAT32_V09.50.01_V09.50.01"/>
			<BDA name="origin" bType="Struct" type="SIPROTEC5_DAType_origin_V09.50.01_V09.50.01"/>
			<BDA name="ctlNum" bType="INT8U"/>
			<BDA name="T" bType="Timestamp"/>
			<BDA name="Test" bType="BOOLEAN"/>
			<ProtNs type="8-MMS">IEC 61850-8-1:2003</ProtNs>
		</DAType>
		<DAType id="SIPROTEC5_DAType_Oper_Analog_V09.50.01_V09.50.01">
			<BDA name="ctlVal" bType="Struct" type="SIPROTEC5_DAType_AnalogValue_FLOAT32_V09.50.01_V09.50.01"/>
			<BDA name="origin" bType="Struct" type="SIPROTEC5_DAType_origin_V09.50.01_V09.50.01"/>
			<BDA name="ctlNum" bType="INT8U"/>
			<BDA name="T" bType="Timestamp"/>
			<BDA name="Test" bType="BOOLEAN"/>
			<BDA name="Check" bType="Check"/>
			<ProtNs type="8-MMS">IEC 61850-8-1:2003</ProtNs>
		</DAType>
		<DAType id="SIPROTEC5_DAType_AnalogValue_FLOAT32_readOnly_V09.50.01_V09.50.01">
			<BDA name="f" bType="FLOAT32" valKind="RO">
				<Val>0</Val>
			</BDA>
		</DAType>
		<DAType id="SIPROTEC5_DAType_AnalogValue_FLOAT32_V09.50.01_V09.50.01">
			<BDA name="f" bType="FLOAT32" valKind="Set">
				<Val>0</Val>
			</BDA>
		</DAType>
		<DAType id="SIPROTEC5_DAType_Oper_Mod_V09.50.01_V09.50.01">
			<BDA name="ctlVal" bType="Enum" type="SIPROTEC5_Textlist_Behavior_V09.50.01_V09.50.01"/>
			<BDA name="origin" bType="Struct" type="SIPROTEC5_DAType_origin_V09.50.01_V09.50.01"/>
			<BDA name="ctlNum" bType="INT8U"/>
			<BDA name="T" bType="Timestamp"/>
			<BDA name="Test" bType="BOOLEAN"/>
			<BDA name="Check" bType="Check"/>
			<ProtNs type="8-MMS">IEC 61850-8-1:2003</ProtNs>
		</DAType>
		<DAType id="SIPROTEC5_DAType_CalendarTime_V09.50.01_V09.50.01">
			<BDA name="occ" bType="INT16U"/>
			<BDA name="occType" bType="Enum" type="SIPROTEC5_EnType_Cal_Occ_Type_V09.50.01_V09.50.01"/>
			<BDA name="occPer" bType="Enum" type="SIPROTEC5_EnType_Cal_Occ_Period_V09.50.01_V09.50.01"/>
			<BDA name="weekDay" bType="Enum" type="SIPROTEC5_EnType_Cal_WeekDay_V09.50.01_V09.50.01"/>
			<BDA name="month" bType="Enum" type="SIPROTEC5_EnType_Cal_Month_V09.50.01_V09.50.01"/>
			<BDA name="day" bType="INT8U"/>
			<BDA name="hr" bType="INT8U"/>
			<BDA name="mn" bType="INT8U"/>
		</DAType>
		<DAType id="SIPROTEC5_DAType_Units_1_V09.50.01_V09.50.01">
			<BDA name="SIUnit" bType="Enum" valKind="RO" type="SIPROTEC5_EnType_SIUnit_V09.50.01_V09.50.01"/>
			<BDA name="multiplier" bType="Enum" valKind="RO" type="SIPROTEC5_EnType_Multiplier_V09.50.01_V09.50.01"/>
		</DAType>
		<DAType id="SIPROTEC5_DAType_Oper_Mod_OnBlockedTestTestBlocked_V09.50.01_V09.50.01">
			<BDA name="ctlVal" bType="Enum" type="SIPROTEC5_Textlist_Behavior_OnBlockedTestTestBlocked_V09.50.01_V09.50.01"/>
			<BDA name="origin" bType="Struct" type="SIPROTEC5_DAType_origin_V09.50.01_V09.50.01"/>
			<BDA name="ctlNum" bType="INT8U"/>
			<BDA name="T" bType="Timestamp"/>
			<BDA name="Test" bType="BOOLEAN"/>
			<BDA name="Check" bType="Check"/>
			<ProtNs type="8-MMS">IEC 61850-8-1:2003</ProtNs>
		</DAType>
		<DAType id="SIPROTEC5_DAType_Oper_Boolean_V09.50.01_V09.50.01">
			<BDA name="ctlVal" bType="BOOLEAN"/>
			<BDA name="origin" bType="Struct" type="SIPROTEC5_DAType_origin_V09.50.01_V09.50.01"/>
			<BDA name="ctlNum" bType="INT8U"/>
			<BDA name="T" bType="Timestamp"/>
			<BDA name="Test" bType="BOOLEAN"/>
			<BDA name="Check" bType="Check"/>
			<ProtNs type="8-MMS">IEC 61850-8-1:2003</ProtNs>
		</DAType>
		<DAType id="SIPROTEC5_DAType_origin_V09.50.01_V09.50.01">
			<BDA name="orCat" bType="Enum" type="SIPROTEC5_Textlist_orCategory_V09.50.01_V09.50.01"/>
			<BDA name="orIdent" bType="Octet64"/>
		</DAType>
		<EnumType id="SIPROTEC5_Textlist_ParallelTrafoBeh_V09.50.01_V09.50.01">
			<EnumVal ord="1">No Mode</EnumVal>
			<EnumVal ord="2">Independend</EnumVal>
			<EnumVal ord="3">Master</EnumVal>
			<EnumVal ord="4">Follower</EnumVal>
			<EnumVal ord="5">Circulating Current</EnumVal>
		</EnumType>
		<EnumType id="SIPROTEC5_EnType_ParallelTrafoErr_V09.50.01_V09.50.01">
			<EnumVal ord="1">Communication error on</EnumVal>
			<EnumVal ord="2">Communication error off</EnumVal>
			<EnumVal ord="3">ParMod error on</EnumVal>
			<EnumVal ord="4">ParMod error off</EnumVal>
			<EnumVal ord="5">id error on</EnumVal>
			<EnumVal ord="6">id error off</EnumVal>
			<EnumVal ord="7">master error on</EnumVal>
			<EnumVal ord="8">master error off</EnumVal>
			<EnumVal ord="9">MV invalid error on</EnumVal>
			<EnumVal ord="10">MV invalid error off</EnumVal>
			<EnumVal ord="11">Mod error on</EnumVal>
			<EnumVal ord="12">Mod error off</EnumVal>
		</EnumType>
		<EnumType id="SIPROTEC5_Textlist_ctlModel_sbo_and_dir_with_nor_sec_V09.50.01_V09.50.01">
			<EnumVal ord="1">direct-with-normal-security</EnumVal>
			<EnumVal ord="2">sbo-with-normal-security</EnumVal>
		</EnumType>
		<EnumType id="SIPROTEC5_Textlist_LSVS_DiagErrSmv_V09.50.01_V09.50.01">
			<EnumVal ord="0">No Error</EnumVal>
			<EnumVal ord="1">Waiting For Telegram</EnumVal>
			<EnumVal ord="2">ConfRev Mismatch</EnumVal>
			<EnumVal ord="3">ConfRev Missing</EnumVal>
			<EnumVal ord="4">SV ID Mismatch</EnumVal>
			<EnumVal ord="5">APP ID Mismatch</EnumVal>
			<EnumVal ord="6">Sample Count Jump</EnumVal>
			<EnumVal ord="7">Initializing</EnumVal>
			<EnumVal ord="8">Broken Telegram</EnumVal>
			<EnumVal ord="9">General Error</EnumVal>
			<EnumVal ord="10">Data Delay Error</EnumVal>
		</EnumType>
		<EnumType id="SIPROTEC5_Textlist_LSVS_DiagSynch_V09.50.01_V09.50.01">
			<EnumVal ord="0">Initializing</EnumVal>
			<EnumVal ord="1">Global Time Synch</EnumVal>
			<EnumVal ord="2">Local Time Synch</EnumVal>
			<EnumVal ord="3">General Error</EnumVal>
			<EnumVal ord="4">No Time Synch</EnumVal>
			<EnumVal ord="5">SmpSynch Mismatch</EnumVal>
			<EnumVal ord="6">SynchSrcId Mismatch</EnumVal>
		</EnumType>
		<EnumType id="SIPROTEC5_Textlist_SEQtype_V09.50.01_V09.50.01">
			<EnumVal ord="0">pos-neg-zero</EnumVal>
			<EnumVal ord="1">dir-quad-zero</EnumVal>
		</EnumType>
		<EnumType id="SIPROTEC5_Textlist_Trp_V09.50.01_V09.50.01">
			<EnumVal ord="1">Unknown</EnumVal>
			<EnumVal ord="2">P</EnumVal>
			<EnumVal ord="3">PR</EnumVal>
			<EnumVal ord="4">PX</EnumVal>
			<EnumVal ord="5">PXR</EnumVal>
			<EnumVal ord="6">TPX</EnumVal>
			<EnumVal ord="7">TPY</EnumVal>
			<EnumVal ord="8">TPZ</EnumVal>
			<EnumVal ord="9">TPE</EnumVal>
			<EnumVal ord="10">TPS</EnumVal>
			<EnumVal ord="11">TPM</EnumVal>
		</EnumType>
		<EnumType id="SIPROTEC5_EnType_InstrumentTransformerMeasurementRatingKind_V09.50.01_V09.50.01">
			<EnumVal ord="1">0.05</EnumVal>
			<EnumVal ord="2">0.1</EnumVal>
			<EnumVal ord="3">0.2</EnumVal>
			<EnumVal ord="4">0.2S</EnumVal>
			<EnumVal ord="5">0.5</EnumVal>
			<EnumVal ord="6">0.5S</EnumVal>
			<EnumVal ord="7">1</EnumVal>
			<EnumVal ord="8">3</EnumVal>
			<EnumVal ord="9">5</EnumVal>
		</EnumType>
		<EnumType id="SIPROTEC5_EnType_InstrumentTransformerProtectionRatingKind_V09.50.01_V09.50.01">
			<EnumVal ord="1">1</EnumVal>
			<EnumVal ord="2">2</EnumVal>
			<EnumVal ord="3">3</EnumVal>
			<EnumVal ord="4">5</EnumVal>
			<EnumVal ord="5">6</EnumVal>
			<EnumVal ord="6">10</EnumVal>
		</EnumType>
		<EnumType id="SIPROTEC5_EnType_SwitchType_V09.50.01_V09.50.01">
			<EnumVal ord="1">Load Break</EnumVal>
			<EnumVal ord="2">Disconnector</EnumVal>
			<EnumVal ord="3">Earthing Switch</EnumVal>
			<EnumVal ord="4">High Speed Earthing Switch</EnumVal>
		</EnumType>
		<EnumType id="SIPROTEC5_Textlist_Behavior_OnOff_V09.50.01_V09.50.01">
			<EnumVal ord="1">on</EnumVal>
			<EnumVal ord="5">off</EnumVal>
		</EnumType>
		<EnumType id="SIPROTEC5_Textlist_LGOS_DiagError_V09.50.01_V09.50.01">
			<EnumVal ord="0">No Error</EnumVal>
			<EnumVal ord="1">Waiting For Telegram</EnumVal>
			<EnumVal ord="2">ConfRev Mismatch</EnumVal>
			<EnumVal ord="3">Go ID Mismatch</EnumVal>
			<EnumVal ord="4">DataSet Ref Mismatch</EnumVal>
			<EnumVal ord="5">Needs Commisioning</EnumVal>
			<EnumVal ord="6">DataSet Member Mismatch</EnumVal>
			<EnumVal ord="7">Initializing</EnumVal>
		</EnumType>
		<EnumType id="SIPROTEC5_Textlist_CBT_TstExec_V09.50.01_V09.50.01">
			<EnumVal ord="0">Inactive</EnumVal>
			<EnumVal ord="1">Started</EnumVal>
			<EnumVal ord="2">Failed</EnumVal>
			<EnumVal ord="3">Successful</EnumVal>
		</EnumType>
		<EnumType id="SIPROTEC5_Textlist_CBT_TstTr_V09.50.01_V09.50.01">
			<EnumVal ord="0">Inactive</EnumVal>
			<EnumVal ord="1">1-pole phsA</EnumVal>
			<EnumVal ord="2">1-pole phsB</EnumVal>
			<EnumVal ord="3">1-pole phsC</EnumVal>
			<EnumVal ord="4">3-pole</EnumVal>
		</EnumType>
		<EnumType id="SIPROTEC5_Textlist_CBT_TstCls_V09.50.01_V09.50.01">
			<EnumVal ord="0">Inactive</EnumVal>
			<EnumVal ord="1">3-pole</EnumVal>
		</EnumType>
		<EnumType id="SIPROTEC5_Textlist_CBT_TstCnc_V09.50.01_V09.50.01">
			<EnumVal ord="0">Inactive</EnumVal>
			<EnumVal ord="1">Fault occurred</EnumVal>
			<EnumVal ord="2">CB not closed</EnumVal>
			<EnumVal ord="3">CB not ready</EnumVal>
			<EnumVal ord="4">CB stayed closed</EnumVal>
			<EnumVal ord="5">Command</EnumVal>
			<EnumVal ord="6">Current crit.</EnumVal>
		</EnumType>
		<EnumType id="SIPROTEC5_Textlist_ctlModel_V09.50.01_V09.50.01">
			<EnumVal ord="0">status-only</EnumVal>
			<EnumVal ord="1">direct-with-normal-security</EnumVal>
			<EnumVal ord="2">sbo-with-normal-security</EnumVal>
			<EnumVal ord="3">direct-with-enhanced-security</EnumVal>
			<EnumVal ord="4">sbo-with-enhanced-security</EnumVal>
		</EnumType>
		<EnumType id="SIPROTEC5_Textlist_ctlModel_status_only_and_dir_with_nor_sec_V09.50.01_V09.50.01">
			<EnumVal ord="0">status-only</EnumVal>
			<EnumVal ord="1">direct-with-normal-security</EnumVal>
		</EnumType>
		<EnumType id="SIPROTEC5_Textlist_PulseConfigCmdQual_V09.50.01_V09.50.01">
			<EnumVal ord="0">pulse</EnumVal>
			<EnumVal ord="1">persistent</EnumVal>
		</EnumType>
		<EnumType id="SIPROTEC5_Textlist_POWCap_V09.50.01_V09.50.01">
			<EnumVal ord="1">None</EnumVal>
			<EnumVal ord="2">Close</EnumVal>
			<EnumVal ord="3">Open</EnumVal>
			<EnumVal ord="4">Close and Open</EnumVal>
		</EnumType>
		<EnumType id="SIPROTEC5_Textlist_sboClass_V09.50.01_V09.50.01">
			<EnumVal ord="0">operate-once</EnumVal>
		</EnumType>
		<EnumType id="SIPROTEC5_Textlist_DirectionPhase_V09.50.01_V09.50.01">
			<EnumVal ord="0">unknown</EnumVal>
			<EnumVal ord="1">forward</EnumVal>
			<EnumVal ord="2">backward</EnumVal>
		</EnumType>
		<EnumType id="SIPROTEC5_Textlist_DirectionGeneral_V09.50.01_V09.50.01">
			<EnumVal ord="0">unknown</EnumVal>
			<EnumVal ord="1">forward</EnumVal>
			<EnumVal ord="2">backward</EnumVal>
			<EnumVal ord="3">both</EnumVal>
		</EnumType>
		<EnumType id="SIPROTEC5_Textlist_ServiceError_V09.50.01_V09.50.01">
			<EnumVal ord="0">no-error</EnumVal>
			<EnumVal ord="1">instance-not-available</EnumVal>
			<EnumVal ord="2">instance-in-use</EnumVal>
			<EnumVal ord="3">access-violation</EnumVal>
			<EnumVal ord="4">access-not-allowed-in-current-state</EnumVal>
			<EnumVal ord="5">parameter-value-inappropriate</EnumVal>
			<EnumVal ord="6">parameter-value-inconsistent</EnumVal>
			<EnumVal ord="7">class-not-supported</EnumVal>
			<EnumVal ord="8">instance-locked-by-other-client</EnumVal>
			<EnumVal ord="9">control-must-be-selected</EnumVal>
			<EnumVal ord="10">type-conflict</EnumVal>
			<EnumVal ord="11">failed-due-to-communications-constraint</EnumVal>
			<EnumVal ord="12">failed-due-to-server-constraint</EnumVal>
		</EnumType>
		<EnumType id="SIPROTEC5_Textlist_ServiceType_V09.50.01_V09.50.01">
			<EnumVal ord="-3">CancelEditSG</EnumVal>
			<EnumVal ord="-2">None</EnumVal>
			<EnumVal ord="-1">Deprecated</EnumVal>
			<EnumVal ord="0">Unknown</EnumVal>
			<EnumVal ord="1">Associate</EnumVal>
			<EnumVal ord="2">Abort</EnumVal>
			<EnumVal ord="3">Release</EnumVal>
			<EnumVal ord="4">GetServerDirectory</EnumVal>
			<EnumVal ord="5">GetLogicalDeviceDirectory</EnumVal>
			<EnumVal ord="6">GetAllDataValues</EnumVal>
			<EnumVal ord="7">GetDataValues</EnumVal>
			<EnumVal ord="8">SetDataValues</EnumVal>
			<EnumVal ord="9">GetDataDirectory</EnumVal>
			<EnumVal ord="10">GetDataDefinition</EnumVal>
			<EnumVal ord="11">GetDataSetValues</EnumVal>
			<EnumVal ord="12">SetDataSetValues</EnumVal>
			<EnumVal ord="13">CreateDataSet</EnumVal>
			<EnumVal ord="14">DeleteDataSet</EnumVal>
			<EnumVal ord="15">GetDataSetDirectory</EnumVal>
			<EnumVal ord="16">SelectActiveSG</EnumVal>
			<EnumVal ord="17">SelectEditSG</EnumVal>
			<EnumVal ord="18">SetEditSGValue</EnumVal>
			<EnumVal ord="19">ConfirmEditSGValues</EnumVal>
			<EnumVal ord="20">GetEditSGValue</EnumVal>
			<EnumVal ord="21">GetSGCBValues</EnumVal>
			<EnumVal ord="22">Report</EnumVal>
			<EnumVal ord="23">GetBRCBValues</EnumVal>
			<EnumVal ord="24">SetBRCBValues</EnumVal>
			<EnumVal ord="25">GetURCBValues</EnumVal>
			<EnumVal ord="26">SetURCBValues</EnumVal>
			<EnumVal ord="27">GetLCBValues</EnumVal>
			<EnumVal ord="28">SetLCBValues</EnumVal>
			<EnumVal ord="29">QueryLogByTime</EnumVal>
			<EnumVal ord="30">QueryLogAfter</EnumVal>
			<EnumVal ord="31">GetLogStatusValues</EnumVal>
			<EnumVal ord="32">SendGOOSEMessage</EnumVal>
			<EnumVal ord="33">GetGoCBValues</EnumVal>
			<EnumVal ord="34">SetGoCBValues</EnumVal>
			<EnumVal ord="35">GetGoReference</EnumVal>
			<EnumVal ord="36">GetGOOSEElementNumber</EnumVal>
			<EnumVal ord="37">SendMSVMessage</EnumVal>
			<EnumVal ord="38">GetMSVCBValues</EnumVal>
			<EnumVal ord="39">SetMSVCBValues</EnumVal>
			<EnumVal ord="40">SendUSVMessage</EnumVal>
			<EnumVal ord="41">GetUSVCBValues</EnumVal>
			<EnumVal ord="42">SetUSVCBValues</EnumVal>
			<EnumVal ord="43">Select</EnumVal>
			<EnumVal ord="44">SelectWithValue</EnumVal>
			<EnumVal ord="45">Cancel</EnumVal>
			<EnumVal ord="46">Operate</EnumVal>
			<EnumVal ord="47">CommandTermination</EnumVal>
			<EnumVal ord="48">TimeActivatedOperate</EnumVal>
			<EnumVal ord="49">GetFile</EnumVal>
			<EnumVal ord="50">SetFile</EnumVal>
			<EnumVal ord="51">DeleteFile</EnumVal>
			<EnumVal ord="52">GetFileAttributeValues</EnumVal>
			<EnumVal ord="53">TimeSynchronization</EnumVal>
			<EnumVal ord="54">InternalChange</EnumVal>
			<EnumVal ord="55">GetLogicalNodeDirectory</EnumVal>
		</EnumType>
		<EnumType id="SIPROTEC5_Textlist_TmSrcTyp_V09.50.01_V09.50.01">
			<EnumVal ord="-15">ERR</EnumVal>
			<EnumVal ord="-14">T104</EnumVal>
			<EnumVal ord="-13">T103</EnumVal>
			<EnumVal ord="-12">RTC</EnumVal>
			<EnumVal ord="-11">IEEE1588</EnumVal>
			<EnumVal ord="-10">EXTERN_SIPROTEC</EnumVal>
			<EnumVal ord="-9">MINUTE_PULS</EnumVal>
			<EnumVal ord="-8">DNP30</EnumVal>
			<EnumVal ord="-7">MODBUS</EnumVal>
			<EnumVal ord="-6">PROFIBUS</EnumVal>
			<EnumVal ord="-5">GALILEO</EnumVal>
			<EnumVal ord="-4">SYNC_BOX</EnumVal>
			<EnumVal ord="-3">DCF77</EnumVal>
			<EnumVal ord="-2">GPS</EnumVal>
			<EnumVal ord="-1">HMI</EnumVal>
			<EnumVal ord="1">Unknown</EnumVal>
			<EnumVal ord="2">SNTP</EnumVal>
			<EnumVal ord="3">PTP</EnumVal>
			<EnumVal ord="4">IRIG-B</EnumVal>
			<EnumVal ord="5">Substation internal</EnumVal>
		</EnumType>
		<EnumType id="SIPROTEC5_EnType_Cal_Month_V09.50.01_V09.50.01">
			<EnumVal ord="1">January</EnumVal>
			<EnumVal ord="2">February</EnumVal>
			<EnumVal ord="3">March</EnumVal>
			<EnumVal ord="4">April</EnumVal>
			<EnumVal ord="5">May</EnumVal>
			<EnumVal ord="6">June</EnumVal>
			<EnumVal ord="7">July</EnumVal>
			<EnumVal ord="8">August</EnumVal>
			<EnumVal ord="9">September</EnumVal>
			<EnumVal ord="10">October</EnumVal>
			<EnumVal ord="11">November</EnumVal>
			<EnumVal ord="12">December</EnumVal>
		</EnumType>
		<EnumType id="SIPROTEC5_EnType_Cal_WeekDay_V09.50.01_V09.50.01">
			<EnumVal ord="1">Monday</EnumVal>
			<EnumVal ord="2">Tuesday</EnumVal>
			<EnumVal ord="3">Wednesday</EnumVal>
			<EnumVal ord="4">Thursday</EnumVal>
			<EnumVal ord="5">Friday</EnumVal>
			<EnumVal ord="6">Saturday</EnumVal>
			<EnumVal ord="7">Sunday</EnumVal>
		</EnumType>
		<EnumType id="SIPROTEC5_EnType_Cal_Occ_Period_V09.50.01_V09.50.01">
			<EnumVal ord="0">Hour</EnumVal>
			<EnumVal ord="1">Day</EnumVal>
			<EnumVal ord="2">Week</EnumVal>
			<EnumVal ord="3">Month</EnumVal>
			<EnumVal ord="4">Year</EnumVal>
		</EnumType>
		<EnumType id="SIPROTEC5_EnType_Cal_Occ_Type_V09.50.01_V09.50.01">
			<EnumVal ord="0">Time</EnumVal>
			<EnumVal ord="1">WeekDay</EnumVal>
			<EnumVal ord="2">WeekOfYear</EnumVal>
			<EnumVal ord="3">DayOfMonth</EnumVal>
			<EnumVal ord="4">DayOfYear</EnumVal>
		</EnumType>
		<EnumType id="SIPROTEC5_Textlist_ctlModel_status_only_V09.50.01_V09.50.01">
			<EnumVal ord="0">status-only</EnumVal>
		</EnumType>
		<EnumType id="SIPROTEC5_EnType_Multiplier_V09.50.01_V09.50.01">
			<EnumVal ord="-24">y</EnumVal>
			<EnumVal ord="-21">z</EnumVal>
			<EnumVal ord="-18">a</EnumVal>
			<EnumVal ord="-15">f</EnumVal>
			<EnumVal ord="-12">p</EnumVal>
			<EnumVal ord="-9">n</EnumVal>
			<EnumVal ord="-6">µ</EnumVal>
			<EnumVal ord="-3">m</EnumVal>
			<EnumVal ord="-2">c</EnumVal>
			<EnumVal ord="-1">d</EnumVal>
			<EnumVal ord="0"/>
			<EnumVal ord="1">da</EnumVal>
			<EnumVal ord="2">h</EnumVal>
			<EnumVal ord="3">k</EnumVal>
			<EnumVal ord="6">M</EnumVal>
			<EnumVal ord="9">G</EnumVal>
			<EnumVal ord="12">T</EnumVal>
			<EnumVal ord="15">P</EnumVal>
			<EnumVal ord="18">E</EnumVal>
			<EnumVal ord="21">Z</EnumVal>
			<EnumVal ord="24">Y</EnumVal>
		</EnumType>
		<EnumType id="SIPROTEC5_EnType_SIUnit_V09.50.01_V09.50.01">
			<EnumVal ord="-40">ns</EnumVal>
			<EnumVal ord="-39">'</EnumVal>
			<EnumVal ord="-38">kV/mA</EnumVal>
			<EnumVal ord="-37">kA/V</EnumVal>
			<EnumVal ord="-36">ohm/m</EnumVal>
			<EnumVal ord="-35">ppm/°C</EnumVal>
			<EnumVal ord="-34">F/m</EnumVal>
			<EnumVal ord="-33">H/m</EnumVal>
			<EnumVal ord="-32">ms/kPa</EnumVal>
			<EnumVal ord="-31">kPa</EnumVal>
			<EnumVal ord="-30">ms/V</EnumVal>
			<EnumVal ord="-29">ms/K</EnumVal>
			<EnumVal ord="-28">V/s</EnumVal>
			<EnumVal ord="-27">I/Ir*s</EnumVal>
			<EnumVal ord="-26">1/week</EnumVal>
			<EnumVal ord="-25">1/d</EnumVal>
			<EnumVal ord="-24">1/h</EnumVal>
			<EnumVal ord="-23">1/min</EnumVal>
			<EnumVal ord="-22">periods</EnumVal>
			<EnumVal ord="-21">GB</EnumVal>
			<EnumVal ord="-19">cycle</EnumVal>
			<EnumVal ord="-18">mile</EnumVal>
			<EnumVal ord="-17">inch</EnumVal>
			<EnumVal ord="-16">°F</EnumVal>
			<EnumVal ord="-15">I/IrObj</EnumVal>
			<EnumVal ord="-14">MB</EnumVal>
			<EnumVal ord="-13">KB</EnumVal>
			<EnumVal ord="-12">Bytes</EnumVal>
			<EnumVal ord="-11">p.u.</EnumVal>
			<EnumVal ord="-10">day(s)</EnumVal>
			<EnumVal ord="-7">%</EnumVal>
			<EnumVal ord="-4">F/mi</EnumVal>
			<EnumVal ord="-3">ohm/mi</EnumVal>
			<EnumVal ord="-2">F/km</EnumVal>
			<EnumVal ord="-1">ohm/km</EnumVal>
			<EnumVal ord="1"/>
			<EnumVal ord="2">m</EnumVal>
			<EnumVal ord="3">kg</EnumVal>
			<EnumVal ord="4">s</EnumVal>
			<EnumVal ord="5">A</EnumVal>
			<EnumVal ord="6">K</EnumVal>
			<EnumVal ord="7">mol</EnumVal>
			<EnumVal ord="8">cd</EnumVal>
			<EnumVal ord="9">deg</EnumVal>
			<EnumVal ord="10">rad</EnumVal>
			<EnumVal ord="11">sr</EnumVal>
			<EnumVal ord="21">Gy</EnumVal>
			<EnumVal ord="23">°C</EnumVal>
			<EnumVal ord="24">Sv</EnumVal>
			<EnumVal ord="25">F</EnumVal>
			<EnumVal ord="26">C</EnumVal>
			<EnumVal ord="27">S</EnumVal>
			<EnumVal ord="28">H</EnumVal>
			<EnumVal ord="29">V</EnumVal>
			<EnumVal ord="30">ohm</EnumVal>
			<EnumVal ord="31">J</EnumVal>
			<EnumVal ord="32">N</EnumVal>
			<EnumVal ord="33">Hz</EnumVal>
			<EnumVal ord="34">lx</EnumVal>
			<EnumVal ord="35">Lm</EnumVal>
			<EnumVal ord="36">Wb</EnumVal>
			<EnumVal ord="37">T</EnumVal>
			<EnumVal ord="38">W</EnumVal>
			<EnumVal ord="39">Pa</EnumVal>
			<EnumVal ord="41">m²</EnumVal>
			<EnumVal ord="42">m³</EnumVal>
			<EnumVal ord="43">m/s</EnumVal>
			<EnumVal ord="44">m/s²</EnumVal>
			<EnumVal ord="45">m³/s</EnumVal>
			<EnumVal ord="46">m/m³</EnumVal>
			<EnumVal ord="47">M</EnumVal>
			<EnumVal ord="48">kg/m³</EnumVal>
			<EnumVal ord="49">m²/s</EnumVal>
			<EnumVal ord="50">W/m K</EnumVal>
			<EnumVal ord="51">J/K</EnumVal>
			<EnumVal ord="52">ppm</EnumVal>
			<EnumVal ord="53">1/s</EnumVal>
			<EnumVal ord="54">rad/s</EnumVal>
			<EnumVal ord="55">W/m²</EnumVal>
			<EnumVal ord="56">J/m²</EnumVal>
			<EnumVal ord="57">S/m</EnumVal>
			<EnumVal ord="58">K/s</EnumVal>
			<EnumVal ord="59">Pa/s</EnumVal>
			<EnumVal ord="60">J/kg K</EnumVal>
			<EnumVal ord="61">VA</EnumVal>
			<EnumVal ord="63">VAr</EnumVal>
			<EnumVal ord="64">phi</EnumVal>
			<EnumVal ord="65">cos(phi)</EnumVal>
			<EnumVal ord="66">Vs</EnumVal>
			<EnumVal ord="67">V²</EnumVal>
			<EnumVal ord="68">As</EnumVal>
			<EnumVal ord="69">A²</EnumVal>
			<EnumVal ord="70">A²t</EnumVal>
			<EnumVal ord="71">VAh</EnumVal>
			<EnumVal ord="72">Wh</EnumVal>
			<EnumVal ord="73">VArh</EnumVal>
			<EnumVal ord="74">V/Hz</EnumVal>
			<EnumVal ord="75">Hz/s</EnumVal>
			<EnumVal ord="76">char</EnumVal>
			<EnumVal ord="77">char/s</EnumVal>
			<EnumVal ord="78">kgm²</EnumVal>
			<EnumVal ord="79">dB</EnumVal>
			<EnumVal ord="80">J/Wh</EnumVal>
			<EnumVal ord="81">W/s</EnumVal>
			<EnumVal ord="82">l/s</EnumVal>
			<EnumVal ord="83">dBm</EnumVal>
			<EnumVal ord="84">h</EnumVal>
			<EnumVal ord="85">min</EnumVal>
		</EnumType>
		<EnumType id="SIPROTEC5_EnType_ErrMeasT_V09.50.01_V09.50.01">
			<EnumVal ord="1">Error Meas. Trans. 1</EnumVal>
			<EnumVal ord="2">Error Meas. Trans. 2</EnumVal>
			<EnumVal ord="3">Error Meas. Trans. 3</EnumVal>
			<EnumVal ord="4">Error Meas. Trans. 4</EnumVal>
			<EnumVal ord="5">Error Meas. Trans. 5</EnumVal>
			<EnumVal ord="6">Meas. Transd. 1..5 no error</EnumVal>
		</EnumType>
		<EnumType id="SIPROTEC5_EnType_ErrComp_V09.50.01_V09.50.01">
			<EnumVal ord="1">Comp. err. Brd1/Term1</EnumVal>
			<EnumVal ord="2">Comp. err. Brd1/Term2</EnumVal>
			<EnumVal ord="3">Comp. err. Brd2/Term1</EnumVal>
			<EnumVal ord="4">Comp. err. Brd2/Term2</EnumVal>
			<EnumVal ord="5">Comp. err. Brd3/Term1</EnumVal>
			<EnumVal ord="6">Comp. err. Brd3/Term2</EnumVal>
			<EnumVal ord="7">Comp. err. Brd4/Term1</EnumVal>
			<EnumVal ord="8">Comp. err. Brd4/Term2</EnumVal>
			<EnumVal ord="9">Comp. err. Brd5/Term1</EnumVal>
			<EnumVal ord="10">Comp. err. Brd5/Term2</EnumVal>
			<EnumVal ord="11">Comp. err. Brd6/Term1</EnumVal>
			<EnumVal ord="12">Comp. err. Brd6/Term2</EnumVal>
			<EnumVal ord="13">Comp. err. Brd7/Term1</EnumVal>
			<EnumVal ord="14">Comp. err. Brd7/Term2</EnumVal>
			<EnumVal ord="15">Comp. err. Brd8/Term1</EnumVal>
			<EnumVal ord="16">Comp. err. Brd8/Term2</EnumVal>
			<EnumVal ord="17">Comp. err. Brd9/Term1</EnumVal>
			<EnumVal ord="18">Comp. err. Brd9/Term2</EnumVal>
			<EnumVal ord="19">Comp. err. Brd10/Term1</EnumVal>
			<EnumVal ord="20">Comp. err. Brd10/Term2</EnumVal>
			<EnumVal ord="21">Comp. err. Brd11/Term1</EnumVal>
			<EnumVal ord="22">Comp. err. Brd11/Term2</EnumVal>
			<EnumVal ord="23">Comp. err. Brd12/Term1</EnumVal>
			<EnumVal ord="24">Comp. err. Brd12/Term2</EnumVal>
			<EnumVal ord="25">Comp. err. Brd1</EnumVal>
			<EnumVal ord="26">Comp. err. Brd2</EnumVal>
			<EnumVal ord="27">Comp. err. Brd3</EnumVal>
			<EnumVal ord="28">Comp. err. Brd4</EnumVal>
			<EnumVal ord="29">Comp. err. Brd5</EnumVal>
			<EnumVal ord="30">Comp. err. Brd6</EnumVal>
			<EnumVal ord="31">Comp. err. Brd7</EnumVal>
			<EnumVal ord="32">Comp. err. Brd8</EnumVal>
			<EnumVal ord="33">Comp. err. Brd9</EnumVal>
			<EnumVal ord="34">Comp. err. Brd10</EnumVal>
			<EnumVal ord="35">Comp. err. Brd11</EnumVal>
			<EnumVal ord="36">Comp. err. Brd12</EnumVal>
			<EnumVal ord="37">Compensation err. free.</EnumVal>
		</EnumType>
		<EnumType id="SIPROTEC5_EnType_ErrOffset_V09.50.01_V09.50.01">
			<EnumVal ord="1">Offset error at board 1 on</EnumVal>
			<EnumVal ord="2">Offset error at board 2 on</EnumVal>
			<EnumVal ord="3">Offset error at board 3 on</EnumVal>
			<EnumVal ord="4">Offset error at board 4 on</EnumVal>
			<EnumVal ord="5">Offset error at board 5 on</EnumVal>
			<EnumVal ord="6">Offset error at board 6 on</EnumVal>
			<EnumVal ord="7">Offset error at board 7 on</EnumVal>
			<EnumVal ord="8">Offset error at board 8 on</EnumVal>
			<EnumVal ord="9">Offset error at board 9 on</EnumVal>
			<EnumVal ord="10">Offset error at board 10 on</EnumVal>
			<EnumVal ord="11">Offset error at board 11 on</EnumVal>
			<EnumVal ord="12">Offset error at board 12 on</EnumVal>
			<EnumVal ord="13">Offset error at board 1 off</EnumVal>
			<EnumVal ord="14">Offset error at board 2 off</EnumVal>
			<EnumVal ord="15">Offset error at board 3 off</EnumVal>
			<EnumVal ord="16">Offset error at board 4 off</EnumVal>
			<EnumVal ord="17">Offset error at board 5 off</EnumVal>
			<EnumVal ord="18">Offset error at board 6 off</EnumVal>
			<EnumVal ord="19">Offset error at board 7 off</EnumVal>
			<EnumVal ord="20">Offset error at board 8 off</EnumVal>
			<EnumVal ord="21">Offset error at board 9 off</EnumVal>
			<EnumVal ord="22">Offset error at board 10 off</EnumVal>
			<EnumVal ord="23">Offset error at board 11 off</EnumVal>
			<EnumVal ord="24">Offset error at board 12 off</EnumVal>
			<EnumVal ord="25">No offset error</EnumVal>
		</EnumType>
		<EnumType id="SIPROTEC5_EnType_Login_V09.50.01_V09.50.01">
			<EnumVal ord="0">invalid</EnumVal>
			<EnumVal ord="1">logon blocked</EnumVal>
			<EnumVal ord="2">logon reactivated</EnumVal>
			<EnumVal ord="3">PW change OK</EnumVal>
			<EnumVal ord="4">PW change failed</EnumVal>
			<EnumVal ord="5">logon OK</EnumVal>
			<EnumVal ord="6">logon failed</EnumVal>
			<EnumVal ord="7">activation of connection PW OK</EnumVal>
			<EnumVal ord="8">activation of connection PW failed</EnumVal>
			<EnumVal ord="9">deactivation of connection PW OK</EnumVal>
			<EnumVal ord="10">deactivation of connection PW failed</EnumVal>
		</EnumType>
		<EnumType id="SIPROTEC5_Textlist_Behavior_OnBlockedTestTestBlocked_V09.50.01_V09.50.01">
			<EnumVal ord="1">on</EnumVal>
			<EnumVal ord="2">blocked</EnumVal>
			<EnumVal ord="3">test</EnumVal>
			<EnumVal ord="4">test/blocked</EnumVal>
		</EnumType>
		<EnumType id="SIPROTEC5_Textlist_Behavior_V09.50.01_V09.50.01">
			<EnumVal ord="1">on</EnumVal>
			<EnumVal ord="2">blocked</EnumVal>
			<EnumVal ord="3">test</EnumVal>
			<EnumVal ord="4">test/blocked</EnumVal>
			<EnumVal ord="5">off</EnumVal>
		</EnumType>
		<EnumType id="SIPROTEC5_Textlist_ctlModel_dir_with_nor_sec_V09.50.01_V09.50.01">
			<EnumVal ord="1">direct-with-normal-security</EnumVal>
		</EnumType>
		<EnumType id="SIPROTEC5_Textlist_ctlModel_dir_with_enh_sec_V09.50.01_V09.50.01">
			<EnumVal ord="3">direct-with-enhanced-security</EnumVal>
		</EnumType>
		<EnumType id="SIPROTEC5_Textlist_orCategory_V09.50.01_V09.50.01">
			<EnumVal ord="0">not-supported</EnumVal>
			<EnumVal ord="1">bay-control</EnumVal>
			<EnumVal ord="2">station-control</EnumVal>
			<EnumVal ord="3">remote-control</EnumVal>
			<EnumVal ord="4">automatic-bay</EnumVal>
			<EnumVal ord="5">automatic-station</EnumVal>
			<EnumVal ord="6">automatic-remote</EnumVal>
			<EnumVal ord="7">maintenance</EnumVal>
			<EnumVal ord="8">process</EnumVal>
		</EnumType>
		<EnumType id="SIPROTEC5_Textlist_Health_V09.50.01_V09.50.01">
			<EnumVal ord="1">Ok</EnumVal>
			<EnumVal ord="2">Warning</EnumVal>
			<EnumVal ord="3">Alarm</EnumVal>
		</EnumType>
		<EnumType id="SIPROTEC5_EnType_SwitchingAuthority_LocalDigsiStationRemote_V09.50.01_V09.50.01">
			<EnumVal ord="0">local</EnumVal>
			<EnumVal ord="1">DIGSI</EnumVal>
			<EnumVal ord="2">local/station</EnumVal>
			<EnumVal ord="3">station</EnumVal>
			<EnumVal ord="4">station/remote</EnumVal>
			<EnumVal ord="5">remote</EnumVal>
			<EnumVal ord="6">local/station/remote</EnumVal>
		</EnumType>
		<EnumType id="SIPROTEC5_EnType_SwitchingMode_V09.50.01_V09.50.01">
			<EnumVal ord="0">not relevant</EnumVal>
			<EnumVal ord="1">interlocked</EnumVal>
			<EnumVal ord="2">non-interlocked</EnumVal>
		</EnumType>
	</DataTypeTemplates>
</SCL>