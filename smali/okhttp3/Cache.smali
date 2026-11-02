###### Class okhttp3.Cache (okhttp3.Cache)
.class public final Lokhttp3/Cache;
.super Ljava/lang/Object;
.source "Cache.java"

# interfaces
.implements Ljava/io/Closeable;
.implements Ljava/io/Flushable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/Cache$CacheResponseBody;,
        Lokhttp3/Cache$Entry;,
        Lokhttp3/Cache$CacheRequestImpl;
    }
.end annotation


# static fields
.field private static final ENTRY_BODY:I = 0x1

.field private static final ENTRY_COUNT:I = 0x2

.field private static final ENTRY_METADATA:I = 0x0

.field private static final VERSION:I = 0x31191


# instance fields
.field final cache:Lokhttp3/internal/cache/DiskLruCache;

.field private hitCount:I

.field final internalCache:Lokhttp3/internal/cache/InternalCache;

.field private networkCount:I

.field private requestCount:I

.field writeAbortCount:I

.field writeSuccessCount:I


# direct methods
.method public constructor <init>(Ljava/io/File;J)V
    .registers 5

    .line 182
    sget-object v0, Lokhttp3/internal/io/FileSystem;->SYSTEM:Lokhttp3/internal/io/FileSystem;

    invoke-direct {p0, p1, p2, p3, v0}, Lokhttp3/Cache;-><init>(Ljava/io/File;JLokhttp3/internal/io/FileSystem;)V

    return-void
.end method

.method constructor <init>(Ljava/io/File;JLokhttp3/internal/io/FileSystem;)V
    .registers 12

    .line 185
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 143
    new-instance v0, Lokhttp3/Cache$1;

    invoke-direct {v0, p0}, Lokhttp3/Cache$1;-><init>(Lokhttp3/Cache;)V

    iput-object v0, p0, Lokhttp3/Cache;->internalCache:Lokhttp3/internal/cache/InternalCache;

    const v3, 0x31191

    const/4 v4, 0x2

    move-object v2, p1

    move-wide v5, p2

    move-object v1, p4

    .line 186
    invoke-static/range {v1 .. v6}, Lokhttp3/internal/cache/DiskLruCache;->create(Lokhttp3/internal/io/FileSystem;Ljava/io/File;IIJ)Lokhttp3/internal/cache/DiskLruCache;

    move-result-object p1

    iput-object p1, p0, Lokhttp3/Cache;->cache:Lokhttp3/internal/cache/DiskLruCache;

    return-void
.end method

.method private abortQuietly(Lokhttp3/internal/cache/DiskLruCache$Editor;)V
    .registers 2
    .param p1    # Lokhttp3/internal/cache/DiskLruCache$Editor;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_5

    .line 284
    :try_start_2
    invoke-virtual {p1}, Lokhttp3/internal/cache/DiskLruCache$Editor;->abort()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_5} :catch_5

    :catch_5
    :cond_5
    return-void
.end method

.method public static key(Lokhttp3/HttpUrl;)Ljava/lang/String;
    .registers 1

    .line 190
    invoke-virtual {p0}, Lokhttp3/HttpUrl;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lokio/ByteString;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object p0

    invoke-virtual {p0}, Lokio/ByteString;->md5()Lokio/ByteString;

    move-result-object p0

    invoke-virtual {p0}, Lokio/ByteString;->hex()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static readInt(Lokio/BufferedSource;)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "expected an int but was \""

    .line 726
    :try_start_2
    invoke-interface {p0}, Lokio/BufferedSource;->readDecimalLong()J

    move-result-wide v1

    .line 727
    invoke-interface {p0}, Lokio/BufferedSource;->readUtf8LineStrict()Ljava/lang/String;

    move-result-object p0

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-ltz v5, :cond_1f

    const-wide/32 v3, 0x7fffffff

    cmp-long v5, v1, v3

    if-gtz v5, :cond_1f

    .line 728
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1f

    long-to-int p0, v1

    return p0

    .line 729
    :cond_1f
    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\""

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v3, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_39
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_39} :catch_39

    :catch_39
    move-exception p0

    .line 733
    new-instance v0, Ljava/io/IOException;

    invoke-virtual {p0}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 395
    iget-object v0, p0, Lokhttp3/Cache;->cache:Lokhttp3/internal/cache/DiskLruCache;

    invoke-virtual {v0}, Lokhttp3/internal/cache/DiskLruCache;->close()V

    return-void
.end method

.method public delete()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 310
    iget-object v0, p0, Lokhttp3/Cache;->cache:Lokhttp3/internal/cache/DiskLruCache;

    invoke-virtual {v0}, Lokhttp3/internal/cache/DiskLruCache;->delete()V

    return-void
.end method

.method public directory()Ljava/io/File;
    .registers 2

    .line 399
    iget-object v0, p0, Lokhttp3/Cache;->cache:Lokhttp3/internal/cache/DiskLruCache;

    invoke-virtual {v0}, Lokhttp3/internal/cache/DiskLruCache;->getDirectory()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public evictAll()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 318
    iget-object v0, p0, Lokhttp3/Cache;->cache:Lokhttp3/internal/cache/DiskLruCache;

    invoke-virtual {v0}, Lokhttp3/internal/cache/DiskLruCache;->evictAll()V

    return-void
.end method

.method public flush()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 391
    iget-object v0, p0, Lokhttp3/Cache;->cache:Lokhttp3/internal/cache/DiskLruCache;

    invoke-virtual {v0}, Lokhttp3/internal/cache/DiskLruCache;->flush()V

    return-void
.end method

.method get(Lokhttp3/Request;)Lokhttp3/Response;
    .registers 6
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 194
    invoke-virtual {p1}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v0

    invoke-static {v0}, Lokhttp3/Cache;->key(Lokhttp3/HttpUrl;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 198
    :try_start_9
    iget-object v2, p0, Lokhttp3/Cache;->cache:Lokhttp3/internal/cache/DiskLruCache;

    invoke-virtual {v2, v0}, Lokhttp3/internal/cache/DiskLruCache;->get(Ljava/lang/String;)Lokhttp3/internal/cache/DiskLruCache$Snapshot;

    move-result-object v0
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_f} :catch_32

    if-nez v0, :cond_12

    return-object v1

    .line 208
    :cond_12
    :try_start_12
    new-instance v2, Lokhttp3/Cache$Entry;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lokhttp3/internal/cache/DiskLruCache$Snapshot;->getSource(I)Lokio/Source;

    move-result-object v3

    invoke-direct {v2, v3}, Lokhttp3/Cache$Entry;-><init>(Lokio/Source;)V
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_1c} :catch_2f

    .line 214
    invoke-virtual {v2, v0}, Lokhttp3/Cache$Entry;->response(Lokhttp3/internal/cache/DiskLruCache$Snapshot;)Lokhttp3/Response;

    move-result-object v0

    .line 216
    invoke-virtual {v2, p1, v0}, Lokhttp3/Cache$Entry;->matches(Lokhttp3/Request;Lokhttp3/Response;)Z

    move-result p1

    if-nez p1, :cond_2e

    .line 217
    invoke-virtual {v0}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object p1

    invoke-static {p1}, Lokhttp3/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    return-object v1

    :cond_2e
    return-object v0

    .line 210
    :catch_2f
    invoke-static {v0}, Lokhttp3/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    :catch_32
    return-object v1
.end method

.method public declared-synchronized hitCount()I
    .registers 2

    monitor-enter p0

    .line 427
    :try_start_1
    iget v0, p0, Lokhttp3/Cache;->hitCount:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    :try_start_6
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_6 .. :try_end_7} :catchall_5

    throw v0
.end method

.method public initialize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 302
    iget-object v0, p0, Lokhttp3/Cache;->cache:Lokhttp3/internal/cache/DiskLruCache;

    invoke-virtual {v0}, Lokhttp3/internal/cache/DiskLruCache;->initialize()V

    return-void
