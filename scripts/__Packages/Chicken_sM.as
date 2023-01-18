class Chicken extends Enemy
{
   var rY = false;
   function Chicken(vH)
   {
      super(vH,Core.yB);
      this.SetTexture("chicken_symbol");
      this.PlayAnimation();
      this.uZ = Core.wavesHandler.chapter;
      this.health = 100 * Core.wavesHandler.chapter;
      this.rR = 0.025;
   }
   function Update(iW, delta_)
   {
      this.sJ.Update(iW,delta_);
      this.SetPosition(this.sJ.cH.Add(this.eJ));
      this.eJ.y /= 2;
      if(this.rY && this.sJ.eO())
      {
         var _loc2_ = new rV(this.sJ,rV.vS);
         _loc2_.fV = new Vector2(Core.RandomRange(- Core.gameWindow.middleX,Core.gameWindow.middleX),Core.RandomRange(Core.wavesHandler.wY,Core.gameWindow.middleY));
         _loc2_.tW = _loc2_.fV.Subtract(this.GetPosition());
         _loc2_.tW.dQ(this.sJ.speed);
      }
      if(this.sJ.tS)
      {
         this.tS = true;
      }
      if(iW > this.pB)
      {
         if(this.pB != 0)
         {
            Core.gameWindow.PlaySound("eggdrop_wav");
            new Egg(Core.wavesHandler.xG,this.GetPosition());
         }
         this.pB = iW + Core.RandomRange(1,20);
      }
   }
   function oD(qQ)
   {
      super.oD(qQ);
      this.eJ.y = 4;
   }
   function Die()
   {
      super.Die();
      Core.gameWindow.PlaySound("chickenhit_wav");
      SmokeParticle.Spawn(this.GetPosition(),1 + 2 * Core.gameWindow.eE.mL(),1.5,2);
      if(Core.hY(3) == 0)
      {
         new Drumstick(Core.wavesHandler.jM,this.GetPosition());
      }
   }
}
