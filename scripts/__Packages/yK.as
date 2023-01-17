class yK extends wS
{
   var oO = null;
   var yM = 4;
   var xJ = 0;
   var lS = null;
   var vW = 0;
   static var zI = 100;
   static var cN = 200;
   static var fL = 300;
   function yK(vH)
   {
      super(vH,Core.bF);
      this.SetTexture("fighter_symbol");
      this.lS = new wS(this,Core.bF);
      this.lS.SetTexture("shield_symbol");
      this.lS.pC();
      this.oO = new eU();
      this.lI(yK.zI);
   }
   function Update(iW, delta_)
   {
      super.Update(iW,delta_);
      if(this.fE == yK.cN)
      {
         if(Core.gameWindow.yE)
         {
            this.oO.hX(this.position());
            this.xJ = -8;
         }
         else
         {
            this.xJ /= 2;
         }
         if(this.kX.wP.x != this.mN.x)
         {
            if(this.kX.wP.x < this.mN.x)
            {
               this.yM--;
            }
            if(this.kX.wP.x > this.mN.x)
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
         if(this.vW > 0)
         {
            this.vW -= delta_;
            this.lS.SetPosition(this.position());
            if(this.vW <= 0)
            {
               this.lS.zM(false);
            }
         }
      }
   }
   function rT()
   {
      if(this.fE != yK.cN)
      {
         return undefined;
      }
      var _loc4_ = nY(Core.wavesHandler.jM.wJ);
      while(_loc4_ != null)
      {
         if(this.xA(_loc4_))
         {
            _loc4_.lN();
            return undefined;
         }
         _loc4_ = nY(_loc4_.vM);
      }
      if(this.vW > 0)
      {
         return undefined;
      }
      var _loc3_ = Enemy(Core.wavesHandler.kB.wJ);
      while(_loc3_ != null)
      {
         if(this.xA(_loc3_))
         {
            this.kR(_loc3_);
            return undefined;
         }
         _loc3_ = Enemy(_loc3_.vM);
      }
      var _loc2_ = Egg(Core.wavesHandler.xG.wJ);
      while(_loc2_ != null)
      {
         if(this.xA(_loc2_))
         {
            this.kR(_loc2_);
            return undefined;
         }
         _loc2_ = Egg(_loc2_.vM);
      }
   }
   function kR(gH)
   {
      this.fW();
   }
   function lZ()
   {
      switch(this.fE)
      {
         case yK.zI:
            this.zM(false);
            this.lS.zM(false);
            Core.gameWindow.SetMouseVisibility(true);
            if(Core.wavesHandler.gM.lives > 0)
            {
               this.lI(yK.cN,2);
            }
            else
            {
               this.lI(yK.fL);
               Core.wavesHandler.iY();
            }
            break;
         case yK.cN:
            this.zM(true);
            this.uV(2);
            Core.gameWindow.SetMouseVisibility(false);
      }
   }
   function fW()
   {
      this.oO.gZ();
      Core.wavesHandler.sA(10);
      Core.gameWindow.PlaySound("boom_wav");
      SmokeParticle.hW(this.position(),8,1,3);
      uE.hW(this.position(),5,1,3);
      Core.wavesHandler.gM.lives--;
      this.lI(yK.zI);
   }
   function uV(xL)
   {
      this.vW = xL;
      this.lS.zM(true);
      this.lS.pC();
   }
}
