using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Duelist : MonoBehaviour {

    public int lifes = 3;
	public KeyCode Left;
	public KeyCode Right;
	public KeyCode Shoot;
	public Weapon Weapon;
	public Bullet Bullet;
	public float Speed;
	public float FireRate;
	
	private Bounds CameraBounds;
    private ScoreManager scoreManager;
    private ShakeShake shake;
    // Use this for initialization
    void Start () {
		CameraBounds = Camera.main.OrthographicBounds();
		Weapon = Instantiate(Weapon);
		Weapon.Owner = this;
		Weapon.FireRate = FireRate;
        scoreManager = GameObject.FindObjectOfType<ScoreManager>();
        scoreManager.setLifes(gameObject, lifes);
        shake = GetComponent<ShakeShake>();

    }
	
	// Update is called once per frame
	void Update () {
		if (Input.GetKey(Left)) {
			transform.position+=Vector3.left*Speed*Time.timeScale;
		}
		if (Input.GetKey(Right)) {
			transform.position+=Vector3.right*Speed*Time.timeScale;
			
		}
		if (Input.GetKey(Shoot)) {
            Weapon.Shot(Bullet);
		}
		transform.position = new Vector3(Mathf.Clamp(transform.position.x, CameraBounds.min.x, CameraBounds.max.x), transform.position.y, transform.position.z);
	}
	
    public void Hited(int damage) {
        lifes = lifes - damage;
        scoreManager.setLifes(gameObject, lifes);
        if (shake)
            shake.Shake();
        if (lifes < 0) {
            gameObject.SetActive(false);
           scoreManager.EndRound(this.gameObject);
        }
    }
	
    
}
