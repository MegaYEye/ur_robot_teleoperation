#include <ros/ros.h>
#include <geometry_msgs/Wrench.h>
#include <geometry_msgs/Vector3Stamped.h>
#include <geometry_msgs/Vector3.h>
#include <memory>
#include <boost/thread/thread.hpp>

class Testforce
{	
	public:
        Testforce();
        private:
        ros::NodeHandle n;
        ros::Publisher pub;
	ros::Subscriber sub; 
	boost::array<double,3> forces;
        geometry_msgs::Vector3 force;
	void forceCallBack(const geometry_msgs::Wrench::ConstPtr& testforce);
};
Testforce::Testforce()
{
//        pub = n.advertise<geometry_msgs::Vector3Stamped>("/falcon/force_a",1);
        pub = n.advertise<geometry_msgs::Vector3>("/haptic/force",1);
	sub = n.subscribe("/ati_ft_data",1,&Testforce::forceCallBack, this);
}
void Testforce::forceCallBack(const geometry_msgs::Wrench::ConstPtr& testforce)
{
//        force.header.frame_id = ros::this_node::getName();
//        force.header.stamp = ros::Time::now();
        forces[0] = testforce->force.x;
        forces[1] = testforce->force.y;
        forces[2] = testforce->force.z;
	forces[0]=forces[0]/1000000;
	forces[1]=forces[1]/1000000;
	forces[2]=forces[2]/1000000;
	forces[0]=floor(forces[0]*1000.00f)/1000.00f;
	forces[1]=floor(forces[1]*1000.00f)/1000.00f;
	forces[2]=floor((forces[2]-0.05)*1000.00f)/1000.00f;
//        force.vector.x = forces[0]-4.5;
//        force.vector.y = forces[1]+2.9;
//        force.vector.z = forces[2]-2.2;
        force.x = -forces[0]; //自己修改的
        force.y = forces[1];
        force.z = -forces[2];
        //force.x = forces[0]-3.5; //之前跃巍师兄
        //force.y = forces[1]+1.6;
        //force.z = -forces[2]+2.4;
	pub.publish(force);
}
int main(int argc, char **argv)
{
  	ros::init(argc, argv, "force_pub");
  	Testforce testforce;
  	ros::spin();
}
