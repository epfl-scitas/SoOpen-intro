# So, you want to go Open?

What are Open Science and Open Source and why would we care.

## A story

Thomas is a senior researcher who has been intensively using a Program to do his research. Several publications have seen the light thanks to the Program, which has been used by several PhD students and PostDocs.

After 20 years of using the Program and happily producing results, it stops working with a Segmentation Fault.

Thomas contact the local HPC support with the following request: my code used to work, it doesn't work on the cluster. Please fix it.

The support discovers that Thomas has turned the warnings off with the '-w' option and turns them back on. This opens a pandora's box. The root of the problem is in how the arrays are accessed. The indexes start at 1, but the loop to access the arrays start with position 0.

### Quizzes

What is wrong with the code?

- no versioning? Probably, but this is not the main issue.
- it's not GPL? It probably has no license, but, again, not the main problem.
- insufficient debugging!
- insufficient testing!

What can go wrong with the results?

- they are not reproducible
- they are not reliable

What can we suggest to Thomas?

- test his code
- unit tests
- maybe there's a more recent version of the code



## Words of wisdom

Consider the paper like an advertisement for your work. Scholarship is in code and data.

### Goals

You should be able to:

1 - change a graph in your paper with minimal effort. This can be achieved by providing the full pipeline that created the data, and intermediate results. If the datapoints are enough to change the graph (for example if you indicated an average when what was really needed was a median), one does not need to re-run the simulations or analysis. If they do, then the code needs to be versioned and the version (or tag) has to appear in the paper.

2 - build on your own code. If there is code performing the task you need, you should not rewrite it from scratch (aka: reinventing the wheel). In order for code to be re-usable, it must be documented and stored in a safe place, along with metadata, and it needs to be readable.

3 - finally, pass on your work to your disciples.

### Don'ts

Things to avoid when writing code:

- messy code, errors, misunderstandings
- irreversible mistakes
- code/software loss
- isolated code/software
- ignored contribution as a developer
- code reinvention or duplication of experimental runs over and over


### What you get

- Get more efficient, and don't lose neither time nor data: *file management*
- More reusable code (by yourself, your colleagues, the world): documentation
- Safer, more reliable, citeable: versioning
- Fosters reappropriation, collabs, acknowledgment
- You can build your code portfolio

## Open Science

Open Science is an umbrella term that involves various movements aiming to remove the barriers for sharing the results as well as the methodologies at any stage of the research process:

- open access to publications
- open research data
- open source software
- open collaboration
- open peer review

Lately, funding bodies committed to the goal of having research funded by the public publicly accessible as far as possible and free of charge.


### Open Source

Generally, the term "open source" refers to something people can modify and share because its design is publicly accessible.

Open source software is software with source code that anyone can inspect, modify, and enhance.

### Free software

Free Software (Logiciel Libre)

A program is Free Software if the program's users have the four essential freedoms:

- The freedom to run the program as you wish, for any purpose (freedom 0).
- The freedom to study how the program works, and change it so it does your computing as you wish (freedom 1). Access to the source code is a precondition for this.
- The freedom to redistribute copies so you can help others (freedom 2).
- The freedom to distribute copies of your modified versions to others (freedom 3). By doing this you can give the whole community a chance to benefit from your changes. Access to the source code is a precondition for this.

The difference between Free Software and Open Source Software lies in the values the two terms wants to emphasize. Often, the term *Free and Open Source Software* (FOSS) is used.

### Freen and Open Source licenses for code

In order to publish a source code a license must be provided :

- A license defines what you is allowed with your work (citation, sharing, maintaining open source chain ...)
- If you use external libraries you might need to specify a license according to them
- Not including a license doesn't mean your code is open !
- Including a license protects your work.

### Open Format

In order for the software and generated data to be reused, it's a good practice to :

- Use open file standards, or if a custom format is really needed you need to give the format used
- Use open languages, libraries so others can install and use and contribute to your code

#### Caveats

Some proprietary software do not allow distribution of the output files. Read the license agreement, or take advantage of the work done by VPSI
https://support.epfl.ch/epfl?id=epfl_eula_conditions


### Confidentiality and publishing

Can we publish everything?

- Make sure you have the agreement of all the authors before publishing
- Make sure the attached data doesn't contains personal data (password, medical records ... )
- When a source code is published with a certain license it might be difficult to change it (talk to the EPFL TTO)
- Publish data and code once paper is out


## Summary

### Things are changing

Scientific practices are changing, in part due to an ever-increasing share of digital scholarship, but also in response to new expectations from various stakeholders.

Research communities are adopting new best practices and standards. 
Funders and journals rapidly adapt their requirements to this cultural evolution. These new criteria will be tomorrow’s norms.

To remain competitive, researchers must be critical, understand the vision and master the skills, tools and infrastructures required to embrace these changes.

Open Science is a response to

- unfair dissemination and growing commodification of knowledge
- urreproducibility and sloppy science due to pressure to produce (positive) results
- too long delay from discovery to dissemination
- failure to take into consideration scholarship beyond publications in the evaluation process
- data lifecycles looking like this:

![](life_cycle-b4.png "")

where the raw data can be stored on CDs, external USB drives in a shelf or even paper notebooks.


Open Science is also an opportunity to

- make the entire research process transparent and accessible
- increase cooperation and efficiency, and therefore impact
- change the way scholarly knowledge is produced, evaluated and disseminated
- claim back ownership for scientific community
- enable trust and facilitate knowledge transfer from academia to society
- have your data lifecycle looking like this:

![](life_cycle.png "")

where:
- the raw data is archived on a proper solution, often researchers archive the clean data
- all the code is versioned and stored in repositories
- since all the process is supposed to be reproducible, intermediate data can be either stored (archive, medium term storage) or destroyed, depending on the cost of regenerating it. 

## Links and references


### Useful links

- [How open science helps researchers succeed](https://europepmc.org/articles/pmc4973366)
- [Handbook of Open Source Tools](https://link.springer.com/book/10.1007%2F978-1-4419-7719-9)
- [Top 10 metrics for life science software good practices](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC5007752/)
- [Good enough practices in scientific computing](https://journals.plos.org/ploscompbiol/article?id=10.1371/journal.pcbi.1005510)
- [EPFL's Software usage conditions](https://support.epfl.ch/epfl?id=epfl_eula_conditions)

### Images in the presentation

- [PhD comics, reproducibility 1](http://phdcomics.com/comics/archive.php?comicid=1689)
- [PhD comics, reproducibility 2](https://phdcomics.com/comics/archive.php?comicid=1692)
- [Obfuscated C code](https://www.ioccc.org/2018/bellard/prog.c)
- [Measels graph](https://www.statista.com/chart/12973/europe-sees-a-400-increase-in-measles-cases-in-2017/)
- [Lonely coder](http://www.commitstrip.com)
- [Ignored kitten](https://memegenerator.net/img/instances/62515986/dont-ignore-me-it-hurts.jpg)
- [Code reuse](https://hermesespinola.files.wordpress.com/2016/11/code-reuse.jpg?w=842)

