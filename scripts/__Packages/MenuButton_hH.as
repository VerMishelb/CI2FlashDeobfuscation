class MenuButton extends wS
{
   var jR = false;
   var rQ = false;
   var vFont = null;
   function MenuButton(vH, new_position_, wE)
   {
      super(vH,Core.rW);
      this.SetTexture("menuitem_symbol");
      this.SetPosition(new_position_);
      this.vFont = new sT(this,Core.kD,"vFontMedium_symbol");
      this.vFont.aJ = sT.jP;
      this.vFont.iU = sT.jP;
      this.vFont.nN(wE);
      this.vFont.xU(new xH(Number(eV.textColor)));
      this.vFont.SetPosition(new_position_.Add(new Vector2(0,-1,0)));
      var _loc3_ = (this.qE - this.eD) / this.vFont.qE;
      _loc3_ = Math.min(_loc3_,0.25);
      this.vFont.SetScaleInt(_loc3_);
   }
   function Update(iW, delta_)
   {
      super.Update(iW,delta_);
      var _loc3_ = this.rQ;
      this.rQ = this.aH();
      if(this.rQ != _loc3_)
      {
         if(this.rQ)
         {
            this.vFont.xU(new xH(-1));
         }
         else
         {
            this.vFont.xU(new xH(Number(eV.textColor)));
         }
      }
      if(this.rQ && Core.gameWindow.yE)
      {
         this.mI();
      }
   }
   function mI()
   {
      if(this.jR)
      {
         Core.qP.xM().uT = true;
      }
   }
}
