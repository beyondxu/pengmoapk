###### Class dc.squareup.okhttp3.internal.publicsuffix.PublicSuffixDatabase (dc.squareup.okhttp3.internal.publicsuffix.PublicSuffixDatabase)
.class public final Ldc/squareup/okhttp3/internal/publicsuffix/PublicSuffixDatabase;
.super Ljava/lang/Object;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"


# static fields
.field private static final EMPTY_RULE:[Ljava/lang/String;

.field private static final EXCEPTION_MARKER:B = 0x21t

.field private static final PREVAILING_RULE:[Ljava/lang/String;

.field public static final PUBLIC_SUFFIX_RESOURCE:Ljava/lang/String; = "publicsuffixes.gz"

.field private static final WILDCARD_LABEL:[B

.field private static final instance:Ldc/squareup/okhttp3/internal/publicsuffix/PublicSuffixDatabase;


# instance fields
.field private final listRead:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private publicSuffixExceptionListBytes:[B

.field private publicSuffixListBytes:[B

.field private final readCompleteLatch:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v0, 0x1

    .line 1
    new-array v0, v0, [B

    const/4 v1, 0x0

    const/16 v2, 0x2a

    aput-byte v2, v0, v1

    sput-object v0, Ldc/squareup/okhttp3/internal/publicsuffix/PublicSuffixDatabase;->WILDCARD_LABEL:[B

    .line 2
    new-array v0, v1, [Ljava/lang/String;

    sput-object v0, Ldc/squareup/okhttp3/internal/publicsuffix/PublicSuffixDatabase;->EMPTY_RULE:[Ljava/lang/String;

    .line 3
    const-string v0, "*"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ldc/squareup/okhttp3/internal/publicsuffix/PublicSuffixDatabase;->PREVAILING_RULE:[Ljava/lang/String;

    .line 7
    new-instance v0, Ldc/squareup/okhttp3/internal/publicsuffix/PublicSuffixDatabase;

    invoke-direct {v0}, Ldc/squareup/okhttp3/internal/publicsuffix/PublicSuffixDatabase;-><init>()V

    sput-object v0, Ldc/squareup/okhttp3/internal/publicsuffix/PublicSuffixDatabase;->instance:Ldc/squareup/okhttp3/internal/publicsuffix/PublicSuffixDatabase;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Ldc/squareup/okhttp3/internal/publicsuffix/PublicSuffixDatabase;->listRead:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 16
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Ldc/squareup/okhttp3/internal/publicsuffix/PublicSuffixDatabase;->readCompleteLatch:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method

.method private static binarySearchBytes([B[[BI)Ljava/lang/String;
    .registers 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    array-length v2, v0

    const/4 v4, 0x0

    :goto_6
    if-ge v4, v2, :cond_85

    add-int v5, v4, v2

    .line 4
    div-int/lit8 v5, v5, 0x2

    :goto_c
    const/16 v6, 0xa

    const/4 v7, -0x1

    if-le v5, v7, :cond_18

    .line 7
    aget-byte v8, v0, v5

    if-eq v8, v6, :cond_18

    add-int/lit8 v5, v5, -0x1

    goto :goto_c

    :cond_18
    add-int/lit8 v8, v5, 0x1

    const/4 v9, 0x1

    const/4 v10, 0x1

    :goto_1c
    add-int v11, v8, v10

    .line 14
    aget-byte v12, v0, v11

    if-eq v12, v6, :cond_25

    add-int/lit8 v10, v10, 0x1

    goto :goto_1c

    :cond_25
    sub-int v6, v11, v8

    move/from16 v12, p2

    const/4 v10, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    :goto_2c
    if-eqz v10, :cond_32

    const/16 v10, 0x2e

    const/4 v15, 0x0

    goto :goto_3d

    .line 33
    :cond_32
    aget-object v15, v1, v12

    aget-byte v15, v15, v13

    and-int/lit16 v15, v15, 0xff

    move/from16 v17, v15

    move v15, v10

    move/from16 v10, v17

    :goto_3d
    add-int v16, v8, v14

    .line 36
    aget-byte v3, v0, v16

    and-int/lit16 v3, v3, 0xff

    sub-int/2addr v10, v3

    if-eqz v10, :cond_47

    goto :goto_57

    :cond_47
    add-int/lit8 v14, v14, 0x1

    add-int/lit8 v13, v13, 0x1

    if-ne v14, v6, :cond_4e

    goto :goto_57

    .line 45
    :cond_4e
    aget-object v3, v1, v12

    array-length v3, v3

    if-ne v3, v13, :cond_83

    .line 48
    array-length v3, v1

    sub-int/2addr v3, v9

    if-ne v12, v3, :cond_7e

    :goto_57
    if-gez v10, :cond_5a

    goto :goto_6f

    :cond_5a
    if-lez v10, :cond_5d

    goto :goto_73

    :cond_5d
    sub-int v3, v6, v14

    .line 65
    aget-object v7, v1, v12

    array-length v7, v7

    sub-int/2addr v7, v13

    :goto_63
    add-int/lit8 v12, v12, 0x1

    .line 66
    array-length v9, v1

    if-ge v12, v9, :cond_6d

    .line 67
    aget-object v9, v1, v12

    array-length v9, v9

    add-int/2addr v7, v9

    goto :goto_63

    :cond_6d
    if-ge v7, v3, :cond_71

    :goto_6f
    move v2, v5

    goto :goto_6

    :cond_71
    if-le v7, v3, :cond_76

    :goto_73
    add-int/lit8 v4, v11, 0x1

    goto :goto_6

    .line 76
    :cond_76
    new-instance v1, Ljava/lang/String;

    sget-object v2, Ldc/squareup/okhttp3/internal/Util;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, v0, v8, v6, v2}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    return-object v1

    :cond_7e
    add-int/lit8 v12, v12, 0x1

    const/4 v10, 0x1

    const/4 v13, -0x1

    goto :goto_2c

    :cond_83
    move v10, v15

    goto :goto_2c

    :cond_85
    const/4 v0, 0x0

    return-object v0
.end method

.method private findMatchingRule([Ljava/lang/String;)[Ljava/lang/String;
    .registers 10

    .line 1
    iget-object v0, p0, Ldc/squareup/okhttp3/internal/publicsuffix/PublicSuffixDatabase;->listRead:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_16

    iget-object v0, p0, Ldc/squareup/okhttp3/internal/publicsuffix/PublicSuffixDatabase;->listRead:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 2
    invoke-direct {p0}, Ldc/squareup/okhttp3/internal/publicsuffix/PublicSuffixDatabase;->readTheListUninterruptibly()V

    goto :goto_23

    .line 5
    :cond_16
    :try_start_16
    iget-object v0, p0, Ldc/squareup/okhttp3/internal/publicsuffix/PublicSuffixDatabase;->readCompleteLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_1b
    .catch Ljava/lang/InterruptedException; {:try_start_16 .. :try_end_1b} :catch_1c

    goto :goto_23

    .line 7
    :catch_1c
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 11
    :goto_23
    monitor-enter p0

    .line 12
    :try_start_24
    iget-object v0, p0, Ldc/squareup/okhttp3/internal/publicsuffix/PublicSuffixDatabase;->publicSuffixListBytes:[B

    if-eqz v0, :cond_ba

    .line 16
    monitor-exit p0
    :try_end_29
    .catchall {:try_start_24 .. :try_end_29} :catchall_c2

    .line 19
    array-length v0, p1

    new-array v3, v0, [[B

    const/4 v4, 0x0

    .line 20
    :goto_2d
    array-length v5, p1

    if-ge v4, v5, :cond_3d

    .line 21
    aget-object v5, p1, v4

    sget-object v6, Ldc/squareup/okhttp3/internal/Util;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v5, v6}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v5

    aput-object v5, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_2d

    :cond_3d
    const/4 p1, 0x0

    :goto_3e
    const/4 v4, 0x0

    if-ge p1, v0, :cond_4d

    .line 28
    iget-object v5, p0, Ldc/squareup/okhttp3/internal/publicsuffix/PublicSuffixDatabase;->publicSuffixListBytes:[B

    invoke-static {v5, v3, p1}, Ldc/squareup/okhttp3/internal/publicsuffix/PublicSuffixDatabase;->binarySearchBytes([B[[BI)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_4a

    goto :goto_4e

    :cond_4a
    add-int/lit8 p1, p1, 0x1

    goto :goto_3e

    :cond_4d
    move-object v5, v4

    :goto_4e
    if-le v0, v2, :cond_6b

    .line 42
    invoke-virtual {v3}, [[B->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [[B

    const/4 v6, 0x0

    .line 43
    :goto_57
    array-length v7, p1

    sub-int/2addr v7, v2

    if-ge v6, v7, :cond_6b

    .line 44
    sget-object v7, Ldc/squareup/okhttp3/internal/publicsuffix/PublicSuffixDatabase;->WILDCARD_LABEL:[B

    aput-object v7, p1, v6

    .line 45
    iget-object v7, p0, Ldc/squareup/okhttp3/internal/publicsuffix/PublicSuffixDatabase;->publicSuffixListBytes:[B

    invoke-static {v7, p1, v6}, Ldc/squareup/okhttp3/internal/publicsuffix/PublicSuffixDatabase;->binarySearchBytes([B[[BI)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_68

    goto :goto_6c

    :cond_68
    add-int/lit8 v6, v6, 0x1

    goto :goto_57

    :cond_6b
    move-object v7, v4

    :goto_6c
    if-eqz v7, :cond_7f

    :goto_6e
    add-int/lit8 p1, v0, -0x1

    if-ge v1, p1, :cond_7f

    .line 57
    iget-object p1, p0, Ldc/squareup/okhttp3/internal/publicsuffix/PublicSuffixDatabase;->publicSuffixExceptionListBytes:[B

    invoke-static {p1, v3, v1}, Ldc/squareup/okhttp3/internal/publicsuffix/PublicSuffixDatabase;->binarySearchBytes([B[[BI)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_7c

    move-object v4, p1

    goto :goto_7f

    :cond_7c
    add-int/lit8 v1, v1, 0x1

    goto :goto_6e

    :cond_7f
    :goto_7f
    if-eqz v4, :cond_96

    .line 68
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "!"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 69
    const-string v0, "\\."

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_96
    if-nez v5, :cond_9d

    if-nez v7, :cond_9d

    .line 71
    sget-object p1, Ldc/squareup/okhttp3/internal/publicsuffix/PublicSuffixDatabase;->PREVAILING_RULE:[Ljava/lang/String;

    return-object p1

    :cond_9d
    if-eqz v5, :cond_a6

    .line 75
    const-string p1, "\\."

    invoke-virtual {v5, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    goto :goto_a8

    .line 76
    :cond_a6
    sget-object p1, Ldc/squareup/okhttp3/internal/publicsuffix/PublicSuffixDatabase;->EMPTY_RULE:[Ljava/lang/String;

    :goto_a8
    if-eqz v7, :cond_b1

    .line 79
    const-string v0, "\\."

    invoke-virtual {v7, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    goto :goto_b3

    .line 80
    :cond_b1
    sget-object v0, Ldc/squareup/okhttp3/internal/publicsuffix/PublicSuffixDatabase;->EMPTY_RULE:[Ljava/lang/String;

    .line 82
    :goto_b3
    array-length v1, p1

    array-length v2, v0

    if-le v1, v2, :cond_b8

    goto :goto_b9

    :cond_b8
    move-object p1, v0

    :goto_b9
    return-object p1

    .line 83
    :cond_ba
    :try_start_ba
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Unable to load publicsuffixes.gz resource from the classpath."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_c2
    move-exception p1

    .line 86
    monitor-exit p0
    :try_end_c4
    .catchall {:try_start_ba .. :try_end_c4} :catchall_c2

    throw p1
.end method

.method public static get()Ldc/squareup/okhttp3/internal/publicsuffix/PublicSuffixDatabase;
    .registers 1

    .line 1
    sget-object v0, Ldc/squareup/okhttp3/internal/publicsuffix/PublicSuffixDatabase;->instance:Ldc/squareup/okhttp3/internal/publicsuffix/PublicSuffixDatabase;

    return-object v0
.end method

.method private readTheList()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    const-class v0, Ldc/squareup/okhttp3/internal/publicsuffix/PublicSuffixDatabase;

    const-string v1, "publicsuffixes.gz"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    if-nez v0, :cond_b

    return-void

    .line 4
    :cond_b
    new-instance v1, Ldc/squareup/okio/GzipSource;

    invoke-static {v0}, Ldc/squareup/okio/Okio;->source(Ljava/io/InputStream;)Ldc/squareup/okio/Source;

    move-result-object v0

    invoke-direct {v1, v0}, Ldc/squareup/okio/GzipSource;-><init>(Ldc/squareup/okio/Source;)V

    invoke-static {v1}, Ldc/squareup/okio/Okio;->buffer(Ldc/squareup/okio/Source;)Ldc/squareup/okio/BufferedSource;

    move-result-object v0

    .line 6
    :try_start_18
    invoke-interface {v0}, Ldc/squareup/okio/BufferedSource;->readInt()I

    move-result v1

    .line 7
    new-array v1, v1, [B

    .line 8
    invoke-interface {v0, v1}, Ldc/squareup/okio/BufferedSource;->readFully([B)V

    .line 10
    invoke-interface {v0}, Ldc/squareup/okio/BufferedSource;->readInt()I

    move-result v2

    .line 11
    new-array v2, v2, [B

    .line 12
    invoke-interface {v0, v2}, Ldc/squareup/okio/BufferedSource;->readFully([B)V
    :try_end_2a
    .catchall {:try_start_18 .. :try_end_2a} :catchall_3c

    .line 14
    invoke-static {v0}, Ldc/squareup/okhttp3/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    .line 17
    monitor-enter p0

    .line 18
    :try_start_2e
    iput-object v1, p0, Ldc/squareup/okhttp3/internal/publicsuffix/PublicSuffixDatabase;->publicSuffixListBytes:[B

    .line 19
    iput-object v2, p0, Ldc/squareup/okhttp3/internal/publicsuffix/PublicSuffixDatabase;->publicSuffixExceptionListBytes:[B

    .line 20
    monitor-exit p0
    :try_end_33
    .catchall {:try_start_2e .. :try_end_33} :catchall_39

    .line 22
    iget-object v0, p0, Ldc/squareup/okhttp3/internal/publicsuffix/PublicSuffixDatabase;->readCompleteLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void

    :catchall_39
    move-exception v0

    .line 23
    :try_start_3a
    monitor-exit p0
    :try_end_3b
    .catchall {:try_start_3a .. :try_end_3b} :catchall_39

    throw v0

    :catchall_3c
    move-exception v1

    .line 24
    invoke-static {v0}, Ldc/squareup/okhttp3/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    .line 25
    throw v1
.end method

.method private readTheListUninterruptibly()V
    .registers 6

    const/4 v0, 0x0

    .line 1
    :goto_1
    :try_start_1
    invoke-direct {p0}, Ldc/squareup/okhttp3/internal/publicsuffix/PublicSuffixDatabase;->readTheList()V
    :try_end_4
    .catch Ljava/io/InterruptedIOException; {:try_start_1 .. :try_end_4} :catch_1e
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_4} :catch_9
    .catchall {:try_start_1 .. :try_end_4} :catchall_7

    if-eqz v0, :cond_1d

    goto :goto_16

    :catchall_7
    move-exception v1

    goto :goto_23

    :catch_9
    move-exception v1

    .line 14
    :try_start_a
    invoke-static {}, Ldc/squareup/okhttp3/internal/platform/Platform;->get()Ldc/squareup/okhttp3/internal/platform/Platform;

    move-result-object v2

    const-string v3, "Failed to read public suffix list"

    const/4 v4, 0x5

    invoke-virtual {v2, v4, v3, v1}, Ldc/squareup/okhttp3/internal/platform/Platform;->log(ILjava/lang/String;Ljava/lang/Throwable;)V
    :try_end_14
    .catchall {:try_start_a .. :try_end_14} :catchall_7

    if-eqz v0, :cond_1d

    .line 13
    :goto_16
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :cond_1d
    return-void

    .line 15
    :catch_1e
    :try_start_1e
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z
    :try_end_21
    .catchall {:try_start_1e .. :try_end_21} :catchall_7

    const/4 v0, 0x1

    goto :goto_1

    :goto_23
    if-eqz v0, :cond_2c

    .line 24
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 26
    :cond_2c
    throw v1
.end method


# virtual methods
.method public getEffectiveTldPlusOne(Ljava/lang/String;)Ljava/lang/String;
    .registers 9

    if-eqz p1, :cond_58

    .line 1
    invoke-static {p1}, Ljava/net/IDN;->toUnicode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    const-string v1, "\\."

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-direct {p0, v0}, Ldc/squareup/okhttp3/internal/publicsuffix/PublicSuffixDatabase;->findMatchingRule([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 4
    array-length v3, v0

    array-length v4, v2

    const/16 v5, 0x21

    const/4 v6, 0x0

    if-ne v3, v4, :cond_21

    aget-object v3, v2, v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-eq v3, v5, :cond_21

    const/4 p1, 0x0

    return-object p1

    .line 10
    :cond_21
    aget-object v3, v2, v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v5, :cond_2c

    .line 12
    array-length v0, v0

    array-length v2, v2

    goto :goto_30

    .line 15
    :cond_2c
    array-length v0, v0

    array-length v2, v2

    add-int/lit8 v2, v2, 0x1

    :goto_30
    sub-int/2addr v0, v2

    .line 18
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 19
    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 20
    :goto_3a
    array-length v1, p1

    if-ge v0, v1, :cond_4a

    .line 21
    aget-object v1, p1, v0

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x2e

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_3a

    .line 23
    :cond_4a
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 25
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 26
    :cond_58
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "domain == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method setListBytes([B[B)V
    .registers 3

    .line 1
    iput-object p1, p0, Ldc/squareup/okhttp3/internal/publicsuffix/PublicSuffixDatabase;->publicSuffixListBytes:[B

    .line 2
    iput-object p2, p0, Ldc/squareup/okhttp3/internal/publicsuffix/PublicSuffixDatabase;->publicSuffixExceptionListBytes:[B

    .line 3
    iget-object p1, p0, Ldc/squareup/okhttp3/internal/publicsuffix/PublicSuffixDatabase;->listRead:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 4
    iget-object p1, p0, Ldc/squareup/okhttp3/internal/publicsuffix/PublicSuffixDatabase;->readCompleteLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method
