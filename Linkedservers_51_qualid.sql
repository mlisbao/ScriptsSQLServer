EXEC master.dbo.sp_addlinkedserver @server = N'AB', @srvproduct=N'VBR008002-016\QUALID', @provider=N'SQLNCLI', @datasrc=N'VBR008002-016\QUALID'
 /* For security reasons the linked server remote logins password is changed with ######## */
EXEC master.dbo.sp_addlinkedsrvlogin @rmtsrvname=N'AB',@useself=N'False',@locallogin=NULL,@rmtuser=NULL,@rmtpassword=NULL
EXEC master.dbo.sp_addlinkedsrvlogin @rmtsrvname=N'AB',@useself=N'False',@locallogin=N'sisbr',@rmtuser=N'sisbr',@rmtpassword='SISBR_QLD'
EXEC master.dbo.sp_addlinkedsrvlogin @rmtsrvname=N'AB',@useself=N'False',@locallogin=N'Usegbr',@rmtuser=N'Usegbr',@rmtpassword='Xucrutis'

EXEC master.dbo.sp_serveroption @server=N'AB', @optname=N'collation compatible', @optvalue=N'false'
EXEC master.dbo.sp_serveroption @server=N'AB', @optname=N'data access', @optvalue=N'true'
EXEC master.dbo.sp_serveroption @server=N'AB', @optname=N'dist', @optvalue=N'false'
EXEC master.dbo.sp_serveroption @server=N'AB', @optname=N'pub', @optvalue=N'false'
EXEC master.dbo.sp_serveroption @server=N'AB', @optname=N'rpc', @optvalue=N'true'
EXEC master.dbo.sp_serveroption @server=N'AB', @optname=N'rpc out', @optvalue=N'true'
EXEC master.dbo.sp_serveroption @server=N'AB', @optname=N'sub', @optvalue=N'false'
EXEC master.dbo.sp_serveroption @server=N'AB', @optname=N'connect timeout', @optvalue=N'0'
EXEC master.dbo.sp_serveroption @server=N'AB', @optname=N'collation name', @optvalue=null
EXEC master.dbo.sp_serveroption @server=N'AB', @optname=N'lazy schema validation', @optvalue=N'false'
EXEC master.dbo.sp_serveroption @server=N'AB', @optname=N'query timeout', @optvalue=N'0'
EXEC master.dbo.sp_serveroption @server=N'AB', @optname=N'use remote collation', @optvalue=N'true'







EXEC master.dbo.sp_addlinkedserver @server = N'ABS', @srvproduct=N'VBR008002-016\QUALID', @provider=N'SQLNCLI', @datasrc=N'VBR008002-016\QUALID'
 /* For security reasons the linked server remote logins password is changed with ######## */
EXEC master.dbo.sp_addlinkedsrvlogin @rmtsrvname=N'ABS',@useself=N'False',@locallogin=NULL,@rmtuser=N'Usegbr',@rmtpassword='Xucrutis'

EXEC master.dbo.sp_serveroption @server=N'ABS', @optname=N'collation compatible', @optvalue=N'false'
EXEC master.dbo.sp_serveroption @server=N'ABS', @optname=N'data access', @optvalue=N'true'
EXEC master.dbo.sp_serveroption @server=N'ABS', @optname=N'dist', @optvalue=N'false'
EXEC master.dbo.sp_serveroption @server=N'ABS', @optname=N'pub', @optvalue=N'false'
EXEC master.dbo.sp_serveroption @server=N'ABS', @optname=N'rpc', @optvalue=N'true'
EXEC master.dbo.sp_serveroption @server=N'ABS', @optname=N'rpc out', @optvalue=N'true'
EXEC master.dbo.sp_serveroption @server=N'ABS', @optname=N'sub', @optvalue=N'false'
EXEC master.dbo.sp_serveroption @server=N'ABS', @optname=N'connect timeout', @optvalue=N'0'
EXEC master.dbo.sp_serveroption @server=N'ABS', @optname=N'collation name', @optvalue=null
EXEC master.dbo.sp_serveroption @server=N'ABS', @optname=N'lazy schema validation', @optvalue=N'false'
EXEC master.dbo.sp_serveroption @server=N'ABS', @optname=N'query timeout', @optvalue=N'0'
EXEC master.dbo.sp_serveroption @server=N'ABS', @optname=N'use remote collation', @optvalue=N'true'



EXEC master.dbo.sp_addlinkedserver @server = N'ABSS', @srvproduct=N'VBR008002-016\QUALID_ABS', @provider=N'SQLNCLI', @datasrc=N'VBR008002-016\QUALID_ABS'
 /* For security reasons the linked server remote logins password is changed with ######## */
EXEC master.dbo.sp_addlinkedsrvlogin @rmtsrvname=N'ABSS',@useself=N'True',@locallogin=NULL,@rmtuser=NULL,@rmtpassword=NULL
EXEC master.dbo.sp_addlinkedsrvlogin @rmtsrvname=N'ABSS',@useself=N'False',@locallogin=N'compilaproc',@rmtuser=N'compilaproc',@rmtpassword='C0mp!l@Pr0c'
EXEC master.dbo.sp_addlinkedsrvlogin @rmtsrvname=N'ABSS',@useself=N'False',@locallogin=N'compilascript',@rmtuser=N'compilascript',@rmtpassword='C0mp!l@Scr!pt'
EXEC master.dbo.sp_addlinkedsrvlogin @rmtsrvname=N'ABSS',@useself=N'False',@locallogin=N'uals',@rmtuser=N'uals',@rmtpassword='uals_qld'
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





EXEC master.dbo.sp_addlinkedserver @server = N'ACAO_JUDICIAL_LS', @srvproduct=N'OLE DB Provider for Jet', @provider=N'Microsoft.Jet.OLEDB.4.0', @datasrc=N'\\SISAB007\PAJUR\Ações Judiciais.mdb'
 /* For security reasons the linked server remote logins password is changed with ######## */
EXEC master.dbo.sp_addlinkedsrvlogin @rmtsrvname=N'ACAO_JUDICIAL_LS',@useself=N'False',@locallogin=NULL,@rmtuser=N'admin',@rmtpassword='########'
EXEC master.dbo.sp_addlinkedsrvlogin @rmtsrvname=N'ACAO_JUDICIAL_LS',@useself=N'False',@locallogin=N'compilaproc',@rmtuser=N'admin',@rmtpassword='C0mp!l@Pr0c'
EXEC master.dbo.sp_addlinkedsrvlogin @rmtsrvname=N'ACAO_JUDICIAL_LS',@useself=N'False',@locallogin=N'compilascript',@rmtuser=N'admin',@rmtpassword='########'
EXEC master.dbo.sp_addlinkedsrvlogin @rmtsrvname=N'ACAO_JUDICIAL_LS',@useself=N'False',@locallogin=N'migra_wflw',@rmtuser=N'migra_wflw',@rmtpassword='migrawflw2006'
EXEC master.dbo.sp_addlinkedsrvlogin @rmtsrvname=N'ACAO_JUDICIAL_LS',@useself=N'False',@locallogin=N'sisbr',@rmtuser=N'admin',@rmtpassword='SISBR_QLD'
EXEC master.dbo.sp_addlinkedsrvlogin @rmtsrvname=N'ACAO_JUDICIAL_LS',@useself=N'False',@locallogin=N'wjuridico',@rmtuser=N'admin',@rmtpassword='########'

EXEC master.dbo.sp_serveroption @server=N'ACAO_JUDICIAL_LS', @optname=N'collation compatible', @optvalue=N'false'
EXEC master.dbo.sp_serveroption @server=N'ACAO_JUDICIAL_LS', @optname=N'data access', @optvalue=N'true'
EXEC master.dbo.sp_serveroption @server=N'ACAO_JUDICIAL_LS', @optname=N'dist', @optvalue=N'false'
EXEC master.dbo.sp_serveroption @server=N'ACAO_JUDICIAL_LS', @optname=N'pub', @optvalue=N'false'
EXEC master.dbo.sp_serveroption @server=N'ACAO_JUDICIAL_LS', @optname=N'rpc', @optvalue=N'false'
EXEC master.dbo.sp_serveroption @server=N'ACAO_JUDICIAL_LS', @optname=N'rpc out', @optvalue=N'false'
EXEC master.dbo.sp_serveroption @server=N'ACAO_JUDICIAL_LS', @optname=N'sub', @optvalue=N'false'
EXEC master.dbo.sp_serveroption @server=N'ACAO_JUDICIAL_LS', @optname=N'connect timeout', @optvalue=N'0'
EXEC master.dbo.sp_serveroption @server=N'ACAO_JUDICIAL_LS', @optname=N'collation name', @optvalue=null
EXEC master.dbo.sp_serveroption @server=N'ACAO_JUDICIAL_LS', @optname=N'lazy schema validation', @optvalue=N'false'
EXEC master.dbo.sp_serveroption @server=N'ACAO_JUDICIAL_LS', @optname=N'query timeout', @optvalue=N'0'
EXEC master.dbo.sp_serveroption @server=N'ACAO_JUDICIAL_LS', @optname=N'use remote collation', @optvalue=N'true'




EXEC master.dbo.sp_addlinkedserver @server = N'APINTERNET', @srvproduct=N'SISAB374', @provider=N'SQLNCLI', @datasrc=N'SISAB374'
 /* For security reasons the linked server remote logins password is changed with ######## */
EXEC master.dbo.sp_addlinkedsrvlogin @rmtsrvname=N'APINTERNET',@useself=N'False',@locallogin=NULL,@rmtuser=N'portal',@rmtpassword='########'

