###### Class com.facebook.fresco.ui.common.VisibilityState (com.facebook.fresco.ui.common.VisibilityState)
.class public final enum Lcom/facebook/fresco/ui/common/VisibilityState;
.super Ljava/lang/Enum;
.source "VisibilityState.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/fresco/ui/common/VisibilityState$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/facebook/fresco/ui/common/VisibilityState;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\t\u0008\u0086\u0081\u0002\u0018\u0000 \u000b2\u0008\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\u000bB\u0011\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007j\u0002\u0008\u0008j\u0002\u0008\tj\u0002\u0008\n\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/facebook/fresco/ui/common/VisibilityState;",
        "",
        "value",
        "",
        "<init>",
        "(Ljava/lang/String;II)V",
        "getValue",
        "()I",
        "UNKNOWN",
        "VISIBLE",
        "INVISIBLE",
        "Companion",
        "ui-common_release"
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

.field private static final synthetic $VALUES:[Lcom/facebook/fresco/ui/common/VisibilityState;

.field public static final Companion:Lcom/facebook/fresco/ui/common/VisibilityState$Companion;

.field public static final enum INVISIBLE:Lcom/facebook/fresco/ui/common/VisibilityState;

.field public static final enum UNKNOWN:Lcom/facebook/fresco/ui/common/VisibilityState;

.field private static final VALUES:[Lcom/facebook/fresco/ui/common/VisibilityState;

.field public static final enum VISIBLE:Lcom/facebook/fresco/ui/common/VisibilityState;


# instance fields
.field private final value:I


# direct methods
.method private static final synthetic $values()[Lcom/facebook/fresco/ui/common/VisibilityState;
    .registers 3

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/facebook/fresco/ui/common/VisibilityState;

    sget-object v1, Lcom/facebook/fresco/ui/common/VisibilityState;->UNKNOWN:Lcom/facebook/fresco/ui/common/VisibilityState;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/facebook/fresco/ui/common/VisibilityState;->VISIBLE:Lcom/facebook/fresco/ui/common/VisibilityState;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/facebook/fresco/ui/common/VisibilityState;->INVISIBLE:Lcom/facebook/fresco/ui/common/VisibilityState;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 4

    .line 11
    new-instance v0, Lcom/facebook/fresco/ui/common/VisibilityState;

    const/4 v1, 0x0

    const/4 v2, -0x1

    const-string v3, "UNKNOWN"

    invoke-direct {v0, v3, v1, v2}, Lcom/facebook/fresco/ui/common/VisibilityState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/facebook/fresco/ui/common/VisibilityState;->UNKNOWN:Lcom/facebook/fresco/ui/common/VisibilityState;

    .line 12
    new-instance v0, Lcom/facebook/fresco/ui/common/VisibilityState;

    const-string v1, "VISIBLE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Lcom/facebook/fresco/ui/common/VisibilityState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/facebook/fresco/ui/common/VisibilityState;->VISIBLE:Lcom/facebook/fresco/ui/common/VisibilityState;

    .line 13
    new-instance v0, Lcom/facebook/fresco/ui/common/VisibilityState;

    const-string v1, "INVISIBLE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v2}, Lcom/facebook/fresco/ui/common/VisibilityState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/facebook/fresco/ui/common/VisibilityState;->INVISIBLE:Lcom/facebook/fresco/ui/common/VisibilityState;

    invoke-static {}, Lcom/facebook/fresco/ui/common/VisibilityState;->$values()[Lcom/facebook/fresco/ui/common/VisibilityState;

    move-result-object v0

    sput-object v0, Lcom/facebook/fresco/ui/common/VisibilityState;->$VALUES:[Lcom/facebook/fresco/ui/common/VisibilityState;

    check-cast v0, [Ljava/lang/Enum;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/facebook/fresco/ui/common/VisibilityState;->$ENTRIES:Lkotlin/enums/EnumEntries;

    new-instance v0, Lcom/facebook/fresco/ui/common/VisibilityState$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/facebook/fresco/ui/common/VisibilityState$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/facebook/fresco/ui/common/VisibilityState;->Companion:Lcom/facebook/fresco/ui/common/VisibilityState$Companion;

    .line 16
    invoke-static {}, Lcom/facebook/fresco/ui/common/VisibilityState;->values()[Lcom/facebook/fresco/ui/common/VisibilityState;

    move-result-object v0

    sput-object v0, Lcom/facebook/fresco/ui/common/VisibilityState;->VALUES:[Lcom/facebook/fresco/ui/common/VisibilityState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 10
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/facebook/fresco/ui/common/VisibilityState;->value:I

    return-void
.end method

.method public static final synthetic access$getVALUES$cp()[Lcom/facebook/fresco/ui/common/VisibilityState;
    .registers 1

    .line 10
    sget-object v0, Lcom/facebook/fresco/ui/common/VisibilityState;->VALUES:[Lcom/facebook/fresco/ui/common/VisibilityState;

    return-object v0
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lcom/facebook/fresco/ui/common/VisibilityState;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/facebook/fresco/ui/common/VisibilityState;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/fresco/ui/common/VisibilityState;
    .registers 2

    const-class v0, Lcom/facebook/fresco/ui/common/VisibilityState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .line 20
    check-cast p0, Lcom/facebook/fresco/ui/common/VisibilityState;

    return-object p0
.end method

.method public static values()[Lcom/facebook/fresco/ui/common/VisibilityState;
    .registers 1

    sget-object v0, Lcom/facebook/fresco/ui/common/VisibilityState;->$VALUES:[Lcom/facebook/fresco/ui/common/VisibilityState;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    .line 20
    check-cast v0, [Lcom/facebook/fresco/ui/common/VisibilityState;

    return-object v0
.end method


# virtual methods
.method public final getValue()I
    .registers 2

    .line 10
    iget v0, p0, Lcom/facebook/fresco/ui/common/VisibilityState;->value:I

    return v0
.end method

###### Class com.facebook.fresco.ui.common.VisibilityState.Companion (com.facebook.fresco.ui.common.VisibilityState$Companion)
.class public final Lcom/facebook/fresco/ui/common/VisibilityState$Companion;
.super Ljava/lang/Object;
.source "VisibilityState.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/fresco/ui/common/VisibilityState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nVisibilityState.kt\nKotlin\n*S Kotlin\n*F\n+ 1 VisibilityState.kt\ncom/facebook/fresco/ui/common/VisibilityState$Companion\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,21:1\n1310#2,2:22\n*S KotlinDebug\n*F\n+ 1 VisibilityState.kt\ncom/facebook/fresco/ui/common/VisibilityState$Companion\n*L\n18#1:22,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0010\u0010\u0008\u001a\u0004\u0018\u00010\u00062\u0006\u0010\t\u001a\u00020\nR\u0016\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u0007\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/facebook/fresco/ui/common/VisibilityState$Companion;",
        "",
        "<init>",
        "()V",
        "VALUES",
        "",
        "Lcom/facebook/fresco/ui/common/VisibilityState;",
        "[Lcom/facebook/fresco/ui/common/VisibilityState;",
        "fromInt",
        "value",
        "",
        "ui-common_release"
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

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    invoke-direct {p0}, Lcom/facebook/fresco/ui/common/VisibilityState$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final fromInt(I)Lcom/facebook/fresco/ui/common/VisibilityState;
    .registers 7

    .line 18
    invoke-static {}, Lcom/facebook/fresco/ui/common/VisibilityState;->access$getVALUES$cp()[Lcom/facebook/fresco/ui/common/VisibilityState;

    move-result-object v0

    .line 22
    array-length v1, v0

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v1, :cond_14

    aget-object v3, v0, v2

    .line 18
    invoke-virtual {v3}, Lcom/facebook/fresco/ui/common/VisibilityState;->getValue()I

    move-result v4

    if-ne v4, p1, :cond_11

    return-object v3

    :cond_11
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_14
    const/4 p1, 0x0

    return-object p1
.end method
