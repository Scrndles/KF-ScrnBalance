class ScrnMP5MMedicGun extends MP5MMedicGun;
    
defaultproperties
{
    ReloadAnim="Reload"
    ReloadRate=2.53
    ReloadAnimRate=1.5
    
    HealAmmoCharge=0
    Weight=4.000000
    FireModeClass(0)=Class'ScrnBalanceSrv.ScrnMP5MFire'
    FireModeClass(1)=Class'ScrnBalanceSrv.ScrnMP5MAltFire'
    bReduceMagAmmoOnSecondaryFire=False
    InventoryGroup=4
    PickupClass=Class'ScrnBalanceSrv.ScrnMP5MPickup'
    ItemName="MP5M Medic Gun SE"
    PlayerViewPivot=(Pitch=45,Roll=0,Yaw=5) //fix to make sight centered
}
