EXEC master.dbo.sp_addlinkedserver @server = N'ABSS', @srvproduct=N'VBR008002-016\QUALID', @provider=N'SQLNCLI', @datasrc=N'VBR008002-016\QUALID'
 /* For security reasons the linked server remote logins password is changed with ######## */
EXEC master.dbo.sp_addlinkedsrvlogin @rmtsrvname=N'ABSS',@useself=N'True',@locallogin=NULL,@rmtuser=NULL,@rmtpassword=NULL
EXEC master.dbo.sp_addlinkedsrvlogin @rmtsrvname=N'ABSS',@useself=N'False',@locallogin=N'compilaproc',@rmtuser=N'compilaproc',@rmtpassword='C0mp!l@Pr0c'
EXEC master.dbo.sp_addlinkedsrvlogin @rmtsrvname=N'ABSS',@useself=N'False',@locallogin=N'compilascript',@rmtuser=N'compilascript',@rmtpassword='C0mp!l@Scr!pt'
EXEC master.dbo.sp_addlinkedsrvlogin @rmtsrvname=N'ABSS',@useself=N'False',@locallogin=N'sisbr',@rmtuser=N'Usegbr',@rmtpassword='Xucrutis'
EXEC master.dbo.sp_addlinkedsrvlogin @rmtsrvname=N'ABSS',@useself=N'False',@locallogin=N'Usegbr',@rmtuser=N'Usegbr',@rmtpassword='Xucrutis'
EXEC master.dbo.sp_addlinkedsrvlogin @rmtsrvname=N'ABSS',@useself=N'False',@locallogin=N'usiscot',@rmtuser=N'usiscot',@rmtpassword='usiscot_qld'
EXEC master.dbo.sp_addlinkedsrvlogin @rmtsrvname=N'ABSS',@useself=N'False',@locallogin=N'wflw',@rmtuser=N'wflw',@rmtpassword='wflw_qld'

EXEC master.dbo.sp_serveroption @server=N'ABSS', @optname=N'collation compatible', @optvalue=N'false'
EXEC master.dbo.sp_serveroption @server=N'ABSS', @optname=N'data access', @optvalue=N'true'
EXEC master.dbo.sp_serveroption @server=N'ABSS', @optname=N'dist', @optvalue=N'false'
EXEC master.dbo.sp_serveroption @server=N'ABSS', @optname=N'pub', @optvalue=N'false'
EXEC master.dbo.sp_serveroption @server=N'ABSS', @optname=N'rpc', @optvalue=N'true'
EXEC master.dbo.sp_serveroption @server=N'ABSS', @optname=N'rpc out', @optvalue=N'true'
EXEC master.dbo.sp_serveroption @server=N'ABSS', @optname=N'sub', @optvalue=N'false'
EXEC master.dbo.sp_serveroption @server=N'ABSS', @optname=N'connect timeout', @optvalue=N'0'
EXEC master.dbo.sp_serveroption @server=N'ABSS', @optname=N'collation name', @optvalue=null
EXEC master.dbo.sp_serveroption @server=N'ABSS', @optname=N'lazy schema validation', @optvalue=N'false'
EXEC master.dbo.sp_serveroption @server=N'ABSS', @optname=N'query timeout', @optvalue=N'0'
EXEC master.dbo.sp_serveroption @server=N'ABSS', @optname=N'use remote collation', @optvalue=N'true'








EXEC master.dbo.sp_addlinkedserver @server = N'SEGUROCARTAO_LS', @srvproduct=N'VBR008002-016\QUALID', @provider=N'SQLNCLI', @datasrc=N'VBR008002-016\QUALID'
 /* For security reasons the linked server remote logins password is changed with ######## */
EXEC master.dbo.sp_addlinkedsrvlogin @rmtsrvname=N'SEGUROCARTAO_LS',@useself=N'True',@locallogin=NULL,@rmtuser=NULL,@rmtpassword=NULL
EXEC master.dbo.sp_addlinkedsrvlogin @rmtsrvname=N'SEGUROCARTAO_LS',@useself=N'False',@locallogin=N'compilaproc',@rmtuser=N'compilaproc',@rmtpassword='C0mp!l@Pr0c'
EXEC master.dbo.sp_addlinkedsrvlogin @rmtsrvname=N'SEGUROCARTAO_LS',@useself=N'False',@locallogin=N'compilascript',@rmtuser=N'svcssc',@rmtpassword='########'
EXEC master.dbo.sp_addlinkedsrvlogin @rmtsrvname=N'SEGUROCARTAO_LS',@useself=N'False',@locallogin=N'SISAB\svcssc',@rmtuser=N'svcssc',@rmtpassword='########'
EXEC master.dbo.sp_addlinkedsrvlogin @rmtsrvname=N'SEGUROCARTAO_LS',@useself=N'False',@locallogin=N'Usegbr',@rmtuser=N'Usegbr',@rmtpassword='Xucrutis'

