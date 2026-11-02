###### Class kotlin.reflect.jvm.KCallablesJvm (kotlin.reflect.jvm.KCallablesJvm)
.class public final Lkotlin/reflect/jvm/KCallablesJvm;
.super Ljava/lang/Object;
.source "KCallablesJvm.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\",\u0010\u0002\u001a\u00020\u0001*\u0006\u0012\u0002\u0008\u00030\u00032\u0006\u0010\u0000\u001a\u00020\u00018F@FX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u0002\u0010\u0004\"\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "value",
        "",
        "isAccessible",
        "Lkotlin/reflect/KCallable;",
        "(Lkotlin/reflect/KCallable;)Z",
        "setAccessible",
        "(Lkotlin/reflect/KCallable;Z)V",
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
.method public static final isAccessible(Lkotlin/reflect/KCallable;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/KCallable<",
            "*>;)Z"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    instance-of v0, p0, Lkotlin/reflect/KMutableProperty;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_3c

    .line 45
    move-object v0, p0

    check-cast v0, Lkotlin/reflect/KProperty;

    .line 43
    invoke-static {v0}, Lkotlin/reflect/jvm/ReflectJvmMapping;->getJavaField(Lkotlin/reflect/KProperty;)Ljava/lang/reflect/Field;

    move-result-object v3

    if-eqz v3, :cond_19

    invoke-virtual {v3}, Ljava/lang/reflect/Field;->isAccessible()Z

    move-result v3

    goto :goto_1a

    :cond_19
    const/4 v3, 0x1

    :goto_1a
    if-eqz v3, :cond_3b

    .line 44
    invoke-static {v0}, Lkotlin/reflect/jvm/ReflectJvmMapping;->getJavaGetter(Lkotlin/reflect/KProperty;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_27

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->isAccessible()Z

    move-result v0

    goto :goto_28

    :cond_27
    const/4 v0, 0x1

    :goto_28
    if-eqz v0, :cond_3b

    .line 45
    check-cast p0, Lkotlin/reflect/KMutableProperty;

    invoke-static {p0}, Lkotlin/reflect/jvm/ReflectJvmMapping;->getJavaSetter(Lkotlin/reflect/KMutableProperty;)Ljava/lang/reflect/Method;

    move-result-object p0

    if-eqz p0, :cond_37

    invoke-virtual {p0}, Ljava/lang/reflect/Method;->isAccessible()Z

    move-result p0

    goto :goto_38

    :cond_37
    const/4 p0, 0x1

    :goto_38
    if-eqz p0, :cond_3b

    return v2

    :cond_3b
    return v1

    .line 46
    :cond_3c
    instance-of v0, p0, Lkotlin/reflect/KProperty;

    if-eqz v0, :cond_60

    .line 48
    check-cast p0, Lkotlin/reflect/KProperty;

    .line 47
    invoke-static {p0}, Lkotlin/reflect/jvm/ReflectJvmMapping;->getJavaField(Lkotlin/reflect/KProperty;)Ljava/lang/reflect/Field;

    move-result-object v0

    if-eqz v0, :cond_4d

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->isAccessible()Z

    move-result v0

    goto :goto_4e

    :cond_4d
    const/4 v0, 0x1

    :goto_4e
    if-eqz v0, :cond_5f

    .line 48
    invoke-static {p0}, Lkotlin/reflect/jvm/ReflectJvmMapping;->getJavaGetter(Lkotlin/reflect/KProperty;)Ljava/lang/reflect/Method;

    move-result-object p0

    if-eqz p0, :cond_5b

    invoke-virtual {p0}, Ljava/lang/reflect/Method;->isAccessible()Z

    move-result p0

    goto :goto_5c

    :cond_5b
    const/4 p0, 0x1

    :goto_5c
    if-eqz p0, :cond_5f

    return v2

    :cond_5f
    return v1

    .line 49
    :cond_60
    instance-of v0, p0, Lkotlin/reflect/KProperty$Getter;

    if-eqz v0, :cond_8b

    .line 51
    move-object v0, p0

    check-cast v0, Lkotlin/reflect/KProperty$Getter;

    .line 50
    invoke-interface {v0}, Lkotlin/reflect/KProperty$Getter;->getProperty()Lkotlin/reflect/KProperty;

    move-result-object v0

    invoke-static {v0}, Lkotlin/reflect/jvm/ReflectJvmMapping;->getJavaField(Lkotlin/reflect/KProperty;)Ljava/lang/reflect/Field;

    move-result-object v0

    if-eqz v0, :cond_76

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->isAccessible()Z

    move-result v0

    goto :goto_77

    :cond_76
    const/4 v0, 0x1

    :goto_77
    if-eqz v0, :cond_8a

    .line 51
    check-cast p0, Lkotlin/reflect/KFunction;

    invoke-static {p0}, Lkotlin/reflect/jvm/ReflectJvmMapping;->getJavaMethod(Lkotlin/reflect/KFunction;)Ljava/lang/reflect/Method;

    move-result-object p0

    if-eqz p0, :cond_86

    invoke-virtual {p0}, Ljava/lang/reflect/Method;->isAccessible()Z

    move-result p0

    goto :goto_87

    :cond_86
    const/4 p0, 0x1

    :goto_87
    if-eqz p0, :cond_8a

    return v2

    :cond_8a
    return v1

    .line 52
    :cond_8b
    instance-of v0, p0, Lkotlin/reflect/KMutableProperty$Setter;

    if-eqz v0, :cond_b6

    .line 54
    move-object v0, p0

    check-cast v0, Lkotlin/reflect/KMutableProperty$Setter;

    .line 53
    invoke-interface {v0}, Lkotlin/reflect/KMutableProperty$Setter;->getProperty()Lkotlin/reflect/KProperty;

    move-result-object v0

    invoke-static {v0}, Lkotlin/reflect/jvm/ReflectJvmMapping;->getJavaField(Lkotlin/reflect/KProperty;)Ljava/lang/reflect/Field;

    move-result-object v0

    if-eqz v0, :cond_a1

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->isAccessible()Z

    move-result v0

    goto :goto_a2

    :cond_a1
    const/4 v0, 0x1

    :goto_a2
    if-eqz v0, :cond_b5

    .line 54
    check-cast p0, Lkotlin/reflect/KFunction;

    invoke-static {p0}, Lkotlin/reflect/jvm/ReflectJvmMapping;->getJavaMethod(Lkotlin/reflect/KFunction;)Ljava/lang/reflect/Method;

    move-result-object p0

    if-eqz p0, :cond_b1

    invoke-virtual {p0}, Ljava/lang/reflect/Method;->isAccessible()Z

    move-result p0

    goto :goto_b2

    :cond_b1
    const/4 p0, 0x1

    :goto_b2
    if-eqz p0, :cond_b5

    return v2

    :cond_b5
    return v1

    .line 55
    :cond_b6
    instance-of v0, p0, Lkotlin/reflect/KFunction;

    if-eqz v0, :cond_ff

    .line 56
    move-object v0, p0

    check-cast v0, Lkotlin/reflect/KFunction;

    invoke-static {v0}, Lkotlin/reflect/jvm/ReflectJvmMapping;->getJavaMethod(Lkotlin/reflect/KFunction;)Ljava/lang/reflect/Method;

    move-result-object v3

    if-eqz v3, :cond_c8

    invoke-virtual {v3}, Ljava/lang/reflect/Method;->isAccessible()Z

    move-result v3

    goto :goto_c9

    :cond_c8
    const/4 v3, 0x1

    :goto_c9
    if-eqz v3, :cond_fe

    .line 57
    invoke-static {p0}, Lkotlin/reflect/jvm/internal/UtilKt;->asKCallableImpl(Ljava/lang/Object;)Lkotlin/reflect/jvm/internal/KCallableImpl;

    move-result-object p0

    const/4 v3, 0x0

    if-eqz p0, :cond_dd

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/KCallableImpl;->getDefaultCaller()Lkotlin/reflect/jvm/internal/calls/Caller;

    move-result-object p0

    if-eqz p0, :cond_dd

    invoke-interface {p0}, Lkotlin/reflect/jvm/internal/calls/Caller;->getMember()Ljava/lang/reflect/Member;

    move-result-object p0

    goto :goto_de

    :cond_dd
    move-object p0, v3

    :goto_de
    instance-of v4, p0, Ljava/lang/reflect/AccessibleObject;

    if-eqz v4, :cond_e5

    move-object v3, p0

    check-cast v3, Ljava/lang/reflect/AccessibleObject;

    :cond_e5
    if-eqz v3, :cond_ec

    invoke-virtual {v3}, Ljava/lang/reflect/AccessibleObject;->isAccessible()Z

    move-result p0

    goto :goto_ed

    :cond_ec
    const/4 p0, 0x1

    :goto_ed
    if-eqz p0, :cond_fe

    .line 58
    invoke-static {v0}, Lkotlin/reflect/jvm/ReflectJvmMapping;->getJavaConstructor(Lkotlin/reflect/KFunction;)Ljava/lang/reflect/Constructor;

    move-result-object p0

    if-eqz p0, :cond_fa

    invoke-virtual {p0}, Ljava/lang/reflect/Constructor;->isAccessible()Z

    move-result p0

    goto :goto_fb

    :cond_fa
    const/4 p0, 0x1

    :goto_fb
    if-eqz p0, :cond_fe

    return v2

    :cond_fe
    return v1

    .line 59
    :cond_ff
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown callable: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final setAccessible(Lkotlin/reflect/KCallable;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/KCallable<",
            "*>;Z)V"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    instance-of v0, p0, Lkotlin/reflect/KMutableProperty;

    if-eqz v0, :cond_2a

    .line 67
    move-object v0, p0

    check-cast v0, Lkotlin/reflect/KProperty;

    .line 65
    invoke-static {v0}, Lkotlin/reflect/jvm/ReflectJvmMapping;->getJavaField(Lkotlin/reflect/KProperty;)Ljava/lang/reflect/Field;

    move-result-object v1

    if-eqz v1, :cond_15

    invoke-virtual {v1, p1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 66
    :cond_15
    invoke-static {v0}, Lkotlin/reflect/jvm/ReflectJvmMapping;->getJavaGetter(Lkotlin/reflect/KProperty;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_1e

    invoke-virtual {v0, p1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 67
    :cond_1e
    check-cast p0, Lkotlin/reflect/KMutableProperty;

    invoke-static {p0}, Lkotlin/reflect/jvm/ReflectJvmMapping;->getJavaSetter(Lkotlin/reflect/KMutableProperty;)Ljava/lang/reflect/Method;

    move-result-object p0

    if-eqz p0, :cond_bc

    invoke-virtual {p0, p1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    return-void

    .line 69
    :cond_2a
    instance-of v0, p0, Lkotlin/reflect/KProperty;

    if-eqz v0, :cond_43

    .line 71
    check-cast p0, Lkotlin/reflect/KProperty;

    .line 70
    invoke-static {p0}, Lkotlin/reflect/jvm/ReflectJvmMapping;->getJavaField(Lkotlin/reflect/KProperty;)Ljava/lang/reflect/Field;

    move-result-object v0

    if-eqz v0, :cond_39

    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 71
    :cond_39
    invoke-static {p0}, Lkotlin/reflect/jvm/ReflectJvmMapping;->getJavaGetter(Lkotlin/reflect/KProperty;)Ljava/lang/reflect/Method;

    move-result-object p0

    if-eqz p0, :cond_bc

    invoke-virtual {p0, p1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    return-void

    .line 73
    :cond_43
    instance-of v0, p0, Lkotlin/reflect/KProperty$Getter;

    if-eqz v0, :cond_63

    .line 75
    move-object v0, p0

    check-cast v0, Lkotlin/reflect/KProperty$Getter;

    .line 74
    invoke-interface {v0}, Lkotlin/reflect/KProperty$Getter;->getProperty()Lkotlin/reflect/KProperty;

    move-result-object v0

    invoke-static {v0}, Lkotlin/reflect/jvm/ReflectJvmMapping;->getJavaField(Lkotlin/reflect/KProperty;)Ljava/lang/reflect/Field;

    move-result-object v0

    if-eqz v0, :cond_57

    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 75
    :cond_57
    check-cast p0, Lkotlin/reflect/KFunction;

    invoke-static {p0}, Lkotlin/reflect/jvm/ReflectJvmMapping;->getJavaMethod(Lkotlin/reflect/KFunction;)Ljava/lang/reflect/Method;

    move-result-object p0

    if-eqz p0, :cond_bc

    invoke-virtual {p0, p1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    return-void

    .line 77
    :cond_63
    instance-of v0, p0, Lkotlin/reflect/KMutableProperty$Setter;

    if-eqz v0, :cond_83

    .line 79
    move-object v0, p0

    check-cast v0, Lkotlin/reflect/KMutableProperty$Setter;

    .line 78
    invoke-interface {v0}, Lkotlin/reflect/KMutableProperty$Setter;->getProperty()Lkotlin/reflect/KProperty;

    move-result-object v0

    invoke-static {v0}, Lkotlin/reflect/jvm/ReflectJvmMapping;->getJavaField(Lkotlin/reflect/KProperty;)Ljava/lang/reflect/Field;

    move-result-object v0

    if-eqz v0, :cond_77

    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 79
    :cond_77
    check-cast p0, Lkotlin/reflect/KFunction;

    invoke-static {p0}, Lkotlin/reflect/jvm/ReflectJvmMapping;->getJavaMethod(Lkotlin/reflect/KFunction;)Ljava/lang/reflect/Method;

    move-result-object p0

    if-eqz p0, :cond_bc

    invoke-virtual {p0, p1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    return-void

    .line 81
    :cond_83
    instance-of v0, p0, Lkotlin/reflect/KFunction;

    if-eqz v0, :cond_bd

    .line 82
    move-object v0, p0

    check-cast v0, Lkotlin/reflect/KFunction;

    invoke-static {v0}, Lkotlin/reflect/jvm/ReflectJvmMapping;->getJavaMethod(Lkotlin/reflect/KFunction;)Ljava/lang/reflect/Method;

    move-result-object v1

    if-eqz v1, :cond_93

    invoke-virtual {v1, p1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 83
    :cond_93
    invoke-static {p0}, Lkotlin/reflect/jvm/internal/UtilKt;->asKCallableImpl(Ljava/lang/Object;)Lkotlin/reflect/jvm/internal/KCallableImpl;

    move-result-object p0

    const/4 v1, 0x0

    if-eqz p0, :cond_a5

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/KCallableImpl;->getDefaultCaller()Lkotlin/reflect/jvm/internal/calls/Caller;

    move-result-object p0

    if-eqz p0, :cond_a5

    invoke-interface {p0}, Lkotlin/reflect/jvm/internal/calls/Caller;->getMember()Ljava/lang/reflect/Member;

    move-result-object p0

    goto :goto_a6

    :cond_a5
    move-object p0, v1

    :goto_a6
    instance-of v2, p0, Ljava/lang/reflect/AccessibleObject;

    if-eqz v2, :cond_ad

    move-object v1, p0

    check-cast v1, Ljava/lang/reflect/AccessibleObject;

    :cond_ad
    if-eqz v1, :cond_b3

    const/4 p0, 0x1

    invoke-virtual {v1, p0}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 84
    :cond_b3
    invoke-static {v0}, Lkotlin/reflect/jvm/ReflectJvmMapping;->getJavaConstructor(Lkotlin/reflect/KFunction;)Ljava/lang/reflect/Constructor;

    move-result-object p0

    if-eqz p0, :cond_bc

    invoke-virtual {p0, p1}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    :cond_bc
    return-void

    .line 86
    :cond_bd
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unknown callable: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
