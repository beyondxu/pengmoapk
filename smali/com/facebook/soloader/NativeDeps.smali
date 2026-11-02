###### Class com.facebook.soloader.NativeDeps (com.facebook.soloader.NativeDeps)
.class public final Lcom/facebook/soloader/NativeDeps;
.super Ljava/lang/Object;
.source "NativeDeps.java"


# static fields
.field private static final HASHMAP_LOAD_FACTOR:F = 1.0f

.field private static final INITIAL_HASH:I = 0x1505

.field private static final LIB_PREFIX_LEN:I = 0x3

.field private static final LIB_PREFIX_SUFFIX_LEN:I

.field private static final LIB_SUFFIX_LEN:I = 0x3

.field private static final LOG_TAG:Ljava/lang/String; = "NativeDeps"

.field private static final WAITING_THREADS_WARNING_THRESHOLD:I = 0x3

.field private static sEncodedDeps:[B = null
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private static volatile sInitialized:Z = false

.field private static sPrecomputedDeps:Ljava/util/Map; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private static sPrecomputedLibs:Ljava/util/List; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile sUseDepsFileAsync:Z = false

.field private static final sWaitForDepsFileLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x3

    add-int/2addr v0, v0

    .line 40
    sput v0, Lcom/facebook/soloader/NativeDeps;->LIB_PREFIX_SUFFIX_LEN:I

    .line 52
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    sput-object v0, Lcom/facebook/soloader/NativeDeps;->sWaitForDepsFileLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/util/concurrent/locks/ReentrantReadWriteLock;
    .registers 1

    .line 36
    sget-object v0, Lcom/facebook/soloader/NativeDeps;->sWaitForDepsFileLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    return-object v0
.end method

.method static synthetic access$102(Z)Z
    .registers 1

    .line 36
    sput-boolean p0, Lcom/facebook/soloader/NativeDeps;->sUseDepsFileAsync:Z

    return p0
.end method

.method static synthetic access$200(Landroid/content/Context;Z)Z
    .registers 2

    .line 36
    invoke-static {p0, p1}, Lcom/facebook/soloader/NativeDeps;->useDepsFileFromApkSync(Landroid/content/Context;Z)Z

    move-result p0

    return p0
.end method

.method private static awaitGetDepsFromPrecomputedDeps(Ljava/lang/String;)[Ljava/lang/String;
    .registers 3
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 90
    sget-boolean v0, Lcom/facebook/soloader/NativeDeps;->sInitialized:Z

    if-eqz v0, :cond_9

    .line 91
    invoke-static {p0}, Lcom/facebook/soloader/NativeDeps;->tryGetDepsFromPrecomputedDeps(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 93
    :cond_9
    sget-boolean v0, Lcom/facebook/soloader/NativeDeps;->sUseDepsFileAsync:Z

    if-nez v0, :cond_f

    const/4 p0, 0x0

    return-object p0

    .line 96
    :cond_f
    sget-object v0, Lcom/facebook/soloader/NativeDeps;->sWaitForDepsFileLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 98
    :try_start_18
    invoke-static {p0}, Lcom/facebook/soloader/NativeDeps;->tryGetDepsFromPrecomputedDeps(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0
    :try_end_1c
    .catchall {:try_start_18 .. :try_end_1c} :catchall_24

    .line 100
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    return-object p0

    :catchall_24
    move-exception p0

    sget-object v0, Lcom/facebook/soloader/NativeDeps;->sWaitForDepsFileLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 101
    throw p0
.end method

.method private static findNextLine([BI)I
    .registers 4

    .line 278
    :goto_0
    array-length v0, p0

    if-ge p1, v0, :cond_c

    aget-byte v0, p0, p1

    const/16 v1, 0xa

    if-eq v0, v1, :cond_c

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 282
    :cond_c
    array-length p0, p0

    if-ge p1, p0, :cond_11

    add-int/lit8 p1, p1, 0x1

    :cond_11
    return p1
.end method

.method public static getDependencies(Ljava/lang/String;Lcom/facebook/soloader/ElfByteChannel;)[Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 70
    sget-boolean v0, Lcom/facebook/soloader/SoLoader;->SYSTRACE_LIBRARY_LOADING:Z

    if-eqz v0, :cond_b

    .line 71
    const-string v0, "soloader.NativeDeps.getDependencies["

    const-string v1, "]"

    invoke-static {v0, p0, v1}, Lcom/facebook/soloader/Api18TraceUtils;->beginTraceSection(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    :cond_b
    :try_start_b
    invoke-static {p0}, Lcom/facebook/soloader/NativeDeps;->awaitGetDepsFromPrecomputedDeps(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0
    :try_end_f
    .catch Lcom/facebook/soloader/MinElf$ElfError; {:try_start_b .. :try_end_f} :catch_25
    .catchall {:try_start_b .. :try_end_f} :catchall_2b

    if-eqz v0, :cond_19

    .line 82
    sget-boolean p0, Lcom/facebook/soloader/SoLoader;->SYSTRACE_LIBRARY_LOADING:Z

    if-eqz p0, :cond_18

    .line 83
    invoke-static {}, Lcom/facebook/soloader/Api18TraceUtils;->endSection()V

    :cond_18
    return-object v0

    .line 78
    :cond_19
    :try_start_19
    invoke-static {p1}, Lcom/facebook/soloader/MinElf;->extract_DT_NEEDED(Lcom/facebook/soloader/ElfByteChannel;)[Ljava/lang/String;

    move-result-object p0
    :try_end_1d
    .catch Lcom/facebook/soloader/MinElf$ElfError; {:try_start_19 .. :try_end_1d} :catch_25
    .catchall {:try_start_19 .. :try_end_1d} :catchall_2b

    .line 82
    sget-boolean p1, Lcom/facebook/soloader/SoLoader;->SYSTRACE_LIBRARY_LOADING:Z

    if-eqz p1, :cond_24

    .line 83
    invoke-static {}, Lcom/facebook/soloader/Api18TraceUtils;->endSection()V

    :cond_24
    return-object p0

    :catch_25
    move-exception p1

    .line 80
    :try_start_26
    invoke-static {p0, p1}, Lcom/facebook/soloader/SoLoaderULErrorFactory;->create(Ljava/lang/String;Ljava/lang/UnsatisfiedLinkError;)Lcom/facebook/soloader/SoLoaderULError;

    move-result-object p0

    throw p0
    :try_end_2b
    .catchall {:try_start_26 .. :try_end_2b} :catchall_2b

    :catchall_2b
    move-exception p0

    .line 82
    sget-boolean p1, Lcom/facebook/soloader/SoLoader;->SYSTRACE_LIBRARY_LOADING:Z

    if-eqz p1, :cond_33

    .line 83
    invoke-static {}, Lcom/facebook/soloader/Api18TraceUtils;->endSection()V

    .line 85
    :cond_33
    throw p0
.end method

.method private static getDepsForLibAtOffset(II)[Ljava/lang/String;
    .registers 8
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 402
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    add-int/2addr p0, p1

    .line 405
    sget p1, Lcom/facebook/soloader/NativeDeps;->LIB_PREFIX_SUFFIX_LEN:I

    sub-int/2addr p0, p1

    const/4 p1, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 408
    :goto_c
    sget-object v3, Lcom/facebook/soloader/NativeDeps;->sEncodedDeps:[B

    array-length v4, v3

    const/4 v5, 0x0

    if-ge p0, v4, :cond_3e

    aget-byte v3, v3, p0

    const/16 v4, 0xa

    if-eq v3, v4, :cond_3e

    const/16 v4, 0x20

    if-ne v3, v4, :cond_2b

    if-eqz v2, :cond_3a

    .line 412
    invoke-static {v1}, Lcom/facebook/soloader/NativeDeps;->getLibString(I)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_25

    return-object v5

    .line 416
    :cond_25
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    goto :goto_3a

    :cond_2b
    const/16 v2, 0x30

    if-lt v3, v2, :cond_3d

    const/16 v2, 0x39

    if-le v3, v2, :cond_34

    goto :goto_3d

    :cond_34
    mul-int/lit8 v1, v1, 0xa

    add-int/lit8 v3, v3, -0x30

    add-int/2addr v1, v3

    const/4 v2, 0x1

    :cond_3a
    :goto_3a
    add-int/lit8 p0, p0, 0x1

    goto :goto_c

    :cond_3d
    :goto_3d
    return-object v5

    :cond_3e
    if-eqz v2, :cond_4a

    .line 433
    invoke-static {v1}, Lcom/facebook/soloader/NativeDeps;->getLibString(I)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_47

    return-object v5

    .line 437
    :cond_47
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 440
    :cond_4a
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_51

    return-object v5

    .line 447
    :cond_51
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p0

    new-array p0, p0, [Ljava/lang/String;

    .line 448
    invoke-interface {v0, p0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method private static getLibString(I)Ljava/lang/String;
    .registers 8
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 376
    sget-object v0, Lcom/facebook/soloader/NativeDeps;->sPrecomputedLibs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p0, v0, :cond_a

    const/4 p0, 0x0

    return-object p0

    .line 380
    :cond_a
    sget-object v0, Lcom/facebook/soloader/NativeDeps;->sPrecomputedLibs:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    move v0, p0

    .line 382
    :goto_17
    sget-object v1, Lcom/facebook/soloader/NativeDeps;->sEncodedDeps:[B

    array-length v2, v1

    if-ge v0, v2, :cond_25

    aget-byte v1, v1, v0

    const/16 v2, 0x20

    if-le v1, v2, :cond_25

    add-int/lit8 v0, v0, 0x1

    goto :goto_17

    :cond_25
    sub-int/2addr v0, p0

    .line 386
    sget v1, Lcom/facebook/soloader/NativeDeps;->LIB_PREFIX_SUFFIX_LEN:I

    add-int/2addr v0, v1

    .line 387
    new-array v1, v0, [C

    const/16 v2, 0x6c

    const/4 v3, 0x0

    .line 388
    aput-char v2, v1, v3

    const/16 v2, 0x69

    const/4 v4, 0x1

    .line 389
    aput-char v2, v1, v4

    const/16 v2, 0x62

    const/4 v5, 0x2

    .line 390
    aput-char v2, v1, v5

    .line 391
    :goto_3a
    sget v2, Lcom/facebook/soloader/NativeDeps;->LIB_PREFIX_SUFFIX_LEN:I

    sub-int v2, v0, v2

    if-ge v3, v2, :cond_4f

    .line 392
    sget v2, Lcom/facebook/soloader/NativeDeps;->LIB_PREFIX_LEN:I

    add-int/2addr v2, v3

    sget-object v5, Lcom/facebook/soloader/NativeDeps;->sEncodedDeps:[B

    add-int v6, p0, v3

    aget-byte v5, v5, v6

    int-to-char v5, v5

    aput-char v5, v1, v2

    add-int/lit8 v3, v3, 0x1

    goto :goto_3a

    :cond_4f
    add-int/lit8 p0, v0, -0x3

    const/16 v2, 0x2e

    .line 394
    aput-char v2, v1, p0

    add-int/lit8 p0, v0, -0x2

    const/16 v2, 0x73

    .line 395
    aput-char v2, v1, p0

    sub-int/2addr v0, v4

    const/16 p0, 0x6f

    .line 396
    aput-char p0, v1, v0

    .line 398
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v1}, Ljava/lang/String;-><init>([C)V

    return-object p0
.end method

.method private static getOffsetForLib(Ljava/lang/String;)I
    .registers 5

    .line 357
    invoke-static {p0}, Lcom/facebook/soloader/NativeDeps;->hashLib(Ljava/lang/String;)I

    move-result v0

    .line 358
    sget-object v1, Lcom/facebook/soloader/NativeDeps;->sPrecomputedDeps:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const/4 v1, -0x1

    if-nez v0, :cond_14

    return v1

    .line 363
    :cond_14
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_18
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 364
    invoke-static {p0, v2}, Lcom/facebook/soloader/NativeDeps;->libIsAtOffset(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_18

    return v2

    :cond_2f
    return v1
.end method

.method private static hashLib(Ljava/lang/String;)I
    .registers 5

    .line 347
    sget v0, Lcom/facebook/soloader/NativeDeps;->LIB_PREFIX_LEN:I

    const/16 v1, 0x1505

    :goto_4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    sget v3, Lcom/facebook/soloader/NativeDeps;->LIB_SUFFIX_LEN:I

    sub-int/2addr v2, v3

    if-ge v0, v2, :cond_18

    shl-int/lit8 v2, v1, 0x5

    add-int/2addr v2, v1

    .line 348
    invoke-virtual {p0, v0}, Ljava/lang/String;->codePointAt(I)I

    move-result v1

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_18
    return v1
.end method

.method private static indexDepsBytes([BI)V
    .registers 10

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_5
    if-eqz v2, :cond_22

    const/16 v3, 0x1505

    move v4, p1

    .line 233
    :goto_a
    :try_start_a
    aget-byte v5, p0, v4

    const/16 v6, 0x20

    if-le v5, v6, :cond_18

    shl-int/lit8 v6, v3, 0x5

    add-int/2addr v6, v3

    add-int v3, v6, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_a

    .line 237
    :cond_18
    invoke-static {v3, p1}, Lcom/facebook/soloader/NativeDeps;->indexLib(II)V
    :try_end_1b
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_a .. :try_end_1b} :catch_20

    if-eq v5, v6, :cond_1e

    goto :goto_2e

    :cond_1e
    const/4 v2, 0x0

    goto :goto_2f

    :catch_20
    nop

    goto :goto_36

    .line 240
    :cond_22
    :goto_22
    :try_start_22
    aget-byte v5, p0, p1
    :try_end_24
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_22 .. :try_end_24} :catch_34

    const/16 v6, 0xa

    if-eq v5, v6, :cond_2b

    add-int/lit8 p1, p1, 0x1

    goto :goto_22

    :cond_2b
    move v2, v4

    move v4, p1

    move p1, v2

    :goto_2e
    const/4 v2, 0x1

    :goto_2f
    add-int/2addr v4, v0

    move v7, v4

    move v4, p1

    move p1, v7

    goto :goto_5

    :catch_34
    nop

    move p1, v4

    :goto_36
    if-eqz v2, :cond_3e

    .line 248
    array-length p0, p0

    if-eq p1, p0, :cond_3e

    .line 249
    invoke-static {v3, p1}, Lcom/facebook/soloader/NativeDeps;->indexLib(II)V

    :cond_3e
    return-void
.end method

.method private static indexLib(II)V
    .registers 4

    .line 201
    sget-object v0, Lcom/facebook/soloader/NativeDeps;->sPrecomputedLibs:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 202
    sget-object v0, Lcom/facebook/soloader/NativeDeps;->sPrecomputedDeps:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_25

    .line 204
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 205
    sget-object v1, Lcom/facebook/soloader/NativeDeps;->sPrecomputedDeps:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    :cond_25
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private static initDeps(Landroid/content/Context;Z)Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 182
    invoke-static {}, Lcom/facebook/soloader/NativeDeps;->verifyUninitialized()V

    if-eqz p1, :cond_19

    .line 186
    new-instance p1, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 187
    invoke-static {p1, p0}, Lcom/facebook/soloader/SysUtil;->makeApkDepBlock(Ljava/io/File;Landroid/content/Context;)[B

    move-result-object p1

    .line 188
    invoke-static {p0}, Lcom/facebook/soloader/NativeDepsUnpacker;->readNativeDepsFromDisk(Landroid/content/Context;)[B

    move-result-object p0

    goto :goto_1e

    .line 190
    :cond_19
    invoke-static {p0}, Lcom/facebook/soloader/NativeDepsUnpacker;->readNativeDepsFromApk(Landroid/content/Context;)[B

    move-result-object p0

    const/4 p1, 0x0

    .line 194
    :goto_1e
    invoke-static {p1, p0}, Lcom/facebook/soloader/NativeDeps;->processDepsBytes([B[B)Z

    move-result p0

    return p0
.end method

.method private static libIsAtOffset(Ljava/lang/String;I)Z
    .registers 6

    .line 334
    sget v0, Lcom/facebook/soloader/NativeDeps;->LIB_PREFIX_LEN:I

    .line 335
    :goto_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    sget v2, Lcom/facebook/soloader/NativeDeps;->LIB_SUFFIX_LEN:I

    sub-int/2addr v1, v2

    if-ge v0, v1, :cond_22

    sget-object v1, Lcom/facebook/soloader/NativeDeps;->sEncodedDeps:[B

    array-length v1, v1

    if-ge p1, v1, :cond_22

    .line 337
    invoke-virtual {p0, v0}, Ljava/lang/String;->codePointAt(I)I

    move-result v1

    and-int/lit16 v1, v1, 0xff

    sget-object v3, Lcom/facebook/soloader/NativeDeps;->sEncodedDeps:[B

    aget-byte v3, v3, p1

    if-eq v1, v3, :cond_1d

    goto :goto_22

    :cond_1d
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    .line 341
    :cond_22
    :goto_22
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    sub-int/2addr p0, v2

    if-ne v0, p0, :cond_2b

    const/4 p0, 0x1

    return p0

    :cond_2b
    const/4 p0, 0x0

    return p0
.end method

.method public static loadDependencies(Ljava/lang/String;Lcom/facebook/soloader/ElfByteChannel;ILandroid/os/StrictMode$ThreadPolicy;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 57
    invoke-static {p0, p1}, Lcom/facebook/soloader/NativeDeps;->getDependencies(Ljava/lang/String;Lcom/facebook/soloader/ElfByteChannel;)[Ljava/lang/String;

    move-result-object p1

    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Loading "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\'s dependencies: "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 58
    const-string v0, "SoLoader"

    invoke-static {v0, p0}, Lcom/facebook/soloader/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    array-length p0, p1

    const/4 v0, 0x0

    :goto_25
    if-ge v0, p0, :cond_38

    aget-object v1, p1, v0

    .line 61
    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_32

    goto :goto_35

    .line 65
    :cond_32
    invoke-static {v1, p2, p3}, Lcom/facebook/soloader/SoLoader;->loadDependency(Ljava/lang/String;ILandroid/os/StrictMode$ThreadPolicy;)V

    :goto_35
    add-int/lit8 v0, v0, 0x1

    goto :goto_25

    :cond_38
    return-void
.end method

.method private static parseLibCount([BII)I
    .registers 4

    .line 291
    :try_start_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0, p1, p2}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_9
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_9} :catch_a

    return p0

    :catch_a
    const/4 p0, -0x1

    return p0
.end method

.method static processDepsBytes([B[B)Z
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_b

    .line 301
    invoke-static {p0, p1}, Lcom/facebook/soloader/NativeDeps;->verifyBytesAndGetOffset([B[B)I

    move-result p0

    const/4 v1, -0x1

    if-ne p0, v1, :cond_c

    return v0

    :cond_b
    const/4 p0, 0x0

    .line 307
    :cond_c
    invoke-static {p1, p0}, Lcom/facebook/soloader/NativeDeps;->findNextLine([BI)I

    move-result v1

    .line 308
    array-length v2, p1

    if-lt v1, v2, :cond_14

    return v0

    :cond_14
    sub-int v2, v1, p0

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    .line 312
    invoke-static {p1, p0, v2}, Lcom/facebook/soloader/NativeDeps;->parseLibCount([BII)I

    move-result p0

    if-gtz p0, :cond_1f

    return v0

    .line 317
    :cond_1f
    new-instance v2, Ljava/util/HashMap;

    int-to-float v4, p0

    const/high16 v5, 0x3f800000    # 1.0f

    div-float/2addr v4, v5

    float-to-int v4, v4

    add-int/2addr v4, v3

    invoke-direct {v2, v4, v5}, Ljava/util/HashMap;-><init>(IF)V

    sput-object v2, Lcom/facebook/soloader/NativeDeps;->sPrecomputedDeps:Ljava/util/Map;

    .line 319
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, p0}, Ljava/util/ArrayList;-><init>(I)V

    sput-object v2, Lcom/facebook/soloader/NativeDeps;->sPrecomputedLibs:Ljava/util/List;

    .line 320
    invoke-static {p1, v1}, Lcom/facebook/soloader/NativeDeps;->indexDepsBytes([BI)V

    .line 322
    sget-object v1, Lcom/facebook/soloader/NativeDeps;->sPrecomputedLibs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-eq v1, p0, :cond_3f

    return v0

    .line 326
    :cond_3f
    sput-object p1, Lcom/facebook/soloader/NativeDeps;->sEncodedDeps:[B

    .line 327
    sput-boolean v3, Lcom/facebook/soloader/NativeDeps;->sInitialized:Z

    return v3
.end method

.method static tryGetDepsFromPrecomputedDeps(Ljava/lang/String;)[Ljava/lang/String;
    .registers 4
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 453
    sget-boolean v0, Lcom/facebook/soloader/NativeDeps;->sInitialized:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return-object v1

    .line 457
    :cond_6
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    sget v2, Lcom/facebook/soloader/NativeDeps;->LIB_PREFIX_SUFFIX_LEN:I

    if-gt v0, v2, :cond_f

    return-object v1

    .line 463
    :cond_f
    invoke-static {p0}, Lcom/facebook/soloader/NativeDeps;->getOffsetForLib(Ljava/lang/String;)I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_17

    return-object v1

    .line 468
    :cond_17
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    invoke-static {v0, p0}, Lcom/facebook/soloader/NativeDeps;->getDepsForLibAtOffset(II)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static useDepsFile(Landroid/content/Context;ZZ)Z
    .registers 3

    if-nez p1, :cond_7

    .line 121
    invoke-static {p0, p2}, Lcom/facebook/soloader/NativeDeps;->useDepsFileFromApkSync(Landroid/content/Context;Z)Z

    move-result p0

    return p0

    .line 124
    :cond_7
    new-instance p1, Lcom/facebook/soloader/NativeDeps$1;

    invoke-direct {p1, p0, p2}, Lcom/facebook/soloader/NativeDeps$1;-><init>(Landroid/content/Context;Z)V

    .line 147
    new-instance p0, Ljava/lang/Thread;

    const-string p2, "soloader-nativedeps-init"

    invoke-direct {p0, p1, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    const/4 p0, 0x1

    return p0
.end method

.method private static useDepsFileFromApkSync(Landroid/content/Context;Z)Z
    .registers 3

    .line 154
    :try_start_0
    invoke-static {p0, p1}, Lcom/facebook/soloader/NativeDeps;->initDeps(Landroid/content/Context;Z)Z

    move-result v0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_4} :catch_5

    goto :goto_6

    :catch_5
    const/4 v0, 0x0

    :goto_6
    if-nez v0, :cond_13

    if-eqz p1, :cond_13

    .line 163
    :try_start_a
    invoke-static {p0}, Lcom/facebook/soloader/NativeDepsUnpacker;->ensureNativeDepsAvailable(Landroid/content/Context;)V

    .line 165
    invoke-static {p0, p1}, Lcom/facebook/soloader/NativeDeps;->initDeps(Landroid/content/Context;Z)Z

    move-result v0
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_11} :catch_12

    goto :goto_13

    :catch_12
    nop

    :cond_13
    :goto_13
    if-nez v0, :cond_1c

    .line 173
    const-string p0, "NativeDeps"

    const-string p1, "Failed to extract native deps from APK, falling back to using MinElf to get library dependencies."

    invoke-static {p0, p1}, Lcom/facebook/soloader/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1c
    return v0
.end method

.method private static verifyBytesAndGetOffset([B[B)I
    .registers 7
    .param p0    # [B
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p1    # [B
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, -0x1

    if-eqz p0, :cond_2f

    .line 255
    array-length v1, p0

    if-nez v1, :cond_7

    goto :goto_2f

    .line 259
    :cond_7
    array-length v1, p1

    array-length v2, p0

    const/4 v3, 0x4

    add-int/2addr v2, v3

    if-ge v1, v2, :cond_e

    return v0

    .line 263
    :cond_e
    array-length v1, p0

    invoke-static {p1, v1, v3}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    .line 264
    array-length v2, p1

    array-length v4, p0

    add-int/2addr v4, v3

    add-int/2addr v4, v1

    if-eq v2, v4, :cond_1e

    return v0

    :cond_1e
    const/4 v1, 0x0

    .line 268
    :goto_1f
    array-length v2, p0

    if-ge v1, v2, :cond_2c

    .line 269
    aget-byte v2, p0, v1

    aget-byte v4, p1, v1

    if-eq v2, v4, :cond_29

    return v0

    :cond_29
    add-int/lit8 v1, v1, 0x1

    goto :goto_1f

    .line 274
    :cond_2c
    array-length p0, p0

    add-int/2addr p0, v3

    return p0

    :cond_2f
    :goto_2f
    return v0
.end method

.method private static verifyUninitialized()V
    .registers 3

    .line 472
    sget-boolean v0, Lcom/facebook/soloader/NativeDeps;->sInitialized:Z

    if-nez v0, :cond_5

    return-void

    .line 476
    :cond_5
    const-class v0, Lcom/facebook/soloader/NativeDeps;

    monitor-enter v0

    .line 477
    :try_start_8
    sget-boolean v1, Lcom/facebook/soloader/NativeDeps;->sInitialized:Z

    if-nez v1, :cond_e

    .line 481
    monitor-exit v0

    return-void

    .line 478
    :cond_e
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Trying to initialize NativeDeps but it was already initialized"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_16
    move-exception v1

    .line 481
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_8 .. :try_end_18} :catchall_16

    throw v1
.end method

###### Class com.facebook.soloader.NativeDeps.AnonymousClass1 (com.facebook.soloader.NativeDeps$1)
.class Lcom/facebook/soloader/NativeDeps$1;
.super Ljava/lang/Object;
.source "NativeDeps.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/soloader/NativeDeps;->useDepsFile(Landroid/content/Context;ZZ)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$extractToDisk:Z


# direct methods
.method constructor <init>(Landroid/content/Context;Z)V
    .registers 3

    .line 125
    iput-object p1, p0, Lcom/facebook/soloader/NativeDeps$1;->val$context:Landroid/content/Context;

    iput-boolean p2, p0, Lcom/facebook/soloader/NativeDeps$1;->val$extractToDisk:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .line 128
    const-string v0, " threads waiting."

    const-string v1, "NativeDeps initialization finished with "

    const-string v2, "NativeDeps"

    invoke-static {}, Lcom/facebook/soloader/NativeDeps;->access$000()Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    const/4 v3, 0x1

    .line 129
    invoke-static {v3}, Lcom/facebook/soloader/NativeDeps;->access$102(Z)Z

    const/4 v3, 0x0

    const/4 v4, 0x3

    .line 131
    :try_start_17
    iget-object v5, p0, Lcom/facebook/soloader/NativeDeps$1;->val$context:Landroid/content/Context;

    iget-boolean v6, p0, Lcom/facebook/soloader/NativeDeps$1;->val$extractToDisk:Z

    invoke-static {v5, v6}, Lcom/facebook/soloader/NativeDeps;->access$200(Landroid/content/Context;Z)Z
    :try_end_1e
    .catchall {:try_start_17 .. :try_end_1e} :catchall_4d

    .line 133
    invoke-static {}, Lcom/facebook/soloader/NativeDeps;->access$000()Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->getReadLockCount()I

    move-result v5

    if-lt v5, v4, :cond_3e

    .line 135
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 138
    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 135
    invoke-static {v2, v0}, Lcom/facebook/soloader/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    :cond_3e
    invoke-static {}, Lcom/facebook/soloader/NativeDeps;->access$000()Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 142
    invoke-static {v3}, Lcom/facebook/soloader/NativeDeps;->access$102(Z)Z

    return-void

    :catchall_4d
    move-exception v5

    .line 133
    invoke-static {}, Lcom/facebook/soloader/NativeDeps;->access$000()Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->getReadLockCount()I

    move-result v6

    if-lt v6, v4, :cond_6e

    .line 135
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 138
    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 135
    invoke-static {v2, v0}, Lcom/facebook/soloader/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    :cond_6e
    invoke-static {}, Lcom/facebook/soloader/NativeDeps;->access$000()Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 142
    invoke-static {v3}, Lcom/facebook/soloader/NativeDeps;->access$102(Z)Z

    .line 143
    throw v5
.end method
