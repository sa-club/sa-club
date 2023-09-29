-- Материалы к теме "Словари данных". Oracle. Представления словаря данных для объектов текущего пользователя (SYS.USER_%)

------------------------------------------------------------------------

-- Выборочный список представлений

select * from SYS.USER_CATALOG; -- Tables, Views, Synonyms and Sequences owned by the user
select * from SYS.USER_TAB_COLS; -- Columns of user's tables, views and clusters
select * from SYS.USER_TAB_COMMENTS; -- Comments on the tables and views owned by the user
select * from SYS.USER_COL_COMMENTS; -- Comments on columns of user's tables and views
select * from SYS.USER_PROCEDURES; -- Description of the user functions/procedures/packages/types/triggers
select * from SYS.USER_SEQUENCES; -- Description of the user's own SEQUENCEs
select * from SYS.USER_CONSTRAINTS; -- Constraint definitions on user's own tables

------------------------------------------------------------------------

-- Пример запроса для получения описания таблиц БД на основе словаря данных

SELECT 
  cl.table_name as "Таблица", 
  tc.comments as "Комментарий к таблице", 
  cl.internal_column_id as "№ п/п", 
  cl.column_name as "Поле", 
  cl.data_type as "Тип", 
  cl.data_length as "Размер", 
  cl.data_precision as "Точность", 
  cl.nullable as "NULL", 
  cm.comments as "Комментарий к полю" 
FROM 
  sys.user_tab_cols cl 
  JOIN sys.user_col_comments cm ON cl.table_name = cm.table_name 
  AND cl.column_name = cm.column_name 
  JOIN sys.user_tab_comments tc ON cl.table_name = tc.table_name 
ORDER BY 
  cl.table_name, 
  cl.internal_column_id;

------------------------------------------------------------------------

-- Полный список представлений

