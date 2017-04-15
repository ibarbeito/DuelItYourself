using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ShakeShake : MonoBehaviour {

    public float shakeAmtY = 0.05f;
    public float shakeAmtX = 0.05f;
    private Vector3 originalPosition;
    public float timeBetweenShakes = 0.01f;
    public float duration = 0.5f;


    public void Shake () {
        originalPosition = transform.position;
        InvokeRepeating("ShakeMethod", 0, timeBetweenShakes);
        Invoke("StopShaking", duration);

    }

    void ShakeMethod () {
        float quakeAmtY = 0;
        float quakeAmtX = 0;
        if (shakeAmtY > 0) 
             quakeAmtY = Random.value * shakeAmtY * 2 - shakeAmtY;
        if (shakeAmtX>0)
            quakeAmtX = Random.value * shakeAmtX * 2 - shakeAmtX;
        Vector3 pp = transform.position;
        pp.y += quakeAmtY; // can also add to x and/or z
        pp.x += quakeAmtX;
        transform.position = pp;
        
    }

    void StopShaking () {
        CancelInvoke("ShakeMethod");
        transform.position = originalPosition;
    }

    private float shakeaux;
    public void Shake (float shakeAmount, float timeBShakes, float dur, float waitTime = 0) {
        originalPosition = transform.position;
        shakeaux = shakeAmount;
        InvokeRepeating("ShakeMethodAux", waitTime, timeBShakes);
        Invoke("StopShakingAux", dur);

    }

    void ShakeMethodAux () {
        if (shakeaux > 0) {
            float quakeAmtY = Random.value * shakeaux * 2 - shakeaux;
            float quakeAmtX = Random.value * shakeaux * 2 - shakeaux;
            Vector3 pp = transform.position;
            pp.y += quakeAmtY; // can also add to x and/or z
            pp.x += quakeAmtX;
            transform.position = pp;
        }
    }

    void StopShakingAux () {
        CancelInvoke("ShakeMethodAux");
        transform.position = originalPosition;
    }
}
