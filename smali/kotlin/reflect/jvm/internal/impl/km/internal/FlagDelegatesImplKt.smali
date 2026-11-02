###### Class kotlin.reflect.jvm.internal.impl.km.internal.FlagDelegatesImplKt (kotlin.reflect.jvm.internal.impl.km.internal.FlagDelegatesImplKt)
.class public final Lkotlin/reflect/jvm/internal/impl/km/internal/FlagDelegatesImplKt;
.super Ljava/lang/Object;
.source "FlagDelegatesImpl.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFlagDelegatesImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FlagDelegatesImpl.kt\nkotlin/metadata/internal/FlagDelegatesImplKt\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,88:1\n1563#2:89\n1634#2,3:90\n1563#2:93\n1634#2,3:94\n1563#2:97\n1634#2,3:98\n*S KotlinDebug\n*F\n+ 1 FlagDelegatesImpl.kt\nkotlin/metadata/internal/FlagDelegatesImplKt\n*L\n50#1:89\n50#1:90,3\n53#1:93\n53#1:94,3\n56#1:97\n56#1:98,3\n*E\n"
.end annotation


# direct methods
.method public static final classBooleanFlag(Lkotlin/reflect/jvm/internal/impl/km/internal/FlagImpl;)Lkotlin/reflect/jvm/internal/impl/km/internal/BooleanFlagDelegate;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/jvm/internal/impl/km/internal/FlagImpl;",
            ")",
            "Lkotlin/reflect/jvm/internal/impl/km/internal/BooleanFlagDelegate<",
            "Lkotlin/reflect/jvm/internal/impl/km/KmClass;",
            ">;"
        }
    .end annotation

    const-string v0, "flag"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/km/internal/BooleanFlagDelegate;

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/km/internal/FlagDelegatesImplKt$classBooleanFlag$1;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/km/internal/FlagDelegatesImplKt$classBooleanFlag$1;

    check-cast v1, Lkotlin/reflect/KMutableProperty1;

    invoke-direct {v0, v1, p0}, Lkotlin/reflect/jvm/internal/impl/km/internal/BooleanFlagDelegate;-><init>(Lkotlin/reflect/KMutableProperty1;Lkotlin/reflect/jvm/internal/impl/km/internal/FlagImpl;)V

    return-object v0
.end method

.method public static final constructorBooleanFlag(Lkotlin/reflect/jvm/internal/impl/km/internal/FlagImpl;)Lkotlin/reflect/jvm/internal/impl/km/internal/BooleanFlagDelegate;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/jvm/internal/impl/km/internal/FlagImpl;",
            ")",
            "Lkotlin/reflect/jvm/internal/impl/km/internal/BooleanFlagDelegate<",
            "Lkotlin/reflect/jvm/internal/impl/km/KmConstructor;",
            ">;"
        }
    .end annotation

    const-string v0, "flag"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/km/internal/BooleanFlagDelegate;

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/km/internal/FlagDelegatesImplKt$constructorBooleanFlag$1;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/km/internal/FlagDelegatesImplKt$constructorBooleanFlag$1;

    check-cast v1, Lkotlin/reflect/KMutableProperty1;

    invoke-direct {v0, v1, p0}, Lkotlin/reflect/jvm/internal/impl/km/internal/BooleanFlagDelegate;-><init>(Lkotlin/reflect/KMutableProperty1;Lkotlin/reflect/jvm/internal/impl/km/internal/FlagImpl;)V

    return-object v0
.end method

.method public static final functionBooleanFlag(Lkotlin/reflect/jvm/internal/impl/km/internal/FlagImpl;)Lkotlin/reflect/jvm/internal/impl/km/internal/BooleanFlagDelegate;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/jvm/internal/impl/km/internal/FlagImpl;",
            ")",
            "Lkotlin/reflect/jvm/internal/impl/km/internal/BooleanFlagDelegate<",
            "Lkotlin/reflect/jvm/internal/impl/km/KmFunction;",
            ">;"
        }
    .end annotation

    const-string v0, "flag"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/km/internal/BooleanFlagDelegate;

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/km/internal/FlagDelegatesImplKt$functionBooleanFlag$1;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/km/internal/FlagDelegatesImplKt$functionBooleanFlag$1;

    check-cast v1, Lkotlin/reflect/KMutableProperty1;

    invoke-direct {v0, v1, p0}, Lkotlin/reflect/jvm/internal/impl/km/internal/BooleanFlagDelegate;-><init>(Lkotlin/reflect/KMutableProperty1;Lkotlin/reflect/jvm/internal/impl/km/internal/FlagImpl;)V

    return-object v0
