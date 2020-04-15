SELECT *, tanggal - INTERVAL 2 DAY, datediff(tanggal, CURRENT_DATE()),
CASE WHEN datediff(tanggal, CURRENT_DATE()) <= 2 THEN "2" ELSE "1" END AS notif
FROM event_ak WHERE status = 0 AND notif = 2;

SELECT *, CURRENT_DATE() as sekarang, (datediff(tanggal, CURRENT_DATE()) <= 2) FROM event_ak WHERE status = 0