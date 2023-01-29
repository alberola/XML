<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
<html>
	<body> 
		<h2>Noticias</h2>
		<br>
		</br>
		<hr color="black"/>
		<xsl:for-each select="Noticias/Noticia">
			<div>
				<xsl:attribute name="style">
					<!-- POSICION -->
					position:absolute;					
					left:<xsl:value-of select="X"/>;
					top:<xsl:value-of select="Y"/>;
					<!-- TAMAÑO DEL DIV -->
					width: <xsl:value-of select="Ancho"/>;
					height: <xsl:value-of select="Alto"/>;
					<!-- COLORES -->
					background-color:<xsl:value-of select="ColorFondo"/>;
					<!-- COLOR Y ANCHO BORDE -->
					border:<xsl:value-of select="AnchoLinea"/> solid <xsl:value-of select="ColorLinea"/>;
					<!-- TEXTO -->					
				</xsl:attribute>
				<p color="#000000"><xsl:value-of select="Texto"/></p>
			</div>
		</xsl:for-each>
	</body>
</html>
</xsl:template>
</xsl:stylesheet>



