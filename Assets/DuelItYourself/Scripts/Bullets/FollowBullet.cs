using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class FollowBullet :Bullet {

    public GameObject objective;
    public float speed=0.5f;
    private Vector3 targetDirection;
	// Use this for initialization
	void Start () {
        if (objective == null)
            objective = GameObject.Find("DownPlayer");
        if (objective)
            targetDirection = (objective.transform.position - transform.position).normalized*speed;


    }
	
	// Update is called once per frame
	void Update () { 
            transform.position += targetDirection;
        ;
        
    }
}
