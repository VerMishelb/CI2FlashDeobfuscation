class Enemy extends wS
{
   var sJ = null;
   var uZ = 1;
   var health = 1;
   var rR = 0;
   var pB = 0;
   var lQ = null;
   var eJ = null;
   function Enemy(vH, jF)
   {
      super(vH,jF);
      this.eJ = new Vector2(0,0);
      this.sJ = new zB();
   }
   function oD(qQ)
   {
      this.uZ -= qQ;
      if(this.uZ <= 0)
      {
         this.Die();
      }
   }
   function Die()
   {
      this.tS = true;
      Core.wavesHandler.gM.dO(this.health);
      if(!Core.wavesHandler.oA && Core.aZ(1) < this.rR)
      {
         Core.wavesHandler.oA = true;
         new Giftbox(Core.wavesHandler.jM,this.GetPosition());
      }
   }
   function oE(zK)
   {
      this.lQ = zK;
   }
}
