	
snippet 'Controller ...' do |s|
    s.trigger = 'controller'
    s.expansion = '<?php defined(\'SYSPATH\') or die(\'No direct script access.\');
/**
 * $1
 */
class Controller_${2:ClassName} extends Controller_${3:AnotherClass} {
	function action_index(${4:$argument}) {
		${0:// code...}
	}
} // End ${2:ClassName} Controller

'
end

snippet 'Jelly ...' do |s|
    s.trigger = 'model_jelly'
    s.expansion = '<?php defined(\'SYSPATH\') or die(\'No direct script access.\');
/**
 * $1
 */
class Model_${2:ClassName} extends ${3:Jelly}_Model {
	$4
	public static function initialize(\$meta)
	{
		\$meta->fields(array(
			\'id\' => new Field_Primary,
			${0:// code...}
		));
	}
} // End ${2:ClassName} Model

'
end

with_defaults :scope => 'source.php source.php.embedded.block.html' do
	

	
end