.end method

.method public isClosed()Z
    .registers 2

    .line 403
    iget-object v0, p0, Lokhttp3/Cache;->cache:Lokhttp3/internal/cache/DiskLruCache;

    invoke-virtual {v0}, Lokhttp3/internal/cache/DiskLruCache;->isClosed()Z

    move-result v0

    return v0
.end method

.method public maxSize()J
    .registers 3

    .line 387
    iget-object v0, p0, Lokhttp3/Cache;->cache:Lokhttp3/internal/cache/DiskLruCache;

    invoke-virtual {v0}, Lokhttp3/internal/cache/DiskLruCache;->getMaxSize()J

    move-result-wide v0

    return-wide v0
.end method

.method public declared-synchronized networkCount()I
    .registers 2

    monitor-enter p0

    .line 423
    :try_start_1
    iget v0, p0, Lokhttp3/Cache;->networkCount:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    :try_start_6
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_6 .. :try_end_7} :catchall_5

    throw v0
.end method

.method put(Lokhttp3/Response;)Lokhttp3/internal/cache/CacheRequest;
    .registers 5
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 225
    invoke-virtual {p1}, Lokhttp3/Response;->request()Lokhttp3/Request;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Request;->method()Ljava/lang/String;

    move-result-object v0

    .line 227
    invoke-virtual {p1}, Lokhttp3/Response;->request()Lokhttp3/Request;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/Request;->method()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lokhttp3/internal/http/HttpMethod;->invalidatesCache(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1f

    .line 229
    :try_start_17
    invoke-virtual {p1}, Lokhttp3/Response;->request()Lokhttp3/Request;

    move-result-object p1

    invoke-virtual {p0, p1}, Lokhttp3/Cache;->remove(Lokhttp3/Request;)V
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_1e} :catch_1e

    :catch_1e
    return-object v2

    .line 235
    :cond_1f
    const-string v1, "GET"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_28

    return-object v2

    .line 242
    :cond_28
    invoke-static {p1}, Lokhttp3/internal/http/HttpHeaders;->hasVaryAll(Lokhttp3/Response;)Z

    move-result v0

    if-eqz v0, :cond_2f

    return-object v2

    .line 246
    :cond_2f
    new-instance v0, Lokhttp3/Cache$Entry;

    invoke-direct {v0, p1}, Lokhttp3/Cache$Entry;-><init>(Lokhttp3/Response;)V

    .line 249
    :try_start_34
    iget-object v1, p0, Lokhttp3/Cache;->cache:Lokhttp3/internal/cache/DiskLruCache;

    invoke-virtual {p1}, Lokhttp3/Response;->request()Lokhttp3/Request;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object p1

    invoke-static {p1}, Lokhttp3/Cache;->key(Lokhttp3/HttpUrl;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lokhttp3/internal/cache/DiskLruCache;->edit(Ljava/lang/String;)Lokhttp3/internal/cache/DiskLruCache$Editor;

    move-result-object p1
    :try_end_46
    .catch Ljava/io/IOException; {:try_start_34 .. :try_end_46} :catch_52

    if-nez p1, :cond_49

    return-object v2

    .line 253
    :cond_49
    :try_start_49
    invoke-virtual {v0, p1}, Lokhttp3/Cache$Entry;->writeTo(Lokhttp3/internal/cache/DiskLruCache$Editor;)V

    .line 254
    new-instance v0, Lokhttp3/Cache$CacheRequestImpl;

    invoke-direct {v0, p0, p1}, Lokhttp3/Cache$CacheRequestImpl;-><init>(Lokhttp3/Cache;Lokhttp3/internal/cache/DiskLruCache$Editor;)V
    :try_end_51
    .catch Ljava/io/IOException; {:try_start_49 .. :try_end_51} :catch_53

    return-object v0

    :catch_52
    move-object p1, v2

    .line 256
    :catch_53
    invoke-direct {p0, p1}, Lokhttp3/Cache;->abortQuietly(Lokhttp3/internal/cache/DiskLruCache$Editor;)V

    return-object v2
.end method

.method remove(Lokhttp3/Request;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 262
    iget-object v0, p0, Lokhttp3/Cache;->cache:Lokhttp3/internal/cache/DiskLruCache;

    invoke-virtual {p1}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object p1

    invoke-static {p1}, Lokhttp3/Cache;->key(Lokhttp3/HttpUrl;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lokhttp3/internal/cache/DiskLruCache;->remove(Ljava/lang/String;)Z

    return-void
.end method

.method public declared-synchronized requestCount()I
    .registers 2

    monitor-enter p0

    .line 431
    :try_start_1
    iget v0, p0, Lokhttp3/Cache;->requestCount:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    :try_start_6
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_6 .. :try_end_7} :catchall_5

    throw v0
.end method

.method public size()J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 382
    iget-object v0, p0, Lokhttp3/Cache;->cache:Lokhttp3/internal/cache/DiskLruCache;

    invoke-virtual {v0}, Lokhttp3/internal/cache/DiskLruCache;->size()J

    move-result-wide v0

    return-wide v0
.end method

.method declared-synchronized trackConditionalCacheHit()V
    .registers 2

    monitor-enter p0

    .line 419
    :try_start_1
    iget v0, p0, Lokhttp3/Cache;->hitCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lokhttp3/Cache;->hitCount:I
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    .line 420
    monitor-exit p0

    return-void

    :catchall_9
    move-exception v0

    :try_start_a
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_a .. :try_end_b} :catchall_9

    throw v0
.end method

.method declared-synchronized trackResponse(Lokhttp3/internal/cache/CacheStrategy;)V
    .registers 3

    monitor-enter p0

    .line 407
    :try_start_1
    iget v0, p0, Lokhttp3/Cache;->requestCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lokhttp3/Cache;->requestCount:I

    .line 409
    iget-object v0, p1, Lokhttp3/internal/cache/CacheStrategy;->networkRequest:Lokhttp3/Request;

    if-eqz v0, :cond_12

    .line 411
    iget p1, p0, Lokhttp3/Cache;->networkCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lokhttp3/Cache;->networkCount:I

    goto :goto_1c

    .line 412
    :cond_12
    iget-object p1, p1, Lokhttp3/internal/cache/CacheStrategy;->cacheResponse:Lokhttp3/Response;

    if-eqz p1, :cond_1c

    .line 414
    iget p1, p0, Lokhttp3/Cache;->hitCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lokhttp3/Cache;->hitCount:I
    :try_end_1c
    .catchall {:try_start_1 .. :try_end_1c} :catchall_1e

    .line 416
    :cond_1c
    :goto_1c
    monitor-exit p0

    return-void

    :catchall_1e
    move-exception p1

    :try_start_1f
    monitor-exit p0
    :try_end_20
    .catchall {:try_start_1f .. :try_end_20} :catchall_1e

    throw p1
.end method

.method update(Lokhttp3/Response;Lokhttp3/Response;)V
    .registers 4

    .line 266
    new-instance v0, Lokhttp3/Cache$Entry;

    invoke-direct {v0, p2}, Lokhttp3/Cache$Entry;-><init>(Lokhttp3/Response;)V

    .line 267
    invoke-virtual {p1}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object p1

    check-cast p1, Lokhttp3/Cache$CacheResponseBody;

    iget-object p1, p1, Lokhttp3/Cache$CacheResponseBody;->snapshot:Lokhttp3/internal/cache/DiskLruCache$Snapshot;

    .line 270
    :try_start_d
    invoke-virtual {p1}, Lokhttp3/internal/cache/DiskLruCache$Snapshot;->edit()Lokhttp3/internal/cache/DiskLruCache$Editor;

    move-result-object p1
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_11} :catch_1a

    if-eqz p1, :cond_19

    .line 272
    :try_start_13
    invoke-virtual {v0, p1}, Lokhttp3/Cache$Entry;->writeTo(Lokhttp3/internal/cache/DiskLruCache$Editor;)V

    .line 273
    invoke-virtual {p1}, Lokhttp3/internal/cache/DiskLruCache$Editor;->commit()V
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_19} :catch_1b

    :cond_19
    return-void

    :catch_1a
    const/4 p1, 0x0

    .line 276
    :catch_1b
    invoke-direct {p0, p1}, Lokhttp3/Cache;->abortQuietly(Lokhttp3/internal/cache/DiskLruCache$Editor;)V

    return-void
