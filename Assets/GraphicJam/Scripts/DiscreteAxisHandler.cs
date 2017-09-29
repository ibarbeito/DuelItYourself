using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class DiscreteAxisHandler {

	public string Axis;
	public int AxisDelay = 15;
	public float Sensibility = 0.7f;
	int AxisCounter;

	public void Start(string AxisName, int AxisInitDelay) {
		Axis = AxisName;
		AxisDelay = AxisInitDelay;
		AxisCounter = AxisDelay;
	}

	public bool Positive() {
		bool result = Input.GetAxis(Axis) > Sensibility && AxisCounter>AxisDelay;
		if (result)
			AxisCounter = 0;
		return result;
	}

	public bool Negative() {
		bool result =  Input.GetAxis(Axis) < -Sensibility && AxisCounter>AxisDelay;
		if (result)
			AxisCounter = 0;
		return result;
	}

	public void Update() {
		AxisCounter++;
	}

}
