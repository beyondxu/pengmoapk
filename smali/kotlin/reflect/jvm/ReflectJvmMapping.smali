###### Class kotlin.reflect.jvm.ReflectJvmMapping (kotlin.reflect.jvm.ReflectJvmMapping)
.class public final Lkotlin/reflect/jvm/ReflectJvmMapping;
.super Ljava/lang/Object;
.source "ReflectJvmMapping.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/reflect/jvm/ReflectJvmMapping$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nReflectJvmMapping.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ReflectJvmMapping.kt\nkotlin/reflect/jvm/ReflectJvmMapping\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,179:1\n1#2:180\n295#3,2:181\n*S KotlinDebug\n*F\n+ 1 ReflectJvmMapping.kt\nkotlin/reflect/jvm/ReflectJvmMapping\n*L\n177#1:181,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000Z\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u001e\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0000\n\u0002\u0008\u0002\u001a\u000e\u0010 \u001a\u0004\u0018\u00010!*\u00020\"H\u0002\u001a$\u0010&\u001a\u0008\u0012\u0002\u0008\u0003\u0018\u00010\u000e*\u000c\u0012\u0008\u0012\u0006\u0012\u0002\u0008\u00030(0\'2\u0006\u0010)\u001a\u00020\u0006H\u0002\u001a$\u0010*\u001a\u0008\u0012\u0002\u0008\u0003\u0018\u00010\u0002*\u000c\u0012\u0008\u0012\u0006\u0012\u0002\u0008\u00030(0\'2\u0006\u0010+\u001a\u00020\u0001H\u0002\"\u001b\u0010\u0000\u001a\u0004\u0018\u00010\u0001*\u0006\u0012\u0002\u0008\u00030\u00028F\u00a2\u0006\u0006\u001a\u0004\u0008\u0003\u0010\u0004\"\u001b\u0010\u0005\u001a\u0004\u0018\u00010\u0006*\u0006\u0012\u0002\u0008\u00030\u00028F\u00a2\u0006\u0006\u001a\u0004\u0008\u0007\u0010\u0008\"\u001b\u0010\t\u001a\u0004\u0018\u00010\u0006*\u0006\u0012\u0002\u0008\u00030\n8F\u00a2\u0006\u0006\u001a\u0004\u0008\u000b\u0010\u000c\"\u001b\u0010\r\u001a\u0004\u0018\u00010\u0006*\u0006\u0012\u0002\u0008\u00030\u000e8F\u00a2\u0006\u0006\u001a\u0004\u0008\u000f\u0010\u0010\"/\u0010\u0011\u001a\n\u0012\u0004\u0012\u0002H\u0013\u0018\u00010\u0012\"\u0004\u0008\u0000\u0010\u0013*\u0008\u0012\u0004\u0012\u0002H\u00130\u000e8F\u00a2\u0006\u000c\u0012\u0004\u0008\u0014\u0010\u0015\u001a\u0004\u0008\u0016\u0010\u0017\"\u0015\u0010\u0018\u001a\u00020\u0019*\u00020\u001a8F\u00a2\u0006\u0006\u001a\u0004\u0008\u001b\u0010\u001c\"\u001b\u0010\u001d\u001a\u0008\u0012\u0002\u0008\u0003\u0018\u00010\u0002*\u00020\u00018F\u00a2\u0006\u0006\u001a\u0004\u0008\u001e\u0010\u001f\"\u001b\u0010#\u001a\u0008\u0012\u0002\u0008\u0003\u0018\u00010\u000e*\u00020\u00068F\u00a2\u0006\u0006\u001a\u0004\u0008$\u0010%\"-\u0010#\u001a\n\u0012\u0004\u0012\u0002H\u0013\u0018\u00010\u000e\"\u0008\u0008\u0000\u0010\u0013*\u00020,*\u0008\u0012\u0004\u0012\u0002H\u00130\u00128F\u00a2\u0006\u0006\u001a\u0004\u0008$\u0010-\u00a8\u0006."
    }
    d2 = {
        "javaField",
        "Ljava/lang/reflect/Field;",
        "Lkotlin/reflect/KProperty;",
        "getJavaField",
        "(Lkotlin/reflect/KProperty;)Ljava/lang/reflect/Field;",
        "javaGetter",
        "Ljava/lang/reflect/Method;",
        "getJavaGetter",
        "(Lkotlin/reflect/KProperty;)Ljava/lang/reflect/Method;",
        "javaSetter",
        "Lkotlin/reflect/KMutableProperty;",
        "getJavaSetter",
        "(Lkotlin/reflect/KMutableProperty;)Ljava/lang/reflect/Method;",
        "javaMethod",
        "Lkotlin/reflect/KFunction;",
        "getJavaMethod",
        "(Lkotlin/reflect/KFunction;)Ljava/lang/reflect/Method;",
        "javaConstructor",
        "Ljava/lang/reflect/Constructor;",
        "T",
        "getJavaConstructor$annotations",
        "(Lkotlin/reflect/KFunction;)V",
        "getJavaConstructor",
        "(Lkotlin/reflect/KFunction;)Ljava/lang/reflect/Constructor;",
        "javaType",
        "Ljava/lang/reflect/Type;",
        "Lkotlin/reflect/KType;",
        "getJavaType",
        "(Lkotlin/reflect/KType;)Ljava/lang/reflect/Type;",
        "kotlinProperty",
        "getKotlinProperty",
        "(Ljava/lang/reflect/Field;)Lkotlin/reflect/KProperty;",
        "getKPackage",
        "Lkotlin/reflect/KDeclarationContainer;",
        "Ljava/lang/reflect/Member;",
        "kotlinFunction",
        "getKotlinFunction",
        "(Ljava/lang/reflect/Method;)Lkotlin/reflect/KFunction;",
        "findKFunction",
        "",
        "Lkotlin/reflect/KCallable;",
        "method",
        "findKProperty",
        "field",
        "",
        "(Ljava/lang/reflect/Constructor;)Lkotlin/reflect/KFunction;",
        "kotlin-reflection"
    }
    k = 0x2
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method private static final findKFunction(Ljava/util/Collection;Ljava/lang/reflect/Method;)Lkotlin/reflect/KFunction;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lkotlin/reflect/KCallable<",
            "*>;>;",
            "Ljava/lang/reflect/Method;",
            ")",
            "Lkotlin/reflect/KFunction<",
            "*>;"
        }
    .end annotation

    .line 151
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KCallable;

    .line 152
    instance-of v2, v1, Lkotlin/reflect/KFunction;

    if-eqz v2, :cond_4

    check-cast v1, Lkotlin/reflect/KFunction;

    invoke-interface {v1}, Lkotlin/reflect/KFunction;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-static {v1}, Lkotlin/reflect/jvm/ReflectJvmMapping;->getJavaMethod(Lkotlin/reflect/KFunction;)Ljava/lang/reflect/Method;

    move-result-object v2

    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    return-object v1

    .line 154
    :cond_2f
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_33
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5e

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/reflect/KCallable;

    .line 155
    instance-of v1, v0, Lkotlin/reflect/KFunction;

    if-eqz v1, :cond_33

    check-cast v0, Lkotlin/reflect/KFunction;

    invoke-interface {v0}, Lkotlin/reflect/KFunction;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_33

    invoke-static {v0}, Lkotlin/reflect/jvm/ReflectJvmMapping;->getJavaMethod(Lkotlin/reflect/KFunction;)Ljava/lang/reflect/Method;

    move-result-object v1

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_33

    return-object v0

    :cond_5e
    const/4 p0, 0x0

    return-object p0
