###### Class io.dcloud.p.q4 (io.dcloud.p.q4)
.class Lio/dcloud/p/q4;
.super Ljava/lang/Object;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field private final a:Ljava/io/InputStream;

.field private final b:Ljava/nio/charset/Charset;

.field private c:[B

.field private d:I

.field private e:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;ILjava/nio/charset/Charset;)V
    .registers 5

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_2a

    if-eqz p3, :cond_2a

    if-ltz p2, :cond_22

    .line 9
    sget-object v0, Lio/dcloud/p/a5;->a:Ljava/nio/charset/Charset;

    invoke-virtual {p3, v0}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 13
    iput-object p1, p0, Lio/dcloud/p/q4;->a:Ljava/io/InputStream;

    .line 14
    iput-object p3, p0, Lio/dcloud/p/q4;->b:Ljava/nio/charset/Charset;

    .line 15
    new-array p1, p2, [B

    iput-object p1, p0, Lio/dcloud/p/q4;->c:[B

    return-void

    .line 16
    :cond_1a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Unsupported encoding"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 17
    :cond_22
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "capacity <= 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2a
    const/4 p1, 0x0

    .line 18
    throw p1
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V
    .registers 4

    const/16 v0, 0x2000

    .line 1
    invoke-direct {p0, p1, v0, p2}, Lio/dcloud/p/q4;-><init>(Ljava/io/InputStream;ILjava/nio/charset/Charset;)V

    return-void
.end method

.method static synthetic a(Lio/dcloud/p/q4;)Ljava/nio/charset/Charset;
    .registers 1

    .line 1
    iget-object p0, p0, Lio/dcloud/p/q4;->b:Ljava/nio/charset/Charset;

    return-object p0
.end method

.method private a()V
    .registers 5

    .line 2
    iget-object v0, p0, Lio/dcloud/p/q4;->a:Ljava/io/InputStream;

    iget-object v1, p0, Lio/dcloud/p/q4;->c:[B

    array-length v2, v1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_12

    .line 6
    iput v3, p0, Lio/dcloud/p/q4;->d:I

    .line 7
    iput v0, p0, Lio/dcloud/p/q4;->e:I

    return-void

    .line 8
    :cond_12
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0
.end method


# virtual methods
.method public b()Ljava/lang/String;
    .registers 8

    .line 1
    iget-object v0, p0, Lio/dcloud/p/q4;->a:Ljava/io/InputStream;

    monitor-enter v0

    .line 2
    :try_start_3
    iget-object v1, p0, Lio/dcloud/p/q4;->c:[B

    if-eqz v1, :cond_7f

    .line 9
    iget v1, p0, Lio/dcloud/p/q4;->d:I

    iget v2, p0, Lio/dcloud/p/q4;->e:I

    if-lt v1, v2, :cond_10

    .line 10
    invoke-direct {p0}, Lio/dcloud/p/q4;->a()V

    .line 13
    :cond_10
    iget v1, p0, Lio/dcloud/p/q4;->d:I

    :goto_12
    iget v2, p0, Lio/dcloud/p/q4;->e:I

    const/16 v3, 0xa

    if-eq v1, v2, :cond_41

    .line 14
    iget-object v2, p0, Lio/dcloud/p/q4;->c:[B

    aget-byte v4, v2, v1

    if-ne v4, v3, :cond_3e

    .line 15
    iget v3, p0, Lio/dcloud/p/q4;->d:I

    if-eq v1, v3, :cond_2b

    add-int/lit8 v4, v1, -0x1

    aget-byte v5, v2, v4

    const/16 v6, 0xd

    if-ne v5, v6, :cond_2b

    goto :goto_2c

    :cond_2b
    move v4, v1

    .line 16
    :goto_2c
    new-instance v5, Ljava/lang/String;

    sub-int/2addr v4, v3

    iget-object v6, p0, Lio/dcloud/p/q4;->b:Ljava/nio/charset/Charset;

    invoke-virtual {v6}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v2, v3, v4, v6}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    .line 17
    iput v1, p0, Lio/dcloud/p/q4;->d:I

    .line 18
    monitor-exit v0

    return-object v5

    :cond_3e
    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    .line 23
    :cond_41
    new-instance v1, Lio/dcloud/p/q4$a;

    iget v2, p0, Lio/dcloud/p/q4;->e:I

    iget v4, p0, Lio/dcloud/p/q4;->d:I

    sub-int/2addr v2, v4

    add-int/lit8 v2, v2, 0x50

    invoke-direct {v1, p0, v2}, Lio/dcloud/p/q4$a;-><init>(Lio/dcloud/p/q4;I)V

    .line 36
    :cond_4d
    iget-object v2, p0, Lio/dcloud/p/q4;->c:[B

    iget v4, p0, Lio/dcloud/p/q4;->d:I

    iget v5, p0, Lio/dcloud/p/q4;->e:I

    sub-int/2addr v5, v4

    invoke-virtual {v1, v2, v4, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    const/4 v2, -0x1

    .line 38
    iput v2, p0, Lio/dcloud/p/q4;->e:I

    .line 39
    invoke-direct {p0}, Lio/dcloud/p/q4;->a()V

    .line 41
    iget v2, p0, Lio/dcloud/p/q4;->d:I

    :goto_5f
    iget v4, p0, Lio/dcloud/p/q4;->e:I

    if-eq v2, v4, :cond_4d

    .line 42
    iget-object v4, p0, Lio/dcloud/p/q4;->c:[B

    aget-byte v5, v4, v2

    if-ne v5, v3, :cond_7c

    .line 43
    iget v3, p0, Lio/dcloud/p/q4;->d:I

    if-eq v2, v3, :cond_72

    sub-int v5, v2, v3

    .line 44
    invoke-virtual {v1, v4, v3, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    :cond_72
    add-int/lit8 v2, v2, 0x1

    .line 46
    iput v2, p0, Lio/dcloud/p/q4;->d:I

    .line 47
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :cond_7c
    add-int/lit8 v2, v2, 0x1

    goto :goto_5f

    .line 48
    :cond_7f
    new-instance v1, Ljava/io/IOException;

    const-string v2, "LineReader is closed"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_87
    move-exception v1

    .line 96
    monitor-exit v0
    :try_end_89
    .catchall {:try_start_3 .. :try_end_89} :catchall_87

    throw v1
.end method

.method public close()V
    .registers 3

    .line 1
    iget-object v0, p0, Lio/dcloud/p/q4;->a:Ljava/io/InputStream;

    monitor-enter v0

    .line 2
    :try_start_3
    iget-object v1, p0, Lio/dcloud/p/q4;->c:[B

    if-eqz v1, :cond_f

    const/4 v1, 0x0

    .line 3
    iput-object v1, p0, Lio/dcloud/p/q4;->c:[B

    .line 4
    iget-object v1, p0, Lio/dcloud/p/q4;->a:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 6
    :cond_f
    monitor-exit v0

    return-void

    :catchall_11
    move-exception v1

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw v1
.end method

###### Class io.dcloud.p.q4.a (io.dcloud.p.q4$a)
.class Lio/dcloud/p/q4$a;
.super Ljava/io/ByteArrayOutputStream;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/p/q4;->b()Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/dcloud/p/q4;


# direct methods
.method constructor <init>(Lio/dcloud/p/q4;I)V
    .registers 3

    .line 1
    iput-object p1, p0, Lio/dcloud/p/q4$a;->a:Lio/dcloud/p/q4;

    invoke-direct {p0, p2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 6

    .line 1
    iget v0, p0, Ljava/io/ByteArrayOutputStream;->count:I

    if-lez v0, :cond_f

    iget-object v1, p0, Ljava/io/ByteArrayOutputStream;->buf:[B

    add-int/lit8 v2, v0, -0x1

    aget-byte v1, v1, v2

    const/16 v3, 0xd

    if-ne v1, v3, :cond_f

    move v0, v2

    .line 3
    :cond_f
    :try_start_f
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Ljava/io/ByteArrayOutputStream;->buf:[B

    iget-object v3, p0, Lio/dcloud/p/q4$a;->a:Lio/dcloud/p/q4;

    invoke-static {v3}, Lio/dcloud/p/q4;->a(Lio/dcloud/p/q4;)Ljava/nio/charset/Charset;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v1, v2, v4, v0, v3}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_21
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_f .. :try_end_21} :catch_22

    return-object v1

    :catch_22
    move-exception v0

    .line 5
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method