EXEC master.dbo.sp_serveroption @server=N'SEGUROCARTAO_LS', @optname=N'collation compatible', @optvalue=N'false'
EXEC master.dbo.sp_serveroption @server=N'SEGUROCARTAO_LS', @optname=N'data access', @optvalue=N'true'
EXEC master.dbo.sp_serveroption @server=N'SEGUROCARTAO_LS', @optname=N'dist', @optvalue=N'false'
EXEC master.dbo.sp_serveroption @server=N'SEGUROCARTAO_LS', @optname=N'pub', @optvalue=N'false'
EXEC master.dbo.sp_serveroption @server=N'SEGUROCARTAO_LS', @optname=N'rpc', @optvalue=N'true'
EXEC master.dbo.sp_serveroption @server=N'SEGUROCARTAO_LS', @optname=N'rpc out', @optvalue=N'true'
EXEC master.dbo.sp_serveroption @server=N'SEGUROCARTAO_LS', @optname=N'sub', @optvalue=N'false'
EXEC master.dbo.sp_serveroption @server=N'SEGUROCARTAO_LS', @optname=N'connect timeout', @optvalue=N'0'
EXEC master.dbo.sp_serveroption @server=N'SEGUROCARTAO_LS', @optname=N'collation name', @optvalue=null
EXEC master.dbo.sp_serveroption @server=N'SEGUROCARTAO_LS', @optname=N'lazy schema validation', @optvalue=N'false'
EXEC master.dbo.sp_serveroption @server=N'SEGUROCARTAO_LS', @optname=N'query timeout', @optvalue=N'0'
EXEC master.dbo.sp_serveroption @server=N'SEGUROCARTAO_LS', @optname=N'use remote collation', @optvalue=N'true'



EXEC master.dbo.sp_addlinkedserver @server = N'SISAB003', @srvproduct=N'VBR008002-016\QUALID_ABS', @provider=N'SQLNCLI', @datasrc=N'VBR008002-016\QUALID_ABS'
 /* For security reasons the linked server remote logins password is changed with ######## */
EXEC master.dbo.sp_addlinkedsrvlogin @rmtsrvname=N'SISAB003',@useself=N'False',@locallogin=NULL,@rmtuser=N'Usegbr',@rmtpassword='Xucrutis'

EXEC master.dbo.sp_serveroption @server=N'SISAB003', @optname=N'collation compatible', @optvalue=N'false'
EXEC master.dbo.sp_serveroption @server=N'SISAB003', @optname=N'data access', @optvalue=N'true'
EXEC master.dbo.sp_serveroption @server=N'SISAB003', @optname=N'dist', @optvalue=N'false'
EXEC master.dbo.sp_serveroption @server=N'SISAB003', @optname=N'pub', @optvalue=N'false'
EXEC master.dbo.sp_serveroption @server=N'SISAB003', @optname=N'rpc', @optvalue=N'true'
EXEC master.dbo.sp_serveroption @server=N'SISAB003', @optname=N'rpc out', @optvalue=N'true'
EXEC master.dbo.sp_serveroption @server=N'SISAB003', @optname=N'sub', @optvalue=N'false'
EXEC master.dbo.sp_serveroption @server=N'SISAB003', @optname=N'connect timeout', @optvalue=N'0'
EXEC master.dbo.sp_serveroption @server=N'SISAB003', @optname=N'collation name', @optvalue=null
EXEC master.dbo.sp_serveroption @server=N'SISAB003', @optname=N'lazy schema validation', @optvalue=N'false'
EXEC master.dbo.sp_serveroption @server=N'SISAB003', @optname=N'query timeout', @optvalue=N'0'
EXEC master.dbo.sp_serveroption @server=N'SISAB003', @optname=N'use remote collation', @optvalue=N'true'






EXEC master.dbo.sp_addlinkedserver @server = N'SISAB003_LS', @srvproduct=N'VBR008002-016\QUALID', @provider=N'SQLNCLI', @datasrc=N'VBR008002-016\QUALID'
 /* For security reasons the linked server remote logins password is changed with ######## */
EXEC master.dbo.sp_addlinkedsrvlogin @rmtsrvname=N'SISAB003_LS',@useself=N'True',@locallogin=NULL,@rmtuser=NULL,@rmtpassword=NULL
EXEC master.dbo.sp_addlinkedsrvlogin @rmtsrvname=N'SISAB003_LS',@useself=N'False',@locallogin=N'usr_bidst',@rmtuser=N'USR_BIDST',@rmtpassword='bidst.abq'

EXEC master.dbo.sp_serveroption @server=N'SISAB003_LS', @optname=N'collation compatible', @optvalue=N'false'
EXEC master.dbo.sp_serveroption @server=N'SISAB003_LS', @optname=N'data access', @optvalue=N'true'
EXEC master.dbo.sp_serveroption @server=N'SISAB003_LS', @optname=N'dist', @optvalue=N'false'
EXEC master.dbo.sp_serveroption @server=N'SISAB003_LS', @optname=N'pub', @optvalue=N'false'
EXEC master.dbo.sp_serveroption @server=N'SISAB003_LS', @optname=N'rpc', @optvalue=N'true'
EXEC master.dbo.sp_serveroption @server=N'SISAB003_LS', @optname=N'rpc out', @optvalue=N'true'
EXEC master.dbo.sp_serveroption @server=N'SISAB003_LS', @optname=N'sub', @optvalue=N'false'
EXEC master.dbo.sp_serveroption @server=N'SISAB003_LS', @optname=N'connect timeout', @optvalue=N'0'
EXEC master.dbo.sp_serveroption @server=N'SISAB003_LS', @optname=N'collation name', @optvalue=null
EXEC master.dbo.sp_serveroption @server=N'SISAB003_LS', @optname=N'lazy schema validation', @optvalue=N'false'
EXEC master.dbo.sp_serveroption @server=N'SISAB003_LS', @optname=N'query timeout', @optvalue=N'0'
EXEC master.dbo.sp_serveroption @server=N'SISAB003_LS', @optname=N'use remote collation', @optvalue=N'true'






