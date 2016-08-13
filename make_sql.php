<?php

//tokyo_post.csvを読み込んでinsert into ... values(...); をつくる
$file_name = "tokyo_post.csv";
$fp = fopen($file_name, 'r');

// データが無くなるまでファイル(CSV)を１行ずつ読み込む
while( $return = fgetcsv( $fp, 256 ) ) {

		// insert文をmade_sql.datに書き出す
		$fileName = "made_sql.dat";
		$data = "insert into tokyo_post (postal_code, address_cana1, address_cana2, address_cana3, address_kanji1, address_kanji2, address_kanji3) values ('$return[2]','$return[3]','$return[4] ','$return[5]','$return[6]','$return[7]','$return[8]');";

		$fp_2 = fopen($fileName, "a");

		if (fwrite($fp_2, $data."\r\n") === false)
		{
		  echo "書き込みができませんでした";
		    exit;
		    }

		    echo "書き込みが成功しました！";

		fclose($fp_2);
}
fclose($fp);


?>
