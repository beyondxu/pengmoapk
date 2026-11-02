###### Class net.lingala.zip4j.io.inputstream.ZipEntryInputStream (net.lingala.zip4j.io.inputstream.ZipEntryInputStream)
.class Lnet/lingala/zip4j/io/inputstream/ZipEntryInputStream;
.super Ljava/io/InputStream;
.source "ZipEntryInputStream.java"


# static fields
.field private static final MAX_RAW_READ_FULLY_RETRY_ATTEMPTS:I = 0xf


# instance fields
.field private compressedSize:J

.field private inputStream:Ljava/io/InputStream;

.field private numberOfBytesRead:J

.field private singleByteArray:[B


# direct methods
.method public constructor <init>(Ljava/io/InputStream;J)V
    .registers 6

    .line 15
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    const-wide/16 v0, 0x0

    .line 11
    iput-wide v0, p0, Lnet/lingala/zip4j/io/inputstream/ZipEntryInputStream;->numberOfBytesRead:J

    const/4 v0, 0x1

    .line 12
    new-array v0, v0, [B

    iput-object v0, p0, Lnet/lingala/zip4j/io/inputstream/ZipEntryInputStream;->singleByteArray:[B

    .line 16
    iput-object p1, p0, Lnet/lingala/zip4j/io/inputstream/ZipEntryInputStream;->inputStream:Ljava/io/InputStream;

    .line 17
    iput-wide p2, p0, Lnet/lingala/zip4j/io/inputstream/ZipEntryInputStream;->compressedSize:J

    return-void
.end method

.method private readUntilBufferIsFull([BI)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 77
    array-length v0, p1

    sub-int/2addr v0, p2

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 81
    :goto_4
    array-length v3, p1

    if-ge p2, v3, :cond_1c

    const/4 v3, -0x1

    if-eq v1, v3, :cond_1c

    const/16 v3, 0xf

    if-ge v2, v3, :cond_1c

    .line 82
    iget-object v3, p0, Lnet/lingala/zip4j/io/inputstream/ZipEntryInputStream;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v3, p1, p2, v0}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    add-int/2addr v1, v3

    if-lez v1, :cond_19

    add-int/2addr p2, v1

    sub-int/2addr v0, v1

    :cond_19
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_1c
    return p2
.end method


# virtual methods
.method public close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 97
    iget-object v0, p0, Lnet/lingala/zip4j/io/inputstream/ZipEntryInputStream;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    return-void
.end method

.method public getNumberOfBytesRead()J
    .registers 3

    .line 101
    iget-wide v0, p0, Lnet/lingala/zip4j/io/inputstream/ZipEntryInputStream;->numberOfBytesRead:J

    return-wide v0
.end method

.method public read()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 22
    iget-object v0, p0, Lnet/lingala/zip4j/io/inputstream/ZipEntryInputStream;->singleByteArray:[B

    invoke-virtual {p0, v0}, Lnet/lingala/zip4j/io/inputstream/ZipEntryInputStream;->read([B)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_a

    return v1

    .line 27
    :cond_a
    iget-object v0, p0, Lnet/lingala/zip4j/io/inputstream/ZipEntryInputStream;->singleByteArray:[B

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    return v0
.end method

.method public read([B)I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 32
    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lnet/lingala/zip4j/io/inputstream/ZipEntryInputStream;->read([BII)I

    move-result p1

    return p1
.end method

.method public read([BII)I
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 38
    iget-wide v0, p0, Lnet/lingala/zip4j/io/inputstream/ZipEntryInputStream;->compressedSize:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-eqz v4, :cond_19

    .line 39
    iget-wide v2, p0, Lnet/lingala/zip4j/io/inputstream/ZipEntryInputStream;->numberOfBytesRead:J

    cmp-long v4, v2, v0

    if-ltz v4, :cond_10

    const/4 p1, -0x1

    return p1

    :cond_10
    int-to-long v4, p3

    sub-long v6, v0, v2

    cmp-long v8, v4, v6

    if-lez v8, :cond_19

    sub-long/2addr v0, v2

    long-to-int p3, v0

    .line 48
    :cond_19
    iget-object v0, p0, Lnet/lingala/zip4j/io/inputstream/ZipEntryInputStream;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result p1

    if-lez p1, :cond_27

    .line 51
    iget-wide p2, p0, Lnet/lingala/zip4j/io/inputstream/ZipEntryInputStream;->numberOfBytesRead:J

    int-to-long v0, p1

    add-long/2addr p2, v0

    iput-wide p2, p0, Lnet/lingala/zip4j/io/inputstream/ZipEntryInputStream;->numberOfBytesRead:J

    :cond_27
    return p1
.end method

.method public readRawFully([B)I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 59
    iget-object v0, p0, Lnet/lingala/zip4j/io/inputstream/ZipEntryInputStream;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v0, p1}, Ljava/io/InputStream;->read([B)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1d

    .line 65
    array-length v1, p1

    if-eq v0, v1, :cond_1c

    .line 66
    invoke-direct {p0, p1, v0}, Lnet/lingala/zip4j/io/inputstream/ZipEntryInputStream;->readUntilBufferIsFull([BI)I

    move-result v0

    .line 68
    array-length p1, p1

    if-ne v0, p1, :cond_14

    return v0

    .line 69
    :cond_14
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Cannot read fully into byte buffer"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1c
    return v0

    .line 62
    :cond_1d
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Unexpected EOF reached when trying to read stream"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
