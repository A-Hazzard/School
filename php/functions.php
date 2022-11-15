function myCalculator($num01, $operator, $num02){
    $sum;

    switch($operator){
        case '+':
            $sum = $num01 + $num02;
            break;
        case '-':
            $sum = $num01 - $num02;
            break;
        default:
            $sum = "There was an error";
        break;
    }
    return $sum;
}

$num01 = $_GET['num01'];
$operator = $_GET['operator'];
$num02 = $_GET['num02'];

echo "VALUE: " . myCalculator($num01, $operator, $num02)