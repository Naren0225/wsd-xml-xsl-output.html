<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output method="html" indent="yes"/>
  
  <xsl:template match="/">
    <html>
      <head>
        <title>Employee Details</title>
      </head>
      <body>
        <h1>Employee Details</h1>
        <table border="1">
          <tr>
            <th>Title</th>
            <th>First Name</th>
            <th>Last Name</th>
            <th>Date of Birth</th>
            <th>Gender</th>
            <th>Position</th>
            <th>Salary</th>
            <th>Email</th>
            <th>Phone</th>
          </tr>
          <xsl:apply-templates select="employe_details/employee"/>
        </table>
      </body>
    </html>
  </xsl:template>
  
  <xsl:template match="employee">
    <tr>
      <td><xsl:value-of select="title"/></td>
      <td><xsl:value-of select="Personal/fname"/></td>
      <td><xsl:value-of select="Personal/lname"/></td>
      <td><xsl:value-of select="Personal/DOB"/></td>
      <td><xsl:value-of select="Personal/Gender"/></td>
      <td><xsl:value-of select="Employment/position"/></td>
      <td><xsl:value-of select="Employment/Salary"/></td>
      <td><xsl:value-of select="contact/Email"/></td>
      <td><xsl:value-of select="contact/Phone"/></td>
    </tr>
  </xsl:template>
</xsl:stylesheet>
