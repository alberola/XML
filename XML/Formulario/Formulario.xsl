<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
<html>
	<body style="background:grey">
		<div>
		<h1>FORMULARIO DE SUSCRIPCION AL BOLETIN MENSUAL</h1>
		</div>
		<form>
				<div>
				<xsl:value-of select="Formulario/Nombre/Etiqueta"/>
					<input>
						<xsl:attribute name="type">text</xsl:attribute>
						<xsl:attribute name="value"><xsl:value-of select="Formulario/Nombre/Valor"/></xsl:attribute>
						<xsl:attribute name="size"><xsl:value-of select="Formulario/Nombre/Ancho"/></xsl:attribute>
					</input>
				</div>
				<div>
				<xsl:value-of select="Formulario/Apellidos/Etiqueta"/>
					<input>
						<xsl:attribute name="type">text</xsl:attribute>
						<xsl:attribute name="value"><xsl:value-of select="Formulario/Apellidos/Valor"/></xsl:attribute>
						<xsl:attribute name="size"><xsl:value-of select="Formulario/Apellidos/Ancho"/></xsl:attribute>
					</input>
				</div>
				<div>
					<xsl:value-of select="Formulario/Sexo/Etiqueta"/>
					<input name="sexo">
						<xsl:attribute name="type">radio</xsl:attribute> 
						<xsl:if test = "Formulario/Sexo/Valor = 'Hombre'">
							<xsl:attribute name="checked">true</xsl:attribute>
						</xsl:if>		
					</input>
					Hombre
					<input name="sexo">
						<xsl:attribute name="type">radio</xsl:attribute> 
						<xsl:if test = "Formulario/Sexo/Valor = 'Mujer'">
							<xsl:attribute name="checked">true</xsl:attribute>
						</xsl:if>	
					</input>
					Mujer
				</div>
				<div>
					<xsl:value-of select="Formulario/Direccion/Etiqueta"/>
					<input>
						<xsl:attribute name="type">text</xsl:attribute>
						<xsl:attribute name="value"><xsl:value-of select="Formulario/Direccion/Valor"/></xsl:attribute>
						<xsl:attribute name="size"><xsl:value-of select="Formulario/Direccion/Ancho"/></xsl:attribute>
					</input>
				</div>
				<div>
					<xsl:value-of select="Formulario/Numero/Etiqueta"/>
					<input>
						<xsl:attribute name="type">text</xsl:attribute>
						<xsl:attribute name="value"><xsl:value-of select="Formulario/Numero/Valor"/></xsl:attribute>
						<xsl:attribute name="size"><xsl:value-of select="Formulario/Numero/Ancho"/></xsl:attribute>
					</input>
				</div>
				<div>
					<xsl:value-of select="Formulario/CodigoPostal/Etiqueta"/>
					<input>
						<xsl:attribute name="type">text</xsl:attribute>
						<xsl:attribute name="value"><xsl:value-of select="Formulario/CodigoPostal/Valor"/></xsl:attribute>
						<xsl:attribute name="size"><xsl:value-of select="Formulario/CodigoPostal/Ancho"/></xsl:attribute>
					</input>
				</div>
				<div>
					<xsl:value-of select="Formulario/Poblacion/Etiqueta"/>
					<input>
						<xsl:attribute name="type">text</xsl:attribute>
						<xsl:attribute name="value"><xsl:value-of select="Formulario/Poblacion/Valor"/></xsl:attribute>
						<xsl:attribute name="size"><xsl:value-of select="Formulario/Poblacion/Ancho"/></xsl:attribute>
					</input>
				</div>
				<div>
					<xsl:value-of select="Formulario/Provincia/Etiqueta"/>
					<input>
						<xsl:attribute name="type">text</xsl:attribute>
						<xsl:attribute name="value"><xsl:value-of select="Formulario/Provincia/Valor"/></xsl:attribute>
						<xsl:attribute name="size"><xsl:value-of select="Formulario/Provincia/Ancho"/></xsl:attribute>
					</input>
				</div>
				<div>
					<xsl:value-of select="Formulario/Pais/Etiqueta"/>
					<select>
						<option><xsl:value-of select ="Formulario/Pais/PaisSeleccionado" /></option>
						<xsl:for-each select="Formulario/Pais/ListaPaises/NombrePais">
							<option><xsl:value-of select="."/></option>
						</xsl:for-each>
					</select>
				</div>
				<div>
					<input>
						<xsl:attribute name="type">checkbox</xsl:attribute> 
						<xsl:if test = "Formulario/RecibirPublicidad/Valor = 'Si'">
							<xsl:attribute name="checked">checked</xsl:attribute>
						</xsl:if>
						<xsl:value-of select="Formulario/RecibirPublicidad/Etiqueta"/>		
					</input>
				</div>
				<div>
					<xsl:value-of select="Formulario/TFMovil/Etiqueta"/>
					<input>
						<xsl:attribute name="type">text</xsl:attribute>
						<xsl:attribute name="value"><xsl:value-of select="Formulario/TFMovil/Valor"/></xsl:attribute>
						<xsl:attribute name="size"><xsl:value-of select="Formulario/TFMovil/Ancho"/></xsl:attribute>
					</input>
				</div>
				<div>
					<xsl:value-of select="Formulario/TFHogar/Etiqueta"/>
					<input>
						<xsl:attribute name="type">text</xsl:attribute>
						<xsl:attribute name="value"><xsl:value-of select="Formulario/TFHogar/Valor"/></xsl:attribute>
						<xsl:attribute name="size"><xsl:value-of select="Formulario/TFHogar/Ancho"/></xsl:attribute>
					</input>
				</div>
				<div>
					<xsl:value-of select="Formulario/Email/Etiqueta"/>
					<input>
						<xsl:attribute name="type">text</xsl:attribute>
						<xsl:attribute name="value"><xsl:value-of select="Formulario/Email/Valor"/></xsl:attribute>
						<xsl:attribute name="size"><xsl:value-of select="Formulario/Email/Ancho"/></xsl:attribute>
					</input>
				</div>
				<div>
					<xsl:value-of select="Formulario/Sugerencias/Etiqueta"/>
					<textarea rows="8">
						<xsl:attribute name="type">text</xsl:attribute>
						<xsl:attribute name="placeholder"><xsl:value-of select="Formulario/Sugerencias/Valor"/></xsl:attribute>
						<xsl:attribute name="cols"><xsl:value-of select="Formulario/Sugerencias/Ancho"/></xsl:attribute>
					</textarea>	
				</div>
				<div>
					<button>
						<xsl:attribute name="type">button</xsl:attribute>
						<xsl:value-of select="Formulario/Boton/Etiqueta"/>
					</button>
				</div>
		</form>
	</body>
</html>
</xsl:template>
</xsl:stylesheet>



