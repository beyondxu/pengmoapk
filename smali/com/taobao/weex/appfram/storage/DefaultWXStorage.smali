###### Class com.taobao.weex.appfram.storage.DefaultWXStorage (com.taobao.weex.appfram.storage.DefaultWXStorage)
.class public Lcom/taobao/weex/appfram/storage/DefaultWXStorage;
.super Ljava/lang/Object;
.source "r8-map-id-b4716a25f9920722ba6f2d7f7c6f40e43a654927e8ebe1c489894a7bc6a88ab4"

# interfaces
.implements Lcom/taobao/weex/appfram/storage/IWXStorageAdapter;


# instance fields
.field private mDatabaseSupplier:Lcom/taobao/weex/appfram/storage/WXSQLiteOpenHelper;

.field private mExecutorService:Ljava/util/concurrent/ExecutorService;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/taobao/weex/appfram/storage/WXSQLiteOpenHelper;

    invoke-direct {v0, p1}, Lcom/taobao/weex/appfram/storage/WXSQLiteOpenHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/taobao/weex/appfram/storage/DefaultWXStorage;->mDatabaseSupplier:Lcom/taobao/weex/appfram/storage/WXSQLiteOpenHelper;

    return-void
.end method

.method static synthetic access$000(Lcom/taobao/weex/appfram/storage/DefaultWXStorage;Ljava/lang/String;Ljava/lang/String;ZZ)Z
    .registers 5

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/taobao/weex/appfram/storage/DefaultWXStorage;->performSetItem(Ljava/lang/String;Ljava/lang/String;ZZ)Z

    move-result p0

    return p0
.end method

