create user "raung"@"localhost";
create user "radit"@"%";

drop user "raung"@"localhost";
drop user "radit"@"%";

grant select on belajar_mysql.* to "raung"@"localhost";
grant select, insert, update, delete on belajar_mysql.* to "radit"@"%";

show grants for "raung"@"localhost";
show grants for "radit"@"%";

revoke select on belajar_mysql.* from "raung"@"localhost";
revoke select, insert, update, delete on belajar_mysql.* from "radit"@"%";

set password for "raung"@"localhost" = "4321";
set password for "radit"@"%" = "rahasia";