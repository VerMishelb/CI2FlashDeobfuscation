class Drumstick extends nY
{
   var velocity = null;
   var tU = 0;
   static var eL = 100;
   static var gG = 200;
   static var xE = 300;
   function Drumstick(vH, xT)
   {
      super(vH,Core.jB);
      this.SetTexture("chickenleg_symbol");
      this.SetPosition(xT);
      this.health = 250;
      var _loc4_ = Core.aZ(6.283185307179586);
      var _loc3_ = Core.RandomRange(50,100);
      this.velocity = new Vector2(_loc3_ * Math.cos(_loc4_),_loc3_ * Math.sin(_loc4_));
      this.tU = Core.RandomRange(-8,8);
      this.lI(Drumstick.eL);
   }
   function Update(iW, delta_)
   {
      super.Update(iW,delta_);
      if(this.fE != Drumstick.eL)
      {
         return undefined;
      }
      var _loc3_ = this.position();
      _loc3_.x += this.velocity.x * delta_;
      _loc3_.y += this.velocity.y * delta_;
      this.velocity.y -= 128 * delta_;
      if(_loc3_.y < Core.wavesHandler.wY && this.velocity.y < 0)
      {
         if(this.velocity.y < -60)
         {
            this.velocity.y = (- this.velocity.y) / 2;
         }
         else
         {
            this.lI(Drumstick.gG);
         }
      }
      this.rN(_loc3_,this.cF() + delta_ * this.tU);
   }
   function lZ()
   {
      switch(this.fE)
      {
         case Drumstick.gG:
            this.lI(Drumstick.xE,0.1 + 0.5 * Core.gameWindow.eE.mL());
            break;
         case Drumstick.xE:
            this.tS = true;
      }
   }
   function lN()
   {
      super.lN();
      Core.gameWindow.PlaySound("chomp_wav");
      Core.wavesHandler.foodCounter++;
   }
}