.end method

.method public urls()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 331
    new-instance v0, Lokhttp3/Cache$2;

    invoke-direct {v0, p0}, Lokhttp3/Cache$2;-><init>(Lokhttp3/Cache;)V

    return-object v0
.end method

.method public declared-synchronized writeAbortCount()I
    .registers 2

    monitor-enter p0

    .line 374
    :try_start_1
    iget v0, p0, Lokhttp3/Cache;->writeAbortCount:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    :try_start_6
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_6 .. :try_end_7} :catchall_5

    throw v0
.end method

.method public declared-synchronized writeSuccessCount()I
    .registers 2

    monitor-enter p0

    .line 378
    :try_start_1
    iget v0, p0, Lokhttp3/Cache;->writeSuccessCount:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    :try_start_6
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_6 .. :try_end_7} :catchall_5

    throw v0
.end method

###### Class okhttp3.Cache.AnonymousClass1 (okhttp3.Cache$1)
.class Lokhttp3/Cache$1;
.super Ljava/lang/Object;
.source "Cache.java"

# interfaces
.implements Lokhttp3/internal/cache/InternalCache;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/Cache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lokhttp3/Cache;


# direct methods
.method constructor <init>(Lokhttp3/Cache;)V
    .registers 2

    .line 143
    iput-object p1, p0, Lokhttp3/Cache$1;->this$0:Lokhttp3/Cache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get(Lokhttp3/Request;)Lokhttp3/Response;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 145
    iget-object v0, p0, Lokhttp3/Cache$1;->this$0:Lokhttp3/Cache;

    invoke-virtual {v0, p1}, Lokhttp3/Cache;->get(Lokhttp3/Request;)Lokhttp3/Response;

    move-result-object p1

    return-object p1
.end method

.method public put(Lokhttp3/Response;)Lokhttp3/internal/cache/CacheRequest;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 149
    iget-object v0, p0, Lokhttp3/Cache$1;->this$0:Lokhttp3/Cache;

    invoke-virtual {v0, p1}, Lokhttp3/Cache;->put(Lokhttp3/Response;)Lokhttp3/internal/cache/CacheRequest;

    move-result-object p1

    return-object p1
.end method

.method public remove(Lokhttp3/Request;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 153
    iget-object v0, p0, Lokhttp3/Cache$1;->this$0:Lokhttp3/Cache;

    invoke-virtual {v0, p1}, Lokhttp3/Cache;->remove(Lokhttp3/Request;)V

    return-void
.end method

.method public trackConditionalCacheHit()V
    .registers 2

    .line 161
    iget-object v0, p0, Lokhttp3/Cache$1;->this$0:Lokhttp3/Cache;

    invoke-virtual {v0}, Lokhttp3/Cache;->trackConditionalCacheHit()V

    return-void
.end method

.method public trackResponse(Lokhttp3/internal/cache/CacheStrategy;)V
    .registers 3

    .line 165
    iget-object v0, p0, Lokhttp3/Cache$1;->this$0:Lokhttp3/Cache;

    invoke-virtual {v0, p1}, Lokhttp3/Cache;->trackResponse(Lokhttp3/internal/cache/CacheStrategy;)V

    return-void
.end method

.method public update(Lokhttp3/Response;Lokhttp3/Response;)V
    .registers 4

    .line 157
    iget-object v0, p0, Lokhttp3/Cache$1;->this$0:Lokhttp3/Cache;

    invoke-virtual {v0, p1, p2}, Lokhttp3/Cache;->update(Lokhttp3/Response;Lokhttp3/Response;)V

    return-void
.end method

###### Class okhttp3.Cache.AnonymousClass2 (okhttp3.Cache$2)
.class Lokhttp3/Cache$2;
.super Ljava/lang/Object;
.source "Cache.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lokhttp3/Cache;->urls()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field canRemove:Z

.field final delegate:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "Lokhttp3/internal/cache/DiskLruCache$Snapshot;",
            ">;"
        }
    .end annotation
.end field

.field nextUrl:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field final synthetic this$0:Lokhttp3/Cache;


# direct methods
.method constructor <init>(Lokhttp3/Cache;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 331
    iput-object p1, p0, Lokhttp3/Cache$2;->this$0:Lokhttp3/Cache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 332
    iget-object p1, p1, Lokhttp3/Cache;->cache:Lokhttp3/internal/cache/DiskLruCache;

    invoke-virtual {p1}, Lokhttp3/internal/cache/DiskLruCache;->snapshots()Ljava/util/Iterator;

    move-result-object p1

    iput-object p1, p0, Lokhttp3/Cache$2;->delegate:Ljava/util/Iterator;

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .registers 5

    .line 338
    iget-object v0, p0, Lokhttp3/Cache$2;->nextUrl:Ljava/lang/String;

    const/4 v1, 0x1

    if-eqz v0, :cond_6

    return v1

    :cond_6
    const/4 v0, 0x0

    .line 340
    iput-boolean v0, p0, Lokhttp3/Cache$2;->canRemove:Z

    .line 341
    :goto_9
    iget-object v2, p0, Lokhttp3/Cache$2;->delegate:Ljava/util/Iterator;

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_34

    .line 342
    iget-object v2, p0, Lokhttp3/Cache$2;->delegate:Ljava/util/Iterator;

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lokhttp3/internal/cache/DiskLruCache$Snapshot;

    .line 344
    :try_start_19
    invoke-virtual {v2, v0}, Lokhttp3/internal/cache/DiskLruCache$Snapshot;->getSource(I)Lokio/Source;

    move-result-object v3

    invoke-static {v3}, Lokio/Okio;->buffer(Lokio/Source;)Lokio/BufferedSource;

    move-result-object v3

    .line 345
    invoke-interface {v3}, Lokio/BufferedSource;->readUtf8LineStrict()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lokhttp3/Cache$2;->nextUrl:Ljava/lang/String;
    :try_end_27
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_27} :catch_30
    .catchall {:try_start_19 .. :try_end_27} :catchall_2b

    .line 351
    invoke-virtual {v2}, Lokhttp3/internal/cache/DiskLruCache$Snapshot;->close()V

    return v1

    :catchall_2b
    move-exception v0

    invoke-virtual {v2}, Lokhttp3/internal/cache/DiskLruCache$Snapshot;->close()V

    throw v0

    :catch_30
    invoke-virtual {v2}, Lokhttp3/internal/cache/DiskLruCache$Snapshot;->close()V

    goto :goto_9

    :cond_34
    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .registers 2

    .line 331
    invoke-virtual {p0}, Lokhttp3/Cache$2;->next()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public next()Ljava/lang/String;
    .registers 3

    .line 359
    invoke-virtual {p0}, Lokhttp3/Cache$2;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 360
    iget-object v0, p0, Lokhttp3/Cache$2;->nextUrl:Ljava/lang/String;

    const/4 v1, 0x0

    .line 361
    iput-object v1, p0, Lokhttp3/Cache$2;->nextUrl:Ljava/lang/String;

    const/4 v1, 0x1

    .line 362
    iput-boolean v1, p0, Lokhttp3/Cache$2;->canRemove:Z

    return-object v0

    .line 359
    :cond_f
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public remove()V
    .registers 3

    .line 367
    iget-boolean v0, p0, Lokhttp3/Cache$2;->canRemove:Z

    if-eqz v0, :cond_a

    .line 368
    iget-object v0, p0, Lokhttp3/Cache$2;->delegate:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    return-void

    .line 367
    :cond_a
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "remove() before next()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