.method static synthetic access$100(Lcom/taobao/weex/appfram/storage/DefaultWXStorage;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/taobao/weex/appfram/storage/DefaultWXStorage;->performGetItem(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lcom/taobao/weex/appfram/storage/DefaultWXStorage;Ljava/lang/String;)Z
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/taobao/weex/appfram/storage/DefaultWXStorage;->performRemoveItem(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$300(Lcom/taobao/weex/appfram/storage/DefaultWXStorage;)J
    .registers 3

    .line 1
    invoke-direct {p0}, Lcom/taobao/weex/appfram/storage/DefaultWXStorage;->performGetLength()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$400(Lcom/taobao/weex/appfram/storage/DefaultWXStorage;)Ljava/util/List;
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/taobao/weex/appfram/storage/DefaultWXStorage;->performGetAllKeys()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$500(Lcom/taobao/weex/appfram/storage/DefaultWXStorage;)Lcom/taobao/weex/appfram/storage/WXSQLiteOpenHelper;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/taobao/weex/appfram/storage/DefaultWXStorage;->mDatabaseSupplier:Lcom/taobao/weex/appfram/storage/WXSQLiteOpenHelper;

    return-object p0
.end method

.method private execute(Ljava/lang/Runnable;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/taobao/weex/appfram/storage/DefaultWXStorage;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_a

    .line 2
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/weex/appfram/storage/DefaultWXStorage;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    :cond_a
    if-eqz p1, :cond_25

    .line 5
    iget-object v0, p0, Lcom/taobao/weex/appfram/storage/DefaultWXStorage;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    if-nez v0, :cond_25

    iget-object v0, p0, Lcom/taobao/weex/appfram/storage/DefaultWXStorage;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isTerminated()Z

    move-result v0

    if-nez v0, :cond_25

    .line 6
    iget-object v0, p0, Lcom/taobao/weex/appfram/storage/DefaultWXStorage;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    invoke-static {p1}, Lcom/taobao/weex/common/WXThread;->secure(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_25
    return-void
.end method

.method private performGetAllKeys()Ljava/util/List;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/taobao/weex/appfram/storage/DefaultWXStorage;->mDatabaseSupplier:Lcom/taobao/weex/appfram/storage/WXSQLiteOpenHelper;

    invoke-virtual {v0}, Lcom/taobao/weex/appfram/storage/WXSQLiteOpenHelper;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    if-nez v1, :cond_a

    const/4 v0, 0x0

    return-object v0

    .line 6
    :cond_a
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 7
    const-string v0, "key"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v3

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v2, "default_wx_storage"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 9
    :goto_20
    :try_start_20
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_32

    .line 10
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v9, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_31} :catch_38
    .catchall {:try_start_20 .. :try_end_31} :catchall_36

    goto :goto_20

    .line 17
    :cond_32
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    return-object v9

    :catchall_36
    move-exception v0

    goto :goto_58

    :catch_38
    move-exception v0

    .line 18
    :try_start_39
    const-string/jumbo v2, "weex_storage"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DefaultWXStorage occurred an exception when execute getAllKeys:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_54
    .catchall {:try_start_39 .. :try_end_54} :catchall_36

    .line 21
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    return-object v9

    .line 22
    :goto_58
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 23
    throw v0
.end method

.method private performGetItem(Ljava/lang/String;)Ljava/lang/String;
    .registers 15

    const-string/jumbo v1, "weex_storage"

    const-string/jumbo v0, "update timestamp "

    const-string v2, "DefaultWXStorage occurred an exception when execute getItem:"

    .line 1
    iget-object v3, p0, Lcom/taobao/weex/appfram/storage/DefaultWXStorage;->mDatabaseSupplier:Lcom/taobao/weex/appfram/storage/WXSQLiteOpenHelper;

    invoke-virtual {v3}, Lcom/taobao/weex/appfram/storage/WXSQLiteOpenHelper;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    const/4 v3, 0x0

    if-nez v4, :cond_12

    return-object v3

    .line 6
    :cond_12
    const-string/jumbo v12, "value"

    filled-new-array {v12}, [Ljava/lang/String;

    move-result-object v6

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v8

    const/4 v10, 0x0

    const/4 v11, 0x0

    const-string v5, "default_wx_storage"

    const-string v7, "key=?"

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    .line 12
    :try_start_28
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_87

    .line 13
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 15
    const-string/jumbo v6, "timestamp"

    sget-object v7, Lcom/taobao/weex/appfram/storage/WXSQLiteOpenHelper;->sDateFormatter:Ljava/text/SimpleDateFormat;

    new-instance v8, Ljava/util/Date;

    invoke-direct {v8}, Ljava/util/Date;-><init>()V

    invoke-virtual {v7, v8}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    iget-object v6, p0, Lcom/taobao/weex/appfram/storage/DefaultWXStorage;->mDatabaseSupplier:Lcom/taobao/weex/appfram/storage/WXSQLiteOpenHelper;

    invoke-virtual {v6}, Lcom/taobao/weex/appfram/storage/WXSQLiteOpenHelper;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v6

    const-string v7, "default_wx_storage"

    const-string v8, "key= ?"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v7, v5, v8, v9}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    .line 18
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x1

    if-ne v5, v0, :cond_62

    const-string/jumbo v0, "success"

    goto :goto_64

    .line 19
    :cond_62
    const-string v0, "failed"

    :goto_64
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " for operation [getItem(key = "

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")]"

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/taobao/weex/utils/WXLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    invoke-interface {v4, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {v4, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1
    :try_end_83
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_83} :catch_8e
    .catchall {:try_start_28 .. :try_end_83} :catchall_8b

    .line 28
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    return-object p1

    .line 29
    :cond_87
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    return-object v3

    :catchall_8b
    move-exception v0

    move-object p1, v0

    goto :goto_a7

    :catch_8e
    move-exception v0

    move-object p1, v0

    .line 30
    :try_start_90
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a3
    .catchall {:try_start_90 .. :try_end_a3} :catchall_8b

    .line 33
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    return-object v3

    .line 34
    :goto_a7
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 35
    throw p1
.end method

.method private performGetLength()J
    .registers 8

    const-string v0, "DefaultWXStorage occurred an exception when execute getLength:"

    .line 1
    iget-object v1, p0, Lcom/taobao/weex/appfram/storage/DefaultWXStorage;->mDatabaseSupplier:Lcom/taobao/weex/appfram/storage/WXSQLiteOpenHelper;

    invoke-virtual {v1}, Lcom/taobao/weex/appfram/storage/WXSQLiteOpenHelper;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-wide/16 v2, 0x0

    if-nez v1, :cond_d

    return-wide v2

    .line 6
    :cond_d
    const-string v4, "SELECT count(key) FROM default_wx_storage"

    const/4 v5, 0x0

    .line 9
    :try_start_10
    invoke-virtual {v1, v4}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v5

    .line 10
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteStatement;->simpleQueryForLong()J

    move-result-wide v0
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_18} :catch_1e
    .catchall {:try_start_10 .. :try_end_18} :catchall_1c

    .line 16
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteStatement;->close()V

    return-wide v0

    :catchall_1c
    move-exception v0

    goto :goto_3b

    :catch_1e
    move-exception v1

    .line 17
    :try_start_1f
    const-string/jumbo v4, "weex_storage"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_35
    .catchall {:try_start_1f .. :try_end_35} :catchall_1c

    if-eqz v5, :cond_3a

    .line 21
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_3a
    return-wide v2

    :goto_3b
    if-eqz v5, :cond_40

    .line 22
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 24
    :cond_40
    throw v0
.end method

.method private performRemoveItem(Ljava/lang/String;)Z
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/taobao/weex/appfram/storage/DefaultWXStorage;->mDatabaseSupplier:Lcom/taobao/weex/appfram/storage/WXSQLiteOpenHelper;

    invoke-virtual {v0}, Lcom/taobao/weex/appfram/storage/WXSQLiteOpenHelper;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    return v1

    .line 8
    :cond_a
    :try_start_a
    const-string v2, "default_wx_storage"

    const-string v3, "key=?"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v2, v3, p1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_16} :catch_1b

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1a

    return v0

    :cond_1a
    return v1

    :catch_1b
    move-exception p1

    .line 12
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "DefaultWXStorage occurred an exception when execute removeItem:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "weex_storage"

    invoke-static {v0, p1}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method private performSetItem(Ljava/lang/String;Ljava/lang/String;ZZ)Z
    .registers 22

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    const-string v6, "retry set k-v to storage(key:"

    const-string v7, "DefaultWXStorage occurred an exception when execute setItem :"

    .line 1
    iget-object v0, v1, Lcom/taobao/weex/appfram/storage/DefaultWXStorage;->mDatabaseSupplier:Lcom/taobao/weex/appfram/storage/WXSQLiteOpenHelper;

    invoke-virtual {v0}, Lcom/taobao/weex/appfram/storage/WXSQLiteOpenHelper;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const/4 v8, 0x0

    if-nez v0, :cond_18

    return v8

    .line 6
    :cond_18
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "set k-v to storage(key:"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ",value:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ",isPersistent:"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v11, ",allowRetry:"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v11, ")"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v12, "weex_storage"

    invoke-static {v12, v9}, Lcom/taobao/weex/utils/WXLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    const-string v9, "INSERT OR REPLACE INTO default_wx_storage VALUES (?,?,?,?);"

    .line 9
    sget-object v13, Lcom/taobao/weex/appfram/storage/WXSQLiteOpenHelper;->sDateFormatter:Ljava/text/SimpleDateFormat;

    new-instance v14, Ljava/util/Date;

    invoke-direct {v14}, Ljava/util/Date;-><init>()V

    invoke-virtual {v13, v14}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    .line 11
    :try_start_57
    invoke-virtual {v0, v9}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v14

    .line 12
    invoke-virtual {v14}, Landroid/database/sqlite/SQLiteProgram;->clearBindings()V

    const/4 v0, 0x1

    .line 13
    invoke-virtual {v14, v0, v2}, Landroid/database/sqlite/SQLiteProgram;->bindString(ILjava/lang/String;)V

    const/4 v9, 0x2

    .line 14
    invoke-virtual {v14, v9, v3}, Landroid/database/sqlite/SQLiteProgram;->bindString(ILjava/lang/String;)V

    const/4 v9, 0x3

    .line 15
    invoke-virtual {v14, v9, v13}, Landroid/database/sqlite/SQLiteProgram;->bindString(ILjava/lang/String;)V

    if-eqz v4, :cond_6f

    const-wide/16 v15, 0x1

    goto :goto_71

    :cond_6f
    const-wide/16 v15, 0x0

    :goto_71
    move-wide v0, v15

    const/4 v9, 0x1

    const/4 v13, 0x4

    .line 16
    invoke-virtual {v14, v13, v0, v1}, Landroid/database/sqlite/SQLiteProgram;->bindLong(IJ)V

    .line 17
    invoke-virtual {v14}, Landroid/database/sqlite/SQLiteStatement;->execute()V
    :try_end_7a
    .catch Ljava/lang/Exception; {:try_start_57 .. :try_end_7a} :catch_82
    .catchall {:try_start_57 .. :try_end_7a} :catchall_7e

    .line 33
    invoke-virtual {v14}, Landroid/database/sqlite/SQLiteStatement;->close()V

    return v9

    :catchall_7e
    move-exception v0

    move-object/from16 v1, p0

    goto :goto_d0

    :catch_82
    move-exception v0

    .line 34
    :try_start_83
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v12, v1}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    instance-of v0, v0, Landroid/database/sqlite/SQLiteFullException;

    if-eqz v0, :cond_c8

    if-eqz v5, :cond_c8

    .line 36
    invoke-direct/range {p0 .. p0}, Lcom/taobao/weex/appfram/storage/DefaultWXStorage;->trimToSize()Z

    move-result v0

    if-eqz v0, :cond_c8

    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Lcom/taobao/weex/utils/WXLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_ba
    .catchall {:try_start_83 .. :try_end_ba} :catchall_7e

    move-object/from16 v1, p0

    .line 40
    :try_start_bc
    invoke-direct {v1, v2, v3, v4, v8}, Lcom/taobao/weex/appfram/storage/DefaultWXStorage;->performSetItem(Ljava/lang/String;Ljava/lang/String;ZZ)Z

    move-result v0
    :try_end_c0
    .catchall {:try_start_bc .. :try_end_c0} :catchall_c6

    if-eqz v14, :cond_c5

    .line 47
    invoke-virtual {v14}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_c5
    return v0

    :catchall_c6
    move-exception v0

    goto :goto_d0

    :cond_c8
    move-object/from16 v1, p0

    if-eqz v14, :cond_cf

    .line 48
    invoke-virtual {v14}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_cf
    return v8

    :goto_d0
    if-eqz v14, :cond_d5

    .line 49
    invoke-virtual {v14}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 51
    :cond_d5
    throw v0
