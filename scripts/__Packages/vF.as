class vF extends Object
{
   var xD = 0;
   function vF(vH, oK)
   {
      super(vH);
      this.xD = oK;
   }
   function Update(iW, delta_)
   {
      this.xD -= delta_;
      if(this.xD <= 0)
      {
         while(this.wJ != null)
         {
            var _loc2_ = wS(this.wJ);
            this.eA(_loc2_);
            Core.wavesHandler.kB.oQ(_loc2_);
            _loc2_.zM(true);
         }
         this.tS = true;
      }
   }
}