EXEC master.dbo.sp_addlinkedserver @server = N'SISAB010\ADM', @srvproduct=N'VBR008002-016\QUALID', @provider=N'SQLNCLI', @datasrc=N'VBR008002-016\QUALID'
 /* For security reasons the linked server remote logins password is changed with ######## */
EXEC master.dbo.sp_addlinkedsrvlogin @rmtsrvname=N'SISAB010\ADM',@useself=N'True',@locallogin=NULL,@rmtuser=NULL,@rmtpassword=NULL
EXEC master.dbo.sp_addlinkedsrvlogin @rmtsrvname=N'SISAB010\ADM',@useself=N'False',@locallogin=N'compilaproc',@rmtuser=N'compilaproc',@rmtpassword='C0mp!l@Pr0c'
EXEC master.dbo.sp_addlinkedsrvlogin @rmtsrvname=N'SISAB010\ADM',@useself=N'False',@locallogin=N'compilascript',@rmtuser=N'compilascript',@rmtpassword='C0mp!l@Scr!pt'

EXEC master.dbo.sp_serveroption @server=N'SISAB010\ADM', @optname=N'collation compatible', @optvalue=N'false'
EXEC master.dbo.sp_serveroption @server=N'SISAB010\ADM', @optname=N'data access', @optvalue=N'true'
EXEC master.dbo.sp_serveroption @server=N'SISAB010\ADM', @optname=N'dist', @optvalue=N'false'
EXEC master.dbo.sp_serveroption @server=N'SISAB010\ADM', @optname=N'pub', @optvalue=N'false'
EXEC master.dbo.sp_serveroption @server=N'SISAB010\ADM', @optname=N'rpc', @optvalue=N'false'
EXEC master.dbo.sp_serveroption @server=N'SISAB010\ADM', @optname=N'rpc out', @optvalue=N'false'
EXEC master.dbo.sp_serveroption @server=N'SISAB010\ADM', @optname=N'sub', @optvalue=N'false'
EXEC master.dbo.sp_serveroption @server=N'SISAB010\ADM', @optname=N'connect timeout', @optvalue=N'0'
EXEC master.dbo.sp_serveroption @server=N'SISAB010\ADM', @optname=N'collation name', @optvalue=null
EXEC master.dbo.sp_serveroption @server=N'SISAB010\ADM', @optname=N'lazy schema validation', @optvalue=N'false'
EXEC master.dbo.sp_serveroption @server=N'SISAB010\ADM', @optname=N'query timeout', @optvalue=N'0'
EXEC master.dbo.sp_serveroption @server=N'SISAB010\ADM', @optname=N'use remote collation', @optvalue=N'true'






EXEC master.dbo.sp_addlinkedserver @server = N'SISAB012\MAS', @srvproduct=N'SISAB051H\MAS_QLD', @provider=N'SQLNCLI', @datasrc=N'SISAB051H\MAS_QLD'
 /* For security reasons the linked server remote logins password is changed with ######## */
EXEC master.dbo.sp_addlinkedsrvlogin @rmtsrvname=N'SISAB012\MAS',@useself=N'True',@locallogin=NULL,@rmtuser=NULL,@rmtpassword=NULL
EXEC master.dbo.sp_addlinkedsrvlogin @rmtsrvname=N'SISAB012\MAS',@useself=N'False',@locallogin=N'compilaproc',@rmtuser=N'compilaproc',@rmtpassword='C0mp!l@Pr0c'
EXEC master.dbo.sp_addlinkedsrvlogin @rmtsrvname=N'SISAB012\MAS',@useself=N'False',@locallogin=N'compilascript',@rmtuser=N'compilascript',@rmtpassword='C0mp!l@Pr0c'
EXEC master.dbo.sp_addlinkedsrvlogin @rmtsrvname=N'SISAB012\MAS',@useself=N'False',@locallogin=N'Usegbr',@rmtuser=N'Usegbr',@rmtpassword='Xucrutis'