.end method

.method public static final memberKindDelegate(Lkotlin/reflect/KMutableProperty1;)Lkotlin/reflect/jvm/internal/impl/km/internal/EnumFlagDelegate;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Node:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/reflect/KMutableProperty1<",
            "TNode;",
            "Ljava/lang/Integer;",
            ">;)",
            "Lkotlin/reflect/jvm/internal/impl/km/internal/EnumFlagDelegate<",
            "TNode;",
            "Lkotlin/reflect/jvm/internal/impl/km/MemberKind;",
            ">;"
        }
    .end annotation

    const-string v0, "flags"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags;->MEMBER_KIND:Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags$FlagField;

    const-string v1, "MEMBER_KIND"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/km/MemberKind;->getEntries()Lkotlin/enums/EnumEntries;

    move-result-object v1

    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/km/MemberKind;->getEntries()Lkotlin/enums/EnumEntries;

    move-result-object v2

    check-cast v2, Ljava/lang/Iterable;

    .line 97
    new-instance v3, Ljava/util/ArrayList;

    const/16 v4, 0xa

    invoke-static {v2, v4}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v3, Ljava/util/Collection;

    .line 98
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_27
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 99
    check-cast v4, Lkotlin/reflect/jvm/internal/impl/km/MemberKind;

    .line 56
    invoke-virtual {v4}, Lkotlin/reflect/jvm/internal/impl/km/MemberKind;->getFlag$kotlin_metadata()Lkotlin/reflect/jvm/internal/impl/km/internal/FlagImpl;

    move-result-object v4

    .line 99
    invoke-interface {v3, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_27

    .line 100
    :cond_3b
    check-cast v3, Ljava/util/List;

    .line 56
    new-instance v2, Lkotlin/reflect/jvm/internal/impl/km/internal/EnumFlagDelegate;

    invoke-direct {v2, p0, v0, v1, v3}, Lkotlin/reflect/jvm/internal/impl/km/internal/EnumFlagDelegate;-><init>(Lkotlin/reflect/KMutableProperty1;Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags$FlagField;Lkotlin/enums/EnumEntries;Ljava/util/List;)V

    return-object v2
.end method

.method public static final modalityDelegate(Lkotlin/reflect/KMutableProperty1;)Lkotlin/reflect/jvm/internal/impl/km/internal/EnumFlagDelegate;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Node:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/reflect/KMutableProperty1<",
            "TNode;",
            "Ljava/lang/Integer;",
            ">;)",
            "Lkotlin/reflect/jvm/internal/impl/km/internal/EnumFlagDelegate<",
            "TNode;",
            "Lkotlin/reflect/jvm/internal/impl/km/Modality;",
            ">;"
        }
    .end annotation

    const-string v0, "flags"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags;->MODALITY:Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags$FlagField;

    const-string v1, "MODALITY"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/km/Modality;->getEntries()Lkotlin/enums/EnumEntries;

    move-result-object v1

    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/km/Modality;->getEntries()Lkotlin/enums/EnumEntries;

    move-result-object v2

    check-cast v2, Ljava/lang/Iterable;

    .line 93
    new-instance v3, Ljava/util/ArrayList;

    const/16 v4, 0xa

    invoke-static {v2, v4}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v3, Ljava/util/Collection;

    .line 94
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_27
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 95
    check-cast v4, Lkotlin/reflect/jvm/internal/impl/km/Modality;

    .line 53
    invoke-virtual {v4}, Lkotlin/reflect/jvm/internal/impl/km/Modality;->getFlag$kotlin_metadata()Lkotlin/reflect/jvm/internal/impl/km/internal/FlagImpl;

    move-result-object v4

    .line 95
    invoke-interface {v3, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_27

    .line 96
    :cond_3b
    check-cast v3, Ljava/util/List;

    .line 53
    new-instance v2, Lkotlin/reflect/jvm/internal/impl/km/internal/EnumFlagDelegate;

    invoke-direct {v2, p0, v0, v1, v3}, Lkotlin/reflect/jvm/internal/impl/km/internal/EnumFlagDelegate;-><init>(Lkotlin/reflect/KMutableProperty1;Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags$FlagField;Lkotlin/enums/EnumEntries;Ljava/util/List;)V

    return-object v2
.end method

.method public static final propertyAccessorBooleanFlag(Lkotlin/reflect/jvm/internal/impl/km/internal/FlagImpl;)Lkotlin/reflect/jvm/internal/impl/km/internal/BooleanFlagDelegate;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/jvm/internal/impl/km/internal/FlagImpl;",
            ")",
            "Lkotlin/reflect/jvm/internal/impl/km/internal/BooleanFlagDelegate<",
            "Lkotlin/reflect/jvm/internal/impl/km/KmPropertyAccessorAttributes;",
            ">;"
        }
    .end annotation

    const-string v0, "flag"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/km/internal/BooleanFlagDelegate;

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/km/internal/FlagDelegatesImplKt$propertyAccessorBooleanFlag$1;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/km/internal/FlagDelegatesImplKt$propertyAccessorBooleanFlag$1;

    check-cast v1, Lkotlin/reflect/KMutableProperty1;

    invoke-direct {v0, v1, p0}, Lkotlin/reflect/jvm/internal/impl/km/internal/BooleanFlagDelegate;-><init>(Lkotlin/reflect/KMutableProperty1;Lkotlin/reflect/jvm/internal/impl/km/internal/FlagImpl;)V

    return-object v0