EXEC master.dbo.sp_serveroption @server=N'APINTERNET', @optname=N'collation compatible', @optvalue=N'false'
EXEC master.dbo.sp_serveroption @server=N'APINTERNET', @optname=N'data access', @optvalue=N'true'
EXEC master.dbo.sp_serveroption @server=N'APINTERNET', @optname=N'dist', @optvalue=N'false'
EXEC master.dbo.sp_serveroption @server=N'APINTERNET', @optname=N'pub', @optvalue=N'false'
EXEC master.dbo.sp_serveroption @server=N'APINTERNET', @optname=N'rpc', @optvalue=N'true'
EXEC master.dbo.sp_serveroption @server=N'APINTERNET', @optname=N'rpc out', @optvalue=N'true'
EXEC master.dbo.sp_serveroption @server=N'APINTERNET', @optname=N'sub', @optvalue=N'false'
EXEC master.dbo.sp_serveroption @server=N'APINTERNET', @optname=N'connect timeout', @optvalue=N'0'
EXEC master.dbo.sp_serveroption @server=N'APINTERNET', @optname=N'collation name', @optvalue=null
EXEC master.dbo.sp_serveroption @server=N'APINTERNET', @optname=N'lazy schema validation', @optvalue=N'false'
EXEC master.dbo.sp_serveroption @server=N'APINTERNET', @optname=N'query timeout', @optvalue=N'0'
EXEC master.dbo.sp_serveroption @server=N'APINTERNET', @optname=N'use remote collation', @optvalue=N'true'



EXEC master.dbo.sp_addlinkedserver @server = N'FPWP_LS', @srvproduct=N'VBR008002-016\QUALID', @provider=N'SQLNCLI', @datasrc=N'VBR008002-016\QUALID'
 /* For security reasons the linked server remote logins password is changed with ######## */
EXEC master.dbo.sp_addlinkedsrvlogin @rmtsrvname=N'FPWP_LS',@useself=N'True',@locallogin=NULL,@rmtuser=NULL,@rmtpassword=NULL
EXEC master.dbo.sp_addlinkedsrvlogin @rmtsrvname=N'FPWP_LS',@useself=N'False',@locallogin=N'compilaproc',@rmtuser=N'compilaproc',@rmtpassword='C0mp!l@Pr0c'
EXEC master.dbo.sp_addlinkedsrvlogin @rmtsrvname=N'FPWP_LS',@useself=N'False',@locallogin=N'sisbr',@rmtuser=N'Usegbr',@rmtpassword='Xucrutis'

EXEC master.dbo.sp_serveroption @server=N'FPWP_LS', @optname=N'collation compatible', @optvalue=N'false'
EXEC master.dbo.sp_serveroption @server=N'FPWP_LS', @optname=N'data access', @optvalue=N'true'
EXEC master.dbo.sp_serveroption @server=N'FPWP_LS', @optname=N'dist', @optvalue=N'false'
EXEC master.dbo.sp_serveroption @server=N'FPWP_LS', @optname=N'pub', @optvalue=N'false'
EXEC master.dbo.sp_serveroption @server=N'FPWP_LS', @optname=N'rpc', @optvalue=N'false'
EXEC master.dbo.sp_serveroption @server=N'FPWP_LS', @optname=N'rpc out', @optvalue=N'false'
EXEC master.dbo.sp_serveroption @server=N'FPWP_LS', @optname=N'sub', @optvalue=N'false'
EXEC master.dbo.sp_serveroption @server=N'FPWP_LS', @optname=N'connect timeout', @optvalue=N'0'
EXEC master.dbo.sp_serveroption @server=N'FPWP_LS', @optname=N'collation name', @optvalue=null
EXEC master.dbo.sp_serveroption @server=N'FPWP_LS', @optname=N'lazy schema validation', @optvalue=N'false'
EXEC master.dbo.sp_serveroption @server=N'FPWP_LS', @optname=N'query timeout', @optvalue=N'0'
EXEC master.dbo.sp_serveroption @server=N'FPWP_LS', @optname=N'use remote collation', @optvalue=N'true'




EXEC master.dbo.sp_addlinkedserver @server = N'localhost', @srvproduct=N'SQL Server'
 /* For security reasons the linked server remote logins password is changed with ######## */
EXEC master.dbo.sp_addlinkedsrvlogin @rmtsrvname=N'localhost',@useself=N'True',@locallogin=NULL,@rmtuser=NULL,@rmtpassword=NULL

EXEC master.dbo.sp_serveroption @server=N'localhost', @optname=N'collation compatible', @optvalue=N'false'
EXEC master.dbo.sp_serveroption @server=N'localhost', @optname=N'data access', @optvalue=N'true'
EXEC master.dbo.sp_serveroption @server=N'localhost', @optname=N'dist', @optvalue=N'false'
EXEC master.dbo.sp_serveroption @server=N'localhost', @optname=N'pub', @optvalue=N'false'
EXEC master.dbo.sp_serveroption @server=N'localhost', @optname=N'rpc', @optvalue=N'true'
EXEC master.dbo.sp_serveroption @server=N'localhost', @optname=N'rpc out', @optvalue=N'true'
EXEC master.dbo.sp_serveroption @server=N'localhost', @optname=N'sub', @optvalue=N'false'
EXEC master.dbo.sp_serveroption @server=N'localhost', @optname=N'connect timeout', @optvalue=N'0'
EXEC master.dbo.sp_serveroption @server=N'localhost', @optname=N'collation name', @optvalue=null
EXEC master.dbo.sp_serveroption @server=N'localhost', @optname=N'lazy schema validation', @optvalue=N'false'
EXEC master.dbo.sp_serveroption @server=N'localhost', @optname=N'query timeout', @optvalue=N'0'
EXEC master.dbo.sp_serveroption @server=N'localhost', @optname=N'use remote collation', @optvalue=N'true'





EXEC master.dbo.sp_addlinkedserver @server = N'LS_ORA_ADP', @srvproduct=N'Oracle', @provider=N'OraOLEDB.Oracle', @datasrc=N'PFCOH0'
 /* For security reasons the linked server remote logins password is changed with ######## */
EXEC master.dbo.sp_addlinkedsrvlogin @rmtsrvname=N'LS_ORA_ADP',@useself=N'False',@locallogin=NULL,@rmtuser=N'testett',@rmtpassword='########'
EXEC master.dbo.sp_serveroption @server=N'LS_ORA_ADP', @optname=N'collation compatible', @optvalue=N'false'
EXEC master.dbo.sp_serveroption @server=N'LS_ORA_ADP', @optname=N'data access', @optvalue=N'true'
EXEC master.dbo.sp_serveroption @server=N'LS_ORA_ADP', @optname=N'dist', @optvalue=N'false'
EXEC master.dbo.sp_serveroption @server=N'LS_ORA_ADP', @optname=N'pub', @optvalue=N'false'
EXEC master.dbo.sp_serveroption @server=N'LS_ORA_ADP', @optname=N'rpc', @optvalue=N'false'
EXEC master.dbo.sp_serveroption @server=N'LS_ORA_ADP', @optname=N'rpc out', @optvalue=N'false'
EXEC master.dbo.sp_serveroption @server=N'LS_ORA_ADP', @optname=N'sub', @optvalue=N'false'
EXEC master.dbo.sp_serveroption @server=N'LS_ORA_ADP', @optname=N'connect timeout', @optvalue=N'0'
EXEC master.dbo.sp_serveroption @server=N'LS_ORA_ADP', @optname=N'collation name', @optvalue=null
EXEC master.dbo.sp_serveroption @server=N'LS_ORA_ADP', @optname=N'lazy schema validation', @optvalue=N'false'
EXEC master.dbo.sp_serveroption @server=N'LS_ORA_ADP', @optname=N'query timeout', @optvalue=N'0'
EXEC master.dbo.sp_serveroption @server=N'LS_ORA_ADP', @optname=N'use remote collation', @optvalue=N'true'


EXEC master.dbo.sp_addlinkedserver @server = N'LS_ORA_PFCOP0', @srvproduct=N'Oracle', @provider=N'OraOLEDB.Oracle', @datasrc=N'PFCOP0'
 /* For security reasons the linked server remote logins password is changed with ######## */
EXEC master.dbo.sp_addlinkedsrvlogin @rmtsrvname=N'LS_ORA_PFCOP0',@useself=N'False',@locallogin=NULL,@rmtuser=N'RHADPWEBUSR',@rmtpassword='########'

EXEC master.dbo.sp_serveroption @server=N'LS_ORA_PFCOP0', @optname=N'collation compatible', @optvalue=N'false'
EXEC master.dbo.sp_serveroption @server=N'LS_ORA_PFCOP0', @optname=N'data access', @optvalue=N'true'
EXEC master.dbo.sp_serveroption @server=N'LS_ORA_PFCOP0', @optname=N'dist', @optvalue=N'false'
EXEC master.dbo.sp_serveroption @server=N'LS_ORA_PFCOP0', @optname=N'pub', @optvalue=N'false'
EXEC master.dbo.sp_serveroption @server=N'LS_ORA_PFCOP0', @optname=N'rpc', @optvalue=N'true'
EXEC master.dbo.sp_serveroption @server=N'LS_ORA_PFCOP0', @optname=N'rpc out', @optvalue=N'true'
EXEC master.dbo.sp_serveroption @server=N'LS_ORA_PFCOP0', @optname=N'sub', @optvalue=N'false'
EXEC master.dbo.sp_serveroption @server=N'LS_ORA_PFCOP0', @optname=N'connect timeout', @optvalue=N'0'
EXEC master.dbo.sp_serveroption @server=N'LS_ORA_PFCOP0', @optname=N'collation name', @optvalue=null
EXEC master.dbo.sp_serveroption @server=N'LS_ORA_PFCOP0', @optname=N'lazy schema validation', @optvalue=N'false'
EXEC master.dbo.sp_serveroption @server=N'LS_ORA_PFCOP0', @optname=N'query timeout', @optvalue=N'0'
EXEC master.dbo.sp_serveroption @server=N'LS_ORA_PFCOP0', @optname=N'use remote collation', @optvalue=N'true'




EXEC master.dbo.sp_addlinkedserver @server = N'LS_SISAB561', @srvproduct=N'sisab561', @provider=N'SQLNCLI', @datasrc=N'sisab561'
 /* For security reasons the linked server remote logins password is changed with ######## */
EXEC master.dbo.sp_addlinkedsrvlogin @rmtsrvname=N'LS_SISAB561',@useself=N'True',@locallogin=NULL,@rmtuser=NULL,@rmtpassword=NULL
EXEC master.dbo.sp_addlinkedsrvlogin @rmtsrvname=N'LS_SISAB561',@useself=N'False',@locallogin=N'sisbr',@rmtuser=N'sisbr',@rmtpassword='SISBR_QLD'

