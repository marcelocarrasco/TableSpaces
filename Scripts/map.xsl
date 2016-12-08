<?xml version="1.0" encoding="UTF-8"?> 
<xsl:stylesheet   version="1.0"  xmlns:xsl="http://www.w3.org/1999/XSL/Transform"  xmlns="http://www.w3.org/1999/xhtml">  
<xsl:output method="xml" indent="yes" encoding="UTF-8"/>  
<xsl:template match="/Rows">   
		 <html>      
		 <head> <title>Table Spaces</title> </head>    
		 <body>       
		 <h1 align="center">perdido.claro.amx</h1>        
		 <table border="1">       
		 <!-- grid header -->         
		 <tr bgcolor="lightblue">
            <th>NOMBRE</th>
            <th>TAMAÑO</th>
            <th>GB LIBRES</th>
            <th>GB USADOS</th>
            <th>% GB USADOS</th>
            <th>BLOQUE</th>
            <th>ESTADO</th>
		 </tr>         
		 <xsl:apply-templates select="Row">
         <xsl:sort select="PCT_G_USADOS" order="descending"/>
		 </xsl:apply-templates>       
		 </table>		  
		 </body>    
		 </html>  
 </xsl:template> 
 <xsl:template match="Row">   
 <!-- grid value fields --> 
		  <tr>
		   <td align="center"><xsl:value-of select="TABLESPACE_NAME"/></td>      
		   <td align="center"><xsl:value-of select="G_BYTES"/></td>
           <td align="center"><xsl:value-of select="FREE_G_BYTES"/></td>
           <td align="center"><xsl:value-of select="G_USADOS"/></td>
           <td align="center"><xsl:value-of select="PCT_G_USADOS"/></td>
           <td align="center"><xsl:value-of select="BLOCK_SIZE"/></td>
           <td align="center"><xsl:value-of select="STATUS"/></td>           
		  </tr>         
 </xsl:template> 
</xsl:stylesheet>