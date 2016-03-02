class Analyst:
  """
  This class takes the computation results and yield a conclusion on the reliability of the analysed board.
  """
  
  def __init__(self, N, P, M, klim, q = 0.5, p = -1):
    """
    N: number of input bits
    P: number of output bits
    M: number of flawed gates
    klim: the minimum and maximum of simultaneous flaws
    q: reliability of a gate (0<q<1) (1/2 by default)
    p: probability of apparition of a bit (1/(2**N) by default)
    """
    assert N > 0
    assert P > 0
    assert M > 0
    self.N = N
    self.P = P
    self.M = M
    self.klim = klim
    self.q = q
    self.p = 1/(2**N) if p == -1 else p
    #this is a dictionnary for each output, in which each value is a dictionnary for each value of k
    self.coeffsPerOutput = {}
    for i in range(self.P):
      self.coeffsPerOutput[str(i)] = {}
      for j in range(klim[0], klim[1]):
        self.coeffsPerOutput[str(i)][str(j)] = 0

  def push(self, errorVector, entryVector, rvector, fvector):
    """
    This aim to keep tabs on the results and store them to assess the reliability.
    """
    #current k
    k = errorVector.count('1')
    #add the result of this entry to each output 
    for i in range(self.P):
      res = int(rvector[i]) ^ int(fvector[i]) #xor
      res = 0 if res == 1 else 1 #not
      res = res * self.p #the probability for this entry to happen
      self.coeffsPerOutput[str(i)][str(k)] += res
      
  def compute(self):
    """
    This takes the recorded results and build up the final output.
    There's one 
    """
    res = {}
    finalRes = 1
    for i in range(self.P):
      res[str(i)] = 0
      for j in range(self.klim[0], self.klim[1]):
        res[str(i)] += self.coeffsPerOutput[str(i)][str(j)] * ((1-self.q)**j) * (self.q**(self.M-j))
    for i in range(self.P):
      finalRes *= res[str(i)]
    return finalRes

  def printRegValue(self):
    """
    This aim to print the right and fault value of each mid register
    """
    return 0
