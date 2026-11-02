###### Class io.dcloud.p.x0 (io.dcloud.p.x0)
.class public final Lio/dcloud/p/x0;
.super Ljava/lang/Object;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/dcloud/p/x0$c;,
        Lio/dcloud/p/x0$d;,
        Lio/dcloud/p/x0$e;
    }
.end annotation


# static fields
.field static final o:Ljava/util/regex/Pattern;

.field private static final p:Ljava/io/OutputStream;


# instance fields
.field private final a:Ljava/io/File;

.field private final b:Ljava/io/File;

.field private final c:Ljava/io/File;

.field private final d:Ljava/io/File;

.field private final e:I

.field private f:J

.field private final g:I

.field private h:J

.field private i:Ljava/io/Writer;

.field private final j:Ljava/util/LinkedHashMap;

.field private k:I

.field private l:J

.field final m:Ljava/util/concurrent/ThreadPoolExecutor;

.field private final n:Ljava/util/concurrent/Callable;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    const-string v0, "[a-z0-9_-]{1,64}"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lio/dcloud/p/x0;->o:Ljava/util/regex/Pattern;

    .line 637
    new-instance v0, Lio/dcloud/p/x0$b;

    invoke-direct {v0}, Lio/dcloud/p/x0$b;-><init>()V

    sput-object v0, Lio/dcloud/p/x0;->p:Ljava/io/OutputStream;

    return-void
.end method

.method private constructor <init>(Ljava/io/File;IIJ)V
    .registers 19

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 2
    iput-wide v0, p0, Lio/dcloud/p/x0;->h:J

    .line 4
    new-instance v2, Ljava/util/LinkedHashMap;

    const/high16 v3, 0x3f400000    # 0.75f

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-direct {v2, v5, v3, v4}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    iput-object v2, p0, Lio/dcloud/p/x0;->j:Ljava/util/LinkedHashMap;

    .line 13
    iput-wide v0, p0, Lio/dcloud/p/x0;->l:J

    .line 18
    new-instance v6, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v11, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v12, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v12}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    const/4 v8, 0x1

    const-wide/16 v9, 0x3c

    const/4 v7, 0x0

    invoke-direct/range {v6 .. v12}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    iput-object v6, p0, Lio/dcloud/p/x0;->m:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 20
    new-instance v0, Lio/dcloud/p/x0$a;

    invoke-direct {v0, p0}, Lio/dcloud/p/x0$a;-><init>(Lio/dcloud/p/x0;)V

    iput-object v0, p0, Lio/dcloud/p/x0;->n:Ljava/util/concurrent/Callable;

    .line 37
    iput-object p1, p0, Lio/dcloud/p/x0;->a:Ljava/io/File;

    .line 38
    iput p2, p0, Lio/dcloud/p/x0;->e:I

    .line 39
    new-instance v0, Ljava/io/File;

    const-string v1, "journal"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lio/dcloud/p/x0;->b:Ljava/io/File;

    .line 40
    new-instance v0, Ljava/io/File;

    const-string v1, "journal.tmp"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lio/dcloud/p/x0;->c:Ljava/io/File;

    .line 41
    new-instance v0, Ljava/io/File;

    const-string v1, "journal.bkp"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lio/dcloud/p/x0;->d:Ljava/io/File;

    move/from16 p1, p3

    .line 42
    iput p1, p0, Lio/dcloud/p/x0;->g:I

    move-wide/from16 v0, p4

    .line 43
    iput-wide v0, p0, Lio/dcloud/p/x0;->f:J

    return-void
.end method

.method static synthetic a(Lio/dcloud/p/x0;I)I
    .registers 2

    .line 5
    iput p1, p0, Lio/dcloud/p/x0;->k:I

    return p1
.end method

