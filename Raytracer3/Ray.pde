class Ray 
{
  Vector3D _origin;
  Vector3D _direction;
  Vector3D _p; 
  
  Ray(float x, float y, float z)                  //Konstruktor Strahl
  {
    _origin = new Vector3D (x,y,z);
    _direction = new Vector3D (0,0,1);
  }
  
  float calcT(sphere k){                          //Berechnung vom Faktor t
    Vector3D dv = k.center().minus(_origin);
    float t = _direction.skalarprodukt(dv);
    return t;
  }
  
  boolean hits(sphere k)                          //wenn der Strahl auf ein Objekt trifft
  {
    float t = this.calcT(k);
    Vector3D p = this.parametrize(t);
    _p = p;
    return k.isInside(p);
  }
  
  Vector3D parametrize(float t)                  //Parametrizieren // Formel -> o+t*d
  {
    return _origin.plus(_direction.mult(t));
  }
}