.end method

.method private trimToSize()Z
    .registers 14

    const-string/jumbo v1, "weex_storage"

    .line 1
    iget-object v0, p0, Lcom/taobao/weex/appfram/storage/DefaultWXStorage;->mDatabaseSupplier:Lcom/taobao/weex/appfram/storage/WXSQLiteOpenHelper;

    invoke-virtual {v0}, Lcom/taobao/weex/appfram/storage/WXSQLiteOpenHelper;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const/4 v10, 0x0

    if-nez v2, :cond_d

    return v10

    .line 6
    :cond_d
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 9
    const-string v0, "key"

    const-string v12, "persistent"

    filled-new-array {v0, v12}, [Ljava/lang/String;

    move-result-object v4

    const/4 v8, 0x0

    const-string/jumbo v9, "timestamp ASC"

    const-string v3, "default_wx_storage"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    const/4 v3, 0x1

    .line 11
    :try_start_28
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v4

    div-int/lit8 v4, v4, 0xa
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_2e} :catch_59
    .catchall {:try_start_28 .. :try_end_2e} :catchall_57

    const/4 v5, 0x0

    .line 12
    :cond_2f
    :goto_2f
    :try_start_2f
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_51

    .line 13
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 14
    invoke-interface {v2, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v2, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    if-ne v7, v3, :cond_48

    goto :goto_2f

    :cond_48
    if-eqz v6, :cond_2f

    add-int/lit8 v5, v5, 0x1

    .line 17
    invoke-interface {v11, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_4f
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_4f} :catch_55
    .catchall {:try_start_2f .. :try_end_4f} :catchall_57

    if-ne v5, v4, :cond_2f

    .line 26
    :cond_51
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_76

    :catch_55
    move-exception v0

    goto :goto_5b

    :catchall_57
    move-exception v0

    goto :goto_a2

    :catch_59
    move-exception v0

    const/4 v5, 0x0

    .line 27
    :goto_5b
    :try_start_5b
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "DefaultWXStorage occurred an exception when execute trimToSize:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_73
    .catchall {:try_start_5b .. :try_end_73} :catchall_57

    .line 29
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :goto_76
    if-gtz v5, :cond_79

    return v10

    .line 36
    :cond_79
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_7d
    if-ge v10, v0, :cond_8b

    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v10, v10, 0x1

    check-cast v2, Ljava/lang/String;

    .line 37
    invoke-direct {p0, v2}, Lcom/taobao/weex/appfram/storage/DefaultWXStorage;->performRemoveItem(Ljava/lang/String;)Z

    goto :goto_7d

    .line 39
    :cond_8b
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "remove "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " items by lru"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v3

    .line 40
    :goto_a2
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 41
    throw v0
.end method


# virtual methods
.method public close()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/taobao/weex/appfram/storage/DefaultWXStorage;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    .line 2
    new-instance v1, Lcom/taobao/weex/appfram/storage/DefaultWXStorage$7;

    invoke-direct {v1, p0, v0}, Lcom/taobao/weex/appfram/storage/DefaultWXStorage$7;-><init>(Lcom/taobao/weex/appfram/storage/DefaultWXStorage;Ljava/util/concurrent/ExecutorService;)V

    invoke-direct {p0, v1}, Lcom/taobao/weex/appfram/storage/DefaultWXStorage;->execute(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    .line 15
    iput-object v0, p0, Lcom/taobao/weex/appfram/storage/DefaultWXStorage;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public getAllKeys(Lcom/taobao/weex/appfram/storage/IWXStorageAdapter$OnResultReceivedListener;)V
    .registers 3

    .line 1
    new-instance v0, Lcom/taobao/weex/appfram/storage/DefaultWXStorage$5;

    invoke-direct {v0, p0, p1}, Lcom/taobao/weex/appfram/storage/DefaultWXStorage$5;-><init>(Lcom/taobao/weex/appfram/storage/DefaultWXStorage;Lcom/taobao/weex/appfram/storage/IWXStorageAdapter$OnResultReceivedListener;)V

    invoke-direct {p0, v0}, Lcom/taobao/weex/appfram/storage/DefaultWXStorage;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public getItem(Ljava/lang/String;Lcom/taobao/weex/appfram/storage/IWXStorageAdapter$OnResultReceivedListener;)V
    .registers 4

    .line 1
    new-instance v0, Lcom/taobao/weex/appfram/storage/DefaultWXStorage$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/taobao/weex/appfram/storage/DefaultWXStorage$2;-><init>(Lcom/taobao/weex/appfram/storage/DefaultWXStorage;Ljava/lang/String;Lcom/taobao/weex/appfram/storage/IWXStorageAdapter$OnResultReceivedListener;)V

    invoke-direct {p0, v0}, Lcom/taobao/weex/appfram/storage/DefaultWXStorage;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public length(Lcom/taobao/weex/appfram/storage/IWXStorageAdapter$OnResultReceivedListener;)V
    .registers 3

    .line 1
    new-instance v0, Lcom/taobao/weex/appfram/storage/DefaultWXStorage$4;

    invoke-direct {v0, p0, p1}, Lcom/taobao/weex/appfram/storage/DefaultWXStorage$4;-><init>(Lcom/taobao/weex/appfram/storage/DefaultWXStorage;Lcom/taobao/weex/appfram/storage/IWXStorageAdapter$OnResultReceivedListener;)V

    invoke-direct {p0, v0}, Lcom/taobao/weex/appfram/storage/DefaultWXStorage;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public removeItem(Ljava/lang/String;Lcom/taobao/weex/appfram/storage/IWXStorageAdapter$OnResultReceivedListener;)V
    .registers 4

    .line 1
    new-instance v0, Lcom/taobao/weex/appfram/storage/DefaultWXStorage$3;

    invoke-direct {v0, p0, p1, p2}, Lcom/taobao/weex/appfram/storage/DefaultWXStorage$3;-><init>(Lcom/taobao/weex/appfram/storage/DefaultWXStorage;Ljava/lang/String;Lcom/taobao/weex/appfram/storage/IWXStorageAdapter$OnResultReceivedListener;)V

    invoke-direct {p0, v0}, Lcom/taobao/weex/appfram/storage/DefaultWXStorage;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setItem(Ljava/lang/String;Ljava/lang/String;Lcom/taobao/weex/appfram/storage/IWXStorageAdapter$OnResultReceivedListener;)V
    .registers 5

    .line 1
    new-instance v0, Lcom/taobao/weex/appfram/storage/DefaultWXStorage$1;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/taobao/weex/appfram/storage/DefaultWXStorage$1;-><init>(Lcom/taobao/weex/appfram/storage/DefaultWXStorage;Ljava/lang/String;Ljava/lang/String;Lcom/taobao/weex/appfram/storage/IWXStorageAdapter$OnResultReceivedListener;)V

    invoke-direct {p0, v0}, Lcom/taobao/weex/appfram/storage/DefaultWXStorage;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setItemPersistent(Ljava/lang/String;Ljava/lang/String;Lcom/taobao/weex/appfram/storage/IWXStorageAdapter$OnResultReceivedListener;)V
    .registers 5

    .line 1
    new-instance v0, Lcom/taobao/weex/appfram/storage/DefaultWXStorage$6;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/taobao/weex/appfram/storage/DefaultWXStorage$6;-><init>(Lcom/taobao/weex/appfram/storage/DefaultWXStorage;Ljava/lang/String;Ljava/lang/String;Lcom/taobao/weex/appfram/storage/IWXStorageAdapter$OnResultReceivedListener;)V

    invoke-direct {p0, v0}, Lcom/taobao/weex/appfram/storage/DefaultWXStorage;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

###### Class com.taobao.weex.appfram.storage.DefaultWXStorage.AnonymousClass1 (com.taobao.weex.appfram.storage.DefaultWXStorage$1)
.class Lcom/taobao/weex/appfram/storage/DefaultWXStorage$1;
.super Ljava/lang/Object;
.source "r8-map-id-b4716a25f9920722ba6f2d7f7c6f40e43a654927e8ebe1c489894a7bc6a88ab4"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/appfram/storage/DefaultWXStorage;->setItem(Ljava/lang/String;Ljava/lang/String;Lcom/taobao/weex/appfram/storage/IWXStorageAdapter$OnResultReceivedListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/appfram/storage/DefaultWXStorage;

.field final synthetic val$key:Ljava/lang/String;

.field final synthetic val$listener:Lcom/taobao/weex/appfram/storage/IWXStorageAdapter$OnResultReceivedListener;

.field final synthetic val$value:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/taobao/weex/appfram/storage/DefaultWXStorage;Ljava/lang/String;Ljava/lang/String;Lcom/taobao/weex/appfram/storage/IWXStorageAdapter$OnResultReceivedListener;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/taobao/weex/appfram/storage/DefaultWXStorage$1;->this$0:Lcom/taobao/weex/appfram/storage/DefaultWXStorage;

    iput-object p2, p0, Lcom/taobao/weex/appfram/storage/DefaultWXStorage$1;->val$key:Ljava/lang/String;

    iput-object p3, p0, Lcom/taobao/weex/appfram/storage/DefaultWXStorage$1;->val$value:Ljava/lang/String;

    iput-object p4, p0, Lcom/taobao/weex/appfram/storage/DefaultWXStorage$1;->val$listener:Lcom/taobao/weex/appfram/storage/IWXStorageAdapter$OnResultReceivedListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/taobao/weex/appfram/storage/DefaultWXStorage$1;->this$0:Lcom/taobao/weex/appfram/storage/DefaultWXStorage;

    iget-object v1, p0, Lcom/taobao/weex/appfram/storage/DefaultWXStorage$1;->val$key:Ljava/lang/String;

    iget-object v2, p0, Lcom/taobao/weex/appfram/storage/DefaultWXStorage$1;->val$value:Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v0, v1, v2, v3, v4}, Lcom/taobao/weex/appfram/storage/DefaultWXStorage;->access$000(Lcom/taobao/weex/appfram/storage/DefaultWXStorage;Ljava/lang/String;Ljava/lang/String;ZZ)Z

    move-result v0

    invoke-static {v0}, Lcom/taobao/weex/appfram/storage/StorageResultHandler;->setItemResult(Z)Ljava/util/Map;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/taobao/weex/appfram/storage/DefaultWXStorage$1;->val$listener:Lcom/taobao/weex/appfram/storage/IWXStorageAdapter$OnResultReceivedListener;

    if-nez v1, :cond_15

    return-void

    .line 5
    :cond_15
    invoke-interface {v1, v0}, Lcom/taobao/weex/appfram/storage/IWXStorageAdapter$OnResultReceivedListener;->onReceived(Ljava/util/Map;)V

    return-void
.end method

###### Class com.taobao.weex.appfram.storage.DefaultWXStorage.AnonymousClass2 (com.taobao.weex.appfram.storage.DefaultWXStorage$2)
.class Lcom/taobao/weex/appfram/storage/DefaultWXStorage$2;
.super Ljava/lang/Object;
.source "r8-map-id-b4716a25f9920722ba6f2d7f7c6f40e43a654927e8ebe1c489894a7bc6a88ab4"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/appfram/storage/DefaultWXStorage;->getItem(Ljava/lang/String;Lcom/taobao/weex/appfram/storage/IWXStorageAdapter$OnResultReceivedListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/appfram/storage/DefaultWXStorage;

.field final synthetic val$key:Ljava/lang/String;

.field final synthetic val$listener:Lcom/taobao/weex/appfram/storage/IWXStorageAdapter$OnResultReceivedListener;


# direct methods
.method constructor <init>(Lcom/taobao/weex/appfram/storage/DefaultWXStorage;Ljava/lang/String;Lcom/taobao/weex/appfram/storage/IWXStorageAdapter$OnResultReceivedListener;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/taobao/weex/appfram/storage/DefaultWXStorage$2;->this$0:Lcom/taobao/weex/appfram/storage/DefaultWXStorage;

    iput-object p2, p0, Lcom/taobao/weex/appfram/storage/DefaultWXStorage$2;->val$key:Ljava/lang/String;

    iput-object p3, p0, Lcom/taobao/weex/appfram/storage/DefaultWXStorage$2;->val$listener:Lcom/taobao/weex/appfram/storage/IWXStorageAdapter$OnResultReceivedListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/taobao/weex/appfram/storage/DefaultWXStorage$2;->this$0:Lcom/taobao/weex/appfram/storage/DefaultWXStorage;

    iget-object v1, p0, Lcom/taobao/weex/appfram/storage/DefaultWXStorage$2;->val$key:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/taobao/weex/appfram/storage/DefaultWXStorage;->access$100(Lcom/taobao/weex/appfram/storage/DefaultWXStorage;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/taobao/weex/appfram/storage/StorageResultHandler;->getItemResult(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/taobao/weex/appfram/storage/DefaultWXStorage$2;->val$listener:Lcom/taobao/weex/appfram/storage/IWXStorageAdapter$OnResultReceivedListener;

    if-nez v1, :cond_11

    return-void

    .line 5
    :cond_11
    invoke-interface {v1, v0}, Lcom/taobao/weex/appfram/storage/IWXStorageAdapter$OnResultReceivedListener;->onReceived(Ljava/util/Map;)V

    return-void
.end method

###### Class com.taobao.weex.appfram.storage.DefaultWXStorage.AnonymousClass3 (com.taobao.weex.appfram.storage.DefaultWXStorage$3)
.class Lcom/taobao/weex/appfram/storage/DefaultWXStorage$3;
.super Ljava/lang/Object;
.source "r8-map-id-b4716a25f9920722ba6f2d7f7c6f40e43a654927e8ebe1c489894a7bc6a88ab4"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/appfram/storage/DefaultWXStorage;->removeItem(Ljava/lang/String;Lcom/taobao/weex/appfram/storage/IWXStorageAdapter$OnResultReceivedListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/appfram/storage/DefaultWXStorage;

.field final synthetic val$key:Ljava/lang/String;

.field final synthetic val$listener:Lcom/taobao/weex/appfram/storage/IWXStorageAdapter$OnResultReceivedListener;


# direct methods
.method constructor <init>(Lcom/taobao/weex/appfram/storage/DefaultWXStorage;Ljava/lang/String;Lcom/taobao/weex/appfram/storage/IWXStorageAdapter$OnResultReceivedListener;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/taobao/weex/appfram/storage/DefaultWXStorage$3;->this$0:Lcom/taobao/weex/appfram/storage/DefaultWXStorage;

    iput-object p2, p0, Lcom/taobao/weex/appfram/storage/DefaultWXStorage$3;->val$key:Ljava/lang/String;

    iput-object p3, p0, Lcom/taobao/weex/appfram/storage/DefaultWXStorage$3;->val$listener:Lcom/taobao/weex/appfram/storage/IWXStorageAdapter$OnResultReceivedListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/taobao/weex/appfram/storage/DefaultWXStorage$3;->this$0:Lcom/taobao/weex/appfram/storage/DefaultWXStorage;

    iget-object v1, p0, Lcom/taobao/weex/appfram/storage/DefaultWXStorage$3;->val$key:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/taobao/weex/appfram/storage/DefaultWXStorage;->access$200(Lcom/taobao/weex/appfram/storage/DefaultWXStorage;Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Lcom/taobao/weex/appfram/storage/StorageResultHandler;->removeItemResult(Z)Ljava/util/Map;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/taobao/weex/appfram/storage/DefaultWXStorage$3;->val$listener:Lcom/taobao/weex/appfram/storage/IWXStorageAdapter$OnResultReceivedListener;

    if-nez v1, :cond_11

    return-void

    .line 5
    :cond_11
    invoke-interface {v1, v0}, Lcom/taobao/weex/appfram/storage/IWXStorageAdapter$OnResultReceivedListener;->onReceived(Ljava/util/Map;)V

    return-void
.end method

###### Class com.taobao.weex.appfram.storage.DefaultWXStorage.AnonymousClass4 (com.taobao.weex.appfram.storage.DefaultWXStorage$4)
.class Lcom/taobao/weex/appfram/storage/DefaultWXStorage$4;
.super Ljava/lang/Object;
.source "r8-map-id-b4716a25f9920722ba6f2d7f7c6f40e43a654927e8ebe1c489894a7bc6a88ab4"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/appfram/storage/DefaultWXStorage;->length(Lcom/taobao/weex/appfram/storage/IWXStorageAdapter$OnResultReceivedListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/appfram/storage/DefaultWXStorage;

.field final synthetic val$listener:Lcom/taobao/weex/appfram/storage/IWXStorageAdapter$OnResultReceivedListener;


# direct methods
.method constructor <init>(Lcom/taobao/weex/appfram/storage/DefaultWXStorage;Lcom/taobao/weex/appfram/storage/IWXStorageAdapter$OnResultReceivedListener;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/taobao/weex/appfram/storage/DefaultWXStorage$4;->this$0:Lcom/taobao/weex/appfram/storage/DefaultWXStorage;

    iput-object p2, p0, Lcom/taobao/weex/appfram/storage/DefaultWXStorage$4;->val$listener:Lcom/taobao/weex/appfram/storage/IWXStorageAdapter$OnResultReceivedListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/taobao/weex/appfram/storage/DefaultWXStorage$4;->this$0:Lcom/taobao/weex/appfram/storage/DefaultWXStorage;

    invoke-static {v0}, Lcom/taobao/weex/appfram/storage/DefaultWXStorage;->access$300(Lcom/taobao/weex/appfram/storage/DefaultWXStorage;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/taobao/weex/appfram/storage/StorageResultHandler;->getLengthResult(J)Ljava/util/Map;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/taobao/weex/appfram/storage/DefaultWXStorage$4;->val$listener:Lcom/taobao/weex/appfram/storage/IWXStorageAdapter$OnResultReceivedListener;

    if-nez v1, :cond_f

    return-void

    .line 5
    :cond_f
    invoke-interface {v1, v0}, Lcom/taobao/weex/appfram/storage/IWXStorageAdapter$OnResultReceivedListener;->onReceived(Ljava/util/Map;)V

    return-void
.end method

###### Class com.taobao.weex.appfram.storage.DefaultWXStorage.AnonymousClass5 (com.taobao.weex.appfram.storage.DefaultWXStorage$5)
.class Lcom/taobao/weex/appfram/storage/DefaultWXStorage$5;
.super Ljava/lang/Object;
.source "r8-map-id-b4716a25f9920722ba6f2d7f7c6f40e43a654927e8ebe1c489894a7bc6a88ab4"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/appfram/storage/DefaultWXStorage;->getAllKeys(Lcom/taobao/weex/appfram/storage/IWXStorageAdapter$OnResultReceivedListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/appfram/storage/DefaultWXStorage;

.field final synthetic val$listener:Lcom/taobao/weex/appfram/storage/IWXStorageAdapter$OnResultReceivedListener;


# direct methods
.method constructor <init>(Lcom/taobao/weex/appfram/storage/DefaultWXStorage;Lcom/taobao/weex/appfram/storage/IWXStorageAdapter$OnResultReceivedListener;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/taobao/weex/appfram/storage/DefaultWXStorage$5;->this$0:Lcom/taobao/weex/appfram/storage/DefaultWXStorage;

    iput-object p2, p0, Lcom/taobao/weex/appfram/storage/DefaultWXStorage$5;->val$listener:Lcom/taobao/weex/appfram/storage/IWXStorageAdapter$OnResultReceivedListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/taobao/weex/appfram/storage/DefaultWXStorage$5;->this$0:Lcom/taobao/weex/appfram/storage/DefaultWXStorage;

    invoke-static {v0}, Lcom/taobao/weex/appfram/storage/DefaultWXStorage;->access$400(Lcom/taobao/weex/appfram/storage/DefaultWXStorage;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/taobao/weex/appfram/storage/StorageResultHandler;->getAllkeysResult(Ljava/util/List;)Ljava/util/Map;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/taobao/weex/appfram/storage/DefaultWXStorage$5;->val$listener:Lcom/taobao/weex/appfram/storage/IWXStorageAdapter$OnResultReceivedListener;

    if-nez v1, :cond_f

    return-void

    .line 5
    :cond_f
    invoke-interface {v1, v0}, Lcom/taobao/weex/appfram/storage/IWXStorageAdapter$OnResultReceivedListener;->onReceived(Ljava/util/Map;)V

    return-void
.end method

###### Class com.taobao.weex.appfram.storage.DefaultWXStorage.AnonymousClass6 (com.taobao.weex.appfram.storage.DefaultWXStorage$6)
.class Lcom/taobao/weex/appfram/storage/DefaultWXStorage$6;
.super Ljava/lang/Object;
.source "r8-map-id-b4716a25f9920722ba6f2d7f7c6f40e43a654927e8ebe1c489894a7bc6a88ab4"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/appfram/storage/DefaultWXStorage;->setItemPersistent(Ljava/lang/String;Ljava/lang/String;Lcom/taobao/weex/appfram/storage/IWXStorageAdapter$OnResultReceivedListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/appfram/storage/DefaultWXStorage;

.field final synthetic val$key:Ljava/lang/String;

.field final synthetic val$listener:Lcom/taobao/weex/appfram/storage/IWXStorageAdapter$OnResultReceivedListener;

.field final synthetic val$value:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/taobao/weex/appfram/storage/DefaultWXStorage;Ljava/lang/String;Ljava/lang/String;Lcom/taobao/weex/appfram/storage/IWXStorageAdapter$OnResultReceivedListener;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/taobao/weex/appfram/storage/DefaultWXStorage$6;->this$0:Lcom/taobao/weex/appfram/storage/DefaultWXStorage;

    iput-object p2, p0, Lcom/taobao/weex/appfram/storage/DefaultWXStorage$6;->val$key:Ljava/lang/String;

    iput-object p3, p0, Lcom/taobao/weex/appfram/storage/DefaultWXStorage$6;->val$value:Ljava/lang/String;

    iput-object p4, p0, Lcom/taobao/weex/appfram/storage/DefaultWXStorage$6;->val$listener:Lcom/taobao/weex/appfram/storage/IWXStorageAdapter$OnResultReceivedListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/taobao/weex/appfram/storage/DefaultWXStorage$6;->this$0:Lcom/taobao/weex/appfram/storage/DefaultWXStorage;

    iget-object v1, p0, Lcom/taobao/weex/appfram/storage/DefaultWXStorage$6;->val$key:Ljava/lang/String;

    iget-object v2, p0, Lcom/taobao/weex/appfram/storage/DefaultWXStorage$6;->val$value:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3, v3}, Lcom/taobao/weex/appfram/storage/DefaultWXStorage;->access$000(Lcom/taobao/weex/appfram/storage/DefaultWXStorage;Ljava/lang/String;Ljava/lang/String;ZZ)Z

    move-result v0

    invoke-static {v0}, Lcom/taobao/weex/appfram/storage/StorageResultHandler;->setItemResult(Z)Ljava/util/Map;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/taobao/weex/appfram/storage/DefaultWXStorage$6;->val$listener:Lcom/taobao/weex/appfram/storage/IWXStorageAdapter$OnResultReceivedListener;

    if-nez v1, :cond_14

    return-void

    .line 5
    :cond_14
    invoke-interface {v1, v0}, Lcom/taobao/weex/appfram/storage/IWXStorageAdapter$OnResultReceivedListener;->onReceived(Ljava/util/Map;)V

    return-void
.end method

###### Class com.taobao.weex.appfram.storage.DefaultWXStorage.AnonymousClass7 (com.taobao.weex.appfram.storage.DefaultWXStorage$7)
.class Lcom/taobao/weex/appfram/storage/DefaultWXStorage$7;
.super Ljava/lang/Object;
.source "r8-map-id-b4716a25f9920722ba6f2d7f7c6f40e43a654927e8ebe1c489894a7bc6a88ab4"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/appfram/storage/DefaultWXStorage;->close()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/appfram/storage/DefaultWXStorage;

.field final synthetic val$needCloseService:Ljava/util/concurrent/ExecutorService;


# direct methods
.method constructor <init>(Lcom/taobao/weex/appfram/storage/DefaultWXStorage;Ljava/util/concurrent/ExecutorService;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/taobao/weex/appfram/storage/DefaultWXStorage$7;->this$0:Lcom/taobao/weex/appfram/storage/DefaultWXStorage;

    iput-object p2, p0, Lcom/taobao/weex/appfram/storage/DefaultWXStorage$7;->val$needCloseService:Ljava/util/concurrent/ExecutorService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/taobao/weex/appfram/storage/DefaultWXStorage$7;->this$0:Lcom/taobao/weex/appfram/storage/DefaultWXStorage;

    invoke-static {v0}, Lcom/taobao/weex/appfram/storage/DefaultWXStorage;->access$500(Lcom/taobao/weex/appfram/storage/DefaultWXStorage;)Lcom/taobao/weex/appfram/storage/WXSQLiteOpenHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/appfram/storage/WXSQLiteOpenHelper;->closeDatabase()V

    .line 2
    iget-object v0, p0, Lcom/taobao/weex/appfram/storage/DefaultWXStorage$7;->val$needCloseService:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_10

    .line 3
    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_10} :catch_11

    :cond_10
    return-void

    :catch_11
    move-exception v0

    .line 6
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "weex_storage"

    invoke-static {v1, v0}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
