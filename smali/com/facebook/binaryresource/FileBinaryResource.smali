###### Class com.facebook.binaryresource.FileBinaryResource (com.facebook.binaryresource.FileBinaryResource)
.class public final Lcom/facebook/binaryresource/FileBinaryResource;
.super Ljava/lang/Object;
.source "FileBinaryResource.kt"

# interfaces
.implements Lcom/facebook/binaryresource/BinaryResource;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/binaryresource/FileBinaryResource$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0012\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0018\u0000 \u00142\u00020\u0001:\u0001\u0014B\u0011\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0008\u0010\u0008\u001a\u00020\tH\u0016J\u0008\u0010\n\u001a\u00020\u000bH\u0016J\u0008\u0010\u000c\u001a\u00020\rH\u0016J\u0013\u0010\u000e\u001a\u00020\u000f2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0011H\u0096\u0002J\u0008\u0010\u0012\u001a\u00020\u0013H\u0016R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/facebook/binaryresource/FileBinaryResource;",
        "Lcom/facebook/binaryresource/BinaryResource;",
        "file",
        "Ljava/io/File;",
        "<init>",
        "(Ljava/io/File;)V",
        "getFile",
        "()Ljava/io/File;",
        "openStream",
        "Ljava/io/InputStream;",
        "size",
        "",
        "read",
        "",
        "equals",
        "",
        "other",
        "",
        "hashCode",
        "",
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
.field public static final Companion:Lcom/facebook/binaryresource/FileBinaryResource$Companion;


# instance fields
.field private final file:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/facebook/binaryresource/FileBinaryResource$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/facebook/binaryresource/FileBinaryResource$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/facebook/binaryresource/FileBinaryResource;->Companion:Lcom/facebook/binaryresource/FileBinaryResource$Companion;

    return-void
.end method

.method private constructor <init>(Ljava/io/File;)V
    .registers 2

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/binaryresource/FileBinaryResource;->file:Ljava/io/File;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/io/File;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/facebook/binaryresource/FileBinaryResource;-><init>(Ljava/io/File;)V

    return-void
.end method

.method public static final create(Ljava/io/File;)Lcom/facebook/binaryresource/FileBinaryResource;
    .registers 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/facebook/binaryresource/FileBinaryResource;->Companion:Lcom/facebook/binaryresource/FileBinaryResource$Companion;

    invoke-virtual {v0, p0}, Lcom/facebook/binaryresource/FileBinaryResource$Companion;->create(Ljava/io/File;)Lcom/facebook/binaryresource/FileBinaryResource;

    move-result-object p0

    return-object p0
.end method

.method public static final createOrNull(Ljava/io/File;)Lcom/facebook/binaryresource/FileBinaryResource;
    .registers 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/facebook/binaryresource/FileBinaryResource;->Companion:Lcom/facebook/binaryresource/FileBinaryResource$Companion;

    invoke-virtual {v0, p0}, Lcom/facebook/binaryresource/FileBinaryResource$Companion;->createOrNull(Ljava/io/File;)Lcom/facebook/binaryresource/FileBinaryResource;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 3

    if-eqz p1, :cond_12

    .line 29
    instance-of v0, p1, Lcom/facebook/binaryresource/FileBinaryResource;

    if-nez v0, :cond_7

    goto :goto_12

    .line 32
    :cond_7
    iget-object v0, p0, Lcom/facebook/binaryresource/FileBinaryResource;->file:Ljava/io/File;

    check-cast p1, Lcom/facebook/binaryresource/FileBinaryResource;

    iget-object p1, p1, Lcom/facebook/binaryresource/FileBinaryResource;->file:Ljava/io/File;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_12
    :goto_12
    const/4 p1, 0x0

    return p1
.end method

.method public final getFile()Ljava/io/File;
    .registers 2

    .line 20
    iget-object v0, p0, Lcom/facebook/binaryresource/FileBinaryResource;->file:Ljava/io/File;

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    .line 35
    iget-object v0, p0, Lcom/facebook/binaryresource/FileBinaryResource;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->hashCode()I

    move-result v0

    return v0
.end method

.method public openStream()Ljava/io/InputStream;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 22
    new-instance v0, Ljava/io/FileInputStream;

    iget-object v1, p0, Lcom/facebook/binaryresource/FileBinaryResource;->file:Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    check-cast v0, Ljava/io/InputStream;

    return-object v0
.end method

.method public read()[B
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 26
    iget-object v0, p0, Lcom/facebook/binaryresource/FileBinaryResource;->file:Ljava/io/File;

    invoke-static {v0}, Lcom/facebook/common/internal/Files;->toByteArray(Ljava/io/File;)[B

    move-result-object v0

    const-string/jumbo v1, "toByteArray(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public size()J
    .registers 3

    .line 24
    iget-object v0, p0, Lcom/facebook/binaryresource/FileBinaryResource;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    return-wide v0
.end method

###### Class com.facebook.binaryresource.FileBinaryResource.Companion (com.facebook.binaryresource.FileBinaryResource$Companion)
.class public final Lcom/facebook/binaryresource/FileBinaryResource$Companion;
.super Ljava/lang/Object;
.source "FileBinaryResource.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/binaryresource/FileBinaryResource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFileBinaryResource.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FileBinaryResource.kt\ncom/facebook/binaryresource/FileBinaryResource$Companion\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,53:1\n1#2:54\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007H\u0007J\u0010\u0010\u0008\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0007\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/facebook/binaryresource/FileBinaryResource$Companion;",
        "",
        "<init>",
        "()V",
        "createOrNull",
        "Lcom/facebook/binaryresource/FileBinaryResource;",
        "file",
        "Ljava/io/File;",
        "create",
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

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    invoke-direct {p0}, Lcom/facebook/binaryresource/FileBinaryResource$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final create(Ljava/io/File;)Lcom/facebook/binaryresource/FileBinaryResource;
    .registers 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "file"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    new-instance v0, Lcom/facebook/binaryresource/FileBinaryResource;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/facebook/binaryresource/FileBinaryResource;-><init>(Ljava/io/File;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

.method public final createOrNull(Ljava/io/File;)Lcom/facebook/binaryresource/FileBinaryResource;
    .registers 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_9

    .line 44
    new-instance v1, Lcom/facebook/binaryresource/FileBinaryResource;

    invoke-direct {v1, p1, v0}, Lcom/facebook/binaryresource/FileBinaryResource;-><init>(Ljava/io/File;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v1

    :cond_9
    return-object v0
.end method
