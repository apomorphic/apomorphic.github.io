Title: Final Version Perfected: An Underused Execution Algorithm
Date: 2020-12-03
Tags: rationality, productivity, self-improvement
Slug: final-version-perfected
Status: published

*Crossposted from [LessWrong](https://www.lesswrong.com/posts/xfcKYznQ6B9yuxB28/final-version-perfected-an-underused-execution-algorithm).*

# TLDR

*   [Final Version Perfected](http://markforster.squarespace.com/blog/2015/5/21/the-final-version-perfected-fvp.html) (FVP) is a highly effective algorithm for deciding which tasks from your To-Do lists to do in what order.
*   The design of the [algorithm](https://www.lesswrong.com/posts/xfcKYznQ6B9yuxB28/final-version-perfected-an-underused-execution-algorithm#The_FVP_Algorithm) makes it far more efficient than exhaustive ranking, while (in my experience) far more effective than just reading through the tasks and picking one out.
*   FVP is most useful when you have a large number of tasks to choose from, don’t have time to do all of them, and are initially unsure about which is best.
*   I find FVP very effective at overcoming psychological issues like indecision, procrastination, or [psychological aversion to particular tasks](https://medium.com/@robertwiblin/ugh-fields-or-why-you-can-t-even-bear-to-think-about-that-task-5941837dac62).
*   Currently there are limited online tools available, and I mostly use FVP with paper lists. Ideas (or tools) for better online execution of FVP would be very valuable to me.

# Introduction

Execution is the [Last Mile Problem](https://en.wikipedia.org/wiki/Last_mile_(transportation)) of productivity infrastructure. You can put as much effort as you like into organising your goals, organising your To-Do lists, organising your calendar, but sooner or later you will be presented with more than one thing you could reasonably be doing with your time. When that happens, you will need some sort of method for choosing what that thing will be, and actually getting started.

Most people, I think, face this problem by either just doing the thing that is top-of-mind or looking through their To-Do list and picking something out. This works fine when the next thing to do is obvious, and you have no problems getting started on it. But when you have many potential things to do and aren’t sure which is best, or when you kind of know what the best next thing is but are avoiding it for one reason or another, you need a better system.

That system needs to be quick to execute, easy to remember, and effective at actually having you do the best next task. It needs to be robust to your psychological weaknesses, minimising procrastination, indecision, and ugh fields. It needs to be efficient, requiring as little work as possible to identify the most valuable task.

Enter [Final Version Perfected](http://markforster.squarespace.com/blog/2015/5/21/the-final-version-perfected-fvp.html).

# The FVP Algorithm

The algorithm for executing tasks under FVP is pretty simple. You can find a description of it by the designer [here](http://markforster.squarespace.com/blog/2015/5/21/the-final-version-perfected-fvp.html), but here’s my version:

1.  Put all the tasks you have to choose from into one big unsorted list.
2.  **Mark** the first item on the list. **Don’t do it yet.**
3.  For each *subsequent* item on the list, ask yourself, "Do I want to do this task more than the *last task I marked*?" If yes, **mark it**. If no, **don't mark it**. Move on to the next item.
4.  When you reach the end of the list, trace back up to find the bottom-most marked task. **Do it**, then **cross it off** the list.
5.  Beginning with the next unmarked task *after the task you just crossed off*, repeat step 3, comparing each task to the bottom-most uncrossed marked task (i.e. the one prior to the one you just crossed out).
6.  Go to step 4. Repeat until you run out of time or list items.

In FVP, then, you perform a series of pairwise comparisons between tasks, in each case asking whether the new task is something you *want to do more than* the old task. The “want to do more than” comparison is deliberately vague: Depending on context, it might be the thing that would best move your project forward, the thing that would have the worst consequences if you didn’t do it, or the thing you would most enjoy doing. The key thing is that at each stage, you’re only comparing each task to the *most recent task you marked*, ignoring all previous tasks.

I'll talk more in a moment about why I think this algorithm is a good one, but first, let’s work through an example. (If you're sure you already understand the algorithm, click [here](https://www.lesswrong.com/posts/xfcKYznQ6B9yuxB28/final-version-perfected-an-underused-execution-algorithm#FVP__Why_and_why_not) to go straight to the pros and cons.)

# A long-ish example

Let's say this is my to-do list for today:

*   Buy milk
*   Finish term paper
*   Play video games
*   Work out
*   Save the world
*   Walk the dog

I start by marking the first item:

*   **× Buy milk**
*   Finish term paper
*   Play video games
*   Work out
*   Save the world
*   Walk the dog

Then I compare it to the next item on the list. Which do I want to do more, finish the term paper or buy milk? Well, the term paper is due today, and I don't need milk until tomorrow, so I decide to do the term paper first.

*   **× Buy milk**
*   **× Finish term paper**
*   Play video games
*   Work out
*   Save the world
*   Walk the dog

Moving on to item 3. I already decided I want to finish the term paper before buying milk, so I can ignore the milk for now. Do I want to play video games or finish my term paper? Well, in some sense I *want* to play video games more, but my all-things-considered *endorsement* is to finish the term paper first, so I leave item 3 unmarked.

Next, item 4: do I want to finish the term paper or work out? Well, in some sense I'd rather not do either, and in another sense the term paper is more urgent, but working out is important, I've heard it has [cognitive benefits](https://en.wikipedia.org/wiki/Neurobiological_effects_of_physical_exercise), and I know from experience that if I don't do it first thing I won't do it, so it takes precedence:

*   **× Buy milk**
*   **× Finish term paper**
*   Play video games
*   **× Work out**
*   Save the world
*   Walk the dog

Item 5: oh yeah, I forgot, I need to save the world today. Damn. Well, I can't work out if there's no world to work out in, so I guess I’ll do that first.

*   **× Buy milk**
*   **× Finish term paper**
*   Play video games
*   **× Work out**
*   **× Save the world**
*   Walk the dog

Ditto for walking the dog: much though I love him, I won't have anywhere to walk him if I don't save the world first, so that takes precedence again.

I've finished the list now, so it's time to do the last item on the list. Looks like that's saving the world. Luckily, it doesn't take long:

*   **× Buy milk**
*   **× Finish term paper**
*   Play video games
*   **× Work out**
*   <s>× Save the world</s>  ✓
*   Walk the dog

Now that I've done the highest priority task on the list, I go back to FVP to determine the next one. There's actually only one comparison I need to make: work out or walk the dog? Walking the dog can wait until the evening, so it’s time to head to the gym.

*   **× Buy milk**
*   **× Finish term paper**
*   Play video games
*   <s>× Work out</s>  ✓
*   <s>× Save the world</s>  ✓
*   Walk the dog

Again, there's only one more comparison I need to do to determine my next top task: do I want to finish my term paper, or walk the dog? And again, walking the dog isn't that urgent, so I spend a few hours on the term paper.

*   **× Buy milk**
*   <s>× Finish term paper</s>  ✓
*   Play video games
*   <s>× Work out</s>  ✓
*   <s>× Save the world</s>  ✓
*   Walk the dog

Now I'm all the way back to the top of the list! But now there are *two* more comparisons to make to decide on the next task. First, do I want to buy milk, or play video games? I've worked pretty hard so far today, and buying milk isn't that important, so let's play games first:

*   **× Buy milk**
*   <s>× Finish term paper</s>  ✓
*   **× Play video games**
*   <s>× Work out</s>  ✓
*   <s>× Save the world</s>  ✓
*   Walk the dog

Finally, do I want to walk the dog or play video games? The dog has been waiting for hours for a walk now, and I could do with some fresh air, and I'd feel guilty just gaming without taking him out, so let's do that first:

*   **× Buy milk**
*   <s>× Finish term paper</s>  ✓
*   **× Play video games**
*   <s>× Work out</s>  ✓
*   <s>× Save the world</s>  ✓
*   **× Walk the dog**

There's no unmarked tasks in the list now, so to finish I just work up the list in order: first walking the dog, then playing games, then, finally, buying milk.

# FVP: Why and why not

The usefulness of FVP depends on a few key assumptions.

*   Firstly, the algorithm assumes your preferences are [transitive](https://en.wikipedia.org/wiki/Transitive_relation#Examples), and that you can accurately assess the value of each task according to your preferences. These are pretty fundamental assumptions that will be integral to almost any list-based execution system. In reality, your preferences probably aren’t quite transitive, but hopefully they are close enough that pretending they are is reasonable. As for accurately assessing each task, well, no execution algorithm can prevent you from making any mistakes, but FVP is more effective than most at eliciting your best guesses.
*   Secondly, FVP assumes that your preferences are **stable** over the timeframe you're using it. If your preferences shift substantially over that period, such that you need to re-prioritise among the existing tasks on your list, you'll need to throw out your previous FVP and start again. This places some constraints on the timescale you can organise using a single FVP iteration: I seldom stick with the same iteration for longer than a day. (Note, though, that FVP can handle the addition of *new* tasks quite easily, as long as they don’t alter the existing order.)
*   Thirdly, the value of FVP is greatest when you are **unsure** about which task you should do next, and especially when you don’t have time to do every task you might want to do that day. I find FVP most useful when I have a lot of different tasks competing for my time; it is much less useful when my time is pre-allocated to a single, well-planned-out task.

When these conditions are met, FVP is a *very* effective method for guiding action. It is both efficient and exhaustive: guaranteed to identify the top-priority task while avoiding most of the work involved in producing a complete ranking. It is a simple algorithm, easy to remember and quick to perform. After doing it for a while, I find it scarcely requires conscious thought – but still reliably identifies the most valuable task for me to work on.

The biggest benefit I get from FVP, though, is how much easier it makes it to [do important things I'd rather avoid](https://medium.com/@robertwiblin/ugh-fields-or-why-you-can-t-even-bear-to-think-about-that-task-5941837dac62). There is something about a bald, pairwise comparison between two tasks that is highly effective at overcoming my aversion to difficult things. If an important but unpleasant task is nestled within a long to-do list of minor-but-rewarding busywork, it is easy for my eye to skip over the difficult task, defer it till tomorrow, and work on something more pleasant instead. It's much harder to do that when comparing the important task to each minor task in isolation.

FVP is also good at minimising [time lost due to indecision](https://en.wikipedia.org/wiki/Buridan%27s_ass). When presented with a menu of tasks to choose from, it can be quite hard to select a single task to work on first. When that choice process is reduced to a series of simple pairwise comparisons, the choosing process as a whole becomes much easier. And, once I've finished with FVP and selected a single winning task, there's an impetus towards starting that makes me much less prone to procrastination.

One last brief note on infrastructure: due to its relative obscurity, I haven’t found great online tools for FVP. [Complice](http://complice.co/)’s starred-task system can be passably adapted to the algorithm, but in general I’ve found physical paper lists to work best. When I was at work I would print off my Todoist task lists and use those; now I’m working from home I mostly write them out by hand. This is kind of time-consuming and redundant, so if you dislike paper notes and don’t have access to a printer it might be a significant mark against FVP.

I’d really love it if someone created a great online tool for FVP or integrated it more formally into an existing productivity application, but I don’t expect that to happen any time soon. In the meantime, if you have ideas for existing ways to execute FVP online, I’d love to hear about them!
