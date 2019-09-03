Title: Why We Age, Part 1: What ageing is and is not
Date: 2018-09-03
Tags: ageing, science
Slug: why-we-age-1-intro
Status: draft

*At the LessWrong European Community Weekend 2019, I gave a talk explaining the intuition behind non-adaptive theories of the evolution of ageing. This blog post and its followup are adapted from that presentation.*

When people find out that I did my PhD in the biology of ageing, they tend to ask one of two questions. First, they ask what they can do to live longer. Second, they ask why people age in the first place. My answer to the first question is unfortunately fairly boring at present -- don't smoke, eat well, get enough exercise, get enough sleep, *et cetera* -- but when it comes to the second I think I have more of interest to say. To get this blog rolling (see what I did there), let's dive into the important and fractious question of why we age.

This will be the first post in a series. In this post, I'll clarify what I mean by "ageing", sketch out why the ageing we see in the natural world is surprising and in need of an explanation, and discuss one simple theory of ageing that doesn't do the trick. In the next, I'll do a deep dive on so-called non-adaptive theories of ageing -- theories that posit that ageing evolves despite being at least somewhat bad for individual fitness. Finally, I'll talk about adaptive theories, which posit that ageing conveys a fitness benefit to an individual, its relatives, or its group. I expect the first two of these posts to come pretty closely together, and for the third to take quite a lot longer to write.

So, let's get started with an overview of what exactly it is I'll be talking about here, and why the word "ageing" tends to give rise to so much confusion.

## What is ageing?

> It is a curious thing that there is no word in the English language that stands for the mere increase of years; that is, for ageing without its connotations of increasing deterioration and decay.
>
>*—Peter Medawar, "An Unsolved Problem in Biology"*

When people talk about "ageing", there are broadly speaking three different things they might mean[^popage]. Firstly, there is the simple process of getting older -- of the amount of time since you were born inexorably increasing. Ageing in this way has a lot of benefits: more memories, more experience, and with luck more self-knowledge and more wisdom. We won't talk much about this kind of ageing here, as its effects have more to do with neuroscience and psychology than gerontology, but for the sake of completeness let's call it "temporal ageing".

Unfortunately, the benefits conferred by temporal ageing are currently inextricably tied to the physical changes denoted by the second meaning of "ageing": a generalised physiological deterioration, characterised by a wide range of unfortunate symptoms affecting almost every system of the body. As a result of this second kind of ageing, we become slower, more fragile, more prone to disease, and generally more likely to experience impaired health and wellbeing as we get older, eventually leading to death. As we as a civilisation have gradually eliminated more and more extrinsic forms of suffering and death, the depredations of ageing have gradually become the primary cause of ill health and death in developed countries by an overwhelming margin. This is the kind of ageing people mean when they worry about getting cancer or dementia, buy "anti-ageing" skin cream, or invest in real anti-ageing research; it's the province of doctors, physiologists, and molecular biologists. Let's call it "physiological ageing".

Finally, the individual changes taking place due to physiological ageing give rise to a distinctive statistical pattern at the level of entire populations of humans or other animals: a progressive increase in mortality (probability of dying) and decrease in fecundity (expected number of offspring) in older age cohorts. This pattern is what gives rise to plots like the ones below, and it's what demographers, actuaries and evolutionary biologists generally mean when they talk about "ageing". From this perspective, the specific functional changes underlying these changes in survival and reproduction are less important than the high-level functional changes that result: changes in the rates of reproduction, illness, disability, and death. From an evolutionary perspective it is the first and last of these, reproduction and death rates, that are the most important. We can call this final meaning of the word ageing "demographic ageing".

[^popage]: Actually, there's a fourth meaning that gets used in the media quite a lot: "population ageing", by which is meant an increase in the median age of a population and the proportion of old people due to changes in social conditions. This is distinct from my "demographic ageing" in that the former is looking at the age composition of the whole population, while the latter is comparing different age groups within the population. I don't plan on talking about population ageing here.

![Alt Text]({static}/images/gompertz.png)

*Logarithmic mortality curves for British and American populations at different points in the 20th century. Source: US Office of Retirement and Disability Policy*

These two phenomena, of physiological and demographic ageing, are tightly interlinked in any given population but are nevertheless conceptually distinct: two different species (an insect and a mammal, say) could undergo very different physiological ageing processes but exhibit very similar patterns of demographic ageing. Physiological and demographic ageing also give us very different perspectives on the question of why we age. From the perspective of physiological ageing, the question is generally asking about the specific genetic, molecular, histological or physiological mechanisms underlying the changes we observe: what particular aspect of our biology is causing our bodies to deteriorate with age in this or that particular way? From the perspective of demographic ageing, the relevant *why* question is simpler and more fundamental: given that ageing appears to be pretty deleterious to the survival and reproduction chances of any individual experiencing it, how could we have evolved to exhibit declining functionality with age *at all*?

In these posts, I'll be focusing on the second kind of why question, discussing the evolutionary teleology of the ageing process. As we'll see, from that perspective, ageing is frankly pretty weird.

## Three puzzles of ageing

When we look at nature, or at ourselves, we observe something surprising: animals get old. In many, many different species, old age is accompanied by a progressive decline in functionality, leading to higher rates of death[^mortality] and lower rates of reproduction. This pattern is seen almost everywhere you look in the animal kingdom, suggesting that it has either evolved again and again independently or been retained after inheritance from a common ancestor. Yet despite this commonality, there is profound variation in the details of the ageing process: even closely related species can differ dramatically in how quickly they age and how long they tend to live. And here and there, we see species that seem to have escaped the iron grip of ageing, exhibiting fecundity and mortality that are constant or even declining over time.

