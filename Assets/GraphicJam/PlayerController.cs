using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PlayerController : MonoBehaviour {

	public string AxisHorizontal = "Horizontal";
	public string AxisVertical = "Vertical";
    public string ShootButton = "Fire1";
	public float Speed = 10f;
    public BananaWeapon Weapon;
    public Bullet Bullet;

	// Use this for initialization
	void Start () {
	}
	
	// Update is called once per frame
	void FixedUpdate () {
		float Horizontal = Input.GetAxis(AxisHorizontal);
		float Vertical = Input.GetAxis(AxisVertical);
		Vector3 Direction = new Vector3(Horizontal, 0, Vertical);
		GetComponent<Rigidbody>().AddForce(Direction*Speed,ForceMode.VelocityChange);
        if (Input.GetButtonDown(ShootButton))
        {
            Bullet b = Bullet.Instantiate(Bullet);
            b.transform.position = gameObject.transform.position;
            Weapon.Shot(gameObject, b);
            
        }
	}
}
