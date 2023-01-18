class nO extends eM
{
   function nO()
   {
      super();
      this.gD = true;
      new Starfield(this);
      var _loc3_ = new sT(this,Core.dU,"fontMedium_symbol");
      _loc3_.aJ = sT.jP;
      _loc3_.iU = sT.jP;
      _loc3_.SetScaleInt(0.4);
      _loc3_.nN(TextHandler.T_GODELUXETITLE);
      _loc3_.SetPosition(new Vector2(0,100));
      this.vE(50,TextHandler.T_GODELUXE1);
      this.vE(30,TextHandler.T_GODELUXE2);
      this.vE(10,TextHandler.T_GODELUXE3);
      this.vE(-10,TextHandler.T_GODELUXE4);
      this.vE(-30,TextHandler.T_GODELUXE5);
      new pW(this,new Vector2(0,-100),TextHandler.T_BUY);
      var _loc4_ = new hH(this,new Vector2(0,-135),TextHandler.T_DONTGODELUXE);
      _loc4_.jR = true;
   }
   function vE(y, tL)
   {
      var _loc2_ = new sT(this,Core.dU,"fontMedium_symbol");
      _loc2_.aJ = sT.jP;
      _loc2_.iU = sT.jP;
      _loc2_.SetScaleInt(0.25);
      _loc2_.nN(tL);
      _loc2_.SetPosition(new Vector2(0,y));
   }
}
