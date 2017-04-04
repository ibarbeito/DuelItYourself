using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Duelist : MonoBehaviour {

	public KeyCode Left;
	public KeyCode Right;
	public KeyCode Shoot;
	public Weapon Weapon;
	public Bullet Bullet;
	public float Speed;
	public float FireRate;
	
	private Bounds CameraBounds;

	// Use this for initialization
	void Start () {
		CameraBounds = Camera.main.OrthographicBounds();
		Weapon = Instantiate(Weapon);
		Weapon.Owner = this;
		Weapon.FireRate = FireRate;
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
			Weapon.Shot(Bullet);
		}
		transform.position = new Vector3(Mathf.Clamp(transform.position.x, CameraBounds.min.x, CameraBounds.max.x), transform.position.y, transform.position.z);
	}
	
	
    
}