EXEC master.dbo.sp_serveroption @server=N'LS_SISAB561', @optname=N'collation compatible', @optvalue=N'false'
EXEC master.dbo.sp_serveroption @server=N'LS_SISAB561', @optname=N'data access', @optvalue=N'true'
EXEC master.dbo.sp_serveroption @server=N'LS_SISAB561', @optname=N'dist', @optvalue=N'false'
EXEC master.dbo.sp_serveroption @server=N'LS_SISAB561', @optname=N'pub', @optvalue=N'false'
EXEC master.dbo.sp_serveroption @server=N'LS_SISAB561', @optname=N'rpc', @optvalue=N'false'
EXEC master.dbo.sp_serveroption @server=N'LS_SISAB561', @optname=N'rpc out', @optvalue=N'false'
EXEC master.dbo.sp_serveroption @server=N'LS_SISAB561', @optname=N'sub', @optvalue=N'false'
EXEC master.dbo.sp_serveroption @server=N'LS_SISAB561', @optname=N'connect timeout', @optvalue=N'0'
EXEC master.dbo.sp_serveroption @server=N'LS_SISAB561', @optname=N'collation name', @optvalue=null
EXEC master.dbo.sp_serveroption @server=N'LS_SISAB561', @optname=N'lazy schema validation', @optvalue=N'false'
EXEC master.dbo.sp_serveroption @server=N'LS_SISAB561', @optname=N'query timeout', @optvalue=N'0'
EXEC master.dbo.sp_serveroption @server=N'LS_SISAB561', @optname=N'use remote collation', @optvalue=N'true'


EXEC master.dbo.sp_addlinkedserver @server = N'MERCADO_SEG_LS', @srvproduct=N'', @provider=N'Microsoft.Jet.OLEDB.4.0', @datasrc=N'D:\SIG\Mercado\Base Ses.mdb'
 /* For security reasons the linked server remote logins password is changed with ######## */
EXEC master.dbo.sp_addlinkedsrvlogin @rmtsrvname=N'MERCADO_SEG_LS',@useself=N'False',@locallogin=NULL,@rmtuser=N'admin',@rmtpassword='########'
EXEC master.dbo.sp_addlinkedsrvlogin @rmtsrvname=N'MERCADO_SEG_LS',@useself=N'False',@locallogin=N'SISAB\ysemenov',@rmtuser=N'admin',@rmtpassword='########'

EXEC master.dbo.sp_serveroption @server=N'MERCADO_SEG_LS', @optname=N'collation compatible', @optvalue=N'false'
EXEC master.dbo.sp_serveroption @server=N'MERCADO_SEG_LS', @optname=N'data access', @optvalue=N'true'
EXEC master.dbo.sp_serveroption @server=N'MERCADO_SEG_LS', @optname=N'dist', @optvalue=N'false'
EXEC master.dbo.sp_serveroption @server=N'MERCADO_SEG_LS', @optname=N'pub', @optvalue=N'false'
EXEC master.dbo.sp_serveroption @server=N'MERCADO_SEG_LS', @optname=N'rpc', @optvalue=N'false'
EXEC master.dbo.sp_serveroption @server=N'MERCADO_SEG_LS', @optname=N'rpc out', @optvalue=N'false'
EXEC master.dbo.sp_serveroption @server=N'MERCADO_SEG_LS', @optname=N'sub', @optvalue=N'false'
EXEC master.dbo.sp_serveroption @server=N'MERCADO_SEG_LS', @optname=N'connect timeout', @optvalue=N'0'
EXEC master.dbo.sp_serveroption @server=N'MERCADO_SEG_LS', @optname=N'collation name', @optvalue=null
EXEC master.dbo.sp_serveroption @server=N'MERCADO_SEG_LS', @optname=N'lazy schema validation', @optvalue=N'false'
EXEC master.dbo.sp_serveroption @server=N'MERCADO_SEG_LS', @optname=N'query timeout', @optvalue=N'0'
EXEC master.dbo.sp_serveroption @server=N'MERCADO_SEG_LS', @optname=N'use remote collation', @optvalue=N'true'




EXEC master.dbo.sp_addlinkedserver @server = N'RETENCAO_LS', @srvproduct=N'', @provider=N'Microsoft.Jet.OLEDB.4.0', @datasrc=N'\\SISAB210\SAS USERS\Bases_GEGAP\CRM\Retencao\RETENCAO.mdb'
 /* For security reasons the linked server remote logins password is changed with ######## */
EXEC master.dbo.sp_addlinkedsrvlogin @rmtsrvname=N'RETENCAO_LS',@useself=N'True',@locallogin=NULL,@rmtuser=NULL,@rmtpassword=NULL
EXEC master.dbo.sp_addlinkedsrvlogin @rmtsrvname=N'RETENCAO_LS',@useself=N'False',@locallogin=N'compilaproc',@rmtuser=N'admin',@rmtpassword='C0mp!l@Pr0c'
EXEC master.dbo.sp_addlinkedsrvlogin @rmtsrvname=N'RETENCAO_LS',@useself=N'False',@locallogin=N'compilascript',@rmtuser=N'admin',@rmtpassword='########'
EXEC master.dbo.sp_addlinkedsrvlogin @rmtsrvname=N'RETENCAO_LS',@useself=N'False',@locallogin=N'migra_wflw',@rmtuser=N'migra_wflw',@rmtpassword='########'
EXEC master.dbo.sp_addlinkedsrvlogin @rmtsrvname=N'RETENCAO_LS',@useself=N'False',@locallogin=N'sa',@rmtuser=N'admin',@rmtpassword='########'
EXEC master.dbo.sp_addlinkedsrvlogin @rmtsrvname=N'RETENCAO_LS',@useself=N'False',@locallogin=N'sisbr',@rmtuser=N'admin',@rmtpassword='SISBR_QLD'




EXEC master.dbo.sp_serveroption @server=N'RETENCAO_LS', @optname=N'collation compatible', @optvalue=N'false'
EXEC master.dbo.sp_serveroption @server=N'RETENCAO_LS', @optname=N'data access', @optvalue=N'true'
EXEC master.dbo.sp_serveroption @server=N'RETENCAO_LS', @optname=N'dist', @optvalue=N'false'
EXEC master.dbo.sp_serveroption @server=N'RETENCAO_LS', @optname=N'pub', @optvalue=N'false'
EXEC master.dbo.sp_serveroption @server=N'RETENCAO_LS', @optname=N'rpc', @optvalue=N'false'
EXEC master.dbo.sp_serveroption @server=N'RETENCAO_LS', @optname=N'rpc out', @optvalue=N'false'
EXEC master.dbo.sp_serveroption @server=N'RETENCAO_LS', @optname=N'sub', @optvalue=N'false'
EXEC master.dbo.sp_serveroption @server=N'RETENCAO_LS', @optname=N'connect timeout', @optvalue=N'0'
EXEC master.dbo.sp_serveroption @server=N'RETENCAO_LS', @optname=N'collation name', @optvalue=null
EXEC master.dbo.sp_serveroption @server=N'RETENCAO_LS', @optname=N'lazy schema validation', @optvalue=N'false'
EXEC master.dbo.sp_serveroption @server=N'RETENCAO_LS', @optname=N'query timeout', @optvalue=N'0'
EXEC master.dbo.sp_serveroption @server=N'RETENCAO_LS', @optname=N'use remote collation', @optvalue=N'true'


EXEC master.dbo.sp_addlinkedserver @server = N'SEGUROCARTAO_LS', @srvproduct=N'VBR008002-016\QUALID_ABS', @provider=N'SQLNCLI', @datasrc=N'VBR008002-016\QUALID_ABS'
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



EXEC master.dbo.sp_addlinkedserver @server = N'SISAB003', @srvproduct=N'VBR008002-016\QUALID', @provider=N'SQLNCLI', @datasrc=N'VBR008002-016\QUALID'
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
EXEC master.dbo.sp_addlinkedsrvlogin @rmtsrvname=N'SISAB003_LS',@useself=N'False',@locallogin=N'adm_juridico',@rmtuser=NULL,@rmtpassword=NULL
EXEC master.dbo.sp_addlinkedsrvlogin @rmtsrvname=N'SISAB003_LS',@useself=N'False',@locallogin=N'admefi',@rmtuser=N'admefi',@rmtpassword='########'

EXEC master.dbo.sp_serveroption @server=N'SISAB003_LS', @optname=N'collation compatible', @optvalue=N'false'
EXEC master.dbo.sp_serveroption @server=N'SISAB003_LS', @optname=N'data access', @optvalue=N'true'
EXEC master.dbo.sp_serveroption @server=N'SISAB003_LS', @optname=N'dist', @optvalue=N'false'
EXEC master.dbo.sp_serveroption @server=N'SISAB003_LS', @optname=N'pub', @optvalue=N'false'
EXEC master.dbo.sp_serveroption @server=N'SISAB003_LS', @optname=N'rpc', @optvalue=N'false'
EXEC master.dbo.sp_serveroption @server=N'SISAB003_LS', @optname=N'rpc out', @optvalue=N'false'
EXEC master.dbo.sp_serveroption @server=N'SISAB003_LS', @optname=N'sub', @optvalue=N'false'
EXEC master.dbo.sp_serveroption @server=N'SISAB003_LS', @optname=N'connect timeout', @optvalue=N'0'
EXEC master.dbo.sp_serveroption @server=N'SISAB003_LS', @optname=N'collation name', @optvalue=null
EXEC master.dbo.sp_serveroption @server=N'SISAB003_LS', @optname=N'lazy schema validation', @optvalue=N'false'
EXEC master.dbo.sp_serveroption @server=N'SISAB003_LS', @optname=N'query timeout', @optvalue=N'0'
EXEC master.dbo.sp_serveroption @server=N'SISAB003_LS', @optname=N'use remote collation', @optvalue=N'true'




EXEC master.dbo.sp_addlinkedserver @server = N'SISAB003_LS_VW', @srvproduct=N'VBR008002-016\QUALID', @provider=N'SQLNCLI', @datasrc=N'VBR008002-016\QUALID'
 /* For security reasons the linked server remote logins password is changed with ######## */
