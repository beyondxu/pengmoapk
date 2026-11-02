###### Class net.lingala.zip4j.io.outputstream.NoCipherOutputStream (net.lingala.zip4j.io.outputstream.NoCipherOutputStream)
.class Lnet/lingala/zip4j/io/outputstream/NoCipherOutputStream;
.super Lnet/lingala/zip4j/io/outputstream/CipherOutputStream;
.source "NoCipherOutputStream.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/lingala/zip4j/io/outputstream/NoCipherOutputStream$NoEncrypter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lnet/lingala/zip4j/io/outputstream/CipherOutputStream<",
        "Lnet/lingala/zip4j/io/outputstream/NoCipherOutputStream$NoEncrypter;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lnet/lingala/zip4j/io/outputstream/ZipEntryOutputStream;Lnet/lingala/zip4j/model/ZipParameters;[C)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 13
    invoke-direct {p0, p1, p2, p3, v0}, Lnet/lingala/zip4j/io/outputstream/CipherOutputStream;-><init>(Lnet/lingala/zip4j/io/outputstream/ZipEntryOutputStream;Lnet/lingala/zip4j/model/ZipParameters;[CZ)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic initializeEncrypter(Ljava/io/OutputStream;Lnet/lingala/zip4j/model/ZipParameters;[CZ)Lnet/lingala/zip4j/crypto/Encrypter;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9
    invoke-virtual {p0, p1, p2, p3, p4}, Lnet/lingala/zip4j/io/outputstream/NoCipherOutputStream;->initializeEncrypter(Ljava/io/OutputStream;Lnet/lingala/zip4j/model/ZipParameters;[CZ)Lnet/lingala/zip4j/io/outputstream/NoCipherOutputStream$NoEncrypter;

    move-result-object p1

    return-object p1
.end method

.method protected initializeEncrypter(Ljava/io/OutputStream;Lnet/lingala/zip4j/model/ZipParameters;[CZ)Lnet/lingala/zip4j/io/outputstream/NoCipherOutputStream$NoEncrypter;
    .registers 5

    .line 19
    new-instance p1, Lnet/lingala/zip4j/io/outputstream/NoCipherOutputStream$NoEncrypter;

    invoke-direct {p1}, Lnet/lingala/zip4j/io/outputstream/NoCipherOutputStream$NoEncrypter;-><init>()V

    return-object p1
.end method

###### Class net.lingala.zip4j.io.outputstream.NoCipherOutputStream.NoEncrypter (net.lingala.zip4j.io.outputstream.NoCipherOutputStream$NoEncrypter)
.class Lnet/lingala/zip4j/io/outputstream/NoCipherOutputStream$NoEncrypter;
.super Ljava/lang/Object;
.source "NoCipherOutputStream.java"

# interfaces
.implements Lnet/lingala/zip4j/crypto/Encrypter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/lingala/zip4j/io/outputstream/NoCipherOutputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "NoEncrypter"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public encryptData([B)I
    .registers 4

    const/4 v0, 0x0

    .line 26
    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lnet/lingala/zip4j/io/outputstream/NoCipherOutputStream$NoEncrypter;->encryptData([BII)I

    move-result p1

    return p1
.end method

.method public encryptData([BII)I
    .registers 4

    return p3
.end method
