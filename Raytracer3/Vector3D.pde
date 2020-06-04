class Vector3D
{
  float _x;
  float _y;
  float _z;
 
  Vector3D(float x, float y, float z)        //Konstruktor Vektor
  {
    _x=x;
    _y=y;
    _z=z;
  }
 
  Vector3D(Vector3D another)
  {
    _x=another.x();
    _y=another.y();
    _z=another.z();
  }
  
  Vector3D mult(float f)                        //Multipliziert einen Vector mit einem float
  {
    return new Vector3D(_x*f,_y*f,_z*f);
  }
 
  float len()                                   //Wurzel squared Skalarprodukt
  {
    return sqrt(lenSquared());
  }
 
  float lenSquared()                            //Skalarprodukt squared
  {
    return skalarprodukt(this);
  }
  
  Vector3D normalize(){                        //Vektornormierung
    float a = this.len();
    float _x = this._x;
    float _y = this._y;
    float _z = this._z;
    return new Vector3D(_x/a,_y/a,_z/a);
  }
  
  Vector3D minus(Vector3D another)              //Subtraktion zweier Vektoren
  {
    float dx=_x-another.x();
    float dy=_y-another.y();
    float dz=_z-another.z();
    return new Vector3D (dx,dy,dz);
  }
  
  Vector3D plus(Vector3D another)              //Addtion zweier Vektoren
  {
    float dx=_x+another.x();
    float dy=_y+another.y();
    float dz=_z+another.z();
    return new Vector3D (dx,dy,dz);
  }
  
  float skalarprodukt(Vector3D another)       //Skalarprodukt zweier Vektoren
  {
    float sx=_x*another.x();
    float sy=_y*another.y();
    float sz=_z*another.z();
    return sx+sy+sz;
  }
  
  float x()
  {
    return _x;
  }
   
  float y()
  {
    return _y;
  }
   
  float z()
  {
    return _z;
  }
  
  
  Vector3D clone()                             //klont den Vektor
  {
    return new Vector3D(this);
  }
}
