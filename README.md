# 👨‍💻 codesignal

> **_“I never am really satisfied that I understand anything; because, understand it well as I may, my comprehension can only be an infinitesimal fraction of all I want to understand about the many connections and relations which occur to me.”_**
> — Ada Lovelace

Here are my [`codesignal`](https://app.codesignal.com/profile/ofou) solutions! I'm using its platform in order to improve my Computer Science & Coding skills, especially in Python and SQL. It has took me about **29 hours** so far to reach _level 26_ and I'm eager to finish the full Arcade track plus the Interview Practice. I'm tracking my coding time using [`rescuetime`](rescuetime.com/rp/ofou/). If you have any comments or suggestions about my code, please open an issue, I'll very happy reciving any kind of feedback!

I'm also using [`exercism`](https://github.com/ofou/exercism) and [`freeCodeCamp`](https://www.freecodecamp.org/ofou), both are great ways to improve your skills futher using the command line or web browser.

<!-- @import "[TOC]" {cmd="toc" depthFrom=2 depthTo=4 orderedList=false} -->

<!-- code_chunk_output -->

- [**Intro (14/60)**](#intro-1460)
- [**Databases (51/84)**](#databases-5184)
- [**The Core (5/162)**](#the-core-5162)
- [**Python (0/92)**](#python-092)
- [**Graphs (0/66)**](#graphs-066)
- [**Interview Practice (0/110)**](#interview-practice-0110)
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

---

## **Intro (14/60)**

##### [add](/arcade/intro/level-1/add.py)

```python
def add(param1, param2):
    return param1 + param2
```

##### [centuryFromYear](/arcade/intro/level-1/centuryFromYear.py)

```python
def centuryFromYear(year):
    if year % 100 == 0:
        return year // 100
    else:
        return (year // 100) + 1

```

##### [checkPalindrome](/arcade/intro/level-1/checkPalindrome.py)

```python
def checkPalindrome(inputString):
    return inputString[::-1] == inputString
```

##### [adjacentElementsProduct](/arcade/intro/level-2/adjacentElementsProduct.py)

```python
def adjacentElementsProduct(inputArray):
    candidates = []
    for i, num in enumerate(inputArray):
        if i+1 == len(inputArray):
            break
        candidates.append(inputArray[i]*inputArray[i+1])
    return max(candidates)
```

##### [shapeArea](/arcade/intro/level-2/shapeArea.py)

```python
def shapeArea(n):
    area = 2*n-1
    for j in range(1, 2*n-1, 2):
        area = area+2*j
    return area
```

##### [makeArrayConsecutive2](/arcade/intro/level-2/makeArrayConsecutive2.py)

```python
def makeArrayConsecutive2(statues):
    result = 0
    statues.sort()
    for i, statue in enumerate(statues):
        if (i < len(statues)-1):
            result += statues[i+1] - statues[i] - 1
    return result
```

##### [almostIncreasingSequence](/arcade/intro/level-2/almostIncreasingSequence.py)

```python
def almostIncreasingSequence(sequence):
    erase = True
    for i in range(len(sequence)-1):
        if sequence[i] < sequence[i+1]:
            pass
        elif sequence[i-1] < sequence[i+1] and erase:
            erase = False
        elif i == 0 and erase:
            erase = False
        elif len(sequence)-2 == i and erase:
            erase = False
        elif sequence[i-1] == sequence[i+1] and erase and sequence[i] != sequence[i+2]:
            erase = False
        else:
            return False
    return True
```

##### [matrixElementsSum](arcade/intro/level-2/matrixElementsSum.py)

```python
def matrixElementsSum(matrix):
    sum = 0
    ghost = []
    for i, row in enumerate(matrix):
        for j, value in enumerate(row):
            if value == 0:
                ghost.append(j)
            if(j in ghost):
                continue
            sum += value
    return sum
```

##### [allLongestStrings](/arcade/intro/level-3/allLongestStrings.py)

```python
def allLongestStrings(inputArray):
    elements = {}
    for word in inputArray:
        if len(word) in elements.keys():
            elements[(len(word))].append(word)
        else:
            elements[(len(word))] = [word]
    return list(elements[max(elements.keys())])
```

##### [commonCharacterCount](/arcade/intro/level-3/commonCharacterCount.py)

```python
def commonCharacterCount(s1, s2):
    A = {x: sum(len(i) for i in s1 if x == i) for x in list(s1)}
    B = {x: sum(len(i) for i in s2 if x == i) for x in list(s2)}
    U = set(A) & set(B)
    commonCharacterCount = 0
    for a in A:
        if a in U:
            commonCharacterCount += min(A[a], B[a])
    return commonCharacterCount
```

##### [isLucky](/arcade/intro/level-3/isLucky.py)

```python
def isLucky(n):
    numbers = list(map(int, str(n)))
    return (sum(numbers[:len(numbers)//2]) == sum(numbers[len(numbers)//2:]))
```

##### [sortByHeight](/arcade/intro/level-3/sortByHeight.py)

```python
def sortByHeight(people):
    peopleWithTrees = list(
        filter(lambda tree: tree != -1, sorted(people)))[::-1]
    sortedHeights = []
    for element in people:
        if element == -1:
            sortedHeights.append(element)
        else:
            sortedHeights.append(peopleWithTrees.pop())
    return sortedHeights

```

##### [reverseInParentheses](/arcade/intro/level-3/reverseInParentheses.py)

```python
def reverseInParentheses(inputString):
    stack = []
    temp = ''
    for index, letter in enumerate(inputString):
        if (letter == '('):
            stack.append(temp)
            temp = ''
        elif (letter == ')'):
            temp = stack.pop() + temp[::-1]
        else:
            temp += letter
    if not temp == '':
        stack.append(temp)
    return ''.join(stack)
```

##### [alternatingSums](/arcade/intro/level-4/alternatingSums.py)

```python
from functools import reduce


def alternatingSums(elements):
    a = [team[1] for team in enumerate(elements) if team[0] % 2 == 0]
    b = [team[1] for team in enumerate(elements) if team[0] % 2 == 1]
    team_a = reduce(lambda x, y: x+y, a, 0)
    team_b = reduce(lambda x, y: x+y, b, 0)
    return [team_a, team_b]

```

## **Databases (51/84)**

##### [projectList](/arcade/db/welcome-to-the-table/projectList.sql)

```sql
CREATE PROCEDURE projectList() BEGIN
SELECT project_name,
    team_lead,
    income
FROM Projects;
END
```

##### [countriesSelection](/arcade/db/welcome-to-the-table/countriesSelection.sql)

```sql
CREATE PROCEDURE countriesSelection() BEGIN
SELECT name,
	continent,
	population
FROM countries
WHERE continent = "Africa";
END
```

##### [monthlyScholarships](/arcade/db/welcome-to-the-table/monthlyScholarships.sql)

```sql
CREATE PROCEDURE monthlyScholarships() BEGIN
SELECT id,
    SUM(scholarship) / 12 AS "scholarship"
FROM scholarships
GROUP BY id;
END
```

##### [projectsTeam](/arcade/db/welcome-to-the-table/projectsTeam.sql)

```sql
CREATE PROCEDURE projectsTeam() BEGIN
SELECT name
FROM projectLog
GROUP BY name
ORDER BY name ASC;
END
```

##### [automaticNotifications](/arcade/db/welcome-to-the-table/automaticNotifications.sql)

```sql
CREATE PROCEDURE automaticNotifications()
SELECT email
FROM users
WHERE role NOT IN ("admin", "premium")
ORDER BY email;
```

##### [volleyballResults](/arcade/db/always-leave-table-in-order/volleyballResults.sql)

```sql
CREATE PROCEDURE volleyballResults() BEGIN
SELECT *
FROM results
ORDER BY wins ASC;
END
```

##### [mostExpensive](/arcade/db/always-leave-table-in-order/mostExpensive.sql)

```sql
CREATE PROCEDURE mostExpensive() BEGIN
select name
from Products
group by id
order by sum(price * quantity) desc,
    name ASC
LIMIT 1;
END
```

##### [contestLeaderboard](/arcade/db/always-leave-table-in-order/contestLeaderboard.sql)

```sql
CREATE PROCEDURE contestLeaderboard() BEGIN
SELECT name
FROM leaderboard
ORDER BY score DESC
LIMIT 3, 5;
END
```

##### [gradeDistribution](/arcade/db/always-leave-table-in-order/gradeDistribution.sql)

```sql
CREATE PROCEDURE gradeDistribution() BEGIN
select Name,
    ID
from Grades
WHERE (
        Final > (Midterm1 * 0.25 + Midterm2 * 0.25 + Final * 0.50)
        and Final > (Midterm1 * 0.5 + Midterm2 * 0.5)
    )
GROUP BY id
ORDER BY SUBSTRING(name, 1, 3) ASC,
    id ASC;
END
```

##### [mischievousNephews](/arcade/db/always-leave-table-in-order/mischievousNephews.sql)

```sql
CREATE PROCEDURE mischievousNephews() BEGIN
select WEEKDAY(mischief_date) as weekday,
    mischief_date,
    author,
    title
from mischief
ORDER BY weekday,
    FIELD(author, "Huey", "Dewey", "Louie"),
    mischief_date,
    title;
END
```

##### [suspectsInvestigation](/arcade/db/would-you-like-the-second-meal/suspectsInvestigation.sql)

```sql
CREATE PROCEDURE suspectsInvestigation() BEGIN
SELECT id,
    name,
    surname
from Suspect
WHERE (
        height <= 170
        AND LEFT(name, 1) = "B"
    )
    AND surname LIKE 'GRE_N'
ORDER BY id;
END
```

##### [suspectsInvestigation2](/arcade/db/would-you-like-the-second-meal/suspectsInvestigation2.sql)

```sql
CREATE PROCEDURE suspectsInvestigation2() BEGIN
SELECT id,
    name,
    surname
from Suspect
WHERE NOT height > 170
    OR NOT (
        LEFT(name, 1) = "B"
        AND surname LIKE 'GRE_N'
    )
ORDER BY id;
END
```

##### [securityBreach](/arcade/db/would-you-like-the-second-meal/securityBreach.sql)

```sql
CREATE PROCEDURE securityBreach() BEGIN
SELECT first_name,
    second_name,
    attribute
FROM users
WHERE attribute LIKE CONCAT(
        '_%*%',
        BINARY(first_name),
        '*_',
        BINARY(second_name),
        '*%%'
    ) ESCAPE '*'
ORDER BY attribute ASC;
END
```

##### [testCheck](/arcade/db/would-you-like-the-second-meal/testCheck.sql)

```sql
CREATE PROCEDURE testCheck()
SELECT id,
    IF (
        given_answer IS NULL,
        "no answer",
        IF(
            given_answer = correct_answer,
            "correct",
            "incorrect"
        )
    ) AS checks
FROM answers
ORDER BY id;
```

##### [expressionsVerification](/arcade/db/would-you-like-the-second-meal/expressionsVerification.sql)

```sql
CREATE PROCEDURE expressionsVerification() BEGIN
SELECT id,
    a,
    b,
    operation,
    c
FROM expressions
WHERE TRUE = CASE
        WHEN operation = "+" THEN (a + b) = c
        WHEN operation = "*" THEN (a * b) = c
        WHEN operation = "/" THEN (a / b) = c
        WHEN operation = "-" THEN (a - b) = c
    END;
END
```

##### [newsSubscribers](/arcade/db/would-you-like-the-second-meal/newsSubscribers.sql)

```sql
CREATE PROCEDURE newsSubscribers() BEGIN
SELECT subscriber
FROM full_year
WHERE newspaper LIKE '%Daily%'
UNION
SELECT subscriber
FROM half_year
WHERE newspaper LIKE '%Daily%'
ORDER BY SUBSTRING(subscriber, 1, 10) ASC;
END
```

##### [countriesInfo](/arcade/db/group-dishes-by-type/countriesInfo.sql)

```sql
CREATE PROCEDURE countriesInfo() BEGIN
SELECT count(name) as number,
    sum(population) / count(name) as average,
    sum(population) as total
FROM countries;
END
```

##### [itemCounts](/arcade/db/group-dishes-by-type/itemCounts.sql)

```sql
CREATE PROCEDURE itemCounts() BEGIN
SELECT item_name,
    item_type,
    COUNT(item_name) as item_count
FROM availableItems
GROUP BY item_name,
    item_type
ORDER BY item_type ASC,
    item_name ASC;
END
```

##### [usersByContinent](/arcade/db/group-dishes-by-type/usersByContinent.sql)

```sql
CREATE PROCEDURE usersByContinent() BEGIN
SELECT continent,
    SUM(users) AS users
FROM countries
GROUP BY continent
ORDER BY users DESC;
END
```

##### [movieDirectors](/arcade/db/group-dishes-by-type/movieDirectors.sql)

```sql
CREATE PROCEDURE movieDirectors() BEGIN
SELECT director
FROM moviesInfo
WHERE (moviesInfo.year > 2000)
GROUP BY director
HAVING SUM(moviesInfo.oscars) > 2
ORDER BY director ASC;
END
```

##### [travelDiary](/arcade/db/group-dishes-by-type/travelDiary.sql)

```sql
CREATE PROCEDURE travelDiary() BEGIN
SELECT GROUP_CONCAT(
        DISTINCT country
        ORDER BY country ASC SEPARATOR ';'
    ) as countries
FROM diary;
END
```

##### [soccerPlayers](/arcade/db/group-dishes-by-type/soccerPlayers.sql)

```sql
CREATE PROCEDURE soccerPlayers() BEGIN
SELECT GROUP_CONCAT(results SEPARATOR '; ') AS players
FROM (
        SELECT CONCAT(
                first_name,
                ' ',
                surname,
                ' ',
                '#',
                player_number
            ) AS results
        FROM soccer_team
        GROUP BY first_name
        ORDER BY player_number ASC
    ) AS players;
END
```

##### [marketReport](/arcade/db/group-dishes-by-type/marketReport.sql)

```sql
CREATE PROCEDURE marketReport() BEGIN
SELECT country,
    COUNT(DISTINCT competitor) AS competitors
FROM foreignCompetitors
GROUP BY country
UNION
SELECT "Total:" AS country,
    COUNT(competitor) AS competitors
FROM foreignCompetitors;
END
```

##### [websiteHacking](/arcade/db/time-for-tricks/websiteHacking.sql)

```sql
CREATE PROCEDURE websiteHacking()
SELECT id,
    login,
    name
FROM users
WHERE type = 'user'
    OR TRUE
ORDER BY id
```

##### [nullIntern](/arcade/db/time-for-tricks/nullIntern.sql)

```sql
CREATE PROCEDURE nullIntern() BEGIN
SELECT COUNT(id) as number_of_nulls
from departments
WHERE isnull(description)
    or REPLACE(lower(description), ' ', '') in ('null', 'nil', '-');
END
```

##### [legsCount](/arcade/db/time-for-tricks/legsCount.sql)

```sql
DROP PROCEDURE IF EXISTS legsCount;
CREATE PROCEDURE legsCount()
SELECT sum(
        CASE
            WHEN type = "human" then 2
            WHEN type = "dog" then 4
            WHEN type = "cat" then 4
        END
    ) as summary_legs
FROM creatures
ORDER BY id;
```

##### [combinationLock](/arcade/db/time-for-tricks/combinationLock.sql)

```sql
CREATE PROCEDURE combinationLock() BEGIN
SELECT ROUND(EXP(SUM(LOG(length(characters))))) as combinations
FROM discs;
END
```

##### [interestClub](/arcade/db/specialties/interestClub.sql)

```sql
CREATE PROCEDURE interestClub()
SELECT name
FROM people_interests
WHERE interests & 8
    AND interests & 1
ORDER BY name
```

##### [personalHobbies](/arcade/db/specialties/personalHobbies.sql)

```sql
CREATE PROCEDURE personalHobbies() BEGIN
SELECT name
from people_hobbies
where FIND_IN_SET('reading', hobbies)
    AND FIND_IN_SET('sports', hobbies)
ORDER BY name ASC;
END
```

##### [booksCatalogs](/arcade/db/specialties/booksCatalogs.sql)

```sql
CREATE PROCEDURE booksCatalogs() BEGIN
SELECT ExtractValue(xml_doc, '/catalog/book[1]/author[1]') as author
FROM catalogs
ORDER BY author;
END
```

##### [habitatArea](/arcade/db/specialties/habitatArea.sql)

```sql
CREATE PROCEDURE habitatArea() BEGIN
SELECT st_area(
        st_ConvexHull(
            st_GeomFromText(
                CONCAT('Multipoint(', GROUP_CONCAT(x, " ", y), ')')
            )
        )
    ) as area
from places;
END
```

##### [orderOfSuccession](/arcade/db/when-was-it-the-case/orderOfSuccession.sql)

```sql
CREATE PROCEDURE orderOfSuccession() BEGIN
SELECT CASE
        WHEN gender = 'F' THEN concat('Queen ', name)
        WHEN gender = 'M' THEN concat('King ', name)
    END as name
FROM Successors
ORDER BY birthday ASC;
END
```

##### [orderingEmails](/arcade/db/when-was-it-the-case/orderingEmails.sql)

```sql
CREATE PROCEDURE orderingEmails() BEGIN
SELECT id,
    email_title,
    CASE
        WHEN size < pow(2, 10) THEN concat(0, ' Kb')
        WHEN size < pow(2, 20) THEN concat(floor(size / pow(2, 10)), ' Kb')
        WHEN size >= pow(2, 20) THEN concat(floor(size / pow(2, 20)), ' Mb')
    END as short_size
from emails
ORDER BY size DESC;
END
```

##### [placesOfInterest](/arcade/db/when-was-it-the-case/placesOfInterest.sql)

```sql
CREATE PROCEDURE placesOfInterest() BEGIN
SELECT country,
    SUM(
        CASE
            WHEN leisure_activity_type = 'Adventure Park' THEN number_of_places
            ELSE 0
        END
    ) as adventure_park,
    SUM(
        CASE
            WHEN leisure_activity_type = 'Golf' THEN number_of_places
            ELSE 0
        END
    ) as golf,
    SUM(
        CASE
            WHEN leisure_activity_type = 'River cruise' THEN number_of_places
            ELSE 0
        END
    ) as river_cruise,
    SUM(
        CASE
            WHEN leisure_activity_type = 'Kart racing' THEN number_of_places
            ELSE 0
        END
    ) as kart_racing
FROM countryActivities
group by country
ORDER BY country ASC;
END
```

##### [soccerGameSeries](/arcade/db/when-was-it-the-case/soccerGameSeries.sql)

```sql
CREATE PROCEDURE soccerGameSeries() BEGIN
SELECT (
        CASE
            WHEN SUM(first_team_score) > SUM(second_team_score) THEN 1
            WHEN SUM(first_team_score) < SUM(second_team_score) THEN 2
            WHEN SUM(first_team_score) = SUM(second_team_score) THEN (
                CASE
                    WHEN SUM(first_team_score) - SUM(second_team_score) > 0 THEN 1
                    WHEN SUM(second_team_score) - SUM(first_team_score) > 0 THEN 2
                    WHEN SUM(second_team_score) - SUM(first_team_score) = 0 THEN (
                        CASE
                            WHEN SUM(
                                CASE
                                    WHEN match_host = 2 then first_team_score
                                END
                            ) > SUM(
                                CASE
                                    WHEN match_host = 1 then second_team_score
                                END
                            ) THEN 1
                            WHEN SUM(
                                CASE
                                    WHEN match_host = 2 then first_team_score
                                END
                            ) < SUM(
                                CASE
                                    WHEN match_host = 1 then second_team_score
                                END
                            ) THEN 2
                            WHEN SUM(
                                CASE
                                    WHEN match_host = 2 then first_team_score
                                END
                            ) = SUM(
                                CASE
                                    WHEN match_host = 1 then second_team_score
                                END
                            ) THEN 0
                        END
                    )
                END
            ) # WHEN SUM(first_team_score) = SUM(second_team_score) THEN 1 ELSE 2
        END
    ) as winner
FROM scores;
END
```

##### [correctIPs](/arcade/db/regular-paradise/correctIPs.sql)

```sql
CREATE PROCEDURE correctIPs() BEGIN
SELECT id,
    ip
FROM ips
WHERE ip REGEXP(
        '^[0-9]{2,3}[.][0-9]{1,3}[.][0-9]{1,3}[.][0-9]{1,3}|[0-9]{1,3}[.][0-9]{2,3}[.][0-9]{1,3}[.][0-9]{1,3}|[0-9]{1,3}[.][0-9]{1,3}[.][0-9]{2,3}[.][0-9]{1,3}|[0-9]{1,3}[.][0-9]{1,3}[.][0-9]{1,3}[.][0-9]{2,3}$'
    )
    and IS_IPV4(ip)
ORDER BY id;
END
```

##### [validPhoneNumbers](/arcade/db/regular-paradise/validPhoneNumbers.sql)

```sql
CREATE PROCEDURE validPhoneNumbers() BEGIN
SELECT name,
    surname,
    phone_number
from phone_numbers
WHERE phone_number REGEXP('^((1-)|\\(1\\))[0-9]{3}-[0-9]{3}-[0-9]{4}$')
ORDER BY surname;
END
```

##### [importantEvents](/arcade/db/time-river-revisited/importantEvents.sql)

```sql
CREATE PROCEDURE importantEvents() BEGIN
SELECT *
FROM events
ORDER BY CASE
        WHEN weekday(event_date) = 0 THEN 0
        WHEN weekday(event_date) = 1 THEN 1
        WHEN weekday(event_date) = 2 THEN 2
        WHEN weekday(event_date) = 3 THEN 3
        WHEN weekday(event_date) = 4 THEN 4
        WHEN weekday(event_date) = 5 THEN 5
        WHEN weekday(event_date) = 6 THEN 6
    END,
    participants DESC;
END
```

##### [dateFormatting](/arcade/db/time-river-revisited/dateFormatting.sql)

```sql
CREATE PROCEDURE dateFormatting() BEGIN
SELECT date_format(date_str, '%Y-%m-%d') as date_iso
FROM documents
ORDER by id;
END
```

##### [pastEvents](/arcade/db/time-river-revisited/pastEvents.sql)

```sql
CREATE PROCEDURE pastEvents() BEGIN
SELECT name,
    event_date
FROM Events
WHERE (
        SELECT TO_DAYS(event_date) -8
        FROM Events
        ORDER BY (event_date) DESC
        LIMIT 1
    ) < TO_DAYS(event_date)
    and (
        SELECT TO_DAYS(event_date)
        FROM Events
        ORDER BY (event_date) DESC
        LIMIT 1
    ) <> TO_DAYS(event_date)
ORDER BY event_date DESC;
END
```

##### [netIncome](/arcade/db/time-river-revisited/netIncome.sql)

```sql
CREATE PROCEDURE netIncome() BEGIN
SELECT YEAR(date) as year,
    QUARTER(date) as quarter,
    SUM(profit) - SUM(loss) as net_profit
FROM accounting
GROUP BY year,
    quarter;
END
```

##### [alarmClocks](/arcade/db/time-river-revisited/alarmClocks.sql)

```sql
CREATE PROCEDURE alarmClocks() BEGIN WITH RECURSIVE Date_Ranges AS (
    SELECT input_date as alarm_date
    FROM userInput
    UNION ALL
    SELECT alarm_date + interval 7 day
    FROM Date_Ranges
    WHERE year(alarm_date) = (
            SELECT YEAR(input_date)
            FROM userInput
        )
)
SELECT *
FROM Date_Ranges
WHERE year(alarm_date) = (
        SELECT YEAR(input_date)
        FROM userInput
    )
ORDER BY alarm_date ASC;
END
```

##### [companyEmployees](/arcade/db/join-us-at-the-table/companyEmployees.sql)

```sql
CREATE PROCEDURE companyEmployees() BEGIN
SELECT *
FROM departments,
    employees
ORDER BY dep_name,
    emp_name asc;
END
```

##### [scholarshipsDistribution](/arcade/db/join-us-at-the-table/scholarshipsDistribution.sql)

```sql
CREATE PROCEDURE scholarshipsDistribution() BEGIN
SELECT candidate_id AS student_id
FROM candidates
    LEFT JOIN detentions ON candidates.candidate_id = detentions.student_id
WHERE detention_date is NULL
    AND student_id is NULL
ORDER BY candidate_id ASC;
END
```

##### [userCountries](/arcade/db/join-us-at-the-table/userCountries.sql)

```sql
CREATE PROCEDURE userCountries()
BEGIN
	SELECT id, IFNULL(cities.country, 'unknown') as country FROM users
    LEFT JOIN cities ON users.city = cities.city
    order by id;
END
```

##### [placesOfInterestPairs](/arcade/db/join-us-at-the-table/placesOfInterestPairs.sql)

```sql
CREATE PROCEDURE placesOfInterestPairs() BEGIN
SELECT place1,
    place2
FROM (
        SELECT a.name as place1,
            a.x as x1,
            a.y as y1,
            b.name as place2,
            b.x as x2,
            b.y as y2,
            (
                POWER(((POWER((b.x - a.x), 2)) +(POWER((b.y - a.y), 2))), 0.5)
            ) AS distance
        FROM sights a,
            sights b
        WHERE a.name < b.name
            and (
                POWER(((POWER((b.x - a.x), 2)) +(POWER((b.y - a.y), 2))), 0.5)
            ) < 5
    ) as table2
ORDER BY place1,
    place2;
END
```

##### [localCalendar](/arcade/db/join-us-at-the-table/localCalendar.sql)

```sql
CREATE PROCEDURE localCalendar() BEGIN
SELECT event_id,
    (
        CASE
            WHEN hours = 24 then DATE_FORMAT(
                date + INTERVAL timeshift MINUTE,
                "%Y-%m-%d %H:%i"
            )
            WHEN hours = 12 then DATE_FORMAT(
                date + INTERVAL timeshift MINUTE,
                "%Y-%m-%d %h:%i %p"
            )
        END
    ) as formatted_date
FROM events
    NATURAL JOIN settings
ORDER BY event_id;
END
```

##### [routeLength](/arcade/db/join-us-at-the-table/routeLength.sql)

```sql
CREATE PROCEDURE routeLength() BEGIN
SELECT ROUND(
        SUM(ST_DISTANCE(POINT(c1.x, c1.y), POINT(c2.x, c2.y))),
        9
    ) as total
FROM cities as c1,
    cities as c2
WHERE c1.id = c2.id + 1
ORDER BY c1.id,
    c2.id;
END
```

##### [currencyCodes](/arcade/db/table-metamorphoses/currencyCodes.sql)

```sql
CREATE PROCEDURE currencyCodes() BEGIN
DELETE FROM currencies
WHERE NOT CHAR_LENGTH(code) = 3;
SELECT *
FROM currencies
ORDER BY code;
END
```

##### [coursesDistribution](/arcade/db/table-metamorphoses/coursesDistribution.sql)

```sql
CREATE PROCEDURE coursesDistribution() BEGIN
ALTER TABLE groupcourses
ADD FOREIGN KEY (course_id) REFERENCES courses(id) ON DELETE CASCADE;
ALTER TABLE groupexams
ADD FOREIGN KEY (course_id) REFERENCES courses(id) ON DELETE CASCADE;
DELETE FROM courses
WHERE name LIKE '%-toremove';
SELECT group_id,
    course_id
FROM groupcourses
UNION
SELECT group_id,
    course_id
FROM groupexams
ORDER BY group_id,
    course_id;
END
```

##### [nicknames](/arcade/db/table-metamorphoses/nicknames.sql)

```sql
CREATE PROCEDURE nicknames() BEGIN
UPDATE reservedNicknames
SET id = concat('rename - ', id),
    nickname = concat('rename - ', nickname)
WHERE LENGTH(nickname) <> 8;
SELECT *
FROM reservedNicknames
ORDER BY id;
END
```

## **The Core (5/162)**

##### [addTwoDigits](arcade/python-arcade/intro-gates/addTwoDigits.py)

```python
def addTwoDigits(n):
    return sum(list(map(int,str(n))))
```

##### [largestNumber](arcade/python-arcade/intro-gates/largestNumber.py)

```python
def largestNumber(n):
    number = str("9") * n
    return int(number)
```

##### [candies](arcade/python-arcade/intro-gates/candies.py)

```python
def candies(n, m):
    return (m//n) * n
```

##### [seatsInTheater](arcade/python-arcade/intro-gates/seatsInTheater.py)

```python
def seatsInTheater(nCols, nRows, col, row):
    x = abs(nRows-row)
    y = abs(nCols-col+1)
    return x*y
```

##### [maxMultiple](arcade/python-arcade/intro-gates/maxMultiple.py)

```python
def maxMultiple(divisor, bound):
    result = 0
    for N in range(1, bound+1):
        if N % divisor == 0:
            result = N
    return result
```

## **Python (0/92)**

## **Graphs (0/66)**

## **Interview Practice (0/110)**

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
