###### Class com.facebook.fresco.vito.options.RoundingOptions (com.facebook.fresco.vito.options.RoundingOptions)
.class public final Lcom/facebook/fresco/vito/options/RoundingOptions;
.super Ljava/lang/Object;
.source "RoundingOptions.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/fresco/vito/options/RoundingOptions$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\u0014\n\u0002\u0008\r\n\u0002\u0010\u0008\n\u0002\u0008\u0007\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0008\u0086\u0008\u0018\u0000 \u001e2\u00020\u0001:\u0001\u001eB1\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\u0006\u0010\u0008\u001a\u00020\u0003\u0012\u0006\u0010\t\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u0006\u0010\u0011\u001a\u00020\u0003J\u0013\u0010\u0012\u001a\u00020\u00032\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0001H\u0096\u0002J\u0008\u0010\u0014\u001a\u00020\u0015H\u0016J\t\u0010\u0016\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0017\u001a\u00020\u0005H\u00c6\u0003J\u000b\u0010\u0018\u001a\u0004\u0018\u00010\u0007H\u00c6\u0003J\t\u0010\u0019\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u001a\u001a\u00020\u0003H\u00c6\u0003J=\u0010\u001b\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00072\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u00032\u0008\u0008\u0002\u0010\t\u001a\u00020\u0003H\u00c6\u0001J\t\u0010\u001c\u001a\u00020\u001dH\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0002\u0010\u000cR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000eR\u0013\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010R\u0011\u0010\u0008\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\u000cR\u0011\u0010\t\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\u000c\u00a8\u0006\u001f"
    }
    d2 = {
        "Lcom/facebook/fresco/vito/options/RoundingOptions;",
        "",
        "isCircular",
        "",
        "cornerRadius",
        "",
        "cornerRadii",
        "",
        "isAntiAliased",
        "isForceRoundAtDecode",
        "<init>",
        "(ZF[FZZ)V",
        "()Z",
        "getCornerRadius",
        "()F",
        "getCornerRadii",
        "()[F",
        "hasRoundedCorners",
        "equals",
        "other",
        "hashCode",
        "",
        "component1",
        "component2",
        "component3",
        "component4",
        "component5",
        "copy",
        "toString",
        "",
        "Companion",
        "options_release"
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
.field private static final AS_CIRCLE:Lcom/facebook/fresco/vito/options/RoundingOptions;

.field private static final AS_CIRCLE_ANTI_ALIASING:Lcom/facebook/fresco/vito/options/RoundingOptions;

.field public static final CORNER_RADIUS_UNSET:F

.field public static final Companion:Lcom/facebook/fresco/vito/options/RoundingOptions$Companion;


# instance fields
.field private final cornerRadii:[F

.field private final cornerRadius:F

.field private final isAntiAliased:Z

.field private final isCircular:Z

.field private final isForceRoundAtDecode:Z


# direct methods
.method static constructor <clinit>()V
    .registers 9

    new-instance v0, Lcom/facebook/fresco/vito/options/RoundingOptions$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/facebook/fresco/vito/options/RoundingOptions$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/facebook/fresco/vito/options/RoundingOptions;->Companion:Lcom/facebook/fresco/vito/options/RoundingOptions$Companion;

    .line 52
    new-instance v2, Lcom/facebook/fresco/vito/options/RoundingOptions;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v2 .. v7}, Lcom/facebook/fresco/vito/options/RoundingOptions;-><init>(ZF[FZZ)V

    sput-object v2, Lcom/facebook/fresco/vito/options/RoundingOptions;->AS_CIRCLE:Lcom/facebook/fresco/vito/options/RoundingOptions;

    .line 54
    new-instance v3, Lcom/facebook/fresco/vito/options/RoundingOptions;

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v3 .. v8}, Lcom/facebook/fresco/vito/options/RoundingOptions;-><init>(ZF[FZZ)V

    sput-object v3, Lcom/facebook/fresco/vito/options/RoundingOptions;->AS_CIRCLE_ANTI_ALIASING:Lcom/facebook/fresco/vito/options/RoundingOptions;

    return-void
.end method

.method public constructor <init>(ZF[FZZ)V
    .registers 6

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-boolean p1, p0, Lcom/facebook/fresco/vito/options/RoundingOptions;->isCircular:Z

    .line 15
    iput p2, p0, Lcom/facebook/fresco/vito/options/RoundingOptions;->cornerRadius:F

    .line 16
    iput-object p3, p0, Lcom/facebook/fresco/vito/options/RoundingOptions;->cornerRadii:[F

    .line 17
    iput-boolean p4, p0, Lcom/facebook/fresco/vito/options/RoundingOptions;->isAntiAliased:Z

    .line 18
    iput-boolean p5, p0, Lcom/facebook/fresco/vito/options/RoundingOptions;->isForceRoundAtDecode:Z

    return-void
.end method

.method public static final synthetic access$getAS_CIRCLE$cp()Lcom/facebook/fresco/vito/options/RoundingOptions;
    .registers 1

    .line 12
    sget-object v0, Lcom/facebook/fresco/vito/options/RoundingOptions;->AS_CIRCLE:Lcom/facebook/fresco/vito/options/RoundingOptions;

    return-object v0
.end method

.method public static final synthetic access$getAS_CIRCLE_ANTI_ALIASING$cp()Lcom/facebook/fresco/vito/options/RoundingOptions;
    .registers 1

    .line 12
    sget-object v0, Lcom/facebook/fresco/vito/options/RoundingOptions;->AS_CIRCLE_ANTI_ALIASING:Lcom/facebook/fresco/vito/options/RoundingOptions;

    return-object v0
.end method

.method public static final asCircle()Lcom/facebook/fresco/vito/options/RoundingOptions;
    .registers 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/facebook/fresco/vito/options/RoundingOptions;->Companion:Lcom/facebook/fresco/vito/options/RoundingOptions$Companion;

    invoke-virtual {v0}, Lcom/facebook/fresco/vito/options/RoundingOptions$Companion;->asCircle()Lcom/facebook/fresco/vito/options/RoundingOptions;

    move-result-object v0

    return-object v0
.end method

.method public static final asCircle(Z)Lcom/facebook/fresco/vito/options/RoundingOptions;
    .registers 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/facebook/fresco/vito/options/RoundingOptions;->Companion:Lcom/facebook/fresco/vito/options/RoundingOptions$Companion;

    invoke-virtual {v0, p0}, Lcom/facebook/fresco/vito/options/RoundingOptions$Companion;->asCircle(Z)Lcom/facebook/fresco/vito/options/RoundingOptions;

    move-result-object p0

    return-object p0
.end method

.method public static final asCircle(ZZ)Lcom/facebook/fresco/vito/options/RoundingOptions;
    .registers 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/facebook/fresco/vito/options/RoundingOptions;->Companion:Lcom/facebook/fresco/vito/options/RoundingOptions$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/facebook/fresco/vito/options/RoundingOptions$Companion;->asCircle(ZZ)Lcom/facebook/fresco/vito/options/RoundingOptions;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic copy$default(Lcom/facebook/fresco/vito/options/RoundingOptions;ZF[FZZILjava/lang/Object;)Lcom/facebook/fresco/vito/options/RoundingOptions;
    .registers 8

    and-int/lit8 p7, p6, 0x1

    if-eqz p7, :cond_6

    iget-boolean p1, p0, Lcom/facebook/fresco/vito/options/RoundingOptions;->isCircular:Z

    :cond_6
    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_c

    iget p2, p0, Lcom/facebook/fresco/vito/options/RoundingOptions;->cornerRadius:F

    :cond_c
    and-int/lit8 p7, p6, 0x4

    if-eqz p7, :cond_12

    iget-object p3, p0, Lcom/facebook/fresco/vito/options/RoundingOptions;->cornerRadii:[F

    :cond_12
    and-int/lit8 p7, p6, 0x8

    if-eqz p7, :cond_18

    iget-boolean p4, p0, Lcom/facebook/fresco/vito/options/RoundingOptions;->isAntiAliased:Z

    :cond_18
    and-int/lit8 p6, p6, 0x10

    if-eqz p6, :cond_1e

    iget-boolean p5, p0, Lcom/facebook/fresco/vito/options/RoundingOptions;->isForceRoundAtDecode:Z

    :cond_1e
    move p6, p4

    move p7, p5

    move p4, p2

    move-object p5, p3

    move-object p2, p0

    move p3, p1

    invoke-virtual/range {p2 .. p7}, Lcom/facebook/fresco/vito/options/RoundingOptions;->copy(ZF[FZZ)Lcom/facebook/fresco/vito/options/RoundingOptions;

    move-result-object p0

    return-object p0
.end method

.method public static final forCornerRadii(FFFF)Lcom/facebook/fresco/vito/options/RoundingOptions;
    .registers 5
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/facebook/fresco/vito/options/RoundingOptions;->Companion:Lcom/facebook/fresco/vito/options/RoundingOptions$Companion;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/facebook/fresco/vito/options/RoundingOptions$Companion;->forCornerRadii(FFFF)Lcom/facebook/fresco/vito/options/RoundingOptions;

    move-result-object p0

    return-object p0
.end method

.method public static final forCornerRadii([F)Lcom/facebook/fresco/vito/options/RoundingOptions;
    .registers 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/facebook/fresco/vito/options/RoundingOptions;->Companion:Lcom/facebook/fresco/vito/options/RoundingOptions$Companion;

    invoke-virtual {v0, p0}, Lcom/facebook/fresco/vito/options/RoundingOptions$Companion;->forCornerRadii([F)Lcom/facebook/fresco/vito/options/RoundingOptions;

    move-result-object p0

    return-object p0
.end method

.method public static final forCornerRadii([FZ)Lcom/facebook/fresco/vito/options/RoundingOptions;
    .registers 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/facebook/fresco/vito/options/RoundingOptions;->Companion:Lcom/facebook/fresco/vito/options/RoundingOptions$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/facebook/fresco/vito/options/RoundingOptions$Companion;->forCornerRadii([FZ)Lcom/facebook/fresco/vito/options/RoundingOptions;

    move-result-object p0

    return-object p0
.end method

.method public static final forCornerRadiusPx(F)Lcom/facebook/fresco/vito/options/RoundingOptions;
    .registers 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/facebook/fresco/vito/options/RoundingOptions;->Companion:Lcom/facebook/fresco/vito/options/RoundingOptions$Companion;

    invoke-virtual {v0, p0}, Lcom/facebook/fresco/vito/options/RoundingOptions$Companion;->forCornerRadiusPx(F)Lcom/facebook/fresco/vito/options/RoundingOptions;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Z
    .registers 2

    iget-boolean v0, p0, Lcom/facebook/fresco/vito/options/RoundingOptions;->isCircular:Z

    return v0
.end method

.method public final component2()F
    .registers 2

    iget v0, p0, Lcom/facebook/fresco/vito/options/RoundingOptions;->cornerRadius:F

    return v0
.end method

.method public final component3()[F
    .registers 2

    iget-object v0, p0, Lcom/facebook/fresco/vito/options/RoundingOptions;->cornerRadii:[F

    return-object v0
.end method

.method public final component4()Z
    .registers 2

    iget-boolean v0, p0, Lcom/facebook/fresco/vito/options/RoundingOptions;->isAntiAliased:Z

    return v0
.end method

.method public final component5()Z
    .registers 2

    iget-boolean v0, p0, Lcom/facebook/fresco/vito/options/RoundingOptions;->isForceRoundAtDecode:Z

    return v0
.end method

.method public final copy(ZF[FZZ)Lcom/facebook/fresco/vito/options/RoundingOptions;
    .registers 12

    new-instance v0, Lcom/facebook/fresco/vito/options/RoundingOptions;

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/facebook/fresco/vito/options/RoundingOptions;-><init>(ZF[FZZ)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 27
    :cond_4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eqz p1, :cond_f

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    goto :goto_10

    :cond_f
    const/4 v2, 0x0

    :goto_10
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_18

    return v2

    .line 31
    :cond_18
    const-string v1, "null cannot be cast to non-null type com.facebook.fresco.vito.options.RoundingOptions"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/facebook/fresco/vito/options/RoundingOptions;

    .line 33
    iget-boolean v1, p0, Lcom/facebook/fresco/vito/options/RoundingOptions;->isCircular:Z

    iget-boolean v3, p1, Lcom/facebook/fresco/vito/options/RoundingOptions;->isCircular:Z

    if-ne v1, v3, :cond_44

    .line 34
    iget v1, p0, Lcom/facebook/fresco/vito/options/RoundingOptions;->cornerRadius:F

    iget v3, p1, Lcom/facebook/fresco/vito/options/RoundingOptions;->cornerRadius:F

    cmpg-float v1, v1, v3

    if-nez v1, :cond_44

    .line 35
    iget-object v1, p0, Lcom/facebook/fresco/vito/options/RoundingOptions;->cornerRadii:[F

    iget-object v3, p1, Lcom/facebook/fresco/vito/options/RoundingOptions;->cornerRadii:[F

    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([F[F)Z

    move-result v1

    if-eqz v1, :cond_44

    .line 36
    iget-boolean v1, p0, Lcom/facebook/fresco/vito/options/RoundingOptions;->isAntiAliased:Z

    iget-boolean v3, p1, Lcom/facebook/fresco/vito/options/RoundingOptions;->isAntiAliased:Z

    if-ne v1, v3, :cond_44

    .line 37
    iget-boolean v1, p0, Lcom/facebook/fresco/vito/options/RoundingOptions;->isForceRoundAtDecode:Z

    iget-boolean p1, p1, Lcom/facebook/fresco/vito/options/RoundingOptions;->isForceRoundAtDecode:Z

    if-ne v1, p1, :cond_44

    return v0

    :cond_44
    return v2
.end method

.method public final getCornerRadii()[F
    .registers 2

    .line 16
    iget-object v0, p0, Lcom/facebook/fresco/vito/options/RoundingOptions;->cornerRadii:[F

    return-object v0
.end method

.method public final getCornerRadius()F
    .registers 2

    .line 15
    iget v0, p0, Lcom/facebook/fresco/vito/options/RoundingOptions;->cornerRadius:F

    return v0
.end method

.method public final hasRoundedCorners()Z
    .registers 3

    .line 21
    iget v0, p0, Lcom/facebook/fresco/vito/options/RoundingOptions;->cornerRadius:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/facebook/fresco/vito/options/RoundingOptions;->cornerRadii:[F

    if-eqz v0, :cond_c

    goto :goto_e

    :cond_c
    const/4 v0, 0x0

    return v0

    :cond_e
    :goto_e
    const/4 v0, 0x1

    return v0
.end method

.method public hashCode()I
    .registers 3

    .line 41
    iget-boolean v0, p0, Lcom/facebook/fresco/vito/options/RoundingOptions;->isCircular:Z

    invoke-static {v0}, Lkotlin/UByte$$ExternalSyntheticBackport0;->m(Z)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 42
    iget v1, p0, Lcom/facebook/fresco/vito/options/RoundingOptions;->cornerRadius:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 43
    iget-object v1, p0, Lcom/facebook/fresco/vito/options/RoundingOptions;->cornerRadii:[F

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([F)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 44
    iget-boolean v1, p0, Lcom/facebook/fresco/vito/options/RoundingOptions;->isAntiAliased:Z

    invoke-static {v1}, Lkotlin/UByte$$ExternalSyntheticBackport0;->m(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 45
    iget-boolean v1, p0, Lcom/facebook/fresco/vito/options/RoundingOptions;->isForceRoundAtDecode:Z

    invoke-static {v1}, Lkotlin/UByte$$ExternalSyntheticBackport0;->m(Z)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final isAntiAliased()Z
    .registers 2

    .line 17
    iget-boolean v0, p0, Lcom/facebook/fresco/vito/options/RoundingOptions;->isAntiAliased:Z

    return v0
.end method

.method public final isCircular()Z
    .registers 2

    .line 14
    iget-boolean v0, p0, Lcom/facebook/fresco/vito/options/RoundingOptions;->isCircular:Z

    return v0
.end method

.method public final isForceRoundAtDecode()Z
    .registers 2

    .line 18
    iget-boolean v0, p0, Lcom/facebook/fresco/vito/options/RoundingOptions;->isForceRoundAtDecode:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 8

    iget-boolean v0, p0, Lcom/facebook/fresco/vito/options/RoundingOptions;->isCircular:Z

    iget v1, p0, Lcom/facebook/fresco/vito/options/RoundingOptions;->cornerRadius:F

    iget-object v2, p0, Lcom/facebook/fresco/vito/options/RoundingOptions;->cornerRadii:[F

    invoke-static {v2}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v2

    iget-boolean v3, p0, Lcom/facebook/fresco/vito/options/RoundingOptions;->isAntiAliased:Z

    iget-boolean v4, p0, Lcom/facebook/fresco/vito/options/RoundingOptions;->isForceRoundAtDecode:Z

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "RoundingOptions(isCircular="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", cornerRadius="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, ", cornerRadii="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", isAntiAliased="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", isForceRoundAtDecode="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class com.facebook.fresco.vito.options.RoundingOptions.Companion (com.facebook.fresco.vito.options.RoundingOptions$Companion)
.class public final Lcom/facebook/fresco/vito/options/RoundingOptions$Companion;
.super Ljava/lang/Object;
.source "RoundingOptions.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/fresco/vito/options/RoundingOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u000b\n\u0002\u0008\t\n\u0002\u0010\u0014\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0008\u0010\u000c\u001a\u00020\u0007H\u0007J\u0010\u0010\u000c\u001a\u00020\u00072\u0006\u0010\r\u001a\u00020\u000eH\u0007J\u0018\u0010\u000c\u001a\u00020\u00072\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u000eH\u0007J\u0010\u0010\u0010\u001a\u00020\u00072\u0006\u0010\u0011\u001a\u00020\u0005H\u0007J(\u0010\u0012\u001a\u00020\u00072\u0006\u0010\u0013\u001a\u00020\u00052\u0006\u0010\u0014\u001a\u00020\u00052\u0006\u0010\u0015\u001a\u00020\u00052\u0006\u0010\u0016\u001a\u00020\u0005H\u0007J\u001a\u0010\u0012\u001a\u00020\u00072\u0006\u0010\u0017\u001a\u00020\u00182\u0008\u0008\u0002\u0010\r\u001a\u00020\u000eH\u0007R\u000e\u0010\u0004\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u0011\u0010\n\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\t\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/facebook/fresco/vito/options/RoundingOptions$Companion;",
        "",
        "<init>",
        "()V",
        "CORNER_RADIUS_UNSET",
        "",
        "AS_CIRCLE",
        "Lcom/facebook/fresco/vito/options/RoundingOptions;",
        "getAS_CIRCLE",
        "()Lcom/facebook/fresco/vito/options/RoundingOptions;",
        "AS_CIRCLE_ANTI_ALIASING",
        "getAS_CIRCLE_ANTI_ALIASING",
        "asCircle",
        "antiAliasing",
        "",
        "forceRoundAtDecode",
        "forCornerRadiusPx",
        "cornerRadiusPx",
        "forCornerRadii",
        "topLeft",
        "topRight",
        "bottomRight",
        "bottomLeft",
        "cornerRadii",
        "",
        "options_release"
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

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    invoke-direct {p0}, Lcom/facebook/fresco/vito/options/RoundingOptions$Companion;-><init>()V

    return-void
.end method

.method public static synthetic forCornerRadii$default(Lcom/facebook/fresco/vito/options/RoundingOptions$Companion;[FZILjava/lang/Object;)Lcom/facebook/fresco/vito/options/RoundingOptions;
    .registers 5

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_5

    const/4 p2, 0x0

    .line 92
    :cond_5
    invoke-virtual {p0, p1, p2}, Lcom/facebook/fresco/vito/options/RoundingOptions$Companion;->forCornerRadii([FZ)Lcom/facebook/fresco/vito/options/RoundingOptions;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final asCircle()Lcom/facebook/fresco/vito/options/RoundingOptions;
    .registers 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 56
    invoke-virtual {p0}, Lcom/facebook/fresco/vito/options/RoundingOptions$Companion;->getAS_CIRCLE()Lcom/facebook/fresco/vito/options/RoundingOptions;

    move-result-object v0

    return-object v0
.end method

.method public final asCircle(Z)Lcom/facebook/fresco/vito/options/RoundingOptions;
    .registers 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    if-eqz p1, :cond_7

    .line 60
    invoke-virtual {p0}, Lcom/facebook/fresco/vito/options/RoundingOptions$Companion;->getAS_CIRCLE_ANTI_ALIASING()Lcom/facebook/fresco/vito/options/RoundingOptions;

    move-result-object p1

    return-object p1

    :cond_7
    invoke-virtual {p0}, Lcom/facebook/fresco/vito/options/RoundingOptions$Companion;->getAS_CIRCLE()Lcom/facebook/fresco/vito/options/RoundingOptions;

    move-result-object p1

    return-object p1
.end method

.method public final asCircle(ZZ)Lcom/facebook/fresco/vito/options/RoundingOptions;
    .registers 9
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 64
    new-instance v0, Lcom/facebook/fresco/vito/options/RoundingOptions;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v1, 0x1

    move v4, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/facebook/fresco/vito/options/RoundingOptions;-><init>(ZF[FZZ)V

    return-object v0
.end method

.method public final forCornerRadii(FFFF)Lcom/facebook/fresco/vito/options/RoundingOptions;
    .registers 11
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 77
    new-instance v0, Lcom/facebook/fresco/vito/options/RoundingOptions;

    const/16 v1, 0x8

    .line 88
    new-array v3, v1, [F

    const/4 v1, 0x0

    aput p1, v3, v1

    const/4 v1, 0x1

    aput p1, v3, v1

    const/4 p1, 0x2

    aput p2, v3, p1

    const/4 p1, 0x3

    aput p2, v3, p1

    const/4 p1, 0x4

    aput p3, v3, p1

    const/4 p1, 0x5

    aput p3, v3, p1

    const/4 p1, 0x6

    aput p4, v3, p1

    const/4 p1, 0x7

    aput p4, v3, p1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 77
    invoke-direct/range {v0 .. v5}, Lcom/facebook/fresco/vito/options/RoundingOptions;-><init>(ZF[FZZ)V

    return-object v0
.end method

.method public final forCornerRadii([F)Lcom/facebook/fresco/vito/options/RoundingOptions;
    .registers 5
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "cornerRadii"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, p1, v2, v0, v1}, Lcom/facebook/fresco/vito/options/RoundingOptions$Companion;->forCornerRadii$default(Lcom/facebook/fresco/vito/options/RoundingOptions$Companion;[FZILjava/lang/Object;)Lcom/facebook/fresco/vito/options/RoundingOptions;

    move-result-object p1

    return-object p1
.end method

.method public final forCornerRadii([FZ)Lcom/facebook/fresco/vito/options/RoundingOptions;
    .registers 10
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "cornerRadii"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 95
    new-instance v1, Lcom/facebook/fresco/vito/options/RoundingOptions;

    const/4 v3, 0x0

    const/4 v6, 0x0

    const/4 v2, 0x0

    move-object v4, p1

    move v5, p2

    invoke-direct/range {v1 .. v6}, Lcom/facebook/fresco/vito/options/RoundingOptions;-><init>(ZF[FZZ)V

    return-object v1
.end method

.method public final forCornerRadiusPx(F)Lcom/facebook/fresco/vito/options/RoundingOptions;
    .registers 8
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 68
    new-instance v0, Lcom/facebook/fresco/vito/options/RoundingOptions;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v3, 0x0

    move v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/facebook/fresco/vito/options/RoundingOptions;-><init>(ZF[FZZ)V

    return-object v0
.end method

.method public final getAS_CIRCLE()Lcom/facebook/fresco/vito/options/RoundingOptions;
    .registers 2

    .line 52
    invoke-static {}, Lcom/facebook/fresco/vito/options/RoundingOptions;->access$getAS_CIRCLE$cp()Lcom/facebook/fresco/vito/options/RoundingOptions;

    move-result-object v0

    return-object v0
.end method

.method public final getAS_CIRCLE_ANTI_ALIASING()Lcom/facebook/fresco/vito/options/RoundingOptions;
    .registers 2

    .line 53
    invoke-static {}, Lcom/facebook/fresco/vito/options/RoundingOptions;->access$getAS_CIRCLE_ANTI_ALIASING$cp()Lcom/facebook/fresco/vito/options/RoundingOptions;

    move-result-object v0

    return-object v0
.end method
