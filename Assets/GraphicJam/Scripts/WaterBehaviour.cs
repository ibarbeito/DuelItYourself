using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class NewBehaviourScript : MonoBehaviour {

	void OnCollisionEnter(Collision collision)
    {
		GameObject ColObject = collision.gameObject;
		PlayerController PC = ColObject.GetComponent<PlayerController>();
		if (PC != null)
			PC.AllowJump = true;
	}
}
