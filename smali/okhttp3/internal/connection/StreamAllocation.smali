###### Class okhttp3.internal.connection.StreamAllocation (okhttp3.internal.connection.StreamAllocation)
.class public final Lokhttp3/internal/connection/StreamAllocation;
.super Ljava/lang/Object;
.source "StreamAllocation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/internal/connection/StreamAllocation$StreamAllocationReference;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field public final address:Lokhttp3/Address;

.field public final call:Lokhttp3/Call;

.field private final callStackTrace:Ljava/lang/Object;

.field private canceled:Z

.field private codec:Lokhttp3/internal/http/HttpCodec;

.field private connection:Lokhttp3/internal/connection/RealConnection;

.field private final connectionPool:Lokhttp3/ConnectionPool;

.field public final eventListener:Lokhttp3/EventListener;

.field private refusedStreamCount:I

.field private released:Z

.field private reportedAcquired:Z

.field private route:Lokhttp3/Route;

.field private routeSelection:Lokhttp3/internal/connection/RouteSelector$Selection;

.field private final routeSelector:Lokhttp3/internal/connection/RouteSelector;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Lokhttp3/ConnectionPool;Lokhttp3/Address;Lokhttp3/Call;Lokhttp3/EventListener;Ljava/lang/Object;)V
    .registers 7

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    iput-object p1, p0, Lokhttp3/internal/connection/StreamAllocation;->connectionPool:Lokhttp3/ConnectionPool;

    .line 98
    iput-object p2, p0, Lokhttp3/internal/connection/StreamAllocation;->address:Lokhttp3/Address;

    .line 99
    iput-object p3, p0, Lokhttp3/internal/connection/StreamAllocation;->call:Lokhttp3/Call;

    .line 100
    iput-object p4, p0, Lokhttp3/internal/connection/StreamAllocation;->eventListener:Lokhttp3/EventListener;

    .line 101
    new-instance p1, Lokhttp3/internal/connection/RouteSelector;

    invoke-direct {p0}, Lokhttp3/internal/connection/StreamAllocation;->routeDatabase()Lokhttp3/internal/connection/RouteDatabase;

    move-result-object v0

    invoke-direct {p1, p2, v0, p3, p4}, Lokhttp3/internal/connection/RouteSelector;-><init>(Lokhttp3/Address;Lokhttp3/internal/connection/RouteDatabase;Lokhttp3/Call;Lokhttp3/EventListener;)V

    iput-object p1, p0, Lokhttp3/internal/connection/StreamAllocation;->routeSelector:Lokhttp3/internal/connection/RouteSelector;

    .line 102
    iput-object p5, p0, Lokhttp3/internal/connection/StreamAllocation;->callStackTrace:Ljava/lang/Object;

    return-void
.end method

.method private deallocate(ZZZ)Ljava/net/Socket;
    .registers 5

    const/4 v0, 0x0

    if-eqz p3, :cond_5

    .line 389
    iput-object v0, p0, Lokhttp3/internal/connection/StreamAllocation;->codec:Lokhttp3/internal/http/HttpCodec;

    :cond_5
    const/4 p3, 0x1

    if-eqz p2, :cond_a

    .line 392
    iput-boolean p3, p0, Lokhttp3/internal/connection/StreamAllocation;->released:Z

    .line 395
    :cond_a
    iget-object p2, p0, Lokhttp3/internal/connection/StreamAllocation;->connection:Lokhttp3/internal/connection/RealConnection;

    if-eqz p2, :cond_4e

    if-eqz p1, :cond_12

    .line 397
    iput-boolean p3, p2, Lokhttp3/internal/connection/RealConnection;->noNewStreams:Z

    .line 399
    :cond_12
    iget-object p1, p0, Lokhttp3/internal/connection/StreamAllocation;->codec:Lokhttp3/internal/http/HttpCodec;

    if-nez p1, :cond_4e

    iget-boolean p1, p0, Lokhttp3/internal/connection/StreamAllocation;->released:Z

    if-nez p1, :cond_20

    iget-object p1, p0, Lokhttp3/internal/connection/StreamAllocation;->connection:Lokhttp3/internal/connection/RealConnection;

    iget-boolean p1, p1, Lokhttp3/internal/connection/RealConnection;->noNewStreams:Z

    if-eqz p1, :cond_4e

    .line 400
    :cond_20
    iget-object p1, p0, Lokhttp3/internal/connection/StreamAllocation;->connection:Lokhttp3/internal/connection/RealConnection;

    invoke-direct {p0, p1}, Lokhttp3/internal/connection/StreamAllocation;->release(Lokhttp3/internal/connection/RealConnection;)V

    .line 401
    iget-object p1, p0, Lokhttp3/internal/connection/StreamAllocation;->connection:Lokhttp3/internal/connection/RealConnection;

    iget-object p1, p1, Lokhttp3/internal/connection/RealConnection;->allocations:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_4a

    .line 402
    iget-object p1, p0, Lokhttp3/internal/connection/StreamAllocation;->connection:Lokhttp3/internal/connection/RealConnection;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide p2

    iput-wide p2, p1, Lokhttp3/internal/connection/RealConnection;->idleAtNanos:J

    .line 403
    sget-object p1, Lokhttp3/internal/Internal;->instance:Lokhttp3/internal/Internal;

    iget-object p2, p0, Lokhttp3/internal/connection/StreamAllocation;->connectionPool:Lokhttp3/ConnectionPool;

    iget-object p3, p0, Lokhttp3/internal/connection/StreamAllocation;->connection:Lokhttp3/internal/connection/RealConnection;

    invoke-virtual {p1, p2, p3}, Lokhttp3/internal/Internal;->connectionBecameIdle(Lokhttp3/ConnectionPool;Lokhttp3/internal/connection/RealConnection;)Z

    move-result p1

    if-eqz p1, :cond_4a

    .line 404
    iget-object p1, p0, Lokhttp3/internal/connection/StreamAllocation;->connection:Lokhttp3/internal/connection/RealConnection;

    invoke-virtual {p1}, Lokhttp3/internal/connection/RealConnection;->socket()Ljava/net/Socket;

    move-result-object p1

    goto :goto_4b

    :cond_4a
    move-object p1, v0

    .line 407
    :goto_4b
    iput-object v0, p0, Lokhttp3/internal/connection/StreamAllocation;->connection:Lokhttp3/internal/connection/RealConnection;

    return-object p1

    :cond_4e
    return-object v0