[^mortality]: This increase in death rate is both intrinsic and extrinsic: older individuals are more likely to die from heart attack, stroke, cancer and so on, but are also more vulnerable to predation, starvation and disease.

![Alt Text]({static}/images/bats_mice.png)

*Distribution of lifespans for mouse and bat species from the AnAge database (accessed 2018-09-01). Despite their relatively close relationship, similar size, and similar metabolic rates, bats live dramatically longer than mice.*

This, then, is the threefold puzzle of ageing. Why should a process that appears to be so deleterious to the individuals experiencing it have evolved to be so widespread in nature? Given this ubiquity, which implies there is some compelling evolutionary reason for ageing to exist, why do different animals vary so much in their lifespans? And how, when ageing has either evolved or been retained in so many different lineages, have some animals evolved to escape it?

Any successful theory of the evolution of ageing must be able to convincingly answer all these questions. A number of attempts have been made over the years, none of which has managed to capture the consensus of the academic community. These attempted explanations can be broadly divided into two groups: those that propose with some reason why ageing, which seems so deleterious, is adaptive after all, and those that accept that ageing is deleterious and attempt to explain why it might evolve anyway. I'll discuss the main representatives of each group in separate blog posts, but first I want to tackle one simple non-adaptive theory that doesn't quite manage to do the job.

## Why ageing is not (just) wear-and-tear

> The senescence of human organs consists not of their wearing out but of their lack of replacement when worn out.
>
>*George C. Williams, "Pleiotropy, Natural Selection, and the Evolution of Senescence"*

One common folk theory of ageing is that it is simply wear-and-tear: like a car, the body is a machine, and like any machine it wears out over time. Exposure to the environment naturally leads to the accumulation of damage, which progressively impairs the function of the machine until it breaks down (i.e. we die). Any imperfection in the machine's components will hasten this process, either by generating more damage or by becoming progressively more dysfunctional over time. This progressive degradation is inevitable: we can keep a car in working order with regular maintenance and repair, but we are not (yet) capable of doing this for the kinds of wear-and-tear that accumulate in the body. Hence, ageing.

This explanation of ageing is intuitive, and parts of it are true as far as they go. There are certainly various kinds of damage and dysregulation that accumulate in the body with age: genetic mutations, senescent cells, shortened telomeres, cross-linked chemical aggregates, degraded stem-cell niches, and on and on. If we could remove and correct some or all of these issues the way we can replace a dodgy spark plug, we'd go a long way towards addressing the problem of physiological ageing. 

But as an explanation of why ageing exists in the first place, "wear-and-tear is inevitable" just doesn't cut it, because a living body is not like a car. Where a car is dead matter shaped by external tools, a body is a dynamic, self-generating system with incredible powers of self-repair. These self-repair processes are awe-inspiringly good: of the *tens of thousands* of genetic mutations that occur per cell every day in the human body, virtually all are accurately repaired. Our bodies can repair wounds, fight off infections, kill and replace malfunctioning cells, partially regrow (some) organs, even remodel their bones to best respond to the forces they experience. Many of these regenerative processes decline as we age, but that decline is itself part of the ageing process: young children are amazingly good at healing without scarring, for example.

So while bodily damage is inevitable as part of the daily business of living, our bodies successfully repair almost all of it, especially when we're young. Evolutionarily speaking, the question is not why the damage occurs, but why it is *permitted to accumulate*. It seems our bodies' repair processes are not quite perfect, and allow damage and dysregulation to progressively accumulate over time. Why aren't they better?

Could our bodies' repair systems be better? They could certainly be worse: there are many, many mammal species with much shorter lifespans than humans', even when kept in very safe conditions. These animals age faster than humans because they accumulate damage and dysregulation faster; for whatever reason, their monitoring and repair systems have evolved to be that much sloppier than ours[^mrate]. Conversely, there are at least a few mammals (such as bowhead whales) that live longer than we do; clearly they have something going for them that we don't, but why? And that's without going into animals like [green hydra][hydra] or [naked mole rats][nmr] that don't seem to age at all: if they can do it, why can't we?

[hydra]: https://en.wikipedia.org/wiki/Hydra_viridissima
[nmr]: https://en.wikipedia.org/wiki/Naked_mole-rat

Because it's not an evolutionary theory, wear-and-tear is incapable of addressing these questions. Yes, damage is inevitable, but why does this result in such different rates of ageing in different species? If one species can evolve to remove this damage so efficiently that it doesn't age at all, what is preventing most other species from doing the same? The answers to these questions don't lie in the eternal inevitability of molecular damage, but in the selective pressures each species is exposed to across evolutionary time. In the rest of this series, I'll address theories of ageing that attempt to explain ageing in these terms.

[^mrate]: I've left out an important consideration here, which is that rather than worse repair systems, these other mammals might be experiencing higher rates of damage, perhaps due to a higher metabolic rate. A repair system with the same stringency that is exposed to a higher level of damage will let more damage events through. Even if this is true, though, the question remains of why these animals haven't evolved better repair mechanisms to cope with this higher rate of damage.
[^whales]: In addition to being longer-lived than humans, bowhead whales are also larger. This also raises the classic ["why don't all whales get cancer"][peto] problem: if cancer is a matter of mutations, mutations are a matter of chance, and whales have more cells in which the right mutations can accumulate, why don't they all get horrible tumours? There are various theories about this problem, too, none of which I intend to discuss here.

[peto]: https://en.wikipedia.org/wiki/Peto%27s_paradox