EXEC master.dbo.sp_addlinkedsrvlogin @rmtsrvname=N'SISAB003_LS_VW',@useself=N'False',@locallogin=NULL,@rmtuser=N'usegbr',@rmtpassword='Xucrutis'

EXEC master.dbo.sp_serveroption @server=N'SISAB003_LS_VW', @optname=N'collation compatible', @optvalue=N'false'
EXEC master.dbo.sp_serveroption @server=N'SISAB003_LS_VW', @optname=N'data access', @optvalue=N'true'
EXEC master.dbo.sp_serveroption @server=N'SISAB003_LS_VW', @optname=N'dist', @optvalue=N'false'
EXEC master.dbo.sp_serveroption @server=N'SISAB003_LS_VW', @optname=N'pub', @optvalue=N'false'
EXEC master.dbo.sp_serveroption @server=N'SISAB003_LS_VW', @optname=N'rpc', @optvalue=N'false'
EXEC master.dbo.sp_serveroption @server=N'SISAB003_LS_VW', @optname=N'rpc out', @optvalue=N'false'
EXEC master.dbo.sp_serveroption @server=N'SISAB003_LS_VW', @optname=N'sub', @optvalue=N'false'
EXEC master.dbo.sp_serveroption @server=N'SISAB003_LS_VW', @optname=N'connect timeout', @optvalue=N'0'
EXEC master.dbo.sp_serveroption @server=N'SISAB003_LS_VW', @optname=N'collation name', @optvalue=null
EXEC master.dbo.sp_serveroption @server=N'SISAB003_LS_VW', @optname=N'lazy schema validation', @optvalue=N'false'
EXEC master.dbo.sp_serveroption @server=N'SISAB003_LS_VW', @optname=N'query timeout', @optvalue=N'0'
EXEC master.dbo.sp_serveroption @server=N'SISAB003_LS_VW', @optname=N'use remote collation', @optvalue=N'true'




EXEC master.dbo.sp_addlinkedserver @server = N'SISAB009', @srvproduct=N'', @provider=N'SQLNCLI', @datasrc=N'SISAB009\SIG'
 /* For security reasons the linked server remote logins password is changed with ######## */
EXEC master.dbo.sp_addlinkedsrvlogin @rmtsrvname=N'SISAB009',@useself=N'True',@locallogin=NULL,@rmtuser=NULL,@rmtpassword=NULL
EXEC master.dbo.sp_addlinkedsrvlogin @rmtsrvname=N'SISAB009',@useself=N'False',@locallogin=N'sisbr',@rmtuser=N'sisbr',@rmtpassword='SISBR_QLD'

EXEC master.dbo.sp_serveroption @server=N'SISAB009', @optname=N'collation compatible', @optvalue=N'false'
EXEC master.dbo.sp_serveroption @server=N'SISAB009', @optname=N'data access', @optvalue=N'true'
EXEC master.dbo.sp_serveroption @server=N'SISAB009', @optname=N'dist', @optvalue=N'false'
EXEC master.dbo.sp_serveroption @server=N'SISAB009', @optname=N'pub', @optvalue=N'false'
EXEC master.dbo.sp_serveroption @server=N'SISAB009', @optname=N'rpc', @optvalue=N'false'
EXEC master.dbo.sp_serveroption @server=N'SISAB009', @optname=N'rpc out', @optvalue=N'false'
EXEC master.dbo.sp_serveroption @server=N'SISAB009', @optname=N'sub', @optvalue=N'false'
EXEC master.dbo.sp_serveroption @server=N'SISAB009', @optname=N'connect timeout', @optvalue=N'0'
EXEC master.dbo.sp_serveroption @server=N'SISAB009', @optname=N'collation name', @optvalue=null
EXEC master.dbo.sp_serveroption @server=N'SISAB009', @optname=N'lazy schema validation', @optvalue=N'false'
EXEC master.dbo.sp_serveroption @server=N'SISAB009', @optname=N'query timeout', @optvalue=N'0'
EXEC master.dbo.sp_serveroption @server=N'SISAB009', @optname=N'use remote collation', @optvalue=N'true'



EXEC master.dbo.sp_addlinkedserver @server = N'SISAB010', @srvproduct=N'', @provider=N'SQLNCLI', @datasrc=N'VBR008002-016\QUALID'
 /* For security reasons the linked server remote logins password is changed with ######## */
EXEC master.dbo.sp_addlinkedsrvlogin @rmtsrvname=N'SISAB010',@useself=N'True',@locallogin=NULL,@rmtuser=NULL,@rmtpassword=NULL
EXEC master.dbo.sp_addlinkedsrvlogin @rmtsrvname=N'SISAB010',@useself=N'False',@locallogin=N'compilaproc',@rmtuser=N'compilaproc',@rmtpassword='C0mp!l@Pr0c'
EXEC master.dbo.sp_addlinkedsrvlogin @rmtsrvname=N'SISAB010',@useself=N'False',@locallogin=N'compilascript',@rmtuser=N'compilascript',@rmtpassword='########'
EXEC master.dbo.sp_addlinkedsrvlogin @rmtsrvname=N'SISAB010',@useself=N'False',@locallogin=N'sisbr',@rmtuser=N'sisbr',@rmtpassword='SISBR_QLD'
EXEC master.dbo.sp_addlinkedsrvlogin @rmtsrvname=N'SISAB010',@useself=N'False',@locallogin=N'Usegbr',@rmtuser=N'sisbr',@rmtpassword='SISBR_QLD'

EXEC master.dbo.sp_serveroption @server=N'SISAB010', @optname=N'collation compatible', @optvalue=N'false'
EXEC master.dbo.sp_serveroption @server=N'SISAB010', @optname=N'data access', @optvalue=N'true'
EXEC master.dbo.sp_serveroption @server=N'SISAB010', @optname=N'dist', @optvalue=N'false'
EXEC master.dbo.sp_serveroption @server=N'SISAB010', @optname=N'pub', @optvalue=N'false'
EXEC master.dbo.sp_serveroption @server=N'SISAB010', @optname=N'rpc', @optvalue=N'true'
EXEC master.dbo.sp_serveroption @server=N'SISAB010', @optname=N'rpc out', @optvalue=N'true'
EXEC master.dbo.sp_serveroption @server=N'SISAB010', @optname=N'sub', @optvalue=N'false'
EXEC master.dbo.sp_serveroption @server=N'SISAB010', @optname=N'connect timeout', @optvalue=N'0'
EXEC master.dbo.sp_serveroption @server=N'SISAB010', @optname=N'collation name', @optvalue=null
EXEC master.dbo.sp_serveroption @server=N'SISAB010', @optname=N'lazy schema validation', @optvalue=N'false'
EXEC master.dbo.sp_serveroption @server=N'SISAB010', @optname=N'query timeout', @optvalue=N'0'
EXEC master.dbo.sp_serveroption @server=N'SISAB010', @optname=N'use remote collation', @optvalue=N'true'




EXEC master.dbo.sp_addlinkedserver @server = N'SISAB010\ADM', @srvproduct=N'VBR008002-016\QUALID', @provider=N'SQLNCLI', @datasrc=N'VBR008002-016\QUALID'
 /* For security reasons the linked server remote logins password is changed with ######## */
EXEC master.dbo.sp_addlinkedsrvlogin @rmtsrvname=N'SISAB010\ADM',@useself=N'True',@locallogin=NULL,@rmtuser=NULL,@rmtpassword=NULL
EXEC master.dbo.sp_addlinkedsrvlogin @rmtsrvname=N'SISAB010\ADM',@useself=N'False',@locallogin=N'compilaproc',@rmtuser=N'compilaproc',@rmtpassword='C0mp!l@Pr0c'
EXEC master.dbo.sp_addlinkedsrvlogin @rmtsrvname=N'SISAB010\ADM',@useself=N'False',@locallogin=N'compilascript',@rmtuser=N'compilascript',@rmtpassword='########'
EXEC master.dbo.sp_addlinkedsrvlogin @rmtsrvname=N'SISAB010\ADM',@useself=N'False',@locallogin=N'sisbr',@rmtuser=N'sisbr',@rmtpassword='SISBR_QLD'
EXEC master.dbo.sp_addlinkedsrvlogin @rmtsrvname=N'SISAB010\ADM',@useself=N'False',@locallogin=N'Usegbr',@rmtuser=N'sisbr',@rmtpassword='SISBR_QLD'

EXEC master.dbo.sp_serveroption @server=N'SISAB010\ADM', @optname=N'collation compatible', @optvalue=N'false'
EXEC master.dbo.sp_serveroption @server=N'SISAB010\ADM', @optname=N'data access', @optvalue=N'true'
EXEC master.dbo.sp_serveroption @server=N'SISAB010\ADM', @optname=N'dist', @optvalue=N'false'
EXEC master.dbo.sp_serveroption @server=N'SISAB010\ADM', @optname=N'pub', @optvalue=N'false'
EXEC master.dbo.sp_serveroption @server=N'SISAB010\ADM', @optname=N'rpc', @optvalue=N'true'
EXEC master.dbo.sp_serveroption @server=N'SISAB010\ADM', @optname=N'rpc out', @optvalue=N'true'
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
EXEC master.dbo.sp_addlinkedsrvlogin @rmtsrvname=N'SISAB012\MAS',@useself=N'False',@locallogin=N'compilascript',@rmtuser=N'compilascript',@rmtpassword='########'
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


EXEC master.dbo.sp_addlinkedserver @server = N'SISAB013\WEB', @srvproduct=N'SISAB051\WEB_QLD', @provider=N'SQLNCLI', @datasrc=N'SISAB051\WEB_QLD'
 /* For security reasons the linked server remote logins password is changed with ######## */