.end method

.method private findConnection(IIIIZ)Lokhttp3/internal/connection/RealConnection;
    .registers 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 167
    iget-object v1, p0, Lokhttp3/internal/connection/StreamAllocation;->connectionPool:Lokhttp3/ConnectionPool;

    monitor-enter v1

    .line 168
    :try_start_3
    iget-boolean v0, p0, Lokhttp3/internal/connection/StreamAllocation;->released:Z

    if-nez v0, :cond_12d

    .line 169
    iget-object v0, p0, Lokhttp3/internal/connection/StreamAllocation;->codec:Lokhttp3/internal/http/HttpCodec;

    if-nez v0, :cond_125

    .line 170
    iget-boolean v0, p0, Lokhttp3/internal/connection/StreamAllocation;->canceled:Z

    if-nez v0, :cond_11d

    .line 174
    iget-object v0, p0, Lokhttp3/internal/connection/StreamAllocation;->connection:Lokhttp3/internal/connection/RealConnection;

    .line 175
    invoke-direct {p0}, Lokhttp3/internal/connection/StreamAllocation;->releaseIfNoNewStreams()Ljava/net/Socket;

    move-result-object v2

    .line 176
    iget-object v3, p0, Lokhttp3/internal/connection/StreamAllocation;->connection:Lokhttp3/internal/connection/RealConnection;

    const/4 v4, 0x0

    if-eqz v3, :cond_1c

    move-object v0, v4

    goto :goto_1d

    :cond_1c
    move-object v3, v4

    .line 181
    :goto_1d
    iget-boolean v5, p0, Lokhttp3/internal/connection/StreamAllocation;->reportedAcquired:Z

    if-nez v5, :cond_22

    move-object v0, v4

    :cond_22
    const/4 v5, 0x1

    const/4 v6, 0x0

    if-nez v3, :cond_3a

    .line 188
    sget-object v7, Lokhttp3/internal/Internal;->instance:Lokhttp3/internal/Internal;

    iget-object v8, p0, Lokhttp3/internal/connection/StreamAllocation;->connectionPool:Lokhttp3/ConnectionPool;

    iget-object v9, p0, Lokhttp3/internal/connection/StreamAllocation;->address:Lokhttp3/Address;

    invoke-virtual {v7, v8, v9, p0, v4}, Lokhttp3/internal/Internal;->get(Lokhttp3/ConnectionPool;Lokhttp3/Address;Lokhttp3/internal/connection/StreamAllocation;Lokhttp3/Route;)Lokhttp3/internal/connection/RealConnection;

    .line 189
    iget-object v7, p0, Lokhttp3/internal/connection/StreamAllocation;->connection:Lokhttp3/internal/connection/RealConnection;

    if-eqz v7, :cond_37

    move-object v3, v7

    const/4 v8, 0x1

    move-object v7, v4

    goto :goto_3c

    .line 193
    :cond_37
    iget-object v7, p0, Lokhttp3/internal/connection/StreamAllocation;->route:Lokhttp3/Route;

    goto :goto_3b

    :cond_3a
    move-object v7, v4

    :goto_3b
    const/4 v8, 0x0

    .line 196
    :goto_3c
    monitor-exit v1
    :try_end_3d
    .catchall {:try_start_3 .. :try_end_3d} :catchall_135

    .line 197
    invoke-static {v2}, Lokhttp3/internal/Util;->closeQuietly(Ljava/net/Socket;)V

    if-eqz v0, :cond_49

    .line 200
    iget-object v1, p0, Lokhttp3/internal/connection/StreamAllocation;->eventListener:Lokhttp3/EventListener;

    iget-object v2, p0, Lokhttp3/internal/connection/StreamAllocation;->call:Lokhttp3/Call;

    invoke-virtual {v1, v2, v0}, Lokhttp3/EventListener;->connectionReleased(Lokhttp3/Call;Lokhttp3/Connection;)V

    :cond_49
    if-eqz v8, :cond_52

    .line 203
    iget-object v0, p0, Lokhttp3/internal/connection/StreamAllocation;->eventListener:Lokhttp3/EventListener;

    iget-object v1, p0, Lokhttp3/internal/connection/StreamAllocation;->call:Lokhttp3/Call;

    invoke-virtual {v0, v1, v3}, Lokhttp3/EventListener;->connectionAcquired(Lokhttp3/Call;Lokhttp3/Connection;)V

    :cond_52
    if-eqz v3, :cond_5d

    .line 207
    iget-object p1, p0, Lokhttp3/internal/connection/StreamAllocation;->connection:Lokhttp3/internal/connection/RealConnection;

    invoke-virtual {p1}, Lokhttp3/internal/connection/RealConnection;->route()Lokhttp3/Route;

    move-result-object p1

    iput-object p1, p0, Lokhttp3/internal/connection/StreamAllocation;->route:Lokhttp3/Route;

    return-object v3

    :cond_5d
    if-nez v7, :cond_73

    .line 213
    iget-object v0, p0, Lokhttp3/internal/connection/StreamAllocation;->routeSelection:Lokhttp3/internal/connection/RouteSelector$Selection;

    if-eqz v0, :cond_69

    invoke-virtual {v0}, Lokhttp3/internal/connection/RouteSelector$Selection;->hasNext()Z

    move-result v0

    if-nez v0, :cond_73

    .line 215
    :cond_69
    iget-object v0, p0, Lokhttp3/internal/connection/StreamAllocation;->routeSelector:Lokhttp3/internal/connection/RouteSelector;

    invoke-virtual {v0}, Lokhttp3/internal/connection/RouteSelector;->next()Lokhttp3/internal/connection/RouteSelector$Selection;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/internal/connection/StreamAllocation;->routeSelection:Lokhttp3/internal/connection/RouteSelector$Selection;

    const/4 v0, 0x1

    goto :goto_74

    :cond_73
    const/4 v0, 0x0

    .line 218
    :goto_74
    iget-object v2, p0, Lokhttp3/internal/connection/StreamAllocation;->connectionPool:Lokhttp3/ConnectionPool;

    monitor-enter v2

    .line 219
    :try_start_77
    iget-boolean v1, p0, Lokhttp3/internal/connection/StreamAllocation;->canceled:Z

    if-nez v1, :cond_111

    if-eqz v0, :cond_a5

    .line 224
    iget-object v0, p0, Lokhttp3/internal/connection/StreamAllocation;->routeSelection:Lokhttp3/internal/connection/RouteSelector$Selection;

    invoke-virtual {v0}, Lokhttp3/internal/connection/RouteSelector$Selection;->getAll()Ljava/util/List;

    move-result-object v0

    .line 225
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v9, 0x0

    :goto_88
    if-ge v9, v1, :cond_a5

    .line 226
    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lokhttp3/Route;

    .line 227
    sget-object v11, Lokhttp3/internal/Internal;->instance:Lokhttp3/internal/Internal;

    iget-object v12, p0, Lokhttp3/internal/connection/StreamAllocation;->connectionPool:Lokhttp3/ConnectionPool;

    iget-object v13, p0, Lokhttp3/internal/connection/StreamAllocation;->address:Lokhttp3/Address;

    invoke-virtual {v11, v12, v13, p0, v10}, Lokhttp3/internal/Internal;->get(Lokhttp3/ConnectionPool;Lokhttp3/Address;Lokhttp3/internal/connection/StreamAllocation;Lokhttp3/Route;)Lokhttp3/internal/connection/RealConnection;

    .line 228
    iget-object v11, p0, Lokhttp3/internal/connection/StreamAllocation;->connection:Lokhttp3/internal/connection/RealConnection;

    if-eqz v11, :cond_a2

    .line 231
    iput-object v10, p0, Lokhttp3/internal/connection/StreamAllocation;->route:Lokhttp3/Route;

    move-object v3, v11

    const/4 v8, 0x1

    goto :goto_a5

    :cond_a2
    add-int/lit8 v9, v9, 0x1

    goto :goto_88

    :cond_a5
    :goto_a5
    if-nez v8, :cond_bd

    if-nez v7, :cond_af

    .line 239
    iget-object v0, p0, Lokhttp3/internal/connection/StreamAllocation;->routeSelection:Lokhttp3/internal/connection/RouteSelector$Selection;

    invoke-virtual {v0}, Lokhttp3/internal/connection/RouteSelector$Selection;->next()Lokhttp3/Route;

    move-result-object v7

    .line 244
    :cond_af
    iput-object v7, p0, Lokhttp3/internal/connection/StreamAllocation;->route:Lokhttp3/Route;

    .line 245
    iput v6, p0, Lokhttp3/internal/connection/StreamAllocation;->refusedStreamCount:I

    .line 246
    new-instance v3, Lokhttp3/internal/connection/RealConnection;

    iget-object v0, p0, Lokhttp3/internal/connection/StreamAllocation;->connectionPool:Lokhttp3/ConnectionPool;

    invoke-direct {v3, v0, v7}, Lokhttp3/internal/connection/RealConnection;-><init>(Lokhttp3/ConnectionPool;Lokhttp3/Route;)V

    .line 247
    invoke-virtual {p0, v3, v6}, Lokhttp3/internal/connection/StreamAllocation;->acquire(Lokhttp3/internal/connection/RealConnection;Z)V

    :cond_bd
    move-object v6, v3

    .line 249
    monitor-exit v2
    :try_end_bf
    .catchall {:try_start_77 .. :try_end_bf} :catchall_119

    if-eqz v8, :cond_c9

    .line 253
    iget-object p1, p0, Lokhttp3/internal/connection/StreamAllocation;->eventListener:Lokhttp3/EventListener;

    iget-object v0, p0, Lokhttp3/internal/connection/StreamAllocation;->call:Lokhttp3/Call;

    invoke-virtual {p1, v0, v6}, Lokhttp3/EventListener;->connectionAcquired(Lokhttp3/Call;Lokhttp3/Connection;)V

    return-object v6

    .line 258
    :cond_c9
    iget-object v12, p0, Lokhttp3/internal/connection/StreamAllocation;->call:Lokhttp3/Call;

    iget-object v13, p0, Lokhttp3/internal/connection/StreamAllocation;->eventListener:Lokhttp3/EventListener;

    move v7, p1

    move/from16 v8, p2

    move/from16 v9, p3

    move/from16 v10, p4

    move/from16 v11, p5

    invoke-virtual/range {v6 .. v13}, Lokhttp3/internal/connection/RealConnection;->connect(IIIIZLokhttp3/Call;Lokhttp3/EventListener;)V

    .line 260
    invoke-direct {p0}, Lokhttp3/internal/connection/StreamAllocation;->routeDatabase()Lokhttp3/internal/connection/RouteDatabase;

    move-result-object p1

    invoke-virtual {v6}, Lokhttp3/internal/connection/RealConnection;->route()Lokhttp3/Route;

    move-result-object v0

    invoke-virtual {p1, v0}, Lokhttp3/internal/connection/RouteDatabase;->connected(Lokhttp3/Route;)V

    .line 263
    iget-object p1, p0, Lokhttp3/internal/connection/StreamAllocation;->connectionPool:Lokhttp3/ConnectionPool;

    monitor-enter p1

    .line 264
    :try_start_e7
    iput-boolean v5, p0, Lokhttp3/internal/connection/StreamAllocation;->reportedAcquired:Z

    .line 267
    sget-object v0, Lokhttp3/internal/Internal;->instance:Lokhttp3/internal/Internal;

    iget-object v1, p0, Lokhttp3/internal/connection/StreamAllocation;->connectionPool:Lokhttp3/ConnectionPool;

    invoke-virtual {v0, v1, v6}, Lokhttp3/internal/Internal;->put(Lokhttp3/ConnectionPool;Lokhttp3/internal/connection/RealConnection;)V

    .line 271
    invoke-virtual {v6}, Lokhttp3/internal/connection/RealConnection;->isMultiplexed()Z

    move-result v0

    if-eqz v0, :cond_102

    .line 272
    sget-object v0, Lokhttp3/internal/Internal;->instance:Lokhttp3/internal/Internal;

    iget-object v1, p0, Lokhttp3/internal/connection/StreamAllocation;->connectionPool:Lokhttp3/ConnectionPool;

    iget-object v2, p0, Lokhttp3/internal/connection/StreamAllocation;->address:Lokhttp3/Address;

    invoke-virtual {v0, v1, v2, p0}, Lokhttp3/internal/Internal;->deduplicate(Lokhttp3/ConnectionPool;Lokhttp3/Address;Lokhttp3/internal/connection/StreamAllocation;)Ljava/net/Socket;

    move-result-object v4

    .line 273
    iget-object v6, p0, Lokhttp3/internal/connection/StreamAllocation;->connection:Lokhttp3/internal/connection/RealConnection;

    .line 275
    :cond_102
    monitor-exit p1
    :try_end_103
    .catchall {:try_start_e7 .. :try_end_103} :catchall_10e

    .line 276
    invoke-static {v4}, Lokhttp3/internal/Util;->closeQuietly(Ljava/net/Socket;)V

    .line 278
    iget-object p1, p0, Lokhttp3/internal/connection/StreamAllocation;->eventListener:Lokhttp3/EventListener;

    iget-object v0, p0, Lokhttp3/internal/connection/StreamAllocation;->call:Lokhttp3/Call;

    invoke-virtual {p1, v0, v6}, Lokhttp3/EventListener;->connectionAcquired(Lokhttp3/Call;Lokhttp3/Connection;)V

    return-object v6

    :catchall_10e
    move-exception v0

    .line 275
    :try_start_10f
    monitor-exit p1
    :try_end_110
    .catchall {:try_start_10f .. :try_end_110} :catchall_10e

    throw v0

    .line 219
    :cond_111
    :try_start_111
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Canceled"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_119
    move-exception v0

    move-object p1, v0

    .line 249
    monitor-exit v2
    :try_end_11c
    .catchall {:try_start_111 .. :try_end_11c} :catchall_119

    throw p1

    .line 170
    :cond_11d
    :try_start_11d
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Canceled"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 169
    :cond_125
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "codec != null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 168
    :cond_12d
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "released"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_135
    move-exception v0

    move-object p1, v0

    .line 196
    monitor-exit v1
    :try_end_138
    .catchall {:try_start_11d .. :try_end_138} :catchall_135

    throw p1
