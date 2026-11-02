###### Class dc.squareup.okhttp3.internal.cache2.Relay (dc.squareup.okhttp3.internal.cache2.Relay)
.class final Ldc/squareup/okhttp3/internal/cache2/Relay;
.super Ljava/lang/Object;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldc/squareup/okhttp3/internal/cache2/Relay$RelaySource;
    }
.end annotation


# static fields
.field private static final FILE_HEADER_SIZE:J = 0x20L

.field static final PREFIX_CLEAN:Ldc/squareup/okio/ByteString;

.field static final PREFIX_DIRTY:Ldc/squareup/okio/ByteString;

.field private static final SOURCE_FILE:I = 0x2

.field private static final SOURCE_UPSTREAM:I = 0x1


# instance fields
.field final buffer:Ldc/squareup/okio/Buffer;

.field final bufferMaxSize:J

.field complete:Z

.field file:Ljava/io/RandomAccessFile;

.field private final metadata:Ldc/squareup/okio/ByteString;

.field sourceCount:I

.field upstream:Ldc/squareup/okio/Source;

.field final upstreamBuffer:Ldc/squareup/okio/Buffer;

.field upstreamPos:J

.field upstreamReader:Ljava/lang/Thread;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    const-string v0, "OkHttp cache v1\n"

    invoke-static {v0}, Ldc/squareup/okio/ByteString;->encodeUtf8(Ljava/lang/String;)Ldc/squareup/okio/ByteString;

    move-result-object v0

    sput-object v0, Ldc/squareup/okhttp3/internal/cache2/Relay;->PREFIX_CLEAN:Ldc/squareup/okio/ByteString;

    .line 2
    const-string v0, "OkHttp DIRTY :(\n"

    invoke-static {v0}, Ldc/squareup/okio/ByteString;->encodeUtf8(Ljava/lang/String;)Ldc/squareup/okio/ByteString;

    move-result-object v0

    sput-object v0, Ldc/squareup/okhttp3/internal/cache2/Relay;->PREFIX_DIRTY:Ldc/squareup/okio/ByteString;

    return-void
.end method

.method private constructor <init>(Ljava/io/RandomAccessFile;Ldc/squareup/okio/Source;JLdc/squareup/okio/ByteString;J)V
    .registers 9

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ldc/squareup/okio/Buffer;

    invoke-direct {v0}, Ldc/squareup/okio/Buffer;-><init>()V

    iput-object v0, p0, Ldc/squareup/okhttp3/internal/cache2/Relay;->upstreamBuffer:Ldc/squareup/okio/Buffer;

    .line 17
    new-instance v0, Ldc/squareup/okio/Buffer;

    invoke-direct {v0}, Ldc/squareup/okio/Buffer;-><init>()V

    iput-object v0, p0, Ldc/squareup/okhttp3/internal/cache2/Relay;->buffer:Ldc/squareup/okio/Buffer;

    .line 31
    iput-object p1, p0, Ldc/squareup/okhttp3/internal/cache2/Relay;->file:Ljava/io/RandomAccessFile;

    .line 32
    iput-object p2, p0, Ldc/squareup/okhttp3/internal/cache2/Relay;->upstream:Ldc/squareup/okio/Source;

    if-nez p2, :cond_19

    const/4 p1, 0x1

    goto :goto_1a

    :cond_19
    const/4 p1, 0x0

    .line 33
    :goto_1a
    iput-boolean p1, p0, Ldc/squareup/okhttp3/internal/cache2/Relay;->complete:Z

    .line 34
    iput-wide p3, p0, Ldc/squareup/okhttp3/internal/cache2/Relay;->upstreamPos:J

    .line 35
    iput-object p5, p0, Ldc/squareup/okhttp3/internal/cache2/Relay;->metadata:Ldc/squareup/okio/ByteString;

    .line 36
    iput-wide p6, p0, Ldc/squareup/okhttp3/internal/cache2/Relay;->bufferMaxSize:J

    return-void
.end method

