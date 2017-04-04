using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class ScoreManager : MonoBehaviour {
    [Tooltip ("GameObject que representa al Jugador 1")]
    public GameObject player1;
    [Tooltip("GameObject que representa al Jugador 2")]
    public GameObject player2;
    [Tooltip("Interfaz de la puntuación para el jugador 1")]
    public UnityEngine.UI.Text scoreTextP1;
    [Tooltip("Interfaz de la puntuación para el jugador 2")]
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
        //Cuando se presiona T, se reinician las puntuaciones
        if (Input.GetKey(KeyCode.T)) 
            PlayerPrefs.DeleteAll();
    }

    //Ganador jugador 1, aumenta su puntuación y actualiza la Interfaz
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

    //Fin de la ronda, detecta el ganador
    public void EndRound (GameObject winer) {
        if (winer.Equals(player1))
            WinsPlayer1();
        else 
            if (winer.Equals(player2))
                WinsPlayer2();

    }
}