.end method

.method private findHealthyConnection(IIIIZZ)Lokhttp3/internal/connection/RealConnection;
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 135
    :goto_0
    invoke-direct/range {p0 .. p5}, Lokhttp3/internal/connection/StreamAllocation;->findConnection(IIIIZ)Lokhttp3/internal/connection/RealConnection;

    move-result-object v0

    move v1, p5

    move p5, p4

    move p4, p3

    move p3, p2

    move p2, p1

    move-object p1, p0

    .line 139
    iget-object v2, p1, Lokhttp3/internal/connection/StreamAllocation;->connectionPool:Lokhttp3/ConnectionPool;

    monitor-enter v2

    .line 140
    :try_start_d
    iget v3, v0, Lokhttp3/internal/connection/RealConnection;->successCount:I

    if-nez v3, :cond_19

    invoke-virtual {v0}, Lokhttp3/internal/connection/RealConnection;->isMultiplexed()Z

    move-result v3

    if-nez v3, :cond_19

    .line 141
    monitor-exit v2

    return-object v0

    .line 143
    :cond_19
    monitor-exit v2
    :try_end_1a
    .catchall {:try_start_d .. :try_end_1a} :catchall_2a

    .line 147
    invoke-virtual {v0, p6}, Lokhttp3/internal/connection/RealConnection;->isHealthy(Z)Z

    move-result v2

    if-nez v2, :cond_29

    .line 148
    invoke-virtual {p0}, Lokhttp3/internal/connection/StreamAllocation;->noNewStreams()V

    move p1, p2

    move p2, p3

    move p3, p4

    move p4, p5

    move p5, v1

    goto :goto_0

    :cond_29
    return-object v0

    :catchall_2a
    move-exception v0

    move-object p2, v0

    .line 143
    :try_start_2c
    monitor-exit v2
    :try_end_2d
    .catchall {:try_start_2c .. :try_end_2d} :catchall_2a

    throw p2
