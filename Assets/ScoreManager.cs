using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class ScoreManager : MonoBehaviour {
    public GameObject player1;
    public GameObject player2;
    public UnityEngine.UI.Text scoreTextP1;
    public UnityEngine.UI.Text scoreTextP2;
    private int player1Score;
    private int player2Score;
    // Use this for initialization
    void Start () {
        player1Score = PlayerPrefs.GetInt("Player1Score", 0);
        player2Score = PlayerPrefs.GetInt("Player2Score", 0);
        scoreTextP1.text = player1Score.ToString();
        scoreTextP2.text = player2Score.ToString();

    }
	
	// Update is called once per frame
	void Update () {
	}

    public void WinsPlayer1 () {
        player1Score++;
        scoreTextP1.text = player1Score.ToString();
        PlayerPrefs.SetInt("Player1Score", player1Score);
    }

    public void WinsPlayer2 () {
        player2Score++;
        scoreTextP2.text = player2Score.ToString();
        PlayerPrefs.SetInt("Player2Score", player2Score);
    }

    public void EndRound (GameObject winer) {
        if (winer.Equals(player1))
            WinsPlayer1();
        else
            WinsPlayer2();

    }
}