.method public static edit(Ljava/io/File;Ldc/squareup/okio/Source;Ldc/squareup/okio/ByteString;J)Ldc/squareup/okhttp3/internal/cache2/Relay;
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v1, Ljava/io/RandomAccessFile;

    const-string v0, "rw"

    invoke-direct {v1, p0, v0}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2
    new-instance v0, Ldc/squareup/okhttp3/internal/cache2/Relay;

    const-wide/16 v3, 0x0

    move-object v2, p1

    move-object v5, p2

    move-wide v6, p3

    invoke-direct/range {v0 .. v7}, Ldc/squareup/okhttp3/internal/cache2/Relay;-><init>(Ljava/io/RandomAccessFile;Ldc/squareup/okio/Source;JLdc/squareup/okio/ByteString;J)V

    const-wide/16 p0, 0x0

    .line 5
    invoke-virtual {v1, p0, p1}, Ljava/io/RandomAccessFile;->setLength(J)V

    .line 6
    sget-object v3, Ldc/squareup/okhttp3/internal/cache2/Relay;->PREFIX_DIRTY:Ldc/squareup/okio/ByteString;

    const-wide/16 v4, -0x1

    const-wide/16 v6, -0x1

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Ldc/squareup/okhttp3/internal/cache2/Relay;->writeHeader(Ldc/squareup/okio/ByteString;JJ)V

    return-object v0
.end method

.method public static read(Ljava/io/File;)Ldc/squareup/okhttp3/internal/cache2/Relay;
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v1, Ljava/io/RandomAccessFile;

    const-string v0, "rw"

    invoke-direct {v1, p0, v0}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2
    new-instance v2, Ldc/squareup/okhttp3/internal/cache2/FileOperator;

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object p0

    invoke-direct {v2, p0}, Ldc/squareup/okhttp3/internal/cache2/FileOperator;-><init>(Ljava/nio/channels/FileChannel;)V

    .line 5
    new-instance v5, Ldc/squareup/okio/Buffer;

    invoke-direct {v5}, Ldc/squareup/okio/Buffer;-><init>()V

    const-wide/16 v3, 0x0

    const-wide/16 v6, 0x20

    .line 6
    invoke-virtual/range {v2 .. v7}, Ldc/squareup/okhttp3/internal/cache2/FileOperator;->read(JLdc/squareup/okio/Buffer;J)V

    .line 7
    sget-object p0, Ldc/squareup/okhttp3/internal/cache2/Relay;->PREFIX_CLEAN:Ldc/squareup/okio/ByteString;

    invoke-virtual {p0}, Ldc/squareup/okio/ByteString;->size()I

    move-result v0

    int-to-long v3, v0

    invoke-virtual {v5, v3, v4}, Ldc/squareup/okio/Buffer;->readByteString(J)Ldc/squareup/okio/ByteString;

    move-result-object v0

    .line 8
    invoke-virtual {v0, p0}, Ldc/squareup/okio/ByteString;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4e

    .line 9
    invoke-virtual {v5}, Ldc/squareup/okio/Buffer;->readLong()J

    move-result-wide v8

    .line 10
    invoke-virtual {v5}, Ldc/squareup/okio/Buffer;->readLong()J

    move-result-wide v6

    .line 13
    new-instance v5, Ldc/squareup/okio/Buffer;

    invoke-direct {v5}, Ldc/squareup/okio/Buffer;-><init>()V

    const-wide/16 v3, 0x20

    add-long/2addr v3, v8

    .line 14
    invoke-virtual/range {v2 .. v7}, Ldc/squareup/okhttp3/internal/cache2/FileOperator;->read(JLdc/squareup/okio/Buffer;J)V

    .line 15
    invoke-virtual {v5}, Ldc/squareup/okio/Buffer;->readByteString()Ldc/squareup/okio/ByteString;

    move-result-object v5

    .line 18
    new-instance v0, Ldc/squareup/okhttp3/internal/cache2/Relay;

    const/4 v2, 0x0

    const-wide/16 v6, 0x0

    move-wide v3, v8

    invoke-direct/range {v0 .. v7}, Ldc/squareup/okhttp3/internal/cache2/Relay;-><init>(Ljava/io/RandomAccessFile;Ldc/squareup/okio/Source;JLdc/squareup/okio/ByteString;J)V

    return-object v0

    .line 19
    :cond_4e
    new-instance p0, Ljava/io/IOException;

    const-string/jumbo v0, "unreadable cache file"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private writeHeader(Ldc/squareup/okio/ByteString;JJ)V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v3, Ldc/squareup/okio/Buffer;

    invoke-direct {v3}, Ldc/squareup/okio/Buffer;-><init>()V

    .line 2
    invoke-virtual {v3, p1}, Ldc/squareup/okio/Buffer;->write(Ldc/squareup/okio/ByteString;)Ldc/squareup/okio/Buffer;

    .line 3
    invoke-virtual {v3, p2, p3}, Ldc/squareup/okio/Buffer;->writeLong(J)Ldc/squareup/okio/Buffer;

    .line 4
    invoke-virtual {v3, p4, p5}, Ldc/squareup/okio/Buffer;->writeLong(J)Ldc/squareup/okio/Buffer;

    .line 5
    invoke-virtual {v3}, Ldc/squareup/okio/Buffer;->size()J

    move-result-wide p1

    const-wide/16 p3, 0x20

    cmp-long p5, p1, p3

    if-nez p5, :cond_2b

    .line 7
    new-instance v0, Ldc/squareup/okhttp3/internal/cache2/FileOperator;

    iget-object p1, p0, Ldc/squareup/okhttp3/internal/cache2/Relay;->file:Ljava/io/RandomAccessFile;

    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object p1

    invoke-direct {v0, p1}, Ldc/squareup/okhttp3/internal/cache2/FileOperator;-><init>(Ljava/nio/channels/FileChannel;)V

    const-wide/16 v1, 0x0

    const-wide/16 v4, 0x20

    .line 8
    invoke-virtual/range {v0 .. v5}, Ldc/squareup/okhttp3/internal/cache2/FileOperator;->write(JLdc/squareup/okio/Buffer;J)V

    return-void

    .line 9
    :cond_2b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method private writeMetadata(J)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v3, Ldc/squareup/okio/Buffer;

    invoke-direct {v3}, Ldc/squareup/okio/Buffer;-><init>()V

    .line 2
    iget-object v0, p0, Ldc/squareup/okhttp3/internal/cache2/Relay;->metadata:Ldc/squareup/okio/ByteString;

    invoke-virtual {v3, v0}, Ldc/squareup/okio/Buffer;->write(Ldc/squareup/okio/ByteString;)Ldc/squareup/okio/Buffer;

    .line 4
    new-instance v0, Ldc/squareup/okhttp3/internal/cache2/FileOperator;

    iget-object v1, p0, Ldc/squareup/okhttp3/internal/cache2/Relay;->file:Ljava/io/RandomAccessFile;

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v1

    invoke-direct {v0, v1}, Ldc/squareup/okhttp3/internal/cache2/FileOperator;-><init>(Ljava/nio/channels/FileChannel;)V

    const-wide/16 v1, 0x20

    add-long/2addr v1, p1

    .line 5
    iget-object p1, p0, Ldc/squareup/okhttp3/internal/cache2/Relay;->metadata:Ldc/squareup/okio/ByteString;

    invoke-virtual {p1}, Ldc/squareup/okio/ByteString;->size()I

    move-result p1

    int-to-long v4, p1

    invoke-virtual/range {v0 .. v5}, Ldc/squareup/okhttp3/internal/cache2/FileOperator;->write(JLdc/squareup/okio/Buffer;J)V

    return-void
