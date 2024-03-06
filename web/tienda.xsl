<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="html" doctype-system="about:legacy-compat" encoding="utf-8"/>
<xsl:template match="club_voleibol">
<html lang="es">

	<head>
		<link href="../css/estilo.css" rel="stylesheet" type="text/css" />
		<title>titulo de la web</title>
	</head>

	<body>
		<header>
			<img src= "../img/logotipo.png" alt= "Reservas" />
			<a href="tienda.xml">Tienda</a>
			<a href="equipos.xml">Equipos</a>
			<a href="partidos.xml">Partidos</a>
		</header>
		
		<main class="principal">
			<xsl:for-each select="tienda/articulo">
			<article>
				<section>
					<img class="articulo" src="../img/{@foto}"/>			
				</section>
				<section>
					<h2><xsl:value-of select="precio"/> €</h2>
					<h3>Comentarios: <xsl:value-of select="count(comentarios)"/></h3>
					<xsl:for-each select="comentarios">
					<ul>
						<li><xsl:value-of select="/@fecha"/><xsl:value-of select="."/></li>
					</ul>
					</xsl:for-each>
				</section>
			</article>
			</xsl:for-each>
		</main>
		<footer>
			<address>&#169; Desarrollado por info@birt.eus</address>
		</footer>
	</body>
</html>
</xsl:template>
</xsl:stylesheet>