// Facilitate creation of a "Mall" like in factorio where all your essentials (conveyors, machines, redstone stuff) can be passive-produced
//This means that some intermediate products will be replaced or cut so automation of this equipment is easier.


<ore:rodIron>.remove(<tfc:metal/rod/wrought_iron>);
<ore:rodIron>.add(<mysticalmechanics:axle_iron>);
<ore:stickIron>.mirror(<ore:rodIron>);
<ore:rodWroughtIron>.mirror(<ore:rodIron>);