select * from SYS.USER_ADDM_FDG_BREAKDOWN; -- 
select * from SYS.USER_ADDM_FINDINGS; -- 
select * from SYS.USER_ADDM_INSTANCES; -- 
select * from SYS.USER_ADDM_TASKS; -- 
select * from SYS.USER_ADDM_TASK_DIRECTIVES; -- 
select * from SYS.USER_ADVISOR_ACTIONS; -- 
select * from SYS.USER_ADVISOR_EXECUTIONS; -- 
select * from SYS.USER_ADVISOR_EXEC_PARAMETERS; -- 
select * from SYS.USER_ADVISOR_FDG_BREAKDOWN; -- 
select * from SYS.USER_ADVISOR_FINDINGS; -- 
select * from SYS.USER_ADVISOR_JOURNAL; -- 
select * from SYS.USER_ADVISOR_LOG; -- 
select * from SYS.USER_ADVISOR_OBJECTS; -- 
select * from SYS.USER_ADVISOR_PARAMETERS; -- 
select * from SYS.USER_ADVISOR_RATIONALE; -- 
select * from SYS.USER_ADVISOR_RECOMMENDATIONS; -- 
select * from SYS.USER_ADVISOR_SQLA_COLVOL; -- 
select * from SYS.USER_ADVISOR_SQLA_REC_SUM; -- 
select * from SYS.USER_ADVISOR_SQLA_TABLES; -- 
select * from SYS.USER_ADVISOR_SQLA_TABVOL; -- 
select * from SYS.USER_ADVISOR_SQLA_WK_MAP; -- 
select * from SYS.USER_ADVISOR_SQLA_WK_STMTS; -- 
select * from SYS.USER_ADVISOR_SQLA_WK_SUM; -- 
select * from SYS.USER_ADVISOR_SQLPLANS; -- 
select * from SYS.USER_ADVISOR_SQLSTATS; -- 
select * from SYS.USER_ADVISOR_SQLW_COLVOL; -- 
select * from SYS.USER_ADVISOR_SQLW_JOURNAL; -- 
select * from SYS.USER_ADVISOR_SQLW_PARAMETERS; -- 
select * from SYS.USER_ADVISOR_SQLW_STMTS; -- 
select * from SYS.USER_ADVISOR_SQLW_SUM; -- 
select * from SYS.USER_ADVISOR_SQLW_TABLES; -- 
select * from SYS.USER_ADVISOR_SQLW_TABVOL; -- 
select * from SYS.USER_ADVISOR_SQLW_TEMPLATES; -- 
select * from SYS.USER_ADVISOR_TASKS; -- 
select * from SYS.USER_ADVISOR_TEMPLATES; -- 
select * from SYS.USER_ALL_TABLES; -- Description of all object and relational tables owned by the user's
select * from SYS.USER_ANALYTIC_VIEWS; -- Analytic views in the database
select * from SYS.USER_ANALYTIC_VIEWS_AE; -- Analytic views in the database
select * from SYS.USER_ANALYTIC_VIEW_ATTR_CLASS; -- Analytic view attribute classifications in the database
select * from SYS.USER_ANALYTIC_VIEW_ATTR_CLS; -- Analytic view attribute classifications in the database
select * from SYS.USER_ANALYTIC_VIEW_ATTR_CLS_AE; -- Analytic view attribute classifications in the database
select * from SYS.USER_ANALYTIC_VIEW_BASE_MEAS; -- Analytic view base measures in the database
select * from SYS.USER_ANALYTIC_VIEW_BAS_MEAS; -- Analytic view base measures in the database
select * from SYS.USER_ANALYTIC_VIEW_BAS_MEAS_AE; -- Analytic view base measures in the database
select * from SYS.USER_ANALYTIC_VIEW_CALC_MEAS; -- Analytic view calculated measures in the database
select * from SYS.USER_ANALYTIC_VIEW_CLASS; -- Analytic view classifications in the database
select * from SYS.USER_ANALYTIC_VIEW_CLASS_AE; -- Analytic view classifications in the database
select * from SYS.USER_ANALYTIC_VIEW_CLC_MEAS; -- Analytic view calculated measures in the database
select * from SYS.USER_ANALYTIC_VIEW_CLC_MEAS_AE; -- Analytic view calculated measures in the database
select * from SYS.USER_ANALYTIC_VIEW_COLUMNS; -- Analytic view columns in the database
select * from SYS.USER_ANALYTIC_VIEW_COLUMNS_AE; -- Analytic view columns in the database
select * from SYS.USER_ANALYTIC_VIEW_DIMENSIONS; -- Analytic view Dimensions in the database
select * from SYS.USER_ANALYTIC_VIEW_DIMS; -- Analytic view Dimensions in the database
select * from SYS.USER_ANALYTIC_VIEW_DIMS_AE; -- Analytic view Dimensions in the database
select * from SYS.USER_ANALYTIC_VIEW_DIM_CLASS; -- Classifications of the analytic view dimensions in the database
select * from SYS.USER_ANALYTIC_VIEW_DIM_CLS; -- Classifications of the analytic view dimensions in the database
select * from SYS.USER_ANALYTIC_VIEW_DIM_CLS_AE; -- Classifications of the analytic view dimensions in the database
select * from SYS.USER_ANALYTIC_VIEW_HIERS; -- Analytic view hierarchies in the database
select * from SYS.USER_ANALYTIC_VIEW_HIERS_AE; -- Analytic view hierarchies in the database
select * from SYS.USER_ANALYTIC_VIEW_HIER_CLASS; -- Analytic view hierarchy classifications in the database
select * from SYS.USER_ANALYTIC_VIEW_HIER_CLS; -- Analytic view hierarchy classifications in the database
select * from SYS.USER_ANALYTIC_VIEW_HIER_CLS_AE; -- Analytic view hierarchy classifications in the database
select * from SYS.USER_ANALYTIC_VIEW_KEYS; -- Analytic view keys in the database
select * from SYS.USER_ANALYTIC_VIEW_KEYS_AE; -- Analytic view keys in the database
select * from SYS.USER_ANALYTIC_VIEW_LEVELS; -- Analytic view levels in the database
select * from SYS.USER_ANALYTIC_VIEW_LEVELS_AE; -- Analytic view levels in the database
select * from SYS.USER_ANALYTIC_VIEW_LEVEL_CLASS; -- Analytic view level classifications in the database
select * from SYS.USER_ANALYTIC_VIEW_LVLGRPS; -- Level groupings for an analytic view
select * from SYS.USER_ANALYTIC_VIEW_LVLGRPS_AE; -- Level groupings for an analytic view
select * from SYS.USER_ANALYTIC_VIEW_LVL_CLS; -- Analytic view level classifications in the database
select * from SYS.USER_ANALYTIC_VIEW_LVL_CLS_AE; -- Analytic view level classifications in the database
select * from SYS.USER_ANALYTIC_VIEW_MEAS_CLASS; -- Analytic view measure classifications in the database
select * from SYS.USER_ANALYTIC_VIEW_MEAS_CLS; -- Analytic view measure classifications in the database
select * from SYS.USER_ANALYTIC_VIEW_MEAS_CLS_AE; -- Analytic view measure classifications in the database
select * from SYS.USER_APPLICATION_ROLES; -- 
select * from SYS.USER_APPLY_ERROR; -- Error transactions owned by an apply visible to the current user
select * from SYS.USER_AQ_AGENT_PRIVS; -- 
select * from SYS.USER_ARGUMENTS; -- Arguments in object accessible to the user
select * from SYS.USER_ASSEMBLIES; -- Description of the user's own assemblies
select * from SYS.USER_ASSOCIATIONS; -- All assocations defined by the user
select * from SYS.USER_ATTRIBUTE_DIMENSIONS; -- attribute dimensions in the database
select * from SYS.USER_ATTRIBUTE_DIMENSIONS_AE; -- attribute dimensions in the database
select * from SYS.USER_ATTRIBUTE_DIM_ATTRS; -- Attribute dimension attributes in the database
select * from SYS.USER_ATTRIBUTE_DIM_ATTRS_AE; -- Attribute dimension attributes in the database
select * from SYS.USER_ATTRIBUTE_DIM_ATTR_CLASS; -- Attribute dimension attribute classifications in the database
select * from SYS.USER_ATTRIBUTE_DIM_ATTR_CLS; -- Attribute dimension attribute classifications in the database
select * from SYS.USER_ATTRIBUTE_DIM_ATTR_CLS_AE; -- Attribute dimension attribute classifications in the database
select * from SYS.USER_ATTRIBUTE_DIM_CLASS; -- Attribute dimension classifications in the database
select * from SYS.USER_ATTRIBUTE_DIM_CLASS_AE; -- Attribute dimension classifications in the database
select * from SYS.USER_ATTRIBUTE_DIM_JN_PTHS; -- attribute dimension join paths in the database
select * from SYS.USER_ATTRIBUTE_DIM_JN_PTHS_AE; -- attribute dimension join paths in the database
select * from SYS.USER_ATTRIBUTE_DIM_JOIN_PATHS; -- attribute dimension join paths in the database
select * from SYS.USER_ATTRIBUTE_DIM_KEYS; -- attribute dimension keys in the database
select * from SYS.USER_ATTRIBUTE_DIM_KEYS_AE; -- attribute dimension keys in the database
select * from SYS.USER_ATTRIBUTE_DIM_LEVELS; -- Attribute dimension Levels in the database
select * from SYS.USER_ATTRIBUTE_DIM_LEVELS_AE; -- Attribute dimension Levels in the database
select * from SYS.USER_ATTRIBUTE_DIM_LEVEL_ATTRS; -- Determined attributes of each level in the database
select * from SYS.USER_ATTRIBUTE_DIM_LVL_ATRS; -- Determined attributes of each level in the database
select * from SYS.USER_ATTRIBUTE_DIM_LVL_ATRS_AE; -- Determined attributes of each level in the database
select * from SYS.USER_ATTRIBUTE_DIM_LVL_CLASS; -- Attribute dimension level classifications in the database
select * from SYS.USER_ATTRIBUTE_DIM_LVL_CLS; -- Attribute dimension level classifications in the database
select * from SYS.USER_ATTRIBUTE_DIM_LVL_CLS_AE; -- Attribute dimension level classifications in the database
select * from SYS.USER_ATTRIBUTE_DIM_ORDER_ATTRS; -- Attribute dimension order by elements in the database
select * from SYS.USER_ATTRIBUTE_DIM_ORD_ATRS; -- Attribute dimension order by elements in the database
select * from SYS.USER_ATTRIBUTE_DIM_ORD_ATRS_AE; -- Attribute dimension order by elements in the database
select * from SYS.USER_ATTRIBUTE_DIM_TABLES; -- Attribute dimension tables in the database
select * from SYS.USER_ATTRIBUTE_DIM_TABLES_AE; -- Attribute dimension tables in the database
select * from SYS.USER_ATTRIBUTE_TRANSFORMATIONS; -- 
select * from SYS.USER_AUDIT_OBJECT; -- Audit trail records for statements concerning objects, specifically: table, cluster, view, index, sequence,  [public] database link, [public] synonym, procedure, trigger, rollback segment, tablespace, role, user
select * from SYS.USER_AUDIT_SESSION; -- All audit trail records concerning CONNECT and DISCONNECT
select * from SYS.USER_AUDIT_STATEMENT; -- Audit trail records concerning  grant, revoke, audit, noaudit and alter system
select * from SYS.USER_AUDIT_TRAIL; -- Audit trail entries relevant to the user
select * from SYS.USER_AWS; -- Analytic Workspaces owned by the user
select * from SYS.USER_AW_PS; -- Pagespaces in Analytic Workspaces owned by the user
select * from SYS.USER_BASE_TABLE_MVIEWS; -- All materialized views with log(s) owned by the user in the database
select * from SYS.USER_BLOCKCHAIN_TABLES; -- 
select * from SYS.USER_CATALOG; -- Tables, Views, Synonyms and Sequences owned by the user
select * from SYS.USER_CERTIFICATES; -- 
select * from SYS.USER_CHANGE_NOTIFICATION_REGS; -- change notification registrations for current user
select * from SYS.USER_CLUSTERING_DIMENSIONS; -- All dimension details about clustering tables owned by the user
select * from SYS.USER_CLUSTERING_JOINS; -- All join details about clustering tables owned by the user
select * from SYS.USER_CLUSTERING_KEYS; -- Description of the keys of the clustering clause of tables created by the user
select * from SYS.USER_CLUSTERING_TABLES; -- Description of the clustering clause of tables created by the user
select * from SYS.USER_CLUSTERS; -- Descriptions of user's own clusters
select * from SYS.USER_CLUSTER_HASH_EXPRESSIONS; -- Hash functions for the user's hash clusters
select * from SYS.USER_CLU_COLUMNS; -- Mapping of table columns to cluster columns
select * from SYS.USER_CODE_ROLE_PRIVS; -- Roles attached to the program units owned by current user
select * from SYS.USER_COLL_TYPES; -- Description of the user's own named collection types
select * from SYS.USER_COL_COMMENTS; -- Comments on columns of user's tables and views
select * from SYS.USER_COL_PENDING_STATS; -- Pending statistics of tables, partitions, and subpartitions
select * from SYS.USER_COL_PRIVS; -- Grants on columns for which the user is the owner, grantor or grantee
select * from SYS.USER_COL_PRIVS_MADE; -- All grants on columns of objects owned by the user
select * from SYS.USER_COL_PRIVS_RECD; -- Grants on columns for which the user is the grantee
select * from SYS.USER_COMPARISON; -- Details about the user's comparison objects
select * from SYS.USER_COMPARISON_COLUMNS; -- Details about the comparison object's columns
select * from SYS.USER_COMPARISON_ROW_DIF; -- Details about the differing rows in a comparison scan
select * from SYS.USER_COMPARISON_SCAN; -- Details about a comparison scan
select * from SYS.USER_COMPARISON_SCAN_SUMMARY; -- Details about a comparison scan
select * from SYS.USER_COMPARISON_SCAN_VALUES; -- Details about a comparison scan's values
select * from SYS.USER_CONSTRAINTS; -- Constraint definitions on user's own tables
select * from SYS.USER_CONS_COLUMNS; -- Information about accessible columns in constraint definitions
select * from SYS.USER_CONS_OBJ_COLUMNS; -- List of types an object column or attribute is constrained to in the tables owned by the user
select * from SYS.USER_CQ_NOTIFICATION_QUERIES; -- Description of registered queries for CQ notification
select * from SYS.USER_CREDENTIALS; -- Credentials owned by the current user
select * from SYS.USER_CUBES; -- OLAP Cubes owned by the user in the database
select * from SYS.USER_CUBE_ATTRIBUTES; -- OLAP Attributes owned by the user in the database
select * from SYS.USER_CUBE_ATTR_MAPPINGS; -- OLAP Cube Attribute Mappings owned by the user in the database
select * from SYS.USER_CUBE_ATTR_UNIQUE_KEYS; -- OLAP Unique Key Attributes owned by the user in the database
select * from SYS.USER_CUBE_ATTR_VISIBILITY; -- OLAP Attributes visible for Dimensions, Hierarchies, and Levels
select * from SYS.USER_CUBE_BUILD_PROCESSES; -- OLAP Build Processes owned by the user in the database
select * from SYS.USER_CUBE_CALCULATED_MEMBERS; -- OLAP Calculated Members in the database accessible to the user
select * from SYS.USER_CUBE_CLASSIFICATIONS; -- OLAP Object Classifications owned by the user in the database
select * from SYS.USER_CUBE_DEPENDENCIES; -- OLAP metadata dependencies owned by the user in the database
select * from SYS.USER_CUBE_DESCRIPTIONS; -- OLAP Descriptions owned by the user in the database
select * from SYS.USER_CUBE_DIMENSIONALITY; -- OLAP Cube Dimensionality owned by the user in the database
select * from SYS.USER_CUBE_DIMENSIONS; -- OLAP Cube Dimensions owned by the user in the database
select * from SYS.USER_CUBE_DIMNL_MAPPINGS; -- OLAP Cube Dimenisonality Mappings owned by the user in the database
select * from SYS.USER_CUBE_DIM_LEVELS; -- OLAP Dimension Levels owned by the user in the database
select * from SYS.USER_CUBE_DIM_MAPPINGS; -- OLAP Cube Dimension Mappings owned by the user in the database
select * from SYS.USER_CUBE_DIM_MODELS; -- OLAP Dimension Models in the database accessible to the user
select * from SYS.USER_CUBE_DIM_VIEWS; -- OLAP Dimension Views owned by the user in the database
select * from SYS.USER_CUBE_DIM_VIEW_COLUMNS; -- OLAP Dimension View Columns in the database accessible to the user
select * from SYS.USER_CUBE_HIERARCHIES; -- OLAP Hierarchies owned by the user in the database
select * from SYS.USER_CUBE_HIER_LEVELS; -- OLAP Hierarchy Levels owned by the user in the database
select * from SYS.USER_CUBE_HIER_VIEWS; -- OLAP Hierarchy Views owner by the user in the database
select * from SYS.USER_CUBE_HIER_VIEW_COLUMNS; -- OLAP Hierarchy View Columns owned by the user in the database
select * from SYS.USER_CUBE_MAPPINGS; -- OLAP Cube Mappings owned by the user in the database
select * from SYS.USER_CUBE_MEASURES; -- OLAP Measures owned by the user in the database
select * from SYS.USER_CUBE_MEAS_MAPPINGS; -- OLAP Cube Measure Mappings owned by the user in the database
select * from SYS.USER_CUBE_NAMED_BUILD_SPECS; -- OLAP Cube Named Build Specifications owned by the user in the database
select * from SYS.USER_CUBE_SUB_PARTITION_LEVELS; -- 
select * from SYS.USER_CUBE_VIEWS; -- OLAP Cube Views owned by the user in the database
select * from SYS.USER_CUBE_VIEW_COLUMNS; -- OLAP Cube View Columns owned by the user in the database
select * from SYS.USER_DATAPUMP_JOBS; -- Datapump jobs for current user
select * from SYS.USER_DBFS_HS; -- 
select * from SYS.USER_DBFS_HS_COMMANDS; -- 
select * from SYS.USER_DBFS_HS_FILES; -- 
select * from SYS.USER_DBFS_HS_FIXED_PROPERTIES; -- 
select * from SYS.USER_DBFS_HS_PROPERTIES; -- 
select * from SYS.USER_DB_LINKS; -- Database links owned by the user
select * from SYS.USER_DEPENDENCIES; -- Dependencies to and from a users objects
select * from SYS.USER_DIMENSIONS; -- Description of the dimension objects accessible to the DBA
select * from SYS.USER_DIM_ATTRIBUTES; -- Representation of the relationship between a dimension level and  a functionally dependent column
select * from SYS.USER_DIM_CHILD_OF; -- Representaion of a 1:n hierarchical relationship between a pair of levels in  a dimension
select * from SYS.USER_DIM_HIERARCHIES; -- Representation of a dimension hierarchy
select * from SYS.USER_DIM_JOIN_KEY; -- Representation of a join between two dimension tables. 
select * from SYS.USER_DIM_LEVELS; -- Description of dimension levels visible to DBA
select * from SYS.USER_DIM_LEVEL_KEY; -- Representations of columns of a dimension level
select * from SYS.USER_EDITIONED_TYPES; -- 
select * from SYS.USER_EDITIONING_VIEWS; -- Descriptions of the user's own Editioning Views
select * from SYS.USER_EDITIONING_VIEWS_AE; -- Descriptions of the user's own Editioning Views
select * from SYS.USER_EDITIONING_VIEW_COLS; -- Relationship between columns of user's Editioning Views and the table columns to which they map
select * from SYS.USER_EDITIONING_VIEW_COLS_AE; -- Relationship between columns of user's Editioning Views and the table columns to which they map
select * from SYS.USER_EDITION_INHERITED_OBJECTS; -- Objects owned by the user
select * from SYS.USER_ENCRYPTED_COLUMNS; -- Encryption information on columns of tables owned by the user
select * from SYS.USER_EPG_DAD_AUTHORIZATION; -- DADs authorized to use the user's privileges
select * from SYS.USER_ERRORS; -- Current errors on stored objects owned by the user
select * from SYS.USER_ERRORS_AE; -- Current errors on stored objects owned by the user
select * from SYS.USER_ERROR_TRANSLATIONS; -- Describes all error translations owned by the user
select * from SYS.USER_EVALUATION_CONTEXTS; -- rule evaluation contexts owned by user
select * from SYS.USER_EVALUATION_CONTEXT_TABLES; -- tables in user rule evaluation contexts
select * from SYS.USER_EVALUATION_CONTEXT_VARS; -- variables in user rule evaluation contexts
select * from SYS.USER_EXPRESSION_STATISTICS; -- Expression Usage Tracking Statistics
select * from SYS.USER_EXTENTS; -- Extents comprising segments owned by the user
select * from SYS.USER_EXTERNAL_LOCATIONS; -- Description of the user's external tables locations
select * from SYS.USER_EXTERNAL_TABLES; -- Description of the user's own external tables
select * from SYS.USER_FILE_GROUPS; -- Details about file groups
select * from SYS.USER_FILE_GROUP_EXPORT_INFO; -- Details about export information of file group versions
select * from SYS.USER_FILE_GROUP_FILES; -- Details about file group files
select * from SYS.USER_FILE_GROUP_TABLES; -- Details about the tables in the file group repository
select * from SYS.USER_FILE_GROUP_TABLESPACES; -- Details about the transportable tablespaces in the file group repository
select * from SYS.USER_FILE_GROUP_VERSIONS; -- Details about file group versions
select * from SYS.USER_FLASHBACK_ARCHIVE; -- Description of the flashback archives available to the user
select * from SYS.USER_FLASHBACK_ARCHIVE_TABLES; -- Information about the user tables that are enabled for Flashback Archive
select * from SYS.USER_FLASHBACK_TXN_REPORT; -- 
select * from SYS.USER_FLASHBACK_TXN_STATE; -- 
select * from SYS.USER_FREE_SPACE; -- Free extents in tablespaces accessible to the user
select * from SYS.USER_GOLDENGATE_PRIVILEGES; -- Details about goldengate privileges
select * from SYS.USER_HEAT_MAP_SEGMENT; -- Users segment last access time
select * from SYS.USER_HEAT_MAP_SEG_HISTOGRAM; -- Segment access information for segments owned by the user
select * from SYS.USER_HIERARCHIES; -- Hierarchies in the database
select * from SYS.USER_HIERARCHIES_AE; -- Hierarchies in the database
select * from SYS.USER_HIER_CLASS; -- Hierarchy classifications in the database
select * from SYS.USER_HIER_CLASS_AE; -- Hierarchy classifications in the database
select * from SYS.USER_HIER_COLUMNS; -- Hierarchy columns in the database
select * from SYS.USER_HIER_COLUMNS_AE; -- Hierarchy columns in the database
select * from SYS.USER_HIER_HIER_ATTRIBUTES; -- Attribute dimension attributes in the database
select * from SYS.USER_HIER_HIER_ATTRIBUTES_AE; -- Attribute dimension attributes in the database
select * from SYS.USER_HIER_HIER_ATTR_CLASS; -- Hierarchical attribute classifications in the database
select * from SYS.USER_HIER_HIER_ATTR_CLASS_AE; -- Hierarchical attribute classifications in the database
select * from SYS.USER_HIER_JOIN_PATHS; -- Hierarchy join paths in the database
select * from SYS.USER_HIER_JOIN_PATHS_AE; -- Hierarchy join paths in the database
select * from SYS.USER_HIER_LEVELS; -- Hierarchy levels in the database
select * from SYS.USER_HIER_LEVELS_AE; -- Hierarchy levels in the database
select * from SYS.USER_HIER_LEVEL_ID_ATTRS; -- Hierarchy Level ID Attributes in the database
select * from SYS.USER_HIER_LEVEL_ID_ATTRS_AE; -- Hierarchy Level ID Attributes in the database
select * from SYS.USER_HIVE_COLUMNS; -- All hive columns in the given database
select * from SYS.USER_HIVE_DATABASES; -- All hive schemas in the given hadoop cluster
select * from SYS.USER_HIVE_PART_KEY_COLUMNS; -- USER hive table partition columns
select * from SYS.USER_HIVE_TABLES; -- All hive tables in the given database
select * from SYS.USER_HIVE_TAB_PARTITIONS; -- All hive table partitions
select * from SYS.USER_HOST_ACES; -- Status of access control entries for user to access network hosts through PL/SQL host utility packages
select * from SYS.USER_IDENTIFIERS; -- Identifiers in stored objects accessible to the user
select * from SYS.USER_ILMDATAMOVEMENTPOLICIES; -- Data movement related policies for a user
select * from SYS.USER_ILMEVALUATIONDETAILS; -- Details on policies considered for a particular task
select * from SYS.USER_ILMOBJECTS; -- Policies and the objects they affect for a user
select * from SYS.USER_ILMPOLICIES; -- ILM policies owned by the user
select * from SYS.USER_ILMRESULTS; -- Information on jobs created for a user
select * from SYS.USER_ILMTASKS; -- Information on ILM execution for a user
select * from SYS.USER_IMMUTABLE_TABLES; -- 
select * from SYS.USER_IM_EXPRESSIONS; -- Automatically captured expressions enabled for in-memory storage
select * from SYS.USER_INDEXES; -- Description of the user's own indexes
select * from SYS.USER_INDEXTYPES; -- All user indextypes
select * from SYS.USER_INDEXTYPE_ARRAYTYPES; -- All array types specified by the indextype
select * from SYS.USER_INDEXTYPE_COMMENTS; -- Comments for user-defined indextypes
select * from SYS.USER_INDEXTYPE_OPERATORS; -- All user indextype operators
select * from SYS.USER_IND_COLUMNS; -- COLUMNs comprising user's INDEXes and INDEXes on user's TABLES
select * from SYS.USER_IND_EXPRESSIONS; -- Functional index expressions in user's indexes and indexes on user's tables
select * from SYS.USER_IND_PARTITIONS; -- 
select * from SYS.USER_IND_PENDING_STATS; -- Pending statistics of indexes, partitions, and subpartitions
select * from SYS.USER_IND_STATISTICS; -- Optimizer statistics for user's own indexes
select * from SYS.USER_IND_SUBPARTITIONS; -- 
select * from SYS.USER_INTERNAL_TRIGGERS; -- Description of the internal triggers on the user's own tables
select * from SYS.USER_JAVA_ARGUMENTS; -- argument information for java classes owned by the current user
select * from SYS.USER_JAVA_CLASSES; -- class level information for java classes owned by the current user
select * from SYS.USER_JAVA_COMPILER_OPTIONS; -- native compiler options provided by the user
select * from SYS.USER_JAVA_DERIVATIONS; -- this view maps java source objects and their derived java class objects and java resource objects  for the java class owned by user
select * from SYS.USER_JAVA_FIELDS; -- field information for java classes owned by the current user
select * from SYS.USER_JAVA_IMPLEMENTS; -- interfaces implemented by java classes owned by the current user
select * from SYS.USER_JAVA_INNERS; -- list of inner classes referenced by a java class owned by user
select * from SYS.USER_JAVA_LAYOUTS; -- class layout information java classes owned by the current user
select * from SYS.USER_JAVA_METHODS; -- method information for java classes owned by the current user
select * from SYS.USER_JAVA_NCOMPS; -- ncomp related information of java classes owned by user
select * from SYS.USER_JAVA_POLICY; -- java security Permissions for current user
select * from SYS.USER_JAVA_RESOLVERS; -- resolver of java class owned by user
select * from SYS.USER_JAVA_THROWS; -- list of exceptions thrown from methods of classes owned by the current user
select * from SYS.USER_JOBS; -- All jobs owned by this user
select * from SYS.USER_JOINGROUPS; -- Join groups belonging to the user
select * from SYS.USER_JOIN_IND_COLUMNS; -- Join Index columns comprising the join conditions
select * from SYS.USER_JSON_COLUMNS; -- Comments on the JSON columns for which the user is the owner
select * from SYS.USER_JSON_DATAGUIDES; -- 
select * from SYS.USER_JSON_DATAGUIDE_FIELDS; -- 
select * from SYS.USER_LIBRARIES; -- Description of the user's own libraries
select * from SYS.USER_LOBS; -- Description of the user's own LOBs contained in the user's own tables
select * from SYS.USER_LOB_PARTITIONS; -- 
select * from SYS.USER_LOB_SUBPARTITIONS; -- 
select * from SYS.USER_LOB_TEMPLATES; -- 
select * from SYS.USER_LOG_GROUPS; -- Log group definitions on user's own tables
select * from SYS.USER_LOG_GROUP_COLUMNS; -- Information about columns in log group definitions
select * from SYS.USER_MEASURE_FOLDERS; -- OLAP Measure Folders owned by the user in the database
select * from SYS.USER_MEASURE_FOLDER_CONTENTS; -- OLAP Measure Folder Contents owned by the user in the database
select * from SYS.USER_MEASURE_FOLDER_SUBFOLDERS; -- OLAP Measure Folders contained within the user OLAP Measure Folders
select * from SYS.USER_METADATA_PROPERTIES; -- OLAP Metadata Properties owned by the user in the database
select * from SYS.USER_METHOD_PARAMS; -- Description of method parameters of the user's own types
select * from SYS.USER_METHOD_RESULTS; -- Description of method results of the user's own types
select * from SYS.USER_MINING_MODELS; -- Description of the user's own models
select * from SYS.USER_MINING_MODEL_ATTRIBUTES; -- Description of the user's own model attributes
select * from SYS.USER_MINING_MODEL_PARTITIONS; -- Description of the user's own model partitions
select * from SYS.USER_MINING_MODEL_SETTINGS; -- Description of the user's own model settings
select * from SYS.USER_MINING_MODEL_VIEWS; -- Description of the user's own model views
select * from SYS.USER_MINING_MODEL_XFORMS; -- User-specified transformations embedded with the user's own models
select * from SYS.USER_MVIEWS; -- All materialized views in the database
select * from SYS.USER_MVIEW_AGGREGATES; -- Description of the materialized view aggregates created by the user
select * from SYS.USER_MVIEW_ANALYSIS; -- Description of the materialized views created by the user
select * from SYS.USER_MVIEW_COMMENTS; -- Comments on materialized views owned by the user
select * from SYS.USER_MVIEW_DETAIL_PARTITION; -- Freshness information of all PCT materialized views in the database
select * from SYS.USER_MVIEW_DETAIL_RELATIONS; -- Description of the materialized view detail tables of the materialized views created by the user
select * from SYS.USER_MVIEW_DETAIL_SUBPARTITION; -- Freshness information of all PCT materialized views in the database
select * from SYS.USER_MVIEW_JOINS; -- Description of a join between two columns in the WHERE clause of a materialized view created by the user
select * from SYS.USER_MVIEW_KEYS; -- Description of the columns that appear in the GROUP BY list of a materialized view  created by the user
select * from SYS.USER_MVIEW_LOGS; -- All materialized view logs owned by the user
select * from SYS.USER_MVIEW_REFRESH_TIMES; -- Materialized views and their last refresh times for each master table that the user can look at
select * from SYS.USER_MVREF_CHANGE_STATS; -- 
select * from SYS.USER_MVREF_RUN_STATS; -- 
select * from SYS.USER_MVREF_STATS; -- 
select * from SYS.USER_MVREF_STATS_PARAMS; -- 
select * from SYS.USER_MVREF_STATS_SYS_DEFAULTS; -- 
select * from SYS.USER_MVREF_STMT_STATS; -- 
select * from SYS.USER_NESTED_TABLES; -- Description of nested tables contained in the user's own tables
select * from SYS.USER_NESTED_TABLE_COLS; -- Columns of nested tables
select * from SYS.USER_NETWORK_ACL_PRIVILEGES; -- User privileges to access network hosts through PL/SQL network utility packages
select * from SYS.USER_OBJECTS; -- Objects owned by the user
select * from SYS.USER_OBJECTS_AE; -- Objects owned by the user
select * from SYS.USER_OBJECT_SIZE; -- Sizes, in bytes, of various pl/sql objects
select * from SYS.USER_OBJECT_TABLES; -- Description of the user's own object tables
select * from SYS.USER_OBJECT_USAGE; -- Record of index usage
select * from SYS.USER_OBJ_AUDIT_OPTS; -- Auditing options for user's own tables and views with atleast one option set
select * from SYS.USER_OBJ_COLATTRS; -- Description of object columns and attributes contained in tables owned by the user
select * from SYS.USER_OGG_AUTO_CAPTURED_TABLES; -- All tables of the user that are enabled for Oracle GoldenGata Auto Capture
select * from SYS.USER_OLDIMAGE_COLUMNS; -- Gives all object tables and columns in old (8.0) image format
select * from SYS.USER_OPANCILLARY; -- All ancillary opertors defined by user
select * from SYS.USER_OPARGUMENTS; -- All operator arguments of operators defined by user
select * from SYS.USER_OPBINDINGS; -- All binding functions or methods on operators defined by the user
select * from SYS.USER_OPERATORS; -- All user operators
select * from SYS.USER_OPERATOR_COMMENTS; -- Comments for user-defined operators
select * from SYS.USER_OUTLINES; -- Stored outlines owned by the user
select * from SYS.USER_OUTLINE_HINTS; -- Hints stored in outlines owned by the user
select * from SYS.USER_PARALLEL_EXECUTE_CHUNKS; -- 
select * from SYS.USER_PARALLEL_EXECUTE_TASKS; -- 
select * from SYS.USER_PARTIAL_DROP_TABS; -- User tables with unused columns
select * from SYS.USER_PART_COL_STATISTICS; -- 
select * from SYS.USER_PART_HISTOGRAMS; -- 
select * from SYS.USER_PART_INDEXES; -- 
select * from SYS.USER_PART_KEY_COLUMNS; -- 
select * from SYS.USER_PART_LOBS; -- 
select * from SYS.USER_PART_TABLES; -- 
select * from SYS.USER_PASSWORD_LIMITS; -- Display password limits of the user
select * from SYS.USER_PENDING_CONV_TABLES; -- All user's tables which are not upgraded to the latest type version
select * from SYS.USER_PLSQL_COLL_TYPES; -- Description of the user's own named plsql collection types
select * from SYS.USER_PLSQL_OBJECT_SETTINGS; -- Compiler settings of stored objects owned by the user
select * from SYS.USER_PLSQL_TYPES; -- Description of the user's own types
select * from SYS.USER_PLSQL_TYPE_ATTRS; -- Description of attributes of the user's own types
select * from SYS.USER_POLICIES; -- All row level security policies for synonyms, tables, or views owned by the user
select * from SYS.USER_POLICY_ATTRIBUTES; -- Attribute associations of all context sensitive and shared context sensitive policies for synonyms, tables, or views owned by the user
select * from SYS.USER_POLICY_CONTEXTS; -- All policy driving context defined for synonyms, tables, or views in current schema
select * from SYS.USER_POLICY_GROUPS; -- All policy groups defined for any synonym, table, or view
select * from SYS.USER_PRIVATE_TEMP_TABLES; -- Description of the Private Temp Tables in the current session 
select * from SYS.USER_PRIVILEGE_MAP; -- Description table for user privilege (auditing option) type codes.  Maps privilege (auditing option) type numbers to type names
select * from SYS.USER_PROCEDURES; -- Description of the user functions/procedures/packages/types/triggers
select * from SYS.USER_PROXIES; -- Description of connections the user is allowed to proxy
select * from SYS.USER_QUEUES; -- All queues owned by the user
select * from SYS.USER_QUEUE_PUBLISHERS; -- 
select * from SYS.USER_QUEUE_SCHEDULES; -- 
select * from SYS.USER_QUEUE_SUBSCRIBERS; -- queue subscribers under a user'schema
select * from SYS.USER_QUEUE_TABLES; -- All queue tables created by the user
select * from SYS.USER_RECYCLEBIN; -- User view of his recyclebin
select * from SYS.USER_REFRESH; -- All the refresh groups
select * from SYS.USER_REFRESH_CHILDREN; -- All the objects in refresh groups, where the user owns the refresh group
select * from SYS.USER_REFS; -- Description of the user's own REF columns contained in the user's own tables
select * from SYS.USER_REGISTERED_MVIEWS; -- Remote materialized views of local tables currently using logs owned by the user
select * from SYS.USER_REGISTERED_SNAPSHOTS; -- Remote snapshots of local tables currently using logs owned by the user
select * from SYS.USER_REGISTRY; -- 
select * from SYS.USER_RESOURCE_LIMITS; -- Display resource limit of the user
select * from SYS.USER_RESUMABLE; -- Resumable session information for current user
select * from SYS.USER_REWRITE_EQUIVALENCES; -- Description of all rewrite equivalence owned by the user
select * from SYS.USER_ROLE_PRIVS; -- Roles granted to current user
select * from SYS.USER_RSRC_CONSUMER_GROUP_PRIVS; -- Switch privileges for consumer groups for the user
select * from SYS.USER_RSRC_MANAGER_SYSTEM_PRIVS; -- system privileges for the resource manager for the user
select * from SYS.USER_RULES; -- Rules owned by the user
select * from SYS.USER_RULESETS; -- Rulesets owned by the user: maintained for backward compatibility
select * from SYS.USER_RULE_SETS; -- Rule sets owned by the user
select * from SYS.USER_RULE_SET_RULES; -- Rules in user rule sets
select * from SYS.USER_SCHEDULER_CHAINS; -- All scheduler chains owned by the current user
select * from SYS.USER_SCHEDULER_CHAIN_RULES; -- All rules from scheduler chains owned by the current user
select * from SYS.USER_SCHEDULER_CHAIN_STEPS; -- All steps of scheduler chains owned by the current user
select * from SYS.USER_SCHEDULER_CREDENTIALS; -- Scheduler credentials owned by the current user
select * from SYS.USER_SCHEDULER_DB_DESTS; -- User-owned destination objects in the database pointing to remote databases
select * from SYS.USER_SCHEDULER_DESTS; -- Destination objects for jobs in the database owned by current user
select * from SYS.USER_SCHEDULER_FILE_WATCHERS; -- Scheduler file watch requests owned by the current user
select * from SYS.USER_SCHEDULER_GROUPS; -- All scheduler object groups owned by current user
select * from SYS.USER_SCHEDULER_GROUP_MEMBERS; -- Members of all scheduler object groups owned by current user
select * from SYS.USER_SCHEDULER_INCOMPATS; -- All scheduler incompatibility resource objects in the database
select * from SYS.USER_SCHEDULER_INCOMPAT_MEMBER; -- All incompatibility resource objects members in the database
select * from SYS.USER_SCHEDULER_JOBS; -- All scheduler jobs in the database
select * from SYS.USER_SCHEDULER_JOB_ARGS; -- All arguments with set values of all scheduler jobs in the database
select * from SYS.USER_SCHEDULER_JOB_DESTS; -- State of all jobs owned by current user at each of their destinations
select * from SYS.USER_SCHEDULER_JOB_LOG; -- Logged information for all scheduler jobs
select * from SYS.USER_SCHEDULER_JOB_RUN_DETAILS; -- The details of a job run
select * from SYS.USER_SCHEDULER_NOTIFICATIONS; -- All e-mail notifications owned by the current user or for jobs it owns
select * from SYS.USER_SCHEDULER_PROGRAMS; -- Scheduler programs owned by the current user
select * from SYS.USER_SCHEDULER_PROGRAM_ARGS; -- All arguments of all scheduler programs in the database
select * from SYS.USER_SCHEDULER_REMOTE_JOBSTATE; -- Remote state of all jobs originating from this database owned by current user
select * from SYS.USER_SCHEDULER_RESOURCES; -- All scheduler resource objects in the database
select * from SYS.USER_SCHEDULER_RSC_CONSTRAINTS; -- All scheduler resource constraint members in the database
select * from SYS.USER_SCHEDULER_RUNNING_CHAINS; -- All steps of chains being run by jobs owned by the current user
select * from SYS.USER_SCHEDULER_RUNNING_JOBS; -- 
select * from SYS.USER_SCHEDULER_SCHEDULES; -- Schedules belonging to the current user
select * from SYS.USER_SECONDARY_OBJECTS; -- All secondary objects for domain indexes
select * from SYS.USER_SEC_RELEVANT_COLS; -- Security Relevant columns of VPD policies for tables or views owned by the user
select * from SYS.USER_SEGMENTS; -- Storage allocated for all database segments
select * from SYS.USER_SEQUENCES; -- Description of the user's own SEQUENCEs
select * from SYS.USER_SNAPSHOTS; -- Snapshots the user can look at
select * from SYS.USER_SNAPSHOT_LOGS; -- All snapshot logs owned by the user
select * from SYS.USER_SOURCE; -- Source of stored objects accessible to the user
select * from SYS.USER_SOURCE_AE; -- Source of stored objects accessible to the user
select * from SYS.USER_SQLJ_TYPES; -- Description of the user's own types
select * from SYS.USER_SQLJ_TYPE_ATTRS; -- Description of attributes of the user's own types
select * from SYS.USER_SQLJ_TYPE_METHODS; -- Description of methods of the user's own types
select * from SYS.USER_SQLSET; -- 
select * from SYS.USER_SQLSET_BINDS; -- 
select * from SYS.USER_SQLSET_PLANS; -- 
select * from SYS.USER_SQLSET_REFERENCES; -- 
select * from SYS.USER_SQLSET_STATEMENTS; -- 
select * from SYS.USER_SQLTUNE_BINDS; -- 
select * from SYS.USER_SQLTUNE_PLANS; -- 
select * from SYS.USER_SQLTUNE_RATIONALE_PLAN; -- 
select * from SYS.USER_SQLTUNE_STATISTICS; -- 
select * from SYS.USER_SQL_TRANSLATIONS; -- Describes all SQL translations owned by the user
select * from SYS.USER_SQL_TRANSLATION_PROFILES; -- Describes all SQL translation profiles owned by the user
select * from SYS.USER_SR_GRP_STATUS; -- 
select * from SYS.USER_SR_GRP_STATUS_ALL; -- 
select * from SYS.USER_SR_OBJ; -- 
select * from SYS.USER_SR_OBJ_ALL; -- 
select * from SYS.USER_SR_OBJ_STATUS; -- 
select * from SYS.USER_SR_OBJ_STATUS_ALL; -- 
select * from SYS.USER_SR_PARTN_OPS; -- 
select * from SYS.USER_SR_STLOG_EXCEPTIONS; -- 
select * from SYS.USER_SR_STLOG_STATS; -- 
select * from SYS.USER_STATEMENTS; -- SQL statements in stored PL/SQL objects accessible to the user
select * from SYS.USER_STAT_EXTENSIONS; -- Optimizer statistics extensions
select * from SYS.USER_STORED_SETTINGS; -- Parameter settings for objects owned by the user
select * from SYS.USER_SUBPARTITION_TEMPLATES; -- 
select * from SYS.USER_SUBPART_COL_STATISTICS; -- 
select * from SYS.USER_SUBPART_HISTOGRAMS; -- 
select * from SYS.USER_SUBPART_KEY_COLUMNS; -- 
select * from SYS.USER_SUBSCR_REGISTRATIONS; -- All subscription registrations created by the user
select * from SYS.USER_SUMMARIES; -- Description of the summaries created by the user
select * from SYS.USER_SUMMARY_AGGREGATES; -- 
select * from SYS.USER_SUMMARY_DETAIL_TABLES; -- 
select * from SYS.USER_SUMMARY_JOINS; -- 
select * from SYS.USER_SUMMARY_KEYS; -- 
select * from SYS.USER_SYNONYMS; -- The user's private synonyms
select * from SYS.USER_SYS_PRIVS; -- System privileges granted to current user
select * from SYS.USER_TABLES; -- Description of the user's own relational tables
select * from SYS.USER_TABLESPACES; -- Description of accessible tablespaces
select * from SYS.USER_TAB_COLS; -- Columns of user's tables, views and clusters
select * from SYS.USER_TAB_COLUMNS; -- Columns of user's tables, views and clusters
select * from SYS.USER_TAB_COL_STATISTICS; -- Columns of user's tables, views and clusters
select * from SYS.USER_TAB_COMMENTS; -- Comments on the tables and views owned by the user
select * from SYS.USER_TAB_HISTGRM_PENDING_STATS; -- Pending statistics of tables, partitions, and subpartitions
select * from SYS.USER_TAB_HISTOGRAMS; -- Histograms on columns of user's tables
select * from SYS.USER_TAB_IDENTITY_COLS; -- Describes all table identity columns
select * from SYS.USER_TAB_MODIFICATIONS; -- Information regarding modifications to tables
select * from SYS.USER_TAB_PARTITIONS; -- 
select * from SYS.USER_TAB_PENDING_STATS; -- History of table statistics modifications
select * from SYS.USER_TAB_PRIVS; -- Grants on objects for which the user is the owner, grantor or grantee
select * from SYS.USER_TAB_PRIVS_MADE; -- All grants on objects owned by the user
select * from SYS.USER_TAB_PRIVS_RECD; -- Grants on objects for which the user is the grantee
select * from SYS.USER_TAB_STATISTICS; -- Optimizer statistics of the user's own tables
select * from SYS.USER_TAB_STATS_HISTORY; -- History of table statistics modifications
select * from SYS.USER_TAB_STAT_PREFS; -- Statistics preferences for tables
select * from SYS.USER_TAB_SUBPARTITIONS; -- 
select * from SYS.USER_TRANSFORMATIONS; -- 
select * from SYS.USER_TRIGGERS; -- Triggers having FOLLOWS or PRECEDES ordering owned by the user
select * from SYS.USER_TRIGGERS_AE; -- Triggers owned by the user
select * from SYS.USER_TRIGGER_COLS; -- Column usage in user's triggers
select * from SYS.USER_TRIGGER_ORDERING; -- 
select * from SYS.USER_TSTZ_TABLES; -- Description of the user's own tables, which have column(s) defined on timestamp with time zone data type or ADT type containing attribute(s) of timestamp with time zone data type
select * from SYS.USER_TSTZ_TAB_COLS; -- Columns of user's tables, which have column(s) defined on timestamp with time zone data type or ADT type containing attribute(s) of timestamp with time zone data type
select * from SYS.USER_TS_QUOTAS; -- Tablespace quotas for the user
select * from SYS.USER_TUNE_MVIEW; -- tune_mview catalog view owned by the user
select * from SYS.USER_TYPES; -- Description of the user's own types
select * from SYS.USER_TYPE_ATTRS; -- Description of attributes of the user's own types
select * from SYS.USER_TYPE_METHODS; -- Description of methods of the user's own types
select * from SYS.USER_TYPE_VERSIONS; -- Description of each version of the user's types
select * from SYS.USER_UNUSED_COL_TABS; -- User tables with unused columns
select * from SYS.USER_UPDATABLE_COLUMNS; -- Description of updatable columns
select * from SYS.USER_USERS; -- Information about the current user
select * from SYS.USER_USTATS; -- All statistics on tables or indexes owned by the user
select * from SYS.USER_VARRAYS; -- Description of varrays contained in the user's own tables
select * from SYS.USER_VIEWS; -- Description of the user's own views
select * from SYS.USER_VIEWS_AE; -- Description of the user's own views
select * from SYS.USER_WALLET_ACES; -- Status of access control entries for user to access wallets through PL/SQL network utility packages
select * from SYS.USER_WARNING_SETTINGS; -- Warning Parameter settings for objects owned by the user
select * from SYS.USER_XDS_ACL_REFRESH; -- 
select * from SYS.USER_XDS_ACL_REFSTAT; -- 
select * from SYS.USER_XDS_LATEST_ACL_REFSTAT; -- 
select * from SYS.USER_XMLTYPE_COLS; -- 
select * from SYS.USER_XML_COLUMN_NAMES; -- 
select * from SYS.USER_XML_INDEXES; -- Description of the user's own XMLType indexes
select * from SYS.USER_XML_NESTED_TABLES; -- 
select * from SYS.USER_XML_OUT_OF_LINE_TABLES; -- 
select * from SYS.USER_XML_SCHEMAS; -- Description of XML Schemas registered by the user
select * from SYS.USER_XML_SCHEMA_ATTRIBUTES; -- 
select * from SYS.USER_XML_SCHEMA_COMPLEX_TYPES; -- 
select * from SYS.USER_XML_SCHEMA_ELEMENTS; -- 
select * from SYS.USER_XML_SCHEMA_NAMESPACES; -- 
select * from SYS.USER_XML_SCHEMA_SIMPLE_TYPES; -- 
select * from SYS.USER_XML_SCHEMA_SUBSTGRP_HEAD; -- 
select * from SYS.USER_XML_SCHEMA_SUBSTGRP_MBRS; -- 
select * from SYS.USER_XML_TABLES; -- Description of the user's own XMLType tables
select * from SYS.USER_XML_TAB_COLS; -- Description of the user's own XMLType tables
select * from SYS.USER_XML_VIEWS; -- Description of the user's own XMLType views
select * from SYS.USER_XML_VIEW_COLS; -- Description of the user's own XMLType views
select * from SYS.USER_XS_ACES; -- All the Real Application Security ACES of the ACLs owned by the current user
select * from SYS.USER_XS_ACLS; -- All the Real Application Security ACLs owned by the current user
select * from SYS.USER_XS_ACL_PARAMETERS; -- All the Real Application Security ACL parameters defined in the data security policies owned by the current user
select * from SYS.USER_XS_COLUMN_CONSTRAINTS; -- All the Real Application Security column constraints owned by the current user
select * from SYS.USER_XS_IMPLIED_PRIVILEGES; -- All the Real Application Security implied privileges scoped by the security classes owned by the current user
select * from SYS.USER_XS_INHERITED_REALMS; -- All the Real Application Security inherited realms owned by the current user
select * from SYS.USER_XS_PASSWORD_LIMITS; -- Display password limits for currently logged on application user
select * from SYS.USER_XS_POLICIES; -- All the Real Application Security data security policies owned by the current user
select * from SYS.USER_XS_PRIVILEGES; -- All the Real Application Security privileges scoped by the security classes owned by the current user
select * from SYS.USER_XS_REALM_CONSTRAINTS; -- All the Real Application Security realms owned by the current user
select * from SYS.USER_XS_SECURITY_CLASSES; -- All the Real Application Security security classes owned by the current user
select * from SYS.USER_XS_SECURITY_CLASS_DEP; -- All the Real Application Security class dependencies of the security classes that are owned by the current user
select * from SYS.USER_XS_USERS; -- Account information for the current user
select * from SYS.USER_XTERNAL_LOC_PARTITIONS; -- 
select * from SYS.USER_XTERNAL_LOC_SUBPARTITIONS; -- 
select * from SYS.USER_XTERNAL_PART_TABLES; -- 
select * from SYS.USER_XTERNAL_TAB_PARTITIONS; -- 
select * from SYS.USER_XTERNAL_TAB_SUBPARTITIONS; -- 
select * from SYS.USER_XT_HIVE_TABLES_VALIDATION; -- USER hive tables validation
select * from SYS.USER_ZONEMAPS; -- Zonemaps owned by the user
select * from SYS.USER_ZONEMAP_MEASURES; -- Zonemap measures owned by the user
