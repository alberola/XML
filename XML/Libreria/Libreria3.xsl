<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
<html>
<body> 
<h2>Libreria On-Line</h2>
<table border="1" width="400">
	<tr bgcolor="lightgreen">
		<th>Titulo</th>
		<th>Autor</th>
		<th>Precio</th>
	</tr>
  	<xsl:for-each select="Libreria/Libro">
	<xsl:sort select="Precio" order="descending"/>
	
	<xsl:if test="Precio &gt;10">
	<tr bgcolor="lightblue">
		<xsl:if test="Autor='Cervantes'">
			<td><xsl:value-of select="Titulo"/></td>
			<td><xsl:value-of select="Autor"/>
				<xsl:if test = "Novedad = 'Si'">
					<img src = "new.gif" width="50" height="50"/>
				</xsl:if>
			</td>
			<!-- Cuando el precio sea inferior a 35 no aparecerá como en este caso. -->
			<xsl:choose>
				<xsl:when test="Precio > 35">
				<td bgcolor="FF00FF"><xsl:value-of select="Precio"/></td>
				</xsl:when>
			</xsl:choose>
		</xsl:if>
		<xsl:if test="Autor='Garcia Marquez'">
			<td><xsl:value-of select="Titulo"/></td>
			<td><xsl:value-of select="Autor"/>
				<xsl:if test = "Novedad = 'Si'">
					<img src = "new.gif" width="50" height="50"/>
				</xsl:if>
			</td>
			<!-- Cuando el precio sea inferior a 35 no aparecerá como en este caso. -->
			<xsl:choose>
				<xsl:when test="Precio > 35">
				<td bgcolor="FF00FF"><xsl:value-of select="Precio"/></td>
				</xsl:when>
			</xsl:choose>
		</xsl:if>
		<xsl:if test="Autor='Alejandro'">
			<td width="100" bgcolor="tomato"><font color="#0000FF"><xsl:value-of select="Titulo"/></font></td>
			<td width="130" bgcolor="tomato"><font color="#0000FF"><xsl:value-of select="Autor"/></font>
				<xsl:if test = "Novedad = 'Si'">
					<img src = "new.gif" width="50" height="50"/>
				</xsl:if>
			</td>
			<!-- Cuando el precio sea inferior a 35 no aparecerá TOCAR EL XML PARA PROBAR SU FUNCIONAMIENTO. -->
			<xsl:choose>
				<xsl:when test="Precio > 35">
				<td bgcolor="FF00FF"><xsl:value-of select="Precio"/></td>
				</xsl:when>
			</xsl:choose>
		</xsl:if>
		<xsl:if test="Autor='Pablo Neruda'">
			<td><xsl:value-of select="Titulo"/></td>
			<td><xsl:value-of select="Autor"/>
				<xsl:if test = "Novedad = 'Si'">
					<img src = "new.gif" width="50" height="50"/>
				</xsl:if>
			</td>
			<!-- Cuando el precio sea inferior a 35 no aparecerá TOCAR EL XML PARA PROBAR SU FUNCIONAMIENTO. -->
			<xsl:choose>
				<xsl:when test="Precio > 35">
				<td bgcolor="FF00FF"><xsl:value-of select="Precio"/></td>
				</xsl:when>
			</xsl:choose>
		</xsl:if>
	</tr>
	</xsl:if>
	</xsl:for-each>
	


</table>
</body>
</html>
</xsl:template>
</xsl:stylesheet>



