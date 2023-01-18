class xQ extends eM
{
   function xQ()
   {
      super();
      new Starfield(this);
      var _loc3_ = new wS(this,Core.dU);
      _loc3_.SetTexture("logo_symbol");
      _loc3_.SetPosition(new Vector2(0,Core.gameWindow.middleY / 2));
      _loc3_ = new wS(this,Core.dU);
      _loc3_.SetTexture("iasmall_symbol");
      _loc3_.SetPosition(new Vector2(- Core.gameWindow.middleX + _loc3_.qE / 2 + 10,Core.gameWindow.middleY / 2));
      if(jE.pT)
      {
         _loc3_ = new wS(this,Core.dU);
         _loc3_.SetTexture("msn_symbol");
         _loc3_.SetPosition(new Vector2(Core.gameWindow.middleX - _loc3_.qE / 2 - 10,Core.gameWindow.middleY / 2));
      }
      else if(wV.pT)
      {
         _loc3_ = new wS(this,Core.dU);
         _loc3_.SetTexture("yahoo_symbol");
         _loc3_.SetPosition(new Vector2(Core.gameWindow.middleX - _loc3_.qE / 2 - 10,Core.gameWindow.middleY / 2));
      }
      var _loc4_ = new hH(this,new Vector2(0,0),eV.T_START);
      _loc4_.mI = function()
      {
         if(jE.pT)
         {
            jE.gK();
         }
         else
         {
            Core.Start();
         }
      };
      new mF(this,new Vector2(0,-35),eV.T_SOUND,Core.gameWindow.uJ);
      new mF(this,new Vector2(0,-70),eV.T_DETAIL,Core.gameWindow.eE);
      new pW(this,new Vector2(0,-150),eV.T_BUY);
   }
}
