<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" 
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
  xmlns:camt="urn:iso:std:iso:20022:tech:xsd:camt.053.001.02">

<xsl:output method="xml" version="1.0" encoding="UTF-8" indent="yes"/>

<xsl:template match="/camt:Document/camt:BkToCstmrStmt/camt:GrpHdr"> 
<data>
  <row>
    <MessageIdentification><xsl:value-of select="camt:MsgId"/></MessageIdentification>
    <CreationDateTime><xsl:value-of select="camt:CreDtTm"/></CreationDateTime>
    <xsl:if test="camt:MsgPgntn">
      <PageNumber><xsl:value-of select="camt:MsgPgntn/camt:PgNb"/></PageNumber>
      <LastPageIndicator><xsl:value-of select="camt:MsgPgntn/camt:LastPgInd"/></LastPageIndicator>
    </xsl:if>
  </row>
</data>
</xsl:template>
 
</xsl:stylesheet>
