###### Class com.facebook.imageformat.ImageFormat (com.facebook.imageformat.ImageFormat)
.class public final Lcom/facebook/imageformat/ImageFormat;
.super Ljava/lang/Object;
.source "ImageFormat.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/imageformat/ImageFormat$Companion;,
        Lcom/facebook/imageformat/ImageFormat$FormatChecker;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u000b\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0003\u0008\u0086\u0008\u0018\u0000 \u00142\u00020\u0001:\u0002\u0013\u0014B\u0019\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u0008\u0010\n\u001a\u00020\u0003H\u0016J\t\u0010\u000b\u001a\u00020\u0003H\u00c6\u0003J\u000b\u0010\u000c\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u001f\u0010\r\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003H\u00c6\u0001J\u0013\u0010\u000e\u001a\u00020\u000f2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u0011\u001a\u00020\u0012H\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\u0008\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/facebook/imageformat/ImageFormat;",
        "",
        "name",
        "",
        "fileExtension",
        "<init>",
        "(Ljava/lang/String;Ljava/lang/String;)V",
        "getName",
        "()Ljava/lang/String;",
        "getFileExtension",
        "toString",
        "component1",
        "component2",
        "copy",
        "equals",
        "",
        "other",
        "hashCode",
        "",
        "FormatChecker",
        "Companion",
        "imagepipeline-base_release"
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
.field public static final Companion:Lcom/facebook/imageformat/ImageFormat$Companion;

.field public static final UNKNOWN:Lcom/facebook/imageformat/ImageFormat;


# instance fields
.field private final fileExtension:Ljava/lang/String;

.field private final name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Lcom/facebook/imageformat/ImageFormat$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/facebook/imageformat/ImageFormat$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/facebook/imageformat/ImageFormat;->Companion:Lcom/facebook/imageformat/ImageFormat$Companion;

    .line 46
    new-instance v0, Lcom/facebook/imageformat/ImageFormat;

    const-string v2, "UNKNOWN"

    invoke-direct {v0, v2, v1}, Lcom/facebook/imageformat/ImageFormat;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/facebook/imageformat/ImageFormat;->UNKNOWN:Lcom/facebook/imageformat/ImageFormat;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/facebook/imageformat/ImageFormat;->name:Ljava/lang/String;

    .line 20
    iput-object p2, p0, Lcom/facebook/imageformat/ImageFormat;->fileExtension:Ljava/lang/String;

    return-void
.end method

.method public static synthetic copy$default(Lcom/facebook/imageformat/ImageFormat;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lcom/facebook/imageformat/ImageFormat;
    .registers 5

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_6

    iget-object p1, p0, Lcom/facebook/imageformat/ImageFormat;->name:Ljava/lang/String;

    :cond_6
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_c

    iget-object p2, p0, Lcom/facebook/imageformat/ImageFormat;->fileExtension:Ljava/lang/String;

    :cond_c
    invoke-virtual {p0, p1, p2}, Lcom/facebook/imageformat/ImageFormat;->copy(Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/imageformat/ImageFormat;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/facebook/imageformat/ImageFormat;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/facebook/imageformat/ImageFormat;->fileExtension:Ljava/lang/String;

    return-object v0
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/imageformat/ImageFormat;
    .registers 4

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/facebook/imageformat/ImageFormat;

    invoke-direct {v0, p1, p2}, Lcom/facebook/imageformat/ImageFormat;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/facebook/imageformat/ImageFormat;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/facebook/imageformat/ImageFormat;

    iget-object v1, p0, Lcom/facebook/imageformat/ImageFormat;->name:Ljava/lang/String;

    iget-object v3, p1, Lcom/facebook/imageformat/ImageFormat;->name:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    return v2

    :cond_17
    iget-object v1, p0, Lcom/facebook/imageformat/ImageFormat;->fileExtension:Ljava/lang/String;

    iget-object p1, p1, Lcom/facebook/imageformat/ImageFormat;->fileExtension:Ljava/lang/String;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_22

    return v2

    :cond_22
    return v0
.end method

.method public final getFileExtension()Ljava/lang/String;
    .registers 2

    .line 20
    iget-object v0, p0, Lcom/facebook/imageformat/ImageFormat;->fileExtension:Ljava/lang/String;

    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .registers 2

    .line 14
    iget-object v0, p0, Lcom/facebook/imageformat/ImageFormat;->name:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .registers 3

    iget-object v0, p0, Lcom/facebook/imageformat/ImageFormat;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/facebook/imageformat/ImageFormat;->fileExtension:Ljava/lang/String;

    if-nez v1, :cond_e

    const/4 v1, 0x0

    goto :goto_12

    :cond_e
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_12
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 41
    iget-object v0, p0, Lcom/facebook/imageformat/ImageFormat;->name:Ljava/lang/String;

    return-object v0
.end method

###### Class com.facebook.imageformat.ImageFormat.Companion (com.facebook.imageformat.ImageFormat$Companion)
.class public final Lcom/facebook/imageformat/ImageFormat$Companion;
.super Ljava/lang/Object;
.source "ImageFormat.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/imageformat/ImageFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003R\u0010\u0010\u0004\u001a\u00020\u00058\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0006"
    }
    d2 = {
        "Lcom/facebook/imageformat/ImageFormat$Companion;",
        "",
        "<init>",
        "()V",
        "UNKNOWN",
        "Lcom/facebook/imageformat/ImageFormat;",
        "imagepipeline-base_release"
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

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    invoke-direct {p0}, Lcom/facebook/imageformat/ImageFormat$Companion;-><init>()V

    return-void
.end method

###### Class com.facebook.imageformat.ImageFormat.FormatChecker (com.facebook.imageformat.ImageFormat$FormatChecker)
.class public interface abstract Lcom/facebook/imageformat/ImageFormat$FormatChecker;
.super Ljava/lang/Object;
.source "ImageFormat.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/imageformat/ImageFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "FormatChecker"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0012\n\u0000\u0008f\u0018\u00002\u00020\u0001J\u0018\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\u0002\u001a\u00020\u0003H&R\u0012\u0010\u0002\u001a\u00020\u0003X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0004\u0010\u0005\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/facebook/imageformat/ImageFormat$FormatChecker;",
        "",
        "headerSize",
        "",
        "getHeaderSize",
        "()I",
        "determineFormat",
        "Lcom/facebook/imageformat/ImageFormat;",
        "headerBytes",
        "",
        "imagepipeline-base_release"
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
.method public abstract determineFormat([BI)Lcom/facebook/imageformat/ImageFormat;
.end method

.method public abstract getHeaderSize()I
.end method
