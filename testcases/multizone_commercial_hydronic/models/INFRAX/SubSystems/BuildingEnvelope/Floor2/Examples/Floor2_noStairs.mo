within INFRAX.SubSystems.BuildingEnvelope.Floor2.Examples;
model Floor2_noStairs
  import INFRAX;

  IDEAS.Buildings.Components.OuterWall[6] flo(
    inc=IDEAS.Types.Tilt.Floor,
    azi=0,
    redeclare each IDEAS.Buildings.Validation.Data.Constructions.HeavyFloor
      constructionType,
    A=str2ndFlr.A_2ndFlr[1:6])
                              annotation (Placement(transformation(
        extent={{-6,-10},{6,10}},
        rotation=90,
        origin={2,-50})));

  INFRAX.Data.Parameters.Str2ndFlr str2ndFlr
    annotation (Placement(transformation(extent={{80,-100},{100,-80}})));
  inner IDEAS.BoundaryConditions.SimInfoManager sim(
    incAndAziInBus={{IDEAS.Types.Tilt.Floor,0},{IDEAS.Types.Tilt.Ceiling,0},{
        IDEAS.Types.Tilt.Wall,0},{IDEAS.Types.Tilt.Wall,INFRAX.Data.Orientations.E},
        {IDEAS.Types.Tilt.Wall,INFRAX.Data.Orientations.W},{IDEAS.Types.Tilt.Wall,
        INFRAX.Data.Orientations.N}},
    nWindow=5,
    nLayWin=3) "Data reader"
    annotation (Placement(transformation(extent={{-100,80},{-80,100}})));

  IDEAS.Buildings.Components.OuterWall[6] cei(
    azi=0,
    inc=IDEAS.Types.Tilt.Ceiling,
    redeclare each IDEAS.Examples.PPD12.Data.FloorAttic constructionType,
    A=str2ndFlr.A_2ndFlr[1:6]) annotation (Placement(transformation(
        extent={{6,-10},{-6,10}},
        rotation=90,
        origin={2,62})));

  Deprecated.Subsystems.Floors.Floor2_withMTRs floor2_NoStairs
    annotation (Placement(transformation(extent={{-14,0},{14,20}})));
equation
  connect(floor2_NoStairs.cei, cei.propsBus_a) annotation (Line(
      points={{0,20},{0,57},{0,57}},
      color={255,204,51},
      thickness=0.5));
  connect(floor2_NoStairs.flo, flo.propsBus_a) annotation (Line(
      points={{0,0},{0,-45},{0,-45}},
      color={255,204,51},
      thickness=0.5));
  annotation (Icon(coordinateSystem(preserveAspectRatio=false), graphics={
        Ellipse(lineColor = {75,138,73},
                fillColor={255,255,255},
                fillPattern = FillPattern.Solid,
                extent = {{-100,-100},{100,100}}),
        Polygon(lineColor = {0,0,255},
                fillColor = {75,138,73},
                pattern = LinePattern.None,
                fillPattern = FillPattern.Solid,
                points = {{-36,60},{64,0},{-36,-60},{-36,60}})}),Diagram(
        coordinateSystem(preserveAspectRatio=false)));
end Floor2_noStairs;