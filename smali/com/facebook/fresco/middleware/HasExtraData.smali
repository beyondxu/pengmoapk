###### Class com.facebook.fresco.middleware.HasExtraData (com.facebook.fresco.middleware.HasExtraData)
.class public interface abstract Lcom/facebook/fresco/middleware/HasExtraData;
.super Ljava/lang/Object;
.source "HasExtraData.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/fresco/middleware/HasExtraData$Companion;,
        Lcom/facebook/fresco/middleware/HasExtraData$DefaultImpls;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0010$\n\u0002\u0008\u0006\u0008f\u0018\u0000 \u00142\u00020\u0001:\u0001\u0014J%\u0010\u0002\u001a\u00020\u0003\"\u0004\u0008\u0000\u0010\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0008\u0010\u0007\u001a\u0004\u0018\u0001H\u0004H&\u00a2\u0006\u0002\u0010\u0008J\u001d\u0010\t\u001a\u0004\u0018\u0001H\u0004\"\u0004\u0008\u0000\u0010\u00042\u0006\u0010\u0005\u001a\u00020\u0006H&\u00a2\u0006\u0002\u0010\nJ)\u0010\t\u001a\u0004\u0018\u0001H\u0004\"\u0004\u0008\u0000\u0010\u00042\u0006\u0010\u0005\u001a\u00020\u00062\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u0001H\u0004H&\u00a2\u0006\u0002\u0010\u000cJ\u001d\u0010\r\u001a\u0012\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00010\u000fj\u0002`\u000eH&\u00a2\u0006\u0002\u0010\u0010J%\u0010\u0011\u001a\u00020\u00032\u0016\u0010\u0012\u001a\u0012\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00010\u000fj\u0002`\u000eH&\u00a2\u0006\u0002\u0010\u0013\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/facebook/fresco/middleware/HasExtraData;",
        "",
        "putExtra",
        "",
        "E",
        "key",
        "",
        "value",
        "(Ljava/lang/String;Ljava/lang/Object;)V",
        "getExtra",
        "(Ljava/lang/String;)Ljava/lang/Object;",
        "valueIfNotFound",
        "(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;",
        "getExtras",
        "Lcom/facebook/fresco/middleware/Extras;",
        "",
        "()Ljava/util/Map;",
        "putExtras",
        "extras",
        "(Ljava/util/Map;)V",
        "Companion",
        "middleware_release"
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
.field public static final Companion:Lcom/facebook/fresco/middleware/HasExtraData$Companion;

.field public static final KEY_BITMAP_CONFIG:Ljava/lang/String; = "bitmap_config"

.field public static final KEY_COLOR_SPACE:Ljava/lang/String; = "image_color_space"

.field public static final KEY_ENCODED_HEIGHT:Ljava/lang/String; = "encoded_height"

.field public static final KEY_ENCODED_SIZE:Ljava/lang/String; = "encoded_size"

.field public static final KEY_ENCODED_WIDTH:Ljava/lang/String; = "encoded_width"

.field public static final KEY_ID:Ljava/lang/String; = "id"

.field public static final KEY_IMAGE_FORMAT:Ljava/lang/String; = "image_format"

.field public static final KEY_IMAGE_SOURCE_EXTRAS:Ljava/lang/String; = "image_source_extras"

.field public static final KEY_IMAGE_SOURCE_TYPE:Ljava/lang/String; = "image_source_type"

.field public static final KEY_IS_ROUNDED:Ljava/lang/String; = "is_rounded"

.field public static final KEY_LAST_SCAN_NUMBER:Ljava/lang/String; = "last_scan_num"

.field public static final KEY_MODIFIED_URL:Ljava/lang/String; = "modified_url"

.field public static final KEY_MULTIPLEX_BITMAP_COUNT:Ljava/lang/String; = "multiplex_bmp_cnt"

.field public static final KEY_MULTIPLEX_ENCODED_COUNT:Ljava/lang/String; = "multiplex_enc_cnt"

.field public static final KEY_NON_FATAL_DECODE_ERROR:Ljava/lang/String; = "non_fatal_decode_error"

.field public static final KEY_ORIGIN:Ljava/lang/String; = "origin"

.field public static final KEY_ORIGINAL_URL:Ljava/lang/String; = "original_url"

.field public static final KEY_ORIGIN_SUBCATEGORY:Ljava/lang/String; = "origin_sub"

.field public static final KEY_URI_SOURCE:Ljava/lang/String; = "uri_source"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    sget-object v0, Lcom/facebook/fresco/middleware/HasExtraData$Companion;->$$INSTANCE:Lcom/facebook/fresco/middleware/HasExtraData$Companion;

    sput-object v0, Lcom/facebook/fresco/middleware/HasExtraData;->Companion:Lcom/facebook/fresco/middleware/HasExtraData$Companion;

    return-void
.end method


# virtual methods
.method public abstract getExtra(Ljava/lang/String;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")TE;"
        }
    .end annotation
.end method

.method public abstract getExtra(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TE;)TE;"
        }
    .end annotation
.end method

