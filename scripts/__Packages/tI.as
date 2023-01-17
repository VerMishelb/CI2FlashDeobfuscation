class tI extends eM
{
   function tI()
   {
      super();
      this.gD = true;
      var _loc4_ = new wS(this,Core.dU);
      _loc4_.SetTexture("logo_symbol");
      _loc4_.SetPosition(new Vector2(0,Core.gameWindow.middleY / 2));
      var _loc3_ = new sT(this,Core.dU,"fontSmall_symbol");
      _loc3_.aJ = sT.jP;
      _loc3_.iU = sT.jP;
      _loc3_.cA(0.1);
      _loc3_.nN(eV.T_POWEREDBY);
      _loc3_.SetPosition(new Vector2(0,- Core.gameWindow.middleY + 110));
      _loc4_ = new wS(this,Core.dU);
      _loc4_.SetTexture("ia_symbol");
      _loc4_.SetPosition(new Vector2(0,- Core.gameWindow.middleY + 75));
   }
   function Update(kH, delta_)
   {
      super.Update(kH,delta_);
      if(this.iW > 3)
      {
         this.uT = true;
      }
   }
}
