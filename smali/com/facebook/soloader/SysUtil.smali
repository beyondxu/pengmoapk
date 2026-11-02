###### Class com.facebook.soloader.SysUtil (com.facebook.soloader.SysUtil)
.class public final Lcom/facebook/soloader/SysUtil;
.super Ljava/lang/Object;
.source "SysUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/soloader/SysUtil$MarshmallowSysdeps;,
        Lcom/facebook/soloader/SysUtil$LollipopSysdeps;
    }
.end annotation


# static fields
.field private static final APK_DEP_BLOCK_METADATA_LENGTH:J = 0x14L

.field private static final APK_SIGNATURE_VERSION:B = 0x1t

.field private static final TAG:Ljava/lang/String; = "SysUtil"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static copyBytes(Ljava/io/RandomAccessFile;Ljava/io/InputStream;I[B)I
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_2
    if-ge v1, p2, :cond_17

    .line 319
    array-length v2, p3

    sub-int v3, p2, v1

    .line 320
    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-virtual {p1, p3, v0, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_17

    .line 321
    invoke-virtual {p0, p3, v0, v2}, Ljava/io/RandomAccessFile;->write([BII)V

    add-int/2addr v1, v2

    goto :goto_2

    :cond_17
    return v1
.end method

.method public static deleteOrThrow(Ljava/io/File;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 78
    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_26

    .line 80
    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result v1

    if-nez v1, :cond_26

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/io/File;->setWritable(Z)Z

    move-result v1

    if-nez v1, :cond_26

    .line 81
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Enable write permission failed: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SysUtil"

    invoke-static {v1, v0}, Lcom/facebook/soloader/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    :cond_26
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_47

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_33

    goto :goto_47

    .line 85
    :cond_33
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Could not delete file "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_47
    :goto_47
    return-void
.end method

.method public static dumbDelete(Ljava/io/File;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 130
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    .line 131
    invoke-virtual {v0, p0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 133
    :cond_d
    :goto_d
    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_39

    .line 134
    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    .line 135
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_23

    .line 136
    invoke-static {v1}, Lcom/facebook/soloader/SysUtil;->deleteOrThrow(Ljava/io/File;)V

    goto :goto_d

    .line 139
    :cond_23
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 140
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    if-nez v1, :cond_2d

    goto :goto_d

    .line 144
    :cond_2d
    array-length v2, v1

    const/4 v3, 0x0

    :goto_2f
    if-ge v3, v2, :cond_d

    aget-object v4, v1, v3

    .line 145
    invoke-virtual {v0, v4}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_2f

    .line 149
    :cond_39
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_3f
    if-ltz v0, :cond_4d

    .line 150
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    invoke-static {v1}, Lcom/facebook/soloader/SysUtil;->deleteOrThrow(Ljava/io/File;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_3f

    :cond_4d
    return-void
.end method

.method public static fallocateIfSupported(Ljava/io/FileDescriptor;J)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 115
    invoke-static {p0, p1, p2}, Lcom/facebook/soloader/SysUtil$LollipopSysdeps;->fallocateIfSupported(Ljava/io/FileDescriptor;J)V

    return-void
.end method

.method public static findAbiScore([Ljava/lang/String;Ljava/lang/String;)I
    .registers 4

    const/4 v0, 0x0

    .line 68
    :goto_1
    array-length v1, p0

    if-ge v0, v1, :cond_12

    .line 69
    aget-object v1, p0, v0

    if-eqz v1, :cond_f

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    return v0

    :cond_f
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_12
    const/4 p0, -0x1

    return p0
.end method

.method public static fsyncAll(Ljava/io/File;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 328
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    .line 329
    invoke-virtual {v0, p0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 330
    :cond_8
    :goto_8
    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_8a

    .line 331
    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/io/File;

    .line 332
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_40

    .line 333
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_2c

    .line 337
    array-length p0, v1

    const/4 v2, 0x0

    :goto_22
    if-ge v2, p0, :cond_8

    aget-object v3, v1, v2

    .line 338
    invoke-virtual {v0, v3}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_22

    .line 335
    :cond_2c
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "cannot list directory "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 340
    :cond_40
    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string v2, "_lock"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 343
    :try_start_4c
    new-instance v1, Ljava/io/RandomAccessFile;

    const-string v2, "r"

    invoke-direct {v1, p0, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_53
    .catch Ljava/io/IOException; {:try_start_4c .. :try_end_53} :catch_68

    .line 344
    :try_start_53
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->getFD()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/FileDescriptor;->sync()V
    :try_end_5a
    .catchall {:try_start_53 .. :try_end_5a} :catchall_5e

    .line 345
    :try_start_5a
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_5d
    .catch Ljava/io/IOException; {:try_start_5a .. :try_end_5d} :catch_68

    goto :goto_8

    :catchall_5e
    move-exception v2

    .line 343
    :try_start_5f
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_62
    .catchall {:try_start_5f .. :try_end_62} :catchall_63

    goto :goto_67

    :catchall_63
    move-exception v1

    :try_start_64
    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_67
    throw v2
    :try_end_68
    .catch Ljava/io/IOException; {:try_start_64 .. :try_end_68} :catch_68

    :catch_68
    move-exception v1

    .line 346
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Syncing failed for "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ": "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "SysUtil"

    invoke-static {v1, p0}, Lcom/facebook/soloader/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_8

    :cond_8a
    return-void
.end method

.method public static getApkDepBlockLength(Ljava/io/File;)J
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 364
    invoke-virtual {p0}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    move-result-object p0

    .line 367
    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    int-to-long v0, p0

    const-wide/16 v2, 0x2

    mul-long v0, v0, v2

    invoke-static {v0, v1}, Lcom/facebook/soloader/SysUtil;->getParcelPadSize(J)J

    move-result-wide v0

    const-wide/16 v2, 0x14

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public static getAppVersionCode(Landroid/content/Context;)I
    .registers 3

    .line 395
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_12

    .line 398
    :try_start_7
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    .line 399
    iget p0, p0, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_11
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_7 .. :try_end_11} :catch_12
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_11} :catch_12

    return p0

    :catch_12
    :cond_12
    return v1
.end method

.method public static getBaseName(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    const/16 v0, 0x2e

    .line 471
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    if-lez v0, :cond_d

    const/4 v1, 0x0

    .line 473
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_d
    return-object p0
.end method

.method public static getClassLoaderLdLoadLibrary()Ljava/lang/String;
    .registers 4
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 504
    const-class v0, Lcom/facebook/soloader/SoLoader;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    if-eqz v0, :cond_2e

    .line 506
    instance-of v1, v0, Ldalvik/system/BaseDexClassLoader;

    if-eqz v1, :cond_d

    goto :goto_2e

    .line 507
    :cond_d
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ClassLoader "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 509
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " should be of type BaseDexClassLoader"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2e
    :goto_2e
    const/4 v1, 0x0

    .line 513
    :try_start_2f
    check-cast v0, Ldalvik/system/BaseDexClassLoader;

    .line 514
    const-class v2, Ldalvik/system/BaseDexClassLoader;

    const-string v3, "getLdLibraryPath"

    invoke-virtual {v2, v3, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 516
    invoke-virtual {v2, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_3f} :catch_40

    return-object v0

    :catch_40
    move-exception v0

    .line 518
    const-string v2, "SysUtil"

    const-string v3, "Cannot call getLdLibraryPath"

    invoke-static {v2, v3, v0}, Lcom/facebook/soloader/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v1
.end method

.method public static getFileLocker(Ljava/io/File;)Lcom/facebook/soloader/FileLocker;
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 461
    invoke-static {p0}, Lcom/facebook/soloader/FileLocker;->lock(Ljava/io/File;)Lcom/facebook/soloader/FileLocker;

    move-result-object p0

    return-object p0
.end method

.method public static getNativeLoadRuntimeMethod()Ljava/lang/reflect/Method;
    .registers 7
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 531
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    const/4 v2, 0x0

    if-ge v0, v1, :cond_8

    return-object v2

    .line 538
    :cond_8
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1b

    if-le v0, v1, :cond_f

    return-object v2

    .line 544
    :cond_f
    :try_start_f
    const-class v0, Ljava/lang/Runtime;

    const-string v1, "nativeLoad"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-class v5, Ljava/lang/ClassLoader;

    const/4 v6, 0x1

    aput-object v5, v3, v6

    const/4 v5, 0x2

    aput-object v4, v3, v5

    .line 545
    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 547
    invoke-virtual {v0, v6}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_2a} :catch_2b

    return-object v0

    :catch_2b
    move-exception v0

    .line 550
    const-string v1, "SysUtil"

    const-string v3, "Cannot get nativeLoad method"

    invoke-static {v1, v3, v0}, Lcom/facebook/soloader/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v2
.end method

.method public static getOrCreateLockOnDir(Ljava/io/File;Ljava/io/File;)Lcom/facebook/soloader/FileLocker;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 444
    const-string v0, " write permission"

    const-string v1, "error removing "

    const-string v2, "SysUtil"

    const/4 v3, 0x0

    .line 446
    :try_start_7
    invoke-static {p1}, Lcom/facebook/soloader/SysUtil;->getFileLocker(Ljava/io/File;)Lcom/facebook/soloader/FileLocker;

    move-result-object p0
    :try_end_b
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_b} :catch_f
    .catchall {:try_start_7 .. :try_end_b} :catchall_c

    return-object p0

    :catchall_c
    move-exception p1

    const/4 v5, 0x0

    goto :goto_3a

    :catch_f
    move-exception v4

    const/4 v5, 0x1

    .line 449
    :try_start_11
    invoke-virtual {p0, v5}, Ljava/io/File;->setWritable(Z)Z

    move-result v6

    if-eqz v6, :cond_38

    .line 452
    invoke-static {p1}, Lcom/facebook/soloader/SysUtil;->getFileLocker(Ljava/io/File;)Lcom/facebook/soloader/FileLocker;

    move-result-object p1
    :try_end_1b
    .catchall {:try_start_11 .. :try_end_1b} :catchall_39

    .line 454
    invoke-virtual {p0, v3}, Ljava/io/File;->setWritable(Z)Z

    move-result v3

    if-nez v3, :cond_37

    .line 455
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/facebook/soloader/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_37
    return-object p1

    .line 450
    :cond_38
    :try_start_38
    throw v4
    :try_end_39
    .catchall {:try_start_38 .. :try_end_39} :catchall_39

    :catchall_39
    move-exception p1

    :goto_3a
    if-eqz v5, :cond_58

    .line 454
    invoke-virtual {p0, v3}, Ljava/io/File;->setWritable(Z)Z

    move-result v3

    if-nez v3, :cond_58

    .line 455
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/facebook/soloader/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 457
    :cond_58
    throw p1
.end method

.method private static getParcelPadSize(J)J
    .registers 6

    const-wide/16 v0, 0x4

    .line 353
    rem-long v2, p0, v0

    sub-long v2, v0, v2

    rem-long/2addr v2, v0

    add-long/2addr p0, v2

    return-wide p0
.end method

.method public static getSupportedAbis()[Ljava/lang/String;
    .registers 2

    .line 97
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_b

    .line 98
    invoke-static {}, Lcom/facebook/soloader/SysUtil$MarshmallowSysdeps;->getSupportedAbis()[Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 100
    :cond_b
    invoke-static {}, Lcom/facebook/soloader/SysUtil$LollipopSysdeps;->getSupportedAbis()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static is64Bit()Z
    .registers 3

    .line 414
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_b

    .line 415
    invoke-static {}, Lcom/facebook/soloader/SysUtil$MarshmallowSysdeps;->is64Bit()Z

    move-result v0

    return v0

    .line 418
    :cond_b
    :try_start_b
    invoke-static {}, Lcom/facebook/soloader/SysUtil$LollipopSysdeps;->is64Bit()Z

    move-result v0
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_f} :catch_10

    return v0

    :catch_10
    move-exception v0

    .line 420
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const-string v0, "Could not read /proc/self/exe. Err msg: %s"

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "SysUtil"

    invoke-static {v1, v0}, Lcom/facebook/soloader/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v2
.end method

.method public static isDisabledExtractNativeLibs(Landroid/content/Context;)Z
    .registers 3

    .line 436
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_b

    .line 437
    invoke-static {p0}, Lcom/facebook/soloader/SysUtil$MarshmallowSysdeps;->isDisabledExtractNativeLibs(Landroid/content/Context;)Z

    move-result p0

    return p0

    :cond_b
    const/4 p0, 0x0

    return p0
.end method

.method public static isSupportedDirectLoad(Landroid/content/Context;I)Z
    .registers 4
    .param p0    # Landroid/content/Context;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 427
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_b

    .line 430
    invoke-static {p0, p1}, Lcom/facebook/soloader/SysUtil$MarshmallowSysdeps;->isSupportedDirectLoad(Landroid/content/Context;I)Z

    move-result p0

    return p0

    :cond_b
    const/4 p0, 0x0

    return p0
.end method

.method public static makeApkDepBlock(Ljava/io/File;Landroid/content/Context;)[B
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 381
    invoke-virtual {p0}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    move-result-object p0

    .line 382
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    const/4 v1, 0x1

    .line 384
    :try_start_9
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeByte(B)V

    .line 385
    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 386
    invoke-virtual {p0}, Ljava/io/File;->lastModified()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 387
    invoke-static {p1}, Lcom/facebook/soloader/SysUtil;->getAppVersionCode(Landroid/content/Context;)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 388
    invoke-virtual {v0}, Landroid/os/Parcel;->marshall()[B

    move-result-object p0
    :try_end_25
    .catchall {:try_start_9 .. :try_end_25} :catchall_29

    .line 390
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p0

    :catchall_29
    move-exception p0

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 391
    throw p0
.end method

.method public static makeNonZipPath(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .param p0    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 483
    :cond_4
    const-string v0, ":"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 484
    new-instance v1, Ljava/util/ArrayList;

    array-length v2, p0

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 485
    array-length v2, p0

    const/4 v3, 0x0

    :goto_12
    if-ge v3, v2, :cond_25

    aget-object v4, p0, v3

    .line 490
    const-string v5, "!"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1f

    goto :goto_22

    .line 493
    :cond_1f
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_22
    add-int/lit8 v3, v3, 0x1

    goto :goto_12

    .line 496
    :cond_25
    invoke-static {v0, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static mkdirOrThrow(Ljava/io/File;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 300
    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-nez v0, :cond_21

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_21

    .line 301
    :cond_d
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "cannot mkdir: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_21
    :goto_21
    return-void
.end method

###### Class com.facebook.soloader.SysUtil.LollipopSysdeps (com.facebook.soloader.SysUtil$LollipopSysdeps)
.class final Lcom/facebook/soloader/SysUtil$LollipopSysdeps;
.super Ljava/lang/Object;
.source "SysUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/soloader/SysUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "LollipopSysdeps"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fallocateIfSupported(Ljava/io/FileDescriptor;J)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    .line 204
    :try_start_2
    invoke-static {p0, v0, v1, p1, p2}, Landroid/system/Os;->posix_fallocate(Ljava/io/FileDescriptor;JJ)V
    :try_end_5
    .catch Landroid/system/ErrnoException; {:try_start_2 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception p0

    .line 206
    iget p1, p0, Landroid/system/ErrnoException;->errno:I

    sget p2, Landroid/system/OsConstants;->EOPNOTSUPP:I

    if-eq p1, p2, :cond_24

    iget p1, p0, Landroid/system/ErrnoException;->errno:I

    sget p2, Landroid/system/OsConstants;->ENOSYS:I

    if-eq p1, p2, :cond_24

    iget p1, p0, Landroid/system/ErrnoException;->errno:I

    sget p2, Landroid/system/OsConstants;->EINVAL:I

    if-ne p1, p2, :cond_1a

    goto :goto_24

    .line 209
    :cond_1a
    new-instance p1, Ljava/io/IOException;

    invoke-virtual {p0}, Landroid/system/ErrnoException;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :cond_24
    :goto_24
    return-void
.end method

.method public static getSupportedAbis()[Ljava/lang/String;
    .registers 7

    .line 163
    sget-object v0, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    .line 164
    new-instance v1, Ljava/util/TreeSet;

    invoke-direct {v1}, Ljava/util/TreeSet;-><init>()V

    const/4 v2, 0x0

    .line 171
    :try_start_8
    invoke-static {}, Lcom/facebook/soloader/SysUtil$LollipopSysdeps;->is64Bit()Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 172
    const-string v3, "arm64-v8a"

    invoke-virtual {v1, v3}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 173
    const-string/jumbo v3, "x86_64"

    invoke-virtual {v1, v3}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    goto :goto_25

    .line 175
    :cond_1a
    const-string v3, "armeabi-v7a"

    invoke-virtual {v1, v3}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 176
    const-string/jumbo v3, "x86"

    invoke-virtual {v1, v3}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z
    :try_end_25
    .catch Landroid/system/ErrnoException; {:try_start_8 .. :try_end_25} :catch_48

    .line 188
    :goto_25
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 189
    array-length v4, v0

    :goto_2b
    if-ge v2, v4, :cond_3b

    aget-object v5, v0, v2

    .line 190
    invoke-virtual {v1, v5}, Ljava/util/TreeSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_38

    .line 191
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_38
    add-int/lit8 v2, v2, 0x1

    goto :goto_2b

    .line 195
    :cond_3b
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    .line 196
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0

    :catch_48
    move-exception v1

    .line 183
    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget v3, v1, Landroid/system/ErrnoException;->errno:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1}, Landroid/system/ErrnoException;->getMessage()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v2

    const/4 v0, 0x1

    aput-object v3, v4, v0

    const/4 v0, 0x2

    aput-object v1, v4, v0

    .line 181
    const-string v0, "Could not read /proc/self/exe. Falling back to default ABI list: %s. errno: %d Err msg: %s"

    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 179
    const-string v1, "SysUtil"

    invoke-static {v1, v0}, Lcom/facebook/soloader/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    sget-object v0, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    return-object v0
.end method

.method public static is64Bit()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .line 216
    const-string v0, "/proc/self/exe"

    invoke-static {v0}, Landroid/system/Os;->readlink(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "64"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

###### Class com.facebook.soloader.SysUtil.MarshmallowSysdeps (com.facebook.soloader.SysUtil$MarshmallowSysdeps)
.class final Lcom/facebook/soloader/SysUtil$MarshmallowSysdeps;
.super Ljava/lang/Object;
.source "SysUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/soloader/SysUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "MarshmallowSysdeps"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 222
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getSupportedAbis()[Ljava/lang/String;
    .registers 7

    .line 225
    sget-object v0, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    .line 226
    new-instance v1, Ljava/util/TreeSet;

    invoke-direct {v1}, Ljava/util/TreeSet;-><init>()V

    .line 232
    invoke-static {}, Lcom/facebook/soloader/SysUtil$MarshmallowSysdeps;->is64Bit()Z

    move-result v2

    if-eqz v2, :cond_19

    .line 233
    const-string v2, "arm64-v8a"

    invoke-virtual {v1, v2}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 234
    const-string/jumbo v2, "x86_64"

    invoke-virtual {v1, v2}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    goto :goto_24

    .line 236
    :cond_19
    const-string v2, "armeabi-v7a"

    invoke-virtual {v1, v2}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 237
    const-string/jumbo v2, "x86"

    invoke-virtual {v1, v2}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 241
    :goto_24
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 242
    array-length v3, v0

    const/4 v4, 0x0

    :goto_2b
    if-ge v4, v3, :cond_3b

    aget-object v5, v0, v4

    .line 243
    invoke-virtual {v1, v5}, Ljava/util/TreeSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_38

    .line 244
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_38
    add-int/lit8 v4, v4, 0x1

    goto :goto_2b

    .line 248
    :cond_3b
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    .line 249
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public static is64Bit()Z
    .registers 1

    .line 256
    invoke-static {}, Ldc/squareup/okio/Okio$$ExternalSyntheticApiModelOutline0;->m$1()Z

    move-result v0

    return v0
.end method

.method private static isApkUncompressedDso(Landroid/content/Context;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 273
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 274
    new-instance p0, Ljava/util/zip/ZipFile;

    invoke-direct {p0, v0}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V

    .line 275
    :try_start_10
    invoke-virtual {p0}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v0

    .line 276
    :cond_14
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_52

    .line 277
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/zip/ZipEntry;

    if-eqz v1, :cond_14

    .line 279
    invoke-virtual {v1}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, ".so"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_14

    .line 280
    invoke-virtual {v1}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "/lib"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_14

    .line 282
    invoke-virtual {v1}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "assets/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_14

    .line 284
    invoke-virtual {v1}, Ljava/util/zip/ZipEntry;->getMethod()I

    move-result v0
    :try_end_4b
    .catchall {:try_start_10 .. :try_end_4b} :catchall_56

    if-nez v0, :cond_4e

    const/4 v2, 0x1

    .line 287
    :cond_4e
    invoke-virtual {p0}, Ljava/util/zip/ZipFile;->close()V

    return v2

    :cond_52
    invoke-virtual {p0}, Ljava/util/zip/ZipFile;->close()V

    return v2

    :catchall_56
    move-exception v0

    .line 274
    :try_start_57
    invoke-virtual {p0}, Ljava/util/zip/ZipFile;->close()V
    :try_end_5a
    .catchall {:try_start_57 .. :try_end_5a} :catchall_5b

    goto :goto_5f

    :catchall_5b
    move-exception p0

    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_5f
    throw v0
.end method

.method public static isDisabledExtractNativeLibs(Landroid/content/Context;)Z
    .registers 2
    .param p0    # Landroid/content/Context;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p0, :cond_f

    .line 269
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    iget p0, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v0, 0x10000000

    and-int/2addr p0, v0

    if-nez p0, :cond_f

    const/4 p0, 0x1

    return p0

    :cond_f
    const/4 p0, 0x0

    return p0
.end method

.method public static isSupportedDirectLoad(Landroid/content/Context;I)Z
    .registers 3
    .param p0    # Landroid/content/Context;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x2

    if-ne p1, v0, :cond_5

    const/4 p0, 0x1

    return p0

    .line 263
    :cond_5
    invoke-static {p0}, Lcom/facebook/soloader/SysUtil$MarshmallowSysdeps;->isDisabledExtractNativeLibs(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method
