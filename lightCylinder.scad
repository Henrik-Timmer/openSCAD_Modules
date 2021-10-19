module cutOut(x = 1,y = 1,z = 1,r = 1,s = 0.1){
x = x;
y = x;
z = x;
 d = 2 * r;
for (i = [1:x / (d + s)]){
    for (l = [1:y/ (d + s)]){
translate([i * (d + s) - 0.5 + (l % 2 * (r + s)) - 1,l * (d + s) - 1,0])rotate([0,0,l % 2 * 90])cylinder(h = z,r = r,$fn = 6);
}}
}

module lightCylinder(h = 10,r = 1,b = 2){
    s = 0.4;
difference(){
    cylinder(h = h,r = r);
    translate([-r,-r,0])cutOut(2 * r,2 * r,h,r = 1,s = s);
    
}
difference(){
    cylinder(h = h,r = r);
    translate([0,0,0]) cylinder(h = h,r = r - b);
}
}

lightCylinder(10,10,0.8);