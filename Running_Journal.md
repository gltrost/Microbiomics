# Microbiomics Running Journal

## Mutable Introduction
No, this is not a journal about my cardio-exercises. 
This journal is to show my changing and developing thoughts with respect to my microbiomics project. 
The idea of this markdown file is to keep a record of my general knowledge, questions, and hypotheses which are bound to change and grow as the project develops. 
This journal is meant to be updated at least once every few weeks.

## 12/16/2020: Lost in the Woods
The first and only info I had read on biology coming into this project was
a bioinformatics textbook chapter for a primer on molecular biology.
As I work through papers now, 
I notice I'm regularly lost on the motivation for various things. 
For example, what the heck is gene ontology? 
What are pathways? 
I feel I have to look up new information about once every two paragraphs.
This isn't a bad thing necesarily.
At least I have all these new concepts being thrown at me, 
as opposed for me not knowing they're there. 

More problematically is that my statistics is lacking.
It's been a while since my college stats class,
and I feel I really need to go back and refresh myself on basic 
definitions before moving to fast. 
This will also help with machine learning down the line.

Another thing I noticed is that a lot of the information I'm replicating
can be found on Enrichr with just a couple of easy clicks. 
For example, if I want to know the pathways (a system of proteins
interacting to manifest or cause some disease) can be found by 
going to Enrichr, clicking `Term search`, typing in `celiac` , pressing
one of the links in `Diseases/drugs` , following the link, and 
then pressing `Pathways`! 
Enrichr looks like a great tool for analyzing Celiac Disease 
and what a lot of bioinformatics looks like. 
My choice now is whether to just keeping using the site to its 
full potential or to try to recreate some of its utilites. 

![Coeliac pathways](https://github.com/gltrost/Microbiomics/Images/coeliac_pathways.png)


## 12/10/2020: Almost-Galois Connections
I'm starting to notice some bugs in my Venn diagram.
The diagram I created didn't line up perfectly with one I was using as a template, 
which I thought was find until I started on the next section of the paper today.
My next step was to take genes of the intersection of the Venn diagram 
and find out which diseases correlated strongest with that list. This was simple:
I would go on Enrichr, enter in the gene-list and see the disease that were most strongly correlated.
Enrichr would show me the strongest correlated diseases for different databases like OMIM and DisGeNET.

The issue was that the diseases that were most strongly correlated to my genes were not always Coeliac Disease.
While trying different implementations of my diagram,
I could get Coeliac disease to show up anywhere from the most strongly correlated disease
to not even in the top 10 for a given database. 
Is there a way to be more consistent with my findings, or was this the best I could do?
I will be exploring that more this week.

But I have more questions: Why are we taking the intersetion necessarily? 
Why not take a bi-intersection union,
like for `{A,B,C}` find `(A n B) U (C n A) U (B n C)` ? 
Not all genes necesarily correlate to a disease at equal weights. 
Why not take that into consideration?

I was able to create a table of the top 10 diseases related to Coeliac with respect to OMIM
using my results from the Venn diagram.

![OMIM table](https://github.com/gltrost/Microbiomics/Images/OMIM_table.png)


## 12/6/2020: Venn-Diagram A Success, and on to Next Task
Recreating the Venn diagram from my sources is complete, 
and it got me familar with .csv-manipulation in R as well as getting familiar with open-source human genome databases. 
The results I created were not a perfect match with my source since I decided to use different databases. 
I will continue to recreate the papers' findings one-by-one.

![Venn Diagram](https://github.com/gltrost/Microbiomics/Code/utils/venn_diagram.png)

## 12/4/2020: An Idea for an Area, and My Baby-Steps to Manifesting the Idea
One non-trivial aspect of starting a project is understanding how broad of area you want to study. 
Usually, you find an area you like, 
and then telescope in until you find a niche enough sub-area that looks manageable. 
You can then either go more nuanced if the sub-area is still too broad 
or zoom out if you've gathered enough results on the sub-area 
and want to apply your findings or generalize your findings.

My telescoped idea within microbiomics is the relation between Coeliac disease (CD) and cephalgia (migraines). 
Since I'm still inexperienced in bioinformatics, I will use the articles

1. *Deciphering crucial genes in coeliac disease by bioinformatics analysis* by Noori, et. al, from *Briefings in Bioinformatics*
2. *Bioinformatics methodologies for coeliac disease and its comorbidities* by Del Prete, et. al, from *Autoimmunity*

I'm being lazy with my citation format. 
My goal will be to reproduce some of the results found in these articles. 
For example, Del Prete, et. al were able to produce a Venn diagram for CD genes, 
which they were able to reproduce from various databases [105]. 
My small goal is to reproduce their findings for this specific Venn diagram. Depending on how that goes, 
I will either zero in and try to better the Venn diagram results if needed or zoom out if I think I can't realistically do better. 
I will then rinse and repeat the process for the above articles. 
I won't be publishing the articles' information for copyright reasons.

![How Do I Cite a Journal?](https://github.com/gltrost/Microbiomics/blob/main/Images/JournalCiting.png)

## 11/25/2020: Searching For Ideas
I am trying to find a specific project in microbiomics that can be tackled with bioinformatics and systems-biology. 
I will continue my search until I find a reasonable question I can tackle, and then start tackling it. 
Most of my search has been in books and papers on Arxiv. 
If things look too aimless, I'll consider writing some emails to experts.  

![Arxiv](https://github.com/gltrost/Microbiomics/blob/main/Images/Arxiv.png)
