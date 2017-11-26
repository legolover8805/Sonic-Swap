
    if(Action == ActionJumping){
        _ObjectHandle = scrPlayerCollisionASensorObj(objBreakableTerrain, -16);
        if(_ObjectHandle != noone && Gravity >= 0){
            EnemyChain += 1;
            if(EnemyChain == 1){
                ScoreAdd = instance_create(_ObjectHandle.x, y, objScoreAdd)
                ScoreAdd.Score = 100;
            }else if(EnemyChain == 2){
                ScoreAdd = instance_create(_ObjectHandle.x, y, objScoreAdd)
                ScoreAdd.Score = 200;
            }else if(EnemyChain == 3){
                ScoreAdd = instance_create(_ObjectHandle.x, y, objScoreAdd)
                ScoreAdd.Score = 500;
            }else if(EnemyChain >= 4 && EnemyChain < 16){
                ScoreAdd = instance_create(_ObjectHandle.x, y, objScoreAdd)
                ScoreAdd.Score = 1000;
            }else if(EnemyChain >= 16){
                ScoreAdd = instance_create(_ObjectHandle.x, y, objScoreAdd)
                ScoreAdd.Score = 10000;
            }
            with(_ObjectHandle)
                instance_destroy();
            Gravity = -3;
        }
        _ObjectHandle = scrPlayerCollisionBSensorObj(objBreakableTerrain, -16);
        if(_ObjectHandle != noone && Gravity >= 0){
            EnemyChain += 1;
            if(EnemyChain == 1){
                ScoreAdd = instance_create(_ObjectHandle.x, y, objScoreAdd)
                ScoreAdd.Score = 100;
            }else if(EnemyChain == 2){
                ScoreAdd = instance_create(_ObjectHandle.x, y, objScoreAdd)
                ScoreAdd.Score = 200;
            }else if(EnemyChain == 3){
                ScoreAdd = instance_create(_ObjectHandle.x, y, objScoreAdd)
                ScoreAdd.Score = 500;
            }else if(EnemyChain >= 4 && EnemyChain < 16){
                ScoreAdd = instance_create(_ObjectHandle.x, y, objScoreAdd)
                ScoreAdd.Score = 1000;
            }else if(EnemyChain >= 16){
                ScoreAdd = instance_create(_ObjectHandle.x, y, objScoreAdd)
                ScoreAdd.Score = 10000;
            }
            with(_ObjectHandle)
                instance_destroy();
            Gravity = -3;
        }
    }
    if((Action == ActionRolling && abs(Speed) >= 4.5) || CharacterId == consCharacterKnuckles || Action == ActionDashing || Action == ActionBounce){
        _ObjectHandle = collision_rectangle(x-20, y-20, x+20, y+20, objBreakableTerrainRoll, false, true);
        while(_ObjectHandle != noone){
            EnemyChain += 1;
            if(EnemyChain == 1){
                ScoreAdd = instance_create(_ObjectHandle.x, y, objScoreAdd)
                ScoreAdd.Score = 100;
            }else if(EnemyChain == 2){
                ScoreAdd = instance_create(_ObjectHandle.x, y, objScoreAdd)
                ScoreAdd.Score = 200;
            }else if(EnemyChain == 3){
                ScoreAdd = instance_create(_ObjectHandle.x, y, objScoreAdd)
                ScoreAdd.Score = 500;
            }else if(EnemyChain >= 4 && EnemyChain < 16){
                ScoreAdd = instance_create(_ObjectHandle.x, y, objScoreAdd)
                ScoreAdd.Score = 1000;
            }else if(EnemyChain >= 16){
                ScoreAdd = instance_create(_ObjectHandle.x, y, objScoreAdd)
                ScoreAdd.Score = 10000;
            }
            with(_ObjectHandle)
                instance_destroy();
            _ObjectHandle = collision_rectangle(x-20, y-20, x+20, y+20, objBreakableTerrainRoll, false, true)
        }
    }
