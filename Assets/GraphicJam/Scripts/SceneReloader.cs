using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;

public class SceneReloader : MonoBehaviour {

	public GameObject Player1;
	public GameObject Player2;
	public KeyCode RestartKey;
	public string SceneName;

    internal void reloadScene()
    {
        SceneManager.LoadScene(SceneName);
    }

    // Update is called once per frame
    /*void Update () {
		if (!Player1.activeSelf || !Player2.activeSelf) {
			//if (Input.GetKey(RestartKey)) {
				 SceneManager.LoadScene(SceneName);
			//}
		}
	}*/
}
