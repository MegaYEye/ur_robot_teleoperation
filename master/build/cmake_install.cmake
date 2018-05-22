# Install script for directory: /home/dong/Project/master/src

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/dong/Project/master/install")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  
      if (NOT EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}")
        file(MAKE_DIRECTORY "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}")
      endif()
      if (NOT EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/.catkin")
        file(WRITE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/.catkin" "")
      endif()
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/dong/Project/master/install/_setup_util.py")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/dong/Project/master/install" TYPE PROGRAM FILES "/home/dong/Project/master/build/catkin_generated/installspace/_setup_util.py")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/dong/Project/master/install/env.sh")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/dong/Project/master/install" TYPE PROGRAM FILES "/home/dong/Project/master/build/catkin_generated/installspace/env.sh")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/dong/Project/master/install/setup.bash")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/dong/Project/master/install" TYPE FILE FILES "/home/dong/Project/master/build/catkin_generated/installspace/setup.bash")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/dong/Project/master/install/setup.sh")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/dong/Project/master/install" TYPE FILE FILES "/home/dong/Project/master/build/catkin_generated/installspace/setup.sh")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/dong/Project/master/install/setup.zsh")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/dong/Project/master/install" TYPE FILE FILES "/home/dong/Project/master/build/catkin_generated/installspace/setup.zsh")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/dong/Project/master/install/.rosinstall")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/dong/Project/master/install" TYPE FILE FILES "/home/dong/Project/master/build/catkin_generated/installspace/.rosinstall")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/home/dong/Project/master/build/gtest/cmake_install.cmake")
  include("/home/dong/Project/master/build/ridgeback_ur5_controller-master/cpr_bringup/cmake_install.cmake")
  include("/home/dong/Project/master/build/hector_slam-catkin/hector_slam/cmake_install.cmake")
  include("/home/dong/Project/master/build/hector_slam-catkin/hector_slam_launch/cmake_install.cmake")
  include("/home/dong/Project/master/build/ridgeback_ur5_controller-master/cartesian_state_msgs/cmake_install.cmake")
  include("/home/dong/Project/master/build/hector_slam-catkin/hector_map_tools/cmake_install.cmake")
  include("/home/dong/Project/master/build/hector_slam-catkin/hector_nav_msgs/cmake_install.cmake")
  include("/home/dong/Project/master/build/universal_robot/universal_robot/cmake_install.cmake")
  include("/home/dong/Project/master/build/universal_robot/ur_bringup/cmake_install.cmake")
  include("/home/dong/Project/master/build/universal_robot/ur_description/cmake_install.cmake")
  include("/home/dong/Project/master/build/universal_robot/ur_gazebo/cmake_install.cmake")
  include("/home/dong/Project/master/build/universal_robot/ur_msgs/cmake_install.cmake")
  include("/home/dong/Project/master/build/ati_wnet_ft-master/cmake_install.cmake")
  include("/home/dong/Project/master/build/hector_slam-catkin/hector_geotiff/cmake_install.cmake")
  include("/home/dong/Project/master/build/hector_slam-catkin/hector_geotiff_plugins/cmake_install.cmake")
  include("/home/dong/Project/master/build/hector_slam-catkin/hector_marker_drawing/cmake_install.cmake")
  include("/home/dong/Project/master/build/hector_slam-catkin/hector_compressed_map_transport/cmake_install.cmake")
  include("/home/dong/Project/master/build/hector_slam-catkin/hector_imu_attitude_to_tf/cmake_install.cmake")
  include("/home/dong/Project/master/build/hector_slam-catkin/hector_imu_tools/cmake_install.cmake")
  include("/home/dong/Project/master/build/hector_slam-catkin/hector_map_server/cmake_install.cmake")
  include("/home/dong/Project/master/build/hector_slam-catkin/hector_trajectory_server/cmake_install.cmake")
  include("/home/dong/Project/master/build/ridgeback_ur5_controller-master/admittance_control/cmake_install.cmake")
  include("/home/dong/Project/master/build/ROS_omega_telemanipulation-master/omega_telemanipulation/cmake_install.cmake")
  include("/home/dong/Project/master/build/robot_tools-master/cmake_install.cmake")
  include("/home/dong/Project/master/build/hector_slam-catkin/hector_mapping/cmake_install.cmake")
  include("/home/dong/Project/master/build/universal_robot/ur_driver/cmake_install.cmake")
  include("/home/dong/Project/master/build/ur_modern_driver-master/cmake_install.cmake")
  include("/home/dong/Project/master/build/universal_robot/ur3_moveit_config/cmake_install.cmake")
  include("/home/dong/Project/master/build/ridgeback_ur5_controller-master/ur5_cartesian_velocity_control/cmake_install.cmake")
  include("/home/dong/Project/master/build/universal_robot/ur5_moveit_config/cmake_install.cmake")
  include("/home/dong/Project/master/build/universal_robot/ur_kinematics/cmake_install.cmake")

endif()

if(CMAKE_INSTALL_COMPONENT)
  set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
else()
  set(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
file(WRITE "/home/dong/Project/master/build/${CMAKE_INSTALL_MANIFEST}"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
