var vXml = new XML();
vXml.onLoad = function(success)
{
   if(!success)
   {
      stop();
   }
};
vXml.load("ChickenInvaders2.config.xml");
