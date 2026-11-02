###### Class net.lingala.zip4j.model.ZipParameters (net.lingala.zip4j.model.ZipParameters)
.class public Lnet/lingala/zip4j/model/ZipParameters;
.super Ljava/lang/Object;
.source "ZipParameters.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/lingala/zip4j/model/ZipParameters$SymbolicLinkAction;
    }
.end annotation


# instance fields
.field private aesKeyStrength:Lnet/lingala/zip4j/model/enums/AesKeyStrength;

.field private aesVersion:Lnet/lingala/zip4j/model/enums/AesVersion;

.field private compressionLevel:Lnet/lingala/zip4j/model/enums/CompressionLevel;

.field private compressionMethod:Lnet/lingala/zip4j/model/enums/CompressionMethod;

.field private defaultFolderPath:Ljava/lang/String;

.field private encryptFiles:Z

.field private encryptionMethod:Lnet/lingala/zip4j/model/enums/EncryptionMethod;

.field private entryCRC:J

.field private entrySize:J

.field private excludeFileFilter:Lnet/lingala/zip4j/model/ExcludeFileFilter;

.field private fileComment:Ljava/lang/String;

.field private fileNameInZip:Ljava/lang/String;

.field private includeRootFolder:Z

.field private lastModifiedFileTime:J

.field private overrideExistingFilesInZip:Z

.field private readHiddenFiles:Z

.field private readHiddenFolders:Z

.field private rootFolderNameInZip:Ljava/lang/String;

.field private symbolicLinkAction:Lnet/lingala/zip4j/model/ZipParameters$SymbolicLinkAction;

.field private unixMode:Z

.field private writeExtendedLocalFileHeader:Z


# direct methods
.method public constructor <init>()V
    .registers 4

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    sget-object v0, Lnet/lingala/zip4j/model/enums/CompressionMethod;->DEFLATE:Lnet/lingala/zip4j/model/enums/CompressionMethod;

    iput-object v0, p0, Lnet/lingala/zip4j/model/ZipParameters;->compressionMethod:Lnet/lingala/zip4j/model/enums/CompressionMethod;

    .line 49
    sget-object v0, Lnet/lingala/zip4j/model/enums/CompressionLevel;->NORMAL:Lnet/lingala/zip4j/model/enums/CompressionLevel;

    iput-object v0, p0, Lnet/lingala/zip4j/model/ZipParameters;->compressionLevel:Lnet/lingala/zip4j/model/enums/CompressionLevel;

    const/4 v0, 0x0

    .line 50
    iput-boolean v0, p0, Lnet/lingala/zip4j/model/ZipParameters;->encryptFiles:Z

    .line 51
    sget-object v0, Lnet/lingala/zip4j/model/enums/EncryptionMethod;->NONE:Lnet/lingala/zip4j/model/enums/EncryptionMethod;

    iput-object v0, p0, Lnet/lingala/zip4j/model/ZipParameters;->encryptionMethod:Lnet/lingala/zip4j/model/enums/EncryptionMethod;

    const/4 v0, 0x1

    .line 52
    iput-boolean v0, p0, Lnet/lingala/zip4j/model/ZipParameters;->readHiddenFiles:Z

    .line 53
    iput-boolean v0, p0, Lnet/lingala/zip4j/model/ZipParameters;->readHiddenFolders:Z

    .line 54
    sget-object v1, Lnet/lingala/zip4j/model/enums/AesKeyStrength;->KEY_STRENGTH_256:Lnet/lingala/zip4j/model/enums/AesKeyStrength;

    iput-object v1, p0, Lnet/lingala/zip4j/model/ZipParameters;->aesKeyStrength:Lnet/lingala/zip4j/model/enums/AesKeyStrength;

    .line 55
    sget-object v1, Lnet/lingala/zip4j/model/enums/AesVersion;->TWO:Lnet/lingala/zip4j/model/enums/AesVersion;

    iput-object v1, p0, Lnet/lingala/zip4j/model/ZipParameters;->aesVersion:Lnet/lingala/zip4j/model/enums/AesVersion;

    .line 56
    iput-boolean v0, p0, Lnet/lingala/zip4j/model/ZipParameters;->includeRootFolder:Z

    const-wide/16 v1, 0x0

    .line 60
    iput-wide v1, p0, Lnet/lingala/zip4j/model/ZipParameters;->lastModifiedFileTime:J

    const-wide/16 v1, -0x1

    .line 61
    iput-wide v1, p0, Lnet/lingala/zip4j/model/ZipParameters;->entrySize:J

    .line 62
    iput-boolean v0, p0, Lnet/lingala/zip4j/model/ZipParameters;->writeExtendedLocalFileHeader:Z

    .line 63
    iput-boolean v0, p0, Lnet/lingala/zip4j/model/ZipParameters;->overrideExistingFilesInZip:Z

    .line 66
    sget-object v0, Lnet/lingala/zip4j/model/ZipParameters$SymbolicLinkAction;->INCLUDE_LINKED_FILE_ONLY:Lnet/lingala/zip4j/model/ZipParameters$SymbolicLinkAction;

    iput-object v0, p0, Lnet/lingala/zip4j/model/ZipParameters;->symbolicLinkAction:Lnet/lingala/zip4j/model/ZipParameters$SymbolicLinkAction;

    return-void