EXEC master.dbo.sp_serveroption @server=N'SISAB012\MAS', @optname=N'collation compatible', @optvalue=N'false'
EXEC master.dbo.sp_serveroption @server=N'SISAB012\MAS', @optname=N'data access', @optvalue=N'true'
EXEC master.dbo.sp_serveroption @server=N'SISAB012\MAS', @optname=N'dist', @optvalue=N'false'
EXEC master.dbo.sp_serveroption @server=N'SISAB012\MAS', @optname=N'pub', @optvalue=N'false'
EXEC master.dbo.sp_serveroption @server=N'SISAB012\MAS', @optname=N'rpc', @optvalue=N'true'
EXEC master.dbo.sp_serveroption @server=N'SISAB012\MAS', @optname=N'rpc out', @optvalue=N'true'
EXEC master.dbo.sp_serveroption @server=N'SISAB012\MAS', @optname=N'sub', @optvalue=N'false'
EXEC master.dbo.sp_serveroption @server=N'SISAB012\MAS', @optname=N'connect timeout', @optvalue=N'0'
EXEC master.dbo.sp_serveroption @server=N'SISAB012\MAS', @optname=N'collation name', @optvalue=null
EXEC master.dbo.sp_serveroption @server=N'SISAB012\MAS', @optname=N'lazy schema validation', @optvalue=N'false'
EXEC master.dbo.sp_serveroption @server=N'SISAB012\MAS', @optname=N'query timeout', @optvalue=N'0'
EXEC master.dbo.sp_serveroption @server=N'SISAB012\MAS', @optname=N'use remote collation', @optvalue=N'true'







EXEC master.dbo.sp_addlinkedserver @server = N'SISAB013\WEB', @srvproduct=N'SISAB051\WEB_QLD_ABS', @provider=N'SQLNCLI', @datasrc=N'SISAB051\WEB_QLD_ABS'
 /* For security reasons the linked server remote logins password is changed with ######## */
EXEC master.dbo.sp_addlinkedsrvlogin @rmtsrvname=N'SISAB013\WEB',@useself=N'False',@locallogin=NULL,@rmtuser=N'Usegbr',@rmtpassword='Xucrutis'

EXEC master.dbo.sp_serveroption @server=N'SISAB013\WEB', @optname=N'collation compatible', @optvalue=N'false'
EXEC master.dbo.sp_serveroption @server=N'SISAB013\WEB', @optname=N'data access', @optvalue=N'true'
EXEC master.dbo.sp_serveroption @server=N'SISAB013\WEB', @optname=N'dist', @optvalue=N'false'
EXEC master.dbo.sp_serveroption @server=N'SISAB013\WEB', @optname=N'pub', @optvalue=N'false'
EXEC master.dbo.sp_serveroption @server=N'SISAB013\WEB', @optname=N'rpc', @optvalue=N'true'
EXEC master.dbo.sp_serveroption @server=N'SISAB013\WEB', @optname=N'rpc out', @optvalue=N'true'
EXEC master.dbo.sp_serveroption @server=N'SISAB013\WEB', @optname=N'sub', @optvalue=N'false'
EXEC master.dbo.sp_serveroption @server=N'SISAB013\WEB', @optname=N'connect timeout', @optvalue=N'0'
EXEC master.dbo.sp_serveroption @server=N'SISAB013\WEB', @optname=N'collation name', @optvalue=null
EXEC master.dbo.sp_serveroption @server=N'SISAB013\WEB', @optname=N'lazy schema validation', @optvalue=N'false'
EXEC master.dbo.sp_serveroption @server=N'SISAB013\WEB', @optname=N'query timeout', @optvalue=N'0'
EXEC master.dbo.sp_serveroption @server=N'SISAB013\WEB', @optname=N'use remote collation', @optvalue=N'true'





EXEC master.dbo.sp_addlinkedserver @server = N'SISAB016', @srvproduct=N'VBR008002-016\QUALID', @provider=N'SQLNCLI', @datasrc=N'VBR008002-016\QUALID'
 /* For security reasons the linked server remote logins password is changed with ######## */
EXEC master.dbo.sp_addlinkedsrvlogin @rmtsrvname=N'SISAB016',@useself=N'True',@locallogin=NULL,@rmtuser=NULL,@rmtpassword=NULL
EXEC master.dbo.sp_addlinkedsrvlogin @rmtsrvname=N'SISAB016',@useself=N'False',@locallogin=N'compilaproc',@rmtuser=N'compilaproc',@rmtpassword='c0mpil@pr0c'
EXEC master.dbo.sp_addlinkedsrvlogin @rmtsrvname=N'SISAB016',@useself=N'False',@locallogin=N'compilascript',@rmtuser=N'compilascript',@rmtpassword='c0mpil@script'

EXEC master.dbo.sp_serveroption @server=N'SISAB016', @optname=N'collation compatible', @optvalue=N'false'
EXEC master.dbo.sp_serveroption @server=N'SISAB016', @optname=N'data access', @optvalue=N'true'
EXEC master.dbo.sp_serveroption @server=N'SISAB016', @optname=N'dist', @optvalue=N'false'
EXEC master.dbo.sp_serveroption @server=N'SISAB016', @optname=N'pub', @optvalue=N'false'
EXEC master.dbo.sp_serveroption @server=N'SISAB016', @optname=N'rpc', @optvalue=N'false'
EXEC master.dbo.sp_serveroption @server=N'SISAB016', @optname=N'rpc out', @optvalue=N'false'
EXEC master.dbo.sp_serveroption @server=N'SISAB016', @optname=N'sub', @optvalue=N'false'
EXEC master.dbo.sp_serveroption @server=N'SISAB016', @optname=N'connect timeout', @optvalue=N'0'
EXEC master.dbo.sp_serveroption @server=N'SISAB016', @optname=N'collation name', @optvalue=null
EXEC master.dbo.sp_serveroption @server=N'SISAB016', @optname=N'lazy schema validation', @optvalue=N'false'
EXEC master.dbo.sp_serveroption @server=N'SISAB016', @optname=N'query timeout', @optvalue=N'0'
EXEC master.dbo.sp_serveroption @server=N'SISAB016', @optname=N'use remote collation', @optvalue=N'true'











