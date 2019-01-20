<?php
if (!isset($_REQUEST)) { return; }
 
$confirmation_token = 'c286fa13';
$token = 'd550e028133aa6fe6baf8e3fc7cce48800de1ed7f0989fe7c9857833af39ee78221e3bdc2f3504410d9e0';
 
$data = json_decode(file_get_contents('php://input'));
switch ($data->type) {
    case 'confirmation': echo $confirmation_token; break;
    case 'message_new':
        $user_id = $data->object->user_id;
        $user_info = json_decode(file_get_contents("https://api.vk.com/method/users.get?user_ids={$user_id}&access_token={$token}&v=5.0"));
        $user_name = $user_info->response[0]->first_name;
 
        $request_params = array(
            'message' => "Hello, {$user_name}!",
            'user_id' => $user_id,
            'access_token' => $token,
            'v' => '5.0'
        );
        $get_params = http_build_query($request_params);
        file_get_contents('https://api.vk.com/method/messages.send?'. $get_params);
 
        echo('ok');
    break;
}
?>