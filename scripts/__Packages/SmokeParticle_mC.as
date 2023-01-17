class SmokeParticle extends wS
{
   var lK = 0;
   var oL = 0;
   var hF = -2.5;
   var wW = null;
   function SmokeParticle(vH)
   {
      super(vH,Core.hI);
      this.SetTexture("smoke_symbol");
   }
   function Update(iW, delta_)
   {
      this.lK += delta_ * this.hF;
      var _loc2_ = this.position();
      _loc2_.x += this.lK * this.wW.x;
      _loc2_.y += this.lK * this.wW.y;
      this.SetPosition(_loc2_);
      if(this.lK < 0)
      {
         this.tS = true;
      }
      else
      {
         this.cA(Core.kV(0,this.oL,this.lK));
      }
   }
   static function hW(xT, eT, dE, vU)
   {
      var _loc1_ = null;
      var _loc3_ = 0;
      var _loc2_ = 0;
      while(_loc2_ < eT)
      {
         _loc1_ = new SmokeParticle(Core.wavesHandler.oH);
         _loc1_.SetPosition(xT);
         _loc1_.lK = Core.RandomRange(dE,vU);
         _loc1_.oL = _loc1_.lK;
         _loc3_ = Core.aZ(6.283185307179586);
         _loc1_.wW = new Vector2(Math.cos(_loc3_),Math.sin(_loc3_));
         _loc2_ = _loc2_ + 1;
      }
   }
}