.method public abstract getExtras()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end method

.method public abstract putExtra(Ljava/lang/String;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TE;)V"
        }
    .end annotation
.end method

.method public abstract putExtras(Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation
.end method

###### Class com.facebook.fresco.middleware.HasExtraData.Companion (com.facebook.fresco.middleware.HasExtraData$Companion)
.class public final Lcom/facebook/fresco/middleware/HasExtraData$Companion;
.super Ljava/lang/Object;
.source "HasExtraData.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/fresco/middleware/HasExtraData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0013\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003R\u000e\u0010\u0004\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0015\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0016\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0017\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0018"
    }
    d2 = {
        "Lcom/facebook/fresco/middleware/HasExtraData$Companion;",
        "",
        "<init>",
        "()V",
        "KEY_ID",
        "",
        "KEY_ENCODED_SIZE",
        "KEY_ENCODED_WIDTH",
        "KEY_ENCODED_HEIGHT",
        "KEY_URI_SOURCE",
        "KEY_IMAGE_FORMAT",
        "KEY_BITMAP_CONFIG",
        "KEY_IS_ROUNDED",
        "KEY_NON_FATAL_DECODE_ERROR",
        "KEY_ORIGINAL_URL",
        "KEY_MODIFIED_URL",
        "KEY_IMAGE_SOURCE_TYPE",
        "KEY_ORIGIN",
        "KEY_ORIGIN_SUBCATEGORY",
        "KEY_MULTIPLEX_BITMAP_COUNT",
        "KEY_MULTIPLEX_ENCODED_COUNT",
        "KEY_LAST_SCAN_NUMBER",
        "KEY_IMAGE_SOURCE_EXTRAS",
        "KEY_COLOR_SPACE",
        "middleware_release"
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
.field static final synthetic $$INSTANCE:Lcom/facebook/fresco/middleware/HasExtraData$Companion;

.field public static final KEY_BITMAP_CONFIG:Ljava/lang/String; = "bitmap_config"

.field public static final KEY_COLOR_SPACE:Ljava/lang/String; = "image_color_space"

.field public static final KEY_ENCODED_HEIGHT:Ljava/lang/String; = "encoded_height"

.field public static final KEY_ENCODED_SIZE:Ljava/lang/String; = "encoded_size"

.field public static final KEY_ENCODED_WIDTH:Ljava/lang/String; = "encoded_width"

.field public static final KEY_ID:Ljava/lang/String; = "id"

.field public static final KEY_IMAGE_FORMAT:Ljava/lang/String; = "image_format"

.field public static final KEY_IMAGE_SOURCE_EXTRAS:Ljava/lang/String; = "image_source_extras"

.field public static final KEY_IMAGE_SOURCE_TYPE:Ljava/lang/String; = "image_source_type"

.field public static final KEY_IS_ROUNDED:Ljava/lang/String; = "is_rounded"

.field public static final KEY_LAST_SCAN_NUMBER:Ljava/lang/String; = "last_scan_num"

.field public static final KEY_MODIFIED_URL:Ljava/lang/String; = "modified_url"

.field public static final KEY_MULTIPLEX_BITMAP_COUNT:Ljava/lang/String; = "multiplex_bmp_cnt"

.field public static final KEY_MULTIPLEX_ENCODED_COUNT:Ljava/lang/String; = "multiplex_enc_cnt"

.field public static final KEY_NON_FATAL_DECODE_ERROR:Ljava/lang/String; = "non_fatal_decode_error"

.field public static final KEY_ORIGIN:Ljava/lang/String; = "origin"

.field public static final KEY_ORIGINAL_URL:Ljava/lang/String; = "original_url"

.field public static final KEY_ORIGIN_SUBCATEGORY:Ljava/lang/String; = "origin_sub"

.field public static final KEY_URI_SOURCE:Ljava/lang/String; = "uri_source"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/facebook/fresco/middleware/HasExtraData$Companion;

    invoke-direct {v0}, Lcom/facebook/fresco/middleware/HasExtraData$Companion;-><init>()V

    sput-object v0, Lcom/facebook/fresco/middleware/HasExtraData$Companion;->$$INSTANCE:Lcom/facebook/fresco/middleware/HasExtraData$Companion;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

###### Class com.facebook.fresco.middleware.HasExtraData.DefaultImpls (com.facebook.fresco.middleware.HasExtraData$DefaultImpls)
.class public final Lcom/facebook/fresco/middleware/HasExtraData$DefaultImpls;
.super Ljava/lang/Object;
.source "HasExtraData.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/fresco/middleware/HasExtraData;
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
.method public static synthetic getExtra$default(Lcom/facebook/fresco/middleware/HasExtraData;Ljava/lang/String;Ljava/lang/Object;ILjava/lang/Object;)Ljava/lang/Object;
    .registers 5

    if-nez p4, :cond_c

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_7

    const/4 p2, 0x0

    .line 18
    :cond_7
    invoke-interface {p0, p1, p2}, Lcom/facebook/fresco/middleware/HasExtraData;->getExtra(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_c
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: getExtra"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
