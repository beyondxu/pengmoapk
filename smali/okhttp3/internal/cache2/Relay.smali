###### Class okhttp3.internal.cache2.Relay (okhttp3.internal.cache2.Relay)
.class final Lokhttp3/internal/cache2/Relay;
.super Ljava/lang/Object;
.source "Relay.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/internal/cache2/Relay$RelaySource;
    }
.end annotation


# static fields
.field private static final FILE_HEADER_SIZE:J = 0x20L

.field static final PREFIX_CLEAN:Lokio/ByteString;

.field static final PREFIX_DIRTY:Lokio/ByteString;

.field private static final SOURCE_FILE:I = 0x2

.field private static final SOURCE_UPSTREAM:I = 0x1


# instance fields
.field final buffer:Lokio/Buffer;

.field final bufferMaxSize:J

.field complete:Z

.field file:Ljava/io/RandomAccessFile;

.field private final metadata:Lokio/ByteString;

.field sourceCount:I

.field upstream:Lokio/Source;

.field final upstreamBuffer:Lokio/Buffer;

.field upstreamPos:J

.field upstreamReader:Ljava/lang/Thread;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 45
    const-string v0, "OkHttp cache v1\n"

    invoke-static {v0}, Lokio/ByteString;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v0

    sput-object v0, Lokhttp3/internal/cache2/Relay;->PREFIX_CLEAN:Lokio/ByteString;

    .line 46
    const-string v0, "OkHttp DIRTY :(\n"

    invoke-static {v0}, Lokio/ByteString;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v0

    sput-object v0, Lokhttp3/internal/cache2/Relay;->PREFIX_DIRTY:Lokio/ByteString;

    return-void
.end method

.method private constructor <init>(Ljava/io/RandomAccessFile;Lokio/Source;JLokio/ByteString;J)V
    .registers 9

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    new-instance v0, Lokio/Buffer;

    invoke-direct {v0}, Lokio/Buffer;-><init>()V

    iput-object v0, p0, Lokhttp3/internal/cache2/Relay;->upstreamBuffer:Lokio/Buffer;

    .line 94
    new-instance v0, Lokio/Buffer;

    invoke-direct {v0}, Lokio/Buffer;-><init>()V

    iput-object v0, p0, Lokhttp3/internal/cache2/Relay;->buffer:Lokio/Buffer;

    .line 108
    iput-object p1, p0, Lokhttp3/internal/cache2/Relay;->file:Ljava/io/RandomAccessFile;

    .line 109
    iput-object p2, p0, Lokhttp3/internal/cache2/Relay;->upstream:Lokio/Source;

    if-nez p2, :cond_19

    const/4 p1, 0x1

    goto :goto_1a

    :cond_19
    const/4 p1, 0x0

    .line 110
    :goto_1a
    iput-boolean p1, p0, Lokhttp3/internal/cache2/Relay;->complete:Z

    .line 111
    iput-wide p3, p0, Lokhttp3/internal/cache2/Relay;->upstreamPos:J

    .line 112
    iput-object p5, p0, Lokhttp3/internal/cache2/Relay;->metadata:Lokio/ByteString;

    .line 113
    iput-wide p6, p0, Lokhttp3/internal/cache2/Relay;->bufferMaxSize:J

    return-void
.end method

.method public static edit(Ljava/io/File;Lokio/Source;Lokio/ByteString;J)Lokhttp3/internal/cache2/Relay;
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 126
    new-instance v1, Ljava/io/RandomAccessFile;

    const-string v0, "rw"

    invoke-direct {v1, p0, v0}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 127
    new-instance v0, Lokhttp3/internal/cache2/Relay;

    const-wide/16 v3, 0x0

    move-object v2, p1

    move-object v5, p2

    move-wide v6, p3

    invoke-direct/range {v0 .. v7}, Lokhttp3/internal/cache2/Relay;-><init>(Ljava/io/RandomAccessFile;Lokio/Source;JLokio/ByteString;J)V

    const-wide/16 p0, 0x0

    .line 130
    invoke-virtual {v1, p0, p1}, Ljava/io/RandomAccessFile;->setLength(J)V

    .line 131
    sget-object v3, Lokhttp3/internal/cache2/Relay;->PREFIX_DIRTY:Lokio/ByteString;

    const-wide/16 v4, -0x1

    const-wide/16 v6, -0x1

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lokhttp3/internal/cache2/Relay;->writeHeader(Lokio/ByteString;JJ)V

    return-object v0
