###### Class com.facebook.fresco.vito.options.EncodedImageOptions (com.facebook.fresco.vito.options.EncodedImageOptions)
.class public Lcom/facebook/fresco/vito/options/EncodedImageOptions;
.super Ljava/lang/Object;
.source "EncodedImageOptions.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/fresco/vito/options/EncodedImageOptions$Builder;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0016\u0018\u00002\u00020\u0001:\u0001\u001bB\u0013\u0012\n\u0010\u0002\u001a\u0006\u0012\u0002\u0008\u00030\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0013\u0010\u0012\u001a\u00020\u00132\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0001H\u0096\u0002J\u0010\u0010\u0015\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u0000H\u0004J\u0008\u0010\u0016\u001a\u00020\u0017H\u0016J\u0008\u0010\u0018\u001a\u00020\u000fH\u0016J\u0008\u0010\u0019\u001a\u00020\u001aH\u0014R\u0013\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u0013\u0010\n\u001a\u0004\u0018\u00010\u000b\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\rR\u0013\u0010\u000e\u001a\u0004\u0018\u00010\u000f\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011\u00a8\u0006\u001c"
    }
    d2 = {
        "Lcom/facebook/fresco/vito/options/EncodedImageOptions;",
        "",
        "builder",
        "Lcom/facebook/fresco/vito/options/EncodedImageOptions$Builder;",
        "<init>",
        "(Lcom/facebook/fresco/vito/options/EncodedImageOptions$Builder;)V",
        "priority",
        "Lcom/facebook/imagepipeline/common/Priority;",
        "getPriority",
        "()Lcom/facebook/imagepipeline/common/Priority;",
        "cacheChoice",
        "Lcom/facebook/imagepipeline/request/ImageRequest$CacheChoice;",
        "getCacheChoice",
        "()Lcom/facebook/imagepipeline/request/ImageRequest$CacheChoice;",
        "diskCacheId",
        "",
        "getDiskCacheId",
        "()Ljava/lang/String;",
        "equals",
        "",
        "other",
        "equalEncodedOptions",
        "hashCode",
        "",
        "toString",
        "toStringHelper",
        "Lcom/facebook/common/internal/Objects$ToStringHelper;",
        "Builder",
        "options_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final cacheChoice:Lcom/facebook/imagepipeline/request/ImageRequest$CacheChoice;

.field private final diskCacheId:Ljava/lang/String;

.field private final priority:Lcom/facebook/imagepipeline/common/Priority;


# direct methods
.method public constructor <init>(Lcom/facebook/fresco/vito/options/EncodedImageOptions$Builder;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/fresco/vito/options/EncodedImageOptions$Builder<",
            "*>;)V"
        }
    .end annotation

    const-string v0, "builder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    invoke-virtual {p1}, Lcom/facebook/fresco/vito/options/EncodedImageOptions$Builder;->getPriority$options_release()Lcom/facebook/imagepipeline/common/Priority;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/fresco/vito/options/EncodedImageOptions;->priority:Lcom/facebook/imagepipeline/common/Priority;

    .line 17
    invoke-virtual {p1}, Lcom/facebook/fresco/vito/options/EncodedImageOptions$Builder;->getCacheChoice$options_release()Lcom/facebook/imagepipeline/request/ImageRequest$CacheChoice;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/fresco/vito/options/EncodedImageOptions;->cacheChoice:Lcom/facebook/imagepipeline/request/ImageRequest$CacheChoice;

    .line 18
    invoke-virtual {p1}, Lcom/facebook/fresco/vito/options/EncodedImageOptions$Builder;->getDiskCacheId$options_release()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/fresco/vito/options/EncodedImageOptions;->diskCacheId:Ljava/lang/String;

    .line 21
    invoke-virtual {p1}, Lcom/facebook/fresco/vito/options/EncodedImageOptions$Builder;->getCacheChoice$options_release()Lcom/facebook/imagepipeline/request/ImageRequest$CacheChoice;

    move-result-object p1

    sget-object v1, Lcom/facebook/imagepipeline/request/ImageRequest$CacheChoice;->DYNAMIC:Lcom/facebook/imagepipeline/request/ImageRequest$CacheChoice;

    if-ne p1, v1, :cond_2d

    if-eqz v0, :cond_25

    return-void

    .line 23
    :cond_25
    new-instance p1, Lcom/facebook/imagepipeline/request/ImageRequestBuilder$BuilderException;

    const-string v0, "Disk cache id must be set for dynamic cache choice"

    invoke-direct {p1, v0}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder$BuilderException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 25
    :cond_2d
    check-cast v0, Ljava/lang/CharSequence;

    if-eqz v0, :cond_40

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-nez p1, :cond_38

    goto :goto_40

    .line 26
    :cond_38
    new-instance p1, Lcom/facebook/imagepipeline/request/ImageRequestBuilder$BuilderException;

    .line 27
    const-string v0, "Ensure that if you want to use a disk cache id, you set the CacheChoice to DYNAMIC"

    .line 26
    invoke-direct {p1, v0}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder$BuilderException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_40
    :goto_40
    return-void
.end method


# virtual methods
.method protected final equalEncodedOptions(Lcom/facebook/fresco/vito/options/EncodedImageOptions;)Z
    .registers 4

    const-string v0, "other"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    iget-object v0, p0, Lcom/facebook/fresco/vito/options/EncodedImageOptions;->priority:Lcom/facebook/imagepipeline/common/Priority;

    iget-object v1, p1, Lcom/facebook/fresco/vito/options/EncodedImageOptions;->priority:Lcom/facebook/imagepipeline/common/Priority;

    invoke-static {v0, v1}, Lcom/facebook/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 43
    iget-object v0, p0, Lcom/facebook/fresco/vito/options/EncodedImageOptions;->cacheChoice:Lcom/facebook/imagepipeline/request/ImageRequest$CacheChoice;

    iget-object v1, p1, Lcom/facebook/fresco/vito/options/EncodedImageOptions;->cacheChoice:Lcom/facebook/imagepipeline/request/ImageRequest$CacheChoice;

    invoke-static {v0, v1}, Lcom/facebook/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 44
    iget-object v0, p0, Lcom/facebook/fresco/vito/options/EncodedImageOptions;->diskCacheId:Ljava/lang/String;

    iget-object p1, p1, Lcom/facebook/fresco/vito/options/EncodedImageOptions;->diskCacheId:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/facebook/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_25

    const/4 p1, 0x1

    return p1

    :cond_25
    const/4 p1, 0x0

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4

    if-ne p0, p1, :cond_4

    const/4 p1, 0x1

    return p1

    :cond_4
    if-eqz p1, :cond_1c

    .line 35
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15

    goto :goto_1c

    .line 38
    :cond_15
    check-cast p1, Lcom/facebook/fresco/vito/options/EncodedImageOptions;

    invoke-virtual {p0, p1}, Lcom/facebook/fresco/vito/options/EncodedImageOptions;->equalEncodedOptions(Lcom/facebook/fresco/vito/options/EncodedImageOptions;)Z

    move-result p1

    return p1

    :cond_1c
    :goto_1c
    const/4 p1, 0x0

    return p1
.end method

.method public final getCacheChoice()Lcom/facebook/imagepipeline/request/ImageRequest$CacheChoice;
    .registers 2

    .line 17
    iget-object v0, p0, Lcom/facebook/fresco/vito/options/EncodedImageOptions;->cacheChoice:Lcom/facebook/imagepipeline/request/ImageRequest$CacheChoice;

    return-object v0
.end method

.method public final getDiskCacheId()Ljava/lang/String;
    .registers 2

    .line 18
    iget-object v0, p0, Lcom/facebook/fresco/vito/options/EncodedImageOptions;->diskCacheId:Ljava/lang/String;

    return-object v0
.end method

.method public final getPriority()Lcom/facebook/imagepipeline/common/Priority;
    .registers 2

    .line 16
    iget-object v0, p0, Lcom/facebook/fresco/vito/options/EncodedImageOptions;->priority:Lcom/facebook/imagepipeline/common/Priority;

    return-object v0
.end method

.method public hashCode()I
    .registers 4

    .line 48
    iget-object v0, p0, Lcom/facebook/fresco/vito/options/EncodedImageOptions;->priority:Lcom/facebook/imagepipeline/common/Priority;

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lcom/facebook/imagepipeline/common/Priority;->hashCode()I

    move-result v0

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    mul-int/lit8 v0, v0, 0x1f

    .line 49
    iget-object v2, p0, Lcom/facebook/fresco/vito/options/EncodedImageOptions;->cacheChoice:Lcom/facebook/imagepipeline/request/ImageRequest$CacheChoice;

    if-eqz v2, :cond_16

    invoke-virtual {v2}, Lcom/facebook/imagepipeline/request/ImageRequest$CacheChoice;->hashCode()I

    move-result v2

    goto :goto_17

    :cond_16
    const/4 v2, 0x0

    :goto_17
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 50
    iget-object v2, p0, Lcom/facebook/fresco/vito/options/EncodedImageOptions;->diskCacheId:Ljava/lang/String;

    if-eqz v2, :cond_22

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_22
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 54
    invoke-virtual {p0}, Lcom/facebook/fresco/vito/options/EncodedImageOptions;->toStringHelper()Lcom/facebook/common/internal/Objects$ToStringHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/common/internal/Objects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "toString(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method protected toStringHelper()Lcom/facebook/common/internal/Objects$ToStringHelper;
    .registers 4

    .line 57
    invoke-static {p0}, Lcom/facebook/common/internal/Objects;->toStringHelper(Ljava/lang/Object;)Lcom/facebook/common/internal/Objects$ToStringHelper;

    move-result-object v0

    .line 58
    const-string v1, "priority"

    iget-object v2, p0, Lcom/facebook/fresco/vito/options/EncodedImageOptions;->priority:Lcom/facebook/imagepipeline/common/Priority;

    invoke-virtual {v0, v1, v2}, Lcom/facebook/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/facebook/common/internal/Objects$ToStringHelper;

    move-result-object v0

    .line 59
    const-string v1, "cacheChoice"

    iget-object v2, p0, Lcom/facebook/fresco/vito/options/EncodedImageOptions;->cacheChoice:Lcom/facebook/imagepipeline/request/ImageRequest$CacheChoice;

    invoke-virtual {v0, v1, v2}, Lcom/facebook/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/facebook/common/internal/Objects$ToStringHelper;

    move-result-object v0

    .line 60
    const-string v1, "diskCacheId"

    iget-object v2, p0, Lcom/facebook/fresco/vito/options/EncodedImageOptions;->diskCacheId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/facebook/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/facebook/common/internal/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "add(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

###### Class com.facebook.fresco.vito.options.EncodedImageOptions.Builder (com.facebook.fresco.vito.options.EncodedImageOptions$Builder)
.class public Lcom/facebook/fresco/vito/options/EncodedImageOptions$Builder;
.super Ljava/lang/Object;
.source "EncodedImageOptions.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/fresco/vito/options/EncodedImageOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/facebook/fresco/vito/options/EncodedImageOptions$Builder<",
        "TT;>;>",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nEncodedImageOptions.kt\nKotlin\n*S Kotlin\n*F\n+ 1 EncodedImageOptions.kt\ncom/facebook/fresco/vito/options/EncodedImageOptions$Builder\n*L\n1#1,91:1\n86#1,2:92\n86#1,2:94\n86#1,2:96\n*S KotlinDebug\n*F\n+ 1 EncodedImageOptions.kt\ncom/facebook/fresco/vito/options/EncodedImageOptions$Builder\n*L\n75#1:92,2\n77#1:94,2\n79#1:96,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0002\u0008\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0016\u0018\u0000*\u000e\u0008\u0000\u0010\u0001*\u0008\u0012\u0004\u0012\u0002H\u00010\u00002\u00020\u0002B\t\u0008\u0014\u00a2\u0006\u0004\u0008\u0003\u0010\u0004B\u0011\u0008\u0014\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0003\u0010\u0007J\u0015\u0010\u0008\u001a\u00028\u00002\u0008\u0010\u0008\u001a\u0004\u0018\u00010\t\u00a2\u0006\u0002\u0010\u001aJ\u0015\u0010\u000e\u001a\u00028\u00002\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u000f\u00a2\u0006\u0002\u0010\u001bJ\u0015\u0010\u0014\u001a\u00028\u00002\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0015\u00a2\u0006\u0002\u0010\u001cJ\u0008\u0010\u001d\u001a\u00020\u0006H\u0016J\r\u0010\u001e\u001a\u00028\u0000H\u0004\u00a2\u0006\u0002\u0010\u001fJ-\u0010 \u001a\u00028\u00002\u001d\u0010!\u001a\u0019\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u00000\u0000\u0012\u0004\u0012\u00020#0\"\u00a2\u0006\u0002\u0008$H\u0082\u0008\u00a2\u0006\u0002\u0010%R\u001c\u0010\u0008\u001a\u0004\u0018\u00010\tX\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\n\u0010\u000b\"\u0004\u0008\u000c\u0010\rR\u001c\u0010\u000e\u001a\u0004\u0018\u00010\u000fX\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011\"\u0004\u0008\u0012\u0010\u0013R\u001c\u0010\u0014\u001a\u0004\u0018\u00010\u0015X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0016\u0010\u0017\"\u0004\u0008\u0018\u0010\u0019\u00a8\u0006&"
    }
    d2 = {
        "Lcom/facebook/fresco/vito/options/EncodedImageOptions$Builder;",
        "T",
        "",
        "<init>",
        "()V",
        "defaultOptions",
        "Lcom/facebook/fresco/vito/options/EncodedImageOptions;",
        "(Lcom/facebook/fresco/vito/options/EncodedImageOptions;)V",
        "priority",
        "Lcom/facebook/imagepipeline/common/Priority;",
        "getPriority$options_release",
        "()Lcom/facebook/imagepipeline/common/Priority;",
        "setPriority$options_release",
        "(Lcom/facebook/imagepipeline/common/Priority;)V",
        "cacheChoice",
        "Lcom/facebook/imagepipeline/request/ImageRequest$CacheChoice;",
        "getCacheChoice$options_release",
        "()Lcom/facebook/imagepipeline/request/ImageRequest$CacheChoice;",
        "setCacheChoice$options_release",
        "(Lcom/facebook/imagepipeline/request/ImageRequest$CacheChoice;)V",
        "diskCacheId",
        "",
        "getDiskCacheId$options_release",
        "()Ljava/lang/String;",
        "setDiskCacheId$options_release",
        "(Ljava/lang/String;)V",
        "(Lcom/facebook/imagepipeline/common/Priority;)Lcom/facebook/fresco/vito/options/EncodedImageOptions$Builder;",
        "(Lcom/facebook/imagepipeline/request/ImageRequest$CacheChoice;)Lcom/facebook/fresco/vito/options/EncodedImageOptions$Builder;",
        "(Ljava/lang/String;)Lcom/facebook/fresco/vito/options/EncodedImageOptions$Builder;",
        "build",
        "getThis",
        "()Lcom/facebook/fresco/vito/options/EncodedImageOptions$Builder;",
        "modify",
        "block",
        "Lkotlin/Function1;",
        "",
        "Lkotlin/ExtensionFunctionType;",
        "(Lkotlin/jvm/functions/Function1;)Lcom/facebook/fresco/vito/options/EncodedImageOptions$Builder;",
        "options_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private cacheChoice:Lcom/facebook/imagepipeline/request/ImageRequest$CacheChoice;

.field private diskCacheId:Ljava/lang/String;

.field private priority:Lcom/facebook/imagepipeline/common/Priority;


# direct methods
.method protected constructor <init>()V
    .registers 1

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected constructor <init>(Lcom/facebook/fresco/vito/options/EncodedImageOptions;)V
    .registers 3

    const-string v0, "defaultOptions"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    invoke-virtual {p1}, Lcom/facebook/fresco/vito/options/EncodedImageOptions;->getPriority()Lcom/facebook/imagepipeline/common/Priority;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/fresco/vito/options/EncodedImageOptions$Builder;->priority:Lcom/facebook/imagepipeline/common/Priority;

    .line 71
    invoke-virtual {p1}, Lcom/facebook/fresco/vito/options/EncodedImageOptions;->getCacheChoice()Lcom/facebook/imagepipeline/request/ImageRequest$CacheChoice;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/fresco/vito/options/EncodedImageOptions$Builder;->cacheChoice:Lcom/facebook/imagepipeline/request/ImageRequest$CacheChoice;

    .line 72
    invoke-virtual {p1}, Lcom/facebook/fresco/vito/options/EncodedImageOptions;->getDiskCacheId()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/facebook/fresco/vito/options/EncodedImageOptions$Builder;->diskCacheId:Ljava/lang/String;

    return-void
.end method

.method private final modify(Lkotlin/jvm/functions/Function1;)Lcom/facebook/fresco/vito/options/EncodedImageOptions$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/facebook/fresco/vito/options/EncodedImageOptions$Builder<",
            "TT;>;",
            "Lkotlin/Unit;",
            ">;)TT;"
        }
    .end annotation

    .line 86
    invoke-interface {p1, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    invoke-virtual {p0}, Lcom/facebook/fresco/vito/options/EncodedImageOptions$Builder;->getThis()Lcom/facebook/fresco/vito/options/EncodedImageOptions$Builder;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public build()Lcom/facebook/fresco/vito/options/EncodedImageOptions;
    .registers 2

    .line 81
    new-instance v0, Lcom/facebook/fresco/vito/options/EncodedImageOptions;

    invoke-direct {v0, p0}, Lcom/facebook/fresco/vito/options/EncodedImageOptions;-><init>(Lcom/facebook/fresco/vito/options/EncodedImageOptions$Builder;)V

    return-object v0
.end method

.method public final cacheChoice(Lcom/facebook/imagepipeline/request/ImageRequest$CacheChoice;)Lcom/facebook/fresco/vito/options/EncodedImageOptions$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/request/ImageRequest$CacheChoice;",
            ")TT;"
        }
    .end annotation

    .line 94
    move-object v0, p0

    check-cast v0, Lcom/facebook/fresco/vito/options/EncodedImageOptions$Builder;

    .line 77
    iput-object p1, p0, Lcom/facebook/fresco/vito/options/EncodedImageOptions$Builder;->cacheChoice:Lcom/facebook/imagepipeline/request/ImageRequest$CacheChoice;

    .line 95
    invoke-virtual {p0}, Lcom/facebook/fresco/vito/options/EncodedImageOptions$Builder;->getThis()Lcom/facebook/fresco/vito/options/EncodedImageOptions$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final diskCacheId(Ljava/lang/String;)Lcom/facebook/fresco/vito/options/EncodedImageOptions$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 96
    move-object v0, p0

    check-cast v0, Lcom/facebook/fresco/vito/options/EncodedImageOptions$Builder;

    .line 79
    iput-object p1, p0, Lcom/facebook/fresco/vito/options/EncodedImageOptions$Builder;->diskCacheId:Ljava/lang/String;

    .line 97
    invoke-virtual {p0}, Lcom/facebook/fresco/vito/options/EncodedImageOptions$Builder;->getThis()Lcom/facebook/fresco/vito/options/EncodedImageOptions$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final getCacheChoice$options_release()Lcom/facebook/imagepipeline/request/ImageRequest$CacheChoice;
    .registers 2

    .line 64
    iget-object v0, p0, Lcom/facebook/fresco/vito/options/EncodedImageOptions$Builder;->cacheChoice:Lcom/facebook/imagepipeline/request/ImageRequest$CacheChoice;

    return-object v0
