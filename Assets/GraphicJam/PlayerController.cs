using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PlayerController : MonoBehaviour {

	public string AxisHorizontal = "Horizontal";
	public string AxisVertical = "Vertical";
	public float Speed = 10f;

	// Use this for initialization
	void Start () {
		
	}
	
	// Update is called once per frame
	void FixedUpdate () {
		float Horizontal = Input.GetAxis(AxisHorizontal);
		float Vertical = Input.GetAxis(AxisVertical);
		Vector3 Direction = new Vector3(Horizontal, 0, Vertical);
		GetComponent<Rigidbody>().AddForce(Direction*Speed,ForceMode.VelocityChange);
	}
}
