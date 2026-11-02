###### Class kotlin.reflect.jvm.internal.impl.builtins.StandardNames (kotlin.reflect.jvm.internal.impl.builtins.StandardNames)
.class public final Lkotlin/reflect/jvm/internal/impl/builtins/StandardNames;
.super Ljava/lang/Object;
.source "StandardNames.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/reflect/jvm/internal/impl/builtins/StandardNames$FqNames;
    }
.end annotation


# static fields
.field public static final ANNOTATION_PACKAGE_FQ_NAME:Lkotlin/reflect/jvm/internal/impl/name/FqName;

.field public static final BACKING_FIELD:Lkotlin/reflect/jvm/internal/impl/name/Name;

.field public static final BUILT_INS_PACKAGE_FQ_NAME:Lkotlin/reflect/jvm/internal/impl/name/FqName;

.field public static final BUILT_INS_PACKAGE_FQ_NAMES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lkotlin/reflect/jvm/internal/impl/name/FqName;",
            ">;"
        }
    .end annotation
.end field

.field public static final BUILT_INS_PACKAGE_NAME:Lkotlin/reflect/jvm/internal/impl/name/Name;

.field public static final CHAR_CODE:Lkotlin/reflect/jvm/internal/impl/name/Name;

.field public static final COLLECTIONS_PACKAGE_FQ_NAME:Lkotlin/reflect/jvm/internal/impl/name/FqName;

.field public static final CONCURRENT_ATOMICS_PACKAGE_FQ_NAME:Lkotlin/reflect/jvm/internal/impl/name/FqName;

.field public static final CONCURRENT_PACKAGE_FQ_NAME:Lkotlin/reflect/jvm/internal/impl/name/FqName;

.field public static final CONTEXT_FUNCTION_TYPE_PARAMETER_COUNT_NAME:Lkotlin/reflect/jvm/internal/impl/name/Name;

.field public static final CONTINUATION_INTERFACE_FQ_NAME:Lkotlin/reflect/jvm/internal/impl/name/FqName;

.field public static final COROUTINES_INTRINSICS_PACKAGE_FQ_NAME:Lkotlin/reflect/jvm/internal/impl/name/FqName;

.field public static final COROUTINES_JVM_INTERNAL_PACKAGE_FQ_NAME:Lkotlin/reflect/jvm/internal/impl/name/FqName;

.field public static final COROUTINES_PACKAGE_FQ_NAME:Lkotlin/reflect/jvm/internal/impl/name/FqName;

.field public static final COROUTINE_SUSPENDED_NAME:Lkotlin/reflect/jvm/internal/impl/name/Name;

.field public static final DATA_CLASS_COMPONENT_PREFIX:Ljava/lang/String;

.field public static final DATA_CLASS_COPY:Lkotlin/reflect/jvm/internal/impl/name/Name;

.field public static final DEFAULT_VALUE_PARAMETER:Lkotlin/reflect/jvm/internal/impl/name/Name;

.field public static final DYNAMIC_FQ_NAME:Lkotlin/reflect/jvm/internal/impl/name/FqName;

.field public static final ENUM_ENTRIES:Lkotlin/reflect/jvm/internal/impl/name/Name;

.field public static final ENUM_VALUES:Lkotlin/reflect/jvm/internal/impl/name/Name;

.field public static final ENUM_VALUE_OF:Lkotlin/reflect/jvm/internal/impl/name/Name;

.field public static final EQUALS_NAME:Lkotlin/reflect/jvm/internal/impl/name/Name;

.field public static final HASHCODE_NAME:Lkotlin/reflect/jvm/internal/impl/name/Name;

.field public static final IMPLICIT_LAMBDA_PARAMETER_NAME:Lkotlin/reflect/jvm/internal/impl/name/Name;

.field public static final INSTANCE:Lkotlin/reflect/jvm/internal/impl/builtins/StandardNames;

.field public static final KOTLIN_INTERNAL_FQ_NAME:Lkotlin/reflect/jvm/internal/impl/name/FqName;

.field public static final KOTLIN_REFLECT_FQ_NAME:Lkotlin/reflect/jvm/internal/impl/name/FqName;

.field public static final MAIN:Lkotlin/reflect/jvm/internal/impl/name/Name;

.field public static final NAME:Lkotlin/reflect/jvm/internal/impl/name/Name;

.field public static final NEXT_CHAR:Lkotlin/reflect/jvm/internal/impl/name/Name;

.field private static final NON_EXISTENT_CLASS:Lkotlin/reflect/jvm/internal/impl/name/FqName;

.field public static final PREFIXES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final RANGES_PACKAGE_FQ_NAME:Lkotlin/reflect/jvm/internal/impl/name/FqName;

.field public static final RESULT_FQ_NAME:Lkotlin/reflect/jvm/internal/impl/name/FqName;

.field public static final TEXT_PACKAGE_FQ_NAME:Lkotlin/reflect/jvm/internal/impl/name/FqName;

.field public static final TO_STRING_NAME:Lkotlin/reflect/jvm/internal/impl/name/Name;


