﻿using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class SimpleBullet : Bullet {

	public float Speed;

    // Update is called once per frame
    void Update () {
        transform.position += Vector3.up*Speed;
    }
}
