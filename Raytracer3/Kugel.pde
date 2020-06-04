class sphere 
{
  Vector3D _center;
  float _radius;
  
  sphere (Vector3D here, float r){        //Konstruktor Kugel
    _center = here.clone();
    _radius = setRadius(r);
  }
  
  Vector3D center()                      //gibt den Mittelpunkt der Kugel zurück
  {
   return _center.clone(); 
  }
  
  boolean isInside(Vector3D here)        //Abfrage ob der Vektor sich in der Kugel befindet
  {
    return _center.minus(here).len()<_radius;
  }
    
  float setRadius (float r)              //setzt einen Radius wenn größer 0
  {
    if (r<0){
      println("sphere.setRadius(), negativer Radius!");
    }
    return r;
  }
  
  float getRadius()                       // rückgabe radius   
  {
    return _radius;
  }
  
}