.end method

.method public constructor <init>(Lnet/lingala/zip4j/model/ZipParameters;)V
    .registers 5

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    sget-object v0, Lnet/lingala/zip4j/model/enums/CompressionMethod;->DEFLATE:Lnet/lingala/zip4j/model/enums/CompressionMethod;

    iput-object v0, p0, Lnet/lingala/zip4j/model/ZipParameters;->compressionMethod:Lnet/lingala/zip4j/model/enums/CompressionMethod;

    .line 49
    sget-object v0, Lnet/lingala/zip4j/model/enums/CompressionLevel;->NORMAL:Lnet/lingala/zip4j/model/enums/CompressionLevel;

    iput-object v0, p0, Lnet/lingala/zip4j/model/ZipParameters;->compressionLevel:Lnet/lingala/zip4j/model/enums/CompressionLevel;

    const/4 v0, 0x0

    .line 50
    iput-boolean v0, p0, Lnet/lingala/zip4j/model/ZipParameters;->encryptFiles:Z

    .line 51
    sget-object v0, Lnet/lingala/zip4j/model/enums/EncryptionMethod;->NONE:Lnet/lingala/zip4j/model/enums/EncryptionMethod;

    iput-object v0, p0, Lnet/lingala/zip4j/model/ZipParameters;->encryptionMethod:Lnet/lingala/zip4j/model/enums/EncryptionMethod;

    const/4 v0, 0x1

    .line 52
    iput-boolean v0, p0, Lnet/lingala/zip4j/model/ZipParameters;->readHiddenFiles:Z

    .line 53
    iput-boolean v0, p0, Lnet/lingala/zip4j/model/ZipParameters;->readHiddenFolders:Z

    .line 54
    sget-object v1, Lnet/lingala/zip4j/model/enums/AesKeyStrength;->KEY_STRENGTH_256:Lnet/lingala/zip4j/model/enums/AesKeyStrength;

    iput-object v1, p0, Lnet/lingala/zip4j/model/ZipParameters;->aesKeyStrength:Lnet/lingala/zip4j/model/enums/AesKeyStrength;

    .line 55
    sget-object v1, Lnet/lingala/zip4j/model/enums/AesVersion;->TWO:Lnet/lingala/zip4j/model/enums/AesVersion;

    iput-object v1, p0, Lnet/lingala/zip4j/model/ZipParameters;->aesVersion:Lnet/lingala/zip4j/model/enums/AesVersion;

    .line 56
    iput-boolean v0, p0, Lnet/lingala/zip4j/model/ZipParameters;->includeRootFolder:Z

    const-wide/16 v1, 0x0

    .line 60
    iput-wide v1, p0, Lnet/lingala/zip4j/model/ZipParameters;->lastModifiedFileTime:J

    const-wide/16 v1, -0x1

    .line 61
    iput-wide v1, p0, Lnet/lingala/zip4j/model/ZipParameters;->entrySize:J

    .line 62
    iput-boolean v0, p0, Lnet/lingala/zip4j/model/ZipParameters;->writeExtendedLocalFileHeader:Z

    .line 63
    iput-boolean v0, p0, Lnet/lingala/zip4j/model/ZipParameters;->overrideExistingFilesInZip:Z

    .line 66
    sget-object v0, Lnet/lingala/zip4j/model/ZipParameters$SymbolicLinkAction;->INCLUDE_LINKED_FILE_ONLY:Lnet/lingala/zip4j/model/ZipParameters$SymbolicLinkAction;

    iput-object v0, p0, Lnet/lingala/zip4j/model/ZipParameters;->symbolicLinkAction:Lnet/lingala/zip4j/model/ZipParameters$SymbolicLinkAction;

    .line 85
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipParameters;->getCompressionMethod()Lnet/lingala/zip4j/model/enums/CompressionMethod;

    move-result-object v0

    iput-object v0, p0, Lnet/lingala/zip4j/model/ZipParameters;->compressionMethod:Lnet/lingala/zip4j/model/enums/CompressionMethod;

    .line 86
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipParameters;->getCompressionLevel()Lnet/lingala/zip4j/model/enums/CompressionLevel;

    move-result-object v0

    iput-object v0, p0, Lnet/lingala/zip4j/model/ZipParameters;->compressionLevel:Lnet/lingala/zip4j/model/enums/CompressionLevel;

    .line 87
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipParameters;->isEncryptFiles()Z

    move-result v0

    iput-boolean v0, p0, Lnet/lingala/zip4j/model/ZipParameters;->encryptFiles:Z

    .line 88
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipParameters;->getEncryptionMethod()Lnet/lingala/zip4j/model/enums/EncryptionMethod;

    move-result-object v0

    iput-object v0, p0, Lnet/lingala/zip4j/model/ZipParameters;->encryptionMethod:Lnet/lingala/zip4j/model/enums/EncryptionMethod;

    .line 89
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipParameters;->isReadHiddenFiles()Z

    move-result v0

    iput-boolean v0, p0, Lnet/lingala/zip4j/model/ZipParameters;->readHiddenFiles:Z

    .line 90
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipParameters;->isReadHiddenFolders()Z

    move-result v0

    iput-boolean v0, p0, Lnet/lingala/zip4j/model/ZipParameters;->readHiddenFolders:Z

    .line 91
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipParameters;->getAesKeyStrength()Lnet/lingala/zip4j/model/enums/AesKeyStrength;

    move-result-object v0

    iput-object v0, p0, Lnet/lingala/zip4j/model/ZipParameters;->aesKeyStrength:Lnet/lingala/zip4j/model/enums/AesKeyStrength;

    .line 92
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipParameters;->getAesVersion()Lnet/lingala/zip4j/model/enums/AesVersion;

    move-result-object v0

    iput-object v0, p0, Lnet/lingala/zip4j/model/ZipParameters;->aesVersion:Lnet/lingala/zip4j/model/enums/AesVersion;

    .line 93
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipParameters;->isIncludeRootFolder()Z

    move-result v0

    iput-boolean v0, p0, Lnet/lingala/zip4j/model/ZipParameters;->includeRootFolder:Z

    .line 94
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipParameters;->getEntryCRC()J

    move-result-wide v0

    iput-wide v0, p0, Lnet/lingala/zip4j/model/ZipParameters;->entryCRC:J

    .line 95
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipParameters;->getDefaultFolderPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/lingala/zip4j/model/ZipParameters;->defaultFolderPath:Ljava/lang/String;

    .line 96
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipParameters;->getFileNameInZip()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/lingala/zip4j/model/ZipParameters;->fileNameInZip:Ljava/lang/String;

    .line 97
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipParameters;->getLastModifiedFileTime()J

    move-result-wide v0

    iput-wide v0, p0, Lnet/lingala/zip4j/model/ZipParameters;->lastModifiedFileTime:J

    .line 98
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipParameters;->getEntrySize()J

    move-result-wide v0

    iput-wide v0, p0, Lnet/lingala/zip4j/model/ZipParameters;->entrySize:J

    .line 99
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipParameters;->isWriteExtendedLocalFileHeader()Z

    move-result v0

    iput-boolean v0, p0, Lnet/lingala/zip4j/model/ZipParameters;->writeExtendedLocalFileHeader:Z

    .line 100
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipParameters;->isOverrideExistingFilesInZip()Z

    move-result v0

    iput-boolean v0, p0, Lnet/lingala/zip4j/model/ZipParameters;->overrideExistingFilesInZip:Z

    .line 101
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipParameters;->getRootFolderNameInZip()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/lingala/zip4j/model/ZipParameters;->rootFolderNameInZip:Ljava/lang/String;

    .line 102
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipParameters;->getFileComment()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/lingala/zip4j/model/ZipParameters;->fileComment:Ljava/lang/String;

    .line 103
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipParameters;->getSymbolicLinkAction()Lnet/lingala/zip4j/model/ZipParameters$SymbolicLinkAction;

    move-result-object v0

    iput-object v0, p0, Lnet/lingala/zip4j/model/ZipParameters;->symbolicLinkAction:Lnet/lingala/zip4j/model/ZipParameters$SymbolicLinkAction;

    .line 104
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipParameters;->getExcludeFileFilter()Lnet/lingala/zip4j/model/ExcludeFileFilter;

    move-result-object v0

    iput-object v0, p0, Lnet/lingala/zip4j/model/ZipParameters;->excludeFileFilter:Lnet/lingala/zip4j/model/ExcludeFileFilter;

    .line 105
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipParameters;->isUnixMode()Z

    move-result p1

    iput-boolean p1, p0, Lnet/lingala/zip4j/model/ZipParameters;->unixMode:Z

    return-void
