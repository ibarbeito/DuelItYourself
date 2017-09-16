using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Shooter : MonoBehaviour {
    public string ShootButton = "Fire1";
    public BananaWeapon weapon;
    public BananaBullet bullet;
	// Use this for initialization
	void Start () {
		
	}
	
	// Update is called once per frame
	void Update () {
		if (Input.GetButtonDown(ShootButton))
        {
            weapon.Shot(gameObject, bullet);
        }
	}
}