EXEC master.dbo.sp_addlinkedserver @server = N'SISAB016\ADM', @srvproduct=N'VBR008002-016\QUALID', @provider=N'SQLNCLI', @datasrc=N'VBR008002-016\QUALID'
 /* For security reasons the linked server remote logins password is changed with ######## */
EXEC master.dbo.sp_addlinkedsrvlogin @rmtsrvname=N'SISAB016\ADM',@useself=N'True',@locallogin=NULL,@rmtuser=NULL,@rmtpassword=NULL
EXEC master.dbo.sp_addlinkedsrvlogin @rmtsrvname=N'SISAB016\ADM',@useself=N'False',@locallogin=N'compilaproc',@rmtuser=N'compilaproc',@rmtpassword='C0mp!l@Pr0c'
EXEC master.dbo.sp_addlinkedsrvlogin @rmtsrvname=N'SISAB016\ADM',@useself=N'False',@locallogin=N'compilascript',@rmtuser=N'compilascript',@rmtpassword='C0mp!l@Scr!pt'

EXEC master.dbo.sp_serveroption @server=N'SISAB016\ADM', @optname=N'collation compatible', @optvalue=N'false'
EXEC master.dbo.sp_serveroption @server=N'SISAB016\ADM', @optname=N'data access', @optvalue=N'true'
EXEC master.dbo.sp_serveroption @server=N'SISAB016\ADM', @optname=N'dist', @optvalue=N'false'
EXEC master.dbo.sp_serveroption @server=N'SISAB016\ADM', @optname=N'pub', @optvalue=N'false'
EXEC master.dbo.sp_serveroption @server=N'SISAB016\ADM', @optname=N'rpc', @optvalue=N'false'
EXEC master.dbo.sp_serveroption @server=N'SISAB016\ADM', @optname=N'rpc out', @optvalue=N'false'
EXEC master.dbo.sp_serveroption @server=N'SISAB016\ADM', @optname=N'sub', @optvalue=N'false'
EXEC master.dbo.sp_serveroption @server=N'SISAB016\ADM', @optname=N'connect timeout', @optvalue=N'0'
EXEC master.dbo.sp_serveroption @server=N'SISAB016\ADM', @optname=N'collation name', @optvalue=null
EXEC master.dbo.sp_serveroption @server=N'SISAB016\ADM', @optname=N'lazy schema validation', @optvalue=N'false'
EXEC master.dbo.sp_serveroption @server=N'SISAB016\ADM', @optname=N'query timeout', @optvalue=N'0'
EXEC master.dbo.sp_serveroption @server=N'SISAB016\ADM', @optname=N'use remote collation', @optvalue=N'true'





EXEC master.dbo.sp_addlinkedserver @server = N'SISAB051\EXTRATOR', @srvproduct=N'SISAB015\EXTRATOR', @provider=N'SQLNCLI', @datasrc=N'SISAB015\EXTRATOR'
 /* For security reasons the linked server remote logins password is changed with ######## */
EXEC master.dbo.sp_addlinkedsrvlogin @rmtsrvname=N'SISAB051\EXTRATOR',@useself=N'True',@locallogin=NULL,@rmtuser=NULL,@rmtpassword=NULL
EXEC master.dbo.sp_addlinkedsrvlogin @rmtsrvname=N'SISAB051\EXTRATOR',@useself=N'False',@locallogin=N'compilaproc',@rmtuser=N'compilaproc',@rmtpassword='C0mp!l@Pr0c'
EXEC master.dbo.sp_addlinkedsrvlogin @rmtsrvname=N'SISAB051\EXTRATOR',@useself=N'False',@locallogin=N'compilascript',@rmtuser=N'compilascript',@rmtpassword='c0mpil@script'
EXEC master.dbo.sp_addlinkedsrvlogin @rmtsrvname=N'SISAB051\EXTRATOR',@useself=N'True',@locallogin=N'SISAB\1735.GDATI',@rmtuser=NULL,@rmtpassword=NULL
EXEC master.dbo.sp_addlinkedsrvlogin @rmtsrvname=N'SISAB051\EXTRATOR',@useself=N'False',@locallogin=N'sisbr',@rmtuser=N'sisbr',@rmtpassword='sisbry2k'
EXEC master.dbo.sp_addlinkedsrvlogin @rmtsrvname=N'SISAB051\EXTRATOR',@useself=N'False',@locallogin=N'uals',@rmtuser=N'uals',@rmtpassword='ualsy2k'
EXEC master.dbo.sp_addlinkedsrvlogin @rmtsrvname=N'SISAB051\EXTRATOR',@useself=N'False',@locallogin=N'Usegbr',@rmtuser=N'Usegbr',@rmtpassword='Tuti-Frut'