EXEC master.dbo.sp_addlinkedsrvlogin @rmtsrvname=N'SISAB013\WEB',@useself=N'True',@locallogin=NULL,@rmtuser=NULL,@rmtpassword=NULL
EXEC master.dbo.sp_addlinkedsrvlogin @rmtsrvname=N'SISAB013\WEB',@useself=N'False',@locallogin=N'compilaproc',@rmtuser=N'compilaproc',@rmtpassword='C0mp!l@Pr0c'
EXEC master.dbo.sp_addlinkedsrvlogin @rmtsrvname=N'SISAB013\WEB',@useself=N'False',@locallogin=N'compilascript',@rmtuser=N'compilascript',@rmtpassword='########'
EXEC master.dbo.sp_addlinkedsrvlogin @rmtsrvname=N'SISAB013\WEB',@useself=N'False',@locallogin=N'Usegbr',@rmtuser=N'Usegbr',@rmtpassword='Xucrutis'

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
EXEC master.dbo.sp_addlinkedsrvlogin @rmtsrvname=N'SISAB016',@useself=N'False',@locallogin=N'compilaproc',@rmtuser=N'compilaproc',@rmtpassword='C0mp!l@Pr0c'
EXEC master.dbo.sp_addlinkedsrvlogin @rmtsrvname=N'SISAB016',@useself=N'False',@locallogin=N'compilascript',@rmtuser=N'compilascript',@rmtpassword='########'
EXEC master.dbo.sp_addlinkedsrvlogin @rmtsrvname=N'SISAB016',@useself=N'False',@locallogin=N'sisbr',@rmtuser=N'sisbr',@rmtpassword='SISBR_QLD'
EXEC master.dbo.sp_addlinkedsrvlogin @rmtsrvname=N'SISAB016',@useself=N'False',@locallogin=N'Usegbr',@rmtuser=N'sisbr',@rmtpassword='SISBR_QLD'

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
EXEC master.dbo.sp_addlinkedsrvlogin @rmtsrvname=N'SISAB016\ADM',@useself=N'False',@locallogin=N'compilascript',@rmtuser=N'compilascript',@rmtpassword='########'
EXEC master.dbo.sp_addlinkedsrvlogin @rmtsrvname=N'SISAB016\ADM',@useself=N'False',@locallogin=N'sisbr',@rmtuser=N'sisbr',@rmtpassword='SISBR_QLD'
EXEC master.dbo.sp_addlinkedsrvlogin @rmtsrvname=N'SISAB016\ADM',@useself=N'False',@locallogin=N'Usegbr',@rmtuser=N'sisbr',@rmtpassword='SISBR_QLD'

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



EXEC master.dbo.sp_addlinkedserver @server = N'SISAB017\SPS', @srvproduct=N'VBR008002-016\QUALID', @provider=N'SQLNCLI', @datasrc=N'VBR008002-016\QUALID'
 /* For security reasons the linked server remote logins password is changed with ######## */
EXEC master.dbo.sp_addlinkedsrvlogin @rmtsrvname=N'SISAB017\SPS',@useself=N'True',@locallogin=NULL,@rmtuser=NULL,@rmtpassword=NULL
EXEC master.dbo.sp_addlinkedsrvlogin @rmtsrvname=N'SISAB017\SPS',@useself=N'False',@locallogin=N'sisbr',@rmtuser=N'sisbr',@rmtpassword='SISBR_QLD'

EXEC master.dbo.sp_serveroption @server=N'SISAB017\SPS', @optname=N'collation compatible', @optvalue=N'false'
EXEC master.dbo.sp_serveroption @server=N'SISAB017\SPS', @optname=N'data access', @optvalue=N'true'
EXEC master.dbo.sp_serveroption @server=N'SISAB017\SPS', @optname=N'dist', @optvalue=N'false'
EXEC master.dbo.sp_serveroption @server=N'SISAB017\SPS', @optname=N'pub', @optvalue=N'false'
EXEC master.dbo.sp_serveroption @server=N'SISAB017\SPS', @optname=N'rpc', @optvalue=N'true'
EXEC master.dbo.sp_serveroption @server=N'SISAB017\SPS', @optname=N'rpc out', @optvalue=N'true'
EXEC master.dbo.sp_serveroption @server=N'SISAB017\SPS', @optname=N'sub', @optvalue=N'false'
EXEC master.dbo.sp_serveroption @server=N'SISAB017\SPS', @optname=N'connect timeout', @optvalue=N'0'
EXEC master.dbo.sp_serveroption @server=N'SISAB017\SPS', @optname=N'collation name', @optvalue=null
EXEC master.dbo.sp_serveroption @server=N'SISAB017\SPS', @optname=N'lazy schema validation', @optvalue=N'false'
EXEC master.dbo.sp_serveroption @server=N'SISAB017\SPS', @optname=N'query timeout', @optvalue=N'0'
EXEC master.dbo.sp_serveroption @server=N'SISAB017\SPS', @optname=N'use remote collation', @optvalue=N'true'



EXEC master.dbo.sp_addlinkedserver @server = N'SISAB051', @srvproduct=N'SISAB051', @provider=N'SQLNCLI', @datasrc=N'SISAB051'
 /* For security reasons the linked server remote logins password is changed with ######## */
EXEC master.dbo.sp_addlinkedsrvlogin @rmtsrvname=N'SISAB051',@useself=N'True',@locallogin=NULL,@rmtuser=NULL,@rmtpassword=NULL

EXEC master.dbo.sp_serveroption @server=N'SISAB051', @optname=N'collation compatible', @optvalue=N'false'
EXEC master.dbo.sp_serveroption @server=N'SISAB051', @optname=N'data access', @optvalue=N'true'
EXEC master.dbo.sp_serveroption @server=N'SISAB051', @optname=N'dist', @optvalue=N'false'
EXEC master.dbo.sp_serveroption @server=N'SISAB051', @optname=N'pub', @optvalue=N'false'
EXEC master.dbo.sp_serveroption @server=N'SISAB051', @optname=N'rpc', @optvalue=N'true'
EXEC master.dbo.sp_serveroption @server=N'SISAB051', @optname=N'rpc out', @optvalue=N'true'
EXEC master.dbo.sp_serveroption @server=N'SISAB051', @optname=N'sub', @optvalue=N'false'
EXEC master.dbo.sp_serveroption @server=N'SISAB051', @optname=N'connect timeout', @optvalue=N'0'
EXEC master.dbo.sp_serveroption @server=N'SISAB051', @optname=N'collation name', @optvalue=null
EXEC master.dbo.sp_serveroption @server=N'SISAB051', @optname=N'lazy schema validation', @optvalue=N'false'
EXEC master.dbo.sp_serveroption @server=N'SISAB051', @optname=N'query timeout', @optvalue=N'0'
EXEC master.dbo.sp_serveroption @server=N'SISAB051', @optname=N'use remote collation', @optvalue=N'true'

EXEC master.dbo.sp_addlinkedserver @server = N'SISAB051\ADM', @srvproduct=N'VBR008002-016\QUALID', @provider=N'SQLNCLI', @datasrc=N'VBR008002-016\QUALID'
 /* For security reasons the linked server remote logins password is changed with ######## */
EXEC master.dbo.sp_addlinkedsrvlogin @rmtsrvname=N'SISAB051\ADM',@useself=N'False',@locallogin=NULL,@rmtuser=N'sisbr',@rmtpassword='SISBR_QLD'

EXEC master.dbo.sp_serveroption @server=N'SISAB051\ADM', @optname=N'collation compatible', @optvalue=N'false'
EXEC master.dbo.sp_serveroption @server=N'SISAB051\ADM', @optname=N'data access', @optvalue=N'true'
EXEC master.dbo.sp_serveroption @server=N'SISAB051\ADM', @optname=N'dist', @optvalue=N'false'
EXEC master.dbo.sp_serveroption @server=N'SISAB051\ADM', @optname=N'pub', @optvalue=N'false'
EXEC master.dbo.sp_serveroption @server=N'SISAB051\ADM', @optname=N'rpc', @optvalue=N'true'
EXEC master.dbo.sp_serveroption @server=N'SISAB051\ADM', @optname=N'rpc out', @optvalue=N'true'
EXEC master.dbo.sp_serveroption @server=N'SISAB051\ADM', @optname=N'sub', @optvalue=N'false'
EXEC master.dbo.sp_serveroption @server=N'SISAB051\ADM', @optname=N'connect timeout', @optvalue=N'0'
EXEC master.dbo.sp_serveroption @server=N'SISAB051\ADM', @optname=N'collation name', @optvalue=null
EXEC master.dbo.sp_serveroption @server=N'SISAB051\ADM', @optname=N'lazy schema validation', @optvalue=N'false'
EXEC master.dbo.sp_serveroption @server=N'SISAB051\ADM', @optname=N'query timeout', @optvalue=N'0'
EXEC master.dbo.sp_serveroption @server=N'SISAB051\ADM', @optname=N'use remote collation', @optvalue=N'true'



EXEC master.dbo.sp_addlinkedserver @server = N'SISAB051\DESENV', @srvproduct=N'SQL Server'
 /* For security reasons the linked server remote logins password is changed with ######## */
EXEC master.dbo.sp_addlinkedsrvlogin @rmtsrvname=N'SISAB051\DESENV',@useself=N'False',@locallogin=NULL,@rmtuser=N'sisbr',@rmtpassword='SISBR_QLD'

EXEC master.dbo.sp_serveroption @server=N'SISAB051\DESENV', @optname=N'collation compatible', @optvalue=N'false'
EXEC master.dbo.sp_serveroption @server=N'SISAB051\DESENV', @optname=N'data access', @optvalue=N'true'
EXEC master.dbo.sp_serveroption @server=N'SISAB051\DESENV', @optname=N'dist', @optvalue=N'false'
EXEC master.dbo.sp_serveroption @server=N'SISAB051\DESENV', @optname=N'pub', @optvalue=N'false'
EXEC master.dbo.sp_serveroption @server=N'SISAB051\DESENV', @optname=N'rpc', @optvalue=N'true'
EXEC master.dbo.sp_serveroption @server=N'SISAB051\DESENV', @optname=N'rpc out', @optvalue=N'true'
EXEC master.dbo.sp_serveroption @server=N'SISAB051\DESENV', @optname=N'sub', @optvalue=N'false'
EXEC master.dbo.sp_serveroption @server=N'SISAB051\DESENV', @optname=N'connect timeout', @optvalue=N'0'
EXEC master.dbo.sp_serveroption @server=N'SISAB051\DESENV', @optname=N'collation name', @optvalue=null
EXEC master.dbo.sp_serveroption @server=N'SISAB051\DESENV', @optname=N'lazy schema validation', @optvalue=N'false'
EXEC master.dbo.sp_serveroption @server=N'SISAB051\DESENV', @optname=N'query timeout', @optvalue=N'0'
EXEC master.dbo.sp_serveroption @server=N'SISAB051\DESENV', @optname=N'use remote collation', @optvalue=N'true'

