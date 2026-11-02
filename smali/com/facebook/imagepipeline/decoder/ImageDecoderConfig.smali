###### Class com.facebook.imagepipeline.decoder.ImageDecoderConfig (com.facebook.imagepipeline.decoder.ImageDecoderConfig)
.class public Lcom/facebook/imagepipeline/decoder/ImageDecoderConfig;
.super Ljava/lang/Object;
.source "ImageDecoderConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/imagepipeline/decoder/ImageDecoderConfig$Builder;
    }
.end annotation


# instance fields
.field private final mCustomImageDecoders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/facebook/imageformat/ImageFormat;",
            "Lcom/facebook/imagepipeline/decoder/ImageDecoder;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final mCustomImageFormats:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/facebook/imageformat/ImageFormat$FormatChecker;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/facebook/imagepipeline/decoder/ImageDecoderConfig$Builder;)V
    .registers 3

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    invoke-static {p1}, Lcom/facebook/imagepipeline/decoder/ImageDecoderConfig$Builder;->-$$Nest$fgetmCustomImageDecoders(Lcom/facebook/imagepipeline/decoder/ImageDecoderConfig$Builder;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/imagepipeline/decoder/ImageDecoderConfig;->mCustomImageDecoders:Ljava/util/Map;

    .line 28
    invoke-static {p1}, Lcom/facebook/imagepipeline/decoder/ImageDecoderConfig$Builder;->-$$Nest$fgetmCustomImageFormats(Lcom/facebook/imagepipeline/decoder/ImageDecoderConfig$Builder;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/facebook/imagepipeline/decoder/ImageDecoderConfig;->mCustomImageFormats:Ljava/util/List;

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/imagepipeline/decoder/ImageDecoderConfig$Builder;Lcom/facebook/imagepipeline/decoder/ImageDecoderConfig-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/facebook/imagepipeline/decoder/ImageDecoderConfig;-><init>(Lcom/facebook/imagepipeline/decoder/ImageDecoderConfig$Builder;)V

    return-void
.end method

.method public static newBuilder()Lcom/facebook/imagepipeline/decoder/ImageDecoderConfig$Builder;
    .registers 1

    .line 42
    new-instance v0, Lcom/facebook/imagepipeline/decoder/ImageDecoderConfig$Builder;

    invoke-direct {v0}, Lcom/facebook/imagepipeline/decoder/ImageDecoderConfig$Builder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public getCustomImageDecoders()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lcom/facebook/imageformat/ImageFormat;",
            "Lcom/facebook/imagepipeline/decoder/ImageDecoder;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 33
    iget-object v0, p0, Lcom/facebook/imagepipeline/decoder/ImageDecoderConfig;->mCustomImageDecoders:Ljava/util/Map;

    return-object v0
.end method

.method public getCustomImageFormats()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/facebook/imageformat/ImageFormat$FormatChecker;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 38
    iget-object v0, p0, Lcom/facebook/imagepipeline/decoder/ImageDecoderConfig;->mCustomImageFormats:Ljava/util/List;

    return-object v0
.end method

###### Class com.facebook.imagepipeline.decoder.ImageDecoderConfig.Builder (com.facebook.imagepipeline.decoder.ImageDecoderConfig$Builder)
.class public final Lcom/facebook/imagepipeline/decoder/ImageDecoderConfig$Builder;
.super Ljava/lang/Object;
.source "ImageDecoderConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/imagepipeline/decoder/ImageDecoderConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mCustomImageDecoders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/facebook/imageformat/ImageFormat;",
            "Lcom/facebook/imagepipeline/decoder/ImageDecoder;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mCustomImageFormats:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/facebook/imageformat/ImageFormat$FormatChecker;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$fgetmCustomImageDecoders(Lcom/facebook/imagepipeline/decoder/ImageDecoderConfig$Builder;)Ljava/util/Map;
    .registers 1

    iget-object p0, p0, Lcom/facebook/imagepipeline/decoder/ImageDecoderConfig$Builder;->mCustomImageDecoders:Ljava/util/Map;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCustomImageFormats(Lcom/facebook/imagepipeline/decoder/ImageDecoderConfig$Builder;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Lcom/facebook/imagepipeline/decoder/ImageDecoderConfig$Builder;->mCustomImageFormats:Ljava/util/List;

    return-object p0
.end method

.method public constructor <init>()V
    .registers 1

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addDecodingCapability(Lcom/facebook/imageformat/ImageFormat;Lcom/facebook/imageformat/ImageFormat$FormatChecker;Lcom/facebook/imagepipeline/decoder/ImageDecoder;)Lcom/facebook/imagepipeline/decoder/ImageDecoderConfig$Builder;
    .registers 5
    .param p3    # Lcom/facebook/imagepipeline/decoder/ImageDecoder;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 61
    iget-object v0, p0, Lcom/facebook/imagepipeline/decoder/ImageDecoderConfig$Builder;->mCustomImageFormats:Ljava/util/List;

    if-nez v0, :cond_b

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/imagepipeline/decoder/ImageDecoderConfig$Builder;->mCustomImageFormats:Ljava/util/List;

    .line 64
    :cond_b
    iget-object v0, p0, Lcom/facebook/imagepipeline/decoder/ImageDecoderConfig$Builder;->mCustomImageFormats:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz p3, :cond_15

    .line 66
    invoke-virtual {p0, p1, p3}, Lcom/facebook/imagepipeline/decoder/ImageDecoderConfig$Builder;->overrideDecoder(Lcom/facebook/imageformat/ImageFormat;Lcom/facebook/imagepipeline/decoder/ImageDecoder;)Lcom/facebook/imagepipeline/decoder/ImageDecoderConfig$Builder;

    :cond_15
    return-object p0
.end method

.method public build()Lcom/facebook/imagepipeline/decoder/ImageDecoderConfig;
    .registers 3

    .line 88
    new-instance v0, Lcom/facebook/imagepipeline/decoder/ImageDecoderConfig;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/facebook/imagepipeline/decoder/ImageDecoderConfig;-><init>(Lcom/facebook/imagepipeline/decoder/ImageDecoderConfig$Builder;Lcom/facebook/imagepipeline/decoder/ImageDecoderConfig-IA;)V

    return-object v0
.end method

.method public overrideDecoder(Lcom/facebook/imageformat/ImageFormat;Lcom/facebook/imagepipeline/decoder/ImageDecoder;)Lcom/facebook/imagepipeline/decoder/ImageDecoderConfig$Builder;
    .registers 4

    .line 80
    iget-object v0, p0, Lcom/facebook/imagepipeline/decoder/ImageDecoderConfig$Builder;->mCustomImageDecoders:Ljava/util/Map;

    if-nez v0, :cond_b

    .line 81
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/facebook/imagepipeline/decoder/ImageDecoderConfig$Builder;->mCustomImageDecoders:Ljava/util/Map;

    .line 83
    :cond_b
    iget-object v0, p0, Lcom/facebook/imagepipeline/decoder/ImageDecoderConfig$Builder;->mCustomImageDecoders:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method
