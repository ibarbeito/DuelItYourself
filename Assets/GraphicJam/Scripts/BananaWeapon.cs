using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

[Serializable]
public class BananaWeapon : MonoBehaviour {
    
    public float FireRate;

    private float TimeToNextBullet = 0;


    public void Shot(GameObject shooter, BananaBullet Ammo)
    {
        if (TimeToNextBullet <= 0)
        {
            BananaBullet Bullet = GameObject.Instantiate(Ammo);
           // Bullet.Owner = shooter;
            Bullet.transform.position = shooter.transform.position;
            TimeToNextBullet = FireRate;
        }

    }

    public void OnUpdate()
    {
        TimeToNextBullet -= Time.deltaTime;

    }

}