.end method

.method private release(Lokhttp3/internal/connection/RealConnection;)V
    .registers 5

    .line 486
    iget-object v0, p1, Lokhttp3/internal/connection/RealConnection;->allocations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_20

    .line 487
    iget-object v2, p1, Lokhttp3/internal/connection/RealConnection;->allocations:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/Reference;

    .line 488
    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p0, :cond_1d

    .line 489
    iget-object p1, p1, Lokhttp3/internal/connection/RealConnection;->allocations:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    return-void

    :cond_1d
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 493
    :cond_20
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method private releaseIfNoNewStreams()Ljava/net/Socket;
    .registers 3

    .line 290
    iget-object v0, p0, Lokhttp3/internal/connection/StreamAllocation;->connection:Lokhttp3/internal/connection/RealConnection;

    if-eqz v0, :cond_f

    .line 291
    iget-boolean v0, v0, Lokhttp3/internal/connection/RealConnection;->noNewStreams:Z

    if-eqz v0, :cond_f

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 292
    invoke-direct {p0, v1, v1, v0}, Lokhttp3/internal/connection/StreamAllocation;->deallocate(ZZZ)Ljava/net/Socket;

    move-result-object v0

    return-object v0

    :cond_f
    const/4 v0, 0x0

    return-object v0
.end method

