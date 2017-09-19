using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class BananaBullet : MonoBehaviour {
    public float speed=0.2f;
    private Rigidbody rigid;
    public float timeToDestroy = 2.0f;
	// Use this for initialization
	void Start () {
        rigid = GetComponent<Rigidbody>();

        rigid.AddForce(transform.forward * speed);
        Destroy(gameObject, timeToDestroy);
    }
	
	// Update is called once per frame
	void Update () {
        //  transform.position += transform.forward * speed;
	}

    private void OnCollisionEnter(Collision collision)
    {
        if (collision.gameObject.CompareTag("Player"))
        {
            PlayerController player = collision.gameObject.GetComponent<PlayerController>();
            player.Hit(1);
        }

    }




}
