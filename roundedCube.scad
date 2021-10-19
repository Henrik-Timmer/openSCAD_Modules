
module roundedCube(size = [1,1,1],cornerRadius = 3){
    width = size[0];
    depth = size[1];
    height = size[2];

 translate([0,cornerRadius,0])cube([width,depth - (cornerRadius * 2),height]);
    translate([cornerRadius,0,0])cube([width - (cornerRadius * 2),depth,height]);
    x = width - (cornerRadius * 2);
     y = depth - (cornerRadius * 2);
    
    for (i = [0:1]){
    for (l = [0:1]){
    translate([x * i + cornerRadius,y * l + cornerRadius,0])cylinder(h = height,r = cornerRadius,$fn = 60);
        }
        }
    

}
roundedCube([40,30,10],5);