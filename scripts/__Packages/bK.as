class bK
{
   var tS = false;
   var xY = null;
   var next = null;
   var first = null;
   var kE = null;
   var qA = null;
   function bK()
   {
   }
   function iH()
   {
      this.fZ();
      false;
   }
   function eO()
   {
      return this.first == null;
   }
   function oQ(cQ)
   {
      if(this.first == null)
      {
         cQ.xY = cQ.next = null;
         this.first = this.kE = cQ;
      }
      else
      {
         this.aI(this.kE,cQ);
         this.kE = cQ;
      }
      cQ.qA = this;
   }
   function gU(cQ)
   {
      if(this.first == null)
      {
         this.first = this.kE = cQ;
         cQ.next = null;
         cQ.xY = null;
      }
      else
      {
         cQ.xY = null;
         cQ.next = this.first;
         this.first.xY = cQ;
         this.first = cQ;
      }
      cQ.qA = this;
   }
   function sC(cQ, zC)
   {
      if(zC == this.kE)
      {
         this.oQ(cQ);
      }
      else
      {
         cQ.next = zC.next;
         cQ.next.xY = cQ;
         cQ.xY = zC;
         zC.next = cQ;
         cQ.qA = this;
      }
   }
   function eA(cQ)
   {
      if(this.first == this.kE)
      {
         this.first = this.kE = null;
      }
      else if(cQ == this.first)
      {
         this.first = this.first.next;
      }
      else if(cQ == this.kE)
      {
         this.kE = this.kE.xY;
      }
      cQ.dC();
      cQ.qA = null;
   }
   function pD(cQ)
   {
      this.eA(cQ);
      cQ.iH();
   }
   function fZ()
   {
      var _loc2_ = undefined;
      while(this.kE != null)
      {
         _loc2_ = this.kE;
         this.eA(this.kE);
         _loc2_.iH();
      }
   }
   function pV(iZ, eF)
   {
      if(iZ != null)
      {
         iZ.next = eF;
      }
      if(eF != null)
      {
         eF.xY = iZ;
      }
   }
   function dC()
   {
      if(this.xY != null)
      {
         this.xY.next = this.next;
      }
      if(this.next != null)
      {
         this.next.xY = this.xY;
      }
   }
   function aI(pK, mP)
   {
      this.pV(mP,pK.next);
      this.pV(pK,mP);
   }
   function bP()
   {
      var _loc2_ = this.first;
      var _loc3_ = 0;
      while(_loc2_ != null)
      {
         _loc3_ = _loc3_ + 1;
         _loc2_ = _loc2_.next;
      }
      return _loc3_;
   }
   function sK()
   {
      if(this.eO())
      {
         return null;
      }
      var _loc4_ = this.bP();
      if(_loc4_ == 1)
      {
         return this.first;
      }
      var _loc3_ = Core.hY(_loc4_);
      var _loc2_ = this.first;
      while(_loc2_ != null)
      {
         if(_loc3_ == 0)
         {
            return _loc2_;
         }
         _loc3_ = _loc3_ - 1;
         _loc2_ = _loc2_.next;
      }
      return null;
   }
}
