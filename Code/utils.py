Nucleotides = ["A","C","G","T"]

def validseq(seq):
    for nuc in seq:
        if nuc not in Nucleotides:
            return False
    return seq


print(validseq(["A"]))
