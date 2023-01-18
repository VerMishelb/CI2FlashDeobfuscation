class Player extends wS
{
   var weapons = null;
   var yM = 4;
   var xJ = 0;
   var shield = null;
   var invulnTimer = 0;
   static var zI = 100;
   static var cN = 200;
   static var fL = 300;
   function Player(vH)
   {
      super(vH,Core.bF);
      this.SetTexture("fighter_symbol");
      this.shield = new wS(this,Core.bF);
      this.shield.SetTexture("shield_symbol");
      this.shield.PlayAnimation();
      this.weapons = new eU();
      this.lI(Player.zI);
   }
   function Update(iW, delta_)
   {
      super.Update(iW,delta_);
      if(this.fE == Player.cN)
      {
         if(Core.gameWindow.yE)
         {
            this.weapons.hX(this.GetPosition());
            this.xJ = -8;
         }
         else
         {
            this.xJ /= 2;
         }
         if(this.kX.wP.x != this.position.x)
         {
            if(this.kX.wP.x < this.position.x)
            {
               this.yM--;
            }
            if(this.kX.wP.x > this.position.x)
            {
               this.yM++;
            }
            if(this.yM < 0)
            {
               this.yM = 0;
            }
            if(this.yM > 8)
            {
               this.yM = 8;
            }
         }
         else
         {
            if(this.yM < 4)
            {
               this.yM++;
            }
            if(this.yM > 4)
            {
               this.yM--;
            }
         }
         var _loc3_ = this.kX.wP.GetValue();
         _loc3_.x = Math.max(_loc3_.x,4 - Core.gameWindow.middleX);
         _loc3_.x = Math.min(_loc3_.x,-4 + Core.gameWindow.middleX);
         _loc3_.y = Math.max(_loc3_.y,36 - Core.gameWindow.middleY);
         _loc3_.y = Math.min(_loc3_.y,-30 + Core.gameWindow.middleY);
         _loc3_.y += this.xJ;
         this.SetPosition(_loc3_);
         this.nX(this.yM);
         if(this.invulnTimer > 0)
         {
            this.invulnTimer -= delta_;
            this.shield.SetPosition(this.GetPosition());
            if(this.invulnTimer <= 0)
            {
               this.shield.SetVisibility(false);
            }
         }
      }
   }
   function rT()
   {
      if(this.fE != Player.cN)
      {
         return undefined;
      }
      var _loc4_ = nY(Core.wavesHandler.jM.first);
      while(_loc4_ != null)
      {
         if(this.CollidesWith(_loc4_))
         {
            _loc4_.lN();
            return undefined;
         }
         _loc4_ = nY(_loc4_.next);
      }
      if(this.invulnTimer > 0)
      {
         return undefined;
      }
      var _loc3_ = Enemy(Core.wavesHandler.kB.first);
      while(_loc3_ != null)
      {
         if(this.CollidesWith(_loc3_))
         {
            this.CallDie(_loc3_);
            return undefined;
         }
         _loc3_ = Enemy(_loc3_.next);
      }
      var _loc2_ = Egg(Core.wavesHandler.xG.first);
      while(_loc2_ != null)
      {
         if(this.CollidesWith(_loc2_))
         {
            this.CallDie(_loc2_);
            return undefined;
         }
         _loc2_ = Egg(_loc2_.next);
      }
   }
   function CallDie(other_obj_)
   {
      this.Die();
   }
   function lZ()
   {
      switch(this.fE)
      {
         case Player.zI:
            this.SetVisibility(false);
            this.shield.SetVisibility(false);
            Core.gameWindow.SetMouseVisibility(true);
            if(Core.wavesHandler.gM.lives > 0)
            {
               this.lI(Player.cN,2);
            }
            else
            {
               this.lI(Player.fL);
               Core.wavesHandler.iY();
            }
            break;
         case Player.cN:
            this.SetVisibility(true);
            this.SpawnShield(2);
            Core.gameWindow.SetMouseVisibility(false);
      }
   }
   function Die()
   {
      this.weapons.WeaponDowngrade();
      Core.wavesHandler.Shake(10);
      Core.gameWindow.PlaySound("boom_wav");
      SmokeParticle.Spawn(this.GetPosition(),8,1,3);
      uE.Spawn(this.GetPosition(),5,1,3);
      Core.wavesHandler.gM.lives--;
      this.lI(Player.zI);
   }
   function SpawnShield(time_)
   {
      this.invulnTimer = time_;
      this.shield.SetVisibility(true);
      this.shield.PlayAnimation();
   }
}
