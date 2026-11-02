###### Class net.lingala.zip4j.io.outputstream.DeflaterOutputStream (net.lingala.zip4j.io.outputstream.DeflaterOutputStream)
.class Lnet/lingala/zip4j/io/outputstream/DeflaterOutputStream;
.super Lnet/lingala/zip4j/io/outputstream/CompressedOutputStream;
.source "DeflaterOutputStream.java"


# instance fields
.field private buff:[B

.field protected deflater:Ljava/util/zip/Deflater;


# direct methods
.method public constructor <init>(Lnet/lingala/zip4j/io/outputstream/CipherOutputStream;Lnet/lingala/zip4j/model/enums/CompressionLevel;I)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/lingala/zip4j/io/outputstream/CipherOutputStream<",
            "*>;",
            "Lnet/lingala/zip4j/model/enums/CompressionLevel;",
            "I)V"
        }
    .end annotation

    .line 30
    invoke-direct {p0, p1}, Lnet/lingala/zip4j/io/outputstream/CompressedOutputStream;-><init>(Lnet/lingala/zip4j/io/outputstream/CipherOutputStream;)V

    .line 31
    new-instance p1, Ljava/util/zip/Deflater;

    invoke-virtual {p2}, Lnet/lingala/zip4j/model/enums/CompressionLevel;->getLevel()I

    move-result p2

    const/4 v0, 0x1

    invoke-direct {p1, p2, v0}, Ljava/util/zip/Deflater;-><init>(IZ)V

    iput-object p1, p0, Lnet/lingala/zip4j/io/outputstream/DeflaterOutputStream;->deflater:Ljava/util/zip/Deflater;

    .line 32
    new-array p1, p3, [B

    iput-object p1, p0, Lnet/lingala/zip4j/io/outputstream/DeflaterOutputStream;->buff:[B

    return-void
.end method

.method private deflate()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 53
    iget-object v0, p0, Lnet/lingala/zip4j/io/outputstream/DeflaterOutputStream;->deflater:Ljava/util/zip/Deflater;

    iget-object v1, p0, Lnet/lingala/zip4j/io/outputstream/DeflaterOutputStream;->buff:[B

    array-length v2, v1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Ljava/util/zip/Deflater;->deflate([BII)I

    move-result v0

    if-lez v0, :cond_11

    .line 55
    iget-object v1, p0, Lnet/lingala/zip4j/io/outputstream/DeflaterOutputStream;->buff:[B

    invoke-super {p0, v1, v3, v0}, Lnet/lingala/zip4j/io/outputstream/CompressedOutputStream;->write([BII)V

    :cond_11
    return-void
.end method


# virtual methods
.method public closeEntry()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 60
    iget-object v0, p0, Lnet/lingala/zip4j/io/outputstream/DeflaterOutputStream;->deflater:Ljava/util/zip/Deflater;

    invoke-virtual {v0}, Ljava/util/zip/Deflater;->finished()Z

    move-result v0

    if-nez v0, :cond_19

    .line 61
    iget-object v0, p0, Lnet/lingala/zip4j/io/outputstream/DeflaterOutputStream;->deflater:Ljava/util/zip/Deflater;

    invoke-virtual {v0}, Ljava/util/zip/Deflater;->finish()V

    .line 62
    :goto_d
    iget-object v0, p0, Lnet/lingala/zip4j/io/outputstream/DeflaterOutputStream;->deflater:Ljava/util/zip/Deflater;

    invoke-virtual {v0}, Ljava/util/zip/Deflater;->finished()Z

    move-result v0

    if-nez v0, :cond_19

    .line 63
    invoke-direct {p0}, Lnet/lingala/zip4j/io/outputstream/DeflaterOutputStream;->deflate()V

    goto :goto_d

    .line 66
    :cond_19
    iget-object v0, p0, Lnet/lingala/zip4j/io/outputstream/DeflaterOutputStream;->deflater:Ljava/util/zip/Deflater;

    invoke-virtual {v0}, Ljava/util/zip/Deflater;->end()V

    .line 67
    invoke-super {p0}, Lnet/lingala/zip4j/io/outputstream/CompressedOutputStream;->closeEntry()V

    return-void
.end method

.method public write(I)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    int-to-byte p1, p1

    const/4 v0, 0x1

    .line 41
    new-array v1, v0, [B

    const/4 v2, 0x0

    aput-byte p1, v1, v2

    .line 42
    invoke-virtual {p0, v1, v2, v0}, Lnet/lingala/zip4j/io/outputstream/DeflaterOutputStream;->write([BII)V

    return-void
.end method

.method public write([B)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 36
    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lnet/lingala/zip4j/io/outputstream/DeflaterOutputStream;->write([BII)V

    return-void
.end method

.method public write([BII)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 46
    iget-object v0, p0, Lnet/lingala/zip4j/io/outputstream/DeflaterOutputStream;->deflater:Ljava/util/zip/Deflater;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/zip/Deflater;->setInput([BII)V

    .line 47
    :goto_5
    iget-object p1, p0, Lnet/lingala/zip4j/io/outputstream/DeflaterOutputStream;->deflater:Ljava/util/zip/Deflater;

    invoke-virtual {p1}, Ljava/util/zip/Deflater;->needsInput()Z

    move-result p1

    if-nez p1, :cond_11

    .line 48
    invoke-direct {p0}, Lnet/lingala/zip4j/io/outputstream/DeflaterOutputStream;->deflate()V

    goto :goto_5

    :cond_11
    return-void
.end method
