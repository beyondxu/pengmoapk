###### Class com.facebook.fresco.urimod.UriModifierInterface (com.facebook.fresco.urimod.UriModifierInterface)
.class public interface abstract Lcom/facebook/fresco/urimod/UriModifierInterface;
.super Ljava/lang/Object;
.source "UriModifierInterface.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/fresco/urimod/UriModifierInterface$DefaultImpls;,
        Lcom/facebook/fresco/urimod/UriModifierInterface$ModificationResult;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008f\u0018\u00002\u00020\u0001:\u0001\u0010J:\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u00072\u0008\u0010\u0008\u001a\u0004\u0018\u00010\t2\u0008\u0010\n\u001a\u0004\u0018\u00010\u00012\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u000cH&J\u001c\u0010\r\u001a\u0004\u0018\u00010\u000e2\u0006\u0010\u000f\u001a\u00020\u000e2\u0008\u0010\n\u001a\u0004\u0018\u00010\u0001H&\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/facebook/fresco/urimod/UriModifierInterface;",
        "",
        "modifyUri",
        "Lcom/facebook/fresco/urimod/UriModifierInterface$ModificationResult;",
        "imageSource",
        "Lcom/facebook/fresco/vito/source/UriImageSource;",
        "viewport",
        "Lcom/facebook/fresco/urimod/Dimensions;",
        "scaleType",
        "Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;",
        "callerContext",
        "contextChain",
        "Lcom/facebook/common/callercontext/ContextChain;",
        "modifyPrefetchUri",
        "Landroid/net/Uri;",
        "uri",
        "ModificationResult",
        "urimod_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# virtual methods
.method public abstract modifyPrefetchUri(Landroid/net/Uri;Ljava/lang/Object;)Landroid/net/Uri;
.end method

.method public abstract modifyUri(Lcom/facebook/fresco/vito/source/UriImageSource;Lcom/facebook/fresco/urimod/Dimensions;Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;Ljava/lang/Object;Lcom/facebook/common/callercontext/ContextChain;)Lcom/facebook/fresco/urimod/UriModifierInterface$ModificationResult;
.end method

###### Class com.facebook.fresco.urimod.UriModifierInterface.DefaultImpls (com.facebook.fresco.urimod.UriModifierInterface$DefaultImpls)
.class public final Lcom/facebook/fresco/urimod/UriModifierInterface$DefaultImpls;
.super Ljava/lang/Object;
.source "UriModifierInterface.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/fresco/urimod/UriModifierInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultImpls"
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static synthetic modifyUri$default(Lcom/facebook/fresco/urimod/UriModifierInterface;Lcom/facebook/fresco/vito/source/UriImageSource;Lcom/facebook/fresco/urimod/Dimensions;Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;Ljava/lang/Object;Lcom/facebook/common/callercontext/ContextChain;ILjava/lang/Object;)Lcom/facebook/fresco/urimod/UriModifierInterface$ModificationResult;
    .registers 14

    if-nez p7, :cond_12

    and-int/lit8 p6, p6, 0x10

    if-eqz p6, :cond_7

    const/4 p5, 0x0

    :cond_7
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 17
    invoke-interface/range {v0 .. v5}, Lcom/facebook/fresco/urimod/UriModifierInterface;->modifyUri(Lcom/facebook/fresco/vito/source/UriImageSource;Lcom/facebook/fresco/urimod/Dimensions;Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;Ljava/lang/Object;Lcom/facebook/common/callercontext/ContextChain;)Lcom/facebook/fresco/urimod/UriModifierInterface$ModificationResult;

    move-result-object p0

    return-object p0

    :cond_12
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: modifyUri"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