.end method


# virtual methods
.method public getAesKeyStrength()Lnet/lingala/zip4j/model/enums/AesKeyStrength;
    .registers 2

    .line 212
    iget-object v0, p0, Lnet/lingala/zip4j/model/ZipParameters;->aesKeyStrength:Lnet/lingala/zip4j/model/enums/AesKeyStrength;

    return-object v0
.end method

.method public getAesVersion()Lnet/lingala/zip4j/model/enums/AesVersion;
    .registers 2

    .line 228
    iget-object v0, p0, Lnet/lingala/zip4j/model/ZipParameters;->aesVersion:Lnet/lingala/zip4j/model/enums/AesVersion;

    return-object v0
.end method

.method public getCompressionLevel()Lnet/lingala/zip4j/model/enums/CompressionLevel;
    .registers 2

    .line 161
    iget-object v0, p0, Lnet/lingala/zip4j/model/ZipParameters;->compressionLevel:Lnet/lingala/zip4j/model/enums/CompressionLevel;

    return-object v0
.end method

.method public getCompressionMethod()Lnet/lingala/zip4j/model/enums/CompressionMethod;
    .registers 2

    .line 113
    iget-object v0, p0, Lnet/lingala/zip4j/model/ZipParameters;->compressionMethod:Lnet/lingala/zip4j/model/enums/CompressionMethod;

    return-object v0
