###### Class net.lingala.zip4j.io.inputstream.NoCipherInputStream (net.lingala.zip4j.io.inputstream.NoCipherInputStream)
.class Lnet/lingala/zip4j/io/inputstream/NoCipherInputStream;
.super Lnet/lingala/zip4j/io/inputstream/CipherInputStream;
.source "NoCipherInputStream.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/lingala/zip4j/io/inputstream/NoCipherInputStream$NoDecrypter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lnet/lingala/zip4j/io/inputstream/CipherInputStream<",
        "Lnet/lingala/zip4j/io/inputstream/NoCipherInputStream$NoDecrypter;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lnet/lingala/zip4j/io/inputstream/ZipEntryInputStream;Lnet/lingala/zip4j/model/LocalFileHeader;[CI)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    .line 12
    invoke-direct/range {v0 .. v5}, Lnet/lingala/zip4j/io/inputstream/CipherInputStream;-><init>(Lnet/lingala/zip4j/io/inputstream/ZipEntryInputStream;Lnet/lingala/zip4j/model/LocalFileHeader;[CIZ)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic initializeDecrypter(Lnet/lingala/zip4j/model/LocalFileHeader;[CZ)Lnet/lingala/zip4j/crypto/Decrypter;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 8
    invoke-virtual {p0, p1, p2, p3}, Lnet/lingala/zip4j/io/inputstream/NoCipherInputStream;->initializeDecrypter(Lnet/lingala/zip4j/model/LocalFileHeader;[CZ)Lnet/lingala/zip4j/io/inputstream/NoCipherInputStream$NoDecrypter;

    move-result-object p1

    return-object p1
.end method

.method protected initializeDecrypter(Lnet/lingala/zip4j/model/LocalFileHeader;[CZ)Lnet/lingala/zip4j/io/inputstream/NoCipherInputStream$NoDecrypter;
    .registers 4

    .line 17
    new-instance p1, Lnet/lingala/zip4j/io/inputstream/NoCipherInputStream$NoDecrypter;

    invoke-direct {p1}, Lnet/lingala/zip4j/io/inputstream/NoCipherInputStream$NoDecrypter;-><init>()V

    return-object p1
.end method

###### Class net.lingala.zip4j.io.inputstream.NoCipherInputStream.NoDecrypter (net.lingala.zip4j.io.inputstream.NoCipherInputStream$NoDecrypter)
.class Lnet/lingala/zip4j/io/inputstream/NoCipherInputStream$NoDecrypter;
.super Ljava/lang/Object;
.source "NoCipherInputStream.java"

# interfaces
.implements Lnet/lingala/zip4j/crypto/Decrypter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/lingala/zip4j/io/inputstream/NoCipherInputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "NoDecrypter"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public decryptData([BII)I
    .registers 4

    return p3
.end method
