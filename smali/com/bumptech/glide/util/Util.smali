###### Class com.bumptech.glide.util.Util (com.bumptech.glide.util.Util)
.class public final Lcom/bumptech/glide/util/Util;
.super Ljava/lang/Object;
.source "Util.java"


# static fields
.field private static final HASH_ACCUMULATOR:I = 0x11

.field private static final HASH_MULTIPLIER:I = 0x1f

.field private static final HEX_CHAR_ARRAY:[C

.field private static final SHA_256_CHARS:[C

.field private static volatile mainThreadHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 23
    const-string v0, "0123456789abcdef"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/bumptech/glide/util/Util;->HEX_CHAR_ARRAY:[C

    const/16 v0, 0x40

    .line 25
    new-array v0, v0, [C

    sput-object v0, Lcom/bumptech/glide/util/Util;->SHA_256_CHARS:[C

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static assertBackgroundThread()V
    .registers 2

    .line 182
    invoke-static {}, Lcom/bumptech/glide/util/Util;->isOnBackgroundThread()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 183
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "You must call this method on a background thread"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static assertMainThread()V
    .registers 2

    .line 175
    invoke-static {}, Lcom/bumptech/glide/util/Util;->isOnMainThread()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 176
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "You must call this method on the main thread"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static bothBaseRequestOptionsNullEquivalentOrEquals(Lcom/bumptech/glide/request/BaseRequestOptions;Lcom/bumptech/glide/request/BaseRequestOptions;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/request/BaseRequestOptions<",
            "*>;",
            "Lcom/bumptech/glide/request/BaseRequestOptions<",
            "*>;)Z"
        }
    .end annotation

    if-nez p0, :cond_8

    if-nez p1, :cond_6

    const/4 p0, 0x1

    return p0

    :cond_6
    const/4 p0, 0x0

    return p0

    .line 251
    :cond_8
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/request/BaseRequestOptions;->isEquivalentTo(Lcom/bumptech/glide/request/BaseRequestOptions;)Z

    move-result p0

    return p0
.end method

.method public static bothModelsNullEquivalentOrEquals(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 3

    if-nez p0, :cond_8

    if-nez p1, :cond_6

    const/4 p0, 0x1

    return p0

    :cond_6
    const/4 p0, 0x0

    return p0

    .line 238
    :cond_8
    instance-of v0, p0, Lcom/bumptech/glide/load/model/Model;

    if-eqz v0, :cond_13

    .line 239
    check-cast p0, Lcom/bumptech/glide/load/model/Model;

    invoke-interface {p0, p1}, Lcom/bumptech/glide/load/model/Model;->isEquivalentTo(Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 241
    :cond_13
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static bothNullOrEqual(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 2

    if-nez p0, :cond_8

    if-nez p1, :cond_6

    const/4 p0, 0x1

    return p0

    :cond_6
    const/4 p0, 0x0

    return p0

    .line 231
    :cond_8
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private static bytesToHex([B[C)Ljava/lang/String;
    .registers 7

    const/4 v0, 0x0

    .line 47
    :goto_1
    array-length v1, p0

    if-ge v0, v1, :cond_1d

    .line 48
    aget-byte v1, p0, v0

    and-int/lit16 v2, v1, 0xff

    mul-int/lit8 v3, v0, 0x2

    .line 49
    sget-object v4, Lcom/bumptech/glide/util/Util;->HEX_CHAR_ARRAY:[C

    ushr-int/lit8 v2, v2, 0x4

    aget-char v2, v4, v2

    aput-char v2, p1, v3

    add-int/lit8 v3, v3, 0x1

    and-int/lit8 v1, v1, 0xf

    .line 50
    aget-char v1, v4, v1

    aput-char v1, p1, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 52
    :cond_1d
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, p1}, Ljava/lang/String;-><init>([C)V

    return-object p0
.end method

.method public static createQueue(I)Ljava/util/Queue;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I)",
            "Ljava/util/Queue<",
            "TT;>;"
        }
    .end annotation

    .line 200
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0, p0}, Ljava/util/ArrayDeque;-><init>(I)V

    return-object v0
.end method

.method public static getBitmapByteSize(IILandroid/graphics/Bitmap$Config;)I
    .registers 3

    mul-int p0, p0, p1

    .line 102
    invoke-static {p2}, Lcom/bumptech/glide/util/Util;->getBytesPerPixel(Landroid/graphics/Bitmap$Config;)I

    move-result p1

    mul-int p0, p0, p1

    return p0
.end method

.method public static getBitmapByteSize(Landroid/graphics/Bitmap;)I
    .registers 4

    .line 73
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_16

    .line 87
    :try_start_6
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getAllocationByteCount()I

    move-result p0
    :try_end_a
    .catch Ljava/lang/NullPointerException; {:try_start_6 .. :try_end_a} :catch_b

    return p0

    .line 94
    :catch_b
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result p0

    mul-int v0, v0, p0

    return v0

    .line 74
    :cond_16
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Cannot obtain size for recycled Bitmap: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getBytesPerPixel(Landroid/graphics/Bitmap$Config;)I
    .registers 3

    if-nez p0, :cond_4

    .line 114
    sget-object p0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 118
    :cond_4
    sget-object v0, Lcom/bumptech/glide/util/Util$1;->$SwitchMap$android$graphics$Bitmap$Config:[I

    invoke-virtual {p0}, Landroid/graphics/Bitmap$Config;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1c

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1c

    const/4 v1, 0x3

    if-eq p0, v1, :cond_1c

    const/4 v0, 0x4

    if-eq p0, v0, :cond_19

    return v0

    :cond_19
    const/16 p0, 0x8

    return p0

    :cond_1c
    return v0
.end method

.method public static getSize(Landroid/graphics/Bitmap;)I
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 64
    invoke-static {p0}, Lcom/bumptech/glide/util/Util;->getBitmapByteSize(Landroid/graphics/Bitmap;)I

    move-result p0

    return p0
.end method

.method public static getSnapshot(Ljava/util/Collection;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "TT;>;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 216
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 217
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_d
    :goto_d
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_d

    .line 219
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_d

    :cond_1d
    return-object v0
.end method

.method private static getUiThreadHandler()Landroid/os/Handler;
    .registers 3

    .line 160
    sget-object v0, Lcom/bumptech/glide/util/Util;->mainThreadHandler:Landroid/os/Handler;

    if-nez v0, :cond_1b

    .line 161
    const-class v0, Lcom/bumptech/glide/util/Util;

    monitor-enter v0

    .line 162
    :try_start_7
    sget-object v1, Lcom/bumptech/glide/util/Util;->mainThreadHandler:Landroid/os/Handler;

    if-nez v1, :cond_16

    .line 163
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v1, Lcom/bumptech/glide/util/Util;->mainThreadHandler:Landroid/os/Handler;

    .line 165
    :cond_16
    monitor-exit v0

    goto :goto_1b

    :catchall_18
    move-exception v1

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_7 .. :try_end_1a} :catchall_18

    throw v1

    .line 167
    :cond_1b
    :goto_1b
    sget-object v0, Lcom/bumptech/glide/util/Util;->mainThreadHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public static hashCode(F)I
    .registers 2

    const/16 v0, 0x11

    .line 263
    invoke-static {p0, v0}, Lcom/bumptech/glide/util/Util;->hashCode(FI)I

    move-result p0

    return p0
.end method

.method public static hashCode(FI)I
    .registers 2

    .line 267
    invoke-static {p0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result p0

    invoke-static {p0, p1}, Lcom/bumptech/glide/util/Util;->hashCode(II)I

    move-result p0

    return p0
.end method

.method public static hashCode(I)I
    .registers 2

    const/16 v0, 0x11

    .line 255
    invoke-static {p0, v0}, Lcom/bumptech/glide/util/Util;->hashCode(II)I

    move-result p0

    return p0
.end method

.method public static hashCode(II)I
    .registers 2

    mul-int/lit8 p1, p1, 0x1f

    add-int/2addr p1, p0

    return p1
.end method

.method public static hashCode(Ljava/lang/Object;I)I
    .registers 2

    if-nez p0, :cond_4

    const/4 p0, 0x0

    goto :goto_8

    .line 271
    :cond_4
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    :goto_8
    invoke-static {p0, p1}, Lcom/bumptech/glide/util/Util;->hashCode(II)I

    move-result p0

    return p0
.end method

.method public static hashCode(Z)I
    .registers 2

    const/16 v0, 0x11

    .line 279
    invoke-static {p0, v0}, Lcom/bumptech/glide/util/Util;->hashCode(ZI)I

    move-result p0

    return p0
.end method

.method public static hashCode(ZI)I
    .registers 2

    .line 275
    invoke-static {p0, p1}, Lcom/bumptech/glide/util/Util;->hashCode(II)I

    move-result p0

    return p0
.end method

.method public static isOnBackgroundThread()Z
    .registers 1

    .line 194
    invoke-static {}, Lcom/bumptech/glide/util/Util;->isOnMainThread()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static isOnMainThread()Z
    .registers 2

    .line 189
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_c

    const/4 v0, 0x1

    return v0

    :cond_c
    const/4 v0, 0x0

    return v0
.end method

.method public static isValidDimension(I)Z
    .registers 2

    if-gtz p0, :cond_9

    const/high16 v0, -0x80000000

    if-ne p0, v0, :cond_7

    goto :goto_9

    :cond_7
    const/4 p0, 0x0

    return p0

    :cond_9
    :goto_9
    const/4 p0, 0x1

    return p0
.end method

.method public static isValidDimensions(II)Z
    .registers 2

    .line 142
    invoke-static {p0}, Lcom/bumptech/glide/util/Util;->isValidDimension(I)Z

    move-result p0

    if-eqz p0, :cond_e

    invoke-static {p1}, Lcom/bumptech/glide/util/Util;->isValidDimension(I)Z

    move-result p0

    if-eqz p0, :cond_e

    const/4 p0, 0x1

    return p0

    :cond_e
    const/4 p0, 0x0

    return p0
.end method

.method public static postOnUiThread(Ljava/lang/Runnable;)V
    .registers 2

    .line 151
    invoke-static {}, Lcom/bumptech/glide/util/Util;->getUiThreadHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static removeCallbacksOnUiThread(Ljava/lang/Runnable;)V
    .registers 2

    .line 156
    invoke-static {}, Lcom/bumptech/glide/util/Util;->getUiThreadHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static sha256BytesToHex([B)Ljava/lang/String;
    .registers 2

    .line 35
    sget-object v0, Lcom/bumptech/glide/util/Util;->SHA_256_CHARS:[C

    monitor-enter v0

    .line 36
    :try_start_3
    invoke-static {p0, v0}, Lcom/bumptech/glide/util/Util;->bytesToHex([B[C)Ljava/lang/String;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_9
    move-exception p0

    .line 37
    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_9

    throw p0
.end method

###### Class com.bumptech.glide.util.Util.AnonymousClass1 (com.bumptech.glide.util.Util$1)
.class synthetic Lcom/bumptech/glide/util/Util$1;
.super Ljava/lang/Object;
.source "Util.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/util/Util;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$android$graphics$Bitmap$Config:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 118
    invoke-static {}, Landroid/graphics/Bitmap$Config;->values()[Landroid/graphics/Bitmap$Config;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/bumptech/glide/util/Util$1;->$SwitchMap$android$graphics$Bitmap$Config:[I

    :try_start_9
    sget-object v1, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v1}, Landroid/graphics/Bitmap$Config;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_12} :catch_12

    :catch_12
    :try_start_12
    sget-object v0, Lcom/bumptech/glide/util/Util$1;->$SwitchMap$android$graphics$Bitmap$Config:[I

    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v1}, Landroid/graphics/Bitmap$Config;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_1d} :catch_1d

    :catch_1d
    :try_start_1d
    sget-object v0, Lcom/bumptech/glide/util/Util$1;->$SwitchMap$android$graphics$Bitmap$Config:[I

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v1}, Landroid/graphics/Bitmap$Config;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_28
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_28} :catch_28

    :catch_28
    :try_start_28
    sget-object v0, Lcom/bumptech/glide/util/Util$1;->$SwitchMap$android$graphics$Bitmap$Config:[I

    invoke-static {}, Ldc/squareup/okio/Okio$$ExternalSyntheticApiModelOutline0;->m$1()Landroid/graphics/Bitmap$Config;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap$Config;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_35
    .catch Ljava/lang/NoSuchFieldError; {:try_start_28 .. :try_end_35} :catch_35

    :catch_35
    :try_start_35
    sget-object v0, Lcom/bumptech/glide/util/Util$1;->$SwitchMap$android$graphics$Bitmap$Config:[I

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v1}, Landroid/graphics/Bitmap$Config;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_40
    .catch Ljava/lang/NoSuchFieldError; {:try_start_35 .. :try_end_40} :catch_40

    :catch_40
    return-void
.end method
