class xH
{
   var jI = 0;
   var zA = 0;
   var rH = 0;
   var uS = 0;
   function xH(tJ)
   {
      if(tJ != undefined)
      {
         this.jI = tJ >> 24 & 255;
         this.zA = tJ >> 16 & 255;
         this.rH = tJ >> 8 & 255;
         this.uS = tJ & 255;
      }
   }
   function GetValue()
   {
      return new xH(this.qO());
   }
   function qO()
   {
      return this.jI << 24 | this.zA << 16 | this.rH << 8 | this.uS;
   }
   static function iV(jQ, hG, mV)
   {
      var _loc1_ = new xH();
      _loc1_.jI = Core.ValueInRange(jQ.jI,hG.jI,mV);
      _loc1_.zA = Core.ValueInRange(jQ.zA,hG.zA,mV);
      _loc1_.rH = Core.ValueInRange(jQ.rH,hG.rH,mV);
      _loc1_.uS = Core.ValueInRange(jQ.uS,hG.uS,mV);
      return _loc1_;
   }
}
