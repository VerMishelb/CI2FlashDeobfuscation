class SmokeParticle extends wS
{
   var speed = 0;
   var oL = 0;
   var acceleration = -2.5;
   var wW = null;
   function SmokeParticle(vH)
   {
      super(vH,Core.hI);
      this.SetTexture("smoke_symbol");
   }
   function Update(iW, delta_)
   {
      this.speed += delta_ * this.acceleration;
      var _loc2_ = this.GetPosition();
      _loc2_.x += this.speed * this.wW.x;
      _loc2_.y += this.speed * this.wW.y;
      this.SetPosition(_loc2_);
      if(this.speed < 0)
      {
         this.tS = true;
      }
      else
      {
         this.SetScaleInt(Core.kV(0,this.oL,this.speed));
      }
   }
   static function Spawn(xT, eT, dE, vU)
   {
      var _loc1_ = null;
      var _loc3_ = 0;
      var _loc2_ = 0;
      while(_loc2_ < eT)
      {
         _loc1_ = new SmokeParticle(Core.wavesHandler.oH);
         _loc1_.SetPosition(xT);
         _loc1_.speed = Core.RandomRange(dE,vU);
         _loc1_.oL = _loc1_.speed;
         _loc3_ = Core.aZ(6.283185307179586);
         _loc1_.wW = new Vector2(Math.cos(_loc3_),Math.sin(_loc3_));
         _loc2_ = _loc2_ + 1;
      }
   }
}