.end method

.method public static read(Ljava/io/File;)Lokhttp3/internal/cache2/Relay;
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 144
    new-instance v1, Ljava/io/RandomAccessFile;

    const-string v0, "rw"

    invoke-direct {v1, p0, v0}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 145
    new-instance v2, Lokhttp3/internal/cache2/FileOperator;

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object p0

    invoke-direct {v2, p0}, Lokhttp3/internal/cache2/FileOperator;-><init>(Ljava/nio/channels/FileChannel;)V

    .line 148
    new-instance v5, Lokio/Buffer;

    invoke-direct {v5}, Lokio/Buffer;-><init>()V

    const-wide/16 v3, 0x0

    const-wide/16 v6, 0x20

    .line 149
    invoke-virtual/range {v2 .. v7}, Lokhttp3/internal/cache2/FileOperator;->read(JLokio/Buffer;J)V

    .line 150
    sget-object p0, Lokhttp3/internal/cache2/Relay;->PREFIX_CLEAN:Lokio/ByteString;

    invoke-virtual {p0}, Lokio/ByteString;->size()I

    move-result v0

    int-to-long v3, v0

    invoke-virtual {v5, v3, v4}, Lokio/Buffer;->readByteString(J)Lokio/ByteString;

    move-result-object v0

    .line 151
    invoke-virtual {v0, p0}, Lokio/ByteString;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4e

    .line 152
    invoke-virtual {v5}, Lokio/Buffer;->readLong()J

    move-result-wide v8

    .line 153
    invoke-virtual {v5}, Lokio/Buffer;->readLong()J

    move-result-wide v6

    .line 156
    new-instance v5, Lokio/Buffer;

    invoke-direct {v5}, Lokio/Buffer;-><init>()V

    const-wide/16 v3, 0x20

    add-long/2addr v3, v8

    .line 157
    invoke-virtual/range {v2 .. v7}, Lokhttp3/internal/cache2/FileOperator;->read(JLokio/Buffer;J)V

    .line 158
    invoke-virtual {v5}, Lokio/Buffer;->readByteString()Lokio/ByteString;

    move-result-object v5

    .line 161
    new-instance v0, Lokhttp3/internal/cache2/Relay;

    const/4 v2, 0x0

    const-wide/16 v6, 0x0

    move-wide v3, v8

    invoke-direct/range {v0 .. v7}, Lokhttp3/internal/cache2/Relay;-><init>(Ljava/io/RandomAccessFile;Lokio/Source;JLokio/ByteString;J)V

    return-object v0

    .line 151
    :cond_4e
    new-instance p0, Ljava/io/IOException;

    const-string v0, "unreadable cache file"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private writeHeader(Lokio/ByteString;JJ)V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 166
    new-instance v3, Lokio/Buffer;

    invoke-direct {v3}, Lokio/Buffer;-><init>()V

    .line 167
    invoke-virtual {v3, p1}, Lokio/Buffer;->write(Lokio/ByteString;)Lokio/Buffer;

    .line 168
    invoke-virtual {v3, p2, p3}, Lokio/Buffer;->writeLong(J)Lokio/Buffer;

    .line 169
    invoke-virtual {v3, p4, p5}, Lokio/Buffer;->writeLong(J)Lokio/Buffer;

    .line 170
    invoke-virtual {v3}, Lokio/Buffer;->size()J

    move-result-wide p1

    const-wide/16 p3, 0x20

    cmp-long p5, p1, p3

    if-nez p5, :cond_2b

    .line 172
    new-instance v0, Lokhttp3/internal/cache2/FileOperator;

    iget-object p1, p0, Lokhttp3/internal/cache2/Relay;->file:Ljava/io/RandomAccessFile;

    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object p1

    invoke-direct {v0, p1}, Lokhttp3/internal/cache2/FileOperator;-><init>(Ljava/nio/channels/FileChannel;)V

    const-wide/16 v1, 0x0

    const-wide/16 v4, 0x20

    .line 173
    invoke-virtual/range {v0 .. v5}, Lokhttp3/internal/cache2/FileOperator;->write(JLokio/Buffer;J)V

    return-void

    .line 170
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

    .line 177
    new-instance v3, Lokio/Buffer;

    invoke-direct {v3}, Lokio/Buffer;-><init>()V

    .line 178
    iget-object v0, p0, Lokhttp3/internal/cache2/Relay;->metadata:Lokio/ByteString;

    invoke-virtual {v3, v0}, Lokio/Buffer;->write(Lokio/ByteString;)Lokio/Buffer;

    .line 180
    new-instance v0, Lokhttp3/internal/cache2/FileOperator;

    iget-object v1, p0, Lokhttp3/internal/cache2/Relay;->file:Ljava/io/RandomAccessFile;

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v1

    invoke-direct {v0, v1}, Lokhttp3/internal/cache2/FileOperator;-><init>(Ljava/nio/channels/FileChannel;)V

    const-wide/16 v1, 0x20

    add-long/2addr v1, p1

    .line 181
    iget-object p1, p0, Lokhttp3/internal/cache2/Relay;->metadata:Lokio/ByteString;

    invoke-virtual {p1}, Lokio/ByteString;->size()I

    move-result p1

    int-to-long v4, p1

    invoke-virtual/range {v0 .. v5}, Lokhttp3/internal/cache2/FileOperator;->write(JLokio/Buffer;J)V

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

    .line 186
    invoke-direct {p0, p1, p2}, Lokhttp3/internal/cache2/Relay;->writeMetadata(J)V

    .line 187
    iget-object v0, p0, Lokhttp3/internal/cache2/Relay;->file:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/channels/FileChannel;->force(Z)V

    .line 190
    sget-object v3, Lokhttp3/internal/cache2/Relay;->PREFIX_CLEAN:Lokio/ByteString;

    iget-object v0, p0, Lokhttp3/internal/cache2/Relay;->metadata:Lokio/ByteString;

    invoke-virtual {v0}, Lokio/ByteString;->size()I

    move-result v0

    int-to-long v6, v0

    move-object v2, p0

    move-wide v4, p1

    invoke-direct/range {v2 .. v7}, Lokhttp3/internal/cache2/Relay;->writeHeader(Lokio/ByteString;JJ)V

    .line 191
    iget-object p1, v2, Lokhttp3/internal/cache2/Relay;->file:Ljava/io/RandomAccessFile;

    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/nio/channels/FileChannel;->force(Z)V

    .line 194
    monitor-enter p0

    const/4 p1, 0x1

    .line 195
    :try_start_26
    iput-boolean p1, v2, Lokhttp3/internal/cache2/Relay;->complete:Z

    .line 196
    monitor-exit p0
    :try_end_29
    .catchall {:try_start_26 .. :try_end_29} :catchall_32

    .line 198
    iget-object p1, v2, Lokhttp3/internal/cache2/Relay;->upstream:Lokio/Source;

    invoke-static {p1}, Lokhttp3/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    const/4 p1, 0x0

    .line 199
    iput-object p1, v2, Lokhttp3/internal/cache2/Relay;->upstream:Lokio/Source;

    return-void

    :catchall_32
    move-exception v0

    move-object p1, v0

    .line 196
    :try_start_34
    monitor-exit p0
    :try_end_35
    .catchall {:try_start_34 .. :try_end_35} :catchall_32

    throw p1
