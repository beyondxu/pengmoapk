###### Class net.lingala.zip4j.model.AESExtraDataRecord (net.lingala.zip4j.model.AESExtraDataRecord)
.class public Lnet/lingala/zip4j/model/AESExtraDataRecord;
.super Lnet/lingala/zip4j/model/ZipHeader;
.source "AESExtraDataRecord.java"


# instance fields
.field private aesKeyStrength:Lnet/lingala/zip4j/model/enums/AesKeyStrength;

.field private aesVersion:Lnet/lingala/zip4j/model/enums/AesVersion;

.field private compressionMethod:Lnet/lingala/zip4j/model/enums/CompressionMethod;

.field private dataSize:I

.field private vendorID:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 32
    invoke-direct {p0}, Lnet/lingala/zip4j/model/ZipHeader;-><init>()V

    .line 33
    sget-object v0, Lnet/lingala/zip4j/headers/HeaderSignature;->AES_EXTRA_DATA_RECORD:Lnet/lingala/zip4j/headers/HeaderSignature;

    invoke-virtual {p0, v0}, Lnet/lingala/zip4j/model/AESExtraDataRecord;->setSignature(Lnet/lingala/zip4j/headers/HeaderSignature;)V

    const/4 v0, 0x7

    .line 34
    iput v0, p0, Lnet/lingala/zip4j/model/AESExtraDataRecord;->dataSize:I

    .line 35
    sget-object v0, Lnet/lingala/zip4j/model/enums/AesVersion;->TWO:Lnet/lingala/zip4j/model/enums/AesVersion;

    iput-object v0, p0, Lnet/lingala/zip4j/model/AESExtraDataRecord;->aesVersion:Lnet/lingala/zip4j/model/enums/AesVersion;

    .line 36
    const-string v0, "AE"

    iput-object v0, p0, Lnet/lingala/zip4j/model/AESExtraDataRecord;->vendorID:Ljava/lang/String;

    .line 37
    sget-object v0, Lnet/lingala/zip4j/model/enums/AesKeyStrength;->KEY_STRENGTH_256:Lnet/lingala/zip4j/model/enums/AesKeyStrength;

    iput-object v0, p0, Lnet/lingala/zip4j/model/AESExtraDataRecord;->aesKeyStrength:Lnet/lingala/zip4j/model/enums/AesKeyStrength;

    .line 38
    sget-object v0, Lnet/lingala/zip4j/model/enums/CompressionMethod;->DEFLATE:Lnet/lingala/zip4j/model/enums/CompressionMethod;

    iput-object v0, p0, Lnet/lingala/zip4j/model/AESExtraDataRecord;->compressionMethod:Lnet/lingala/zip4j/model/enums/CompressionMethod;

    return-void
.end method


# virtual methods
.method public getAesKeyStrength()Lnet/lingala/zip4j/model/enums/AesKeyStrength;
    .registers 2

    .line 66
    iget-object v0, p0, Lnet/lingala/zip4j/model/AESExtraDataRecord;->aesKeyStrength:Lnet/lingala/zip4j/model/enums/AesKeyStrength;

    return-object v0
.end method

.method public getAesVersion()Lnet/lingala/zip4j/model/enums/AesVersion;
    .registers 2

    .line 50
    iget-object v0, p0, Lnet/lingala/zip4j/model/AESExtraDataRecord;->aesVersion:Lnet/lingala/zip4j/model/enums/AesVersion;

    return-object v0
.end method

.method public getCompressionMethod()Lnet/lingala/zip4j/model/enums/CompressionMethod;
    .registers 2

    .line 74
    iget-object v0, p0, Lnet/lingala/zip4j/model/AESExtraDataRecord;->compressionMethod:Lnet/lingala/zip4j/model/enums/CompressionMethod;

    return-object v0
.end method

.method public getDataSize()I
    .registers 2

    .line 42
    iget v0, p0, Lnet/lingala/zip4j/model/AESExtraDataRecord;->dataSize:I

    return v0
.end method

.method public getVendorID()Ljava/lang/String;
    .registers 2

    .line 58
    iget-object v0, p0, Lnet/lingala/zip4j/model/AESExtraDataRecord;->vendorID:Ljava/lang/String;

    return-object v0
.end method

.method public setAesKeyStrength(Lnet/lingala/zip4j/model/enums/AesKeyStrength;)V
    .registers 2

    .line 70
    iput-object p1, p0, Lnet/lingala/zip4j/model/AESExtraDataRecord;->aesKeyStrength:Lnet/lingala/zip4j/model/enums/AesKeyStrength;

    return-void
.end method

.method public setAesVersion(Lnet/lingala/zip4j/model/enums/AesVersion;)V
    .registers 2

    .line 54
    iput-object p1, p0, Lnet/lingala/zip4j/model/AESExtraDataRecord;->aesVersion:Lnet/lingala/zip4j/model/enums/AesVersion;

    return-void
.end method

.method public setCompressionMethod(Lnet/lingala/zip4j/model/enums/CompressionMethod;)V
    .registers 2

    .line 78
    iput-object p1, p0, Lnet/lingala/zip4j/model/AESExtraDataRecord;->compressionMethod:Lnet/lingala/zip4j/model/enums/CompressionMethod;

    return-void
.end method

.method public setDataSize(I)V
    .registers 2

    .line 46
    iput p1, p0, Lnet/lingala/zip4j/model/AESExtraDataRecord;->dataSize:I

    return-void
.end method

.method public setVendorID(Ljava/lang/String;)V
    .registers 2

    .line 62
    iput-object p1, p0, Lnet/lingala/zip4j/model/AESExtraDataRecord;->vendorID:Ljava/lang/String;

    return-void
.end method
