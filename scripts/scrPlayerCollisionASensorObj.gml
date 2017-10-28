//-----------------------------------------------------------------
// -- scrPlayerCollisionASensor(object index, offset);
//----------------------------------------------------------------- 
// - Finds Collision on the ground on left side.
// - Arguments : 2
// - argument0 : Object to check collision with(object index or instance id)
// - argument1 : Vertical Offset(real)
// - Returns   : Colliding with Left Ground Terrain(boolean)


    var InitAngle, X2, Y2, Object;

    if(Angle360Detection == true)
        InitAngle = scrWrapAngle(round(Angle/10)*10); // Round angle to nearest 10.   
    else
        InitAngle = scrWrapAngle(round(Angle/45)*45); // Round angle to nearest 45.   
    
    X2 = x-(9*Cos[InitAngle]);
    Y2 = y+(9*Sin[InitAngle]);
    

    repeat(GroundSensorHeight+argument1){
        Object = collision_point(X2, Y2, argument0, true, true);
    
        if(Object != noone){ 
            return Object;
            break;
        }else{
            X2 += Sin[InitAngle];
            Y2 += Cos[InitAngle];
        }
    }
    return noone;