.end method


# virtual methods
.method commit(J)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ldc/squareup/okhttp3/internal/cache2/Relay;->writeMetadata(J)V

    .line 2
    iget-object v0, p0, Ldc/squareup/okhttp3/internal/cache2/Relay;->file:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/channels/FileChannel;->force(Z)V

    .line 5
    sget-object v3, Ldc/squareup/okhttp3/internal/cache2/Relay;->PREFIX_CLEAN:Ldc/squareup/okio/ByteString;

    iget-object v0, p0, Ldc/squareup/okhttp3/internal/cache2/Relay;->metadata:Ldc/squareup/okio/ByteString;

    invoke-virtual {v0}, Ldc/squareup/okio/ByteString;->size()I

    move-result v0

    int-to-long v6, v0

    move-object v2, p0

    move-wide v4, p1

    invoke-direct/range {v2 .. v7}, Ldc/squareup/okhttp3/internal/cache2/Relay;->writeHeader(Ldc/squareup/okio/ByteString;JJ)V

    .line 6
    iget-object p1, v2, Ldc/squareup/okhttp3/internal/cache2/Relay;->file:Ljava/io/RandomAccessFile;

    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/nio/channels/FileChannel;->force(Z)V

    .line 9
    monitor-enter p0

    const/4 p1, 0x1

    .line 10
    :try_start_26
    iput-boolean p1, v2, Ldc/squareup/okhttp3/internal/cache2/Relay;->complete:Z

    .line 11
    monitor-exit p0
    :try_end_29
    .catchall {:try_start_26 .. :try_end_29} :catchall_32

    .line 13
    iget-object p1, v2, Ldc/squareup/okhttp3/internal/cache2/Relay;->upstream:Ldc/squareup/okio/Source;

    invoke-static {p1}, Ldc/squareup/okhttp3/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    const/4 p1, 0x0

    .line 14
    iput-object p1, v2, Ldc/squareup/okhttp3/internal/cache2/Relay;->upstream:Ldc/squareup/okio/Source;

    return-void

    :catchall_32
    move-exception v0

    move-object p1, v0

    .line 15
    :try_start_34
    monitor-exit p0
    :try_end_35
    .catchall {:try_start_34 .. :try_end_35} :catchall_32

    throw p1