.method private routeDatabase()Lokhttp3/internal/connection/RouteDatabase;
    .registers 3

    .line 336
    sget-object v0, Lokhttp3/internal/Internal;->instance:Lokhttp3/internal/Internal;

    iget-object v1, p0, Lokhttp3/internal/connection/StreamAllocation;->connectionPool:Lokhttp3/ConnectionPool;

    invoke-virtual {v0, v1}, Lokhttp3/internal/Internal;->routeDatabase(Lokhttp3/ConnectionPool;)Lokhttp3/internal/connection/RouteDatabase;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public acquire(Lokhttp3/internal/connection/RealConnection;Z)V
    .registers 4

    .line 477
    iget-object v0, p0, Lokhttp3/internal/connection/StreamAllocation;->connection:Lokhttp3/internal/connection/RealConnection;

    if-nez v0, :cond_15

    .line 479
    iput-object p1, p0, Lokhttp3/internal/connection/StreamAllocation;->connection:Lokhttp3/internal/connection/RealConnection;

    .line 480
    iput-boolean p2, p0, Lokhttp3/internal/connection/StreamAllocation;->reportedAcquired:Z

    .line 481
    iget-object p1, p1, Lokhttp3/internal/connection/RealConnection;->allocations:Ljava/util/List;

    new-instance p2, Lokhttp3/internal/connection/StreamAllocation$StreamAllocationReference;

    iget-object v0, p0, Lokhttp3/internal/connection/StreamAllocation;->callStackTrace:Ljava/lang/Object;

    invoke-direct {p2, p0, v0}, Lokhttp3/internal/connection/StreamAllocation$StreamAllocationReference;-><init>(Lokhttp3/internal/connection/StreamAllocation;Ljava/lang/Object;)V

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 477
    :cond_15
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method public cancel()V
    .registers 4

    .line 416
    iget-object v0, p0, Lokhttp3/internal/connection/StreamAllocation;->connectionPool:Lokhttp3/ConnectionPool;

    monitor-enter v0

    const/4 v1, 0x1

    .line 417
    :try_start_4
    iput-boolean v1, p0, Lokhttp3/internal/connection/StreamAllocation;->canceled:Z

    .line 418
    iget-object v1, p0, Lokhttp3/internal/connection/StreamAllocation;->codec:Lokhttp3/internal/http/HttpCodec;

    .line 419
    iget-object v2, p0, Lokhttp3/internal/connection/StreamAllocation;->connection:Lokhttp3/internal/connection/RealConnection;

    .line 420
    monitor-exit v0
    :try_end_b
    .catchall {:try_start_4 .. :try_end_b} :catchall_17

    if-eqz v1, :cond_11

    .line 422
    invoke-interface {v1}, Lokhttp3/internal/http/HttpCodec;->cancel()V

    return-void

    :cond_11
    if-eqz v2, :cond_16

    .line 424
    invoke-virtual {v2}, Lokhttp3/internal/connection/RealConnection;->cancel()V

    :cond_16
    return-void

    :catchall_17
    move-exception v1

    .line 420
    :try_start_18
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_18 .. :try_end_19} :catchall_17

    throw v1
.end method

.method public codec()Lokhttp3/internal/http/HttpCodec;
    .registers 3

    .line 330
    iget-object v0, p0, Lokhttp3/internal/connection/StreamAllocation;->connectionPool:Lokhttp3/ConnectionPool;

    monitor-enter v0

    .line 331
    :try_start_3
    iget-object v1, p0, Lokhttp3/internal/connection/StreamAllocation;->codec:Lokhttp3/internal/http/HttpCodec;

    monitor-exit v0

    return-object v1

    :catchall_7
    move-exception v1

    .line 332
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public declared-synchronized connection()Lokhttp3/internal/connection/RealConnection;
    .registers 2

    monitor-enter p0

    .line 344
    :try_start_1
    iget-object v0, p0, Lokhttp3/internal/connection/StreamAllocation;->connection:Lokhttp3/internal/connection/RealConnection;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    :try_start_6
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_6 .. :try_end_7} :catchall_5

    throw v0
.end method

.method public hasMoreRoutes()Z
    .registers 2

    .line 520
    iget-object v0, p0, Lokhttp3/internal/connection/StreamAllocation;->route:Lokhttp3/Route;

    if-nez v0, :cond_19

    iget-object v0, p0, Lokhttp3/internal/connection/StreamAllocation;->routeSelection:Lokhttp3/internal/connection/RouteSelector$Selection;

    if-eqz v0, :cond_e

    .line 521
    invoke-virtual {v0}, Lokhttp3/internal/connection/RouteSelector$Selection;->hasNext()Z

    move-result v0

    if-nez v0, :cond_19

    :cond_e
    iget-object v0, p0, Lokhttp3/internal/connection/StreamAllocation;->routeSelector:Lokhttp3/internal/connection/RouteSelector;

    .line 522
    invoke-virtual {v0}, Lokhttp3/internal/connection/RouteSelector;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_17

    goto :goto_19

    :cond_17
    const/4 v0, 0x0

    return v0

    :cond_19
    :goto_19
    const/4 v0, 0x1

    return v0
.end method

.method public newStream(Lokhttp3/OkHttpClient;Lokhttp3/Interceptor$Chain;Z)Lokhttp3/internal/http/HttpCodec;
    .registers 12

    .line 107
    invoke-interface {p2}, Lokhttp3/Interceptor$Chain;->connectTimeoutMillis()I

    move-result v2

    .line 108
    invoke-interface {p2}, Lokhttp3/Interceptor$Chain;->readTimeoutMillis()I

    move-result v3

    .line 109
    invoke-interface {p2}, Lokhttp3/Interceptor$Chain;->writeTimeoutMillis()I

    move-result v4

    .line 110
    invoke-virtual {p1}, Lokhttp3/OkHttpClient;->pingIntervalMillis()I

    move-result v5

    .line 111
    invoke-virtual {p1}, Lokhttp3/OkHttpClient;->retryOnConnectionFailure()Z

    move-result v6

    move-object v1, p0

    move v7, p3

    .line 114
    :try_start_16
    invoke-direct/range {v1 .. v7}, Lokhttp3/internal/connection/StreamAllocation;->findHealthyConnection(IIIIZZ)Lokhttp3/internal/connection/RealConnection;

    move-result-object p3

    .line 116
    invoke-virtual {p3, p1, p2, p0}, Lokhttp3/internal/connection/RealConnection;->newCodec(Lokhttp3/OkHttpClient;Lokhttp3/Interceptor$Chain;Lokhttp3/internal/connection/StreamAllocation;)Lokhttp3/internal/http/HttpCodec;

    move-result-object p1

    .line 118
    iget-object p2, v1, Lokhttp3/internal/connection/StreamAllocation;->connectionPool:Lokhttp3/ConnectionPool;

    monitor-enter p2
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_21} :catch_29

    .line 119
    :try_start_21
    iput-object p1, v1, Lokhttp3/internal/connection/StreamAllocation;->codec:Lokhttp3/internal/http/HttpCodec;

    .line 120
    monitor-exit p2

    return-object p1

    :catchall_25
    move-exception v0

    move-object p1, v0

    .line 121
    monitor-exit p2
    :try_end_28
    .catchall {:try_start_21 .. :try_end_28} :catchall_25

    :try_start_28
    throw p1
    :try_end_29
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_29} :catch_29

    :catch_29
    move-exception v0

    move-object p1, v0

    .line 123
    new-instance p2, Lokhttp3/internal/connection/RouteException;

    invoke-direct {p2, p1}, Lokhttp3/internal/connection/RouteException;-><init>(Ljava/io/IOException;)V

    throw p2
