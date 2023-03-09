<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:fo="http://www.w3.org/1999/XSL/Format">

    <xsl:template match="/">
        <fo:root >
            <fo:layout-master-set>
                <fo:simple-page-master master-name="simple" page-height="297mm" page-width="210mm" margin="20mm">
                    <fo:region-body margin="10mm"/>
                    <fo:region-before extent="40mm"/>
                    <fo:region-start extent="50mm"/>
                </fo:simple-page-master>
            </fo:layout-master-set>
            <fo:page-sequence master-reference="simple">
                <fo:flow flow-name="xsl-region-body">
                    <fo:block color="#000000" font-size="12pt" font-family="Garamond"  font-weight="bold" text-align="center" margin="5pt" >Trabajo para el caso PBL</fo:block>
                    <fo:block color="#000000" font-size="12pt" font-family="Garamond"  font-weight="bold" text-align="center" margin="5pt" >Sindicación de Contenidos con RSS</fo:block>
                    <fo:block color="#000000" font-size="12pt" font-family="Garamond"  font-weight="bold" text-align="center"  margin="5pt ">Lenguajes de Marcas y Sistemas de Gestión de la Información</fo:block>
                    <fo:block color="#000000" font-family="Arial" font-size="18pt" font-weight="bold" text-align="center" margin="5pt" text-decoration="underline" margin-top="30px" margin-bottom="30px"  >POOL DE NOTICIAS SINDICADAS</fo:block>

                    <xsl:apply-templates select="rss/channel/item"/>



        <xsl:apply-templates select="item"/>
        <fo:block text-align="left" font-family="TimesNewRoman" font-size="12pt" font-weight="bold">
            Componentes del grupo: &#160;&#160; Jesús Vergara González
        </fo:block>
        <fo:block text-align="left" font-family="TimesNewRoman" font-size="12pt" font-weight="bold" margin-left="29%">
           Daniel Ródenas Lagares
        </fo:block>
        <fo:block text-align="left" font-family="TimesNewRoman" font-size="12pt" font-weight="bold" margin-left="29%">
            Silvia Barea Gómez
        </fo:block>
        <fo:block text-align="left" font-family="TimesNewRoman" font-size="12pt" font-weight="bold" margin-left="29%">
            Carlos Fernández Tercero
        </fo:block>
                </fo:flow>
            </fo:page-sequence>
        </fo:root>
    </xsl:template>

    <xsl:template match="item" >
        <fo:block border="solid black 1pt" padding="0.3cm" margin-bottom="0.8cm" margin-right="3cm"  margin-left="3cm">
            <fo:block margin-bottom="0.4cm" >
                <fo:external-graphic src="{link/@url}" content-width="50px" content-height="50px"/>
            </fo:block>
            <fo:block font-size="12pt" font-family="Trebuchet" font-weight="bold" margin="4mm">
                <fo:inline>
                    <xsl:value-of select="title"/>
                    <fo:leader/>
                    <xsl:value-of select="pubDate"/>
                </fo:inline>
            </fo:block>
        <fo:block font-size="10pt" font-family="Trebuchet" font-weight="bold" margin="4mm" >
            <xsl:value-of select="category"/>
            <fo:leader/>
            (<xsl:value-of select="description"/>)
        </fo:block>
        <fo:block font-size="12pt" font-family="Times New Roman" margin="4mm" >

        </fo:block>
        </fo:block>


    </xsl:template>


</xsl:stylesheet>