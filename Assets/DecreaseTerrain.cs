using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class DecreaseTerrain : MonoBehaviour {

	public float DecreaseSpeed = 0.2f;
	Vector3 Direction = new Vector3(1,0,1);
	public Vector3 MinScale = new Vector3(1,1,1);

	// Use this for initialization
	void Start () {
		
	}
	
	// Update is called once per frame
	void Update () {
		Vector3 ActualScale = transform.localScale;
        if (ActualScale.z >= MinScale.z)
        {
            transform.localScale -= DecreaseSpeed * Direction;
        }
	}
}
