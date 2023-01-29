<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
<html>
  <head>
    <meta charset="UTF-8"/>
    <title>Tabla de artistas</title>
  </head>
  <body>
    <table border="1">
      <tr>
        <th>Código</th>
        <th>Nombre</th>
        <th>Año de nacimiento</th>
        <th>Año de fallecimiento</th>
        <th>País</th>
        <th>Página web</th>
      </tr>
	  <xsl:for-each select="artistas/artista">
	  <xsl:sort select="nacimiento" order="ascending"/>
			  <tr>
				<td><xsl:value-of select="codigo"/></td>
				<td><xsl:value-of select="nombreCompleto"/></td>
				<td><xsl:value-of select="nacimiento"/></td>
				<td>
					<xsl:if test="fallecimiento != ''">
						<xsl:value-of select="fallecimiento"/>
					</xsl:if>
					<xsl:if test="fallecimiento = ''">
						Desconocido
					</xsl:if>
				</td>
				<td><xsl:value-of select="pais"/></td>
				<td>
				  <a target="blank">
					  <xsl:attribute name="href"><xsl:value-of select="fichaCompleta"/></xsl:attribute>
					  Saber más
				  </a>
				</td>
			  </tr>
	  </xsl:for-each>
    </table>
  </body>
</html>
</xsl:template>
</xsl:stylesheet>