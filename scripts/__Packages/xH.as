class xH
{
   var jI = 0;
   var zA = 0;
   var rH = 0;
   var uS = 0;
   function xH(color_)
   {
      if(color_ != undefined)
      {
         this.jI = color_ >> 24 & 255;
         this.zA = color_ >> 16 & 255;
         this.rH = color_ >> 8 & 255;
         this.uS = color_ & 255;
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