EXEC master.dbo.sp_serveroption @server=N'SISAB051\EXTRATOR', @optname=N'collation compatible', @optvalue=N'false'
EXEC master.dbo.sp_serveroption @server=N'SISAB051\EXTRATOR', @optname=N'data access', @optvalue=N'true'
EXEC master.dbo.sp_serveroption @server=N'SISAB051\EXTRATOR', @optname=N'dist', @optvalue=N'false'
EXEC master.dbo.sp_serveroption @server=N'SISAB051\EXTRATOR', @optname=N'pub', @optvalue=N'false'
EXEC master.dbo.sp_serveroption @server=N'SISAB051\EXTRATOR', @optname=N'rpc', @optvalue=N'true'
EXEC master.dbo.sp_serveroption @server=N'SISAB051\EXTRATOR', @optname=N'rpc out', @optvalue=N'true'
EXEC master.dbo.sp_serveroption @server=N'SISAB051\EXTRATOR', @optname=N'sub', @optvalue=N'false'
EXEC master.dbo.sp_serveroption @server=N'SISAB051\EXTRATOR', @optname=N'connect timeout', @optvalue=N'0'
EXEC master.dbo.sp_serveroption @server=N'SISAB051\EXTRATOR', @optname=N'collation name', @optvalue=null
EXEC master.dbo.sp_serveroption @server=N'SISAB051\EXTRATOR', @optname=N'lazy schema validation', @optvalue=N'false'
EXEC master.dbo.sp_serveroption @server=N'SISAB051\EXTRATOR', @optname=N'query timeout', @optvalue=N'0'
EXEC master.dbo.sp_serveroption @server=N'SISAB051\EXTRATOR', @optname=N'use remote collation', @optvalue=N'true'





EXEC master.dbo.sp_addlinkedserver @server = N'SISAB063', @srvproduct=N'VBR008002-016\QUALID_ABS', @provider=N'SQLNCLI', @datasrc=N'VBR008002-016\QUALID_ABS'
 /* For security reasons the linked server remote logins password is changed with ######## */
EXEC master.dbo.sp_addlinkedsrvlogin @rmtsrvname=N'SISAB063',@useself=N'False',@locallogin=NULL,@rmtuser=N'SISBR',@rmtpassword='SISBR_QLD'

EXEC master.dbo.sp_serveroption @server=N'SISAB063', @optname=N'collation compatible', @optvalue=N'false'
EXEC master.dbo.sp_serveroption @server=N'SISAB063', @optname=N'data access', @optvalue=N'true'
EXEC master.dbo.sp_serveroption @server=N'SISAB063', @optname=N'dist', @optvalue=N'false'
EXEC master.dbo.sp_serveroption @server=N'SISAB063', @optname=N'pub', @optvalue=N'false'
EXEC master.dbo.sp_serveroption @server=N'SISAB063', @optname=N'rpc', @optvalue=N'false'
EXEC master.dbo.sp_serveroption @server=N'SISAB063', @optname=N'rpc out', @optvalue=N'false'
EXEC master.dbo.sp_serveroption @server=N'SISAB063', @optname=N'sub', @optvalue=N'false'
EXEC master.dbo.sp_serveroption @server=N'SISAB063', @optname=N'connect timeout', @optvalue=N'0'
EXEC master.dbo.sp_serveroption @server=N'SISAB063', @optname=N'collation name', @optvalue=null
EXEC master.dbo.sp_serveroption @server=N'SISAB063', @optname=N'lazy schema validation', @optvalue=N'false'
EXEC master.dbo.sp_serveroption @server=N'SISAB063', @optname=N'query timeout', @optvalue=N'0'
EXEC master.dbo.sp_serveroption @server=N'SISAB063', @optname=N'use remote collation', @optvalue=N'true'







EXEC master.dbo.sp_addlinkedserver @server = N'SISAB066', @srvproduct=N'SISAB066\ABS', @provider=N'SQLNCLI', @datasrc=N'SISAB066\ABS'
 /* For security reasons the linked server remote logins password is changed with ######## */
EXEC master.dbo.sp_addlinkedsrvlogin @rmtsrvname=N'SISAB066',@useself=N'False',@locallogin=NULL,@rmtuser=N'sisbr',@rmtpassword='SISBRY2K'

EXEC master.dbo.sp_serveroption @server=N'SISAB066', @optname=N'collation compatible', @optvalue=N'false'
EXEC master.dbo.sp_serveroption @server=N'SISAB066', @optname=N'data access', @optvalue=N'true'
EXEC master.dbo.sp_serveroption @server=N'SISAB066', @optname=N'dist', @optvalue=N'false'
EXEC master.dbo.sp_serveroption @server=N'SISAB066', @optname=N'pub', @optvalue=N'false'
EXEC master.dbo.sp_serveroption @server=N'SISAB066', @optname=N'rpc', @optvalue=N'false'
EXEC master.dbo.sp_serveroption @server=N'SISAB066', @optname=N'rpc out', @optvalue=N'false'
EXEC master.dbo.sp_serveroption @server=N'SISAB066', @optname=N'sub', @optvalue=N'false'
EXEC master.dbo.sp_serveroption @server=N'SISAB066', @optname=N'connect timeout', @optvalue=N'0'
EXEC master.dbo.sp_serveroption @server=N'SISAB066', @optname=N'collation name', @optvalue=null
EXEC master.dbo.sp_serveroption @server=N'SISAB066', @optname=N'lazy schema validation', @optvalue=N'false'
EXEC master.dbo.sp_serveroption @server=N'SISAB066', @optname=N'query timeout', @optvalue=N'0'
EXEC master.dbo.sp_serveroption @server=N'SISAB066', @optname=N'use remote collation', @optvalue=N'true'