CREATE LOGIN [uals] WITH PASSWORD = 0x0100AD24B63866277CEE67B5633180D356A31B32AEA3F2697428 HASHED, SID = 0x00000000000000000000000000000096, DEFAULT_DATABASE = [als_produto_db], CHECK_POLICY = OFF, CHECK_EXPIRATION = OFF
 

EXEC master.dbo.sp_addlinkedserver @server = N'SISAB051\EXTRATOR', @srvproduct=N'SISAB015\EXTRATOR', @provider=N'SQLNCLI', @datasrc=N'SISAB015\EXTRATOR'
 /* For security reasons the linked server remote logins password is changed with ######## */
EXEC master.dbo.sp_addlinkedsrvlogin @rmtsrvname=N'SISAB051\EXTRATOR',@useself=N'True',@locallogin=NULL,@rmtuser=NULL,@rmtpassword=NULL
EXEC master.dbo.sp_addlinkedsrvlogin @rmtsrvname=N'SISAB051\EXTRATOR',@useself=N'False',@locallogin=N'compilaproc',@rmtuser=N'compilaproc',@rmtpassword='C0mp!l@Pr0c'
EXEC master.dbo.sp_addlinkedsrvlogin @rmtsrvname=N'SISAB051\EXTRATOR',@useself=N'False',@locallogin=N'compilascript',@rmtuser=N'compilascript',@rmtpassword='########'
EXEC master.dbo.sp_addlinkedsrvlogin @rmtsrvname=N'SISAB051\EXTRATOR',@useself=N'False',@locallogin=N'SISAB\1671.GDATI',@rmtuser=N'sisbr',@rmtpassword='SISBR_QLD'
EXEC master.dbo.sp_addlinkedsrvlogin @rmtsrvname=N'SISAB051\EXTRATOR',@useself=N'False',@locallogin=N'SISAB\1735.GDATI',@rmtuser=N'sisbr',@rmtpassword='SISBR_QLD'
EXEC master.dbo.sp_addlinkedsrvlogin @rmtsrvname=N'SISAB051\EXTRATOR',@useself=N'False',@locallogin=N'sisbr',@rmtuser=N'sisbr',@rmtpassword='SISBR_QLD'
EXEC master.dbo.sp_addlinkedsrvlogin @rmtsrvname=N'SISAB051\EXTRATOR',@useself=N'False',@locallogin=N'uals',@rmtuser=N'uals',@rmtpassword='########'
EXEC master.dbo.sp_addlinkedsrvlogin @rmtsrvname=N'SISAB051\EXTRATOR',@useself=N'False',@locallogin=N'Usegbr',@rmtuser=N'Usegbr',@rmtpassword='Xucrutis'

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


CREATE LOGIN [wflw] WITH PASSWORD = 0x010043105276B124E6D1BD83CAF913B83CFFDE42FCA7F9D912C7 HASHED, SID = 0x0000000000000000000000000000008B, DEFAULT_DATABASE = [workflow_db], CHECK_POLICY = OFF, CHECK_EXPIRATION = OFF
 
EXEC master.dbo.sp_addlinkedserver @server = N'SISAB051\EXTRATOR_LS', @srvproduct=N'SISAB015\EXTRATOR', @provider=N'SQLNCLI', @datasrc=N'SISAB015\EXTRATOR'
 /* For security reasons the linked server remote logins password is changed with ######## */
EXEC master.dbo.sp_addlinkedsrvlogin @rmtsrvname=N'SISAB051\EXTRATOR_LS',@useself=N'True',@locallogin=NULL,@rmtuser=NULL,@rmtpassword=NULL
EXEC master.dbo.sp_addlinkedsrvlogin @rmtsrvname=N'SISAB051\EXTRATOR_LS',@useself=N'False',@locallogin=N'sisbr',@rmtuser=N'sisbr',@rmtpassword='SISBR_QLD'
EXEC master.dbo.sp_addlinkedsrvlogin @rmtsrvname=N'SISAB051\EXTRATOR_LS',@useself=N'False',@locallogin=N'wflw',@rmtuser=N'wflw',@rmtpassword='########'

EXEC master.dbo.sp_serveroption @server=N'SISAB051\EXTRATOR_LS', @optname=N'collation compatible', @optvalue=N'false'
EXEC master.dbo.sp_serveroption @server=N'SISAB051\EXTRATOR_LS', @optname=N'data access', @optvalue=N'true'
EXEC master.dbo.sp_serveroption @server=N'SISAB051\EXTRATOR_LS', @optname=N'dist', @optvalue=N'false'
EXEC master.dbo.sp_serveroption @server=N'SISAB051\EXTRATOR_LS', @optname=N'pub', @optvalue=N'false'
EXEC master.dbo.sp_serveroption @server=N'SISAB051\EXTRATOR_LS', @optname=N'rpc', @optvalue=N'true'
EXEC master.dbo.sp_serveroption @server=N'SISAB051\EXTRATOR_LS', @optname=N'rpc out', @optvalue=N'true'
EXEC master.dbo.sp_serveroption @server=N'SISAB051\EXTRATOR_LS', @optname=N'sub', @optvalue=N'false'
EXEC master.dbo.sp_serveroption @server=N'SISAB051\EXTRATOR_LS', @optname=N'connect timeout', @optvalue=N'0'
EXEC master.dbo.sp_serveroption @server=N'SISAB051\EXTRATOR_LS', @optname=N'collation name', @optvalue=null
EXEC master.dbo.sp_serveroption @server=N'SISAB051\EXTRATOR_LS', @optname=N'lazy schema validation', @optvalue=N'false'
EXEC master.dbo.sp_serveroption @server=N'SISAB051\EXTRATOR_LS', @optname=N'query timeout', @optvalue=N'0'
EXEC master.dbo.sp_serveroption @server=N'SISAB051\EXTRATOR_LS', @optname=N'use remote collation', @optvalue=N'true'




EXEC master.dbo.sp_addlinkedserver @server = N'SISAB051\FLOWBR', @srvproduct=N'SISAB051\FLOWBR', @provider=N'SQLNCLI', @datasrc=N'SISAB051\FLOWBR'
 /* For security reasons the linked server remote logins password is changed with ######## */
EXEC master.dbo.sp_addlinkedsrvlogin @rmtsrvname=N'SISAB051\FLOWBR',@useself=N'True',@locallogin=NULL,@rmtuser=NULL,@rmtpassword=NULL
EXEC master.dbo.sp_addlinkedsrvlogin @rmtsrvname=N'SISAB051\FLOWBR',@useself=N'False',@locallogin=N'user_remote',@rmtuser=N'user_remote',@rmtpassword='########'

EXEC master.dbo.sp_serveroption @server=N'SISAB051\FLOWBR', @optname=N'collation compatible', @optvalue=N'false'
EXEC master.dbo.sp_serveroption @server=N'SISAB051\FLOWBR', @optname=N'data access', @optvalue=N'true'
EXEC master.dbo.sp_serveroption @server=N'SISAB051\FLOWBR', @optname=N'dist', @optvalue=N'false'
EXEC master.dbo.sp_serveroption @server=N'SISAB051\FLOWBR', @optname=N'pub', @optvalue=N'false'
EXEC master.dbo.sp_serveroption @server=N'SISAB051\FLOWBR', @optname=N'rpc', @optvalue=N'true'
EXEC master.dbo.sp_serveroption @server=N'SISAB051\FLOWBR', @optname=N'rpc out', @optvalue=N'true'
EXEC master.dbo.sp_serveroption @server=N'SISAB051\FLOWBR', @optname=N'sub', @optvalue=N'false'
EXEC master.dbo.sp_serveroption @server=N'SISAB051\FLOWBR', @optname=N'connect timeout', @optvalue=N'0'
EXEC master.dbo.sp_serveroption @server=N'SISAB051\FLOWBR', @optname=N'collation name', @optvalue=null
EXEC master.dbo.sp_serveroption @server=N'SISAB051\FLOWBR', @optname=N'lazy schema validation', @optvalue=N'false'
EXEC master.dbo.sp_serveroption @server=N'SISAB051\FLOWBR', @optname=N'query timeout', @optvalue=N'0'
EXEC master.dbo.sp_serveroption @server=N'SISAB051\FLOWBR', @optname=N'use remote collation', @optvalue=N'true'



EXEC master.dbo.sp_addlinkedserver @server = N'SISAB051\MAS_QLD', @srvproduct=N'SQL Server'
 /* For security reasons the linked server remote logins password is changed with ######## */
EXEC master.dbo.sp_addlinkedsrvlogin @rmtsrvname=N'SISAB051\MAS_QLD',@useself=N'False',@locallogin=NULL,@rmtuser=N'Usegbr',@rmtpassword='Xucrutis'
EXEC master.dbo.sp_addlinkedsrvlogin @rmtsrvname=N'SISAB051\MAS_QLD',@useself=N'False',@locallogin=N'compilaproc',@rmtuser=N'compilaproc',@rmtpassword='C0mp!l@Pr0c'

