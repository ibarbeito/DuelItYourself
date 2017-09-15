using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using System;

[Serializable]
public abstract class Weapon : MonoBehaviour {

	[HideInInspector]
	public Duelist Owner;
	[HideInInspector]
	public float FireRate;

	void Update() {
		OnUpdate();
		transform.position = Owner.transform.position;
	}

	public abstract void Shot(Bullet Ammo);
	public abstract void OnUpdate();

}