.end method

.method private static final findKProperty(Ljava/util/Collection;Ljava/lang/reflect/Field;)Lkotlin/reflect/KProperty;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lkotlin/reflect/KCallable<",
            "*>;>;",
            "Ljava/lang/reflect/Field;",
            ")",
            "Lkotlin/reflect/KProperty<",
            "*>;"
        }
    .end annotation

    .line 161
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KCallable;

    .line 162
    instance-of v2, v1, Lkotlin/reflect/KProperty;

    if-eqz v2, :cond_4

    check-cast v1, Lkotlin/reflect/KProperty;

    invoke-interface {v1}, Lkotlin/reflect/KProperty;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-static {v1}, Lkotlin/reflect/jvm/ReflectJvmMapping;->getJavaField(Lkotlin/reflect/KProperty;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    return-object v1

    .line 164
    :cond_2f
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_33
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5e

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/reflect/KCallable;

    .line 165
    instance-of v1, v0, Lkotlin/reflect/KProperty;

    if-eqz v1, :cond_33

    check-cast v0, Lkotlin/reflect/KProperty;

    invoke-interface {v0}, Lkotlin/reflect/KProperty;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_33

    invoke-static {v0}, Lkotlin/reflect/jvm/ReflectJvmMapping;->getJavaField(Lkotlin/reflect/KProperty;)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_33

    return-object v0

    :cond_5e
    const/4 p0, 0x0

    return-object p0
.end method

.method public static final getJavaConstructor(Lkotlin/reflect/KFunction;)Ljava/lang/reflect/Constructor;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/reflect/KFunction<",
            "+TT;>;)",
            "Ljava/lang/reflect/Constructor<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 72
    invoke-static {p0}, Lkotlin/reflect/jvm/internal/UtilKt;->asKCallableImpl(Ljava/lang/Object;)Lkotlin/reflect/jvm/internal/KCallableImpl;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_17

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/KCallableImpl;->getCaller()Lkotlin/reflect/jvm/internal/calls/Caller;

    move-result-object p0

    if-eqz p0, :cond_17

    invoke-interface {p0}, Lkotlin/reflect/jvm/internal/calls/Caller;->getMember()Ljava/lang/reflect/Member;

    move-result-object p0

    goto :goto_18

    :cond_17
    move-object p0, v0

    :goto_18
    instance-of v1, p0, Ljava/lang/reflect/Constructor;

    if-eqz v1, :cond_1f

    check-cast p0, Ljava/lang/reflect/Constructor;

    return-object p0

    :cond_1f
    return-object v0
.end method

.method public static synthetic getJavaConstructor$annotations(Lkotlin/reflect/KFunction;)V
    .registers 1

    return-void
.end method

.method public static final getJavaField(Lkotlin/reflect/KProperty;)Ljava/lang/reflect/Field;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/KProperty<",
            "*>;)",
            "Ljava/lang/reflect/Field;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    invoke-static {p0}, Lkotlin/reflect/jvm/internal/UtilKt;->asKPropertyImpl(Ljava/lang/Object;)Lkotlin/reflect/jvm/internal/KPropertyImpl;

    move-result-object p0

    if-eqz p0, :cond_10

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/KPropertyImpl;->getJavaField()Ljava/lang/reflect/Field;

    move-result-object p0

    return-object p0

    :cond_10
    const/4 p0, 0x0

    return-object p0
.end method

.method public static final getJavaGetter(Lkotlin/reflect/KProperty;)Ljava/lang/reflect/Method;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/KProperty<",
            "*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    invoke-interface {p0}, Lkotlin/reflect/KProperty;->getGetter()Lkotlin/reflect/KProperty$Getter;

    move-result-object p0

    check-cast p0, Lkotlin/reflect/KFunction;

    invoke-static {p0}, Lkotlin/reflect/jvm/ReflectJvmMapping;->getJavaMethod(Lkotlin/reflect/KFunction;)Ljava/lang/reflect/Method;

    move-result-object p0

    return-object p0
.end method

.method public static final getJavaMethod(Lkotlin/reflect/KFunction;)Ljava/lang/reflect/Method;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/KFunction<",
            "*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    invoke-static {p0}, Lkotlin/reflect/jvm/internal/UtilKt;->asKCallableImpl(Ljava/lang/Object;)Lkotlin/reflect/jvm/internal/KCallableImpl;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_17

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/KCallableImpl;->getCaller()Lkotlin/reflect/jvm/internal/calls/Caller;

    move-result-object p0

    if-eqz p0, :cond_17

    invoke-interface {p0}, Lkotlin/reflect/jvm/internal/calls/Caller;->getMember()Ljava/lang/reflect/Member;

    move-result-object p0

    goto :goto_18

    :cond_17
    move-object p0, v0

    :goto_18
    instance-of v1, p0, Ljava/lang/reflect/Method;

    if-eqz v1, :cond_1f

    check-cast p0, Ljava/lang/reflect/Method;

    return-object p0

    :cond_1f
    return-object v0
.end method

.method public static final getJavaSetter(Lkotlin/reflect/KMutableProperty;)Ljava/lang/reflect/Method;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/KMutableProperty<",
            "*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    invoke-interface {p0}, Lkotlin/reflect/KMutableProperty;->getSetter()Lkotlin/reflect/KMutableProperty$Setter;

    move-result-object p0

    check-cast p0, Lkotlin/reflect/KFunction;

    invoke-static {p0}, Lkotlin/reflect/jvm/ReflectJvmMapping;->getJavaMethod(Lkotlin/reflect/KFunction;)Ljava/lang/reflect/Method;

    move-result-object p0

    return-object p0
.end method

.method public static final getJavaType(Lkotlin/reflect/KType;)Ljava/lang/reflect/Type;
    .registers 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 82
    move-object v0, p0

    check-cast v0, Lkotlin/reflect/jvm/internal/KTypeImpl;

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/KTypeImpl;->getJavaType()Ljava/lang/reflect/Type;

    move-result-object v0

    if-nez v0, :cond_13

    invoke-static {p0}, Lkotlin/reflect/TypesJVMKt;->getJavaType(Lkotlin/reflect/KType;)Ljava/lang/reflect/Type;

    move-result-object p0

    return-object p0

    :cond_13
    return-object v0
.end method

.method private static final getKPackage(Ljava/lang/reflect/Member;)Lkotlin/reflect/KDeclarationContainer;
    .registers 5

    .line 116
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/components/ReflectKotlinClass;->Factory:Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/components/ReflectKotlinClass$Factory;

    invoke-interface {p0}, Ljava/lang/reflect/Member;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getDeclaringClass(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/components/ReflectKotlinClass$Factory;->create(Ljava/lang/Class;)Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/components/ReflectKotlinClass;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1d

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/components/ReflectKotlinClass;->getClassHeader()Lkotlin/reflect/jvm/internal/impl/load/kotlin/header/KotlinClassHeader;

    move-result-object v0

    if-eqz v0, :cond_1d

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/header/KotlinClassHeader;->getKind()Lkotlin/reflect/jvm/internal/impl/load/kotlin/header/KotlinClassHeader$Kind;

    move-result-object v0

    goto :goto_1e

    :cond_1d
    move-object v0, v1

    :goto_1e
    if-nez v0, :cond_22

    const/4 v0, -0x1

    goto :goto_2a

    :cond_22
    sget-object v3, Lkotlin/reflect/jvm/ReflectJvmMapping$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/header/KotlinClassHeader$Kind;->ordinal()I

    move-result v0

    aget v0, v3, v0

    :goto_2a
    const/4 v3, 0x1

    if-eq v0, v3, :cond_34

    const/4 v3, 0x2

    if-eq v0, v3, :cond_34

    const/4 v3, 0x3

    if-eq v0, v3, :cond_34

    return-object v1

    .line 118
    :cond_34
    new-instance v0, Lkotlin/reflect/jvm/internal/KPackageImpl;

    invoke-interface {p0}, Ljava/lang/reflect/Member;->getDeclaringClass()Ljava/lang/Class;

    move-result-object p0

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, p0}, Lkotlin/reflect/jvm/internal/KPackageImpl;-><init>(Ljava/lang/Class;)V

    check-cast v0, Lkotlin/reflect/KDeclarationContainer;

    return-object v0
.end method

.method public static final getKotlinFunction(Ljava/lang/reflect/Constructor;)Lkotlin/reflect/KFunction;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/reflect/Constructor<",
            "TT;>;)",
            "Lkotlin/reflect/KFunction<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 177
    invoke-virtual {p0}, Ljava/lang/reflect/Constructor;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getDeclaringClass(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lkotlin/jvm/JvmClassMappingKt;->getKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/reflect/KClass;->getConstructors()Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 181
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_34

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lkotlin/reflect/KFunction;

    .line 177
    invoke-static {v2}, Lkotlin/reflect/jvm/ReflectJvmMapping;->getJavaConstructor(Lkotlin/reflect/KFunction;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    invoke-static {v2, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c

    goto :goto_35

    :cond_34
    const/4 v1, 0x0

    .line 182
    :goto_35
    check-cast v1, Lkotlin/reflect/KFunction;

    return-object v1
.end method

.method public static final getKotlinFunction(Ljava/lang/reflect/Method;)Lkotlin/reflect/KFunction;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Method;",
            ")",
            "Lkotlin/reflect/KFunction<",
            "*>;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 128
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v0

    const-string v1, "getDeclaringClass(...)"

    if-eqz v0, :cond_5d

    .line 129
    move-object v0, p0

    check-cast v0, Ljava/lang/reflect/Member;

    invoke-static {v0}, Lkotlin/reflect/jvm/ReflectJvmMapping;->getKPackage(Ljava/lang/reflect/Member;)Lkotlin/reflect/KDeclarationContainer;

    move-result-object v0

    if-eqz v0, :cond_23

    .line 131
    invoke-interface {v0}, Lkotlin/reflect/KDeclarationContainer;->getMembers()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0, p0}, Lkotlin/reflect/jvm/ReflectJvmMapping;->findKFunction(Ljava/util/Collection;Ljava/lang/reflect/Method;)Lkotlin/reflect/KFunction;

    move-result-object p0

    return-object p0

    .line 135
    :cond_23
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lkotlin/jvm/JvmClassMappingKt;->getKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    invoke-static {v0}, Lkotlin/reflect/full/KClasses;->getCompanionObject(Lkotlin/reflect/KClass;)Lkotlin/reflect/KClass;

    move-result-object v0

    if-eqz v0, :cond_5d

    .line 137
    invoke-static {v0}, Lkotlin/jvm/JvmClassMappingKt;->getJavaClass(Lkotlin/reflect/KClass;)Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "getName(...)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v4

    array-length v5, v4

    invoke-static {v4, v5}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/Class;

    invoke-static {v2, v3, v4}, Lkotlin/reflect/jvm/internal/UtilKt;->getDeclaredMethodOrNull(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    if-eqz v2, :cond_5d

    .line 139
    invoke-static {v0}, Lkotlin/reflect/full/KClasses;->getFunctions(Lkotlin/reflect/KClass;)Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0, v2}, Lkotlin/reflect/jvm/ReflectJvmMapping;->findKFunction(Ljava/util/Collection;Ljava/lang/reflect/Method;)Lkotlin/reflect/KFunction;

    move-result-object v0

    if-eqz v0, :cond_5d

    return-object v0

    .line 144
    :cond_5d
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lkotlin/jvm/JvmClassMappingKt;->getKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    invoke-static {v0}, Lkotlin/reflect/full/KClasses;->getFunctions(Lkotlin/reflect/KClass;)Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0, p0}, Lkotlin/reflect/jvm/ReflectJvmMapping;->findKFunction(Ljava/util/Collection;Ljava/lang/reflect/Method;)Lkotlin/reflect/KFunction;

    move-result-object p0

    return-object p0
.end method

.method public static final getKotlinProperty(Ljava/lang/reflect/Field;)Lkotlin/reflect/KProperty;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Field;",
            ")",
            "Lkotlin/reflect/KProperty<",
            "*>;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 94
    invoke-virtual {p0}, Ljava/lang/reflect/Field;->isSynthetic()Z

    move-result v0

    if-eqz v0, :cond_d

    const/4 p0, 0x0

    return-object p0

    .line 96
    :cond_d
    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v0

    const-string v1, "getDeclaringClass(...)"

    if-eqz v0, :cond_5d

    .line 97
    move-object v0, p0

    check-cast v0, Ljava/lang/reflect/Member;

    invoke-static {v0}, Lkotlin/reflect/jvm/ReflectJvmMapping;->getKPackage(Ljava/lang/reflect/Member;)Lkotlin/reflect/KDeclarationContainer;

    move-result-object v0

    if-eqz v0, :cond_2b

    .line 99
    invoke-interface {v0}, Lkotlin/reflect/KDeclarationContainer;->getMembers()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0, p0}, Lkotlin/reflect/jvm/ReflectJvmMapping;->findKProperty(Ljava/util/Collection;Ljava/lang/reflect/Field;)Lkotlin/reflect/KProperty;

    move-result-object p0

    return-object p0

    .line 102
    :cond_2b
    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lkotlin/jvm/JvmClassMappingKt;->getKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    invoke-static {v0}, Lkotlin/reflect/full/KClasses;->getCompanionObject(Lkotlin/reflect/KClass;)Lkotlin/reflect/KClass;

    move-result-object v0

    if-eqz v0, :cond_5d

    .line 104
    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "getName(...)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2, v3}, Lkotlin/reflect/jvm/internal/UtilKt;->getDeclaredFieldOrNull(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    if-eqz v2, :cond_5d

    .line 106
    invoke-static {v0}, Lkotlin/reflect/full/KClasses;->getMemberProperties(Lkotlin/reflect/KClass;)Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0, v2}, Lkotlin/reflect/jvm/ReflectJvmMapping;->findKProperty(Ljava/util/Collection;Ljava/lang/reflect/Field;)Lkotlin/reflect/KProperty;

    move-result-object v0

    if-eqz v0, :cond_5d

    return-object v0

    .line 111
    :cond_5d
    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lkotlin/jvm/JvmClassMappingKt;->getKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    invoke-static {v0}, Lkotlin/reflect/full/KClasses;->getMemberProperties(Lkotlin/reflect/KClass;)Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0, p0}, Lkotlin/reflect/jvm/ReflectJvmMapping;->findKProperty(Ljava/util/Collection;Ljava/lang/reflect/Field;)Lkotlin/reflect/KProperty;

    move-result-object p0

    return-object p0
