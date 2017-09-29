using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class SelectPlayerManager : MonoBehaviour {

	public SelectPlayerController Player1;		
	public SelectPlayerController Player2;
	
	// Update is called once per frame
	void Update () {
		if (Player1.Confirmed && Player2.Confirmed) {
			Debug.Log(":D");
		}
	}
}
