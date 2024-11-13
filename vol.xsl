<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

<xsl:output method="html" doctype-system="about:legacy-compat" encoding="UTF-8"/>
<xsl:template match="/">
    <html>
        <head>
            <title>Vols Aéroport</title>
            <style>
                body { font-family: Arial, sans-serif; }
                .vol { margin-bottom: 20px; padding: 10px; border: 1px solid #ccc; border-radius: 5px; background-color: #f9f9f9; }
                .vol h2 { color: #0056b3; }
                .details { margin: 0; }
                .label { font-weight: bold; }
            </style>
        </head>
        <body>
            <h1>Liste des Vols</h1>
            <xsl:for-each select="Aeroport/Vols/Vol">
                <div class="vol">
                    <h2>Vol <xsl:value-of select="Numero"/></h2>
                    <p class="details"><span class="label">Date et Heure:</span> <xsl:value-of select="Date"/></p>
                    <p class="details"><span class="label">N° de Piste:</span> <xsl:value-of select="PisteID"/></p>
                    <p class="details"><span class="label">Type d'Avion:</span> <xsl:value-of select="document('Aeroport.xml')/Aeroport/Avions/Avion[@ID=current()/AvionID]/Modele"/></p>
                </div>
            </xsl:for-each>
        </body>
    </html>
</xsl:template>
</xsl:stylesheet>
