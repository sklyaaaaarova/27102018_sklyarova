<?php 
    require_once($_SERVER['DOCUMENT_ROOT'].'/config/config.php');

    $page = $_GET['page'];
    $count_on_page = 5;

    $result_data = [
        'products' => [],
        'pagination' => [
            'countPage'=>5,
            'nowPage' =>  $page
        ]

    ];

    sleep(3);
$len = "SELECT COUNT(id) as len FROM products";
$count_product = mysqli_fetch_assoc(mysqli_query($db, $len))['len'];
$page_1 = ($page-1)*$count_on_page;

$result_data['pagination']['countPage'] = ceil($count_product/$count_on_page);

$sql = "SELECT * FROM products WHERE active = 1 limit {$page_1},{$count_on_page}";
    $result = mysqli_query($db, $sql);
    

    while( $row = mysqli_fetch_assoc($result) ){
        
        $result_data['products'][]= $row;
    }

    echo json_encode($result_data);
?>