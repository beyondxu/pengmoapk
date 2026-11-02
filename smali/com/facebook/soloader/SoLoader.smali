###### Class com.facebook.soloader.SoLoader (com.facebook.soloader.SoLoader)
.class public Lcom/facebook/soloader/SoLoader;
.super Ljava/lang/Object;
.source "SoLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/soloader/SoLoader$WrongAbiError;,
        Lcom/facebook/soloader/SoLoader$TestOnlyUtils;,
        Lcom/facebook/soloader/SoLoader$AppType;
    }
.end annotation


# static fields
.field static final DEBUG:Z = false

.field public static final SOLOADER_ALLOW_ASYNC_INIT:I = 0x2

.field public static final SOLOADER_DISABLE_BACKUP_SOSOURCE:I = 0x8

.field public static final SOLOADER_DISABLE_FS_SYNC_JOB:I = 0x100

.field public static final SOLOADER_DONT_TREAT_AS_SYSTEMAPP:I = 0x20
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SOLOADER_ENABLE_DIRECT_SOSOURCE:I = 0x40
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SOLOADER_ENABLE_EXOPACKAGE:I = 0x1

.field public static final SOLOADER_ENABLE_SYSTEMLOAD_WRAPPER_SOSOURCE:I = 0x200

.field public static final SOLOADER_EXPLICITLY_ENABLE_BACKUP_SOSOURCE:I = 0x80

.field public static final SOLOADER_LOOK_IN_ZIP:I = 0x4

.field public static final SOLOADER_SKIP_MERGED_JNI_ONLOAD:I = 0x10

.field private static final SO_STORE_NAME_MAIN:Ljava/lang/String; = "lib-main"

.field private static final SO_STORE_NAME_SPLIT:Ljava/lang/String; = "lib-"

.field static final SYSTRACE_LIBRARY_LOADING:Z

.field public static final TAG:Ljava/lang/String; = "SoLoader"

.field public static VERSION:Ljava/lang/String; = "0.10.5"

.field private static isEnabled:Z

.field private static sAppType:I

.field static sApplicationContext:Landroid/content/Context;

.field private static sFlags:I

