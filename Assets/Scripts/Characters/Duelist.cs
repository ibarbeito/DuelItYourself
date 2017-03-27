using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Duelist : MonoBehaviour {

	public KeyCode Left;
	public KeyCode Right;
	public KeyCode Shoot;
	public Bullet Ammo;
	public float Speed;
	public float FireRate;
	
	private Bounds CameraBounds;
	private float TimeToNextBullet;

	// Use this for initialization
	void Start () {
		CameraBounds = Camera.main.OrthographicBounds();
		TimeToNextBullet = 0f;
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
		TimeToNextBullet-=Time.deltaTime;
		transform.position = new Vector3(Mathf.Clamp(transform.position.x, CameraBounds.min.x, CameraBounds.max.x), transform.position.y, transform.position.z);
	}
	
	void Shot() {
		if (TimeToNextBullet<= 0) {
			Bullet Bullet = Instantiate(Ammo);
			Bullet.Owner = gameObject;
			Bullet.transform.position = transform.position;
			TimeToNextBullet=FireRate;
		}
	}
}