.end method

###### Class kotlin.reflect.jvm.ReflectJvmMapping.WhenMappings (kotlin.reflect.jvm.ReflectJvmMapping$WhenMappings)
.class public final synthetic Lkotlin/reflect/jvm/ReflectJvmMapping$WhenMappings;
.super Ljava/lang/Object;
.source "ReflectJvmMapping.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/ReflectJvmMapping;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1019
    name = "WhenMappings"
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final synthetic $EnumSwitchMapping$0:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/header/KotlinClassHeader$Kind;->values()[Lkotlin/reflect/jvm/internal/impl/load/kotlin/header/KotlinClassHeader$Kind;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_7
    sget-object v1, Lkotlin/reflect/jvm/internal/impl/load/kotlin/header/KotlinClassHeader$Kind;->FILE_FACADE:Lkotlin/reflect/jvm/internal/impl/load/kotlin/header/KotlinClassHeader$Kind;

    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/header/KotlinClassHeader$Kind;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_10} :catch_10

    :catch_10
    :try_start_10
    sget-object v1, Lkotlin/reflect/jvm/internal/impl/load/kotlin/header/KotlinClassHeader$Kind;->MULTIFILE_CLASS:Lkotlin/reflect/jvm/internal/impl/load/kotlin/header/KotlinClassHeader$Kind;

    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/header/KotlinClassHeader$Kind;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_19
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_19} :catch_19

    :catch_19
    :try_start_19
    sget-object v1, Lkotlin/reflect/jvm/internal/impl/load/kotlin/header/KotlinClassHeader$Kind;->MULTIFILE_CLASS_PART:Lkotlin/reflect/jvm/internal/impl/load/kotlin/header/KotlinClassHeader$Kind;

    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/header/KotlinClassHeader$Kind;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_22
    .catch Ljava/lang/NoSuchFieldError; {:try_start_19 .. :try_end_22} :catch_22

    :catch_22
    sput-object v0, Lkotlin/reflect/jvm/ReflectJvmMapping$WhenMappings;->$EnumSwitchMapping$0:[I

    return-void
.end method