.method private declared-synchronized a(Ljava/lang/String;J)Lio/dcloud/p/x0$c;
    .registers 10

    const-string v0, "DIRTY "

    monitor-enter p0

    .line 54
    :try_start_3
    invoke-direct {p0}, Lio/dcloud/p/x0;->b()V

    .line 55
    invoke-direct {p0, p1}, Lio/dcloud/p/x0;->e(Ljava/lang/String;)V

    .line 56
    iget-object v1, p0, Lio/dcloud/p/x0;->j:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/dcloud/p/x0$d;

    const-wide/16 v2, -0x1

    const/4 v4, 0x0

    cmp-long v5, p2, v2

    if-eqz v5, :cond_24

    if-eqz v1, :cond_22

    .line 58
    invoke-static {v1}, Lio/dcloud/p/x0$d;->c(Lio/dcloud/p/x0$d;)J

    move-result-wide v2
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_5e

    cmp-long v5, v2, p2

    if-eqz v5, :cond_24

    :cond_22
    monitor-exit p0

    return-object v4

    :cond_24
    if-nez v1, :cond_31

    .line 62
    :try_start_26
    new-instance v1, Lio/dcloud/p/x0$d;

    invoke-direct {v1, p0, p1, v4}, Lio/dcloud/p/x0$d;-><init>(Lio/dcloud/p/x0;Ljava/lang/String;Lio/dcloud/p/x0$a;)V

    .line 63
    iget-object p2, p0, Lio/dcloud/p/x0;->j:Ljava/util/LinkedHashMap;

    invoke-virtual {p2, p1, v1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_39

    .line 64
    :cond_31
    invoke-static {v1}, Lio/dcloud/p/x0$d;->e(Lio/dcloud/p/x0$d;)Lio/dcloud/p/x0$c;

    move-result-object p2
    :try_end_35
    .catchall {:try_start_26 .. :try_end_35} :catchall_5e

    if-eqz p2, :cond_39

    monitor-exit p0

    return-object v4

    .line 68
    :cond_39
    :goto_39
    :try_start_39
    new-instance p2, Lio/dcloud/p/x0$c;

    invoke-direct {p2, p0, v1, v4}, Lio/dcloud/p/x0$c;-><init>(Lio/dcloud/p/x0;Lio/dcloud/p/x0$d;Lio/dcloud/p/x0$a;)V

    .line 69
    invoke-static {v1, p2}, Lio/dcloud/p/x0$d;->a(Lio/dcloud/p/x0$d;Lio/dcloud/p/x0$c;)Lio/dcloud/p/x0$c;

    .line 72
    iget-object p3, p0, Lio/dcloud/p/x0;->i:Ljava/io/Writer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0xa

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 73
    iget-object p1, p0, Lio/dcloud/p/x0;->i:Ljava/io/Writer;

    invoke-virtual {p1}, Ljava/io/Writer;->flush()V
    :try_end_5c
    .catchall {:try_start_39 .. :try_end_5c} :catchall_5e

    monitor-exit p0

    return-object p2

    :catchall_5e
    move-exception p1

    :try_start_5f
    monitor-exit p0
    :try_end_60
    .catchall {:try_start_5f .. :try_end_60} :catchall_5e

    throw p1
.end method

.method public static a(Ljava/io/File;IIJ)Lio/dcloud/p/x0;
    .registers 15

    const-wide/16 v0, 0x0

    cmp-long v2, p3, v0

    if-lez v2, :cond_99

    if-lez p2, :cond_91

    .line 6
    new-instance v0, Ljava/io/File;

    const-string v1, "journal.bkp"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 7
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 8
    new-instance v1, Ljava/io/File;

    const-string v2, "journal"

    invoke-direct {v1, p0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 10
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_26

    .line 11
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_2a

    :cond_26
    const/4 v2, 0x0

    .line 13
    invoke-static {v0, v1, v2}, Lio/dcloud/p/x0;->a(Ljava/io/File;Ljava/io/File;Z)V

    .line 18
    :cond_2a
    :goto_2a
    new-instance v3, Lio/dcloud/p/x0;

    move-object v4, p0

    move v5, p1

    move v6, p2

    move-wide v7, p3

    invoke-direct/range {v3 .. v8}, Lio/dcloud/p/x0;-><init>(Ljava/io/File;IIJ)V

    .line 19
    iget-object p0, v3, Lio/dcloud/p/x0;->b:Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_81

    .line 21
    :try_start_3b
    invoke-direct {v3}, Lio/dcloud/p/x0;->f()V

    .line 22
    invoke-direct {v3}, Lio/dcloud/p/x0;->e()V

    .line 23
    new-instance p0, Ljava/io/BufferedWriter;

    new-instance p1, Ljava/io/OutputStreamWriter;

    new-instance p2, Ljava/io/FileOutputStream;

    iget-object p3, v3, Lio/dcloud/p/x0;->b:Ljava/io/File;

    const/4 p4, 0x1

    invoke-direct {p2, p3, p4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    sget-object p3, Lio/dcloud/p/a5;->a:Ljava/nio/charset/Charset;

    invoke-direct {p1, p2, p3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {p0, p1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    iput-object p0, v3, Lio/dcloud/p/x0;->i:Ljava/io/Writer;
    :try_end_57
    .catch Ljava/io/IOException; {:try_start_3b .. :try_end_57} :catch_58

    return-object v3

    :catch_58
    move-exception v0

    move-object p0, v0

    .line 27
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "DiskLruCache "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, " is corrupt: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", removing"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 32
    invoke-virtual {p1, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 37
    invoke-virtual {v3}, Lio/dcloud/p/x0;->c()V

    .line 42
    :cond_81
    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    move-wide v8, v7

    move v7, v6

    move v6, v5

    move-object v5, v4

    .line 43
    new-instance v4, Lio/dcloud/p/x0;

    invoke-direct/range {v4 .. v9}, Lio/dcloud/p/x0;-><init>(Ljava/io/File;IIJ)V

    .line 44
    invoke-direct {v4}, Lio/dcloud/p/x0;->g()V

    return-object v4

    .line 45
    :cond_91
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "valueCount <= 0"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 46
    :cond_99
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "maxSize <= 0"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static synthetic a()Ljava/io/OutputStream;
    .registers 1

    .line 3
    sget-object v0, Lio/dcloud/p/x0;->p:Ljava/io/OutputStream;

    return-object v0
.end method

.method static synthetic a(Lio/dcloud/p/x0;)Ljava/io/Writer;
    .registers 1

    .line 1
    iget-object p0, p0, Lio/dcloud/p/x0;->i:Ljava/io/Writer;

    return-object p0
.end method

.method static synthetic a(Ljava/io/InputStream;)Ljava/lang/String;
    .registers 1

    .line 2
    invoke-static {p0}, Lio/dcloud/p/x0;->b(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private declared-synchronized a(Lio/dcloud/p/x0$c;Z)V
    .registers 12

    monitor-enter p0

    .line 74
    :try_start_1
    invoke-static {p1}, Lio/dcloud/p/x0$c;->a(Lio/dcloud/p/x0$c;)Lio/dcloud/p/x0$d;

    move-result-object v0

    .line 75
    invoke-static {v0}, Lio/dcloud/p/x0$d;->e(Lio/dcloud/p/x0$d;)Lio/dcloud/p/x0$c;

    move-result-object v1

    if-ne v1, p1, :cond_10d

    const/4 v1, 0x0

    if-eqz p2, :cond_4d

    .line 80
    invoke-static {v0}, Lio/dcloud/p/x0$d;->d(Lio/dcloud/p/x0$d;)Z

    move-result v2

    if-nez v2, :cond_4d

    const/4 v2, 0x0

    .line 81
    :goto_15
    iget v3, p0, Lio/dcloud/p/x0;->g:I

    if-ge v2, v3, :cond_4d

    .line 82
    invoke-static {p1}, Lio/dcloud/p/x0$c;->b(Lio/dcloud/p/x0$c;)[Z

    move-result-object v3

    aget-boolean v3, v3, v2

    if-eqz v3, :cond_33

    .line 86
    invoke-virtual {v0, v2}, Lio/dcloud/p/x0$d;->b(I)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_30

    .line 87
    invoke-virtual {p1}, Lio/dcloud/p/x0$c;->a()V
    :try_end_2e
    .catchall {:try_start_1 .. :try_end_2e} :catchall_113

    monitor-exit p0

    return-void

    :cond_30
    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    .line 88
    :cond_33
    :try_start_33
    invoke-virtual {p1}, Lio/dcloud/p/x0$c;->a()V

    .line 89
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Newly created entry didn\'t create value for index "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 98
    :cond_4d
    :goto_4d
    iget p1, p0, Lio/dcloud/p/x0;->g:I

    if-ge v1, p1, :cond_81

    .line 99
    invoke-virtual {v0, v1}, Lio/dcloud/p/x0$d;->b(I)Ljava/io/File;

    move-result-object p1

    if-eqz p2, :cond_7b

    .line 101
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_7e

    .line 102
    invoke-virtual {v0, v1}, Lio/dcloud/p/x0$d;->a(I)Ljava/io/File;

    move-result-object v2

    .line 103
    invoke-virtual {p1, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 104
    invoke-static {v0}, Lio/dcloud/p/x0$d;->a(Lio/dcloud/p/x0$d;)[J

    move-result-object p1

    aget-wide v3, p1, v1

    .line 105
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v5

    .line 106
    invoke-static {v0}, Lio/dcloud/p/x0$d;->a(Lio/dcloud/p/x0$d;)[J

    move-result-object p1

    aput-wide v5, p1, v1

    .line 107
    iget-wide v7, p0, Lio/dcloud/p/x0;->h:J

    sub-long/2addr v7, v3

    add-long/2addr v7, v5

    iput-wide v7, p0, Lio/dcloud/p/x0;->h:J

    goto :goto_7e

    .line 110
    :cond_7b
    invoke-static {p1}, Lio/dcloud/p/x0;->a(Ljava/io/File;)V

    :cond_7e
    :goto_7e
    add-int/lit8 v1, v1, 0x1

    goto :goto_4d

    .line 114
    :cond_81
    iget p1, p0, Lio/dcloud/p/x0;->k:I

    const/4 v1, 0x1

    add-int/2addr p1, v1

    iput p1, p0, Lio/dcloud/p/x0;->k:I

    const/4 p1, 0x0

    .line 115
    invoke-static {v0, p1}, Lio/dcloud/p/x0$d;->a(Lio/dcloud/p/x0$d;Lio/dcloud/p/x0$c;)Lio/dcloud/p/x0$c;

    .line 116
    invoke-static {v0}, Lio/dcloud/p/x0$d;->d(Lio/dcloud/p/x0$d;)Z

    move-result p1

    or-int/2addr p1, p2

    const/16 v2, 0xa

    if-eqz p1, :cond_c8

    .line 117
    invoke-static {v0, v1}, Lio/dcloud/p/x0$d;->a(Lio/dcloud/p/x0$d;Z)Z

    .line 118
    iget-object p1, p0, Lio/dcloud/p/x0;->i:Ljava/io/Writer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CLEAN "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lio/dcloud/p/x0$d;->b(Lio/dcloud/p/x0$d;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lio/dcloud/p/x0$d;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    if-eqz p2, :cond_ee

    .line 120
    iget-wide p1, p0, Lio/dcloud/p/x0;->l:J

    const-wide/16 v1, 0x1

    add-long/2addr v1, p1

    iput-wide v1, p0, Lio/dcloud/p/x0;->l:J

    invoke-static {v0, p1, p2}, Lio/dcloud/p/x0$d;->a(Lio/dcloud/p/x0$d;J)J

    goto :goto_ee

    .line 123
    :cond_c8
    iget-object p1, p0, Lio/dcloud/p/x0;->j:Ljava/util/LinkedHashMap;

    invoke-static {v0}, Lio/dcloud/p/x0$d;->b(Lio/dcloud/p/x0$d;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/AbstractMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    iget-object p1, p0, Lio/dcloud/p/x0;->i:Ljava/io/Writer;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "REMOVE "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lio/dcloud/p/x0$d;->b(Lio/dcloud/p/x0$d;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 126
    :cond_ee
    :goto_ee
    iget-object p1, p0, Lio/dcloud/p/x0;->i:Ljava/io/Writer;

    invoke-virtual {p1}, Ljava/io/Writer;->flush()V

    .line 128
    iget-wide p1, p0, Lio/dcloud/p/x0;->h:J

    iget-wide v0, p0, Lio/dcloud/p/x0;->f:J

    cmp-long v2, p1, v0

    if-gtz v2, :cond_104

    invoke-direct {p0}, Lio/dcloud/p/x0;->d()Z

    move-result p1
    :try_end_ff
    .catchall {:try_start_33 .. :try_end_ff} :catchall_113

    if-eqz p1, :cond_102

    goto :goto_104

    :cond_102
    monitor-exit p0

    return-void

    .line 129
    :cond_104
    :goto_104
    :try_start_104
    iget-object p1, p0, Lio/dcloud/p/x0;->m:Ljava/util/concurrent/ThreadPoolExecutor;

    iget-object p2, p0, Lio/dcloud/p/x0;->n:Ljava/util/concurrent/Callable;

    invoke-virtual {p1, p2}, Ljava/util/concurrent/AbstractExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    :try_end_10b
    .catchall {:try_start_104 .. :try_end_10b} :catchall_113

    monitor-exit p0

    return-void

    .line 130
    :cond_10d
    :try_start_10d
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    :catchall_113
    move-exception p1

    monitor-exit p0
    :try_end_115
    .catchall {:try_start_10d .. :try_end_115} :catchall_113

    throw p1
.end method

.method static synthetic a(Lio/dcloud/p/x0;Lio/dcloud/p/x0$c;Z)V
    .registers 3

    .line 4
    invoke-direct {p0, p1, p2}, Lio/dcloud/p/x0;->a(Lio/dcloud/p/x0$c;Z)V

    return-void
.end method

.method private static a(Ljava/io/File;)V
    .registers 2

    .line 47
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result p0

    if-eqz p0, :cond_d

    goto :goto_13

    .line 48
    :cond_d
    new-instance p0, Ljava/io/IOException;

    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

    throw p0

    :cond_13
    :goto_13
    return-void
.end method

.method private static a(Ljava/io/File;Ljava/io/File;Z)V
    .registers 3

    if-eqz p2, :cond_5

    .line 49
    invoke-static {p1}, Lio/dcloud/p/x0;->a(Ljava/io/File;)V

    .line 51
    :cond_5
    invoke-virtual {p0, p1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result p0

    if-eqz p0, :cond_c

    return-void

    .line 52
    :cond_c
    new-instance p0, Ljava/io/IOException;

    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

    throw p0
.end method

.method private static b(Ljava/io/InputStream;)Ljava/lang/String;
    .registers 3

    .line 45
    new-instance v0, Ljava/io/InputStreamReader;

    sget-object v1, Lio/dcloud/p/a5;->b:Ljava/nio/charset/Charset;

    invoke-direct {v0, p0, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-static {v0}, Lio/dcloud/p/a5;->a(Ljava/io/Reader;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private b()V
    .registers 3

    .line 43
    iget-object v0, p0, Lio/dcloud/p/x0;->i:Ljava/io/Writer;

    if-eqz v0, :cond_5

    return-void

    .line 44
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "cache is closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic b(Lio/dcloud/p/x0;)V
    .registers 1

    .line 1
    invoke-direct {p0}, Lio/dcloud/p/x0;->h()V

    return-void
.end method

.method static synthetic c(Lio/dcloud/p/x0;)I
    .registers 1

    .line 1
    iget p0, p0, Lio/dcloud/p/x0;->g:I

    return p0
.end method

.method private c(Ljava/lang/String;)V
    .registers 10

    const/16 v0, 0x20

    .line 2
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const-string v2, "unexpected journal line: "

    const/4 v3, -0x1

    if-eq v1, v3, :cond_99

    add-int/lit8 v4, v1, 0x1

    .line 8
    invoke-virtual {p1, v0, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    if-ne v0, v3, :cond_28

    .line 11
    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x6

    if-ne v1, v5, :cond_2c

    .line 12
    const-string v5, "REMOVE"

    invoke-virtual {p1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2c

    .line 13
    iget-object p1, p0, Lio/dcloud/p/x0;->j:Ljava/util/LinkedHashMap;

    invoke-virtual {p1, v4}, Ljava/util/AbstractMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 17
    :cond_28
    invoke-virtual {p1, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 20
    :cond_2c
    iget-object v5, p0, Lio/dcloud/p/x0;->j:Ljava/util/LinkedHashMap;

    invoke-virtual {v5, v4}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lio/dcloud/p/x0$d;

    const/4 v6, 0x0

    if-nez v5, :cond_41

    .line 22
    new-instance v5, Lio/dcloud/p/x0$d;

    invoke-direct {v5, p0, v4, v6}, Lio/dcloud/p/x0$d;-><init>(Lio/dcloud/p/x0;Ljava/lang/String;Lio/dcloud/p/x0$a;)V

    .line 23
    iget-object v7, p0, Lio/dcloud/p/x0;->j:Ljava/util/LinkedHashMap;

    invoke-virtual {v7, v4, v5}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_41
    const/4 v4, 0x5

    if-eq v0, v3, :cond_64

    if-ne v1, v4, :cond_64

    .line 26
    const-string v7, "CLEAN"

    invoke-virtual {p1, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_64

    const/4 v1, 0x1

    add-int/2addr v0, v1

    .line 27
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 28
    invoke-static {v5, v1}, Lio/dcloud/p/x0$d;->a(Lio/dcloud/p/x0$d;Z)Z

    .line 29
    invoke-static {v5, v6}, Lio/dcloud/p/x0$d;->a(Lio/dcloud/p/x0$d;Lio/dcloud/p/x0$c;)Lio/dcloud/p/x0$c;

    .line 30
    invoke-static {v5, p1}, Lio/dcloud/p/x0$d;->a(Lio/dcloud/p/x0$d;[Ljava/lang/String;)V

    return-void

    :cond_64
    if-ne v0, v3, :cond_79

    if-ne v1, v4, :cond_79

    .line 31
    const-string v4, "DIRTY"

    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_79

    .line 32
    new-instance p1, Lio/dcloud/p/x0$c;

    invoke-direct {p1, p0, v5, v6}, Lio/dcloud/p/x0$c;-><init>(Lio/dcloud/p/x0;Lio/dcloud/p/x0$d;Lio/dcloud/p/x0$a;)V

    invoke-static {v5, p1}, Lio/dcloud/p/x0$d;->a(Lio/dcloud/p/x0$d;Lio/dcloud/p/x0$c;)Lio/dcloud/p/x0$c;

    return-void

    :cond_79
    if-ne v0, v3, :cond_87

    const/4 v0, 0x4

    if-ne v1, v0, :cond_87

    .line 33
    const-string v0, "READ"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_87

    return-void

    .line 36
    :cond_87
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 37
    :cond_99
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic d(Lio/dcloud/p/x0;)Ljava/io/File;
    .registers 1

    .line 1
    iget-object p0, p0, Lio/dcloud/p/x0;->a:Ljava/io/File;

    return-object p0
.end method

.method private d()Z
    .registers 3

    .line 2
    iget v0, p0, Lio/dcloud/p/x0;->k:I

    const/16 v1, 0x7d0

    if-lt v0, v1, :cond_10

    iget-object v1, p0, Lio/dcloud/p/x0;->j:Ljava/util/LinkedHashMap;

    .line 3
    invoke-virtual {v1}, Ljava/util/AbstractMap;->size()I

    move-result v1

    if-lt v0, v1, :cond_10

    const/4 v0, 0x1

    return v0

    :cond_10
    const/4 v0, 0x0

    return v0
.end method

.method private e()V
    .registers 9

    .line 2
    iget-object v0, p0, Lio/dcloud/p/x0;->c:Ljava/io/File;

    invoke-static {v0}, Lio/dcloud/p/x0;->a(Ljava/io/File;)V

    .line 3
    iget-object v0, p0, Lio/dcloud/p/x0;->j:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_f
    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_51

    .line 4
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/dcloud/p/x0$d;

    .line 5
    invoke-static {v1}, Lio/dcloud/p/x0$d;->e(Lio/dcloud/p/x0$d;)Lio/dcloud/p/x0$c;

    move-result-object v2

    const/4 v3, 0x0

    if-nez v2, :cond_34

    .line 6
    :goto_22
    iget v2, p0, Lio/dcloud/p/x0;->g:I

    if-ge v3, v2, :cond_f

    .line 7
    iget-wide v4, p0, Lio/dcloud/p/x0;->h:J

    invoke-static {v1}, Lio/dcloud/p/x0$d;->a(Lio/dcloud/p/x0$d;)[J

    move-result-object v2

    aget-wide v6, v2, v3

    add-long/2addr v4, v6

    iput-wide v4, p0, Lio/dcloud/p/x0;->h:J

    add-int/lit8 v3, v3, 0x1

    goto :goto_22

    :cond_34
    const/4 v2, 0x0

    .line 10
    invoke-static {v1, v2}, Lio/dcloud/p/x0$d;->a(Lio/dcloud/p/x0$d;Lio/dcloud/p/x0$c;)Lio/dcloud/p/x0$c;

    .line 11
    :goto_38
    iget v2, p0, Lio/dcloud/p/x0;->g:I

    if-ge v3, v2, :cond_4d

    .line 12
    invoke-virtual {v1, v3}, Lio/dcloud/p/x0$d;->a(I)Ljava/io/File;

    move-result-object v2

    invoke-static {v2}, Lio/dcloud/p/x0;->a(Ljava/io/File;)V

    .line 13
    invoke-virtual {v1, v3}, Lio/dcloud/p/x0$d;->b(I)Ljava/io/File;

    move-result-object v2

    invoke-static {v2}, Lio/dcloud/p/x0;->a(Ljava/io/File;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_38

    .line 15
    :cond_4d
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_f

    :cond_51
    return-void
.end method

.method private e(Ljava/lang/String;)V
    .registers 5

    .line 16
    sget-object v0, Lio/dcloud/p/x0;->o:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 17
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_d

    return-void

    .line 18
    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "keys must match regex [a-z0-9_-]{1,64}: \""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\""

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic e(Lio/dcloud/p/x0;)Z
    .registers 1

    .line 1
    invoke-direct {p0}, Lio/dcloud/p/x0;->d()Z

    move-result p0

    return p0
.end method

.method private f()V
    .registers 10

    .line 2
    const-string v0, ", "

    .line 0
    const-string v1, "unexpected journal header: ["

    .line 2
    new-instance v2, Lio/dcloud/p/q4;

    new-instance v3, Ljava/io/FileInputStream;

    iget-object v4, p0, Lio/dcloud/p/x0;->b:Ljava/io/File;

    invoke-direct {v3, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    sget-object v4, Lio/dcloud/p/a5;->a:Ljava/nio/charset/Charset;

    invoke-direct {v2, v3, v4}, Lio/dcloud/p/q4;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    .line 4
    :try_start_12
    invoke-virtual {v2}, Lio/dcloud/p/q4;->b()Ljava/lang/String;

    move-result-object v3

    .line 5
    invoke-virtual {v2}, Lio/dcloud/p/q4;->b()Ljava/lang/String;

    move-result-object v4

    .line 6
    invoke-virtual {v2}, Lio/dcloud/p/q4;->b()Ljava/lang/String;

    move-result-object v5

    .line 7
    invoke-virtual {v2}, Lio/dcloud/p/q4;->b()Ljava/lang/String;

    move-result-object v6

    .line 8
    invoke-virtual {v2}, Lio/dcloud/p/q4;->b()Ljava/lang/String;

    move-result-object v7

    .line 9
    const-string v8, "libcore.io.DiskLruCache"

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6e

    const-string v8, "1"

    .line 10
    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6e

    iget v8, p0, Lio/dcloud/p/x0;->e:I

    .line 11
    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6e

    iget v5, p0, Lio/dcloud/p/x0;->g:I

    .line 12
    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6e

    const-string v5, ""

    .line 13
    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5
    :try_end_54
    .catchall {:try_start_12 .. :try_end_54} :catchall_97

    if-eqz v5, :cond_6e

    const/4 v0, 0x0

    .line 21
    :goto_57
    :try_start_57
    invoke-virtual {v2}, Lio/dcloud/p/q4;->b()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lio/dcloud/p/x0;->c(Ljava/lang/String;)V
    :try_end_5e
    .catch Ljava/io/EOFException; {:try_start_57 .. :try_end_5e} :catch_61
    .catchall {:try_start_57 .. :try_end_5e} :catchall_97

    add-int/lit8 v0, v0, 0x1

    goto :goto_57

    .line 27
    :catch_61
    :try_start_61
    iget-object v1, p0, Lio/dcloud/p/x0;->j:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/AbstractMap;->size()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lio/dcloud/p/x0;->k:I
    :try_end_6a
    .catchall {:try_start_61 .. :try_end_6a} :catchall_97

    .line 29
    invoke-static {v2}, Lio/dcloud/p/a5;->a(Ljava/io/Closeable;)V

    return-void

    .line 30
    :cond_6e
    :try_start_6e
    new-instance v5, Ljava/io/IOException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_97
    .catchall {:try_start_6e .. :try_end_97} :catchall_97

    :catchall_97
    move-exception v0

    .line 45
    invoke-static {v2}, Lio/dcloud/p/a5;->a(Ljava/io/Closeable;)V

    .line 46
    throw v0
.end method

.method static synthetic f(Lio/dcloud/p/x0;)V
    .registers 1

    .line 1
    invoke-direct {p0}, Lio/dcloud/p/x0;->g()V

    return-void
.end method

.method private declared-synchronized g()V
    .registers 7

    monitor-enter p0

    .line 1
    :try_start_1
    iget-object v0, p0, Lio/dcloud/p/x0;->i:Ljava/io/Writer;

    if-eqz v0, :cond_8

    .line 2
    invoke-virtual {v0}, Ljava/io/Writer;->close()V

    .line 5
    :cond_8
    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v1, Ljava/io/OutputStreamWriter;

    new-instance v2, Ljava/io/FileOutputStream;

    iget-object v3, p0, Lio/dcloud/p/x0;->c:Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    sget-object v3, Lio/dcloud/p/a5;->a:Ljava/nio/charset/Charset;

    invoke-direct {v1, v2, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_1b
    .catchall {:try_start_1 .. :try_end_1b} :catchall_e9

    .line 8
    :try_start_1b
    const-string v1, "libcore.io.DiskLruCache"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 9
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 10
    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 11
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 12
    iget v1, p0, Lio/dcloud/p/x0;->e:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 13
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 14
    iget v1, p0, Lio/dcloud/p/x0;->g:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 15
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 16
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 18
    iget-object v1, p0, Lio/dcloud/p/x0;->j:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_ad

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/dcloud/p/x0$d;

    .line 19
    invoke-static {v2}, Lio/dcloud/p/x0$d;->e(Lio/dcloud/p/x0$d;)Lio/dcloud/p/x0$c;

    move-result-object v3

    const/16 v4, 0xa

    if-eqz v3, :cond_8a

    .line 20
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DIRTY "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lio/dcloud/p/x0$d;->b(Lio/dcloud/p/x0$d;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_5a

    .line 22
    :cond_8a
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CLEAN "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lio/dcloud/p/x0$d;->b(Lio/dcloud/p/x0$d;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lio/dcloud/p/x0$d;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_ac
    .catchall {:try_start_1b .. :try_end_ac} :catchall_e4

    goto :goto_5a

    .line 26
    :cond_ad
    :try_start_ad
    invoke-virtual {v0}, Ljava/io/Writer;->close()V

    .line 29
    iget-object v0, p0, Lio/dcloud/p/x0;->b:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_c0

    .line 30
    iget-object v0, p0, Lio/dcloud/p/x0;->b:Ljava/io/File;

    iget-object v2, p0, Lio/dcloud/p/x0;->d:Ljava/io/File;

    invoke-static {v0, v2, v1}, Lio/dcloud/p/x0;->a(Ljava/io/File;Ljava/io/File;Z)V

    .line 32
    :cond_c0
    iget-object v0, p0, Lio/dcloud/p/x0;->c:Ljava/io/File;

    iget-object v2, p0, Lio/dcloud/p/x0;->b:Ljava/io/File;

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Lio/dcloud/p/x0;->a(Ljava/io/File;Ljava/io/File;Z)V

    .line 33
    iget-object v0, p0, Lio/dcloud/p/x0;->d:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 35
    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v2, Ljava/io/OutputStreamWriter;

    new-instance v3, Ljava/io/FileOutputStream;

    iget-object v4, p0, Lio/dcloud/p/x0;->b:Ljava/io/File;

    invoke-direct {v3, v4, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    sget-object v1, Lio/dcloud/p/a5;->a:Ljava/nio/charset/Charset;

    invoke-direct {v2, v3, v1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v0, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    iput-object v0, p0, Lio/dcloud/p/x0;->i:Ljava/io/Writer;
    :try_end_e2
    .catchall {:try_start_ad .. :try_end_e2} :catchall_e9

    monitor-exit p0

    return-void

    :catchall_e4
    move-exception v1

    .line 36
    :try_start_e5
    invoke-virtual {v0}, Ljava/io/Writer;->close()V

    .line 37
    throw v1

    :catchall_e9
    move-exception v0

    monitor-exit p0
    :try_end_eb
    .catchall {:try_start_e5 .. :try_end_eb} :catchall_e9

    throw v0
.end method

.method private h()V
    .registers 6

    .line 1
    :goto_0
    iget-wide v0, p0, Lio/dcloud/p/x0;->h:J

    iget-wide v2, p0, Lio/dcloud/p/x0;->f:J

    cmp-long v4, v0, v2

    if-lez v4, :cond_22

    .line 2
    iget-object v0, p0, Lio/dcloud/p/x0;->j:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 3
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lio/dcloud/p/x0;->d(Ljava/lang/String;)Z

    goto :goto_0

    :cond_22
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lio/dcloud/p/x0$c;
    .registers 4

    const-wide/16 v0, -0x1

    .line 53
    invoke-direct {p0, p1, v0, v1}, Lio/dcloud/p/x0;->a(Ljava/lang/String;J)Lio/dcloud/p/x0$c;

    move-result-object p1

    return-object p1
.end method

.method public declared-synchronized b(Ljava/lang/String;)Lio/dcloud/p/x0$e;
    .registers 13

    monitor-enter p0

    .line 2
    :try_start_1
    invoke-direct {p0}, Lio/dcloud/p/x0;->b()V

    .line 3
    invoke-direct {p0, p1}, Lio/dcloud/p/x0;->e(Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lio/dcloud/p/x0;->j:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/dcloud/p/x0$d;
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_89

    const/4 v1, 0x0

    if-nez v0, :cond_14

    monitor-exit p0

    return-object v1

    .line 9
    :cond_14
    :try_start_14
    invoke-static {v0}, Lio/dcloud/p/x0$d;->d(Lio/dcloud/p/x0$d;)Z

    move-result v2
    :try_end_18
    .catchall {:try_start_14 .. :try_end_18} :catchall_89

    if-nez v2, :cond_1c

    monitor-exit p0

    return-object v1

    .line 16
    :cond_1c
    :try_start_1c
    iget v2, p0, Lio/dcloud/p/x0;->g:I

    new-array v8, v2, [Ljava/io/InputStream;
    :try_end_20
    .catchall {:try_start_1c .. :try_end_20} :catchall_89

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 18
    :goto_22
    :try_start_22
    iget v4, p0, Lio/dcloud/p/x0;->g:I
    :try_end_24
    .catch Ljava/io/FileNotFoundException; {:try_start_22 .. :try_end_24} :catch_78
    .catchall {:try_start_22 .. :try_end_24} :catchall_89

    if-ge v3, v4, :cond_38

    .line 19
    :try_start_26
    new-instance v4, Ljava/io/FileInputStream;

    invoke-virtual {v0, v3}, Lio/dcloud/p/x0$d;->a(I)Ljava/io/File;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    aput-object v4, v8, v3
    :try_end_31
    .catch Ljava/io/FileNotFoundException; {:try_start_26 .. :try_end_31} :catch_78
    .catchall {:try_start_26 .. :try_end_31} :catchall_34

    add-int/lit8 v3, v3, 0x1

    goto :goto_22

    :catchall_34
    move-exception v0

    move-object p1, v0

    move-object v4, p0

    goto :goto_8c

    .line 33
    :cond_38
    :try_start_38
    iget v1, p0, Lio/dcloud/p/x0;->k:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lio/dcloud/p/x0;->k:I

    .line 34
    iget-object v1, p0, Lio/dcloud/p/x0;->i:Ljava/io/Writer;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "READ "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 35
    invoke-direct {p0}, Lio/dcloud/p/x0;->d()Z

    move-result v1
    :try_end_5d
    .catchall {:try_start_38 .. :try_end_5d} :catchall_89

    if-eqz v1, :cond_66

    .line 36
    :try_start_5f
    iget-object v1, p0, Lio/dcloud/p/x0;->m:Ljava/util/concurrent/ThreadPoolExecutor;

    iget-object v2, p0, Lio/dcloud/p/x0;->n:Ljava/util/concurrent/Callable;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/AbstractExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    :try_end_66
    .catchall {:try_start_5f .. :try_end_66} :catchall_34

    .line 39
    :cond_66
    :try_start_66
    new-instance v3, Lio/dcloud/p/x0$e;

    invoke-static {v0}, Lio/dcloud/p/x0$d;->c(Lio/dcloud/p/x0$d;)J

    move-result-wide v6

    invoke-static {v0}, Lio/dcloud/p/x0$d;->a(Lio/dcloud/p/x0$d;)[J

    move-result-object v9
    :try_end_70
    .catchall {:try_start_66 .. :try_end_70} :catchall_89

    const/4 v10, 0x0

    move-object v4, p0

    move-object v5, p1

    :try_start_73
    invoke-direct/range {v3 .. v10}, Lio/dcloud/p/x0$e;-><init>(Lio/dcloud/p/x0;Ljava/lang/String;J[Ljava/io/InputStream;[JLio/dcloud/p/x0$a;)V
    :try_end_76
    .catchall {:try_start_73 .. :try_end_76} :catchall_8e

    monitor-exit p0

    return-object v3

    :catch_78
    move-object v4, p0

    .line 40
    :goto_79
    :try_start_79
    iget p1, v4, Lio/dcloud/p/x0;->g:I

    if-ge v2, p1, :cond_87

    .line 41
    aget-object p1, v8, v2

    if-eqz p1, :cond_87

    .line 42
    invoke-static {p1}, Lio/dcloud/p/a5;->a(Ljava/io/Closeable;)V
    :try_end_84
    .catchall {:try_start_79 .. :try_end_84} :catchall_8e

    add-int/lit8 v2, v2, 0x1

    goto :goto_79

    :cond_87
    monitor-exit p0

    return-object v1

    :catchall_89
    move-exception v0

    move-object v4, p0

    :goto_8b
    move-object p1, v0

    :goto_8c
    :try_start_8c
    monitor-exit p0
    :try_end_8d
    .catchall {:try_start_8c .. :try_end_8d} :catchall_8e

    throw p1

    :catchall_8e
    move-exception v0

    goto :goto_8b
.end method

.method public c()V
    .registers 2

    .line 38
    invoke-virtual {p0}, Lio/dcloud/p/x0;->close()V

    .line 39
    iget-object v0, p0, Lio/dcloud/p/x0;->a:Ljava/io/File;

    invoke-static {v0}, Lio/dcloud/p/a5;->a(Ljava/io/File;)V

    return-void
.end method

.method public declared-synchronized close()V
    .registers 6

    monitor-enter p0

    .line 1
    :try_start_1
    iget-object v0, p0, Lio/dcloud/p/x0;->i:Ljava/io/Writer;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_3c

    if-nez v0, :cond_7

    monitor-exit p0

    return-void

    .line 4
    :cond_7
    :try_start_7
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lio/dcloud/p/x0;->j:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :cond_17
    :goto_17
    if-ge v2, v1, :cond_2f

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Lio/dcloud/p/x0$d;

    .line 5
    invoke-static {v3}, Lio/dcloud/p/x0$d;->e(Lio/dcloud/p/x0$d;)Lio/dcloud/p/x0$c;

    move-result-object v4

    if-eqz v4, :cond_17

    .line 6
    invoke-static {v3}, Lio/dcloud/p/x0$d;->e(Lio/dcloud/p/x0$d;)Lio/dcloud/p/x0$c;

    move-result-object v3

    invoke-virtual {v3}, Lio/dcloud/p/x0$c;->a()V

    goto :goto_17

    .line 9
    :cond_2f
    invoke-direct {p0}, Lio/dcloud/p/x0;->h()V

    .line 10
    iget-object v0, p0, Lio/dcloud/p/x0;->i:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->close()V

    const/4 v0, 0x0

    .line 11
    iput-object v0, p0, Lio/dcloud/p/x0;->i:Ljava/io/Writer;
    :try_end_3a
    .catchall {:try_start_7 .. :try_end_3a} :catchall_3c

    monitor-exit p0

    return-void

    :catchall_3c
    move-exception v0

    :try_start_3d
    monitor-exit p0
    :try_end_3e
    .catchall {:try_start_3d .. :try_end_3e} :catchall_3c

    throw v0
.end method

.method public declared-synchronized d(Ljava/lang/String;)Z
    .registers 9

    monitor-enter p0

    .line 4
    :try_start_1
    invoke-direct {p0}, Lio/dcloud/p/x0;->b()V

    .line 5
    invoke-direct {p0, p1}, Lio/dcloud/p/x0;->e(Ljava/lang/String;)V

    .line 6
    iget-object v0, p0, Lio/dcloud/p/x0;->j:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/dcloud/p/x0$d;

    const/4 v1, 0x0

    if-eqz v0, :cond_91

    .line 7
    invoke-static {v0}, Lio/dcloud/p/x0$d;->e(Lio/dcloud/p/x0$d;)Lio/dcloud/p/x0$c;

    move-result-object v2

    if-eqz v2, :cond_1a

    goto/16 :goto_91

    .line 11
    :cond_1a
    :goto_1a
    iget v2, p0, Lio/dcloud/p/x0;->g:I

    if-ge v1, v2, :cond_5c

    .line 12
    invoke-virtual {v0, v1}, Lio/dcloud/p/x0$d;->a(I)Ljava/io/File;

    move-result-object v2

    .line 13
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_46

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v3

    if-eqz v3, :cond_2f

    goto :goto_46

    .line 14
    :cond_2f
    new-instance p1, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "failed to delete "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 16
    :cond_46
    :goto_46
    iget-wide v2, p0, Lio/dcloud/p/x0;->h:J

    invoke-static {v0}, Lio/dcloud/p/x0$d;->a(Lio/dcloud/p/x0$d;)[J

    move-result-object v4

    aget-wide v5, v4, v1

    sub-long/2addr v2, v5

    iput-wide v2, p0, Lio/dcloud/p/x0;->h:J

    .line 17
    invoke-static {v0}, Lio/dcloud/p/x0$d;->a(Lio/dcloud/p/x0$d;)[J

    move-result-object v2

    const-wide/16 v3, 0x0

    aput-wide v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1a

    .line 20
    :cond_5c
    iget v0, p0, Lio/dcloud/p/x0;->k:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lio/dcloud/p/x0;->k:I

    .line 21
    iget-object v0, p0, Lio/dcloud/p/x0;->i:Ljava/io/Writer;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "REMOVE "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 22
    iget-object v0, p0, Lio/dcloud/p/x0;->j:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/AbstractMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    invoke-direct {p0}, Lio/dcloud/p/x0;->d()Z

    move-result p1

    if-eqz p1, :cond_8f

    .line 25
    iget-object p1, p0, Lio/dcloud/p/x0;->m:Ljava/util/concurrent/ThreadPoolExecutor;

    iget-object v0, p0, Lio/dcloud/p/x0;->n:Ljava/util/concurrent/Callable;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/AbstractExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    :try_end_8f
    .catchall {:try_start_1 .. :try_end_8f} :catchall_93

    :cond_8f
    monitor-exit p0

    return v1

    :cond_91
    :goto_91
    monitor-exit p0

    return v1

    :catchall_93
    move-exception p1

    :try_start_94
    monitor-exit p0
    :try_end_95
    .catchall {:try_start_94 .. :try_end_95} :catchall_93

    throw p1
.end method

.method public declared-synchronized flush()V
    .registers 2

    monitor-enter p0

    .line 1
    :try_start_1
    invoke-direct {p0}, Lio/dcloud/p/x0;->b()V

    .line 2
    invoke-direct {p0}, Lio/dcloud/p/x0;->h()V

    .line 3
    iget-object v0, p0, Lio/dcloud/p/x0;->i:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->flush()V
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_e

    monitor-exit p0

    return-void

    :catchall_e
    move-exception v0

    :try_start_f
    monitor-exit p0
    :try_end_10
    .catchall {:try_start_f .. :try_end_10} :catchall_e

    throw v0
.end method

###### Class io.dcloud.p.x0.a (io.dcloud.p.x0$a)
.class Lio/dcloud/p/x0$a;
.super Ljava/lang/Object;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/p/x0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/dcloud/p/x0;


# direct methods
.method constructor <init>(Lio/dcloud/p/x0;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/dcloud/p/x0$a;->a:Lio/dcloud/p/x0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Void;
    .registers 5

    .line 1
    iget-object v0, p0, Lio/dcloud/p/x0$a;->a:Lio/dcloud/p/x0;

    monitor-enter v0

    .line 2
    :try_start_3
    iget-object v1, p0, Lio/dcloud/p/x0$a;->a:Lio/dcloud/p/x0;

    invoke-static {v1}, Lio/dcloud/p/x0;->a(Lio/dcloud/p/x0;)Ljava/io/Writer;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_e

    .line 3
    monitor-exit v0

    return-object v2

    .line 5
    :cond_e
    iget-object v1, p0, Lio/dcloud/p/x0$a;->a:Lio/dcloud/p/x0;

    invoke-static {v1}, Lio/dcloud/p/x0;->b(Lio/dcloud/p/x0;)V

    .line 6
    iget-object v1, p0, Lio/dcloud/p/x0$a;->a:Lio/dcloud/p/x0;

    invoke-static {v1}, Lio/dcloud/p/x0;->e(Lio/dcloud/p/x0;)Z

    move-result v1

    if-eqz v1, :cond_26

    .line 7
    iget-object v1, p0, Lio/dcloud/p/x0$a;->a:Lio/dcloud/p/x0;

    invoke-static {v1}, Lio/dcloud/p/x0;->f(Lio/dcloud/p/x0;)V

    .line 8
    iget-object v1, p0, Lio/dcloud/p/x0$a;->a:Lio/dcloud/p/x0;

    const/4 v3, 0x0

    invoke-static {v1, v3}, Lio/dcloud/p/x0;->a(Lio/dcloud/p/x0;I)I

    .line 10
    :cond_26
    monitor-exit v0

    return-object v2

    :catchall_28
    move-exception v1

    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_3 .. :try_end_2a} :catchall_28

    throw v1
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lio/dcloud/p/x0$a;->a()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

###### Class io.dcloud.p.x0.b (io.dcloud.p.x0$b)
.class Lio/dcloud/p/x0$b;
.super Ljava/io/OutputStream;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/p/x0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    return-void
.end method


# virtual methods
.method public write(I)V
    .registers 2

    return-void
.end method

###### Class io.dcloud.p.x0.c (io.dcloud.p.x0$c)
.class public final Lio/dcloud/p/x0$c;
.super Ljava/lang/Object;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/p/x0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/dcloud/p/x0$c$a;
    }
.end annotation


# instance fields
.field private final a:Lio/dcloud/p/x0$d;

.field private final b:[Z

.field private c:Z

.field private d:Z

.field final synthetic e:Lio/dcloud/p/x0;


# direct methods
.method private constructor <init>(Lio/dcloud/p/x0;Lio/dcloud/p/x0$d;)V
    .registers 3

    .line 2
    iput-object p1, p0, Lio/dcloud/p/x0$c;->e:Lio/dcloud/p/x0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p2, p0, Lio/dcloud/p/x0$c;->a:Lio/dcloud/p/x0$d;

    .line 4
    invoke-static {p2}, Lio/dcloud/p/x0$d;->d(Lio/dcloud/p/x0$d;)Z

    move-result p2

    if-eqz p2, :cond_f

    const/4 p1, 0x0

    goto :goto_15

    :cond_f
    invoke-static {p1}, Lio/dcloud/p/x0;->c(Lio/dcloud/p/x0;)I

    move-result p1

    new-array p1, p1, [Z

    :goto_15
    iput-object p1, p0, Lio/dcloud/p/x0$c;->b:[Z

    return-void
.end method

.method synthetic constructor <init>(Lio/dcloud/p/x0;Lio/dcloud/p/x0$d;Lio/dcloud/p/x0$a;)V
    .registers 4

    .line 1
    invoke-direct {p0, p1, p2}, Lio/dcloud/p/x0$c;-><init>(Lio/dcloud/p/x0;Lio/dcloud/p/x0$d;)V

    return-void
.end method

.method static synthetic a(Lio/dcloud/p/x0$c;)Lio/dcloud/p/x0$d;
    .registers 1

    .line 1
    iget-object p0, p0, Lio/dcloud/p/x0$c;->a:Lio/dcloud/p/x0$d;

    return-object p0
.end method

.method static synthetic a(Lio/dcloud/p/x0$c;Z)Z
    .registers 2

    .line 2
    iput-boolean p1, p0, Lio/dcloud/p/x0$c;->c:Z

    return p1
.end method

.method static synthetic b(Lio/dcloud/p/x0$c;)[Z
    .registers 1

    .line 1
    iget-object p0, p0, Lio/dcloud/p/x0$c;->b:[Z

    return-object p0
.end method


# virtual methods
.method public a(I)Ljava/io/OutputStream;
    .registers 5

    .line 3
    iget-object v0, p0, Lio/dcloud/p/x0$c;->e:Lio/dcloud/p/x0;

    monitor-enter v0

    .line 4
    :try_start_3
    iget-object v1, p0, Lio/dcloud/p/x0$c;->a:Lio/dcloud/p/x0$d;

    invoke-static {v1}, Lio/dcloud/p/x0$d;->e(Lio/dcloud/p/x0$d;)Lio/dcloud/p/x0$c;

    move-result-object v1

    if-ne v1, p0, :cond_40

    .line 7
    iget-object v1, p0, Lio/dcloud/p/x0$c;->a:Lio/dcloud/p/x0$d;

    invoke-static {v1}, Lio/dcloud/p/x0$d;->d(Lio/dcloud/p/x0$d;)Z

    move-result v1

    if-nez v1, :cond_18

    .line 8
    iget-object v1, p0, Lio/dcloud/p/x0$c;->b:[Z

    const/4 v2, 0x1

    aput-boolean v2, v1, p1

    .line 10
    :cond_18
    iget-object v1, p0, Lio/dcloud/p/x0$c;->a:Lio/dcloud/p/x0$d;

    invoke-virtual {v1, p1}, Lio/dcloud/p/x0$d;->b(I)Ljava/io/File;

    move-result-object p1
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_46

    .line 13
    :try_start_1e
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_23
    .catch Ljava/io/FileNotFoundException; {:try_start_1e .. :try_end_23} :catch_24
    .catchall {:try_start_1e .. :try_end_23} :catchall_46

    goto :goto_32

    .line 16
    :catch_24
    :try_start_24
    iget-object v1, p0, Lio/dcloud/p/x0$c;->e:Lio/dcloud/p/x0;

    invoke-static {v1}, Lio/dcloud/p/x0;->d(Lio/dcloud/p/x0;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z
    :try_end_2d
    .catchall {:try_start_24 .. :try_end_2d} :catchall_46

    .line 18
    :try_start_2d
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_32
    .catch Ljava/io/FileNotFoundException; {:try_start_2d .. :try_end_32} :catch_3a
    .catchall {:try_start_2d .. :try_end_32} :catchall_46

    .line 24
    :goto_32
    :try_start_32
    new-instance p1, Lio/dcloud/p/x0$c$a;

    const/4 v2, 0x0

    invoke-direct {p1, p0, v1, v2}, Lio/dcloud/p/x0$c$a;-><init>(Lio/dcloud/p/x0$c;Ljava/io/OutputStream;Lio/dcloud/p/x0$a;)V

    monitor-exit v0

    return-object p1

    .line 25
    :catch_3a
    invoke-static {}, Lio/dcloud/p/x0;->a()Ljava/io/OutputStream;

    move-result-object p1

    monitor-exit v0

    return-object p1

    .line 26
    :cond_40
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    :catchall_46
    move-exception p1

    .line 46
    monitor-exit v0
    :try_end_48
    .catchall {:try_start_32 .. :try_end_48} :catchall_46

    throw p1
.end method

.method public a()V
    .registers 3

    .line 47
    iget-object v0, p0, Lio/dcloud/p/x0$c;->e:Lio/dcloud/p/x0;

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lio/dcloud/p/x0;->a(Lio/dcloud/p/x0;Lio/dcloud/p/x0$c;Z)V

    return-void
.end method

.method public b()V
    .registers 4

    .line 2
    iget-boolean v0, p0, Lio/dcloud/p/x0$c;->c:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_17

    .line 3
    iget-object v0, p0, Lio/dcloud/p/x0$c;->e:Lio/dcloud/p/x0;

    const/4 v2, 0x0

    invoke-static {v0, p0, v2}, Lio/dcloud/p/x0;->a(Lio/dcloud/p/x0;Lio/dcloud/p/x0$c;Z)V

    .line 4
    iget-object v0, p0, Lio/dcloud/p/x0$c;->e:Lio/dcloud/p/x0;

    iget-object v2, p0, Lio/dcloud/p/x0$c;->a:Lio/dcloud/p/x0$d;

    invoke-static {v2}, Lio/dcloud/p/x0$d;->b(Lio/dcloud/p/x0$d;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lio/dcloud/p/x0;->d(Ljava/lang/String;)Z

    goto :goto_1c

    .line 6
    :cond_17
    iget-object v0, p0, Lio/dcloud/p/x0$c;->e:Lio/dcloud/p/x0;

    invoke-static {v0, p0, v1}, Lio/dcloud/p/x0;->a(Lio/dcloud/p/x0;Lio/dcloud/p/x0$c;Z)V

    .line 8
    :goto_1c
    iput-boolean v1, p0, Lio/dcloud/p/x0$c;->d:Z

    return-void
.end method

###### Class io.dcloud.p.x0.c.a (io.dcloud.p.x0$c$a)
.class Lio/dcloud/p/x0$c$a;
.super Ljava/io/FilterOutputStream;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/p/x0$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lio/dcloud/p/x0$c;


# direct methods
.method private constructor <init>(Lio/dcloud/p/x0$c;Ljava/io/OutputStream;)V
    .registers 3

    .line 2
    iput-object p1, p0, Lio/dcloud/p/x0$c$a;->a:Lio/dcloud/p/x0$c;

    .line 3
    invoke-direct {p0, p2}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    return-void
.end method

.method synthetic constructor <init>(Lio/dcloud/p/x0$c;Ljava/io/OutputStream;Lio/dcloud/p/x0$a;)V
    .registers 4

    .line 1
    invoke-direct {p0, p1, p2}, Lio/dcloud/p/x0$c$a;-><init>(Lio/dcloud/p/x0$c;Ljava/io/OutputStream;)V

    return-void
.end method


# virtual methods
.method public close()V
    .registers 3

    .line 1
    :try_start_0
    iget-object v0, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    .line 3
    :catch_6
    iget-object v0, p0, Lio/dcloud/p/x0$c$a;->a:Lio/dcloud/p/x0$c;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lio/dcloud/p/x0$c;->a(Lio/dcloud/p/x0$c;Z)Z

    return-void
.end method

.method public flush()V
    .registers 3

    .line 1
    :try_start_0
    iget-object v0, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    .line 3
    :catch_6
    iget-object v0, p0, Lio/dcloud/p/x0$c$a;->a:Lio/dcloud/p/x0$c;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lio/dcloud/p/x0$c;->a(Lio/dcloud/p/x0$c;Z)Z

    return-void
.end method

.method public write(I)V
    .registers 3

    .line 1
    :try_start_0
    iget-object v0, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    .line 3
    :catch_6
    iget-object p1, p0, Lio/dcloud/p/x0$c$a;->a:Lio/dcloud/p/x0$c;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lio/dcloud/p/x0$c;->a(Lio/dcloud/p/x0$c;Z)Z

    return-void
.end method

.method public write([BII)V
    .registers 5

    .line 4
    :try_start_0
    iget-object v0, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    .line 6
    :catch_6
    iget-object p1, p0, Lio/dcloud/p/x0$c$a;->a:Lio/dcloud/p/x0$c;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lio/dcloud/p/x0$c;->a(Lio/dcloud/p/x0$c;Z)Z

    return-void
.end method

###### Class io.dcloud.p.x0.d (io.dcloud.p.x0$d)
.class final Lio/dcloud/p/x0$d;
.super Ljava/lang/Object;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/p/x0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "d"
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:[J

.field private c:Z

.field private d:Lio/dcloud/p/x0$c;

.field private e:J

.field final synthetic f:Lio/dcloud/p/x0;


# direct methods
.method private constructor <init>(Lio/dcloud/p/x0;Ljava/lang/String;)V
    .registers 3

    .line 2
    iput-object p1, p0, Lio/dcloud/p/x0$d;->f:Lio/dcloud/p/x0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p2, p0, Lio/dcloud/p/x0$d;->a:Ljava/lang/String;

    .line 4
    invoke-static {p1}, Lio/dcloud/p/x0;->c(Lio/dcloud/p/x0;)I

    move-result p1

    new-array p1, p1, [J

    iput-object p1, p0, Lio/dcloud/p/x0$d;->b:[J

    return-void
.end method

.method synthetic constructor <init>(Lio/dcloud/p/x0;Ljava/lang/String;Lio/dcloud/p/x0$a;)V
    .registers 4

    .line 1
    invoke-direct {p0, p1, p2}, Lio/dcloud/p/x0$d;-><init>(Lio/dcloud/p/x0;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lio/dcloud/p/x0$d;J)J
    .registers 3

    .line 2
    iput-wide p1, p0, Lio/dcloud/p/x0$d;->e:J

    return-wide p1
.end method

.method static synthetic a(Lio/dcloud/p/x0$d;Lio/dcloud/p/x0$c;)Lio/dcloud/p/x0$c;
    .registers 2

    .line 4
    iput-object p1, p0, Lio/dcloud/p/x0$d;->d:Lio/dcloud/p/x0$c;

    return-object p1
.end method

.method private a([Ljava/lang/String;)Ljava/io/IOException;
    .registers 5

    .line 11
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "unexpected journal line: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic a(Lio/dcloud/p/x0$d;[Ljava/lang/String;)V
    .registers 2

    .line 5
    invoke-direct {p0, p1}, Lio/dcloud/p/x0$d;->b([Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lio/dcloud/p/x0$d;Z)Z
    .registers 2

    .line 3
    iput-boolean p1, p0, Lio/dcloud/p/x0$d;->c:Z

    return p1
.end method

.method static synthetic a(Lio/dcloud/p/x0$d;)[J
    .registers 1

    .line 1
    iget-object p0, p0, Lio/dcloud/p/x0$d;->b:[J

    return-object p0
.end method

.method static synthetic b(Lio/dcloud/p/x0$d;)Ljava/lang/String;
    .registers 1

    .line 1
    iget-object p0, p0, Lio/dcloud/p/x0$d;->a:Ljava/lang/String;

    return-object p0
.end method

.method private b([Ljava/lang/String;)V
    .registers 6

    .line 2
    array-length v0, p1

    iget-object v1, p0, Lio/dcloud/p/x0$d;->f:Lio/dcloud/p/x0;

    invoke-static {v1}, Lio/dcloud/p/x0;->c(Lio/dcloud/p/x0;)I

    move-result v1

    if-ne v0, v1, :cond_20

    const/4 v0, 0x0

    .line 7
    :goto_a
    :try_start_a
    array-length v1, p1

    if-ge v0, v1, :cond_1a

    .line 8
    iget-object v1, p0, Lio/dcloud/p/x0$d;->b:[J

    aget-object v2, p1, v0

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    aput-wide v2, v1, v0
    :try_end_17
    .catch Ljava/lang/NumberFormatException; {:try_start_a .. :try_end_17} :catch_1b

    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    :cond_1a
    return-void

    .line 11
    :catch_1b
    invoke-direct {p0, p1}, Lio/dcloud/p/x0$d;->a([Ljava/lang/String;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    .line 12
    :cond_20
    invoke-direct {p0, p1}, Lio/dcloud/p/x0$d;->a([Ljava/lang/String;)Ljava/io/IOException;

    move-result-object p1

    throw p1
.end method

.method static synthetic c(Lio/dcloud/p/x0$d;)J
    .registers 3

    .line 1
    iget-wide v0, p0, Lio/dcloud/p/x0$d;->e:J

    return-wide v0
.end method

.method static synthetic d(Lio/dcloud/p/x0$d;)Z
    .registers 1

    .line 1
    iget-boolean p0, p0, Lio/dcloud/p/x0$d;->c:Z

    return p0
.end method

.method static synthetic e(Lio/dcloud/p/x0$d;)Lio/dcloud/p/x0$c;
    .registers 1

    .line 1
    iget-object p0, p0, Lio/dcloud/p/x0$d;->d:Lio/dcloud/p/x0$c;

    return-object p0
.end method


# virtual methods
.method public a(I)Ljava/io/File;
    .registers 6

    .line 12
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lio/dcloud/p/x0$d;->f:Lio/dcloud/p/x0;

    invoke-static {v1}, Lio/dcloud/p/x0;->d(Lio/dcloud/p/x0;)Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lio/dcloud/p/x0$d;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public a()Ljava/lang/String;
    .registers 8

    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 7
    iget-object v1, p0, Lio/dcloud/p/x0$d;->b:[J

    array-length v2, v1

    const/4 v3, 0x0

    :goto_9
    if-ge v3, v2, :cond_18

    aget-wide v4, v1, v3

    const/16 v6, 0x20

    .line 8
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    .line 10
    :cond_18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b(I)Ljava/io/File;
    .registers 6

    .line 13
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lio/dcloud/p/x0$d;->f:Lio/dcloud/p/x0;

    invoke-static {v1}, Lio/dcloud/p/x0;->d(Lio/dcloud/p/x0;)Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lio/dcloud/p/x0$d;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ".tmp"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

###### Class io.dcloud.p.x0.e (io.dcloud.p.x0$e)
.class public final Lio/dcloud/p/x0$e;
.super Ljava/lang/Object;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/p/x0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "e"
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:J

.field private final c:[Ljava/io/InputStream;

.field private final d:[J

.field final synthetic e:Lio/dcloud/p/x0;


# direct methods
.method private constructor <init>(Lio/dcloud/p/x0;Ljava/lang/String;J[Ljava/io/InputStream;[J)V
    .registers 7

    .line 2
    iput-object p1, p0, Lio/dcloud/p/x0$e;->e:Lio/dcloud/p/x0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p2, p0, Lio/dcloud/p/x0$e;->a:Ljava/lang/String;

    .line 4
    iput-wide p3, p0, Lio/dcloud/p/x0$e;->b:J

    .line 5
    iput-object p5, p0, Lio/dcloud/p/x0$e;->c:[Ljava/io/InputStream;

    .line 6
    iput-object p6, p0, Lio/dcloud/p/x0$e;->d:[J

    return-void
.end method

.method synthetic constructor <init>(Lio/dcloud/p/x0;Ljava/lang/String;J[Ljava/io/InputStream;[JLio/dcloud/p/x0$a;)V
    .registers 8

    .line 1
    invoke-direct/range {p0 .. p6}, Lio/dcloud/p/x0$e;-><init>(Lio/dcloud/p/x0;Ljava/lang/String;J[Ljava/io/InputStream;[J)V

    return-void
.end method


# virtual methods
.method public a(I)Ljava/io/InputStream;
    .registers 3

    .line 1
    iget-object v0, p0, Lio/dcloud/p/x0$e;->c:[Ljava/io/InputStream;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public close()V
    .registers 5

    .line 1
    iget-object v0, p0, Lio/dcloud/p/x0$e;->c:[Ljava/io/InputStream;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v1, :cond_e

    aget-object v3, v0, v2

    .line 2
    invoke-static {v3}, Lio/dcloud/p/a5;->a(Ljava/io/Closeable;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_e
    return-void
.end method

.method public getString(I)Ljava/lang/String;
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lio/dcloud/p/x0$e;->a(I)Ljava/io/InputStream;

    move-result-object p1

    invoke-static {p1}, Lio/dcloud/p/x0;->a(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
