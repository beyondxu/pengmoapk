###### Class io.dcloud.common.util.db.DCStorage (io.dcloud.common.util.db.DCStorage)
.class public Lio/dcloud/common/util/db/DCStorage;
.super Ljava/lang/Object;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/dcloud/common/util/db/DCStorage$StorageInfo;
    }
.end annotation


# static fields
.field public static final ERROR_DEF:I = -0x1

.field public static final ERROR_FULL:I = -0x2

.field public static final ERROR_NO_KEY:I = -0x3

.field public static final SUCCESS:I = 0x1

.field private static mInstance:Lio/dcloud/common/util/db/DCStorage;


# instance fields
.field private DBFILE_NAME:Ljava/lang/String;

.field private DCDBFILE_START:Ljava/lang/String;

.field private ERROR_TAG:Ljava/lang/String;

.field private TABLET_TAG:Ljava/lang/String;

.field private mDatabaseSupplier:Lio/dcloud/common/util/db/DCSQLiteOpenHelper;

.field private mExecutorService:Ljava/util/concurrent/ExecutorService;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const-string v0, "_storage"

    iput-object v0, p0, Lio/dcloud/common/util/db/DCStorage;->TABLET_TAG:Ljava/lang/String;

    .line 3
    const-string v0, "_dbfile"

    iput-object v0, p0, Lio/dcloud/common/util/db/DCStorage;->DBFILE_NAME:Ljava/lang/String;

    .line 4
    const-string v0, "DCDBFile_"

    iput-object v0, p0, Lio/dcloud/common/util/db/DCStorage;->DCDBFILE_START:Ljava/lang/String;

    .line 5
    const-string v0, "__ERROR__"

    iput-object v0, p0, Lio/dcloud/common/util/db/DCStorage;->ERROR_TAG:Ljava/lang/String;

    .line 41
    invoke-static {p1}, Lio/dcloud/common/util/db/DCSQLiteOpenHelper;->getSQLiteOpenHelper(Landroid/content/Context;)Lio/dcloud/common/util/db/DCSQLiteOpenHelper;

    move-result-object p1

    iput-object p1, p0, Lio/dcloud/common/util/db/DCStorage;->mDatabaseSupplier:Lio/dcloud/common/util/db/DCSQLiteOpenHelper;

    return-void
.end method

.method static synthetic access$000(Lio/dcloud/common/util/db/DCStorage;)Lio/dcloud/common/util/db/DCSQLiteOpenHelper;
    .registers 1

    .line 1
    iget-object p0, p0, Lio/dcloud/common/util/db/DCStorage;->mDatabaseSupplier:Lio/dcloud/common/util/db/DCSQLiteOpenHelper;

    return-object p0
.end method

.method static synthetic access$100(Lio/dcloud/common/util/db/DCStorage;)Ljava/util/concurrent/ExecutorService;
    .registers 1

    .line 1
    iget-object p0, p0, Lio/dcloud/common/util/db/DCStorage;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    return-object p0
.end method

.method static synthetic access$102(Lio/dcloud/common/util/db/DCStorage;Ljava/util/concurrent/ExecutorService;)Ljava/util/concurrent/ExecutorService;
    .registers 2

    .line 1
    iput-object p1, p0, Lio/dcloud/common/util/db/DCStorage;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    return-object p1
.end method