###### Class okhttp3.Cache.CacheRequestImpl (okhttp3.Cache$CacheRequestImpl)
.class final Lokhttp3/Cache$CacheRequestImpl;
.super Ljava/lang/Object;
.source "Cache.java"

# interfaces
.implements Lokhttp3/internal/cache/CacheRequest;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/Cache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "CacheRequestImpl"
.end annotation


# instance fields
.field private body:Lokio/Sink;

.field private cacheOut:Lokio/Sink;

.field done:Z

.field private final editor:Lokhttp3/internal/cache/DiskLruCache$Editor;

.field final synthetic this$0:Lokhttp3/Cache;


# direct methods
.method constructor <init>(Lokhttp3/Cache;Lokhttp3/internal/cache/DiskLruCache$Editor;)V
    .registers 5

    .line 440
    iput-object p1, p0, Lokhttp3/Cache$CacheRequestImpl;->this$0:Lokhttp3/Cache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 441
    iput-object p2, p0, Lokhttp3/Cache$CacheRequestImpl;->editor:Lokhttp3/internal/cache/DiskLruCache$Editor;

    const/4 v0, 0x1

    .line 442
    invoke-virtual {p2, v0}, Lokhttp3/internal/cache/DiskLruCache$Editor;->newSink(I)Lokio/Sink;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/Cache$CacheRequestImpl;->cacheOut:Lokio/Sink;

    .line 443
    new-instance v0, Lokhttp3/Cache$CacheRequestImpl$1;

    iget-object v1, p0, Lokhttp3/Cache$CacheRequestImpl;->cacheOut:Lokio/Sink;

    invoke-direct {v0, p0, v1, p1, p2}, Lokhttp3/Cache$CacheRequestImpl$1;-><init>(Lokhttp3/Cache$CacheRequestImpl;Lokio/Sink;Lokhttp3/Cache;Lokhttp3/internal/cache/DiskLruCache$Editor;)V

    iput-object v0, p0, Lokhttp3/Cache$CacheRequestImpl;->body:Lokio/Sink;

    return-void
.end method


# virtual methods
.method public abort()V
    .registers 5

    .line 459
    iget-object v0, p0, Lokhttp3/Cache$CacheRequestImpl;->this$0:Lokhttp3/Cache;

    monitor-enter v0

    .line 460
    :try_start_3
    iget-boolean v1, p0, Lokhttp3/Cache$CacheRequestImpl;->done:Z

    if-eqz v1, :cond_9

    .line 461
    monitor-exit v0

    return-void

    :cond_9
    const/4 v1, 0x1

    .line 463
    iput-boolean v1, p0, Lokhttp3/Cache$CacheRequestImpl;->done:Z

    .line 464
    iget-object v2, p0, Lokhttp3/Cache$CacheRequestImpl;->this$0:Lokhttp3/Cache;

    iget v3, v2, Lokhttp3/Cache;->writeAbortCount:I

    add-int/2addr v3, v1

    iput v3, v2, Lokhttp3/Cache;->writeAbortCount:I

    .line 465
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_1f

    .line 466
    iget-object v0, p0, Lokhttp3/Cache$CacheRequestImpl;->cacheOut:Lokio/Sink;

    invoke-static {v0}, Lokhttp3/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    .line 468
    :try_start_19
    iget-object v0, p0, Lokhttp3/Cache$CacheRequestImpl;->editor:Lokhttp3/internal/cache/DiskLruCache$Editor;

    invoke-virtual {v0}, Lokhttp3/internal/cache/DiskLruCache$Editor;->abort()V
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_1e} :catch_1e

    :catch_1e
    return-void

    :catchall_1f
    move-exception v1

    .line 465
    :try_start_20
    monitor-exit v0
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_1f

    throw v1
.end method

.method public body()Lokio/Sink;
    .registers 2

    .line 474
    iget-object v0, p0, Lokhttp3/Cache$CacheRequestImpl;->body:Lokio/Sink;

    return-object v0
.end method

###### Class okhttp3.Cache.CacheRequestImpl.AnonymousClass1 (okhttp3.Cache$CacheRequestImpl$1)
.class Lokhttp3/Cache$CacheRequestImpl$1;
.super Lokio/ForwardingSink;
.source "Cache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lokhttp3/Cache$CacheRequestImpl;-><init>(Lokhttp3/Cache;Lokhttp3/internal/cache/DiskLruCache$Editor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lokhttp3/Cache$CacheRequestImpl;

.field final synthetic val$editor:Lokhttp3/internal/cache/DiskLruCache$Editor;

.field final synthetic val$this$0:Lokhttp3/Cache;


# direct methods
.method constructor <init>(Lokhttp3/Cache$CacheRequestImpl;Lokio/Sink;Lokhttp3/Cache;Lokhttp3/internal/cache/DiskLruCache$Editor;)V
    .registers 5

    .line 443
    iput-object p1, p0, Lokhttp3/Cache$CacheRequestImpl$1;->this$1:Lokhttp3/Cache$CacheRequestImpl;

    iput-object p3, p0, Lokhttp3/Cache$CacheRequestImpl$1;->val$this$0:Lokhttp3/Cache;

    iput-object p4, p0, Lokhttp3/Cache$CacheRequestImpl$1;->val$editor:Lokhttp3/internal/cache/DiskLruCache$Editor;

    invoke-direct {p0, p2}, Lokio/ForwardingSink;-><init>(Lokio/Sink;)V

    return-void
.end method


# virtual methods
.method public close()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 445
    iget-object v0, p0, Lokhttp3/Cache$CacheRequestImpl$1;->this$1:Lokhttp3/Cache$CacheRequestImpl;

    iget-object v0, v0, Lokhttp3/Cache$CacheRequestImpl;->this$0:Lokhttp3/Cache;

    monitor-enter v0

    .line 446
    :try_start_5
    iget-object v1, p0, Lokhttp3/Cache$CacheRequestImpl$1;->this$1:Lokhttp3/Cache$CacheRequestImpl;

    iget-boolean v1, v1, Lokhttp3/Cache$CacheRequestImpl;->done:Z

    if-eqz v1, :cond_d

    .line 447
    monitor-exit v0

    return-void

    .line 449
    :cond_d
    iget-object v1, p0, Lokhttp3/Cache$CacheRequestImpl$1;->this$1:Lokhttp3/Cache$CacheRequestImpl;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lokhttp3/Cache$CacheRequestImpl;->done:Z

    .line 450
    iget-object v1, p0, Lokhttp3/Cache$CacheRequestImpl$1;->this$1:Lokhttp3/Cache$CacheRequestImpl;

    iget-object v1, v1, Lokhttp3/Cache$CacheRequestImpl;->this$0:Lokhttp3/Cache;

    iget v3, v1, Lokhttp3/Cache;->writeSuccessCount:I

    add-int/2addr v3, v2

    iput v3, v1, Lokhttp3/Cache;->writeSuccessCount:I

    .line 451
    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_5 .. :try_end_1c} :catchall_25

    .line 452
    invoke-super {p0}, Lokio/ForwardingSink;->close()V

    .line 453
    iget-object v0, p0, Lokhttp3/Cache$CacheRequestImpl$1;->val$editor:Lokhttp3/internal/cache/DiskLruCache$Editor;

    invoke-virtual {v0}, Lokhttp3/internal/cache/DiskLruCache$Editor;->commit()V

    return-void

    :catchall_25
    move-exception v1

    .line 451
    :try_start_26
    monitor-exit v0
    :try_end_27
    .catchall {:try_start_26 .. :try_end_27} :catchall_25

    throw v1
.end method