.end method

.method isClosed()Z
    .registers 2

    .line 203
    iget-object v0, p0, Lokhttp3/internal/cache2/Relay;->file:Ljava/io/RandomAccessFile;

    if-nez v0, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method public metadata()Lokio/ByteString;
    .registers 2

    .line 207
    iget-object v0, p0, Lokhttp3/internal/cache2/Relay;->metadata:Lokio/ByteString;

    return-object v0
.end method

.method public newSource()Lokio/Source;
    .registers 2

    .line 216
    monitor-enter p0

    .line 217
    :try_start_1
    iget-object v0, p0, Lokhttp3/internal/cache2/Relay;->file:Ljava/io/RandomAccessFile;

    if-nez v0, :cond_8

    const/4 v0, 0x0

    monitor-exit p0

    return-object v0

    .line 218
    :cond_8
    iget v0, p0, Lokhttp3/internal/cache2/Relay;->sourceCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lokhttp3/internal/cache2/Relay;->sourceCount:I

    .line 219
    monitor-exit p0
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_15

    .line 221
    new-instance v0, Lokhttp3/internal/cache2/Relay$RelaySource;

    invoke-direct {v0, p0}, Lokhttp3/internal/cache2/Relay$RelaySource;-><init>(Lokhttp3/internal/cache2/Relay;)V

    return-object v0

    :catchall_15
    move-exception v0

    .line 219
    :try_start_16
    monitor-exit p0
    :try_end_17
    .catchall {:try_start_16 .. :try_end_17} :catchall_15

    throw v0
