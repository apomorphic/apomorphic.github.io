Title: Why We Age, Part 2: Non-adaptive theories
Date: 2019-09-12
Tags: ageing, science, evolution
Slug: why-we-age-2-nonadaptive
Status: draft

[Last time][part1], I introduced three puzzles in the evolution of ageing: 

[part1]: https://apomorphic.com/2019/09/09/why-we-age-1-intro

> This, then, is the threefold puzzle of ageing. Why should a process that appears to be so deleterious to the individuals experiencing it have evolved to be so widespread in nature? Given this ubiquity, which implies there is some compelling evolutionary reason for ageing to exist, why do different animals vary so much in their lifespans? And how, when ageing has either evolved or been retained in so many different lineages, have some animals evolved to escape it?

I divided existing theories of the evolution of ageing into two groups, adaptive and nonadaptive, and discussed why one commonly believed nonadaptive theory – namely, simple wear and tear – could not adequately answer these questions.

In this post I'll discuss other, more sophisticated non-adaptive theories. These theories are characterised by their assertion that ageing provides no fitness benefit to organisms, but rather evolves *despite* being deleterious to reproductive success. Despite the apparent paradoxicality of this notion, I would estimate that non-adaptive theories are the most widely-believed group of explanations among scholars studying the evolution of ageing; it is also the group of explanations I personally put the most credence in at the time of writing.

How can this be? How can something non-adaptive – even deleterious – have evolved so reliably across the animal kingdom? To answer this question, we need to understand a few important concepts from evolutionary biology, including relaxed purifying selection, pleiotropy, and genetic drift. First, though, we need to clarify some important terminology.

## Mortality, survivorship, and fecundity

For the purposes of this post, a **cohort** is a group of individuals from the same population who were all born at the same time, i.e. they are of the same age. The **survivorship** of a cohort at a given age is the percentage of individuals surviving *to* that age, or equivalently the probability of any given individual surviving at least that long. Conversely, the **mortality** of a cohort at a given age is the probability of an individual from that cohort dying *at* that age, and not before or after. Note the key distinction between these concepts: survivorship is the result of accumulating mortality at *all* ages from birth to the age of interest[^survmort]. As a result, the mortality and survivorship curves of a cohort will almost always look very different; while mortality can increase, decrease or stay the same over time, survivorship must always decrease. In particular, constant mortality will give rise to an *exponential* decline in survivorship[^exponential].

[^survmort]: In discrete time, the survivorship function of a cohort will be the product of instantaneous survival over all preceding time stages; in continuous time, it is the [product integral][prodint] of instantaneous survival up to the age of interest. Instantaneous survival is the probability of surviving at a given age, and thus is equal to 1 minus the mortality at that age.

[prodint]: https://en.wikipedia.org/wiki/Product_integral

[^exponential]: Exponential in continuous time; geometric in discrete time.

![Four hypothetical mortality curves and their corresponding survivorship curves]({static}/images/mortality-survivorship.png)
*Four hypothetical mortality curves and their corresponding survivorship curves.*

