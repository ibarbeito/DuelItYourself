using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class DeathBarrier : MonoBehaviour {

	void OnCollisionEnter(Collision collision)
    {
        collision.gameObject.SetActive(false);
    }
}