.end method

.method isClosed()Z
    .registers 2

    .line 1
    iget-object v0, p0, Ldc/squareup/okhttp3/internal/cache2/Relay;->file:Ljava/io/RandomAccessFile;

    if-nez v0, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method public metadata()Ldc/squareup/okio/ByteString;
    .registers 2

    .line 1
    iget-object v0, p0, Ldc/squareup/okhttp3/internal/cache2/Relay;->metadata:Ldc/squareup/okio/ByteString;

    return-object v0
.end method

.method public newSource()Ldc/squareup/okio/Source;
    .registers 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    iget-object v0, p0, Ldc/squareup/okhttp3/internal/cache2/Relay;->file:Ljava/io/RandomAccessFile;

    if-nez v0, :cond_8

    monitor-exit p0

    const/4 v0, 0x0

    return-object v0

    .line 3
    :cond_8
    iget v0, p0, Ldc/squareup/okhttp3/internal/cache2/Relay;->sourceCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ldc/squareup/okhttp3/internal/cache2/Relay;->sourceCount:I

    .line 4
    monitor-exit p0
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_15

    .line 6
    new-instance v0, Ldc/squareup/okhttp3/internal/cache2/Relay$RelaySource;

    invoke-direct {v0, p0}, Ldc/squareup/okhttp3/internal/cache2/Relay$RelaySource;-><init>(Ldc/squareup/okhttp3/internal/cache2/Relay;)V

    return-object v0

    :catchall_15
    move-exception v0

    .line 7
    :try_start_16
    monitor-exit p0
    :try_end_17
    .catchall {:try_start_16 .. :try_end_17} :catchall_15

    throw v0
.end method

###### Class dc.squareup.okhttp3.internal.cache2.Relay.RelaySource (dc.squareup.okhttp3.internal.cache2.Relay$RelaySource)
.class Ldc/squareup/okhttp3/internal/cache2/Relay$RelaySource;
.super Ljava/lang/Object;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"

# interfaces
.implements Ldc/squareup/okio/Source;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldc/squareup/okhttp3/internal/cache2/Relay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RelaySource"
.end annotation


# instance fields
.field private fileOperator:Ldc/squareup/okhttp3/internal/cache2/FileOperator;

.field private sourcePos:J

.field final synthetic this$0:Ldc/squareup/okhttp3/internal/cache2/Relay;

.field private final timeout:Ldc/squareup/okio/Timeout;


