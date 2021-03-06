within ModelicaCompliance.Arrays.Functions.Size;

model ArrayDimSize2
  extends Icons.TestCase;

  parameter Real[4, 1, 6] x = fill(1., 4, 1, 6);
  parameter Real dimsize = size(x, 1);
equation
  assert(Util.compareReal(dimsize, 4.0), "The value of dimsize should be 4.0");  
  
  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true, section = {"10.3.1"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests the size builtin function for array that returns the size of dimension of array expression.</html>"));
end ArrayDimSize2;