In evolutionary terms, survival is only important insofar as it leads to reproduction. The age-specific **fecundity** of a cohort is the average number of offspring produced by an individual of that cohort at that age. Crucially, you need to survive to reproduce, so the actual expected number of offspring produced at a given age (let's call this the **reproductive output**) is equal to the age-specific fecundity multiplied by the probability of surviving that long. Since this depends on survivorship, not mortality, it will tend to decline with age: a population with constant mortality and constant fecundity (i.e. no demographic ageing) will show reproductive output that declines exponentially along with survivorship.

[^repout]: The reproductive output $r_a$ at some age $a$ is therefore equal to $f_a \cdot s_a$, where $f$ is fecundity and $s$ is survivorship. Since survivorship is determined by mortality, reproductive output can also be expressed as $r_a = f_a \cdot \int_0^a m_x \:\mathrm{d}x$ (in continuous time) or $r_a = f_a \cdot \prod_{k=0}^am_k$ (in discrete time). 

![Two hypothetical mortality/fecundity curves and their corresponding reproductive outputs]({static}/images/fecundity-output.png)
*Two hypothetical mortality/fecundity curves and their corresponding reproductive outputs.*

The fitness of an individual is determined by their lifetime reproductive output (i.e. the total number of offspring they produce over their entire lifespan) [^lro] and the average quality of their offspring (i.e. their own chances of surviving and reproducing in their turn). Mutations that significantly decrease lifetime reproductive output will affect both of these parameters, and so be strongly opposed by natural selection. It seems mutations leading to ageing (i.e. an increase in mortality and decrease in fecundity with time) should be in that category. So why does ageing evolve?

[^lro]: Lifetime reproductive output is equal to $\int_0^\infty r_a \:\mathrm{d}a$ (in continuous time) or $\sum_{a=0}^\infty r_a$ (in discrete time).

## What good is immortality?

Imagine a race of beautiful, immortal, ageless beings -- let's call them elves. Unlike we frail humans, elves don't age: they exhibit constant mortality and constant fecundity. As a result, their age-specific survivorship and reproductive output both fall off exponentially with increasing age -- far more slowly, in other words, than occurs in humans.

![Survivorship, cumulative fecundity and cumulative reproductive output curves for a population of elves with 1% fecundity and 0.1% mortality per year.]({static}/images/fecundity-elves.png)
*Survivorship, cumulative fecundity and cumulative reproductive output curves for a population of elves with 1% fecundity and 0.1% mortality per year.*

Under the parameters I've used here (1% fecundity, 0.1% mortality), an elf has about a 50% chance of making it to 700 years old and a 10% chance of living to the spry old age of 2,300. An elf that makes it that far will have an average of 23 children over its life; 7 if it only makes it to the median lifespan of 700.

Since fecundity and mortality are constant, an elf that makes it to 3,000 will be just as fit and healthy then as they were as a mere stripling of 500, and will most likely still have a long and bright future ahead of them. Nevertheless, the chance of any given *newborn* elf making it that far is small (about 5%). This means that, even though an old elf could in principle have as many children as a much younger individual elf, the actual offspring in the population are mainly produced by younger individuals. Just over 50% of the lifetime expected reproductive output of a newborn elf is concentrated into its first 700 years; even though it could in principle live for millennia, producing children at the same rate all the while, its odds of reproducing are best early in life. You can, after all, only breed when you're living.

This fact -- that reproductive output is concentrated in early life even in the absence of ageing -- has one very important consequence: natural selection cares much more about you when you're young.

## Natural selection is ageist

No genome is totally stable -- mutations always occur. Let's imagine that three mutations arise in our elven population. Each is fatal to its bearer, but with a time delay, analogous to [Huntington's disease][huntington] or some other congenital diseases in humans. Each mutation has a different delay, taking effect respectively at 100, 1000, and 10000 years of age. What effect will these mutations have on their bearers' fitness, and how well will they spread in the population?

[huntington]: https://en.wikipedia.org/wiki/Huntington%27s_disease

![Three potential fatal mutations in the elven populations, and their effects on lifetime reproductive output.]({static}/images/elf-mutations.png)
*Three potential fatal mutations in the elven populations, and their effects on lifetime reproductive output.*

Although all three mutations have similar impacts on an individual who lives long enough to experience them, from a fitness perspective they are very different. The first mutation is disastrous: almost 90% of wild-type individuals (those without the mutation) live past age 100, and a guaranteed death at that age would eliminate almost 90% of your expected lifetime reproductive output. The second mutation is still pretty bad, but less so: a bit over a third of wild-type individuals live to age 1000, and dying at that age would eliminate a similar proportion of your expected lifetime reproductive output. The third mutation, by contrast, has almost no expected effect: less than 0.005% of individuals make it to that age, and the effect on expected lifetime reproductive output is close to zero. In terms of fitness, the first mutation would be strenuously opposed by natural selection and would be unlikely to spread far; the second would be at a significant disadvantage and would probably be quickly outcompeted by wild-type individuals; and the third would be virtually neutral.

This extreme example illustrates a general principle: 
> The impact of a mutation on the fitness of an organism depends on both the magnitude of its effect and the proportion of total reproductive output affected.
>
> *— Williams 1957* [^williams]

Mutations that take effect later in life affect a smaller proportion of total expected reproductive output and so have a smaller selective impact, even if the size of the effect when they do take effect is just as strong. The same principle applies to mutations with less dramatic effects: those that affect early-life survival and reproduction have a big effect on fitness and will be strongly selected for or against, while those that take effect later will have progressively less effect on fitness and will thus be exposed to correspondingly weaker selection pressure. Put in technical language, the **selection coefficient** of a mutation depends upon the age at which it takes effect, with mutations affecting later life having coefficients closer to zero.

Okay, so we've established that selection cares less about mutations

