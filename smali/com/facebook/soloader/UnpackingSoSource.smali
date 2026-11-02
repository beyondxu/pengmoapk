###### Class com.facebook.soloader.UnpackingSoSource (com.facebook.soloader.UnpackingSoSource)
.class public abstract Lcom/facebook/soloader/UnpackingSoSource;
.super Lcom/facebook/soloader/DirectorySoSource;
.source "UnpackingSoSource.java"

# interfaces
.implements Lcom/facebook/soloader/AsyncInitSoSource;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/soloader/UnpackingSoSource$Unpacker;,
        Lcom/facebook/soloader/UnpackingSoSource$InputDso;,
        Lcom/facebook/soloader/UnpackingSoSource$Dso;
    }
.end annotation


# static fields
.field protected static final DEPS_FILE_NAME:Ljava/lang/String; = "dso_deps"

.field protected static final LOCK_FILE_NAME:Ljava/lang/String; = "dso_lock"

.field private static final STATE_CLEAN:B = 0x1t

.field private static final STATE_DIRTY:B = 0x0t

.field protected static final STATE_FILE_NAME:Ljava/lang/String; = "dso_state"

.field private static final TAG:Ljava/lang/String; = "fb-UnpackingSoSource"


# instance fields
.field private mAbis:[Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field protected final mContext:Landroid/content/Context;


# direct methods
.method protected constructor <init>(Landroid/content/Context;Ljava/io/File;)V
    .registers 4

    const/4 v0, 0x1

    .line 69
    invoke-direct {p0, p2, v0}, Lcom/facebook/soloader/DirectorySoSource;-><init>(Ljava/io/File;I)V

    .line 70
    iput-object p1, p0, Lcom/facebook/soloader/UnpackingSoSource;->mContext:Landroid/content/Context;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    .line 64
    invoke-static {p1, p2}, Lcom/facebook/soloader/UnpackingSoSource;->getSoStorePath(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object p2

    const/4 v0, 0x1

    invoke-direct {p0, p2, v0}, Lcom/facebook/soloader/DirectorySoSource;-><init>(Ljava/io/File;I)V

    .line 65
    iput-object p1, p0, Lcom/facebook/soloader/UnpackingSoSource;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$100(Ljava/io/File;BZ)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 36
    invoke-static {p0, p1, p2}, Lcom/facebook/soloader/UnpackingSoSource;->writeState(Ljava/io/File;BZ)V

    return-void
.end method

.method private deleteSoFiles()V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 141
    new-instance v0, Lcom/facebook/soloader/UnpackingSoSource$1;

    invoke-direct {v0, p0}, Lcom/facebook/soloader/UnpackingSoSource$1;-><init>(Lcom/facebook/soloader/UnpackingSoSource;)V

    .line 151
    iget-object v1, p0, Lcom/facebook/soloader/UnpackingSoSource;->soDirectory:Ljava/io/File;

    invoke-virtual {v1, v0}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_2d

    .line 156
    array-length v1, v0

    const/4 v2, 0x0

    :goto_f
    if-ge v2, v1, :cond_2c

    aget-object v3, v0, v2

    .line 157
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Deleting "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "fb-UnpackingSoSource"

    invoke-static {v5, v4}, Lcom/facebook/soloader/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    invoke-static {v3}, Lcom/facebook/soloader/SysUtil;->dumbDelete(Ljava/io/File;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    :cond_2c
    return-void

    .line 153
    :cond_2d
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "unable to list directory "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/facebook/soloader/UnpackingSoSource;->soDirectory:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static forceRefresh(I)Z
    .registers 1

    and-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_6

    const/4 p0, 0x1

    return p0

    :cond_6
    const/4 p0, 0x0

    return p0
.end method

.method public static getSoStorePath(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    .registers 4

    .line 74
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private libraryIsCorrupted(Lcom/facebook/soloader/UnpackingSoSource$Dso;Ljava/io/File;)Z
    .registers 5

    .line 244
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_8

    return v1

    .line 248
    :cond_8
    iget-object p1, p1, Lcom/facebook/soloader/UnpackingSoSource$Dso;->hash:Ljava/lang/String;

    .line 249
    invoke-virtual {p0, p2}, Lcom/facebook/soloader/UnpackingSoSource;->computeFileHash(Ljava/io/File;)Ljava/lang/String;

    move-result-object p2

    .line 250
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_15

    return v1

    :cond_15
    const/4 p1, 0x0

    return p1
.end method

.method private refreshLocked(Lcom/facebook/soloader/FileLocker;I)Z
    .registers 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v1, "dso store "

    .line 301
    new-instance v2, Ljava/io/File;

    iget-object v0, p0, Lcom/facebook/soloader/UnpackingSoSource;->soDirectory:Ljava/io/File;

    const-string v3, "dso_state"

    invoke-direct {v2, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 302
    invoke-virtual {p0}, Lcom/facebook/soloader/UnpackingSoSource;->getDepsBlock()[B

    move-result-object v3

    .line 305
    invoke-static/range {p2 .. p2}, Lcom/facebook/soloader/UnpackingSoSource;->forceRefresh(I)Z

    move-result v4

    .line 306
    const-string v5, "rw"

    const-string v6, "fb-UnpackingSoSource"

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-nez v4, :cond_7b

    invoke-virtual {p0, v3}, Lcom/facebook/soloader/UnpackingSoSource;->depsChanged([B)Z

    move-result v0

    if-nez v0, :cond_7b

    .line 307
    new-instance v9, Ljava/io/RandomAccessFile;

    invoke-direct {v9, v2, v5}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 309
    :try_start_26
    invoke-virtual {v9}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v10
    :try_end_2a
    .catchall {:try_start_26 .. :try_end_2a} :catchall_70

    const-wide/16 v12, 0x1

    cmp-long v0, v10, v12

    if-nez v0, :cond_6b

    .line 311
    :try_start_30
    invoke-virtual {v9}, Ljava/io/RandomAccessFile;->readByte()B

    move-result v0

    if-ne v0, v7, :cond_6b

    .line 313
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v11, p0, Lcom/facebook/soloader/UnpackingSoSource;->soDirectory:Ljava/io/File;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v11, " regeneration not needed: state file clean"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v6, v10}, Lcom/facebook/soloader/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4c
    .catch Ljava/io/IOException; {:try_start_30 .. :try_end_4c} :catch_4d
    .catchall {:try_start_30 .. :try_end_4c} :catchall_70

    goto :goto_6c

    :catch_4d
    move-exception v0

    .line 318
    :try_start_4e
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/facebook/soloader/UnpackingSoSource;->soDirectory:Ljava/io/File;

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " regeneration interrupted: "

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 319
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 318
    invoke-static {v6, v0}, Lcom/facebook/soloader/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6b
    .catchall {:try_start_4e .. :try_end_6b} :catchall_70

    :cond_6b
    const/4 v0, 0x0

    .line 322
    :goto_6c
    invoke-virtual {v9}, Ljava/io/RandomAccessFile;->close()V

    goto :goto_7c

    :catchall_70
    move-exception v0

    move-object p1, v0

    .line 307
    :try_start_72
    invoke-virtual {v9}, Ljava/io/RandomAccessFile;->close()V
    :try_end_75
    .catchall {:try_start_72 .. :try_end_75} :catchall_76

    goto :goto_7a

    :catchall_76
    move-exception v0

    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_7a
    throw p1

    :cond_7b
    const/4 v0, 0x0

    :goto_7c
    if-ne v0, v7, :cond_7f

    return v8

    :cond_7f
    and-int/lit8 v0, p2, 0x4

    if-nez v0, :cond_85

    const/4 v0, 0x1

    goto :goto_86

    :cond_85
    const/4 v0, 0x0

    .line 330
    :goto_86
    const-string v1, "so store dirty: regenerating"

    invoke-static {v6, v1}, Lcom/facebook/soloader/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    invoke-static {v2, v8, v0}, Lcom/facebook/soloader/UnpackingSoSource;->writeState(Ljava/io/File;BZ)V

    .line 332
    invoke-direct {p0}, Lcom/facebook/soloader/UnpackingSoSource;->deleteSoFiles()V

    .line 333
    invoke-virtual {p0, v4}, Lcom/facebook/soloader/UnpackingSoSource;->makeUnpacker(Z)Lcom/facebook/soloader/UnpackingSoSource$Unpacker;

    move-result-object v1

    .line 334
    :try_start_95
    iget-object v4, p0, Lcom/facebook/soloader/UnpackingSoSource;->soDirectory:Ljava/io/File;

    invoke-virtual {v1, v4}, Lcom/facebook/soloader/UnpackingSoSource$Unpacker;->unpack(Ljava/io/File;)V
    :try_end_9a
    .catchall {:try_start_95 .. :try_end_9a} :catchall_f1

    if-eqz v1, :cond_9f

    .line 335
    invoke-virtual {v1}, Lcom/facebook/soloader/UnpackingSoSource$Unpacker;->close()V

    .line 341
    :cond_9f
    new-instance v1, Ljava/io/File;

    iget-object v4, p0, Lcom/facebook/soloader/UnpackingSoSource;->soDirectory:Ljava/io/File;

    const-string v6, "dso_deps"

    invoke-direct {v1, v4, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 342
    new-instance v4, Ljava/io/RandomAccessFile;

    invoke-direct {v4, v1, v5}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 343
    :try_start_ad
    invoke-virtual {v4, v3}, Ljava/io/RandomAccessFile;->write([B)V

    .line 344
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/io/RandomAccessFile;->setLength(J)V
    :try_end_b7
    .catchall {:try_start_ad .. :try_end_b7} :catchall_e6

    .line 345
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V

    .line 353
    new-instance v1, Lcom/facebook/soloader/UnpackingSoSource$2;

    invoke-direct {v1, p0, v0, v2, p1}, Lcom/facebook/soloader/UnpackingSoSource$2;-><init>(Lcom/facebook/soloader/UnpackingSoSource;ZLjava/io/File;Lcom/facebook/soloader/FileLocker;)V

    .line 375
    invoke-static/range {p2 .. p2}, Lcom/facebook/soloader/UnpackingSoSource;->rewriteStateAsync(I)Z

    move-result p1

    if-eqz p1, :cond_e2

    .line 376
    new-instance p1, Ljava/lang/Thread;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "SoSync:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/facebook/soloader/UnpackingSoSource;->soDirectory:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    goto :goto_e5

    .line 378
    :cond_e2
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    :goto_e5
    return v7

    :catchall_e6
    move-exception v0

    move-object p1, v0

    .line 342
    :try_start_e8
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V
    :try_end_eb
    .catchall {:try_start_e8 .. :try_end_eb} :catchall_ec

    goto :goto_f0

    :catchall_ec
    move-exception v0

    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_f0
    throw p1

    :catchall_f1
    move-exception v0

    move-object p1, v0

    if-eqz v1, :cond_fd

    .line 333
    :try_start_f5
    invoke-virtual {v1}, Lcom/facebook/soloader/UnpackingSoSource$Unpacker;->close()V
    :try_end_f8
    .catchall {:try_start_f5 .. :try_end_f8} :catchall_f9

    goto :goto_fd

    :catchall_f9
    move-exception v0

    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_fd
    :goto_fd
    throw p1
.end method

.method private static rewriteStateAsync(I)Z
    .registers 2

    const/4 v0, 0x1

    and-int/2addr p0, v0

    if-eqz p0, :cond_5

    return v0

    :cond_5
    const/4 p0, 0x0

    return p0
.end method

.method private static writeState(Ljava/io/File;BZ)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 127
    :try_start_0
    new-instance v0, Ljava/io/RandomAccessFile;

    const-string v1, "rw"

    invoke-direct {v0, p0, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/io/SyncFailedException; {:try_start_0 .. :try_end_7} :catch_2d

    const-wide/16 v1, 0x0

    .line 128
    :try_start_9
    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 129
    invoke-virtual {v0, p1}, Ljava/io/RandomAccessFile;->write(I)V

    .line 130
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide p0

    invoke-virtual {v0, p0, p1}, Ljava/io/RandomAccessFile;->setLength(J)V

    if-eqz p2, :cond_1f

    .line 132
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getFD()Ljava/io/FileDescriptor;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/FileDescriptor;->sync()V
    :try_end_1f
    .catchall {:try_start_9 .. :try_end_1f} :catchall_23

    .line 134
    :cond_1f
    :try_start_1f
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_22
    .catch Ljava/io/SyncFailedException; {:try_start_1f .. :try_end_22} :catch_2d

    return-void

    :catchall_23
    move-exception p0

    .line 127
    :try_start_24
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_27
    .catchall {:try_start_24 .. :try_end_27} :catchall_28

    goto :goto_2c

    :catchall_28
    move-exception p1

    :try_start_29
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2c
    throw p0
    :try_end_2d
    .catch Ljava/io/SyncFailedException; {:try_start_29 .. :try_end_2d} :catch_2d

    :catch_2d
    move-exception p0

    .line 135
    const-string p1, "fb-UnpackingSoSource"

    const-string p2, "state file sync failed"

    invoke-static {p1, p2, p0}, Lcom/facebook/soloader/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method protected computeFileHash(Ljava/io/File;)Ljava/lang/String;
    .registers 15

    .line 213
    const-string v0, "-1"

    const-string v1, "Failed to calculate hash for "

    const-string v2, "fb-UnpackingSoSource"

    :try_start_6
    invoke-virtual {p0}, Lcom/facebook/soloader/UnpackingSoSource;->getHashingAlgorithm()Ljava/security/MessageDigest;

    move-result-object v3
    :try_end_a
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_6 .. :try_end_a} :catch_7c

    .line 219
    :try_start_a
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_f} :catch_67

    .line 220
    :try_start_f
    new-instance v5, Ljava/security/DigestInputStream;

    invoke-direct {v5, v4, v3}, Ljava/security/DigestInputStream;-><init>(Ljava/io/InputStream;Ljava/security/MessageDigest;)V
    :try_end_14
    .catchall {:try_start_f .. :try_end_14} :catchall_5d

    const/16 v6, 0x2000

    .line 221
    :try_start_16
    new-array v6, v6, [B

    .line 222
    :goto_18
    invoke-virtual {v5, v6}, Ljava/security/DigestInputStream;->read([B)I

    move-result v7

    const/4 v8, -0x1

    if-eq v7, v8, :cond_20

    goto :goto_18

    .line 224
    :cond_20
    invoke-virtual {v3}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v3

    .line 225
    new-instance v6, Ljava/lang/StringBuilder;

    array-length v7, v3

    mul-int/lit8 v7, v7, 0x2

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 226
    array-length v7, v3

    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_2f
    if-ge v9, v7, :cond_48

    aget-byte v10, v3, v9

    .line 227
    const-string v11, "%02x"

    invoke-static {v10}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v10

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    aput-object v10, v12, v8

    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v9, v9, 0x1

    goto :goto_2f

    .line 229
    :cond_48
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3
    :try_end_4c
    .catchall {:try_start_16 .. :try_end_4c} :catchall_53

    .line 230
    :try_start_4c
    invoke-virtual {v5}, Ljava/security/DigestInputStream;->close()V
    :try_end_4f
    .catchall {:try_start_4c .. :try_end_4f} :catchall_5d

    :try_start_4f
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_52
    .catch Ljava/io/IOException; {:try_start_4f .. :try_end_52} :catch_67

    return-object v3

    :catchall_53
    move-exception v3

    .line 219
    :try_start_54
    invoke-virtual {v5}, Ljava/security/DigestInputStream;->close()V
    :try_end_57
    .catchall {:try_start_54 .. :try_end_57} :catchall_58

    goto :goto_5c

    :catchall_58
    move-exception v5

    :try_start_59
    invoke-virtual {v3, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_5c
    throw v3
    :try_end_5d
    .catchall {:try_start_59 .. :try_end_5d} :catchall_5d

    :catchall_5d
    move-exception v3

    :try_start_5e
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_61
    .catchall {:try_start_5e .. :try_end_61} :catchall_62

    goto :goto_66

    :catchall_62
    move-exception v4

    :try_start_63
    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_66
    throw v3
    :try_end_67
    .catch Ljava/io/IOException; {:try_start_63 .. :try_end_67} :catch_67

    :catch_67
    move-exception v3

    .line 231
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1, v3}, Lcom/facebook/soloader/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0

    :catch_7c
    move-exception v3

    .line 215
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1, v3}, Lcom/facebook/soloader/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method protected depsChanged([B)Z
    .registers 10

    .line 262
    const-string v0, "fb-UnpackingSoSource"

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/facebook/soloader/UnpackingSoSource;->soDirectory:Ljava/io/File;

    const-string v3, "dso_deps"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 v2, 0x1

    .line 263
    :try_start_c
    new-instance v3, Ljava/io/RandomAccessFile;

    const-string v4, "rw"

    invoke-direct {v3, v1, v4}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_13} :catch_46

    .line 264
    :try_start_13
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v4
    :try_end_17
    .catchall {:try_start_13 .. :try_end_17} :catchall_3c

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-nez v1, :cond_21

    .line 275
    :goto_1d
    :try_start_1d
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_20
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_20} :catch_46

    return v2

    .line 268
    :cond_21
    :try_start_21
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v4

    long-to-int v1, v4

    new-array v4, v1, [B

    .line 269
    invoke-virtual {v3, v4}, Ljava/io/RandomAccessFile;->read([B)I

    move-result v5

    if-eq v5, v1, :cond_34

    .line 270
    const-string p1, "short read of so store deps file: marking unclean"

    invoke-static {v0, p1}, Lcom/facebook/soloader/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1d

    .line 274
    :cond_34
    invoke-virtual {p0, v4, p1}, Lcom/facebook/soloader/UnpackingSoSource;->depsChanged([B[B)Z

    move-result p1
    :try_end_38
    .catchall {:try_start_21 .. :try_end_38} :catchall_3c

    .line 275
    :try_start_38
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_3b
    .catch Ljava/io/IOException; {:try_start_38 .. :try_end_3b} :catch_46

    return p1

    :catchall_3c
    move-exception p1

    .line 263
    :try_start_3d
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_40
    .catchall {:try_start_3d .. :try_end_40} :catchall_41

    goto :goto_45

    :catchall_41
    move-exception v1

    :try_start_42
    invoke-virtual {p1, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_45
    throw p1
    :try_end_46
    .catch Ljava/io/IOException; {:try_start_42 .. :try_end_46} :catch_46

    :catch_46
    move-exception p1

    .line 276
    const-string v1, "failed to compare whether deps changed"

    invoke-static {v0, v1, p1}, Lcom/facebook/soloader/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return v2
.end method

.method protected depsChanged([B[B)Z
    .registers 3

    .line 258
    invoke-static {p1, p2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method protected getDepsBlock()[B
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 413
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    const/4 v1, 0x0

    .line 414
    invoke-virtual {p0, v1}, Lcom/facebook/soloader/UnpackingSoSource;->makeUnpacker(Z)Lcom/facebook/soloader/UnpackingSoSource$Unpacker;

    move-result-object v2

    .line 415
    :try_start_9
    invoke-virtual {v2}, Lcom/facebook/soloader/UnpackingSoSource$Unpacker;->getDsos()[Lcom/facebook/soloader/UnpackingSoSource$Dso;

    move-result-object v3

    .line 416
    array-length v4, v3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 417
    array-length v4, v3

    :goto_12
    if-ge v1, v4, :cond_23

    aget-object v5, v3, v1

    .line 418
    iget-object v6, v5, Lcom/facebook/soloader/UnpackingSoSource$Dso;->name:Ljava/lang/String;

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 419
    iget-object v5, v5, Lcom/facebook/soloader/UnpackingSoSource$Dso;->hash:Ljava/lang/String;

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
    :try_end_20
    .catchall {:try_start_9 .. :try_end_20} :catchall_30

    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    :cond_23
    if-eqz v2, :cond_28

    .line 421
    invoke-virtual {v2}, Lcom/facebook/soloader/UnpackingSoSource$Unpacker;->close()V

    .line 422
    :cond_28
    invoke-virtual {v0}, Landroid/os/Parcel;->marshall()[B

    move-result-object v1

    .line 423
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v1

    :catchall_30
    move-exception v0

    if-eqz v2, :cond_3b

    .line 414
    :try_start_33
    invoke-virtual {v2}, Lcom/facebook/soloader/UnpackingSoSource$Unpacker;->close()V
    :try_end_36
    .catchall {:try_start_33 .. :try_end_36} :catchall_37

    goto :goto_3b

    :catchall_37
    move-exception v1

    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3b
    :goto_3b
    throw v0
.end method

.method protected getHashingAlgorithm()Ljava/security/MessageDigest;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 207
    const-string v0, "SHA-256"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    return-object v0
.end method

.method public getLibraryPath(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 476
    invoke-virtual {p0, p1}, Lcom/facebook/soloader/UnpackingSoSource;->getSoFileByName(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    if-nez p1, :cond_8

    const/4 p1, 0x0

    return-object p1

    .line 480
    :cond_8
    invoke-virtual {p1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getSoSourceAbis()[Ljava/lang/String;
    .registers 2

    .line 81
    iget-object v0, p0, Lcom/facebook/soloader/UnpackingSoSource;->mAbis:[Ljava/lang/String;

    if-nez v0, :cond_8

    .line 82
    invoke-super {p0}, Lcom/facebook/soloader/DirectorySoSource;->getSoSourceAbis()[Ljava/lang/String;

    move-result-object v0

    :cond_8
    return-object v0
.end method

.method protected abstract makeUnpacker(Z)Lcom/facebook/soloader/UnpackingSoSource$Unpacker;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected prepare(I)V
    .registers 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p0

    .line 430
    const-string v2, " (syncer thread started)"

    const-string v3, "error removing "

    const-string v4, "fb-UnpackingSoSource"

    .line 0
    const-string v5, "releasing dso store lock for "

    const-string v6, "not releasing dso store lock for "

    const-string v0, "dso store is up-to-date: "

    const-string v7, "locked dso store "

    .line 430
    iget-object v8, v1, Lcom/facebook/soloader/UnpackingSoSource;->soDirectory:Ljava/io/File;

    invoke-static {v8}, Lcom/facebook/soloader/SysUtil;->mkdirOrThrow(Ljava/io/File;)V

    .line 432
    iget-object v8, v1, Lcom/facebook/soloader/UnpackingSoSource;->soDirectory:Ljava/io/File;

    invoke-virtual {v8}, Ljava/io/File;->canWrite()Z

    move-result v8

    const/4 v9, 0x1

    const-string v10, " write permission"

    const-string v11, "error adding "

    if-nez v8, :cond_46

    iget-object v8, v1, Lcom/facebook/soloader/UnpackingSoSource;->soDirectory:Ljava/io/File;

    invoke-virtual {v8, v9}, Ljava/io/File;->setWritable(Z)Z

    move-result v8

    if-eqz v8, :cond_2b

    goto :goto_46

    .line 433
    :cond_2b
    new-instance v0, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v1, Lcom/facebook/soloader/UnpackingSoSource;->soDirectory:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_46
    :goto_46
    const/4 v8, 0x0

    const/4 v12, 0x0

    .line 440
    :try_start_48
    new-instance v13, Ljava/io/File;

    iget-object v14, v1, Lcom/facebook/soloader/UnpackingSoSource;->soDirectory:Ljava/io/File;

    const-string v15, "dso_lock"

    invoke-direct {v13, v14, v15}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 441
    iget-object v14, v1, Lcom/facebook/soloader/UnpackingSoSource;->soDirectory:Ljava/io/File;

    invoke-static {v14, v13}, Lcom/facebook/soloader/SysUtil;->getOrCreateLockOnDir(Ljava/io/File;Ljava/io/File;)Lcom/facebook/soloader/FileLocker;

    move-result-object v13
    :try_end_57
    .catchall {:try_start_48 .. :try_end_57} :catchall_10a

    .line 442
    :try_start_57
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, v1, Lcom/facebook/soloader/UnpackingSoSource;->soDirectory:Ljava/io/File;

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Lcom/facebook/soloader/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 446
    iget-object v7, v1, Lcom/facebook/soloader/UnpackingSoSource;->soDirectory:Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->canWrite()Z

    move-result v7

    if-nez v7, :cond_94

    iget-object v7, v1, Lcom/facebook/soloader/UnpackingSoSource;->soDirectory:Ljava/io/File;

    invoke-virtual {v7, v9}, Ljava/io/File;->setWritable(Z)Z

    move-result v7

    if-eqz v7, :cond_79

    goto :goto_94

    .line 447
    :cond_79
    new-instance v0, Ljava/io/IOException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, v1, Lcom/facebook/soloader/UnpackingSoSource;->soDirectory:Ljava/io/File;

    .line 448
    invoke-virtual {v9}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_94
    :goto_94
    move/from16 v7, p1

    .line 451
    invoke-direct {v1, v13, v7}, Lcom/facebook/soloader/UnpackingSoSource;->refreshLocked(Lcom/facebook/soloader/FileLocker;I)Z

    move-result v7

    if-eqz v7, :cond_9d

    goto :goto_af

    .line 454
    :cond_9d
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/facebook/soloader/UnpackingSoSource;->soDirectory:Ljava/io/File;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/facebook/soloader/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_ae
    .catchall {:try_start_57 .. :try_end_ae} :catchall_107

    move-object v12, v13

    :goto_af
    if-eqz v12, :cond_c6

    .line 458
    :try_start_b1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v1, Lcom/facebook/soloader/UnpackingSoSource;->soDirectory:Ljava/io/File;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/facebook/soloader/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 459
    invoke-virtual {v12}, Lcom/facebook/soloader/FileLocker;->close()V

    goto :goto_da

    .line 461
    :cond_c6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v1, Lcom/facebook/soloader/UnpackingSoSource;->soDirectory:Ljava/io/File;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/facebook/soloader/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_da
    .catchall {:try_start_b1 .. :try_end_da} :catchall_137

    .line 466
    :goto_da
    iget-object v0, v1, Lcom/facebook/soloader/UnpackingSoSource;->soDirectory:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result v0

    if-eqz v0, :cond_106

    iget-object v0, v1, Lcom/facebook/soloader/UnpackingSoSource;->soDirectory:Ljava/io/File;

    invoke-virtual {v0, v8}, Ljava/io/File;->setWritable(Z)Z

    move-result v0

    if-eqz v0, :cond_eb

    goto :goto_106

    .line 467
    :cond_eb
    new-instance v0, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v1, Lcom/facebook/soloader/UnpackingSoSource;->soDirectory:Ljava/io/File;

    .line 468
    invoke-virtual {v3}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_106
    :goto_106
    return-void

    :catchall_107
    move-exception v0

    move-object v12, v13

    goto :goto_10b

    :catchall_10a
    move-exception v0

    :goto_10b
    if-eqz v12, :cond_122

    .line 458
    :try_start_10d
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v1, Lcom/facebook/soloader/UnpackingSoSource;->soDirectory:Ljava/io/File;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/facebook/soloader/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 459
    invoke-virtual {v12}, Lcom/facebook/soloader/FileLocker;->close()V

    goto :goto_136

    .line 461
    :cond_122
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, v1, Lcom/facebook/soloader/UnpackingSoSource;->soDirectory:Ljava/io/File;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/facebook/soloader/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 464
    :goto_136
    throw v0
    :try_end_137
    .catchall {:try_start_10d .. :try_end_137} :catchall_137

    :catchall_137
    move-exception v0

    .line 466
    iget-object v2, v1, Lcom/facebook/soloader/UnpackingSoSource;->soDirectory:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->canWrite()Z

    move-result v2

    if-eqz v2, :cond_163

    iget-object v2, v1, Lcom/facebook/soloader/UnpackingSoSource;->soDirectory:Ljava/io/File;

    invoke-virtual {v2, v8}, Ljava/io/File;->setWritable(Z)Z

    move-result v2

    if-nez v2, :cond_163

    .line 467
    new-instance v0, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v1, Lcom/facebook/soloader/UnpackingSoSource;->soDirectory:Ljava/io/File;

    .line 468
    invoke-virtual {v3}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 470
    :cond_163
    throw v0
.end method

.method public prepareForceRefresh()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    .line 489
    invoke-virtual {p0, v0}, Lcom/facebook/soloader/UnpackingSoSource;->prepare(I)V

    return-void
.end method

.method public setSoSourceAbis([Ljava/lang/String;)V
    .registers 2

    .line 89
    iput-object p1, p0, Lcom/facebook/soloader/UnpackingSoSource;->mAbis:[Ljava/lang/String;

    return-void
.end method

.method public waitUntilInitCompleted()V
    .registers 4

    .line 386
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/facebook/soloader/UnpackingSoSource;->soDirectory:Ljava/io/File;

    const-string v2, "dso_lock"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 387
    :try_start_9
    iget-object v1, p0, Lcom/facebook/soloader/UnpackingSoSource;->soDirectory:Ljava/io/File;

    invoke-static {v1, v0}, Lcom/facebook/soloader/SysUtil;->getOrCreateLockOnDir(Ljava/io/File;Ljava/io/File;)Lcom/facebook/soloader/FileLocker;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 389
    invoke-virtual {v0}, Lcom/facebook/soloader/FileLocker;->close()V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_14} :catch_15

    :cond_14
    return-void

    :catch_15
    move-exception v0

    .line 390
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Encountered exception during wait for unpacking trying to acquire file lock for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 393
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/facebook/soloader/UnpackingSoSource;->soDirectory:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 390
    const-string v2, "fb-UnpackingSoSource"

    invoke-static {v2, v1, v0}, Lcom/facebook/soloader/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

###### Class com.facebook.soloader.UnpackingSoSource.AnonymousClass1 (com.facebook.soloader.UnpackingSoSource$1)
.class Lcom/facebook/soloader/UnpackingSoSource$1;
.super Ljava/lang/Object;
.source "UnpackingSoSource.java"

# interfaces
.implements Ljava/io/FilenameFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/soloader/UnpackingSoSource;->deleteSoFiles()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/soloader/UnpackingSoSource;


# direct methods
.method constructor <init>(Lcom/facebook/soloader/UnpackingSoSource;)V
    .registers 2

    .line 142
    iput-object p1, p0, Lcom/facebook/soloader/UnpackingSoSource$1;->this$0:Lcom/facebook/soloader/UnpackingSoSource;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;Ljava/lang/String;)Z
    .registers 3

    .line 145
    const-string p1, "dso_state"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1a

    const-string p1, "dso_lock"

    .line 146
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1a

    const-string p1, "dso_deps"

    .line 147
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1a

    const/4 p1, 0x1

    return p1

    :cond_1a
    const/4 p1, 0x0

    return p1
.end method

###### Class com.facebook.soloader.UnpackingSoSource.AnonymousClass2 (com.facebook.soloader.UnpackingSoSource$2)
.class Lcom/facebook/soloader/UnpackingSoSource$2;
.super Ljava/lang/Object;
.source "UnpackingSoSource.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/soloader/UnpackingSoSource;->refreshLocked(Lcom/facebook/soloader/FileLocker;I)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/soloader/UnpackingSoSource;

.field final synthetic val$lock:Lcom/facebook/soloader/FileLocker;

.field final synthetic val$runFsync:Z

.field final synthetic val$stateFileName:Ljava/io/File;


# direct methods
.method constructor <init>(Lcom/facebook/soloader/UnpackingSoSource;ZLjava/io/File;Lcom/facebook/soloader/FileLocker;)V
    .registers 5

    .line 354
    iput-object p1, p0, Lcom/facebook/soloader/UnpackingSoSource$2;->this$0:Lcom/facebook/soloader/UnpackingSoSource;

    iput-boolean p2, p0, Lcom/facebook/soloader/UnpackingSoSource$2;->val$runFsync:Z

    iput-object p3, p0, Lcom/facebook/soloader/UnpackingSoSource$2;->val$stateFileName:Ljava/io/File;

    iput-object p4, p0, Lcom/facebook/soloader/UnpackingSoSource$2;->val$lock:Lcom/facebook/soloader/FileLocker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .line 357
    const-string v0, " (from syncer thread)"

    .line 0
    const-string v1, "releasing dso store lock for "

    .line 357
    const-string v2, "starting syncer worker"

    const-string v3, "fb-UnpackingSoSource"

    invoke-static {v3, v2}, Lcom/facebook/soloader/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 360
    :try_start_b
    iget-boolean v2, p0, Lcom/facebook/soloader/UnpackingSoSource$2;->val$runFsync:Z

    if-eqz v2, :cond_16

    .line 361
    iget-object v2, p0, Lcom/facebook/soloader/UnpackingSoSource$2;->this$0:Lcom/facebook/soloader/UnpackingSoSource;

    iget-object v2, v2, Lcom/facebook/soloader/UnpackingSoSource;->soDirectory:Ljava/io/File;

    invoke-static {v2}, Lcom/facebook/soloader/SysUtil;->fsyncAll(Ljava/io/File;)V

    .line 363
    :cond_16
    iget-object v2, p0, Lcom/facebook/soloader/UnpackingSoSource$2;->val$stateFileName:Ljava/io/File;

    iget-boolean v4, p0, Lcom/facebook/soloader/UnpackingSoSource$2;->val$runFsync:Z

    const/4 v5, 0x1

    invoke-static {v2, v5, v4}, Lcom/facebook/soloader/UnpackingSoSource;->access$100(Ljava/io/File;BZ)V
    :try_end_1e
    .catchall {:try_start_b .. :try_end_1e} :catchall_3a

    .line 365
    :try_start_1e
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/facebook/soloader/UnpackingSoSource$2;->this$0:Lcom/facebook/soloader/UnpackingSoSource;

    iget-object v1, v1, Lcom/facebook/soloader/UnpackingSoSource;->soDirectory:Ljava/io/File;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/facebook/soloader/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 367
    iget-object v0, p0, Lcom/facebook/soloader/UnpackingSoSource$2;->val$lock:Lcom/facebook/soloader/FileLocker;

    invoke-virtual {v0}, Lcom/facebook/soloader/FileLocker;->close()V

    return-void

    :catchall_3a
    move-exception v2

    .line 365
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/facebook/soloader/UnpackingSoSource$2;->this$0:Lcom/facebook/soloader/UnpackingSoSource;

    iget-object v1, v1, Lcom/facebook/soloader/UnpackingSoSource;->soDirectory:Ljava/io/File;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/facebook/soloader/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 367
    iget-object v0, p0, Lcom/facebook/soloader/UnpackingSoSource$2;->val$lock:Lcom/facebook/soloader/FileLocker;

    invoke-virtual {v0}, Lcom/facebook/soloader/FileLocker;->close()V

    .line 368
    throw v2
    :try_end_57
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_57} :catch_57

    :catch_57
    move-exception v0

    .line 370
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

###### Class com.facebook.soloader.UnpackingSoSource.Dso (com.facebook.soloader.UnpackingSoSource$Dso)
.class public Lcom/facebook/soloader/UnpackingSoSource$Dso;
.super Ljava/lang/Object;
.source "UnpackingSoSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/soloader/UnpackingSoSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Dso"
.end annotation


# instance fields
.field public final hash:Ljava/lang/String;

.field public final name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    iput-object p1, p0, Lcom/facebook/soloader/UnpackingSoSource$Dso;->name:Ljava/lang/String;

    .line 98
    iput-object p2, p0, Lcom/facebook/soloader/UnpackingSoSource$Dso;->hash:Ljava/lang/String;

    return-void
.end method

###### Class com.facebook.soloader.UnpackingSoSource.InputDso (com.facebook.soloader.UnpackingSoSource$InputDso)
.class public final Lcom/facebook/soloader/UnpackingSoSource$InputDso;
.super Ljava/lang/Object;
.source "UnpackingSoSource.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/soloader/UnpackingSoSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1c
    name = "InputDso"
.end annotation


# instance fields
.field private final content:Ljava/io/InputStream;

.field private final dso:Lcom/facebook/soloader/UnpackingSoSource$Dso;


# direct methods
.method public constructor <init>(Lcom/facebook/soloader/UnpackingSoSource$Dso;Ljava/io/InputStream;)V
    .registers 3

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    iput-object p1, p0, Lcom/facebook/soloader/UnpackingSoSource$InputDso;->dso:Lcom/facebook/soloader/UnpackingSoSource$Dso;

    .line 108
    iput-object p2, p0, Lcom/facebook/soloader/UnpackingSoSource$InputDso;->content:Ljava/io/InputStream;

    return-void
.end method

.method static synthetic access$000(Lcom/facebook/soloader/UnpackingSoSource$InputDso;)Ljava/io/InputStream;
    .registers 1

    .line 102
    iget-object p0, p0, Lcom/facebook/soloader/UnpackingSoSource$InputDso;->content:Ljava/io/InputStream;

    return-object p0
.end method


# virtual methods
.method public available()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 116
    iget-object v0, p0, Lcom/facebook/soloader/UnpackingSoSource$InputDso;->content:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    return v0
.end method

.method public close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 121
    iget-object v0, p0, Lcom/facebook/soloader/UnpackingSoSource$InputDso;->content:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    return-void
.end method

.method public getDso()Lcom/facebook/soloader/UnpackingSoSource$Dso;
    .registers 2

    .line 112
    iget-object v0, p0, Lcom/facebook/soloader/UnpackingSoSource$InputDso;->dso:Lcom/facebook/soloader/UnpackingSoSource$Dso;

    return-object v0
.end method

###### Class com.facebook.soloader.UnpackingSoSource.Unpacker (com.facebook.soloader.UnpackingSoSource$Unpacker)
.class public abstract Lcom/facebook/soloader/UnpackingSoSource$Unpacker;
.super Ljava/lang/Object;
.source "UnpackingSoSource.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/soloader/UnpackingSoSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40c
    name = "Unpacker"
.end annotation


# direct methods
.method protected constructor <init>()V
    .registers 1

    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method public extractDso(Lcom/facebook/soloader/UnpackingSoSource$InputDso;[BLjava/io/File;)V
    .registers 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p3

    .line 174
    const-string v2, ")"

    const-string v3, " (writable: "

    const-string v4, " write permission from directory "

    const-string v5, "Error removing "

    const-string v6, "SoLoader"

    .line 0
    const-string v0, "cannot make file executable: "

    const-string v7, "error extracting dso  "

    .line 174
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "extracting DSO "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lcom/facebook/soloader/UnpackingSoSource$InputDso;->getDso()Lcom/facebook/soloader/UnpackingSoSource$Dso;

    move-result-object v9

    iget-object v9, v9, Lcom/facebook/soloader/UnpackingSoSource$Dso;->name:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "fb-UnpackingSoSource"

    invoke-static {v9, v8}, Lcom/facebook/soloader/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    new-instance v8, Ljava/io/File;

    invoke-virtual/range {p1 .. p1}, Lcom/facebook/soloader/UnpackingSoSource$InputDso;->getDso()Lcom/facebook/soloader/UnpackingSoSource$Dso;

    move-result-object v10

    iget-object v10, v10, Lcom/facebook/soloader/UnpackingSoSource$Dso;->name:Ljava/lang/String;

    invoke-direct {v8, v1, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 176
    :try_start_34
    new-instance v11, Ljava/io/RandomAccessFile;

    const-string v12, "rw"

    invoke-direct {v11, v8, v12}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_3b
    .catch Ljava/io/IOException; {:try_start_34 .. :try_end_3b} :catch_cc
    .catchall {:try_start_34 .. :try_end_3b} :catchall_ca

    .line 177
    :try_start_3b
    invoke-virtual/range {p1 .. p1}, Lcom/facebook/soloader/UnpackingSoSource$InputDso;->available()I

    move-result v12
    :try_end_3f
    .catchall {:try_start_3b .. :try_end_3f} :catchall_be

    const/4 v13, 0x1

    if-le v12, v13, :cond_56

    .line 179
    :try_start_42
    invoke-virtual {v11}, Ljava/io/RandomAccessFile;->getFD()Ljava/io/FileDescriptor;

    move-result-object v14
    :try_end_46
    .catchall {:try_start_42 .. :try_end_46} :catchall_4f

    move-object/from16 v16, v11

    int-to-long v10, v12

    :try_start_49
    invoke-static {v14, v10, v11}, Lcom/facebook/soloader/SysUtil;->fallocateIfSupported(Ljava/io/FileDescriptor;J)V
    :try_end_4c
    .catchall {:try_start_49 .. :try_end_4c} :catchall_4d

    goto :goto_58

    :catchall_4d
    move-exception v0

    goto :goto_52

    :catchall_4f
    move-exception v0

    move-object/from16 v16, v11

    :goto_52
    move-object v10, v0

    move-object/from16 v14, v16

    goto :goto_c1

    :cond_56
    move-object/from16 v16, v11

    .line 181
    :goto_58
    :try_start_58
    invoke-static/range {p1 .. p1}, Lcom/facebook/soloader/UnpackingSoSource$InputDso;->access$000(Lcom/facebook/soloader/UnpackingSoSource$InputDso;)Ljava/io/InputStream;

    move-result-object v10
    :try_end_5c
    .catchall {:try_start_58 .. :try_end_5c} :catchall_ba

    const v11, 0x7fffffff

    move-object/from16 v12, p2

    move-object/from16 v14, v16

    :try_start_63
    invoke-static {v14, v10, v11, v12}, Lcom/facebook/soloader/SysUtil;->copyBytes(Ljava/io/RandomAccessFile;Ljava/io/InputStream;I[B)I

    .line 182
    invoke-virtual {v14}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v10

    invoke-virtual {v14, v10, v11}, Ljava/io/RandomAccessFile;->setLength(J)V

    const/4 v15, 0x0

    .line 183
    invoke-virtual {v8, v13, v15}, Ljava/io/File;->setExecutable(ZZ)Z

    move-result v10
    :try_end_72
    .catchall {:try_start_63 .. :try_end_72} :catchall_b8

    if-eqz v10, :cond_a6

    .line 186
    :try_start_74
    invoke-virtual {v14}, Ljava/io/RandomAccessFile;->close()V
    :try_end_77
    .catch Ljava/io/IOException; {:try_start_74 .. :try_end_77} :catch_cc
    .catchall {:try_start_74 .. :try_end_77} :catchall_ca

    .line 191
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_a5

    invoke-virtual {v8, v15}, Ljava/io/File;->setWritable(Z)Z

    move-result v0

    if-nez v0, :cond_a5

    .line 192
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    invoke-virtual {v1}, Ljava/io/File;->canWrite()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 192
    invoke-static {v6, v0}, Lcom/facebook/soloader/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a5
    return-void

    .line 184
    :cond_a6
    :try_start_a6
    new-instance v10, Ljava/io/IOException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v10, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v10
    :try_end_b8
    .catchall {:try_start_a6 .. :try_end_b8} :catchall_b8

    :catchall_b8
    move-exception v0

    goto :goto_c0

    :catchall_ba
    move-exception v0

    move-object/from16 v14, v16

    goto :goto_c0

    :catchall_be
    move-exception v0

    move-object v14, v11

    :goto_c0
    move-object v10, v0

    .line 176
    :goto_c1
    :try_start_c1
    invoke-virtual {v14}, Ljava/io/RandomAccessFile;->close()V
    :try_end_c4
    .catchall {:try_start_c1 .. :try_end_c4} :catchall_c5

    goto :goto_c9

    :catchall_c5
    move-exception v0

    :try_start_c6
    invoke-virtual {v10, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_c9
    throw v10
    :try_end_ca
    .catch Ljava/io/IOException; {:try_start_c6 .. :try_end_ca} :catch_cc
    .catchall {:try_start_c6 .. :try_end_ca} :catchall_ca

    :catchall_ca
    move-exception v0

    goto :goto_e8

    :catch_cc
    move-exception v0

    .line 187
    :try_start_cd
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " due to: "

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v9, v7}, Lcom/facebook/soloader/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    invoke-static {v8}, Lcom/facebook/soloader/SysUtil;->dumbDelete(Ljava/io/File;)V

    .line 189
    throw v0
    :try_end_e8
    .catchall {:try_start_cd .. :try_end_e8} :catchall_ca

    .line 191
    :goto_e8
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_117

    const/4 v15, 0x0

    invoke-virtual {v8, v15}, Ljava/io/File;->setWritable(Z)Z

    move-result v7

    if-nez v7, :cond_117

    .line 192
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    invoke-virtual {v1}, Ljava/io/File;->canWrite()Z

    move-result v1

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 192
    invoke-static {v6, v1}, Lcom/facebook/soloader/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    :cond_117
    throw v0
.end method

.method public abstract getDsos()[Lcom/facebook/soloader/UnpackingSoSource$Dso;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract unpack(Ljava/io/File;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
