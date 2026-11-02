###### Class com.facebook.fresco.ui.common.ImageLoadStatus (com.facebook.fresco.ui.common.ImageLoadStatus)
.class public final enum Lcom/facebook/fresco/ui/common/ImageLoadStatus;
.super Ljava/lang/Enum;
.source "ImageLoadStatus.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/fresco/ui/common/ImageLoadStatus$Companion;,
        Lcom/facebook/fresco/ui/common/ImageLoadStatus$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/facebook/fresco/ui/common/ImageLoadStatus;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u000c\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0008\u0086\u0081\u0002\u0018\u0000 \u00112\u0008\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\u0011B\u0011\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0008\u0010\u000f\u001a\u00020\u0010H\u0016R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007j\u0002\u0008\u0008j\u0002\u0008\tj\u0002\u0008\nj\u0002\u0008\u000bj\u0002\u0008\u000cj\u0002\u0008\rj\u0002\u0008\u000e\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/facebook/fresco/ui/common/ImageLoadStatus;",
        "",
        "value",
        "",
        "<init>",
        "(Ljava/lang/String;II)V",
        "getValue",
        "()I",
        "UNKNOWN",
        "REQUESTED",
        "INTERMEDIATE_AVAILABLE",
        "SUCCESS",
        "ERROR",
        "EMPTY_EVENT",
        "RELEASED",
        "toString",
        "",
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

