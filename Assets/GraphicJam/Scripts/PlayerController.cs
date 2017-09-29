 using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PlayerController : MonoBehaviour {

	public string AxisHorizontal = "Horizontal";
	public string AxisVertical = "Vertical";

    public string RotationAxisHorizontal = "Horizontal";
    public string RotationAxisVertical = "Vertical";
    public string JumpButton = "Jump";
    public string ImpulseButton = "Impulse";
    public Transform centerOfMass;
    public float Speed = 10f;
	LifeManager LifeMan;
    public bool AllowJump = true;
    public float JumpForce = 200f;
    public float ImpulseForce = 200f;
    public float CooldownTimer = 5.0f;
    private float timer = 0.0f;

    // Use this for initialization
    void Start () {
		LifeMan = GetComponent<LifeManager>();
        GetComponent<Rigidbody>().centerOfMass = centerOfMass.localPosition;
	}

	void Update() {
		if (Input.GetKeyUp(KeyCode.F)) {
			Hit(1);	
		}
		
	}	

	void FixedUpdate () {
		float Horizontal = Input.GetAxis(AxisHorizontal);
		float Vertical = Input.GetAxis(AxisVertical);
		Vector3 Direction = new Vector3(Horizontal, 0, Vertical);
		GetComponent<Rigidbody>().AddForce(Direction*Speed,ForceMode.VelocityChange);
		if (Mathf.Abs(Horizontal) >= 0.1f || Mathf.Abs(Vertical)>=0.1f) {
	        var angle = Mathf.Atan2(-Input.GetAxis(RotationAxisVertical), Input.GetAxis(RotationAxisHorizontal)) * Mathf.Rad2Deg;
	        transform.rotation = Quaternion.Lerp(transform.rotation, Quaternion.Euler(0, angle, 0), 0.1f);
		}
        timer += Time.fixedDeltaTime;

        if (timer>CooldownTimer && Input.GetButton(ImpulseButton))
        {
            GetComponent<Rigidbody>().AddForce(transform.right * ImpulseForce, ForceMode.VelocityChange);
            timer = 0.0f;

        }
        if (AllowJump && Input.GetButton(JumpButton))
        {
            GetComponent<Rigidbody>().AddForce(Vector3.up * JumpForce, ForceMode.VelocityChange);
            AllowJump = false;

        }
    }

    public void Hit(int Damage) {
		LifeMan.DoDamage(Damage);
        bool Alive = LifeMan.IsAlive();
		if (!Alive) {
           gameObject.SetActive(false);
		}
    }


}
