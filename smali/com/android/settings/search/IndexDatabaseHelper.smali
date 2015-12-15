.class public Lcom/android/settings/search/IndexDatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "IndexDatabaseHelper.java"


# static fields
.field private static sSingleton:Lcom/android/settings/search/IndexDatabaseHelper;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1    # Landroid/content/Context;

    const-string v0, "search_index.db"

    const/4 v1, 0x0

    const/16 v2, 0x73

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    iput-object p1, p0, Lcom/android/settings/search/IndexDatabaseHelper;->mContext:Landroid/content/Context;

    return-void
.end method

.method private bootstrapDB(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 7
    .param p1    # Landroid/database/sqlite/SQLiteDatabase;

    const/4 v6, 0x7

    const/4 v1, 0x0

    iget-object v3, p0, Lcom/android/settings/search/IndexDatabaseHelper;->mContext:Landroid/content/Context;

    const-string v4, "phone"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimSerialNumber()Ljava/lang/String;

    move-result-object v0

    :goto_0
    const-string v3, "CREATE VIRTUAL TABLE prefs_index USING fts4(locale, data_rank, data_title, data_title_normalized, data_summary_on, data_summary_on_normalized, data_summary_off, data_summary_off_normalized, data_entries, data_entries_normalized, data_keywords, screen_title, class_name, icon, intent_action, intent_target_package, intent_target_class, enabled, data_key_reference, user_id);"

    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v3, "CREATE TABLE meta_index(build VARCHAR(32) NOT NULL, somc_ext_version INTEGER, somc_sw_revision VARCHAR(32) NOT NULL, somc_cdf_version VARCHAR(32) NOT NULL, somc_cdf_revision VARCHAR(32) NOT NULL, somc_cdf_active VARCHAR(32) NOT NULL, somc_sim_serial_number VARCHAR(32), somc_indexing_successful VARCHAR(32) NOT NULL)"

    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v3, "CREATE TABLE saved_queries(query VARCHAR(64) NOT NULL, timestamp INTEGER)"

    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v3, "INSERT INTO meta_index(build, somc_ext_version, somc_sw_revision, somc_cdf_version, somc_cdf_revision, somc_cdf_active, somc_sim_serial_number, somc_indexing_successful) VALUES (?,?,?,?,?,?,?,?)"

    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v1

    const/4 v3, 0x1

    sget-object v4, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    const/4 v3, 0x2

    const-wide/16 v4, 0x4

    invoke-virtual {v1, v3, v4, v5}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    const/4 v3, 0x3

    const-string v4, "ro.semc.version.sw_revision"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    const/4 v3, 0x4

    const-string v4, "ro.semc.version.cust"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    const/4 v3, 0x5

    const-string v4, "ro.semc.version.cust_revision"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    const/4 v3, 0x6

    const-string v4, "ro.semc.version.cust.active"

    const-string v5, "unknow"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    if-eqz v0, :cond_1

    invoke-virtual {v1, v6, v0}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    :goto_1
    const/16 v3, 0x8

    const-string v4, "true"

    invoke-virtual {v1, v3, v4}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->close()V

    const-string v3, "IndexDatabaseHelper"

    const-string v4, "Bootstrapped database"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {v1, v6}, Landroid/database/sqlite/SQLiteStatement;->bindNull(I)V

    goto :goto_1
.end method

.method private dropTables(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1    # Landroid/database/sqlite/SQLiteDatabase;

    const-string v0, "DROP TABLE IF EXISTS meta_index"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "DROP TABLE IF EXISTS prefs_index"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "DROP TABLE IF EXISTS saved_queries"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method private getBuildVersion(Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/String;
    .locals 5
    .param p1    # Landroid/database/sqlite/SQLiteDatabase;

    const/4 v2, 0x0

    const/4 v0, 0x0

    :try_start_0
    const-string v3, "SELECT build FROM meta_index LIMIT 1;"

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    :cond_0
    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_1
    :goto_0
    return-object v2

    :catch_0
    move-exception v1

    :try_start_1
    const-string v3, "IndexDatabaseHelper"

    const-string v4, "Cannot get build version from Index metadata"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v3

    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v3
.end method

.method private getExtVersion(Landroid/database/sqlite/SQLiteDatabase;)I
    .locals 5
    .param p1    # Landroid/database/sqlite/SQLiteDatabase;

    const/4 v2, 0x0

    const/4 v0, 0x0

    :try_start_0
    const-string v3, "SELECT somc_ext_version FROM meta_index LIMIT 1;"

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    :cond_0
    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_1
    :goto_0
    return v2

    :catch_0
    move-exception v1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v3

    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v3
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/android/settings/search/IndexDatabaseHelper;
    .locals 2
    .param p0    # Landroid/content/Context;

    const-class v1, Lcom/android/settings/search/IndexDatabaseHelper;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/settings/search/IndexDatabaseHelper;->sSingleton:Lcom/android/settings/search/IndexDatabaseHelper;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/settings/search/IndexDatabaseHelper;

    invoke-direct {v0, p0}, Lcom/android/settings/search/IndexDatabaseHelper;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/settings/search/IndexDatabaseHelper;->sSingleton:Lcom/android/settings/search/IndexDatabaseHelper;

    :cond_0
    sget-object v0, Lcom/android/settings/search/IndexDatabaseHelper;->sSingleton:Lcom/android/settings/search/IndexDatabaseHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private isLastIndexingSuccessful(Landroid/database/sqlite/SQLiteDatabase;)Z
    .locals 4
    .param p1    # Landroid/database/sqlite/SQLiteDatabase;

    const/4 v1, 0x1

    const/4 v0, 0x0

    :try_start_0
    const-string v2, "SELECT somc_indexing_successful FROM meta_index LIMIT 1;"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    :cond_0
    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_1
    :goto_0
    return v1

    :catch_0
    move-exception v2

    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v2

    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v2
.end method

.method private isSimChanged(Ljava/lang/String;)Z
    .locals 7
    .param p1    # Ljava/lang/String;

    const/4 v3, 0x1

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/settings/search/IndexDatabaseHelper;->mContext:Landroid/content/Context;

    const-string v6, "phone"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    if-nez v2, :cond_0

    :goto_0
    return v4

    :cond_0
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimSerialNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v5

    if-ne v5, v3, :cond_3

    move v0, v3

    :goto_1
    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    const-string v5, "null"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    :cond_1
    if-nez v0, :cond_4

    if-eqz v1, :cond_4

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    :cond_2
    :goto_2
    move v4, v3

    goto :goto_0

    :cond_3
    move v0, v4

    goto :goto_1

    :cond_4
    move v3, v4

    goto :goto_2
.end method

.method private reconstruct(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .param p1    # Landroid/database/sqlite/SQLiteDatabase;

    invoke-direct {p0, p1}, Lcom/android/settings/search/IndexDatabaseHelper;->dropTables(Landroid/database/sqlite/SQLiteDatabase;)V

    invoke-direct {p0, p1}, Lcom/android/settings/search/IndexDatabaseHelper;->bootstrapDB(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method


# virtual methods
.method protected isSomcPartUpdated(Landroid/database/sqlite/SQLiteDatabase;)Z
    .locals 16
    .param p1    # Landroid/database/sqlite/SQLiteDatabase;

    const/4 v6, 0x0

    const-string v14, "ro.semc.version.sw_revision"

    invoke-static {v14}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v14, "ro.semc.version.cust"

    invoke-static {v14}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v14, "ro.semc.version.cust_revision"

    invoke-static {v14}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v14, "ro.semc.version.cust.active"

    const-string v15, "unknow"

    invoke-static {v14, v15}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/search/IndexDatabaseHelper;->mContext:Landroid/content/Context;

    const-string v15, "phone"

    invoke-virtual {v14, v15}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/telephony/TelephonyManager;

    const/4 v4, 0x0

    :try_start_0
    const-string v14, "SELECT somc_sw_revision, somc_cdf_version, somc_cdf_revision, somc_cdf_active, somc_sim_serial_number FROM meta_index LIMIT 1;"

    const/4 v15, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v15}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v14

    if-eqz v14, :cond_0

    const-string v14, "somc_sw_revision"

    invoke-interface {v4, v14}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    invoke-interface {v4, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    const-string v14, "somc_cdf_version"

    invoke-interface {v4, v14}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    invoke-interface {v4, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v14, "somc_cdf_revision"

    invoke-interface {v4, v14}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    invoke-interface {v4, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v14, "somc_cdf_active"

    invoke-interface {v4, v14}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    invoke-interface {v4, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v14, "somc_sim_serial_number"

    invoke-interface {v4, v14}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    invoke-interface {v4, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_2

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_2

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_2

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_2

    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/android/settings/search/IndexDatabaseHelper;->isSimChanged(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v14

    if-nez v14, :cond_2

    const/4 v6, 0x1

    :cond_0
    :goto_0
    if-eqz v4, :cond_1

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    :cond_1
    :goto_1
    return v6

    :cond_2
    const/4 v6, 0x0

    goto :goto_0

    :catch_0
    move-exception v5

    :try_start_1
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v4, :cond_1

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_0
    move-exception v14

    if-eqz v4, :cond_3

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v14
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .param p1    # Landroid/database/sqlite/SQLiteDatabase;

    invoke-direct {p0, p1}, Lcom/android/settings/search/IndexDatabaseHelper;->bootstrapDB(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method public onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 3
    .param p1    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2    # I
    .param p3    # I

    const-string v0, "IndexDatabaseHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Detected schema version \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Index needs to be rebuilt for schema version \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/android/settings/search/IndexDatabaseHelper;->reconstruct(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method public onOpen(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3
    .param p1    # Landroid/database/sqlite/SQLiteDatabase;

    invoke-super {p0, p1}, Landroid/database/sqlite/SQLiteOpenHelper;->onOpen(Landroid/database/sqlite/SQLiteDatabase;)V

    const-string v0, "IndexDatabaseHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Using schema version: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->getVersion()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/android/settings/search/IndexDatabaseHelper;->getBuildVersion(Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "IndexDatabaseHelper"

    const-string v1, "Index needs to be rebuilt as build-version is not the same"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/android/settings/search/IndexDatabaseHelper;->reconstruct(Landroid/database/sqlite/SQLiteDatabase;)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x4

    invoke-direct {p0, p1}, Lcom/android/settings/search/IndexDatabaseHelper;->getExtVersion(Landroid/database/sqlite/SQLiteDatabase;)I

    move-result v1

    if-eq v0, v1, :cond_1

    const-string v0, "IndexDatabaseHelper"

    const-string v1, "Index needs to be rebuilt as ext-version is not the same"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/android/settings/search/IndexDatabaseHelper;->reconstruct(Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/settings/search/IndexDatabaseHelper;->isSomcPartUpdated(Landroid/database/sqlite/SQLiteDatabase;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "IndexDatabaseHelper"

    const-string v1, "Index needs to be rebuilt as the software has been updated"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/android/settings/search/IndexDatabaseHelper;->reconstruct(Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_0

    :cond_2
    invoke-direct {p0, p1}, Lcom/android/settings/search/IndexDatabaseHelper;->isLastIndexingSuccessful(Landroid/database/sqlite/SQLiteDatabase;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "IndexDatabaseHelper"

    const-string v1, "Index needs to be rebuilt as the last indexing was not complete"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/android/settings/search/IndexDatabaseHelper;->reconstruct(Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_0

    :cond_3
    const-string v0, "IndexDatabaseHelper"

    const-string v1, "Index is fine"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 3
    .param p1    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2    # I
    .param p3    # I

    const/16 v0, 0x73

    if-ge p2, v0, :cond_0

    const-string v0, "IndexDatabaseHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Detected schema version \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Index needs to be rebuilt for schema version \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/android/settings/search/IndexDatabaseHelper;->reconstruct(Landroid/database/sqlite/SQLiteDatabase;)V

    :cond_0
    return-void
.end method

.method public setLastIndexingSuccessful(Landroid/database/sqlite/SQLiteDatabase;Z)V
    .locals 4
    .param p1    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2    # Z

    const/4 v3, 0x0

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "somc_indexing_successful"

    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "meta_index"

    invoke-virtual {p1, v1, v0, v3, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method
