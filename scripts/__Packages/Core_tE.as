class Core
{
   static var GameWindow = null;
   static var qP = null;
   static var WavesHandler = null;
   static var zW = null;
   static var rA = null;
   static var dV = null;
   static var yB = null;
   static var jB = null;
   static var bF = null;
   static var hI = null;
   static var rK = null;
   static var dU = null;
   static var rW = null;
   static var kD = null;
   static var gR = null;
   static var dA = null;
   static var zO = null;
   static var tR = null;
   function Core()
   {
   }
   static function Init()
   {
      Core.GameWindow = new Window(480,360,20);
      Core.qP = new uP();
      Core.zW = new nZ();
      Core.rA = new nZ();
      Core.dV = new nZ();
      Core.yB = new nZ();
      Core.jB = new nZ();
      Core.bF = new nZ();
      Core.hI = new nZ();
      Core.rK = new nZ();
      Core.dU = new nZ();
      Core.rW = new nZ();
      Core.kD = new nZ();
      Core.gR = new nZ();
      Core.dA = new nZ();
      Core.zO = new nZ();
      Core.tR = new nZ();
      Core.GameWindow.pJ.chickenhit_wav = 0.25;
      Core.qP.lU(new xQ());
      Core.qP.lU(new tI());
      jE.xF();
   }
   static function hY(to_)
   {
      return Math.floor(Math.random() * to_);
   }
   static function aZ(to_)
   {
      return Math.random() * to_;
   }
   static function RandomRange(from_, to_)
   {
      return from_ + Math.random() * (to_ - from_);
   }
   static function gX(jI)
   {
      return Math.max(0,Math.min(1,jI));
   }
   static function ValueInRange(from_, to_, mV)
   {
      return from_ + mV * (to_ - from_);
   }
   static function kV(from_, to_, zK)
   {
      return (zK - from_) / (to_ - from_);
   }
   static function jK(sS, xX, rI, nS, zK)
   {
      return Core.ValueInRange(sS,xX,Core.kV(rI,nS,zK));
   }
   static function Start()
   {
      if(Core.WavesHandler != null)
      {
         return undefined;
      }
      Core.WavesHandler = new WavesHandler();
      Core.WavesHandler.Init();
      Core.qP.lU(Core.WavesHandler);
   }
}
