using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Billboard : MonoBehaviour {
    Vector3 initRotation;

	// Use this for initialization
	void Start () {
        initRotation = transform.rotation.eulerAngles;
    }
	
	// Update is called once per frame
	void Update () {
        transform.rotation = Quaternion.Euler(initRotation);

    }
}
