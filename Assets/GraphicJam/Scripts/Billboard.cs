using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Billboard : MonoBehaviour {
    float initRotation;

	// Use this for initialization
	void Start () {
        initRotation = transform.rotation.y;
    }
	
	// Update is called once per frame
	void Update () {
        Vector3 newRotation = transform.rotation.eulerAngles;
        newRotation.y = initRotation;

        transform.rotation = Quaternion.Euler(newRotation);

    }
}
