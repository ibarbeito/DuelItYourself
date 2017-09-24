﻿using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class HeadRotation : MonoBehaviour {

    public string HorizontalAxis = "Horizontal3";
    public string VerticalAxis = "Vertical3";
    public float TurnSpeed = 0.2f;
    private Vector3 DirVector=Vector3.zero;
    // Use this for initialization
    void Start () {
		
	}
	
	// Update is called once per frame
	void Update () {
        var angle = Mathf.Atan2(Input.GetAxis(HorizontalAxis), Input.GetAxis(VerticalAxis)) * Mathf.Rad2Deg;
        transform.rotation =Quaternion.Lerp(transform.rotation, Quaternion.Euler(0, angle, 0), TurnSpeed);
    }
}
