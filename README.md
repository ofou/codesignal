# 👨‍💻 codesignal

> _“For the things we have to learn before we can do them, we learn by doing them.”_
> ― Aristotle, _The Nicomachean Ethics_

Here are my [`codesignal`](https://app.codesignal.com/profile/ofou) solutions! I'm using the platform in order to improve my Computer Science & Coding skills. It has took me about **100 hours** so far to reach level 26 and I'm eager to finish the full Arcade track plus the Interview Practice. I'm tracking my coding time using [`rescuetime`](rescuetime.com/rp/ofou/signup/solo/lite). If you have any comments or suggestions about my code, please let me know, I'll very happy reciving any kind of feedback!

I'm also using [`exercism`](https://github.com/ofou/exercism) and [`freeCodeCamp`](https://www.freecodecamp.org/ofou), both are great ways to improve your skills futher using the command line or web browser.

<!-- @import "[TOC]" {cmd="toc" depthFrom=2 depthTo=4 orderedList=false} -->

<!-- code_chunk_output -->

- [Intro (7/60)](#intro-760)
- [Databases (51/84)](#databases-5184)
- [The Core (5/162)](#the-core-5162)
- [Python (0/92)](#python-092)
- [Graphs (0/66)](#graphs-066)
- [Interview Practice (0/110)](#interview-practice-0110)
  - [Data Structures](#data-structures)
    - [Arrays](#arrays)
    - [Linked Lists](#linked-lists)
    - [Hash Tables](#hash-tables)
    - [Trees: Basic](#trees-basic)
    - [Heaps, Stacks, Queues](#heaps-stacks-queues)
    - [Graphs](#graphs)
    - [Trees: Advanced](#trees-advanced)
  - [Sorting & Searching](#sorting-searching)
    - [Depth-First Search & Breadth-First Search](#depth-first-search-breadth-first-search)
    - [Backtracking](#backtracking)
    - [Sorting](#sorting)
  - [Dynamic Programming](#dynamic-programming)
    - [Dynamic Programming: Basic](#dynamic-programming-basic)
    - [Dynamic Programming: Advanced](#dynamic-programming-advanced)
  - [Special Topics](#special-topics)
    - [Common Techniques: Basic](#common-techniques-basic)
    - [Strings](#strings)
    - [Bits](#bits)
    - [Common Techniques: Advanced](#common-techniques-advanced)
    - [RegEx](#regex)
  - [Math](#math)
    - [Number Theory](#number-theory)
    - [Counting](#counting)
    - [Geometry](#geometry)

<!-- /code_chunk_output -->

## Intro (7/60)

## Databases (51/84)

##### [projectList](/arcade/db/projectList.sql)

```sql
CREATE PROCEDURE projectList()
BEGIN
    SELECT project_name, team_lead, income FROM Projects;
END
```

##### [countriesSelection](/arcade/db/countriesSelection.sql)

```sql
CREATE PROCEDURE countriesSelection()
BEGIN
  SELECT name, continent, population FROM countries WHERE continent = "Africa";
END
```

##### [monthlyScholarships](/arcade/db/monthlyScholarships.sql)

```sql
CREATE PROCEDURE monthlyScholarships()
BEGIN
  SELECT id, SUM(scholarship)/12 as "scholarship" FROM scholarships GROUP BY id;
END
```

##### [projectsTeam](/arcade/db/projectsTeam.sql)

```sql
CREATE PROCEDURE projectsTeam()
BEGIN
  SELECT name from projectLog group by name ORDER BY name ASC;
END
```

##### [automaticNotifications](/arcade/db/automaticNotifications.sql)

```sql
CREATE PROCEDURE automaticNotifications()
    SELECT email
    FROM users
    WHERE role NOT IN ("admin", "premium")
    ORDER BY email;
```

## The Core (5/162)

## Python (0/92)

## Graphs (0/66)

## Interview Practice (0/110)

### Data Structures

#### Arrays

#### Linked Lists

#### Hash Tables

#### Trees: Basic

#### Heaps, Stacks, Queues

#### Graphs

#### Trees: Advanced

### Sorting & Searching

#### Depth-First Search & Breadth-First Search

#### Backtracking

#### Sorting

### Dynamic Programming

#### Dynamic Programming: Basic

#### Dynamic Programming: Advanced

### Special Topics

#### Common Techniques: Basic

#### Strings

#### Bits

#### Common Techniques: Advanced

#### RegEx

### Math

#### Number Theory

#### Counting

#### Geometry
