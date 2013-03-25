within ModelicaCompliance.Redeclare.Flattening;

model ReplaceableAsRedeclare
  extends Icons.TestCase;

  model A
    replaceable Real x;
  end A;

  A a(replaceable Real x = 2.0);

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true)),
    experiment(StopTime = 0.01),
    Documentation(
    info = "<html>Checks that the replaceable keyword automatically implies
      redeclare.</html>"));
end ReplaceableAsRedeclare;