###### Class com.facebook.fresco.animation.bitmap.preparation.ondemandanimation.FrameResult (com.facebook.fresco.animation.bitmap.preparation.ondemandanimation.FrameResult)
.class public final Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/FrameResult;
.super Ljava/lang/Object;
.source "FrameLoader.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/FrameResult$FrameType;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0018\u00002\u00020\u0001:\u0001\rB\u001f\u0012\u000e\u0010\u0002\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0007\u0010\u0008R\u0019\u0010\u0002\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u0011\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/FrameResult;",
        "",
        "bitmapRef",
        "Lcom/facebook/common/references/CloseableReference;",
        "Landroid/graphics/Bitmap;",
        "type",
        "Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/FrameResult$FrameType;",
        "<init>",
        "(Lcom/facebook/common/references/CloseableReference;Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/FrameResult$FrameType;)V",
        "getBitmapRef",
        "()Lcom/facebook/common/references/CloseableReference;",
        "getType",
        "()Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/FrameResult$FrameType;",
        "FrameType",
        "animated-drawable_release"
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
.field private final bitmapRef:Lcom/facebook/common/references/CloseableReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/common/references/CloseableReference<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private final type:Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/FrameResult$FrameType;


# direct methods
.method public constructor <init>(Lcom/facebook/common/references/CloseableReference;Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/FrameResult$FrameType;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/common/references/CloseableReference<",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/FrameResult$FrameType;",
            ")V"
        }
    .end annotation

    const-string/jumbo v0, "type"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/FrameResult;->bitmapRef:Lcom/facebook/common/references/CloseableReference;

    iput-object p2, p0, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/FrameResult;->type:Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/FrameResult$FrameType;

    return-void
.end method


# virtual methods
.method public final getBitmapRef()Lcom/facebook/common/references/CloseableReference;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/common/references/CloseableReference<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .line 48
    iget-object v0, p0, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/FrameResult;->bitmapRef:Lcom/facebook/common/references/CloseableReference;

    return-object v0
.end method

.method public final getType()Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/FrameResult$FrameType;
    .registers 2

    .line 48
    iget-object v0, p0, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/FrameResult;->type:Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/FrameResult$FrameType;

    return-object v0
.end method

###### Class com.facebook.fresco.animation.bitmap.preparation.ondemandanimation.FrameResult.FrameType (com.facebook.fresco.animation.bitmap.preparation.ondemandanimation.FrameResult$FrameType)
.class public final enum Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/FrameResult$FrameType;
.super Ljava/lang/Enum;
.source "FrameLoader.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/FrameResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FrameType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/FrameResult$FrameType;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0006\u0008\u0086\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003j\u0002\u0008\u0004j\u0002\u0008\u0005j\u0002\u0008\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/FrameResult$FrameType;",
        "",
        "<init>",
        "(Ljava/lang/String;I)V",
        "SUCCESS",
        "NEAREST",
        "MISSING",
        "animated-drawable_release"
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
.field private static final synthetic $ENTRIES:Lkotlin/enums/EnumEntries;

.field private static final synthetic $VALUES:[Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/FrameResult$FrameType;

.field public static final enum MISSING:Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/FrameResult$FrameType;

.field public static final enum NEAREST:Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/FrameResult$FrameType;

.field public static final enum SUCCESS:Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/FrameResult$FrameType;


# direct methods
.method private static final synthetic $values()[Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/FrameResult$FrameType;
    .registers 3

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/FrameResult$FrameType;

    sget-object v1, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/FrameResult$FrameType;->SUCCESS:Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/FrameResult$FrameType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/FrameResult$FrameType;->NEAREST:Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/FrameResult$FrameType;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/FrameResult$FrameType;->MISSING:Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/FrameResult$FrameType;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 50
    new-instance v0, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/FrameResult$FrameType;

    const-string v1, "SUCCESS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/FrameResult$FrameType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/FrameResult$FrameType;->SUCCESS:Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/FrameResult$FrameType;

    .line 51
    new-instance v0, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/FrameResult$FrameType;

    const-string v1, "NEAREST"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/FrameResult$FrameType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/FrameResult$FrameType;->NEAREST:Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/FrameResult$FrameType;

    .line 52
    new-instance v0, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/FrameResult$FrameType;

    const-string v1, "MISSING"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/FrameResult$FrameType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/FrameResult$FrameType;->MISSING:Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/FrameResult$FrameType;

    invoke-static {}, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/FrameResult$FrameType;->$values()[Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/FrameResult$FrameType;

    move-result-object v0

    sput-object v0, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/FrameResult$FrameType;->$VALUES:[Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/FrameResult$FrameType;

    check-cast v0, [Ljava/lang/Enum;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/FrameResult$FrameType;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 49
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/FrameResult$FrameType;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/FrameResult$FrameType;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/FrameResult$FrameType;
    .registers 2

    const-class v0, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/FrameResult$FrameType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .line 53
    check-cast p0, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/FrameResult$FrameType;

    return-object p0
.end method

.method public static values()[Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/FrameResult$FrameType;
    .registers 1

    sget-object v0, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/FrameResult$FrameType;->$VALUES:[Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/FrameResult$FrameType;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    .line 53
    check-cast v0, [Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/FrameResult$FrameType;

    return-object v0
.end method
