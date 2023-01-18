class zB extends oM
{
   var speed = 200;
   var cH = null;
   var dT = null;
   var oW = null;
   var aX = null;
   var mB = null;
   var mV = 0;
   var oI = 0;
   var nT = null;
   var lQ = null;
   function zB()
   {
      super();
      this.dT = new Vector2(0,0);
      this.oW = new Vector2(0,0);
      this.aX = new Vector2(0,0);
      this.mB = new Vector2(0,0);
   }
   function Update(iW, delta_)
   {
      if(this.nT == null)
      {
         this.uW();
      }
      if(this.lQ != null)
      {
         this.lQ.x += Core.wavesHandler.bQ;
         if(this.lQ.x < Core.wavesHandler.cD)
         {
            Core.wavesHandler.cD = this.lQ.x;
         }
         if(this.lQ.x > Core.wavesHandler.kF)
         {
            Core.wavesHandler.kF = this.lQ.x;
         }
      }
      if(this.nT == null)
      {
         return undefined;
      }
      this.mV += delta_ / this.oI;
      if(this.nT.lD == rV.vS)
      {
         if(this.nT.eQ)
         {
            if(this.mV < 1)
            {
               this.cH = Vector2.qI(this.dT,this.oW,this.lQ,this.mB,this.mV);
            }
            else
            {
               this.cH = this.lQ;
               if(!this.eO())
               {
                  this.uW();
               }
            }
         }
         else
         {
            this.cH = Vector2.qI(this.dT,this.oW,this.aX,this.mB,this.mV);
            if(this.mV > 1)
            {
               this.uW();
            }
         }
      }
      else if(this.nT.lD == rV.zR)
      {
         if(this.mV > 1)
         {
            this.uW();
         }
      }
   }
   function tM(from_, to_)
   {
      this.fZ();
      this.cH = from_;
      this.mB = to_;
   }
   function uW()
   {
      if(this.eO())
      {
         this.nT = null;
         return undefined;
      }
      this.nT = rV(this.first);
      this.eA(this.first);
      this.mV = 0;
      if(this.nT.lD == rV.zR)
      {
         this.oI = this.nT.oI;
      }
      else if(this.nT.lD == rV.vS)
      {
         this.dT = this.cH;
         this.oW = this.mB;
         if(this.nT.eQ)
         {
            this.aX = this.lQ;
         }
         else
         {
            this.aX = this.nT.fV;
         }
         this.mB = this.nT.tW;
         var _loc2_ = this.dT.Add(this.oW);
         var _loc3_ = this.aX.Subtract(this.mB);
         this.oI = (this.dT.Distance(_loc2_) + _loc2_.Distance(_loc3_) + _loc3_.Distance(this.aX)) / this.speed;
      }
      else if(this.nT.lD == rV.yI)
      {
         this.tS = true;
      }
      if(this.nT.hS)
      {
         this.oI = this.nT.oI;
      }
   }
   function oE(zK)
   {
      this.lQ = zK;
   }
}
