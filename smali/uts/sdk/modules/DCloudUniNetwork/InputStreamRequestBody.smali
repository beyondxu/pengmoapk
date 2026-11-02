###### Class uts.sdk.modules.DCloudUniNetwork.InputStreamRequestBody (uts.sdk.modules.DCloudUniNetwork.InputStreamRequestBody)
.class public Luts/sdk/modules/DCloudUniNetwork/InputStreamRequestBody;
.super Lokhttp3/RequestBody;
.source "index.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0016\u0018\u00002\u00020\u0001B!\u0008\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u0008\u0010\n\u001a\u00020\u0005H\u0016J\u0008\u0010\u000b\u001a\u00020\u0003H\u0016J\u0010\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000fH\u0016R\u0010\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0010"
    }
    d2 = {
        "Luts/sdk/modules/DCloudUniNetwork/InputStreamRequestBody;",
        "Lokhttp3/RequestBody;",
        "mediaType",
        "Lokhttp3/MediaType;",
        "length",
        "",
        "inputStream",
        "Ljava/io/InputStream;",
        "<init>",
        "(Lokhttp3/MediaType;JLjava/io/InputStream;)V",
        "contentLength",
        "contentType",
        "writeTo",
        "",
        "sink",
        "Lokio/BufferedSink;",
        "uni-network_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private inputStream:Ljava/io/InputStream;

.field private length:J

.field private mediaType:Lokhttp3/MediaType;


# direct methods
.method public constructor <init>(Lokhttp3/MediaType;JLjava/io/InputStream;)V
    .registers 6

    const-string v0, "mediaType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "inputStream"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 361
    invoke-direct {p0}, Lokhttp3/RequestBody;-><init>()V

    .line 362
    iput-object p1, p0, Luts/sdk/modules/DCloudUniNetwork/InputStreamRequestBody;->mediaType:Lokhttp3/MediaType;

    .line 363
    iput-wide p2, p0, Luts/sdk/modules/DCloudUniNetwork/InputStreamRequestBody;->length:J

    .line 364
    iput-object p4, p0, Luts/sdk/modules/DCloudUniNetwork/InputStreamRequestBody;->inputStream:Ljava/io/InputStream;

    return-void
.end method


# virtual methods
.method public contentLength()J
    .registers 3

    .line 367
    iget-wide v0, p0, Luts/sdk/modules/DCloudUniNetwork/InputStreamRequestBody;->length:J

    return-wide v0
.end method

.method public contentType()Lokhttp3/MediaType;
    .registers 2

    .line 370
    iget-object v0, p0, Luts/sdk/modules/DCloudUniNetwork/InputStreamRequestBody;->mediaType:Lokhttp3/MediaType;

    if-nez v0, :cond_d

    .line 372
    const-string v0, "application/octet-stream"

    invoke-static {v0}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    :cond_d
    return-object v0
.end method

.method public writeTo(Lokio/BufferedSink;)V
    .registers 4

    const-string v0, "sink"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 380
    :try_start_6
    iget-object v1, p0, Luts/sdk/modules/DCloudUniNetwork/InputStreamRequestBody;->inputStream:Ljava/io/InputStream;

    invoke-static {v1}, Lokio/Okio;->source(Ljava/io/InputStream;)Lokio/Source;

    move-result-object v0

    .line 381
    invoke-interface {p1, v0}, Lokio/BufferedSink;->writeAll(Lokio/Source;)J
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_f

    .line 384
    :catchall_f
    check-cast v0, Ljava/io/Closeable;

    invoke-static {v0}, Lokhttp3/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    return-void
.end method
