<?
require_once(__DIR__.'/env.php');

$db = pg_connect('host='.DB_HOST.' port='.DB_PORT.' dbname='.DB_DATABASE.' user='.DB_USERNAME.' password='.DB_PASSWORD)
	or die('Could not connect: '.pg_last_error());

/*
 * Такой
 */
$dbSql = "
SELECT id, name, date FROM task2 ORDER BY
CASE
  WHEN name='Николай' THEN 1
  WHEN name='Коля' THEN 2
  WHEN name='Сергей' THEN 3
  WHEN name='Екатерина' THEN 4
  WHEN name='Катя' AND date=TIMESTAMP '2013-09-13 19:22:03' THEN 5
  WHEN name='Катя' AND date=TIMESTAMP '2013-09-13 12:25:06' THEN 6
  WHEN name='Дмитрий' THEN 7
END
";

?>
<table>
<?

$dbResult = pg_query($dbSql);
while ($row = pg_fetch_array($dbResult, null, PGSQL_ASSOC)) {
	?>
	<tr>
		<td><? echo $row['id']; ?></td>
	</tr>
	<?
}

?>

</table>
