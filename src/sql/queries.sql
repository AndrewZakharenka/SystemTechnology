--Получить количество неактивных (не было сессий) клиентов.
-- статус оставил, как параметр, так как не знаю, какой статус подходящий к «активному» пользователь
SELECT count(*)
FROM system_technology.users u
LEFT JOIN system_technology.usersessions us
ON (u.userid = us.userid)
WHERE us.userid is null and u.status = :st;

--Получить список уникальных UserId активных пользователей, которые не пользовались каналом 1.
-- статус оставил, как параметр, так как не знаю, какой статус подходящий к «активному» пользователю
SELECT sel1.userid
FROM (
         SELECT u.userid as userid
         FROM system_technology.users u
         WHERE u.status = :st) sel1
         LEFT JOIN
     (SELECT us.channeltype, us.userid
      FROM system_technology.usersessions us
      WHERE us.channeltype = 1) sel2
     ON (sel1.userid = sel2.userid)
WHERE sel2.channeltype is null;

-- Получить максимальное UserId активного пользователя, статус которого также не равен 1.
--возможно некорректно понял это задание, поэтому сделал как понимаю
SELECT max(u.userid)
FROM system_technology.users u
WHERE u.status <> 1;

-- Получить список количества сессий с разделением на MobAppVersion. То есть список, сгруппированный по MobAppVersion, в котором для каждой из MobAppVersion будет подсчитано количество сессий со "старой" mobosversion, "старой" версией считается версия ниже 80 или неуказанная.

SELECT count(*) as count, us.mobappversion
FROM system_technology.usersessions us
WHERE us.mobosversion is null OR us.mobosversion < 80
GROUP BY us.mobappversion;