.end method

###### Class okhttp3.internal.cache2.Relay.RelaySource (okhttp3.internal.cache2.Relay$RelaySource)
.class Lokhttp3/internal/cache2/Relay$RelaySource;
.super Ljava/lang/Object;
.source "Relay.java"

# interfaces
.implements Lokio/Source;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/internal/cache2/Relay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RelaySource"
.end annotation


# instance fields
.field private fileOperator:Lokhttp3/internal/cache2/FileOperator;

.field private sourcePos:J

.field final synthetic this$0:Lokhttp3/internal/cache2/Relay;

.field private final timeout:Lokio/Timeout;


# direct methods
.method constructor <init>(Lokhttp3/internal/cache2/Relay;)V
    .registers 3

    .line 224
    iput-object p1, p0, Lokhttp3/internal/cache2/Relay$RelaySource;->this$0:Lokhttp3/internal/cache2/Relay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 225
    new-instance v0, Lokio/Timeout;

    invoke-direct {v0}, Lokio/Timeout;-><init>()V

    iput-object v0, p0, Lokhttp3/internal/cache2/Relay$RelaySource;->timeout:Lokio/Timeout;

    .line 228
    new-instance v0, Lokhttp3/internal/cache2/FileOperator;

    iget-object p1, p1, Lokhttp3/internal/cache2/Relay;->file:Ljava/io/RandomAccessFile;

    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object p1

    invoke-direct {v0, p1}, Lokhttp3/internal/cache2/FileOperator;-><init>(Ljava/nio/channels/FileChannel;)V

    iput-object v0, p0, Lokhttp3/internal/cache2/Relay$RelaySource;->fileOperator:Lokhttp3/internal/cache2/FileOperator;

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

    .line 344
    iget-object v0, p0, Lokhttp3/internal/cache2/Relay$RelaySource;->fileOperator:Lokhttp3/internal/cache2/FileOperator;

    if-nez v0, :cond_5

    goto :goto_28

    :cond_5
    const/4 v0, 0x0

    .line 345
    iput-object v0, p0, Lokhttp3/internal/cache2/Relay$RelaySource;->fileOperator:Lokhttp3/internal/cache2/FileOperator;

    .line 348
    iget-object v1, p0, Lokhttp3/internal/cache2/Relay$RelaySource;->this$0:Lokhttp3/internal/cache2/Relay;

    monitor-enter v1

    .line 349
    :try_start_b
    iget-object v2, p0, Lokhttp3/internal/cache2/Relay$RelaySource;->this$0:Lokhttp3/internal/cache2/Relay;

    iget v3, v2, Lokhttp3/internal/cache2/Relay;->sourceCount:I

    add-int/lit8 v3, v3, -0x1

    iput v3, v2, Lokhttp3/internal/cache2/Relay;->sourceCount:I

    .line 350
    iget-object v2, p0, Lokhttp3/internal/cache2/Relay$RelaySource;->this$0:Lokhttp3/internal/cache2/Relay;

    iget v2, v2, Lokhttp3/internal/cache2/Relay;->sourceCount:I

    if-nez v2, :cond_22

    .line 351
    iget-object v2, p0, Lokhttp3/internal/cache2/Relay$RelaySource;->this$0:Lokhttp3/internal/cache2/Relay;

    iget-object v2, v2, Lokhttp3/internal/cache2/Relay;->file:Ljava/io/RandomAccessFile;

    .line 352
    iget-object v3, p0, Lokhttp3/internal/cache2/Relay$RelaySource;->this$0:Lokhttp3/internal/cache2/Relay;

    iput-object v0, v3, Lokhttp3/internal/cache2/Relay;->file:Ljava/io/RandomAccessFile;

    move-object v0, v2

    .line 354
    :cond_22
    monitor-exit v1
    :try_end_23
    .catchall {:try_start_b .. :try_end_23} :catchall_29

    if-eqz v0, :cond_28

    .line 357
    invoke-static {v0}, Lokhttp3/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    :cond_28
    :goto_28
    return-void

    :catchall_29
    move-exception v0

    .line 354
    :try_start_2a
    monitor-exit v1
    :try_end_2b
    .catchall {:try_start_2a .. :try_end_2b} :catchall_29

    throw v0
