#include "AMQPcpp.h"
#include <iostream>
using namespace std;

int  onMessage( AMQPMessage * message) {
    uint32_t j = 0;
    string data = message->getMessage(&j);
    cout<< data<<endl; 
    return 0;
}

int main(int argc, char** argv)
{
  cout<<"here"<<endl;
  AMQP amqp("guest:guest@localhost:5672");
  AMQPExchange * ex = amqp.createExchange("map2");
  ex->Declare("map2", "fanout");
  ex->setHeader("Delivery-mode", 2);
  ex->setHeader("Content-type", "text/text");
  ex->setHeader("Content-encoding", "UTF-8"); 
  AMQPQueue * qu2 = amqp.createQueue("robot_map");
  qu2->Declare();
  qu2->Bind( "map2", "");
   string str_info = "test";
  ex->Publish(str_info, "");	
  return 0;
}

