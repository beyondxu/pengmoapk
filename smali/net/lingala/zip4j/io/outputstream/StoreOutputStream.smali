###### Class net.lingala.zip4j.io.outputstream.StoreOutputStream (net.lingala.zip4j.io.outputstream.StoreOutputStream)
.class Lnet/lingala/zip4j/io/outputstream/StoreOutputStream;
.super Lnet/lingala/zip4j/io/outputstream/CompressedOutputStream;
.source "StoreOutputStream.java"


# direct methods
.method public constructor <init>(Lnet/lingala/zip4j/io/outputstream/CipherOutputStream;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/lingala/zip4j/io/outputstream/CipherOutputStream<",
            "*>;)V"
        }
    .end annotation

    .line 6
    invoke-direct {p0, p1}, Lnet/lingala/zip4j/io/outputstream/CompressedOutputStream;-><init>(Lnet/lingala/zip4j/io/outputstream/CipherOutputStream;)V

    return-void
.end method