###### Class com.facebook.fresco.urimod.UriModifierInterface.ModificationResult (com.facebook.fresco.urimod.UriModifierInterface$ModificationResult)
.class public abstract Lcom/facebook/fresco/urimod/UriModifierInterface$ModificationResult;
.super Ljava/lang/Object;
.source "UriModifierInterface.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/fresco/urimod/UriModifierInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "ModificationResult"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/fresco/urimod/UriModifierInterface$ModificationResult$Disabled;,
        Lcom/facebook/fresco/urimod/UriModifierInterface$ModificationResult$FallbackToOriginalUrl;,
        Lcom/facebook/fresco/urimod/UriModifierInterface$ModificationResult$Modified;,
        Lcom/facebook/fresco/urimod/UriModifierInterface$ModificationResult$Unmodified;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u00086\u0018\u00002\u00020\u0001:\u0004\u000b\u000c\r\u000eB\u0011\u0008\u0004\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0008\u0010\n\u001a\u00020\u0003H\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0008\u0010\t\u0082\u0001\u0004\u000f\u0010\u0011\u0012\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/facebook/fresco/urimod/UriModifierInterface$ModificationResult;",
        "",
        "comment",
        "",
        "<init>",
        "(Ljava/lang/String;)V",
        "bestAllowlistedSize",
        "",
        "getBestAllowlistedSize",
        "()Ljava/lang/Integer;",
        "toString",
        "Disabled",
        "Modified",
        "FallbackToOriginalUrl",
        "Unmodified",
        "Lcom/facebook/fresco/urimod/UriModifierInterface$ModificationResult$Disabled;",
        "Lcom/facebook/fresco/urimod/UriModifierInterface$ModificationResult$FallbackToOriginalUrl;",
        "Lcom/facebook/fresco/urimod/UriModifierInterface$ModificationResult$Modified;",
        "Lcom/facebook/fresco/urimod/UriModifierInterface$ModificationResult$Unmodified;",
        "urimod_release"
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
.field private final comment:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/fresco/urimod/UriModifierInterface$ModificationResult;->comment:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/facebook/fresco/urimod/UriModifierInterface$ModificationResult;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public abstract getBestAllowlistedSize()Ljava/lang/Integer;
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 31
    iget-object v0, p0, Lcom/facebook/fresco/urimod/UriModifierInterface$ModificationResult;->comment:Ljava/lang/String;

    return-object v0
.end method

