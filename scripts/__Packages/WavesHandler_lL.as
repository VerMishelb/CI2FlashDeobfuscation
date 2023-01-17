class WavesHandler extends eM
{
   var wY = 0;
   var pR = null;
   var lB = null;
   var starfield = null;
   var tQ = null;
   var xG = null;
   var vN = null;
   var kB = null;
   var jM = null;
   var iD = null;
   var hP = null;
   var oH = null;
   var qB = null;
   var aB = null;
   var bR = null;
   var rL = null;
   var gM = null;
   var bQ = 1;
   var cD = 0;
   var kF = 0;
   var chapter = 0;
   var wave = 0;
   var fA = 100;
   var vY = 200;
   var cN = 400;
   var iJ = 500;
   var oN = 600;
   var uD = 700;
   var kL = 1000;
   var oA = false;
   var foodCounter = 0;
   var zQ = 0;
   var vB = null;
   var yF = 0;
   function WavesHandler()
   {
      super();
      this.gD = true;
      this.vK = false;
      this.wY = - Core.GameWindow.middleY + 12;
   }
   function Init()
   {
      this.pR = new eM(this);
      this.starfield = new Starfield(this.pR);
      this.tQ = new Object(this.pR);
      this.xG = new Object(this.pR);
      this.vN = new Object(this.pR);
      this.kB = new Object(this.pR);
      this.jM = new Object(this.pR);
      this.iD = new Object(this.pR);
      this.oH = new Object(this.pR);
      this.qB = new Object(this.pR);
      this.lB = new eM();
      this.oQ(this.lB);
      this.aB = new sO(this.lB);
      this.bR = new nU(this.aB,Core.dA,"fontMedium_symbol");
      this.bR.gD = false;
      this.bR.aJ = sT.jP;
      this.bR.iU = sT.jP;
      this.bR.tT = 0.25;
      this.bR.eZ = 0.25;
      this.bR.cA(0.5);
      this.rL = new nU(this.aB,Core.dA,"fontMedium_symbol");
      this.rL.gD = false;
      this.rL.aJ = sT.jP;
      this.rL.iU = sT.jP;
      this.rL.tT = 0.25;
      this.rL.eZ = 0.25;
      this.rL.cA(0.25);
      this.rL.SetPosition(new Vector2(0,35));
      this.gM = new dL();
      this.oQ(this.gM);
      this.hP = new yK(this.iD);
      this.lI(this.fA,1);
   }
   function zM(val_bool_)
   {
      super.zM(val_bool_);
      this.pR.zM(val_bool_);
      this.lB.zM(val_bool_);
   }
   function Update(kH, delta_)
   {
      super.Update(kH,delta_);
      if(this.zQ != 0)
      {
         if(this.zQ > 0)
         {
            this.zQ = - this.zQ;
         }
         else if(this.zQ < 0)
         {
            this.zQ = - (this.zQ + 1);
         }
         this.pR.vO(new Vector2(0,this.zQ));
      }
      this.yP(this.iW,delta_);
      if(jE.pT && this.iW > this.yF)
      {
         jE.gF(this.iW,this.gM.pM);
         this.yF = this.iW + Number(eV.scoreBroadcastFrequency);
      }
   }
   function kP(jY, oI)
   {
      this.bR.uG();
      this.bR.nN(jY);
      this.bR.oI = oI;
   }
   function pZ(jY, oI)
   {
      this.rL.uG();
      this.rL.nN(jY);
      this.rL.oI = oI;
   }
   function yP(iW, delta_)
   {
      if(Key.isDown(32))//space bar
      {
         this.SetShooting(true);
      }
      if(this.bQ > 0 && this.kF > Core.GameWindow.middleX - 30)
      {
         this.bQ = -1;
      }
      if(this.bQ < 0 && this.cD < - Core.GameWindow.middleX + 30)
      {
         this.bQ = 1;
      }
      this.cD = 1000;
      this.kF = -1000;
      if(this.foodCounter >= 100)
      {
         this.foodCounter = 0;
         this.gM.lives++;
         this.pZ(eV.T_EXTRALIFE,1);
         Core.GameWindow.PlaySound("powerup_wav");
      }
      if(this.fE == this.cN && this.kB.eO() && this.vN.eO())
      {
         this.lI(this.iJ);
      }
      this.hP.rT();
      var _loc2_ = Bullet(this.tQ.wJ);
      while(_loc2_ != null)
      {
         _loc2_.rO();
         _loc2_ = Bullet(_loc2_.vM);
      }
   }
   function lZ()
   {
      switch(this.fE)
      {
         case this.fA://Stage start
            this.chapter++;
            this.starfield.nE = 1;
            this.pZ(eV.T_NEWSTAGE2,2);
            this.kP(eV.T_NEWSTAGE,2);
            this.lI(this.vY,3);
            break;
         case this.vY:
            this.tV();
            this.lI(this.cN,1);
            break;
         case this.cN:
            break;
         case this.iJ:
            if(this.wave % 10 != 0)
            {
               this.lI(this.vY,1);
            }
            else
            {
               this.lI(this.oN,1);
            }
            break;
         case this.oN://Stage clear
            this.pZ(eV.T_STAGECLEAR_B,2);
            this.kP(eV.T_STAGECLEAR,2);
            this.starfield.nE = 20;
            this.lI(this.fA,3);
            break;
         case this.uD://Death
            this.kP(eV.T_GAMEOVER,3);
            Core.GameWindow.PlaySound("gameover_wav");
            this.lI(this.kL,4);
            break;
         case this.kL:
            jE.wZ(this.iW,this.gM.pM);
            wV.hQ();
            this.uT = true;
      }
   }
   function tV()//Spawn wave
   {
      if(this.wave > 0)
      {
         jE.rP(this.wave);
         wV.rP(this.wave);
      }
      this.wave++;
      this.hB();
      this.pZ(eV.T_WAVE_B + " " + this.wave,2);
      this.kP(eval("eV.T_WAVE_" + (1 + (this.wave - 1) % 10)),2);
      switch(1 + (this.wave - 1) % 10)
      {
         case 1:
            var wK = 0;
            while(wK < this.chapter)
            {
               var oJ = new Chicken(this.kB);
               oJ.rY = true;
               var fB = new Vector2(Core.jK((- Core.GameWindow.middleX) * 0.75,Core.GameWindow.middleX * 0.75,-1,this.chapter,wK),Core.GameWindow.middleY * 1.25);
               oJ.sJ.tM(fB,new Vector2(0,0));
               var jD = new rV(oJ.sJ,rV.vS);
               jD.fV = new Vector2(fB.x,Core.GameWindow.middleY - 50);
               wK++;
            }
            break;
         case 2:
            var fO = 0;
            while(fO < 4)
            {
               var wK = 0;
               while(wK < 7)
               {
                  var oJ = new Chicken(this.kB);
                  var iS = -1 + 2 * Math.floor(fO % 2);
                  var fB = new Vector2(iS * (200 - fO * 20),Core.GameWindow.middleY * 2);
                  var kI = new Vector2((wK - 3) * 40,50 + (fO - 2) * 40);
                  var jD = null;
                  oJ.sJ.oE(kI);
                  oJ.sJ.tM(fB,new Vector2(0,0));
                  jD = new rV(oJ.sJ,rV.zR);
                  jD.oI = wK * 0.2;
                  if(fO % 2 == 0)
                  {
                     jD.oI = (8 - wK) * 0.2;
                  }
                  jD = new rV(oJ.sJ,rV.vS);
                  jD.fV = new Vector2(fB.x,kI.y + 50);
                  jD.tW = new Vector2((- iS) * 50,-50);
                  jD = new rV(oJ.sJ,rV.vS);
                  jD.eQ = true;
                  wK++;
               }
               fO++;
            }
            break;
         case 3:
            var wK = 0;
            while(wK < 30)
            {
               var uC = new vF(this.vN,Core.aZ(30));
               var oJ = new ChickenParatrooper(uC);
               var fB = new Vector2(Core.RandomRange(- Core.GameWindow.middleX,Core.GameWindow.middleX),Core.GameWindow.middleY * 1.25);
               oJ.zM(false);
               oJ.SetPosition(fB);
               wK++;
            }
            break;
         case 4:
            var jI = null;
            var wK = 0;
            while(wK < 20)
            {
               var uC = new vF(this.vN,Core.aZ(8));
               var xW = Core.aZ(Core.GameWindow.width + Core.GameWindow.height);
               var yR = Core.GameWindow.middleX * 1.25;
               var kN = Core.GameWindow.middleY * 1.25;
               if(xW < Core.GameWindow.width)
               {
                  yR = xW - Core.GameWindow.middleX + Core.GameWindow.middleY * 0.25;
               }
               else
               {
                  kN = xW - Core.GameWindow.width - Core.GameWindow.middleY + Core.GameWindow.middleX * 0.25;
               }
               if(wK < 15)
               {
                  jI = new Asteroid(uC,0.6,3.9269908169872414,120);
               }
               else
               {
                  jI = new Asteroid(uC,1,3.9269908169872414,120);
               }
               jI.zM(false);
               jI.SetPosition(new Vector2(yR,kN));
               wK++;
            }
            var wK = 0;
            while(wK < 20)
            {
               var uC = new vF(this.vN,8 + Core.aZ(8));
               var xW = Core.aZ(Core.GameWindow.width + Core.GameWindow.height);
               var yR = (- Core.GameWindow.middleX) * 1.25;
               var kN = Core.GameWindow.middleY * 1.25;
               if(xW < Core.GameWindow.width)
               {
                  yR = xW - Core.GameWindow.middleX - Core.GameWindow.middleY * 0.25;
               }
               else
               {
                  kN = xW - Core.GameWindow.width - Core.GameWindow.middleY + Core.GameWindow.middleX * 0.25;
               }
               if(wK < 15)
               {
                  jI = new Asteroid(uC,0.6,5.497787143782138,120);
               }
               else
               {
                  jI = new Asteroid(uC,1,5.497787143782138,120);
               }
               jI.zM(false);
               jI.SetPosition(new Vector2(yR,kN));
               wK++;
            }
            break;
         case 5:
            var fO = 0;
            while(fO < 4)
            {
               var wK = 0;
               while(wK < 7)
               {
                  var oJ = new Chicken(this.kB);
                  var iS = -1 + 2 * Math.floor(fO % 2);
                  var kI = new Vector2((wK - 3) * 40,50 + (fO - 2) * 40);
                  var fB = new Vector2(iS * 200,Core.GameWindow.middleY * 2);
                  var jD = null;
                  oJ.sJ.oE(kI);
                  oJ.sJ.tM(fB,new Vector2(0,0));
                  jD = new rV(oJ.sJ,rV.zR);
                  jD.oI = fO * 0.2;
                  jD = new rV(oJ.sJ,rV.vS);
                  jD.eQ = true;
                  wK++;
               }
               fO++;
            }
            break;
         case 6:
            var wK = 0;
            while(wK < 35)
            {
               var uC = new vF(this.vN,Core.aZ(30));
               var oJ = new wX(uC);
               var fB = new Vector2(Core.RandomRange(- Core.GameWindow.middleX,Core.GameWindow.middleX),Core.GameWindow.middleY * 1.25);
               oJ.zM(false);
               oJ.SetPosition(fB);
               wK++;
            }
            break;
         case 7:
            var jI = new Asteroid(this.kB,1,Core.RandomRange(1.25,1.75) * 3.141592653589793,120);
            jI.SetPosition(new Vector2(0,Core.GameWindow.middleY * 1.25));
            jI.vC = true;
            jI.aF = 3;
            jI.wQ = 0.3;
            break;
         case 8:
            var fO = 0;
            while(fO < 4)
            {
               var wK = 0;
               while(wK < 7)
               {
                  var oJ = new Chicken(this.kB);
                  var iS = -1 + 2 * Math.floor(fO % 2);
                  var fB = new Vector2(iS * (220 - fO * 20),(- Core.GameWindow.middleY) * 1.25);
                  var kI = new Vector2((wK - 3) * 40,50 + (fO - 2) * 40);
                  var jD = null;
                  oJ.sJ.oE(kI);
                  oJ.sJ.tM(fB,new Vector2(0,0));
                  jD = new rV(oJ.sJ,rV.zR);
                  jD.oI = wK * 0.2;
                  if(fO % 2 == 0)
                  {
                     jD.oI = (8 - wK) * 0.2;
                  }
                  jD = new rV(oJ.sJ,rV.vS);
                  jD.fV = new Vector2(fB.x,kI.y - 50);
                  jD.tW = new Vector2((- iS) * 50,50);
                  jD = new rV(oJ.sJ,rV.vS);
                  jD.eQ = true;
                  wK++;
               }
               fO++;
            }
            break;
         case 9:
            var wK = 0;
            while(wK < 28)
            {
               var oJ = new Chicken(this.kB);
               var fB = new Vector2(-200,(- Core.GameWindow.middleY) * 1.25);
               var jD = null;
               oJ.sJ.tM(fB,new Vector2(0,0));
               jD = new rV(oJ.sJ,rV.zR);
               jD.oI = wK * 0.2;
               jD = new rV(oJ.sJ,rV.vS);
               jD.fV = new Vector2(-200,Core.GameWindow.middleY * 0.65);
               jD.tW = new Vector2(0,50);
               jD = new rV(oJ.sJ,rV.vS);
               jD.fV = new Vector2(200,Core.GameWindow.middleY * 0.65);
               jD.tW = new Vector2(0,-50);
               jD = new rV(oJ.sJ,rV.vS);
               jD.fV = new Vector2(200,(- Core.GameWindow.middleY) * 0.4);
               jD.tW = new Vector2(0,-50);
               jD = new rV(oJ.sJ,rV.vS);
               jD.fV = new Vector2(-150,(- Core.GameWindow.middleY) * 0.4);
               jD.tW = new Vector2(0,50);
               jD = new rV(oJ.sJ,rV.vS);
               jD.fV = new Vector2(-150,Core.GameWindow.middleY * 0.4);
               jD.tW = new Vector2(0,50);
               jD = new rV(oJ.sJ,rV.vS);
               jD.fV = new Vector2(150,Core.GameWindow.middleY * 0.4);
               jD.tW = new Vector2(0,-50);
               jD = new rV(oJ.sJ,rV.vS);
               jD.fV = new Vector2(150,(- Core.GameWindow.middleY) * 0.1);
               jD.tW = new Vector2(0,-50);
               jD = new rV(oJ.sJ,rV.vS);
               jD.fV = new Vector2((- Core.GameWindow.middleX) * 1.25,(- Core.GameWindow.middleY) * 0.1);
               jD.tW = new Vector2(0,0);
               jD = new rV(oJ.sJ,rV.yI);
               wK++;
            }
            break;
         case 10:
            var uS = new uI(this.kB);
            uS.sJ.tM(new Vector2(Core.RandomRange(- Core.GameWindow.middleX,Core.GameWindow.middleX),Core.GameWindow.middleY * 1.5),new Vector2(0,0));
      }
   }
   function iY()
   {
      this.lI(this.uD);
   }
   function hB()
   {
      this.oA = false;
   }
   function sA(zS)
   {
      this.zQ = zS;
   }
   function lW(lJ)
   {
      super.lW(lJ);
      if(lJ)
      {
         Core.wavesHandler = null;
         if(this.fE == this.kL)
         {
            jE.nA();
         }
      }
   }
   function SetShooting(cW)
   {
      if(cW)
      {
         if(this.vB == null)
         {
            this.vB = new nM();
            Core.qP.lU(this.vB);
         }
      }
      else if(this.vB != null)
      {
         this.vB.uT = true;
         this.vB = null;
      }
   }
}
