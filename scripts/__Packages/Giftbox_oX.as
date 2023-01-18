class Giftbox extends nY
{
   var velocity = null;
   function Giftbox(vH, xT)
   {
      super(vH,Core.jB);
      this.SetTexture("gift_symbol");
      this.SetPosition(xT);
      this.health = 1000;//Score?
      this.velocity = new Vector2(0,Core.RandomRange(-30,-100));
   }
   function Update(iW, delta_)
   {
      super.Update(iW,delta_);
      var _loc3_ = this.GetPosition();
      _loc3_.y += this.velocity.y * delta_;
      this.SetPosition(_loc3_);
      if(!this.eH())
      {
         this.tS = true;
      }
   }
   function lN()
   {
      super.lN();
      Core.wavesHandler.hP.weapons.WeaponUpgrade();
   }
}
