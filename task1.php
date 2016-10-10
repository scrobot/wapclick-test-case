<?
require_once(__DIR__.'/env.php');

$db = pg_connect('host='.DB_HOST.' port='.DB_PORT.' dbname='.DB_DATABASE.' user='.DB_USERNAME.' password='.DB_PASSWORD)
	or die('Could not connect: '.pg_last_error());

$dbResult = pg_query('SELECT phone FROM task1 WHERE phone IS NOT NULL');
$arPhones = array();

while ($row = pg_fetch_array($dbResult, null, PGSQL_ASSOC)) {
	$phone = preg_replace('/\D/', '', $row['phone']);
	if ($phone) {
		switch (strlen($phone)) {
			case 10:
				$arPhones[] = '+7'.$phone;
				break;
			case 11:
				$arPhones[] = (substr($phone, 0, 1) == 8) ? '+7'.substr($phone, 1) : '+'.$phone;
				break;
			default:
				$arPhones[] = '+'.$phone;
				break;
		}
	}
}
array_unique($arPhones);
?>

<table>

<?
foreach ($arPhones as $phone) {
	?>
	<tr>
		<td><? echo $phone; ?></td>
	</tr>
	<?
}
?>

</table>