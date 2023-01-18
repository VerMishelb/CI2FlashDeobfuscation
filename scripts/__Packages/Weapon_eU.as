class Weapon extends Object
{
   var weaponPower = 0;
   var pQ = 0;
   var uQ = 0.125;
   function Weapon()
   {
      super();
   }
   function Fire(xT)
   {
      if(Core.gameWindow.iW < this.pQ + this.uQ)
      {
         return undefined;
      }
      this.pQ = Core.gameWindow.iW;
      Core.gameWindow.PlaySound("fire_wav");
      var _loc2_ = null;
      switch(this.weaponPower)
      {
         case 0:
            _loc2_ = new Bullet(Core.wavesHandler.tQ,xT.Add(new Vector2(0,5)),1.5707963267948966);
            break;
         case 1:
            _loc2_ = new Bullet(Core.wavesHandler.tQ,xT.Add(new Vector2(0,5)),1.5707963267948966);
            _loc2_.WeaponUpgrade(2);
            break;
         case 2:
            _loc2_ = new Bullet(Core.wavesHandler.tQ,xT.Add(new Vector2(0,5)),1.5707963267948966);
            _loc2_.WeaponUpgrade(3);
            break;
         case 3:
            _loc2_ = new Bullet(Core.wavesHandler.tQ,xT.Add(new Vector2(-5,0)),1.5707963267948966);
            _loc2_.WeaponUpgrade(2);
            _loc2_ = new Bullet(Core.wavesHandler.tQ,xT.Add(new Vector2(5,0)),1.5707963267948966);
            _loc2_.WeaponUpgrade(2);
            break;
         case 4:
            _loc2_ = new Bullet(Core.wavesHandler.tQ,xT.Add(new Vector2(-5,0)),1.7016960206944713);
            _loc2_ = new Bullet(Core.wavesHandler.tQ,xT.Add(new Vector2(0,5)),1.5707963267948966);
            _loc2_.WeaponUpgrade(3);
            _loc2_ = new Bullet(Core.wavesHandler.tQ,xT.Add(new Vector2(5,0)),1.4398966328953218);
            break;
         case 5:
            _loc2_ = new Bullet(Core.wavesHandler.tQ,xT.Add(new Vector2(-5,0)),1.7016960206944713);
            _loc2_.WeaponUpgrade(2);
            _loc2_ = new Bullet(Core.wavesHandler.tQ,xT.Add(new Vector2(0,5)),1.5707963267948966);
            _loc2_.WeaponUpgrade(2);
            _loc2_ = new Bullet(Core.wavesHandler.tQ,xT.Add(new Vector2(5,0)),1.4398966328953218);
            _loc2_.WeaponUpgrade(2);
            break;
         case 6:
            _loc2_ = new Bullet(Core.wavesHandler.tQ,xT.Add(new Vector2(-5,0)),1.7016960206944713);
            _loc2_.WeaponUpgrade(2);
            _loc2_ = new Bullet(Core.wavesHandler.tQ,xT.Add(new Vector2(0,5)),1.5707963267948966);
            _loc2_.WeaponUpgrade(3);
            _loc2_ = new Bullet(Core.wavesHandler.tQ,xT.Add(new Vector2(5,0)),1.4398966328953218);
            _loc2_.WeaponUpgrade(2);
            break;
         case 7:
            _loc2_ = new Bullet(Core.wavesHandler.tQ,xT.Add(new Vector2(-5,0)),1.7016960206944713);
            _loc2_.WeaponUpgrade(3);
            _loc2_ = new Bullet(Core.wavesHandler.tQ,xT.Add(new Vector2(0,5)),1.5707963267948966);
            _loc2_.WeaponUpgrade(2);
            _loc2_ = new Bullet(Core.wavesHandler.tQ,xT.Add(new Vector2(5,0)),1.4398966328953218);
            _loc2_.WeaponUpgrade(3);
            break;
         case 8:
            _loc2_ = new Bullet(Core.wavesHandler.tQ,xT.Add(new Vector2(-5,0)),1.7016960206944713);
            _loc2_.WeaponUpgrade(3);
            _loc2_ = new Bullet(Core.wavesHandler.tQ,xT.Add(new Vector2(0,5)),1.5707963267948966);
            _loc2_.WeaponUpgrade(3);
            _loc2_ = new Bullet(Core.wavesHandler.tQ,xT.Add(new Vector2(5,0)),1.4398966328953218);
            _loc2_.WeaponUpgrade(3);
      }
   }
   function WeaponUpgrade()
   {
      this.weaponPower++;
      Core.gameWindow.PlaySound("powerup_wav");
      this.weaponPower = Math.min(this.weaponPower,8);
   }
   function WeaponDowngrade()
   {
      this.weaponPower = Math.floor(this.weaponPower / 2);
   }
}
