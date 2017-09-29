using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class CharSpinner : MonoBehaviour {

	public Text Char;
	// Use this for initialization
	void Start () {
		Char = GetComponent<Text>();
	}

	public void Select() {
		GetComponent<Text>().fontSize = 25;
		GetComponent<Text>().color = Color.yellow;
	}

	public void Unselect() {
		GetComponent<Text>().fontSize = 20;
		GetComponent<Text>().color = Color.white;
	}

	public void NextChar(int Step) {
		char Value = Char.text[0];
		if (Value == 'Z' && Step == 1)
			Value = 'A';
		else if (Value == 'A' && Step == -1)
			Value = 'Z';
		else 
			Value+=(char)Step;
		Char.text = Value+"";
	}
}
