class Bullet extends wS
{
   var direction = 0;
   var lK = 50;
   var hF = 200;
   var qQ = 1;
   function Bullet(vH, new_position_, new_direction_)
   {
      super(vH,Core.rA);
      this.direction = new_direction_;
      this.SetTexture("bullet_symbol");
      this.SetPosition(new_position_);
      this.lY(this.direction);
   }
   function Update(iW, delta_)
   {
      var _loc2_ = this.position();
      this.lK += delta_ * this.hF;
      _loc2_.x += delta_ * Math.cos(this.direction) * this.lK;
      _loc2_.y += delta_ * Math.sin(this.direction) * this.lK;
      this.SetPosition(_loc2_);
      if(_loc2_.x < - Core.gameWindow.middleX || _loc2_.x > Core.gameWindow.middleX || _loc2_.y > Core.gameWindow.middleY)
      {
         this.tS = true;
      }
   }
   function rO()
   {
      var _loc2_ = Enemy(Core.wavesHandler.kB.wJ);
      while(_loc2_ != null)
      {
         if(this.xA(_loc2_) && !_loc2_.tS)
         {
            _loc2_.oD(this.qQ);
            this.tS = true;
            return undefined;
         }
         _loc2_ = Enemy(_loc2_.vM);
      }
   }
   function WeaponUpgrade(kT)
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
