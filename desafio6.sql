SELECT min(plan_cost) as faturamento_minimo,
max(plan_cost) as faturamento_maximo,
ROUND(avg(plan_cost), 2) as faturamento_medio,
sum(plan_cost) as faturamento_total
FROM SpotifyClone.users u 
INNER JOIN plans p ON u.plan_id = p.plan_id;