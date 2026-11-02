###### Class com.bumptech.glide.load.ImageHeaderParser (com.bumptech.glide.load.ImageHeaderParser)
.class public interface abstract Lcom/bumptech/glide/load/ImageHeaderParser;
.super Ljava/lang/Object;
.source "ImageHeaderParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;
    }
.end annotation


# static fields
.field public static final UNKNOWN_ORIENTATION:I = -0x1


# virtual methods
.method public abstract getOrientation(Ljava/io/InputStream;Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract getOrientation(Ljava/nio/ByteBuffer;Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract getType(Ljava/io/InputStream;)Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract getType(Ljava/nio/ByteBuffer;)Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

###### Class com.bumptech.glide.load.ImageHeaderParser.AnonymousClass1 (com.bumptech.glide.load.ImageHeaderParser$1)
.class synthetic Lcom/bumptech/glide/load/ImageHeaderParser$1;
.super Ljava/lang/Object;
.source "ImageHeaderParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/ImageHeaderParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$bumptech$glide$load$ImageHeaderParser$ImageType:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 53
    invoke-static {}, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->values()[Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/bumptech/glide/load/ImageHeaderParser$1;->$SwitchMap$com$bumptech$glide$load$ImageHeaderParser$ImageType:[I

    :try_start_9
    sget-object v1, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->WEBP:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    invoke-virtual {v1}, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_12} :catch_12

    :catch_12
    :try_start_12
    sget-object v0, Lcom/bumptech/glide/load/ImageHeaderParser$1;->$SwitchMap$com$bumptech$glide$load$ImageHeaderParser$ImageType:[I

    sget-object v1, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->WEBP_A:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    invoke-virtual {v1}, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_1d} :catch_1d

    :catch_1d
    :try_start_1d
    sget-object v0, Lcom/bumptech/glide/load/ImageHeaderParser$1;->$SwitchMap$com$bumptech$glide$load$ImageHeaderParser$ImageType:[I

    sget-object v1, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->ANIMATED_WEBP:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    invoke-virtual {v1}, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_28
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_28} :catch_28

    :catch_28
    return-void
.end method

###### Class com.bumptech.glide.load.ImageHeaderParser.ImageType (com.bumptech.glide.load.ImageHeaderParser$ImageType)
.class public final enum Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;
.super Ljava/lang/Enum;
.source "ImageHeaderParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/ImageHeaderParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ImageType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

.field public static final enum ANIMATED_AVIF:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

.field public static final enum ANIMATED_WEBP:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

.field public static final enum AVIF:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

.field public static final enum GIF:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

.field public static final enum JPEG:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

.field public static final enum PNG:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

.field public static final enum PNG_A:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

.field public static final enum RAW:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

.field public static final enum UNKNOWN:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

.field public static final enum WEBP:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

.field public static final enum WEBP_A:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;


# instance fields
.field private final hasAlpha:Z


# direct methods
.method private static synthetic $values()[Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;
    .registers 3

    const/16 v0, 0xb

    .line 21
    new-array v0, v0, [Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    sget-object v1, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->GIF:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->JPEG:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->RAW:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->PNG_A:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->PNG:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->WEBP_A:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->WEBP:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->ANIMATED_WEBP:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->AVIF:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sget-object v1, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->ANIMATED_AVIF:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    sget-object v1, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->UNKNOWN:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 5

    .line 22
    new-instance v0, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    const-string v1, "GIF"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->GIF:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    .line 23
    new-instance v0, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    const-string v1, "JPEG"

    invoke-direct {v0, v1, v3, v2}, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->JPEG:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    .line 24
    new-instance v0, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    const-string v1, "RAW"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v2}, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->RAW:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    .line 26
    new-instance v0, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    const-string v1, "PNG_A"

    const/4 v4, 0x3

    invoke-direct {v0, v1, v4, v3}, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->PNG_A:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    .line 28
    new-instance v0, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    const-string v1, "PNG"

    const/4 v4, 0x4

    invoke-direct {v0, v1, v4, v2}, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->PNG:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    .line 30
    new-instance v0, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    const-string v1, "WEBP_A"

    const/4 v4, 0x5

    invoke-direct {v0, v1, v4, v3}, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->WEBP_A:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    .line 32
    new-instance v0, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    const-string v1, "WEBP"

    const/4 v4, 0x6

    invoke-direct {v0, v1, v4, v2}, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->WEBP:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    .line 34
    new-instance v0, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    const-string v1, "ANIMATED_WEBP"

    const/4 v4, 0x7

    invoke-direct {v0, v1, v4, v3}, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->ANIMATED_WEBP:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    .line 36
    new-instance v0, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    const-string v1, "AVIF"

    const/16 v4, 0x8

    invoke-direct {v0, v1, v4, v3}, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->AVIF:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    .line 38
    new-instance v0, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    const-string v1, "ANIMATED_AVIF"

    const/16 v4, 0x9

    invoke-direct {v0, v1, v4, v3}, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->ANIMATED_AVIF:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    .line 40
    new-instance v0, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    const-string v1, "UNKNOWN"

    const/16 v3, 0xa

    invoke-direct {v0, v1, v3, v2}, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->UNKNOWN:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    .line 21
    invoke-static {}, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->$values()[Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    move-result-object v0

    sput-object v0, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->$VALUES:[Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZ)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)V"
        }
    .end annotation

    .line 44
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 45
    iput-boolean p3, p0, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->hasAlpha:Z

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;
    .registers 2

    .line 21
    const-class v0, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    return-object p0
.end method

.method public static values()[Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;
    .registers 1

    .line 21
    sget-object v0, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->$VALUES:[Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    invoke-virtual {v0}, [Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    return-object v0
.end method


# virtual methods
.method public hasAlpha()Z
    .registers 2

    .line 49
    iget-boolean v0, p0, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->hasAlpha:Z

    return v0
.end method

.method public isWebp()Z
    .registers 4

    .line 53
    sget-object v0, Lcom/bumptech/glide/load/ImageHeaderParser$1;->$SwitchMap$com$bumptech$glide$load$ImageHeaderParser$ImageType:[I

    invoke-virtual {p0}, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_13

    const/4 v2, 0x2

    if-eq v0, v2, :cond_13

    const/4 v2, 0x3

    if-eq v0, v2, :cond_13

    const/4 v0, 0x0

    return v0

    :cond_13
    return v1
.end method
