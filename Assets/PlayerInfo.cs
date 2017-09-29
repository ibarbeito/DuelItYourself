using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PlayerInfo : MonoBehaviour {

	public string Player1Name;
	public string Player2Name;
	public Color Player1Color;
	public Color Player2Color;

	// Use this for initialization
	void Start () {
		DontDestroyOnLoad(this);
	}
	
	public string GetName(int Id) {
		if (Id == 1)
			return Player1Name;
		return Player2Name;
	}

	public Color GetColor(int Id) {
		if (Id == 1)
			return Player1Color;
		return Player2Color;
	}
}
