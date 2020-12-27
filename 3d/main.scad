$fn=30;
_h=1.5;_y=55.0;_x=87.0;
difference(){
    union(){
        _r1=6; _r2=13;
        translate([(_r1+_r2)*2/3,0,0])cube([_x-(_r1+_r2),_y,_h]);
        translate([_r2,_r1,0])cube([_x-_r2,_y-(_r1*2),_h]);
        translate([0,_r2,0])cube([_x-_r1*2,_y-_r2*2,_h]);

        translate([_x-_r1,_r1,0])cylinder(r=_r1, h=_h);
        translate([_x-_r1,_y-_r1,0])cylinder(r=_r1, h=_h);
        translate([_r2,_r2,0])cylinder(r=_r2, h=_h);
        translate([_r2,_y-_r2,0])cylinder(r=_r2, h=_h);
    }
    
    translate([_x-36.0,_y-13.0,_h/2])
        cube([7.62,13,_h+1],center=true);
    
    translate([_x-(36.0-1.5),13.0,_h/2])
        cube([7.62,13,_h+1],center=true);
    
    x1=6;y1=6.5;y2=_y-y1;
    x2=_x-15;y3=3.25;y4=_y-y3;
    translate([x1,y1,0])cylinder(r=1.75,h=5);
    translate([x1,y2,0])cylinder(r=1.75,h=5);
    translate([x2,y3,0])cylinder(r=1.75,h=5);
    translate([x2,y4,0])cylinder(r=1.75,h=5);

}