EXEC master.dbo.sp_addlinkedserver @server = N'SISAB903', @srvproduct=N'VBR008002-016\QUALID', @provider=N'SQLNCLI', @datasrc=N'VBR008002-016\QUALID'
 /* For security reasons the linked server remote logins password is changed with ######## */
EXEC master.dbo.sp_addlinkedsrvlogin @rmtsrvname=N'SISAB903',@useself=N'False',@locallogin=NULL,@rmtuser=N'sisbr',@rmtpassword='SISBR_QLD'

EXEC master.dbo.sp_serveroption @server=N'SISAB903', @optname=N'collation compatible', @optvalue=N'false'
EXEC master.dbo.sp_serveroption @server=N'SISAB903', @optname=N'data access', @optvalue=N'true'
EXEC master.dbo.sp_serveroption @server=N'SISAB903', @optname=N'dist', @optvalue=N'false'
EXEC master.dbo.sp_serveroption @server=N'SISAB903', @optname=N'pub', @optvalue=N'false'
EXEC master.dbo.sp_serveroption @server=N'SISAB903', @optname=N'rpc', @optvalue=N'true'
EXEC master.dbo.sp_serveroption @server=N'SISAB903', @optname=N'rpc out', @optvalue=N'true'
EXEC master.dbo.sp_serveroption @server=N'SISAB903', @optname=N'sub', @optvalue=N'false'
EXEC master.dbo.sp_serveroption @server=N'SISAB903', @optname=N'connect timeout', @optvalue=N'0'
EXEC master.dbo.sp_serveroption @server=N'SISAB903', @optname=N'collation name', @optvalue=null
EXEC master.dbo.sp_serveroption @server=N'SISAB903', @optname=N'lazy schema validation', @optvalue=N'false'
EXEC master.dbo.sp_serveroption @server=N'SISAB903', @optname=N'query timeout', @optvalue=N'0'
EXEC master.dbo.sp_serveroption @server=N'SISAB903', @optname=N'use remote collation', @optvalue=N'true'





EXEC master.dbo.sp_addlinkedserver @server = N'SISAS013\WEB_ABS', @srvproduct=N'SISAB051\WEB_QLD_ABS', @provider=N'SQLNCLI', @datasrc=N'SISAB051\WEB_QLD_ABS'
 /* For security reasons the linked server remote logins password is changed with ######## */
EXEC master.dbo.sp_addlinkedsrvlogin @rmtsrvname=N'SISAS013\WEB_ABS',@useself=N'False',@locallogin=NULL,@rmtuser=N'Usegbr',@rmtpassword='Xucrutis'

EXEC master.dbo.sp_serveroption @server=N'SISAS013\WEB_ABS', @optname=N'collation compatible', @optvalue=N'false'
EXEC master.dbo.sp_serveroption @server=N'SISAS013\WEB_ABS', @optname=N'data access', @optvalue=N'true'
EXEC master.dbo.sp_serveroption @server=N'SISAS013\WEB_ABS', @optname=N'dist', @optvalue=N'false'
EXEC master.dbo.sp_serveroption @server=N'SISAS013\WEB_ABS', @optname=N'pub', @optvalue=N'false'
EXEC master.dbo.sp_serveroption @server=N'SISAS013\WEB_ABS', @optname=N'rpc', @optvalue=N'false'
EXEC master.dbo.sp_serveroption @server=N'SISAS013\WEB_ABS', @optname=N'rpc out', @optvalue=N'false'
EXEC master.dbo.sp_serveroption @server=N'SISAS013\WEB_ABS', @optname=N'sub', @optvalue=N'false'
EXEC master.dbo.sp_serveroption @server=N'SISAS013\WEB_ABS', @optname=N'connect timeout', @optvalue=N'0'
EXEC master.dbo.sp_serveroption @server=N'SISAS013\WEB_ABS', @optname=N'collation name', @optvalue=null
EXEC master.dbo.sp_serveroption @server=N'SISAS013\WEB_ABS', @optname=N'lazy schema validation', @optvalue=N'false'
EXEC master.dbo.sp_serveroption @server=N'SISAS013\WEB_ABS', @optname=N'query timeout', @optvalue=N'0'
EXEC master.dbo.sp_serveroption @server=N'SISAS013\WEB_ABS', @optname=N'use remote collation', @optvalue=N'true'





EXEC master.dbo.sp_addlinkedserver @server = N'SISAS015\EXTRATOR_ABS', @srvproduct=N'SISAS015\EXTRATOR_ABS', @provider=N'SQLNCLI', @datasrc=N'SISAS015\EXTRATOR_ABS'
 /* For security reasons the linked server remote logins password is changed with ######## */