.end method

.method public getDefaultFolderPath()Ljava/lang/String;
    .registers 2

    .line 264
    iget-object v0, p0, Lnet/lingala/zip4j/model/ZipParameters;->defaultFolderPath:Ljava/lang/String;

    return-object v0
.end method

.method public getEncryptionMethod()Lnet/lingala/zip4j/model/enums/EncryptionMethod;
    .registers 2

    .line 145
    iget-object v0, p0, Lnet/lingala/zip4j/model/ZipParameters;->encryptionMethod:Lnet/lingala/zip4j/model/enums/EncryptionMethod;

    return-object v0
.end method

.method public getEntryCRC()J
    .registers 3

    .line 256
    iget-wide v0, p0, Lnet/lingala/zip4j/model/ZipParameters;->entryCRC:J

    return-wide v0
.end method

.method public getEntrySize()J
    .registers 3

    .line 311
    iget-wide v0, p0, Lnet/lingala/zip4j/model/ZipParameters;->entrySize:J

    return-wide v0
.end method

.method public getExcludeFileFilter()Lnet/lingala/zip4j/model/ExcludeFileFilter;
    .registers 2

    .line 390
    iget-object v0, p0, Lnet/lingala/zip4j/model/ZipParameters;->excludeFileFilter:Lnet/lingala/zip4j/model/ExcludeFileFilter;

    return-object v0
.end method

