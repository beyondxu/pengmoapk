###### Class io.dcloud.feature.uniapp.dom.AbsCSSShorthand (io.dcloud.feature.uniapp.dom.AbsCSSShorthand)
.class public abstract Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand;
.super Ljava/lang/Object;
.source "r8-map-id-b4716a25f9920722ba6f2d7f7c6f40e43a654927e8ebe1c489894a7bc6a88ab4"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$EDGE;,
        Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$CORNER;,
        Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$TYPE;,
        Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$CSSProperty;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Enum<",
        "+",
        "Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$CSSProperty;",
        ">;>",
        "Ljava/lang/Object;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# instance fields
.field private values:[F


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, v0}, Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand;-><init>(Z)V

    return-void
.end method

.method constructor <init>(Z)V
    .registers 4

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    invoke-static {}, Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$EDGE;->values()[Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$EDGE;

    move-result-object v0

    array-length v0, v0

    invoke-static {}, Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$CORNER;->values()[Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$CORNER;

    move-result-object v1

    array-length v1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    new-array v0, v0, [F

    iput-object v0, p0, Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand;->values:[F

    if-eqz p1, :cond_1c

    const/high16 p1, 0x7fc00000    # Float.NaN

    .line 7
    invoke-static {v0, p1}, Ljava/util/Arrays;->fill([FF)V

    :cond_1c
    return-void
.end method

.method public constructor <init>([F)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p0, p1}, Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand;->replace([F)V

    return-void
.end method

.method private getInternal(Ljava/lang/Enum;)F
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Enum<",
            "+",
            "Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$CSSProperty;",
            ">;)F"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$EDGE;->ALL:Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$EDGE;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2a

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$CORNER;->ALL:Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$CORNER;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    goto :goto_2a

    :cond_21
    iget-object v0, p0, Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand;->values:[F

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    return p1

    :cond_2a
    :goto_2a
    const/4 p1, 0x0

    return p1
.end method

.method private setInternal(Ljava/lang/Enum;F)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Enum<",
            "+",
            "Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$CSSProperty;",
            ">;F)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$EDGE;->ALL:Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$EDGE;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2a

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$CORNER;->ALL:Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$CORNER;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    goto :goto_2a

    .line 4
    :cond_21
    iget-object v0, p0, Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand;->values:[F

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aput p2, v0, p1

    return-void

    .line 5
    :cond_2a
    :goto_2a
    iget-object p1, p0, Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand;->values:[F

    invoke-static {p1, p2}, Ljava/util/Arrays;->fill([FF)V

    return-void
.end method


# virtual methods
.method public clone()Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand;
    .registers 2

    .line 2
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand;->clone()Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand;

    move-result-object v0

    return-object v0
.end method

.method public get(Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$CORNER;)F
    .registers 2

    .line 2
    invoke-direct {p0, p1}, Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand;->getInternal(Ljava/lang/Enum;)F

    move-result p1

    return p1
.end method

.method public get(Ljava/lang/Enum;)F
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Enum<",
            "+",
            "Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$CSSProperty;",
            ">;)F"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand;->getInternal(Ljava/lang/Enum;)F

    move-result p1

    return p1
.end method

.method public final replace([F)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand;->values:[F

    return-void
.end method

.method public set(Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$CORNER;F)V
    .registers 3

    .line 2
    invoke-direct {p0, p1, p2}, Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand;->setInternal(Ljava/lang/Enum;F)V

    return-void
.end method

.method public set(Ljava/lang/Enum;F)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Enum<",
            "+",
            "Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$CSSProperty;",
            ">;F)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand;->setInternal(Ljava/lang/Enum;F)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand;->values:[F

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_f

    const-string v0, ""

    return-object v0

    :cond_f
    iget-object v0, p0, Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand;->values:[F

    invoke-static {v0}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class io.dcloud.feature.uniapp.dom.AbsCSSShorthand.CORNER (io.dcloud.feature.uniapp.dom.AbsCSSShorthand$CORNER)
.class public final enum Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$CORNER;
.super Ljava/lang/Enum;
.source "r8-map-id-b4716a25f9920722ba6f2d7f7c6f40e43a654927e8ebe1c489894a7bc6a88ab4"

# interfaces
.implements Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$CSSProperty;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CORNER"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$CORNER;",
        ">;",
        "Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$CSSProperty;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$CORNER;

.field public static final enum ALL:Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$CORNER;

.field public static final enum BORDER_BOTTOM_LEFT:Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$CORNER;

.field public static final enum BORDER_BOTTOM_RIGHT:Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$CORNER;

.field public static final enum BORDER_TOP_LEFT:Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$CORNER;

.field public static final enum BORDER_TOP_RIGHT:Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$CORNER;


# direct methods
.method private static synthetic $values()[Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$CORNER;
    .registers 3

    const/4 v0, 0x5

    .line 1
    new-array v0, v0, [Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$CORNER;

    sget-object v1, Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$CORNER;->BORDER_TOP_LEFT:Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$CORNER;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$CORNER;->BORDER_TOP_RIGHT:Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$CORNER;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$CORNER;->BORDER_BOTTOM_RIGHT:Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$CORNER;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$CORNER;->BORDER_BOTTOM_LEFT:Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$CORNER;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$CORNER;->ALL:Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$CORNER;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 1
    new-instance v0, Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$CORNER;

    const-string v1, "BORDER_TOP_LEFT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$CORNER;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$CORNER;->BORDER_TOP_LEFT:Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$CORNER;

    new-instance v0, Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$CORNER;

    const-string v1, "BORDER_TOP_RIGHT"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$CORNER;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$CORNER;->BORDER_TOP_RIGHT:Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$CORNER;

    .line 2
    new-instance v0, Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$CORNER;

    const-string v1, "BORDER_BOTTOM_RIGHT"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$CORNER;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$CORNER;->BORDER_BOTTOM_RIGHT:Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$CORNER;

    new-instance v0, Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$CORNER;

    const-string v1, "BORDER_BOTTOM_LEFT"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$CORNER;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$CORNER;->BORDER_BOTTOM_LEFT:Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$CORNER;

    new-instance v0, Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$CORNER;

    const-string v1, "ALL"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$CORNER;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$CORNER;->ALL:Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$CORNER;

    .line 3
    invoke-static {}, Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$CORNER;->$values()[Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$CORNER;

    move-result-object v0

    sput-object v0, Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$CORNER;->$VALUES:[Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$CORNER;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$CORNER;
    .registers 2

    .line 1
    const-class v0, Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$CORNER;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$CORNER;

    return-object p0
.end method

.method public static values()[Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$CORNER;
    .registers 1

    .line 1
    sget-object v0, Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$CORNER;->$VALUES:[Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$CORNER;

    invoke-virtual {v0}, [Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$CORNER;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$CORNER;

    return-object v0
.end method

###### Class io.dcloud.feature.uniapp.dom.AbsCSSShorthand.CSSProperty (io.dcloud.feature.uniapp.dom.AbsCSSShorthand$CSSProperty)
.class public interface abstract Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$CSSProperty;
.super Ljava/lang/Object;
.source "r8-map-id-b4716a25f9920722ba6f2d7f7c6f40e43a654927e8ebe1c489894a7bc6a88ab4"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60c
    name = "CSSProperty"
.end annotation

###### Class io.dcloud.feature.uniapp.dom.AbsCSSShorthand.EDGE (io.dcloud.feature.uniapp.dom.AbsCSSShorthand$EDGE)
.class public final enum Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$EDGE;
.super Ljava/lang/Enum;
.source "r8-map-id-b4716a25f9920722ba6f2d7f7c6f40e43a654927e8ebe1c489894a7bc6a88ab4"

# interfaces
.implements Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$CSSProperty;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "EDGE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$EDGE;",
        ">;",
        "Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$CSSProperty;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$EDGE;

.field public static final enum ALL:Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$EDGE;

.field public static final enum BOTTOM:Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$EDGE;

.field public static final enum LEFT:Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$EDGE;

.field public static final enum RIGHT:Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$EDGE;

.field public static final enum TOP:Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$EDGE;


# direct methods
.method private static synthetic $values()[Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$EDGE;
    .registers 3

    const/4 v0, 0x5

    .line 1
    new-array v0, v0, [Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$EDGE;

    sget-object v1, Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$EDGE;->TOP:Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$EDGE;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$EDGE;->BOTTOM:Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$EDGE;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$EDGE;->LEFT:Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$EDGE;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$EDGE;->RIGHT:Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$EDGE;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$EDGE;->ALL:Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$EDGE;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 1
    new-instance v0, Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$EDGE;

    const-string v1, "TOP"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$EDGE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$EDGE;->TOP:Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$EDGE;

    new-instance v0, Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$EDGE;

    const-string v1, "BOTTOM"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$EDGE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$EDGE;->BOTTOM:Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$EDGE;

    new-instance v0, Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$EDGE;

    const-string v1, "LEFT"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$EDGE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$EDGE;->LEFT:Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$EDGE;

    new-instance v0, Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$EDGE;

    const-string v1, "RIGHT"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$EDGE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$EDGE;->RIGHT:Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$EDGE;

    new-instance v0, Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$EDGE;

    const-string v1, "ALL"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$EDGE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$EDGE;->ALL:Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$EDGE;

    .line 2
    invoke-static {}, Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$EDGE;->$values()[Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$EDGE;

    move-result-object v0

    sput-object v0, Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$EDGE;->$VALUES:[Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$EDGE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$EDGE;
    .registers 2

    .line 1
    const-class v0, Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$EDGE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$EDGE;

    return-object p0
.end method

.method public static values()[Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$EDGE;
    .registers 1

    .line 1
    sget-object v0, Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$EDGE;->$VALUES:[Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$EDGE;

    invoke-virtual {v0}, [Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$EDGE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$EDGE;

    return-object v0
.end method

###### Class io.dcloud.feature.uniapp.dom.AbsCSSShorthand.TYPE (io.dcloud.feature.uniapp.dom.AbsCSSShorthand$TYPE)
.class public final enum Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$TYPE;
.super Ljava/lang/Enum;
.source "r8-map-id-b4716a25f9920722ba6f2d7f7c6f40e43a654927e8ebe1c489894a7bc6a88ab4"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TYPE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$TYPE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$TYPE;

.field public static final enum BORDER:Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$TYPE;

.field public static final enum MARGIN:Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$TYPE;

.field public static final enum PADDING:Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$TYPE;


# direct methods
.method private static synthetic $values()[Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$TYPE;
    .registers 3

    const/4 v0, 0x3

    .line 1
    new-array v0, v0, [Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$TYPE;

    sget-object v1, Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$TYPE;->MARGIN:Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$TYPE;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$TYPE;->PADDING:Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$TYPE;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$TYPE;->BORDER:Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$TYPE;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 1
    new-instance v0, Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$TYPE;

    const-string v1, "MARGIN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$TYPE;->MARGIN:Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$TYPE;

    new-instance v0, Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$TYPE;

    const-string v1, "PADDING"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$TYPE;->PADDING:Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$TYPE;

    new-instance v0, Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$TYPE;

    const-string v1, "BORDER"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$TYPE;->BORDER:Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$TYPE;

    .line 2
    invoke-static {}, Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$TYPE;->$values()[Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$TYPE;

    move-result-object v0

    sput-object v0, Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$TYPE;->$VALUES:[Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$TYPE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$TYPE;
    .registers 2

    .line 1
    const-class v0, Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$TYPE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$TYPE;

    return-object p0
.end method

.method public static values()[Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$TYPE;
    .registers 1

    .line 1
    sget-object v0, Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$TYPE;->$VALUES:[Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$TYPE;

    invoke-virtual {v0}, [Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$TYPE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$TYPE;

    return-object v0
.end method
