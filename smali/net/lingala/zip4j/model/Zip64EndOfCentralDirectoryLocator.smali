###### Class net.lingala.zip4j.model.Zip64EndOfCentralDirectoryLocator (net.lingala.zip4j.model.Zip64EndOfCentralDirectoryLocator)
.class public Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryLocator;
.super Lnet/lingala/zip4j/model/ZipHeader;
.source "Zip64EndOfCentralDirectoryLocator.java"


# instance fields
.field private numberOfDiskStartOfZip64EndOfCentralDirectoryRecord:I

.field private offsetZip64EndOfCentralDirectoryRecord:J

.field private totalNumberOfDiscs:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 19
    invoke-direct {p0}, Lnet/lingala/zip4j/model/ZipHeader;-><init>()V

    return-void
.end method


# virtual methods
.method public getNumberOfDiskStartOfZip64EndOfCentralDirectoryRecord()I
    .registers 2

    .line 26
    iget v0, p0, Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryLocator;->numberOfDiskStartOfZip64EndOfCentralDirectoryRecord:I

    return v0
.end method

.method public getOffsetZip64EndOfCentralDirectoryRecord()J
    .registers 3

    .line 35
    iget-wide v0, p0, Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryLocator;->offsetZip64EndOfCentralDirectoryRecord:J

    return-wide v0
.end method

.method public getTotalNumberOfDiscs()I
    .registers 2

    .line 43
    iget v0, p0, Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryLocator;->totalNumberOfDiscs:I

    return v0
.end method

.method public setNumberOfDiskStartOfZip64EndOfCentralDirectoryRecord(I)V
    .registers 2

    .line 31
    iput p1, p0, Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryLocator;->numberOfDiskStartOfZip64EndOfCentralDirectoryRecord:I

    return-void
.end method

.method public setOffsetZip64EndOfCentralDirectoryRecord(J)V
    .registers 3

    .line 39
    iput-wide p1, p0, Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryLocator;->offsetZip64EndOfCentralDirectoryRecord:J

    return-void
.end method

.method public setTotalNumberOfDiscs(I)V
    .registers 2

    .line 47
    iput p1, p0, Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryLocator;->totalNumberOfDiscs:I

    return-void
.end method
