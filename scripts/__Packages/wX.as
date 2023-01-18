class EggHatch extends Enemy
{
   var nE = 0;
   function EggHatch(vH)
   {
      super(vH,Core.yB);
      this.SetTexture("hatch_symbol");
      this.health = 25 + 25 * Core.wavesHandler.chapter;
      this.uZ = Core.wavesHandler.chapter;
      this.nE = - Core.RandomRange(50,100);
   }
   function Update(iW, delta_)
   {
      var _loc2_ = this.GetPosition();
      _loc2_.y += delta_ * this.nE;
      this.SetPosition(_loc2_);
      if(_loc2_.y + this.eD < - Core.gameWindow.middleY)
      {
         this.tS = true;
      }
   }
   function Die()
   {
      super.Die();
      var _loc4_ = this.GetPosition();
      var _loc3_ = new Chicken(Core.wavesHandler.kB);
      _loc3_.rY = true;
      _loc3_.sJ.tM(_loc4_,new Vector2(0,0));
      _loc3_.SetPosition(_loc4_);
      uE.Spawn(this.GetPosition(),1 + 2 * Core.gameWindow.eE.mL(),1,2);
   }
}
