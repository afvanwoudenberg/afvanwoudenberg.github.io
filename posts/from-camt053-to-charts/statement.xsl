<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" 
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
  xmlns:camt="urn:iso:std:iso:20022:tech:xsd:camt.053.001.02">

<xsl:output method="xml" version="1.0" encoding="UTF-8" indent="yes"/>

<xsl:template match="/camt:Document/camt:BkToCstmrStmt"> 
<data>
  <row>
    <xsl:for-each select="camt:Stmt">
      <MessageIdentification><xsl:value-of select="/camt:Document/camt:BkToCstmrStmt/camt:GrpHdr/camt:MsgId"/></MessageIdentification>
      <Identification><xsl:value-of select="camt:Id"/></Identification>
      <xsl:if test="camt:ElctrncSeqNb">
        <ElectronicSequenceNumber><xsl:value-of select="camt:ElctrncSeqNb"/></ElectronicSequenceNumber>
      </xsl:if>
      <CreationDateTime><xsl:value-of select="camt:CreDtTm"/></CreationDateTime>
      <IBAN><xsl:value-of select="camt:Acct/camt:Id/camt:IBAN"/></IBAN>
      <xsl:if test="camt:Acct/camt:Ccy">
        <Currency><xsl:value-of select="camt:Acct/camt:Ccy"/></Currency>
      </xsl:if>
      <xsl:if test="camt:Acct/camt:Svcr">
        <BIC><xsl:value-of select="camt:Acct/camt:Svcr/camt:FinInstnId/camt:BIC"/></BIC>
      </xsl:if>
    </xsl:for-each>
  </row>
</data>
</xsl:template>
 
</xsl:stylesheet>
