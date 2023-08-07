void main() {

  if(Shape is Circle)
  {

  }
  else if (Shape is Square)
   {
    
  }
  else if (Shape is Rectangle)
   {
    
  }
}

abstract class Shape {
  areaCalculate()
  {

  }
}

class Circle implements Shape {
  @override
  areaCalculate() {
    return "area of circle";
  }
}


class Square implements Shape {
  @override
  areaCalculate() {
    return "area of circle";
  }
}


class Rectangle extends Shape
{

}