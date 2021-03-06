//
// Created by stefan spiss on 06.07.17.
//

#include <ros/ros.h>
#include <boost/thread/thread.hpp>
#include <memory>

#include <omega7_ros/OmegaRosDriver.h>


int main(int argc, char** argv) {
    ros::init(argc, argv, "omega_ros_node");
    ros::NodeHandle node;

    OmegaRosDriver driver(node, 1000.0, "/omega/position", "/omega/velocity", "/omega/buttons", "/omega/force", true);

    driver.startOmegaRosNode();

    ros::shutdown();
}
