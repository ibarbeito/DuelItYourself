using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class DeathBarrier : MonoBehaviour {
    private ScoreManager manager;

    // Use this for initialization
    void Start()
    {

        manager = FindObjectOfType<ScoreManager>();
    }

    void OnCollisionEnter(Collision collision)
    {
        manager.EndRound(collision.gameObject);
        //collision.gameObject.SetActive(false);
    }
}
