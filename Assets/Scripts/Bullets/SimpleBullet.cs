﻿using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class SimpleBullet : Bullet {
	// Use this for initialization
	void Start () {
		
	}

    // Update is called once per frame
    void Move () {
        transform.position += Vector3.up;
    }
}
