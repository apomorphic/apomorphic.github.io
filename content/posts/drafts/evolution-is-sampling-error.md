Title: Evolution is sampling error
Date: 2019-10-25
Tags: evolution, statistics
Slug: evolution-is-sampling-error
Status: draft

People often think that evolution is all about natural selection and adaptation. In fact, random non-adaptive changes dominate the evolutionary process in many populations and contexts. Today I'm going to lay out a useful framework that I hope makes this fact more intuitive, which might in turn help people have better intuitive models of evolutionary processes.

[TODO: Mention coalescent theory]
[TODO: Maybe outline the idea without plots first?]

We can think of evolution as *sampling error*: deviation in the genetic composition of the offspring in a population relative to their parents. To illustrate this, let's imagine a simple, asexual population, evenly divided between two alleles (gene variants), which produce no difference in fitness [^assumptions]:

[^assumptions]: Other assumptions: non-overlapping generations ...

![Ten dots representing individuals, stacked vertically and coloured to represent their genotype: red and five blue]({static}/images/coalescent-0.png)

These individuals will reproduce, giving rise to the next generation. Since all the individuals are genetically identical and have the same chance of reproducing, we can think of these offspring being randomly sampled, with replacement, from the previous generation:

![Two columns of ten dots, stacked vertically, with lines between the columns representing parentage. Some individuals produce one offspring, some multiple, and some none.]({static}/images/coalescent-1.png)

Since there is a great deal of randomness involved in who reproduces successfully and whose offspring survive, not all individuals will produce the same number of offspring in the next generation, even if they all had the same probability of reproducing to begin with. As a result, even in the absence of selection effects, the allele distribution of the new generation is likely to differ from that of the previous generation; this random, unbiased change in allele distribution is known as *genetic drift*.

As a result of genetic drift, the allele distribution will fluctuate up and down stochastically; sooner or later, one or the other will be eliminated from the population, resulting in *fixation*:

![Twenty columns of ten dots, stacked vertically, with lines between the columns representing parentage. ]({static}/images/coalescent-mid.png)
[TODO: Update alt-text with fixation time]

The time to fixation depends on the population size [^ effpop] and some other population parameters; here's an example plot for a population with a carrying capacity of 200 instead of 10:

![A plot of the allele frequency distribution of a larger population.]({static}/images/coalescent-200-neutral.png)
[TODO: Update alt-text with fixation time]

The point of all these plots is to illustrate that fairly dramatic genetic changes can accumulate in a population based purely on genetic drift; there's not necessarily any need to invoke selection to explain why genetic differences between populations accumulate all the time. That said, what happens when we add selection into the mix?

## Natural selection is sampling *bias*

Suppose that, rather than starting with a population evenly split between two equally-fit alleles, we introduce a new mutation into a population that was previous genetically homogeneous. What happens now?

If (as is likely) the mutation is very bad for you, the individual bearing it will probably die without issue, producing a very boring plot:

![Another twenty-column plot, this time in green and purple. The single initial purple individual produces no offspring, so the purple lineage dies out immediately.]({static}/images/coalescent-vdel.png)

Similarly, in the extremely unlikely event that the new genotype is *much* fitter than the old one, it will rapidly take over the population:

![Another twenty-column plot in green and purple. The offspring of the single initial purple individual rapidly take over the population, and the purple genotype becomes fixed.]({static}/images/coalescent-vadv.png)

So far so trivial. The interesting cases occur when the fitness of the new genotype is close to (either a bit higher or a bit lower than) the old one. 


The carrying capacity of the population is 10 individuals

A framework I find useful for thinking about evolution is as *sampling error*: deviation in the genetic composition of the offspring in a population relative to their parents.



A useful framework for thinking about evolution is as sampling error: imagine a new generation of a population being randomly sampled, with replacement, from the previous generation. Natural selection represents a bias towards fitter individuals, but the stochasticity of the process will also play a major role – a less-fit individual can always get lucky.

The relative influence of selection and stochasticity on the evolution of a population is determined by the law of large numbers: just as large deviations from a 50/50 split are common when the number of coin flips is small but rare when the number is large, so the composition of larger populations conforms increasingly closely to the preferences of natural selection. In smaller populations, however, stochastic effects can overwhelm selection, resulting in genes spreading or dying out more-or-less at random.

Population size is therefore a crucial factor affecting the optimisation power of evolution. In general, larger populations will be fitter, while very small populations (or those that were recently so) will often have high rates of rare genetic disorders: on the tiny island of Pingelap, for example, almost 10% of the population are completely colourblind. Similar factors also apply to other evolutionary processes, such as those impacting language and human culture: in all these cases, the fact that a trait is widespread does not necessarily mean it is adaptive.


A helpful framing I like to use when thinking about the evol

