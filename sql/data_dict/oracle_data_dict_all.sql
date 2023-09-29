-- Материалы к теме "Словари данных". Oracle. Представления словаря данных, доступные для текущего пользователя (SYS.ALL_%)

------------------------------------------------------------------------

-- Выборочный список представлений

select * from SYS.ALL_CATALOG; -- All tables, views, synonyms, sequences accessible to the user
select * from SYS.ALL_TAB_COLS; -- Columns of user's tables, views and clusters
select * from SYS.ALL_TAB_COMMENTS; -- Comments on tables and views accessible to the user
select * from SYS.ALL_COL_COMMENTS; -- Comments on columns of accessible tables and views
select * from SYS.ALL_PROCEDURES; -- Functions/procedures/packages/types/triggers available to the user
select * from SYS.ALL_SEQUENCES; -- Description of SEQUENCEs accessible to the user
select * from SYS.ALL_CONSTRAINTS; -- Constraint definitions on accessible tables

------------------------------------------------------------------------

-- Пример запроса для получения описания таблиц БД на основе словаря данных

SELECT 
  cl.owner as "Владелец", 
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
  sys.all_tab_cols cl 
  JOIN sys.all_col_comments cm ON cl.owner = cm.owner 
  AND cl.table_name = cm.table_name 
  AND cl.column_name = cm.column_name 
  JOIN sys.all_tab_comments tc ON cl.owner = tc.owner 
  AND cl.table_name = tc.table_name 
WHERE 
  /* cl.owner = <имя схемы, если надо> */
ORDER BY 
  cl.table_name, 
  cl.internal_column_id;

------------------------------------------------------------------------

-- Полный список представлений

