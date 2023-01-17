class nZ extends oM
{
   var jJ = 0;
   var mG = 0;
   static var dN = 1000;
   function nZ(cJ)
   {
      super();
      if(cJ == undefined)
      {
         cJ = 1000;
      }
      this.uN = new Array();
      this.jJ = nZ.dN;
      this.mG = this.jJ + cJ;
      var _loc3_ = this.mG - 1;
      while(_loc3_ >= this.jJ)
      {
         this.uN.push(_loc3_);
         _loc3_ = _loc3_ - 1;
      }
      nZ.dN += cJ;
   }
   function gE()
   {
      if(this.uN.tN == 0)
      {
         Core.gameWindow.PrintError("Out of depths in range (" + this.jJ + "," + this.mG + ")");
      }
      return Number(this.uN.pop());
   }
   function jO(tY)
   {
      if(tY >= this.jJ && tY < this.mG)
      {
         this.uN.push(tY);
      }
      else
      {
         Core.gameWindow.PrintError("Tried to put tY " + tY + " in range (" + this.jJ + "," + this.mG + ")");
      }
   }
}
