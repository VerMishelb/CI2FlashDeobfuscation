class nU extends sT
{
   var gD = true;
   var xD = 0;
   var oI = 999999;
   var tT = 0;
   var eZ = 0;
   var nQ = 0;
   function nU(vH, jF, lA)
   {
      super(vH,jF,lA);
   }
   function Update(iW, delta_)
   {
      if(this.xD > 0)
      {
         this.SetVisibility(false);
         this.xD -= delta_;
      }
      if(this.xD <= 0)
      {
         this.SetVisibility(true);
         if(this.nQ < this.oI)
         {
            this.nQ += delta_;
            var _loc2_ = this.fN();
            if(this.tT > 0 && this.nQ < this.tT)
            {
               _loc2_.jI = Core.ValueInRange(0,255,Core.gX(this.nQ / this.tT));
            }
            else if(this.eZ > 0 && this.nQ > this.oI - this.eZ)
            {
               _loc2_.jI = Core.ValueInRange(0,255,Core.gX((this.oI - this.nQ) / this.eZ));
            }
            else
            {
               _loc2_.jI = 255;
            }
            this.xU(_loc2_);
         }
         else if(this.gD)
         {
            this.tS = true;
         }
      }
   }
   function uG()
   {
      this.nQ = 0;
      this.xD = 0;
      this.oI = 999999;
   }
}
