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
        var angle = Mathf.Atan2(Input.GetAxis(VerticalAxis), Input.GetAxis(HorizontalAxis)) * Mathf.Rad2Deg;
        angle = angle + 90;
        transform.rotation = Quaternion.Euler(0, angle, 0);
        //   DirVector += new Vector3(Input.GetAxis(HorizontalAxis), 0, Input.GetAxis(VerticalAxis));
        //transform.rotation = Quaternion.LookRotation(DirVector );
    }
}