.end method

.method public read(Lokio/Buffer;J)J
    .registers 24
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-wide/from16 v2, p2

    .line 252
    iget-object v0, v1, Lokhttp3/internal/cache2/Relay$RelaySource;->fileOperator:Lokhttp3/internal/cache2/FileOperator;

    if-eqz v0, :cond_130

    .line 258
    iget-object v4, v1, Lokhttp3/internal/cache2/Relay$RelaySource;->this$0:Lokhttp3/internal/cache2/Relay;

    monitor-enter v4

    .line 260
    :goto_b
    :try_start_b
    iget-wide v5, v1, Lokhttp3/internal/cache2/Relay$RelaySource;->sourcePos:J

    iget-object v0, v1, Lokhttp3/internal/cache2/Relay$RelaySource;->this$0:Lokhttp3/internal/cache2/Relay;

    iget-wide v7, v0, Lokhttp3/internal/cache2/Relay;->upstreamPos:J

    const-wide/16 v9, 0x20

    cmp-long v0, v5, v7

    if-nez v0, :cond_ec

    .line 262
    iget-object v0, v1, Lokhttp3/internal/cache2/Relay$RelaySource;->this$0:Lokhttp3/internal/cache2/Relay;

    iget-boolean v0, v0, Lokhttp3/internal/cache2/Relay;->complete:Z

    const-wide/16 v5, -0x1

    if-eqz v0, :cond_21

    monitor-exit v4

    return-wide v5

    .line 265
    :cond_21
    iget-object v0, v1, Lokhttp3/internal/cache2/Relay$RelaySource;->this$0:Lokhttp3/internal/cache2/Relay;

    iget-object v0, v0, Lokhttp3/internal/cache2/Relay;->upstreamReader:Ljava/lang/Thread;

    if-eqz v0, :cond_2f

    .line 266
    iget-object v0, v1, Lokhttp3/internal/cache2/Relay$RelaySource;->timeout:Lokio/Timeout;

    iget-object v5, v1, Lokhttp3/internal/cache2/Relay$RelaySource;->this$0:Lokhttp3/internal/cache2/Relay;

    invoke-virtual {v0, v5}, Lokio/Timeout;->waitUntilNotified(Ljava/lang/Object;)V

    goto :goto_b

    .line 271
    :cond_2f
    iget-object v0, v1, Lokhttp3/internal/cache2/Relay$RelaySource;->this$0:Lokhttp3/internal/cache2/Relay;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v11

    iput-object v11, v0, Lokhttp3/internal/cache2/Relay;->upstreamReader:Ljava/lang/Thread;

    .line 273
    monitor-exit v4
    :try_end_38
    .catchall {:try_start_b .. :try_end_38} :catchall_12d

    const/4 v4, 0x0

    .line 302
    :try_start_39
    iget-object v0, v1, Lokhttp3/internal/cache2/Relay$RelaySource;->this$0:Lokhttp3/internal/cache2/Relay;

    iget-object v0, v0, Lokhttp3/internal/cache2/Relay;->upstream:Lokio/Source;

    iget-object v11, v1, Lokhttp3/internal/cache2/Relay$RelaySource;->this$0:Lokhttp3/internal/cache2/Relay;

    iget-object v11, v11, Lokhttp3/internal/cache2/Relay;->upstreamBuffer:Lokio/Buffer;

    iget-object v12, v1, Lokhttp3/internal/cache2/Relay$RelaySource;->this$0:Lokhttp3/internal/cache2/Relay;

    iget-wide v12, v12, Lokhttp3/internal/cache2/Relay;->bufferMaxSize:J

    invoke-interface {v0, v11, v12, v13}, Lokio/Source;->read(Lokio/Buffer;J)J

    move-result-wide v11

    cmp-long v0, v11, v5

    if-nez v0, :cond_63

    .line 306
    iget-object v0, v1, Lokhttp3/internal/cache2/Relay$RelaySource;->this$0:Lokhttp3/internal/cache2/Relay;

    invoke-virtual {v0, v7, v8}, Lokhttp3/internal/cache2/Relay;->commit(J)V
    :try_end_52
    .catchall {:try_start_39 .. :try_end_52} :catchall_da

    .line 332
    iget-object v2, v1, Lokhttp3/internal/cache2/Relay$RelaySource;->this$0:Lokhttp3/internal/cache2/Relay;

    monitor-enter v2

    .line 333
    :try_start_55
    iget-object v0, v1, Lokhttp3/internal/cache2/Relay$RelaySource;->this$0:Lokhttp3/internal/cache2/Relay;

    iput-object v4, v0, Lokhttp3/internal/cache2/Relay;->upstreamReader:Ljava/lang/Thread;

    .line 334
    iget-object v0, v1, Lokhttp3/internal/cache2/Relay$RelaySource;->this$0:Lokhttp3/internal/cache2/Relay;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 335
    monitor-exit v2

    return-wide v5

    :catchall_60
    move-exception v0

    monitor-exit v2
    :try_end_62
    .catchall {:try_start_55 .. :try_end_62} :catchall_60

    throw v0

    .line 311
    :cond_63
    :try_start_63
    invoke-static {v11, v12, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v17

    .line 312
    iget-object v0, v1, Lokhttp3/internal/cache2/Relay$RelaySource;->this$0:Lokhttp3/internal/cache2/Relay;

    iget-object v13, v0, Lokhttp3/internal/cache2/Relay;->upstreamBuffer:Lokio/Buffer;

    const-wide/16 v15, 0x0

    move-object/from16 v14, p1

    invoke-virtual/range {v13 .. v18}, Lokio/Buffer;->copyTo(Lokio/Buffer;JJ)Lokio/Buffer;

    move-wide/from16 v2, v17

    .line 313
    iget-wide v5, v1, Lokhttp3/internal/cache2/Relay$RelaySource;->sourcePos:J

    add-long/2addr v5, v2

    iput-wide v5, v1, Lokhttp3/internal/cache2/Relay$RelaySource;->sourcePos:J

    .line 316
    iget-object v14, v1, Lokhttp3/internal/cache2/Relay$RelaySource;->fileOperator:Lokhttp3/internal/cache2/FileOperator;

    add-long v15, v7, v9

    iget-object v0, v1, Lokhttp3/internal/cache2/Relay$RelaySource;->this$0:Lokhttp3/internal/cache2/Relay;

    iget-object v0, v0, Lokhttp3/internal/cache2/Relay;->upstreamBuffer:Lokio/Buffer;

    .line 317
    invoke-virtual {v0}, Lokio/Buffer;->clone()Lokio/Buffer;

    move-result-object v17

    move-wide/from16 v18, v11

    .line 316
    invoke-virtual/range {v14 .. v19}, Lokhttp3/internal/cache2/FileOperator;->write(JLokio/Buffer;J)V

    move-wide/from16 v5, v18

    .line 319
    iget-object v7, v1, Lokhttp3/internal/cache2/Relay$RelaySource;->this$0:Lokhttp3/internal/cache2/Relay;

    monitor-enter v7
    :try_end_8f
    .catchall {:try_start_63 .. :try_end_8f} :catchall_da

    .line 321
    :try_start_8f
    iget-object v0, v1, Lokhttp3/internal/cache2/Relay$RelaySource;->this$0:Lokhttp3/internal/cache2/Relay;

    iget-object v0, v0, Lokhttp3/internal/cache2/Relay;->buffer:Lokio/Buffer;

    iget-object v8, v1, Lokhttp3/internal/cache2/Relay$RelaySource;->this$0:Lokhttp3/internal/cache2/Relay;

    iget-object v8, v8, Lokhttp3/internal/cache2/Relay;->upstreamBuffer:Lokio/Buffer;

    invoke-virtual {v0, v8, v5, v6}, Lokio/Buffer;->write(Lokio/Buffer;J)V

    .line 322
    iget-object v0, v1, Lokhttp3/internal/cache2/Relay$RelaySource;->this$0:Lokhttp3/internal/cache2/Relay;

    iget-object v0, v0, Lokhttp3/internal/cache2/Relay;->buffer:Lokio/Buffer;

    invoke-virtual {v0}, Lokio/Buffer;->size()J

    move-result-wide v8

    iget-object v0, v1, Lokhttp3/internal/cache2/Relay$RelaySource;->this$0:Lokhttp3/internal/cache2/Relay;

    iget-wide v10, v0, Lokhttp3/internal/cache2/Relay;->bufferMaxSize:J

    cmp-long v0, v8, v10

    if-lez v0, :cond_be

    .line 323
    iget-object v0, v1, Lokhttp3/internal/cache2/Relay$RelaySource;->this$0:Lokhttp3/internal/cache2/Relay;

    iget-object v0, v0, Lokhttp3/internal/cache2/Relay;->buffer:Lokio/Buffer;

    iget-object v8, v1, Lokhttp3/internal/cache2/Relay$RelaySource;->this$0:Lokhttp3/internal/cache2/Relay;

    iget-object v8, v8, Lokhttp3/internal/cache2/Relay;->buffer:Lokio/Buffer;

    invoke-virtual {v8}, Lokio/Buffer;->size()J

    move-result-wide v8

    iget-object v10, v1, Lokhttp3/internal/cache2/Relay$RelaySource;->this$0:Lokhttp3/internal/cache2/Relay;

    iget-wide v10, v10, Lokhttp3/internal/cache2/Relay;->bufferMaxSize:J

    sub-long/2addr v8, v10

    invoke-virtual {v0, v8, v9}, Lokio/Buffer;->skip(J)V

    .line 327
    :cond_be
    iget-object v0, v1, Lokhttp3/internal/cache2/Relay$RelaySource;->this$0:Lokhttp3/internal/cache2/Relay;

    iget-wide v8, v0, Lokhttp3/internal/cache2/Relay;->upstreamPos:J

    add-long/2addr v8, v5

    iput-wide v8, v0, Lokhttp3/internal/cache2/Relay;->upstreamPos:J

    .line 328
    monitor-exit v7
    :try_end_c6
    .catchall {:try_start_8f .. :try_end_c6} :catchall_d7

    .line 332
    iget-object v5, v1, Lokhttp3/internal/cache2/Relay$RelaySource;->this$0:Lokhttp3/internal/cache2/Relay;

    monitor-enter v5

    .line 333
    :try_start_c9
    iget-object v0, v1, Lokhttp3/internal/cache2/Relay$RelaySource;->this$0:Lokhttp3/internal/cache2/Relay;

    iput-object v4, v0, Lokhttp3/internal/cache2/Relay;->upstreamReader:Ljava/lang/Thread;

    .line 334
    iget-object v0, v1, Lokhttp3/internal/cache2/Relay$RelaySource;->this$0:Lokhttp3/internal/cache2/Relay;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 335
    monitor-exit v5

    return-wide v2

    :catchall_d4
    move-exception v0

    monitor-exit v5
    :try_end_d6
    .catchall {:try_start_c9 .. :try_end_d6} :catchall_d4

    throw v0

    :catchall_d7
    move-exception v0

    .line 328
    :try_start_d8
    monitor-exit v7
    :try_end_d9
    .catchall {:try_start_d8 .. :try_end_d9} :catchall_d7

    :try_start_d9
    throw v0
    :try_end_da
    .catchall {:try_start_d9 .. :try_end_da} :catchall_da

    :catchall_da
    move-exception v0

    .line 332
    iget-object v2, v1, Lokhttp3/internal/cache2/Relay$RelaySource;->this$0:Lokhttp3/internal/cache2/Relay;

    monitor-enter v2

    .line 333
    :try_start_de
    iget-object v3, v1, Lokhttp3/internal/cache2/Relay$RelaySource;->this$0:Lokhttp3/internal/cache2/Relay;

    iput-object v4, v3, Lokhttp3/internal/cache2/Relay;->upstreamReader:Ljava/lang/Thread;

    .line 334
    iget-object v3, v1, Lokhttp3/internal/cache2/Relay$RelaySource;->this$0:Lokhttp3/internal/cache2/Relay;

    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V

    .line 335
    monitor-exit v2
    :try_end_e8
    .catchall {:try_start_de .. :try_end_e8} :catchall_e9

    throw v0

    :catchall_e9
    move-exception v0

    :try_start_ea
    monitor-exit v2
    :try_end_eb
    .catchall {:try_start_ea .. :try_end_eb} :catchall_e9

    throw v0

    .line 276
    :cond_ec
    :try_start_ec
    iget-object v0, v1, Lokhttp3/internal/cache2/Relay$RelaySource;->this$0:Lokhttp3/internal/cache2/Relay;

    iget-object v0, v0, Lokhttp3/internal/cache2/Relay;->buffer:Lokio/Buffer;

    invoke-virtual {v0}, Lokio/Buffer;->size()J

    move-result-wide v5

    sub-long v5, v7, v5

    .line 279
    iget-wide v11, v1, Lokhttp3/internal/cache2/Relay$RelaySource;->sourcePos:J

    cmp-long v0, v11, v5

    if-gez v0, :cond_113

    .line 281
    monitor-exit v4
    :try_end_fd
    .catchall {:try_start_ec .. :try_end_fd} :catchall_12d

    sub-long/2addr v7, v11

    .line 293
    invoke-static {v2, v3, v7, v8}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    .line 294
    iget-object v5, v1, Lokhttp3/internal/cache2/Relay$RelaySource;->fileOperator:Lokhttp3/internal/cache2/FileOperator;

    iget-wide v6, v1, Lokhttp3/internal/cache2/Relay$RelaySource;->sourcePos:J

    add-long/2addr v6, v9

    move-object/from16 v8, p1

    move-wide v9, v2

    invoke-virtual/range {v5 .. v10}, Lokhttp3/internal/cache2/FileOperator;->read(JLokio/Buffer;J)V

    .line 295
    iget-wide v2, v1, Lokhttp3/internal/cache2/Relay$RelaySource;->sourcePos:J

    add-long/2addr v2, v9

    iput-wide v2, v1, Lokhttp3/internal/cache2/Relay$RelaySource;->sourcePos:J

    return-wide v9

    :cond_113
    sub-long/2addr v7, v11

    .line 285
    :try_start_114
    invoke-static {v2, v3, v7, v8}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v9

    .line 286
    iget-object v0, v1, Lokhttp3/internal/cache2/Relay$RelaySource;->this$0:Lokhttp3/internal/cache2/Relay;

    iget-object v0, v0, Lokhttp3/internal/cache2/Relay;->buffer:Lokio/Buffer;

    iget-wide v2, v1, Lokhttp3/internal/cache2/Relay$RelaySource;->sourcePos:J

    sub-long v7, v2, v5

    move-object/from16 v6, p1

    move-object v5, v0

    invoke-virtual/range {v5 .. v10}, Lokio/Buffer;->copyTo(Lokio/Buffer;JJ)Lokio/Buffer;

    .line 287
    iget-wide v2, v1, Lokhttp3/internal/cache2/Relay$RelaySource;->sourcePos:J

    add-long/2addr v2, v9

    iput-wide v2, v1, Lokhttp3/internal/cache2/Relay$RelaySource;->sourcePos:J

    .line 288
    monitor-exit v4

    return-wide v9

    :catchall_12d
    move-exception v0

    .line 289
    monitor-exit v4
    :try_end_12f
    .catchall {:try_start_114 .. :try_end_12f} :catchall_12d

    throw v0

    .line 252
    :cond_130
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "closed"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public timeout()Lokio/Timeout;
    .registers 2

    .line 340
    iget-object v0, p0, Lokhttp3/internal/cache2/Relay$RelaySource;->timeout:Lokio/Timeout;

    return-object v0
.end method