.method public getFileComment()Ljava/lang/String;
    .registers 2

    .line 358
    iget-object v0, p0, Lnet/lingala/zip4j/model/ZipParameters;->fileComment:Ljava/lang/String;

    return-object v0
.end method

.method public getFileNameInZip()Ljava/lang/String;
    .registers 2

    .line 272
    iget-object v0, p0, Lnet/lingala/zip4j/model/ZipParameters;->fileNameInZip:Ljava/lang/String;

    return-object v0
.end method

.method public getLastModifiedFileTime()J
    .registers 3

    .line 293
    iget-wide v0, p0, Lnet/lingala/zip4j/model/ZipParameters;->lastModifiedFileTime:J

    return-wide v0
.end method

.method public getRootFolderNameInZip()Ljava/lang/String;
    .registers 2

    .line 339
    iget-object v0, p0, Lnet/lingala/zip4j/model/ZipParameters;->rootFolderNameInZip:Ljava/lang/String;

    return-object v0
.end method

.method public getSymbolicLinkAction()Lnet/lingala/zip4j/model/ZipParameters$SymbolicLinkAction;
    .registers 2

    .line 374
    iget-object v0, p0, Lnet/lingala/zip4j/model/ZipParameters;->symbolicLinkAction:Lnet/lingala/zip4j/model/ZipParameters$SymbolicLinkAction;

    return-object v0
.end method

.method public isEncryptFiles()Z
    .registers 2

    .line 129
    iget-boolean v0, p0, Lnet/lingala/zip4j/model/ZipParameters;->encryptFiles:Z

    return v0
.end method

.method public isIncludeRootFolder()Z
    .registers 2

    .line 244
    iget-boolean v0, p0, Lnet/lingala/zip4j/model/ZipParameters;->includeRootFolder:Z

    return v0
.end method

.method public isOverrideExistingFilesInZip()Z
    .registers 2

    .line 327
    iget-boolean v0, p0, Lnet/lingala/zip4j/model/ZipParameters;->overrideExistingFilesInZip:Z

    return v0
.end method

.method public isReadHiddenFiles()Z
    .registers 2

    .line 178
    iget-boolean v0, p0, Lnet/lingala/zip4j/model/ZipParameters;->readHiddenFiles:Z

    return v0
.end method

.method public isReadHiddenFolders()Z
    .registers 2

    .line 196
    iget-boolean v0, p0, Lnet/lingala/zip4j/model/ZipParameters;->readHiddenFolders:Z

    return v0
.end method

.method public isUnixMode()Z
    .registers 2

    .line 406
    iget-boolean v0, p0, Lnet/lingala/zip4j/model/ZipParameters;->unixMode:Z

    return v0
.end method

.method public isWriteExtendedLocalFileHeader()Z
    .registers 2

    .line 319
    iget-boolean v0, p0, Lnet/lingala/zip4j/model/ZipParameters;->writeExtendedLocalFileHeader:Z

    return v0
.end method

.method public setAesKeyStrength(Lnet/lingala/zip4j/model/enums/AesKeyStrength;)V
    .registers 2

    .line 220
    iput-object p1, p0, Lnet/lingala/zip4j/model/ZipParameters;->aesKeyStrength:Lnet/lingala/zip4j/model/enums/AesKeyStrength;

    return-void
.end method

.method public setAesVersion(Lnet/lingala/zip4j/model/enums/AesVersion;)V
    .registers 2

    .line 236
    iput-object p1, p0, Lnet/lingala/zip4j/model/ZipParameters;->aesVersion:Lnet/lingala/zip4j/model/enums/AesVersion;

    return-void
.end method

.method public setCompressionLevel(Lnet/lingala/zip4j/model/enums/CompressionLevel;)V
    .registers 2

    .line 169
    iput-object p1, p0, Lnet/lingala/zip4j/model/ZipParameters;->compressionLevel:Lnet/lingala/zip4j/model/enums/CompressionLevel;

    return-void
.end method

.method public setCompressionMethod(Lnet/lingala/zip4j/model/enums/CompressionMethod;)V
    .registers 2

    .line 121
    iput-object p1, p0, Lnet/lingala/zip4j/model/ZipParameters;->compressionMethod:Lnet/lingala/zip4j/model/enums/CompressionMethod;

    return-void
