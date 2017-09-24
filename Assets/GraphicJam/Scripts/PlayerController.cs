 using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PlayerController : MonoBehaviour {

	public string AxisHorizontal = "Horizontal";
	public string AxisVertical = "Vertical";

    public string RotationAxisHorizontal = "Horizontal";
    public string RotationAxisVertical = "Vertical";
    public float Speed = 10f;
	LifeManager LifeMan;

	// Use this for initialization
	void Start () {
		LifeMan = GetComponent<LifeManager>();
	}

	void Update() {
		if (Input.GetKeyUp(KeyCode.F)) {
			Hit(1);	
		}
		
	}	

	void FixedUpdate () {
		float Horizontal = Input.GetAxis(AxisHorizontal);
		float Vertical = Input.GetAxis(AxisVertical);
		Vector3 Direction = new Vector3(Horizontal, 0, Vertical);
		GetComponent<Rigidbody>().AddForce(Direction*Speed,ForceMode.VelocityChange);
		if (Mathf.Abs(Horizontal) >= 0.1f || Mathf.Abs(Vertical)>=0.1f) {
	        var angle = Mathf.Atan2(-Input.GetAxis(RotationAxisVertical), Input.GetAxis(RotationAxisHorizontal)) * Mathf.Rad2Deg;
	        transform.rotation = Quaternion.Lerp(transform.rotation, Quaternion.Euler(0, angle, 0), 0.1f);
		}
    }

    public void Hit(int Damage) {
		LifeMan.DoDamage(Damage);
        bool Alive = LifeMan.IsAlive();
		if (!Alive) {
           gameObject.SetActive(false);
		}
    }


}
