using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class HeadRotation : MonoBehaviour {

    public string HorizontalAxis = "Horizontal3";
    public string VerticalAxis = "Vertical3";
    private Vector3 DirVector=Vector3.zero;
    // Use this for initialization
    void Start () {
		
	}
	
	// Update is called once per frame
	void Update () {

        DirVector += new Vector3(Input.GetAxis(HorizontalAxis), 0, Input.GetAxis("Vertical"));

transform.rotation = Quaternion.LookRotation(DirVector );
	}
}