.end method

.method public setDefaultFolderPath(Ljava/lang/String;)V
    .registers 2

    .line 268
    iput-object p1, p0, Lnet/lingala/zip4j/model/ZipParameters;->defaultFolderPath:Ljava/lang/String;

    return-void
.end method

.method public setEncryptFiles(Z)V
    .registers 2

    .line 137
    iput-boolean p1, p0, Lnet/lingala/zip4j/model/ZipParameters;->encryptFiles:Z

    return-void
.end method

.method public setEncryptionMethod(Lnet/lingala/zip4j/model/enums/EncryptionMethod;)V
    .registers 2

    .line 153
    iput-object p1, p0, Lnet/lingala/zip4j/model/ZipParameters;->encryptionMethod:Lnet/lingala/zip4j/model/enums/EncryptionMethod;

    return-void
.end method

.method public setEntryCRC(J)V
    .registers 3

    .line 260
    iput-wide p1, p0, Lnet/lingala/zip4j/model/ZipParameters;->entryCRC:J

    return-void
.end method

.method public setEntrySize(J)V
    .registers 3

    .line 315
    iput-wide p1, p0, Lnet/lingala/zip4j/model/ZipParameters;->entrySize:J

    return-void
.end method

.method public setExcludeFileFilter(Lnet/lingala/zip4j/model/ExcludeFileFilter;)V
    .registers 2

    .line 398
    iput-object p1, p0, Lnet/lingala/zip4j/model/ZipParameters;->excludeFileFilter:Lnet/lingala/zip4j/model/ExcludeFileFilter;

    return-void
.end method

.method public setFileComment(Ljava/lang/String;)V
    .registers 2

    .line 366
    iput-object p1, p0, Lnet/lingala/zip4j/model/ZipParameters;->fileComment:Ljava/lang/String;

    return-void
.end method

.method public setFileNameInZip(Ljava/lang/String;)V
    .registers 2

    .line 285
    iput-object p1, p0, Lnet/lingala/zip4j/model/ZipParameters;->fileNameInZip:Ljava/lang/String;

    return-void
.end method

.method public setIncludeRootFolder(Z)V
    .registers 2

    .line 252
    iput-boolean p1, p0, Lnet/lingala/zip4j/model/ZipParameters;->includeRootFolder:Z

    return-void
.end method

.method public setLastModifiedFileTime(J)V
    .registers 6

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gez v2, :cond_9

    .line 303
    iput-wide v0, p0, Lnet/lingala/zip4j/model/ZipParameters;->lastModifiedFileTime:J

    return-void

    .line 307
    :cond_9
    iput-wide p1, p0, Lnet/lingala/zip4j/model/ZipParameters;->lastModifiedFileTime:J

    return-void
.end method

.method public setOverrideExistingFilesInZip(Z)V
    .registers 2

    .line 335
    iput-boolean p1, p0, Lnet/lingala/zip4j/model/ZipParameters;->overrideExistingFilesInZip:Z

    return-void
.end method

.method public setReadHiddenFiles(Z)V
    .registers 2

    .line 187
    iput-boolean p1, p0, Lnet/lingala/zip4j/model/ZipParameters;->readHiddenFiles:Z

    return-void
.end method

.method public setReadHiddenFolders(Z)V
    .registers 2

    .line 204
    iput-boolean p1, p0, Lnet/lingala/zip4j/model/ZipParameters;->readHiddenFolders:Z

    return-void
.end method

.method public setRootFolderNameInZip(Ljava/lang/String;)V
    .registers 2

    .line 350
    iput-object p1, p0, Lnet/lingala/zip4j/model/ZipParameters;->rootFolderNameInZip:Ljava/lang/String;

    return-void
.end method

.method public setSymbolicLinkAction(Lnet/lingala/zip4j/model/ZipParameters$SymbolicLinkAction;)V
    .registers 2

    .line 382
    iput-object p1, p0, Lnet/lingala/zip4j/model/ZipParameters;->symbolicLinkAction:Lnet/lingala/zip4j/model/ZipParameters$SymbolicLinkAction;

    return-void
.end method

