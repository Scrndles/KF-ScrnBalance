//=============================================================================
// BoomStick Dual Fire
//=============================================================================
class ScrnBoomStickFire extends BoomStickFire;

simulated function bool AllowFire()
{    
    local ScrnBoomStick HSg;
    
    HSg = ScrnBoomStick(Weapon);
    if (HSg == none) {
        log("ScrnBoomStickFire's Weapon is " $ Weapon $ " not ScrnBoomStick!", 'ScrnBalance');
        return super.AllowFire(); // wtf?
    }
    
    if ( HSg.bWaitingToLoadShotty || HSg.AmmoAmount(ThisModeNum) < AmmoPerFire)
        return false;

    if ( HSg.SingleShotCount <= 0 ) {
        if ( HSg.AmmoAmount(0) > 0 ) {
            HSg.ReloadMeNow();
        }
        return false;        
    }
    
    return true;
}

defaultproperties
{
     ProjectileClass=Class'ScrnBalanceSrv.ScrnBoomStickBullet'
}