.end method

.method public noNewStreams()V
    .registers 5

    .line 367
    iget-object v0, p0, Lokhttp3/internal/connection/StreamAllocation;->connectionPool:Lokhttp3/ConnectionPool;

    monitor-enter v0

    .line 368
    :try_start_3
    iget-object v1, p0, Lokhttp3/internal/connection/StreamAllocation;->connection:Lokhttp3/internal/connection/RealConnection;

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 369
    invoke-direct {p0, v2, v3, v3}, Lokhttp3/internal/connection/StreamAllocation;->deallocate(ZZZ)Ljava/net/Socket;

    move-result-object v2

    .line 370
    iget-object v3, p0, Lokhttp3/internal/connection/StreamAllocation;->connection:Lokhttp3/internal/connection/RealConnection;

    if-eqz v3, :cond_10

    const/4 v1, 0x0

    .line 371
    :cond_10
    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_1e

    .line 372
    invoke-static {v2}, Lokhttp3/internal/Util;->closeQuietly(Ljava/net/Socket;)V

    if-eqz v1, :cond_1d

    .line 374
    iget-object v0, p0, Lokhttp3/internal/connection/StreamAllocation;->eventListener:Lokhttp3/EventListener;

    iget-object v2, p0, Lokhttp3/internal/connection/StreamAllocation;->call:Lokhttp3/Call;

    invoke-virtual {v0, v2, v1}, Lokhttp3/EventListener;->connectionReleased(Lokhttp3/Call;Lokhttp3/Connection;)V

    :cond_1d
    return-void

    :catchall_1e
    move-exception v1

    .line 371
    :try_start_1f
    monitor-exit v0
    :try_end_20
    .catchall {:try_start_1f .. :try_end_20} :catchall_1e

    throw v1
.end method

.method public release()V
    .registers 6

    .line 350
    iget-object v0, p0, Lokhttp3/internal/connection/StreamAllocation;->connectionPool:Lokhttp3/ConnectionPool;

    monitor-enter v0

    .line 351
    :try_start_3
    iget-object v1, p0, Lokhttp3/internal/connection/StreamAllocation;->connection:Lokhttp3/internal/connection/RealConnection;

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 352
    invoke-direct {p0, v3, v2, v3}, Lokhttp3/internal/connection/StreamAllocation;->deallocate(ZZZ)Ljava/net/Socket;

    move-result-object v2

    .line 353
    iget-object v3, p0, Lokhttp3/internal/connection/StreamAllocation;->connection:Lokhttp3/internal/connection/RealConnection;

    const/4 v4, 0x0

    if-eqz v3, :cond_11

    move-object v1, v4

    .line 354
    :cond_11
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_2d

    .line 355
    invoke-static {v2}, Lokhttp3/internal/Util;->closeQuietly(Ljava/net/Socket;)V

    if-eqz v1, :cond_2c

    .line 357
    sget-object v0, Lokhttp3/internal/Internal;->instance:Lokhttp3/internal/Internal;

    iget-object v2, p0, Lokhttp3/internal/connection/StreamAllocation;->call:Lokhttp3/Call;

    invoke-virtual {v0, v2, v4}, Lokhttp3/internal/Internal;->timeoutExit(Lokhttp3/Call;Ljava/io/IOException;)Ljava/io/IOException;

    .line 358
    iget-object v0, p0, Lokhttp3/internal/connection/StreamAllocation;->eventListener:Lokhttp3/EventListener;

    iget-object v2, p0, Lokhttp3/internal/connection/StreamAllocation;->call:Lokhttp3/Call;

    invoke-virtual {v0, v2, v1}, Lokhttp3/EventListener;->connectionReleased(Lokhttp3/Call;Lokhttp3/Connection;)V

    .line 359
    iget-object v0, p0, Lokhttp3/internal/connection/StreamAllocation;->eventListener:Lokhttp3/EventListener;

    iget-object v1, p0, Lokhttp3/internal/connection/StreamAllocation;->call:Lokhttp3/Call;

    invoke-virtual {v0, v1}, Lokhttp3/EventListener;->callEnd(Lokhttp3/Call;)V

    :cond_2c
    return-void

    :catchall_2d
    move-exception v1

    .line 354
    :try_start_2e
    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_2e .. :try_end_2f} :catchall_2d

    throw v1
.end method

.method public releaseAndAcquire(Lokhttp3/internal/connection/RealConnection;)Ljava/net/Socket;
    .registers 5

    .line 506
    iget-object v0, p0, Lokhttp3/internal/connection/StreamAllocation;->codec:Lokhttp3/internal/http/HttpCodec;

    if-nez v0, :cond_26

    iget-object v0, p0, Lokhttp3/internal/connection/StreamAllocation;->connection:Lokhttp3/internal/connection/RealConnection;

    iget-object v0, v0, Lokhttp3/internal/connection/RealConnection;->allocations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_26

    .line 509
    iget-object v0, p0, Lokhttp3/internal/connection/StreamAllocation;->connection:Lokhttp3/internal/connection/RealConnection;

    iget-object v0, v0, Lokhttp3/internal/connection/RealConnection;->allocations:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/Reference;

    .line 510
    invoke-direct {p0, v1, v2, v2}, Lokhttp3/internal/connection/StreamAllocation;->deallocate(ZZZ)Ljava/net/Socket;

    move-result-object v1

    .line 513
    iput-object p1, p0, Lokhttp3/internal/connection/StreamAllocation;->connection:Lokhttp3/internal/connection/RealConnection;

    .line 514
    iget-object p1, p1, Lokhttp3/internal/connection/RealConnection;->allocations:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v1

    .line 506
    :cond_26
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method public route()Lokhttp3/Route;
    .registers 2

    .line 340
    iget-object v0, p0, Lokhttp3/internal/connection/StreamAllocation;->route:Lokhttp3/Route;

    return-object v0
