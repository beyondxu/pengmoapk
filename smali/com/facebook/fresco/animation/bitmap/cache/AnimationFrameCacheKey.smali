###### Class com.facebook.fresco.animation.bitmap.cache.AnimationFrameCacheKey (com.facebook.fresco.animation.bitmap.cache.AnimationFrameCacheKey)
.class public final Lcom/facebook/fresco/animation/bitmap/cache/AnimationFrameCacheKey;
.super Ljava/lang/Object;
.source "AnimationFrameCacheKey.kt"

# interfaces
.implements Lcom/facebook/cache/common/CacheKey;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/fresco/animation/bitmap/cache/AnimationFrameCacheKey$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0000\n\u0002\u0008\u0003\u0018\u0000 \u00132\u00020\u0001:\u0001\u0013B\u001b\u0008\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u0010\u0010\n\u001a\u00020\u00052\u0006\u0010\u000b\u001a\u00020\u000cH\u0016J\u0008\u0010\r\u001a\u00020\tH\u0016J\u0008\u0010\u000e\u001a\u00020\u0005H\u0016J\u0013\u0010\u000f\u001a\u00020\u00052\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0011H\u0096\u0002J\u0008\u0010\u0012\u001a\u00020\u0003H\u0016R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/facebook/fresco/animation/bitmap/cache/AnimationFrameCacheKey;",
        "Lcom/facebook/cache/common/CacheKey;",
        "imageId",
        "",
        "deepEquals",
        "",
        "<init>",
        "(IZ)V",
        "animationUriString",
        "",
        "containsUri",
        "uri",
        "Landroid/net/Uri;",
        "getUriString",
        "isResourceIdForDebugging",
        "equals",
        "o",
        "",
        "hashCode",
        "Companion",
        "animated-base_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lcom/facebook/fresco/animation/bitmap/cache/AnimationFrameCacheKey$Companion;

.field private static final URI_PREFIX:Ljava/lang/String; = "anim://"


# instance fields
.field private final animationUriString:Ljava/lang/String;

.field private final deepEquals:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/facebook/fresco/animation/bitmap/cache/AnimationFrameCacheKey$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/facebook/fresco/animation/bitmap/cache/AnimationFrameCacheKey$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/facebook/fresco/animation/bitmap/cache/AnimationFrameCacheKey;->Companion:Lcom/facebook/fresco/animation/bitmap/cache/AnimationFrameCacheKey$Companion;

    return-void
.end method

.method public constructor <init>(I)V
    .registers 5

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, p1, v2, v0, v1}, Lcom/facebook/fresco/animation/bitmap/cache/AnimationFrameCacheKey;-><init>(IZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(IZ)V
    .registers 4

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-boolean p2, p0, Lcom/facebook/fresco/animation/bitmap/cache/AnimationFrameCacheKey;->deepEquals:Z

    .line 19
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "anim://"

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/facebook/fresco/animation/bitmap/cache/AnimationFrameCacheKey;->animationUriString:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(IZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 5

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_5

    const/4 p2, 0x0

    .line 16
    :cond_5
    invoke-direct {p0, p1, p2}, Lcom/facebook/fresco/animation/bitmap/cache/AnimationFrameCacheKey;-><init>(IZ)V

    return-void
.end method


# virtual methods
.method public containsUri(Landroid/net/Uri;)Z
    .registers 6

    const-string/jumbo v0, "uri"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "toString(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/facebook/fresco/animation/bitmap/cache/AnimationFrameCacheKey;->animationUriString:Ljava/lang/String;

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {p1, v0, v3, v1, v2}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4

    .line 28
    iget-boolean v0, p0, Lcom/facebook/fresco/animation/bitmap/cache/AnimationFrameCacheKey;->deepEquals:Z

    if-nez v0, :cond_9

    .line 29
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_9
    if-ne p0, p1, :cond_d

    const/4 p1, 0x1

    return p1

    :cond_d
    if-eqz p1, :cond_29

    .line 35
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1e

    goto :goto_29

    .line 39
    :cond_1e
    check-cast p1, Lcom/facebook/fresco/animation/bitmap/cache/AnimationFrameCacheKey;

    .line 40
    iget-object v0, p0, Lcom/facebook/fresco/animation/bitmap/cache/AnimationFrameCacheKey;->animationUriString:Ljava/lang/String;

    iget-object p1, p1, Lcom/facebook/fresco/animation/bitmap/cache/AnimationFrameCacheKey;->animationUriString:Ljava/lang/String;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_29
    :goto_29
    const/4 p1, 0x0

    return p1
.end method

.method public getUriString()Ljava/lang/String;
    .registers 2

    .line 23
    iget-object v0, p0, Lcom/facebook/fresco/animation/bitmap/cache/AnimationFrameCacheKey;->animationUriString:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    .line 44
    iget-boolean v0, p0, Lcom/facebook/fresco/animation/bitmap/cache/AnimationFrameCacheKey;->deepEquals:Z

    if-nez v0, :cond_9

    .line 45
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0

    .line 47
    :cond_9
    iget-object v0, p0, Lcom/facebook/fresco/animation/bitmap/cache/AnimationFrameCacheKey;->animationUriString:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public isResourceIdForDebugging()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

###### Class com.facebook.fresco.animation.bitmap.cache.AnimationFrameCacheKey.Companion (com.facebook.fresco.animation.bitmap.cache.AnimationFrameCacheKey$Companion)
.class public final Lcom/facebook/fresco/animation/bitmap/cache/AnimationFrameCacheKey$Companion;
.super Ljava/lang/Object;
.source "AnimationFrameCacheKey.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/fresco/animation/bitmap/cache/AnimationFrameCacheKey;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0006"
    }
    d2 = {
        "Lcom/facebook/fresco/animation/bitmap/cache/AnimationFrameCacheKey$Companion;",
        "",
        "<init>",
        "()V",
        "URI_PREFIX",
        "",
        "animated-base_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    invoke-direct {p0}, Lcom/facebook/fresco/animation/bitmap/cache/AnimationFrameCacheKey$Companion;-><init>()V

    return-void
.end method