.method private clearDBFile(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1, p2}, Lio/dcloud/common/util/db/DCStorage;->getBaseDBFilePath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2
    new-instance p2, Ljava/io/File;

    invoke-direct {p2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_12

    .line 4
    invoke-virtual {p2}, Ljava/io/File;->delete()Z

    :cond_12
    return-void
.end method

.method private getBaseDBFilePath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/apps/"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/dbfile/"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getCurrentTableName(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DC_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lio/dcloud/common/util/db/DCStorage;->TABLET_TAG:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getDBFileValue(Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    .line 2
    invoke-static {p1}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, ""

    if-nez v0, :cond_65

    .line 3
    iget-object v0, p0, Lio/dcloud/common/util/db/DCStorage;->DCDBFILE_START:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    const/16 v0, 0x9

    .line 4
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 6
    :cond_16
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 8
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_65

    .line 9
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v2, 0x0

    .line 11
    :try_start_27
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/FileReader;

    invoke-direct {v4, p1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_31
    .catch Ljava/io/FileNotFoundException; {:try_start_27 .. :try_end_31} :catch_54
    .catch Ljava/io/IOException; {:try_start_27 .. :try_end_31} :catch_4d
    .catchall {:try_start_27 .. :try_end_31} :catchall_4b

    .line 13
    :goto_31
    :try_start_31
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3b

    .line 14
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_31

    .line 16
    :cond_3b
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_3f
    .catch Ljava/io/FileNotFoundException; {:try_start_31 .. :try_end_3f} :catch_48
    .catch Ljava/io/IOException; {:try_start_31 .. :try_end_3f} :catch_45
    .catchall {:try_start_31 .. :try_end_3f} :catchall_43

    .line 23
    :try_start_3f
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_42
    .catch Ljava/io/IOException; {:try_start_3f .. :try_end_42} :catch_65

    return-object v1

    :catchall_43
    move-exception p1

    goto :goto_5f

    :catch_45
    move-exception p1

    move-object v2, v3

    goto :goto_4e

    :catch_48
    move-exception p1

    move-object v2, v3

    goto :goto_55

    :catchall_4b
    move-exception p1

    goto :goto_5e

    :catch_4d
    move-exception p1

    .line 24
    :goto_4e
    :try_start_4e
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    if-eqz v2, :cond_65

    goto :goto_5a

    :catch_54
    move-exception p1

    .line 28
    :goto_55
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_58
    .catchall {:try_start_4e .. :try_end_58} :catchall_4b

    if-eqz v2, :cond_65

    .line 27
    :goto_5a
    :try_start_5a
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_5d
    .catch Ljava/io/IOException; {:try_start_5a .. :try_end_5d} :catch_65

    goto :goto_65

    :goto_5e
    move-object v3, v2

    :goto_5f
    if-eqz v3, :cond_64

    .line 33
    :try_start_61
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_64
    .catch Ljava/io/IOException; {:try_start_61 .. :try_end_64} :catch_64

    .line 36
    :catch_64
    :cond_64
    throw p1

    :catch_65
    :cond_65
    :goto_65
    return-object v1
.end method

.method public static getDCStorage(Landroid/content/Context;)Lio/dcloud/common/util/db/DCStorage;
    .registers 2

    .line 1
    sget-object v0, Lio/dcloud/common/util/db/DCStorage;->mInstance:Lio/dcloud/common/util/db/DCStorage;

    if-nez v0, :cond_d

    if-eqz p0, :cond_d

    .line 2
    new-instance v0, Lio/dcloud/common/util/db/DCStorage;

    invoke-direct {v0, p0}, Lio/dcloud/common/util/db/DCStorage;-><init>(Landroid/content/Context;)V

    sput-object v0, Lio/dcloud/common/util/db/DCStorage;->mInstance:Lio/dcloud/common/util/db/DCStorage;

    .line 4
    :cond_d
    sget-object p0, Lio/dcloud/common/util/db/DCStorage;->mInstance:Lio/dcloud/common/util/db/DCStorage;

    return-object p0
.end method

.method private getMsgForCode(Landroid/content/Context;I)Ljava/lang/String;
    .registers 4

    const/4 v0, -0x3

    if-eq p2, v0, :cond_1a

    const/4 v0, -0x2

    if-eq p2, v0, :cond_13

    const/4 v0, 0x1

    if-eq p2, v0, :cond_c

    .line 1
    const-string p1, ""

    return-object p1

    .line 2
    :cond_c
    sget p2, Lio/dcloud/base/R$string;->dcloud_storage_success:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 5
    :cond_13
    sget p2, Lio/dcloud/base/R$string;->dcloud_storage_ceiling_error:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 8
    :cond_1a
    sget p2, Lio/dcloud/base/R$string;->dcloud_storage_not_find_error:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private removeDBFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, p1, p2}, Lio/dcloud/common/util/db/DCStorage;->getBaseDBFilePath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lio/dcloud/common/util/db/DCStorage;->DBFILE_NAME:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2
    invoke-direct {p0, p1}, Lio/dcloud/common/util/db/DCStorage;->removeDBFile(Ljava/lang/String;)V

    return-void
.end method

.method private removeDBFile(Ljava/lang/String;)V
    .registers 3

    .line 3
    invoke-static {p1}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_23

    .line 6
    :cond_7
    iget-object v0, p0, Lio/dcloud/common/util/db/DCStorage;->DCDBFILE_START:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    const/16 v0, 0x9

    .line 7
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 9
    :cond_15
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 10
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_23

    .line 11
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_23
    :goto_23
    return-void
.end method

.method private saveDBFileValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    .line 1
    invoke-direct {p0, p1, p2}, Lio/dcloud/common/util/db/DCStorage;->getBaseDBFilePath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2
    new-instance p2, Ljava/io/File;

    invoke-direct {p2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_12

    .line 4
    invoke-virtual {p2}, Ljava/io/File;->mkdirs()Z

    .line 6
    :cond_12
    invoke-virtual {p2}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 7
    invoke-virtual {p2}, Ljava/io/File;->delete()Z

    .line 8
    invoke-virtual {p2}, Ljava/io/File;->mkdirs()Z

    .line 11
    :cond_1e
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/String;->hashCode()I

    move-result p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lio/dcloud/common/util/db/DCStorage;->DBFILE_NAME:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 12
    new-instance p2, Ljava/io/File;

    invoke-direct {p2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 13
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result p3

    if-eqz p3, :cond_44

    .line 14
    invoke-virtual {p2}, Ljava/io/File;->delete()Z

    .line 17
    :cond_44
    :try_start_44
    invoke-virtual {p2}, Ljava/io/File;->createNewFile()Z

    .line 19
    new-instance p2, Ljava/io/FileOutputStream;

    invoke-direct {p2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 21
    invoke-virtual {p4}, Ljava/lang/String;->getBytes()[B

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/FileOutputStream;->write([B)V

    .line 23
    invoke-virtual {p2}, Ljava/io/FileOutputStream;->close()V

    .line 24
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p3, p0, Lio/dcloud/common/util/db/DCStorage;->DCDBFILE_START:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_67
    .catch Ljava/io/IOException; {:try_start_44 .. :try_end_67} :catch_68

    return-object p1

    :catch_68
    move-exception p2

    .line 26
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 27
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p4, p0, Lio/dcloud/common/util/db/DCStorage;->ERROR_TAG:Ljava/lang/String;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public declared-synchronized checkSPstorageToDB(Landroid/content/Context;Ljava/lang/String;)V
    .registers 9

    monitor-enter p0

    .line 1
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_storages"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lio/dcloud/common/adapter/util/SP;->getOrCreateBundle(Landroid/content/Context;Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 2
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 3
    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_4d

    .line 4
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v2

    if-lez v2, :cond_4d

    .line 5
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2e
    :goto_2e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 6
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {p0, p1, p2, v3, v4}, Lio/dcloud/common/util/db/DCStorage;->performSetItem(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/dcloud/common/util/db/DCStorage$StorageInfo;

    move-result-object v4

    .line 7
    iget v4, v4, Lio/dcloud/common/util/db/DCStorage$StorageInfo;->code:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2e

    .line 8
    invoke-interface {v1, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_2e

    .line 12
    :cond_4d
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_50
    .catchall {:try_start_1 .. :try_end_50} :catchall_52

    monitor-exit p0

    return-void

    :catchall_52
    move-exception p1

    :try_start_53
    monitor-exit p0
    :try_end_54
    .catchall {:try_start_53 .. :try_end_54} :catchall_52

    throw p1
.end method

.method public close()V
    .registers 2

    .line 1
    new-instance v0, Lio/dcloud/common/util/db/DCStorage$1;

    invoke-direct {v0, p0}, Lio/dcloud/common/util/db/DCStorage$1;-><init>(Lio/dcloud/common/util/db/DCStorage;)V

    invoke-virtual {p0, v0}, Lio/dcloud/common/util/db/DCStorage;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public execute(Ljava/lang/Runnable;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lio/dcloud/common/util/db/DCStorage;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_a

    .line 2
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lio/dcloud/common/util/db/DCStorage;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    :cond_a
    if-eqz p1, :cond_21

    .line 5
    iget-object v0, p0, Lio/dcloud/common/util/db/DCStorage;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    if-nez v0, :cond_21

    iget-object v0, p0, Lio/dcloud/common/util/db/DCStorage;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isTerminated()Z

    move-result v0

    if-nez v0, :cond_21

    .line 6
    iget-object v0, p0, Lio/dcloud/common/util/db/DCStorage;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_21
    return-void
.end method

.method public declared-synchronized getDBCurrentLength(Ljava/lang/String;)Ljava/lang/Long;
    .registers 5

    monitor-enter p0

    .line 1
    :try_start_1
    iget-object v0, p0, Lio/dcloud/common/util/db/DCStorage;->mDatabaseSupplier:Lio/dcloud/common/util/db/DCSQLiteOpenHelper;

    invoke-direct {p0, p1}, Lio/dcloud/common/util/db/DCStorage;->getCurrentTableName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lio/dcloud/common/util/db/DCSQLiteOpenHelper;->getDatabase(Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    const-wide/16 v0, 0x0

    if-nez p1, :cond_15

    .line 3
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_34

    monitor-exit p0

    return-object p1

    .line 5
    :cond_15
    :try_start_15
    new-instance v2, Ljava/io/File;

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 6
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_2a

    .line 7
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1
    :try_end_28
    .catchall {:try_start_15 .. :try_end_28} :catchall_34

    monitor-exit p0

    return-object p1

    .line 9
    :cond_2a
    :try_start_2a
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1
    :try_end_32
    .catchall {:try_start_2a .. :try_end_32} :catchall_34

    monitor-exit p0

    return-object p1

    :catchall_34
    move-exception p1

    :try_start_35
    monitor-exit p0
    :try_end_36
    .catchall {:try_start_35 .. :try_end_36} :catchall_34

    throw p1
.end method

.method public declared-synchronized getDBMaxLength(Ljava/lang/String;)Ljava/lang/Long;
    .registers 4

    monitor-enter p0

    .line 1
    :try_start_1
    iget-object v0, p0, Lio/dcloud/common/util/db/DCStorage;->mDatabaseSupplier:Lio/dcloud/common/util/db/DCSQLiteOpenHelper;

    invoke-direct {p0, p1}, Lio/dcloud/common/util/db/DCStorage;->getCurrentTableName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lio/dcloud/common/util/db/DCSQLiteOpenHelper;->getDatabase(Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    if-nez p1, :cond_15

    const-wide/16 v0, 0x0

    .line 3
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_1f

    monitor-exit p0

    return-object p1

    .line 5
    :cond_15
    :try_start_15
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->getMaximumSize()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1
    :try_end_1d
    .catchall {:try_start_15 .. :try_end_1d} :catchall_1f

    monitor-exit p0

    return-object p1

    :catchall_1f
    move-exception p1

    :try_start_20
    monitor-exit p0
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_1f

    throw p1
.end method

.method public declared-synchronized performClear(Landroid/content/Context;Ljava/lang/String;)Lio/dcloud/common/util/db/DCStorage$StorageInfo;
    .registers 8

    const-string v0, "delete from "

    monitor-enter p0

    .line 1
    :try_start_3
    iget-object v1, p0, Lio/dcloud/common/util/db/DCStorage;->mDatabaseSupplier:Lio/dcloud/common/util/db/DCSQLiteOpenHelper;

    invoke-direct {p0, p2}, Lio/dcloud/common/util/db/DCStorage;->getCurrentTableName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/dcloud/common/util/db/DCSQLiteOpenHelper;->getDatabase(Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 2
    new-instance v2, Lio/dcloud/common/util/db/DCStorage$StorageInfo;

    invoke-direct {v2, p0}, Lio/dcloud/common/util/db/DCStorage$StorageInfo;-><init>(Lio/dcloud/common/util/db/DCStorage;)V

    const/4 v3, -0x1

    if-nez v1, :cond_21

    .line 4
    iput v3, v2, Lio/dcloud/common/util/db/DCStorage$StorageInfo;->code:I

    .line 5
    sget p2, Lio/dcloud/base/R$string;->dcloud_storage_no_db_error:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v2, Lio/dcloud/common/util/db/DCStorage$StorageInfo;->meg:Ljava/lang/String;
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_6b

    monitor-exit p0

    return-object v2

    :cond_21
    const/4 v4, 0x1

    .line 8
    :try_start_22
    iput v4, v2, Lio/dcloud/common/util/db/DCStorage$StorageInfo;->code:I
    :try_end_24
    .catchall {:try_start_22 .. :try_end_24} :catchall_6b

    .line 10
    :try_start_24
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p2}, Lio/dcloud/common/util/db/DCStorage;->getCurrentTableName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 11
    invoke-static {}, Lio/dcloud/feature/internal/sdk/SDK;->isUniMPSDK()Z

    move-result v0

    if-nez v0, :cond_46

    .line 12
    iget-object v0, p0, Lio/dcloud/common/util/db/DCStorage;->mDatabaseSupplier:Lio/dcloud/common/util/db/DCSQLiteOpenHelper;

    invoke-direct {p0, p2}, Lio/dcloud/common/util/db/DCStorage;->getCurrentTableName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/dcloud/common/util/db/DCSQLiteOpenHelper;->ensureDatabase(Ljava/lang/String;)V

    .line 14
    :cond_46
    invoke-direct {p0, p1, p2}, Lio/dcloud/common/util/db/DCStorage;->clearDBFile(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_49
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_49} :catch_4b
    .catchall {:try_start_24 .. :try_end_49} :catchall_6b

    monitor-exit p0

    return-object v2

    :catch_4b
    move-exception p2

    .line 16
    :try_start_4c
    iput v3, v2, Lio/dcloud/common/util/db/DCStorage$StorageInfo;->code:I

    .line 17
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget v1, Lio/dcloud/base/R$string;->dcloud_storage_native_error:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v2, Lio/dcloud/common/util/db/DCStorage$StorageInfo;->meg:Ljava/lang/String;
    :try_end_69
    .catchall {:try_start_4c .. :try_end_69} :catchall_6b

    monitor-exit p0

    return-object v2

    :catchall_6b
    move-exception p1

    :try_start_6c
    monitor-exit p0
    :try_end_6d
    .catchall {:try_start_6c .. :try_end_6d} :catchall_6b

    throw p1
.end method

.method public declared-synchronized performGetAllKeys(Ljava/lang/String;)Lio/dcloud/common/util/db/DCStorage$StorageInfo;
    .registers 14

    monitor-enter p0

    .line 1
    :try_start_1
    iget-object v0, p0, Lio/dcloud/common/util/db/DCStorage;->mDatabaseSupplier:Lio/dcloud/common/util/db/DCSQLiteOpenHelper;

    invoke-direct {p0, p1}, Lio/dcloud/common/util/db/DCStorage;->getCurrentTableName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/dcloud/common/util/db/DCSQLiteOpenHelper;->getDatabase(Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 2
    new-instance v1, Lio/dcloud/common/util/db/DCStorage$StorageInfo;

    invoke-direct {v1, p0}, Lio/dcloud/common/util/db/DCStorage$StorageInfo;-><init>(Lio/dcloud/common/util/db/DCStorage;)V

    .line 3
    invoke-static {}, Lio/dcloud/application/DCLoudApplicationImpl;->self()Lio/dcloud/application/DCLoudApplicationImpl;

    move-result-object v0

    invoke-virtual {v0}, Lio/dcloud/application/DCLoudApplicationImpl;->getContext()Landroid/content/Context;

    move-result-object v10

    const/4 v11, -0x1

    if-nez v2, :cond_27

    .line 5
    iput v11, v1, Lio/dcloud/common/util/db/DCStorage$StorageInfo;->code:I

    .line 6
    sget p1, Lio/dcloud/base/R$string;->dcloud_storage_no_db_error:I

    invoke-virtual {v10, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v1, Lio/dcloud/common/util/db/DCStorage$StorageInfo;->meg:Ljava/lang/String;
    :try_end_25
    .catchall {:try_start_1 .. :try_end_25} :catchall_86

    monitor-exit p0

    return-object v1

    .line 10
    :cond_27
    :try_start_27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 11
    invoke-direct {p0, p1}, Lio/dcloud/common/util/db/DCStorage;->getCurrentTableName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string p1, "key"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v4

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_3f
    .catchall {:try_start_27 .. :try_end_3f} :catchall_86

    .line 13
    :goto_3f
    :try_start_3f
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_53

    .line 14
    const-string v2, "key"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3f

    :cond_53
    const/4 v2, 0x1

    .line 16
    iput v2, v1, Lio/dcloud/common/util/db/DCStorage$StorageInfo;->code:I

    .line 17
    iput-object v0, v1, Lio/dcloud/common/util/db/DCStorage$StorageInfo;->v:Ljava/lang/Object;
    :try_end_58
    .catch Ljava/lang/Exception; {:try_start_3f .. :try_end_58} :catch_5f
    .catchall {:try_start_3f .. :try_end_58} :catchall_5d

    .line 23
    :try_start_58
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_5b
    .catchall {:try_start_58 .. :try_end_5b} :catchall_86

    monitor-exit p0

    return-object v1

    :catchall_5d
    move-exception v0

    goto :goto_82

    :catch_5f
    move-exception v0

    .line 24
    :try_start_60
    iput v11, v1, Lio/dcloud/common/util/db/DCStorage$StorageInfo;->code:I

    .line 25
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget v3, Lio/dcloud/base/R$string;->dcloud_storage_native_error:I

    invoke-virtual {v10, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lio/dcloud/common/util/db/DCStorage$StorageInfo;->meg:Ljava/lang/String;
    :try_end_7d
    .catchall {:try_start_60 .. :try_end_7d} :catchall_5d

    .line 27
    :try_start_7d
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_80
    .catchall {:try_start_7d .. :try_end_80} :catchall_86

    monitor-exit p0

    return-object v1

    .line 28
    :goto_82
    :try_start_82
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 29
    throw v0

    :catchall_86
    move-exception v0

    move-object p1, v0

    monitor-exit p0
    :try_end_89
    .catchall {:try_start_82 .. :try_end_89} :catchall_86

    throw p1
.end method

.method public declared-synchronized performGetItem(Ljava/lang/String;Ljava/lang/String;)Lio/dcloud/common/util/db/DCStorage$StorageInfo;
    .registers 15

    monitor-enter p0

    .line 1
    :try_start_1
    iget-object v0, p0, Lio/dcloud/common/util/db/DCStorage;->mDatabaseSupplier:Lio/dcloud/common/util/db/DCSQLiteOpenHelper;

    invoke-direct {p0, p1}, Lio/dcloud/common/util/db/DCStorage;->getCurrentTableName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/dcloud/common/util/db/DCSQLiteOpenHelper;->getDatabase(Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 2
    new-instance v1, Lio/dcloud/common/util/db/DCStorage$StorageInfo;

    invoke-direct {v1, p0}, Lio/dcloud/common/util/db/DCStorage$StorageInfo;-><init>(Lio/dcloud/common/util/db/DCStorage;)V

    .line 3
    invoke-static {}, Lio/dcloud/application/DCLoudApplicationImpl;->self()Lio/dcloud/application/DCLoudApplicationImpl;

    move-result-object v0

    invoke-virtual {v0}, Lio/dcloud/application/DCLoudApplicationImpl;->getContext()Landroid/content/Context;

    move-result-object v10

    const/4 v11, -0x1

    if-nez v2, :cond_27

    .line 5
    iput v11, v1, Lio/dcloud/common/util/db/DCStorage$StorageInfo;->code:I

    .line 6
    sget p1, Lio/dcloud/base/R$string;->dcloud_storage_no_db_error:I

    invoke-virtual {v10, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v1, Lio/dcloud/common/util/db/DCStorage$StorageInfo;->meg:Ljava/lang/String;
    :try_end_25
    .catchall {:try_start_1 .. :try_end_25} :catchall_de

    monitor-exit p0

    return-object v1

    .line 10
    :cond_27
    :try_start_27
    invoke-direct {p0, p1}, Lio/dcloud/common/util/db/DCStorage;->getCurrentTableName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v0, "value"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v4

    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object v6

    const-string v5, "key=?"

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2
    :try_end_3f
    .catchall {:try_start_27 .. :try_end_3f} :catchall_de

    .line 16
    :try_start_3f
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_a5

    .line 17
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 19
    const-string/jumbo v3, "timestamp"

    sget-object v4, Lio/dcloud/common/util/db/DCSQLiteOpenHelper;->sDateFormatter:Ljava/text/SimpleDateFormat;

    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    invoke-virtual {v4, v5}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    iget-object v3, p0, Lio/dcloud/common/util/db/DCStorage;->mDatabaseSupplier:Lio/dcloud/common/util/db/DCSQLiteOpenHelper;

    invoke-direct {p0, p1}, Lio/dcloud/common/util/db/DCStorage;->getCurrentTableName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lio/dcloud/common/util/db/DCSQLiteOpenHelper;->getDatabase(Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    invoke-direct {p0, p1}, Lio/dcloud/common/util/db/DCStorage;->getCurrentTableName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v4, "key= ?"

    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v3, p1, v0, v4, p2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 23
    const-string/jumbo p1, "value"

    invoke-interface {v2, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {v2, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 25
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_9b

    iget-object p2, p0, Lio/dcloud/common/util/db/DCStorage;->DCDBFILE_START:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_9b

    .line 26
    invoke-direct {p0, p1}, Lio/dcloud/common/util/db/DCStorage;->getDBFileValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 27
    invoke-static {p2}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_98

    .line 28
    iput-object p1, v1, Lio/dcloud/common/util/db/DCStorage$StorageInfo;->v:Ljava/lang/Object;

    goto :goto_9d

    .line 30
    :cond_98
    iput-object p2, v1, Lio/dcloud/common/util/db/DCStorage$StorageInfo;->v:Ljava/lang/Object;

    goto :goto_9d

    .line 33
    :cond_9b
    iput-object p1, v1, Lio/dcloud/common/util/db/DCStorage$StorageInfo;->v:Ljava/lang/Object;

    :goto_9d
    const/4 p1, 0x1

    .line 35
    iput p1, v1, Lio/dcloud/common/util/db/DCStorage$StorageInfo;->code:I
    :try_end_a0
    .catch Ljava/lang/Exception; {:try_start_3f .. :try_end_a0} :catch_b6
    .catchall {:try_start_3f .. :try_end_a0} :catchall_b3

    .line 48
    :try_start_a0
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_a3
    .catchall {:try_start_a0 .. :try_end_a3} :catchall_de

    monitor-exit p0

    return-object v1

    :cond_a5
    const/4 p1, -0x3

    .line 49
    :try_start_a6
    iput p1, v1, Lio/dcloud/common/util/db/DCStorage$StorageInfo;->code:I

    .line 50
    invoke-direct {p0, v10, p1}, Lio/dcloud/common/util/db/DCStorage;->getMsgForCode(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v1, Lio/dcloud/common/util/db/DCStorage$StorageInfo;->meg:Ljava/lang/String;
    :try_end_ae
    .catch Ljava/lang/Exception; {:try_start_a6 .. :try_end_ae} :catch_b6
    .catchall {:try_start_a6 .. :try_end_ae} :catchall_b3

    .line 59
    :try_start_ae
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_b1
    .catchall {:try_start_ae .. :try_end_b1} :catchall_de

    monitor-exit p0

    return-object v1

    :catchall_b3
    move-exception v0

    move-object p1, v0

    goto :goto_da

    :catch_b6
    move-exception v0

    move-object p1, v0

    .line 60
    :try_start_b8
    iput v11, v1, Lio/dcloud/common/util/db/DCStorage$StorageInfo;->code:I

    .line 61
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    sget v0, Lio/dcloud/base/R$string;->dcloud_storage_native_error:I

    invoke-virtual {v10, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v1, Lio/dcloud/common/util/db/DCStorage$StorageInfo;->meg:Ljava/lang/String;
    :try_end_d5
    .catchall {:try_start_b8 .. :try_end_d5} :catchall_b3

    .line 64
    :try_start_d5
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_d8
    .catchall {:try_start_d5 .. :try_end_d8} :catchall_de

    monitor-exit p0

    return-object v1

    .line 65
    :goto_da
    :try_start_da
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 66
    throw p1

    :catchall_de
    move-exception v0

    move-object p1, v0

    monitor-exit p0
    :try_end_e1
    .catchall {:try_start_da .. :try_end_e1} :catchall_de

    throw p1
.end method

.method public declared-synchronized performGetLength(Ljava/lang/String;)Lio/dcloud/common/util/db/DCStorage$StorageInfo;
    .registers 9

    const-string v0, "SELECT count(key) FROM "

    monitor-enter p0

    .line 1
    :try_start_3
    iget-object v1, p0, Lio/dcloud/common/util/db/DCStorage;->mDatabaseSupplier:Lio/dcloud/common/util/db/DCSQLiteOpenHelper;

    invoke-direct {p0, p1}, Lio/dcloud/common/util/db/DCStorage;->getCurrentTableName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/dcloud/common/util/db/DCSQLiteOpenHelper;->getDatabase(Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 2
    new-instance v2, Lio/dcloud/common/util/db/DCStorage$StorageInfo;

    invoke-direct {v2, p0}, Lio/dcloud/common/util/db/DCStorage$StorageInfo;-><init>(Lio/dcloud/common/util/db/DCStorage;)V

    .line 3
    invoke-static {}, Lio/dcloud/application/DCLoudApplicationImpl;->self()Lio/dcloud/application/DCLoudApplicationImpl;

    move-result-object v3

    invoke-virtual {v3}, Lio/dcloud/application/DCLoudApplicationImpl;->getContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, -0x1

    if-nez v1, :cond_29

    .line 5
    iput v4, v2, Lio/dcloud/common/util/db/DCStorage$StorageInfo;->code:I

    .line 6
    sget p1, Lio/dcloud/base/R$string;->dcloud_storage_no_db_error:I

    invoke-virtual {v3, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v2, Lio/dcloud/common/util/db/DCStorage$StorageInfo;->meg:Ljava/lang/String;
    :try_end_27
    .catchall {:try_start_3 .. :try_end_27} :catchall_7a

    monitor-exit p0

    return-object v2

    .line 10
    :cond_29
    :try_start_29
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lio/dcloud/common/util/db/DCStorage;->getCurrentTableName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_39
    .catchall {:try_start_29 .. :try_end_39} :catchall_7a

    const/4 v0, 0x0

    .line 13
    :try_start_3a
    invoke-virtual {v1, p1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    .line 14
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->simpleQueryForLong()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, v2, Lio/dcloud/common/util/db/DCStorage$StorageInfo;->v:Ljava/lang/Object;

    const/4 p1, 0x1

    .line 15
    iput p1, v2, Lio/dcloud/common/util/db/DCStorage$StorageInfo;->code:I
    :try_end_4b
    .catch Ljava/lang/Exception; {:try_start_3a .. :try_end_4b} :catch_52
    .catchall {:try_start_3a .. :try_end_4b} :catchall_50

    .line 23
    :try_start_4b
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->close()V
    :try_end_4e
    .catchall {:try_start_4b .. :try_end_4e} :catchall_7a

    monitor-exit p0

    return-object v2

    :catchall_50
    nop

    goto :goto_73

    :catch_52
    move-exception p1

    .line 24
    :try_start_53
    iput v4, v2, Lio/dcloud/common/util/db/DCStorage$StorageInfo;->code:I

    .line 25
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget v4, Lio/dcloud/base/R$string;->dcloud_storage_native_error:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v2, Lio/dcloud/common/util/db/DCStorage$StorageInfo;->meg:Ljava/lang/String;
    :try_end_70
    .catchall {:try_start_53 .. :try_end_70} :catchall_50

    if-eqz v0, :cond_78

    goto :goto_75

    :goto_73
    if-eqz v0, :cond_78

    .line 29
    :goto_75
    :try_start_75
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->close()V
    :try_end_78
    .catchall {:try_start_75 .. :try_end_78} :catchall_7a

    :cond_78
    monitor-exit p0

    return-object v2

    :catchall_7a
    move-exception p1

    :try_start_7b
    monitor-exit p0
    :try_end_7c
    .catchall {:try_start_7b .. :try_end_7c} :catchall_7a

    throw p1
.end method

.method public declared-synchronized performRemoveItem(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lio/dcloud/common/util/db/DCStorage$StorageInfo;
    .registers 10

    monitor-enter p0

    .line 1
    :try_start_1
    iget-object v0, p0, Lio/dcloud/common/util/db/DCStorage;->mDatabaseSupplier:Lio/dcloud/common/util/db/DCSQLiteOpenHelper;

    invoke-direct {p0, p2}, Lio/dcloud/common/util/db/DCStorage;->getCurrentTableName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/dcloud/common/util/db/DCSQLiteOpenHelper;->getDatabase(Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 2
    new-instance v1, Lio/dcloud/common/util/db/DCStorage$StorageInfo;

    invoke-direct {v1, p0}, Lio/dcloud/common/util/db/DCStorage$StorageInfo;-><init>(Lio/dcloud/common/util/db/DCStorage;)V

    const/4 v2, -0x1

    if-nez v0, :cond_1f

    .line 4
    iput v2, v1, Lio/dcloud/common/util/db/DCStorage$StorageInfo;->code:I

    .line 5
    sget p2, Lio/dcloud/base/R$string;->dcloud_storage_no_db_error:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v1, Lio/dcloud/common/util/db/DCStorage$StorageInfo;->meg:Ljava/lang/String;
    :try_end_1d
    .catchall {:try_start_1 .. :try_end_1d} :catchall_64

    monitor-exit p0

    return-object v1

    .line 11
    :cond_1f
    :try_start_1f
    invoke-direct {p0, p2}, Lio/dcloud/common/util/db/DCStorage;->getCurrentTableName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "key=?"

    filled-new-array {p3}, [Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_32

    .line 15
    invoke-direct {p0, p1, p2, p3}, Lio/dcloud/common/util/db/DCStorage;->removeDBFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_32
    const/4 p2, 0x1

    if-ne v0, p2, :cond_39

    .line 18
    iput p2, v1, Lio/dcloud/common/util/db/DCStorage$StorageInfo;->code:I
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_37} :catch_44
    .catchall {:try_start_1f .. :try_end_37} :catchall_64

    monitor-exit p0

    return-object v1

    :cond_39
    const/4 p2, -0x3

    .line 20
    :try_start_3a
    iput p2, v1, Lio/dcloud/common/util/db/DCStorage$StorageInfo;->code:I

    .line 21
    invoke-direct {p0, p1, p2}, Lio/dcloud/common/util/db/DCStorage;->getMsgForCode(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, v1, Lio/dcloud/common/util/db/DCStorage$StorageInfo;->meg:Ljava/lang/String;
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_3a .. :try_end_42} :catch_44
    .catchall {:try_start_3a .. :try_end_42} :catchall_64

    monitor-exit p0

    return-object v1

    :catch_44
    move-exception p2

    .line 25
    :try_start_45
    iput v2, v1, Lio/dcloud/common/util/db/DCStorage$StorageInfo;->code:I

    .line 26
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    sget v0, Lio/dcloud/base/R$string;->dcloud_storage_native_error:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v1, Lio/dcloud/common/util/db/DCStorage$StorageInfo;->meg:Ljava/lang/String;
    :try_end_62
    .catchall {:try_start_45 .. :try_end_62} :catchall_64

    monitor-exit p0

    return-object v1

    :catchall_64
    move-exception p1

    :try_start_65
    monitor-exit p0
    :try_end_66
    .catchall {:try_start_65 .. :try_end_66} :catchall_64

    throw p1
.end method

.method public declared-synchronized performSetItem(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/dcloud/common/util/db/DCStorage$StorageInfo;
    .registers 13

    const-string v0, "INSERT OR REPLACE INTO "

    monitor-enter p0

    .line 1
    :try_start_3
    iget-object v1, p0, Lio/dcloud/common/util/db/DCStorage;->mDatabaseSupplier:Lio/dcloud/common/util/db/DCSQLiteOpenHelper;

    invoke-direct {p0, p2}, Lio/dcloud/common/util/db/DCStorage;->getCurrentTableName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/dcloud/common/util/db/DCSQLiteOpenHelper;->getDatabase(Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 2
    new-instance v2, Lio/dcloud/common/util/db/DCStorage$StorageInfo;

    invoke-direct {v2, p0}, Lio/dcloud/common/util/db/DCStorage$StorageInfo;-><init>(Lio/dcloud/common/util/db/DCStorage;)V

    const/4 v3, -0x1

    if-nez v1, :cond_21

    .line 4
    iput v3, v2, Lio/dcloud/common/util/db/DCStorage$StorageInfo;->code:I

    .line 5
    sget p2, Lio/dcloud/base/R$string;->dcloud_storage_no_db_error:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v2, Lio/dcloud/common/util/db/DCStorage$StorageInfo;->meg:Ljava/lang/String;
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_104

    monitor-exit p0

    return-object v2

    .line 10
    :cond_21
    :try_start_21
    invoke-static {p3}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_33

    .line 11
    iput v3, v2, Lio/dcloud/common/util/db/DCStorage$StorageInfo;->code:I

    .line 12
    sget p2, Lio/dcloud/base/R$string;->dcloud_storage_key_error:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v2, Lio/dcloud/common/util/db/DCStorage$StorageInfo;->meg:Ljava/lang/String;
    :try_end_31
    .catchall {:try_start_21 .. :try_end_31} :catchall_104

    monitor-exit p0

    return-object v2

    .line 15
    :cond_33
    :try_start_33
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p2}, Lio/dcloud/common/util/db/DCStorage;->getCurrentTableName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " VALUES (?,?,?);"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 17
    sget-object v4, Lio/dcloud/common/util/db/DCSQLiteOpenHelper;->sDateFormatter:Ljava/text/SimpleDateFormat;

    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    invoke-virtual {v4, v5}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4
    :try_end_53
    .catchall {:try_start_33 .. :try_end_53} :catchall_104

    const/4 v5, 0x0

    .line 20
    :try_start_54
    invoke-virtual {p4}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    array-length v6, v6

    const v7, 0x1b7740

    if-lt v6, v7, :cond_aa

    .line 21
    invoke-direct {p0, p1, p2, p3, p4}, Lio/dcloud/common/util/db/DCStorage;->saveDBFileValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    .line 22
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_70

    iget-object p2, p0, Lio/dcloud/common/util/db/DCStorage;->ERROR_TAG:Ljava/lang/String;

    invoke-virtual {p4, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_aa

    .line 23
    :cond_70
    iput v3, v2, Lio/dcloud/common/util/db/DCStorage$StorageInfo;->code:I

    .line 24
    sget p2, Lio/dcloud/base/R$string;->dcloud_storage_write_big_error:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, v2, Lio/dcloud/common/util/db/DCStorage$StorageInfo;->meg:Ljava/lang/String;

    .line 25
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_fc

    iget-object p2, p0, Lio/dcloud/common/util/db/DCStorage;->ERROR_TAG:Ljava/lang/String;

    invoke-virtual {p4, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_fc

    .line 26
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p3, v2, Lio/dcloud/common/util/db/DCStorage$StorageInfo;->meg:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " error "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lio/dcloud/common/util/db/DCStorage;->ERROR_TAG:Ljava/lang/String;

    const-string v0, ""

    invoke-virtual {p4, p3, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, v2, Lio/dcloud/common/util/db/DCStorage$StorageInfo;->meg:Ljava/lang/String;
    :try_end_a8
    .catch Ljava/lang/Exception; {:try_start_54 .. :try_end_a8} :catch_c9
    .catchall {:try_start_54 .. :try_end_a8} :catchall_c7

    monitor-exit p0

    return-object v2

    .line 31
    :cond_aa
    :try_start_aa
    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v5

    .line 32
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteProgram;->clearBindings()V

    const/4 p2, 0x1

    .line 33
    invoke-virtual {v5, p2, p3}, Landroid/database/sqlite/SQLiteProgram;->bindString(ILjava/lang/String;)V

    const/4 p3, 0x2

    .line 34
    invoke-virtual {v5, p3, p4}, Landroid/database/sqlite/SQLiteProgram;->bindString(ILjava/lang/String;)V

    const/4 p3, 0x3

    .line 35
    invoke-virtual {v5, p3, v4}, Landroid/database/sqlite/SQLiteProgram;->bindString(ILjava/lang/String;)V

    .line 36
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 37
    iput p2, v2, Lio/dcloud/common/util/db/DCStorage$StorageInfo;->code:I
    :try_end_c2
    .catch Ljava/lang/Exception; {:try_start_aa .. :try_end_c2} :catch_c9
    .catchall {:try_start_aa .. :try_end_c2} :catchall_c7

    .line 58
    :try_start_c2
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteStatement;->close()V
    :try_end_c5
    .catchall {:try_start_c2 .. :try_end_c5} :catchall_104

    monitor-exit p0

    return-object v2

    :catchall_c7
    move-exception p1

    goto :goto_fe

    :catch_c9
    move-exception p2

    .line 59
    :try_start_ca
    instance-of p3, p2, Landroid/database/sqlite/SQLiteFullException;

    if-eqz p3, :cond_da

    const/4 p2, -0x2

    .line 67
    iput p2, v2, Lio/dcloud/common/util/db/DCStorage$StorageInfo;->code:I

    .line 68
    invoke-direct {p0, p1, p2}, Lio/dcloud/common/util/db/DCStorage;->getMsgForCode(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v2, Lio/dcloud/common/util/db/DCStorage$StorageInfo;->meg:Ljava/lang/String;

    if-eqz v5, :cond_fc

    goto :goto_f9

    .line 77
    :cond_da
    iput v3, v2, Lio/dcloud/common/util/db/DCStorage$StorageInfo;->code:I

    .line 78
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    sget p4, Lio/dcloud/base/R$string;->dcloud_storage_native_error:I

    invoke-virtual {p1, p4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v2, Lio/dcloud/common/util/db/DCStorage$StorageInfo;->meg:Ljava/lang/String;
    :try_end_f7
    .catchall {:try_start_ca .. :try_end_f7} :catchall_c7

    if-eqz v5, :cond_fc

    .line 76
    :goto_f9
    :try_start_f9
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteStatement;->close()V
    :try_end_fc
    .catchall {:try_start_f9 .. :try_end_fc} :catchall_104

    .line 78
    :cond_fc
    monitor-exit p0

    return-object v2

    :goto_fe
    if-eqz v5, :cond_103

    .line 82
    :try_start_100
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 84
    :cond_103
    throw p1

    :catchall_104
    move-exception p1

    monitor-exit p0
    :try_end_106
    .catchall {:try_start_100 .. :try_end_106} :catchall_104

    throw p1
.end method

###### Class io.dcloud.common.util.db.DCStorage.AnonymousClass1 (io.dcloud.common.util.db.DCStorage$1)
.class Lio/dcloud/common/util/db/DCStorage$1;
.super Ljava/lang/Object;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/common/util/db/DCStorage;->close()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/dcloud/common/util/db/DCStorage;


# direct methods
.method constructor <init>(Lio/dcloud/common/util/db/DCStorage;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/dcloud/common/util/db/DCStorage$1;->this$0:Lio/dcloud/common/util/db/DCStorage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lio/dcloud/common/util/db/DCStorage$1;->this$0:Lio/dcloud/common/util/db/DCStorage;

    invoke-static {v0}, Lio/dcloud/common/util/db/DCStorage;->access$000(Lio/dcloud/common/util/db/DCStorage;)Lio/dcloud/common/util/db/DCSQLiteOpenHelper;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 2
    iget-object v0, p0, Lio/dcloud/common/util/db/DCStorage$1;->this$0:Lio/dcloud/common/util/db/DCStorage;

    invoke-static {v0}, Lio/dcloud/common/util/db/DCStorage;->access$000(Lio/dcloud/common/util/db/DCStorage;)Lio/dcloud/common/util/db/DCSQLiteOpenHelper;

    move-result-object v0

    invoke-virtual {v0}, Lio/dcloud/common/util/db/DCSQLiteOpenHelper;->closeDatabase()V

    .line 4
    :cond_11
    iget-object v0, p0, Lio/dcloud/common/util/db/DCStorage$1;->this$0:Lio/dcloud/common/util/db/DCStorage;

    invoke-static {v0}, Lio/dcloud/common/util/db/DCStorage;->access$100(Lio/dcloud/common/util/db/DCStorage;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    if-eqz v0, :cond_27

    .line 5
    iget-object v0, p0, Lio/dcloud/common/util/db/DCStorage$1;->this$0:Lio/dcloud/common/util/db/DCStorage;

    invoke-static {v0}, Lio/dcloud/common/util/db/DCStorage;->access$100(Lio/dcloud/common/util/db/DCStorage;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_22} :catch_23

    goto :goto_27

    :catch_23
    move-exception v0

    .line 8
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 10
    :cond_27
    :goto_27
    iget-object v0, p0, Lio/dcloud/common/util/db/DCStorage$1;->this$0:Lio/dcloud/common/util/db/DCStorage;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lio/dcloud/common/util/db/DCStorage;->access$102(Lio/dcloud/common/util/db/DCStorage;Ljava/util/concurrent/ExecutorService;)Ljava/util/concurrent/ExecutorService;

    return-void
.end method

###### Class io.dcloud.common.util.db.DCStorage.StorageInfo (io.dcloud.common.util.db.DCStorage$StorageInfo)
.class public Lio/dcloud/common/util/db/DCStorage$StorageInfo;
.super Ljava/lang/Object;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/common/util/db/DCStorage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "StorageInfo"
.end annotation


# instance fields
.field public code:I

.field public meg:Ljava/lang/String;

.field final synthetic this$0:Lio/dcloud/common/util/db/DCStorage;

.field public v:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lio/dcloud/common/util/db/DCStorage;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/dcloud/common/util/db/DCStorage$StorageInfo;->this$0:Lio/dcloud/common/util/db/DCStorage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
