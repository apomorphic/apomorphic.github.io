Title: Why We Age, Part 2: Non-adaptive theories
Date: 2019-09-04
Tags: ageing, science, evolution
Slug: why-we-age-2-nonadaptive
Status: draft

[Last time][part1], I introduced three puzzles in the evolution of ageing: 

[part1]: ...

> This, then, is the threefold puzzle of ageing. Why should a process that appears to be so deleterious to the individuals experiencing it have evolved to be so widespread in nature? Given this ubiquity, which implies there is some compelling evolutionary reason for ageing to exist, why do different animals vary so much in their lifespans? And how, when ageing has either evolved or been retained in so many different lineages, have some animals evolved to escape it?

I divided existing theories of the evolution of ageing into two groups, adaptive and nonadaptive, and discussed why one commonly believed nonadaptive theory -- namely, simple wear and tear -- could not adequately answer these questions.

In this post I'll discuss other, more sophisticated non-adaptive theories. These theories are characterised by their assertion that ageing provides no fitness benefit to organisms, but rather evolves *despite* being deleterious to reproductive success. Despite the apparent paradoxicality of this notion, I would estimate that non-adaptive theories are the most widely-believed group of explanations among scholars studying the evolution of ageing; it is also the group of explanations I personally put the most credence in at the time of writing.

How can this be? How can something non-adaptive -- even deleterious -- have evolved so reliably across the animal kingdom? To answer this question, we need to understand a few important concepts from evolutionary biology, including relaxed purifying selection, genetic drift, and the crucial difference between mortality and survivorship.

## Mortality, survivorship, and fitness

Imagine a race of beautiful, immortal, ageless beings -- let's call them elves. Unlike we frail humans, elves of any age always exhibit the same (low) probability of dying per unit time: they have *constant mortality*. The also have *constant fecundity*: the average number of children an elf has per unit time also remains unchanged as it gets older. [Compare human and elven mortality curves]

Given constant mortality, how does the survivorship of 

The mortality curve of a population describes the probability of individuals in that population dying *at* any particular age. In contrast, the survivorship curve describes the probability of an individual *reaching* a given age; that is to say, of not dying at any point *before* the age in question. In discrete time, the survival probability $s$ at an age $a$ is given by the product of the mortality probabilities of all ages up to $a$:

$s_a = \prod_{i=0}^a \mu_i$
[this is wrong, fix it]

[^continuous_survival]: In continuous time, survival is given by the integral over the instantaneous mortality for all ages up to $a$.

Crucially, this means that, while mortality can remain constant, rise or even fall over time, *survivorship must always decrease*: you can't be alive at age $a$ if you died at age $a-1$. Even in the safest society, your probability of surviving to adulthood is lower that your probability of surviving infancy, and your probability of surviving to middle age is lower than your probability of surviving to adulthood. This obvious-seeming fact is crucial to understanding the evolution of ageing under non-adaptive theories.

Back to the elves. Since they have constant mortality with time, their survivorship curve declines geometrically (in the discrete-time case) or exponentially (in continuous time). Now let's assume that, in addition to constant mortality, our elves also exhibit *constant fecundity*: regardless of its age, a living elf always produces a constant average number of children per unit time. Now for the key question: out of all the children produced in the population in a given time period, what proportion of them will be sired by 

It might seem that we've already answered this question: we already specified that the fecundity of these elves is constant with time, right? But in fact there's a crucial distinction that's fundamental to understanding non-adaptive theories of ageing
The age-specific fecundity $f_a$ of a population gives the expected number of offspring produced by an individual of age $a$. But to produce offspring at age $a$ at all, an individual must first survive long enough to *be* age $a$ in the first place. That means that

