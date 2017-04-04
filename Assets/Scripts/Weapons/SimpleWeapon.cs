using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class SimpleWeapon : Weapon {

	private float TimeToNextBullet = 0;

	public override void Shot(Bullet Ammo) {
		if (TimeToNextBullet<= 0) {
			Bullet Bullet = Instantiate(Ammo);
			Bullet.Owner = Owner.gameObject;
			Bullet.transform.position = transform.position;
			TimeToNextBullet=FireRate;
		}
	}

	public override void OnUpdate() {
		TimeToNextBullet-=Time.deltaTime;
	}
}
