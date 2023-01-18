class Asteroid extends Enemy
{
   var vC = false;
   var aF = 0;
   var wQ = 0;
   var mA = 0;
   var speed = 0;
   var velocity = null;
   var tU = 0;
   function Asteroid(vH, aL, direction, gO)
   {
      super(vH,Core.yB);
      this.mA = aL;
      this.speed = gO;
      this.SetTexture("asteroid_symbol");
      this.SetScaleInt(this.mA);
      this.uZ = Core.wavesHandler.chapter + this.mA * 7;
      this.health = 50 * Core.wavesHandler.chapter;
      this.velocity = new Vector2(this.speed * Math.cos(direction),this.speed * Math.sin(direction));
      if(Math.abs(this.velocity.y) < 10)
      {
         this.velocity.y = 10;
      }
      this.tU = Core.RandomRange(2,4);
      this.rR = 0.05;
   }
   function Update(iW, delta_)
   {
      var _loc2_ = this.GetPosition();
      _loc2_.x += this.velocity.x * delta_;
      _loc2_.y += this.velocity.y * delta_;
      this.SetPositionRotation(_loc2_,this.GetRotation() + delta_ * this.tU);
      if(this.vC)
      {
         if(_loc2_.x < - Core.gameWindow.middleX)
         {
            this.velocity.x = Math.abs(this.velocity.x);
         }
         if(_loc2_.x > Core.gameWindow.middleX)
         {
            this.velocity.x = - Math.abs(this.velocity.x);
         }
         if(_loc2_.y < - Core.gameWindow.middleY)
         {
            this.velocity.y = Math.abs(this.velocity.y);
         }
         if(_loc2_.y > Core.gameWindow.middleY)
         {
            this.velocity.y = - Math.abs(this.velocity.y);
         }
      }
      else if(_loc2_.x + this.qE < this.kX.gL().x - Core.gameWindow.middleX && this.velocity.x < 0 || _loc2_.x - this.qE > this.kX.gL().x + Core.gameWindow.middleX && this.velocity.x > 0 || _loc2_.y + this.eD < this.kX.gL().y - Core.gameWindow.middleY && this.velocity.y < 0 || _loc2_.y - this.eD > this.kX.gL().y + Core.gameWindow.middleY && this.velocity.y > 0)
      {
         this.tS = true;
      }
   }
   function Die()
   {
      super.Die();
      ExplosionParticle.Spawn(this.GetPosition(),1 + 2 * Core.gameWindow.eE.mL(),1,1 + 2 * this.mA);
      if(this.aF > 0 && this.mA - this.wQ > 0.25)
      {
         var _loc4_ = 0;
         while(_loc4_ < this.aF)
         {
            var _loc3_ = new Asteroid(Core.wavesHandler.kB,this.mA - this.wQ,Core.aZ(6.283185307179586),this.speed);
            _loc3_.SetPosition(this.GetPosition());
            _loc3_.vC = this.vC;
            _loc3_.aF = this.aF;
            _loc3_.wQ = this.wQ;
            _loc4_ = _loc4_ + 1;
         }
      }
   }
}
