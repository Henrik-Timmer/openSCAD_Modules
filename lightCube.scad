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

module lightCube(size = [1,1,1],r = 2){
    s = 0.4;
difference(){
    cube(size);
    translate([0,0,0])cutOut(size[0],size[1],size[2] ,r = 1,s = s);
    
}
difference(){
    cube(size);
    translate([r,r,0])cube([size[0] - (2 * r),size[1] - (2 * r),size[2]]);
}
}

lightCube([20,10,10],0.8);
//cutOut(10,10,10,0.4);