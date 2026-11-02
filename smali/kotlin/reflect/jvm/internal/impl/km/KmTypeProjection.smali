###### Class kotlin.reflect.jvm.internal.impl.km.KmTypeProjection (kotlin.reflect.jvm.internal.impl.km.KmTypeProjection)
.class public final Lkotlin/reflect/jvm/internal/impl/km/KmTypeProjection;
.super Ljava/lang/Object;
.source "Nodes.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/reflect/jvm/internal/impl/km/KmTypeProjection$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lkotlin/reflect/jvm/internal/impl/km/KmTypeProjection$Companion;

.field public static final STAR:Lkotlin/reflect/jvm/internal/impl/km/KmTypeProjection;


# instance fields
.field private type:Lkotlin/reflect/jvm/internal/impl/km/KmType;

.field private variance:Lkotlin/reflect/jvm/internal/impl/km/KmVariance;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/km/KmTypeProjection$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/impl/km/KmTypeProjection$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/km/KmTypeProjection;->Companion:Lkotlin/reflect/jvm/internal/impl/km/KmTypeProjection$Companion;

    .line 721
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/km/KmTypeProjection;

    invoke-direct {v0, v1, v1}, Lkotlin/reflect/jvm/internal/impl/km/KmTypeProjection;-><init>(Lkotlin/reflect/jvm/internal/impl/km/KmVariance;Lkotlin/reflect/jvm/internal/impl/km/KmType;)V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/km/KmTypeProjection;->STAR:Lkotlin/reflect/jvm/internal/impl/km/KmTypeProjection;

    return-void
.end method

.method public constructor <init>(Lkotlin/reflect/jvm/internal/impl/km/KmVariance;Lkotlin/reflect/jvm/internal/impl/km/KmType;)V
    .registers 3

    .line 711
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/km/KmTypeProjection;->variance:Lkotlin/reflect/jvm/internal/impl/km/KmVariance;

    iput-object p2, p0, Lkotlin/reflect/jvm/internal/impl/km/KmTypeProjection;->type:Lkotlin/reflect/jvm/internal/impl/km/KmType;

    return-void
.end method


# virtual methods
.method public final component1()Lkotlin/reflect/jvm/internal/impl/km/KmVariance;
    .registers 2

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/km/KmTypeProjection;->variance:Lkotlin/reflect/jvm/internal/impl/km/KmVariance;

    return-object v0
.end method

.method public final component2()Lkotlin/reflect/jvm/internal/impl/km/KmType;
    .registers 2

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/km/KmTypeProjection;->type:Lkotlin/reflect/jvm/internal/impl/km/KmType;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lkotlin/reflect/jvm/internal/impl/km/KmTypeProjection;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lkotlin/reflect/jvm/internal/impl/km/KmTypeProjection;

    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/km/KmTypeProjection;->variance:Lkotlin/reflect/jvm/internal/impl/km/KmVariance;

    iget-object v3, p1, Lkotlin/reflect/jvm/internal/impl/km/KmTypeProjection;->variance:Lkotlin/reflect/jvm/internal/impl/km/KmVariance;

    if-eq v1, v3, :cond_13

    return v2

    :cond_13
    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/km/KmTypeProjection;->type:Lkotlin/reflect/jvm/internal/impl/km/KmType;

    iget-object p1, p1, Lkotlin/reflect/jvm/internal/impl/km/KmTypeProjection;->type:Lkotlin/reflect/jvm/internal/impl/km/KmType;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1e

    return v2

    :cond_1e
    return v0
.end method

.method public hashCode()I
    .registers 4

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/km/KmTypeProjection;->variance:Lkotlin/reflect/jvm/internal/impl/km/KmVariance;

    const/4 v1, 0x0

    if-nez v0, :cond_7

    const/4 v0, 0x0

    goto :goto_b

    :cond_7
    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/km/KmVariance;->hashCode()I

    move-result v0

    :goto_b
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lkotlin/reflect/jvm/internal/impl/km/KmTypeProjection;->type:Lkotlin/reflect/jvm/internal/impl/km/KmType;

    if-nez v2, :cond_12

    goto :goto_16

    :cond_12
    invoke-virtual {v2}, Lkotlin/reflect/jvm/internal/impl/km/KmType;->hashCode()I

    move-result v1

    :goto_16
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "KmTypeProjection(variance="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/km/KmTypeProjection;->variance:Lkotlin/reflect/jvm/internal/impl/km/KmVariance;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/km/KmTypeProjection;->type:Lkotlin/reflect/jvm/internal/impl/km/KmType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class kotlin.reflect.jvm.internal.impl.km.KmTypeProjection.Companion (kotlin.reflect.jvm.internal.impl.km.KmTypeProjection$Companion)
.class public final Lkotlin/reflect/jvm/internal/impl/km/KmTypeProjection$Companion;
.super Ljava/lang/Object;
.source "Nodes.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/km/KmTypeProjection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 715
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/km/KmTypeProjection$Companion;-><init>()V

    return-void
.end method
