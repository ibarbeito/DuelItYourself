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
    [Tooltip("Interfaz de las vidas del jugador 1")]
    public UnityEngine.UI.Text lifesTextP1;
    [Tooltip("Interfaz de de las vidas del jugador 2")]
    public UnityEngine.UI.Text lifesTextP2;

    public GameObject winnUI;
    public UnityEngine.UI.Text winnerText;

    private int player1Score;
    private int player2Score;
    // Use this for initialization
    void Start () {
        winnUI.SetActive(false);
        player1Score = PlayerPrefs.GetInt("Player1Score", 0);
        player2Score = PlayerPrefs.GetInt("Player2Score", 0);
        scoreTextP1.text = player1Score.ToString();
        scoreTextP2.text = player2Score.ToString();

        Time.timeScale = 1.0f;

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

    public void setLifes(GameObject player, int lifes) {
        if (player.Equals(player1))
            lifesTextP1.text = "X " + lifes;
        else if (player.Equals(player2))
            lifesTextP2.text = "X " + lifes;
    }

    //Fin de la ronda, detecta el ganador
    public void EndRound (GameObject loser) {
        if (loser.Equals(player1)) {
            WinsPlayer2();
            winnerText.text = "Winner Player 2";
        } else
            if (loser.Equals(player2)) {
            WinsPlayer1();
            winnerText.text = "Winner Player 1";
        }
        //detener el tiempo(pausa)
        Time.timeScale = 0.0f;
        winnUI.SetActive(true);

    }
}
