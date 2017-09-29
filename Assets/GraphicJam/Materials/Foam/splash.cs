using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class splash : MonoBehaviour {

	// Use this for initialization
	void Start () {
		
	}
	
	// Update is called once per frame
	void Update () {
        ParticleSystem.Particle[] particles = gameObject.GetComponent<ParticleSystem>().GetParticles();
        foreach (ParticleSystem.Particle particle in collection)
        {

        }
		gameObject.GetComponent<ParticleSystem>().GetParticles()
	}
}