.end method

.method public streamFailed(Ljava/io/IOException;)V
    .registers 8

    .line 433
    iget-object v0, p0, Lokhttp3/internal/connection/StreamAllocation;->connectionPool:Lokhttp3/ConnectionPool;

    monitor-enter v0

    .line 434
    :try_start_3
    instance-of v1, p1, Lokhttp3/internal/http2/StreamResetException;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_23

    .line 435
    check-cast p1, Lokhttp3/internal/http2/StreamResetException;

    iget-object p1, p1, Lokhttp3/internal/http2/StreamResetException;->errorCode:Lokhttp3/internal/http2/ErrorCode;

    .line 436
    sget-object v1, Lokhttp3/internal/http2/ErrorCode;->REFUSED_STREAM:Lokhttp3/internal/http2/ErrorCode;

    if-ne p1, v1, :cond_1c

    .line 438
    iget p1, p0, Lokhttp3/internal/connection/StreamAllocation;->refusedStreamCount:I

    add-int/2addr p1, v3

    iput p1, p0, Lokhttp3/internal/connection/StreamAllocation;->refusedStreamCount:I

    if-le p1, v3, :cond_46

    .line 441
    iput-object v2, p0, Lokhttp3/internal/connection/StreamAllocation;->route:Lokhttp3/Route;

    goto :goto_44

    .line 443
    :cond_1c
    sget-object v1, Lokhttp3/internal/http2/ErrorCode;->CANCEL:Lokhttp3/internal/http2/ErrorCode;

    if-eq p1, v1, :cond_46

    .line 446
    iput-object v2, p0, Lokhttp3/internal/connection/StreamAllocation;->route:Lokhttp3/Route;

    goto :goto_44

    .line 448
    :cond_23
    iget-object v1, p0, Lokhttp3/internal/connection/StreamAllocation;->connection:Lokhttp3/internal/connection/RealConnection;

    if-eqz v1, :cond_46

    .line 449
    invoke-virtual {v1}, Lokhttp3/internal/connection/RealConnection;->isMultiplexed()Z

    move-result v1

    if-eqz v1, :cond_31

    instance-of v1, p1, Lokhttp3/internal/http2/ConnectionShutdownException;

    if-eqz v1, :cond_46

    .line 453
    :cond_31
    iget-object v1, p0, Lokhttp3/internal/connection/StreamAllocation;->connection:Lokhttp3/internal/connection/RealConnection;

    iget v1, v1, Lokhttp3/internal/connection/RealConnection;->successCount:I

    if-nez v1, :cond_44

    .line 454
    iget-object v1, p0, Lokhttp3/internal/connection/StreamAllocation;->route:Lokhttp3/Route;

    if-eqz v1, :cond_42

    if-eqz p1, :cond_42

    .line 455
    iget-object v5, p0, Lokhttp3/internal/connection/StreamAllocation;->routeSelector:Lokhttp3/internal/connection/RouteSelector;

    invoke-virtual {v5, v1, p1}, Lokhttp3/internal/connection/RouteSelector;->connectFailed(Lokhttp3/Route;Ljava/io/IOException;)V

    .line 457
    :cond_42
    iput-object v2, p0, Lokhttp3/internal/connection/StreamAllocation;->route:Lokhttp3/Route;

    :cond_44
    :goto_44
    const/4 p1, 0x1

    goto :goto_47

    :cond_46
    const/4 p1, 0x0

    .line 460
    :goto_47
    iget-object v1, p0, Lokhttp3/internal/connection/StreamAllocation;->connection:Lokhttp3/internal/connection/RealConnection;

    .line 461
    invoke-direct {p0, p1, v4, v3}, Lokhttp3/internal/connection/StreamAllocation;->deallocate(ZZZ)Ljava/net/Socket;

    move-result-object p1

    .line 462
    iget-object v3, p0, Lokhttp3/internal/connection/StreamAllocation;->connection:Lokhttp3/internal/connection/RealConnection;

    if-nez v3, :cond_57

    iget-boolean v3, p0, Lokhttp3/internal/connection/StreamAllocation;->reportedAcquired:Z

    if-nez v3, :cond_56

    goto :goto_57

    :cond_56
    move-object v2, v1

    .line 463
    :cond_57
    :goto_57
    monitor-exit v0
    :try_end_58
    .catchall {:try_start_3 .. :try_end_58} :catchall_65

    .line 465
    invoke-static {p1}, Lokhttp3/internal/Util;->closeQuietly(Ljava/net/Socket;)V

    if-eqz v2, :cond_64

    .line 467
    iget-object p1, p0, Lokhttp3/internal/connection/StreamAllocation;->eventListener:Lokhttp3/EventListener;

    iget-object v0, p0, Lokhttp3/internal/connection/StreamAllocation;->call:Lokhttp3/Call;

    invoke-virtual {p1, v0, v2}, Lokhttp3/EventListener;->connectionReleased(Lokhttp3/Call;Lokhttp3/Connection;)V

    :cond_64
    return-void

    :catchall_65
    move-exception p1

    .line 463
    :try_start_66
    monitor-exit v0
    :try_end_67
    .catchall {:try_start_66 .. :try_end_67} :catchall_65

    throw p1
.end method

