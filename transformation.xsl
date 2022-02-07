<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
    xmlns:tei="http://www.tei-c.org/ns/1.0" xmlns="http://www.w3.org/1999/xhtml">
    <xsl:output method="html" encoding="UTF-8" indent="yes"/>
    
    <xsl:template match="/">
        <html>
            <head>
                <title>
                    <xsl:value-of select="tei:teiCorpus/tei:teiHeader/tei:fileDesc/tei:titleStmt/tei:title"/>
                </title>
                <link rel="stylesheet" type="text/css" href="style.css" />
            </head>
            <body>
                <header> 
                    <div class="header-desc">
                        <h1>Progetto Codifica: Cartoline della Prima Guerra Mondiale</h1>
                        <p>
                            Il progetto, realizzato da <strong><i><xsl:value-of select="tei:teiCorpus/tei:teiHeader/tei:fileDesc/tei:titleStmt/tei:respStmt[1]/tei:name" />
                            (matr. <xsl:value-of select="tei:teiCorpus/tei:teiHeader/tei:fileDesc/tei:titleStmt/tei:respStmt[1]/tei:idno"/></i>)</strong>
                            e da <strong><i><xsl:value-of select="tei:teiCorpus/tei:teiHeader/tei:fileDesc/tei:titleStmt/tei:respStmt[2]/tei:name"/>
                            (matr. <xsl:value-of select="tei:teiCorpus/tei:teiHeader/tei:fileDesc/tei:titleStmt/tei:respStmt[2]/tei:idno"/></i>)</strong>
                            contiene la codifica basata su <strong><i><xsl:value-of select="tei:teiCorpus/tei:teiHeader/tei:fileDesc/tei:editionStmt/tei:edition"/></i></strong>,
                            provenenti dal 
                            <strong><i><xsl:value-of select="tei:teiCorpus/tei:teiHeader/tei:fileDesc/tei:sourceDesc/tei:msDesc/tei:msIdentifier/tei:repository"/></i></strong>,
                            situato presso <strong><i><xsl:value-of select="tei:teiCorpus/tei:teiHeader/tei:fileDesc/tei:sourceDesc/tei:msDesc/tei:msIdentifier/tei:settlement"/></i></strong>.
                        </p>
                    </div>
                    <div class="header-imgs">
                        <div id="slider">
                            <a href="javascript:void(0)" class="control_next">&#62;&#62;</a>
                            <a href="javascript:void(0)" class="control_prev">&#60;&#60;</a>
                            <ul>
                                <li>
                                    <xsl:element name="a">
                                        <xsl:attribute name="href">#container-1</xsl:attribute>
                                        <xsl:element name="img">
                                            <xsl:attribute name="src">
                                                <xsl:value-of select="tei:teiCorpus/tei:TEI[1]/tei:facsimile/tei:surfaceGrp/tei:surface[@type='front']/tei:graphic/@url"/>
                                            </xsl:attribute>
                                            <xsl:attribute name="id">img1</xsl:attribute>
                                        </xsl:element>
                                    </xsl:element>
                                </li>
                                <li>
                                    <xsl:element name="a">
                                        <xsl:attribute name="href">#container-2</xsl:attribute>
                                        <xsl:element name="img">
                                            <xsl:attribute name="src">
                                                <xsl:value-of select="tei:teiCorpus/tei:TEI[2]/tei:facsimile/tei:surfaceGrp/tei:surface[@type='front']/tei:graphic/@url"/>
                                            </xsl:attribute>
                                            <xsl:attribute name="id">img2</xsl:attribute>
                                        </xsl:element>
                                    </xsl:element>
                                </li>
                                <li>
                                    <xsl:element name="a">
                                        <xsl:attribute name="href">#container-3</xsl:attribute>
                                        <xsl:element name="img">
                                            <xsl:attribute name="src">
                                                <xsl:value-of select="tei:teiCorpus/tei:TEI[3]/tei:facsimile/tei:surfaceGrp/tei:surface[@type='front']/tei:graphic/@url"/>
                                            </xsl:attribute>
                                            <xsl:attribute name="id">img3</xsl:attribute>
                                        </xsl:element>
                                    </xsl:element>
                                </li>
                            </ul>
                        </div>
                    </div>
                </header>

                <section id="container-1">
                    <xsl:apply-templates select="tei:teiCorpus/tei:TEI[1]" />
                </section>

                <section id="container-2">
                    <xsl:apply-templates select="tei:teiCorpus/tei:TEI[2]" />
                </section>
                
                <section id="container-3">
                    <xsl:apply-templates select="tei:teiCorpus/tei:TEI[3]" />
                </section>

                <footer>
                    <xsl:apply-templates select="tei:teiCorpus/tei:teiHeader/tei:fileDesc" />
                    <script type="text/javascript" src="js/imageMapResizer.min.js"></script>
                    <script type="text/javascript" src="js/script.js"></script>
                </footer>
            </body>
        </html>
    </xsl:template>

    <xsl:template match="tei:teiCorpus/tei:TEI[1]">
        <xsl:element name="h2">
            <xsl:attribute name="class">Title-C1</xsl:attribute>
            "<xsl:value-of select="tei:teiHeader/tei:fileDesc/tei:sourceDesc/tei:bibl/tei:title" />"
        </xsl:element>
        <div class="front-wrapper">
            <div class="front-img">
                <xsl:element name="img">
                    <xsl:attribute name="src"> 
                        <xsl:value-of select="tei:facsimile/tei:surfaceGrp/tei:surface[1]/tei:graphic/@url"/>
                    </xsl:attribute>
                    <xsl:attribute name="id">C1F</xsl:attribute>
                </xsl:element>
            </div>
            <div class="front-desc" id="style-9">
                <h3>Informazioni</h3>
                <xsl:apply-templates select="tei:teiHeader/tei:fileDesc/tei:sourceDesc"/>
                <xsl:apply-templates select="tei:text/tei:front/tei:figure" />
                <xsl:apply-templates select="tei:teiHeader/tei:fileDesc/tei:sourceDesc/tei:msDesc" />
                <xsl:apply-templates select="tei:teiHeader/tei:fileDesc/tei:sourceDesc/tei:listPerson" />
                <xsl:apply-templates select="tei:teiHeader/tei:profileDesc/tei:correspDesc/tei:correspAction[1]" />
                <xsl:apply-templates select="tei:teiHeader/tei:fileDesc/tei:sourceDesc/tei:listPlace" />
                <xsl:apply-templates select="tei:teiHeader/tei:profileDesc/tei:langUsage" />
            </div>
        </div>
        <div class="retro-wrapper">
            <div class="retro-img">
                <xsl:element name="img">
                    <xsl:attribute name="src">
                        <xsl:value-of select="tei:facsimile/tei:surfaceGrp/tei:surface[2]/tei:graphic/@url"/>
                    </xsl:attribute>
                    <xsl:attribute name="id">C1R</xsl:attribute>
                    <xsl:attribute name="usemap">#facsimile</xsl:attribute>
                </xsl:element>
               
                <xsl:element name="map">
                    <xsl:attribute name="name">facsimile</xsl:attribute>
                    <xsl:for-each select="tei:facsimile/tei:surfaceGrp/tei:surface[2]/tei:zone">
                        <xsl:element name="area">
                            <xsl:choose>
                                <xsl:when test="@points">
                                    <xsl:attribute name="shape">poly</xsl:attribute>
                                    <xsl:attribute name="class">
                                        <xsl:value-of select="@xml:id"/>
                                    </xsl:attribute>
                                    <xsl:attribute name="coords">
                                        <xsl:value-of select="@points"/>
                                    </xsl:attribute>
                                    <xsl:attribute name="href">
                                        #
                                    </xsl:attribute>
                                </xsl:when>
                                <xsl:otherwise>
                                    <xsl:attribute name="shape">rect</xsl:attribute>
                                    <xsl:attribute name="class">
                                        <xsl:value-of select="@xml:id"/>
                                    </xsl:attribute>
                                    <xsl:attribute name="coords">
                                        <xsl:value-of select="@ulx"/>,<xsl:value-of select="@uly"/>,<xsl:value-of select="@lrx"/>,<xsl:value-of select="@lry"/>
                                    </xsl:attribute>
                                    <xsl:attribute name="href">
                                        #
                                    </xsl:attribute>
                                </xsl:otherwise>
                            </xsl:choose>
                        </xsl:element>
                    </xsl:for-each>
                </xsl:element>
            </div>

            <div class="retro-desc" id="style-9">
                <h3>Trascrizione testo</h3>
                <div id="trascription">
                    <xsl:apply-templates select="tei:text/tei:body/tei:div/tei:div[@type='Message']/tei:opener"/>
                    <xsl:apply-templates select="tei:text/tei:body/tei:div/tei:div[@type='Message']/tei:ab[1]/tei:address"/>
                    <xsl:apply-templates select="tei:text/tei:body/tei:div/tei:div[@type='Message']/tei:ab[2]"/>
                    <xsl:apply-templates select="tei:text/tei:body/tei:div/tei:div[@type='Message']/tei:closer"/>
                    <h4>Timbri e Francobolli</h4>
                    <xsl:apply-templates select="tei:text/tei:body/tei:div/tei:div[@type='Destination']/tei:p"/>
                    <xsl:apply-templates select="tei:text/tei:body/tei:div"/>
                   
                </div>
            </div>
        </div>
    </xsl:template>

    <xsl:template match="tei:teiCorpus/tei:TEI[2]">
        <xsl:element name="h2">
            <xsl:attribute name="class">Title-C2</xsl:attribute>
            "<xsl:value-of select="tei:teiHeader/tei:fileDesc/tei:sourceDesc/tei:bibl/tei:title" />"
        </xsl:element>
        <div class="front-wrapper">
            <div class="front-img">
                <xsl:element name="img">
                    <xsl:attribute name="src"> 
                        <xsl:value-of select="tei:facsimile/tei:surfaceGrp/tei:surface[1]/tei:graphic/@url"/>
                    </xsl:attribute>
                    <xsl:attribute name="id">C2F</xsl:attribute>
                </xsl:element>
            </div>
            <div class="front-desc" id="style-9">
                <h3>Informazioni</h3>
                <xsl:apply-templates select="tei:teiHeader/tei:fileDesc/tei:sourceDesc"/>
                <xsl:apply-templates select="tei:text/tei:front/tei:figure" />
                <xsl:apply-templates select="tei:teiHeader/tei:fileDesc/tei:sourceDesc/tei:msDesc" />
                <xsl:apply-templates select="tei:teiHeader/tei:fileDesc/tei:sourceDesc/tei:listPerson" />
                <xsl:apply-templates select="tei:teiHeader/tei:profileDesc/tei:correspDesc/tei:correspAction[1]" />
                <xsl:apply-templates select="tei:teiHeader/tei:fileDesc/tei:sourceDesc/tei:listPlace" />
                <xsl:apply-templates select="tei:teiHeader/tei:profileDesc/tei:langUsage" />
            </div>
        </div>
        <div class="retro-wrapper">
            <div class="retro-img">
                <xsl:element name="img">
                    <xsl:attribute name="src">
                        <xsl:value-of select="tei:facsimile/tei:surfaceGrp/tei:surface[2]/tei:graphic/@url"/>
                    </xsl:attribute>
                    <xsl:attribute name="id">C2R</xsl:attribute>
                    <xsl:attribute name="usemap">#facsimile2</xsl:attribute>
                </xsl:element>
               
                <xsl:element name="map">
                    <xsl:attribute name="name">facsimile2</xsl:attribute>
                    <xsl:for-each select="tei:facsimile/tei:surfaceGrp/tei:surface[2]/tei:zone">
                        <xsl:element name="area">
                            <xsl:choose>
                                <xsl:when test="@points">
                                    <xsl:attribute name="shape">poly</xsl:attribute>
                                    <xsl:attribute name="class">
                                        <xsl:value-of select="@xml:id"/>
                                    </xsl:attribute>
                                    <xsl:attribute name="coords">
                                        <xsl:value-of select="@points"/>
                                    </xsl:attribute>
                                    <xsl:attribute name="href">
                                        #
                                    </xsl:attribute>
                                </xsl:when>
                                <xsl:otherwise>
                                    <xsl:attribute name="shape">rect</xsl:attribute>
                                    <xsl:attribute name="class">
                                        <xsl:value-of select="@xml:id"/>
                                    </xsl:attribute>
                                    <xsl:attribute name="coords">
                                        <xsl:value-of select="@ulx"/>,<xsl:value-of select="@uly"/>,<xsl:value-of select="@lrx"/>,<xsl:value-of select="@lry"/>
                                    </xsl:attribute>
                                    <xsl:attribute name="href">
                                        #
                                    </xsl:attribute>
                                </xsl:otherwise>
                            </xsl:choose>
                        </xsl:element>
                    </xsl:for-each>
                </xsl:element>
            </div>

            <div class="retro-desc" id="style-9">
                <h3>Trascrizione testo</h3>
                <div id="trascription">
                    <xsl:apply-templates select="tei:text/tei:body/tei:div/tei:div[@type='Message']/tei:opener"/>
                    <xsl:apply-templates select="tei:text/tei:body/tei:div/tei:div[@type='Message']/tei:ab[1]/tei:address"/>
                    <xsl:apply-templates select="tei:text/tei:body/tei:div/tei:div[@type='Message']/tei:ab[2][@xml:id='C2_Content']"/>
                    <xsl:apply-templates select="tei:text/tei:body/tei:div/tei:div[@type='Message']/tei:closer"/>
                    <h4>Timbri e Francobolli</h4>
                    <xsl:apply-templates select="tei:text/tei:body/tei:div/tei:div[@type='Destination']/tei:p"/>
                    <xsl:apply-templates select="tei:text/tei:body/tei:div"/>
                    <h4>Altri segni</h4>
                    <xsl:apply-templates select="tei:text/tei:body/tei:div/tei:div[@type='Other_Elements']/tei:p" />
                </div>
            </div>
        </div>
    </xsl:template>
    
    <xsl:template match="tei:teiCorpus/tei:TEI[3]">
        <xsl:element name="h2">
            <xsl:attribute name="class">Title-C3</xsl:attribute>
            "<xsl:value-of select="tei:teiHeader/tei:fileDesc/tei:sourceDesc/tei:bibl/tei:title" />"
        </xsl:element>
        <div class="front-wrapper">
            <div class="front-img">
                <xsl:element name="img">
                    <xsl:attribute name="src"> 
                        <xsl:value-of select="tei:facsimile/tei:surfaceGrp/tei:surface[1]/tei:graphic/@url"/>
                    </xsl:attribute>
                    <xsl:attribute name="id">C3F</xsl:attribute>
                </xsl:element>
            </div>
            <div class="front-desc" id="style-9">
                <h3>Informazioni</h3>
                <xsl:apply-templates select="tei:teiHeader/tei:fileDesc/tei:sourceDesc"/>
                <xsl:apply-templates select="tei:text/tei:front/tei:figure" />
                <xsl:apply-templates select="tei:teiHeader/tei:fileDesc/tei:sourceDesc/tei:msDesc" />
                <xsl:apply-templates select="tei:teiHeader/tei:fileDesc/tei:sourceDesc/tei:listPerson" />
                <xsl:apply-templates select="tei:teiHeader/tei:profileDesc/tei:correspDesc/tei:correspAction[1]" />
                <xsl:apply-templates select="tei:teiHeader/tei:fileDesc/tei:sourceDesc/tei:listPlace" />
                <xsl:apply-templates select="tei:teiHeader/tei:profileDesc/tei:langUsage" />
            </div>
        </div>
        <div class="retro-wrapper">
            <div class="retro-img">
                <xsl:element name="img">
                    <xsl:attribute name="src">
                        <xsl:value-of select="tei:facsimile/tei:surfaceGrp/tei:surface[2]/tei:graphic/@url"/>
                    </xsl:attribute>
                    <xsl:attribute name="id">C3R</xsl:attribute>
                    <xsl:attribute name="usemap">#facsimile3</xsl:attribute>
                </xsl:element>
               
                <xsl:element name="map">
                    <xsl:attribute name="name">facsimile3</xsl:attribute>
                    <xsl:for-each select="tei:facsimile/tei:surfaceGrp/tei:surface[2]/tei:zone">
                        <xsl:element name="area">
                            <xsl:choose>
                                <xsl:when test="@points">
                                    <xsl:attribute name="shape">poly</xsl:attribute>
                                    <xsl:attribute name="class">
                                        <xsl:value-of select="@xml:id"/>
                                    </xsl:attribute>
                                    <xsl:attribute name="coords">
                                        <xsl:value-of select="@points"/>
                                    </xsl:attribute>
                                    <xsl:attribute name="href">
                                        #
                                    </xsl:attribute>
                                </xsl:when>
                                <xsl:otherwise>
                                    <xsl:attribute name="shape">rect</xsl:attribute>
                                    <xsl:attribute name="class">
                                        <xsl:value-of select="@xml:id"/>
                                    </xsl:attribute>
                                    <xsl:attribute name="coords">
                                        <xsl:value-of select="@ulx"/>,<xsl:value-of select="@uly"/>,<xsl:value-of select="@lrx"/>,<xsl:value-of select="@lry"/>
                                    </xsl:attribute>
                                    <xsl:attribute name="href">
                                        #
                                    </xsl:attribute>
                                </xsl:otherwise>
                            </xsl:choose>
                        </xsl:element>
                    </xsl:for-each>
                </xsl:element>
            </div>

            <div class="retro-desc" id="style-9">
                <h3>Trascrizione testo</h3>
                <div id="trascription">
                    <xsl:apply-templates select="tei:text/tei:body/tei:div/tei:div[@type='Message']/tei:opener"/>
                    <xsl:apply-templates select="tei:text/tei:body/tei:div/tei:div[@type='Message']/tei:ab[1]/tei:address"/>
                    <xsl:apply-templates select="tei:text/tei:body/tei:div/tei:div[@type='Message']/tei:ab[2][@xml:id='C3_Content']"/>
                    <xsl:apply-templates select="tei:text/tei:body/tei:div/tei:div[@type='Message']/tei:closer"/>
                    <h4>Timbri e Francobolli</h4>
                    <xsl:apply-templates select="tei:text/tei:body/tei:div/tei:div[@type='Destination']/tei:p"/>
                    <xsl:apply-templates select="tei:text/tei:body/tei:div"/>
                    <h4>Altri segni</h4>
                    <xsl:apply-templates select="tei:text/tei:body/tei:div/tei:div[@type='Other_Elements']/tei:p" />
                </div>
            </div>
        </div>
    </xsl:template>

    <!-- Template del fronte della cartolina -->
    <xsl:template match="tei:teiHeader/tei:fileDesc/tei:sourceDesc">
        <xsl:element name="p">
            <strong>Autore: </strong> <xsl:value-of select="tei:bibl/tei:author"/>
        </xsl:element>
    </xsl:template>

    <xsl:template match="tei:text/tei:front/tei:figure">
        <xsl:element name="p">
            <strong>Descrizione: </strong> <xsl:value-of select="tei:figDesc"/>
        </xsl:element>
    </xsl:template>

    <xsl:template match="tei:teiHeader/tei:fileDesc/tei:sourceDesc/tei:msDesc">
        <xsl:element name="p">
            <strong>Numero di inventario: </strong> <xsl:value-of select="tei:msIdentifier/tei:idno"/>
        </xsl:element>
        <xsl:element name="p">
            <strong>Altezza: </strong> <xsl:value-of select="tei:physDesc/tei:objectDesc/tei:supportDesc/tei:support/tei:dimensions/tei:height"/> cm
        </xsl:element>
        <xsl:element name="p">
            <strong>Larghezza: </strong> <xsl:value-of select="tei:physDesc/tei:objectDesc/tei:supportDesc/tei:support/tei:dimensions/tei:width"/> cm
        </xsl:element>
        <xsl:element name="p">
            <strong>Stato di conservazione: </strong> <xsl:value-of select="tei:physDesc/tei:objectDesc/tei:supportDesc/tei:condition" />
        </xsl:element>
    </xsl:template>

    <xsl:template match="tei:teiHeader/tei:fileDesc/tei:sourceDesc/tei:listPerson">
        <xsl:element name="p">
            <strong>Mittente: </strong> <xsl:value-of select="tei:person[1]/tei:persName"/> <xsl:value-of select="tei:person[1]/tei:occupation"/>
        </xsl:element>
        <xsl:element name="p">
            <strong>Destinatario: </strong> <xsl:value-of select="tei:person[2]/tei:persName"/>
        </xsl:element>
    </xsl:template>

    <xsl:template match="tei:teiHeader/tei:fileDesc/tei:sourceDesc/tei:listPlace">
        <xsl:element name="p">
            <strong>Inviata da: </strong> <xsl:value-of select="tei:place[2]/tei:placeName"/>
        </xsl:element>
        <xsl:element name="p">
            <strong>Ricevuta a: </strong> <xsl:value-of select="tei:place[1]/tei:placeName"/>
        </xsl:element>
    </xsl:template>

    <xsl:template match="tei:teiHeader/tei:profileDesc/tei:correspDesc/tei:correspAction[1]">
        <xsl:element name="p">
            <strong>Data di invio: </strong> <xsl:value-of select="tei:date"/>
        </xsl:element>
    </xsl:template>

    <xsl:template match="tei:teiHeader/tei:profileDesc/tei:langUsage">
        <xsl:choose>
            <xsl:when test="count(tei:language) > 1" >
                <xsl:element name="p">
                    <strong>Lingua usata nel testo: </strong> <xsl:value-of select="tei:language[1]"/>
                </xsl:element>
                <xsl:element name="p">
                    <strong>Lingue secondarie presenti nella cartolina: </strong>
                    <xsl:value-of select="tei:language[2]"/>, 
                    <xsl:value-of select="tei:language[3]"/> 
                </xsl:element>
            </xsl:when>
            <xsl:otherwise>
                <xsl:element name="p">
                    <strong>Lingua usata nel testo: </strong> <xsl:value-of select="tei:language[1]"/>
                </xsl:element>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>

    <!-- Template trascrizione del retro della cartolina -->

    <xsl:template match="tei:text/tei:body/tei:div/tei:div[@type='Message']/tei:opener">
        <xsl:element name="p">
            <span>
                <xsl:attribute name="class">
                    <xsl:value-of select="tei:dateline/tei:placeName/@facs"/>
                </xsl:attribute>
            <xsl:value-of select="tei:dateline/tei:placeName"/>
            </span>
        </xsl:element>

        <xsl:element name="p">
            <span>
                <xsl:attribute name="class">
                    <xsl:value-of select="tei:dateline/tei:date/@facs"/>
                </xsl:attribute>
            <xsl:value-of select="tei:dateline/tei:date"/>
            </span>
        </xsl:element>

        <xsl:element name="p">
            <span>
                <xsl:attribute name="class">
                    <xsl:value-of select="tei:lb/@facs"/>
                </xsl:attribute>
                <xsl:value-of select="tei:salute"/> 
            </span>
        </xsl:element>
    </xsl:template>
 
    <xsl:template match="tei:text/tei:body/tei:div/tei:div[@type='Message']/tei:ab[1]/tei:address">
        <xsl:element name="p">
            <span>
                <xsl:attribute name="class">
                    <xsl:value-of select="tei:lb[1]/@facs"/>
                </xsl:attribute>
            <xsl:value-of select="tei:addrLine[1]/tei:persName"/> 
            </span>
        </xsl:element>
        <xsl:element name="p">
            <span>
                <xsl:attribute name="class">
                    <xsl:value-of select="tei:lb[2]/@facs"/>
                </xsl:attribute>
                <xsl:value-of select="tei:addrLine[2]"/> 
            </span>
        </xsl:element>
        <xsl:element name="p">
            <span>
                <xsl:attribute name="class">
                    <xsl:value-of select="tei:lb[3]/@facs"/>
                </xsl:attribute>
                <xsl:value-of select="tei:addrLine[3]/tei:placeName/tei:hi"/>  
            </span>
        </xsl:element>
    </xsl:template>

    <xsl:template match="tei:text/tei:body/tei:div/tei:div[@type='Message']/tei:ab[2]">
        <xsl:element name="p">
            <xsl:attribute name="class">content</xsl:attribute>
            <xsl:attribute name="class">
                <xsl:value-of select="tei:lb/@facs"/>
            </xsl:attribute>
            <xsl:value-of select="tei:w[1]"/> 
        </xsl:element>
        <xsl:element name="p">
            <xsl:attribute name="class">content_note</xsl:attribute>
            <strong>Nota: </strong><xsl:value-of select="tei:note"/> 
        </xsl:element>
    </xsl:template>

    <xsl:template match="tei:text/tei:body/tei:div/tei:div[@type='Message']/tei:ab[2][@xml:id='C2_Content']">
        <xsl:element name="div">
            <xsl:attribute name="class">content</xsl:attribute>
            <xsl:element name="p">
                <xsl:attribute name="class">
                    <xsl:value-of select="tei:lb[1]/@facs"/>
                </xsl:attribute>
                <xsl:value-of select="tei:w[1]"/>
            </xsl:element>
            <xsl:element name="p">
                <xsl:attribute name="class">
                    <xsl:value-of select="tei:lb[2]/@facs"/>
                </xsl:attribute>
                <xsl:value-of select="tei:w[2]"/> <xsl:text> </xsl:text>
                <xsl:value-of select="tei:w[3]"/> <xsl:text> </xsl:text>
                <xsl:text> </xsl:text>
                <xsl:value-of select="tei:w[4]"/>
            </xsl:element>
            <xsl:element name="p">
                <xsl:attribute name="class">
                    <xsl:value-of select="tei:lb[3]/@facs"/>
                </xsl:attribute>
                <xsl:value-of select="tei:w[5]"/> <xsl:text> </xsl:text>
                <xsl:value-of select="tei:w[6]"/> <xsl:text> </xsl:text>
                <xsl:value-of select="tei:w[7]"/> <xsl:text> </xsl:text>
                <xsl:value-of select="tei:w[8]"/>
            </xsl:element>
            <xsl:element name="p">
                <xsl:attribute name="class">
                    <xsl:value-of select="tei:lb[4]/@facs"/>
                </xsl:attribute>
                <xsl:value-of select="tei:w[9]"/> <xsl:text> </xsl:text>
                <xsl:value-of select="tei:w[10]"/> <xsl:text> </xsl:text>
                <xsl:text> </xsl:text>
                <xsl:value-of select="tei:w[11]"/>
            </xsl:element>
            <xsl:element name="p">
                <xsl:attribute name="class">content_note</xsl:attribute>
                <strong>Nota: </strong><xsl:value-of select="tei:note"/> 
            </xsl:element>
        </xsl:element>
    </xsl:template>

    <xsl:template match="tei:text/tei:body/tei:div/tei:div[@type='Message']/tei:ab[2][@xml:id='C3_Content']">
        <xsl:element name="div">
            <xsl:attribute name="class">content</xsl:attribute>
            <xsl:element name="p">
                <xsl:attribute name="class">
                    <xsl:value-of select="tei:lb[1]/@facs"/>
                </xsl:attribute>
                <xsl:value-of select="tei:w[1]"/> <xsl:text> </xsl:text>
                <xsl:value-of select="tei:w[2]"/>
            </xsl:element>
            <xsl:element name="p">
                <xsl:attribute name="class">
                    <xsl:value-of select="tei:lb[2]/@facs"/>
                </xsl:attribute>
                <xsl:value-of select="tei:w[3]"/> <xsl:text> </xsl:text>
                <xsl:value-of select="tei:w[4]"/> <xsl:text> </xsl:text>
                <xsl:value-of select="tei:w[5]"/> <xsl:text> </xsl:text>
                <xsl:value-of select="tei:w[6]"/> 
            </xsl:element>
            <xsl:element name="p">
                <xsl:attribute name="class">
                    <xsl:value-of select="tei:lb[3]/@facs"/>
                </xsl:attribute>
                <xsl:value-of select="tei:w[7]"/> <xsl:text> </xsl:text>
                <xsl:text> </xsl:text>
                <xsl:value-of select="tei:w[8]"/>
            </xsl:element>
            <xsl:element name="p">
                <xsl:attribute name="class">content_note</xsl:attribute>
                <strong>Nota: </strong><xsl:value-of select="tei:note"/> 
            </xsl:element>
        </xsl:element>
    </xsl:template>

    <xsl:template match="tei:text/tei:body/tei:div/tei:div[@type='Message']/tei:closer">
        <xsl:element name="p">
            <span>
                <xsl:attribute name="class">
                    <xsl:value-of select="tei:lb/@facs"/>
                </xsl:attribute>
                <xsl:value-of select="tei:signed/tei:hi/tei:persName"/> 
            </span>
        </xsl:element>
    </xsl:template>

    <xsl:template match="tei:text/tei:body/tei:div/tei:div[@type='Destination']/tei:p">
        <xsl:element name="p">
            <xsl:attribute name="class">
                <xsl:value-of select="tei:stamp[@type='postmark']/@facs"/>
            </xsl:attribute>
            <span>
                <xsl:value-of select="tei:stamp[@type='postmark']/tei:damage"/>
                <span>
                    <xsl:attribute name="class">Postmark_Note</xsl:attribute>
                    <strong>Nota: </strong> <xsl:value-of select="tei:stamp[@type='postmark']/tei:note"/>
                </span>
                <span>
                    <xsl:attribute name="class">Postmark_Date</xsl:attribute>
                    <strong>Data: </strong> <xsl:value-of select="tei:stamp[@type='postmark']/tei:date"/>
                </span>
            </span>
        </xsl:element>

        <xsl:element name="p">
            <span>
                <xsl:attribute name="class">
                    <xsl:value-of select="tei:stamp[@type='postage']/@facs"/>
                </xsl:attribute>
                <strong>Descrizione Francobollo: </strong> <xsl:value-of select="tei:stamp[@type='postage']"/> 
            </span>
        </xsl:element>
    </xsl:template>

    <xsl:template match="tei:text/tei:body/tei:div">
        <xsl:element name="p">
            <strong>Nota: </strong> 
            <span>
                <xsl:attribute name="class">
                    <xsl:value-of select="tei:fw/@facs"/>
                </xsl:attribute>
                <xsl:value-of select="tei:fw"/>
            </span>
        </xsl:element>
    </xsl:template>

    <xsl:template match="tei:text/tei:body/tei:div/tei:div[@type='Other_Elements']/tei:p">
        <xsl:element name="p">
            <span>
                <xsl:attribute name="class">
                    <xsl:value-of select="tei:lb[1]/@facs"/>
                </xsl:attribute>
                <xsl:value-of select="tei:fw[1]/tei:abbr"/>
                <xsl:value-of select="tei:fw[1]/tei:seg[1]"/>
                <xsl:value-of select="tei:fw[1]/tei:seg[2]"/> <xsl:text> </xsl:text>
                <xsl:value-of select="tei:fw[1]/tei:seg[3]"/> <xsl:text> </xsl:text>
                <xsl:value-of select="tei:fw[1]/tei:seg[4]"/> 
            </span>
        </xsl:element>
        <xsl:element name="p">
            <span>
                <xsl:attribute name="class">
                    <xsl:value-of select="tei:lb[2]/@facs"/>
                </xsl:attribute>
                <xsl:value-of select="tei:fw[2]"/>
            </span>
        </xsl:element>
    </xsl:template>

    <!-- Footer -->
    <xsl:template match="tei:teiCorpus/tei:teiHeader/tei:fileDesc">
        <div class="Footer_Credits">
            <h4>Crediti</h4>
            <xsl:element name="p">
                <strong>Compilatore: </strong><xsl:value-of select="tei:editionStmt/tei:respStmt[3]/tei:name" /> 
            </xsl:element>
            <xsl:element name="p">
                <strong>Responsabili scientifici: </strong><xsl:value-of select="tei:editionStmt/tei:respStmt[4]/tei:name[1]" /> e 
                <xsl:value-of select="tei:editionStmt/tei:respStmt[4]/tei:name[2]" />
            </xsl:element>
            <xsl:element name="p">
                <strong>Funzionario responsabile: </strong><xsl:value-of select="tei:editionStmt/tei:respStmt[5]/tei:name"/>
            </xsl:element>
            <xsl:element name="p">
                <strong>Ente di appartenenza: </strong><xsl:value-of select="tei:titleStmt/tei:respStmt[3]/tei:name"/>
            </xsl:element>
        </div>
        <div class="Footer_AboutUs">
            <h4>About Us</h4>
            <xsl:element name="p">
                Il progetto è stato realizzato per l'esame di <strong>Codifica di testo</strong> (a.a 2021-2022) 
                del professore Angelo Mario del Grosso, <strong><xsl:value-of select="tei:publicationStmt/tei:publisher" /></strong>.
            </xsl:element>
            <xsl:element name="p">
                <strong>Trascrizione e codifica a cura di: </strong> <xsl:value-of select="tei:titleStmt/tei:respStmt[1]/tei:name"/> (matr.  
                <xsl:value-of select="tei:titleStmt/tei:respStmt[1]/tei:idno"/>)
                e di <xsl:value-of select="tei:titleStmt/tei:respStmt[2]/tei:name"/> (matr. <xsl:value-of select="tei:titleStmt/tei:respStmt[2]/tei:idno"/>).
            </xsl:element>
            
        </div>
    </xsl:template>
    
</xsl:stylesheet>