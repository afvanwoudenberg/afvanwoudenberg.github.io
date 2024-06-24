<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" 
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
  xmlns:camt="urn:iso:std:iso:20022:tech:xsd:camt.053.001.02">

<xsl:output method="xml" version="1.0" encoding="UTF-8" indent="yes"/>

<xsl:template match="/camt:Document/camt:BkToCstmrStmt"> 
<data>
    <xsl:for-each select="camt:Stmt/camt:Bal">
    <row>    
      <Identification><xsl:value-of select="../camt:Id"/></Identification>
      <xsl:if test="camt:Tp/camt:CdOrPrtry/camt:Cd">
        <Code><xsl:value-of select="camt:Tp/camt:CdOrPrtry/camt:Cd"/></Code>
      </xsl:if>
      <xsl:if test="camt:Tp/camt:CdOrPrtry/camt:Prtry">
        <Proprietary><xsl:value-of select="camt:Tp/camt:CdOrPrtry/camt:Prtry"/></Proprietary>
      </xsl:if>
      <Amount><xsl:value-of select="camt:Amt"/></Amount>
      <Currency><xsl:value-of select="camt:Amt/@Ccy"/></Currency>
      <CreditDebitIndicator><xsl:value-of select="camt:CdtDbtInd"/></CreditDebitIndicator>
      <Date><xsl:value-of select="camt:Dt"/></Date>
    </row>
  </xsl:for-each>
</data>
</xsl:template>
 
</xsl:stylesheet>