.method public streamFinished(ZLokhttp3/internal/http/HttpCodec;JLjava/io/IOException;)V
    .registers 9

    const-string v0, "expected "

    .line 298
    iget-object v1, p0, Lokhttp3/internal/connection/StreamAllocation;->eventListener:Lokhttp3/EventListener;

    iget-object v2, p0, Lokhttp3/internal/connection/StreamAllocation;->call:Lokhttp3/Call;

    invoke-virtual {v1, v2, p3, p4}, Lokhttp3/EventListener;->responseBodyEnd(Lokhttp3/Call;J)V

    .line 303
    iget-object p3, p0, Lokhttp3/internal/connection/StreamAllocation;->connectionPool:Lokhttp3/ConnectionPool;

    monitor-enter p3

    if-eqz p2, :cond_5b

    .line 304
    :try_start_e
    iget-object p4, p0, Lokhttp3/internal/connection/StreamAllocation;->codec:Lokhttp3/internal/http/HttpCodec;

    if-ne p2, p4, :cond_5b

    const/4 p2, 0x1

    if-nez p1, :cond_1c

    .line 308
    iget-object p4, p0, Lokhttp3/internal/connection/StreamAllocation;->connection:Lokhttp3/internal/connection/RealConnection;

    iget v0, p4, Lokhttp3/internal/connection/RealConnection;->successCount:I

    add-int/2addr v0, p2

    iput v0, p4, Lokhttp3/internal/connection/RealConnection;->successCount:I

    .line 310
    :cond_1c
    iget-object p4, p0, Lokhttp3/internal/connection/StreamAllocation;->connection:Lokhttp3/internal/connection/RealConnection;

    const/4 v0, 0x0

    .line 311
    invoke-direct {p0, p1, v0, p2}, Lokhttp3/internal/connection/StreamAllocation;->deallocate(ZZZ)Ljava/net/Socket;

    move-result-object p1

    .line 312
    iget-object p2, p0, Lokhttp3/internal/connection/StreamAllocation;->connection:Lokhttp3/internal/connection/RealConnection;

    const/4 v0, 0x0

    if-eqz p2, :cond_29

    move-object p4, v0

    .line 313
    :cond_29
    iget-boolean p2, p0, Lokhttp3/internal/connection/StreamAllocation;->released:Z

    .line 314
    monitor-exit p3
    :try_end_2c
    .catchall {:try_start_e .. :try_end_2c} :catchall_77

    .line 315
    invoke-static {p1}, Lokhttp3/internal/Util;->closeQuietly(Ljava/net/Socket;)V

    if-eqz p4, :cond_38

    .line 317
    iget-object p1, p0, Lokhttp3/internal/connection/StreamAllocation;->eventListener:Lokhttp3/EventListener;

    iget-object p3, p0, Lokhttp3/internal/connection/StreamAllocation;->call:Lokhttp3/Call;

    invoke-virtual {p1, p3, p4}, Lokhttp3/EventListener;->connectionReleased(Lokhttp3/Call;Lokhttp3/Connection;)V

    :cond_38
    if-eqz p5, :cond_4a

    .line 321
    sget-object p1, Lokhttp3/internal/Internal;->instance:Lokhttp3/internal/Internal;

    iget-object p2, p0, Lokhttp3/internal/connection/StreamAllocation;->call:Lokhttp3/Call;

    invoke-virtual {p1, p2, p5}, Lokhttp3/internal/Internal;->timeoutExit(Lokhttp3/Call;Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object p1

    .line 322
    iget-object p2, p0, Lokhttp3/internal/connection/StreamAllocation;->eventListener:Lokhttp3/EventListener;

    iget-object p3, p0, Lokhttp3/internal/connection/StreamAllocation;->call:Lokhttp3/Call;

    invoke-virtual {p2, p3, p1}, Lokhttp3/EventListener;->callFailed(Lokhttp3/Call;Ljava/io/IOException;)V

    return-void

    :cond_4a
    if-eqz p2, :cond_5a

    .line 324
    sget-object p1, Lokhttp3/internal/Internal;->instance:Lokhttp3/internal/Internal;

    iget-object p2, p0, Lokhttp3/internal/connection/StreamAllocation;->call:Lokhttp3/Call;

    invoke-virtual {p1, p2, v0}, Lokhttp3/internal/Internal;->timeoutExit(Lokhttp3/Call;Ljava/io/IOException;)Ljava/io/IOException;

    .line 325
    iget-object p1, p0, Lokhttp3/internal/connection/StreamAllocation;->eventListener:Lokhttp3/EventListener;

    iget-object p2, p0, Lokhttp3/internal/connection/StreamAllocation;->call:Lokhttp3/Call;

    invoke-virtual {p1, p2}, Lokhttp3/EventListener;->callEnd(Lokhttp3/Call;)V

    :cond_5a
    return-void

    .line 305
    :cond_5b
    :try_start_5b
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p5, p0, Lokhttp3/internal/connection/StreamAllocation;->codec:Lokhttp3/internal/http/HttpCodec;

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p5, " but was "

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_77
    move-exception p1

    .line 314
    monitor-exit p3
    :try_end_79
    .catchall {:try_start_5b .. :try_end_79} :catchall_77

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 526
    invoke-virtual {p0}, Lokhttp3/internal/connection/StreamAllocation;->connection()Lokhttp3/internal/connection/RealConnection;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 527
    invoke-virtual {v0}, Lokhttp3/internal/connection/RealConnection;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_b
    iget-object v0, p0, Lokhttp3/internal/connection/StreamAllocation;->address:Lokhttp3/Address;

    invoke-virtual {v0}, Lokhttp3/Address;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class okhttp3.internal.connection.StreamAllocation.StreamAllocationReference (okhttp3.internal.connection.StreamAllocation$StreamAllocationReference)
.class public final Lokhttp3/internal/connection/StreamAllocation$StreamAllocationReference;
.super Ljava/lang/ref/WeakReference;
.source "StreamAllocation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/internal/connection/StreamAllocation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "StreamAllocationReference"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ref/WeakReference<",
        "Lokhttp3/internal/connection/StreamAllocation;",
        ">;"
    }
.end annotation


# instance fields
.field public final callStackTrace:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lokhttp3/internal/connection/StreamAllocation;Ljava/lang/Object;)V
    .registers 3

    .line 538
    invoke-direct {p0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 539
    iput-object p2, p0, Lokhttp3/internal/connection/StreamAllocation$StreamAllocationReference;->callStackTrace:Ljava/lang/Object;

    return-void
.end method
