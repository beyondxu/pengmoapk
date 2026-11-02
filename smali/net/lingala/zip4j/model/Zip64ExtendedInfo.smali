###### Class net.lingala.zip4j.model.Zip64ExtendedInfo (net.lingala.zip4j.model.Zip64ExtendedInfo)
.class public Lnet/lingala/zip4j/model/Zip64ExtendedInfo;
.super Lnet/lingala/zip4j/model/ZipHeader;
.source "Zip64ExtendedInfo.java"


# instance fields
.field private compressedSize:J

.field private diskNumberStart:I

.field private offsetLocalHeader:J

.field private size:I

.field private uncompressedSize:J


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 27
    invoke-direct {p0}, Lnet/lingala/zip4j/model/ZipHeader;-><init>()V

    const-wide/16 v0, -0x1

    .line 28
    iput-wide v0, p0, Lnet/lingala/zip4j/model/Zip64ExtendedInfo;->compressedSize:J

    .line 29
    iput-wide v0, p0, Lnet/lingala/zip4j/model/Zip64ExtendedInfo;->uncompressedSize:J

    .line 30
    iput-wide v0, p0, Lnet/lingala/zip4j/model/Zip64ExtendedInfo;->offsetLocalHeader:J

    const/4 v0, -0x1

    .line 31
    iput v0, p0, Lnet/lingala/zip4j/model/Zip64ExtendedInfo;->diskNumberStart:I

    return-void
.end method


# virtual methods
.method public getCompressedSize()J
    .registers 3

    .line 43
    iget-wide v0, p0, Lnet/lingala/zip4j/model/Zip64ExtendedInfo;->compressedSize:J

    return-wide v0
.end method

.method public getDiskNumberStart()I
    .registers 2

    .line 67
    iget v0, p0, Lnet/lingala/zip4j/model/Zip64ExtendedInfo;->diskNumberStart:I

    return v0
.end method

.method public getOffsetLocalHeader()J
    .registers 3

    .line 59
    iget-wide v0, p0, Lnet/lingala/zip4j/model/Zip64ExtendedInfo;->offsetLocalHeader:J

    return-wide v0
.end method

.method public getSize()I
    .registers 2

    .line 35
    iget v0, p0, Lnet/lingala/zip4j/model/Zip64ExtendedInfo;->size:I

    return v0
.end method

.method public getUncompressedSize()J
    .registers 3

    .line 51
    iget-wide v0, p0, Lnet/lingala/zip4j/model/Zip64ExtendedInfo;->uncompressedSize:J

    return-wide v0
.end method

.method public setCompressedSize(J)V
    .registers 3

    .line 47
    iput-wide p1, p0, Lnet/lingala/zip4j/model/Zip64ExtendedInfo;->compressedSize:J

    return-void
.end method

.method public setDiskNumberStart(I)V
    .registers 2

    .line 71
    iput p1, p0, Lnet/lingala/zip4j/model/Zip64ExtendedInfo;->diskNumberStart:I

    return-void
.end method

.method public setOffsetLocalHeader(J)V
    .registers 3

    .line 63
    iput-wide p1, p0, Lnet/lingala/zip4j/model/Zip64ExtendedInfo;->offsetLocalHeader:J

    return-void
.end method

.method public setSize(I)V
    .registers 2

    .line 39
    iput p1, p0, Lnet/lingala/zip4j/model/Zip64ExtendedInfo;->size:I

    return-void
.end method

.method public setUncompressedSize(J)V
    .registers 3

    .line 55
    iput-wide p1, p0, Lnet/lingala/zip4j/model/Zip64ExtendedInfo;->uncompressedSize:J

    return-void
.end method
