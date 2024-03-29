// Generated by gencpp from file create_node/SetDigitalOutputsResponse.msg
// DO NOT EDIT!


#ifndef CREATE_NODE_MESSAGE_SETDIGITALOUTPUTSRESPONSE_H
#define CREATE_NODE_MESSAGE_SETDIGITALOUTPUTSRESPONSE_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace create_node
{
template <class ContainerAllocator>
struct SetDigitalOutputsResponse_
{
  typedef SetDigitalOutputsResponse_<ContainerAllocator> Type;

  SetDigitalOutputsResponse_()
    : done(false)  {
    }
  SetDigitalOutputsResponse_(const ContainerAllocator& _alloc)
    : done(false)  {
  (void)_alloc;
    }



   typedef uint8_t _done_type;
  _done_type done;





  typedef boost::shared_ptr< ::create_node::SetDigitalOutputsResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::create_node::SetDigitalOutputsResponse_<ContainerAllocator> const> ConstPtr;

}; // struct SetDigitalOutputsResponse_

typedef ::create_node::SetDigitalOutputsResponse_<std::allocator<void> > SetDigitalOutputsResponse;

typedef boost::shared_ptr< ::create_node::SetDigitalOutputsResponse > SetDigitalOutputsResponsePtr;
typedef boost::shared_ptr< ::create_node::SetDigitalOutputsResponse const> SetDigitalOutputsResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::create_node::SetDigitalOutputsResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::create_node::SetDigitalOutputsResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace create_node

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': True, 'IsMessage': True, 'HasHeader': False}
// {'nav_msgs': ['/opt/ros/melodic/share/nav_msgs/cmake/../msg'], 'actionlib_msgs': ['/opt/ros/melodic/share/actionlib_msgs/cmake/../msg'], 'std_msgs': ['/opt/ros/melodic/share/std_msgs/cmake/../msg'], 'geometry_msgs': ['/opt/ros/melodic/share/geometry_msgs/cmake/../msg'], 'create_node': ['/home/yuya/simulation_ws/src/turtlebot_create/create_node/msg'], 'diagnostic_msgs': ['/opt/ros/melodic/share/diagnostic_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::create_node::SetDigitalOutputsResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::create_node::SetDigitalOutputsResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::create_node::SetDigitalOutputsResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::create_node::SetDigitalOutputsResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::create_node::SetDigitalOutputsResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::create_node::SetDigitalOutputsResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::create_node::SetDigitalOutputsResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "89bb254424e4cffedbf494e7b0ddbfea";
  }

  static const char* value(const ::create_node::SetDigitalOutputsResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x89bb254424e4cffeULL;
  static const uint64_t static_value2 = 0xdbf494e7b0ddbfeaULL;
};

template<class ContainerAllocator>
struct DataType< ::create_node::SetDigitalOutputsResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "create_node/SetDigitalOutputsResponse";
  }

  static const char* value(const ::create_node::SetDigitalOutputsResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::create_node::SetDigitalOutputsResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "bool done\n"
;
  }

  static const char* value(const ::create_node::SetDigitalOutputsResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::create_node::SetDigitalOutputsResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.done);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct SetDigitalOutputsResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::create_node::SetDigitalOutputsResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::create_node::SetDigitalOutputsResponse_<ContainerAllocator>& v)
  {
    s << indent << "done: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.done);
  }
};

} // namespace message_operations
} // namespace ros

#endif // CREATE_NODE_MESSAGE_SETDIGITALOUTPUTSRESPONSE_H
