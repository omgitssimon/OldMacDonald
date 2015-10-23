
void setup()
{
	Farm farm = new Farm();
	farm.animalSounds();
}

class Farm 
{     
  private Animal[] aBunchOfAnimals = new Animal[3];  

  public Farm()    
  {       
   aBunchOfAnimals[0] = new NamedCow("The cow","Howardo","muμ");          
   aBunchOfAnimals[1] = new Chick("Le chick","","cheeaap");
   aBunchOfAnimals[2] = new Pig("Da pig","nnoink");    
  }     

  public void animalSounds()    
  {
    for (int nI=0; nI < aBunchOfAnimals.length; nI++) 
    {             
       System.out.println( aBunchOfAnimals[nI].getType() + " goes " + aBunchOfAnimals[nI].getSound() );       
    }       
    System.out.println( "The cow is known as " + ((NamedCow)aBunchOfAnimals[0]).getName() );    
  } 
}

interface Animal 
{    
	public String getSound();        
	public String getType(); 
}

class Cow implements Animal 
{     
	protected String myType;     
	protected String mySound;   

	public Cow(String type, String sound)    
	{         
    	myType = type;         
    	mySound = sound;     
	}     

  	public Cow()    
  	{         
    	myType = "unknown";         
     	mySound = "unknown";     
  	}      

  	public String getSound() {return mySound;}     
  	public String getType() {return myType;} 
}

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
  			if(Math.random() < .5)
  			{
  				return mySound1;
  			}
		else
		{
			return mySound2;
  		}

  	}     
 }
  	public String getType() 
  	{
  		return myType;
  	} 	
}

class Pig implements Animal
{
	private String myType;
	private String mySound;

	public Pig(String type, String sound)    
	{         
    	myType = type;         
    	mySound = sound;     
	}     

  	public Pig()    
  	{         
    	myType = "unknown";         
     	mySound = "unknown";     
  	}      

  	public String getSound()
	{
		return mySound;
	}     

  	public String getType()
  	{
  		return myType;
  	} 
}

class NamedCow extends Cow
{
	private String myName;

	public NamedCow(String type, String name, String sound)
	{
		myType = type;
		myName = name;
		mySound = sound;
	}

	public String getName() {return myName;}
}