# direct methods
.method static constructor <clinit>()V
    .registers 10

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/builtins/StandardNames;

    invoke-direct {v0}, Lkotlin/reflect/jvm/internal/impl/builtins/StandardNames;-><init>()V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/builtins/StandardNames;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/builtins/StandardNames;

    .line 19
    const-string v0, "field"

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/name/Name;->identifier(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/Name;

    move-result-object v0

    const-string v1, "identifier(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/builtins/StandardNames;->BACKING_FIELD:Lkotlin/reflect/jvm/internal/impl/name/Name;

    .line 21
    const-string v0, "value"

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/name/Name;->identifier(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/Name;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/builtins/StandardNames;->DEFAULT_VALUE_PARAMETER:Lkotlin/reflect/jvm/internal/impl/name/Name;

    .line 23
    const-string v0, "values"

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/name/Name;->identifier(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/Name;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/builtins/StandardNames;->ENUM_VALUES:Lkotlin/reflect/jvm/internal/impl/name/Name;

    .line 25
    const-string v0, "entries"

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/name/Name;->identifier(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/Name;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/builtins/StandardNames;->ENUM_ENTRIES:Lkotlin/reflect/jvm/internal/impl/name/Name;

    .line 27
    const-string v0, "valueOf"

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/name/Name;->identifier(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/Name;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/builtins/StandardNames;->ENUM_VALUE_OF:Lkotlin/reflect/jvm/internal/impl/name/Name;

    .line 29
    const-string v0, "copy"

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/name/Name;->identifier(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/Name;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/builtins/StandardNames;->DATA_CLASS_COPY:Lkotlin/reflect/jvm/internal/impl/name/Name;

    .line 31
    const-string v0, "component"

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/builtins/StandardNames;->DATA_CLASS_COMPONENT_PREFIX:Ljava/lang/String;

    .line 33
    const-string v0, "hashCode"

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/name/Name;->identifier(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/Name;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/builtins/StandardNames;->HASHCODE_NAME:Lkotlin/reflect/jvm/internal/impl/name/Name;

    .line 34
    const-string v0, "toString"

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/name/Name;->identifier(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/Name;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/builtins/StandardNames;->TO_STRING_NAME:Lkotlin/reflect/jvm/internal/impl/name/Name;

    .line 35
    const-string v0, "equals"

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/name/Name;->identifier(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/Name;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/builtins/StandardNames;->EQUALS_NAME:Lkotlin/reflect/jvm/internal/impl/name/Name;

    .line 37
    const-string v0, "code"

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/name/Name;->identifier(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/Name;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/builtins/StandardNames;->CHAR_CODE:Lkotlin/reflect/jvm/internal/impl/name/Name;

    .line 39
    const-string v0, "name"

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/name/Name;->identifier(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/Name;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/builtins/StandardNames;->NAME:Lkotlin/reflect/jvm/internal/impl/name/Name;

    .line 41
    const-string v0, "main"

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/name/Name;->identifier(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/Name;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/builtins/StandardNames;->MAIN:Lkotlin/reflect/jvm/internal/impl/name/Name;

    .line 43
    const-string v0, "nextChar"

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/name/Name;->identifier(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/Name;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/builtins/StandardNames;->NEXT_CHAR:Lkotlin/reflect/jvm/internal/impl/name/Name;

    .line 45
    const-string v0, "it"

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/name/Name;->identifier(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/Name;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/builtins/StandardNames;->IMPLICIT_LAMBDA_PARAMETER_NAME:Lkotlin/reflect/jvm/internal/impl/name/Name;

    .line 47
    const-string v0, "count"

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/name/Name;->identifier(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/Name;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/builtins/StandardNames;->CONTEXT_FUNCTION_TYPE_PARAMETER_COUNT_NAME:Lkotlin/reflect/jvm/internal/impl/name/Name;

    .line 49
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/name/FqName;

    const-string v2, "<dynamic>"

    invoke-direct {v0, v2}, Lkotlin/reflect/jvm/internal/impl/name/FqName;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/builtins/StandardNames;->DYNAMIC_FQ_NAME:Lkotlin/reflect/jvm/internal/impl/name/FqName;

    .line 51
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/name/FqName;

    const-string v2, "kotlin.coroutines"

    invoke-direct {v0, v2}, Lkotlin/reflect/jvm/internal/impl/name/FqName;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/builtins/StandardNames;->COROUTINES_PACKAGE_FQ_NAME:Lkotlin/reflect/jvm/internal/impl/name/FqName;

    .line 53
    new-instance v2, Lkotlin/reflect/jvm/internal/impl/name/FqName;

    const-string v3, "kotlin.coroutines.jvm.internal"

    invoke-direct {v2, v3}, Lkotlin/reflect/jvm/internal/impl/name/FqName;-><init>(Ljava/lang/String;)V

    sput-object v2, Lkotlin/reflect/jvm/internal/impl/builtins/StandardNames;->COROUTINES_JVM_INTERNAL_PACKAGE_FQ_NAME:Lkotlin/reflect/jvm/internal/impl/name/FqName;

    .line 55
    new-instance v2, Lkotlin/reflect/jvm/internal/impl/name/FqName;

    const-string v3, "kotlin.coroutines.intrinsics"

    invoke-direct {v2, v3}, Lkotlin/reflect/jvm/internal/impl/name/FqName;-><init>(Ljava/lang/String;)V

    sput-object v2, Lkotlin/reflect/jvm/internal/impl/builtins/StandardNames;->COROUTINES_INTRINSICS_PACKAGE_FQ_NAME:Lkotlin/reflect/jvm/internal/impl/name/FqName;

    .line 57
    const-string v2, "COROUTINE_SUSPENDED"

    invoke-static {v2}, Lkotlin/reflect/jvm/internal/impl/name/Name;->identifier(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/Name;

    move-result-object v2

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v2, Lkotlin/reflect/jvm/internal/impl/builtins/StandardNames;->COROUTINE_SUSPENDED_NAME:Lkotlin/reflect/jvm/internal/impl/name/Name;

    .line 59
    const-string v2, "Continuation"

    invoke-static {v2}, Lkotlin/reflect/jvm/internal/impl/name/Name;->identifier(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/Name;

    move-result-object v2

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lkotlin/reflect/jvm/internal/impl/name/FqName;->child(Lkotlin/reflect/jvm/internal/impl/name/Name;)Lkotlin/reflect/jvm/internal/impl/name/FqName;

    move-result-object v2

    sput-object v2, Lkotlin/reflect/jvm/internal/impl/builtins/StandardNames;->CONTINUATION_INTERFACE_FQ_NAME:Lkotlin/reflect/jvm/internal/impl/name/FqName;

    .line 61
    new-instance v2, Lkotlin/reflect/jvm/internal/impl/name/FqName;

    const-string v3, "kotlin.Result"

    invoke-direct {v2, v3}, Lkotlin/reflect/jvm/internal/impl/name/FqName;-><init>(Ljava/lang/String;)V

    sput-object v2, Lkotlin/reflect/jvm/internal/impl/builtins/StandardNames;->RESULT_FQ_NAME:Lkotlin/reflect/jvm/internal/impl/name/FqName;

    .line 63
    new-instance v2, Lkotlin/reflect/jvm/internal/impl/name/FqName;

    const-string v3, "kotlin.reflect"

    invoke-direct {v2, v3}, Lkotlin/reflect/jvm/internal/impl/name/FqName;-><init>(Ljava/lang/String;)V

    sput-object v2, Lkotlin/reflect/jvm/internal/impl/builtins/StandardNames;->KOTLIN_REFLECT_FQ_NAME:Lkotlin/reflect/jvm/internal/impl/name/FqName;

    .line 69
    const-string v3, "KFunction"

    const-string v4, "KSuspendFunction"

    const-string v5, "KProperty"

    const-string v6, "KMutableProperty"

    filled-new-array {v5, v6, v3, v4}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    sput-object v3, Lkotlin/reflect/jvm/internal/impl/builtins/StandardNames;->PREFIXES:Ljava/util/List;

    .line 72
    const-string v3, "kotlin"

    invoke-static {v3}, Lkotlin/reflect/jvm/internal/impl/name/Name;->identifier(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/Name;

    move-result-object v3

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v3, Lkotlin/reflect/jvm/internal/impl/builtins/StandardNames;->BUILT_INS_PACKAGE_NAME:Lkotlin/reflect/jvm/internal/impl/name/Name;

    .line 75
    sget-object v4, Lkotlin/reflect/jvm/internal/impl/name/FqName;->Companion:Lkotlin/reflect/jvm/internal/impl/name/FqName$Companion;

    invoke-virtual {v4, v3}, Lkotlin/reflect/jvm/internal/impl/name/FqName$Companion;->topLevel(Lkotlin/reflect/jvm/internal/impl/name/Name;)Lkotlin/reflect/jvm/internal/impl/name/FqName;

    move-result-object v3

    sput-object v3, Lkotlin/reflect/jvm/internal/impl/builtins/StandardNames;->BUILT_INS_PACKAGE_FQ_NAME:Lkotlin/reflect/jvm/internal/impl/name/FqName;

    .line 78
    const-string v4, "annotation"

    invoke-static {v4}, Lkotlin/reflect/jvm/internal/impl/name/Name;->identifier(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/Name;

    move-result-object v4

    invoke-static {v4, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lkotlin/reflect/jvm/internal/impl/name/FqName;->child(Lkotlin/reflect/jvm/internal/impl/name/Name;)Lkotlin/reflect/jvm/internal/impl/name/FqName;

    move-result-object v4

    sput-object v4, Lkotlin/reflect/jvm/internal/impl/builtins/StandardNames;->ANNOTATION_PACKAGE_FQ_NAME:Lkotlin/reflect/jvm/internal/impl/name/FqName;

    .line 81
    const-string v5, "collections"

    invoke-static {v5}, Lkotlin/reflect/jvm/internal/impl/name/Name;->identifier(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/Name;

    move-result-object v5

    invoke-static {v5, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Lkotlin/reflect/jvm/internal/impl/name/FqName;->child(Lkotlin/reflect/jvm/internal/impl/name/Name;)Lkotlin/reflect/jvm/internal/impl/name/FqName;

    move-result-object v5

    sput-object v5, Lkotlin/reflect/jvm/internal/impl/builtins/StandardNames;->COLLECTIONS_PACKAGE_FQ_NAME:Lkotlin/reflect/jvm/internal/impl/name/FqName;

    .line 84
    const-string v6, "ranges"

    invoke-static {v6}, Lkotlin/reflect/jvm/internal/impl/name/Name;->identifier(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/Name;

    move-result-object v6

    invoke-static {v6, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, v6}, Lkotlin/reflect/jvm/internal/impl/name/FqName;->child(Lkotlin/reflect/jvm/internal/impl/name/Name;)Lkotlin/reflect/jvm/internal/impl/name/FqName;

    move-result-object v6

    sput-object v6, Lkotlin/reflect/jvm/internal/impl/builtins/StandardNames;->RANGES_PACKAGE_FQ_NAME:Lkotlin/reflect/jvm/internal/impl/name/FqName;

    .line 87
    const-string v7, "text"

    invoke-static {v7}, Lkotlin/reflect/jvm/internal/impl/name/Name;->identifier(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/Name;

    move-result-object v7

    invoke-static {v7, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, v7}, Lkotlin/reflect/jvm/internal/impl/name/FqName;->child(Lkotlin/reflect/jvm/internal/impl/name/Name;)Lkotlin/reflect/jvm/internal/impl/name/FqName;

    move-result-object v7

    sput-object v7, Lkotlin/reflect/jvm/internal/impl/builtins/StandardNames;->TEXT_PACKAGE_FQ_NAME:Lkotlin/reflect/jvm/internal/impl/name/FqName;

    .line 90
    const-string v7, "internal"

    invoke-static {v7}, Lkotlin/reflect/jvm/internal/impl/name/Name;->identifier(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/Name;

    move-result-object v7

    invoke-static {v7, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, v7}, Lkotlin/reflect/jvm/internal/impl/name/FqName;->child(Lkotlin/reflect/jvm/internal/impl/name/Name;)Lkotlin/reflect/jvm/internal/impl/name/FqName;

    move-result-object v7

    sput-object v7, Lkotlin/reflect/jvm/internal/impl/builtins/StandardNames;->KOTLIN_INTERNAL_FQ_NAME:Lkotlin/reflect/jvm/internal/impl/name/FqName;

    .line 93
    const-string v8, "concurrent"

    invoke-static {v8}, Lkotlin/reflect/jvm/internal/impl/name/Name;->identifier(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/Name;

    move-result-object v8

    invoke-static {v8, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, v8}, Lkotlin/reflect/jvm/internal/impl/name/FqName;->child(Lkotlin/reflect/jvm/internal/impl/name/Name;)Lkotlin/reflect/jvm/internal/impl/name/FqName;

    move-result-object v8

    sput-object v8, Lkotlin/reflect/jvm/internal/impl/builtins/StandardNames;->CONCURRENT_PACKAGE_FQ_NAME:Lkotlin/reflect/jvm/internal/impl/name/FqName;

    .line 96
    const-string v9, "atomics"

    invoke-static {v9}, Lkotlin/reflect/jvm/internal/impl/name/Name;->identifier(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/Name;

    move-result-object v9

    invoke-static {v9, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v8, v9}, Lkotlin/reflect/jvm/internal/impl/name/FqName;->child(Lkotlin/reflect/jvm/internal/impl/name/Name;)Lkotlin/reflect/jvm/internal/impl/name/FqName;

    move-result-object v1

    sput-object v1, Lkotlin/reflect/jvm/internal/impl/builtins/StandardNames;->CONCURRENT_ATOMICS_PACKAGE_FQ_NAME:Lkotlin/reflect/jvm/internal/impl/name/FqName;

    .line 98
    new-instance v8, Lkotlin/reflect/jvm/internal/impl/name/FqName;

    const-string v9, "error.NonExistentClass"

    invoke-direct {v8, v9}, Lkotlin/reflect/jvm/internal/impl/name/FqName;-><init>(Ljava/lang/String;)V

    sput-object v8, Lkotlin/reflect/jvm/internal/impl/builtins/StandardNames;->NON_EXISTENT_CLASS:Lkotlin/reflect/jvm/internal/impl/name/FqName;

    const/16 v8, 0x8

    .line 102
    new-array v8, v8, [Lkotlin/reflect/jvm/internal/impl/name/FqName;

    const/4 v9, 0x0

    aput-object v3, v8, v9

    const/4 v3, 0x1

    .line 103
    aput-object v5, v8, v3

    const/4 v3, 0x2

    .line 104
    aput-object v6, v8, v3

    const/4 v3, 0x3

    .line 105
    aput-object v4, v8, v3

    const/4 v3, 0x4

    .line 106
    aput-object v2, v8, v3

    const/4 v2, 0x5

    .line 107
    aput-object v7, v8, v2

    const/4 v2, 0x6

    .line 108
    aput-object v0, v8, v2

    const/4 v0, 0x7

    .line 109
    aput-object v1, v8, v0

    .line 101
    invoke-static {v8}, Lkotlin/collections/SetsKt;->setOf([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/builtins/StandardNames;->BUILT_INS_PACKAGE_FQ_NAMES:Ljava/util/Set;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getFunctionClassId(I)Lkotlin/reflect/jvm/internal/impl/name/ClassId;
    .registers 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 287
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/name/ClassId;

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/builtins/StandardNames;->BUILT_INS_PACKAGE_FQ_NAME:Lkotlin/reflect/jvm/internal/impl/name/FqName;

    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/builtins/StandardNames;->getFunctionName(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/name/Name;->identifier(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/Name;

    move-result-object p0

    const-string v2, "identifier(...)"

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1, p0}, Lkotlin/reflect/jvm/internal/impl/name/ClassId;-><init>(Lkotlin/reflect/jvm/internal/impl/name/FqName;Lkotlin/reflect/jvm/internal/impl/name/Name;)V

    return-object v0
.end method

.method public static final getFunctionName(I)Ljava/lang/String;
    .registers 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 282
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Function"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final getPrimitiveFqName(Lkotlin/reflect/jvm/internal/impl/builtins/PrimitiveType;)Lkotlin/reflect/jvm/internal/impl/name/FqName;
    .registers 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "primitiveType"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 329
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/builtins/StandardNames;->BUILT_INS_PACKAGE_FQ_NAME:Lkotlin/reflect/jvm/internal/impl/name/FqName;

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/builtins/PrimitiveType;->getTypeName()Lkotlin/reflect/jvm/internal/impl/name/Name;

    move-result-object p0

    invoke-virtual {v0, p0}, Lkotlin/reflect/jvm/internal/impl/name/FqName;->child(Lkotlin/reflect/jvm/internal/impl/name/Name;)Lkotlin/reflect/jvm/internal/impl/name/FqName;

    move-result-object p0

    return-object p0
.end method

.method public static final getSuspendFunctionName(I)Ljava/lang/String;
    .registers 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 303
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/builtins/functions/FunctionTypeKind$SuspendFunction;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/builtins/functions/FunctionTypeKind$SuspendFunction;

    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/impl/builtins/functions/FunctionTypeKind$SuspendFunction;->getClassNamePrefix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final isPrimitiveArray(Lkotlin/reflect/jvm/internal/impl/name/FqNameUnsafe;)Z
    .registers 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "arrayFqName"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 324
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/builtins/StandardNames$FqNames;->arrayClassFqNameToPrimitiveType:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_f

    const/4 p0, 0x1

    return p0

    :cond_f
    const/4 p0, 0x0

    return p0
.end method

###### Class kotlin.reflect.jvm.internal.impl.builtins.StandardNames.FqNames (kotlin.reflect.jvm.internal.impl.builtins.StandardNames$FqNames)
.class public final Lkotlin/reflect/jvm/internal/impl/builtins/StandardNames$FqNames;
.super Ljava/lang/Object;
.source "StandardNames.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/builtins/StandardNames;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FqNames"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nStandardNames.kt\nKotlin\n*S Kotlin\n*F\n+ 1 StandardNames.kt\norg/jetbrains/kotlin/builtins/StandardNames$FqNames\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,332:1\n11563#2,3:333\n11563#2,3:336\n*S KotlinDebug\n*F\n+ 1 StandardNames.kt\norg/jetbrains/kotlin/builtins/StandardNames$FqNames\n*L\n220#1:333,3\n224#1:336,3\n*E\n"
.end annotation


# static fields
.field public static final INSTANCE:Lkotlin/reflect/jvm/internal/impl/builtins/StandardNames$FqNames;

.field public static final _boolean:Lkotlin/reflect/jvm/internal/impl/name/FqNameUnsafe;

.field public static final _byte:Lkotlin/reflect/jvm/internal/impl/name/FqNameUnsafe;

.field public static final _char:Lkotlin/reflect/jvm/internal/impl/name/FqNameUnsafe;

.field public static final _double:Lkotlin/reflect/jvm/internal/impl/name/FqNameUnsafe;

.field public static final _enum:Lkotlin/reflect/jvm/internal/impl/name/FqNameUnsafe;

.field public static final _float:Lkotlin/reflect/jvm/internal/impl/name/FqNameUnsafe;

.field public static final _int:Lkotlin/reflect/jvm/internal/impl/name/FqNameUnsafe;

.field public static final _long:Lkotlin/reflect/jvm/internal/impl/name/FqNameUnsafe;

.field public static final _short:Lkotlin/reflect/jvm/internal/impl/name/FqNameUnsafe;

.field public static final accessibleLateinitPropertyLiteral:Lkotlin/reflect/jvm/internal/impl/name/FqName;

.field public static final annotation:Lkotlin/reflect/jvm/internal/impl/name/FqName;

.field public static final annotationRetention:Lkotlin/reflect/jvm/internal/impl/name/FqName;

.field public static final annotationTarget:Lkotlin/reflect/jvm/internal/impl/name/FqName;

.field public static final any:Lkotlin/reflect/jvm/internal/impl/name/FqNameUnsafe;

.field public static final array:Lkotlin/reflect/jvm/internal/impl/name/FqNameUnsafe;

.field public static final arrayClassFqNameToPrimitiveType:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lkotlin/reflect/jvm/internal/impl/name/FqNameUnsafe;",
            "Lkotlin/reflect/jvm/internal/impl/builtins/PrimitiveType;",
            ">;"
        }
    .end annotation
.end field

.field public static final atomicArray:Lkotlin/reflect/jvm/internal/impl/name/FqName;

.field public static final atomicBoolean:Lkotlin/reflect/jvm/internal/impl/name/FqName;

.field public static final atomicInt:Lkotlin/reflect/jvm/internal/impl/name/FqName;

.field public static final atomicIntArray:Lkotlin/reflect/jvm/internal/impl/name/FqName;

.field public static final atomicLong:Lkotlin/reflect/jvm/internal/impl/name/FqName;

.field public static final atomicLongArray:Lkotlin/reflect/jvm/internal/impl/name/FqName;

.field public static final atomicReference:Lkotlin/reflect/jvm/internal/impl/name/FqName;

.field public static final charSequence:Lkotlin/reflect/jvm/internal/impl/name/FqNameUnsafe;

.field public static final cloneable:Lkotlin/reflect/jvm/internal/impl/name/FqNameUnsafe;

.field public static final collection:Lkotlin/reflect/jvm/internal/impl/name/FqName;

.field public static final comparable:Lkotlin/reflect/jvm/internal/impl/name/FqName;

.field public static final contextFunctionTypeParams:Lkotlin/reflect/jvm/internal/impl/name/FqName;

.field public static final deprecated:Lkotlin/reflect/jvm/internal/impl/name/FqName;

.field public static final deprecatedSinceKotlin:Lkotlin/reflect/jvm/internal/impl/name/FqName;

.field public static final deprecationLevel:Lkotlin/reflect/jvm/internal/impl/name/FqName;

.field public static final extensionFunctionType:Lkotlin/reflect/jvm/internal/impl/name/FqName;

.field public static final findAssociatedObject:Lkotlin/reflect/jvm/internal/impl/name/FqNameUnsafe;

.field public static final fqNameToPrimitiveType:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lkotlin/reflect/jvm/internal/impl/name/FqNameUnsafe;",
            "Lkotlin/reflect/jvm/internal/impl/builtins/PrimitiveType;",
            ">;"
        }
    .end annotation
.end field

.field public static final functionSupertype:Lkotlin/reflect/jvm/internal/impl/name/FqNameUnsafe;

.field public static final intRange:Lkotlin/reflect/jvm/internal/impl/name/FqNameUnsafe;

.field public static final iterable:Lkotlin/reflect/jvm/internal/impl/name/FqName;

.field public static final iterator:Lkotlin/reflect/jvm/internal/impl/name/FqName;

.field public static final kCallable:Lkotlin/reflect/jvm/internal/impl/name/FqNameUnsafe;

.field public static final kClass:Lkotlin/reflect/jvm/internal/impl/name/FqNameUnsafe;

.field public static final kDeclarationContainer:Lkotlin/reflect/jvm/internal/impl/name/FqNameUnsafe;

.field public static final kMutableProperty0:Lkotlin/reflect/jvm/internal/impl/name/FqNameUnsafe;

.field public static final kMutableProperty1:Lkotlin/reflect/jvm/internal/impl/name/FqNameUnsafe;

.field public static final kMutableProperty2:Lkotlin/reflect/jvm/internal/impl/name/FqNameUnsafe;

.field public static final kMutablePropertyFqName:Lkotlin/reflect/jvm/internal/impl/name/FqNameUnsafe;

.field public static final kProperty:Lkotlin/reflect/jvm/internal/impl/name/ClassId;

.field public static final kProperty0:Lkotlin/reflect/jvm/internal/impl/name/FqNameUnsafe;

.field public static final kProperty1:Lkotlin/reflect/jvm/internal/impl/name/FqNameUnsafe;

.field public static final kProperty2:Lkotlin/reflect/jvm/internal/impl/name/FqNameUnsafe;

.field public static final kPropertyFqName:Lkotlin/reflect/jvm/internal/impl/name/FqNameUnsafe;

.field public static final kType:Lkotlin/reflect/jvm/internal/impl/name/FqNameUnsafe;

.field public static final list:Lkotlin/reflect/jvm/internal/impl/name/FqName;

.field public static final listIterator:Lkotlin/reflect/jvm/internal/impl/name/FqName;

.field public static final longRange:Lkotlin/reflect/jvm/internal/impl/name/FqNameUnsafe;

.field public static final map:Lkotlin/reflect/jvm/internal/impl/name/FqName;

.field public static final mapEntry:Lkotlin/reflect/jvm/internal/impl/name/FqName;

.field public static final mustBeDocumented:Lkotlin/reflect/jvm/internal/impl/name/FqName;

.field public static final mutableCollection:Lkotlin/reflect/jvm/internal/impl/name/FqName;

.field public static final mutableIterable:Lkotlin/reflect/jvm/internal/impl/name/FqName;

.field public static final mutableIterator:Lkotlin/reflect/jvm/internal/impl/name/FqName;

.field public static final mutableList:Lkotlin/reflect/jvm/internal/impl/name/FqName;

.field public static final mutableListIterator:Lkotlin/reflect/jvm/internal/impl/name/FqName;

.field public static final mutableMap:Lkotlin/reflect/jvm/internal/impl/name/FqName;

.field public static final mutableMapEntry:Lkotlin/reflect/jvm/internal/impl/name/FqName;

.field public static final mutableSet:Lkotlin/reflect/jvm/internal/impl/name/FqName;

.field public static final nothing:Lkotlin/reflect/jvm/internal/impl/name/FqNameUnsafe;

.field public static final number:Lkotlin/reflect/jvm/internal/impl/name/FqNameUnsafe;

.field public static final parameterName:Lkotlin/reflect/jvm/internal/impl/name/FqName;

.field public static final parameterNameClassId:Lkotlin/reflect/jvm/internal/impl/name/ClassId;

.field public static final platformDependent:Lkotlin/reflect/jvm/internal/impl/name/FqName;

.field public static final platformDependentClassId:Lkotlin/reflect/jvm/internal/impl/name/ClassId;

.field public static final primitiveArrayTypeShortNames:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lkotlin/reflect/jvm/internal/impl/name/Name;",
            ">;"
        }
    .end annotation
.end field

.field public static final primitiveTypeShortNames:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lkotlin/reflect/jvm/internal/impl/name/Name;",
            ">;"
        }
    .end annotation
.end field

.field public static final publishedApi:Lkotlin/reflect/jvm/internal/impl/name/FqName;

.field public static final repeatable:Lkotlin/reflect/jvm/internal/impl/name/FqName;

.field public static final repeatableClassId:Lkotlin/reflect/jvm/internal/impl/name/ClassId;

.field public static final replaceWith:Lkotlin/reflect/jvm/internal/impl/name/FqName;

.field public static final retention:Lkotlin/reflect/jvm/internal/impl/name/FqName;

.field public static final retentionClassId:Lkotlin/reflect/jvm/internal/impl/name/ClassId;

.field public static final set:Lkotlin/reflect/jvm/internal/impl/name/FqName;

.field public static final string:Lkotlin/reflect/jvm/internal/impl/name/FqNameUnsafe;

.field public static final suppress:Lkotlin/reflect/jvm/internal/impl/name/FqName;

.field public static final target:Lkotlin/reflect/jvm/internal/impl/name/FqName;

.field public static final targetClassId:Lkotlin/reflect/jvm/internal/impl/name/ClassId;

.field public static final throwable:Lkotlin/reflect/jvm/internal/impl/name/FqName;

.field public static final uByte:Lkotlin/reflect/jvm/internal/impl/name/ClassId;

.field public static final uByteArrayFqName:Lkotlin/reflect/jvm/internal/impl/name/FqName;

.field public static final uByteFqName:Lkotlin/reflect/jvm/internal/impl/name/FqName;

.field public static final uInt:Lkotlin/reflect/jvm/internal/impl/name/ClassId;

.field public static final uIntArrayFqName:Lkotlin/reflect/jvm/internal/impl/name/FqName;

.field public static final uIntFqName:Lkotlin/reflect/jvm/internal/impl/name/FqName;

.field public static final uLong:Lkotlin/reflect/jvm/internal/impl/name/ClassId;

.field public static final uLongArrayFqName:Lkotlin/reflect/jvm/internal/impl/name/FqName;

.field public static final uLongFqName:Lkotlin/reflect/jvm/internal/impl/name/FqName;

.field public static final uShort:Lkotlin/reflect/jvm/internal/impl/name/ClassId;

.field public static final uShortArrayFqName:Lkotlin/reflect/jvm/internal/impl/name/FqName;

.field public static final uShortFqName:Lkotlin/reflect/jvm/internal/impl/name/FqName;

.field public static final unit:Lkotlin/reflect/jvm/internal/impl/name/FqNameUnsafe;

.field public static final unsafeVariance:Lkotlin/reflect/jvm/internal/impl/name/FqName;


# direct methods
.method static constructor <clinit>()V
    .registers 10

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/builtins/StandardNames$FqNames;

    invoke-direct {v0}, Lkotlin/reflect/jvm/internal/impl/builtins/StandardNames$FqNames;-><init>()V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/builtins/StandardNames$FqNames;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/builtins/StandardNames$FqNames;

    .line 113
    const-string v1, "Any"

    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/impl/builtins/StandardNames$FqNames;->fqNameUnsafe(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/FqNameUnsafe;

    move-result-object v1

    sput-object v1, Lkotlin/reflect/jvm/internal/impl/builtins/StandardNames$FqNames;->any:Lkotlin/reflect/jvm/internal/impl/name/FqNameUnsafe;

    .line 114
    const-string v1, "Nothing"

    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/impl/builtins/StandardNames$FqNames;->fqNameUnsafe(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/FqNameUnsafe;

    move-result-object v1

    sput-object v1, Lkotlin/reflect/jvm/internal/impl/builtins/StandardNames$FqNames;->nothing:Lkotlin/reflect/jvm/internal/impl/name/FqNameUnsafe;

    .line 115
    const-string v1, "Cloneable"

    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/impl/builtins/StandardNames$FqNames;->fqNameUnsafe(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/FqNameUnsafe;

    move-result-object v1

    sput-object v1, Lkotlin/reflect/jvm/internal/impl/builtins/StandardNames$FqNames;->cloneable:Lkotlin/reflect/jvm/internal/impl/name/FqNameUnsafe;

    .line 116
    const-string v1, "Suppress"

    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/impl/builtins/StandardNames$FqNames;->fqName(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/FqName;

    move-result-object v1

    sput-object v1, Lkotlin/reflect/jvm/internal/impl/builtins/StandardNames$FqNames;->suppress:Lkotlin/reflect/jvm/internal/impl/name/FqName;

    .line 117
    const-string v1, "Unit"

    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/impl/builtins/StandardNames$FqNames;->fqNameUnsafe(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/FqNameUnsafe;

    move-result-object v1

    sput-object v1, Lkotlin/reflect/jvm/internal/impl/builtins/StandardNames$FqNames;->unit:Lkotlin/reflect/jvm/internal/impl/name/FqNameUnsafe;

    .line 118
    const-string v1, "CharSequence"

    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/impl/builtins/StandardNames$FqNames;->fqNameUnsafe(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/FqNameUnsafe;

    move-result-object v1

    sput-object v1, Lkotlin/reflect/jvm/internal/impl/builtins/StandardNames$FqNames;->charSequence:Lkotlin/reflect/jvm/internal/impl/name/FqNameUnsafe;

    .line 119
    const-string v1, "String"

    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/impl/builtins/StandardNames$FqNames;->fqNameUnsafe(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/FqNameUnsafe;

    move-result-object v1

    sput-object v1, Lkotlin/reflect/jvm/internal/impl/builtins/StandardNames$FqNames;->string:Lkotlin/reflect/jvm/internal/impl/name/FqNameUnsafe;

    .line 120
    const-string v1, "Array"

    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/impl/builtins/StandardNames$FqNames;->fqNameUnsafe(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/FqNameUnsafe;

    move-result-object v1

    sput-object v1, Lkotlin/reflect/jvm/internal/impl/builtins/StandardNames$FqNames;->array:Lkotlin/reflect/jvm/internal/impl/name/FqNameUnsafe;

    .line 122
    const-string v1, "Boolean"

    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/impl/builtins/StandardNames$FqNames;->fqNameUnsafe(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/FqNameUnsafe;

    move-result-object v1

    sput-object v1, Lkotlin/reflect/jvm/internal/impl/builtins/StandardNames$FqNames;->_boolean:Lkotlin/reflect/jvm/internal/impl/name/FqNameUnsafe;

    .line 123
    const-string v1, "Char"

    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/impl/builtins/StandardNames$FqNames;->fqNameUnsafe(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/FqNameUnsafe;

    move-result-object v1

    sput-object v1, Lkotlin/reflect/jvm/internal/impl/builtins/StandardNames$FqNames;->_char:Lkotlin/reflect/jvm/internal/impl/name/FqNameUnsafe;

    .line 124
    const-string v1, "Byte"

    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/impl/builtins/StandardNames$FqNames;->fqNameUnsafe(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/FqNameUnsafe;

    move-result-object v1

    sput-object v1, Lkotlin/reflect/jvm/internal/impl/builtins/StandardNames$FqNames;->_byte:Lkotlin/reflect/jvm/internal/impl/name/FqNameUnsafe;

    .line 125
    const-string v1, "Short"

    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/impl/builtins/StandardNames$FqNames;->fqNameUnsafe(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/FqNameUnsafe;

    move-result-object v1

    sput-object v1, Lkotlin/reflect/jvm/internal/impl/builtins/StandardNames$FqNames;->_short:Lkotlin/reflect/jvm/internal/impl/name/FqNameUnsafe;

    .line 126
    const-string v1, "Int"

    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/impl/builtins/StandardNames$FqNames;->fqNameUnsafe(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/FqNameUnsafe;

    move-result-object v1

    sput-object v1, Lkotlin/reflect/jvm/internal/impl/builtins/StandardNames$FqNames;->_int:Lkotlin/reflect/jvm/internal/impl/name/FqNameUnsafe;

    .line 127
    const-string v1, "Long"

    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/impl/builtins/StandardNames$FqNames;->fqNameUnsafe(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/FqNameUnsafe;

    move-result-object v1

    sput-object v1, Lkotlin/reflect/jvm/internal/impl/builtins/StandardNames$FqNames;->_long:Lkotlin/reflect/jvm/internal/impl/name/FqNameUnsafe;

    .line 128
    const-string v1, "Float"

    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/impl/builtins/StandardNames$FqNames;->fqNameUnsafe(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/FqNameUnsafe;

    move-result-object v1

    sput-object v1, Lkotlin/reflect/jvm/internal/impl/builtins/StandardNames$FqNames;->_float:Lkotlin/reflect/jvm/internal/impl/name/FqNameUnsafe;

    .line 129
    const-string v1, "Double"

    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/impl/builtins/StandardNames$FqNames;->fqNameUnsafe(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/FqNameUnsafe;

    move-result-object v1

    sput-object v1, Lkotlin/reflect/jvm/internal/impl/builtins/StandardNames$FqNames;->_double:Lkotlin/reflect/jvm/internal/impl/name/FqNameUnsafe;

    .line 130
    const-string v1, "Number"

    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/impl/builtins/StandardNames$FqNames;->fqNameUnsafe(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/FqNameUnsafe;

    move-result-object v1

    sput-object v1, Lkotlin/reflect/jvm/internal/impl/builtins/StandardNames$FqNames;->number:Lkotlin/reflect/jvm/internal/impl/name/FqNameUnsafe;

    .line 132
    const-string v1, "Enum"

    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/impl/builtins/StandardNames$FqNames;->fqNameUnsafe(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/FqNameUnsafe;

    move-result-object v1

    sput-object v1, Lkotlin/reflect/jvm/internal/impl/builtins/StandardNames$FqNames;->_enum:Lkotlin/reflect/jvm/internal/impl/name/FqNameUnsafe;

    .line 134
    const-string v1, "Function"

    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/impl/builtins/StandardNames$FqNames;->fqNameUnsafe(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/FqNameUnsafe;

    move-result-object v1

    sput-object v1, Lkotlin/reflect/jvm/internal/impl/builtins/StandardNames$FqNames;->functionSupertype:Lkotlin/reflect/jvm/internal/impl/name/FqNameUnsafe;

    .line 136
    const-string v1, "Throwable"

    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/impl/builtins/StandardNames$FqNames;->fqName(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/FqName;

    move-result-object v1

    sput-object v1, Lkotlin/reflect/jvm/internal/impl/builtins/StandardNames$FqNames;->throwable:Lkotlin/reflect/jvm/internal/impl/name/FqName;

    .line 137
    const-string v1, "Comparable"

    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/impl/builtins/StandardNames$FqNames;->fqName(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/FqName;

    move-result-object v1

    sput-object v1, Lkotlin/reflect/jvm/internal/impl/builtins/StandardNames$FqNames;->comparable:Lkotlin/reflect/jvm/internal/impl/name/FqName;

    .line 139
    const-string v1, "IntRange"

    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/impl/builtins/StandardNames$FqNames;->rangesFqName(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/FqNameUnsafe;

    move-result-object v1

    sput-object v1, Lkotlin/reflect/jvm/internal/impl/builtins/StandardNames$FqNames;->intRange:Lkotlin/reflect/jvm/internal/impl/name/FqNameUnsafe;

    .line 140
    const-string v1, "LongRange"

    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/impl/builtins/StandardNames$FqNames;->rangesFqName(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/FqNameUnsafe;

    move-result-object v1

    sput-object v1, Lkotlin/reflect/jvm/internal/impl/builtins/StandardNames$FqNames;->longRange:Lkotlin/reflect/jvm/internal/impl/name/FqNameUnsafe;

    .line 142
    const-string v1, "Deprecated"

    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/impl/builtins/StandardNames$FqNames;->fqName(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/FqName;

    move-result-object v1

    sput-object v1, Lkotlin/reflect/jvm/internal/impl/builtins/StandardNames$FqNames;->deprecated:Lkotlin/reflect/jvm/internal/impl/name/FqName;

    .line 143
    const-string v1, "DeprecatedSinceKotlin"

    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/impl/builtins/StandardNames$FqNames;->fqName(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/FqName;

    move-result-object v1

    sput-object v1, Lkotlin/reflect/jvm/internal/impl/builtins/StandardNames$FqNames;->deprecatedSinceKotlin:Lkotlin/reflect/jvm/internal/impl/name/FqName;

    .line 144
    const-string v1, "DeprecationLevel"

    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/impl/builtins/StandardNames$FqNames;->fqName(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/FqName;

    move-result-object v1

    sput-object v1, Lkotlin/reflect/jvm/internal/impl/builtins/StandardNames$FqNames;->deprecationLevel:Lkotlin/reflect/jvm/internal/impl/name/FqName;

    .line 145
    const-string v1, "ReplaceWith"

    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/impl/builtins/StandardNames$FqNames;->fqName(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/FqName;

    move-result-object v1

    sput-object v1, Lkotlin/reflect/jvm/internal/impl/builtins/StandardNames$FqNames;->replaceWith:Lkotlin/reflect/jvm/internal/impl/name/FqName;

    .line 146
    const-string v1, "ExtensionFunctionType"

    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/impl/builtins/StandardNames$FqNames;->fqName(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/FqName;

    move-result-object v1

    sput-object v1, Lkotlin/reflect/jvm/internal/impl/builtins/StandardNames$FqNames;->extensionFunctionType:Lkotlin/reflect/jvm/internal/impl/name/FqName;

    .line 147
    const-string v1, "ContextFunctionTypeParams"

    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/impl/builtins/StandardNames$FqNames;->fqName(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/FqName;

    move-result-object v1

    sput-object v1, Lkotlin/reflect/jvm/internal/impl/builtins/StandardNames$FqNames;->contextFunctionTypeParams:Lkotlin/reflect/jvm/internal/impl/name/FqName;

    .line 148
    const-string v1, "ParameterName"

    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/impl/builtins/StandardNames$FqNames;->fqName(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/FqName;

    move-result-object v1

    sput-object v1, Lkotlin/reflect/jvm/internal/impl/builtins/StandardNames$FqNames;->parameterName:Lkotlin/reflect/jvm/internal/impl/name/FqName;

    .line 149
    sget-object v2, Lkotlin/reflect/jvm/internal/impl/name/ClassId;->Companion:Lkotlin/reflect/jvm/internal/impl/name/ClassId$Companion;

    invoke-virtual {v2, v1}, Lkotlin/reflect/jvm/internal/impl/name/ClassId$Companion;->topLevel(Lkotlin/reflect/jvm/internal/impl/name/FqName;)Lkotlin/reflect/jvm/internal/impl/name/ClassId;

    move-result-object v1

    sput-object v1, Lkotlin/reflect/jvm/internal/impl/builtins/StandardNames$FqNames;->parameterNameClassId:Lkotlin/reflect/jvm/internal/impl/name/ClassId;

    .line 150
    const-string v1, "Annotation"

    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/impl/builtins/StandardNames$FqNames;->fqName(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/FqName;

    move-result-object v1

    sput-object v1, Lkotlin/reflect/jvm/internal/impl/builtins/StandardNames$FqNames;->annotation:Lkotlin/reflect/jvm/internal/impl/name/FqName;

    .line 151
    const-string v1, "Target"

    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/impl/builtins/StandardNames$FqNames;->annotationName(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/FqName;

    move-result-object v1

    sput-object v1, Lkotlin/reflect/jvm/internal/impl/builtins/StandardNames$FqNames;->target:Lkotlin/reflect/jvm/internal/impl/name/FqName;

    .line 152
    sget-object v2, Lkotlin/reflect/jvm/internal/impl/name/ClassId;->Companion:Lkotlin/reflect/jvm/internal/impl/name/ClassId$Companion;

    invoke-virtual {v2, v1}, Lkotlin/reflect/jvm/internal/impl/name/ClassId$Companion;->topLevel(Lkotlin/reflect/jvm/internal/impl/name/FqName;)Lkotlin/reflect/jvm/internal/impl/name/ClassId;

    move-result-object v1

    sput-object v1, Lkotlin/reflect/jvm/internal/impl/builtins/StandardNames$FqNames;->targetClassId:Lkotlin/reflect/jvm/internal/impl/name/ClassId;

    .line 153
    const-string v1, "AnnotationTarget"

    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/impl/builtins/StandardNames$FqNames;->annotationName(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/FqName;

    move-result-object v1

    sput-object v1, Lkotlin/reflect/jvm/internal/impl/builtins/StandardNames$FqNames;->annotationTarget:Lkotlin/reflect/jvm/internal/impl/name/FqName;

    .line 154
    const-string v1, "AnnotationRetention"

    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/impl/builtins/StandardNames$FqNames;->annotationName(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/FqName;

    move-result-object v1

    sput-object v1, Lkotlin/reflect/jvm/internal/impl/builtins/StandardNames$FqNames;->annotationRetention:Lkotlin/reflect/jvm/internal/impl/name/FqName;

    .line 155
    const-string v1, "Retention"

    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/impl/builtins/StandardNames$FqNames;->annotationName(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/FqName;

    move-result-object v1

    sput-object v1, Lkotlin/reflect/jvm/internal/impl/builtins/StandardNames$FqNames;->retention:Lkotlin/reflect/jvm/internal/impl/name/FqName;

    .line 156
    sget-object v2, Lkotlin/reflect/jvm/internal/impl/name/ClassId;->Companion:Lkotlin/reflect/jvm/internal/impl/name/ClassId$Companion;

    invoke-virtual {v2, v1}, Lkotlin/reflect/jvm/internal/impl/name/ClassId$Companion;->topLevel(Lkotlin/reflect/jvm/internal/impl/name/FqName;)Lkotlin/reflect/jvm/internal/impl/name/ClassId;

    move-result-object v1

    sput-object v1, Lkotlin/reflect/jvm/internal/impl/builtins/StandardNames$FqNames;->retentionClassId:Lkotlin/reflect/jvm/internal/impl/name/ClassId;

    .line 157
    const-string v1, "Repeatable"

    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/impl/builtins/StandardNames$FqNames;->annotationName(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/FqName;

    move-result-object v1

    sput-object v1, Lkotlin/reflect/jvm/internal/impl/builtins/StandardNames$FqNames;->repeatable:Lkotlin/reflect/jvm/internal/impl/name/FqName;

    .line 158
    sget-object v2, Lkotlin/reflect/jvm/internal/impl/name/ClassId;->Companion:Lkotlin/reflect/jvm/internal/impl/name/ClassId$Companion;

    invoke-virtual {v2, v1}, Lkotlin/reflect/jvm/internal/impl/name/ClassId$Companion;->topLevel(Lkotlin/reflect/jvm/internal/impl/name/FqName;)Lkotlin/reflect/jvm/internal/impl/name/ClassId;

    move-result-object v1

    sput-object v1, Lkotlin/reflect/jvm/internal/impl/builtins/StandardNames$FqNames;->repeatableClassId:Lkotlin/reflect/jvm/internal/impl/name/ClassId;

    .line 159
    const-string v1, "MustBeDocumented"

    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/impl/builtins/StandardNames$FqNames;->annotationName(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/FqName;

    move-result-object v1

    sput-object v1, Lkotlin/reflect/jvm/internal/impl/builtins/StandardNames$FqNames;->mustBeDocumented:Lkotlin/reflect/jvm/internal/impl/name/FqName;

    .line 160
    const-string v1, "UnsafeVariance"

    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/impl/builtins/StandardNames$FqNames;->fqName(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/FqName;

    move-result-object v1

    sput-object v1, Lkotlin/reflect/jvm/internal/impl/builtins/StandardNames$FqNames;->unsafeVariance:Lkotlin/reflect/jvm/internal/impl/name/FqName;

    .line 161
    const-string v1, "PublishedApi"

    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/impl/builtins/StandardNames$FqNames;->fqName(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/FqName;

    move-result-object v1

    sput-object v1, Lkotlin/reflect/jvm/internal/impl/builtins/StandardNames$FqNames;->publishedApi:Lkotlin/reflect/jvm/internal/impl/name/FqName;

    .line 162
    const-string v1, "AccessibleLateinitPropertyLiteral"

    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/impl/builtins/StandardNames$FqNames;->internalName(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/FqName;

    move-result-object v1

    sput-object v1, Lkotlin/reflect/jvm/internal/impl/builtins/StandardNames$FqNames;->accessibleLateinitPropertyLiteral:Lkotlin/reflect/jvm/internal/impl/name/FqName;

    .line 163
    new-instance v1, Lkotlin/reflect/jvm/internal/impl/name/FqName;

    const-string v2, "kotlin.internal.PlatformDependent"

    invoke-direct {v1, v2}, Lkotlin/reflect/jvm/internal/impl/name/FqName;-><init>(Ljava/lang/String;)V

    sput-object v1, Lkotlin/reflect/jvm/internal/impl/builtins/StandardNames$FqNames;->platformDependent:Lkotlin/reflect/jvm/internal/impl/name/FqName;

    .line 164
    sget-object v2, Lkotlin/reflect/jvm/internal/impl/name/ClassId;->Companion:Lkotlin/reflect/jvm/internal/impl/name/ClassId$Companion;

    invoke-virtual {v2, v1}, Lkotlin/reflect/jvm/internal/impl/name/ClassId$Companion;->topLevel(Lkotlin/reflect/jvm/internal/impl/name/FqName;)Lkotlin/reflect/jvm/internal/impl/name/ClassId;

    move-result-object v1

    sput-object v1, Lkotlin/reflect/jvm/internal/impl/builtins/StandardNames$FqNames;->platformDependentClassId:Lkotlin/reflect/jvm/internal/impl/name/ClassId;

    .line 166
    const-string v1, "Iterator"

    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/impl/builtins/StandardNames$FqNames;->collectionsFqName(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/FqName;

    move-result-object v1

    sput-object v1, Lkotlin/reflect/jvm/internal/impl/builtins/StandardNames$FqNames;->iterator:Lkotlin/reflect/jvm/internal/impl/name/FqName;

    .line 167
    const-string v1, "Iterable"

    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/impl/builtins/StandardNames$FqNames;->collectionsFqName(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/FqName;

    move-result-object v1

    sput-object v1, Lkotlin/reflect/jvm/internal/impl/builtins/StandardNames$FqNames;->iterable:Lkotlin/reflect/jvm/internal/impl/name/FqName;

    .line 168
    const-string v1, "Collection"

    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/impl/builtins/StandardNames$FqNames;->collectionsFqName(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/FqName;

    move-result-object v1

    sput-object v1, Lkotlin/reflect/jvm/internal/impl/builtins/StandardNames$FqNames;->collection:Lkotlin/reflect/jvm/internal/impl/name/FqName;

    .line 169
    const-string v1, "List"

    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/impl/builtins/StandardNames$FqNames;->collectionsFqName(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/FqName;

    move-result-object v1

    sput-object v1, Lkotlin/reflect/jvm/internal/impl/builtins/StandardNames$FqNames;->list:Lkotlin/reflect/jvm/internal/impl/name/FqName;

    .line 170
    const-string v1, "ListIterator"

    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/impl/builtins/StandardNames$FqNames;->collectionsFqName(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/FqName;

    move-result-object v1

    sput-object v1, Lkotlin/reflect/jvm/internal/impl/builtins/StandardNames$FqNames;->listIterator:Lkotlin/reflect/jvm/internal/impl/name/FqName;

    .line 171
    const-string v1, "Set"

    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/impl/builtins/StandardNames$FqNames;->collectionsFqName(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/FqName;

    move-result-object v1

    sput-object v1, Lkotlin/reflect/jvm/internal/impl/builtins/StandardNames$FqNames;->set:Lkotlin/reflect/jvm/internal/impl/name/FqName;

    .line 172
    const-string v1, "Map"

    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/impl/builtins/StandardNames$FqNames;->collectionsFqName(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/FqName;

    move-result-object v1

    sput-object v1, Lkotlin/reflect/jvm/internal/impl/builtins/StandardNames$FqNames;->map:Lkotlin/reflect/jvm/internal/impl/name/FqName;

    .line 173
    const-string v2, "Entry"

    invoke-static {v2}, Lkotlin/reflect/jvm/internal/impl/name/Name;->identifier(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/Name;

    move-result-object v2

    const-string v3, "identifier(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lkotlin/reflect/jvm/internal/impl/name/FqName;->child(Lkotlin/reflect/jvm/internal/impl/name/Name;)Lkotlin/reflect/jvm/internal/impl/name/FqName;

    move-result-object v1

    sput-object v1, Lkotlin/reflect/jvm/internal/impl/builtins/StandardNames$FqNames;->mapEntry:Lkotlin/reflect/jvm/internal/impl/name/FqName;

    .line 174
    const-string v1, "MutableIterator"

    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/impl/builtins/StandardNames$FqNames;->collectionsFqName(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/FqName;

    move-result-object v1

    sput-object v1, Lkotlin/reflect/jvm/internal/impl/builtins/StandardNames$FqNames;->mutableIterator:Lkotlin/reflect/jvm/internal/impl/name/FqName;

    .line 175
    const-string v1, "MutableIterable"

    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/impl/builtins/StandardNames$FqNames;->collectionsFqName(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/FqName;

    move-result-object v1

    sput-object v1, Lkotlin/reflect/jvm/internal/impl/builtins/StandardNames$FqNames;->mutableIterable:Lkotlin/reflect/jvm/internal/impl/name/FqName;

    .line 176
    const-string v1, "MutableCollection"

    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/impl/builtins/StandardNames$FqNames;->collectionsFqName(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/FqName;

    move-result-object v1

    sput-object v1, Lkotlin/reflect/jvm/internal/impl/builtins/StandardNames$FqNames;->mutableCollection:Lkotlin/reflect/jvm/internal/impl/name/FqName;

    .line 177
    const-string v1, "MutableList"

    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/impl/builtins/StandardNames$FqNames;->collectionsFqName(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/FqName;

    move-result-object v1

    sput-object v1, Lkotlin/reflect/jvm/internal/impl/builtins/StandardNames$FqNames;->mutableList:Lkotlin/reflect/jvm/internal/impl/name/FqName;

    .line 178
    const-string v1, "MutableListIterator"

    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/impl/builtins/StandardNames$FqNames;->collectionsFqName(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/FqName;

    move-result-object v1

    sput-object v1, Lkotlin/reflect/jvm/internal/impl/builtins/StandardNames$FqNames;->mutableListIterator:Lkotlin/reflect/jvm/internal/impl/name/FqName;

    .line 179
    const-string v1, "MutableSet"

    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/impl/builtins/StandardNames$FqNames;->collectionsFqName(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/FqName;

    move-result-object v1

    sput-object v1, Lkotlin/reflect/jvm/internal/impl/builtins/StandardNames$FqNames;->mutableSet:Lkotlin/reflect/jvm/internal/impl/name/FqName;

    .line 180
    const-string v1, "MutableMap"

    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/impl/builtins/StandardNames$FqNames;->collectionsFqName(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/FqName;

    move-result-object v1

    sput-object v1, Lkotlin/reflect/jvm/internal/impl/builtins/StandardNames$FqNames;->mutableMap:Lkotlin/reflect/jvm/internal/impl/name/FqName;

    .line 181
    const-string v2, "MutableEntry"

    invoke-static {v2}, Lkotlin/reflect/jvm/internal/impl/name/Name;->identifier(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/Name;

    move-result-object v2

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lkotlin/reflect/jvm/internal/impl/name/FqName;->child(Lkotlin/reflect/jvm/internal/impl/name/Name;)Lkotlin/reflect/jvm/internal/impl/name/FqName;

    move-result-object v1

    sput-object v1, Lkotlin/reflect/jvm/internal/impl/builtins/StandardNames$FqNames;->mutableMapEntry:Lkotlin/reflect/jvm/internal/impl/name/FqName;

    .line 183
    const-string v1, "KClass"

    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/builtins/StandardNames$FqNames;->reflect(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/FqNameUnsafe;

    move-result-object v1

    sput-object v1, Lkotlin/reflect/jvm/internal/impl/builtins/StandardNames$FqNames;->kClass:Lkotlin/reflect/jvm/internal/impl/name/FqNameUnsafe;

    .line 184
    const-string v1, "KType"

    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/builtins/StandardNames$FqNames;->reflect(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/FqNameUnsafe;

    move-result-object v1

    sput-object v1, Lkotlin/reflect/jvm/internal/impl/builtins/StandardNames$FqNames;->kType:Lkotlin/reflect/jvm/internal/impl/name/FqNameUnsafe;

    .line 185
    const-string v1, "KCallable"

    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/builtins/StandardNames$FqNames;->reflect(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/FqNameUnsafe;

    move-result-object v1

    sput-object v1, Lkotlin/reflect/jvm/internal/impl/builtins/StandardNames$FqNames;->kCallable:Lkotlin/reflect/jvm/internal/impl/name/FqNameUnsafe;

    .line 186
    const-string v1, "KProperty0"

    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/builtins/StandardNames$FqNames;->reflect(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/FqNameUnsafe;

    move-result-object v1

    sput-object v1, Lkotlin/reflect/jvm/internal/impl/builtins/StandardNames$FqNames;->kProperty0:Lkotlin/reflect/jvm/internal/impl/name/FqNameUnsafe;

    .line 187
    const-string v1, "KProperty1"

    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/builtins/StandardNames$FqNames;->reflect(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/FqNameUnsafe;

    move-result-object v1

    sput-object v1, Lkotlin/reflect/jvm/internal/impl/builtins/StandardNames$FqNames;->kProperty1:Lkotlin/reflect/jvm/internal/impl/name/FqNameUnsafe;

    .line 188
    const-string v1, "KProperty2"

    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/builtins/StandardNames$FqNames;->reflect(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/FqNameUnsafe;

    move-result-object v1

    sput-object v1, Lkotlin/reflect/jvm/internal/impl/builtins/StandardNames$FqNames;->kProperty2:Lkotlin/reflect/jvm/internal/impl/name/FqNameUnsafe;

    .line 189
    const-string v1, "KMutableProperty0"

    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/builtins/StandardNames$FqNames;->reflect(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/FqNameUnsafe;

    move-result-object v1

    sput-object v1, Lkotlin/reflect/jvm/internal/impl/builtins/StandardNames$FqNames;->kMutableProperty0:Lkotlin/reflect/jvm/internal/impl/name/FqNameUnsafe;

    .line 190
    const-string v1, "KMutableProperty1"

    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/builtins/StandardNames$FqNames;->reflect(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/FqNameUnsafe;

    move-result-object v1

    sput-object v1, Lkotlin/reflect/jvm/internal/impl/builtins/StandardNames$FqNames;->kMutableProperty1:Lkotlin/reflect/jvm/internal/impl/name/FqNameUnsafe;

    .line 191
    const-string v1, "KMutableProperty2"

    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/builtins/StandardNames$FqNames;->reflect(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/FqNameUnsafe;

    move-result-object v1

    sput-object v1, Lkotlin/reflect/jvm/internal/impl/builtins/StandardNames$FqNames;->kMutableProperty2:Lkotlin/reflect/jvm/internal/impl/name/FqNameUnsafe;

    .line 192
    const-string v1, "KProperty"

    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/builtins/StandardNames$FqNames;->reflect(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/FqNameUnsafe;

    move-result-object v1

    sput-object v1, Lkotlin/reflect/jvm/internal/impl/builtins/StandardNames$FqNames;->kPropertyFqName:Lkotlin/reflect/jvm/internal/impl/name/FqNameUnsafe;

    .line 193
    const-string v2, "KMutableProperty"

    invoke-static {v2}, Lkotlin/reflect/jvm/internal/impl/builtins/StandardNames$FqNames;->reflect(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/FqNameUnsafe;

    move-result-object v2

    sput-object v2, Lkotlin/reflect/jvm/internal/impl/builtins/StandardNames$FqNames;->kMutablePropertyFqName:Lkotlin/reflect/jvm/internal/impl/name/FqNameUnsafe;

    .line 194
    sget-object v2, Lkotlin/reflect/jvm/internal/impl/name/ClassId;->Companion:Lkotlin/reflect/jvm/internal/impl/name/ClassId$Companion;

    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/impl/name/FqNameUnsafe;->toSafe()Lkotlin/reflect/jvm/internal/impl/name/FqName;

    move-result-object v1

    invoke-virtual {v2, v1}, Lkotlin/reflect/jvm/internal/impl/name/ClassId$Companion;->topLevel(Lkotlin/reflect/jvm/internal/impl/name/FqName;)Lkotlin/reflect/jvm/internal/impl/name/ClassId;

    move-result-object v1

    sput-object v1, Lkotlin/reflect/jvm/internal/impl/builtins/StandardNames$FqNames;->kProperty:Lkotlin/reflect/jvm/internal/impl/name/ClassId;

    .line 195
    const-string v1, "KDeclarationContainer"

    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/builtins/StandardNames$FqNames;->reflect(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/FqNameUnsafe;

    move-result-object v1

    sput-object v1, Lkotlin/reflect/jvm/internal/impl/builtins/StandardNames$FqNames;->kDeclarationContainer:Lkotlin/reflect/jvm/internal/impl/name/FqNameUnsafe;

    .line 196
    const-string v1, "findAssociatedObject"

    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/builtins/StandardNames$FqNames;->reflect(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/FqNameUnsafe;

    move-result-object v1

    sput-object v1, Lkotlin/reflect/jvm/internal/impl/builtins/StandardNames$FqNames;->findAssociatedObject:Lkotlin/reflect/jvm/internal/impl/name/FqNameUnsafe;

    .line 198
    const-string v1, "UByte"

    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/impl/builtins/StandardNames$FqNames;->fqName(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/FqName;

    move-result-object v1

    sput-object v1, Lkotlin/reflect/jvm/internal/impl/builtins/StandardNames$FqNames;->uByteFqName:Lkotlin/reflect/jvm/internal/impl/name/FqName;

    .line 199
    const-string v2, "UShort"

    invoke-direct {v0, v2}, Lkotlin/reflect/jvm/internal/impl/builtins/StandardNames$FqNames;->fqName(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/FqName;

    move-result-object v2

    sput-object v2, Lkotlin/reflect/jvm/internal/impl/builtins/StandardNames$FqNames;->uShortFqName:Lkotlin/reflect/jvm/internal/impl/name/FqName;

    .line 200
    const-string v3, "UInt"

    invoke-direct {v0, v3}, Lkotlin/reflect/jvm/internal/impl/builtins/StandardNames$FqNames;->fqName(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/FqName;

    move-result-object v3

    sput-object v3, Lkotlin/reflect/jvm/internal/impl/builtins/StandardNames$FqNames;->uIntFqName:Lkotlin/reflect/jvm/internal/impl/name/FqName;

    .line 201
    const-string v4, "ULong"

    invoke-direct {v0, v4}, Lkotlin/reflect/jvm/internal/impl/builtins/StandardNames$FqNames;->fqName(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/FqName;

    move-result-object v4

    sput-object v4, Lkotlin/reflect/jvm/internal/impl/builtins/StandardNames$FqNames;->uLongFqName:Lkotlin/reflect/jvm/internal/impl/name/FqName;

    .line 202
    sget-object v5, Lkotlin/reflect/jvm/internal/impl/name/ClassId;->Companion:Lkotlin/reflect/jvm/internal/impl/name/ClassId$Companion;

    invoke-virtual {v5, v1}, Lkotlin/reflect/jvm/internal/impl/name/ClassId$Companion;->topLevel(Lkotlin/reflect/jvm/internal/impl/name/FqName;)Lkotlin/reflect/jvm/internal/impl/name/ClassId;

    move-result-object v1

    sput-object v1, Lkotlin/reflect/jvm/internal/impl/builtins/StandardNames$FqNames;->uByte:Lkotlin/reflect/jvm/internal/impl/name/ClassId;

    .line 203
    sget-object v1, Lkotlin/reflect/jvm/internal/impl/name/ClassId;->Companion:Lkotlin/reflect/jvm/internal/impl/name/ClassId$Companion;

    invoke-virtual {v1, v2}, Lkotlin/reflect/jvm/internal/impl/name/ClassId$Companion;->topLevel(Lkotlin/reflect/jvm/internal/impl/name/FqName;)Lkotlin/reflect/jvm/internal/impl/name/ClassId;

    move-result-object v1

    sput-object v1, Lkotlin/reflect/jvm/internal/impl/builtins/StandardNames$FqNames;->uShort:Lkotlin/reflect/jvm/internal/impl/name/ClassId;

    .line 204
    sget-object v1, Lkotlin/reflect/jvm/internal/impl/name/ClassId;->Companion:Lkotlin/reflect/jvm/internal/impl/name/ClassId$Companion;

    invoke-virtual {v1, v3}, Lkotlin/reflect/jvm/internal/impl/name/ClassId$Companion;->topLevel(Lkotlin/reflect/jvm/internal/impl/name/FqName;)Lkotlin/reflect/jvm/internal/impl/name/ClassId;

    move-result-object v1

    sput-object v1, Lkotlin/reflect/jvm/internal/impl/builtins/StandardNames$FqNames;->uInt:Lkotlin/reflect/jvm/internal/impl/name/ClassId;

    .line 205
    sget-object v1, Lkotlin/reflect/jvm/internal/impl/name/ClassId;->Companion:Lkotlin/reflect/jvm/internal/impl/name/ClassId$Companion;

    invoke-virtual {v1, v4}, Lkotlin/reflect/jvm/internal/impl/name/ClassId$Companion;->topLevel(Lkotlin/reflect/jvm/internal/impl/name/FqName;)Lkotlin/reflect/jvm/internal/impl/name/ClassId;

    move-result-object v1

    sput-object v1, Lkotlin/reflect/jvm/internal/impl/builtins/StandardNames$FqNames;->uLong:Lkotlin/reflect/jvm/internal/impl/name/ClassId;

    .line 206
    const-string v1, "UByteArray"

    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/impl/builtins/StandardNames$FqNames;->fqName(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/FqName;

    move-result-object v1

    sput-object v1, Lkotlin/reflect/jvm/internal/impl/builtins/StandardNames$FqNames;->uByteArrayFqName:Lkotlin/reflect/jvm/internal/impl/name/FqName;

    .line 207
    const-string v1, "UShortArray"

    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/impl/builtins/StandardNames$FqNames;->fqName(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/FqName;

    move-result-object v1

    sput-object v1, Lkotlin/reflect/jvm/internal/impl/builtins/StandardNames$FqNames;->uShortArrayFqName:Lkotlin/reflect/jvm/internal/impl/name/FqName;

    .line 208
    const-string v1, "UIntArray"

    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/impl/builtins/StandardNames$FqNames;->fqName(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/FqName;

    move-result-object v1

    sput-object v1, Lkotlin/reflect/jvm/internal/impl/builtins/StandardNames$FqNames;->uIntArrayFqName:Lkotlin/reflect/jvm/internal/impl/name/FqName;

    .line 209
    const-string v1, "ULongArray"

    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/impl/builtins/StandardNames$FqNames;->fqName(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/FqName;

    move-result-object v1

    sput-object v1, Lkotlin/reflect/jvm/internal/impl/builtins/StandardNames$FqNames;->uLongArrayFqName:Lkotlin/reflect/jvm/internal/impl/name/FqName;

    .line 211
    const-string v1, "AtomicInt"

    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/impl/builtins/StandardNames$FqNames;->concurrentAtomics(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/FqName;

    move-result-object v1

    sput-object v1, Lkotlin/reflect/jvm/internal/impl/builtins/StandardNames$FqNames;->atomicInt:Lkotlin/reflect/jvm/internal/impl/name/FqName;

    .line 212
    const-string v1, "AtomicLong"

    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/impl/builtins/StandardNames$FqNames;->concurrentAtomics(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/FqName;

    move-result-object v1

    sput-object v1, Lkotlin/reflect/jvm/internal/impl/builtins/StandardNames$FqNames;->atomicLong:Lkotlin/reflect/jvm/internal/impl/name/FqName;

    .line 213
    const-string v1, "AtomicBoolean"

    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/impl/builtins/StandardNames$FqNames;->concurrentAtomics(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/FqName;

    move-result-object v1

    sput-object v1, Lkotlin/reflect/jvm/internal/impl/builtins/StandardNames$FqNames;->atomicBoolean:Lkotlin/reflect/jvm/internal/impl/name/FqName;

    .line 214
    const-string v1, "AtomicReference"

    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/impl/builtins/StandardNames$FqNames;->concurrentAtomics(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/FqName;

    move-result-object v1

    sput-object v1, Lkotlin/reflect/jvm/internal/impl/builtins/StandardNames$FqNames;->atomicReference:Lkotlin/reflect/jvm/internal/impl/name/FqName;

    .line 215
    const-string v1, "AtomicIntArray"

    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/impl/builtins/StandardNames$FqNames;->concurrentAtomics(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/FqName;

    move-result-object v1

    sput-object v1, Lkotlin/reflect/jvm/internal/impl/builtins/StandardNames$FqNames;->atomicIntArray:Lkotlin/reflect/jvm/internal/impl/name/FqName;

    .line 216
    const-string v1, "AtomicLongArray"

    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/impl/builtins/StandardNames$FqNames;->concurrentAtomics(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/FqName;

    move-result-object v1

    sput-object v1, Lkotlin/reflect/jvm/internal/impl/builtins/StandardNames$FqNames;->atomicLongArray:Lkotlin/reflect/jvm/internal/impl/name/FqName;

    .line 217
    const-string v1, "AtomicArray"

    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/impl/builtins/StandardNames$FqNames;->concurrentAtomics(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/FqName;

    move-result-object v0

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/builtins/StandardNames$FqNames;->atomicArray:Lkotlin/reflect/jvm/internal/impl/name/FqName;

    .line 219
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/builtins/PrimitiveType;->values()[Lkotlin/reflect/jvm/internal/impl/builtins/PrimitiveType;

    move-result-object v0

    array-length v0, v0

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/utils/CollectionsKt;->newHashSetWithExpectedSize(I)Ljava/util/HashSet;

    move-result-object v0

    .line 220
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/builtins/PrimitiveType;->values()[Lkotlin/reflect/jvm/internal/impl/builtins/PrimitiveType;

    move-result-object v1

    .line 333
    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_324
    if-ge v4, v2, :cond_335

    aget-object v5, v1, v4

    .line 334
    move-object v6, v0

    check-cast v6, Ljava/util/Collection;

    .line 220
    invoke-virtual {v5}, Lkotlin/reflect/jvm/internal/impl/builtins/PrimitiveType;->getTypeName()Lkotlin/reflect/jvm/internal/impl/name/Name;

    move-result-object v5

    .line 334
    invoke-interface {v6, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_324

    .line 335
    :cond_335
    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    .line 219
    check-cast v0, Ljava/util/Set;

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/builtins/StandardNames$FqNames;->primitiveTypeShortNames:Ljava/util/Set;

    .line 223
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/builtins/PrimitiveType;->values()[Lkotlin/reflect/jvm/internal/impl/builtins/PrimitiveType;

    move-result-object v0

    array-length v0, v0

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/utils/CollectionsKt;->newHashSetWithExpectedSize(I)Ljava/util/HashSet;

    move-result-object v0

    .line 224
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/builtins/PrimitiveType;->values()[Lkotlin/reflect/jvm/internal/impl/builtins/PrimitiveType;

    move-result-object v1

    .line 336
    array-length v2, v1

    const/4 v4, 0x0

    :goto_34b
    if-ge v4, v2, :cond_35c

    aget-object v5, v1, v4

    .line 337
    move-object v6, v0

    check-cast v6, Ljava/util/Collection;

    .line 224
    invoke-virtual {v5}, Lkotlin/reflect/jvm/internal/impl/builtins/PrimitiveType;->getArrayTypeName()Lkotlin/reflect/jvm/internal/impl/name/Name;

    move-result-object v5

    .line 337
    invoke-interface {v6, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_34b

    .line 338
    :cond_35c
    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    .line 223
    check-cast v0, Ljava/util/Set;

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/builtins/StandardNames$FqNames;->primitiveArrayTypeShortNames:Ljava/util/Set;

    .line 228
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/builtins/PrimitiveType;->values()[Lkotlin/reflect/jvm/internal/impl/builtins/PrimitiveType;

    move-result-object v0

    array-length v0, v0

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/utils/CollectionsKt;->newHashMapWithExpectedSize(I)Ljava/util/HashMap;

    move-result-object v0

    .line 229
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/builtins/PrimitiveType;->values()[Lkotlin/reflect/jvm/internal/impl/builtins/PrimitiveType;

    move-result-object v1

    array-length v2, v1

    const/4 v4, 0x0

    :goto_372
    const-string v5, "asString(...)"

    if-ge v4, v2, :cond_392

    aget-object v6, v1, v4

    .line 230
    move-object v7, v0

    check-cast v7, Ljava/util/Map;

    sget-object v8, Lkotlin/reflect/jvm/internal/impl/builtins/StandardNames$FqNames;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/builtins/StandardNames$FqNames;

    invoke-virtual {v6}, Lkotlin/reflect/jvm/internal/impl/builtins/PrimitiveType;->getTypeName()Lkotlin/reflect/jvm/internal/impl/name/Name;

    move-result-object v9

    invoke-virtual {v9}, Lkotlin/reflect/jvm/internal/impl/name/Name;->asString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v8, v9}, Lkotlin/reflect/jvm/internal/impl/builtins/StandardNames$FqNames;->fqNameUnsafe(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/FqNameUnsafe;

    move-result-object v5

    invoke-interface {v7, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v4, v4, 0x1

    goto :goto_372

    .line 228
    :cond_392
    check-cast v0, Ljava/util/Map;

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/builtins/StandardNames$FqNames;->fqNameToPrimitiveType:Ljava/util/Map;

    .line 235
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/builtins/PrimitiveType;->values()[Lkotlin/reflect/jvm/internal/impl/builtins/PrimitiveType;

    move-result-object v0

    array-length v0, v0

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/utils/CollectionsKt;->newHashMapWithExpectedSize(I)Ljava/util/HashMap;

    move-result-object v0

    .line 236
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/builtins/PrimitiveType;->values()[Lkotlin/reflect/jvm/internal/impl/builtins/PrimitiveType;

    move-result-object v1

    array-length v2, v1

    :goto_3a4
    if-ge v3, v2, :cond_3c2

    aget-object v4, v1, v3

    .line 237
    move-object v6, v0

    check-cast v6, Ljava/util/Map;

    sget-object v7, Lkotlin/reflect/jvm/internal/impl/builtins/StandardNames$FqNames;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/builtins/StandardNames$FqNames;

    invoke-virtual {v4}, Lkotlin/reflect/jvm/internal/impl/builtins/PrimitiveType;->getArrayTypeName()Lkotlin/reflect/jvm/internal/impl/name/Name;

    move-result-object v8

    invoke-virtual {v8}, Lkotlin/reflect/jvm/internal/impl/name/Name;->asString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v7, v8}, Lkotlin/reflect/jvm/internal/impl/builtins/StandardNames$FqNames;->fqNameUnsafe(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/FqNameUnsafe;

    move-result-object v7

    invoke-interface {v6, v7, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_3a4

    .line 235
    :cond_3c2
    check-cast v0, Ljava/util/Map;

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/builtins/StandardNames$FqNames;->arrayClassFqNameToPrimitiveType:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final annotationName(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/FqName;
    .registers 4

    .line 264
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/builtins/StandardNames;->ANNOTATION_PACKAGE_FQ_NAME:Lkotlin/reflect/jvm/internal/impl/name/FqName;

    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/name/Name;->identifier(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/Name;

    move-result-object p1

    const-string v1, "identifier(...)"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lkotlin/reflect/jvm/internal/impl/name/FqName;->child(Lkotlin/reflect/jvm/internal/impl/name/Name;)Lkotlin/reflect/jvm/internal/impl/name/FqName;

    move-result-object p1

    return-object p1
.end method

.method private final collectionsFqName(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/FqName;
    .registers 4

    .line 251
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/builtins/StandardNames;->COLLECTIONS_PACKAGE_FQ_NAME:Lkotlin/reflect/jvm/internal/impl/name/FqName;

    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/name/Name;->identifier(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/Name;

    move-result-object p1

    const-string v1, "identifier(...)"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lkotlin/reflect/jvm/internal/impl/name/FqName;->child(Lkotlin/reflect/jvm/internal/impl/name/Name;)Lkotlin/reflect/jvm/internal/impl/name/FqName;

    move-result-object p1

    return-object p1
.end method

.method private final concurrentAtomics(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/FqName;
    .registers 4

    .line 276
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/builtins/StandardNames;->CONCURRENT_ATOMICS_PACKAGE_FQ_NAME:Lkotlin/reflect/jvm/internal/impl/name/FqName;

    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/name/Name;->identifier(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/Name;

    move-result-object p1

    const-string v1, "identifier(...)"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lkotlin/reflect/jvm/internal/impl/name/FqName;->child(Lkotlin/reflect/jvm/internal/impl/name/Name;)Lkotlin/reflect/jvm/internal/impl/name/FqName;

    move-result-object p1

    return-object p1
.end method

.method private final fqName(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/FqName;
    .registers 4

    .line 247
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/builtins/StandardNames;->BUILT_INS_PACKAGE_FQ_NAME:Lkotlin/reflect/jvm/internal/impl/name/FqName;

    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/name/Name;->identifier(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/Name;

    move-result-object p1

    const-string v1, "identifier(...)"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lkotlin/reflect/jvm/internal/impl/name/FqName;->child(Lkotlin/reflect/jvm/internal/impl/name/Name;)Lkotlin/reflect/jvm/internal/impl/name/FqName;

    move-result-object p1

    return-object p1
.end method

.method private final fqNameUnsafe(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/FqNameUnsafe;
    .registers 2

    .line 243
    invoke-direct {p0, p1}, Lkotlin/reflect/jvm/internal/impl/builtins/StandardNames$FqNames;->fqName(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/FqName;

    move-result-object p1

    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/name/FqName;->toUnsafe()Lkotlin/reflect/jvm/internal/impl/name/FqNameUnsafe;

    move-result-object p1

    return-object p1
.end method

.method private final internalName(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/FqName;
    .registers 4

    .line 268
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/builtins/StandardNames;->KOTLIN_INTERNAL_FQ_NAME:Lkotlin/reflect/jvm/internal/impl/name/FqName;

    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/name/Name;->identifier(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/Name;

    move-result-object p1

    const-string v1, "identifier(...)"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lkotlin/reflect/jvm/internal/impl/name/FqName;->child(Lkotlin/reflect/jvm/internal/impl/name/Name;)Lkotlin/reflect/jvm/internal/impl/name/FqName;

    move-result-object p1

    return-object p1
.end method

.method private final rangesFqName(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/FqNameUnsafe;
    .registers 4

    .line 255
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/builtins/StandardNames;->RANGES_PACKAGE_FQ_NAME:Lkotlin/reflect/jvm/internal/impl/name/FqName;

    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/name/Name;->identifier(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/Name;

    move-result-object p1

    const-string v1, "identifier(...)"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lkotlin/reflect/jvm/internal/impl/name/FqName;->child(Lkotlin/reflect/jvm/internal/impl/name/Name;)Lkotlin/reflect/jvm/internal/impl/name/FqName;

    move-result-object p1

    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/name/FqName;->toUnsafe()Lkotlin/reflect/jvm/internal/impl/name/FqNameUnsafe;

    move-result-object p1

    return-object p1
.end method

.method public static final reflect(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/FqNameUnsafe;
    .registers 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "simpleName"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 260
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/builtins/StandardNames;->KOTLIN_REFLECT_FQ_NAME:Lkotlin/reflect/jvm/internal/impl/name/FqName;

    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/name/Name;->identifier(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/Name;

    move-result-object p0

    const-string v1, "identifier(...)"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Lkotlin/reflect/jvm/internal/impl/name/FqName;->child(Lkotlin/reflect/jvm/internal/impl/name/Name;)Lkotlin/reflect/jvm/internal/impl/name/FqName;

    move-result-object p0

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/name/FqName;->toUnsafe()Lkotlin/reflect/jvm/internal/impl/name/FqNameUnsafe;

    move-result-object p0

    return-object p0
.end method
