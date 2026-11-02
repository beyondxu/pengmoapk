###### Class kotlin.reflect.jvm.internal.impl.types.checker.NewKotlinTypeChecker (kotlin.reflect.jvm.internal.impl.types.checker.NewKotlinTypeChecker)
.class public interface abstract Lkotlin/reflect/jvm/internal/impl/types/checker/NewKotlinTypeChecker;
.super Ljava/lang/Object;
.source "NewKotlinTypeChecker.kt"

# interfaces
.implements Lkotlin/reflect/jvm/internal/impl/types/checker/KotlinTypeChecker;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/reflect/jvm/internal/impl/types/checker/NewKotlinTypeChecker$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lkotlin/reflect/jvm/internal/impl/types/checker/NewKotlinTypeChecker$Companion;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    sget-object v0, Lkotlin/reflect/jvm/internal/impl/types/checker/NewKotlinTypeChecker$Companion;->$$INSTANCE:Lkotlin/reflect/jvm/internal/impl/types/checker/NewKotlinTypeChecker$Companion;

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/types/checker/NewKotlinTypeChecker;->Companion:Lkotlin/reflect/jvm/internal/impl/types/checker/NewKotlinTypeChecker$Companion;

    return-void
.end method


# virtual methods
.method public abstract getKotlinTypeRefiner()Lkotlin/reflect/jvm/internal/impl/types/checker/KotlinTypeRefiner;
.end method

.method public abstract getOverridingUtil()Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtil;
.end method

###### Class kotlin.reflect.jvm.internal.impl.types.checker.NewKotlinTypeChecker.Companion (kotlin.reflect.jvm.internal.impl.types.checker.NewKotlinTypeChecker$Companion)
.class public final Lkotlin/reflect/jvm/internal/impl/types/checker/NewKotlinTypeChecker$Companion;
.super Ljava/lang/Object;
.source "NewKotlinTypeChecker.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/types/checker/NewKotlinTypeChecker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# static fields
.field static final synthetic $$INSTANCE:Lkotlin/reflect/jvm/internal/impl/types/checker/NewKotlinTypeChecker$Companion;

.field private static final Default:Lkotlin/reflect/jvm/internal/impl/types/checker/NewKotlinTypeCheckerImpl;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/types/checker/NewKotlinTypeChecker$Companion;

    invoke-direct {v0}, Lkotlin/reflect/jvm/internal/impl/types/checker/NewKotlinTypeChecker$Companion;-><init>()V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/types/checker/NewKotlinTypeChecker$Companion;->$$INSTANCE:Lkotlin/reflect/jvm/internal/impl/types/checker/NewKotlinTypeChecker$Companion;

    .line 70
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/types/checker/NewKotlinTypeCheckerImpl;

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/types/checker/KotlinTypeRefiner$Default;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/types/checker/KotlinTypeRefiner$Default;

    check-cast v1, Lkotlin/reflect/jvm/internal/impl/types/checker/KotlinTypeRefiner;

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-direct {v0, v1, v2, v3, v2}, Lkotlin/reflect/jvm/internal/impl/types/checker/NewKotlinTypeCheckerImpl;-><init>(Lkotlin/reflect/jvm/internal/impl/types/checker/KotlinTypeRefiner;Lkotlin/reflect/jvm/internal/impl/types/checker/KotlinTypePreparator;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/types/checker/NewKotlinTypeChecker$Companion;->Default:Lkotlin/reflect/jvm/internal/impl/types/checker/NewKotlinTypeCheckerImpl;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getDefault()Lkotlin/reflect/jvm/internal/impl/types/checker/NewKotlinTypeCheckerImpl;
    .registers 2

    .line 70
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/types/checker/NewKotlinTypeChecker$Companion;->Default:Lkotlin/reflect/jvm/internal/impl/types/checker/NewKotlinTypeCheckerImpl;

    return-object v0
.end method