# direct methods
.method constructor <init>(Ldc/squareup/okhttp3/internal/cache2/Relay;)V
    .registers 3

    .line 1
    iput-object p1, p0, Ldc/squareup/okhttp3/internal/cache2/Relay$RelaySource;->this$0:Ldc/squareup/okhttp3/internal/cache2/Relay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ldc/squareup/okio/Timeout;

    invoke-direct {v0}, Ldc/squareup/okio/Timeout;-><init>()V

    iput-object v0, p0, Ldc/squareup/okhttp3/internal/cache2/Relay$RelaySource;->timeout:Ldc/squareup/okio/Timeout;

    .line 5
    new-instance v0, Ldc/squareup/okhttp3/internal/cache2/FileOperator;

    iget-object p1, p1, Ldc/squareup/okhttp3/internal/cache2/Relay;->file:Ljava/io/RandomAccessFile;

    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object p1

    invoke-direct {v0, p1}, Ldc/squareup/okhttp3/internal/cache2/FileOperator;-><init>(Ljava/nio/channels/FileChannel;)V

    iput-object v0, p0, Ldc/squareup/okhttp3/internal/cache2/Relay$RelaySource;->fileOperator:Ldc/squareup/okhttp3/internal/cache2/FileOperator;

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

    .line 1
    iget-object v0, p0, Ldc/squareup/okhttp3/internal/cache2/Relay$RelaySource;->fileOperator:Ldc/squareup/okhttp3/internal/cache2/FileOperator;

    if-nez v0, :cond_5

    goto :goto_20

    :cond_5
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Ldc/squareup/okhttp3/internal/cache2/Relay$RelaySource;->fileOperator:Ldc/squareup/okhttp3/internal/cache2/FileOperator;

    .line 5
    iget-object v1, p0, Ldc/squareup/okhttp3/internal/cache2/Relay$RelaySource;->this$0:Ldc/squareup/okhttp3/internal/cache2/Relay;

    monitor-enter v1

    .line 6
    :try_start_b
    iget-object v2, p0, Ldc/squareup/okhttp3/internal/cache2/Relay$RelaySource;->this$0:Ldc/squareup/okhttp3/internal/cache2/Relay;

    iget v3, v2, Ldc/squareup/okhttp3/internal/cache2/Relay;->sourceCount:I

    add-int/lit8 v3, v3, -0x1

    iput v3, v2, Ldc/squareup/okhttp3/internal/cache2/Relay;->sourceCount:I

    if-nez v3, :cond_1a

    .line 8
    iget-object v3, v2, Ldc/squareup/okhttp3/internal/cache2/Relay;->file:Ljava/io/RandomAccessFile;

    .line 9
    iput-object v0, v2, Ldc/squareup/okhttp3/internal/cache2/Relay;->file:Ljava/io/RandomAccessFile;

    move-object v0, v3

    .line 11
    :cond_1a
    monitor-exit v1
    :try_end_1b
    .catchall {:try_start_b .. :try_end_1b} :catchall_21

    if-eqz v0, :cond_20

    .line 14
    invoke-static {v0}, Ldc/squareup/okhttp3/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    :cond_20
    :goto_20
    return-void

    :catchall_21
    move-exception v0

    .line 15
    :try_start_22
    monitor-exit v1
    :try_end_23
    .catchall {:try_start_22 .. :try_end_23} :catchall_21

    throw v0
.end method