.end method

.method public static final propertyBooleanFlag(Lkotlin/reflect/jvm/internal/impl/km/internal/FlagImpl;)Lkotlin/reflect/jvm/internal/impl/km/internal/BooleanFlagDelegate;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/jvm/internal/impl/km/internal/FlagImpl;",
            ")",
            "Lkotlin/reflect/jvm/internal/impl/km/internal/BooleanFlagDelegate<",
            "Lkotlin/reflect/jvm/internal/impl/km/KmProperty;",
            ">;"
        }
    .end annotation

    const-string v0, "flag"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/km/internal/BooleanFlagDelegate;

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/km/internal/FlagDelegatesImplKt$propertyBooleanFlag$1;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/km/internal/FlagDelegatesImplKt$propertyBooleanFlag$1;

    check-cast v1, Lkotlin/reflect/KMutableProperty1;

    invoke-direct {v0, v1, p0}, Lkotlin/reflect/jvm/internal/impl/km/internal/BooleanFlagDelegate;-><init>(Lkotlin/reflect/KMutableProperty1;Lkotlin/reflect/jvm/internal/impl/km/internal/FlagImpl;)V

    return-object v0
.end method

.method public static final typeAliasBooleanFlag(Lkotlin/reflect/jvm/internal/impl/km/internal/FlagImpl;)Lkotlin/reflect/jvm/internal/impl/km/internal/BooleanFlagDelegate;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/jvm/internal/impl/km/internal/FlagImpl;",
            ")",
            "Lkotlin/reflect/jvm/internal/impl/km/internal/BooleanFlagDelegate<",
            "Lkotlin/reflect/jvm/internal/impl/km/KmTypeAlias;",
            ">;"
        }
    .end annotation

    const-string v0, "flag"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/km/internal/BooleanFlagDelegate;

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/km/internal/FlagDelegatesImplKt$typeAliasBooleanFlag$1;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/km/internal/FlagDelegatesImplKt$typeAliasBooleanFlag$1;

    check-cast v1, Lkotlin/reflect/KMutableProperty1;

    invoke-direct {v0, v1, p0}, Lkotlin/reflect/jvm/internal/impl/km/internal/BooleanFlagDelegate;-><init>(Lkotlin/reflect/KMutableProperty1;Lkotlin/reflect/jvm/internal/impl/km/internal/FlagImpl;)V

    return-object v0
.end method

.method public static final typeBooleanFlag(Lkotlin/reflect/jvm/internal/impl/km/internal/FlagImpl;)Lkotlin/reflect/jvm/internal/impl/km/internal/BooleanFlagDelegate;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/jvm/internal/impl/km/internal/FlagImpl;",
            ")",
            "Lkotlin/reflect/jvm/internal/impl/km/internal/BooleanFlagDelegate<",
            "Lkotlin/reflect/jvm/internal/impl/km/KmType;",
            ">;"
        }
    .end annotation

    const-string v0, "flag"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 78
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/km/internal/BooleanFlagDelegate;

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/km/internal/FlagDelegatesImplKt$typeBooleanFlag$1;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/km/internal/FlagDelegatesImplKt$typeBooleanFlag$1;

    check-cast v1, Lkotlin/reflect/KMutableProperty1;

    invoke-direct {v0, v1, p0}, Lkotlin/reflect/jvm/internal/impl/km/internal/BooleanFlagDelegate;-><init>(Lkotlin/reflect/KMutableProperty1;Lkotlin/reflect/jvm/internal/impl/km/internal/FlagImpl;)V

    return-object v0