[^williams]: Williams (1957) *Evolution* 11(4): 398-411.

When a mutation arises in a population, its frequency rises and falls based on the relative reproductive success of those who bear the mutation and those who do not. This difference in reproductive success is in part determined by the relative fitness of individuals bearing the mutation, but includes a healthy dose of random chance. Due to this random element, the frequency of a mutation will fluctuate at random, a process known as [genetic drift][drift]. In the absence of selection pressure favouring the preservation of polymorphisms [^poly], the mutation will eventually either reach fixation (100% prevalence) or elimination (0% prevalence). Which of these is more likely to occur depends on the strength of selection in the population [^selstr] and the **selection coefficient** of the mutation (how, and how much, it affects reproductive output). When the strength of selection is low, or the selection coefficient is closer to zero, the mutation will behave more like a neutral mutation, and reach fixation or elimination more-or-less randomly.

[drift]: https://en.wikipedia.org/wiki/Genetic_drift

[^poly]: A **polymorphism** is a situation in which multiple versions of a gene (alleles) persist in a population for an extended period. There are various ways in which this can occur, including when the selection coefficient of an allele changes over time or according to its frequency in the population, or when individuals carrying multiple alleles are fitter than individuals carrying multiple copies of just one allele. This is a big topic I don't intend to get into here.

[^selstr]: The strength of natural selection relative to genetic drift will vary depending on the size of the population and its demographic properties; all else equal, a larger population will exhibit stronger selection. The stronger selection is relative to drift, the more differentially likely it is for deleterious mutations of a given strength to get eliminated and beneficial mutations to reach fixation.

All this means that the efficacy of natural selection is not infinite; there is an effect threshold below which it can no longer effectively remove deleterious mutations and promote the spread of beneficial ones in the population. The declining 

The "selection shadow" discussed above means that mutations with the same magnitude of effect on the *individual* have much smaller effects on *fitness* (i.e. smaller selection coefficients) when they take effect later in life. These mutations will therefore behave more like neutral mutations, increasing or decreasing in frequency with relatively little regard for their effect on those individuals that survive to experience them. Since the great majority of mutations are negative[^negative], this will lead to the accumulation of more and more mutations impairing survival and fecundity later in life, leading inevitably to demographic (and physiological) ageing.

[^negative]: This is the strong consensus among evolutionary biologists: when you're dealing with a complex, highly adapted system, random changes are much, much more likely to decrease its functionality than to improve it.

[^medawar]: [TODO: get Medawar reference]

So our elves are sadly doomed to lose their immortality, unless something very weird is happening to cause them to keep it. Mutations impairing survival and reproduction early in life will be strenuously removed by natural selection, but those causing impairments later in life will accumulate, leading to a progressive increase in mortality and decline in fecundity. This might seem bad enough, but unfortunately there is more bad news on the horizon -- because 

# Perverse trade-offs: antagonistic pleiotropy

The theory outlined above, under which ageing occurs due to the accumulation of late-life-affecting negative mutations which selection does not have the strength to effectively remove, is called the *mutation accumulation* or *relaxed purifying selection theory*, and was first proposed by Peter Medawar in 1951[^medawar]. It is one of two non-adaptive theories of ageing with wide currency in the field; the other, known as *antagonistic pleiotropy*, was proposed by George C. Williams in 1957. The two theories are similar in some ways and quite different in others, ... [TODO: Finish this]

The basic insight required to understand antagonistic pleiotropy is the same as that required to understand mutation accumulation: due to inevitably declining survivorship with age, the fitness effect of a change in survival or reproduction declines as the age at which it takes effect increases. However, whereas mutation accumulation proposes genetic drift as a way such pro-ageing mutations can accumulate, antagonistic pleiotropy proposes a way in which such negative fitness effects can accumulate in later life through the action of natural selection.

[Pleiotropy][pleiotropy] is the phenomenon whereby a gene or mutation exerts effects of multiple different aspects of biology simultaneously: different genetic pathways, developmental stages, organ systems, *et cetera*. *Antagonistic* pleiotropy is pleiotropy that imposes competing fitness effects, increasing fitness in one way while decreasing it in another. In this case, the overall fitness effect of a mutation will depend on the relative sizes of those countervailing fitness impacts.

[pleiotropy]: https://en.wikipedia.org/wiki/Pleiotropy

