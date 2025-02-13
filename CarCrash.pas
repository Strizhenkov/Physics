uses Graph3D; 

const speed = 4;
const dist = 50;
const safe_level = 1; // 0 - без всего
                      // 1 - только ремень безопасности
                      // 2 - ремень и подушка безопасности

begin
  View3D.ShowGridLines := False;
  Camera.Position := P3D(60,25,25);
  
  if safe_level = 2 then begin
    var b1 := Box(0, 0, 1, 6, 2, 1, Colors.Black);
    var b2 := Box(2, 0.875, 2.5, 2, 0.25, 2, Colors.Red);
    var b3 := Box(2, -0.875, 2.5, 2, 0.25, 2, Colors.Red);
    var b4 := Box(2.875, 0, 2, 0.25, 1.5, 1, Colors.Blue);
    var b5 := Box(1.125, 0, 2.5, 0.25, 1.5, 2, Colors.Blue);
    var b6 := Box(2, 0, 3.5625, 2, 2, 0.125, Colors.Red);
    var s1 := Sphere(1.75, 0, 3.25, 0.25, Colors.Brown);
    var b7 := Box(1.75, 0, 2.5, 0.4, 0.4, 1, Colors.Brown);
    var block := Box(dist + 4, 0, 1, 2, 2, 2);
    var c1 := Prism(1.5, 1, 1, 10, 0.5, 1, Colors.White).Rotate(OrtX,-90);
    var c2 := Prism(-1.5, 1, 1, 10, 0.5, 1, Colors.White).Rotate(OrtX,-90);
    var c3 := Prism(1.5, -1, 1, 10, 0.5, 1, Colors.White).Rotate(OrtX,90);
    var c4 := Prism(-1.5, -1, 1, 10, 0.5, 1, Colors.White).Rotate(OrtX,90);
    var t1 := Torus(1.75, 0, 2.75, 0.55, 0.1, Colors.Black);
    var car := Group(b1,b2,b3,b4,b5,b6,s1,b7,t1,c1,c2,c3,c4);
    var ac := car.AnimMoveByX(dist,dist/speed);
    var a1 := c1.AnimRotate(OrtZ,dist*360/2/Pi,dist/speed);
    var a2 := c2.AnimRotate(OrtZ,dist*360/2/Pi,dist/speed);
    var a3 := c3.AnimRotate(OrtZ,dist*-360/2/Pi,dist/speed);
    var a4 := c4.AnimRotate(OrtZ,dist*-360/2/Pi,dist/speed);
    var a := ac*a1*a2*a3*a4;
    a.Begin;
    sleep(round(dist/speed*1000));
    if speed >= 5 then begin
      var e1 := Ellipsoid(dist+2.6, 0, 2.5, 0.25, 0.5, 0.25, Colors.White);
      var driver := Group(t1,s1,b7);
      driver.MoveTo(dist-1,0,2);
      var p := driver.AnimRotate(OrtY,45,0.1);
      p.Begin;
    end;  
  end;
  
  if safe_level = 1 then begin
    var b1 := Box(0, 0, 1, 6, 2, 1, Colors.Black);
    var b2 := Box(2, 0.875, 2.5, 2, 0.25, 2, Colors.Red);
    var b3 := Box(2, -0.875, 2.5, 2, 0.25, 2, Colors.Red);
    var b4 := Box(2.875, 0, 2, 0.25, 1.5, 1, Colors.Blue);
    var b5 := Box(1.125, 0, 2.5, 0.25, 1.5, 2, Colors.Blue);
    var b6 := Box(2, 0, 3.5625, 2, 2, 0.125, Colors.Red);
    var s1 := Sphere(1.75, 0, 3.25, 0.25, Colors.Brown);
    var b7 := Box(1.75, 0, 2.5, 0.4, 0.4, 1, Colors.Brown);
    var block := Box(dist + 4, 0, 1, 2, 2, 2);
    var c1 := Prism(1.5, 1, 1, 10, 0.5, 1, Colors.White).Rotate(OrtX,-90);
    var c2 := Prism(-1.5, 1, 1, 10, 0.5, 1, Colors.White).Rotate(OrtX,-90);
    var c3 := Prism(1.5, -1, 1, 10, 0.5, 1, Colors.White).Rotate(OrtX,90);
    var c4 := Prism(-1.5, -1, 1, 10, 0.5, 1, Colors.White).Rotate(OrtX,90);
    var t1 := Torus(1.75, 0, 2.75, 0.55, 0.1, Colors.Black);
    var car := Group(b1,b2,b3,b4,b5,b6,s1,b7,t1,c1,c2,c3,c4);
    var ac := car.AnimMoveByX(dist,dist/speed);
    var a1 := c1.AnimRotate(OrtZ,dist*360/2/Pi,dist/speed);
    var a2 := c2.AnimRotate(OrtZ,dist*360/2/Pi,dist/speed);
    var a3 := c3.AnimRotate(OrtZ,dist*-360/2/Pi,dist/speed);
    var a4 := c4.AnimRotate(OrtZ,dist*-360/2/Pi,dist/speed);
    var a := ac*a1*a2*a3*a4;
    a.Begin;
    if (speed >= 5) and (speed < 17) then begin
      sleep(round(dist/speed*1000)); 
      var driver := Group(t1,s1,b7);
      driver.MoveTo(dist-1,0,2);
      var p := driver.AnimRotate(OrtY,45,0.1);
      p.Begin;
    end
    else if speed > 17 then begin
      sleep(round(dist/speed*1000));
      var driver := Group(t1,s1,b7);
      driver.MoveTo(dist+1,0,4);
      var p := driver.AnimRotate(OrtY,90,0.1);
      p.Begin;
    end;
  end
  
  else if safe_level = 0 then begin
    var b1 := Box(0, 0, 1, 6, 2, 1, Colors.Black);
    var b2 := Box(2, 0.875, 2.5, 2, 0.25, 2, Colors.Red);
    var b3 := Box(2, -0.875, 2.5, 2, 0.25, 2, Colors.Red);
    var b4 := Box(2.875, 0, 2, 0.25, 1.5, 1, Colors.Blue);
    var b5 := Box(1.125, 0, 2.5, 0.25, 1.5, 2, Colors.Blue);
    var b6 := Box(2, 0, 3.5625, 2, 2, 0.125, Colors.Red);
    var s1 := Sphere(1.75, 0, 3.25, 0.25, Colors.Brown);
    var b7 := Box(1.75, 0, 2.5, 0.4, 0.4, 1, Colors.Brown);
    var block := Box(dist + 4, 0, 1, 2, 2, 2);
    var c1 := Prism(1.5, 1, 1, 10, 0.5, 1, Colors.White).Rotate(OrtX,-90);
    var c2 := Prism(-1.5, 1, 1, 10, 0.5, 1, Colors.White).Rotate(OrtX,-90);
    var c3 := Prism(1.5, -1, 1, 10, 0.5, 1, Colors.White).Rotate(OrtX,90);
    var c4 := Prism(-1.5, -1, 1, 10, 0.5, 1, Colors.White).Rotate(OrtX,90);
    var car := Group(b1,b2,b3,b4,b5,b6,s1,b7,c1,c2,c3,c4);
    var ac := car.AnimMoveByX(dist,dist/speed);
    var a1 := c1.AnimRotate(OrtZ,dist*360/2/Pi,dist/speed);
    var a2 := c2.AnimRotate(OrtZ,dist*360/2/Pi,dist/speed);
    var a3 := c3.AnimRotate(OrtZ,dist*-360/2/Pi,dist/speed);
    var a4 := c4.AnimRotate(OrtZ,dist*-360/2/Pi,dist/speed);
    var a := ac*a1*a2*a3*a4;
    a.Begin;
    if speed < 5 then begin
      sleep(round(dist/speed*1000)); 
      var driver := Group(s1,b7);
      driver.MoveTo(dist-1,0,2);
      var p := driver.AnimRotate(OrtY,45,0.1);
      p.Begin;
    end
    else if (speed >= 5) and (speed <= 17) then begin
      sleep(round(dist/speed*1000));
      var driver := Group(s1,b7);
      driver.MoveTo(dist+1,0,4);
      var p := driver.AnimRotate(OrtY,90,0.1);
      p.Begin;
    end
    else if speed > 17 then begin
      sleep(round(dist/speed*1000));
      var driver := Group(s1,b7);
      driver.MoveTo(dist+1,0,2);
      var p1 := driver.AnimRotate(OrtY,90,0.5);
      var p2 := driver.AnimMoveByX(speed/5,0.5);
      var p := p1*p2;
      p.Begin;
    end;
  end;
  
end.