EXEC master.dbo.sp_serveroption @server=N'SISAB051\MAS_QLD', @optname=N'collation compatible', @optvalue=N'false'
EXEC master.dbo.sp_serveroption @server=N'SISAB051\MAS_QLD', @optname=N'data access', @optvalue=N'true'
EXEC master.dbo.sp_serveroption @server=N'SISAB051\MAS_QLD', @optname=N'dist', @optvalue=N'false'
EXEC master.dbo.sp_serveroption @server=N'SISAB051\MAS_QLD', @optname=N'pub', @optvalue=N'false'
EXEC master.dbo.sp_serveroption @server=N'SISAB051\MAS_QLD', @optname=N'rpc', @optvalue=N'true'
EXEC master.dbo.sp_serveroption @server=N'SISAB051\MAS_QLD', @optname=N'rpc out', @optvalue=N'true'
EXEC master.dbo.sp_serveroption @server=N'SISAB051\MAS_QLD', @optname=N'sub', @optvalue=N'false'
EXEC master.dbo.sp_serveroption @server=N'SISAB051\MAS_QLD', @optname=N'connect timeout', @optvalue=N'0'
EXEC master.dbo.sp_serveroption @server=N'SISAB051\MAS_QLD', @optname=N'collation name', @optvalue=null
EXEC master.dbo.sp_serveroption @server=N'SISAB051\MAS_QLD', @optname=N'lazy schema validation', @optvalue=N'false'
EXEC master.dbo.sp_serveroption @server=N'SISAB051\MAS_QLD', @optname=N'query timeout', @optvalue=N'0'
EXEC master.dbo.sp_serveroption @server=N'SISAB051\MAS_QLD', @optname=N'use remote collation', @optvalue=N'true'



EXEC master.dbo.sp_addlinkedserver @server = N'SISAB051\WEB_QLD', @srvproduct=N'SISAB051\WEB_QLD', @provider=N'SQLNCLI', @datasrc=N'SISAB051\WEB_QLD'
 /* For security reasons the linked server remote logins password is changed with ######## */
EXEC master.dbo.sp_addlinkedsrvlogin @rmtsrvname=N'SISAB051\WEB_QLD',@useself=N'False',@locallogin=NULL,@rmtuser=N'sisbr',@rmtpassword='SISBR_QLD'
EXEC master.dbo.sp_addlinkedsrvlogin @rmtsrvname=N'SISAB051\WEB_QLD',@useself=N'False',@locallogin=N'sisbr',@rmtuser=N'sisbr',@rmtpassword='SISBR_QLD'

EXEC master.dbo.sp_serveroption @server=N'SISAB051\WEB_QLD', @optname=N'collation compatible', @optvalue=N'false'
EXEC master.dbo.sp_serveroption @server=N'SISAB051\WEB_QLD', @optname=N'data access', @optvalue=N'true'
EXEC master.dbo.sp_serveroption @server=N'SISAB051\WEB_QLD', @optname=N'dist', @optvalue=N'false'
EXEC master.dbo.sp_serveroption @server=N'SISAB051\WEB_QLD', @optname=N'pub', @optvalue=N'false'
EXEC master.dbo.sp_serveroption @server=N'SISAB051\WEB_QLD', @optname=N'rpc', @optvalue=N'true'
EXEC master.dbo.sp_serveroption @server=N'SISAB051\WEB_QLD', @optname=N'rpc out', @optvalue=N'true'
EXEC master.dbo.sp_serveroption @server=N'SISAB051\WEB_QLD', @optname=N'sub', @optvalue=N'false'
EXEC master.dbo.sp_serveroption @server=N'SISAB051\WEB_QLD', @optname=N'connect timeout', @optvalue=N'0'
EXEC master.dbo.sp_serveroption @server=N'SISAB051\WEB_QLD', @optname=N'collation name', @optvalue=null
EXEC master.dbo.sp_serveroption @server=N'SISAB051\WEB_QLD', @optname=N'lazy schema validation', @optvalue=N'false'
EXEC master.dbo.sp_serveroption @server=N'SISAB051\WEB_QLD', @optname=N'query timeout', @optvalue=N'0'
EXEC master.dbo.sp_serveroption @server=N'SISAB051\WEB_QLD', @optname=N'use remote collation', @optvalue=N'true'



EXEC master.dbo.sp_addlinkedserver @server = N'SISAB051_DESENV_LS', @srvproduct=N'', @provider=N'SQLNCLI', @datasrc=N'SISAB051\DESENV'
 /* For security reasons the linked server remote logins password is changed with ######## */
EXEC master.dbo.sp_addlinkedsrvlogin @rmtsrvname=N'SISAB051_DESENV_LS',@useself=N'False',@locallogin=NULL,@rmtuser=NULL,@rmtpassword=NULL
EXEC master.dbo.sp_addlinkedsrvlogin @rmtsrvname=N'SISAB051_DESENV_LS',@useself=N'False',@locallogin=N'migra_wflw',@rmtuser=N'migra_wflw',@rmtpassword='########'
EXEC master.dbo.sp_addlinkedsrvlogin @rmtsrvname=N'SISAB051_DESENV_LS',@useself=N'False',@locallogin=N'SISAB\1149.gedic',@rmtuser=N'sisbr',@rmtpassword='SISBR_QLD'
EXEC master.dbo.sp_addlinkedsrvlogin @rmtsrvname=N'SISAB051_DESENV_LS',@useself=N'False',@locallogin=N'sisbr',@rmtuser=N'sisbr',@rmtpassword='SISBR_QLD'

EXEC master.dbo.sp_serveroption @server=N'SISAB051_DESENV_LS', @optname=N'collation compatible', @optvalue=N'false'
EXEC master.dbo.sp_serveroption @server=N'SISAB051_DESENV_LS', @optname=N'data access', @optvalue=N'true'
EXEC master.dbo.sp_serveroption @server=N'SISAB051_DESENV_LS', @optname=N'dist', @optvalue=N'false'
EXEC master.dbo.sp_serveroption @server=N'SISAB051_DESENV_LS', @optname=N'pub', @optvalue=N'false'
EXEC master.dbo.sp_serveroption @server=N'SISAB051_DESENV_LS', @optname=N'rpc', @optvalue=N'true'
EXEC master.dbo.sp_serveroption @server=N'SISAB051_DESENV_LS', @optname=N'rpc out', @optvalue=N'true'
EXEC master.dbo.sp_serveroption @server=N'SISAB051_DESENV_LS', @optname=N'sub', @optvalue=N'false'
EXEC master.dbo.sp_serveroption @server=N'SISAB051_DESENV_LS', @optname=N'connect timeout', @optvalue=N'0'
EXEC master.dbo.sp_serveroption @server=N'SISAB051_DESENV_LS', @optname=N'collation name', @optvalue=null
EXEC master.dbo.sp_serveroption @server=N'SISAB051_DESENV_LS', @optname=N'lazy schema validation', @optvalue=N'false'
EXEC master.dbo.sp_serveroption @server=N'SISAB051_DESENV_LS', @optname=N'query timeout', @optvalue=N'0'
EXEC master.dbo.sp_serveroption @server=N'SISAB051_DESENV_LS', @optname=N'use remote collation', @optvalue=N'true'



EXEC master.dbo.sp_addlinkedserver @server = N'SISAB051_QUALID_LS', @srvproduct=N'', @provider=N'SQLNCLI', @datasrc=N'VBR008002-016\QUALID'
 /* For security reasons the linked server remote logins password is changed with ######## */
EXEC master.dbo.sp_addlinkedsrvlogin @rmtsrvname=N'SISAB051_QUALID_LS',@useself=N'True',@locallogin=NULL,@rmtuser=NULL,@rmtpassword=NULL
EXEC master.dbo.sp_addlinkedsrvlogin @rmtsrvname=N'SISAB051_QUALID_LS',@useself=N'False',@locallogin=N'compilaproc',@rmtuser=N'compilaproc',@rmtpassword='C0mp!l@Pr0c'
EXEC master.dbo.sp_addlinkedsrvlogin @rmtsrvname=N'SISAB051_QUALID_LS',@useself=N'False',@locallogin=N'migra_wflw',@rmtuser=N'migra_wflw',@rmtpassword='########'

EXEC master.dbo.sp_serveroption @server=N'SISAB051_QUALID_LS', @optname=N'collation compatible', @optvalue=N'false'
EXEC master.dbo.sp_serveroption @server=N'SISAB051_QUALID_LS', @optname=N'data access', @optvalue=N'true'
EXEC master.dbo.sp_serveroption @server=N'SISAB051_QUALID_LS', @optname=N'dist', @optvalue=N'false'
EXEC master.dbo.sp_serveroption @server=N'SISAB051_QUALID_LS', @optname=N'pub', @optvalue=N'false'
EXEC master.dbo.sp_serveroption @server=N'SISAB051_QUALID_LS', @optname=N'rpc', @optvalue=N'true'
EXEC master.dbo.sp_serveroption @server=N'SISAB051_QUALID_LS', @optname=N'rpc out', @optvalue=N'false'
EXEC master.dbo.sp_serveroption @server=N'SISAB051_QUALID_LS', @optname=N'sub', @optvalue=N'false'
EXEC master.dbo.sp_serveroption @server=N'SISAB051_QUALID_LS', @optname=N'connect timeout', @optvalue=N'0'
EXEC master.dbo.sp_serveroption @server=N'SISAB051_QUALID_LS', @optname=N'collation name', @optvalue=null
EXEC master.dbo.sp_serveroption @server=N'SISAB051_QUALID_LS', @optname=N'lazy schema validation', @optvalue=N'false'
EXEC master.dbo.sp_serveroption @server=N'SISAB051_QUALID_LS', @optname=N'query timeout', @optvalue=N'0'
EXEC master.dbo.sp_serveroption @server=N'SISAB051_QUALID_LS', @optname=N'use remote collation', @optvalue=N'true'



EXEC master.dbo.sp_addlinkedserver @server = N'SISAB052\DESENV', @srvproduct=N'SQL Server'
 /* For security reasons the linked server remote logins password is changed with ######## */
EXEC master.dbo.sp_addlinkedsrvlogin @rmtsrvname=N'SISAB052\DESENV',@useself=N'True',@locallogin=NULL,@rmtuser=NULL,@rmtpassword=NULL

