<?xml version="1.0" encoding="UTF-8" ?>
<xsl:transform xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0">
  <xsl:output method="html" doctype-public="XSLT-compat" omit-xml-declaration="yes" encoding="UTF-8" indent="yes" />
  
  <xsl:template match="/">
    Header
    <xsl:apply-templates select="catalog"/>
    <xsl:apply-templates select="catalog/book"/>
    Footer
  </xsl:template>

  <xsl:template match="catalog">
        <table border="1">
          <tr>
            <th align="left">Title</th>
            <th align="left">Author</th>
            <th align="left">Genre</th>
            <th align="left">Publish Date</th>
            <th align="left">Price</th>
          </tr>
          <xsl:for-each select="book">
            <tr>
              <td>
                <xsl:value-of select="title"/>
              </td>
              <td>
                <xsl:value-of select="author"/>
              </td>
              <td>
                <xsl:value-of select="genre"/>
              </td>
              <td>
                <xsl:value-of select="publish_date"/>
              </td>
              <xsl:choose>
                <xsl:when test="genre = 'Fantasy'">
                  <td>
                    <xsl:value-of select="price"/>
                  </td>
                </xsl:when>
                <xsl:otherwise>
                  <td>
                    <xsl:value-of select="price"/>
                  </td>
                </xsl:otherwise>
              </xsl:choose>
            </tr>
          </xsl:for-each>
        </table>
  </xsl:template>

  <xsl:template match="catalog/book">
    <h5>
      <xsl:value-of select="title"/> - говно
    </h5>
  </xsl:template>

</xsl:transform>
