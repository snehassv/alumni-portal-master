<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="/">
		<html>
		 <body>
		 <h2>My CD Collection</h2>
		 <table border="1">
		 <tr bgcolor="#9acd32">
		 <th>Title</th>
		 <th>Artist</th>
		 <th>Country</th>
		 <th>Price</th>
		 </tr> 
		XSL Sheet
		<xsl:for-each select="catalog/cd">
		<xsl:sort select="artist"/>
		<xsl:if test="price > 10 ">
		 <tr>
		 <td><xsl:value-of select="title"/></td>
		 <td><xsl:value-of select="artist"/></td>
		 <td><xsl:value-of select="country"/></td>
		 <td><xsl:value-of select="price"/></td>
		 </tr>
		 </xsl:if>
		 </xsl:for-each>
		 </table>
		 </body>
		 </html>
	</xsl:template>
	</xsl:stylesheet>