###### Class com.facebook.fresco.urimod.UriModifierInterface.ModificationResult.Disabled (com.facebook.fresco.urimod.UriModifierInterface$ModificationResult$Disabled)
.class public final Lcom/facebook/fresco/urimod/UriModifierInterface$ModificationResult$Disabled;
.super Lcom/facebook/fresco/urimod/UriModifierInterface$ModificationResult;
.source "UriModifierInterface.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/fresco/urimod/UriModifierInterface$ModificationResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Disabled"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005R\u0018\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0096\u0004\u00a2\u0006\n\n\u0002\u0010\n\u001a\u0004\u0008\u0008\u0010\t\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/facebook/fresco/urimod/UriModifierInterface$ModificationResult$Disabled;",
        "Lcom/facebook/fresco/urimod/UriModifierInterface$ModificationResult;",
        "comment",
        "",
        "<init>",
        "(Ljava/lang/String;)V",
        "bestAllowlistedSize",
        "",
        "getBestAllowlistedSize",
        "()Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        "urimod_release"
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
.field private final bestAllowlistedSize:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 4

    const-string v0, "comment"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Disabled:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/facebook/fresco/urimod/UriModifierInterface$ModificationResult;-><init>(Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method


# virtual methods
.method public getBestAllowlistedSize()Ljava/lang/Integer;
    .registers 2

    .line 34
    iget-object v0, p0, Lcom/facebook/fresco/urimod/UriModifierInterface$ModificationResult$Disabled;->bestAllowlistedSize:Ljava/lang/Integer;

    return-object v0
.end method

###### Class com.facebook.fresco.urimod.UriModifierInterface.ModificationResult.FallbackToOriginalUrl (com.facebook.fresco.urimod.UriModifierInterface$ModificationResult$FallbackToOriginalUrl)
.class public final Lcom/facebook/fresco/urimod/UriModifierInterface$ModificationResult$FallbackToOriginalUrl;
.super Lcom/facebook/fresco/urimod/UriModifierInterface$ModificationResult;
.source "UriModifierInterface.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/fresco/urimod/UriModifierInterface$ModificationResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FallbackToOriginalUrl"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\t\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0008\u0018\u00002\u00020\u0001B\u0011\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0010\u0010\t\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003\u00a2\u0006\u0002\u0010\u0007J\u001a\u0010\n\u001a\u00020\u00002\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003H\u00c6\u0001\u00a2\u0006\u0002\u0010\u000bJ\u0013\u0010\u000c\u001a\u00020\r2\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u000fH\u00d6\u0003J\t\u0010\u0010\u001a\u00020\u0003H\u00d6\u0001J\t\u0010\u0011\u001a\u00020\u0012H\u00d6\u0001R\u0018\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0096\u0004\u00a2\u0006\n\n\u0002\u0010\u0008\u001a\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/facebook/fresco/urimod/UriModifierInterface$ModificationResult$FallbackToOriginalUrl;",
        "Lcom/facebook/fresco/urimod/UriModifierInterface$ModificationResult;",
        "bestAllowlistedSize",
        "",
        "<init>",
        "(Ljava/lang/Integer;)V",
        "getBestAllowlistedSize",
        "()Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        "component1",
        "copy",
        "(Ljava/lang/Integer;)Lcom/facebook/fresco/urimod/UriModifierInterface$ModificationResult$FallbackToOriginalUrl;",
        "equals",
        "",
        "other",
        "",
        "hashCode",
        "toString",
        "",
        "urimod_release"
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
.field private final bestAllowlistedSize:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Ljava/lang/Integer;)V
    .registers 4

    .line 46
    const-string v0, "FallbackToOriginalUrl"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/facebook/fresco/urimod/UriModifierInterface$ModificationResult;-><init>(Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 45
    iput-object p1, p0, Lcom/facebook/fresco/urimod/UriModifierInterface$ModificationResult$FallbackToOriginalUrl;->bestAllowlistedSize:Ljava/lang/Integer;

    return-void
.end method

.method public static synthetic copy$default(Lcom/facebook/fresco/urimod/UriModifierInterface$ModificationResult$FallbackToOriginalUrl;Ljava/lang/Integer;ILjava/lang/Object;)Lcom/facebook/fresco/urimod/UriModifierInterface$ModificationResult$FallbackToOriginalUrl;
    .registers 4

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_6

    iget-object p1, p0, Lcom/facebook/fresco/urimod/UriModifierInterface$ModificationResult$FallbackToOriginalUrl;->bestAllowlistedSize:Ljava/lang/Integer;

    :cond_6
    invoke-virtual {p0, p1}, Lcom/facebook/fresco/urimod/UriModifierInterface$ModificationResult$FallbackToOriginalUrl;->copy(Ljava/lang/Integer;)Lcom/facebook/fresco/urimod/UriModifierInterface$ModificationResult$FallbackToOriginalUrl;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/Integer;
    .registers 2

    iget-object v0, p0, Lcom/facebook/fresco/urimod/UriModifierInterface$ModificationResult$FallbackToOriginalUrl;->bestAllowlistedSize:Ljava/lang/Integer;

    return-object v0
.end method

.method public final copy(Ljava/lang/Integer;)Lcom/facebook/fresco/urimod/UriModifierInterface$ModificationResult$FallbackToOriginalUrl;
    .registers 3

    new-instance v0, Lcom/facebook/fresco/urimod/UriModifierInterface$ModificationResult$FallbackToOriginalUrl;

    invoke-direct {v0, p1}, Lcom/facebook/fresco/urimod/UriModifierInterface$ModificationResult$FallbackToOriginalUrl;-><init>(Ljava/lang/Integer;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/facebook/fresco/urimod/UriModifierInterface$ModificationResult$FallbackToOriginalUrl;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/facebook/fresco/urimod/UriModifierInterface$ModificationResult$FallbackToOriginalUrl;

    iget-object v1, p0, Lcom/facebook/fresco/urimod/UriModifierInterface$ModificationResult$FallbackToOriginalUrl;->bestAllowlistedSize:Ljava/lang/Integer;

    iget-object p1, p1, Lcom/facebook/fresco/urimod/UriModifierInterface$ModificationResult$FallbackToOriginalUrl;->bestAllowlistedSize:Ljava/lang/Integer;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_17

    return v2

    :cond_17
    return v0
.end method

.method public getBestAllowlistedSize()Ljava/lang/Integer;
    .registers 2

    .line 45
    iget-object v0, p0, Lcom/facebook/fresco/urimod/UriModifierInterface$ModificationResult$FallbackToOriginalUrl;->bestAllowlistedSize:Ljava/lang/Integer;

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    iget-object v0, p0, Lcom/facebook/fresco/urimod/UriModifierInterface$ModificationResult$FallbackToOriginalUrl;->bestAllowlistedSize:Ljava/lang/Integer;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return v0

    :cond_6
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lcom/facebook/fresco/urimod/UriModifierInterface$ModificationResult$FallbackToOriginalUrl;->bestAllowlistedSize:Ljava/lang/Integer;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "FallbackToOriginalUrl(bestAllowlistedSize="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class com.facebook.fresco.urimod.UriModifierInterface.ModificationResult.Modified (com.facebook.fresco.urimod.UriModifierInterface$ModificationResult$Modified)
.class public abstract Lcom/facebook/fresco/urimod/UriModifierInterface$ModificationResult$Modified;
.super Lcom/facebook/fresco/urimod/UriModifierInterface$ModificationResult;
.source "UriModifierInterface.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/fresco/urimod/UriModifierInterface$ModificationResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Modified"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/fresco/urimod/UriModifierInterface$ModificationResult$Modified$ModifiedToAllowlistedSize;,
        Lcom/facebook/fresco/urimod/UriModifierInterface$ModificationResult$Modified$ModifiedToMaxDimens;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u00086\u0018\u00002\u00020\u0001:\u0002\n\u000bB\u0019\u0008\u0004\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0006\u0010\u0007R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\t\u0082\u0001\u0002\u000c\r\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/facebook/fresco/urimod/UriModifierInterface$ModificationResult$Modified;",
        "Lcom/facebook/fresco/urimod/UriModifierInterface$ModificationResult;",
        "newUri",
        "Landroid/net/Uri;",
        "comment",
        "",
        "<init>",
        "(Landroid/net/Uri;Ljava/lang/String;)V",
        "getNewUri",
        "()Landroid/net/Uri;",
        "ModifiedToAllowlistedSize",
        "ModifiedToMaxDimens",
        "Lcom/facebook/fresco/urimod/UriModifierInterface$ModificationResult$Modified$ModifiedToAllowlistedSize;",
        "Lcom/facebook/fresco/urimod/UriModifierInterface$ModificationResult$Modified$ModifiedToMaxDimens;",
        "urimod_release"
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
.field private final newUri:Landroid/net/Uri;


# direct methods
.method private constructor <init>(Landroid/net/Uri;Ljava/lang/String;)V
    .registers 4

    const/4 v0, 0x0

    .line 37
    invoke-direct {p0, p2, v0}, Lcom/facebook/fresco/urimod/UriModifierInterface$ModificationResult;-><init>(Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lcom/facebook/fresco/urimod/UriModifierInterface$ModificationResult$Modified;->newUri:Landroid/net/Uri;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/net/Uri;Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/facebook/fresco/urimod/UriModifierInterface$ModificationResult$Modified;-><init>(Landroid/net/Uri;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final getNewUri()Landroid/net/Uri;
    .registers 2

    .line 37
    iget-object v0, p0, Lcom/facebook/fresco/urimod/UriModifierInterface$ModificationResult$Modified;->newUri:Landroid/net/Uri;

    return-object v0
.end method

###### Class com.facebook.fresco.urimod.UriModifierInterface.ModificationResult.Modified.ModifiedToAllowlistedSize (com.facebook.fresco.urimod.UriModifierInterface$ModificationResult$Modified$ModifiedToAllowlistedSize)
.class public final Lcom/facebook/fresco/urimod/UriModifierInterface$ModificationResult$Modified$ModifiedToAllowlistedSize;
.super Lcom/facebook/fresco/urimod/UriModifierInterface$ModificationResult$Modified;
.source "UriModifierInterface.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/fresco/urimod/UriModifierInterface$ModificationResult$Modified;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ModifiedToAllowlistedSize"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0006\u0018\u00002\u00020\u0001B\u0019\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0004\u0008\u0006\u0010\u0007R\u0018\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0096\u0004\u00a2\u0006\n\n\u0002\u0010\n\u001a\u0004\u0008\u0008\u0010\t\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/facebook/fresco/urimod/UriModifierInterface$ModificationResult$Modified$ModifiedToAllowlistedSize;",
        "Lcom/facebook/fresco/urimod/UriModifierInterface$ModificationResult$Modified;",
        "newUrl",
        "Landroid/net/Uri;",
        "bestAllowlistedSize",
        "",
        "<init>",
        "(Landroid/net/Uri;Ljava/lang/Integer;)V",
        "getBestAllowlistedSize",
        "()Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        "urimod_release"
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
.field private final bestAllowlistedSize:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Landroid/net/Uri;Ljava/lang/Integer;)V
    .registers 5

    const-string v0, "newUrl"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    const-string v0, "ModifiedToAllowlistedSize"

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/facebook/fresco/urimod/UriModifierInterface$ModificationResult$Modified;-><init>(Landroid/net/Uri;Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 38
    iput-object p2, p0, Lcom/facebook/fresco/urimod/UriModifierInterface$ModificationResult$Modified$ModifiedToAllowlistedSize;->bestAllowlistedSize:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public getBestAllowlistedSize()Ljava/lang/Integer;
    .registers 2

    .line 38
    iget-object v0, p0, Lcom/facebook/fresco/urimod/UriModifierInterface$ModificationResult$Modified$ModifiedToAllowlistedSize;->bestAllowlistedSize:Ljava/lang/Integer;

    return-object v0
.end method

###### Class com.facebook.fresco.urimod.UriModifierInterface.ModificationResult.Modified.ModifiedToMaxDimens (com.facebook.fresco.urimod.UriModifierInterface$ModificationResult$Modified$ModifiedToMaxDimens)
.class public final Lcom/facebook/fresco/urimod/UriModifierInterface$ModificationResult$Modified$ModifiedToMaxDimens;
.super Lcom/facebook/fresco/urimod/UriModifierInterface$ModificationResult$Modified;
.source "UriModifierInterface.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/fresco/urimod/UriModifierInterface$ModificationResult$Modified;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ModifiedToMaxDimens"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0006\u0018\u00002\u00020\u0001B\u0019\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0004\u0008\u0006\u0010\u0007R\u0018\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0096\u0004\u00a2\u0006\n\n\u0002\u0010\n\u001a\u0004\u0008\u0008\u0010\t\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/facebook/fresco/urimod/UriModifierInterface$ModificationResult$Modified$ModifiedToMaxDimens;",
        "Lcom/facebook/fresco/urimod/UriModifierInterface$ModificationResult$Modified;",
        "newUrl",
        "Landroid/net/Uri;",
        "bestAllowlistedSize",
        "",
        "<init>",
        "(Landroid/net/Uri;Ljava/lang/Integer;)V",
        "getBestAllowlistedSize",
        "()Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        "urimod_release"
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
.field private final bestAllowlistedSize:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Landroid/net/Uri;Ljava/lang/Integer;)V
    .registers 5

    const-string v0, "newUrl"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    const-string v0, "ModifiedToMaxDimens"

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/facebook/fresco/urimod/UriModifierInterface$ModificationResult$Modified;-><init>(Landroid/net/Uri;Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 41
    iput-object p2, p0, Lcom/facebook/fresco/urimod/UriModifierInterface$ModificationResult$Modified$ModifiedToMaxDimens;->bestAllowlistedSize:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public getBestAllowlistedSize()Ljava/lang/Integer;
    .registers 2

    .line 41
    iget-object v0, p0, Lcom/facebook/fresco/urimod/UriModifierInterface$ModificationResult$Modified$ModifiedToMaxDimens;->bestAllowlistedSize:Ljava/lang/Integer;

    return-object v0
.end method

###### Class com.facebook.fresco.urimod.UriModifierInterface.ModificationResult.Unmodified (com.facebook.fresco.urimod.UriModifierInterface$ModificationResult$Unmodified)
.class public final Lcom/facebook/fresco/urimod/UriModifierInterface$ModificationResult$Unmodified;
.super Lcom/facebook/fresco/urimod/UriModifierInterface$ModificationResult;
.source "UriModifierInterface.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/fresco/urimod/UriModifierInterface$ModificationResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Unmodified"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u000c\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0003\u0008\u0086\u0008\u0018\u00002\u00020\u0001B\u0019\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\t\u0010\r\u001a\u00020\u0003H\u00c6\u0003J\u0010\u0010\u000e\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003\u00a2\u0006\u0002\u0010\u000bJ$\u0010\u000f\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u00c6\u0001\u00a2\u0006\u0002\u0010\u0010J\u0013\u0010\u0011\u001a\u00020\u00122\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0014H\u00d6\u0003J\t\u0010\u0015\u001a\u00020\u0005H\u00d6\u0001J\t\u0010\u0016\u001a\u00020\u0003H\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u0018\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0096\u0004\u00a2\u0006\n\n\u0002\u0010\u000c\u001a\u0004\u0008\n\u0010\u000b\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/facebook/fresco/urimod/UriModifierInterface$ModificationResult$Unmodified;",
        "Lcom/facebook/fresco/urimod/UriModifierInterface$ModificationResult;",
        "reason",
        "",
        "bestAllowlistedSize",
        "",
        "<init>",
        "(Ljava/lang/String;Ljava/lang/Integer;)V",
        "getReason",
        "()Ljava/lang/String;",
        "getBestAllowlistedSize",
        "()Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        "component1",
        "component2",
        "copy",
        "(Ljava/lang/String;Ljava/lang/Integer;)Lcom/facebook/fresco/urimod/UriModifierInterface$ModificationResult$Unmodified;",
        "equals",
        "",
        "other",
        "",
        "hashCode",
        "toString",
        "urimod_release"
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
.field private final bestAllowlistedSize:Ljava/lang/Integer;

.field private final reason:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Integer;)V
    .registers 5

    const-string v0, "reason"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unmodified(reason=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/facebook/fresco/urimod/UriModifierInterface$ModificationResult;-><init>(Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 48
    iput-object p1, p0, Lcom/facebook/fresco/urimod/UriModifierInterface$ModificationResult$Unmodified;->reason:Ljava/lang/String;

    iput-object p2, p0, Lcom/facebook/fresco/urimod/UriModifierInterface$ModificationResult$Unmodified;->bestAllowlistedSize:Ljava/lang/Integer;

    return-void
.end method

.method public static synthetic copy$default(Lcom/facebook/fresco/urimod/UriModifierInterface$ModificationResult$Unmodified;Ljava/lang/String;Ljava/lang/Integer;ILjava/lang/Object;)Lcom/facebook/fresco/urimod/UriModifierInterface$ModificationResult$Unmodified;
    .registers 5

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_6

    iget-object p1, p0, Lcom/facebook/fresco/urimod/UriModifierInterface$ModificationResult$Unmodified;->reason:Ljava/lang/String;

    :cond_6
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_c

    iget-object p2, p0, Lcom/facebook/fresco/urimod/UriModifierInterface$ModificationResult$Unmodified;->bestAllowlistedSize:Ljava/lang/Integer;

    :cond_c
    invoke-virtual {p0, p1, p2}, Lcom/facebook/fresco/urimod/UriModifierInterface$ModificationResult$Unmodified;->copy(Ljava/lang/String;Ljava/lang/Integer;)Lcom/facebook/fresco/urimod/UriModifierInterface$ModificationResult$Unmodified;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/facebook/fresco/urimod/UriModifierInterface$ModificationResult$Unmodified;->reason:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()Ljava/lang/Integer;
    .registers 2

    iget-object v0, p0, Lcom/facebook/fresco/urimod/UriModifierInterface$ModificationResult$Unmodified;->bestAllowlistedSize:Ljava/lang/Integer;

    return-object v0
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/Integer;)Lcom/facebook/fresco/urimod/UriModifierInterface$ModificationResult$Unmodified;
    .registers 4

    const-string v0, "reason"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/facebook/fresco/urimod/UriModifierInterface$ModificationResult$Unmodified;

    invoke-direct {v0, p1, p2}, Lcom/facebook/fresco/urimod/UriModifierInterface$ModificationResult$Unmodified;-><init>(Ljava/lang/String;Ljava/lang/Integer;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/facebook/fresco/urimod/UriModifierInterface$ModificationResult$Unmodified;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/facebook/fresco/urimod/UriModifierInterface$ModificationResult$Unmodified;

    iget-object v1, p0, Lcom/facebook/fresco/urimod/UriModifierInterface$ModificationResult$Unmodified;->reason:Ljava/lang/String;

    iget-object v3, p1, Lcom/facebook/fresco/urimod/UriModifierInterface$ModificationResult$Unmodified;->reason:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    return v2

    :cond_17
    iget-object v1, p0, Lcom/facebook/fresco/urimod/UriModifierInterface$ModificationResult$Unmodified;->bestAllowlistedSize:Ljava/lang/Integer;

    iget-object p1, p1, Lcom/facebook/fresco/urimod/UriModifierInterface$ModificationResult$Unmodified;->bestAllowlistedSize:Ljava/lang/Integer;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_22

    return v2

    :cond_22
    return v0
.end method

.method public getBestAllowlistedSize()Ljava/lang/Integer;
    .registers 2

    .line 48
    iget-object v0, p0, Lcom/facebook/fresco/urimod/UriModifierInterface$ModificationResult$Unmodified;->bestAllowlistedSize:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getReason()Ljava/lang/String;
    .registers 2

    .line 48
    iget-object v0, p0, Lcom/facebook/fresco/urimod/UriModifierInterface$ModificationResult$Unmodified;->reason:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .registers 3

    iget-object v0, p0, Lcom/facebook/fresco/urimod/UriModifierInterface$ModificationResult$Unmodified;->reason:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/facebook/fresco/urimod/UriModifierInterface$ModificationResult$Unmodified;->bestAllowlistedSize:Ljava/lang/Integer;

    if-nez v1, :cond_e

    const/4 v1, 0x0

    goto :goto_12

    :cond_e
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_12
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    iget-object v0, p0, Lcom/facebook/fresco/urimod/UriModifierInterface$ModificationResult$Unmodified;->reason:Ljava/lang/String;

    iget-object v1, p0, Lcom/facebook/fresco/urimod/UriModifierInterface$ModificationResult$Unmodified;->bestAllowlistedSize:Ljava/lang/Integer;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unmodified(reason="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", bestAllowlistedSize="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
