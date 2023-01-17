class sT extends wS
{
   static var sQ = 0;
   static var jP = 1;
   static var eS = 2;
   var aJ = sT.sQ;
   var iU = sT.sQ;
   var yS = null;
   function sT(vH, jF, lA)
   {
      super(vH,jF);
      this.SetTexture(lA);
      this.zJ.text_txt.autoSize = "left";
      this.zJ.text_txt.selectable = false;
      if(!Core.gameWindow.uA)
      {
         this.zJ.text_txt.border = true;
      }
      this.yS = this.zJ.text_txt.getTextFormat();
      this.nN("");
   }
   function nN(wC)
   {
      if(this.zJ.text_txt.text != wC)
      {
         this.zJ.text_txt.text = wC;
         this.gB();
      }
   }
   function gB()
   {
      this.zJ.text_txt.setTextFormat(this.yS);
      this.zJ.text_txt.setNewTextFormat(this.yS);
      if(this.aJ == sT.jP)
      {
         this.zJ.text_txt._x = (- this.zJ.text_txt._width) / 2;
      }
      else if(this.aJ == sT.eS)
      {
         this.zJ.text_txt._x = - this.zJ.text_txt._width;
      }
      if(this.iU == sT.jP)
      {
         this.zJ.text_txt._y = (- this.zJ.text_txt._height) / 2;
      }
      else if(this.iU == sT.eS)
      {
         this.zJ.text_txt._y = - this.zJ.text_txt._height;
      }
      this.bU();
   }
}
