within INFRAX.Data.Constructions;
record ConcreteWall "INFRAX reinforced concrete walls"
  extends IDEAS.Buildings.Data.Interfaces.Construction(
    nLay(min=1)=size(mats,1),
    incLastLay = IDEAS.Types.Tilt.Wall,
    mats={Data.Materials.Concrete(            d=0.2)});
annotation (Documentation(info="<html>
<p>
Example implementation of a Thermally Activated Building System.
</p>
<ul>
<li>
November 14, 2016, by Filip Jorissen:<br/>
Revised implementation: removed insulationType.
</li>
</ul>
</html>"));
end ConcreteWall;