EXEC master.dbo.sp_addlinkedsrvlogin @rmtsrvname=N'SISAS015\EXTRATOR_ABS',@useself=N'True',@locallogin=NULL,@rmtuser=NULL,@rmtpassword=NULL
EXEC master.dbo.sp_addlinkedsrvlogin @rmtsrvname=N'SISAS015\EXTRATOR_ABS',@useself=N'False',@locallogin=N'compilaproc',@rmtuser=N'compilaproc',@rmtpassword='C0mp!l@Pr0c'
EXEC master.dbo.sp_addlinkedsrvlogin @rmtsrvname=N'SISAS015\EXTRATOR_ABS',@useself=N'False',@locallogin=N'compilascript',@rmtuser=N'compilascript',@rmtpassword='C0mp!l@Scr!pt'
EXEC master.dbo.sp_addlinkedsrvlogin @rmtsrvname=N'SISAS015\EXTRATOR_ABS',@useself=N'False',@locallogin=N'sisbr',@rmtuser=N'sisbr',@rmtpassword='SISBRY2K'
EXEC master.dbo.sp_addlinkedsrvlogin @rmtsrvname=N'SISAS015\EXTRATOR_ABS',@useself=N'False',@locallogin=N'Usegbr',@rmtuser=N'Usegbr',@rmtpassword='Tuti-Frut'

EXEC master.dbo.sp_serveroption @server=N'SISAS015\EXTRATOR_ABS', @optname=N'collation compatible', @optvalue=N'false'
EXEC master.dbo.sp_serveroption @server=N'SISAS015\EXTRATOR_ABS', @optname=N'data access', @optvalue=N'true'
EXEC master.dbo.sp_serveroption @server=N'SISAS015\EXTRATOR_ABS', @optname=N'dist', @optvalue=N'false'
EXEC master.dbo.sp_serveroption @server=N'SISAS015\EXTRATOR_ABS', @optname=N'pub', @optvalue=N'false'
EXEC master.dbo.sp_serveroption @server=N'SISAS015\EXTRATOR_ABS', @optname=N'rpc', @optvalue=N'true'
EXEC master.dbo.sp_serveroption @server=N'SISAS015\EXTRATOR_ABS', @optname=N'rpc out', @optvalue=N'true'
EXEC master.dbo.sp_serveroption @server=N'SISAS015\EXTRATOR_ABS', @optname=N'sub', @optvalue=N'false'
EXEC master.dbo.sp_serveroption @server=N'SISAS015\EXTRATOR_ABS', @optname=N'connect timeout', @optvalue=N'0'
EXEC master.dbo.sp_serveroption @server=N'SISAS015\EXTRATOR_ABS', @optname=N'collation name', @optvalue=null
EXEC master.dbo.sp_serveroption @server=N'SISAS015\EXTRATOR_ABS', @optname=N'lazy schema validation', @optvalue=N'false'
EXEC master.dbo.sp_serveroption @server=N'SISAS015\EXTRATOR_ABS', @optname=N'query timeout', @optvalue=N'0'
EXEC master.dbo.sp_serveroption @server=N'SISAS015\EXTRATOR_ABS', @optname=N'use remote collation', @optvalue=N'true'






EXEC master.dbo.sp_addlinkedserver @server = N'SUN_LS', @srvproduct=N'VBR008002-016\QUALID', @provider=N'SQLNCLI', @datasrc=N'VBR008002-016\QUALID'
 /* For security reasons the linked server remote logins password is changed with ######## */
EXEC master.dbo.sp_addlinkedsrvlogin @rmtsrvname=N'SUN_LS',@useself=N'False',@locallogin=NULL,@rmtuser=N'Usegbr',@rmtpassword='Xucrutis'

EXEC master.dbo.sp_serveroption @server=N'SUN_LS', @optname=N'collation compatible', @optvalue=N'false'
EXEC master.dbo.sp_serveroption @server=N'SUN_LS', @optname=N'data access', @optvalue=N'true'
EXEC master.dbo.sp_serveroption @server=N'SUN_LS', @optname=N'dist', @optvalue=N'false'
EXEC master.dbo.sp_serveroption @server=N'SUN_LS', @optname=N'pub', @optvalue=N'false'
EXEC master.dbo.sp_serveroption @server=N'SUN_LS', @optname=N'rpc', @optvalue=N'true'
EXEC master.dbo.sp_serveroption @server=N'SUN_LS', @optname=N'rpc out', @optvalue=N'true'
EXEC master.dbo.sp_serveroption @server=N'SUN_LS', @optname=N'sub', @optvalue=N'false'
EXEC master.dbo.sp_serveroption @server=N'SUN_LS', @optname=N'connect timeout', @optvalue=N'0'
EXEC master.dbo.sp_serveroption @server=N'SUN_LS', @optname=N'collation name', @optvalue=null
EXEC master.dbo.sp_serveroption @server=N'SUN_LS', @optname=N'lazy schema validation', @optvalue=N'false'
EXEC master.dbo.sp_serveroption @server=N'SUN_LS', @optname=N'query timeout', @optvalue=N'0'
EXEC master.dbo.sp_serveroption @server=N'SUN_LS', @optname=N'use remote collation', @optvalue=N'true'
