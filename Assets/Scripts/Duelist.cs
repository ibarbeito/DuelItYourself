using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Duelist : MonoBehaviour {

	public KeyCode Left;
	public KeyCode Right;
	public KeyCode Shoot;
	public Bullet AmmoType;
	public float Speed;

	// Use this for initialization
	void Start () {
		
	}
	
	// Update is called once per frame
	void Update () {
		if (Input.GetKey(Left)) {
			transform.position+=Vector3.left*Speed;
		}
		if (Input.GetKey(Right)) {
			transform.position+=Vector3.right*Speed;
			
		}
		if (Input.GetKey(Shoot)) {
			Shot();
		}
	}
	
	void Shot() {
		GameObject NewBullet = Instantiate(AmmoType.gameObject);
		NewBullet.transform.position=transform.position;
	}
}