###### Class okhttp3.Cache.CacheResponseBody (okhttp3.Cache$CacheResponseBody)
.class Lokhttp3/Cache$CacheResponseBody;
.super Lokhttp3/ResponseBody;
.source "Cache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/Cache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CacheResponseBody"
.end annotation


# instance fields
.field private final bodySource:Lokio/BufferedSource;

.field private final contentLength:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final contentType:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field final snapshot:Lokhttp3/internal/cache/DiskLruCache$Snapshot;


# direct methods
.method constructor <init>(Lokhttp3/internal/cache/DiskLruCache$Snapshot;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 744
    invoke-direct {p0}, Lokhttp3/ResponseBody;-><init>()V

    .line 745
    iput-object p1, p0, Lokhttp3/Cache$CacheResponseBody;->snapshot:Lokhttp3/internal/cache/DiskLruCache$Snapshot;

    .line 746
    iput-object p2, p0, Lokhttp3/Cache$CacheResponseBody;->contentType:Ljava/lang/String;

    .line 747
    iput-object p3, p0, Lokhttp3/Cache$CacheResponseBody;->contentLength:Ljava/lang/String;

    const/4 p2, 0x1

    .line 749
    invoke-virtual {p1, p2}, Lokhttp3/internal/cache/DiskLruCache$Snapshot;->getSource(I)Lokio/Source;

    move-result-object p2

    .line 750
    new-instance p3, Lokhttp3/Cache$CacheResponseBody$1;

    invoke-direct {p3, p0, p2, p1}, Lokhttp3/Cache$CacheResponseBody$1;-><init>(Lokhttp3/Cache$CacheResponseBody;Lokio/Source;Lokhttp3/internal/cache/DiskLruCache$Snapshot;)V

    invoke-static {p3}, Lokio/Okio;->buffer(Lokio/Source;)Lokio/BufferedSource;

    move-result-object p1

    iput-object p1, p0, Lokhttp3/Cache$CacheResponseBody;->bodySource:Lokio/BufferedSource;

    return-void
.end method


# virtual methods
.method public contentLength()J
    .registers 4

    const-wide/16 v0, -0x1

    .line 764
    :try_start_2
    iget-object v2, p0, Lokhttp3/Cache$CacheResponseBody;->contentLength:Ljava/lang/String;

    if-eqz v2, :cond_a

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_a
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_a} :catch_a

    :catch_a
    :cond_a
    return-wide v0
.end method

.method public contentType()Lokhttp3/MediaType;
    .registers 2

    .line 759
    iget-object v0, p0, Lokhttp3/Cache$CacheResponseBody;->contentType:Ljava/lang/String;

    if-eqz v0, :cond_9

    invoke-static {v0}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v0

    return-object v0

    :cond_9
    const/4 v0, 0x0

    return-object v0
.end method

.method public source()Lokio/BufferedSource;
    .registers 2

    .line 771
    iget-object v0, p0, Lokhttp3/Cache$CacheResponseBody;->bodySource:Lokio/BufferedSource;

    return-object v0
.end method

###### Class okhttp3.Cache.CacheResponseBody.AnonymousClass1 (okhttp3.Cache$CacheResponseBody$1)
.class Lokhttp3/Cache$CacheResponseBody$1;
.super Lokio/ForwardingSource;
.source "Cache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lokhttp3/Cache$CacheResponseBody;-><init>(Lokhttp3/internal/cache/DiskLruCache$Snapshot;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lokhttp3/Cache$CacheResponseBody;

.field final synthetic val$snapshot:Lokhttp3/internal/cache/DiskLruCache$Snapshot;


# direct methods
.method constructor <init>(Lokhttp3/Cache$CacheResponseBody;Lokio/Source;Lokhttp3/internal/cache/DiskLruCache$Snapshot;)V
    .registers 4

    .line 750
    iput-object p1, p0, Lokhttp3/Cache$CacheResponseBody$1;->this$0:Lokhttp3/Cache$CacheResponseBody;

    iput-object p3, p0, Lokhttp3/Cache$CacheResponseBody$1;->val$snapshot:Lokhttp3/internal/cache/DiskLruCache$Snapshot;

    invoke-direct {p0, p2}, Lokio/ForwardingSource;-><init>(Lokio/Source;)V

    return-void
.end method


# virtual methods
.method public close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 752
    iget-object v0, p0, Lokhttp3/Cache$CacheResponseBody$1;->val$snapshot:Lokhttp3/internal/cache/DiskLruCache$Snapshot;

    invoke-virtual {v0}, Lokhttp3/internal/cache/DiskLruCache$Snapshot;->close()V

    .line 753
    invoke-super {p0}, Lokio/ForwardingSource;->close()V

    return-void
.end method

###### Class okhttp3.Cache.Entry (okhttp3.Cache$Entry)
.class final Lokhttp3/Cache$Entry;
.super Ljava/lang/Object;
.source "Cache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/Cache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Entry"
.end annotation


# static fields
.field private static final RECEIVED_MILLIS:Ljava/lang/String;

.field private static final SENT_MILLIS:Ljava/lang/String;


# instance fields
.field private final code:I

.field private final handshake:Lokhttp3/Handshake;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final message:Ljava/lang/String;

.field private final protocol:Lokhttp3/Protocol;

.field private final receivedResponseMillis:J

.field private final requestMethod:Ljava/lang/String;

.field private final responseHeaders:Lokhttp3/Headers;

.field private final sentRequestMillis:J

.field private final url:Ljava/lang/String;

.field private final varyHeaders:Lokhttp3/Headers;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 480
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lokhttp3/internal/platform/Platform;->get()Lokhttp3/internal/platform/Platform;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/internal/platform/Platform;->getPrefix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-Sent-Millis"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lokhttp3/Cache$Entry;->SENT_MILLIS:Ljava/lang/String;

    .line 483
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lokhttp3/internal/platform/Platform;->get()Lokhttp3/internal/platform/Platform;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/internal/platform/Platform;->getPrefix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-Received-Millis"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lokhttp3/Cache$Entry;->RECEIVED_MILLIS:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lokhttp3/Response;)V
    .registers 4

    .line 598
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 599
    invoke-virtual {p1}, Lokhttp3/Response;->request()Lokhttp3/Request;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/HttpUrl;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/Cache$Entry;->url:Ljava/lang/String;

    .line 600
    invoke-static {p1}, Lokhttp3/internal/http/HttpHeaders;->varyHeaders(Lokhttp3/Response;)Lokhttp3/Headers;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/Cache$Entry;->varyHeaders:Lokhttp3/Headers;

    .line 601
    invoke-virtual {p1}, Lokhttp3/Response;->request()Lokhttp3/Request;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Request;->method()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/Cache$Entry;->requestMethod:Ljava/lang/String;

    .line 602
    invoke-virtual {p1}, Lokhttp3/Response;->protocol()Lokhttp3/Protocol;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/Cache$Entry;->protocol:Lokhttp3/Protocol;

    .line 603
    invoke-virtual {p1}, Lokhttp3/Response;->code()I

    move-result v0

    iput v0, p0, Lokhttp3/Cache$Entry;->code:I

    .line 604
    invoke-virtual {p1}, Lokhttp3/Response;->message()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/Cache$Entry;->message:Ljava/lang/String;

    .line 605
    invoke-virtual {p1}, Lokhttp3/Response;->headers()Lokhttp3/Headers;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/Cache$Entry;->responseHeaders:Lokhttp3/Headers;

    .line 606
    invoke-virtual {p1}, Lokhttp3/Response;->handshake()Lokhttp3/Handshake;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/Cache$Entry;->handshake:Lokhttp3/Handshake;

    .line 607
    invoke-virtual {p1}, Lokhttp3/Response;->sentRequestAtMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lokhttp3/Cache$Entry;->sentRequestMillis:J

    .line 608
    invoke-virtual {p1}, Lokhttp3/Response;->receivedResponseAtMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lokhttp3/Cache$Entry;->receivedResponseMillis:J

    return-void
