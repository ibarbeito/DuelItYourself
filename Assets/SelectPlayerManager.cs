using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;

public class SelectPlayerManager : MonoBehaviour {

	public SelectPlayerController Player1;		
	public SelectPlayerController Player2;
	public PlayerInfo PlayerInfo;
	Color[] Colors = {Color.red, Color.blue, Color.green, Color.yellow};
	
	// Update is called once per frame
	void Update () {
		if (Player1.Confirmed && Player2.Confirmed) {
			PlayerInfo.Player1Name = Player1.FinalName;
			PlayerInfo.Player2Name = Player2.FinalName;
			PlayerInfo.Player1Color = Colors[Player1.CurrentColor];
			PlayerInfo.Player2Color = Colors[Player2.CurrentColor];
			SceneManager.LoadScene("GJ");
		}
	}
}
