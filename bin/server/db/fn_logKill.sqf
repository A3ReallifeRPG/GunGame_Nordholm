/*
 * Author: RealLifeRPG Team
 *
 * Description:
 * Logs Kill to DB
 *
 * Arguments:
 * 0: STRING - pid of killer
 *
 * Return Value:
 * Nothing
 *
 * Example:
 * ['1234'] call db_fnc_logKill;
 *
 */
params[
	["_pid","",[""]]
];

call compile ("extDB3" callExtension format ["1:%1:log_kill:%1", gg_sql_id, _pid]);
