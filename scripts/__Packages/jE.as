class jE
{
   static var pT = false;
   function jE()
   {
   }
   static function xF()
   {
      if(!jE.pT)
      {
         return undefined;
      }
      getUrl("FSCommand:SessionReady", "<data></data>");
      _root.stop();
   }
   static function qC()
   {
      if(!jE.pT)
      {
         return undefined;
      }
      _root.play();
   }
   static function gK()
   {
      if(!jE.pT)
      {
         return undefined;
      }
      getUrl("FSCommand:GameReady", "<data><mode>standard</mode><difficulty>easy</difficulty><startlevel>1</startlevel></data>");
   }
   static function uL()
   {
      if(!jE.pT)
      {
         return undefined;
      }
      Core.zD();
   }
   static function qH(cW)
   {
      if(!jE.pT)
      {
         return undefined;
      }
      if(Core.wavesHandler != null)
      {
         Core.wavesHandler.uX(cW);
      }
   }
   static function cK(lF)
   {
      if(!jE.pT)
      {
         return undefined;
      }
      Core.gameWindow.uJ.uS = !lF;
   }
   static function gF(xI, pM)
   {
      if(!jE.pT)
      {
         return undefined;
      }
      xI = Math.floor(xI);
      if(xI > 0)
      {
         getURL("FSCommand:ScoreBroadcast","<game><pM>" + pM + "</pM>" + "<xI>" + xI + "</xI>" + "</game>");
      }
   }
   static function wZ(xI, pM)
   {
      if(!jE.pT)
      {
         return undefined;
      }
      xI = Math.floor(xI);
      getURL("FSCommand:ScoreSubmit","<game><pM>" + pM + "</pM>" + "<xI>" + xI + "</xI>" + "</game>");
   }
   static function nA()
   {
      getUrl("FSCommand:GameEnd", "<gamedata></gamedata>");
   }
   static function rP(rU)
   {
      if(!jE.pT)
      {
         return undefined;
      }
      getURL("FSCommand:GameBreak","<data><breakpoint>" + rU + "</breakpoint>" + "</data>");
      _root.stop();
   }
   static function aR()
   {
      if(!jE.pT)
      {
         return undefined;
      }
      _root.play();
   }
   static function pS()
   {
      if(!jE.pT)
      {
         return undefined;
      }
      getUrl("FSCommand:CustomEvent", "<gamedata>CustomEvent</gamedata>");
      _root.stop();
   }
   static function cZ()
   {
      if(!jE.pT)
      {
         return undefined;
      }
      _root.play();
   }
   static function bV(mZ)
   {
      if(!jE.pT)
      {
         return undefined;
      }
      getURL("FSCommand:GameError",mZ);
   }
}