.end method

.method constructor <init>(Lokio/Source;)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 544
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 546
    :try_start_3
    invoke-static {p1}, Lokio/Okio;->buffer(Lokio/Source;)Lokio/BufferedSource;

    move-result-object v0

    .line 547
    invoke-interface {v0}, Lokio/BufferedSource;->readUtf8LineStrict()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lokhttp3/Cache$Entry;->url:Ljava/lang/String;

    .line 548
    invoke-interface {v0}, Lokio/BufferedSource;->readUtf8LineStrict()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lokhttp3/Cache$Entry;->requestMethod:Ljava/lang/String;

    .line 549
    new-instance v1, Lokhttp3/Headers$Builder;

    invoke-direct {v1}, Lokhttp3/Headers$Builder;-><init>()V

    .line 550
    invoke-static {v0}, Lokhttp3/Cache;->readInt(Lokio/BufferedSource;)I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_1e
    if-ge v4, v2, :cond_2a

    .line 552
    invoke-interface {v0}, Lokio/BufferedSource;->readUtf8LineStrict()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lokhttp3/Headers$Builder;->addLenient(Ljava/lang/String;)Lokhttp3/Headers$Builder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_1e

    .line 554
    :cond_2a
    invoke-virtual {v1}, Lokhttp3/Headers$Builder;->build()Lokhttp3/Headers;

    move-result-object v1

    iput-object v1, p0, Lokhttp3/Cache$Entry;->varyHeaders:Lokhttp3/Headers;

    .line 556
    invoke-interface {v0}, Lokio/BufferedSource;->readUtf8LineStrict()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lokhttp3/internal/http/StatusLine;->parse(Ljava/lang/String;)Lokhttp3/internal/http/StatusLine;

    move-result-object v1

    .line 557
    iget-object v2, v1, Lokhttp3/internal/http/StatusLine;->protocol:Lokhttp3/Protocol;

    iput-object v2, p0, Lokhttp3/Cache$Entry;->protocol:Lokhttp3/Protocol;

    .line 558
    iget v2, v1, Lokhttp3/internal/http/StatusLine;->code:I

    iput v2, p0, Lokhttp3/Cache$Entry;->code:I

    .line 559
    iget-object v1, v1, Lokhttp3/internal/http/StatusLine;->message:Ljava/lang/String;

    iput-object v1, p0, Lokhttp3/Cache$Entry;->message:Ljava/lang/String;

    .line 560
    new-instance v1, Lokhttp3/Headers$Builder;

    invoke-direct {v1}, Lokhttp3/Headers$Builder;-><init>()V

    .line 561
    invoke-static {v0}, Lokhttp3/Cache;->readInt(Lokio/BufferedSource;)I

    move-result v2

    :goto_4d
    if-ge v3, v2, :cond_59

    .line 563
    invoke-interface {v0}, Lokio/BufferedSource;->readUtf8LineStrict()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lokhttp3/Headers$Builder;->addLenient(Ljava/lang/String;)Lokhttp3/Headers$Builder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_4d

    .line 565
    :cond_59
    sget-object v2, Lokhttp3/Cache$Entry;->SENT_MILLIS:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lokhttp3/Headers$Builder;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 566
    sget-object v4, Lokhttp3/Cache$Entry;->RECEIVED_MILLIS:Ljava/lang/String;

    invoke-virtual {v1, v4}, Lokhttp3/Headers$Builder;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 567
    invoke-virtual {v1, v2}, Lokhttp3/Headers$Builder;->removeAll(Ljava/lang/String;)Lokhttp3/Headers$Builder;

    .line 568
    invoke-virtual {v1, v4}, Lokhttp3/Headers$Builder;->removeAll(Ljava/lang/String;)Lokhttp3/Headers$Builder;

    const-wide/16 v6, 0x0

    if-eqz v3, :cond_74

    .line 570
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    goto :goto_75

    :cond_74
    move-wide v2, v6

    .line 571
    :goto_75
    iput-wide v2, p0, Lokhttp3/Cache$Entry;->sentRequestMillis:J

    if-eqz v5, :cond_7d

    .line 573
    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 574
    :cond_7d
    iput-wide v6, p0, Lokhttp3/Cache$Entry;->receivedResponseMillis:J

    .line 575
    invoke-virtual {v1}, Lokhttp3/Headers$Builder;->build()Lokhttp3/Headers;

    move-result-object v1

    iput-object v1, p0, Lokhttp3/Cache$Entry;->responseHeaders:Lokhttp3/Headers;

    .line 577
    invoke-direct {p0}, Lokhttp3/Cache$Entry;->isHttps()Z

    move-result v1

    if-eqz v1, :cond_d9

    .line 578
    invoke-interface {v0}, Lokio/BufferedSource;->readUtf8LineStrict()Ljava/lang/String;

    move-result-object v1

    .line 579
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_bd

    .line 582
    invoke-interface {v0}, Lokio/BufferedSource;->readUtf8LineStrict()Ljava/lang/String;

    move-result-object v1

    .line 583
    invoke-static {v1}, Lokhttp3/CipherSuite;->forJavaName(Ljava/lang/String;)Lokhttp3/CipherSuite;

    move-result-object v1

    .line 584
    invoke-direct {p0, v0}, Lokhttp3/Cache$Entry;->readCertificateList(Lokio/BufferedSource;)Ljava/util/List;

    move-result-object v2

    .line 585
    invoke-direct {p0, v0}, Lokhttp3/Cache$Entry;->readCertificateList(Lokio/BufferedSource;)Ljava/util/List;

    move-result-object v3

    .line 586
    invoke-interface {v0}, Lokio/BufferedSource;->exhausted()Z

    move-result v4

    if-nez v4, :cond_b4

    .line 587
    invoke-interface {v0}, Lokio/BufferedSource;->readUtf8LineStrict()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lokhttp3/TlsVersion;->forJavaName(Ljava/lang/String;)Lokhttp3/TlsVersion;

    move-result-object v0

    goto :goto_b6

    .line 588
    :cond_b4
    sget-object v0, Lokhttp3/TlsVersion;->SSL_3_0:Lokhttp3/TlsVersion;

    .line 589
    :goto_b6
    invoke-static {v0, v1, v2, v3}, Lokhttp3/Handshake;->get(Lokhttp3/TlsVersion;Lokhttp3/CipherSuite;Ljava/util/List;Ljava/util/List;)Lokhttp3/Handshake;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/Cache$Entry;->handshake:Lokhttp3/Handshake;

    goto :goto_dc

    .line 580
    :cond_bd
    new-instance v0, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "expected \"\" but was \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\""

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d9
    const/4 v0, 0x0

    .line 591
    iput-object v0, p0, Lokhttp3/Cache$Entry;->handshake:Lokhttp3/Handshake;
    :try_end_dc
    .catchall {:try_start_3 .. :try_end_dc} :catchall_e0

    .line 594
    :goto_dc
    invoke-interface {p1}, Lokio/Source;->close()V

    return-void

    :catchall_e0
    move-exception v0

    invoke-interface {p1}, Lokio/Source;->close()V

    throw v0
.end method

