<?php
/**
 * Smarty plugin
 * @package Smarty
 * @subpackage plugins
 */


/**
 * Smarty {fill} function plugin
 *
 * Type:     function<br>
 * Name:     fill<br>
 * Input:<br>
 *           - [any]      (required) - string
 *           - subject       (required) - string
 *           - delimiter  (optional, defaults to '%' ) - string
 * Purpose:  Fills the variables found in 'subject' with the paramaters passed. The variables are any word surrounded by two delimiters.
 *           
 *           Examples of usage:
 *           
 *           {fill subject="http://domain.com/profile/%username%" username='fred'}
 *           Output: http://domain.com/profile/fred
 *
 *           {fill subject="Hello %user%, welcome aboard!" user=Fred}
 *           Outputs: Hello Fred, welcome aboard
 *
 *           {fill subject="http://||subdomain||.domain.com/||page||/||action||" subdomain='www' page='my-first-post' action='vote' delimiter='||'}
 *           Outputs: http://www.domain.com/my-first-post/vote
 *
 * @link    http://www.harecoded.com/fill-smarty-php-plugin-311577
 * @author Albert Lombarte <alombarte at harecoded dot com>
 * @param array
 * @param Smarty
 * @return string
 */
function smarty_function_fill($params, &$smarty)
{

    if ( isset($params['delimiter']) )
    {
        $_delimiter = $params['delimiter'];
        unset($params['delimiter']);
    } else {
        $_delimiter = '%';
    }

    if ( false !== strpos($_delimiter, '$' ) )
    {
         $smarty->trigger_error("fill: The delimiter '$' is banned in function {url}", E_USER_NOTICE);
    }

    if (!isset($params['subject']) || count($params)<2) {
        $smarty->trigger_error("fill: The attribute 'subject' and at least one parameter is needed in function {url}", E_USER_NOTICE);
    }

   	$_html_result = $params['subject'];

    unset( $params['subject'] );
	foreach($params as $_key => $_val) {
        $_html_result = str_replace( $_delimiter . $_key . $_delimiter, (string)$_val, $_html_result);
    }

    if ( false !== strpos($_html_result, $_delimiter) )
    {
        $smarty->trigger_error("fill: There are still parameters to replace, because the '$_delimiter' delimiter was found in $_html_result");  
    }
    
    return $_html_result;

}

/* vim: set expandtab: */

?>
