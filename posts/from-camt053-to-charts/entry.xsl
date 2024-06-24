<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" 
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
  xmlns:camt="urn:iso:std:iso:20022:tech:xsd:camt.053.001.02">

<xsl:output method="xml" version="1.0" encoding="UTF-8" indent="yes"/>

<xsl:template match="/camt:Document/camt:BkToCstmrStmt"> 
<data>
  <xsl:for-each select="camt:Stmt/camt:Ntry">
    <row>     
      <Identification><xsl:value-of select="../camt:Id"/></Identification>
      <Amount><xsl:value-of select="camt:Amt"/></Amount>
      <Currency><xsl:value-of select="camt:Amt/@Ccy"/></Currency>
      <CreditDebitIndicator><xsl:value-of select="camt:CdtDbtInd"/></CreditDebitIndicator>
      <Status><xsl:value-of select="camt:Sts"/></Status>
      <xsl:if test="camt:BookgDt">
        <BookingDate><xsl:value-of select="camt:BookgDt/camt:Dt"/></BookingDate>
      </xsl:if>
      <xsl:if test="camt:ValDt">
        <ValueDate><xsl:value-of select="camt:ValDt/camt:Dt"/></ValueDate>
      </xsl:if>
      <xsl:if test="camt:AcctSvcrRef">
        <AccountServicerReference><xsl:value-of select="camt:AcctSvcrRef"/></AccountServicerReference>
      </xsl:if>
      <xsl:if test="camt:BkTxCd/camt:Domn">
        <DomainCode><xsl:value-of select="camt:BkTxCd/camt:Domn/camt:Cd"/></DomainCode>
	<FamilyCode><xsl:value-of select="camt:BkTxCd/camt:Domn/camt:Fmly/camt:Cd"/></FamilyCode>
	<SubFamilyCode><xsl:value-of select="camt:BkTxCd/camt:Domn/camt:Fmly/camt:SubFmlyCd"/></SubFamilyCode>
      </xsl:if>
      <xsl:if test="camt:BkTxCd/camt:Prtry">
        <ProprietaryCode><xsl:value-of select="camt:BkTxCd/camt:Prtry/camt:Cd"/></ProprietaryCode>
	<xsl:if test="camt:BkTxCd/camt:Prtry/camt:Issr">
	  <Issuer><xsl:value-of select="camt:BkTxCd/camt:Prtry/camt:Issr"/></Issuer>
        </xsl:if>
      </xsl:if>
      <xsl:if test="camt:NtryDtls/camt:TxDtls/camt:Refs/camt:MsgId">
        <DetailsMessageIdentification><xsl:value-of select="camt:NtryDtls/camt:TxDtls/camt:Refs/camt:MsgId"/></DetailsMessageIdentification>
      </xsl:if>
      <xsl:if test="camt:NtryDtls/camt:TxDtls/camt:Refs/camt:InstrId">
        <DetailsInstructionIdentification><xsl:value-of select="camt:NtryDtls/camt:TxDtls/camt:Refs/camt:InstrId"/></DetailsInstructionIdentification>
      </xsl:if>
      <xsl:if test="camt:NtryDtls/camt:TxDtls/camt:Refs/camt:AcctSvcrRef">
        <DetailsAccountServicerReference><xsl:value-of select="camt:NtryDtls/camt:TxDtls/camt:Refs/camt:AcctSvcrRef"/></DetailsAccountServicerReference>
      </xsl:if>
      <xsl:if test="camt:NtryDtls/camt:TxDtls/camt:Refs/camt:EndToEndId">
        <DetailsEndToEndIdentification><xsl:value-of select="camt:NtryDtls/camt:TxDtls/camt:Refs/camt:EndToEndId"/></DetailsEndToEndIdentification>
      </xsl:if>
      <xsl:if test="camt:NtryDtls/camt:TxDtls/camt:Refs/camt:MndtId">
        <DetailsMandateIdentification><xsl:value-of select="camt:NtryDtls/camt:TxDtls/camt:Refs/camt:MndtId"/></DetailsMandateIdentification>
      </xsl:if>
      <xsl:if test="camt:NtryDtls/camt:TxDtls/camt:Refs/camt:TxId">
        <DetailsTransactionIdentification><xsl:value-of select="camt:NtryDtls/camt:TxDtls/camt:Refs/camt:TxId"/></DetailsTransactionIdentification>
      </xsl:if>
      <xsl:if test="camt:NtryDtls/camt:TxDtls/camt:AmtDtls/camt:TxAmt/camt:Amt">
        <DetailsAmount><xsl:value-of select="camt:NtryDtls/camt:TxDtls/camt:AmtDtls/camt:TxAmt/camt:Amt"/></DetailsAmount>
	<DetailsCurrency><xsl:value-of select="camt:NtryDtls/camt:TxDtls/camt:AmtDtls/camt:TxAmt/camt:Amt/@Ccy"/></DetailsCurrency>
      </xsl:if>
      <xsl:if test="camt:NtryDtls/camt:TxDtls/camt:RltdPties/camt:Cdtr/camt:Nm">
        <DetailsCreditorName><xsl:value-of select="camt:NtryDtls/camt:TxDtls/camt:RltdPties/camt:Cdtr/camt:Nm"/></DetailsCreditorName>
      </xsl:if>
      <xsl:if test="camt:NtryDtls/camt:TxDtls/camt:RltdPties/camt:Cdtr/camt:PstlAdr/camt:Ctry">
        <DetailsCreditorCountry><xsl:value-of select="camt:NtryDtls/camt:TxDtls/camt:RltdPties/camt:Cdtr/camt:PstlAdr/camt:Ctry"/></DetailsCreditorCountry>
      </xsl:if>
      <xsl:if test="camt:NtryDtls/camt:TxDtls/camt:RltdPties/camt:Dbtr/camt:Nm">
        <DetailsDebtorName><xsl:value-of select="camt:NtryDtls/camt:TxDtls/camt:RltdPties/camt:Dbtr/camt:Nm"/></DetailsDebtorName>
      </xsl:if>
      <xsl:if test="camt:NtryDtls/camt:TxDtls/camt:RltdPties/camt:CdtrAcct/camt:Id/camt:IBAN">
        <DetailsCreditorIBAN><xsl:value-of select="camt:NtryDtls/camt:TxDtls/camt:RltdPties/camt:CdtrAcct/camt:Id/camt:IBAN"/></DetailsCreditorIBAN>
      </xsl:if>
      <xsl:if test="camt:NtryDtls/camt:TxDtls/camt:RltdPties/camt:DbtrAcct/camt:Id/camt:IBAN">
        <DetailsDebtorIBAN><xsl:value-of select="camt:NtryDtls/camt:TxDtls/camt:RltdPties/camt:DbAcct/camt:Id/camt:IBAN"/></DetailsDebtorIBAN>
      </xsl:if>
      <xsl:if test="camt:NtryDtls/camt:TxDtls/camt:RltdAgts/camt:DbtrAgt/camt:FinInstnId/camt:BIC">
        <DetailsDebtorAgentBIC><xsl:value-of select="camt:NtryDtls/camt:TxDtls/camt:RltdAgts/camt:DbtrAgt/camt:FinInstnId/camt:BIC"/></DetailsDebtorAgentBIC>
      </xsl:if>
      <xsl:if test="camt:NtryDtls/camt:TxDtls/camt:RltdAgts/camt:CdtrAgt/camt:FinInstnId/camt:BIC">
        <DetailsCreditorAgentBIC><xsl:value-of select="camt:NtryDtls/camt:TxDtls/camt:RltdAgts/camt:CdtrAgt/camt:FinInstnId/camt:BIC"/></DetailsCreditorAgentBIC>
</xsl:if>
<xsl:if test="camt:NtryDtls/camt:TxDtls/camt:RltdAgts/camt:DbtrAgt/camt:FinInstnId/camt:BIC">
        <DetailsDebtorAgentBIC><xsl:value-of select="camt:NtryDtls/camt:TxDtls/camt:RltdAgts/camt:DbtrAgt/camt:FinInstnId/camt:BIC"/></DetailsDebtorAgentBIC>
      </xsl:if>
      <xsl:if test="camt:NtryDtls/camt:TxDtls/camt:RmtInf/camt:Ustrd">
        <DetailsRemittanceInformationUnstructured><xsl:value-of select="camt:NtryDtls/camt:TxDtls/camt:RmtInf/camt:Ustrd"/></DetailsRemittanceInformationUnstructured>
      </xsl:if>
      <xsl:if test="camt:AddtlNtryInf">
        <AdditionalEntryInformation><xsl:value-of select="camt:AddtlNtryInf"/></AdditionalEntryInformation>
      </xsl:if>
    </row>
  </xsl:for-each>
</data>
</xsl:template>
 
</xsl:stylesheet>
