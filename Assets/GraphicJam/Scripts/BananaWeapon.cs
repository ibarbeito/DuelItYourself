using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

[Serializable]
public class BananaWeapon : MonoBehaviour {
    
    public float FireRate;

    private float TimeToNextBullet = 0;

    void Update()
    {
    }

    public void Shot(GameObject shooter, Bullet Ammo)
    {
        if (TimeToNextBullet <= 0)
        {
            Bullet Bullet = Instantiate(Ammo);
            Bullet.Owner = shooter;
            Bullet.transform.rotation = shooter.transform.rotation;
            Bullet.transform.position = shooter.transform.position;
            TimeToNextBullet = FireRate;
        }

    }

    public void OnUpdate()
    {
        TimeToNextBullet -= Time.deltaTime;

    }

}

