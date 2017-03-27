using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class MidPoint : MonoBehaviour {
    public GameObject firstObject;
    public GameObject secondObject;

	// Use this for initialization
	void Start () {
		
	}
  
    // Update is called once per frame
    void FixedUpdate () {
        //Punto medio entre 2 GameObjects, por ejemplo los jugadores pero solo en eje x e y
        float xMedio = (firstObject.transform.position.x + secondObject.transform.position.x) / 2;
        float yMedio = (firstObject.transform.position.y + secondObject.transform.position.y) / 2;
        transform.position = new Vector3(xMedio, yMedio, transform.position.z); //No cambiamos el Z, 
	}
}
