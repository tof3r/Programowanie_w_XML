<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

	<xsl:template match="/">
		<table width="{tabelka/@width}" height="{tabelka/@height}"
			border="{tabelka/@border}">
			<xsl:apply-templates />
		</table>
	</xsl:template>

	<xsl:template match="wiersz">
		<tr>
			<xsl:apply-templates />
		</tr>
	</xsl:template>

	<xsl:template match="komorka">
		<td>
			<xsl:apply-templates />
		</td>
	</xsl:template>

	<xsl:template match="komorka/tabelka">
		<table width="{@width}" height="{@height}" border="{@border}">
			<xsl:apply-templates />
		</table>
	</xsl:template>

</xsl:stylesheet>