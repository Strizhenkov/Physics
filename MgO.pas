uses Graph3D;

const Models_size = 1;

  //Красные шары - O
  //Серые шары - Mg
  //Заряд = 1,6021766208(98)⋅10⁻¹⁹ Кл
  //Постоянная решетки (нанометры 1⁻⁹) 4.212(нм)
  //Ионы Mg = 2+ (160*10^−12м)
  //Ионы O = 2- (60*10^−12м)
  //Сила взаимодействия между ионами и энергия по закону Кулона:
  //F=(|q1|*|q2|)/(4*pi*r^2*ε0)
  //(ε0 - абсолютная диэлектрическая проницаемость среды равна 8,85*10^-12Кл^2/H*м^2)
  //E=F/ε (ε - диэлектрическая проницаемость среды)
  
begin
  View3D.ShowGridLines := False;
  
  
  
  var s11 := Sphere(1,1,1,Models_size,Colors.DarkGray);
  var s12 := Sphere(3,1,1,Models_size/2,Colors.Red);
  var s13 := Sphere(5,1,1,Models_size,Colors.DarkGray);
  var s14 := Sphere(1,3,1,Models_size/2,Colors.Red);
  var s15 := Sphere(3,3,1,Models_size,Colors.DarkGray);
  var s16 := Sphere(5,3,1,Models_size/2,Colors.Red);
  var s17 := Sphere(1,5,1,Models_size,Colors.DarkGray);
  var s18 := Sphere(3,5,1,Models_size/2,Colors.Red);
  var s19 := Sphere(5,5,1,Models_size,Colors.DarkGray);
  
  var s21 := Sphere(1,1,3,Models_size/2,Colors.Red);
  var s22 := Sphere(3,1,3,Models_size,Colors.DarkGray);
  var s23 := Sphere(5,1,3,Models_size/2,Colors.Red);
  var s24 := Sphere(1,3,3,Models_size,Colors.DarkGray);
  var s25 := Sphere(3,3,3,Models_size/2,Colors.Red);
  var s26 := Sphere(5,3,3,Models_size,Colors.DarkGray);
  var s27 := Sphere(1,5,3,Models_size/2,Colors.Red);
  var s28 := Sphere(3,5,3,Models_size,Colors.DarkGray);
  var s29 := Sphere(5,5,3,Models_size/2,Colors.Red);
  
  var s31 := Sphere(1,1,5,Models_size,Colors.DarkGray);
  var s32 := Sphere(3,1,5,Models_size/2,Colors.Red);
  var s33 := Sphere(5,1,5,Models_size,Colors.DarkGray);
  var s34 := Sphere(1,3,5,Models_size/2,Colors.Red);
  var s35 := Sphere(3,3,5,Models_size,Colors.DarkGray);
  var s36 := Sphere(5,3,5,Models_size/2,Colors.Red);
  var s37 := Sphere(1,5,5,Models_size,Colors.DarkGray);
  var s38 := Sphere(3,5,5,Models_size/2,Colors.Red);
  var s39 := Sphere(5,5,5,Models_size,Colors.DarkGray);
  
  var t11 := tube(1, 1, 1, 4, 0.1, 0.01, Colors.DarkGray);
  var t12 := tube(1, 3, 1, 4, 0.1, 0.01, Colors.DarkGray);
  var t13 := tube(1, 5, 1, 4, 0.1, 0.01, Colors.DarkGray);
  var t14 := tube(3, 1, 1, 4, 0.1, 0.01, Colors.DarkGray);
  var t15 := tube(3, 3, 1, 4, 0.1, 0.01, Colors.DarkGray);
  var t16 := tube(3, 5, 1, 4, 0.1, 0.01, Colors.DarkGray);
  var t17 := tube(5, 1, 1, 4, 0.1, 0.01, Colors.DarkGray);
  var t18 := tube(5, 3, 1, 4, 0.1, 0.01, Colors.DarkGray);
  var t19 := tube(5, 5, 1, 4, 0.1, 0.01, Colors.DarkGray);
  
  var t21 := tube(1, 1, 1, 4, 0.1, 0.01, Colors.DarkGray);
  t21.Rotate(OrtY,90);
  var t22 := tube(1, 3, 1, 4, 0.1, 0.01, Colors.DarkGray);
  t22.Rotate(OrtY,90);
  var t23 := tube(1, 5, 1, 4, 0.1, 0.01, Colors.DarkGray);
  t23.Rotate(OrtY,90);
  var t24 := tube(1, 1, 3, 4, 0.1, 0.01, Colors.DarkGray);
  t24.Rotate(OrtY,90);
  var t25 := tube(1, 3, 3, 4, 0.1, 0.01, Colors.DarkGray);
  t25.Rotate(OrtY,90);
  var t26 := tube(1, 5, 3, 4, 0.1, 0.01, Colors.DarkGray);
  t26.Rotate(OrtY,90);
  var t27 := tube(1, 1, 5, 4, 0.1, 0.01, Colors.DarkGray);
  t27.Rotate(OrtY,90);
  var t28 := tube(1, 3, 5, 4, 0.1, 0.01, Colors.DarkGray);
  t28.Rotate(OrtY,90);
  var t29 := tube(1, 5, 5, 4, 0.1, 0.01, Colors.DarkGray);
  t29.Rotate(OrtY,90);
  
  var t31 := tube(1, 1, 1, 4, 0.1, 0.01, Colors.DarkGray);
  t31.Rotate(OrtX,270);
  var t32 := tube(3, 1, 1, 4, 0.1, 0.01, Colors.DarkGray);
  t32.Rotate(OrtX,270);
  var t33 := tube(5, 1, 1, 4, 0.1, 0.01, Colors.DarkGray);
  t33.Rotate(OrtX,270);
  var t34 := tube(1, 1, 3, 4, 0.1, 0.01, Colors.DarkGray);
  t34.Rotate(OrtX,270);
  var t35 := tube(3, 1, 3, 4, 0.1, 0.01, Colors.DarkGray);
  t35.Rotate(OrtX,270);
  var t36 := tube(5, 1, 3, 4, 0.1, 0.01, Colors.DarkGray);
  t36.Rotate(OrtX,270);
  var t37 := tube(1, 1, 5, 4, 0.1, 0.01, Colors.DarkGray);
  t37.Rotate(OrtX,270);
  var t38 := tube(3, 1, 5, 4, 0.1, 0.01, Colors.DarkGray);
  t38.Rotate(OrtX,270);
  var t39 := tube(5, 1, 5, 4, 0.1, 0.01, Colors.DarkGray);
  t39.Rotate(OrtX,270);
end.