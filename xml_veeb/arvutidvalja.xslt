<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl"
>
    <xsl:output method="html" indent="yes" encoding="utf-8"/>

    <xsl:template match="/">
		1.arvuti nimetus
		<xsl:value-of select="arvutid/arvuti[1]/nimetus"/>
		<br/>
		<strong>Kõik arvutid</strong>
		<ul>
			<xsl:for-each select="arvutid/arvuti">
				<li>
					<xsl:value-of select="nimetus"/>,				
					<xsl:value-of select="hind"/>,
					<xsl:value-of select="firma"/>.
				</li>
					<xsl:value-of select="lisad"/>

				<br/>
			</xsl:for-each>
		</ul>
    </xsl:template>
</xsl:stylesheet>
