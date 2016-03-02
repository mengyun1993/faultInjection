from op import *
from flawedOp import *
from resolver import *

class Board:
  """
  This aims to translate the .v file to something usable in the program.
  """
  
  def __init__(self, path, isFlawed = False):
    file = open(path, "r")
    inputs = ""
    outputs = ""
    wires = ""
    registers = ""
    line = ""
    self.ops = {}
    self.isFlawed = isFlawed
    
    while line.find("input ") < 0:
      line = file.readline()
    while line != "\n" and line.find("output ") < 0:
      inputs += line.strip()
      line = file.readline()
    #getting rid of input keyword and semicolon
    inputs = inputs[6:len(line)-2]
    self.inputs = inputs.split(",")
    if not self.isFlawed:
      print("inputs: ", self.inputs)

    while line.find("output ") < 0:
      line = file.readline()
    while line != "\n" and line.find("wire ") < 0:
      outputs += line.strip()
      line = file.readline()
    #getting rid of output keyword and semicolon
    outputs = outputs[7:len(line)-2]
    self.outputs = outputs.split(",")
    if not self.isFlawed:
      print("outputs: ", self.outputs)

##    while line.find("wire ") < 0:
##      line = file.readline()
##    while line != "\n":
##      wires += line.strip()
##      line = file.readline()
    #getting rid of wire keyword and semicolon
##      
##    wires = wires[5:len(line)-2]
##    self.wires = wires.split(",")
##    if not self.isFlawed:
##      print("wires: ", self.wires)    

    while line == "\n":
      line = file.readline()
      
    while line != "\n":
      info = line.split(" = ")     
      out = info[0][:]
      if (out not in self.outputs):
        if(out not in self.inputs):
          wires = wires + out + ","
      rightpart = info[1].split("(")
      which = rightpart[0][:]#NAND AND NOT OR DFF
      if which == "DFF":
        if (out != "") and (out not in self.outputs):
          registers = registers + out + ","
      ins = []
      rightop = rightpart[1][:-1].split(" ")
      for op in rightop[:]:
        ins.append(op[:-1])
        if (op[:-1] not in self.outputs) and (op[:-1] not in self.inputs):
            if op[:-1] != "":
              #self.wires.append(op[:-1])
              wires = wires + op[:-1] + ","
      
      self.wires = wires.split(",")[:-1]
      self.wires = list(set(self.wires))
      self.registers = registers.split(",")
      self.registers = list(set(self.registers))
      self.registers.remove('')
      
      for operand in ins:
       # print(operand)
        assert operand in self.wires or operand in self.inputs or operand in self.outputs
      assert out in self.wires or out in self.outputs
      if self.isFlawed:
        newOp = FlawedOp(which, ins)
      else:
        #print("which is :", which,"ins :", ins)
        newOp = Op(which, ins)
      self.ops[out] = newOp
      line = file.readline()

    if not self.isFlawed:
      print("wires: ", self.wires)
      print("registers: ", self.registers)
      print("# of registers:", len(self.registers))
      #print("ops: ",self.ops)
      
    if self.isFlawed:
      print()
