class Hud extends oM
{
   var jA = null;
   var yC = null;
   var rM = null;
   var cL = null;
   function Hud(vH)
   {
      super(vH);
      var _loc3_ = new Vector2(- Core.gameWindow.middleX,Core.gameWindow.middleY);
      var _loc4_ = new Vector2(Core.gameWindow.middleX,Core.gameWindow.middleY);
      this.jA = new wS(this,Core.dA);
      this.jA.SetTexture("hud_symbol");
      this.jA.SetPosition(_loc3_);
      this.yC = new sT(this,Core.dA,"fontMedium_symbol");
      this.yC.SetScaleInt(0.25);
      this.yC.SetPosition(_loc3_.Add(new Vector2(2,-4)));
      this.rM = new sT(this,Core.dA,"fontMedium_symbol");
      this.rM.SetScaleInt(0.25);
      this.rM.SetPosition(_loc3_.Add(new Vector2(98,-4)));
      this.cL = new sT(this,Core.dA,"fontMedium_symbol");
      this.cL.SetScaleInt(0.125);
      this.cL.SetPosition(_loc4_.Add(new Vector2(-1,-1)));
      this.cL.aJ = sT.eS;
      this.cL.nN(eV.T_SPACEFORMENU);
   }
   function Update(iW, delta_)
   {
      super.Update(iW,delta_);
      this.yC.nN(String(Math.round(Core.wavesHandler.gM.pM)));
      this.rM.nN(String(Core.wavesHandler.gM.lives));
   }
}
