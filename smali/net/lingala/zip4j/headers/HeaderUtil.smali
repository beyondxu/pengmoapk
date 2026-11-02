###### Class net.lingala.zip4j.headers.HeaderUtil (net.lingala.zip4j.headers.HeaderUtil)
.class public Lnet/lingala/zip4j/headers/HeaderUtil;
.super Ljava/lang/Object;
.source "HeaderUtil.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decodeStringWithCharset([BZLjava/nio/charset/Charset;)Ljava/lang/String;
    .registers 3

    if-eqz p2, :cond_8

    .line 37
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, p0, p2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object p1

    :cond_8
    if-eqz p1, :cond_12

    .line 41
    new-instance p1, Ljava/lang/String;

    sget-object p2, Lnet/lingala/zip4j/util/InternalZipConstants;->CHARSET_UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {p1, p0, p2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object p1

    .line 45
    :cond_12
    :try_start_12
    new-instance p1, Ljava/lang/String;

    const-string p2, "Cp437"

    invoke-direct {p1, p0, p2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_19
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_12 .. :try_end_19} :catch_1a

    return-object p1

    .line 47
    :catch_1a
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, p0}, Ljava/lang/String;-><init>([B)V

    return-object p1
.end method

.method public static getBytesFromString(Ljava/lang/String;Ljava/nio/charset/Charset;)[B
    .registers 2

    if-nez p1, :cond_9

    .line 53
    sget-object p1, Lnet/lingala/zip4j/util/InternalZipConstants;->ZIP4J_DEFAULT_CHARSET:Ljava/nio/charset/Charset;

    invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    return-object p0

    .line 56
    :cond_9
    invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    return-object p0
.end method

.method public static getFileHeader(Lnet/lingala/zip4j/model/ZipModel;Ljava/lang/String;)Lnet/lingala/zip4j/model/FileHeader;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 20
    invoke-static {p0, p1}, Lnet/lingala/zip4j/headers/HeaderUtil;->getFileHeaderWithExactMatch(Lnet/lingala/zip4j/model/ZipModel;Ljava/lang/String;)Lnet/lingala/zip4j/model/FileHeader;

    move-result-object v0

    if-nez v0, :cond_1e

    .line 23
    const-string v0, "\\\\"

    const-string v1, "/"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 24
    invoke-static {p0, p1}, Lnet/lingala/zip4j/headers/HeaderUtil;->getFileHeaderWithExactMatch(Lnet/lingala/zip4j/model/ZipModel;Ljava/lang/String;)Lnet/lingala/zip4j/model/FileHeader;

    move-result-object v2

    if-nez v2, :cond_1d

    .line 27
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 28
    invoke-static {p0, p1}, Lnet/lingala/zip4j/headers/HeaderUtil;->getFileHeaderWithExactMatch(Lnet/lingala/zip4j/model/ZipModel;Ljava/lang/String;)Lnet/lingala/zip4j/model/FileHeader;

    move-result-object p0

    return-object p0

    :cond_1d
    return-object v2

    :cond_1e
    return-object v0
.end method

.method private static getFileHeaderWithExactMatch(Lnet/lingala/zip4j/model/ZipModel;Ljava/lang/String;)Lnet/lingala/zip4j/model/FileHeader;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    if-eqz p0, :cond_8f

    .line 96
    invoke-static {p1}, Lnet/lingala/zip4j/util/Zip4jUtil;->isStringNotNullAndNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7b

    .line 101
    invoke-virtual {p0}, Lnet/lingala/zip4j/model/ZipModel;->getCentralDirectory()Lnet/lingala/zip4j/model/CentralDirectory;

    move-result-object v0

    if-eqz v0, :cond_67

    .line 106
    invoke-virtual {p0}, Lnet/lingala/zip4j/model/ZipModel;->getCentralDirectory()Lnet/lingala/zip4j/model/CentralDirectory;

    move-result-object v0

    invoke-virtual {v0}, Lnet/lingala/zip4j/model/CentralDirectory;->getFileHeaders()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_53

    .line 111
    invoke-virtual {p0}, Lnet/lingala/zip4j/model/ZipModel;->getCentralDirectory()Lnet/lingala/zip4j/model/CentralDirectory;

    move-result-object v0

    invoke-virtual {v0}, Lnet/lingala/zip4j/model/CentralDirectory;->getFileHeaders()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_28

    return-object v1

    .line 115
    :cond_28
    invoke-virtual {p0}, Lnet/lingala/zip4j/model/ZipModel;->getCentralDirectory()Lnet/lingala/zip4j/model/CentralDirectory;

    move-result-object p0

    invoke-virtual {p0}, Lnet/lingala/zip4j/model/CentralDirectory;->getFileHeaders()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_34
    :goto_34
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_52

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/lingala/zip4j/model/FileHeader;

    .line 116
    invoke-virtual {v0}, Lnet/lingala/zip4j/model/FileHeader;->getFileName()Ljava/lang/String;

    move-result-object v2

    .line 117
    invoke-static {v2}, Lnet/lingala/zip4j/util/Zip4jUtil;->isStringNotNullAndNotEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4b

    goto :goto_34

    .line 121
    :cond_4b
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_34

    return-object v0

    :cond_52
    return-object v1

    .line 107
    :cond_53
    new-instance p0, Lnet/lingala/zip4j/exception/ZipException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "file Headers are null, cannot determine file header with exact match for fileName: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 102
    :cond_67
    new-instance p0, Lnet/lingala/zip4j/exception/ZipException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "central directory is null, cannot determine file header with exact match for fileName: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 97
    :cond_7b
    new-instance p0, Lnet/lingala/zip4j/exception/ZipException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "file name is null, cannot determine file header with exact match for fileName: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 92
    :cond_8f
    new-instance p0, Lnet/lingala/zip4j/exception/ZipException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "zip model is null, cannot determine file header with exact match for fileName: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getFileHeadersUnderDirectory(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lnet/lingala/zip4j/model/FileHeader;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lnet/lingala/zip4j/model/FileHeader;",
            ">;"
        }
    .end annotation

    .line 68
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 69
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_9
    :goto_9
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_23

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/lingala/zip4j/model/FileHeader;

    .line 70
    invoke-virtual {v1}, Lnet/lingala/zip4j/model/FileHeader;->getFileName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 71
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_23
    return-object v0
.end method

.method public static getOffsetStartOfCentralDirectory(Lnet/lingala/zip4j/model/ZipModel;)J
    .registers 3

    .line 60
    invoke-virtual {p0}, Lnet/lingala/zip4j/model/ZipModel;->isZip64Format()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 61
    invoke-virtual {p0}, Lnet/lingala/zip4j/model/ZipModel;->getZip64EndOfCentralDirectoryRecord()Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryRecord;

    move-result-object p0

    invoke-virtual {p0}, Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryRecord;->getOffsetStartCentralDirectoryWRTStartDiskNumber()J

    move-result-wide v0

    return-wide v0

    .line 64
    :cond_f
    invoke-virtual {p0}, Lnet/lingala/zip4j/model/ZipModel;->getEndOfCentralDirectoryRecord()Lnet/lingala/zip4j/model/EndOfCentralDirectoryRecord;

    move-result-object p0

    invoke-virtual {p0}, Lnet/lingala/zip4j/model/EndOfCentralDirectoryRecord;->getOffsetOfStartOfCentralDirectory()J

    move-result-wide v0

    return-wide v0
.end method

.method public static getTotalUncompressedSizeOfAllFileHeaders(Ljava/util/List;)J
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lnet/lingala/zip4j/model/FileHeader;",
            ">;)J"
        }
    .end annotation

    .line 79
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const-wide/16 v0, 0x0

    move-wide v2, v0

    :goto_7
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_34

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lnet/lingala/zip4j/model/FileHeader;

    .line 80
    invoke-virtual {v4}, Lnet/lingala/zip4j/model/FileHeader;->getZip64ExtendedInfo()Lnet/lingala/zip4j/model/Zip64ExtendedInfo;

    move-result-object v5

    if-eqz v5, :cond_2e

    .line 81
    invoke-virtual {v4}, Lnet/lingala/zip4j/model/FileHeader;->getZip64ExtendedInfo()Lnet/lingala/zip4j/model/Zip64ExtendedInfo;

    move-result-object v5

    invoke-virtual {v5}, Lnet/lingala/zip4j/model/Zip64ExtendedInfo;->getUncompressedSize()J

    move-result-wide v5

    cmp-long v7, v5, v0

    if-lez v7, :cond_2e

    .line 82
    invoke-virtual {v4}, Lnet/lingala/zip4j/model/FileHeader;->getZip64ExtendedInfo()Lnet/lingala/zip4j/model/Zip64ExtendedInfo;

    move-result-object v4

    invoke-virtual {v4}, Lnet/lingala/zip4j/model/Zip64ExtendedInfo;->getUncompressedSize()J

    move-result-wide v4

    goto :goto_32

    .line 84
    :cond_2e
    invoke-virtual {v4}, Lnet/lingala/zip4j/model/FileHeader;->getUncompressedSize()J

    move-result-wide v4

    :goto_32
    add-long/2addr v2, v4

    goto :goto_7

    :cond_34
    return-wide v2
.end method