.method public read(Ldc/squareup/okio/Buffer;J)J
    .registers 25
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-wide/from16 v2, p2

    .line 1
    iget-object v0, v1, Ldc/squareup/okhttp3/internal/cache2/Relay$RelaySource;->fileOperator:Ldc/squareup/okhttp3/internal/cache2/FileOperator;

    if-eqz v0, :cond_111

    .line 7
    iget-object v4, v1, Ldc/squareup/okhttp3/internal/cache2/Relay$RelaySource;->this$0:Ldc/squareup/okhttp3/internal/cache2/Relay;

    monitor-enter v4

    .line 9
    :goto_b
    :try_start_b
    iget-wide v5, v1, Ldc/squareup/okhttp3/internal/cache2/Relay$RelaySource;->sourcePos:J

    iget-object v0, v1, Ldc/squareup/okhttp3/internal/cache2/Relay$RelaySource;->this$0:Ldc/squareup/okhttp3/internal/cache2/Relay;

    iget-wide v7, v0, Ldc/squareup/okhttp3/internal/cache2/Relay;->upstreamPos:J

    const-wide/16 v9, 0x20

    cmp-long v11, v5, v7

    if-nez v11, :cond_cf

    .line 11
    iget-boolean v5, v0, Ldc/squareup/okhttp3/internal/cache2/Relay;->complete:Z

    const-wide/16 v11, -0x1

    if-eqz v5, :cond_1f

    monitor-exit v4

    return-wide v11

    .line 14
    :cond_1f
    iget-object v5, v0, Ldc/squareup/okhttp3/internal/cache2/Relay;->upstreamReader:Ljava/lang/Thread;

    if-eqz v5, :cond_29

    .line 15
    iget-object v5, v1, Ldc/squareup/okhttp3/internal/cache2/Relay$RelaySource;->timeout:Ldc/squareup/okio/Timeout;

    invoke-virtual {v5, v0}, Ldc/squareup/okio/Timeout;->waitUntilNotified(Ljava/lang/Object;)V

    goto :goto_b

    .line 20
    :cond_29
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    iput-object v5, v0, Ldc/squareup/okhttp3/internal/cache2/Relay;->upstreamReader:Ljava/lang/Thread;

    .line 22
    monitor-exit v4
    :try_end_30
    .catchall {:try_start_b .. :try_end_30} :catchall_10e

    const/4 v4, 0x0

    .line 51
    :try_start_31
    iget-object v0, v1, Ldc/squareup/okhttp3/internal/cache2/Relay$RelaySource;->this$0:Ldc/squareup/okhttp3/internal/cache2/Relay;

    iget-object v5, v0, Ldc/squareup/okhttp3/internal/cache2/Relay;->upstream:Ldc/squareup/okio/Source;

    iget-object v6, v0, Ldc/squareup/okhttp3/internal/cache2/Relay;->upstreamBuffer:Ldc/squareup/okio/Buffer;

    iget-wide v13, v0, Ldc/squareup/okhttp3/internal/cache2/Relay;->bufferMaxSize:J

    invoke-interface {v5, v6, v13, v14}, Ldc/squareup/okio/Source;->read(Ldc/squareup/okio/Buffer;J)J

    move-result-wide v5

    cmp-long v0, v5, v11

    if-nez v0, :cond_55

    .line 55
    iget-object v0, v1, Ldc/squareup/okhttp3/internal/cache2/Relay$RelaySource;->this$0:Ldc/squareup/okhttp3/internal/cache2/Relay;

    invoke-virtual {v0, v7, v8}, Ldc/squareup/okhttp3/internal/cache2/Relay;->commit(J)V
    :try_end_46
    .catchall {:try_start_31 .. :try_end_46} :catchall_bf

    .line 81
    iget-object v2, v1, Ldc/squareup/okhttp3/internal/cache2/Relay$RelaySource;->this$0:Ldc/squareup/okhttp3/internal/cache2/Relay;

    monitor-enter v2

    .line 82
    :try_start_49
    iget-object v0, v1, Ldc/squareup/okhttp3/internal/cache2/Relay$RelaySource;->this$0:Ldc/squareup/okhttp3/internal/cache2/Relay;

    iput-object v4, v0, Ldc/squareup/okhttp3/internal/cache2/Relay;->upstreamReader:Ljava/lang/Thread;

    .line 83
    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 84
    monitor-exit v2

    return-wide v11

    :catchall_52
    move-exception v0

    .line 85
    monitor-exit v2
    :try_end_54
    .catchall {:try_start_49 .. :try_end_54} :catchall_52

    throw v0

    .line 86
    :cond_55
    :try_start_55
    invoke-static {v5, v6, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v15

    .line 87
    iget-object v0, v1, Ldc/squareup/okhttp3/internal/cache2/Relay$RelaySource;->this$0:Ldc/squareup/okhttp3/internal/cache2/Relay;

    iget-object v11, v0, Ldc/squareup/okhttp3/internal/cache2/Relay;->upstreamBuffer:Ldc/squareup/okio/Buffer;

    const-wide/16 v13, 0x0

    move-object/from16 v12, p1

    invoke-virtual/range {v11 .. v16}, Ldc/squareup/okio/Buffer;->copyTo(Ldc/squareup/okio/Buffer;JJ)Ldc/squareup/okio/Buffer;

    move-wide v2, v15

    .line 88
    iget-wide v11, v1, Ldc/squareup/okhttp3/internal/cache2/Relay$RelaySource;->sourcePos:J

    add-long/2addr v11, v2

    iput-wide v11, v1, Ldc/squareup/okhttp3/internal/cache2/Relay$RelaySource;->sourcePos:J

    .line 91
    iget-object v15, v1, Ldc/squareup/okhttp3/internal/cache2/Relay$RelaySource;->fileOperator:Ldc/squareup/okhttp3/internal/cache2/FileOperator;

    add-long v16, v7, v9

    iget-object v0, v1, Ldc/squareup/okhttp3/internal/cache2/Relay$RelaySource;->this$0:Ldc/squareup/okhttp3/internal/cache2/Relay;

    iget-object v0, v0, Ldc/squareup/okhttp3/internal/cache2/Relay;->upstreamBuffer:Ldc/squareup/okio/Buffer;

    .line 92
    invoke-virtual {v0}, Ldc/squareup/okio/Buffer;->clone()Ldc/squareup/okio/Buffer;

    move-result-object v18

    move-wide/from16 v19, v5

    .line 93
    invoke-virtual/range {v15 .. v20}, Ldc/squareup/okhttp3/internal/cache2/FileOperator;->write(JLdc/squareup/okio/Buffer;J)V

    move-wide/from16 v5, v19

    .line 96
    iget-object v7, v1, Ldc/squareup/okhttp3/internal/cache2/Relay$RelaySource;->this$0:Ldc/squareup/okhttp3/internal/cache2/Relay;

    monitor-enter v7
    :try_end_80
    .catchall {:try_start_55 .. :try_end_80} :catchall_bf

    .line 98
    :try_start_80
    iget-object v0, v1, Ldc/squareup/okhttp3/internal/cache2/Relay$RelaySource;->this$0:Ldc/squareup/okhttp3/internal/cache2/Relay;

    iget-object v8, v0, Ldc/squareup/okhttp3/internal/cache2/Relay;->buffer:Ldc/squareup/okio/Buffer;

    iget-object v0, v0, Ldc/squareup/okhttp3/internal/cache2/Relay;->upstreamBuffer:Ldc/squareup/okio/Buffer;

    invoke-virtual {v8, v0, v5, v6}, Ldc/squareup/okio/Buffer;->write(Ldc/squareup/okio/Buffer;J)V

    .line 99
    iget-object v0, v1, Ldc/squareup/okhttp3/internal/cache2/Relay$RelaySource;->this$0:Ldc/squareup/okhttp3/internal/cache2/Relay;

    iget-object v0, v0, Ldc/squareup/okhttp3/internal/cache2/Relay;->buffer:Ldc/squareup/okio/Buffer;

    invoke-virtual {v0}, Ldc/squareup/okio/Buffer;->size()J

    move-result-wide v8

    iget-object v0, v1, Ldc/squareup/okhttp3/internal/cache2/Relay$RelaySource;->this$0:Ldc/squareup/okhttp3/internal/cache2/Relay;

    iget-wide v10, v0, Ldc/squareup/okhttp3/internal/cache2/Relay;->bufferMaxSize:J

    cmp-long v12, v8, v10

    if-lez v12, :cond_a7

    .line 100
    iget-object v0, v0, Ldc/squareup/okhttp3/internal/cache2/Relay;->buffer:Ldc/squareup/okio/Buffer;

    invoke-virtual {v0}, Ldc/squareup/okio/Buffer;->size()J

    move-result-wide v8

    iget-object v10, v1, Ldc/squareup/okhttp3/internal/cache2/Relay$RelaySource;->this$0:Ldc/squareup/okhttp3/internal/cache2/Relay;

    iget-wide v10, v10, Ldc/squareup/okhttp3/internal/cache2/Relay;->bufferMaxSize:J

    sub-long/2addr v8, v10

    invoke-virtual {v0, v8, v9}, Ldc/squareup/okio/Buffer;->skip(J)V

    .line 104
    :cond_a7
    iget-object v8, v1, Ldc/squareup/okhttp3/internal/cache2/Relay$RelaySource;->this$0:Ldc/squareup/okhttp3/internal/cache2/Relay;

    iget-wide v9, v8, Ldc/squareup/okhttp3/internal/cache2/Relay;->upstreamPos:J

    add-long/2addr v9, v5

    iput-wide v9, v8, Ldc/squareup/okhttp3/internal/cache2/Relay;->upstreamPos:J

    .line 105
    monitor-exit v7
    :try_end_af
    .catchall {:try_start_80 .. :try_end_af} :catchall_bc

    .line 109
    monitor-enter v8

    .line 110
    :try_start_b0
    iget-object v0, v1, Ldc/squareup/okhttp3/internal/cache2/Relay$RelaySource;->this$0:Ldc/squareup/okhttp3/internal/cache2/Relay;

    iput-object v4, v0, Ldc/squareup/okhttp3/internal/cache2/Relay;->upstreamReader:Ljava/lang/Thread;

    .line 111
    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 112
    monitor-exit v8

    return-wide v2

    :catchall_b9
    move-exception v0

    .line 113
    monitor-exit v8
    :try_end_bb
    .catchall {:try_start_b0 .. :try_end_bb} :catchall_b9

    throw v0

    :catchall_bc
    move-exception v0

    .line 114
    :try_start_bd
    monitor-exit v7
    :try_end_be
    .catchall {:try_start_bd .. :try_end_be} :catchall_bc

    :try_start_be
    throw v0
    :try_end_bf
    .catchall {:try_start_be .. :try_end_bf} :catchall_bf

    :catchall_bf
    move-exception v0

    .line 118
    iget-object v2, v1, Ldc/squareup/okhttp3/internal/cache2/Relay$RelaySource;->this$0:Ldc/squareup/okhttp3/internal/cache2/Relay;

    monitor-enter v2

    .line 119
    :try_start_c3
    iget-object v3, v1, Ldc/squareup/okhttp3/internal/cache2/Relay$RelaySource;->this$0:Ldc/squareup/okhttp3/internal/cache2/Relay;

    iput-object v4, v3, Ldc/squareup/okhttp3/internal/cache2/Relay;->upstreamReader:Ljava/lang/Thread;

    .line 120
    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V

    .line 121
    monitor-exit v2
    :try_end_cb
    .catchall {:try_start_c3 .. :try_end_cb} :catchall_cc

    .line 122
    throw v0

    :catchall_cc
    move-exception v0

    .line 123
    :try_start_cd
    monitor-exit v2
    :try_end_ce
    .catchall {:try_start_cd .. :try_end_ce} :catchall_cc

    throw v0

    .line 124
    :cond_cf
    :try_start_cf
    iget-object v0, v0, Ldc/squareup/okhttp3/internal/cache2/Relay;->buffer:Ldc/squareup/okio/Buffer;

    invoke-virtual {v0}, Ldc/squareup/okio/Buffer;->size()J

    move-result-wide v5

    sub-long v5, v7, v5

    .line 127
    iget-wide v11, v1, Ldc/squareup/okhttp3/internal/cache2/Relay$RelaySource;->sourcePos:J

    cmp-long v0, v11, v5

    if-gez v0, :cond_f4

    .line 129
    monitor-exit v4
    :try_end_de
    .catchall {:try_start_cf .. :try_end_de} :catchall_10e

    sub-long/2addr v7, v11

    .line 141
    invoke-static {v2, v3, v7, v8}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    .line 142
    iget-object v5, v1, Ldc/squareup/okhttp3/internal/cache2/Relay$RelaySource;->fileOperator:Ldc/squareup/okhttp3/internal/cache2/FileOperator;

    iget-wide v6, v1, Ldc/squareup/okhttp3/internal/cache2/Relay$RelaySource;->sourcePos:J

    add-long/2addr v6, v9

    move-object/from16 v8, p1

    move-wide v9, v2

    invoke-virtual/range {v5 .. v10}, Ldc/squareup/okhttp3/internal/cache2/FileOperator;->read(JLdc/squareup/okio/Buffer;J)V

    .line 143
    iget-wide v2, v1, Ldc/squareup/okhttp3/internal/cache2/Relay$RelaySource;->sourcePos:J

    add-long/2addr v2, v9

    iput-wide v2, v1, Ldc/squareup/okhttp3/internal/cache2/Relay$RelaySource;->sourcePos:J

    return-wide v9

    :cond_f4
    sub-long/2addr v7, v11

    .line 144
    :try_start_f5
    invoke-static {v2, v3, v7, v8}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v9

    .line 145
    iget-object v0, v1, Ldc/squareup/okhttp3/internal/cache2/Relay$RelaySource;->this$0:Ldc/squareup/okhttp3/internal/cache2/Relay;

    iget-object v0, v0, Ldc/squareup/okhttp3/internal/cache2/Relay;->buffer:Ldc/squareup/okio/Buffer;

    iget-wide v2, v1, Ldc/squareup/okhttp3/internal/cache2/Relay$RelaySource;->sourcePos:J

    sub-long v7, v2, v5

    move-object/from16 v6, p1

    move-object v5, v0

    invoke-virtual/range {v5 .. v10}, Ldc/squareup/okio/Buffer;->copyTo(Ldc/squareup/okio/Buffer;JJ)Ldc/squareup/okio/Buffer;

    .line 146
    iget-wide v2, v1, Ldc/squareup/okhttp3/internal/cache2/Relay$RelaySource;->sourcePos:J

    add-long/2addr v2, v9

    iput-wide v2, v1, Ldc/squareup/okhttp3/internal/cache2/Relay$RelaySource;->sourcePos:J

    .line 147
    monitor-exit v4

    return-wide v9

    :catchall_10e
    move-exception v0

    .line 148
    monitor-exit v4
    :try_end_110
    .catchall {:try_start_f5 .. :try_end_110} :catchall_10e

    throw v0

    .line 149
    :cond_111
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "closed"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public timeout()Ldc/squareup/okio/Timeout;
    .registers 2

    .line 1
    iget-object v0, p0, Ldc/squareup/okhttp3/internal/cache2/Relay$RelaySource;->timeout:Ldc/squareup/okio/Timeout;

    return-object v0
.end method
