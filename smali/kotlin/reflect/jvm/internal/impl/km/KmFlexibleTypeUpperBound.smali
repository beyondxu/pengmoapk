###### Class kotlin.reflect.jvm.internal.impl.km.KmFlexibleTypeUpperBound (kotlin.reflect.jvm.internal.impl.km.KmFlexibleTypeUpperBound)
.class public final Lkotlin/reflect/jvm/internal/impl/km/KmFlexibleTypeUpperBound;
.super Ljava/lang/Object;
.source "Nodes.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/reflect/jvm/internal/impl/km/KmFlexibleTypeUpperBound$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lkotlin/reflect/jvm/internal/impl/km/KmFlexibleTypeUpperBound$Companion;


# instance fields
.field private type:Lkotlin/reflect/jvm/internal/impl/km/KmType;

.field private typeFlexibilityId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/km/KmFlexibleTypeUpperBound$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/impl/km/KmFlexibleTypeUpperBound$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/km/KmFlexibleTypeUpperBound;->Companion:Lkotlin/reflect/jvm/internal/impl/km/KmFlexibleTypeUpperBound$Companion;

    return-void
.end method

.method public constructor <init>(Lkotlin/reflect/jvm/internal/impl/km/KmType;Ljava/lang/String;)V
    .registers 4

    const-string v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 732
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/km/KmFlexibleTypeUpperBound;->type:Lkotlin/reflect/jvm/internal/impl/km/KmType;

    iput-object p2, p0, Lkotlin/reflect/jvm/internal/impl/km/KmFlexibleTypeUpperBound;->typeFlexibilityId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lkotlin/reflect/jvm/internal/impl/km/KmFlexibleTypeUpperBound;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lkotlin/reflect/jvm/internal/impl/km/KmFlexibleTypeUpperBound;

    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/km/KmFlexibleTypeUpperBound;->type:Lkotlin/reflect/jvm/internal/impl/km/KmType;

    iget-object v3, p1, Lkotlin/reflect/jvm/internal/impl/km/KmFlexibleTypeUpperBound;->type:Lkotlin/reflect/jvm/internal/impl/km/KmType;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    return v2

    :cond_17
    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/km/KmFlexibleTypeUpperBound;->typeFlexibilityId:Ljava/lang/String;

    iget-object p1, p1, Lkotlin/reflect/jvm/internal/impl/km/KmFlexibleTypeUpperBound;->typeFlexibilityId:Ljava/lang/String;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_22

    return v2

    :cond_22
    return v0
.end method

.method public final getType()Lkotlin/reflect/jvm/internal/impl/km/KmType;
    .registers 2

    .line 732
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/km/KmFlexibleTypeUpperBound;->type:Lkotlin/reflect/jvm/internal/impl/km/KmType;

    return-object v0
.end method

.method public final getTypeFlexibilityId()Ljava/lang/String;
    .registers 2

    .line 732
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/km/KmFlexibleTypeUpperBound;->typeFlexibilityId:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .registers 3

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/km/KmFlexibleTypeUpperBound;->type:Lkotlin/reflect/jvm/internal/impl/km/KmType;

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/km/KmType;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/km/KmFlexibleTypeUpperBound;->typeFlexibilityId:Ljava/lang/String;

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
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "KmFlexibleTypeUpperBound(type="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/km/KmFlexibleTypeUpperBound;->type:Lkotlin/reflect/jvm/internal/impl/km/KmType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", typeFlexibilityId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/km/KmFlexibleTypeUpperBound;->typeFlexibilityId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class kotlin.reflect.jvm.internal.impl.km.KmFlexibleTypeUpperBound.Companion (kotlin.reflect.jvm.internal.impl.km.KmFlexibleTypeUpperBound$Companion)
.class public final Lkotlin/reflect/jvm/internal/impl/km/KmFlexibleTypeUpperBound$Companion;
.super Ljava/lang/Object;
.source "Nodes.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/km/KmFlexibleTypeUpperBound;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 736
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/km/KmFlexibleTypeUpperBound$Companion;-><init>()V

    return-void
.end method
