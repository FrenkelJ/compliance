within ModelicaCompliance.Redeclare.Flattening;

model InheritanceProtectedComp
  extends Icons.TestCase;

  model A
  protected
    replaceable Real x = 2.0;
  end A;

  model B
    extends A(redeclare Real x);
  end B;

  B b;
  Real y = b.x;

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = false, section = {"7.3"})),
    experiment(StopTime = 0.01),
    Documentation(
    info = "<html>Checks that the protected prefix of the original declaration
      is inherited by the new declaration. Accessing b.x should in that case be
      illegal, since protected components may not be accessed by dot notation.</html>"));
end InheritanceProtectedComp;
