###### Class com.bumptech.glide.load.resource.bitmap.ImageReader (com.bumptech.glide.load.resource.bitmap.ImageReader)
.class interface abstract Lcom/bumptech/glide/load/resource/bitmap/ImageReader;
.super Ljava/lang/Object;
.source "ImageReader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/load/resource/bitmap/ImageReader$ParcelFileDescriptorImageReader;,
        Lcom/bumptech/glide/load/resource/bitmap/ImageReader$InputStreamImageReader;,
        Lcom/bumptech/glide/load/resource/bitmap/ImageReader$ByteBufferReader;,
        Lcom/bumptech/glide/load/resource/bitmap/ImageReader$FileReader;,
        Lcom/bumptech/glide/load/resource/bitmap/ImageReader$ByteArrayReader;
    }
.end annotation


# virtual methods
.method public abstract decodeBitmap(Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract getImageOrientation()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract getImageType()Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract stopGrowingBuffers()V
.end method

###### Class com.bumptech.glide.load.resource.bitmap.ImageReader.ByteArrayReader (com.bumptech.glide.load.resource.bitmap.ImageReader$ByteArrayReader)
.class public final Lcom/bumptech/glide/load/resource/bitmap/ImageReader$ByteArrayReader;
.super Ljava/lang/Object;
.source "ImageReader.java"

# interfaces
.implements Lcom/bumptech/glide/load/resource/bitmap/ImageReader;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/resource/bitmap/ImageReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ByteArrayReader"
.end annotation


# instance fields
.field private final byteArrayPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;

.field private final bytes:[B

.field private final parsers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bumptech/glide/load/ImageHeaderParser;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>([BLjava/util/List;Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/util/List<",
            "Lcom/bumptech/glide/load/ImageHeaderParser;",
            ">;",
            "Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;",
            ")V"
        }
    .end annotation

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/bumptech/glide/load/resource/bitmap/ImageReader$ByteArrayReader;->bytes:[B

    .line 49
    iput-object p2, p0, Lcom/bumptech/glide/load/resource/bitmap/ImageReader$ByteArrayReader;->parsers:Ljava/util/List;

    .line 50
    iput-object p3, p0, Lcom/bumptech/glide/load/resource/bitmap/ImageReader$ByteArrayReader;->byteArrayPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;

    return-void
.end method


# virtual methods
.method public decodeBitmap(Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .registers 5

    .line 56
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/bitmap/ImageReader$ByteArrayReader;->bytes:[B

    const/4 v1, 0x0

    array-length v2, v0

    invoke-static {v0, v1, v2, p1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public getImageOrientation()I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 66
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/bitmap/ImageReader$ByteArrayReader;->parsers:Ljava/util/List;

    iget-object v1, p0, Lcom/bumptech/glide/load/resource/bitmap/ImageReader$ByteArrayReader;->bytes:[B

    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/bumptech/glide/load/resource/bitmap/ImageReader$ByteArrayReader;->byteArrayPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;

    invoke-static {v0, v1, v2}, Lcom/bumptech/glide/load/ImageHeaderParserUtils;->getOrientation(Ljava/util/List;Ljava/nio/ByteBuffer;Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;)I

    move-result v0

    return v0
.end method

.method public getImageType()Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 61
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/bitmap/ImageReader$ByteArrayReader;->parsers:Ljava/util/List;

    iget-object v1, p0, Lcom/bumptech/glide/load/resource/bitmap/ImageReader$ByteArrayReader;->bytes:[B

    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bumptech/glide/load/ImageHeaderParserUtils;->getType(Ljava/util/List;Ljava/nio/ByteBuffer;)Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    move-result-object v0

    return-object v0
.end method

.method public stopGrowingBuffers()V
    .registers 1

    return-void
.end method

###### Class com.bumptech.glide.load.resource.bitmap.ImageReader.ByteBufferReader (com.bumptech.glide.load.resource.bitmap.ImageReader$ByteBufferReader)
.class public final Lcom/bumptech/glide/load/resource/bitmap/ImageReader$ByteBufferReader;
.super Ljava/lang/Object;
.source "ImageReader.java"

# interfaces
.implements Lcom/bumptech/glide/load/resource/bitmap/ImageReader;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/resource/bitmap/ImageReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ByteBufferReader"
.end annotation


# instance fields
.field private final buffer:Ljava/nio/ByteBuffer;

.field private final byteArrayPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;

.field private final parsers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bumptech/glide/load/ImageHeaderParser;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/nio/ByteBuffer;Ljava/util/List;Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/ByteBuffer;",
            "Ljava/util/List<",
            "Lcom/bumptech/glide/load/ImageHeaderParser;",
            ">;",
            "Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;",
            ")V"
        }
    .end annotation

    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 148
    iput-object p1, p0, Lcom/bumptech/glide/load/resource/bitmap/ImageReader$ByteBufferReader;->buffer:Ljava/nio/ByteBuffer;

    .line 149
    iput-object p2, p0, Lcom/bumptech/glide/load/resource/bitmap/ImageReader$ByteBufferReader;->parsers:Ljava/util/List;

    .line 150
    iput-object p3, p0, Lcom/bumptech/glide/load/resource/bitmap/ImageReader$ByteBufferReader;->byteArrayPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;

    return-void
.end method

.method private stream()Ljava/io/InputStream;
    .registers 2

    .line 174
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/bitmap/ImageReader$ByteBufferReader;->buffer:Ljava/nio/ByteBuffer;

    invoke-static {v0}, Lcom/bumptech/glide/util/ByteBufferUtil;->rewind(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/util/ByteBufferUtil;->toStream(Ljava/nio/ByteBuffer;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public decodeBitmap(Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .registers 4

    .line 156
    invoke-direct {p0}, Lcom/bumptech/glide/load/resource/bitmap/ImageReader$ByteBufferReader;->stream()Ljava/io/InputStream;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public getImageOrientation()I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 166
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/bitmap/ImageReader$ByteBufferReader;->parsers:Ljava/util/List;

    iget-object v1, p0, Lcom/bumptech/glide/load/resource/bitmap/ImageReader$ByteBufferReader;->buffer:Ljava/nio/ByteBuffer;

    .line 167
    invoke-static {v1}, Lcom/bumptech/glide/util/ByteBufferUtil;->rewind(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/bumptech/glide/load/resource/bitmap/ImageReader$ByteBufferReader;->byteArrayPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;

    .line 166
    invoke-static {v0, v1, v2}, Lcom/bumptech/glide/load/ImageHeaderParserUtils;->getOrientation(Ljava/util/List;Ljava/nio/ByteBuffer;Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;)I

    move-result v0

    return v0
.end method

.method public getImageType()Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 161
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/bitmap/ImageReader$ByteBufferReader;->parsers:Ljava/util/List;

    iget-object v1, p0, Lcom/bumptech/glide/load/resource/bitmap/ImageReader$ByteBufferReader;->buffer:Ljava/nio/ByteBuffer;

    invoke-static {v1}, Lcom/bumptech/glide/util/ByteBufferUtil;->rewind(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bumptech/glide/load/ImageHeaderParserUtils;->getType(Ljava/util/List;Ljava/nio/ByteBuffer;)Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    move-result-object v0

    return-object v0
.end method

.method public stopGrowingBuffers()V
    .registers 1

    return-void
.end method

###### Class com.bumptech.glide.load.resource.bitmap.ImageReader.FileReader (com.bumptech.glide.load.resource.bitmap.ImageReader$FileReader)
.class public final Lcom/bumptech/glide/load/resource/bitmap/ImageReader$FileReader;
.super Ljava/lang/Object;
.source "ImageReader.java"

# interfaces
.implements Lcom/bumptech/glide/load/resource/bitmap/ImageReader;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/resource/bitmap/ImageReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FileReader"
.end annotation


# instance fields
.field private final byteArrayPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;

.field private final file:Ljava/io/File;

.field private final parsers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bumptech/glide/load/ImageHeaderParser;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/io/File;Ljava/util/List;Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/util/List<",
            "Lcom/bumptech/glide/load/ImageHeaderParser;",
            ">;",
            "Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;",
            ")V"
        }
    .end annotation

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    iput-object p1, p0, Lcom/bumptech/glide/load/resource/bitmap/ImageReader$FileReader;->file:Ljava/io/File;

    .line 81
    iput-object p2, p0, Lcom/bumptech/glide/load/resource/bitmap/ImageReader$FileReader;->parsers:Ljava/util/List;

    .line 82
    iput-object p3, p0, Lcom/bumptech/glide/load/resource/bitmap/ImageReader$FileReader;->byteArrayPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;

    return-void
.end method


# virtual methods
.method public decodeBitmap(Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 90
    :try_start_1
    new-instance v1, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;

    new-instance v2, Ljava/io/FileInputStream;

    iget-object v3, p0, Lcom/bumptech/glide/load/resource/bitmap/ImageReader$FileReader;->file:Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    iget-object v3, p0, Lcom/bumptech/glide/load/resource/bitmap/ImageReader$FileReader;->byteArrayPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;

    invoke-direct {v1, v2, v3}, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;-><init>(Ljava/io/InputStream;Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;)V
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_1a

    .line 91
    :try_start_f
    invoke-static {v1, v0, p1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p1
    :try_end_13
    .catchall {:try_start_f .. :try_end_13} :catchall_17

    .line 95
    :try_start_13
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_16} :catch_16

    :catch_16
    return-object p1

    :catchall_17
    move-exception p1

    move-object v0, v1

    goto :goto_1b

    :catchall_1a
    move-exception p1

    :goto_1b
    if-eqz v0, :cond_20

    :try_start_1d
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_20
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_20} :catch_20

    .line 100
    :catch_20
    :cond_20
    throw p1
.end method

.method public getImageOrientation()I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 124
    :try_start_1
    new-instance v1, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;

    new-instance v2, Ljava/io/FileInputStream;

    iget-object v3, p0, Lcom/bumptech/glide/load/resource/bitmap/ImageReader$FileReader;->file:Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    iget-object v3, p0, Lcom/bumptech/glide/load/resource/bitmap/ImageReader$FileReader;->byteArrayPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;

    invoke-direct {v1, v2, v3}, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;-><init>(Ljava/io/InputStream;Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;)V
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_1d

    .line 125
    :try_start_f
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/bitmap/ImageReader$FileReader;->parsers:Ljava/util/List;

    iget-object v2, p0, Lcom/bumptech/glide/load/resource/bitmap/ImageReader$FileReader;->byteArrayPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;

    invoke-static {v0, v1, v2}, Lcom/bumptech/glide/load/ImageHeaderParserUtils;->getOrientation(Ljava/util/List;Ljava/io/InputStream;Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;)I

    move-result v0
    :try_end_17
    .catchall {:try_start_f .. :try_end_17} :catchall_1b

    .line 129
    :try_start_17
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_1a} :catch_1a

    :catch_1a
    return v0

    :catchall_1b
    move-exception v0

    goto :goto_21

    :catchall_1d
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    :goto_21
    if-eqz v1, :cond_26

    :try_start_23
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_26
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_26} :catch_26

    .line 134
    :catch_26
    :cond_26
    throw v0
.end method

.method public getImageType()Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 107
    :try_start_1
    new-instance v1, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;

    new-instance v2, Ljava/io/FileInputStream;

    iget-object v3, p0, Lcom/bumptech/glide/load/resource/bitmap/ImageReader$FileReader;->file:Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    iget-object v3, p0, Lcom/bumptech/glide/load/resource/bitmap/ImageReader$FileReader;->byteArrayPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;

    invoke-direct {v1, v2, v3}, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;-><init>(Ljava/io/InputStream;Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;)V
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_1d

    .line 108
    :try_start_f
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/bitmap/ImageReader$FileReader;->parsers:Ljava/util/List;

    iget-object v2, p0, Lcom/bumptech/glide/load/resource/bitmap/ImageReader$FileReader;->byteArrayPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;

    invoke-static {v0, v1, v2}, Lcom/bumptech/glide/load/ImageHeaderParserUtils;->getType(Ljava/util/List;Ljava/io/InputStream;Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;)Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    move-result-object v0
    :try_end_17
    .catchall {:try_start_f .. :try_end_17} :catchall_1b

    .line 112
    :try_start_17
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_1a} :catch_1a

    :catch_1a
    return-object v0

    :catchall_1b
    move-exception v0

    goto :goto_21

    :catchall_1d
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    :goto_21
    if-eqz v1, :cond_26

    :try_start_23
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_26
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_26} :catch_26

    .line 117
    :catch_26
    :cond_26
    throw v0
.end method

.method public stopGrowingBuffers()V
    .registers 1

    return-void
.end method

###### Class com.bumptech.glide.load.resource.bitmap.ImageReader.InputStreamImageReader (com.bumptech.glide.load.resource.bitmap.ImageReader$InputStreamImageReader)
.class public final Lcom/bumptech/glide/load/resource/bitmap/ImageReader$InputStreamImageReader;
.super Ljava/lang/Object;
.source "ImageReader.java"

# interfaces
.implements Lcom/bumptech/glide/load/resource/bitmap/ImageReader;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/resource/bitmap/ImageReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "InputStreamImageReader"
.end annotation


# instance fields
.field private final byteArrayPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;

.field private final dataRewinder:Lcom/bumptech/glide/load/data/InputStreamRewinder;

.field private final parsers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bumptech/glide/load/ImageHeaderParser;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/io/InputStream;Ljava/util/List;Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Ljava/util/List<",
            "Lcom/bumptech/glide/load/ImageHeaderParser;",
            ">;",
            "Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;",
            ")V"
        }
    .end annotation

    .line 184
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 185
    invoke-static {p3}, Lcom/bumptech/glide/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;

    iput-object v0, p0, Lcom/bumptech/glide/load/resource/bitmap/ImageReader$InputStreamImageReader;->byteArrayPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;

    .line 186
    invoke-static {p2}, Lcom/bumptech/glide/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    iput-object p2, p0, Lcom/bumptech/glide/load/resource/bitmap/ImageReader$InputStreamImageReader;->parsers:Ljava/util/List;

    .line 188
    new-instance p2, Lcom/bumptech/glide/load/data/InputStreamRewinder;

    invoke-direct {p2, p1, p3}, Lcom/bumptech/glide/load/data/InputStreamRewinder;-><init>(Ljava/io/InputStream;Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;)V

    iput-object p2, p0, Lcom/bumptech/glide/load/resource/bitmap/ImageReader$InputStreamImageReader;->dataRewinder:Lcom/bumptech/glide/load/data/InputStreamRewinder;

    return-void
.end method


# virtual methods
.method public decodeBitmap(Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 194
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/bitmap/ImageReader$InputStreamImageReader;->dataRewinder:Lcom/bumptech/glide/load/data/InputStreamRewinder;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/data/InputStreamRewinder;->rewindAndGet()Ljava/io/InputStream;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public getImageOrientation()I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 204
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/bitmap/ImageReader$InputStreamImageReader;->parsers:Ljava/util/List;

    iget-object v1, p0, Lcom/bumptech/glide/load/resource/bitmap/ImageReader$InputStreamImageReader;->dataRewinder:Lcom/bumptech/glide/load/data/InputStreamRewinder;

    .line 205
    invoke-virtual {v1}, Lcom/bumptech/glide/load/data/InputStreamRewinder;->rewindAndGet()Ljava/io/InputStream;

    move-result-object v1

    iget-object v2, p0, Lcom/bumptech/glide/load/resource/bitmap/ImageReader$InputStreamImageReader;->byteArrayPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;

    .line 204
    invoke-static {v0, v1, v2}, Lcom/bumptech/glide/load/ImageHeaderParserUtils;->getOrientation(Ljava/util/List;Ljava/io/InputStream;Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;)I

    move-result v0

    return v0
.end method

.method public getImageType()Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 199
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/bitmap/ImageReader$InputStreamImageReader;->parsers:Ljava/util/List;

    iget-object v1, p0, Lcom/bumptech/glide/load/resource/bitmap/ImageReader$InputStreamImageReader;->dataRewinder:Lcom/bumptech/glide/load/data/InputStreamRewinder;

    invoke-virtual {v1}, Lcom/bumptech/glide/load/data/InputStreamRewinder;->rewindAndGet()Ljava/io/InputStream;

    move-result-object v1

    iget-object v2, p0, Lcom/bumptech/glide/load/resource/bitmap/ImageReader$InputStreamImageReader;->byteArrayPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;

    invoke-static {v0, v1, v2}, Lcom/bumptech/glide/load/ImageHeaderParserUtils;->getType(Ljava/util/List;Ljava/io/InputStream;Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;)Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    move-result-object v0

    return-object v0
.end method

.method public stopGrowingBuffers()V
    .registers 2

    .line 210
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/bitmap/ImageReader$InputStreamImageReader;->dataRewinder:Lcom/bumptech/glide/load/data/InputStreamRewinder;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/data/InputStreamRewinder;->fixMarkLimits()V

    return-void
.end method

###### Class com.bumptech.glide.load.resource.bitmap.ImageReader.ParcelFileDescriptorImageReader (com.bumptech.glide.load.resource.bitmap.ImageReader$ParcelFileDescriptorImageReader)
.class public final Lcom/bumptech/glide/load/resource/bitmap/ImageReader$ParcelFileDescriptorImageReader;
.super Ljava/lang/Object;
.source "ImageReader.java"

# interfaces
.implements Lcom/bumptech/glide/load/resource/bitmap/ImageReader;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/resource/bitmap/ImageReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ParcelFileDescriptorImageReader"
.end annotation


# instance fields
.field private final byteArrayPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;

.field private final dataRewinder:Lcom/bumptech/glide/load/data/ParcelFileDescriptorRewinder;

.field private final parsers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bumptech/glide/load/ImageHeaderParser;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/os/ParcelFileDescriptor;Ljava/util/List;Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/ParcelFileDescriptor;",
            "Ljava/util/List<",
            "Lcom/bumptech/glide/load/ImageHeaderParser;",
            ">;",
            "Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;",
            ")V"
        }
    .end annotation

    .line 223
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 224
    invoke-static {p3}, Lcom/bumptech/glide/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;

    iput-object p3, p0, Lcom/bumptech/glide/load/resource/bitmap/ImageReader$ParcelFileDescriptorImageReader;->byteArrayPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;

    .line 225
    invoke-static {p2}, Lcom/bumptech/glide/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    iput-object p2, p0, Lcom/bumptech/glide/load/resource/bitmap/ImageReader$ParcelFileDescriptorImageReader;->parsers:Ljava/util/List;

    .line 227
    new-instance p2, Lcom/bumptech/glide/load/data/ParcelFileDescriptorRewinder;

    invoke-direct {p2, p1}, Lcom/bumptech/glide/load/data/ParcelFileDescriptorRewinder;-><init>(Landroid/os/ParcelFileDescriptor;)V

    iput-object p2, p0, Lcom/bumptech/glide/load/resource/bitmap/ImageReader$ParcelFileDescriptorImageReader;->dataRewinder:Lcom/bumptech/glide/load/data/ParcelFileDescriptorRewinder;

    return-void
.end method


# virtual methods
.method public decodeBitmap(Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 233
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/bitmap/ImageReader$ParcelFileDescriptorImageReader;->dataRewinder:Lcom/bumptech/glide/load/data/ParcelFileDescriptorRewinder;

    .line 234
    invoke-virtual {v0}, Lcom/bumptech/glide/load/data/ParcelFileDescriptorRewinder;->rewindAndGet()Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    const/4 v1, 0x0

    .line 233
    invoke-static {v0, v1, p1}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public getImageOrientation()I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 244
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/bitmap/ImageReader$ParcelFileDescriptorImageReader;->parsers:Ljava/util/List;

    iget-object v1, p0, Lcom/bumptech/glide/load/resource/bitmap/ImageReader$ParcelFileDescriptorImageReader;->dataRewinder:Lcom/bumptech/glide/load/data/ParcelFileDescriptorRewinder;

    iget-object v2, p0, Lcom/bumptech/glide/load/resource/bitmap/ImageReader$ParcelFileDescriptorImageReader;->byteArrayPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;

    invoke-static {v0, v1, v2}, Lcom/bumptech/glide/load/ImageHeaderParserUtils;->getOrientation(Ljava/util/List;Lcom/bumptech/glide/load/data/ParcelFileDescriptorRewinder;Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;)I

    move-result v0

    return v0
.end method

.method public getImageType()Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 239
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/bitmap/ImageReader$ParcelFileDescriptorImageReader;->parsers:Ljava/util/List;

    iget-object v1, p0, Lcom/bumptech/glide/load/resource/bitmap/ImageReader$ParcelFileDescriptorImageReader;->dataRewinder:Lcom/bumptech/glide/load/data/ParcelFileDescriptorRewinder;

    iget-object v2, p0, Lcom/bumptech/glide/load/resource/bitmap/ImageReader$ParcelFileDescriptorImageReader;->byteArrayPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;

    invoke-static {v0, v1, v2}, Lcom/bumptech/glide/load/ImageHeaderParserUtils;->getType(Ljava/util/List;Lcom/bumptech/glide/load/data/ParcelFileDescriptorRewinder;Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;)Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    move-result-object v0

    return-object v0
.end method

.method public stopGrowingBuffers()V
    .registers 1

    return-void
.end method
