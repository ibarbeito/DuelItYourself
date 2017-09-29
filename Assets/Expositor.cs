using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Expositor : MonoBehaviour {

	public float SpeedRotation = 1;
	
	// Update is called once per frame
	void Update () {
		transform.eulerAngles+=new Vector3(0,SpeedRotation,0);
	}
}
