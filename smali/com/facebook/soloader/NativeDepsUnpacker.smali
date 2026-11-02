###### Class com.facebook.soloader.NativeDepsUnpacker (com.facebook.soloader.NativeDepsUnpacker)
.class public final Lcom/facebook/soloader/NativeDepsUnpacker;
.super Ljava/lang/Object;
.source "NativeDepsUnpacker.java"


# static fields
.field private static final APK_IDENTIFIER_FILE_NAME:Ljava/lang/String; = "apk_id"

.field private static final LOCK_FILE_NAME:Ljava/lang/String; = "lock"

.field private static final NATIVE_DEPS_DIR_NAME:Ljava/lang/String; = "native_deps"

.field private static final NATIVE_DEPS_FILE_APK_PATH:Ljava/lang/String; = "assets/native_deps.txt"

.field private static final NATIVE_DEPS_FILE_NAME:Ljava/lang/String; = "deps"

.field private static final STATE_CLEAN:B = 0x1t

.field private static final STATE_DIRTY:B = 0x0t

.field private static final STATE_FILE_NAME:Ljava/lang/String; = "state"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static apkChanged(Landroid/content/Context;Ljava/io/File;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 221
    invoke-static {p0, p1}, Lcom/facebook/soloader/NativeDepsUnpacker;->getExistingApkIdentifier(Landroid/content/Context;Ljava/io/File;)[B

    move-result-object p1

    .line 222
    invoke-static {p0}, Lcom/facebook/soloader/NativeDepsUnpacker;->getApkIdentifier(Landroid/content/Context;)[B

    move-result-object p0

    const/4 v0, 0x1

    if-eqz p1, :cond_19

    if-nez p0, :cond_e

    goto :goto_19

    .line 227
    :cond_e
    array-length v1, p1

    array-length v2, p0

    if-eq v1, v2, :cond_13

    return v0

    .line 231
    :cond_13
    invoke-static {p1, p0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p0

    xor-int/2addr p0, v0

    return p0

    :cond_19
    :goto_19
    return v0
.end method

.method private static ensureDirExists(Ljava/io/File;)Z
    .registers 2

    .line 97
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_f

    .line 98
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    .line 101
    :cond_f
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_18

    .line 102
    invoke-virtual {p0}, Ljava/io/File;->mkdir()Z

    .line 105
    :cond_18
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result p0

    if-nez p0, :cond_20

    const/4 p0, 0x0

    return p0

    :cond_20
    const/4 p0, 0x1

    return p0
.end method

.method public static ensureNativeDepsAvailable(Landroid/content/Context;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 69
    invoke-static {p0}, Lcom/facebook/soloader/NativeDepsUnpacker;->getNativeDepsDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    .line 70
    invoke-static {v0}, Lcom/facebook/soloader/NativeDepsUnpacker;->ensureDirExists(Ljava/io/File;)Z

    move-result v1

    if-nez v1, :cond_b

    goto :goto_41

    .line 74
    :cond_b
    new-instance v1, Ljava/io/File;

    const-string v2, "lock"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 75
    invoke-static {v0, v1}, Lcom/facebook/soloader/SysUtil;->getOrCreateLockOnDir(Ljava/io/File;Ljava/io/File;)Lcom/facebook/soloader/FileLocker;

    move-result-object v1

    .line 76
    :try_start_16
    invoke-static {v0}, Lcom/facebook/soloader/NativeDepsUnpacker;->readState(Ljava/io/File;)B

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v2, v4, :cond_25

    .line 78
    invoke-static {p0, v0}, Lcom/facebook/soloader/NativeDepsUnpacker;->apkChanged(Landroid/content/Context;Ljava/io/File;)Z

    move-result v5
    :try_end_22
    .catchall {:try_start_16 .. :try_end_22} :catchall_42

    if-eqz v5, :cond_25

    const/4 v2, 0x0

    :cond_25
    if-ne v2, v4, :cond_2d

    if-eqz v1, :cond_41

    .line 93
    invoke-virtual {v1}, Lcom/facebook/soloader/FileLocker;->close()V

    return-void

    .line 86
    :cond_2d
    :try_start_2d
    invoke-static {v0, v3}, Lcom/facebook/soloader/NativeDepsUnpacker;->writeState(Ljava/io/File;B)V

    .line 88
    invoke-static {p0}, Lcom/facebook/soloader/NativeDepsUnpacker;->extractNativeDeps(Landroid/content/Context;)V

    .line 89
    invoke-static {p0, v0}, Lcom/facebook/soloader/NativeDepsUnpacker;->writeApkIdentifier(Landroid/content/Context;Ljava/io/File;)V

    .line 90
    invoke-static {v0}, Lcom/facebook/soloader/SysUtil;->fsyncAll(Ljava/io/File;)V

    .line 92
    invoke-static {v0, v4}, Lcom/facebook/soloader/NativeDepsUnpacker;->writeState(Ljava/io/File;B)V
    :try_end_3c
    .catchall {:try_start_2d .. :try_end_3c} :catchall_42

    if-eqz v1, :cond_41

    .line 93
    invoke-virtual {v1}, Lcom/facebook/soloader/FileLocker;->close()V

    :cond_41
    :goto_41
    return-void

    :catchall_42
    move-exception p0

    if-eqz v1, :cond_4d

    .line 75
    :try_start_45
    invoke-virtual {v1}, Lcom/facebook/soloader/FileLocker;->close()V
    :try_end_48
    .catchall {:try_start_45 .. :try_end_48} :catchall_49

    goto :goto_4d

    :catchall_49
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4d
    :goto_4d
    throw p0
.end method

.method private static extractNativeDeps(Landroid/content/Context;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 160
    invoke-static {p0}, Lcom/facebook/soloader/NativeDepsUnpacker;->readNativeDepsFromApk(Landroid/content/Context;)[B

    move-result-object v0

    .line 161
    invoke-static {p0}, Lcom/facebook/soloader/NativeDepsUnpacker;->getApkIdentifier(Landroid/content/Context;)[B

    move-result-object v1

    .line 162
    array-length v2, v0

    .line 163
    invoke-static {p0}, Lcom/facebook/soloader/NativeDepsUnpacker;->getNativeDepsFilePath(Landroid/content/Context;)Ljava/io/File;

    move-result-object p0

    .line 164
    new-instance v3, Ljava/io/RandomAccessFile;

    const-string v4, "rw"

    invoke-direct {v3, p0, v4}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 165
    :try_start_14
    invoke-virtual {v3, v1}, Ljava/io/RandomAccessFile;->write([B)V

    .line 166
    invoke-virtual {v3, v2}, Ljava/io/RandomAccessFile;->writeInt(I)V

    .line 167
    invoke-virtual {v3, v0}, Ljava/io/RandomAccessFile;->write([B)V

    .line 168
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v0

    invoke-virtual {v3, v0, v1}, Ljava/io/RandomAccessFile;->setLength(J)V
    :try_end_24
    .catchall {:try_start_14 .. :try_end_24} :catchall_28

    .line 169
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V

    return-void

    :catchall_28
    move-exception p0

    .line 164
    :try_start_29
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2c
    .catchall {:try_start_29 .. :try_end_2c} :catchall_2d

    goto :goto_31

    :catchall_2d
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_31
    throw p0
.end method

.method private static getApkIdentifier(Landroid/content/Context;)[B
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 113
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 114
    invoke-static {v0, p0}, Lcom/facebook/soloader/SysUtil;->makeApkDepBlock(Ljava/io/File;Landroid/content/Context;)[B

    move-result-object p0

    return-object p0
.end method

.method private static getExistingApkIdentifier(Landroid/content/Context;Ljava/io/File;)[B
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 210
    new-instance p0, Ljava/io/File;

    const-string v0, "apk_id"

    invoke-direct {p0, p1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 211
    new-instance p1, Ljava/io/RandomAccessFile;

    const-string v0, "rw"

    invoke-direct {p1, p0, v0}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 212
    :try_start_e
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v0

    long-to-int p0, v0

    new-array v0, p0, [B

    .line 213
    invoke-virtual {p1, v0}, Ljava/io/RandomAccessFile;->read([B)I

    move-result v1
    :try_end_19
    .catchall {:try_start_e .. :try_end_19} :catchall_24

    if-eq v1, p0, :cond_20

    .line 217
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->close()V

    const/4 p0, 0x0

    return-object p0

    :cond_20
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->close()V

    return-object v0

    :catchall_24
    move-exception p0

    .line 211
    :try_start_25
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_28
    .catchall {:try_start_25 .. :try_end_28} :catchall_29

    goto :goto_2d

    :catchall_29
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2d
    throw p0
.end method

.method public static getNativeDepsDir(Landroid/content/Context;)Ljava/io/File;
    .registers 3

    .line 56
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    const-string v1, "native_deps"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getNativeDepsFilePath(Landroid/content/Context;)Ljava/io/File;
    .registers 3

    .line 52
    new-instance v0, Ljava/io/File;

    invoke-static {p0}, Lcom/facebook/soloader/NativeDepsUnpacker;->getNativeDepsDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object p0

    const-string v1, "deps"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method static readAllBytes(Ljava/io/InputStream;I)[B
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 118
    new-array v0, p1, [B

    const/4 v1, 0x0

    :goto_3
    if-ge v1, p1, :cond_22

    sub-int v2, p1, v1

    .line 122
    invoke-virtual {p0, v0, v1, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1a

    add-int/2addr v1, v2

    if-gt v1, p1, :cond_12

    goto :goto_3

    .line 127
    :cond_12
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Read more bytes than expected"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 124
    :cond_1a
    new-instance p0, Ljava/io/EOFException;

    const-string p1, "EOF found unexpectedly"

    invoke-direct {p0, p1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_22
    return-object v0
.end method

.method static readNativeDepsFromApk(Landroid/content/Context;)[B
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 143
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 144
    new-instance p0, Ljava/util/zip/ZipFile;

    invoke-direct {p0, v0}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V

    .line 145
    :try_start_10
    const-string v0, "assets/native_deps.txt"

    invoke-virtual {p0, v0}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v0

    if-eqz v0, :cond_45

    .line 150
    invoke-virtual {p0, v0}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v1
    :try_end_1c
    .catchall {:try_start_10 .. :try_end_1c} :catchall_4d

    if-eqz v1, :cond_32

    .line 154
    :try_start_1e
    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v2

    long-to-int v0, v2

    invoke-static {v1, v0}, Lcom/facebook/soloader/NativeDepsUnpacker;->readAllBytes(Ljava/io/InputStream;I)[B

    move-result-object v0
    :try_end_27
    .catchall {:try_start_1e .. :try_end_27} :catchall_30

    if-eqz v1, :cond_2c

    .line 155
    :try_start_29
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2c
    .catchall {:try_start_29 .. :try_end_2c} :catchall_4d

    .line 156
    :cond_2c
    invoke-virtual {p0}, Ljava/util/zip/ZipFile;->close()V

    return-object v0

    :catchall_30
    move-exception v0

    goto :goto_3a

    .line 152
    :cond_32
    :try_start_32
    new-instance v0, Ljava/io/FileNotFoundException;

    const-string v2, "Failed to read native_deps file from APK"

    invoke-direct {v0, v2}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3a
    .catchall {:try_start_32 .. :try_end_3a} :catchall_30

    :goto_3a
    if-eqz v1, :cond_44

    .line 150
    :try_start_3c
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3f
    .catchall {:try_start_3c .. :try_end_3f} :catchall_40

    goto :goto_44

    :catchall_40
    move-exception v1

    :try_start_41
    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_44
    :goto_44
    throw v0

    .line 147
    :cond_45
    new-instance v0, Ljava/io/FileNotFoundException;

    const-string v1, "Could not find native_deps file in APK"

    invoke-direct {v0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_4d
    .catchall {:try_start_41 .. :try_end_4d} :catchall_4d

    :catchall_4d
    move-exception v0

    .line 144
    :try_start_4e
    invoke-virtual {p0}, Ljava/util/zip/ZipFile;->close()V
    :try_end_51
    .catchall {:try_start_4e .. :try_end_51} :catchall_52

    goto :goto_56

    :catchall_52
    move-exception p0

    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_56
    throw v0
.end method

.method static readNativeDepsFromDisk(Landroid/content/Context;)[B
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 136
    invoke-static {p0}, Lcom/facebook/soloader/NativeDepsUnpacker;->getNativeDepsFilePath(Landroid/content/Context;)Ljava/io/File;

    move-result-object p0

    .line 137
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 138
    :try_start_9
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v1

    long-to-int p0, v1

    invoke-static {v0, p0}, Lcom/facebook/soloader/NativeDepsUnpacker;->readAllBytes(Ljava/io/InputStream;I)[B

    move-result-object p0
    :try_end_12
    .catchall {:try_start_9 .. :try_end_12} :catchall_16

    .line 139
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    return-object p0

    :catchall_16
    move-exception p0

    .line 137
    :try_start_17
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_1a
    .catchall {:try_start_17 .. :try_end_1a} :catchall_1b

    goto :goto_1f

    :catchall_1b
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1f
    throw p0
.end method

.method private static readState(Ljava/io/File;)B
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 192
    new-instance v0, Ljava/io/File;

    const-string v1, "state"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 194
    new-instance p0, Ljava/io/RandomAccessFile;

    const-string v1, "rw"

    invoke-direct {p0, v0, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 196
    :try_start_f
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->readByte()B

    move-result v1
    :try_end_13
    .catch Ljava/io/EOFException; {:try_start_f .. :try_end_13} :catch_23
    .catchall {:try_start_f .. :try_end_13} :catchall_19

    const/4 v2, 0x1

    if-eq v1, v2, :cond_17

    goto :goto_23

    :cond_17
    move v0, v1

    goto :goto_23

    :catchall_19
    move-exception v0

    .line 194
    :try_start_1a
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_1d
    .catchall {:try_start_1a .. :try_end_1d} :catchall_1e

    goto :goto_22

    :catchall_1e
    move-exception p0

    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_22
    throw v0

    .line 204
    :catch_23
    :goto_23
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->close()V

    return v0
.end method

.method private static writeApkIdentifier(Landroid/content/Context;Ljava/io/File;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 173
    new-instance v0, Ljava/io/File;

    const-string v1, "apk_id"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 174
    invoke-static {p0}, Lcom/facebook/soloader/NativeDepsUnpacker;->getApkIdentifier(Landroid/content/Context;)[B

    move-result-object p0

    .line 175
    new-instance p1, Ljava/io/RandomAccessFile;

    const-string v1, "rw"

    invoke-direct {p1, v0, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 176
    :try_start_12
    invoke-virtual {p1, p0}, Ljava/io/RandomAccessFile;->write([B)V

    .line 177
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/io/RandomAccessFile;->setLength(J)V
    :try_end_1c
    .catchall {:try_start_12 .. :try_end_1c} :catchall_20

    .line 178
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->close()V

    return-void

    :catchall_20
    move-exception p0

    .line 175
    :try_start_21
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_24
    .catchall {:try_start_21 .. :try_end_24} :catchall_25

    goto :goto_29

    :catchall_25
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_29
    throw p0
.end method

.method private static writeState(Ljava/io/File;B)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 182
    new-instance v0, Ljava/io/File;

    const-string v1, "state"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 183
    new-instance p0, Ljava/io/RandomAccessFile;

    const-string v1, "rw"

    invoke-direct {p0, v0, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    .line 184
    :try_start_10
    invoke-virtual {p0, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 185
    invoke-virtual {p0, p1}, Ljava/io/RandomAccessFile;->write(I)V

    .line 186
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Ljava/io/RandomAccessFile;->setLength(J)V

    .line 187
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->getFD()Ljava/io/FileDescriptor;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/FileDescriptor;->sync()V
    :try_end_24
    .catchall {:try_start_10 .. :try_end_24} :catchall_28

    .line 188
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->close()V

    return-void

    :catchall_28
    move-exception p1

    .line 183
    :try_start_29
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2c
    .catchall {:try_start_29 .. :try_end_2c} :catchall_2d

    goto :goto_31

    :catchall_2d
    move-exception p0

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_31
    throw p1
.end method
