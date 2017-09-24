using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class HeadRotation : MonoBehaviour {

    public string HorizontalAxis = "Horizontal3";
    public string VerticalAxis = "Vertical3";
    public float TurnSpeed = 0.2f;
    //private Vector3 DirVector=Vector3.zero;
    // Use this for initialization
    void Start () {
		
	}
	
	// Update is called once per frame
	void Update () {
		float Horizontal = Input.GetAxis(HorizontalAxis);
		float Vertical = Input.GetAxis(VerticalAxis);
		if (Mathf.Abs(Horizontal) >= 0.1f || Mathf.Abs(Vertical)>=0.1f) {
        	var angle = Mathf.Atan2(Horizontal, Vertical) * Mathf.Rad2Deg;
        	transform.rotation = Quaternion.Lerp(transform.rotation, Quaternion.Euler(0, angle, 0), TurnSpeed);
		}
    }
}