In our case, we are interested in pleiotropy across time: the idea that a mutation could affect fitness in one way early in life and another way later. If this pleiotropy is antagonistic, the mutation will increase fitness at one point in life and decrease it at another point: for example, maybe indulging in more risky fights for mates increases expected reproductive output in the near future but increases the risk of a serious injury that will impair your success later. If the fitness gain is on average larger than the fitness cost, the mutation is likely to spread.

As we already saw, the fitness effect of a mutation depends on the size of the effect *and* the percentage of lifetime reproductive output affected, and as a result effects taking place later in life are less valued by natural selection. This means that selection can favour trade-offs that seem very inequitable to us, accepting large impairments to late-life functionality in exchange for small gains in early-life fitness. These unbalanced tradeoffs, seen as net-positive by natural selection, spread in the population, become fixed, and accumulate over time, resulting in the ageing we see everywhere in nature today.

Antagonistic pleiotropy therefore provides an alternative framing of the ageing problem, one which focuses on selection over genetic drift. Despite claiming that ageing evolves as a result of mutations that increase fitness, however, antagonistic pleiotropy is still a *non-adaptive* theory. While the mutations that give rise to ageing are beneficial *on net*, their effects on old age are *not* beneficial: an alternative mutation that provided the same
benefits without contributing to ageing would be better. This is in contrast to adaptive theories of ageing that claim the ageing phenotype *itself* is beneficial; more on those next time. 

Mutation accumulation and antagonistic pleiotropy have historically represented the two big camps of ageing theorists, and the theories have traditionally been regarded as being in opposition to each other. I've never really understood why, though: the basic insight required to understand both theories is the same, and conditions that gave rise to ageing via mutation accumulation could easily also give rise to additional ageing via antagonistic pleiotropy [^comparison]. Importantly, both theories give the same kinds of answers to the other two key questions of ageing I discussed last time: why do lifespans differ between species, and why do some animals escape ageing altogether?

[^comparison]: Which of the two is likely to predominate depends on factors like the relative strength of selection and drift (which is heavily dependent on population size) and the commonness of mutations that cause effects of the kind proposed by antagonistic pleiotropy. This will depend on the specific demographics and evolutionary history of the population you're interested in, as well as your more general ...


===========================================





# ...

Armed with our two non-adaptive theories of ageing -- mutation accumulation and antagonistic pleiotropy -- we can return to the puzzles I introduced in part 1 of this series: why is ageing so ubiquitious in the animal kingdom, why do the details of the ageing process differ so much from species to species, and ...?

Both theories give very similar answers to these questions

In answering these questions, both theories rely on the same crucial observation: the near-inevitable decline in the selective value of older ages relative to young adulthood. Because of this difference, selection against negative health impacts at older ages is reduced, leading to fixation of deleterious mutations acting in late-life (mutation accumulation) and/or of mutations that trade health in early life for decrepitude in old age (antagonistic pleiotropy). The assumptions underlying these conclusions are sufficiently weak that we should *expect* to see ageing evolve in a very wide range of different cases, so the fact that ageing is so widespread is no great surprise.

Why, then, do different groups of animals differ so much in their life expectancies? Again, the answer given by both theories is the same. While the decline in selective value with age is near-inevitable, the rate of this decline depends on how quickly the probability of survival declines with age. This in turn depends on the intensity of *extrinsic mortality* (predation, disease, starvation, etc.) a species is exposed to. Higher mortality means a lower probability of surviving to older ages and hence a more rapid drop-off in selective value of those later stages of life. [Figure for this] As a result, species exposed to intense extrinsic mortality will live fast and die young, evolving rapid ageing and short median lifespans even when kept in captivity (the turquoise killifish, the model organism I worked on during my PhD, is a great example of this); in contrast, individuals for whom extrinsic mortality is low will get a larger gain in fitness from being healthy in later life, resulting in the evolution of slower ageing and longer lifespans.

Under non-adaptive theories of ageing, therefore, we should expect animals that adopt low-mortality life strategies to evolve slower ageing and longer lifespans. If you can avoid or resist predators, find food reliably, and generally have a good chance of surviving to next year, natural selection has far more incentive to keep you fit, healthy and producing plenty of offspring.

So, why do bats live so much longer than mice? Somewhat anticlimactically, a big part of the answer may simply be that they can fly.

Next time in this series, we'll talk about the other major group of theories of ageing: adaptive ageing theories. This post will probably be quite a long time coming since I don't know anything about adaptive theories right now and will have to actually do some research. So expect a few other posts on different topics before I get around to talking about the more heterodox side of the theoretical biology of ageing.