.field private static final synthetic $VALUES:[Lcom/facebook/fresco/ui/common/ImageLoadStatus;

.field public static final Companion:Lcom/facebook/fresco/ui/common/ImageLoadStatus$Companion;

.field public static final enum EMPTY_EVENT:Lcom/facebook/fresco/ui/common/ImageLoadStatus;

.field public static final enum ERROR:Lcom/facebook/fresco/ui/common/ImageLoadStatus;

.field public static final enum INTERMEDIATE_AVAILABLE:Lcom/facebook/fresco/ui/common/ImageLoadStatus;

.field public static final enum RELEASED:Lcom/facebook/fresco/ui/common/ImageLoadStatus;

.field public static final enum REQUESTED:Lcom/facebook/fresco/ui/common/ImageLoadStatus;

.field public static final enum SUCCESS:Lcom/facebook/fresco/ui/common/ImageLoadStatus;

.field public static final enum UNKNOWN:Lcom/facebook/fresco/ui/common/ImageLoadStatus;

.field private static final VALUES:[Lcom/facebook/fresco/ui/common/ImageLoadStatus;


# instance fields
.field private final value:I


# direct methods
.method private static final synthetic $values()[Lcom/facebook/fresco/ui/common/ImageLoadStatus;
    .registers 3

    const/4 v0, 0x7

    new-array v0, v0, [Lcom/facebook/fresco/ui/common/ImageLoadStatus;

    sget-object v1, Lcom/facebook/fresco/ui/common/ImageLoadStatus;->UNKNOWN:Lcom/facebook/fresco/ui/common/ImageLoadStatus;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/facebook/fresco/ui/common/ImageLoadStatus;->REQUESTED:Lcom/facebook/fresco/ui/common/ImageLoadStatus;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/facebook/fresco/ui/common/ImageLoadStatus;->INTERMEDIATE_AVAILABLE:Lcom/facebook/fresco/ui/common/ImageLoadStatus;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/facebook/fresco/ui/common/ImageLoadStatus;->SUCCESS:Lcom/facebook/fresco/ui/common/ImageLoadStatus;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/facebook/fresco/ui/common/ImageLoadStatus;->ERROR:Lcom/facebook/fresco/ui/common/ImageLoadStatus;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/facebook/fresco/ui/common/ImageLoadStatus;->EMPTY_EVENT:Lcom/facebook/fresco/ui/common/ImageLoadStatus;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/facebook/fresco/ui/common/ImageLoadStatus;->RELEASED:Lcom/facebook/fresco/ui/common/ImageLoadStatus;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 4

    .line 11
    new-instance v0, Lcom/facebook/fresco/ui/common/ImageLoadStatus;

    const/4 v1, -0x1

    const-string v2, "UNKNOWN"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/facebook/fresco/ui/common/ImageLoadStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/facebook/fresco/ui/common/ImageLoadStatus;->UNKNOWN:Lcom/facebook/fresco/ui/common/ImageLoadStatus;

    .line 12
    new-instance v0, Lcom/facebook/fresco/ui/common/ImageLoadStatus;

    const-string v1, "REQUESTED"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/facebook/fresco/ui/common/ImageLoadStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/facebook/fresco/ui/common/ImageLoadStatus;->REQUESTED:Lcom/facebook/fresco/ui/common/ImageLoadStatus;

    .line 13
    new-instance v0, Lcom/facebook/fresco/ui/common/ImageLoadStatus;

    const-string v1, "INTERMEDIATE_AVAILABLE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v2}, Lcom/facebook/fresco/ui/common/ImageLoadStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/facebook/fresco/ui/common/ImageLoadStatus;->INTERMEDIATE_AVAILABLE:Lcom/facebook/fresco/ui/common/ImageLoadStatus;

    .line 14
    new-instance v0, Lcom/facebook/fresco/ui/common/ImageLoadStatus;

    const-string v1, "SUCCESS"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, v2}, Lcom/facebook/fresco/ui/common/ImageLoadStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/facebook/fresco/ui/common/ImageLoadStatus;->SUCCESS:Lcom/facebook/fresco/ui/common/ImageLoadStatus;

    .line 15
    new-instance v0, Lcom/facebook/fresco/ui/common/ImageLoadStatus;

    const-string v1, "ERROR"

    const/4 v2, 0x4

    const/4 v3, 0x5

    invoke-direct {v0, v1, v2, v3}, Lcom/facebook/fresco/ui/common/ImageLoadStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/facebook/fresco/ui/common/ImageLoadStatus;->ERROR:Lcom/facebook/fresco/ui/common/ImageLoadStatus;

    .line 16
    new-instance v0, Lcom/facebook/fresco/ui/common/ImageLoadStatus;

    const-string v1, "EMPTY_EVENT"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v3, v2}, Lcom/facebook/fresco/ui/common/ImageLoadStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/facebook/fresco/ui/common/ImageLoadStatus;->EMPTY_EVENT:Lcom/facebook/fresco/ui/common/ImageLoadStatus;

    .line 17
    new-instance v0, Lcom/facebook/fresco/ui/common/ImageLoadStatus;

    const/4 v1, 0x6

    const/16 v2, 0x8

    const-string v3, "RELEASED"

    invoke-direct {v0, v3, v1, v2}, Lcom/facebook/fresco/ui/common/ImageLoadStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/facebook/fresco/ui/common/ImageLoadStatus;->RELEASED:Lcom/facebook/fresco/ui/common/ImageLoadStatus;

    invoke-static {}, Lcom/facebook/fresco/ui/common/ImageLoadStatus;->$values()[Lcom/facebook/fresco/ui/common/ImageLoadStatus;

    move-result-object v0

    sput-object v0, Lcom/facebook/fresco/ui/common/ImageLoadStatus;->$VALUES:[Lcom/facebook/fresco/ui/common/ImageLoadStatus;

    check-cast v0, [Ljava/lang/Enum;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/facebook/fresco/ui/common/ImageLoadStatus;->$ENTRIES:Lkotlin/enums/EnumEntries;

    new-instance v0, Lcom/facebook/fresco/ui/common/ImageLoadStatus$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/facebook/fresco/ui/common/ImageLoadStatus$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/facebook/fresco/ui/common/ImageLoadStatus;->Companion:Lcom/facebook/fresco/ui/common/ImageLoadStatus$Companion;

    .line 35
    invoke-static {}, Lcom/facebook/fresco/ui/common/ImageLoadStatus;->values()[Lcom/facebook/fresco/ui/common/ImageLoadStatus;

    move-result-object v0

    sput-object v0, Lcom/facebook/fresco/ui/common/ImageLoadStatus;->VALUES:[Lcom/facebook/fresco/ui/common/ImageLoadStatus;

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

    iput p3, p0, Lcom/facebook/fresco/ui/common/ImageLoadStatus;->value:I

    return-void
.end method

.method public static final synthetic access$getVALUES$cp()[Lcom/facebook/fresco/ui/common/ImageLoadStatus;
    .registers 1

    .line 10
    sget-object v0, Lcom/facebook/fresco/ui/common/ImageLoadStatus;->VALUES:[Lcom/facebook/fresco/ui/common/ImageLoadStatus;

    return-object v0
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lcom/facebook/fresco/ui/common/ImageLoadStatus;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/facebook/fresco/ui/common/ImageLoadStatus;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/fresco/ui/common/ImageLoadStatus;
    .registers 2

    const-class v0, Lcom/facebook/fresco/ui/common/ImageLoadStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .line 39
    check-cast p0, Lcom/facebook/fresco/ui/common/ImageLoadStatus;

    return-object p0
.end method

.method public static values()[Lcom/facebook/fresco/ui/common/ImageLoadStatus;
    .registers 1

    sget-object v0, Lcom/facebook/fresco/ui/common/ImageLoadStatus;->$VALUES:[Lcom/facebook/fresco/ui/common/ImageLoadStatus;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    .line 39
    check-cast v0, [Lcom/facebook/fresco/ui/common/ImageLoadStatus;

    return-object v0
.end method


# virtual methods
.method public final getValue()I
    .registers 2

    .line 10
    iget v0, p0, Lcom/facebook/fresco/ui/common/ImageLoadStatus;->value:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 24
    sget-object v0, Lcom/facebook/fresco/ui/common/ImageLoadStatus$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p0}, Lcom/facebook/fresco/ui/common/ImageLoadStatus;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_28

    const/4 v1, 0x2

    if-eq v0, v1, :cond_24

    const/4 v1, 0x3

    if-eq v0, v1, :cond_21

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1e

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1b

    .line 30
    const-string/jumbo v0, "unknown"

    return-object v0

    .line 29
    :cond_1b
    const-string v0, "released"

    return-object v0

    .line 28
    :cond_1e
    const-string v0, "error"

    return-object v0

    .line 27
    :cond_21
    const-string v0, "intermediate_available"

    return-object v0

    .line 26
    :cond_24
    const-string/jumbo v0, "success"

    return-object v0

    .line 25
    :cond_28
    const-string v0, "requested"

    return-object v0
.end method

###### Class com.facebook.fresco.ui.common.ImageLoadStatus.Companion (com.facebook.fresco.ui.common.ImageLoadStatus$Companion)
.class public final Lcom/facebook/fresco/ui/common/ImageLoadStatus$Companion;
.super Ljava/lang/Object;
.source "ImageLoadStatus.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/fresco/ui/common/ImageLoadStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nImageLoadStatus.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ImageLoadStatus.kt\ncom/facebook/fresco/ui/common/ImageLoadStatus$Companion\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,40:1\n1310#2,2:41\n*S KotlinDebug\n*F\n+ 1 ImageLoadStatus.kt\ncom/facebook/fresco/ui/common/ImageLoadStatus$Companion\n*L\n37#1:41,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0010\u0010\u0008\u001a\u0004\u0018\u00010\u00062\u0006\u0010\t\u001a\u00020\nR\u0016\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u0007\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/facebook/fresco/ui/common/ImageLoadStatus$Companion;",
        "",
        "<init>",
        "()V",
        "VALUES",
        "",
        "Lcom/facebook/fresco/ui/common/ImageLoadStatus;",
        "[Lcom/facebook/fresco/ui/common/ImageLoadStatus;",
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

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    invoke-direct {p0}, Lcom/facebook/fresco/ui/common/ImageLoadStatus$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final fromInt(I)Lcom/facebook/fresco/ui/common/ImageLoadStatus;
    .registers 7

    .line 37
    invoke-static {}, Lcom/facebook/fresco/ui/common/ImageLoadStatus;->access$getVALUES$cp()[Lcom/facebook/fresco/ui/common/ImageLoadStatus;

    move-result-object v0

    .line 41
    array-length v1, v0

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v1, :cond_14

    aget-object v3, v0, v2

    .line 37
    invoke-virtual {v3}, Lcom/facebook/fresco/ui/common/ImageLoadStatus;->getValue()I

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

###### Class com.facebook.fresco.ui.common.ImageLoadStatus.WhenMappings (com.facebook.fresco.ui.common.ImageLoadStatus$WhenMappings)
.class public final synthetic Lcom/facebook/fresco/ui/common/ImageLoadStatus$WhenMappings;
.super Ljava/lang/Object;
.source "ImageLoadStatus.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/fresco/ui/common/ImageLoadStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1001
    name = "WhenMappings"
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


# static fields
.field public static final synthetic $EnumSwitchMapping$0:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    invoke-static {}, Lcom/facebook/fresco/ui/common/ImageLoadStatus;->values()[Lcom/facebook/fresco/ui/common/ImageLoadStatus;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_7
    sget-object v1, Lcom/facebook/fresco/ui/common/ImageLoadStatus;->REQUESTED:Lcom/facebook/fresco/ui/common/ImageLoadStatus;

    invoke-virtual {v1}, Lcom/facebook/fresco/ui/common/ImageLoadStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_10} :catch_10

    :catch_10
    :try_start_10
    sget-object v1, Lcom/facebook/fresco/ui/common/ImageLoadStatus;->SUCCESS:Lcom/facebook/fresco/ui/common/ImageLoadStatus;

    invoke-virtual {v1}, Lcom/facebook/fresco/ui/common/ImageLoadStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_19
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_19} :catch_19

    :catch_19
    :try_start_19
    sget-object v1, Lcom/facebook/fresco/ui/common/ImageLoadStatus;->INTERMEDIATE_AVAILABLE:Lcom/facebook/fresco/ui/common/ImageLoadStatus;

    invoke-virtual {v1}, Lcom/facebook/fresco/ui/common/ImageLoadStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_22
    .catch Ljava/lang/NoSuchFieldError; {:try_start_19 .. :try_end_22} :catch_22

    :catch_22
    :try_start_22
    sget-object v1, Lcom/facebook/fresco/ui/common/ImageLoadStatus;->ERROR:Lcom/facebook/fresco/ui/common/ImageLoadStatus;

    invoke-virtual {v1}, Lcom/facebook/fresco/ui/common/ImageLoadStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_2b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_22 .. :try_end_2b} :catch_2b

    :catch_2b
    :try_start_2b
    sget-object v1, Lcom/facebook/fresco/ui/common/ImageLoadStatus;->RELEASED:Lcom/facebook/fresco/ui/common/ImageLoadStatus;

    invoke-virtual {v1}, Lcom/facebook/fresco/ui/common/ImageLoadStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_34
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2b .. :try_end_34} :catch_34

    :catch_34
    sput-object v0, Lcom/facebook/fresco/ui/common/ImageLoadStatus$WhenMappings;->$EnumSwitchMapping$0:[I

    return-void
.end method