[I think I'm belabouring the point a bit too much here]

The age-specific mortality of a population describes the probability of dying *at* a particular age. Survivorship, meanwhile, is the probability of not dying at any age *before* 

[^discrete]: For mathematical comprehensibility I'm working in discrete time here. For 

Unlike we frail humans, elves exhibit constant mortality and fecundity with time: no matter how old they are, their probability of dying at any given time remains a constant value $m$, and the average number of offspring they produce per unit time also remains unchanged. In this happy state, the probability of an individual surviving *to* a given age $a$ declines *exponentially* (survival is the [product integral][product_integral] of mortality). But what about reproductive output? How many children will be produced by adults aged 100 years? 200? 500?

The key insight here is that while average reproductive output *conditional on survival* is constant with age, actual expected output is not -- you have to survive to a given age to reproduce at that age, so if survival declines exponentially, so does the expected number of offspring. Since survival always declines monotonically with age, your probability of reproducing at a given age must also decline, even if you'd be just as good at reproducing once you got to that age. As a result, in terms of your reproductive fitness, the earliest parts of your life are always the most valuable, even if you don't age. [footnote - The only way to escape this is for fecundity to increase with age after reproductive maturation].

[Show survival and reproduction equations in discrete time, note equivalents in continuous time]

This concept sounds fiddly when explained in this way but becomes much clearer with an example. Imagine that two mutations arose in our population of elves. The first caused individuals bearing it to become infertile at age 100 -- a mere stripling by elvish standards -- while the second has the same effect at a ripe old age of 10,000 years. Both of these mutations totally curtail an individual's reproductive future, but they have very different effects on fitness. The first mutation is disastrous, destroying almost all of the individual's expected reproductive output. The probability of an individual surviving to (and well past) 100 is high, so the expected number of children lost is large. Conversely, the chances of an individual still being alive at 10,000 is minimal anyway, so that mutation probably won't make any difference to the number of offspring that individual has -- its fitness effect is negligible. Mutations taking effect at intermediate ages will have intermediate effects; mutations that merely reduce, rather than totally destroy, reproductive output will have commensurately smaller impacts.

The intuition that I'm trying to get across here is that, as far as natural selection is concerned, the fitness of a given genotype depends far more strongly on its health at younger ages than at older ones. Even when mortality is constant, older ages are just less valuable than younger ones, simply because the chance of getting to those older ages is lower. As a result, the fitness effect of deleterious mutations affecting health in old age is much smaller than that of mutations affecting health in young adults -- and mutations that affect the health of juveniles are worst of all, because those affect *all* of an individual's lifetime reproductive output. To put it in economic terms, the selective value of each additional marginal year of life is less than the previous one.

Okay, so we've established that, because of declining cumulative survival, later stages of life are less valuable to natural selection than earlier stages. But why should that matter? Even if these later stages of life are *less* valuable, they are still valuable -- the selective effect of a mutation at these later ages is still negative. So they should still be removed by natural selection, right? Well, not necessarily. There are two different prominent answers to this question, each of which constitutes one of the two major non-adaptive theories of the evolution of ageing.

# Natural selection is not infinitely strong

In the end, evolution is just statistics. Individuals breed and reproduce, and some individuals end up having more surviving offspring than average and others have fewer. Somtimes, this difference is due to differences in fitness, resulting in a directional shift in the genetic composition of the population -- we call this *natural selection*. But even in the absence of selection, some individuals will end up having more offspring than others through sheer random chance, leading to changes in the genetic composition of the population that have nothing to do with how fit the lucky parents are -- we call this non-adaptive, non-selective evolution *genetic drift*. As a result of genetic drift, the frequencies of different gene variants in the population can vary in ways that have little to do with their effect on fitness: given enough time, even a neutral mutation must eventually either die out or reach fixation, but thanks to genetic drift even a highly beneficial mutation can die out before it has a chance to spread, and even a deleterious one can spread until it is present in the entire population.

[footnote on the founder effect]

Conversely, when selection dominates drift, beneficial mutations 

What determines whether natural selection or genetic drift is strongest

Put simply, selection is stronger when population sizes are large and/or selection coefficients are strong. 

There are various 

When a new mutation arises in a closed population, therefore, there are two ways in which its frequency in that population can change: it can rise or fall through natural selection, based on its effect on the fitness of the organisms that carry it, or it can rise or fall at random through genetic drift. The stronger selection is relative to drift, the greater the chance that the eventual fate of that variant matches its effect on fitness: beneficial mutations are fixed, and deleterious mutations (the vast majority) are removed.

[selection shadows = older ages are more drifty]
[this mainly applies to mutation accumulation - AP can work even when drift is weak]

The combination of the 
gives rise to the "mutation accumulation" theory of ageing. Over time, inevitably, mutations occur. Most of these will be deleterious, and different deleterious mutations will exert their effects at different ages. Deleterious mutations affecting childhood and early adulthood will be strongly opposed by natural selection and efficiently removed from the population, while those affecting later life will be largely ignored by natural selection and accumulate in the population over time. Put another way, the minimum size of effect natural selection can "see" will increase as age increases, allowing more and more larger and larger mutations to get through and impair the health of older individuals: the population will start to age.

# Trade-offs everywhere: antagonistic pleiotropy

In the mutation-accumulation theory, ageing is an entirely passive, unselected process: natural selection can only efficiently remove mutations above some effect threshold, mutations affecting old age have smaller effects on fitness, therefore mutations affecting old age accumulate. There is a second theory of ageing, however, that also relies on the differential selective 
value of different ages, but according to which ageing occurs as a consequence of selection, not drift. According to this
"antagonistic pleiotropy" theory of ageing, ageing occurs as a side effect of mutations that improve health and fitness at other
points in life.

Pleiotropy is the ability of a gene to exert multiple distinct effects on the biology of an organism. A mutation in a pleiotropic gene could cause changes in diverse parts of the body, metabolic pathways, organ systems...or at different points in life. *Antagonistic* pleiotropy implies that these different effects have opposite effects on fitness: one beneficial, another deleterious. In the case of ageing, the proposed mutation would have a positive fitness effect early in life (by increasing the rate of growth, say) at the cost of a negative fitness effect later in life.

All else equal, a positive fitness effect in one place and a negative effect in another place should balance out, but as we have already seen, different ages are *not* equal in terms of their selective value. Because early life counts for so much more in terms of the fitness effect of a mutation, even a very small gain in early-life health and fitness could potentially outweigh a much larger fitness penalty applied much later. Because of the difference in selective value, natural selection is willing to accept fitness tradeoffs between different ages that leave the minority of individuals that reach old age far worse off than they otherwise would be.

It is important to understand that, despite its reliance on natural selection, antagonistic pleiotropy is still considered a non-adaptive theory of ageing. While the mutations that cause ageing under this theory are selectively beneficial, their effects on old age are not. The negative side effects of these mutations are still negative, and a mutation that did not have those side effects would be better -- but they are not negative enough to outweigh the benefits, and so the mutation is selected for overall. This is in contrast with adaptive theories of ageing, where the decline in survival at older ages is considered to be *per se* selectively advantageous.

# ...

Armed with our two non-adaptive theories of ageing -- mutation accumulation and antagonistic pleiotropy -- we can return to the puzzles I introduced in part 1 of this series: why is ageing so ubiquitious in the animal kingdom, why do the details of the ageing process differ so much from species to species, and ...?

Both theories give very similar answers to these questions

In answering these questions, both theories rely on the same crucial observation: the near-inevitable decline in the selective value of older ages relative to young adulthood. Because of this difference, selection against negative health impacts at older ages is reduced, leading to fixation of deleterious mutations acting in late-life (mutation accumulation) and/or of mutations that trade health in early life for decrepitude in old age (antagonistic pleiotropy). The assumptions underlying these conclusions are sufficiently weak that we should *expect* to see ageing evolve in a very wide range of different cases, so the fact that ageing is so widespread is no great surprise.

Why, then, do different groups of animals differ so much in their life expectancies? Again, the answer given by both theories is the same. While the decline in selective value with age is near-inevitable, the rate of this decline depends on how quickly the probability of survival declines with age. This in turn depends on the intensity of *extrinsic mortality* (predation, disease, starvation, etc.) a species is exposed to. Higher mortality means a lower probability of surviving to older ages and hence a more rapid drop-off in selective value of those later stages of life. [Figure for this] As a result, species exposed to intense extrinsic mortality will live fast and die young, evolving rapid ageing and short median lifespans even when kept in captivity (the turquoise killifish, the model organism I worked on during my PhD, is a great example of this); in contrast, individuals for whom extrinsic mortality is low will get a larger gain in fitness from being healthy in later life, resulting in the evolution of slower ageing and longer lifespans.

Under non-adaptive theories of ageing, therefore, we should expect animals that adopt low-mortality life strategies to evolve slower ageing and longer lifespans. If you can avoid or resist predators, find food reliably, and generally have a good chance of surviving to next year, natural selection has far more incentive to keep you fit, healthy and producing plenty of offspring.

So, why do bats live so much longer than mice? Somewhat anticlimactically, a big part of the answer may simply be that they can fly.

Next time in this series, we'll talk about the other major group of theories of ageing: adaptive ageing theories. This post will probably be quite a long time coming since I don't know anything about adaptive theories right now and will have to actually do some research. So expect a few other posts on different topics before I get around to talking about the more heterodox side of the theoretical biology of ageing.
