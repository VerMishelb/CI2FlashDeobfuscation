class ChickenBoss extends Enemy
{
   function ChickenBoss(vH)
   {
      super(vH,Core.yB);
      this.SetTexture("boss_symbol");
      this.PlayAnimation();
      this.uZ = 25 + 25 * Core.wavesHandler.chapter;
      this.health = 6000 + 4000 * Core.wavesHandler.chapter;
      this.rR = 0.1;
      this.sJ.speed = 80 + 20 * Core.wavesHandler.chapter;
   }
   function Update(iW, delta_)
   {
      this.sJ.Update(iW,delta_);
      this.SetPosition(this.sJ.cH.Add(this.eJ));
      this.eJ.y /= 2;
      if(this.sJ.eO())
      {
         var _loc2_ = new rV(this.sJ,rV.vS);
         _loc2_.fV = new Vector2(Core.RandomRange(- Core.gameWindow.middleX,Core.gameWindow.middleX),Core.RandomRange(- Core.gameWindow.middleY + 50,Core.gameWindow.middleY));
         _loc2_.tW = new Vector2(0,0);
      }
      if(iW > this.pB)
      {
         if(this.pB != 0)
         {
            Core.gameWindow.PlaySound("eggdrop_wav");
            new Egg(Core.wavesHandler.xG,this.GetPosition().Add(new Vector2(Core.RandomRange((- this.qE) / 4,this.qE / 4),0)));
         }
         this.pB = iW + Core.RandomRange(0.5,1.5);
      }
   }
   function oD(qQ)
   {
      super.oD(qQ);
      Core.gameWindow.PlaySound("boss_wav");
      this.eJ.y = 8;
   }
   function Die()
   {
      super.Die();
      Core.wavesHandler.Shake(6);
      Core.gameWindow.PlaySound("boom_wav");
      SmokeParticle.Spawn(this.GetPosition(),10 + 10 * Core.gameWindow.eE.mL(),2,5);
      var _loc3_ = 0;
      while(_loc3_ < 10)
      {
         new Drumstick(Core.wavesHandler.jM,this.GetPosition());
         _loc3_ = _loc3_ + 1;
      }
   }
}