.end method

.method public final getDiskCacheId$options_release()Ljava/lang/String;
    .registers 2

    .line 65
    iget-object v0, p0, Lcom/facebook/fresco/vito/options/EncodedImageOptions$Builder;->diskCacheId:Ljava/lang/String;

    return-object v0
.end method

.method public final getPriority$options_release()Lcom/facebook/imagepipeline/common/Priority;
    .registers 2

    .line 63
    iget-object v0, p0, Lcom/facebook/fresco/vito/options/EncodedImageOptions$Builder;->priority:Lcom/facebook/imagepipeline/common/Priority;

    return-object v0
.end method

.method protected final getThis()Lcom/facebook/fresco/vito/options/EncodedImageOptions$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 83
    const-string v0, "null cannot be cast to non-null type T of com.facebook.fresco.vito.options.EncodedImageOptions.Builder"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, p0

    check-cast v0, Lcom/facebook/fresco/vito/options/EncodedImageOptions$Builder;

    return-object p0
.end method

.method public final priority(Lcom/facebook/imagepipeline/common/Priority;)Lcom/facebook/fresco/vito/options/EncodedImageOptions$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/common/Priority;",
            ")TT;"
        }
    .end annotation

    .line 92
    move-object v0, p0

    check-cast v0, Lcom/facebook/fresco/vito/options/EncodedImageOptions$Builder;

    .line 75
    iput-object p1, p0, Lcom/facebook/fresco/vito/options/EncodedImageOptions$Builder;->priority:Lcom/facebook/imagepipeline/common/Priority;

    .line 93
    invoke-virtual {p0}, Lcom/facebook/fresco/vito/options/EncodedImageOptions$Builder;->getThis()Lcom/facebook/fresco/vito/options/EncodedImageOptions$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setCacheChoice$options_release(Lcom/facebook/imagepipeline/request/ImageRequest$CacheChoice;)V
    .registers 2

    .line 64
    iput-object p1, p0, Lcom/facebook/fresco/vito/options/EncodedImageOptions$Builder;->cacheChoice:Lcom/facebook/imagepipeline/request/ImageRequest$CacheChoice;

    return-void
.end method

.method public final setDiskCacheId$options_release(Ljava/lang/String;)V
    .registers 2

    .line 65
    iput-object p1, p0, Lcom/facebook/fresco/vito/options/EncodedImageOptions$Builder;->diskCacheId:Ljava/lang/String;

    return-void
.end method

.method public final setPriority$options_release(Lcom/facebook/imagepipeline/common/Priority;)V
    .registers 2

    .line 63
    iput-object p1, p0, Lcom/facebook/fresco/vito/options/EncodedImageOptions$Builder;->priority:Lcom/facebook/imagepipeline/common/Priority;

    return-void
.end method
