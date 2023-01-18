class Bullet extends wS
{
   var direction = 0;
   var speed = 50;
   var acceleration = 200;
   var qQ = 1;
   function Bullet(vH, new_position_, new_direction_)
   {
      super(vH,Core.rA);
      this.direction = new_direction_;
      this.SetTexture("bullet_symbol");
      this.SetPosition(new_position_);
      this.SetRotation(this.direction);
   }
   function Update(iW, delta_)
   {
      var _loc2_ = this.GetPosition();
      this.speed += delta_ * this.acceleration;
      _loc2_.x += delta_ * Math.cos(this.direction) * this.speed;
      _loc2_.y += delta_ * Math.sin(this.direction) * this.speed;
      this.SetPosition(_loc2_);
      if(_loc2_.x < - Core.gameWindow.middleX || _loc2_.x > Core.gameWindow.middleX || _loc2_.y > Core.gameWindow.middleY)
      {
         this.tS = true;
      }
   }
   function rO()
   {
      var _loc2_ = Enemy(Core.wavesHandler.kB.first);
      while(_loc2_ != null)
      {
         if(this.CollidesWith(_loc2_) && !_loc2_.tS)
         {
            _loc2_.oD(this.qQ);
            this.tS = true;
            return undefined;
         }
         _loc2_ = Enemy(_loc2_.next);
      }
   }
   function WeaponUpgrade(kT)// Technically SetWeaponPower() but had the same symbol name as the one from Weapon class
   {
      if(kT == 3)
      {
         this.SetTexture("bullet3_symbol");
      }
      else
      {
         this.SetTexture("bullet2_symbol");
      }
      this.qQ = kT;
   }
}
