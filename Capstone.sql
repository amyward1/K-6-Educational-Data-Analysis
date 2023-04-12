SELECT DISTINCT d.Test  
FROM "16_Drilled" d
WHERE d."Sch Type" = 'Elem';

SELECT DISTINCT d.Test  
FROM "19_Drilled" d
WHERE d."Sch Type" = 'Elem';

SELECT DISTINCT d.Test 
FROM "22_Drilled" d
WHERE d."Sch Type" = 'Elem';

SELECT *,
CASE
	WHEN d.Subject = "Remote English: Reading" THEN "English: Reading"
	WHEN d.Subject = "Remote Mathematics" THEN "Mathematics"
	WHEN d.Subject = "Remote Science" THEN "Science"
	ELSE d.Subject  
END as SubjectStand
FROM "22_Drilled" d;

SELECT DISTINCT s.Subgroup  
FROM "16_Subgroup" s
WHERE s."School Type" = 'Elem'
UNION  ALL
SELECT DISTINCT s.Subgroup  
FROM "19_Subgroup" s
WHERE s."Sch Type" = 'Elem'
UNION ALL
SELECT DISTINCT s.Subgroup  
FROM "22_Subgroup" s
WHERE s."Sch Type" = 'Elem';

SELECT *,
CASE
	WHEN s.Subject = "Remote English: Reading" THEN "English: Reading"
	WHEN s.Subject = "Remote Mathematics" THEN "Mathematics"
	WHEN s.Subject = "Remote Science" THEN "Science"
	ELSE s.Subject  
END as SubjectStand
FROM "22_Subgroup" s;

SELECT ns.*, ns2."2016-2017 Pass Rate", ns2."2017-2018 Pass Rate", ns2."2018-2019 Pass Rate", ns3."2019-2020 Pass Rate", ns3."2020-2021 Pass Rate", ns3."2021-2022 Pass Rate"  
FROM "16_NewSubgroup" ns 
LEFT JOIN "19_NewSubgroup" ns2 on ns2.Identifier = ns.Identifier 
LEFT JOIN "22_NewSubgroup" ns3 on ns3.Identifier = ns.Identifier
WHERE ns."School Type" = 'Elem';

SELECT nd.*, nd2."2016-2017 Pass Rate", nd2."2017-2018 Pass Rate", nd2."2018-2019 Pass Rate", nd3."2019-2020 Pass Rate", nd3."2020-2021 Pass Rate", nd3."2021-2022 Pass Rate"  
FROM "16_NewDrilled" nd 
LEFT JOIN "19_NewDrilled" nd2 on nd2.Identifier = nd.Identifier 
LEFT JOIN "22_NewDrilled" nd3 on nd3.Identifier = nd.Identifier 
WHERE nd."Sch Type" = 'Elem';



