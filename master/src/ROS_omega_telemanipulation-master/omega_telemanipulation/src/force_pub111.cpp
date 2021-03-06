#include <ros/ros.h>
#include <geometry_msgs/Wrench.h>
#include <geometry_msgs/Vector3Stamped.h>
#include <geometry_msgs/Vector3.h>
#include <memory>
#include <boost/thread/thread.hpp>
#include <iostream>
#include <string>
#include <cmath>
#include <geometry_msgs/PoseStamped.h>
#include <geometry_msgs/Pose.h>

class Testforce
{	
	public:
        Testforce();
        private:
        ros::NodeHandle n;
        ros::Publisher pub;
	ros::Subscriber sub; 
	boost::array<double,3> Pos;
	geometry_msgs::PoseStamped world_pose;
	void forceCallBack(const geometry_msgs::PoseStamped::ConstPtr& testforce);
};
Testforce::Testforce()
{
        pub = n.advertise<geometry_msgs::PoseStamped>("/haptic/world_pose",1);
	sub = n.subscribe("/haptic/pose",1,&Testforce::forceCallBack, this);
}
void Testforce::forceCallBack(const geometry_msgs::PoseStamped::ConstPtr& testforce)
{
        world_pose.header.frame_id=testforce->header.frame_id;
        world_pose.header.stamp=testforce->header.stamp;
        Pos[0] = testforce->pose.position.x;
        Pos[1] = testforce->pose.position.y;
        Pos[2] = testforce->pose.position.z;
        world_pose.pose.position.x = Pos[0];
        world_pose.pose.position.y = Pos[1];
        world_pose.pose.position.z = Pos[2];	
	pub.publish(world_pose);
}
int main(int argc, char** argv)
{
  	ros::init(argc, argv, "force_pub");
  	Testforce testforce;
  	ros::spin();
}
