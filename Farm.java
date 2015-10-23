
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
