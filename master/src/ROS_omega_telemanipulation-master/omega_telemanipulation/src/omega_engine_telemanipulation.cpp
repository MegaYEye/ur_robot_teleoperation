#include "/home/dong/Project/master/src/ROS_omega_telemanipulation-master/omega_telemanipulation/include/omega_engine_telemanipulation_oo.h"

CE_OO::CE_OO(ros::NodeHandle *nh){
    n=nh;
    omega_pub = n->advertise<geometry_msgs::PoseStamped>("feed_pos_omega", 1000);
    sub_set_omega = n->subscribe("set_omega", 1000, &CE_OO::setOmegaCallback, this);

    initialize_stuff();
}

void CE_OO::initialize_stuff(){

  //OMEGA open the first available device
  if (dhdOpen () < 0) {
    //printf ("error: cannot open device (%s)\n", dhdErrorGetLastStr());
    dhdSleep (2.0);
    //return -1;
  }

  //OMEGA identify number of encoders to report based on device type
  switch (dhdGetSystemType ()) {
  case DHD_DEVICE_DELTA3:
  case DHD_DEVICE_OMEGA3:
  case DHD_DEVICE_FALCON:
    encCount = 3;
    break;
  case DHD_DEVICE_DELTA6:
  case DHD_DEVICE_OMEGA33:
  case DHD_DEVICE_OMEGA33_LEFT:
    encCount = 6;
    break;
  case DHD_DEVICE_OMEGA331:
  case DHD_DEVICE_OMEGA331_LEFT:
    encCount = 7;
    break;
  case DHD_DEVICE_CONTROLLER:
  case DHD_DEVICE_CONTROLLER_HR:
  default:
    encCount = 8;
    break;
  }

// enable force
  dhdEnableForce (DHD_ON);
}

bool CE_OO::run(){
    ros::Rate r(100);
    while (ros::ok())
    {
        ros::spinOnce();

   // get end-effector position
    dhdGetPosition (&px, &py, &pz);

    // print out encoders according to system type
        ROS_INFO_STREAM("Positions(" <<  px << "," << py << "," << pz << ")");
        pose.pose.position.x = px*100;
        pose.pose.position.y = py*100;
        pose.pose.position.z = pz*100;
    	omega_pub.publish(pose);
        
        r.sleep();
    }
	// disable force
    //dhdEnableForce (DHD_OFF);
  	//OMEGA close the connection
    //dhdClose ();
}

void CE_OO::setOmegaCallback(const std_msgs::Int64::ConstPtr& msg)
{
    //ROS_INFO("I heard: [%s]", msg->data.c_str());


    if(msg->data ==1){
        ROS_INFO_STREAM("Collision in progress");
        dhdSetForce (K*px, K*py,K*pz);
    }
    else{
        ROS_INFO_STREAM("Clear path");
        dhdSetForce (0.0,0.0,0.0);
    }

}

int main( int argc, char** argv )
{
    ros::init(argc, argv, "omega_engine_telemanipulation");
    ros::NodeHandle n;
    CE_OO instance(&n);
    instance.run();
}

