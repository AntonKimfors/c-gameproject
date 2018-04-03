
var toggleID = 0;
function startTips( text, style) 
{
   text = text || 'tips';
   style = style || '';
   toggleID++;
   document.write("<div class=\"tips\" style=\"" + style + "\"> <input id=\"");
   document.write( "toggleID" + toggleID );
   document.write("\" type=\"checkbox\"><label for=\"");
   document.write( "toggleID" + toggleID );
   document.write("\">" + text + "</label><div class=\"expand\">");
}

function startTipsWide( text, margin_right, style ) 
{
   test = test || 'lösningsförslag'; 
   style = style || ''; 
   toggleID++;
   document.write("<div class=\"expandwide\" style=\"" + style + "\">");			
   document.write("<input id=\"");
   document.write( "toggleID" + toggleID  );
   document.write("\" type=\"checkbox\"><label for=\"");
   document.write( "toggleID" + toggleID  );
   document.write("\" style=\"margin-right:" + margin_right + "\"");
   document.write("\">" + text + "</label><div class=\"expand expandwide\">");
}

function endTips( )
{
   document.write( "</div></div>" );
}

function startLosning( text ) 
{
   text = text || 'lösningsförslag'; 
   toggleID++;
   document.write("<input id=\"");
   document.write( "toggleID" + toggleID  );
   document.write("\" type=\"checkbox\"><label for=\"");
   document.write( "toggleID" + toggleID  );
   document.write("\">" + text + "</label><div class=\"expand\">");
}

function endLosning( )
{
   document.write( "</div>" );
}

function startLosningWide( text, margin_top ) 
{
   text = text || 'lösningsförslag';
   margin_top = margin_top || '0'; 
   toggleID++;
   document.write("<div class=\"expandwide\" style=\"margin-top:" + margin_top + ";\">");			
   document.write("<input id=\"");
   document.write( "toggleID" + toggleID  );
   document.write("\" type=\"checkbox\"><label for=\"");
   document.write( "toggleID" + toggleID  );
   document.write("\" style=\"margin-right: 80px;\"");
   document.write("\">" + text + "</label><div class=\"expand expandwide\">");
}

function endLosningWide( )
{
   document.write( "</div></div>" );
}