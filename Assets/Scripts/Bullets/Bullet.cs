using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Bullet : MonoBehaviour {

	public GameObject Owner;
	
	void OnBecameInvisible() {
        Destroy(gameObject);
    }

	void OnCollisionEnter2D(Collision2D coll) {
        if (!coll.gameObject.Equals(Owner)) {
            coll.gameObject.GetComponent<Duelist>().Hited(1);
        }
	}

	
}