.method private isHttps()Z
    .registers 3

    .line 658
    iget-object v0, p0, Lokhttp3/Cache$Entry;->url:Ljava/lang/String;

    const-string v1, "https://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private readCertificateList(Lokio/BufferedSource;)Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokio/BufferedSource;",
            ")",
            "Ljava/util/List<",
            "Ljava/security/cert/Certificate;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 662
    invoke-static {p1}, Lokhttp3/Cache;->readInt(Lokio/BufferedSource;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_a

    .line 663
    sget-object p1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p1

    .line 666
    :cond_a
    :try_start_a
    const-string v1, "X.509"

    invoke-static {v1}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v1

    .line 667
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v3, 0x0

    :goto_16
    if-ge v3, v0, :cond_36

    .line 669
    invoke-interface {p1}, Lokio/BufferedSource;->readUtf8LineStrict()Ljava/lang/String;

    move-result-object v4

    .line 670
    new-instance v5, Lokio/Buffer;

    invoke-direct {v5}, Lokio/Buffer;-><init>()V

    .line 671
    invoke-static {v4}, Lokio/ByteString;->decodeBase64(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v4

    invoke-virtual {v5, v4}, Lokio/Buffer;->write(Lokio/ByteString;)Lokio/Buffer;

    .line 672
    invoke-virtual {v5}, Lokio/Buffer;->inputStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_33
    .catch Ljava/security/cert/CertificateException; {:try_start_a .. :try_end_33} :catch_37

    add-int/lit8 v3, v3, 0x1

    goto :goto_16

    :cond_36
    return-object v2

    :catch_37
    move-exception p1

    .line 676
    new-instance v0, Ljava/io/IOException;

    invoke-virtual {p1}, Ljava/security/cert/CertificateException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private writeCertList(Lokio/BufferedSink;Ljava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokio/BufferedSink;",
            "Ljava/util/List<",
            "Ljava/security/cert/Certificate;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 683
    :try_start_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    int-to-long v0, v0

    invoke-interface {p1, v0, v1}, Lokio/BufferedSink;->writeDecimalLong(J)Lokio/BufferedSink;

    move-result-object v0

    const/16 v1, 0xa

    .line 684
    invoke-interface {v0, v1}, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;

    .line 685
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x0

    :goto_13
    if-ge v2, v0, :cond_31

    .line 686
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/security/cert/Certificate;

    invoke-virtual {v3}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object v3

    .line 687
    invoke-static {v3}, Lokio/ByteString;->of([B)Lokio/ByteString;

    move-result-object v3

    invoke-virtual {v3}, Lokio/ByteString;->base64()Ljava/lang/String;

    move-result-object v3

    .line 688
    invoke-interface {p1, v3}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    move-result-object v3

    .line 689
    invoke-interface {v3, v1}, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;
    :try_end_2e
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_0 .. :try_end_2e} :catch_32

    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    :cond_31
    return-void

    :catch_32
    move-exception p1

    .line 692
    new-instance p2, Ljava/io/IOException;

    invoke-virtual {p1}, Ljava/security/cert/CertificateEncodingException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p2
.end method


# virtual methods
.method public matches(Lokhttp3/Request;Lokhttp3/Response;)Z
    .registers 5

    .line 697
    iget-object v0, p0, Lokhttp3/Cache$Entry;->url:Ljava/lang/String;

    invoke-virtual {p1}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/HttpUrl;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    iget-object v0, p0, Lokhttp3/Cache$Entry;->requestMethod:Ljava/lang/String;

    .line 698
    invoke-virtual {p1}, Lokhttp3/Request;->method()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    iget-object v0, p0, Lokhttp3/Cache$Entry;->varyHeaders:Lokhttp3/Headers;

    .line 699
    invoke-static {p2, v0, p1}, Lokhttp3/internal/http/HttpHeaders;->varyMatches(Lokhttp3/Response;Lokhttp3/Headers;Lokhttp3/Request;)Z

    move-result p1

    if-eqz p1, :cond_26

    const/4 p1, 0x1

    return p1

    :cond_26
    const/4 p1, 0x0

    return p1
.end method

.method public response(Lokhttp3/internal/cache/DiskLruCache$Snapshot;)Lokhttp3/Response;
    .registers 7

    .line 703
    iget-object v0, p0, Lokhttp3/Cache$Entry;->responseHeaders:Lokhttp3/Headers;

    const-string v1, "Content-Type"

    invoke-virtual {v0, v1}, Lokhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 704
    iget-object v1, p0, Lokhttp3/Cache$Entry;->responseHeaders:Lokhttp3/Headers;

    const-string v2, "Content-Length"

    invoke-virtual {v1, v2}, Lokhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 705
    new-instance v2, Lokhttp3/Request$Builder;

    invoke-direct {v2}, Lokhttp3/Request$Builder;-><init>()V

    iget-object v3, p0, Lokhttp3/Cache$Entry;->url:Ljava/lang/String;

    .line 706
    invoke-virtual {v2, v3}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v2

    iget-object v3, p0, Lokhttp3/Cache$Entry;->requestMethod:Ljava/lang/String;

    const/4 v4, 0x0

    .line 707
    invoke-virtual {v2, v3, v4}, Lokhttp3/Request$Builder;->method(Ljava/lang/String;Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object v2

    iget-object v3, p0, Lokhttp3/Cache$Entry;->varyHeaders:Lokhttp3/Headers;

    .line 708
    invoke-virtual {v2, v3}, Lokhttp3/Request$Builder;->headers(Lokhttp3/Headers;)Lokhttp3/Request$Builder;

    move-result-object v2

    .line 709
    invoke-virtual {v2}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v2

    .line 710
    new-instance v3, Lokhttp3/Response$Builder;

    invoke-direct {v3}, Lokhttp3/Response$Builder;-><init>()V

    .line 711
    invoke-virtual {v3, v2}, Lokhttp3/Response$Builder;->request(Lokhttp3/Request;)Lokhttp3/Response$Builder;

    move-result-object v2

    iget-object v3, p0, Lokhttp3/Cache$Entry;->protocol:Lokhttp3/Protocol;

    .line 712
    invoke-virtual {v2, v3}, Lokhttp3/Response$Builder;->protocol(Lokhttp3/Protocol;)Lokhttp3/Response$Builder;

    move-result-object v2

    iget v3, p0, Lokhttp3/Cache$Entry;->code:I

    .line 713
    invoke-virtual {v2, v3}, Lokhttp3/Response$Builder;->code(I)Lokhttp3/Response$Builder;

    move-result-object v2

    iget-object v3, p0, Lokhttp3/Cache$Entry;->message:Ljava/lang/String;

    .line 714
    invoke-virtual {v2, v3}, Lokhttp3/Response$Builder;->message(Ljava/lang/String;)Lokhttp3/Response$Builder;

    move-result-object v2

    iget-object v3, p0, Lokhttp3/Cache$Entry;->responseHeaders:Lokhttp3/Headers;

    .line 715
    invoke-virtual {v2, v3}, Lokhttp3/Response$Builder;->headers(Lokhttp3/Headers;)Lokhttp3/Response$Builder;

    move-result-object v2

    new-instance v3, Lokhttp3/Cache$CacheResponseBody;

    invoke-direct {v3, p1, v0, v1}, Lokhttp3/Cache$CacheResponseBody;-><init>(Lokhttp3/internal/cache/DiskLruCache$Snapshot;Ljava/lang/String;Ljava/lang/String;)V

    .line 716
    invoke-virtual {v2, v3}, Lokhttp3/Response$Builder;->body(Lokhttp3/ResponseBody;)Lokhttp3/Response$Builder;

    move-result-object p1

    iget-object v0, p0, Lokhttp3/Cache$Entry;->handshake:Lokhttp3/Handshake;

    .line 717
    invoke-virtual {p1, v0}, Lokhttp3/Response$Builder;->handshake(Lokhttp3/Handshake;)Lokhttp3/Response$Builder;

    move-result-object p1

    iget-wide v0, p0, Lokhttp3/Cache$Entry;->sentRequestMillis:J

    .line 718
    invoke-virtual {p1, v0, v1}, Lokhttp3/Response$Builder;->sentRequestAtMillis(J)Lokhttp3/Response$Builder;

    move-result-object p1

    iget-wide v0, p0, Lokhttp3/Cache$Entry;->receivedResponseMillis:J

    .line 719
    invoke-virtual {p1, v0, v1}, Lokhttp3/Response$Builder;->receivedResponseAtMillis(J)Lokhttp3/Response$Builder;

    move-result-object p1

    .line 720
    invoke-virtual {p1}, Lokhttp3/Response$Builder;->build()Lokhttp3/Response;

    move-result-object p1

    return-object p1
.end method

.method public writeTo(Lokhttp3/internal/cache/DiskLruCache$Editor;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 612
    invoke-virtual {p1, v0}, Lokhttp3/internal/cache/DiskLruCache$Editor;->newSink(I)Lokio/Sink;

    move-result-object p1

    invoke-static {p1}, Lokio/Okio;->buffer(Lokio/Sink;)Lokio/BufferedSink;

    move-result-object p1

    .line 614
    iget-object v1, p0, Lokhttp3/Cache$Entry;->url:Ljava/lang/String;

    invoke-interface {p1, v1}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    move-result-object v1

    const/16 v2, 0xa

    .line 615
    invoke-interface {v1, v2}, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;

    .line 616
    iget-object v1, p0, Lokhttp3/Cache$Entry;->requestMethod:Ljava/lang/String;

    invoke-interface {p1, v1}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    move-result-object v1

    .line 617
    invoke-interface {v1, v2}, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;

    .line 618
    iget-object v1, p0, Lokhttp3/Cache$Entry;->varyHeaders:Lokhttp3/Headers;

    invoke-virtual {v1}, Lokhttp3/Headers;->size()I

    move-result v1

    int-to-long v3, v1

    invoke-interface {p1, v3, v4}, Lokio/BufferedSink;->writeDecimalLong(J)Lokio/BufferedSink;

    move-result-object v1

    .line 619
    invoke-interface {v1, v2}, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;

    .line 620
    iget-object v1, p0, Lokhttp3/Cache$Entry;->varyHeaders:Lokhttp3/Headers;

    invoke-virtual {v1}, Lokhttp3/Headers;->size()I

    move-result v1

    const/4 v3, 0x0

    :goto_32
    const-string v4, ": "

    if-ge v3, v1, :cond_54

    .line 621
    iget-object v5, p0, Lokhttp3/Cache$Entry;->varyHeaders:Lokhttp3/Headers;

    invoke-virtual {v5, v3}, Lokhttp3/Headers;->name(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v5}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    move-result-object v5

    .line 622
    invoke-interface {v5, v4}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    move-result-object v4

    iget-object v5, p0, Lokhttp3/Cache$Entry;->varyHeaders:Lokhttp3/Headers;

    .line 623
    invoke-virtual {v5, v3}, Lokhttp3/Headers;->value(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    move-result-object v4

    .line 624
    invoke-interface {v4, v2}, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;

    add-int/lit8 v3, v3, 0x1

    goto :goto_32

    .line 627
    :cond_54
    new-instance v1, Lokhttp3/internal/http/StatusLine;

    iget-object v3, p0, Lokhttp3/Cache$Entry;->protocol:Lokhttp3/Protocol;

    iget v5, p0, Lokhttp3/Cache$Entry;->code:I

    iget-object v6, p0, Lokhttp3/Cache$Entry;->message:Ljava/lang/String;

    invoke-direct {v1, v3, v5, v6}, Lokhttp3/internal/http/StatusLine;-><init>(Lokhttp3/Protocol;ILjava/lang/String;)V

    invoke-virtual {v1}, Lokhttp3/internal/http/StatusLine;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    move-result-object v1

    .line 628
    invoke-interface {v1, v2}, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;

    .line 629
    iget-object v1, p0, Lokhttp3/Cache$Entry;->responseHeaders:Lokhttp3/Headers;

    invoke-virtual {v1}, Lokhttp3/Headers;->size()I

    move-result v1

    add-int/lit8 v1, v1, 0x2

    int-to-long v5, v1

    invoke-interface {p1, v5, v6}, Lokio/BufferedSink;->writeDecimalLong(J)Lokio/BufferedSink;

    move-result-object v1

    .line 630
    invoke-interface {v1, v2}, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;

    .line 631
    iget-object v1, p0, Lokhttp3/Cache$Entry;->responseHeaders:Lokhttp3/Headers;

    invoke-virtual {v1}, Lokhttp3/Headers;->size()I

    move-result v1

    :goto_80
    if-ge v0, v1, :cond_a0

    .line 632
    iget-object v3, p0, Lokhttp3/Cache$Entry;->responseHeaders:Lokhttp3/Headers;

    invoke-virtual {v3, v0}, Lokhttp3/Headers;->name(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v3}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    move-result-object v3

    .line 633
    invoke-interface {v3, v4}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    move-result-object v3

    iget-object v5, p0, Lokhttp3/Cache$Entry;->responseHeaders:Lokhttp3/Headers;

    .line 634
    invoke-virtual {v5, v0}, Lokhttp3/Headers;->value(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    move-result-object v3

    .line 635
    invoke-interface {v3, v2}, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;

    add-int/lit8 v0, v0, 0x1

    goto :goto_80

    .line 637
    :cond_a0
    sget-object v0, Lokhttp3/Cache$Entry;->SENT_MILLIS:Ljava/lang/String;

    invoke-interface {p1, v0}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    move-result-object v0

    .line 638
    invoke-interface {v0, v4}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    move-result-object v0

    iget-wide v5, p0, Lokhttp3/Cache$Entry;->sentRequestMillis:J

    .line 639
    invoke-interface {v0, v5, v6}, Lokio/BufferedSink;->writeDecimalLong(J)Lokio/BufferedSink;

    move-result-object v0

    .line 640
    invoke-interface {v0, v2}, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;

    .line 641
    sget-object v0, Lokhttp3/Cache$Entry;->RECEIVED_MILLIS:Ljava/lang/String;

    invoke-interface {p1, v0}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    move-result-object v0

    .line 642
    invoke-interface {v0, v4}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    move-result-object v0

    iget-wide v3, p0, Lokhttp3/Cache$Entry;->receivedResponseMillis:J

    .line 643
    invoke-interface {v0, v3, v4}, Lokio/BufferedSink;->writeDecimalLong(J)Lokio/BufferedSink;

    move-result-object v0

    .line 644
    invoke-interface {v0, v2}, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;

    .line 646
    invoke-direct {p0}, Lokhttp3/Cache$Entry;->isHttps()Z

    move-result v0

    if-eqz v0, :cond_103

    .line 647
    invoke-interface {p1, v2}, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;

    .line 648
    iget-object v0, p0, Lokhttp3/Cache$Entry;->handshake:Lokhttp3/Handshake;

    invoke-virtual {v0}, Lokhttp3/Handshake;->cipherSuite()Lokhttp3/CipherSuite;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/CipherSuite;->javaName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    move-result-object v0

    .line 649
    invoke-interface {v0, v2}, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;

    .line 650
    iget-object v0, p0, Lokhttp3/Cache$Entry;->handshake:Lokhttp3/Handshake;

    invoke-virtual {v0}, Lokhttp3/Handshake;->peerCertificates()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lokhttp3/Cache$Entry;->writeCertList(Lokio/BufferedSink;Ljava/util/List;)V

    .line 651
    iget-object v0, p0, Lokhttp3/Cache$Entry;->handshake:Lokhttp3/Handshake;

    invoke-virtual {v0}, Lokhttp3/Handshake;->localCertificates()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lokhttp3/Cache$Entry;->writeCertList(Lokio/BufferedSink;Ljava/util/List;)V

    .line 652
    iget-object v0, p0, Lokhttp3/Cache$Entry;->handshake:Lokhttp3/Handshake;

    invoke-virtual {v0}, Lokhttp3/Handshake;->tlsVersion()Lokhttp3/TlsVersion;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/TlsVersion;->javaName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    move-result-object v0

    invoke-interface {v0, v2}, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;

    .line 654
    :cond_103
    invoke-interface {p1}, Lokio/BufferedSink;->close()V

    return-void
.end method
