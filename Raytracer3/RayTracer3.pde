void setup()
{
  size(1024,568);
  background(0);
  Vector3D location = new Vector3D(width/2,height/2,500);
  sphere gsphere = new sphere(location,100); //erzeugt eine Kugel
  light gLight = new light(0,1,-0.5);      // erzeugt das Licht
  
  for(int i=0;i<width;i++){
    for(int j=0;j<height;j++){
      Ray ray = new Ray(i,j,0);          //erzeugt den Strahl
      if(ray.hits(gsphere))
        set(i,j,color(255*gLight.helligkeit(gsphere,ray)));
        
    }
  }
}

void draw()
{
  
}