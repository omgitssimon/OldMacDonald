class Chick implements Animal
{
	private String myType;
	private String mySound1, mySound2;

	public Chick(String type, String sound)    
	{         
    	myType = type;         
    	mySound1 = sound;     
	}     

	public Chick(String type, String sound1, String sound2)
	{
		myType = type;
		mySound1 = sound1;
		mySound2 = sound2;
	}

  public Chick()    
  	{         
    	myType = "unknown";         
     	mySound1 = "unknown";     
  	}      

  public String getSound() 
  	{
  		if(mySound2 == null)
       return mySound1;
     
  		else
  		{
  			if(Math.random() < .5) {return mySound1;}
  			else {return mySound2;}
  		}
  	}  

  public String getType() {return myType;} 	
}
