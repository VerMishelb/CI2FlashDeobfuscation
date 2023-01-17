class nM extends eM
{
   function nM()
   {
      super();
      this.gD = true;
      new Starfield(this);
      var _loc3_ = new sT(this,Core.dU,"fontMedium_symbol");
      _loc3_.aJ = sT.jP;
      _loc3_.iU = sT.jP;
      _loc3_.cA(0.4);
      _loc3_.nN(TextHandler.T_PAUSED);
      _loc3_.SetPosition(new Vector2(0,100));
      var _loc4_ = new hH(this,new Vector2(0,50),TextHandler.T_ABORT);
      _loc4_.mI = function()
      {
         this.kX.uT = true;
         Core.wavesHandler.uT = true;
      };
      new mF(this,new Vector2(0,15),TextHandler.T_SOUND,Core.gameWindow.uJ);
      new mF(this,new Vector2(0,-20),TextHandler.T_DETAIL,Core.gameWindow.eE);
      _loc4_ = new hH(this,new Vector2(0,-100),TextHandler.T_RESUME);
      _loc4_.jR = true;
   }
   function lW(lJ)
   {
      super.lW(lJ);
      Core.wavesHandler.vB = null;
   }
}