EXEC master.dbo.sp_serveroption @server=N'SISAB052\DESENV', @optname=N'collation compatible', @optvalue=N'false'
EXEC master.dbo.sp_serveroption @server=N'SISAB052\DESENV', @optname=N'data access', @optvalue=N'true'
EXEC master.dbo.sp_serveroption @server=N'SISAB052\DESENV', @optname=N'dist', @optvalue=N'false'
EXEC master.dbo.sp_serveroption @server=N'SISAB052\DESENV', @optname=N'pub', @optvalue=N'false'
EXEC master.dbo.sp_serveroption @server=N'SISAB052\DESENV', @optname=N'rpc', @optvalue=N'true'
EXEC master.dbo.sp_serveroption @server=N'SISAB052\DESENV', @optname=N'rpc out', @optvalue=N'true'
EXEC master.dbo.sp_serveroption @server=N'SISAB052\DESENV', @optname=N'sub', @optvalue=N'false'
EXEC master.dbo.sp_serveroption @server=N'SISAB052\DESENV', @optname=N'connect timeout', @optvalue=N'0'
EXEC master.dbo.sp_serveroption @server=N'SISAB052\DESENV', @optname=N'collation name', @optvalue=null
EXEC master.dbo.sp_serveroption @server=N'SISAB052\DESENV', @optname=N'lazy schema validation', @optvalue=N'false'
EXEC master.dbo.sp_serveroption @server=N'SISAB052\DESENV', @optname=N'query timeout', @optvalue=N'0'
EXEC master.dbo.sp_serveroption @server=N'SISAB052\DESENV', @optname=N'use remote collation', @optvalue=N'true'


EXEC master.dbo.sp_addlinkedserver @server = N'SISAB063', @srvproduct=N'VBR008002-016\QUALID', @provider=N'SQLNCLI', @datasrc=N'VBR008002-016\QUALID'
 /* For security reasons the linked server remote logins password is changed with ######## */
EXEC master.dbo.sp_addlinkedsrvlogin @rmtsrvname=N'SISAB063',@useself=N'False',@locallogin=NULL,@rmtuser=N'sisbr',@rmtpassword='SISBR_QLD'

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


EXEC master.dbo.sp_addlinkedserver @server = N'SISAB063\AB', @srvproduct=N'SISAB063\AB', @provider=N'SQLNCLI', @datasrc=N'SISAB063\AB'
 /* For security reasons the linked server remote logins password is changed with ######## */
EXEC master.dbo.sp_addlinkedsrvlogin @rmtsrvname=N'SISAB063\AB',@useself=N'False',@locallogin=NULL,@rmtuser=N'sisbr',@rmtpassword='SISBR_QLD'

EXEC master.dbo.sp_serveroption @server=N'SISAB063\AB', @optname=N'collation compatible', @optvalue=N'false'
EXEC master.dbo.sp_serveroption @server=N'SISAB063\AB', @optname=N'data access', @optvalue=N'true'
EXEC master.dbo.sp_serveroption @server=N'SISAB063\AB', @optname=N'dist', @optvalue=N'false'
EXEC master.dbo.sp_serveroption @server=N'SISAB063\AB', @optname=N'pub', @optvalue=N'false'
EXEC master.dbo.sp_serveroption @server=N'SISAB063\AB', @optname=N'rpc', @optvalue=N'false'
EXEC master.dbo.sp_serveroption @server=N'SISAB063\AB', @optname=N'rpc out', @optvalue=N'false'
EXEC master.dbo.sp_serveroption @server=N'SISAB063\AB', @optname=N'sub', @optvalue=N'false'
EXEC master.dbo.sp_serveroption @server=N'SISAB063\AB', @optname=N'connect timeout', @optvalue=N'0'
EXEC master.dbo.sp_serveroption @server=N'SISAB063\AB', @optname=N'collation name', @optvalue=null
EXEC master.dbo.sp_serveroption @server=N'SISAB063\AB', @optname=N'lazy schema validation', @optvalue=N'false'
EXEC master.dbo.sp_serveroption @server=N'SISAB063\AB', @optname=N'query timeout', @optvalue=N'0'
EXEC master.dbo.sp_serveroption @server=N'SISAB063\AB', @optname=N'use remote collation', @optvalue=N'true'



EXEC master.dbo.sp_addlinkedserver @server = N'SISAB066', @srvproduct=N'SISAB066', @provider=N'SQLNCLI', @datasrc=N'SISAB066'
 /* For security reasons the linked server remote logins password is changed with ######## */
EXEC master.dbo.sp_addlinkedsrvlogin @rmtsrvname=N'SISAB066',@useself=N'False',@locallogin=NULL,@rmtuser=N'sisbr',@rmtpassword='SISBR_QLD'

EXEC master.dbo.sp_serveroption @server=N'SISAB066', @optname=N'collation compatible', @optvalue=N'false'
EXEC master.dbo.sp_serveroption @server=N'SISAB066', @optname=N'data access', @optvalue=N'true'
EXEC master.dbo.sp_serveroption @server=N'SISAB066', @optname=N'dist', @optvalue=N'false'
EXEC master.dbo.sp_serveroption @server=N'SISAB066', @optname=N'pub', @optvalue=N'false'
EXEC master.dbo.sp_serveroption @server=N'SISAB066', @optname=N'rpc', @optvalue=N'true'
EXEC master.dbo.sp_serveroption @server=N'SISAB066', @optname=N'rpc out', @optvalue=N'true'
EXEC master.dbo.sp_serveroption @server=N'SISAB066', @optname=N'sub', @optvalue=N'false'
EXEC master.dbo.sp_serveroption @server=N'SISAB066', @optname=N'connect timeout', @optvalue=N'0'
EXEC master.dbo.sp_serveroption @server=N'SISAB066', @optname=N'collation name', @optvalue=null
EXEC master.dbo.sp_serveroption @server=N'SISAB066', @optname=N'lazy schema validation', @optvalue=N'false'
EXEC master.dbo.sp_serveroption @server=N'SISAB066', @optname=N'query timeout', @optvalue=N'0'
EXEC master.dbo.sp_serveroption @server=N'SISAB066', @optname=N'use remote collation', @optvalue=N'true'




EXEC master.dbo.sp_addlinkedserver @server = N'SISAB501', @srvproduct=N'SQL Server'
 /* For security reasons the linked server remote logins password is changed with ######## */
EXEC master.dbo.sp_addlinkedsrvlogin @rmtsrvname=N'SISAB501',@useself=N'True',@locallogin=NULL,@rmtuser=NULL,@rmtpassword=NULL

EXEC master.dbo.sp_serveroption @server=N'SISAB501', @optname=N'collation compatible', @optvalue=N'false'
EXEC master.dbo.sp_serveroption @server=N'SISAB501', @optname=N'data access', @optvalue=N'false'
EXEC master.dbo.sp_serveroption @server=N'SISAB501', @optname=N'dist', @optvalue=N'false'
EXEC master.dbo.sp_serveroption @server=N'SISAB501', @optname=N'pub', @optvalue=N'false'
EXEC master.dbo.sp_serveroption @server=N'SISAB501', @optname=N'rpc', @optvalue=N'true'
EXEC master.dbo.sp_serveroption @server=N'SISAB501', @optname=N'rpc out', @optvalue=N'true'
EXEC master.dbo.sp_serveroption @server=N'SISAB501', @optname=N'sub', @optvalue=N'false'
EXEC master.dbo.sp_serveroption @server=N'SISAB501', @optname=N'connect timeout', @optvalue=N'0'
EXEC master.dbo.sp_serveroption @server=N'SISAB501', @optname=N'collation name', @optvalue=null
EXEC master.dbo.sp_serveroption @server=N'SISAB501', @optname=N'lazy schema validation', @optvalue=N'false'
EXEC master.dbo.sp_serveroption @server=N'SISAB501', @optname=N'query timeout', @optvalue=N'0'
EXEC master.dbo.sp_serveroption @server=N'SISAB501', @optname=N'use remote collation', @optvalue=N'true'



EXEC master.dbo.sp_addlinkedserver @server = N'SISAB561', @srvproduct=N'SISAB561', @provider=N'SQLNCLI', @datasrc=N'SISAB561'
 /* For security reasons the linked server remote logins password is changed with ######## */
EXEC master.dbo.sp_addlinkedsrvlogin @rmtsrvname=N'SISAB561',@useself=N'True',@locallogin=NULL,@rmtuser=NULL,@rmtpassword=NULL
EXEC master.dbo.sp_addlinkedsrvlogin @rmtsrvname=N'SISAB561',@useself=N'False',@locallogin=N'sisbr',@rmtuser=N'sisbr',@rmtpassword='SISBR_QLD'

EXEC master.dbo.sp_serveroption @server=N'SISAB561', @optname=N'collation compatible', @optvalue=N'false'
EXEC master.dbo.sp_serveroption @server=N'SISAB561', @optname=N'data access', @optvalue=N'true'
EXEC master.dbo.sp_serveroption @server=N'SISAB561', @optname=N'dist', @optvalue=N'false'
EXEC master.dbo.sp_serveroption @server=N'SISAB561', @optname=N'pub', @optvalue=N'false'
EXEC master.dbo.sp_serveroption @server=N'SISAB561', @optname=N'rpc', @optvalue=N'true'
EXEC master.dbo.sp_serveroption @server=N'SISAB561', @optname=N'rpc out', @optvalue=N'true'
EXEC master.dbo.sp_serveroption @server=N'SISAB561', @optname=N'sub', @optvalue=N'false'
EXEC master.dbo.sp_serveroption @server=N'SISAB561', @optname=N'connect timeout', @optvalue=N'0'
EXEC master.dbo.sp_serveroption @server=N'SISAB561', @optname=N'collation name', @optvalue=null
EXEC master.dbo.sp_serveroption @server=N'SISAB561', @optname=N'lazy schema validation', @optvalue=N'false'
EXEC master.dbo.sp_serveroption @server=N'SISAB561', @optname=N'query timeout', @optvalue=N'0'
EXEC master.dbo.sp_serveroption @server=N'SISAB561', @optname=N'use remote collation', @optvalue=N'true'



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
EXEC master.dbo.sp_addlinkedsrvlogin @rmtsrvname=N'SISAS013\WEB_ABS',@useself=N'True',@locallogin=NULL,@rmtuser=NULL,@rmtpassword=NULL
EXEC master.dbo.sp_addlinkedsrvlogin @rmtsrvname=N'SISAS013\WEB_ABS',@useself=N'False',@locallogin=N'compilaproc',@rmtuser=N'compilaproc',@rmtpassword='C0mp!l@Pr0c'
EXEC master.dbo.sp_addlinkedsrvlogin @rmtsrvname=N'SISAS013\WEB_ABS',@useself=N'False',@locallogin=N'compilascript',@rmtuser=N'compilascript',@rmtpassword='########'

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
