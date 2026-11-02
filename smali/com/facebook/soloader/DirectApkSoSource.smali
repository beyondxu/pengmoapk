###### Class com.facebook.soloader.DirectApkSoSource (com.facebook.soloader.DirectApkSoSource)
.class public Lcom/facebook/soloader/DirectApkSoSource;
.super Lcom/facebook/soloader/SoSource;
.source "DirectApkSoSource.java"

# interfaces
.implements Lcom/facebook/soloader/RecoverableSoSource;


# instance fields
.field private final mDepsCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mDirectApkLdPaths:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mLibsInApkCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 53
    invoke-direct {p0}, Lcom/facebook/soloader/SoSource;-><init>()V

    .line 47
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/facebook/soloader/DirectApkSoSource;->mLibsInApkCache:Ljava/util/Map;

    .line 49
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/facebook/soloader/DirectApkSoSource;->mDepsCache:Ljava/util/Map;

    .line 54
    invoke-static {p1}, Lcom/facebook/soloader/DirectApkSoSource;->getDirectApkLdPaths(Landroid/content/Context;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lcom/facebook/soloader/DirectApkSoSource;->mDirectApkLdPaths:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Ljava/util/Set;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 58
    invoke-direct {p0}, Lcom/facebook/soloader/SoSource;-><init>()V

    .line 47
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/facebook/soloader/DirectApkSoSource;->mLibsInApkCache:Ljava/util/Map;

    .line 49
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/facebook/soloader/DirectApkSoSource;->mDepsCache:Ljava/util/Map;

    .line 59
    iput-object p1, p0, Lcom/facebook/soloader/DirectApkSoSource;->mDirectApkLdPaths:Ljava/util/Set;

    return-void
.end method

.method private appendDepsCache(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 256
    iget-object v0, p0, Lcom/facebook/soloader/DirectApkSoSource;->mDepsCache:Ljava/util/Map;

    monitor-enter v0

    .line 257
    :try_start_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 258
    iget-object p2, p0, Lcom/facebook/soloader/DirectApkSoSource;->mDepsCache:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_24

    .line 259
    iget-object p2, p0, Lcom/facebook/soloader/DirectApkSoSource;->mDepsCache:Ljava/util/Map;

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    invoke-interface {p2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    :cond_24
    iget-object p2, p0, Lcom/facebook/soloader/DirectApkSoSource;->mDepsCache:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Set;

    invoke-interface {p1, p3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 262
    monitor-exit v0

    return-void

    :catchall_31
    move-exception p1

    monitor-exit v0
    :try_end_33
    .catchall {:try_start_3 .. :try_end_33} :catchall_31

    throw p1
.end method

.method private appendLibsInApkCache(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 247
    iget-object v0, p0, Lcom/facebook/soloader/DirectApkSoSource;->mLibsInApkCache:Ljava/util/Map;

    monitor-enter v0

    .line 248
    :try_start_3
    iget-object v1, p0, Lcom/facebook/soloader/DirectApkSoSource;->mLibsInApkCache:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_15

    .line 249
    iget-object v1, p0, Lcom/facebook/soloader/DirectApkSoSource;->mLibsInApkCache:Ljava/util/Map;

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    :cond_15
    iget-object v1, p0, Lcom/facebook/soloader/DirectApkSoSource;->mLibsInApkCache:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Set;

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 252
    monitor-exit v0

    return-void

    :catchall_22
    move-exception p1

    monitor-exit v0
    :try_end_24
    .catchall {:try_start_3 .. :try_end_24} :catchall_22

    throw p1
.end method

.method private buildLibDepsCache(Ljava/lang/String;Ljava/lang/String;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 206
    new-instance v0, Ljava/util/zip/ZipFile;

    invoke-static {p1}, Lcom/facebook/soloader/DirectApkSoSource;->getApkPathFromLdPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V

    .line 207
    :try_start_9
    invoke-virtual {v0}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v1

    .line 208
    :cond_d
    :goto_d
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_3a

    .line 209
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/zip/ZipEntry;

    if-eqz v2, :cond_d

    .line 210
    invoke-virtual {v2}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 211
    invoke-direct {p0, p1, v0, v2, p2}, Lcom/facebook/soloader/DirectApkSoSource;->buildLibDepsCacheImpl(Ljava/lang/String;Ljava/util/zip/ZipFile;Ljava/util/zip/ZipEntry;Ljava/lang/String;)V
    :try_end_39
    .catchall {:try_start_9 .. :try_end_39} :catchall_3e

    goto :goto_d

    .line 214
    :cond_3a
    invoke-virtual {v0}, Ljava/util/zip/ZipFile;->close()V

    return-void

    :catchall_3e
    move-exception p1

    .line 206
    :try_start_3f
    invoke-virtual {v0}, Ljava/util/zip/ZipFile;->close()V
    :try_end_42
    .catchall {:try_start_3f .. :try_end_42} :catchall_43

    goto :goto_47

    :catchall_43
    move-exception p2

    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_47
    throw p1
.end method

.method private buildLibDepsCacheImpl(Ljava/lang/String;Ljava/util/zip/ZipFile;Ljava/util/zip/ZipEntry;Ljava/lang/String;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 219
    new-instance v0, Lcom/facebook/soloader/ElfZipFileChannel;

    invoke-direct {v0, p2, p3}, Lcom/facebook/soloader/ElfZipFileChannel;-><init>(Ljava/util/zip/ZipFile;Ljava/util/zip/ZipEntry;)V

    .line 220
    :try_start_5
    invoke-static {p4, v0}, Lcom/facebook/soloader/NativeDeps;->getDependencies(Ljava/lang/String;Lcom/facebook/soloader/ElfByteChannel;)[Ljava/lang/String;

    move-result-object p2

    array-length p3, p2

    const/4 v1, 0x0

    :goto_b
    if-ge v1, p3, :cond_1e

    aget-object v2, p2, v1

    .line 221
    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_18

    goto :goto_1b

    .line 226
    :cond_18
    invoke-direct {p0, p1, p4, v2}, Lcom/facebook/soloader/DirectApkSoSource;->appendDepsCache(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1b
    .catchall {:try_start_5 .. :try_end_1b} :catchall_22

    :goto_1b
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 228
    :cond_1e
    invoke-interface {v0}, Lcom/facebook/soloader/ElfByteChannel;->close()V

    return-void

    :catchall_22
    move-exception p1

    .line 219
    :try_start_23
    invoke-interface {v0}, Lcom/facebook/soloader/ElfByteChannel;->close()V
    :try_end_26
    .catchall {:try_start_23 .. :try_end_26} :catchall_27

    goto :goto_2b

    :catchall_27
    move-exception p2

    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2b
    throw p1
.end method

.method private static getApkPathFromLdPath(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    const/16 v0, 0x21

    .line 273
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getDepsFromCache(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Set;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 266
    iget-object v0, p0, Lcom/facebook/soloader/DirectApkSoSource;->mDepsCache:Ljava/util/Map;

    monitor-enter v0

    .line 267
    :try_start_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 268
    iget-object p2, p0, Lcom/facebook/soloader/DirectApkSoSource;->mDepsCache:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Set;

    monitor-exit v0

    return-object p1

    :catchall_1c
    move-exception p1

    .line 269
    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_1c

    throw p1
.end method

.method static getDirectApkLdPaths(Landroid/content/Context;)Ljava/util/Set;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 116
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 118
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 119
    invoke-static {v1}, Lcom/facebook/soloader/DirectApkSoSource;->getFallbackApkLdPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_14

    .line 121
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 125
    :cond_14
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->splitSourceDirs:[Ljava/lang/String;

    if-eqz v1, :cond_34

    .line 126
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->splitSourceDirs:[Ljava/lang/String;

    array-length v1, p0

    const/4 v2, 0x0

    :goto_24
    if-ge v2, v1, :cond_34

    aget-object v3, p0, v2

    .line 127
    invoke-static {v3}, Lcom/facebook/soloader/DirectApkSoSource;->getFallbackApkLdPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_31

    .line 129
    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_31
    add-int/lit8 v2, v2, 0x1

    goto :goto_24

    :cond_34
    return-object v0
.end method

.method private static getFallbackApkLdPath(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 138
    invoke-static {}, Lcom/facebook/soloader/SysUtil;->getSupportedAbis()[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 139
    const-string v2, "null"

    const-string v3, "empty"

    const-string v4, "SoLoader"

    if-eqz p0, :cond_40

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_14

    goto :goto_40

    :cond_14
    if-eqz v0, :cond_32

    .line 145
    array-length v5, v0

    if-nez v5, :cond_1a

    goto :goto_32

    .line 152
    :cond_1a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "!/lib/"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p0, 0x0

    aget-object p0, v0, p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_32
    :goto_32
    if-nez v0, :cond_35

    goto :goto_36

    :cond_35
    move-object v2, v3

    .line 149
    :goto_36
    const-string p0, "Cannot compute fallback path, supportedAbis is "

    invoke-virtual {p0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 146
    invoke-static {v4, p0}, Lcom/facebook/soloader/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_40
    :goto_40
    if-nez p0, :cond_43

    goto :goto_44

    :cond_43
    move-object v2, v3

    .line 142
    :goto_44
    const-string p0, "Cannot compute fallback path, apk path is "

    invoke-virtual {p0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 140
    invoke-static {v4, p0}, Lcom/facebook/soloader/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method private loadDependencies(Ljava/lang/String;Ljava/lang/String;ILandroid/os/StrictMode$ThreadPolicy;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 158
    invoke-direct {p0, p1, p2}, Lcom/facebook/soloader/DirectApkSoSource;->getDepsFromCache(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    if-nez v0, :cond_d

    .line 160
    invoke-direct {p0, p1, p2}, Lcom/facebook/soloader/DirectApkSoSource;->buildLibDepsCache(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    invoke-direct {p0, p1, p2}, Lcom/facebook/soloader/DirectApkSoSource;->getDepsFromCache(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    :cond_d
    if-eqz v0, :cond_23

    .line 165
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_13
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_23

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 166
    invoke-static {p2, p3, p4}, Lcom/facebook/soloader/SoLoader;->loadDependency(Ljava/lang/String;ILandroid/os/StrictMode$ThreadPolicy;)V

    goto :goto_13

    :cond_23
    return-void
.end method

.method private prepare()V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 178
    iget-object v0, p0, Lcom/facebook/soloader/DirectApkSoSource;->mDirectApkLdPaths:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 179
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2d

    const/16 v3, 0x21

    .line 180
    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-ltz v3, :cond_2d

    add-int/lit8 v3, v3, 0x2

    .line 181
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_2d

    .line 183
    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 186
    :cond_2d
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_34

    goto :goto_7

    .line 189
    :cond_34
    new-instance v3, Ljava/util/zip/ZipFile;

    invoke-static {v2}, Lcom/facebook/soloader/DirectApkSoSource;->getApkPathFromLdPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V

    .line 190
    :try_start_3d
    invoke-virtual {v3}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v4

    .line 191
    :cond_41
    :goto_41
    invoke-interface {v4}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_7d

    .line 192
    invoke-interface {v4}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/zip/ZipEntry;

    if-eqz v5, :cond_41

    .line 194
    invoke-virtual {v5}, Ljava/util/zip/ZipEntry;->getMethod()I

    move-result v6

    if-nez v6, :cond_41

    .line 195
    invoke-virtual {v5}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_41

    .line 196
    invoke-virtual {v5}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, ".so"

    invoke-virtual {v6, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_41

    .line 197
    invoke-virtual {v5}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 198
    invoke-direct {p0, v2, v5}, Lcom/facebook/soloader/DirectApkSoSource;->appendLibsInApkCache(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7c
    .catchall {:try_start_3d .. :try_end_7c} :catchall_81

    goto :goto_41

    .line 201
    :cond_7d
    invoke-virtual {v3}, Ljava/util/zip/ZipFile;->close()V

    goto :goto_7

    :catchall_81
    move-exception v0

    .line 189
    :try_start_82
    invoke-virtual {v3}, Ljava/util/zip/ZipFile;->close()V
    :try_end_85
    .catchall {:try_start_82 .. :try_end_85} :catchall_86

    goto :goto_8a

    :catchall_86
    move-exception v1

    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_8a
    throw v0

    :cond_8b
    return-void
.end method


# virtual methods
.method public getLibraryPath(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 106
    iget-object v0, p0, Lcom/facebook/soloader/DirectApkSoSource;->mDirectApkLdPaths:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 107
    iget-object v2, p0, Lcom/facebook/soloader/DirectApkSoSource;->mLibsInApkCache:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    .line 108
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6

    if-eqz v2, :cond_6

    invoke-interface {v2, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 109
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_3d
    const/4 p1, 0x0

    return-object p1
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 233
    const-string v0, "DirectApkSoSource"

    return-object v0
.end method

.method public isValid()Z
    .registers 2

    .line 100
    iget-object v0, p0, Lcom/facebook/soloader/DirectApkSoSource;->mDirectApkLdPaths:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public loadLibrary(Ljava/lang/String;ILandroid/os/StrictMode$ThreadPolicy;)I
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 65
    sget-object v0, Lcom/facebook/soloader/SoLoader;->sSoFileLoader:Lcom/facebook/soloader/SoFileLoader;

    if-eqz v0, :cond_a0

    .line 69
    iget-object v0, p0, Lcom/facebook/soloader/DirectApkSoSource;->mDirectApkLdPaths:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 70
    iget-object v2, p0, Lcom/facebook/soloader/DirectApkSoSource;->mLibsInApkCache:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    .line 71
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const-string v4, " not found on "

    const-string v5, "SoLoader"

    if-nez v3, :cond_87

    if-eqz v2, :cond_87

    invoke-interface {v2, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_31

    goto :goto_87

    .line 76
    :cond_31
    invoke-direct {p0, v1, p1, p2, p3}, Lcom/facebook/soloader/DirectApkSoSource;->loadDependencies(Ljava/lang/String;Ljava/lang/String;ILandroid/os/StrictMode$ThreadPolicy;)V

    .line 79
    :try_start_34
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    or-int/lit8 p2, p2, 0x4

    .line 81
    sget-object v3, Lcom/facebook/soloader/SoLoader;->sSoFileLoader:Lcom/facebook/soloader/SoFileLoader;

    invoke-interface {v3, v2, p2}, Lcom/facebook/soloader/SoFileLoader;->load(Ljava/lang/String;I)V
    :try_end_4f
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_34 .. :try_end_4f} :catch_68

    .line 88
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " found on "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1}, Lcom/facebook/soloader/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1

    :catch_68
    move-exception v2

    .line 83
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " flag: "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1, v2}, Lcom/facebook/soloader/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_a

    .line 72
    :cond_87
    :goto_87
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Lcom/facebook/soloader/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_a

    :cond_9e
    const/4 p1, 0x0

    return p1

    .line 66
    :cond_a0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "SoLoader.init() not yet called"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected prepare(I)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 173
    invoke-direct {p0}, Lcom/facebook/soloader/DirectApkSoSource;->prepare()V

    return-void
.end method

.method public recover(Landroid/content/Context;)Lcom/facebook/soloader/SoSource;
    .registers 3

    .line 278
    new-instance v0, Lcom/facebook/soloader/DirectApkSoSource;

    invoke-direct {v0, p1}, Lcom/facebook/soloader/DirectApkSoSource;-><init>(Landroid/content/Context;)V

    .line 280
    :try_start_5
    invoke-direct {v0}, Lcom/facebook/soloader/DirectApkSoSource;->prepare()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_8} :catch_9

    return-object v0

    :catch_9
    move-exception p1

    .line 282
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 238
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 239
    invoke-virtual {p0}, Lcom/facebook/soloader/DirectApkSoSource;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "[root = "

    .line 240
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/facebook/soloader/DirectApkSoSource;->mDirectApkLdPaths:Ljava/util/Set;

    .line 241
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    .line 242
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 243
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public unpackLibrary(Ljava/lang/String;)Ljava/io/File;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 96
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "DirectAPKSoSource doesn\'t support unpackLibrary"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
