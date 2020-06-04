class light extends Vector3D{
  
  light(float x, float y, float z){                        //Konstruktor Licht
    super(x,y,z);
    this.normalize();
  }
  
  float deltaT(sphere k,  Ray r){                          //Berechnung von delta T
    Vector3D p = r.parametrize(r.calcT(k));
    Vector3D c = k.center();
    Vector3D pc;
    pc = p.minus(c);
    float pc2 = pc.skalarprodukt(pc);
    return sqrt(k.getRadius()*k.getRadius()-pc2);
  }
    
  Vector3D impact(Ray r, sphere k){                        //Auswirkungen    
    float t = r.calcT(k);
    float dt = this.deltaT(k,r);
    return r.parametrize(t-dt);
  }
  
  Vector3D oberflaeche(sphere k, Ray r){                  //Oberflächenormale  
    Vector3D p1 = this.impact(r,k).minus(k.center());
    return p1.normalize();
  }
  
  float helligkeit(sphere k, Ray r){                       //Helligkeit
    return this.skalarprodukt(oberflaeche(k,r));
  }
}
