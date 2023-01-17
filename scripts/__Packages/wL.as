class Egg extends wS
{
   var lK = null;
   var bI = 100;
   var jZ = 200;
   var xE = 300;
   function Egg(vH, new_position_)
   {
      super(vH,Core.dV);
      this.lK = new Vector2(0,Core.RandomRange(-100 - 30 * Core.wavesHandler.chapter,-50));
      this.SetTexture("egg_symbol");
      this.SetPosition(new_position_);
      this.lI(this.bI);
   }
   function Update(iW, delta_)
   {
      this.eG(iW,delta_);
      if(this.fE == this.bI)
      {
         var _loc2_ = this.position();
         _loc2_.y += delta_ * this.lK.y;
         this.SetPosition(_loc2_);
         if(_loc2_.y < Core.wavesHandler.wY)
         {
            this.lI(this.jZ);
         }
      }
   }
   function lZ()
   {
      switch(this.fE)
      {
         case this.jZ:
            this.zJ.gotoAndPlay(2);
            Core.gameWindow.PlaySound("eggsplat_wav");
            this.lI(this.xE,0.5 + 1 * Core.gameWindow.eE.mL());
            break;
         case this.xE:
            this.tS = true;
      }
   }
}
