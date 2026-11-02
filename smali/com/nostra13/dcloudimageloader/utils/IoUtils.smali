###### Class com.nostra13.dcloudimageloader.utils.IoUtils (com.nostra13.dcloudimageloader.utils.IoUtils)
.class public final Lcom/nostra13/dcloudimageloader/utils/IoUtils;
.super Ljava/lang/Object;
.source "IoUtils.java"


# static fields
.field private static final BUFFER_SIZE:I = 0x8000


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static closeSilently(Ljava/io/Closeable;)V
    .registers 1

    .line 34
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_3

    :catch_3
    return-void
.end method

.method public static copyStream(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x4ab

    .line 20
    new-array v1, v0, [B

    :goto_4
    const/4 v2, 0x0

    .line 23
    invoke-virtual {p0, v1, v2, v0}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_d

    return-void

    .line 28
    :cond_d
    invoke-virtual {p1, v1, v2, v3}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_4
.end method
