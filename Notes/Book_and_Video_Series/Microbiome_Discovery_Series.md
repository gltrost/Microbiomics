# Notes to Microbiome Discovery by Dan Knight

## Term abbreviations:

- PCA: Polymerase Chain Reaction
- Mb: Microbiome
- OTU: Operational Taxonomic Unit
- PD: Phylogenetic Diversity

- First video can be found here: https://www.youtube.com/watch?v=6564K4-_DBI&list=PLOPiWVjg6aTzsA53N19YqJQeZpSCH9QPc&index=2&ab_channel=DanKnights

# 1: Intro to the Microbiome

- Hacking the Mb : Changing the Microbiome for own health-benefit.
- Gut contains many different species
- ~10x more cells in Mb than human cells
- ~100x genes
- ~1000 different species
- Major question: What does it mean when we use antibiotics long-term?
- Monoculture Mb : An unhealthy monoculture in the gut
- Dysbiosis : Imbalance in gut Mb community, linked to obesity, diabetes, HIV,
cancers, autoimmune diseases
- Sequencing cost has been going down every year exponentially, opening up
new avenues for study
- **Major question**: Given a sequence file, what genes and species are there? Then,
can we say if the Mb is healthy or not?
- Biomarker Discovery: Looking for fingerprint that marks a persons Mb as
having a certain disease.

# 2: How microbiome data are generated
- Mb discovered by Van Leeuwenhoek centuries ago
- How to we go from Mb community to DNA?:
  - Shotgun sequencing : Taking a bunch of jigsaw puzzles, throwing away the lid
and then trying to figure out which pieces go together
  - Sequence only single common gene: Taking bottom right-hand corners of each
puzzle (gene) as starting points. For genes, this is 16rRNA
  - rRNA : Converts RNA into proteins
- Bacteria vs Eucarya vs Archaea
- PCA used as well to
- How we get data today:
  - Swab with q-tip
  - Extract/Amplify with PCA the marker genes
  - Sequence genes
- People have done enough sequencing on Mb already that we can "have the lids
of the puzzle boxes at hand"
- Data-Tables: row=people, column=species,genes,functions(1000-10000 columns)

# 3: 16S Variable Regions
- Central Dogma: DNA -> RNA* -> Protein (not a strong rule anymore)
- Shotgun Sequencing (mixing puzzle pieces together)
- 16S(vedberg) rRNA is something we all have
  - They never get translated
  - Strong secondary structure
  - Collapses on itself, since it's a palindrome
- Different areas of DNA will vary from varying to conserved
  - V1, V2, ... V9
- Operational Taxonomic Unit (OTU)

# 4 and 4.5 skipped

# 5: Picking OTU's
- De Novo: Creating clusters with no previous reference to clusters
- Closed Reference: Using pre-created reference table on how to cluster things
- Open Reference: Hybrid: If in reference, put in expected group. Else, do De Novo
- Centroid-Based Picking: For picked centroid, all things in cluster iff within
 some epsilon radius.
- Single-Linkage Cluster: Just need to be near one friend to be in cluster
- Complete-Linkage Cluster: Everything must be near everything upto epsilon.
- Average-Linkage Cluster: Average of all group elements average out to <epsilon radius.
- De Novo Pros/Cons:
  - Pros: Allows use of all data-points, and good for brand new contexts
  - Cons: Doesn't generalize well and not parallelizable.
- UCLUST: Greedy De Novo Alg.
- k-mer overlaps: If two polymers are equal then +1, else +0. Then find ratio for many
polymers.
- CD-Hit: UCLUT without k-mer mapping
- SUMACLUST: UCLUST but with exact alignment instead of k-mer matching,
and slower than UCLUST
- Mothur: Uses pairwise distances between sequences (and is thus slower)
- SWARM: ...
**Human Mb OTU Picking almost always uses Reference-Based Approach**

# 6: Assigning Taxonomy
- Common primers: HMP
  - V35 : 357F (V3 primer) to 926R(esidue) (V5 primer)
  - V14 : 27F (V1 primer) to 534R (V3 primer)
- All v1-v3 and v3-v5 data can be found on hmpdacc.org
- v1-v3 or v3-v5 can have dramatically different results,
so be really careful when combining data
- Baye's Rule: P(C|X) = P(X|C)P(C)/P(X)
- a.k.a: Posterior = Likelihood*prior/total
- In Machine Learning:  

# 7: Alpha-Diversity
- Alpha-diversity: Variance within a community
- Beta-diversity: Variance between different communities
- Ways of measuring alpha-diversity:
  - Simply count the number of species
    - Drawbacks: Knowing how to define a species is hard and we can't tell
      how similar species are
  - A better way is to measure how many OTU's there are
  - Phylogenetic diversity (PD): Measure the branch length
  - Chao1 Estimator: S_1 = S_obs + (F1^2 / 2*F_2) where
    - S_obs = # obs spec, F1 = # of species obs once, F2 = # obs spec


#8-23: To Be Completed