.field private static final sLoadedAndMergedLibraries:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sLoadedLibraries:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sLoadingLibraries:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static sRecoveryStrategyFactory:Lcom/facebook/soloader/recovery/RecoveryStrategyFactory;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field static sSoFileLoader:Lcom/facebook/soloader/SoFileLoader;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private static volatile sSoSources:[Lcom/facebook/soloader/SoSource;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private static final sSoSourcesLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

.field private static final sSoSourcesVersion:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static sSystemLoadLibraryWrapper:Lcom/facebook/soloader/SystemLoadLibraryWrapper;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 102
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    sput-object v0, Lcom/facebook/soloader/SoLoader;->sSoSourcesLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    const/4 v0, 0x0

    .line 104
    sput-object v0, Lcom/facebook/soloader/SoLoader;->sApplicationContext:Landroid/content/Context;

    .line 112
    sput-object v0, Lcom/facebook/soloader/SoLoader;->sSoSources:[Lcom/facebook/soloader/SoSource;

    .line 115
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v1, Lcom/facebook/soloader/SoLoader;->sSoSourcesVersion:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 119
    sput-object v0, Lcom/facebook/soloader/SoLoader;->sRecoveryStrategyFactory:Lcom/facebook/soloader/recovery/RecoveryStrategyFactory;

    .line 123
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    sput-object v1, Lcom/facebook/soloader/SoLoader;->sLoadedLibraries:Ljava/util/HashSet;

    .line 132
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/facebook/soloader/SoLoader;->sLoadingLibraries:Ljava/util/Map;

    .line 139
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 140
    invoke-static {v1}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v1

    sput-object v1, Lcom/facebook/soloader/SoLoader;->sLoadedAndMergedLibraries:Ljava/util/Set;

    .line 143
    sput-object v0, Lcom/facebook/soloader/SoLoader;->sSystemLoadLibraryWrapper:Lcom/facebook/soloader/SystemLoadLibraryWrapper;

    const/4 v0, 0x1

    .line 146
    sput-boolean v0, Lcom/facebook/soloader/SoLoader;->isEnabled:Z

    .line 225
    sput v2, Lcom/facebook/soloader/SoLoader;->sAppType:I

    .line 235
    sput-boolean v0, Lcom/facebook/soloader/SoLoader;->SYSTRACE_LIBRARY_LOADING:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/util/concurrent/locks/ReentrantReadWriteLock;
    .registers 1

    .line 87
    sget-object v0, Lcom/facebook/soloader/SoLoader;->sSoSourcesLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    return-object v0
.end method

.method static synthetic access$102([Lcom/facebook/soloader/SoSource;)[Lcom/facebook/soloader/SoSource;
    .registers 1

    .line 87
    sput-object p0, Lcom/facebook/soloader/SoLoader;->sSoSources:[Lcom/facebook/soloader/SoSource;

    return-object p0
.end method

.method static synthetic access$200()Ljava/util/concurrent/atomic/AtomicInteger;
    .registers 1

    .line 87
    sget-object v0, Lcom/facebook/soloader/SoLoader;->sSoSourcesVersion:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method static synthetic access$300()Ljava/util/HashSet;
    .registers 1

    .line 87
    sget-object v0, Lcom/facebook/soloader/SoLoader;->sLoadedLibraries:Ljava/util/HashSet;

    return-object v0
.end method

.method static synthetic access$400()Ljava/util/Map;
    .registers 1

    .line 87
    sget-object v0, Lcom/facebook/soloader/SoLoader;->sLoadingLibraries:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$502(Lcom/facebook/soloader/recovery/RecoveryStrategyFactory;)Lcom/facebook/soloader/recovery/RecoveryStrategyFactory;
    .registers 1

    .line 87
    sput-object p0, Lcom/facebook/soloader/SoLoader;->sRecoveryStrategyFactory:Lcom/facebook/soloader/recovery/RecoveryStrategyFactory;

    return-object p0
.end method

.method private static addApplicationSoSource(Ljava/util/ArrayList;I)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/facebook/soloader/SoSource;",
            ">;I)V"
        }
    .end annotation

    .line 450
    new-instance v0, Lcom/facebook/soloader/ApplicationSoSource;

    sget-object v1, Lcom/facebook/soloader/SoLoader;->sApplicationContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lcom/facebook/soloader/ApplicationSoSource;-><init>(Landroid/content/Context;I)V

    .line 451
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "Adding application source: "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/facebook/soloader/SoSource;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "SoLoader"

    invoke-static {v1, p1}, Lcom/facebook/soloader/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 452
    invoke-virtual {p0, p1, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    return-void
.end method

.method private static addBackupSoSource(Landroid/content/Context;Ljava/util/ArrayList;I)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Lcom/facebook/soloader/SoSource;",
            ">;I)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 459
    sget v0, Lcom/facebook/soloader/SoLoader;->sFlags:I

    and-int/lit8 v0, v0, 0x8

    const-string v1, "SoLoader"

    const-string v2, "lib-main"

    if-eqz v0, :cond_2f

    .line 461
    invoke-static {p0, v2}, Lcom/facebook/soloader/UnpackingSoSource;->getSoStorePath(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    .line 463
    :try_start_e
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_17

    .line 464
    invoke-static {p0}, Lcom/facebook/soloader/SysUtil;->dumbDelete(Ljava/io/File;)V
    :try_end_17
    .catchall {:try_start_e .. :try_end_17} :catchall_18

    :cond_17
    return-void

    :catchall_18
    move-exception p1

    .line 467
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Failed to delete "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0, p1}, Lcom/facebook/soloader/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    .line 472
    :cond_2f
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 473
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 474
    new-instance v4, Lcom/facebook/soloader/BackupSoSource;

    invoke-direct {v4, p0, v0, v2, p2}, Lcom/facebook/soloader/BackupSoSource;-><init>(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;I)V

    .line 476
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 477
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "adding backup source from : "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/facebook/soloader/BackupSoSource;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/facebook/soloader/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 479
    invoke-static {p0, p2, v3}, Lcom/facebook/soloader/SoLoader;->addBackupSoSourceFromSplitApk(Landroid/content/Context;ILjava/util/ArrayList;)V

    const/4 p0, 0x0

    .line 481
    invoke-virtual {p1, p0, v3}, Ljava/util/ArrayList;->addAll(ILjava/util/Collection;)Z

    return-void
.end method

.method private static addBackupSoSourceFromSplitApk(Landroid/content/Context;ILjava/util/ArrayList;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/ArrayList<",
            "Lcom/facebook/soloader/UnpackingSoSource;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 488
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->splitSourceDirs:[Ljava/lang/String;

    if-eqz v0, :cond_58

    .line 489
    const-string v0, "adding backup sources from split apks"

    const-string v1, "SoLoader"

    invoke-static {v1, v0}, Lcom/facebook/soloader/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 491
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->splitSourceDirs:[Ljava/lang/String;

    array-length v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_18
    if-ge v3, v2, :cond_58

    aget-object v5, v0, v3

    .line 492
    new-instance v6, Lcom/facebook/soloader/BackupSoSource;

    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v8, "lib-"

    invoke-direct {v5, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v8, v4, 0x1

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v6, p0, v7, v4, p1}, Lcom/facebook/soloader/BackupSoSource;-><init>(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;I)V

    .line 498
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "adding backup source: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Lcom/facebook/soloader/BackupSoSource;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/facebook/soloader/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 499
    invoke-virtual {v6}, Lcom/facebook/soloader/BackupSoSource;->hasZippedLibs()Z

    move-result v4

    if-eqz v4, :cond_54

    .line 500
    invoke-virtual {p2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_54
    add-int/lit8 v3, v3, 0x1

    move v4, v8

    goto :goto_18

    :cond_58
    return-void
.end method

.method private static addDirectApkSoSource(Landroid/content/Context;Ljava/util/ArrayList;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Lcom/facebook/soloader/SoSource;",
            ">;)V"
        }
    .end annotation

    .line 431
    new-instance v0, Lcom/facebook/soloader/DirectApkSoSource;

    invoke-direct {v0, p0}, Lcom/facebook/soloader/DirectApkSoSource;-><init>(Landroid/content/Context;)V

    .line 432
    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "validating/adding directApk source: "

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/facebook/soloader/DirectApkSoSource;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "SoLoader"

    invoke-static {v1, p0}, Lcom/facebook/soloader/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 433
    invoke-virtual {v0}, Lcom/facebook/soloader/DirectApkSoSource;->isValid()Z

    move-result p0

    if-eqz p0, :cond_27

    const/4 p0, 0x0

    .line 434
    invoke-virtual {p1, p0, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :cond_27
    return-void
.end method

.method private static addSystemLibSoSource(Ljava/util/ArrayList;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/facebook/soloader/SoSource;",
            ">;)V"
        }
    .end annotation

    .line 513
    invoke-static {}, Lcom/facebook/soloader/SysUtil;->is64Bit()Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "/system/lib64:/vendor/lib64"

    goto :goto_b

    :cond_9
    const-string v0, "/system/lib:/vendor/lib"

    .line 515
    :goto_b
    const-string v1, "LD_LIBRARY_PATH"

    invoke-static {v1}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 516
    const-string v2, ":"

    if-eqz v1, :cond_2f

    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2f

    .line 517
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 520
    :cond_2f
    new-instance v1, Ljava/util/HashSet;

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 521
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_40
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 525
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "adding system library source: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SoLoader"

    invoke-static {v3, v2}, Lcom/facebook/soloader/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 526
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 527
    new-instance v1, Lcom/facebook/soloader/DirectorySoSource;

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Lcom/facebook/soloader/DirectorySoSource;-><init>(Ljava/io/File;I)V

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_40

    :cond_6e
    return-void
.end method

.method private static addSystemLoadWrapperSoSource(Landroid/content/Context;Ljava/util/ArrayList;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Lcom/facebook/soloader/SoSource;",
            ">;)V"
        }
    .end annotation

    .line 532
    new-instance p0, Lcom/facebook/soloader/SystemLoadWrapperSoSource;

    invoke-direct {p0}, Lcom/facebook/soloader/SystemLoadWrapperSoSource;-><init>()V

    .line 533
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "adding systemLoadWrapper source: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SoLoader"

    invoke-static {v1, v0}, Lcom/facebook/soloader/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 534
    invoke-virtual {p1, v0, p0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    return-void
.end method

.method public static areSoSourcesAbisSupported()Z
    .registers 12

    .line 1209
    sget-object v0, Lcom/facebook/soloader/SoLoader;->sSoSourcesLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 1211
    :try_start_9
    sget-object v1, Lcom/facebook/soloader/SoLoader;->sSoSources:[Lcom/facebook/soloader/SoSource;
    :try_end_b
    .catchall {:try_start_9 .. :try_end_b} :catchall_68

    const/4 v2, 0x0

    if-nez v1, :cond_16

    .line 1232
    :goto_e
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    return v2

    .line 1215
    :cond_16
    :try_start_16
    invoke-static {}, Lcom/facebook/soloader/SysUtil;->getSupportedAbis()[Ljava/lang/String;

    move-result-object v0

    .line 1216
    sget-object v1, Lcom/facebook/soloader/SoLoader;->sSoSources:[Lcom/facebook/soloader/SoSource;

    array-length v3, v1

    const/4 v4, 0x0

    :goto_1e
    if-ge v4, v3, :cond_5d

    aget-object v5, v1, v4

    .line 1217
    invoke-virtual {v5}, Lcom/facebook/soloader/SoSource;->getSoSourceAbis()[Ljava/lang/String;

    move-result-object v5

    .line 1218
    array-length v6, v5

    const/4 v7, 0x0

    :goto_28
    if-ge v7, v6, :cond_5a

    aget-object v8, v5, v7

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 1220
    :goto_2e
    array-length v11, v0

    if-ge v9, v11, :cond_3c

    if-nez v10, :cond_3c

    .line 1221
    aget-object v10, v0, v9

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    add-int/lit8 v9, v9, 0x1

    goto :goto_2e

    :cond_3c
    if-nez v10, :cond_57

    .line 1224
    const-string v0, "SoLoader"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "abi not supported: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/facebook/soloader/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_54
    .catchall {:try_start_16 .. :try_end_54} :catchall_68

    .line 1232
    sget-object v0, Lcom/facebook/soloader/SoLoader;->sSoSourcesLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    goto :goto_e

    :cond_57
    add-int/lit8 v7, v7, 0x1

    goto :goto_28

    :cond_5a
    add-int/lit8 v4, v4, 0x1

    goto :goto_1e

    :cond_5d
    sget-object v0, Lcom/facebook/soloader/SoLoader;->sSoSourcesLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    const/4 v0, 0x1

    return v0

    :catchall_68
    move-exception v0

    sget-object v1, Lcom/facebook/soloader/SoLoader;->sSoSourcesLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 1233
    throw v0
.end method

.method private static assertInitialized()V
    .registers 2

    .line 1133
    invoke-static {}, Lcom/facebook/soloader/SoLoader;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 1134
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "SoLoader.init() not yet called"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static cloneSoSources()[Lcom/facebook/soloader/SoSource;
    .registers 2

    .line 705
    sget-object v0, Lcom/facebook/soloader/SoLoader;->sSoSourcesLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 707
    :try_start_9
    sget-object v1, Lcom/facebook/soloader/SoLoader;->sSoSources:[Lcom/facebook/soloader/SoSource;

    if-nez v1, :cond_11

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/facebook/soloader/SoSource;

    goto :goto_19

    :cond_11
    sget-object v1, Lcom/facebook/soloader/SoLoader;->sSoSources:[Lcom/facebook/soloader/SoSource;

    invoke-virtual {v1}, [Lcom/facebook/soloader/SoSource;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/facebook/soloader/SoSource;
    :try_end_19
    .catchall {:try_start_9 .. :try_end_19} :catchall_21

    .line 709
    :goto_19
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    return-object v1

    :catchall_21
    move-exception v0

    sget-object v1, Lcom/facebook/soloader/SoLoader;->sSoSourcesLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 710
    throw v0
.end method

.method public static deinitForTest()V
    .registers 1

    const/4 v0, 0x0

    .line 614
    invoke-static {v0}, Lcom/facebook/soloader/SoLoader$TestOnlyUtils;->setSoSources([Lcom/facebook/soloader/SoSource;)V

    return-void
.end method

.method private static doLoadLibraryBySoName(Ljava/lang/String;ILandroid/os/StrictMode$ThreadPolicy;)V
    .registers 8
    .param p2    # Landroid/os/StrictMode$ThreadPolicy;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsatisfiedLinkError;
        }
    .end annotation

    const-string v0, "SoLoader not initialized, couldn\'t find DSO to load: "

    const-string v1, "Could not load: "

    .line 1063
    sget-object v2, Lcom/facebook/soloader/SoLoader;->sSoSourcesLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 1065
    :try_start_d
    sget-object v3, Lcom/facebook/soloader/SoLoader;->sSoSources:[Lcom/facebook/soloader/SoSource;
    :try_end_f
    .catchall {:try_start_d .. :try_end_f} :catchall_b3

    if-eqz v3, :cond_8b

    .line 1071
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    const/4 v0, 0x0

    if-nez p2, :cond_21

    .line 1078
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object p2

    const/4 v1, 0x1

    goto :goto_22

    :cond_21
    const/4 v1, 0x0

    .line 1082
    :goto_22
    sget-boolean v3, Lcom/facebook/soloader/SoLoader;->SYSTRACE_LIBRARY_LOADING:Z

    if-eqz v3, :cond_2d

    .line 1083
    const-string v3, "SoLoader.loadLibrary["

    const-string v4, "]"

    invoke-static {v3, p0, v4}, Lcom/facebook/soloader/Api18TraceUtils;->beginTraceSection(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1087
    :cond_2d
    :try_start_2d
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V
    :try_end_34
    .catchall {:try_start_2d .. :try_end_34} :catchall_7d

    .line 1089
    :try_start_34
    sget-object v2, Lcom/facebook/soloader/SoLoader;->sSoSources:[Lcom/facebook/soloader/SoSource;

    array-length v3, v2

    :goto_37
    if-ge v0, v3, :cond_5a

    aget-object v4, v2, v0

    .line 1090
    invoke-virtual {v4, p0, p1, p2}, Lcom/facebook/soloader/SoSource;->loadLibrary(Ljava/lang/String;ILandroid/os/StrictMode$ThreadPolicy;)I

    move-result v4
    :try_end_3f
    .catch Ljava/io/IOException; {:try_start_34 .. :try_end_3f} :catch_65
    .catchall {:try_start_34 .. :try_end_3f} :catchall_63

    if-eqz v4, :cond_57

    .line 1103
    :try_start_41
    sget-object p0, Lcom/facebook/soloader/SoLoader;->sSoSourcesLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V
    :try_end_4a
    .catchall {:try_start_41 .. :try_end_4a} :catchall_7d

    .line 1106
    sget-boolean p0, Lcom/facebook/soloader/SoLoader;->SYSTRACE_LIBRARY_LOADING:Z

    if-eqz p0, :cond_51

    .line 1107
    invoke-static {}, Lcom/facebook/soloader/Api18TraceUtils;->endSection()V

    :cond_51
    if-eqz v1, :cond_56

    .line 1111
    invoke-static {p2}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    :cond_56
    return-void

    :cond_57
    add-int/lit8 v0, v0, 0x1

    goto :goto_37

    .line 1096
    :cond_5a
    :try_start_5a
    sget-object p1, Lcom/facebook/soloader/SoLoader;->sApplicationContext:Landroid/content/Context;

    sget-object v0, Lcom/facebook/soloader/SoLoader;->sSoSources:[Lcom/facebook/soloader/SoSource;

    invoke-static {p0, p1, v0}, Lcom/facebook/soloader/SoLoaderDSONotFoundError;->create(Ljava/lang/String;Landroid/content/Context;[Lcom/facebook/soloader/SoSource;)Lcom/facebook/soloader/SoLoaderDSONotFoundError;

    move-result-object p1

    throw p1
    :try_end_63
    .catch Ljava/io/IOException; {:try_start_5a .. :try_end_63} :catch_65
    .catchall {:try_start_5a .. :try_end_63} :catchall_63

    :catchall_63
    move-exception p0

    goto :goto_73

    :catch_65
    move-exception p1

    .line 1099
    :try_start_66
    new-instance v0, Lcom/facebook/soloader/SoLoaderULError;

    invoke-virtual {p1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, p0, v2}, Lcom/facebook/soloader/SoLoaderULError;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1100
    invoke-virtual {v0, p1}, Lcom/facebook/soloader/SoLoaderULError;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 1101
    throw v0
    :try_end_73
    .catchall {:try_start_66 .. :try_end_73} :catchall_63

    .line 1103
    :goto_73
    :try_start_73
    sget-object p1, Lcom/facebook/soloader/SoLoader;->sSoSourcesLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 1104
    throw p0
    :try_end_7d
    .catchall {:try_start_73 .. :try_end_7d} :catchall_7d

    :catchall_7d
    move-exception p0

    .line 1106
    sget-boolean p1, Lcom/facebook/soloader/SoLoader;->SYSTRACE_LIBRARY_LOADING:Z

    if-eqz p1, :cond_85

    .line 1107
    invoke-static {}, Lcom/facebook/soloader/Api18TraceUtils;->endSection()V

    :cond_85
    if-eqz v1, :cond_8a

    .line 1111
    invoke-static {p2}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 1113
    :cond_8a
    throw p0

    .line 1066
    :cond_8b
    :try_start_8b
    const-string p1, "SoLoader"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " because SoLoader is not initialized"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/facebook/soloader/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1067
    new-instance p1, Ljava/lang/UnsatisfiedLinkError;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/UnsatisfiedLinkError;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_b3
    .catchall {:try_start_8b .. :try_end_b3} :catchall_b3

    :catchall_b3
    move-exception p0

    .line 1071
    sget-object p1, Lcom/facebook/soloader/SoLoader;->sSoSourcesLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 1072
    throw p0
.end method

.method private static getAppType(Landroid/content/Context;)I
    .registers 5

    .line 585
    sget v0, Lcom/facebook/soloader/SoLoader;->sAppType:I

    if-eqz v0, :cond_5

    return v0

    .line 588
    :cond_5
    const-string v0, "SoLoader"

    const/4 v1, 0x1

    if-nez p0, :cond_10

    .line 589
    const-string p0, "context is null, fallback to THIRD_PARTY_APP appType"

    invoke-static {v0, p0}, Lcom/facebook/soloader/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 594
    :cond_10
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    .line 596
    iget v2, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr v2, v1

    if-nez v2, :cond_1a

    goto :goto_23

    .line 598
    :cond_1a
    iget v1, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_22

    const/4 v1, 0x3

    goto :goto_23

    :cond_22
    const/4 v1, 0x2

    .line 603
    :goto_23
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ApplicationInfo.flags is: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " appType is: "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/facebook/soloader/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method private static getApplicationSoSourceFlags()I
    .registers 3

    .line 418
    sget v0, Lcom/facebook/soloader/SoLoader;->sAppType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_15

    const/4 v2, 0x2

    if-eq v0, v2, :cond_14

    const/4 v2, 0x3

    if-ne v0, v2, :cond_c

    goto :goto_14

    .line 425
    :cond_c
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Unsupported app type, we should not reach here"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_14
    :goto_14
    return v1

    :cond_15
    const/4 v0, 0x0

    return v0
.end method

.method public static getLibraryDependencies(Ljava/lang/String;)[Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 724
    sget-object v0, Lcom/facebook/soloader/SoLoader;->sSoSourcesLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 726
    :try_start_9
    sget-object v0, Lcom/facebook/soloader/SoLoader;->sSoSources:[Lcom/facebook/soloader/SoSource;

    const/4 v1, 0x0

    if-eqz v0, :cond_21

    const/4 v0, 0x0

    :goto_f
    if-nez v1, :cond_21

    .line 727
    sget-object v2, Lcom/facebook/soloader/SoLoader;->sSoSources:[Lcom/facebook/soloader/SoSource;

    array-length v2, v2

    if-ge v0, v2, :cond_21

    .line 728
    sget-object v1, Lcom/facebook/soloader/SoLoader;->sSoSources:[Lcom/facebook/soloader/SoSource;

    aget-object v1, v1, v0

    .line 729
    invoke-virtual {v1, p0}, Lcom/facebook/soloader/SoSource;->getLibraryDependencies(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1
    :try_end_1e
    .catchall {:try_start_9 .. :try_end_1e} :catchall_2b

    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    .line 733
    :cond_21
    sget-object p0, Lcom/facebook/soloader/SoLoader;->sSoSourcesLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    return-object v1

    :catchall_2b
    move-exception p0

    sget-object v0, Lcom/facebook/soloader/SoLoader;->sSoSourcesLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 734
    throw p0
.end method

.method public static getLibraryPath(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 689
    sget-object v0, Lcom/facebook/soloader/SoLoader;->sSoSourcesLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 691
    :try_start_9
    sget-object v0, Lcom/facebook/soloader/SoLoader;->sSoSources:[Lcom/facebook/soloader/SoSource;

    const/4 v1, 0x0

    if-eqz v0, :cond_21

    const/4 v0, 0x0

    :goto_f
    if-nez v1, :cond_21

    .line 692
    sget-object v2, Lcom/facebook/soloader/SoLoader;->sSoSources:[Lcom/facebook/soloader/SoSource;

    array-length v2, v2

    if-ge v0, v2, :cond_21

    .line 693
    sget-object v1, Lcom/facebook/soloader/SoLoader;->sSoSources:[Lcom/facebook/soloader/SoSource;

    aget-object v1, v1, v0

    .line 694
    invoke-virtual {v1, p0}, Lcom/facebook/soloader/SoSource;->getLibraryPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_1e
    .catchall {:try_start_9 .. :try_end_1e} :catchall_2b

    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    .line 698
    :cond_21
    sget-object p0, Lcom/facebook/soloader/SoLoader;->sSoSourcesLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    return-object v1

    :catchall_2b
    move-exception p0

    sget-object v0, Lcom/facebook/soloader/SoLoader;->sSoSourcesLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 699
    throw p0
.end method

.method public static getLoadedLibrariesCount()I
    .registers 1

    .line 1261
    sget-object v0, Lcom/facebook/soloader/SoLoader;->sLoadedLibraries:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    return v0
.end method

.method private static declared-synchronized getRecoveryStrategy()Lcom/facebook/soloader/recovery/RecoveryStrategy;
    .registers 2
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    const-class v0, Lcom/facebook/soloader/SoLoader;

    monitor-enter v0

    .line 906
    :try_start_3
    sget-object v1, Lcom/facebook/soloader/SoLoader;->sRecoveryStrategyFactory:Lcom/facebook/soloader/recovery/RecoveryStrategyFactory;

    if-nez v1, :cond_9

    const/4 v1, 0x0

    goto :goto_d

    :cond_9
    invoke-interface {v1}, Lcom/facebook/soloader/recovery/RecoveryStrategyFactory;->get()Lcom/facebook/soloader/recovery/RecoveryStrategy;

    move-result-object v1
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_f

    :goto_d
    monitor-exit v0

    return-object v1

    :catchall_f
    move-exception v1

    :try_start_10
    monitor-exit v0
    :try_end_11
    .catchall {:try_start_10 .. :try_end_11} :catchall_f

    throw v1
.end method

.method public static getSoFile(Ljava/lang/String;)Ljava/io/File;
    .registers 3
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 747
    invoke-static {p0}, Lcom/facebook/soloader/MergedSoMapping;->mapLibName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    move-object p0, v0

    .line 749
    :cond_7
    invoke-static {p0}, Ljava/lang/System;->mapLibraryName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 751
    sget-object v0, Lcom/facebook/soloader/SoLoader;->sSoSourcesLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 753
    :try_start_14
    sget-object v0, Lcom/facebook/soloader/SoLoader;->sSoSources:[Lcom/facebook/soloader/SoSource;

    if-eqz v0, :cond_35

    const/4 v0, 0x0

    .line 754
    :goto_19
    sget-object v1, Lcom/facebook/soloader/SoLoader;->sSoSources:[Lcom/facebook/soloader/SoSource;

    array-length v1, v1

    if-ge v0, v1, :cond_35

    .line 755
    sget-object v1, Lcom/facebook/soloader/SoLoader;->sSoSources:[Lcom/facebook/soloader/SoSource;

    aget-object v1, v1, v0
    :try_end_22
    .catchall {:try_start_14 .. :try_end_22} :catchall_40

    .line 757
    :try_start_22
    invoke-virtual {v1, p0}, Lcom/facebook/soloader/SoSource;->getSoFileByName(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1
    :try_end_26
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_26} :catch_32
    .catchall {:try_start_22 .. :try_end_26} :catchall_40

    if-eqz v1, :cond_32

    .line 767
    sget-object p0, Lcom/facebook/soloader/SoLoader;->sSoSourcesLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    return-object v1

    :catch_32
    :cond_32
    add-int/lit8 v0, v0, 0x1

    goto :goto_19

    :cond_35
    sget-object p0, Lcom/facebook/soloader/SoLoader;->sSoSourcesLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    const/4 p0, 0x0

    return-object p0

    :catchall_40
    move-exception p0

    sget-object v0, Lcom/facebook/soloader/SoLoader;->sSoSourcesLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 768
    throw p0
.end method

.method public static getSoSourcesVersion()I
    .registers 1

    .line 1151
    sget-object v0, Lcom/facebook/soloader/SoLoader;->sSoSourcesVersion:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method public static init(Landroid/content/Context;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 239
    invoke-static {p0, p1, v0}, Lcom/facebook/soloader/SoLoader;->init(Landroid/content/Context;ILcom/facebook/soloader/SoFileLoader;)V

    return-void
.end method

.method public static init(Landroid/content/Context;ILcom/facebook/soloader/SoFileLoader;)V
    .registers 8
    .param p2    # Lcom/facebook/soloader/SoFileLoader;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "SoLoader initialized: "

    .line 254
    invoke-static {}, Lcom/facebook/soloader/SoLoader;->isInitialized()Z

    move-result v1

    const-string v2, "SoLoader"

    if-eqz v1, :cond_10

    .line 255
    const-string p0, "SoLoader already initialized"

    invoke-static {v2, p0}, Lcom/facebook/soloader/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 259
    :cond_10
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Initializing SoLoader: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/facebook/soloader/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskWrites()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v1

    .line 262
    :try_start_25
    invoke-static {p0}, Lcom/facebook/soloader/SoLoader;->initEnableConfig(Landroid/content/Context;)Z

    move-result v3

    sput-boolean v3, Lcom/facebook/soloader/SoLoader;->isEnabled:Z

    if-eqz v3, :cond_53

    .line 264
    invoke-static {p0}, Lcom/facebook/soloader/SoLoader;->getAppType(Landroid/content/Context;)I

    move-result v3

    sput v3, Lcom/facebook/soloader/SoLoader;->sAppType:I

    and-int/lit16 v4, p1, 0x80

    if-nez v4, :cond_3f

    .line 266
    invoke-static {p0, v3}, Lcom/facebook/soloader/SysUtil;->isSupportedDirectLoad(Landroid/content/Context;I)Z

    move-result v3

    if-eqz v3, :cond_3f

    or-int/lit8 p1, p1, 0x8

    .line 271
    :cond_3f
    invoke-static {p0, p2}, Lcom/facebook/soloader/SoLoader;->initSoLoader(Landroid/content/Context;Lcom/facebook/soloader/SoFileLoader;)V

    .line 272
    invoke-static {p0, p1}, Lcom/facebook/soloader/SoLoader;->initSoSources(Landroid/content/Context;I)V

    .line 273
    const-string p0, "Init SoLoader delegate"

    invoke-static {v2, p0}, Lcom/facebook/soloader/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    new-instance p0, Lcom/facebook/soloader/NativeLoaderToSoLoaderDelegate;

    invoke-direct {p0}, Lcom/facebook/soloader/NativeLoaderToSoLoaderDelegate;-><init>()V

    invoke-static {p0}, Lcom/facebook/soloader/nativeloader/NativeLoader;->initIfUninitialized(Lcom/facebook/soloader/nativeloader/NativeLoaderDelegate;)V

    goto :goto_63

    .line 276
    :cond_53
    invoke-static {}, Lcom/facebook/soloader/SoLoader;->initDummySoSource()V

    .line 277
    const-string p0, "Init System Loader delegate"

    invoke-static {v2, p0}, Lcom/facebook/soloader/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    new-instance p0, Lcom/facebook/soloader/nativeloader/SystemDelegate;

    invoke-direct {p0}, Lcom/facebook/soloader/nativeloader/SystemDelegate;-><init>()V

    invoke-static {p0}, Lcom/facebook/soloader/nativeloader/NativeLoader;->initIfUninitialized(Lcom/facebook/soloader/nativeloader/NativeLoaderDelegate;)V

    .line 280
    :goto_63
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/facebook/soloader/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_72
    .catchall {:try_start_25 .. :try_end_72} :catchall_76

    .line 282
    invoke-static {v1}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    return-void

    :catchall_76
    move-exception p0

    invoke-static {v1}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 283
    throw p0
.end method

.method public static init(Landroid/content/Context;Z)V
    .registers 3

    const/4 v0, 0x0

    .line 295
    :try_start_1
    invoke-static {p0, p1, v0}, Lcom/facebook/soloader/SoLoader;->init(Landroid/content/Context;ILcom/facebook/soloader/SoFileLoader;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_4} :catch_5

    return-void

    :catch_5
    move-exception p0

    .line 297
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method private static initDummySoSource()V
    .registers 2

    .line 401
    sget-object v0, Lcom/facebook/soloader/SoLoader;->sSoSources:[Lcom/facebook/soloader/SoSource;

    if-eqz v0, :cond_5

    return-void

    .line 405
    :cond_5
    sget-object v0, Lcom/facebook/soloader/SoLoader;->sSoSourcesLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 408
    :try_start_e
    sget-object v1, Lcom/facebook/soloader/SoLoader;->sSoSources:[Lcom/facebook/soloader/SoSource;
    :try_end_10
    .catchall {:try_start_e .. :try_end_10} :catchall_20

    if-eqz v1, :cond_1a

    .line 413
    :goto_12
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    return-void

    :cond_1a
    const/4 v1, 0x0

    .line 411
    :try_start_1b
    new-array v1, v1, [Lcom/facebook/soloader/SoSource;

    sput-object v1, Lcom/facebook/soloader/SoLoader;->sSoSources:[Lcom/facebook/soloader/SoSource;
    :try_end_1f
    .catchall {:try_start_1b .. :try_end_1f} :catchall_20

    goto :goto_12

    :catchall_20
    move-exception v0

    .line 413
    sget-object v1, Lcom/facebook/soloader/SoLoader;->sSoSourcesLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 414
    throw v0
.end method

.method private static initEnableConfig(Landroid/content/Context;)Z
    .registers 6

    .line 308
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    const/4 v2, 0x1

    if-ge v0, v1, :cond_8

    return v2

    :cond_8
    const/4 v0, 0x0

    .line 316
    :try_start_9
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_d} :catch_1c

    .line 320
    :try_start_d
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/16 v3, 0x80

    .line 321
    invoke-virtual {p0, v1, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_19} :catch_1a

    goto :goto_36

    :catch_1a
    move-exception p0

    goto :goto_1e

    :catch_1c
    move-exception p0

    move-object v1, v0

    .line 325
    :goto_1e
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Unexpected issue with package manager ("

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "SoLoader"

    invoke-static {v3, v1, p0}, Lcom/facebook/soloader/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_36
    if-eqz v0, :cond_42

    .line 329
    const-string p0, "com.facebook.soloader.enabled"

    invoke-virtual {v0, p0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_41

    goto :goto_42

    :cond_41
    const/4 v2, 0x0

    :cond_42
    :goto_42
    return v2
.end method

.method private static declared-synchronized initSoLoader(Landroid/content/Context;Lcom/facebook/soloader/SoFileLoader;)V
    .registers 6
    .param p0    # Landroid/content/Context;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p1    # Lcom/facebook/soloader/SoFileLoader;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    const-string v0, "context.getApplicationContext returned null, holding reference to original context.ApplicationSoSource fallbacks to: "

    const-class v1, Lcom/facebook/soloader/SoLoader;

    monitor-enter v1

    if-eqz p0, :cond_32

    .line 558
    :try_start_7
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    if-nez v2, :cond_25

    .line 562
    const-string v2, "SoLoader"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 566
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 562
    invoke-static {v2, v0}, Lcom/facebook/soloader/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_26

    :cond_25
    move-object p0, v2

    .line 569
    :goto_26
    sput-object p0, Lcom/facebook/soloader/SoLoader;->sApplicationContext:Landroid/content/Context;

    .line 570
    new-instance v0, Lcom/facebook/soloader/recovery/DefaultRecoveryStrategyFactory;

    invoke-direct {v0, p0}, Lcom/facebook/soloader/recovery/DefaultRecoveryStrategyFactory;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/facebook/soloader/SoLoader;->sRecoveryStrategyFactory:Lcom/facebook/soloader/recovery/RecoveryStrategyFactory;

    goto :goto_32

    :catchall_30
    move-exception p0

    goto :goto_49

    :cond_32
    :goto_32
    if-nez p1, :cond_3a

    .line 573
    sget-object p0, Lcom/facebook/soloader/SoLoader;->sSoFileLoader:Lcom/facebook/soloader/SoFileLoader;
    :try_end_36
    .catchall {:try_start_7 .. :try_end_36} :catchall_30

    if-eqz p0, :cond_3a

    .line 574
    monitor-exit v1

    return-void

    :cond_3a
    if-eqz p1, :cond_40

    .line 577
    :try_start_3c
    sput-object p1, Lcom/facebook/soloader/SoLoader;->sSoFileLoader:Lcom/facebook/soloader/SoFileLoader;
    :try_end_3e
    .catchall {:try_start_3c .. :try_end_3e} :catchall_30

    .line 578
    monitor-exit v1

    return-void

    .line 581
    :cond_40
    :try_start_40
    new-instance p0, Lcom/facebook/soloader/SoFileLoaderImpl;

    invoke-direct {p0}, Lcom/facebook/soloader/SoFileLoaderImpl;-><init>()V

    sput-object p0, Lcom/facebook/soloader/SoLoader;->sSoFileLoader:Lcom/facebook/soloader/SoFileLoader;
    :try_end_47
    .catchall {:try_start_40 .. :try_end_47} :catchall_30

    .line 582
    monitor-exit v1

    return-void

    :goto_49
    :try_start_49
    monitor-exit v1
    :try_end_4a
    .catchall {:try_start_49 .. :try_end_4a} :catchall_30

    throw p0
.end method

.method private static initSoSources(Landroid/content/Context;I)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 333
    sget-object v0, Lcom/facebook/soloader/SoLoader;->sSoSources:[Lcom/facebook/soloader/SoSource;

    if-eqz v0, :cond_5

    return-void

    .line 337
    :cond_5
    sget-object v0, Lcom/facebook/soloader/SoLoader;->sSoSourcesLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 340
    :try_start_e
    sget-object v1, Lcom/facebook/soloader/SoLoader;->sSoSources:[Lcom/facebook/soloader/SoSource;
    :try_end_10
    .catchall {:try_start_e .. :try_end_10} :catchall_d6

    if-eqz v1, :cond_1a

    .line 396
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object p0

    :goto_16
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    return-void

    .line 344
    :cond_1a
    :try_start_1a
    sput p1, Lcom/facebook/soloader/SoLoader;->sFlags:I

    .line 346
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
    :try_end_21
    .catchall {:try_start_1a .. :try_end_21} :catchall_d6

    and-int/lit16 v1, p1, 0x200

    .line 347
    const-string v2, "SoLoader"

    if-eqz v1, :cond_2b

    .line 350
    :try_start_27
    invoke-static {p0, v0}, Lcom/facebook/soloader/SoLoader;->addSystemLoadWrapperSoSource(Landroid/content/Context;Ljava/util/ArrayList;)V

    goto :goto_61

    .line 352
    :cond_2b
    invoke-static {v0}, Lcom/facebook/soloader/SoLoader;->addSystemLibSoSource(Ljava/util/ArrayList;)V

    if-eqz p0, :cond_61

    const/4 v1, 0x1

    and-int/2addr p1, v1

    if-eqz p1, :cond_4c

    .line 366
    invoke-static {}, Lcom/facebook/soloader/SoLoader;->getApplicationSoSourceFlags()I

    move-result p1

    invoke-static {v0, p1}, Lcom/facebook/soloader/SoLoader;->addApplicationSoSource(Ljava/util/ArrayList;I)V

    .line 367
    const-string p1, "Adding exo package source: lib-main"

    invoke-static {v2, p1}, Lcom/facebook/soloader/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 368
    new-instance p1, Lcom/facebook/soloader/ExoSoSource;

    const-string v1, "lib-main"

    invoke-direct {p1, p0, v1}, Lcom/facebook/soloader/ExoSoSource;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/4 p0, 0x0

    invoke-virtual {v0, p0, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_61

    .line 370
    :cond_4c
    sget p1, Lcom/facebook/soloader/SoLoader;->sAppType:I

    invoke-static {p0, p1}, Lcom/facebook/soloader/SysUtil;->isSupportedDirectLoad(Landroid/content/Context;I)Z

    move-result p1

    if-eqz p1, :cond_57

    .line 371
    invoke-static {p0, v0}, Lcom/facebook/soloader/SoLoader;->addDirectApkSoSource(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 373
    :cond_57
    invoke-static {}, Lcom/facebook/soloader/SoLoader;->getApplicationSoSourceFlags()I

    move-result p1

    invoke-static {v0, p1}, Lcom/facebook/soloader/SoLoader;->addApplicationSoSource(Ljava/util/ArrayList;I)V

    .line 374
    invoke-static {p0, v0, v1}, Lcom/facebook/soloader/SoLoader;->addBackupSoSource(Landroid/content/Context;Ljava/util/ArrayList;I)V

    .line 379
    :cond_61
    :goto_61
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    new-array p0, p0, [Lcom/facebook/soloader/SoSource;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lcom/facebook/soloader/SoSource;

    .line 380
    invoke-static {}, Lcom/facebook/soloader/SoLoader;->makePrepareFlags()I

    move-result p1

    .line 381
    array-length v0, p0

    :goto_72
    add-int/lit8 v1, v0, -0x1

    if-lez v0, :cond_ab

    .line 382
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Preparing SO source: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v3, p0, v1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/facebook/soloader/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 384
    sget-boolean v0, Lcom/facebook/soloader/SoLoader;->SYSTRACE_LIBRARY_LOADING:Z

    if-eqz v0, :cond_9f

    .line 385
    const-string v3, "_"

    aget-object v4, p0, v1

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/facebook/soloader/Api18TraceUtils;->beginTraceSection(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 387
    :cond_9f
    aget-object v3, p0, v1

    invoke-virtual {v3, p1}, Lcom/facebook/soloader/SoSource;->prepare(I)V

    if-eqz v0, :cond_a9

    .line 389
    invoke-static {}, Lcom/facebook/soloader/Api18TraceUtils;->endSection()V

    :cond_a9
    move v0, v1

    goto :goto_72

    .line 392
    :cond_ab
    sput-object p0, Lcom/facebook/soloader/SoLoader;->sSoSources:[Lcom/facebook/soloader/SoSource;

    .line 393
    sget-object p0, Lcom/facebook/soloader/SoLoader;->sSoSourcesVersion:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    .line 394
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "init finish: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Lcom/facebook/soloader/SoLoader;->sSoSources:[Lcom/facebook/soloader/SoSource;

    array-length p1, p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " SO sources prepared"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/facebook/soloader/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_ce
    .catchall {:try_start_27 .. :try_end_ce} :catchall_d6

    .line 396
    sget-object p0, Lcom/facebook/soloader/SoLoader;->sSoSourcesLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object p0

    goto/16 :goto_16

    :catchall_d6
    move-exception p0

    sget-object p1, Lcom/facebook/soloader/SoLoader;->sSoSourcesLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 397
    throw p0
.end method

.method public static isInitialized()Z
    .registers 3

    .line 1139
    sget-object v0, Lcom/facebook/soloader/SoLoader;->sSoSources:[Lcom/facebook/soloader/SoSource;

    const/4 v1, 0x1

    if-eqz v0, :cond_6

    return v1

    .line 1142
    :cond_6
    sget-object v0, Lcom/facebook/soloader/SoLoader;->sSoSourcesLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 1144
    :try_start_f
    sget-object v2, Lcom/facebook/soloader/SoLoader;->sSoSources:[Lcom/facebook/soloader/SoSource;
    :try_end_11
    .catchall {:try_start_f .. :try_end_11} :catchall_1d

    if-eqz v2, :cond_14

    goto :goto_15

    :cond_14
    const/4 v1, 0x0

    .line 1146
    :goto_15
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    return v1

    :catchall_1d
    move-exception v0

    sget-object v1, Lcom/facebook/soloader/SoLoader;->sSoSourcesLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 1147
    throw v0
.end method

.method static loadDependency(Ljava/lang/String;ILandroid/os/StrictMode$ThreadPolicy;)V
    .registers 4

    or-int/lit8 p1, p1, 0x1

    const/4 v0, 0x0

    .line 856
    invoke-static {p0, v0, v0, p1, p2}, Lcom/facebook/soloader/SoLoader;->loadLibraryBySoNameImpl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/os/StrictMode$ThreadPolicy;)Z

    return-void
.end method

.method public static loadLibrary(Ljava/lang/String;)Z
    .registers 2

    .line 774
    sget-boolean v0, Lcom/facebook/soloader/SoLoader;->isEnabled:Z

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/facebook/soloader/SoLoader;->loadLibrary(Ljava/lang/String;I)Z

    move-result p0

    return p0

    :cond_a
    invoke-static {p0}, Lcom/facebook/soloader/nativeloader/NativeLoader;->loadLibrary(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static loadLibrary(Ljava/lang/String;I)Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsatisfiedLinkError;
        }
    .end annotation

    .line 787
    invoke-static {p0}, Lcom/facebook/soloader/SoLoader;->loadLibraryOnNonAndroid(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 789
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    .line 792
    :cond_b
    sget-boolean v0, Lcom/facebook/soloader/SoLoader;->isEnabled:Z

    if-nez v0, :cond_14

    .line 793
    invoke-static {p0}, Lcom/facebook/soloader/nativeloader/NativeLoader;->loadLibrary(Ljava/lang/String;)Z

    move-result p0

    return p0

    .line 798
    :cond_14
    sget v0, Lcom/facebook/soloader/SoLoader;->sAppType:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1c

    const/4 v1, 0x3

    if-ne v0, v1, :cond_25

    :cond_1c
    sget-object v0, Lcom/facebook/soloader/SoLoader;->sSystemLoadLibraryWrapper:Lcom/facebook/soloader/SystemLoadLibraryWrapper;

    if-eqz v0, :cond_25

    .line 800
    invoke-interface {v0, p0}, Lcom/facebook/soloader/SystemLoadLibraryWrapper;->loadLibrary(Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    .line 804
    :cond_25
    invoke-static {p0}, Lcom/facebook/soloader/MergedSoMapping;->mapLibName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2d

    move-object v1, v0

    goto :goto_2e

    :cond_2d
    move-object v1, p0

    .line 809
    :goto_2e
    invoke-static {v1}, Ljava/lang/System;->mapLibraryName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 808
    invoke-static {v1, p0, v0, p1, v2}, Lcom/facebook/soloader/SoLoader;->loadLibraryBySoName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/os/StrictMode$ThreadPolicy;)Z

    move-result p0

    return p0
.end method

.method private static loadLibraryBySoName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/os/StrictMode$ThreadPolicy;)Z
    .registers 9
    .param p1    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Landroid/os/StrictMode$ThreadPolicy;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 869
    :goto_1
    :try_start_1
    invoke-static {p0, p1, p2, p3, p4}, Lcom/facebook/soloader/SoLoader;->loadLibraryBySoNameImpl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/os/StrictMode$ThreadPolicy;)Z

    move-result p0
    :try_end_5
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_1 .. :try_end_5} :catch_6

    return p0

    :catch_6
    move-exception v1

    .line 871
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Starting recovery for "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SoLoader"

    invoke-static {v3, v2, v1}, Lcom/facebook/soloader/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 872
    sget-object v2, Lcom/facebook/soloader/SoLoader;->sSoSourcesLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    if-nez v0, :cond_2e

    .line 875
    :try_start_25
    invoke-static {}, Lcom/facebook/soloader/SoLoader;->getRecoveryStrategy()Lcom/facebook/soloader/recovery/RecoveryStrategy;

    move-result-object v0

    goto :goto_2e

    :catch_2a
    move-exception p0

    goto :goto_4c

    :catch_2c
    move-exception p0

    goto :goto_52

    :cond_2e
    :goto_2e
    if-eqz v0, :cond_63

    .line 877
    sget-object v2, Lcom/facebook/soloader/SoLoader;->sSoSources:[Lcom/facebook/soloader/SoSource;

    invoke-interface {v0, v1, v2}, Lcom/facebook/soloader/recovery/RecoveryStrategy;->recover(Ljava/lang/UnsatisfiedLinkError;[Lcom/facebook/soloader/SoSource;)Z

    move-result v2

    if-eqz v2, :cond_63

    .line 878
    sget-object v2, Lcom/facebook/soloader/SoLoader;->sSoSourcesVersion:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    .line 879
    const-string v2, "Attempting to load library again"

    invoke-static {v3, v2}, Lcom/facebook/soloader/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_42
    .catch Lcom/facebook/soloader/NoBaseApkException; {:try_start_25 .. :try_end_42} :catch_2c
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_42} :catch_2a
    .catchall {:try_start_25 .. :try_end_42} :catchall_58

    .line 895
    sget-object v1, Lcom/facebook/soloader/SoLoader;->sSoSourcesLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    goto :goto_1

    .line 889
    :goto_4c
    :try_start_4c
    const-string p1, "Got an exception during recovery, will throw the initial error instead"

    invoke-static {v3, p1, p0}, Lcom/facebook/soloader/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 893
    throw v1

    .line 886
    :goto_52
    const-string p1, "Base APK not found during recovery"

    invoke-static {v3, p1, p0}, Lcom/facebook/soloader/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 887
    throw p0
    :try_end_58
    .catchall {:try_start_4c .. :try_end_58} :catchall_58

    :catchall_58
    move-exception p0

    .line 895
    sget-object p1, Lcom/facebook/soloader/SoLoader;->sSoSourcesLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 896
    throw p0

    .line 895
    :cond_63
    sget-object p0, Lcom/facebook/soloader/SoLoader;->sSoSourcesLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 899
    const-string p0, "Failed to recover"

    invoke-static {v3, p0}, Lcom/facebook/soloader/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 900
    throw v1
.end method

.method private static loadLibraryBySoNameImpl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/os/StrictMode$ThreadPolicy;)Z
    .registers 19
    .param p1    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Landroid/os/StrictMode$ThreadPolicy;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    move/from16 v0, p3

    const-string v2, "Loaded: "

    const-string v3, "Failed to call JNI_OnLoad from \'"

    const-string v4, "About to load: "

    const-string v5, "About to merge: "

    .line 923
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    const/4 v7, 0x0

    if-nez v6, :cond_1a

    sget-object v6, Lcom/facebook/soloader/SoLoader;->sLoadedAndMergedLibraries:Ljava/util/Set;

    invoke-interface {v6, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1a

    return v7

    .line 932
    :cond_1a
    const-class v6, Lcom/facebook/soloader/SoLoader;

    monitor-enter v6

    .line 933
    :try_start_1d
    sget-object v8, Lcom/facebook/soloader/SoLoader;->sLoadedLibraries:Ljava/util/HashSet;

    invoke-virtual {v8, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v9

    const/4 v10, 0x1

    if-eqz v9, :cond_2c

    if-nez p2, :cond_2a

    .line 936
    monitor-exit v6

    return v7

    :cond_2a
    const/4 v9, 0x1

    goto :goto_2d

    :cond_2c
    const/4 v9, 0x0

    .line 940
    :goto_2d
    sget-object v11, Lcom/facebook/soloader/SoLoader;->sLoadingLibraries:Ljava/util/Map;

    invoke-interface {v11, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3a

    .line 941
    invoke-interface {v11, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    goto :goto_43

    .line 943
    :cond_3a
    new-instance v12, Ljava/lang/Object;

    invoke-direct {v12}, Ljava/lang/Object;-><init>()V

    .line 944
    invoke-interface {v11, p0, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v11, v12

    .line 946
    :goto_43
    monitor-exit v6
    :try_end_44
    .catchall {:try_start_1d .. :try_end_44} :catchall_154

    .line 954
    sget-object v6, Lcom/facebook/soloader/SoLoader;->sSoSourcesLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 956
    :try_start_4d
    monitor-enter v11
    :try_end_4e
    .catchall {:try_start_4d .. :try_end_4e} :catchall_148

    if-nez v9, :cond_c7

    .line 958
    :try_start_50
    const-class v12, Lcom/facebook/soloader/SoLoader;

    monitor-enter v12
    :try_end_53
    .catchall {:try_start_50 .. :try_end_53} :catchall_c3

    .line 959
    :try_start_53
    invoke-virtual {v8, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_66

    if-nez p2, :cond_65

    .line 963
    monitor-exit v12
    :try_end_5c
    .catchall {:try_start_53 .. :try_end_5c} :catchall_bf

    :try_start_5c
    monitor-exit v11
    :try_end_5d
    .catchall {:try_start_5c .. :try_end_5d} :catchall_c3

    .line 1038
    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    return v7

    :cond_65
    const/4 v9, 0x1

    .line 968
    :cond_66
    :try_start_66
    monitor-exit v12
    :try_end_67
    .catchall {:try_start_66 .. :try_end_67} :catchall_bf

    if-nez v9, :cond_c7

    .line 972
    :try_start_69
    const-string v12, "SoLoader"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v12, v4}, Lcom/facebook/soloader/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v4, p4

    .line 973
    invoke-static {p0, v0, v4}, Lcom/facebook/soloader/SoLoader;->doLoadLibraryBySoName(Ljava/lang/String;ILandroid/os/StrictMode$ThreadPolicy;)V
    :try_end_7f
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_69 .. :try_end_7f} :catch_9c
    .catchall {:try_start_69 .. :try_end_7f} :catchall_c3

    .line 983
    :try_start_7f
    const-string v4, "SoLoader"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/facebook/soloader/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 984
    const-class v2, Lcom/facebook/soloader/SoLoader;

    monitor-enter v2
    :try_end_93
    .catchall {:try_start_7f .. :try_end_93} :catchall_c3

    .line 985
    :try_start_93
    invoke-virtual {v8, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 986
    monitor-exit v2

    goto :goto_c7

    :catchall_98
    move-exception v0

    move-object p0, v0

    monitor-exit v2
    :try_end_9b
    .catchall {:try_start_93 .. :try_end_9b} :catchall_98

    :try_start_9b
    throw p0

    :catch_9c
    move-exception v0

    move-object p0, v0

    .line 975
    invoke-virtual {p0}, Ljava/lang/UnsatisfiedLinkError;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_be

    .line 976
    const-string/jumbo v1, "unexpected e_machine:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_be

    .line 977
    const-string/jumbo v1, "unexpected e_machine:"

    .line 978
    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 979
    new-instance v1, Lcom/facebook/soloader/SoLoader$WrongAbiError;

    invoke-direct {v1, p0, v0}, Lcom/facebook/soloader/SoLoader$WrongAbiError;-><init>(Ljava/lang/Throwable;Ljava/lang/String;)V

    throw v1

    .line 981
    :cond_be
    throw p0
    :try_end_bf
    .catchall {:try_start_9b .. :try_end_bf} :catchall_c3

    :catchall_bf
    move-exception v0

    move-object p0, v0

    .line 968
    :try_start_c1
    monitor-exit v12
    :try_end_c2
    .catchall {:try_start_c1 .. :try_end_c2} :catchall_bf

    :try_start_c2
    throw p0

    :catchall_c3
    move-exception v0

    move-object p0, v0

    goto/16 :goto_146

    :cond_c7
    :goto_c7
    and-int/lit8 v0, v0, 0x10

    if-nez v0, :cond_13b

    .line 995
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_da

    sget-object v0, Lcom/facebook/soloader/SoLoader;->sLoadedAndMergedLibraries:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_da

    const/4 v7, 0x1

    :cond_da
    if-eqz p2, :cond_13b

    if-nez v7, :cond_13b

    .line 997
    sget-boolean v0, Lcom/facebook/soloader/SoLoader;->SYSTRACE_LIBRARY_LOADING:Z

    if-eqz v0, :cond_e9

    .line 998
    const-string v2, "MergedSoMapping.invokeJniOnload["

    const-string v4, "]"

    invoke-static {v2, p1, v4}, Lcom/facebook/soloader/Api18TraceUtils;->beginTraceSection(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_e9
    .catchall {:try_start_c2 .. :try_end_e9} :catchall_c3

    .line 1001
    :cond_e9
    :try_start_e9
    const-string v2, "SoLoader"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " / "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/facebook/soloader/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1002
    invoke-static {p1}, Lcom/facebook/soloader/MergedSoMapping;->invokeJniOnload(Ljava/lang/String;)V

    .line 1003
    sget-object v2, Lcom/facebook/soloader/SoLoader;->sLoadedAndMergedLibraries:Ljava/util/Set;

    invoke-interface {v2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_10a
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_e9 .. :try_end_10a} :catch_113
    .catchall {:try_start_e9 .. :try_end_10a} :catchall_110

    if-eqz v0, :cond_13b

    .line 1031
    :try_start_10c
    invoke-static {}, Lcom/facebook/soloader/Api18TraceUtils;->endSection()V
    :try_end_10f
    .catchall {:try_start_10c .. :try_end_10f} :catchall_c3

    goto :goto_13b

    :catchall_110
    move-exception v0

    move-object p0, v0

    goto :goto_133

    :catch_113
    move-exception v0

    .line 1022
    :try_start_114
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', which has been merged into \'"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\'.  See comment for details."

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_133
    .catchall {:try_start_114 .. :try_end_133} :catchall_110

    .line 1030
    :goto_133
    :try_start_133
    sget-boolean v0, Lcom/facebook/soloader/SoLoader;->SYSTRACE_LIBRARY_LOADING:Z

    if-eqz v0, :cond_13a

    .line 1031
    invoke-static {}, Lcom/facebook/soloader/Api18TraceUtils;->endSection()V

    .line 1033
    :cond_13a
    throw p0

    .line 1036
    :cond_13b
    :goto_13b
    monitor-exit v11
    :try_end_13c
    .catchall {:try_start_133 .. :try_end_13c} :catchall_c3

    .line 1038
    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    xor-int/lit8 p0, v9, 0x1

    return p0

    .line 1036
    :goto_146
    :try_start_146
    monitor-exit v11
    :try_end_147
    .catchall {:try_start_146 .. :try_end_147} :catchall_c3

    :try_start_147
    throw p0
    :try_end_148
    .catchall {:try_start_147 .. :try_end_148} :catchall_148

    :catchall_148
    move-exception v0

    move-object p0, v0

    .line 1038
    sget-object v0, Lcom/facebook/soloader/SoLoader;->sSoSourcesLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 1039
    throw p0

    :catchall_154
    move-exception v0

    move-object p0, v0

    .line 946
    :try_start_156
    monitor-exit v6
    :try_end_157
    .catchall {:try_start_156 .. :try_end_157} :catchall_154

    throw p0
.end method

.method private static loadLibraryOnNonAndroid(Ljava/lang/String;)Ljava/lang/Boolean;
    .registers 5
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 813
    sget-object v0, Lcom/facebook/soloader/SoLoader;->sSoSources:[Lcom/facebook/soloader/SoSource;

    if-nez v0, :cond_5e

    .line 814
    sget-object v0, Lcom/facebook/soloader/SoLoader;->sSoSourcesLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 816
    :try_start_d
    sget-object v1, Lcom/facebook/soloader/SoLoader;->sSoSources:[Lcom/facebook/soloader/SoSource;

    if-nez v1, :cond_4b

    .line 820
    const-string v1, "http://www.android.com/"

    const-string v2, "java.vendor.url"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_23

    .line 822
    invoke-static {}, Lcom/facebook/soloader/SoLoader;->assertInitialized()V

    goto :goto_4b

    .line 825
    :cond_23
    const-class v1, Lcom/facebook/soloader/SoLoader;

    monitor-enter v1
    :try_end_26
    .catchall {:try_start_d .. :try_end_26} :catchall_53

    .line 826
    :try_start_26
    sget-object v2, Lcom/facebook/soloader/SoLoader;->sLoadedLibraries:Ljava/util/HashSet;

    invoke-virtual {v2, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    xor-int/lit8 v3, v2, 0x1

    if-nez v2, :cond_3b

    .line 828
    sget-object v2, Lcom/facebook/soloader/SoLoader;->sSystemLoadLibraryWrapper:Lcom/facebook/soloader/SystemLoadLibraryWrapper;

    if-eqz v2, :cond_38

    .line 829
    invoke-interface {v2, p0}, Lcom/facebook/soloader/SystemLoadLibraryWrapper;->loadLibrary(Ljava/lang/String;)V

    goto :goto_3b

    .line 831
    :cond_38
    invoke-static {p0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 834
    :cond_3b
    :goto_3b
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    monitor-exit v1
    :try_end_40
    .catchall {:try_start_26 .. :try_end_40} :catchall_48

    .line 839
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    return-object p0

    :catchall_48
    move-exception p0

    .line 835
    :try_start_49
    monitor-exit v1
    :try_end_4a
    .catchall {:try_start_49 .. :try_end_4a} :catchall_48

    :try_start_4a
    throw p0
    :try_end_4b
    .catchall {:try_start_4a .. :try_end_4b} :catchall_53

    .line 839
    :cond_4b
    :goto_4b
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    goto :goto_5e

    :catchall_53
    move-exception p0

    sget-object v0, Lcom/facebook/soloader/SoLoader;->sSoSourcesLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 840
    throw p0

    :cond_5e
    :goto_5e
    const/4 p0, 0x0

    return-object p0
.end method

.method public static makeLdLibraryPath()Ljava/lang/String;
    .registers 5

    .line 1184
    sget-object v0, Lcom/facebook/soloader/SoLoader;->sSoSourcesLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 1186
    :try_start_9
    invoke-static {}, Lcom/facebook/soloader/SoLoader;->assertInitialized()V

    .line 1187
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1188
    sget-object v1, Lcom/facebook/soloader/SoLoader;->sSoSources:[Lcom/facebook/soloader/SoSource;

    if-eqz v1, :cond_21

    .line 1190
    array-length v2, v1

    const/4 v3, 0x0

    :goto_17
    if-ge v3, v2, :cond_21

    aget-object v4, v1, v3

    .line 1191
    invoke-virtual {v4, v0}, Lcom/facebook/soloader/SoSource;->addToLdLibraryPath(Ljava/util/Collection;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_17

    .line 1194
    :cond_21
    const-string v1, ":"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    .line 1195
    const-string v1, "SoLoader"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "makeLdLibraryPath final path: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/facebook/soloader/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3d
    .catchall {:try_start_9 .. :try_end_3d} :catchall_47

    .line 1198
    sget-object v1, Lcom/facebook/soloader/SoLoader;->sSoSourcesLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    return-object v0

    :catchall_47
    move-exception v0

    sget-object v1, Lcom/facebook/soloader/SoLoader;->sSoSourcesLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 1199
    throw v0
.end method

.method private static makePrepareFlags()I
    .registers 3

    .line 541
    sget-object v0, Lcom/facebook/soloader/SoLoader;->sSoSourcesLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 543
    :try_start_9
    sget v1, Lcom/facebook/soloader/SoLoader;->sFlags:I
    :try_end_b
    .catchall {:try_start_9 .. :try_end_b} :catchall_20

    and-int/lit8 v2, v1, 0x2

    if-eqz v2, :cond_11

    const/4 v2, 0x1

    goto :goto_12

    :cond_11
    const/4 v2, 0x0

    :goto_12
    and-int/lit16 v1, v1, 0x100

    if-eqz v1, :cond_18

    or-int/lit8 v2, v2, 0x4

    .line 551
    :cond_18
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    return v2

    :catchall_20
    move-exception v0

    sget-object v1, Lcom/facebook/soloader/SoLoader;->sSoSourcesLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 552
    throw v0
.end method

.method public static prependSoSource(Lcom/facebook/soloader/SoSource;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "Prepended to SO sources: "

    .line 1162
    sget-object v1, Lcom/facebook/soloader/SoLoader;->sSoSourcesLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 1164
    :try_start_b
    invoke-static {}, Lcom/facebook/soloader/SoLoader;->assertInitialized()V

    .line 1165
    invoke-static {}, Lcom/facebook/soloader/SoLoader;->makePrepareFlags()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/facebook/soloader/SoSource;->prepare(I)V

    .line 1166
    sget-object v2, Lcom/facebook/soloader/SoLoader;->sSoSources:[Lcom/facebook/soloader/SoSource;

    array-length v2, v2

    const/4 v3, 0x1

    add-int/2addr v2, v3

    new-array v2, v2, [Lcom/facebook/soloader/SoSource;

    const/4 v4, 0x0

    .line 1167
    aput-object p0, v2, v4

    .line 1168
    sget-object v5, Lcom/facebook/soloader/SoLoader;->sSoSources:[Lcom/facebook/soloader/SoSource;

    sget-object v6, Lcom/facebook/soloader/SoLoader;->sSoSources:[Lcom/facebook/soloader/SoSource;

    array-length v6, v6

    invoke-static {v5, v4, v2, v3, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1169
    sput-object v2, Lcom/facebook/soloader/SoLoader;->sSoSources:[Lcom/facebook/soloader/SoSource;

    .line 1170
    sget-object v2, Lcom/facebook/soloader/SoLoader;->sSoSourcesVersion:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    .line 1171
    const-string v2, "SoLoader"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/facebook/soloader/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3f
    .catchall {:try_start_b .. :try_end_3f} :catchall_47

    .line 1173
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    return-void

    :catchall_47
    move-exception p0

    sget-object v0, Lcom/facebook/soloader/SoLoader;->sSoSourcesLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 1174
    throw p0
.end method

.method public static setInTestMode()V
    .registers 3

    const/4 v0, 0x1

    .line 609
    new-array v0, v0, [Lcom/facebook/soloader/SoSource;

    new-instance v1, Lcom/facebook/soloader/NoopSoSource;

    invoke-direct {v1}, Lcom/facebook/soloader/NoopSoSource;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/facebook/soloader/SoLoader$TestOnlyUtils;->setSoSources([Lcom/facebook/soloader/SoSource;)V

    return-void
.end method

.method static declared-synchronized setRecoveryStrategyFactory(Lcom/facebook/soloader/recovery/RecoveryStrategyFactory;)V
    .registers 2

    const-class v0, Lcom/facebook/soloader/SoLoader;

    monitor-enter v0

    .line 911
    :try_start_3
    sput-object p0, Lcom/facebook/soloader/SoLoader;->sRecoveryStrategyFactory:Lcom/facebook/soloader/recovery/RecoveryStrategyFactory;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_7

    .line 912
    monitor-exit v0

    return-void

    :catchall_7
    move-exception p0

    :try_start_8
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_8 .. :try_end_9} :catchall_7

    throw p0
.end method

.method public static setSystemLoadLibraryWrapper(Lcom/facebook/soloader/SystemLoadLibraryWrapper;)V
    .registers 1

    .line 665
    sput-object p0, Lcom/facebook/soloader/SoLoader;->sSystemLoadLibraryWrapper:Lcom/facebook/soloader/SystemLoadLibraryWrapper;

    return-void
.end method

.method public static unpackLibraryAndDependencies(Ljava/lang/String;)Ljava/io/File;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsatisfiedLinkError;
        }
    .end annotation

    .line 1052
    invoke-static {}, Lcom/facebook/soloader/SoLoader;->assertInitialized()V

    .line 1054
    :try_start_3
    invoke-static {p0}, Ljava/lang/System;->mapLibraryName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/facebook/soloader/SoLoader;->unpackLibraryBySoName(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_b} :catch_c

    return-object p0

    :catch_c
    move-exception p0

    .line 1056
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method static unpackLibraryBySoName(Ljava/lang/String;)Ljava/io/File;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1117
    sget-object v0, Lcom/facebook/soloader/SoLoader;->sSoSourcesLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 1119
    :try_start_9
    sget-object v0, Lcom/facebook/soloader/SoLoader;->sSoSources:[Lcom/facebook/soloader/SoSource;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_d
    if-ge v2, v1, :cond_24

    aget-object v3, v0, v2

    .line 1120
    invoke-virtual {v3, p0}, Lcom/facebook/soloader/SoSource;->unpackLibrary(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3
    :try_end_15
    .catchall {:try_start_9 .. :try_end_15} :catchall_33

    if-eqz v3, :cond_21

    .line 1126
    sget-object p0, Lcom/facebook/soloader/SoLoader;->sSoSourcesLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    return-object v3

    :cond_21
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    :cond_24
    sget-object v0, Lcom/facebook/soloader/SoLoader;->sSoSourcesLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 1129
    new-instance v0, Ljava/io/FileNotFoundException;

    invoke-direct {v0, p0}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_33
    move-exception p0

    .line 1126
    sget-object v0, Lcom/facebook/soloader/SoLoader;->sSoSourcesLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 1127
    throw p0
.end method

.method public static useDepsFile(Landroid/content/Context;ZZ)Z
    .registers 3

    .line 1252
    invoke-static {p0, p1, p2}, Lcom/facebook/soloader/NativeDeps;->useDepsFile(Landroid/content/Context;ZZ)Z

    move-result p0

    return p0
.end method

###### Class com.facebook.soloader.SoLoader.AppType (com.facebook.soloader.SoLoader$AppType)
.class interface abstract Lcom/facebook/soloader/SoLoader$AppType;
.super Ljava/lang/Object;
.source "SoLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/soloader/SoLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "AppType"
.end annotation


# static fields
.field public static final SYSTEM_APP:I = 0x2

.field public static final THIRD_PARTY_APP:I = 0x1

.field public static final UNSET:I = 0x0

.field public static final UPDATED_SYSTEM_APP:I = 0x3

###### Class com.facebook.soloader.SoLoader.TestOnlyUtils (com.facebook.soloader.SoLoader$TestOnlyUtils)
.class Lcom/facebook/soloader/SoLoader$TestOnlyUtils;
.super Ljava/lang/Object;
.source "SoLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/soloader/SoLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TestOnlyUtils"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 618
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static resetStatus()V
    .registers 2

    .line 643
    const-class v0, Lcom/facebook/soloader/SoLoader;

    monitor-enter v0

    .line 644
    :try_start_3
    invoke-static {}, Lcom/facebook/soloader/SoLoader;->access$300()Ljava/util/HashSet;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashSet;->clear()V

    .line 645
    invoke-static {}, Lcom/facebook/soloader/SoLoader;->access$400()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    const/4 v1, 0x0

    .line 646
    sput-object v1, Lcom/facebook/soloader/SoLoader;->sSoFileLoader:Lcom/facebook/soloader/SoFileLoader;

    .line 647
    sput-object v1, Lcom/facebook/soloader/SoLoader;->sApplicationContext:Landroid/content/Context;

    .line 648
    invoke-static {v1}, Lcom/facebook/soloader/SoLoader;->access$502(Lcom/facebook/soloader/recovery/RecoveryStrategyFactory;)Lcom/facebook/soloader/recovery/RecoveryStrategyFactory;

    .line 649
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_1e

    .line 650
    invoke-static {v1}, Lcom/facebook/soloader/SoLoader$TestOnlyUtils;->setSoSources([Lcom/facebook/soloader/SoSource;)V

    return-void

    :catchall_1e
    move-exception v1

    .line 649
    :try_start_1f
    monitor-exit v0
    :try_end_20
    .catchall {:try_start_1f .. :try_end_20} :catchall_1e

    throw v1
.end method

.method static setContext(Landroid/content/Context;)V
    .registers 1

    .line 654
    sput-object p0, Lcom/facebook/soloader/SoLoader;->sApplicationContext:Landroid/content/Context;

    return-void
.end method

.method static setSoFileLoader(Lcom/facebook/soloader/SoFileLoader;)V
    .registers 1

    .line 638
    sput-object p0, Lcom/facebook/soloader/SoLoader;->sSoFileLoader:Lcom/facebook/soloader/SoFileLoader;

    return-void
.end method

.method static setSoSources([Lcom/facebook/soloader/SoSource;)V
    .registers 2

    .line 621
    invoke-static {}, Lcom/facebook/soloader/SoLoader;->access$000()Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 623
    :try_start_b
    invoke-static {p0}, Lcom/facebook/soloader/SoLoader;->access$102([Lcom/facebook/soloader/SoSource;)[Lcom/facebook/soloader/SoSource;

    .line 624
    invoke-static {}, Lcom/facebook/soloader/SoLoader;->access$200()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I
    :try_end_15
    .catchall {:try_start_b .. :try_end_15} :catchall_21

    .line 626
    invoke-static {}, Lcom/facebook/soloader/SoLoader;->access$000()Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    return-void

    :catchall_21
    move-exception p0

    invoke-static {}, Lcom/facebook/soloader/SoLoader;->access$000()Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 627
    throw p0
.end method

###### Class com.facebook.soloader.SoLoader.WrongAbiError (com.facebook.soloader.SoLoader$WrongAbiError)
.class public final Lcom/facebook/soloader/SoLoader$WrongAbiError;
.super Ljava/lang/UnsatisfiedLinkError;
.source "SoLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/soloader/SoLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "WrongAbiError"
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/Throwable;Ljava/lang/String;)V
    .registers 5

    .line 670
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "APK was built for a different platform. Supported ABIs: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 672
    invoke-static {}, Lcom/facebook/soloader/SysUtil;->getSupportedAbis()[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 670
    invoke-direct {p0, p2}, Ljava/lang/UnsatisfiedLinkError;-><init>(Ljava/lang/String;)V

    .line 675
    invoke-virtual {p0, p1}, Lcom/facebook/soloader/SoLoader$WrongAbiError;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    return-void
.end method
