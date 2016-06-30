--
-- Import each of the daily drive stats files for Q1 2016 ONLY
--

.mode csv
.echo on
.import ./2015/2015-01-01.csv drive_stats
.import ./2015/2015-01-02.csv drive_stats
.import ./2015/2015-01-03.csv drive_stats
.import ./2015/2015-01-04.csv drive_stats
.import ./2015/2015-01-05.csv drive_stats
.import ./2015/2015-01-06.csv drive_stats
.import ./2015/2015-01-07.csv drive_stats
.import ./2015/2015-01-08.csv drive_stats
.import ./2015/2015-01-09.csv drive_stats
.import ./2015/2015-01-10.csv drive_stats
.import ./2015/2015-01-11.csv drive_stats
.import ./2015/2015-01-12.csv drive_stats
.import ./2015/2015-01-13.csv drive_stats
.import ./2015/2015-01-14.csv drive_stats
.import ./2015/2015-01-15.csv drive_stats
.import ./2015/2015-01-16.csv drive_stats
.import ./2015/2015-01-17.csv drive_stats
.import ./2015/2015-01-18.csv drive_stats
.import ./2015/2015-01-19.csv drive_stats
.import ./2015/2015-01-20.csv drive_stats
.import ./2015/2015-01-21.csv drive_stats
.import ./2015/2015-01-22.csv drive_stats
.import ./2015/2015-01-23.csv drive_stats
.import ./2015/2015-01-24.csv drive_stats
.import ./2015/2015-01-25.csv drive_stats
.import ./2015/2015-01-26.csv drive_stats
.import ./2015/2015-01-27.csv drive_stats
.import ./2015/2015-01-28.csv drive_stats
.import ./2015/2015-01-29.csv drive_stats
.import ./2015/2015-01-30.csv drive_stats
.import ./2015/2015-01-31.csv drive_stats
.import ./2015/2015-02-01.csv drive_stats
.import ./2015/2015-02-02.csv drive_stats
.import ./2015/2015-02-03.csv drive_stats
.import ./2015/2015-02-04.csv drive_stats
.import ./2015/2015-02-05.csv drive_stats
.import ./2015/2015-02-06.csv drive_stats
.import ./2015/2015-02-07.csv drive_stats
.import ./2015/2015-02-08.csv drive_stats
.import ./2015/2015-02-09.csv drive_stats
.import ./2015/2015-02-10.csv drive_stats
.import ./2015/2015-02-11.csv drive_stats
.import ./2015/2015-02-12.csv drive_stats
.import ./2015/2015-02-13.csv drive_stats
.import ./2015/2015-02-14.csv drive_stats
.import ./2015/2015-02-15.csv drive_stats
.import ./2015/2015-02-16.csv drive_stats
.import ./2015/2015-02-17.csv drive_stats
.import ./2015/2015-02-18.csv drive_stats
.import ./2015/2015-02-19.csv drive_stats
.import ./2015/2015-02-20.csv drive_stats
.import ./2015/2015-02-21.csv drive_stats
.import ./2015/2015-02-22.csv drive_stats
.import ./2015/2015-02-23.csv drive_stats
.import ./2015/2015-02-24.csv drive_stats
.import ./2015/2015-02-25.csv drive_stats
.import ./2015/2015-02-26.csv drive_stats
.import ./2015/2015-02-27.csv drive_stats
.import ./2015/2015-02-28.csv drive_stats
.import ./2015/2015-03-01.csv drive_stats
.import ./2015/2015-03-02.csv drive_stats
.import ./2015/2015-03-03.csv drive_stats
.import ./2015/2015-03-04.csv drive_stats
.import ./2015/2015-03-05.csv drive_stats
.import ./2015/2015-03-06.csv drive_stats
.import ./2015/2015-03-07.csv drive_stats
.import ./2015/2015-03-08.csv drive_stats
.import ./2015/2015-03-09.csv drive_stats
.import ./2015/2015-03-10.csv drive_stats
.import ./2015/2015-03-11.csv drive_stats
.import ./2015/2015-03-12.csv drive_stats
.import ./2015/2015-03-13.csv drive_stats
.import ./2015/2015-03-14.csv drive_stats
.import ./2015/2015-03-15.csv drive_stats
.import ./2015/2015-03-16.csv drive_stats
.import ./2015/2015-03-17.csv drive_stats
.import ./2015/2015-03-18.csv drive_stats
.import ./2015/2015-03-19.csv drive_stats
.import ./2015/2015-03-20.csv drive_stats
.import ./2015/2015-03-21.csv drive_stats
.import ./2015/2015-03-22.csv drive_stats
.import ./2015/2015-03-23.csv drive_stats
.import ./2015/2015-03-24.csv drive_stats
.import ./2015/2015-03-25.csv drive_stats
.import ./2015/2015-03-26.csv drive_stats
.import ./2015/2015-03-27.csv drive_stats
.import ./2015/2015-03-28.csv drive_stats
.import ./2015/2015-03-29.csv drive_stats
.import ./2015/2015-03-30.csv drive_stats
.import ./2015/2015-03-31.csv drive_stats

.echo off
.mode list

--
-- The drive stats files each have a header row that labels the
-- columns.  sqlite doesn't understand this when importing from
-- CSV, so they header rows land in the table.  This removes them.
--
delete from drive_stats where model = 'model';
