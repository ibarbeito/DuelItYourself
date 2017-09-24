using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

[Serializable]
public class BananaWeapon : MonoBehaviour {
    
    public float FireRate;

    private float TimeToNextBullet = 0;


    public void Shot(GameObject shooter, BananaBullet Ammo, string PlayerTag)
    {
        if (TimeToNextBullet <= 0)
        {
            BananaBullet Bullet = GameObject.Instantiate(Ammo);
            Bullet.transform.position = shooter.transform.position;
            Bullet.transform.rotation = shooter.transform.rotation;
			Bullet.LethalTo = PlayerTag;
            TimeToNextBullet = FireRate;
        }

    }

    public void OnUpdate()
    {
        TimeToNextBullet -= Time.deltaTime;

    }

}

