###### Class com.facebook.soloader.BackupSoSource (com.facebook.soloader.BackupSoSource)
.class public Lcom/facebook/soloader/BackupSoSource;
.super Lcom/facebook/soloader/ExtractFromZipSoSource;
.source "BackupSoSource.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/soloader/BackupSoSource$ApkUnpacker;
    }
.end annotation


# static fields
.field private static final APK_SO_SOURCE_SIGNATURE_VERSION:B = 0x2t

.field private static final LIBS_DIR_DOESNT_EXIST:B = 0x1t

.field private static final LIBS_DIR_DONT_CARE:B = 0x0t

.field private static final LIBS_DIR_SNAPSHOT:B = 0x2t

.field public static final PREFER_ANDROID_LIBS_DIRECTORY:I = 0x1

.field private static final TAG:Ljava/lang/String; = "BackupSoSource"


# instance fields
.field private final mFlags:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;I)V
    .registers 6

    .line 52
    const-string v0, "^lib/([^/]+)/([^/]+\\.so)$"

    invoke-direct {p0, p1, p3, p2, v0}, Lcom/facebook/soloader/ExtractFromZipSoSource;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;Ljava/lang/String;)V

    .line 59
    iput p4, p0, Lcom/facebook/soloader/BackupSoSource;->mFlags:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;I)V
    .registers 6

    .line 48
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/facebook/soloader/BackupSoSource;-><init>(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$000(Lcom/facebook/soloader/BackupSoSource;)I
    .registers 1

    .line 30
    iget p0, p0, Lcom/facebook/soloader/BackupSoSource;->mFlags:I

    return p0
.end method


# virtual methods
.method protected getDepsBlock()[B
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 184
    iget-object v0, p0, Lcom/facebook/soloader/BackupSoSource;->mZipFileName:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    move-result-object v0

    .line 185
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    const/4 v2, 0x2

    .line 187
    :try_start_b
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeByte(B)V

    .line 188
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 189
    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    .line 190
    iget-object v0, p0, Lcom/facebook/soloader/BackupSoSource;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/facebook/soloader/SysUtil;->getAppVersionCode(Landroid/content/Context;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 192
    iget v0, p0, Lcom/facebook/soloader/BackupSoSource;->mFlags:I

    const/4 v3, 0x1

    and-int/2addr v0, v3

    if-nez v0, :cond_37

    const/4 v0, 0x0

    .line 193
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 194
    invoke-virtual {v1}, Landroid/os/Parcel;->marshall()[B

    move-result-object v0
    :try_end_33
    .catchall {:try_start_b .. :try_end_33} :catchall_7f

    .line 214
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    return-object v0

    .line 197
    :cond_37
    :try_start_37
    iget-object v0, p0, Lcom/facebook/soloader/BackupSoSource;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    if-nez v0, :cond_4c

    .line 199
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeByte(B)V

    .line 200
    invoke-virtual {v1}, Landroid/os/Parcel;->marshall()[B

    move-result-object v0
    :try_end_48
    .catchall {:try_start_37 .. :try_end_48} :catchall_7f

    .line 214
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    return-object v0

    .line 203
    :cond_4c
    :try_start_4c
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    move-result-object v0

    .line 204
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_66

    .line 205
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeByte(B)V

    .line 206
    invoke-virtual {v1}, Landroid/os/Parcel;->marshall()[B

    move-result-object v0
    :try_end_62
    .catchall {:try_start_4c .. :try_end_62} :catchall_7f

    .line 214
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    return-object v0

    .line 209
    :cond_66
    :try_start_66
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeByte(B)V

    .line 210
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 211
    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 212
    invoke-virtual {v1}, Landroid/os/Parcel;->marshall()[B

    move-result-object v0
    :try_end_7b
    .catchall {:try_start_66 .. :try_end_7b} :catchall_7f

    .line 214
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    return-object v0

    :catchall_7f
    move-exception v0

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 215
    throw v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 64
    const-string v0, "BackupSoSource"

    return-object v0
.end method

.method public hasZippedLibs()Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 68
    new-instance v0, Lcom/facebook/soloader/BackupSoSource$ApkUnpacker;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p0, v1}, Lcom/facebook/soloader/BackupSoSource$ApkUnpacker;-><init>(Lcom/facebook/soloader/BackupSoSource;Lcom/facebook/soloader/ExtractFromZipSoSource;Z)V

    .line 69
    :try_start_6
    invoke-virtual {v0}, Lcom/facebook/soloader/BackupSoSource$ApkUnpacker;->computeDsosFromZip()[Lcom/facebook/soloader/ExtractFromZipSoSource$ZipDso;

    move-result-object v2

    array-length v2, v2
    :try_end_b
    .catchall {:try_start_6 .. :try_end_b} :catchall_12

    if-eqz v2, :cond_e

    const/4 v1, 0x1

    .line 70
    :cond_e
    invoke-virtual {v0}, Lcom/facebook/soloader/BackupSoSource$ApkUnpacker;->close()V

    return v1

    :catchall_12
    move-exception v1

    .line 68
    :try_start_13
    invoke-virtual {v0}, Lcom/facebook/soloader/BackupSoSource$ApkUnpacker;->close()V
    :try_end_16
    .catchall {:try_start_13 .. :try_end_16} :catchall_17

    goto :goto_1b

    :catchall_17
    move-exception v0

    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1b
    throw v1
.end method

.method protected makeUnpacker(Z)Lcom/facebook/soloader/UnpackingSoSource$Unpacker;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 75
    new-instance v0, Lcom/facebook/soloader/BackupSoSource$ApkUnpacker;

    invoke-direct {v0, p0, p0, p1}, Lcom/facebook/soloader/BackupSoSource$ApkUnpacker;-><init>(Lcom/facebook/soloader/BackupSoSource;Lcom/facebook/soloader/ExtractFromZipSoSource;Z)V

    return-object v0
.end method

###### Class com.facebook.soloader.BackupSoSource.ApkUnpacker (com.facebook.soloader.BackupSoSource$ApkUnpacker)
.class public Lcom/facebook/soloader/BackupSoSource$ApkUnpacker;
.super Lcom/facebook/soloader/ExtractFromZipSoSource$ZipUnpacker;
.source "BackupSoSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/soloader/BackupSoSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "ApkUnpacker"
.end annotation


# instance fields
.field private final mFlags:I

.field private final mForceUnpacking:Z

.field private final mLibDir:Ljava/io/File;

.field final synthetic this$0:Lcom/facebook/soloader/BackupSoSource;


# direct methods
.method constructor <init>(Lcom/facebook/soloader/BackupSoSource;Lcom/facebook/soloader/ExtractFromZipSoSource;Z)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 84
    iput-object p1, p0, Lcom/facebook/soloader/BackupSoSource$ApkUnpacker;->this$0:Lcom/facebook/soloader/BackupSoSource;

    .line 85
    invoke-direct {p0, p1, p2}, Lcom/facebook/soloader/ExtractFromZipSoSource$ZipUnpacker;-><init>(Lcom/facebook/soloader/ExtractFromZipSoSource;Lcom/facebook/soloader/UnpackingSoSource;)V

    .line 86
    iput-boolean p3, p0, Lcom/facebook/soloader/BackupSoSource$ApkUnpacker;->mForceUnpacking:Z

    .line 87
    new-instance p2, Ljava/io/File;

    iget-object p3, p1, Lcom/facebook/soloader/BackupSoSource;->mContext:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p3

    iget-object p3, p3, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    invoke-direct {p2, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/facebook/soloader/BackupSoSource$ApkUnpacker;->mLibDir:Ljava/io/File;

    .line 88
    invoke-static {p1}, Lcom/facebook/soloader/BackupSoSource;->access$000(Lcom/facebook/soloader/BackupSoSource;)I

    move-result p1

    iput p1, p0, Lcom/facebook/soloader/BackupSoSource$ApkUnpacker;->mFlags:I

    return-void
.end method


# virtual methods
.method protected getExtractableDsosFromZip()[Lcom/facebook/soloader/ExtractFromZipSoSource$ZipDso;
    .registers 7

    .line 93
    iget-object v0, p0, Lcom/facebook/soloader/BackupSoSource$ApkUnpacker;->mDsos:[Lcom/facebook/soloader/ExtractFromZipSoSource$ZipDso;

    if-eqz v0, :cond_7

    .line 94
    iget-object v0, p0, Lcom/facebook/soloader/BackupSoSource$ApkUnpacker;->mDsos:[Lcom/facebook/soloader/ExtractFromZipSoSource$ZipDso;

    return-object v0

    .line 97
    :cond_7
    invoke-virtual {p0}, Lcom/facebook/soloader/BackupSoSource$ApkUnpacker;->computeDsosFromZip()[Lcom/facebook/soloader/ExtractFromZipSoSource$ZipDso;

    move-result-object v0

    .line 98
    iput-object v0, p0, Lcom/facebook/soloader/BackupSoSource$ApkUnpacker;->mDsos:[Lcom/facebook/soloader/ExtractFromZipSoSource$ZipDso;

    .line 100
    iget-boolean v1, p0, Lcom/facebook/soloader/BackupSoSource$ApkUnpacker;->mForceUnpacking:Z

    const-string v2, "BackupSoSource"

    if-eqz v1, :cond_1b

    .line 101
    const-string v0, "Unconditonally extracting all DSOs from zip"

    invoke-static {v2, v0}, Lcom/facebook/soloader/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    iget-object v0, p0, Lcom/facebook/soloader/BackupSoSource$ApkUnpacker;->mDsos:[Lcom/facebook/soloader/ExtractFromZipSoSource$ZipDso;

    return-object v0

    .line 105
    :cond_1b
    iget v1, p0, Lcom/facebook/soloader/BackupSoSource$ApkUnpacker;->mFlags:I

    and-int/lit8 v1, v1, 0x1

    if-nez v1, :cond_29

    .line 106
    const-string v0, "Self-extraction preferred (PREFER_ANDROID_LIBS_DRIECTORY not set)"

    invoke-static {v2, v0}, Lcom/facebook/soloader/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    iget-object v0, p0, Lcom/facebook/soloader/BackupSoSource$ApkUnpacker;->mDsos:[Lcom/facebook/soloader/ExtractFromZipSoSource$ZipDso;

    return-object v0

    .line 110
    :cond_29
    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_2c
    if-ge v3, v1, :cond_40

    aget-object v4, v0, v3

    .line 111
    iget-object v5, v4, Lcom/facebook/soloader/ExtractFromZipSoSource$ZipDso;->backingEntry:Ljava/util/zip/ZipEntry;

    iget-object v4, v4, Lcom/facebook/soloader/ExtractFromZipSoSource$ZipDso;->name:Ljava/lang/String;

    invoke-virtual {p0, v5, v4}, Lcom/facebook/soloader/BackupSoSource$ApkUnpacker;->shouldExtract(Ljava/util/zip/ZipEntry;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3d

    .line 124
    iget-object v0, p0, Lcom/facebook/soloader/BackupSoSource$ApkUnpacker;->mDsos:[Lcom/facebook/soloader/ExtractFromZipSoSource$ZipDso;

    return-object v0

    :cond_3d
    add-int/lit8 v3, v3, 0x1

    goto :goto_2c

    .line 129
    :cond_40
    new-array v0, v2, [Lcom/facebook/soloader/ExtractFromZipSoSource$ZipDso;

    iput-object v0, p0, Lcom/facebook/soloader/BackupSoSource$ApkUnpacker;->mDsos:[Lcom/facebook/soloader/ExtractFromZipSoSource$ZipDso;

    .line 130
    iget-object v0, p0, Lcom/facebook/soloader/BackupSoSource$ApkUnpacker;->mDsos:[Lcom/facebook/soloader/ExtractFromZipSoSource$ZipDso;

    return-object v0
.end method

.method shouldExtract(Ljava/util/zip/ZipEntry;Ljava/lang/String;)Z
    .registers 14

    .line 135
    const-string v0, ": "

    const-string v1, "BackupSoSource"

    .line 0
    const-string v2, "Not allowing consideration of "

    .line 135
    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v3

    .line 136
    new-instance v4, Ljava/io/File;

    iget-object v5, p0, Lcom/facebook/soloader/BackupSoSource$ApkUnpacker;->mLibDir:Ljava/io/File;

    invoke-direct {v4, v5, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 v5, 0x0

    .line 138
    :try_start_12
    invoke-virtual {v4}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/facebook/soloader/BackupSoSource$ApkUnpacker;->mLibDir:Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3d

    .line 139
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " not in lib dir."

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/facebook/soloader/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3c
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_3c} :catch_a7

    return v5

    .line 155
    :cond_3d
    invoke-virtual {v4}, Ljava/io/File;->isFile()Z

    move-result v6

    const/4 v7, 0x1

    const-string v8, "Allowing consideration of "

    if-nez v6, :cond_61

    .line 156
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " not in system lib dir"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/facebook/soloader/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    return v7

    .line 161
    :cond_61
    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v9

    .line 162
    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide p1

    cmp-long v0, v9, p1

    if-eqz v0, :cond_92

    .line 165
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ": sysdir file length is "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", but the file is "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " bytes long in the APK"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/facebook/soloader/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    return v7

    .line 177
    :cond_92
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ": deferring to libdir"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/facebook/soloader/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    return v5

    :catch_a7
    move-exception p1

    .line 144
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", IOException when constructing path: "

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    invoke-virtual {p1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 144
    invoke-static {v1, p1}, Lcom/facebook/soloader/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    return v5
.end method
