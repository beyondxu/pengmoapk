###### Class kotlin.reflect.jvm.internal.calls.ValueClassAwareCaller (kotlin.reflect.jvm.internal.calls.ValueClassAwareCaller)
.class public final Lkotlin/reflect/jvm/internal/calls/ValueClassAwareCaller;
.super Ljava/lang/Object;
.source "ValueClassAwareCaller.kt"

# interfaces
.implements Lkotlin/reflect/jvm/internal/calls/Caller;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/reflect/jvm/internal/calls/ValueClassAwareCaller$BoxUnboxData;,
        Lkotlin/reflect/jvm/internal/calls/ValueClassAwareCaller$MultiFieldValueClassPrimaryConstructorCaller;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<M::",
        "Ljava/lang/reflect/Member;",
        ">",
        "Ljava/lang/Object;",
        "Lkotlin/reflect/jvm/internal/calls/Caller<",
        "TM;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nValueClassAwareCaller.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ValueClassAwareCaller.kt\nkotlin/reflect/jvm/internal/calls/ValueClassAwareCaller\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,392:1\n1761#2,3:393\n1563#2:396\n1634#2,3:397\n1761#2,3:409\n1634#2,3:412\n37#3:400\n36#3,3:401\n37#3:405\n36#3,3:406\n37#3:415\n36#3,3:416\n1#4:404\n*S KotlinDebug\n*F\n+ 1 ValueClassAwareCaller.kt\nkotlin/reflect/jvm/internal/calls/ValueClassAwareCaller\n*L\n45#1:393,3\n48#1:396\n48#1:397,3\n166#1:409,3\n184#1:412,3\n48#1:400\n48#1:401,3\n155#1:405\n155#1:406,3\n192#1:415\n192#1:416,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000R\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0005\u0008\u0000\u0018\u0000*\u000c\u0008\u0000\u0010\u0001 \u0001*\u0004\u0018\u00010\u00022\u0008\u0012\u0004\u0012\u0002H\u00010\u0003:\u0002()B%\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0003\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\t\u0010\nJ\u000e\u0010 \u001a\u00020\u001e2\u0006\u0010!\u001a\u00020\"J\u001b\u0010$\u001a\u0004\u0018\u00010%2\n\u0010&\u001a\u0006\u0012\u0002\u0008\u00030\u001dH\u0016\u00a2\u0006\u0002\u0010\'R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u000c\u001a\u00028\u0000X\u0096\u0004\u00a2\u0006\n\n\u0002\u0010\u000f\u001a\u0004\u0008\r\u0010\u000eR\u0014\u0010\u0010\u001a\u00020\u00118VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0012\u0010\u0013R\u001a\u0010\u0014\u001a\u0008\u0012\u0004\u0012\u00020\u00110\u00158VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0016\u0010\u0017R\u0014\u0010\u0018\u001a\u00020\u00088VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0018\u0010\u0019R\u000e\u0010\u001a\u001a\u00020\u001bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u001c\u001a\u0008\u0012\u0004\u0012\u00020\u001e0\u001dX\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u001fR\u000e\u0010#\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006*"
    }
    d2 = {
        "Lkotlin/reflect/jvm/internal/calls/ValueClassAwareCaller;",
        "M",
        "Ljava/lang/reflect/Member;",
        "Lkotlin/reflect/jvm/internal/calls/Caller;",
        "descriptor",
        "Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;",
        "oldCaller",
        "isDefault",
        "",
        "<init>",
        "(Lorg/jetbrains/kotlin/descriptors/CallableMemberDescriptor;Lkotlin/reflect/jvm/internal/calls/Caller;Z)V",
        "caller",
        "member",
        "getMember",
        "()Ljava/lang/reflect/Member;",
        "Ljava/lang/reflect/Member;",
        "returnType",
        "Ljava/lang/reflect/Type;",
        "getReturnType",
        "()Ljava/lang/reflect/Type;",
        "parameterTypes",
        "",
        "getParameterTypes",
        "()Ljava/util/List;",
        "isBoundInstanceCallWithValueClasses",
        "()Z",
        "data",
        "Lkotlin/reflect/jvm/internal/calls/ValueClassAwareCaller$BoxUnboxData;",
        "slices",
        "",
        "Lkotlin/ranges/IntRange;",
        "[Lkotlin/ranges/IntRange;",
        "getRealSlicesOfParameters",
        "index",
        "",
        "hasMfvcParameters",
        "call",
        "",
        "args",
        "([Ljava/lang/Object;)Ljava/lang/Object;",
        "BoxUnboxData",
        "MultiFieldValueClassPrimaryConstructorCaller",
        "kotlin-reflection"
    }
    k = 0x1
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final caller:Lkotlin/reflect/jvm/internal/calls/Caller;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/reflect/jvm/internal/calls/Caller<",
            "TM;>;"
        }
    .end annotation
.end field

.field private final data:Lkotlin/reflect/jvm/internal/calls/ValueClassAwareCaller$BoxUnboxData;

.field private final hasMfvcParameters:Z

.field private final isDefault:Z

.field private final member:Ljava/lang/reflect/Member;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TM;"
        }
    .end annotation
.end field

