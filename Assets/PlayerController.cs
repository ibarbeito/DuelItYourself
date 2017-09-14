using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PlayerController : MonoBehaviour {

	public string AxisHorizontal = "Horizontal";
	public string AxisVertical = "Vertical";

	// Use this for initialization
	void Start () {
		
	}
	
	// Update is called once per frame
	void FixedUpdate () {
		float Horizontal = Input.GetAxis(AxisHorizontal);
		float Vertical = Input.GetAxis(AxisVertical);
		Debug.Log(Horizontal);
		Vector3 Direction = new Vector3(Vertical, 0, -Horizontal);
		GetComponent<Rigidbody>().AddForce(Direction*50f,ForceMode.VelocityChange);
		
	}
}
