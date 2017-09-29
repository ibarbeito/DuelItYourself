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
	public int CurrentColor = 0;
	Color[] Colors = {Color.red, Color.blue, Color.green, Color.yellow};

	DiscreteAxisHandler HorizontalNameHandler;
	DiscreteAxisHandler VerticalNameHandler;
	DiscreteAxisHandler HorizontalModelHandler; 
	int CurrentIndex;

	// Use this for initialization
	void Start () {
		HorizontalNameHandler = new DiscreteAxisHandler();
		HorizontalNameHandler.Start(NameAxisHorizontal, NameAxisHorizontalDelay);
		VerticalNameHandler = new DiscreteAxisHandler();
		VerticalNameHandler.Start(NameAxisVertical, NameAxisVerticalDelay);
		HorizontalModelHandler = new DiscreteAxisHandler();
		HorizontalModelHandler.Start(ModelAxisHorizontal, ModelAxisHorizontalDelay);
		ActivateOne(CurrentIndex);
		SetSelectedColor(0);
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
				ActivateOne(CurrentIndex);
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
		if (HorizontalModelHandler.Positive()) {
			SetSelectedColor(1);
		}
		if (HorizontalModelHandler.Negative()) {
			SetSelectedColor(-1);
		
		}
		HorizontalNameHandler.Update();
		VerticalNameHandler.Update();
		HorizontalModelHandler.Update();
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

	void SetSelectedColor(int Next) {
		CurrentColor+=Next;
		if (CurrentColor < 0)
			CurrentColor = Colors.Length-1;
		if (CurrentColor > Colors.Length-1)
			CurrentColor = 0; 
		Renderer Sh = GetComponent<Renderer>();	
		Sh.material.SetColor("_Color2", Colors[CurrentColor]);
	}
}