select * from SYS.ALL_ALL_TABLES; -- Description of all object and relational tables accessible to the user
select * from SYS.ALL_ANALYTIC_VIEWS; -- Analytic views in the database
select * from SYS.ALL_ANALYTIC_VIEWS_AE; -- Analytic views in the database
select * from SYS.ALL_ANALYTIC_VIEW_ATTR_CLASS; -- analytic view attribute classifications in the database
select * from SYS.ALL_ANALYTIC_VIEW_ATTR_CLS; -- analytic view attribute classifications in the database
select * from SYS.ALL_ANALYTIC_VIEW_ATTR_CLS_AE; -- analytic view attribute classifications in the database
select * from SYS.ALL_ANALYTIC_VIEW_BASE_MEAS; -- Analytic view base measures in the database
select * from SYS.ALL_ANALYTIC_VIEW_BAS_MEAS; -- Analytic view base measures in the database
select * from SYS.ALL_ANALYTIC_VIEW_BAS_MEAS_AE; -- Analytic view base measures in the database
select * from SYS.ALL_ANALYTIC_VIEW_CALC_MEAS; -- Analytic view calculated measures in the database
select * from SYS.ALL_ANALYTIC_VIEW_CLASS; -- Analytic view classifications in the database
select * from SYS.ALL_ANALYTIC_VIEW_CLASS_AE; -- Analytic view classifications in the database
select * from SYS.ALL_ANALYTIC_VIEW_CLC_MEAS; -- Analytic view calculated measures in the database
select * from SYS.ALL_ANALYTIC_VIEW_CLC_MEAS_AE; -- Analytic view calculated measures in the database
select * from SYS.ALL_ANALYTIC_VIEW_COLUMNS; -- Analytic view columns in the database
select * from SYS.ALL_ANALYTIC_VIEW_COLUMNS_AE; -- Analytic view columns in the database
select * from SYS.ALL_ANALYTIC_VIEW_DIMENSIONS; -- Analytic view Dimensions in the database
select * from SYS.ALL_ANALYTIC_VIEW_DIMS; -- Analytic view Dimensions in the database
select * from SYS.ALL_ANALYTIC_VIEW_DIMS_AE; -- Analytic view Dimensions in the database
select * from SYS.ALL_ANALYTIC_VIEW_DIM_CLASS; -- Classifications of the analytic view dimensions in the database
select * from SYS.ALL_ANALYTIC_VIEW_DIM_CLS; -- Classifications of the analytic view dimensions in the database
select * from SYS.ALL_ANALYTIC_VIEW_DIM_CLS_AE; -- Classifications of the analytic view dimensions in the database
select * from SYS.ALL_ANALYTIC_VIEW_HIERS; -- Analytic view hierarchies in the database
select * from SYS.ALL_ANALYTIC_VIEW_HIERS_AE; -- Analytic view hierarchies in the database
select * from SYS.ALL_ANALYTIC_VIEW_HIER_CLASS; -- Analytic view hierarchy classifications in the database
select * from SYS.ALL_ANALYTIC_VIEW_HIER_CLS; -- Analytic view hierarchy classifications in the database
select * from SYS.ALL_ANALYTIC_VIEW_HIER_CLS_AE; -- Analytic view hierarchy classifications in the database
select * from SYS.ALL_ANALYTIC_VIEW_KEYS; -- Analytic view keys in the database
select * from SYS.ALL_ANALYTIC_VIEW_KEYS_AE; -- Analytic view keys in the database
select * from SYS.ALL_ANALYTIC_VIEW_LEVELS; -- Analytic view levels in the database
select * from SYS.ALL_ANALYTIC_VIEW_LEVELS_AE; -- Analytic view levels in the database
select * from SYS.ALL_ANALYTIC_VIEW_LEVEL_CLASS; -- analytic view level classifications in the database
select * from SYS.ALL_ANALYTIC_VIEW_LVLGRPS; -- Level groupings for an analytic view
select * from SYS.ALL_ANALYTIC_VIEW_LVLGRPS_AE; -- Level groupings for an analytic view
select * from SYS.ALL_ANALYTIC_VIEW_LVL_CLS; -- analytic view level classifications in the database
select * from SYS.ALL_ANALYTIC_VIEW_LVL_CLS_AE; -- analytic view level classifications in the database
select * from SYS.ALL_ANALYTIC_VIEW_MEAS_CLASS; -- Analytic view measure classifications in the database
select * from SYS.ALL_ANALYTIC_VIEW_MEAS_CLS; -- Analytic view measure classifications in the database
select * from SYS.ALL_ANALYTIC_VIEW_MEAS_CLS_AE; -- Analytic view measure classifications in the database
select * from SYS.ALL_APPLY; -- Details about each apply process that dequeues from the queue visible to the current user
select * from SYS.ALL_APPLY_CONFLICT_COLUMNS; -- Details about conflict resolution on tables visible to the current user
select * from SYS.ALL_APPLY_DML_CONF_COLUMNS; -- Details about dml conflict handler column groups on objects visible to the current user
select * from SYS.ALL_APPLY_DML_CONF_HANDLERS; -- Details about dml conflict handlers on objects visible to the current user
select * from SYS.ALL_APPLY_DML_HANDLERS; -- Details about the dml handler on tables visible to the current user
select * from SYS.ALL_APPLY_ENQUEUE; -- Details about the apply enqueue action for user accessible rules where the destination queue exists and is visible to the user
select * from SYS.ALL_APPLY_ERROR; -- Error transactions that were generated after dequeuing from the queue visible to the current user
select * from SYS.ALL_APPLY_ERROR_MESSAGES; -- Details about individual messages in an error transaction
select * from SYS.ALL_APPLY_EXECUTE; -- Details about the apply execute action for all rules visible to the user
select * from SYS.ALL_APPLY_HANDLE_COLLISIONS; -- Details about apply collision handlers on objects visible to the user
select * from SYS.ALL_APPLY_KEY_COLUMNS; -- Alternative key columns for a STREAMS table visible to the current user
select * from SYS.ALL_APPLY_PARAMETERS; -- Details about parameters of each apply process that dequeues from the queue visible to the current user
select * from SYS.ALL_APPLY_PROGRESS; -- Information about the progress made by the apply process that dequeues from the queue visible to the current user
select * from SYS.ALL_APPLY_REPERROR_HANDLERS; -- Details about apply reperror handlers on objects visible to the user
select * from SYS.ALL_APPLY_TABLE_COLUMNS; -- Details about the columns of destination table object visible to the user
select * from SYS.ALL_ARGUMENTS; -- Arguments in object accessible to the user
select * from SYS.ALL_ASSEMBLIES; -- Description of assemblies accessible to the user
select * from SYS.ALL_ASSOCIATIONS; -- All associations available to the user
select * from SYS.ALL_ATTRIBUTE_DIMENSIONS; -- attribute dimensions in the database
select * from SYS.ALL_ATTRIBUTE_DIMENSIONS_AE; -- attribute dimensions in the database
select * from SYS.ALL_ATTRIBUTE_DIM_ATTRS; -- Attribute dimension attributes in the database
select * from SYS.ALL_ATTRIBUTE_DIM_ATTRS_AE; -- Attribute dimension attributes in the database
select * from SYS.ALL_ATTRIBUTE_DIM_ATTR_CLASS; -- Attribute dimension attribute classifications in the database
select * from SYS.ALL_ATTRIBUTE_DIM_ATTR_CLS; -- Attribute dimension attribute classifications in the database
select * from SYS.ALL_ATTRIBUTE_DIM_ATTR_CLS_AE; -- Attribute dimension attribute classifications in the database
select * from SYS.ALL_ATTRIBUTE_DIM_CLASS; -- Attribute dimension classifications in the database
select * from SYS.ALL_ATTRIBUTE_DIM_CLASS_AE; -- Attribute dimension classifications in the database
select * from SYS.ALL_ATTRIBUTE_DIM_JN_PTHS; -- Attribute dimension join paths in the database
select * from SYS.ALL_ATTRIBUTE_DIM_JN_PTHS_AE; -- Attribute dimension join paths in the database
select * from SYS.ALL_ATTRIBUTE_DIM_JOIN_PATHS; -- Attribute dimension join paths in the database
select * from SYS.ALL_ATTRIBUTE_DIM_KEYS; -- attribute dimension keys in the database
select * from SYS.ALL_ATTRIBUTE_DIM_KEYS_AE; -- attribute dimension keys in the database
select * from SYS.ALL_ATTRIBUTE_DIM_LEVELS; -- Attribute dimension Levels in the database
select * from SYS.ALL_ATTRIBUTE_DIM_LEVELS_AE; -- Attribute dimension Levels in the database
select * from SYS.ALL_ATTRIBUTE_DIM_LEVEL_ATTRS; -- Determined attributes of each level in the database
select * from SYS.ALL_ATTRIBUTE_DIM_LVL_ATRS; -- Determined attributes of each level in the database
select * from SYS.ALL_ATTRIBUTE_DIM_LVL_ATRS_AE; -- Determined attributes of each level in the database
select * from SYS.ALL_ATTRIBUTE_DIM_LVL_CLASS; -- Attribute dimension level classifications in the database
select * from SYS.ALL_ATTRIBUTE_DIM_LVL_CLS; -- Attribute dimension level classifications in the database
select * from SYS.ALL_ATTRIBUTE_DIM_LVL_CLS_AE; -- Attribute dimension level classifications in the database
select * from SYS.ALL_ATTRIBUTE_DIM_ORDER_ATTRS; -- Attribute dimension order by elements in the database
select * from SYS.ALL_ATTRIBUTE_DIM_ORD_ATRS; -- Attribute dimension order by elements in the database
select * from SYS.ALL_ATTRIBUTE_DIM_ORD_ATRS_AE; -- Attribute dimension order by elements in the database
select * from SYS.ALL_ATTRIBUTE_DIM_TABLES; -- Attribute dimension tables in the database
select * from SYS.ALL_ATTRIBUTE_DIM_TABLES_AE; -- Attribute dimension tables in the database
select * from SYS.ALL_ATTRIBUTE_TRANSFORMATIONS; -- 
select * from SYS.ALL_AWS; -- Analytic Workspaces accessible to the user
select * from SYS.ALL_AW_PS; -- Pagespaces in Analytic Workspaces accessible to the user
select * from SYS.ALL_BASE_TABLE_MVIEWS; -- All materialized views with log(s) in the database that the user can see
select * from SYS.ALL_BLOCKCHAIN_TABLES; -- All blockchain_table tables in the database that the user can see
select * from SYS.ALL_CAPTURE; -- Details about each capture process that stores the captured changes in a queue visible to the current user
select * from SYS.ALL_CAPTURE_EXTRA_ATTRIBUTES; -- Extra attributes for a capture process that is visible to the current user
select * from SYS.ALL_CAPTURE_PARAMETERS; -- Details about parameters for each capture process that stores the captured changes in a queue visible to the current user
select * from SYS.ALL_CAPTURE_PREPARED_DATABASE; -- Is the local database prepared for instantiation?
select * from SYS.ALL_CAPTURE_PREPARED_SCHEMAS; -- All user schemas at the local database that are prepared for instantiation
select * from SYS.ALL_CAPTURE_PREPARED_TABLES; -- All tables visible to the current user that are prepared for instantiation
select * from SYS.ALL_CATALOG; -- All tables, views, synonyms, sequences accessible to the user
select * from SYS.ALL_CERTIFICATES; -- 
select * from SYS.ALL_CLUSTERING_DIMENSIONS; -- All dimension details about clustering tables the user owns or has system privileges
select * from SYS.ALL_CLUSTERING_JOINS; -- All join details about clustering tables the user owns or has system privileges
select * from SYS.ALL_CLUSTERING_KEYS; -- Description of the keys of the clustering clause of tables accessible to the user
select * from SYS.ALL_CLUSTERING_TABLES; -- Description of the clustering clause of tables accessible to the user
select * from SYS.ALL_CLUSTERS; -- Description of clusters accessible to the user
select * from SYS.ALL_CLUSTER_HASH_EXPRESSIONS; -- Hash functions for all accessible clusters
select * from SYS.ALL_CODE_ROLE_PRIVS; -- Roles attached to the program units accessible to the user
select * from SYS.ALL_COLL_TYPES; -- Description of named collection types accessible to the user
select * from SYS.ALL_COL_COMMENTS; -- Comments on columns of accessible tables and views
select * from SYS.ALL_COL_PENDING_STATS; -- Pending statistics of tables, partitions, and subpartitions
select * from SYS.ALL_COL_PRIVS; -- Grants on columns for which the user is the grantor, grantee, owner,  or an enabled role or PUBLIC is the grantee
select * from SYS.ALL_COL_PRIVS_MADE; -- Grants on columns for which the user is owner or grantor
select * from SYS.ALL_COL_PRIVS_RECD; -- Grants on columns for which the user, PUBLIC or enabled role is the grantee
select * from SYS.ALL_CONSTRAINTS; -- Constraint definitions on accessible tables
select * from SYS.ALL_CONS_COLUMNS; -- Information about accessible columns in constraint definitions
select * from SYS.ALL_CONS_OBJ_COLUMNS; -- List of types an object column or attribute is constrained to in the tables accessible to the user
select * from SYS.ALL_CONTEXT; -- Description of all active context namespaces under the current session
select * from SYS.ALL_CREDENTIALS; -- All credentials visible to the user
select * from SYS.ALL_CUBES; -- OLAP Cubes in the database accessible to the user
select * from SYS.ALL_CUBE_ATTRIBUTES; -- OLAP Attributes in the database accessible by the user
select * from SYS.ALL_CUBE_ATTR_MAPPINGS; -- OLAP Cube Attribute Mappings in the database that are accessible by the user
select * from SYS.ALL_CUBE_ATTR_UNIQUE_KEYS; -- OLAP Unique Key Attributes in the database that are accessible to the current user
select * from SYS.ALL_CUBE_ATTR_VISIBILITY; -- OLAP Attributes visible for Dimensions, Hierarchies, and Levels
select * from SYS.ALL_CUBE_BUILD_PROCESSES; -- OLAP Build Processes in the database accessible to the user
select * from SYS.ALL_CUBE_CALCULATED_MEMBERS; -- OLAP Calculated Members in the database accessible to the user
select * from SYS.ALL_CUBE_CLASSIFICATIONS; -- OLAP Object Classifications in the database that are accessible to the user
select * from SYS.ALL_CUBE_DEPENDENCIES; -- OLAP metadata dependencies in the database that are accessible to the current user
select * from SYS.ALL_CUBE_DESCRIPTIONS; -- OLAP Descriptions in the database that are accessible to the user
select * from SYS.ALL_CUBE_DIMENSIONALITY; -- OLAP Cube Dimensionality in the database accessible to the user
select * from SYS.ALL_CUBE_DIMENSIONS; -- OLAP Cube Dimensions in the database accessible by the user
select * from SYS.ALL_CUBE_DIMNL_MAPPINGS; -- OLAP Cube Dimenisonality Mappings in the database that are accessible to the user
select * from SYS.ALL_CUBE_DIM_LEVELS; -- OLAP Dimension Levels in the database accessible by the user
select * from SYS.ALL_CUBE_DIM_MAPPINGS; -- OLAP Cube Dimension Mappings in the database that are accessible to the user
select * from SYS.ALL_CUBE_DIM_MODELS; -- OLAP Dimension Models in the database accessible to the user
select * from SYS.ALL_CUBE_DIM_VIEWS; -- OLAP Dimension Views in the database accessible by the user
select * from SYS.ALL_CUBE_DIM_VIEW_COLUMNS; -- OLAP Dimension View Columns in the database accessible to the user
select * from SYS.ALL_CUBE_HIERARCHIES; -- OLAP Hierarchies in the database accessible by the user
select * from SYS.ALL_CUBE_HIER_LEVELS; -- OLAP Hierarchy Levels in the database accessible to the user
select * from SYS.ALL_CUBE_HIER_VIEWS; -- OLAP Hierarchy Views in the database accessible to the user
select * from SYS.ALL_CUBE_HIER_VIEW_COLUMNS; -- OLAP Hierarchy View Columns in the database accessible to the user
select * from SYS.ALL_CUBE_MAPPINGS; -- OLAP Cube Mappings in the database accessible to the user
select * from SYS.ALL_CUBE_MEASURES; -- OLAP Measures in the database accessible to the user
select * from SYS.ALL_CUBE_MEAS_MAPPINGS; -- OLAP Cube Measure Mappings in the database that are accessible to the user
select * from SYS.ALL_CUBE_NAMED_BUILD_SPECS; -- OLAP Cube Named Build Specifications in the database accessible by the user
select * from SYS.ALL_CUBE_SUB_PARTITION_LEVELS; -- 
select * from SYS.ALL_CUBE_VIEWS; -- OLAP Cube Views in the database accessible by the user
select * from SYS.ALL_CUBE_VIEW_COLUMNS; -- OLAP Cube View Columns in the database accessible by the user
select * from SYS.ALL_DB_LINKS; -- Database links accessible to the user
select * from SYS.ALL_DEF_AUDIT_OPTS; -- Auditing options for newly created objects
select * from SYS.ALL_DEPENDENCIES; -- Dependencies to and from objects accessible to the user
select * from SYS.ALL_DEQUEUE_QUEUES; -- All queues accessible to the user
select * from SYS.ALL_DIMENSIONS; -- Description of the dimension objects accessible to the DBA
select * from SYS.ALL_DIM_ATTRIBUTES; -- Representation of the relationship between a dimension level and  a functionally dependent column
select * from SYS.ALL_DIM_CHILD_OF; -- Representaion of a 1:n hierarchical relationship between a pair of levels in  a dimension
select * from SYS.ALL_DIM_HIERARCHIES; -- Representation of a dimension hierarchy
select * from SYS.ALL_DIM_JOIN_KEY; -- Representation of a join between two dimension tables. 
select * from SYS.ALL_DIM_LEVELS; -- Description of dimension levels visible to DBA
select * from SYS.ALL_DIM_LEVEL_KEY; -- Representations of columns of a dimension level
select * from SYS.ALL_DIRECTORIES; -- Description of all directories accessible to the user
select * from SYS.ALL_EDITIONING_VIEWS; -- Description of Editioning Views accessible to the user
select * from SYS.ALL_EDITIONING_VIEWS_AE; -- Description of Editioning Views accessible to the user
select * from SYS.ALL_EDITIONING_VIEW_COLS; -- Relationship between columns of Editioning Views accessible to the user and the table columns to which they map
select * from SYS.ALL_EDITIONING_VIEW_COLS_AE; -- Relationship between columns of Editioning Views accessible to the user and the table columns to which they map
select * from SYS.ALL_EDITIONS; -- Describes all editions in the database
select * from SYS.ALL_EDITION_COMMENTS; -- Describes comments on all editions in the database
select * from SYS.ALL_EDITION_INHERITED_OBJECTS; -- Objects accessible to the user
select * from SYS.ALL_ENCRYPTED_COLUMNS; -- Encryption information on all accessible columns
select * from SYS.ALL_ERRORS; -- Current errors on stored objects that user is allowed to create
select * from SYS.ALL_ERRORS_AE; -- Current errors on stored objects that user is allowed to create
select * from SYS.ALL_ERROR_TRANSLATIONS; -- Describes all error translations accessible to the user
select * from SYS.ALL_EVALUATION_CONTEXTS; -- rule evaluation contexts seen by user
select * from SYS.ALL_EVALUATION_CONTEXT_TABLES; -- tables in all rule evaluation contexts seen by the user
select * from SYS.ALL_EVALUATION_CONTEXT_VARS; -- variables in all rule evaluation contexts seen by the user
select * from SYS.ALL_EXPRESSION_STATISTICS; -- Expression Usage Tracking Statistics
select * from SYS.ALL_EXTERNAL_LOCATIONS; -- Description of the external tables locations accessible to the user
select * from SYS.ALL_EXTERNAL_TABLES; -- Description of the external tables accessible to the user
select * from SYS.ALL_FILE_GROUPS; -- Details about file groups
select * from SYS.ALL_FILE_GROUP_EXPORT_INFO; -- Details about export information of file group versions
select * from SYS.ALL_FILE_GROUP_FILES; -- Details about file group files
select * from SYS.ALL_FILE_GROUP_TABLES; -- Details about the tables in the file group repository
select * from SYS.ALL_FILE_GROUP_TABLESPACES; -- Details about the transportable tablespaces in the file group repository
select * from SYS.ALL_FILE_GROUP_VERSIONS; -- Details about file group versions
select * from SYS.ALL_GG_AUTO_CDR_COLUMNS; -- Details about goldengate auto cdr columns
select * from SYS.ALL_GG_AUTO_CDR_COLUMN_GROUPS; -- Details about goldengate auto cdr column groups
select * from SYS.ALL_GG_AUTO_CDR_TABLES; -- Details about goldengate auto cdr tables
select * from SYS.ALL_HEAT_MAP_SEGMENT; -- Users segment last access time
select * from SYS.ALL_HEAT_MAP_SEG_HISTOGRAM; -- Segment access information for all segments visible to the user
select * from SYS.ALL_HIERARCHIES; -- Hierarchies in the database
select * from SYS.ALL_HIERARCHIES_AE; -- Hierarchies in the database
select * from SYS.ALL_HIER_CLASS; -- Hierarchy classifications in the database
select * from SYS.ALL_HIER_CLASS_AE; -- Hierarchy classifications in the database
select * from SYS.ALL_HIER_COLUMNS; -- Hierarchy columns in the database
select * from SYS.ALL_HIER_COLUMNS_AE; -- Hierarchy columns in the database
select * from SYS.ALL_HIER_HIER_ATTRIBUTES; -- attribute dimension Attributes in the database
select * from SYS.ALL_HIER_HIER_ATTRIBUTES_AE; -- attribute dimension Attributes in the database
select * from SYS.ALL_HIER_HIER_ATTR_CLASS; -- Hierarchical attribute classifications in the database
select * from SYS.ALL_HIER_HIER_ATTR_CLASS_AE; -- Hierarchical attribute classifications in the database
select * from SYS.ALL_HIER_JOIN_PATHS; -- Hierarchy join paths in the database
select * from SYS.ALL_HIER_JOIN_PATHS_AE; -- Hierarchy join paths in the database
select * from SYS.ALL_HIER_LEVELS; -- Hierarchy levels in the database
select * from SYS.ALL_HIER_LEVELS_AE; -- Hierarchy levels in the database
select * from SYS.ALL_HIER_LEVEL_ID_ATTRS; -- Hierarchy Level ID Attributes in the database
select * from SYS.ALL_HIER_LEVEL_ID_ATTRS_AE; -- Hierarchy Level ID Attributes in the database
select * from SYS.ALL_HIVE_COLUMNS; -- All hive columns in the given database
select * from SYS.ALL_HIVE_DATABASES; -- All hive schemas in the given hadoop cluster
select * from SYS.ALL_HIVE_PART_KEY_COLUMNS; -- ALL hive table partition columns
select * from SYS.ALL_HIVE_TABLES; -- All hive tables in the given database
select * from SYS.ALL_HIVE_TAB_PARTITIONS; -- All hive table partitions
select * from SYS.ALL_IDENTIFIERS; -- All identifiers in stored objects accessible to the user
select * from SYS.ALL_IMMUTABLE_TABLES; -- 
select * from SYS.ALL_INDEXES; -- Descriptions of indexes on tables accessible to the user
select * from SYS.ALL_INDEXTYPES; -- All indextypes available to the user
select * from SYS.ALL_INDEXTYPE_ARRAYTYPES; -- All array types specified by the indextype
select * from SYS.ALL_INDEXTYPE_COMMENTS; -- Comments for user-defined indextypes
select * from SYS.ALL_INDEXTYPE_OPERATORS; -- All operators available to the user
select * from SYS.ALL_IND_COLUMNS; -- COLUMNs comprising INDEXes on accessible TABLES
select * from SYS.ALL_IND_EXPRESSIONS; -- FUNCTIONAL INDEX EXPRESSIONs on accessible TABLES
select * from SYS.ALL_IND_PARTITIONS; -- 
select * from SYS.ALL_IND_PENDING_STATS; -- Pending statistics of indexes, partitions, and subpartitions
select * from SYS.ALL_IND_STATISTICS; -- Optimizer statistics for all indexes on tables accessible to the user
select * from SYS.ALL_IND_SUBPARTITIONS; -- 
select * from SYS.ALL_INTERNAL_TRIGGERS; -- Description of the internal triggers on the tables accessible to the user
select * from SYS.ALL_INT_DEQUEUE_QUEUES; -- All queues accessible to the user
select * from SYS.ALL_JAVA_ARGUMENTS; -- argument information for java classes accessible to the current user
select * from SYS.ALL_JAVA_CLASSES; -- class level information for java classes accessible to the current user
select * from SYS.ALL_JAVA_COMPILER_OPTIONS; -- native-compiler options applicable to user
select * from SYS.ALL_JAVA_DERIVATIONS; -- this view maps java source objects and their derived java class objects and java resource objects  for the java class accessible to user
select * from SYS.ALL_JAVA_FIELDS; -- field information for java classes accessible to the current user
select * from SYS.ALL_JAVA_IMPLEMENTS; -- interfaces implemented by java classes accessible to the current user
select * from SYS.ALL_JAVA_INNERS; -- list of inner classes referenced by a java class accessible to user
select * from SYS.ALL_JAVA_LAYOUTS; -- class layout information for java classes accessible to the current user
select * from SYS.ALL_JAVA_METHODS; -- method information for java classes accessible the current user
select * from SYS.ALL_JAVA_NCOMPS; -- ncomp related information of all java classes
select * from SYS.ALL_JAVA_RESOLVERS; -- resolver of java class owned by user
select * from SYS.ALL_JAVA_THROWS; -- list of exceptions thrown from methods of classes accessible to the current user
select * from SYS.ALL_JOIN_IND_COLUMNS; -- Join Index columns comprising the join conditions
select * from SYS.ALL_JSON_COLUMNS; -- Comments on the JSON columns accessible to the user
select * from SYS.ALL_JSON_DATAGUIDES; -- 
select * from SYS.ALL_JSON_DATAGUIDE_FIELDS; -- 
select * from SYS.ALL_LIBRARIES; -- Description of libraries accessible to the user
select * from SYS.ALL_LOBS; -- Description of LOBs contained in tables accessible to the user
select * from SYS.ALL_LOB_PARTITIONS; -- 
select * from SYS.ALL_LOB_SUBPARTITIONS; -- 
select * from SYS.ALL_LOB_TEMPLATES; -- 
select * from SYS.ALL_LOG_GROUPS; -- Log group definitions on accessible tables
select * from SYS.ALL_LOG_GROUP_COLUMNS; -- Information about columns in log group definitions
select * from SYS.ALL_MEASURE_FOLDERS; -- OLAP Measure Folders in the database accessible to the user
select * from SYS.ALL_MEASURE_FOLDER_CONTENTS; -- OLAP Measure Folder Contents in the database accessible by the user
select * from SYS.ALL_MEASURE_FOLDER_SUBFOLDERS; -- OLAP Measure Folders contained within the OLAP Measure Folders accessible to the user
select * from SYS.ALL_METADATA_PROPERTIES; -- OLAP Metadata Properties in the database
select * from SYS.ALL_METHOD_PARAMS; -- Description of method parameters of types accessible to the user
select * from SYS.ALL_METHOD_RESULTS; -- Description of method results of types accessible to the user
select * from SYS.ALL_MINING_ALGORITHMS; -- 
select * from SYS.ALL_MINING_MODELS; -- Description of the models accessible to the user
select * from SYS.ALL_MINING_MODEL_ATTRIBUTES; -- Description of all the model attributes accessible to the user
select * from SYS.ALL_MINING_MODEL_PARTITIONS; -- Description of all the partitions accessible to the user
select * from SYS.ALL_MINING_MODEL_SETTINGS; -- Description of all the settings accessible to the user
select * from SYS.ALL_MINING_MODEL_VIEWS; -- Description of all the model views accessible to the user
select * from SYS.ALL_MINING_MODEL_XFORMS; -- User-specified transformations embedded in all models accessible to the user
select * from SYS.ALL_MVIEWS; -- All materialized views in the database
select * from SYS.ALL_MVIEW_AGGREGATES; -- Description of the materialized view aggregates accessible to the user
select * from SYS.ALL_MVIEW_ANALYSIS; -- Description of the materialized views accessible to the user
select * from SYS.ALL_MVIEW_COMMENTS; -- Comments on materialized views accessible to the user
select * from SYS.ALL_MVIEW_DETAIL_PARTITION; -- Freshness information of all PCT materialized views in the database
select * from SYS.ALL_MVIEW_DETAIL_RELATIONS; -- Description of the materialized view detail tables accessible to the user
select * from SYS.ALL_MVIEW_DETAIL_SUBPARTITION; -- Freshness information of all PCT materialized views in the database
select * from SYS.ALL_MVIEW_JOINS; -- Description of a join between two columns in the WHERE clause of a materialized view accessible to the user
select * from SYS.ALL_MVIEW_KEYS; -- Description of the columns that appear in the GROUP BY list of a materialized view accessible to the user
select * from SYS.ALL_MVIEW_LOGS; -- All materialized view logs in the database that the user can see
select * from SYS.ALL_MVIEW_REFRESH_TIMES; -- Materialized views and their last refresh times  for each master table that the user can look at
select * from SYS.ALL_NESTED_TABLES; -- Description of nested tables in tables accessible to the user
select * from SYS.ALL_NESTED_TABLE_COLS; -- Columns of nested tables
select * from SYS.ALL_OBJECTS; -- Objects accessible to the user
select * from SYS.ALL_OBJECTS_AE; -- Objects accessible to the user
select * from SYS.ALL_OBJECT_TABLES; -- Description of all object tables accessible to the user
select * from SYS.ALL_OBJ_COLATTRS; -- Description of object columns and attributes contained in the tables accessible to the user
select * from SYS.ALL_OPANCILLARY; -- All ancillary operators available to the user
select * from SYS.ALL_OPARGUMENTS; -- All arguments of the operators available to the user
select * from SYS.ALL_OPBINDINGS; -- All binding functions for operators available to the user
select * from SYS.ALL_OPERATORS; -- All operators available to the user
select * from SYS.ALL_OPERATOR_COMMENTS; -- Comments for user-defined operators
select * from SYS.ALL_PARTIAL_DROP_TABS; -- All tables with patially dropped columns accessible to the user
select * from SYS.ALL_PART_COL_STATISTICS; -- 
select * from SYS.ALL_PART_HISTOGRAMS; -- 
select * from SYS.ALL_PART_INDEXES; -- 
select * from SYS.ALL_PART_KEY_COLUMNS; -- 
select * from SYS.ALL_PART_LOBS; -- 
select * from SYS.ALL_PART_TABLES; -- 
select * from SYS.ALL_PENDING_CONV_TABLES; -- All tables accessible to the user which are not upgraded to the latest type version
select * from SYS.ALL_PLSQL_COLL_TYPES; -- Description of named plsql collection types accessible to the user
select * from SYS.ALL_PLSQL_OBJECT_SETTINGS; -- Compiler settings of stored objects accessible to the user
select * from SYS.ALL_PLSQL_TYPES; -- Description of types accessible to the user
select * from SYS.ALL_PLSQL_TYPE_ATTRS; -- Description of attributes of types accessible to the user
select * from SYS.ALL_POLICIES; -- All policies for objects if the user has system privileges or owns the objects
select * from SYS.ALL_POLICY_ATTRIBUTES; -- All attribute associations of context sensitive and shared context sensitive policies for objects if the user has system privileges or owns the objects
select * from SYS.ALL_POLICY_CONTEXTS; -- All policy driving context defined for all synonyms, tables, or views accessable to the user
select * from SYS.ALL_POLICY_GROUPS; -- All policy groups defined for any synonym, table or view accessable to the user
select * from SYS.ALL_PROBE_OBJECTS; -- 
select * from SYS.ALL_PROCEDURES; -- Functions/procedures/packages/types/triggers available to the user
select * from SYS.ALL_PROPAGATION; -- Streams propagation seen by the user
select * from SYS.ALL_QUEUES; -- All queues accessible to the user
select * from SYS.ALL_QUEUE_PUBLISHERS; -- 
select * from SYS.ALL_QUEUE_SCHEDULES; -- 
select * from SYS.ALL_QUEUE_SUBSCRIBERS; -- All queue subscribers accessible to user
select * from SYS.ALL_QUEUE_TABLES; -- All queue tables accessible to the user
select * from SYS.ALL_REFRESH; -- All the refresh groups that the user can touch
select * from SYS.ALL_REFRESH_CHILDREN; -- All the objects in refresh groups, where the user can touch the group
select * from SYS.ALL_REFRESH_DEPENDENCIES; -- Description of the detail tables that materialized views depend on for refresh
select * from SYS.ALL_REFS; -- Description of REF columns contained in tables accessible to the user
select * from SYS.ALL_REGISTERED_MVIEWS; -- Remote materialized views of local tables that the user can see
select * from SYS.ALL_REGISTERED_SNAPSHOTS; -- Remote snapshots of local tables that the user can see
select * from SYS.ALL_REGISTRY_BANNERS; -- 
select * from SYS.ALL_REPL_DBNAME_MAPPING; -- Details about the database name mapping
select * from SYS.ALL_REWRITE_EQUIVALENCES; -- Description of all rewrite equivalence accessible to the user
select * from SYS.ALL_RULES; -- Rules seen by the user
select * from SYS.ALL_RULESETS; -- Rulesets seen by the user: maintained for backward compatibility
select * from SYS.ALL_RULE_SETS; -- Rule sets seen by the user
select * from SYS.ALL_RULE_SET_RULES; -- Rules in all rule sets seen by the user
select * from SYS.ALL_SCHEDULER_CHAINS; -- All scheduler chains in the database visible to current user
select * from SYS.ALL_SCHEDULER_CHAIN_RULES; -- All rules from scheduler chains visible to the current user
select * from SYS.ALL_SCHEDULER_CHAIN_STEPS; -- All steps of scheduler chains visible to the current user
select * from SYS.ALL_SCHEDULER_CREDENTIALS; -- All scheduler credentials visible to the user
select * from SYS.ALL_SCHEDULER_DB_DESTS; -- User-visible destination objects in the database pointing to remote databases
select * from SYS.ALL_SCHEDULER_DESTS; -- All destination objects for jobs in the database visible to current user
select * from SYS.ALL_SCHEDULER_EXTERNAL_DESTS; -- User-visible destination objects in the database pointing to remote agents
select * from SYS.ALL_SCHEDULER_FILE_WATCHERS; -- Scheduler file watch requests visible to the current user
select * from SYS.ALL_SCHEDULER_GLOBAL_ATTRIBUTE; -- All scheduler global attributes
select * from SYS.ALL_SCHEDULER_GROUPS; -- All scheduler object groups visible to current user
select * from SYS.ALL_SCHEDULER_GROUP_MEMBERS; -- Members of all scheduler object groups visible to current user
select * from SYS.ALL_SCHEDULER_INCOMPATS; -- All scheduler incompatibility resource objects in the database
select * from SYS.ALL_SCHEDULER_INCOMPAT_MEMBER; -- All incompatibility resource objects members in the database
select * from SYS.ALL_SCHEDULER_JOBS; -- All scheduler jobs visible to the user
select * from SYS.ALL_SCHEDULER_JOB_ARGS; -- All arguments with set values of all scheduler jobs in the database
select * from SYS.ALL_SCHEDULER_JOB_CLASSES; -- All scheduler classes visible to the user
select * from SYS.ALL_SCHEDULER_JOB_DESTS; -- State of all jobs visible to current user at each of their destinations
select * from SYS.ALL_SCHEDULER_JOB_LOG; -- Logged information for all scheduler jobs
select * from SYS.ALL_SCHEDULER_JOB_RUN_DETAILS; -- The details of a job run
select * from SYS.ALL_SCHEDULER_NOTIFICATIONS; -- All job e-mail notifications visible to the current user
select * from SYS.ALL_SCHEDULER_PROGRAMS; -- All scheduler programs visible to the user
select * from SYS.ALL_SCHEDULER_PROGRAM_ARGS; -- All arguments of all scheduler programs visible to the user
select * from SYS.ALL_SCHEDULER_REMOTE_DATABASES; -- 
select * from SYS.ALL_SCHEDULER_REMOTE_JOBSTATE; -- Remote state of all jobs originating from this database visible to current user
select * from SYS.ALL_SCHEDULER_RESOURCES; -- All scheduler resource objects in the database
select * from SYS.ALL_SCHEDULER_RSC_CONSTRAINTS; -- All scheduler resource constraint members in the database
select * from SYS.ALL_SCHEDULER_RUNNING_CHAINS; -- All job steps of running job chains visible to the user
select * from SYS.ALL_SCHEDULER_RUNNING_JOBS; -- 
select * from SYS.ALL_SCHEDULER_SCHEDULES; -- All schedules in the database
select * from SYS.ALL_SCHEDULER_WINDOWS; -- All scheduler windows in the database
select * from SYS.ALL_SCHEDULER_WINDOW_DETAILS; -- The details of a window
select * from SYS.ALL_SCHEDULER_WINDOW_GROUPS; -- All scheduler window groups in the database
select * from SYS.ALL_SCHEDULER_WINDOW_LOG; -- Logged information for all scheduler windows
select * from SYS.ALL_SCHEDULER_WINGROUP_MEMBERS; -- Members of all scheduler window groups in the database
select * from SYS.ALL_SECONDARY_OBJECTS; -- All secondary objects for domain indexes
select * from SYS.ALL_SEC_RELEVANT_COLS; -- Security Relevant columns of all VPD policies for tables or views which the user has access
select * from SYS.ALL_SEQUENCES; -- Description of SEQUENCEs accessible to the user
select * from SYS.ALL_SNAPSHOTS; -- Snapshots the user can access
select * from SYS.ALL_SNAPSHOT_LOGS; -- All snapshot logs in the database that the user can see
select * from SYS.ALL_SOURCE; -- Current source on stored objects that user is allowed to create
select * from SYS.ALL_SOURCE_AE; -- Current source on stored objects that user is allowed to create
select * from SYS.ALL_SQLJ_TYPES; -- Description of types accessible to the user
select * from SYS.ALL_SQLJ_TYPE_ATTRS; -- Description of attributes of types accessible to the user
select * from SYS.ALL_SQLJ_TYPE_METHODS; -- Description of methods of types accessible to the user
select * from SYS.ALL_SQLSET; -- 
select * from SYS.ALL_SQLSET_BINDS; -- 
select * from SYS.ALL_SQLSET_PLANS; -- 
select * from SYS.ALL_SQLSET_REFERENCES; -- 
select * from SYS.ALL_SQLSET_STATEMENTS; -- 
select * from SYS.ALL_SQL_TRANSLATIONS; -- Describes all SQL translations accessible to the user
select * from SYS.ALL_SQL_TRANSLATION_PROFILES; -- Describes all SQL translation profiles accessible to the user
select * from SYS.ALL_STATEMENTS; -- All SQL statements in stored objects accessible to the user
select * from SYS.ALL_STAT_EXTENSIONS; -- Optimizer statistics extensions
select * from SYS.ALL_STORED_SETTINGS; -- Parameter settings for objects accessible to the user
select * from SYS.ALL_STREAMS_COLUMNS; -- Streams unsupported columns
select * from SYS.ALL_STREAMS_GLOBAL_RULES; -- Global rules created on the streams capture/apply/propagation process that interact with the queue visible to the current user
select * from SYS.ALL_STREAMS_MESSAGE_CONSUMERS; -- Streams messaging consumers visible to the current user
select * from SYS.ALL_STREAMS_MESSAGE_RULES; -- Rules for Streams messaging visible to the current user
select * from SYS.ALL_STREAMS_NEWLY_SUPPORTED; -- List of objects that are newly supported by Streams
select * from SYS.ALL_STREAMS_RULES; -- Rules used by streams processes
select * from SYS.ALL_STREAMS_SCHEMA_RULES; -- Rules created by streams administrative APIs on all user schemas
select * from SYS.ALL_STREAMS_TABLE_RULES; -- Rules created by streams administrative APIs on tables visible to the current user
select * from SYS.ALL_STREAMS_TRANSFORM_FUNCTION; -- Rules-based transform functions used by Streams
select * from SYS.ALL_STREAMS_UNSUPPORTED; -- List of all the tables that are not supported by Streams in this release
select * from SYS.ALL_SUBPARTITION_TEMPLATES; -- 
select * from SYS.ALL_SUBPART_COL_STATISTICS; -- 
select * from SYS.ALL_SUBPART_HISTOGRAMS; -- 
select * from SYS.ALL_SUBPART_KEY_COLUMNS; -- 
select * from SYS.ALL_SUMDELTA; -- Direct path load entries accessible to the user
select * from SYS.ALL_SUMMAP; -- mapping entries of transaction ID and commit SCN accessible to the user
select * from SYS.ALL_SUMMARIES; -- Description of the summaries accessible to the user
select * from SYS.ALL_SUMMARY_AGGREGATES; -- 
select * from SYS.ALL_SUMMARY_DETAIL_TABLES; -- 
select * from SYS.ALL_SUMMARY_JOINS; -- 
select * from SYS.ALL_SUMMARY_KEYS; -- 
select * from SYS.ALL_SYNC_CAPTURE_PREPARED_TABS; -- All tables prepared for synchronous capture instantiation
select * from SYS.ALL_SYNONYMS; -- All synonyms for base objects accessible to the user and session
select * from SYS.ALL_TABLES; -- Description of relational tables accessible to the user
select * from SYS.ALL_TAB_COLS; -- Columns of user's tables, views and clusters
select * from SYS.ALL_TAB_COLUMNS; -- Columns of user's tables, views and clusters
select * from SYS.ALL_TAB_COL_STATISTICS; -- Columns of user's tables, views and clusters
select * from SYS.ALL_TAB_COMMENTS; -- Comments on tables and views accessible to the user
select * from SYS.ALL_TAB_HISTGRM_PENDING_STATS; -- Pending statistics of tables, partitions, and subpartitions
select * from SYS.ALL_TAB_HISTOGRAMS; -- Histograms on columns of all tables visible to user
select * from SYS.ALL_TAB_IDENTITY_COLS; -- Describes all table identity columns
select * from SYS.ALL_TAB_MODIFICATIONS; -- Information regarding modifications to tables
select * from SYS.ALL_TAB_PARTITIONS; -- 
select * from SYS.ALL_TAB_PENDING_STATS; -- Pending statistics of tables, partitions, and subpartitions
select * from SYS.ALL_TAB_PRIVS; -- Grants on objects for which the user is the grantor, grantee, owner,  or an enabled role or PUBLIC is the grantee
select * from SYS.ALL_TAB_PRIVS_MADE; -- User's grants and grants on user's objects
select * from SYS.ALL_TAB_PRIVS_RECD; -- Grants on objects for which the user, PUBLIC or enabled role is the grantee
select * from SYS.ALL_TAB_STATISTICS; -- Optimizer statistics for all tables accessible to the user
select * from SYS.ALL_TAB_STATS_HISTORY; -- History of table statistics modifications
select * from SYS.ALL_TAB_STAT_PREFS; -- Statistics preferences for tables
select * from SYS.ALL_TAB_SUBPARTITIONS; -- 
select * from SYS.ALL_TRANSFORMATIONS; -- 
select * from SYS.ALL_TRIGGERS; -- Triggers accessible to the current user
select * from SYS.ALL_TRIGGERS_AE; -- Triggers accessible to the current user
select * from SYS.ALL_TRIGGER_COLS; -- Column usage in user's triggers or in triggers on user's tables
select * from SYS.ALL_TRIGGER_ORDERING; -- Triggers having FOLLOWS or PRECEDES ordering accessible to the current user
select * from SYS.ALL_TSTZ_TABLES; -- Description of tables accessible to the user, which have column(s) defined on timestamp with time zone data type or ADT type containing attribute(s) of timestamp with time zone data type
select * from SYS.ALL_TSTZ_TAB_COLS; -- Columns of user's tables, which have column(s) defined on timestamp with time zone data type or ADT type containing attribute(s) of timestamp with time zone data type
select * from SYS.ALL_TYPES; -- Description of types accessible to the user
select * from SYS.ALL_TYPE_ATTRS; -- Description of attributes of types accessible to the user
select * from SYS.ALL_TYPE_METHODS; -- Description of methods of types accessible to the user
select * from SYS.ALL_TYPE_VERSIONS; -- Description of each type version accessible to the user
select * from SYS.ALL_UNIFIED_AUDIT_ACTIONS; -- List of all actions audited in Unified Audit Trail
select * from SYS.ALL_UNUSED_COL_TABS; -- All tables with unused columns accessible to the user
select * from SYS.ALL_UPDATABLE_COLUMNS; -- Description of all updatable columns
select * from SYS.ALL_USERS; -- Information about all users of the database
select * from SYS.ALL_USTATS; -- All statistics
select * from SYS.ALL_VARRAYS; -- Description of varrays in tables accessible to the user
select * from SYS.ALL_VIEWS; -- Description of views accessible to the user
select * from SYS.ALL_VIEWS_AE; -- Description of views accessible to the user
select * from SYS.ALL_WARNING_SETTINGS; -- Warnings ettings for objects accessible to the user
select * from SYS.ALL_XDS_ACL_REFRESH; -- 
select * from SYS.ALL_XDS_ACL_REFSTAT; -- 
select * from SYS.ALL_XDS_LATEST_ACL_REFSTAT; -- 
select * from SYS.ALL_XMLTYPE_COLS; -- 
select * from SYS.ALL_XML_INDEXES; -- Description of the all XMLType indexes that the user has privileges on
select * from SYS.ALL_XML_NESTED_TABLES; -- 
select * from SYS.ALL_XML_OUT_OF_LINE_TABLES; -- 
select * from SYS.ALL_XML_SCHEMAS; -- Description of all XML Schemas that user has privilege to reference
select * from SYS.ALL_XML_SCHEMAS2; -- Dummy version of ALL_XML_SCHEMAS that does not have an XMLTYPE column
select * from SYS.ALL_XML_SCHEMA_ATTRIBUTES; -- 
select * from SYS.ALL_XML_SCHEMA_COMPLEX_TYPES; -- 
select * from SYS.ALL_XML_SCHEMA_ELEMENTS; -- 
select * from SYS.ALL_XML_SCHEMA_NAMESPACES; -- 
select * from SYS.ALL_XML_SCHEMA_SIMPLE_TYPES; -- 
select * from SYS.ALL_XML_SCHEMA_SUBSTGRP_HEAD; -- 
select * from SYS.ALL_XML_SCHEMA_SUBSTGRP_MBRS; -- 
select * from SYS.ALL_XML_TABLES; -- Description of the all XMLType tables that the user has privileges on
select * from SYS.ALL_XML_TAB_COLS; -- Description of the all XMLType tables that the user has privileges on
select * from SYS.ALL_XML_VIEWS; -- Description of the all XMLType views that the user has privileges on
select * from SYS.ALL_XML_VIEW_COLS; -- Description of the all XMLType views that the user has privileges on
select * from SYS.ALL_XS_ACES; -- All the Real Application Security ACES of the ACLs accessible to the current user
select * from SYS.ALL_XS_ACLS; -- All the Real Application Security ACLs accessible to the current user
select * from SYS.ALL_XS_ACL_PARAMETERS; -- All the Real Application Security ACL parameters defined in the data security policies accessbile to the current user
select * from SYS.ALL_XS_APPLICABLE_OBJECTS; -- All the tables or views to which the current user can apply data security policies
select * from SYS.ALL_XS_APPLIED_POLICIES; -- All the database objects on which Real Application Security data security policies accessible to the current user are enabled
select * from SYS.ALL_XS_COLUMN_CONSTRAINTS; -- All the Real Application Security column constraints accessible to the current user
select * from SYS.ALL_XS_IMPLIED_PRIVILEGES; -- All the Real Application Security implied privileges scoped by the security classes accessible to the current user
select * from SYS.ALL_XS_INHERITED_REALMS; -- All the Real Application Security inherited realms accessible to the current user
select * from SYS.ALL_XS_POLICIES; -- All the Real Application Security data security policies accessible to the current user
select * from SYS.ALL_XS_PRIVILEGES; -- All the Real Application Security privileges scoped by the security classes accessible to the current user
select * from SYS.ALL_XS_REALM_CONSTRAINTS; -- All the Real Application Security realms accessible to the current user
select * from SYS.ALL_XS_SECURITY_CLASSES; -- All the Real Application Security security classes accessible to the current user
select * from SYS.ALL_XS_SECURITY_CLASS_DEP; -- All the Real Application Security class dependencies of the security classes that are accessible to the current user
select * from SYS.ALL_XTERNAL_LOC_PARTITIONS; -- 
select * from SYS.ALL_XTERNAL_LOC_SUBPARTITIONS; -- 
select * from SYS.ALL_XTERNAL_PART_TABLES; -- 
select * from SYS.ALL_XTERNAL_TAB_PARTITIONS; -- 
select * from SYS.ALL_XTERNAL_TAB_SUBPARTITIONS; -- 
select * from SYS.ALL_XT_HIVE_TABLES_VALIDATION; -- ALL hive tables validation
select * from SYS.ALL_ZONEMAPS; -- Zonemaps accessible to the user
select * from SYS.ALL_ZONEMAP_MEASURES; -- Zonemap measures accessible to the user
