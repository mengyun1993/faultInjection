from board import *
from generator import *
from analyst import *
import flawedOp


class Supervisor:
    """
    This is the piloting class, it manages all the other module and is the top one.
    """

    def __init__(self, file, modifier = "00", q = 0.5, klim = [-1, -1]):
        """
        If modifier is '01', stuck-at-one is activated.
        If mofifier is '10', stuck-at-zero is activated.
        If modifier is '00', no stuck is activated.
        
        klim aim to delimitate the number of injected error
        klim must be formatted like [kmin, kmax]
        """
        #boards
        self.rBoard = Board(file)
        self.fBoard = Board(file, True)
        #constants
        self.N = len(self.rBoard.inputs) #input size
        self.P = len(self.rBoard.outputs) #output size
        self.M = FlawedOp.count #flawed nodes number
        #tools, ref and flaw
        self.rResolver = Resolver(self.rBoard)
        self.fResolver = Resolver(self.fBoard)
        self.rGenerator = Generator(self.N)
        self.fGenerator = Generator(self.M)
        #counts
        self.entryCount = 0
        self.errorCount = 0
        #the modifier
        self.modifier = modifier
        #the limits for errors
        self.limits = []
        if klim == [-1, -1]:
            self.limits = []
            self.limits.append(0)
            self.limits.append(self.M + 1)
            #self.limits.append(1)
        else:
            self.limits = klim
        #the analyst
        #self.analyst = Analyst(self.N, self.P, self.M, self.limits, q)

    def reset_resolver(self):
        self.rResolver.reset()
        self.fResolver.reset()
    def launch(self):
        self.rGenerator.reset()
        randomnum = input("\nPlease input number of combinations.\n")
        length = input("\Please input how long do you want to run?\n")
        self.randomnum = int(randomnum)
        self.length = int(length)
                
        self.launchNumberedErrors()

        
        
        #print(self.errorCount, " different errors considered")
        #print(self.entryCount, " combinations tested") 
        #print("The board reliability is ", self.analyst.compute())
    
    def launchNumberedErrors(self):
##        print ("selfi.limits0",self.limits[0])
##        print ("self.limits1",self.limits[1])
##        for k in range(self.limits[0], self.limits[1]):
##            self.launchNumberedErrorsCombinations(k)
        errorCount = input("\nPlease type the number of errorVectors you want to simulate \n\n>")
        self.errorCount = int(errorCount)
        singleError = raw_input("\nSingle fault or not? ")
        if singleError == "y":
            self.launchNumberedErrorsCombinations(1)
        else:
            self.launchNumberedErrorsCombinations(self.limits[1]-1)
        
    def launchNumberedErrorsCombinations(self, k):
        for i in range(self.errorCount):
            print("i = ", i ,"\n")
            self.fGenerator.reset()
            errorVector = self.fGenerator.randomError(k)
            self.launchEntriesCombinations(errorVector)
                        
        

    def launchEntriesCombinations(self, errorVector):
##
##                for self.entryCount in range(self.randomnum):
##                        self.reset_resolver()
##            for i in xrange(self.length):
##                entryVector = self.rGenerator.randomnext()
##                self.resolveAll(errorVector, entryVector, 1)

        for self.entryCount in range(self.randomnum):
            self.reset_resolver()
            for i in xrange(self.length):
                entryVector = self.rGenerator.randomnext()
                self.resolveAll(errorVector, entryVector, 1)
    
                
            
    def resolveAll(self, errorVector, entryVector, length = 1):
        #get input
        inputs = {}
        i = 0

        """
        print for test start
        """
        fin = open('inputdata.txt','a')
        ferror = open('inputerror.txt','a')
        """
        print for test end
        """
        
        for input in self.rBoard.inputs:
            inputs[input] = int(entryVector[i])
            i += 1

            fin.write(str(inputs[input]))
            fin.write(' ')
            ferror.write(str(inputs[input]))
            ferror.write(' ')
        
        #get reference output
        rvector = ""
        i = 0
        outputint = 0

        for i in range(length):
            rOutputs = self.rResolver.resolve(inputs)

        regValue = {}
        #print("length of regValue = ", len(regValue),"\n")
        for reg in self.rBoard.wires:
            regValue[reg] = self.rResolver.regsolve(reg,inputs)
##            print("reg:",reg,"regValue:",regValue[reg],"\n") #20160302 test
        #for regv in regValue:
        for regv in self.rBoard.registers:
            fin.write(str(regValue[regv]))
            fin.write(' ')

        #fright = open('right.txt','a')
        i = 0
        for rOutput in rOutputs:
            rvector += str(rOutputs[rOutput])
            outputint += (int(rOutputs[rOutput]))*(2**i)
            i+=1
            fin.write(str(rOutputs[rOutput]))
            fin.write(' ')
        #fin.write(str(outputint+1))
        fin.write('\n')
        fin.close
		
		#get flawed output
        fvector = ""
        for i in range(length):
			fOutputs = self.fResolver.resolve(inputs, errorVector, self.modifier)
        regError = {}
        for reg in self.fBoard.registers:
            regError[reg] = self.fResolver.regsolve(reg, inputs, errorVector, self.modifier)
        for regv in self.fBoard.registers:
            ferror.write(str(regError[regv]))
            ferror.write(' ')
            
        for fOutput in fOutputs:
            ferror.write(str(fOutputs[fOutput]))
            ferror.write(' ')
##			fvector += str(fOutputs[fOutput])
##		ferror.write(fvector)
        ferror.write('\n')
        ferror.close

		#register it to the analyser
		#self.analyst.push(errorVector, entryVector, rvector, fvector)

