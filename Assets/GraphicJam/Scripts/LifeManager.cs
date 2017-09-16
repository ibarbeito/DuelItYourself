using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class LifeManager : MonoBehaviour {

	public int NumberOfLifes = 6;
	public GameObject TokenPrefab;
	public float Distance = 100f;
	
	List<GameObject> TokenList;

	// Use this for initialization
	void Start () {
		TokenList = new List<GameObject>();
		for (int i = 0; i < NumberOfLifes; i++) {
			float Angle	 = (360.0f/NumberOfLifes) * i;
			GameObject Token = GameObject.Instantiate(TokenPrefab);
			Token.transform.position=transform.position + Vector3.forward*Distance;
			Token.transform.RotateAround(transform.position, new Vector3(0,1,0), Angle);
			LifeToken LT = Token.GetComponent<LifeToken>();
			LT.Center = transform;
			LT.Radius = Distance;
			TokenList.Add(Token);
		}
	}

	public void DoDamage (int Damage) {
		for (int i = 0; i < Damage; i++) {
			if (TokenList.Count > 0) {
				Destroy(TokenList[0]);
				TokenList.RemoveAt(0);
			}
		}
	}

	public bool IsAlive () {
		return TokenList.Count>0;
	}
}


