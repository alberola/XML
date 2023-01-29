<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="/">
		<h1>
			<xsl:attribute name="style">
				background:<xsl:value-of select="Municipio/Estilo/Fondo"/>;
				color:<xsl:value-of select="Municipio/Estilo/Color"/>;
				width:<xsl:value-of select="Municipio/Estilo/Ancho"/>;
				margin-left:<xsl:value-of select="Municipio/Estilo/MargenIzquierdo"/>;
				text-align:<xsl:value-of select="Municipio/Estilo/CentrarTexto"/>;
			</xsl:attribute>
			El Tiempo - Los Llanos de Aridane
		</h1>
		<br/>
		<table border="0" align="center">
			<tr bgcolor="#0DD9C1">
				<th>3 de Junio de 2022</th>
			</tr>
			<xsl:for-each select="Municipio/FechaActual">
				<tr bgcolor="#CEECF5" width="400px">
					<xsl:choose>
						<xsl:when test="Temperatura &lt; '20'">
							<xsl:attribute name="style">
								color:#3187F0;
							</xsl:attribute>
						</xsl:when>
						<xsl:when test="Temperatura &lt; '25'">
							<xsl:attribute name="style">
								color:#38B495;
							</xsl:attribute>			
						</xsl:when>
						<xsl:when test="Temperatura &gt; '25'">
							<xsl:attribute name="style">
								color:#E72741;
							</xsl:attribute>			
						</xsl:when>		
					</xsl:choose>
					<xsl:if test="Franja = '00-06 Horas'">
							<xsl:attribute name="style">
								background-color:#A6B0AF;
							</xsl:attribute>
					</xsl:if>
					<td>
						<xsl:value-of select="Franja"/>
						<xsl:if test="Franja = '00-06 Horas'">
							<img src="luna.png" widht="40px" height="20px"/>
						</xsl:if>
					</td>
					<td>
						<xsl:value-of select="Temperatura"/>ºC
					</td>
					<td>
						<xsl:if test="Estado = 'Nuboso'">
							<img src="solnube.png" width="30px" height="20px"/>
						</xsl:if>
						<xsl:if test="Estado = 'Muy Nuboso'">
							<img src="solnubes.png" width="30px" height="20px"/>
						</xsl:if>
						<xsl:if test="Estado = 'Despejado'">
							<img src="sol.png" width="30px" height="20px"/>
						</xsl:if>
					</td>	
				</tr>
			</xsl:for-each>
		</table>
		<h3>
			<xsl:attribute name="style">
				color:#F15D08;
				text-align:center;
			</xsl:attribute>
			TEMPERATURA PROXIMOS DIAS:
		</h3>
		<form>
			<table align="center">
				<tr>	
					<td>
						<input>
							<xsl:attribute name="type">text</xsl:attribute>
							<xsl:attribute name="value"><xsl:value-of select="Municipio/ProximosDias/Mañana/Dia"/></xsl:attribute>
							<xsl:attribute name="size"><xsl:value-of select="Municipio/ProximosDias/Mañana/TemperaturaMedia"/></xsl:attribute>
							<xsl:attribute name="style">
								<xsl:if test="Municipio/ProximosDias/Mañana/TemperaturaMedia &gt; '25'">
										background:#E72741;
								</xsl:if>
								<xsl:if test="Municipio/ProximosDias/Mañana/TemperaturaMedia &lt; '25'">
										background:#38B495;
								</xsl:if>
								<xsl:if test="Municipio/ProximosDias/Mañana/TemperaturaMedia &lt; '20'">
										background:#3187F0;
								</xsl:if>
							</xsl:attribute>
						</input>
						<xsl:value-of select="Municipio/ProximosDias/Mañana/TemperaturaMedia"/>ºC
						<input name="calor">
							<xsl:attribute name="type">radio</xsl:attribute>
								<xsl:if test="Municipio/ProximosDias/Mañana/TemperaturaMedia &gt; '27'">
									<xsl:attribute name="checked">checked</xsl:attribute>
								</xsl:if>
						</input>
					</td>
				</tr>
				<tr>	
					<td>
						<input>
							<xsl:attribute name="type">text</xsl:attribute>
							<xsl:attribute name="value"><xsl:value-of select="Municipio/ProximosDias/Pasado/Dia"/></xsl:attribute>
							<xsl:attribute name="size"><xsl:value-of select="Municipio/ProximosDias/Pasado/TemperaturaMedia"/></xsl:attribute>
							<xsl:attribute name="style">
								<xsl:if test="Municipio/ProximosDias/Pasado/TemperaturaMedia &gt; '25'">
										background:#E72741;
								</xsl:if>
								<xsl:if test="Municipio/ProximosDias/Pasado/TemperaturaMedia &lt; '25'">
										background:#38B495;
								</xsl:if>
								<xsl:if test="Municipio/ProximosDias/Pasado/TemperaturaMedia &lt; '20'">
										background:#3187F0;
								</xsl:if>
							</xsl:attribute>
						</input>
						<xsl:value-of select="Municipio/ProximosDias/Pasado/TemperaturaMedia"/>ºC
						<input name="calor">
							<xsl:attribute name="type">radio</xsl:attribute>
							<xsl:if test="Municipio/ProximosDias/Pasado/TemperaturaMedia &gt; '27'">
									<xsl:attribute name="checked">checked</xsl:attribute>
							</xsl:if>
						</input>
					</td>
				</tr>
				<tr>	
					<td>
						<input>
							<xsl:attribute name="type">text</xsl:attribute>
							<xsl:attribute name="value"><xsl:value-of select="Municipio/ProximosDias/Siguiente/Dia"/></xsl:attribute>
							<xsl:attribute name="size"><xsl:value-of select="Municipio/ProximosDias/Siguiente/TemperaturaMedia"/></xsl:attribute>
							<xsl:attribute name="style">
								<xsl:if test="Municipio/ProximosDias/Siguiente/TemperaturaMedia &gt; '25'">
										background:#E72741;
								</xsl:if>
								<xsl:if test="Municipio/ProximosDias/Siguiente/TemperaturaMedia &lt; '25'">
										background:#38B495;
								</xsl:if>
								<xsl:if test="Municipio/ProximosDias/Siguiente/TemperaturaMedia &lt; '20'">
										background:#3187F0;
								</xsl:if>
							</xsl:attribute>
						</input>
						<xsl:value-of select="Municipio/ProximosDias/Siguiente/TemperaturaMedia"/>ºC
						<input name="calor">
							<xsl:attribute name="type">radio</xsl:attribute>
							<xsl:if test="Municipio/ProximosDias/Siguiente/TemperaturaMedia &gt; '27'">
									<xsl:attribute name="checked">checked</xsl:attribute>
							</xsl:if>
						</input>
					</td>
				</tr>
				<tr>
					<td>
						<input>
							<xsl:attribute name="type">submit</xsl:attribute>
							<xsl:attribute name="value">Enviar</xsl:attribute>
							<xsl:attribute name="style">
								background:<xsl:value-of select="Municipio/Estilo/Fondo"/>;
								color:<xsl:value-of select="Municipio/Estilo/Color"/>;
								border:0;
							</xsl:attribute>
						</input>
					</td>
				</tr>
			</table>
		</form>
		<h3 align="center">
			Alejandro Alberola Gopar - 3º Evaluacion de LND
		</h3>

	</xsl:template>
</xsl:stylesheet>


