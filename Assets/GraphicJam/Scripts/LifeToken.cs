using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class LifeToken : MonoBehaviour {

	public Transform Center;
	public Vector3 Axis = Vector3.up;
	public float Radius = 2.0f;
	public float RadiusSpeed = 0.5f;
	public float RotationSpeed = 80.0f; 

	void Start() {
		transform.parent = Center;
	}
	
	void Update() {
		transform.RotateAround (Center.position, Axis, RotationSpeed * Time.deltaTime);
		var desiredPosition = (transform.position - Center.position).normalized * Radius + Center.position;
		transform.position = Vector3.MoveTowards(transform.position, desiredPosition, Time.deltaTime * RadiusSpeed);
	}
	 
}
