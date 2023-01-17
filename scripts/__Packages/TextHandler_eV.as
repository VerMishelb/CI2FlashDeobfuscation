class TextHandler
{
   function TextHandler()
   {
   }
   static function sP(iG)
   {
      var cO = iG.firstChild.firstChild;
      while(cO != null)
      {
         if(cO.nodeType == 1)
         {
            set("TextHandler." + cO.attributes._name,cO.firstChild.nodeValue);
         }
         cO = cO.nextSibling;
      }
   }
}
