#include <iostream>
#include <string>
#include <cmath>
#include <ros/ros.h>
#include <geometry_msgs/PoseStamped.h>
double Pos1[3] = { 0, 0, 0};
class Worldpose
{	
	public:
        Worldpose();
        private:
        ros::NodeHandle n;
        ros::Publisher pub;
	ros::Subscriber sub; 
	geometry_msgs::PoseStamped world_pose;
	boost::array<double,3> Pos,Pos1; 
	double r,x_0,y_0,z_0;   
	void poseCallBack(const geometry_msgs::PoseStamped::ConstPtr& worldpose);
};
Worldpose::Worldpose()
{
        pub = n.advertise<geometry_msgs::PoseStamped>("/haptic/world_pose",1);
	sub = n.subscribe<geometry_msgs::PoseStamped>("/haptic/pose",1,&Worldpose::poseCallBack, this);
}
void Worldpose::poseCallBack(const geometry_msgs::PoseStamped::ConstPtr& worldpose2)
{       
    

	world_pose.header.frame_id = worldpose2->header.frame_id;
        world_pose.header.stamp = worldpose2->header.stamp;
	Pos[0] = worldpose2->pose.position.x;
        Pos[1] = worldpose2->pose.position.y;
        Pos[2] = worldpose2->pose.position.z;
	r=Pos[0]*Pos[0]+Pos[1]*Pos[1]+Pos[2]*Pos[2];
//set initial value
	
	if (r > 0.005) {
	Pos1[0]+= 0.0002*Pos[0];
	Pos1[1]+= 0.00005*Pos[1];
	Pos1[2]+= 0.00005*Pos[2];
	}
	else{
	world_pose.pose.position.x = Pos1[0];
        world_pose.pose.position.y = Pos1[1];
        world_pose.pose.position.z = Pos1[2];	
	}
	world_pose.pose.position.x = Pos1[0];
        world_pose.pose.position.y = Pos1[1];
        world_pose.pose.position.z = Pos1[2];	
//        world_pose.pose.orientation.x = 0;
//        world_pose.pose.orientation.y = 0;
//        world_pose.pose.orientation.z = 0;
	std::cout << Pos1[0] << std::endl;
	pub.publish(world_pose);
}
int main(int argc, char **argv)
{
  	ros::init(argc, argv, "world_pose_pub");
  	Worldpose worldpose;
  	ros::spin();
}
