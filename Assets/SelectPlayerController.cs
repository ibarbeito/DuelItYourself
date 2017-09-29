using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class SelectPlayerController : MonoBehaviour {

	public string NameAxisHorizontal;
	public int NameAxisHorizontalDelay = 15;
	public string NameAxisVertical;
	public int NameAxisVerticalDelay = 15;
	public string ModelAxisHorizontal;
	public int ModelAxisHorizontalDelay = 15;
	public string ConfirmButton;
	public CharSpinner[] Chars;
	public bool Confirmed = false;
	public string FinalName = "AAA";

	DiscreteAxisHandler HorizontalNameHandler;
	DiscreteAxisHandler VerticalNameHandler;
	DiscreteAxisHandler HorizontaModelHandler; 
	int CurrentIndex;

	// Use this for initialization
	void Start () {
		HorizontalNameHandler = new DiscreteAxisHandler();
		HorizontalNameHandler.Start(NameAxisHorizontal, NameAxisHorizontalDelay);
		VerticalNameHandler = new DiscreteAxisHandler();
		VerticalNameHandler.Start(NameAxisVertical, NameAxisVerticalDelay);
		ActivateOne(CurrentIndex);
	}
	
	// Update is called once per frame
	void Update () {
		if (Input.GetButtonDown(ConfirmButton)) {
			if (!Confirmed) {
				ActivateOne(-1);
				FinalName = "";
				foreach (CharSpinner Spinner in Chars) {
					FinalName+=Spinner.Char.text;
				}
			}
			else
				ActivateOne(0);
			Confirmed=!Confirmed;
		}

		if (Confirmed)
			return;
		
		if (HorizontalNameHandler.Positive()) {
			SetSelectedChar(1);
		}
		if (HorizontalNameHandler.Negative()) {
			SetSelectedChar(-1);
		}
		if (VerticalNameHandler.Positive()) {
			Chars[CurrentIndex].NextChar(1);
		}
		if (VerticalNameHandler.Negative()) {
			Chars[CurrentIndex].NextChar(-1);
		}
		HorizontalNameHandler.Update();
		VerticalNameHandler.Update();
	}

	void SetSelectedChar(int Next) {
		CurrentIndex+=Next;
		if (CurrentIndex < 0)
			CurrentIndex = Chars.Length-1;
		if (CurrentIndex > Chars.Length-1)
			CurrentIndex = 0; 
		ActivateOne(CurrentIndex);
	}

	void ActivateOne(int Index) {
		foreach (CharSpinner Spinner in Chars) {
			Spinner.Unselect();
		}
		if (Index >=0)
			Chars[Index].Select();
	}
}