.field private final slices:[Lkotlin/ranges/IntRange;


# direct methods
.method public constructor <init>(Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;Lkotlin/reflect/jvm/internal/calls/Caller;Z)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;",
            "Lkotlin/reflect/jvm/internal/calls/Caller<",
            "+TM;>;Z)V"
        }
    .end annotation

    const-string v0, "descriptor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "oldCaller"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-boolean p3, p0, Lkotlin/reflect/jvm/internal/calls/ValueClassAwareCaller;->isDefault:Z

    .line 40
    instance-of v0, p2, Lkotlin/reflect/jvm/internal/calls/CallerImpl$Method$BoundStatic;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_b3

    .line 41
    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;->getExtensionReceiverParameter()Lkotlin/reflect/jvm/internal/impl/descriptors/ReceiverParameterDescriptor;

    move-result-object v0

    if-nez v0, :cond_1f

    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;->getDispatchReceiverParameter()Lkotlin/reflect/jvm/internal/impl/descriptors/ReceiverParameterDescriptor;

    move-result-object v0

    :cond_1f
    if-eqz v0, :cond_26

    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/ReceiverParameterDescriptor;->getType()Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    move-result-object v0

    goto :goto_27

    :cond_26
    move-object v0, v1

    :goto_27
    if-eqz v0, :cond_b3

    .line 44
    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/resolve/InlineClassesUtilsKt;->needsMfvcFlattening(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Z

    move-result v3

    if-eqz v3, :cond_b3

    if-eqz p3, :cond_60

    .line 45
    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;->getValueParameters()Ljava/util/List;

    move-result-object p3

    const-string v3, "getValueParameters(...)"

    invoke-static {p3, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p3, Ljava/lang/Iterable;

    .line 393
    instance-of v3, p3, Ljava/util/Collection;

    if-eqz v3, :cond_4a

    move-object v3, p3

    check-cast v3, Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_4a

    goto :goto_b3

    .line 394
    :cond_4a
    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_4e
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_b3

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lkotlin/reflect/jvm/internal/impl/descriptors/ValueParameterDescriptor;

    .line 45
    invoke-interface {v3}, Lkotlin/reflect/jvm/internal/impl/descriptors/ValueParameterDescriptor;->declaresDefaultValue()Z

    move-result v3

    if-eqz v3, :cond_4e

    .line 47
    :cond_60
    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutionKt;->asSimpleType(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    move-result-object p3

    invoke-static {p3}, Lkotlin/reflect/jvm/internal/calls/ValueClassAwareCallerKt;->getMfvcUnboxMethods(Lkotlin/reflect/jvm/internal/impl/types/SimpleType;)Ljava/util/List;

    move-result-object p3

    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 48
    check-cast p3, Ljava/lang/Iterable;

    .line 396
    new-instance v0, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {p3, v3}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v0, Ljava/util/Collection;

    .line 397
    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_7e
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_99

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 398
    check-cast v3, Ljava/lang/reflect/Method;

    .line 48
    move-object v4, p2

    check-cast v4, Lkotlin/reflect/jvm/internal/calls/CallerImpl$Method$BoundStatic;

    invoke-virtual {v4}, Lkotlin/reflect/jvm/internal/calls/CallerImpl$Method$BoundStatic;->getBoundReceiver$kotlin_reflection()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 398
    invoke-interface {v0, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_7e

    .line 399
    :cond_99
    check-cast v0, Ljava/util/List;

    .line 396
    check-cast v0, Ljava/util/Collection;

    .line 403
    new-array p3, v2, [Ljava/lang/Object;

    invoke-interface {v0, p3}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p3

    .line 50
    new-instance v0, Lkotlin/reflect/jvm/internal/calls/CallerImpl$Method$BoundStaticMultiFieldValueClass;

    check-cast p2, Lkotlin/reflect/jvm/internal/calls/CallerImpl$Method;

    invoke-virtual {p2}, Lkotlin/reflect/jvm/internal/calls/CallerImpl$Method;->getMember()Ljava/lang/reflect/Member;

    move-result-object p2

    check-cast p2, Ljava/lang/reflect/Method;

    invoke-direct {v0, p2, p3}, Lkotlin/reflect/jvm/internal/calls/CallerImpl$Method$BoundStaticMultiFieldValueClass;-><init>(Ljava/lang/reflect/Method;[Ljava/lang/Object;)V

    move-object p2, v0

    check-cast p2, Lkotlin/reflect/jvm/internal/calls/Caller;

    .line 40
    :cond_b3
    :goto_b3
    iput-object p2, p0, Lkotlin/reflect/jvm/internal/calls/ValueClassAwareCaller;->caller:Lkotlin/reflect/jvm/internal/calls/Caller;

    .line 58
    invoke-interface {p2}, Lkotlin/reflect/jvm/internal/calls/Caller;->getMember()Ljava/lang/reflect/Member;

    move-result-object p2

    iput-object p2, p0, Lkotlin/reflect/jvm/internal/calls/ValueClassAwareCaller;->member:Ljava/lang/reflect/Member;

    .line 72
    move-object p2, p0

    check-cast p2, Lkotlin/reflect/jvm/internal/calls/ValueClassAwareCaller;

    .line 73
    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;->getReturnType()Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    move-result-object p2

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 75
    instance-of p3, p1, Lkotlin/reflect/jvm/internal/impl/descriptors/FunctionDescriptor;

    const/4 v0, 0x1

    if-eqz p3, :cond_e0

    move-object v3, p1

    check-cast v3, Lkotlin/reflect/jvm/internal/impl/descriptors/FunctionDescriptor;

    invoke-interface {v3}, Lkotlin/reflect/jvm/internal/impl/descriptors/FunctionDescriptor;->isSuspend()Z

    move-result v3

    if-eqz v3, :cond_e0

    .line 76
    invoke-static {p2}, Lkotlin/reflect/jvm/internal/impl/resolve/InlineClassesUtilsKt;->substitutedUnderlyingType(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    move-result-object v3

    if-eqz v3, :cond_e0

    invoke-static {v3}, Lkotlin/reflect/jvm/internal/impl/builtins/KotlinBuiltIns;->isPrimitiveType(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Z

    move-result v3

    if-ne v3, v0, :cond_e0

    goto :goto_eb

    .line 81
    :cond_e0
    invoke-static {p2}, Lkotlin/reflect/jvm/internal/calls/ValueClassAwareCallerKt;->access$toInlineClass(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Ljava/lang/Class;

    move-result-object p2

    if-eqz p2, :cond_eb

    invoke-static {p2, p1}, Lkotlin/reflect/jvm/internal/calls/ValueClassAwareCallerKt;->access$getBoxMethod(Ljava/lang/Class;Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;)Ljava/lang/reflect/Method;

    move-result-object p2

    goto :goto_ec

    :cond_eb
    :goto_eb
    move-object p2, v1

    .line 84
    :goto_ec
    move-object v3, p1

    check-cast v3, Lkotlin/reflect/jvm/internal/impl/descriptors/CallableDescriptor;

    invoke-static {v3}, Lkotlin/reflect/jvm/internal/impl/resolve/InlineClassesUtilsKt;->isGetterOfUnderlyingPropertyOfValueClass(Lkotlin/reflect/jvm/internal/impl/descriptors/CallableDescriptor;)Z

    move-result v3

    if-eqz v3, :cond_104

    .line 87
    new-instance p1, Lkotlin/reflect/jvm/internal/calls/ValueClassAwareCaller$BoxUnboxData;

    sget-object p3, Lkotlin/ranges/IntRange;->Companion:Lkotlin/ranges/IntRange$Companion;

    invoke-virtual {p3}, Lkotlin/ranges/IntRange$Companion;->getEMPTY()Lkotlin/ranges/IntRange;

    move-result-object p3

    new-array v1, v2, [Ljava/util/List;

    invoke-direct {p1, p3, v1, p2}, Lkotlin/reflect/jvm/internal/calls/ValueClassAwareCaller$BoxUnboxData;-><init>(Lkotlin/ranges/IntRange;[Ljava/util/List;Ljava/lang/reflect/Method;)V

    goto/16 :goto_1e2

    .line 91
    :cond_104
    iget-object v3, p0, Lkotlin/reflect/jvm/internal/calls/ValueClassAwareCaller;->caller:Lkotlin/reflect/jvm/internal/calls/Caller;

    instance-of v4, v3, Lkotlin/reflect/jvm/internal/calls/CallerImpl$Method$BoundStatic;

    const/4 v5, -0x1

    if-eqz v4, :cond_114

    check-cast v3, Lkotlin/reflect/jvm/internal/calls/CallerImpl$Method$BoundStatic;

    invoke-virtual {v3}, Lkotlin/reflect/jvm/internal/calls/CallerImpl$Method$BoundStatic;->isCallByToValueClassMangledMethod$kotlin_reflection()Z

    move-result v3

    if-nez v3, :cond_114

    goto :goto_143

    .line 97
    :cond_114
    iget-object v3, p0, Lkotlin/reflect/jvm/internal/calls/ValueClassAwareCaller;->caller:Lkotlin/reflect/jvm/internal/calls/Caller;

    instance-of v4, v3, Lkotlin/reflect/jvm/internal/calls/CallerImpl$Method$BoundStaticMultiFieldValueClass;

    if-eqz v4, :cond_11b

    goto :goto_143

    .line 99
    :cond_11b
    instance-of v4, p1, Lkotlin/reflect/jvm/internal/impl/descriptors/ConstructorDescriptor;

    if-eqz v4, :cond_124

    .line 100
    instance-of v3, v3, Lkotlin/reflect/jvm/internal/calls/BoundCaller;

    if-eqz v3, :cond_142

    goto :goto_143

    .line 102
    :cond_124
    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;->getDispatchReceiverParameter()Lkotlin/reflect/jvm/internal/impl/descriptors/ReceiverParameterDescriptor;

    move-result-object v3

    if-eqz v3, :cond_142

    iget-object v3, p0, Lkotlin/reflect/jvm/internal/calls/ValueClassAwareCaller;->caller:Lkotlin/reflect/jvm/internal/calls/Caller;

    instance-of v3, v3, Lkotlin/reflect/jvm/internal/calls/BoundCaller;

    if-nez v3, :cond_142

    .line 105
    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;->getContainingDeclaration()Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;

    move-result-object v3

    const-string v4, "getContainingDeclaration(...)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3}, Lkotlin/reflect/jvm/internal/impl/resolve/InlineClassesUtilsKt;->isValueClass(Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;)Z

    move-result v3

    if-eqz v3, :cond_140

    goto :goto_142

    :cond_140
    const/4 v5, 0x1

    goto :goto_143

    :cond_142
    :goto_142
    const/4 v5, 0x0

    .line 114
    :goto_143
    iget-object v3, p0, Lkotlin/reflect/jvm/internal/calls/ValueClassAwareCaller;->caller:Lkotlin/reflect/jvm/internal/calls/Caller;

    instance-of v4, v3, Lkotlin/reflect/jvm/internal/calls/CallerImpl$Method$BoundStaticMultiFieldValueClass;

    if-eqz v4, :cond_151

    check-cast v3, Lkotlin/reflect/jvm/internal/calls/CallerImpl$Method$BoundStaticMultiFieldValueClass;

    invoke-virtual {v3}, Lkotlin/reflect/jvm/internal/calls/CallerImpl$Method$BoundStaticMultiFieldValueClass;->getReceiverComponentsCount()I

    move-result v3

    neg-int v3, v3

    goto :goto_152

    :cond_151
    move v3, v5

    .line 116
    :goto_152
    iget-object v4, p0, Lkotlin/reflect/jvm/internal/calls/ValueClassAwareCaller;->caller:Lkotlin/reflect/jvm/internal/calls/Caller;

    invoke-interface {v4}, Lkotlin/reflect/jvm/internal/calls/Caller;->getMember()Ljava/lang/reflect/Member;

    move-result-object v4

    sget-object v6, Lkotlin/reflect/jvm/internal/calls/ValueClassAwareCaller$$Lambda$0;->INSTANCE:Lkotlin/reflect/jvm/internal/calls/ValueClassAwareCaller$$Lambda$0;

    invoke-static {p1, v4, v6}, Lkotlin/reflect/jvm/internal/calls/ValueClassAwareCallerKt;->access$makeKotlinParameterTypes(Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;Ljava/lang/reflect/Member;Lkotlin/jvm/functions/Function1;)Ljava/util/List;

    move-result-object v4

    .line 118
    move-object v6, v4

    check-cast v6, Ljava/lang/Iterable;

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    const/4 v7, 0x0

    :goto_166
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_184

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    invoke-static {v8}, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutionKt;->asSimpleType(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    move-result-object v8

    invoke-static {v8}, Lkotlin/reflect/jvm/internal/calls/ValueClassAwareCallerKt;->getMfvcUnboxMethods(Lkotlin/reflect/jvm/internal/impl/types/SimpleType;)Ljava/util/List;

    move-result-object v8

    if-eqz v8, :cond_181

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    goto :goto_182

    :cond_181
    const/4 v8, 0x1

    :goto_182
    add-int/2addr v7, v8

    goto :goto_166

    .line 123
    :cond_184
    iget-boolean v6, p0, Lkotlin/reflect/jvm/internal/calls/ValueClassAwareCaller;->isDefault:Z

    if-eqz v6, :cond_18e

    add-int/lit8 v6, v7, 0x1f

    div-int/lit8 v6, v6, 0x20

    add-int/2addr v6, v0

    goto :goto_18f

    :cond_18e
    const/4 v6, 0x0

    :goto_18f
    if-eqz p3, :cond_19c

    .line 124
    move-object p3, p1

    check-cast p3, Lkotlin/reflect/jvm/internal/impl/descriptors/FunctionDescriptor;

    invoke-interface {p3}, Lkotlin/reflect/jvm/internal/impl/descriptors/FunctionDescriptor;->isSuspend()Z

    move-result p3

    if-eqz p3, :cond_19c

    const/4 p3, 0x1

    goto :goto_19d

    :cond_19c
    const/4 p3, 0x0

    :goto_19d
    add-int/2addr v6, p3

    add-int/2addr v7, v3

    add-int/2addr v7, v6

    .line 126
    move-object p3, p0

    check-cast p3, Lkotlin/reflect/jvm/internal/calls/Caller;

    iget-boolean v3, p0, Lkotlin/reflect/jvm/internal/calls/ValueClassAwareCaller;->isDefault:Z

    invoke-static {p3, v7, p1, v3}, Lkotlin/reflect/jvm/internal/calls/ValueClassAwareCallerKt;->access$checkParametersSize(Lkotlin/reflect/jvm/internal/calls/Caller;ILkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;Z)V

    .line 130
    invoke-static {v5, v2}, Ljava/lang/Math;->max(II)I

    move-result p3

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v3

    add-int/2addr v3, v5

    invoke-static {p3, v3}, Lkotlin/ranges/RangesKt;->until(II)Lkotlin/ranges/IntRange;

    move-result-object p3

    .line 132
    new-array v3, v7, [Ljava/util/List;

    const/4 v6, 0x0

    :goto_1b8
    if-ge v6, v7, :cond_1dd

    .line 133
    invoke-virtual {p3}, Lkotlin/ranges/IntRange;->getFirst()I

    move-result v8

    invoke-virtual {p3}, Lkotlin/ranges/IntRange;->getLast()I

    move-result v9

    if-gt v6, v9, :cond_1d7

    if-gt v8, v6, :cond_1d7

    sub-int v8, v6, v5

    .line 134
    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    invoke-static {v8}, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutionKt;->asSimpleType(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    move-result-object v8

    invoke-static {v8, p1}, Lkotlin/reflect/jvm/internal/calls/ValueClassAwareCallerKt;->access$getValueClassUnboxMethods(Lkotlin/reflect/jvm/internal/impl/types/SimpleType;Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;)Ljava/util/List;

    move-result-object v8

    goto :goto_1d8

    :cond_1d7
    move-object v8, v1

    .line 135
    :goto_1d8
    aput-object v8, v3, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_1b8

    .line 138
    :cond_1dd
    new-instance p1, Lkotlin/reflect/jvm/internal/calls/ValueClassAwareCaller$BoxUnboxData;

    invoke-direct {p1, p3, v3, p2}, Lkotlin/reflect/jvm/internal/calls/ValueClassAwareCaller$BoxUnboxData;-><init>(Lkotlin/ranges/IntRange;[Ljava/util/List;Ljava/lang/reflect/Method;)V

    .line 72
    :goto_1e2
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/calls/ValueClassAwareCaller;->data:Lkotlin/reflect/jvm/internal/calls/ValueClassAwareCaller$BoxUnboxData;

    .line 141
    invoke-static {}, Lkotlin/collections/CollectionsKt;->createListBuilder()Ljava/util/List;

    move-result-object p2

    .line 142
    iget-object p3, p0, Lkotlin/reflect/jvm/internal/calls/ValueClassAwareCaller;->caller:Lkotlin/reflect/jvm/internal/calls/Caller;

    .line 143
    instance-of v1, p3, Lkotlin/reflect/jvm/internal/calls/CallerImpl$Method$BoundStaticMultiFieldValueClass;

    if-eqz v1, :cond_1f6

    check-cast p3, Lkotlin/reflect/jvm/internal/calls/CallerImpl$Method$BoundStaticMultiFieldValueClass;

    invoke-virtual {p3}, Lkotlin/reflect/jvm/internal/calls/CallerImpl$Method$BoundStaticMultiFieldValueClass;->getBoundReceiverComponents$kotlin_reflection()[Ljava/lang/Object;

    move-result-object p3

    array-length p3, p3

    goto :goto_1fd

    .line 144
    :cond_1f6
    instance-of p3, p3, Lkotlin/reflect/jvm/internal/calls/CallerImpl$Method$BoundStatic;

    if-eqz p3, :cond_1fc

    const/4 p3, 0x1

    goto :goto_1fd

    :cond_1fc
    const/4 p3, 0x0

    :goto_1fd
    if-lez p3, :cond_206

    .line 148
    invoke-static {v2, p3}, Lkotlin/ranges/RangesKt;->until(II)Lkotlin/ranges/IntRange;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 150
    :cond_206
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/calls/ValueClassAwareCaller$BoxUnboxData;->getUnboxParameters()[Ljava/util/List;

    move-result-object p1

    array-length v1, p1

    const/4 v3, 0x0

    :goto_20c
    if-ge v3, v1, :cond_224

    aget-object v4, p1, v3

    if-eqz v4, :cond_217

    .line 151
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    goto :goto_218

    :cond_217
    const/4 v4, 0x1

    :goto_218
    add-int/2addr v4, p3

    .line 152
    invoke-static {p3, v4}, Lkotlin/ranges/RangesKt;->until(II)Lkotlin/ranges/IntRange;

    move-result-object p3

    invoke-interface {p2, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    move p3, v4

    goto :goto_20c

    .line 141
    :cond_224
    invoke-static {p2}, Lkotlin/collections/CollectionsKt;->build(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    .line 408
    new-array p2, v2, [Lkotlin/ranges/IntRange;

    invoke-interface {p1, p2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lkotlin/ranges/IntRange;

    .line 155
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/calls/ValueClassAwareCaller;->slices:[Lkotlin/ranges/IntRange;

    .line 166
    iget-object p1, p0, Lkotlin/reflect/jvm/internal/calls/ValueClassAwareCaller;->data:Lkotlin/reflect/jvm/internal/calls/ValueClassAwareCaller$BoxUnboxData;

    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/calls/ValueClassAwareCaller$BoxUnboxData;->getArgumentRange()Lkotlin/ranges/IntRange;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    .line 409
    instance-of p2, p1, Ljava/util/Collection;

    if-eqz p2, :cond_24a

    move-object p2, p1

    check-cast p2, Ljava/util/Collection;

    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_24a

    goto :goto_26d

    .line 410
    :cond_24a
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_24e
    :goto_24e
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_26d

    move-object p2, p1

    check-cast p2, Lkotlin/collections/IntIterator;

    invoke-virtual {p2}, Lkotlin/collections/IntIterator;->nextInt()I

    move-result p2

    .line 166
    iget-object p3, p0, Lkotlin/reflect/jvm/internal/calls/ValueClassAwareCaller;->data:Lkotlin/reflect/jvm/internal/calls/ValueClassAwareCaller$BoxUnboxData;

    invoke-virtual {p3}, Lkotlin/reflect/jvm/internal/calls/ValueClassAwareCaller$BoxUnboxData;->getUnboxParameters()[Ljava/util/List;

    move-result-object p3

    aget-object p2, p3, p2

    if-nez p2, :cond_266

    goto :goto_24e

    :cond_266
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-le p2, v0, :cond_24e

    const/4 v2, 0x1

    :cond_26d
    :goto_26d
    iput-boolean v2, p0, Lkotlin/reflect/jvm/internal/calls/ValueClassAwareCaller;->hasMfvcParameters:Z

    return-void
.end method

.method static synthetic accessor$ValueClassAwareCaller$lambda0(Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;)Z
    .registers 1

    invoke-static {p0}, Lkotlin/reflect/jvm/internal/calls/ValueClassAwareCaller;->data$lambda$5$lambda$3(Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;)Z

    move-result p0

    return p0
.end method

.method private static final data$lambda$5$lambda$3(Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;)Z
    .registers 2

    const-string v0, "$this$makeKotlinParameterTypes"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 116
    check-cast p0, Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;

    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/resolve/InlineClassesUtilsKt;->isValueClass(Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public call([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 16

    const-string v0, "args"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 169
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/calls/ValueClassAwareCaller;->data:Lkotlin/reflect/jvm/internal/calls/ValueClassAwareCaller$BoxUnboxData;

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/calls/ValueClassAwareCaller$BoxUnboxData;->getArgumentRange()Lkotlin/ranges/IntRange;

    move-result-object v0

    .line 170
    iget-object v1, p0, Lkotlin/reflect/jvm/internal/calls/ValueClassAwareCaller;->data:Lkotlin/reflect/jvm/internal/calls/ValueClassAwareCaller$BoxUnboxData;

    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/calls/ValueClassAwareCaller$BoxUnboxData;->getUnboxParameters()[Ljava/util/List;

    move-result-object v1

    .line 171
    iget-object v2, p0, Lkotlin/reflect/jvm/internal/calls/ValueClassAwareCaller;->data:Lkotlin/reflect/jvm/internal/calls/ValueClassAwareCaller$BoxUnboxData;

    invoke-virtual {v2}, Lkotlin/reflect/jvm/internal/calls/ValueClassAwareCaller$BoxUnboxData;->getBox()Ljava/lang/reflect/Method;

    move-result-object v2

    .line 174
    invoke-virtual {v0}, Lkotlin/ranges/IntRange;->isEmpty()Z

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v3, :cond_22

    goto/16 :goto_eb

    .line 175
    :cond_22
    iget-boolean v3, p0, Lkotlin/reflect/jvm/internal/calls/ValueClassAwareCaller;->hasMfvcParameters:Z

    const-string v7, "getReturnType(...)"

    if-eqz v3, :cond_ab

    array-length v3, p1

    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->createListBuilder(I)Ljava/util/List;

    move-result-object v3

    .line 176
    invoke-virtual {v0}, Lkotlin/ranges/IntRange;->getFirst()I

    move-result v8

    const/4 v9, 0x0

    :goto_32
    if-ge v9, v8, :cond_3c

    .line 177
    aget-object v10, p1, v9

    invoke-interface {v3, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v9, v9, 0x1

    goto :goto_32

    .line 179
    :cond_3c
    invoke-virtual {v0}, Lkotlin/ranges/IntRange;->getFirst()I

    move-result v8

    invoke-virtual {v0}, Lkotlin/ranges/IntRange;->getLast()I

    move-result v9

    if-gt v8, v9, :cond_89

    .line 180
    :goto_46
    aget-object v10, v1, v8

    .line 181
    aget-object v11, p1, v8

    if-eqz v10, :cond_7d

    .line 184
    check-cast v10, Ljava/lang/Iterable;

    .line 412
    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_52
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_79

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    .line 413
    move-object v13, v3

    check-cast v13, Ljava/util/Collection;

    check-cast v12, Ljava/lang/reflect/Method;

    if-eqz v11, :cond_68

    .line 184
    invoke-virtual {v12, v11, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    goto :goto_75

    :cond_68
    invoke-virtual {v12}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v12

    invoke-static {v12, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v12, Ljava/lang/reflect/Type;

    invoke-static {v12}, Lkotlin/reflect/jvm/internal/UtilKt;->defaultPrimitiveValue(Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v12

    .line 413
    :goto_75
    invoke-interface {v13, v12}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_52

    .line 414
    :cond_79
    move-object v10, v3

    check-cast v10, Ljava/util/Collection;

    goto :goto_84

    .line 186
    :cond_7d
    invoke-interface {v3, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v10

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    :goto_84
    if-eq v8, v9, :cond_89

    add-int/lit8 v8, v8, 0x1

    goto :goto_46

    .line 189
    :cond_89
    invoke-virtual {v0}, Lkotlin/ranges/IntRange;->getLast()I

    move-result v0

    add-int/2addr v0, v6

    invoke-static {p1}, Lkotlin/collections/ArraysKt;->getLastIndex([Ljava/lang/Object;)I

    move-result v1

    if-gt v0, v1, :cond_9e

    .line 190
    :goto_94
    aget-object v7, p1, v0

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eq v0, v1, :cond_9e

    add-int/lit8 v0, v0, 0x1

    goto :goto_94

    .line 175
    :cond_9e
    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->build(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    .line 418
    new-array v0, v5, [Ljava/lang/Object;

    invoke-interface {p1, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    goto :goto_eb

    .line 193
    :cond_ab
    array-length v3, p1

    new-array v8, v3, [Ljava/lang/Object;

    const/4 v9, 0x0

    :goto_af
    if-ge v9, v3, :cond_ea

    .line 194
    invoke-virtual {v0}, Lkotlin/ranges/IntRange;->getFirst()I

    move-result v10

    invoke-virtual {v0}, Lkotlin/ranges/IntRange;->getLast()I

    move-result v11

    if-gt v9, v11, :cond_e3

    if-gt v10, v9, :cond_e3

    .line 195
    aget-object v10, v1, v9

    if-eqz v10, :cond_c8

    invoke-static {v10}, Lkotlin/collections/CollectionsKt;->single(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/reflect/Method;

    goto :goto_c9

    :cond_c8
    move-object v10, v4

    .line 196
    :goto_c9
    aget-object v11, p1, v9

    if-nez v10, :cond_ce

    goto :goto_e5

    :cond_ce
    if-eqz v11, :cond_d5

    .line 200
    invoke-virtual {v10, v11, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    goto :goto_e5

    .line 201
    :cond_d5
    invoke-virtual {v10}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v10

    invoke-static {v10, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v10, Ljava/lang/reflect/Type;

    invoke-static {v10}, Lkotlin/reflect/jvm/internal/UtilKt;->defaultPrimitiveValue(Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v11

    goto :goto_e5

    .line 204
    :cond_e3
    aget-object v11, p1, v9

    :goto_e5
    aput-object v11, v8, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_af

    :cond_ea
    move-object p1, v8

    .line 209
    :goto_eb
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/calls/ValueClassAwareCaller;->caller:Lkotlin/reflect/jvm/internal/calls/Caller;

    invoke-interface {v0, p1}, Lkotlin/reflect/jvm/internal/calls/Caller;->call([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 210
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    if-ne p1, v0, :cond_f8

    goto :goto_106

    :cond_f8
    if-eqz v2, :cond_106

    .line 213
    new-array v0, v6, [Ljava/lang/Object;

    aput-object p1, v0, v5

    invoke-virtual {v2, v4, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_105

    goto :goto_106

    :cond_105
    return-object v0

    :cond_106
    :goto_106
    return-object p1
.end method

.method public getMember()Ljava/lang/reflect/Member;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TM;"
        }
    .end annotation

    .line 58
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/calls/ValueClassAwareCaller;->member:Ljava/lang/reflect/Member;

    return-object v0
.end method

.method public getParameterTypes()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/reflect/Type;",
            ">;"
        }
    .end annotation

    .line 65
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/calls/ValueClassAwareCaller;->caller:Lkotlin/reflect/jvm/internal/calls/Caller;

    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/calls/Caller;->getParameterTypes()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getRealSlicesOfParameters(I)Lkotlin/ranges/IntRange;
    .registers 4

    if-ltz p1, :cond_a

    .line 158
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/calls/ValueClassAwareCaller;->slices:[Lkotlin/ranges/IntRange;

    array-length v1, v0

    if-ge p1, v1, :cond_a

    aget-object p1, v0, p1

    return-object p1

    .line 159
    :cond_a
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/calls/ValueClassAwareCaller;->slices:[Lkotlin/ranges/IntRange;

    array-length v1, v0

    if-nez v1, :cond_15

    new-instance v0, Lkotlin/ranges/IntRange;

    invoke-direct {v0, p1, p1}, Lkotlin/ranges/IntRange;-><init>(II)V

    return-object v0

    .line 161
    :cond_15
    array-length v1, v0

    sub-int/2addr p1, v1

    invoke-static {v0}, Lkotlin/collections/ArraysKt;->last([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/ranges/IntRange;

    invoke-virtual {v0}, Lkotlin/ranges/IntRange;->getLast()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    add-int/2addr p1, v0

    .line 162
    new-instance v0, Lkotlin/ranges/IntRange;

    invoke-direct {v0, p1, p1}, Lkotlin/ranges/IntRange;-><init>(II)V

    return-object v0
.end method

.method public getReturnType()Ljava/lang/reflect/Type;
    .registers 2

    .line 62
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/calls/ValueClassAwareCaller;->caller:Lkotlin/reflect/jvm/internal/calls/Caller;

    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/calls/Caller;->getReturnType()Ljava/lang/reflect/Type;

    move-result-object v0

    return-object v0
.end method

.method public isBoundInstanceCallWithValueClasses()Z
    .registers 2

    .line 68
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/calls/ValueClassAwareCaller;->caller:Lkotlin/reflect/jvm/internal/calls/Caller;

    instance-of v0, v0, Lkotlin/reflect/jvm/internal/calls/CallerImpl$Method$BoundInstance;

    return v0
.end method

###### Class kotlin.reflect.jvm.internal.calls.ValueClassAwareCaller.BoxUnboxData (kotlin.reflect.jvm.internal.calls.ValueClassAwareCaller$BoxUnboxData)
.class final Lkotlin/reflect/jvm/internal/calls/ValueClassAwareCaller$BoxUnboxData;
.super Ljava/lang/Object;
.source "ValueClassAwareCaller.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/calls/ValueClassAwareCaller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "BoxUnboxData"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u000b\u0008\u0002\u0018\u00002\u00020\u0001B/\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0014\u0010\u0004\u001a\u0010\u0012\u000c\u0012\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u00060\u0005\u0012\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\u0004\u0008\t\u0010\nR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR!\u0010\u0004\u001a\u0010\u0012\u000c\u0012\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u00060\u0005\u00a2\u0006\n\n\u0002\u0010\u000f\u001a\u0004\u0008\r\u0010\u000eR\u0013\u0010\u0008\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011\u00a8\u0006\u0012"
    }
    d2 = {
        "Lkotlin/reflect/jvm/internal/calls/ValueClassAwareCaller$BoxUnboxData;",
        "",
        "argumentRange",
        "Lkotlin/ranges/IntRange;",
        "unboxParameters",
        "",
        "",
        "Ljava/lang/reflect/Method;",
        "box",
        "<init>",
        "(Lkotlin/ranges/IntRange;[Ljava/util/List;Ljava/lang/reflect/Method;)V",
        "getArgumentRange",
        "()Lkotlin/ranges/IntRange;",
        "getUnboxParameters",
        "()[Ljava/util/List;",
        "[Ljava/util/List;",
        "getBox",
        "()Ljava/lang/reflect/Method;",
        "kotlin-reflection"
    }
    k = 0x1
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final argumentRange:Lkotlin/ranges/IntRange;

.field private final box:Ljava/lang/reflect/Method;

.field private final unboxParameters:[Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/List<",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkotlin/ranges/IntRange;[Ljava/util/List;Ljava/lang/reflect/Method;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/ranges/IntRange;",
            "[",
            "Ljava/util/List<",
            "Ljava/lang/reflect/Method;",
            ">;",
            "Ljava/lang/reflect/Method;",
            ")V"
        }
    .end annotation

    const-string v0, "argumentRange"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "unboxParameters"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/calls/ValueClassAwareCaller$BoxUnboxData;->argumentRange:Lkotlin/ranges/IntRange;

    iput-object p2, p0, Lkotlin/reflect/jvm/internal/calls/ValueClassAwareCaller$BoxUnboxData;->unboxParameters:[Ljava/util/List;

    iput-object p3, p0, Lkotlin/reflect/jvm/internal/calls/ValueClassAwareCaller$BoxUnboxData;->box:Ljava/lang/reflect/Method;

    return-void
.end method


# virtual methods
.method public final getArgumentRange()Lkotlin/ranges/IntRange;
    .registers 2

    .line 70
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/calls/ValueClassAwareCaller$BoxUnboxData;->argumentRange:Lkotlin/ranges/IntRange;

    return-object v0
.end method

.method public final getBox()Ljava/lang/reflect/Method;
    .registers 2

    .line 70
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/calls/ValueClassAwareCaller$BoxUnboxData;->box:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method public final getUnboxParameters()[Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Ljava/util/List<",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation

    .line 70
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/calls/ValueClassAwareCaller$BoxUnboxData;->unboxParameters:[Ljava/util/List;

    return-object v0
.end method

###### Class kotlin.reflect.jvm.internal.calls.ValueClassAwareCaller.MultiFieldValueClassPrimaryConstructorCaller (kotlin.reflect.jvm.internal.calls.ValueClassAwareCaller$MultiFieldValueClassPrimaryConstructorCaller)
.class public final Lkotlin/reflect/jvm/internal/calls/ValueClassAwareCaller$MultiFieldValueClassPrimaryConstructorCaller;
.super Ljava/lang/Object;
.source "ValueClassAwareCaller.kt"

# interfaces
.implements Lkotlin/reflect/jvm/internal/calls/Caller;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/calls/ValueClassAwareCaller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MultiFieldValueClassPrimaryConstructorCaller"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nValueClassAwareCaller.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ValueClassAwareCaller.kt\nkotlin/reflect/jvm/internal/calls/ValueClassAwareCaller$MultiFieldValueClassPrimaryConstructorCaller\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,392:1\n1563#2:393\n1634#2,3:394\n1573#2:397\n1604#2,3:398\n1563#2:401\n1634#2,3:402\n1607#2:405\n1374#2:406\n1460#2,2:407\n1563#2:409\n1634#2,3:410\n1462#2,3:413\n37#3:416\n36#3,3:417\n*S KotlinDebug\n*F\n+ 1 ValueClassAwareCaller.kt\nkotlin/reflect/jvm/internal/calls/ValueClassAwareCaller$MultiFieldValueClassPrimaryConstructorCaller\n*L\n224#1:393\n224#1:394,3\n232#1:397\n232#1:398,3\n234#1:401\n234#1:402,3\n232#1:405\n241#1:406\n241#1:407,2\n241#1:409\n241#1:410,3\n241#1:413,3\n241#1:416\n241#1:417,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000R\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0001\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0011\n\u0002\u0008\u0002\u0018\u00002\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u0001B-\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u0012\u000c\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\n\u00a2\u0006\u0004\u0008\u000c\u0010\rJ\u001b\u0010\u001f\u001a\u0004\u0018\u00010 2\n\u0010!\u001a\u0006\u0012\u0002\u0008\u00030\"H\u0016\u00a2\u0006\u0002\u0010#R\u000e\u0010\u000e\u001a\u00020\u000fX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u000fX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001c\u0010\u0011\u001a\u0010\u0012\u000c\u0012\n\u0012\u0004\u0012\u00020\u000f\u0018\u00010\n0\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0012\u001a\u0004\u0018\u00010\u00028VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0013\u0010\u0014R\u0014\u0010\u0015\u001a\u00020\u00168VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0017\u0010\u0018R!\u0010\u0019\u001a\u0012\u0012\u000e\u0012\u000c\u0012\u0008\u0012\u0006\u0012\u0002\u0008\u00030\u001a0\n0\n\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001b\u0010\u001cR\u001a\u0010\u001d\u001a\u0008\u0012\u0004\u0012\u00020\u00160\nX\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001e\u0010\u001c\u00a8\u0006$"
    }
    d2 = {
        "Lkotlin/reflect/jvm/internal/calls/ValueClassAwareCaller$MultiFieldValueClassPrimaryConstructorCaller;",
        "Lkotlin/reflect/jvm/internal/calls/Caller;",
        "",
        "descriptor",
        "Lkotlin/reflect/jvm/internal/impl/descriptors/FunctionDescriptor;",
        "container",
        "Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl;",
        "constructorDesc",
        "",
        "originalParameters",
        "",
        "Lkotlin/reflect/jvm/internal/impl/descriptors/ParameterDescriptor;",
        "<init>",
        "(Lorg/jetbrains/kotlin/descriptors/FunctionDescriptor;Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl;Ljava/lang/String;Ljava/util/List;)V",
        "constructorImpl",
        "Ljava/lang/reflect/Method;",
        "boxMethod",
        "parameterUnboxMethods",
        "member",
        "getMember",
        "()Ljava/lang/Void;",
        "returnType",
        "Ljava/lang/reflect/Type;",
        "getReturnType",
        "()Ljava/lang/reflect/Type;",
        "originalParametersGroups",
        "Ljava/lang/Class;",
        "getOriginalParametersGroups",
        "()Ljava/util/List;",
        "parameterTypes",
        "getParameterTypes",
        "call",
        "",
        "args",
        "",
        "([Ljava/lang/Object;)Ljava/lang/Object;",
        "kotlin-reflection"
    }
    k = 0x1
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final boxMethod:Ljava/lang/reflect/Method;

.field private final constructorImpl:Ljava/lang/reflect/Method;

.field private final originalParametersGroups:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "*>;>;>;"
        }
    .end annotation
.end field

.field private final parameterTypes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/reflect/Type;",
            ">;"
        }
    .end annotation
.end field

.field private final parameterUnboxMethods:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Ljava/lang/reflect/Method;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkotlin/reflect/jvm/internal/impl/descriptors/FunctionDescriptor;Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl;Ljava/lang/String;Ljava/util/List;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/FunctionDescriptor;",
            "Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "+",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/ParameterDescriptor;",
            ">;)V"
        }
    .end annotation

    const-string v0, "descriptor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "container"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "constructorDesc"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "originalParameters"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 216
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 222
    const-string v0, "constructor-impl"

    invoke-virtual {p2, v0, p3}, Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl;->findMethodBySignature(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/calls/ValueClassAwareCaller$MultiFieldValueClassPrimaryConstructorCaller;->constructorImpl:Ljava/lang/reflect/Method;

    .line 223
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "V"

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {p3, v1}, Lkotlin/text/StringsKt;->removeSuffix(Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl;->getJClass()Ljava/lang/Class;

    move-result-object p3

    invoke-static {p3}, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectClassUtilKt;->getDesc(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, "box-impl"

    invoke-virtual {p2, v0, p3}, Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl;->findMethodBySignature(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object p2

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iput-object p2, p0, Lkotlin/reflect/jvm/internal/calls/ValueClassAwareCaller$MultiFieldValueClassPrimaryConstructorCaller;->boxMethod:Ljava/lang/reflect/Method;

    .line 224
    check-cast p4, Ljava/lang/Iterable;

    .line 393
    new-instance p2, Ljava/util/ArrayList;

    const/16 p3, 0xa

    invoke-static {p4, p3}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v0

    invoke-direct {p2, v0}, Ljava/util/ArrayList;-><init>(I)V

    check-cast p2, Ljava/util/Collection;

    .line 394
    invoke-interface {p4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_83

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 395
    check-cast v1, Lkotlin/reflect/jvm/internal/impl/descriptors/ParameterDescriptor;

    .line 225
    invoke-interface {v1}, Lkotlin/reflect/jvm/internal/impl/descriptors/ParameterDescriptor;->getType()Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    move-result-object v1

    const-string v2, "getType(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutionKt;->asSimpleType(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    move-result-object v1

    move-object v2, p1

    check-cast v2, Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;

    invoke-static {v1, v2}, Lkotlin/reflect/jvm/internal/calls/ValueClassAwareCallerKt;->access$getValueClassUnboxMethods(Lkotlin/reflect/jvm/internal/impl/types/SimpleType;Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;)Ljava/util/List;

    move-result-object v1

    .line 395
    invoke-interface {p2, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_5f

    .line 396
    :cond_83
    check-cast p2, Ljava/util/List;

    .line 224
    iput-object p2, p0, Lkotlin/reflect/jvm/internal/calls/ValueClassAwareCaller$MultiFieldValueClassPrimaryConstructorCaller;->parameterUnboxMethods:Ljava/util/List;

    .line 397
    new-instance p1, Ljava/util/ArrayList;

    invoke-static {p4, p3}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result p2

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(I)V

    check-cast p1, Ljava/util/Collection;

    .line 399
    invoke-interface {p4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 p4, 0x0

    :goto_97
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_ff

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    add-int/lit8 v1, p4, 0x1

    if-gez p4, :cond_a8

    .line 400
    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    :cond_a8
    check-cast v0, Lkotlin/reflect/jvm/internal/impl/descriptors/ParameterDescriptor;

    .line 233
    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/ParameterDescriptor;->getType()Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    move-result-object v0

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;->getConstructor()Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;->getDeclarationDescriptor()Lkotlin/reflect/jvm/internal/impl/descriptors/ClassifierDescriptor;

    move-result-object v0

    const-string v2, "null cannot be cast to non-null type org.jetbrains.kotlin.descriptors.ClassDescriptor"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;

    .line 234
    iget-object v2, p0, Lkotlin/reflect/jvm/internal/calls/ValueClassAwareCaller$MultiFieldValueClassPrimaryConstructorCaller;->parameterUnboxMethods:Ljava/util/List;

    invoke-interface {v2, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/util/List;

    if-eqz p4, :cond_ef

    check-cast p4, Ljava/lang/Iterable;

    .line 401
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p4, p3}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v0, Ljava/util/Collection;

    .line 402
    invoke-interface {p4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :goto_d8
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_ec

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 403
    check-cast v2, Ljava/lang/reflect/Method;

    .line 234
    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v2

    .line 403
    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_d8

    .line 404
    :cond_ec
    check-cast v0, Ljava/util/List;

    goto :goto_fa

    .line 234
    :cond_ef
    invoke-static {v0}, Lkotlin/reflect/jvm/internal/UtilKt;->toJavaClass(Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;)Ljava/lang/Class;

    move-result-object p4

    invoke-static {p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {p4}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 400
    :goto_fa
    invoke-interface {p1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move p4, v1

    goto :goto_97

    .line 405
    :cond_ff
    check-cast p1, Ljava/util/List;

    .line 232
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/calls/ValueClassAwareCaller$MultiFieldValueClassPrimaryConstructorCaller;->originalParametersGroups:Ljava/util/List;

    .line 237
    check-cast p1, Ljava/lang/Iterable;

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->flatten(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/calls/ValueClassAwareCaller$MultiFieldValueClassPrimaryConstructorCaller;->parameterTypes:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public call([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 8

    const-string v0, "args"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 240
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/calls/ValueClassAwareCaller$MultiFieldValueClassPrimaryConstructorCaller;->parameterUnboxMethods:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    invoke-static {p1, v0}, Lkotlin/collections/ArraysKt;->zip([Ljava/lang/Object;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    .line 406
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/Collection;

    .line 407
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1a
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_67

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 408
    check-cast v1, Lkotlin/Pair;

    invoke-virtual {v1}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_5d

    .line 241
    check-cast v1, Ljava/lang/Iterable;

    .line 409
    new-instance v4, Ljava/util/ArrayList;

    const/16 v5, 0xa

    invoke-static {v1, v5}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v4, Ljava/util/Collection;

    .line 410
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_46
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 411
    check-cast v5, Ljava/lang/reflect/Method;

    .line 241
    invoke-virtual {v5, v3, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 411
    invoke-interface {v4, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_46

    .line 412
    :cond_5a
    check-cast v4, Ljava/util/List;

    goto :goto_61

    .line 241
    :cond_5d
    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    :goto_61
    check-cast v4, Ljava/lang/Iterable;

    .line 413
    invoke-static {v0, v4}, Lkotlin/collections/CollectionsKt;->addAll(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    goto :goto_1a

    .line 415
    :cond_67
    check-cast v0, Ljava/util/List;

    .line 406
    check-cast v0, Ljava/util/Collection;

    const/4 p1, 0x0

    .line 419
    new-array p1, p1, [Ljava/lang/Object;

    invoke-interface {v0, p1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    .line 242
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/calls/ValueClassAwareCaller$MultiFieldValueClassPrimaryConstructorCaller;->constructorImpl:Ljava/lang/reflect/Method;

    array-length v1, p1

    invoke-static {p1, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/calls/ValueClassAwareCaller$MultiFieldValueClassPrimaryConstructorCaller;->boxMethod:Ljava/lang/reflect/Method;

    array-length v1, p1

    invoke-static {p1, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, v2, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public default$isBoundInstanceCallWithValueClasses()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getMember()Ljava/lang/Void;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic getMember()Ljava/lang/reflect/Member;
    .registers 2

    .line 216
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/calls/ValueClassAwareCaller$MultiFieldValueClassPrimaryConstructorCaller;->getMember()Ljava/lang/Void;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Member;

    return-object v0
.end method

.method public final getOriginalParametersGroups()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "*>;>;>;"
        }
    .end annotation

    .line 232
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/calls/ValueClassAwareCaller$MultiFieldValueClassPrimaryConstructorCaller;->originalParametersGroups:Ljava/util/List;

    return-object v0
.end method

.method public getParameterTypes()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/reflect/Type;",
            ">;"
        }
    .end annotation

    .line 237
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/calls/ValueClassAwareCaller$MultiFieldValueClassPrimaryConstructorCaller;->parameterTypes:Ljava/util/List;

    return-object v0
.end method

.method public getReturnType()Ljava/lang/reflect/Type;
    .registers 3

    .line 230
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/calls/ValueClassAwareCaller$MultiFieldValueClassPrimaryConstructorCaller;->boxMethod:Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getReturnType(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/reflect/Type;

    return-object v0
.end method

.method public isBoundInstanceCallWithValueClasses()Z
    .registers 2

    .line 216
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/calls/ValueClassAwareCaller$MultiFieldValueClassPrimaryConstructorCaller;->default$isBoundInstanceCallWithValueClasses()Z

    move-result v0

    return v0
.end method

###### Class kotlin.reflect.jvm.internal.calls.ValueClassAwareCaller$$Lambda$0 (kotlin.reflect.jvm.internal.calls.ValueClassAwareCaller$$Lambda$0)
.class Lkotlin/reflect/jvm/internal/calls/ValueClassAwareCaller$$Lambda$0;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# static fields
.field public static final INSTANCE:Lkotlin/reflect/jvm/internal/calls/ValueClassAwareCaller$$Lambda$0;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lkotlin/reflect/jvm/internal/calls/ValueClassAwareCaller$$Lambda$0;

    invoke-direct {v0}, Lkotlin/reflect/jvm/internal/calls/ValueClassAwareCaller$$Lambda$0;-><init>()V

    sput-object v0, Lkotlin/reflect/jvm/internal/calls/ValueClassAwareCaller$$Lambda$0;->INSTANCE:Lkotlin/reflect/jvm/internal/calls/ValueClassAwareCaller$$Lambda$0;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;

    invoke-static {p1}, Lkotlin/reflect/jvm/internal/calls/ValueClassAwareCaller;->accessor$ValueClassAwareCaller$lambda0(Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