.method public setUnixMode(Z)V
    .registers 2

    .line 414
    iput-boolean p1, p0, Lnet/lingala/zip4j/model/ZipParameters;->unixMode:Z

    return-void
.end method

.method public setWriteExtendedLocalFileHeader(Z)V
    .registers 2

    .line 323
    iput-boolean p1, p0, Lnet/lingala/zip4j/model/ZipParameters;->writeExtendedLocalFileHeader:Z

    return-void
.end method

###### Class net.lingala.zip4j.model.ZipParameters.SymbolicLinkAction (net.lingala.zip4j.model.ZipParameters$SymbolicLinkAction)
.class public final enum Lnet/lingala/zip4j/model/ZipParameters$SymbolicLinkAction;
.super Ljava/lang/Enum;
.source "ZipParameters.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/lingala/zip4j/model/ZipParameters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SymbolicLinkAction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/lingala/zip4j/model/ZipParameters$SymbolicLinkAction;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/lingala/zip4j/model/ZipParameters$SymbolicLinkAction;

.field public static final enum INCLUDE_LINKED_FILE_ONLY:Lnet/lingala/zip4j/model/ZipParameters$SymbolicLinkAction;

.field public static final enum INCLUDE_LINK_AND_LINKED_FILE:Lnet/lingala/zip4j/model/ZipParameters$SymbolicLinkAction;

.field public static final enum INCLUDE_LINK_ONLY:Lnet/lingala/zip4j/model/ZipParameters$SymbolicLinkAction;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .line 37
    new-instance v0, Lnet/lingala/zip4j/model/ZipParameters$SymbolicLinkAction;

    const-string v1, "INCLUDE_LINK_ONLY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lnet/lingala/zip4j/model/ZipParameters$SymbolicLinkAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/lingala/zip4j/model/ZipParameters$SymbolicLinkAction;->INCLUDE_LINK_ONLY:Lnet/lingala/zip4j/model/ZipParameters$SymbolicLinkAction;

    .line 41
    new-instance v1, Lnet/lingala/zip4j/model/ZipParameters$SymbolicLinkAction;

    const-string v3, "INCLUDE_LINKED_FILE_ONLY"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lnet/lingala/zip4j/model/ZipParameters$SymbolicLinkAction;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lnet/lingala/zip4j/model/ZipParameters$SymbolicLinkAction;->INCLUDE_LINKED_FILE_ONLY:Lnet/lingala/zip4j/model/ZipParameters$SymbolicLinkAction;

    .line 45
    new-instance v3, Lnet/lingala/zip4j/model/ZipParameters$SymbolicLinkAction;

    const-string v5, "INCLUDE_LINK_AND_LINKED_FILE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lnet/lingala/zip4j/model/ZipParameters$SymbolicLinkAction;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lnet/lingala/zip4j/model/ZipParameters$SymbolicLinkAction;->INCLUDE_LINK_AND_LINKED_FILE:Lnet/lingala/zip4j/model/ZipParameters$SymbolicLinkAction;

    const/4 v5, 0x3

    .line 33
    new-array v5, v5, [Lnet/lingala/zip4j/model/ZipParameters$SymbolicLinkAction;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lnet/lingala/zip4j/model/ZipParameters$SymbolicLinkAction;->$VALUES:[Lnet/lingala/zip4j/model/ZipParameters$SymbolicLinkAction;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 33
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/lingala/zip4j/model/ZipParameters$SymbolicLinkAction;
    .registers 2

    .line 33
    const-class v0, Lnet/lingala/zip4j/model/ZipParameters$SymbolicLinkAction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/lingala/zip4j/model/ZipParameters$SymbolicLinkAction;

    return-object p0
.end method

.method public static values()[Lnet/lingala/zip4j/model/ZipParameters$SymbolicLinkAction;
    .registers 1

    .line 33
    sget-object v0, Lnet/lingala/zip4j/model/ZipParameters$SymbolicLinkAction;->$VALUES:[Lnet/lingala/zip4j/model/ZipParameters$SymbolicLinkAction;

    invoke-virtual {v0}, [Lnet/lingala/zip4j/model/ZipParameters$SymbolicLinkAction;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/lingala/zip4j/model/ZipParameters$SymbolicLinkAction;

    return-object v0
.end method