.end method

.method public static final valueParameterBooleanFlag(Lkotlin/reflect/jvm/internal/impl/km/internal/FlagImpl;)Lkotlin/reflect/jvm/internal/impl/km/internal/BooleanFlagDelegate;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/jvm/internal/impl/km/internal/FlagImpl;",
            ")",
            "Lkotlin/reflect/jvm/internal/impl/km/internal/BooleanFlagDelegate<",
            "Lkotlin/reflect/jvm/internal/impl/km/KmValueParameter;",
            ">;"
        }
    .end annotation

    const-string v0, "flag"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 74
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/km/internal/BooleanFlagDelegate;

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/km/internal/FlagDelegatesImplKt$valueParameterBooleanFlag$1;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/km/internal/FlagDelegatesImplKt$valueParameterBooleanFlag$1;

    check-cast v1, Lkotlin/reflect/KMutableProperty1;

    invoke-direct {v0, v1, p0}, Lkotlin/reflect/jvm/internal/impl/km/internal/BooleanFlagDelegate;-><init>(Lkotlin/reflect/KMutableProperty1;Lkotlin/reflect/jvm/internal/impl/km/internal/FlagImpl;)V

    return-object v0
.end method

.method public static final visibilityDelegate(Lkotlin/reflect/KMutableProperty1;)Lkotlin/reflect/jvm/internal/impl/km/internal/EnumFlagDelegate;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Node:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/reflect/KMutableProperty1<",
            "TNode;",
            "Ljava/lang/Integer;",
            ">;)",
            "Lkotlin/reflect/jvm/internal/impl/km/internal/EnumFlagDelegate<",
            "TNode;",
            "Lkotlin/reflect/jvm/internal/impl/km/Visibility;",
            ">;"
        }
    .end annotation

    const-string v0, "flags"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags;->VISIBILITY:Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags$FlagField;

    const-string v1, "VISIBILITY"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/km/Visibility;->getEntries()Lkotlin/enums/EnumEntries;

    move-result-object v1

    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/km/Visibility;->getEntries()Lkotlin/enums/EnumEntries;

    move-result-object v2

    check-cast v2, Ljava/lang/Iterable;

    .line 89
    new-instance v3, Ljava/util/ArrayList;

    const/16 v4, 0xa

    invoke-static {v2, v4}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v3, Ljava/util/Collection;

    .line 90
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_27
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 91
    check-cast v4, Lkotlin/reflect/jvm/internal/impl/km/Visibility;

    .line 50
    invoke-virtual {v4}, Lkotlin/reflect/jvm/internal/impl/km/Visibility;->getFlag$kotlin_metadata()Lkotlin/reflect/jvm/internal/impl/km/internal/FlagImpl;

    move-result-object v4

    .line 91
    invoke-interface {v3, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_27

    .line 92
    :cond_3b
    check-cast v3, Ljava/util/List;

    .line 50
    new-instance v2, Lkotlin/reflect/jvm/internal/impl/km/internal/EnumFlagDelegate;

    invoke-direct {v2, p0, v0, v1, v3}, Lkotlin/reflect/jvm/internal/impl/km/internal/EnumFlagDelegate;-><init>(Lkotlin/reflect/KMutableProperty1;Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags$FlagField;Lkotlin/enums/EnumEntries;Ljava/util/List;)V

    return-object v2
.end method

###### Class kotlin.reflect.jvm.internal.impl.km.internal.FlagDelegatesImplKt.AnonymousClass1 (kotlin.reflect.jvm.internal.impl.km.internal.FlagDelegatesImplKt$classBooleanFlag$1)
.class final synthetic Lkotlin/reflect/jvm/internal/impl/km/internal/FlagDelegatesImplKt$classBooleanFlag$1;
.super Lkotlin/jvm/internal/MutablePropertyReference1Impl;
.source "FlagDelegatesImpl.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlin/reflect/jvm/internal/impl/km/internal/FlagDelegatesImplKt;->classBooleanFlag(Lkotlin/reflect/jvm/internal/impl/km/internal/FlagImpl;)Lkotlin/reflect/jvm/internal/impl/km/internal/BooleanFlagDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1018
    name = null
.end annotation


# static fields
.field public static final INSTANCE:Lkotlin/reflect/jvm/internal/impl/km/internal/FlagDelegatesImplKt$classBooleanFlag$1;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/km/internal/FlagDelegatesImplKt$classBooleanFlag$1;

    invoke-direct {v0}, Lkotlin/reflect/jvm/internal/impl/km/internal/FlagDelegatesImplKt$classBooleanFlag$1;-><init>()V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/km/internal/FlagDelegatesImplKt$classBooleanFlag$1;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/km/internal/FlagDelegatesImplKt$classBooleanFlag$1;

    return-void
.end method

.method constructor <init>()V
    .registers 5

    const-class v0, Lkotlin/reflect/jvm/internal/impl/km/KmClass;

    const-string v1, "getFlags$kotlin_metadata()I"

    const/4 v2, 0x0

    const-string v3, "flags"

    invoke-direct {p0, v0, v3, v1, v2}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 59
    check-cast p1, Lkotlin/reflect/jvm/internal/impl/km/KmClass;

    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/km/KmClass;->getFlags$kotlin_metadata()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public set(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3

    .line 59
    check-cast p1, Lkotlin/reflect/jvm/internal/impl/km/KmClass;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    invoke-virtual {p1, p2}, Lkotlin/reflect/jvm/internal/impl/km/KmClass;->setFlags$kotlin_metadata(I)V

    return-void
.end method

###### Class kotlin.reflect.jvm.internal.impl.km.internal.FlagDelegatesImplKt.C01221 (kotlin.reflect.jvm.internal.impl.km.internal.FlagDelegatesImplKt$constructorBooleanFlag$1)
.class final synthetic Lkotlin/reflect/jvm/internal/impl/km/internal/FlagDelegatesImplKt$constructorBooleanFlag$1;
.super Lkotlin/jvm/internal/MutablePropertyReference1Impl;
.source "FlagDelegatesImpl.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlin/reflect/jvm/internal/impl/km/internal/FlagDelegatesImplKt;->constructorBooleanFlag(Lkotlin/reflect/jvm/internal/impl/km/internal/FlagImpl;)Lkotlin/reflect/jvm/internal/impl/km/internal/BooleanFlagDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1018
    name = null
.end annotation


# static fields
.field public static final INSTANCE:Lkotlin/reflect/jvm/internal/impl/km/internal/FlagDelegatesImplKt$constructorBooleanFlag$1;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/km/internal/FlagDelegatesImplKt$constructorBooleanFlag$1;

    invoke-direct {v0}, Lkotlin/reflect/jvm/internal/impl/km/internal/FlagDelegatesImplKt$constructorBooleanFlag$1;-><init>()V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/km/internal/FlagDelegatesImplKt$constructorBooleanFlag$1;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/km/internal/FlagDelegatesImplKt$constructorBooleanFlag$1;

    return-void
.end method

.method constructor <init>()V
    .registers 5

    const-class v0, Lkotlin/reflect/jvm/internal/impl/km/KmConstructor;

    const-string v1, "getFlags$kotlin_metadata()I"

    const/4 v2, 0x0

    const-string v3, "flags"

    invoke-direct {p0, v0, v3, v1, v2}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 65
    check-cast p1, Lkotlin/reflect/jvm/internal/impl/km/KmConstructor;

    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/km/KmConstructor;->getFlags$kotlin_metadata()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public set(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3

    .line 65
    check-cast p1, Lkotlin/reflect/jvm/internal/impl/km/KmConstructor;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    invoke-virtual {p1, p2}, Lkotlin/reflect/jvm/internal/impl/km/KmConstructor;->setFlags$kotlin_metadata(I)V

    return-void
.end method

###### Class kotlin.reflect.jvm.internal.impl.km.internal.FlagDelegatesImplKt.C01231 (kotlin.reflect.jvm.internal.impl.km.internal.FlagDelegatesImplKt$functionBooleanFlag$1)
.class final synthetic Lkotlin/reflect/jvm/internal/impl/km/internal/FlagDelegatesImplKt$functionBooleanFlag$1;
.super Lkotlin/jvm/internal/MutablePropertyReference1Impl;
.source "FlagDelegatesImpl.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlin/reflect/jvm/internal/impl/km/internal/FlagDelegatesImplKt;->functionBooleanFlag(Lkotlin/reflect/jvm/internal/impl/km/internal/FlagImpl;)Lkotlin/reflect/jvm/internal/impl/km/internal/BooleanFlagDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1018
    name = null
.end annotation


# static fields
.field public static final INSTANCE:Lkotlin/reflect/jvm/internal/impl/km/internal/FlagDelegatesImplKt$functionBooleanFlag$1;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/km/internal/FlagDelegatesImplKt$functionBooleanFlag$1;

    invoke-direct {v0}, Lkotlin/reflect/jvm/internal/impl/km/internal/FlagDelegatesImplKt$functionBooleanFlag$1;-><init>()V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/km/internal/FlagDelegatesImplKt$functionBooleanFlag$1;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/km/internal/FlagDelegatesImplKt$functionBooleanFlag$1;

    return-void
.end method

.method constructor <init>()V
    .registers 5

    const-class v0, Lkotlin/reflect/jvm/internal/impl/km/KmFunction;

    const-string v1, "getFlags$kotlin_metadata()I"

    const/4 v2, 0x0

    const-string v3, "flags"

    invoke-direct {p0, v0, v3, v1, v2}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 62
    check-cast p1, Lkotlin/reflect/jvm/internal/impl/km/KmFunction;

    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/km/KmFunction;->getFlags$kotlin_metadata()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public set(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3

    .line 62
    check-cast p1, Lkotlin/reflect/jvm/internal/impl/km/KmFunction;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    invoke-virtual {p1, p2}, Lkotlin/reflect/jvm/internal/impl/km/KmFunction;->setFlags$kotlin_metadata(I)V

    return-void
.end method

###### Class kotlin.reflect.jvm.internal.impl.km.internal.FlagDelegatesImplKt.C01241 (kotlin.reflect.jvm.internal.impl.km.internal.FlagDelegatesImplKt$propertyAccessorBooleanFlag$1)
.class final synthetic Lkotlin/reflect/jvm/internal/impl/km/internal/FlagDelegatesImplKt$propertyAccessorBooleanFlag$1;
.super Lkotlin/jvm/internal/MutablePropertyReference1Impl;
.source "FlagDelegatesImpl.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlin/reflect/jvm/internal/impl/km/internal/FlagDelegatesImplKt;->propertyAccessorBooleanFlag(Lkotlin/reflect/jvm/internal/impl/km/internal/FlagImpl;)Lkotlin/reflect/jvm/internal/impl/km/internal/BooleanFlagDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1018
    name = null
.end annotation


# static fields
.field public static final INSTANCE:Lkotlin/reflect/jvm/internal/impl/km/internal/FlagDelegatesImplKt$propertyAccessorBooleanFlag$1;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/km/internal/FlagDelegatesImplKt$propertyAccessorBooleanFlag$1;

    invoke-direct {v0}, Lkotlin/reflect/jvm/internal/impl/km/internal/FlagDelegatesImplKt$propertyAccessorBooleanFlag$1;-><init>()V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/km/internal/FlagDelegatesImplKt$propertyAccessorBooleanFlag$1;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/km/internal/FlagDelegatesImplKt$propertyAccessorBooleanFlag$1;

    return-void
.end method

.method constructor <init>()V
    .registers 5

    const-class v0, Lkotlin/reflect/jvm/internal/impl/km/KmPropertyAccessorAttributes;

    const-string v1, "getFlags$kotlin_metadata()I"

    const/4 v2, 0x0

    const-string v3, "flags"

    invoke-direct {p0, v0, v3, v1, v2}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 71
    check-cast p1, Lkotlin/reflect/jvm/internal/impl/km/KmPropertyAccessorAttributes;

    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/km/KmPropertyAccessorAttributes;->getFlags$kotlin_metadata()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public set(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3

    .line 71
    check-cast p1, Lkotlin/reflect/jvm/internal/impl/km/KmPropertyAccessorAttributes;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    invoke-virtual {p1, p2}, Lkotlin/reflect/jvm/internal/impl/km/KmPropertyAccessorAttributes;->setFlags$kotlin_metadata(I)V

    return-void
.end method

###### Class kotlin.reflect.jvm.internal.impl.km.internal.FlagDelegatesImplKt.C01251 (kotlin.reflect.jvm.internal.impl.km.internal.FlagDelegatesImplKt$propertyBooleanFlag$1)
.class final synthetic Lkotlin/reflect/jvm/internal/impl/km/internal/FlagDelegatesImplKt$propertyBooleanFlag$1;
.super Lkotlin/jvm/internal/MutablePropertyReference1Impl;
.source "FlagDelegatesImpl.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlin/reflect/jvm/internal/impl/km/internal/FlagDelegatesImplKt;->propertyBooleanFlag(Lkotlin/reflect/jvm/internal/impl/km/internal/FlagImpl;)Lkotlin/reflect/jvm/internal/impl/km/internal/BooleanFlagDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1018
    name = null
.end annotation


# static fields
.field public static final INSTANCE:Lkotlin/reflect/jvm/internal/impl/km/internal/FlagDelegatesImplKt$propertyBooleanFlag$1;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/km/internal/FlagDelegatesImplKt$propertyBooleanFlag$1;

    invoke-direct {v0}, Lkotlin/reflect/jvm/internal/impl/km/internal/FlagDelegatesImplKt$propertyBooleanFlag$1;-><init>()V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/km/internal/FlagDelegatesImplKt$propertyBooleanFlag$1;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/km/internal/FlagDelegatesImplKt$propertyBooleanFlag$1;

    return-void
.end method

.method constructor <init>()V
    .registers 5

    const-class v0, Lkotlin/reflect/jvm/internal/impl/km/KmProperty;

    const-string v1, "getFlags$kotlin_metadata()I"

    const/4 v2, 0x0

    const-string v3, "flags"

    invoke-direct {p0, v0, v3, v1, v2}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 68
    check-cast p1, Lkotlin/reflect/jvm/internal/impl/km/KmProperty;

    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/km/KmProperty;->getFlags$kotlin_metadata()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public set(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3

    .line 68
    check-cast p1, Lkotlin/reflect/jvm/internal/impl/km/KmProperty;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    invoke-virtual {p1, p2}, Lkotlin/reflect/jvm/internal/impl/km/KmProperty;->setFlags$kotlin_metadata(I)V

    return-void
.end method

###### Class kotlin.reflect.jvm.internal.impl.km.internal.FlagDelegatesImplKt.C01261 (kotlin.reflect.jvm.internal.impl.km.internal.FlagDelegatesImplKt$typeAliasBooleanFlag$1)
.class final synthetic Lkotlin/reflect/jvm/internal/impl/km/internal/FlagDelegatesImplKt$typeAliasBooleanFlag$1;
.super Lkotlin/jvm/internal/MutablePropertyReference1Impl;
.source "FlagDelegatesImpl.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlin/reflect/jvm/internal/impl/km/internal/FlagDelegatesImplKt;->typeAliasBooleanFlag(Lkotlin/reflect/jvm/internal/impl/km/internal/FlagImpl;)Lkotlin/reflect/jvm/internal/impl/km/internal/BooleanFlagDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1018
    name = null
.end annotation


# static fields
.field public static final INSTANCE:Lkotlin/reflect/jvm/internal/impl/km/internal/FlagDelegatesImplKt$typeAliasBooleanFlag$1;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/km/internal/FlagDelegatesImplKt$typeAliasBooleanFlag$1;

    invoke-direct {v0}, Lkotlin/reflect/jvm/internal/impl/km/internal/FlagDelegatesImplKt$typeAliasBooleanFlag$1;-><init>()V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/km/internal/FlagDelegatesImplKt$typeAliasBooleanFlag$1;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/km/internal/FlagDelegatesImplKt$typeAliasBooleanFlag$1;

    return-void
.end method

.method constructor <init>()V
    .registers 5

    const-class v0, Lkotlin/reflect/jvm/internal/impl/km/KmTypeAlias;

    const-string v1, "getFlags$kotlin_metadata()I"

    const/4 v2, 0x0

    const-string v3, "flags"

    invoke-direct {p0, v0, v3, v1, v2}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 76
    check-cast p1, Lkotlin/reflect/jvm/internal/impl/km/KmTypeAlias;

    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/km/KmTypeAlias;->getFlags$kotlin_metadata()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public set(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3

    .line 76
    check-cast p1, Lkotlin/reflect/jvm/internal/impl/km/KmTypeAlias;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    invoke-virtual {p1, p2}, Lkotlin/reflect/jvm/internal/impl/km/KmTypeAlias;->setFlags$kotlin_metadata(I)V

    return-void
.end method

###### Class kotlin.reflect.jvm.internal.impl.km.internal.FlagDelegatesImplKt.C01271 (kotlin.reflect.jvm.internal.impl.km.internal.FlagDelegatesImplKt$typeBooleanFlag$1)
.class final synthetic Lkotlin/reflect/jvm/internal/impl/km/internal/FlagDelegatesImplKt$typeBooleanFlag$1;
.super Lkotlin/jvm/internal/MutablePropertyReference1Impl;
.source "FlagDelegatesImpl.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlin/reflect/jvm/internal/impl/km/internal/FlagDelegatesImplKt;->typeBooleanFlag(Lkotlin/reflect/jvm/internal/impl/km/internal/FlagImpl;)Lkotlin/reflect/jvm/internal/impl/km/internal/BooleanFlagDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1018
    name = null
.end annotation


# static fields
.field public static final INSTANCE:Lkotlin/reflect/jvm/internal/impl/km/internal/FlagDelegatesImplKt$typeBooleanFlag$1;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/km/internal/FlagDelegatesImplKt$typeBooleanFlag$1;

    invoke-direct {v0}, Lkotlin/reflect/jvm/internal/impl/km/internal/FlagDelegatesImplKt$typeBooleanFlag$1;-><init>()V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/km/internal/FlagDelegatesImplKt$typeBooleanFlag$1;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/km/internal/FlagDelegatesImplKt$typeBooleanFlag$1;

    return-void
.end method

.method constructor <init>()V
    .registers 5

    const-class v0, Lkotlin/reflect/jvm/internal/impl/km/KmType;

    const-string v1, "getFlags$kotlin_metadata()I"

    const/4 v2, 0x0

    const-string v3, "flags"

    invoke-direct {p0, v0, v3, v1, v2}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 78
    check-cast p1, Lkotlin/reflect/jvm/internal/impl/km/KmType;

    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/km/KmType;->getFlags$kotlin_metadata()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public set(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3

    .line 78
    check-cast p1, Lkotlin/reflect/jvm/internal/impl/km/KmType;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    invoke-virtual {p1, p2}, Lkotlin/reflect/jvm/internal/impl/km/KmType;->setFlags$kotlin_metadata(I)V

    return-void
.end method

###### Class kotlin.reflect.jvm.internal.impl.km.internal.FlagDelegatesImplKt.C01281 (kotlin.reflect.jvm.internal.impl.km.internal.FlagDelegatesImplKt$valueParameterBooleanFlag$1)
.class final synthetic Lkotlin/reflect/jvm/internal/impl/km/internal/FlagDelegatesImplKt$valueParameterBooleanFlag$1;
.super Lkotlin/jvm/internal/MutablePropertyReference1Impl;
.source "FlagDelegatesImpl.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlin/reflect/jvm/internal/impl/km/internal/FlagDelegatesImplKt;->valueParameterBooleanFlag(Lkotlin/reflect/jvm/internal/impl/km/internal/FlagImpl;)Lkotlin/reflect/jvm/internal/impl/km/internal/BooleanFlagDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1018
    name = null
.end annotation


# static fields
.field public static final INSTANCE:Lkotlin/reflect/jvm/internal/impl/km/internal/FlagDelegatesImplKt$valueParameterBooleanFlag$1;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/km/internal/FlagDelegatesImplKt$valueParameterBooleanFlag$1;

    invoke-direct {v0}, Lkotlin/reflect/jvm/internal/impl/km/internal/FlagDelegatesImplKt$valueParameterBooleanFlag$1;-><init>()V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/km/internal/FlagDelegatesImplKt$valueParameterBooleanFlag$1;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/km/internal/FlagDelegatesImplKt$valueParameterBooleanFlag$1;

    return-void
.end method

.method constructor <init>()V
    .registers 5

    const-class v0, Lkotlin/reflect/jvm/internal/impl/km/KmValueParameter;

    const-string v1, "getFlags$kotlin_metadata()I"

    const/4 v2, 0x0

    const-string v3, "flags"

    invoke-direct {p0, v0, v3, v1, v2}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 74
    check-cast p1, Lkotlin/reflect/jvm/internal/impl/km/KmValueParameter;

    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/km/KmValueParameter;->getFlags$kotlin_metadata()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public set(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3

    .line 74
    check-cast p1, Lkotlin/reflect/jvm/internal/impl/km/KmValueParameter;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    invoke-virtual {p1, p2}, Lkotlin/reflect/jvm/internal/impl/km/KmValueParameter;->setFlags$kotlin_metadata(I)V

    return-void
.end method
