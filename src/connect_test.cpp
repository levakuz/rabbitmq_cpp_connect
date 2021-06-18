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
  AMQPQueue * qu2 = amqp.createQueue("robot_delivery_order");
  qu2->Declare();		
  qu2->addEvent(AMQP_MESSAGE, onMessage);
  qu2->Consume(AMQP_NOACK);
  return 0;
}

