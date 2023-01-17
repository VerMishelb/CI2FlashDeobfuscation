class ChickenParatrooper extends Enemy
{
   var jU = 0;
   var nE = 0;
   function ChickenParatrooper(vH)
   {
      super(vH,Core.yB);
      this.SetTexture("umbrella_symbol");
      this.pC();
      this.health = 100;
      this.jU = Core.aZ(6.283185307179586);
      this.nE = - Core.RandomRange(50,100);
   }
   function Update(iW, delta_)
   {
      this.jU += delta_ * 4;
      var _loc2_ = this.position();
      _loc2_.y += delta_ * this.nE;
      this.rN(_loc2_,Math.sin(this.jU) * 0.19634954084936207);
      if(_loc2_.y + this.eD < - Core.gameWindow.middleY)
      {
         this.tS = true;
      }
      if(iW > this.pB)
      {
         if(this.pB != 0)
         {
            Core.gameWindow.PlaySound("eggdrop_wav");
            new Egg(Core.wavesHandler.xG,this.position());
         }
         this.pB = iW + Core.RandomRange(1,20);
      }
   }
   function fW()
   {
      super.fW();
      var _loc3_ = this.position();
      _loc3_.y -= 10;
      var _loc4_ = new Chicken(Core.wavesHandler.kB);
      _loc4_.rY = true;
      _loc4_.sJ.tM(_loc3_,new Vector2(0,0));
      _loc4_.SetPosition(_loc3_);
   }
}
