using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class DoubleShoot : Bullet{
    public Bullet leftBullet;
    public Bullet rightBullet;
    public float distanceFromCenter = 1.0f;
    // Use this for initialization

    public void Shoot () {
		Instantiate(leftBullet);
		Instantiate(leftBullet);
        //Bullet NewBulletLeft = Instantiate(leftBullet);
        //NewBulletLeft.transform.position = transform.position - new Vector3(distanceFromCenter, 0.0f, 0.0f);
        //Bullet NewBulletRight = Instantiate(leftBullet);
        //NewBulletRight.transform.position = transform.position + new Vector3(distanceFromCenter, 0.0f, 0.0f);
    }
}
