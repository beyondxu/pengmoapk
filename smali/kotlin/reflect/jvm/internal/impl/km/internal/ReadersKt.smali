###### Class kotlin.reflect.jvm.internal.impl.km.internal.ReadersKt (kotlin.reflect.jvm.internal.impl.km.internal.ReadersKt)
.class public final Lkotlin/reflect/jvm/internal/impl/km/internal/ReadersKt;
.super Ljava/lang/Object;
.source "Readers.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/reflect/jvm/internal/impl/km/internal/ReadersKt$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nReaders.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Readers.kt\nkotlin/metadata/internal/ReadersKt\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,424:1\n1634#2,3:425\n1634#2,3:428\n1634#2,3:431\n1634#2,3:434\n1634#2,3:437\n1634#2,3:440\n1634#2,3:443\n1869#2,2:446\n1869#2,2:448\n669#2,11:450\n1869#2,2:461\n1634#2,3:463\n1869#2,2:466\n1634#2,3:468\n1634#2,3:471\n1634#2,3:474\n1634#2,3:477\n1634#2,3:480\n1869#2,2:483\n1634#2,3:485\n1634#2,3:488\n1634#2,3:491\n1634#2,3:494\n1869#2,2:497\n1634#2,3:499\n1634#2,3:502\n1634#2,3:505\n1869#2,2:508\n1634#2,3:510\n1634#2,3:513\n1634#2,3:516\n1869#2,2:519\n1869#2,2:521\n1634#2,3:523\n1869#2,2:526\n1869#2,2:528\n1634#2,3:530\n1634#2,3:533\n1634#2,3:536\n*S KotlinDebug\n*F\n+ 1 Readers.kt\nkotlin/metadata/internal/ReadersKt\n*L\n68#1:425,3\n69#1:428,3\n70#1:431,3\n76#1:434,3\n83#1:437,3\n89#1:440,3\n90#1:443,3\n92#1:446,2\n100#1:448,2\n113#1:450,11\n133#1:461,2\n152#1:463,3\n154#1:466,2\n165#1:468,3\n166#1:471,3\n167#1:474,3\n179#1:477,3\n180#1:480,3\n182#1:483,2\n192#1:485,3\n194#1:488,3\n195#1:491,3\n203#1:494,3\n205#1:497,2\n215#1:499,3\n217#1:502,3\n222#1:505,3\n224#1:508,2\n234#1:510,3\n237#1:513,3\n239#1:516,3\n241#1:519,2\n256#1:521,2\n271#1:523,3\n273#1:526,2\n316#1:528,2\n376#1:530,3\n403#1:533,3\n404#1:536,3\n*E\n"
.end annotation


# direct methods
.method public static final getDefaultPropertyAccessorFlags(I)I
    .registers 9

    .line 423
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags;->HAS_ANNOTATIONS:Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags$BooleanFlagField;

    invoke-virtual {v0, p0}, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags$BooleanFlagField;->get(I)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "get(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    sget-object v0, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags;->VISIBILITY:Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags$FlagField;

    invoke-virtual {v0, p0}, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags$FlagField;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Visibility;

    sget-object v0, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags;->MODALITY:Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags$FlagField;

    invoke-virtual {v0, p0}, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags$FlagField;->get(I)Ljava/lang/Object;

    move-result-object p0

    move-object v4, p0

    check-cast v4, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Modality;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v5, 0x0

    invoke-static/range {v2 .. v7}, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags;->getAccessorFlags(ZLkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Visibility;Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Modality;ZZZ)I

    move-result p0

    return p0
.end method

.method public static final getPropertyGetterFlags(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property;)I
    .registers 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 417
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property;->hasGetterFlags()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property;->getGetterFlags()I

    move-result p0

    return p0

    :cond_10
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property;->getFlags()I

    move-result p0

    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/km/internal/ReadersKt;->getDefaultPropertyAccessorFlags(I)I

    move-result p0

    return p0
.end method

.method public static final getPropertySetterFlags(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property;)I
    .registers 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 420
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property;->hasSetterFlags()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property;->getSetterFlags()I

    move-result p0

    return p0

    :cond_10
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property;->getFlags()I

    move-result p0

    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/km/internal/ReadersKt;->getDefaultPropertyAccessorFlags(I)I

    move-result p0

    return p0
.end method

.method private static final getTypeFlags(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;)I
    .registers 2

    .line 410
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;->getNullable()Z

    move-result v0

    .line 411
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;->getFlags()I

    move-result p0

    shl-int/lit8 p0, p0, 0x1

    add-int/2addr v0, p0

    return v0
.end method

.method private static final getTypeParameterFlags(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$TypeParameter;)I
    .registers 1

    .line 414
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$TypeParameter;->getReified()Z

    move-result p0

    return p0
.end method

.method private static final loadInlineClassUnderlyingType(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;Lkotlin/reflect/jvm/internal/impl/km/internal/ReadContext;)Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;
    .registers 9

    .line 106
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/km/internal/ReadContext;->getTypes()Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/TypeTable;

    move-result-object v0

    invoke-static {p0, v0}, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/ProtoTypeTableUtilKt;->inlineClassUnderlyingType(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/TypeTable;)Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;

    move-result-object v0

    if-eqz v0, :cond_b

    return-object v0

    .line 109
    :cond_b
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->hasInlineClassUnderlyingPropertyName()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_13

    return-object v1

    .line 112
    :cond_13
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->getPropertyList()Ljava/util/List;

    move-result-object v0

    const-string v2, "getPropertyList(...)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Iterable;

    .line 452
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v2, 0x0

    move-object v3, v1

    :cond_24
    :goto_24
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 453
    move-object v5, v4

    check-cast v5, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property;

    .line 113
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/km/internal/ReadContext;->getTypes()Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/TypeTable;

    move-result-object v6

    invoke-static {v5, v6}, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/ProtoTypeTableUtilKt;->receiverType(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property;Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/TypeTable;)Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;

    move-result-object v6

    if-nez v6, :cond_24

    invoke-virtual {v5}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property;->getName()I

    move-result v5

    invoke-virtual {p1, v5}, Lkotlin/reflect/jvm/internal/impl/km/internal/ReadContext;->get(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->getInlineClassUnderlyingPropertyName()I

    move-result v6

    invoke-virtual {p1, v6}, Lkotlin/reflect/jvm/internal/impl/km/internal/ReadContext;->get(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_24

    if-eqz v2, :cond_57

    goto :goto_5c

    :cond_57
    const/4 v2, 0x1

    move-object v3, v4

    goto :goto_24

    :cond_5a
    if-nez v2, :cond_5d

    :goto_5c
    move-object v3, v1

    :cond_5d
    check-cast v3, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property;

    if-eqz v3, :cond_6a

    .line 114
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/km/internal/ReadContext;->getTypes()Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/TypeTable;

    move-result-object p0

    invoke-static {v3, p0}, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/ProtoTypeTableUtilKt;->returnType(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property;Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/TypeTable;)Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;

    move-result-object p0

    return-object p0

    :cond_6a
    return-object v1
.end method

.method private static final readVersionRequirement(ILkotlin/reflect/jvm/internal/impl/km/internal/ReadContext;)Lkotlin/reflect/jvm/internal/impl/km/KmVersionRequirement;
    .registers 10

    .line 322
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/km/KmVersionRequirement;

    invoke-direct {v0}, Lkotlin/reflect/jvm/internal/impl/km/KmVersionRequirement;-><init>()V

    .line 323
    sget-object v1, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/VersionRequirement;->Companion:Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/VersionRequirement$Companion;

    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/km/internal/ReadContext;->getStrings()Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/NameResolver;

    move-result-object v2

    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/km/internal/ReadContext;->getVersionRequirements$kotlin_metadata()Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/VersionRequirementTable;

    move-result-object v3

    invoke-virtual {v1, p0, v2, v3}, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/VersionRequirement$Companion;->create(ILkotlin/reflect/jvm/internal/impl/metadata/deserialization/NameResolver;Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/VersionRequirementTable;)Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/VersionRequirement;

    move-result-object p0

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-nez p0, :cond_26

    .line 324
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/km/internal/ReadContext;->getIgnoreUnknownVersionRequirements$kotlin_metadata()Z

    move-result p1

    if-eqz p1, :cond_1e

    goto :goto_26

    :cond_1e
    new-instance p0, Lkotlin/reflect/jvm/internal/impl/km/InconsistentKotlinMetadataException;

    const-string p1, "No VersionRequirement with the given id in the table"

    invoke-direct {p0, p1, v2, v1, v2}, Lkotlin/reflect/jvm/internal/impl/km/InconsistentKotlinMetadataException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw p0

    :cond_26
    :goto_26
    if-eqz p0, :cond_2d

    .line 326
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/VersionRequirement;->getKind()Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$VersionRequirement$VersionKind;

    move-result-object p1

    goto :goto_2e

    :cond_2d
    move-object p1, v2

    :goto_2e
    const/4 v3, -0x1

    if-nez p1, :cond_33

    const/4 p1, -0x1

    goto :goto_3b

    :cond_33
    sget-object v4, Lkotlin/reflect/jvm/internal/impl/km/internal/ReadersKt$WhenMappings;->$EnumSwitchMapping$2:[I

    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$VersionRequirement$VersionKind;->ordinal()I

    move-result p1

    aget p1, v4, p1

    :goto_3b
    const/4 v4, 0x3

    const/4 v5, 0x1

    if-eq p1, v3, :cond_54

    if-eq p1, v5, :cond_51

    if-eq p1, v1, :cond_4e

    if-ne p1, v4, :cond_48

    .line 329
    sget-object p1, Lkotlin/reflect/jvm/internal/impl/km/KmVersionRequirementVersionKind;->API_VERSION:Lkotlin/reflect/jvm/internal/impl/km/KmVersionRequirementVersionKind;

    goto :goto_56

    .line 326
    :cond_48
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    .line 328
    :cond_4e
    sget-object p1, Lkotlin/reflect/jvm/internal/impl/km/KmVersionRequirementVersionKind;->COMPILER_VERSION:Lkotlin/reflect/jvm/internal/impl/km/KmVersionRequirementVersionKind;

    goto :goto_56

    .line 327
    :cond_51
    sget-object p1, Lkotlin/reflect/jvm/internal/impl/km/KmVersionRequirementVersionKind;->LANGUAGE_VERSION:Lkotlin/reflect/jvm/internal/impl/km/KmVersionRequirementVersionKind;

    goto :goto_56

    .line 330
    :cond_54
    sget-object p1, Lkotlin/reflect/jvm/internal/impl/km/KmVersionRequirementVersionKind;->UNKNOWN:Lkotlin/reflect/jvm/internal/impl/km/KmVersionRequirementVersionKind;

    :goto_56
    if-eqz p0, :cond_5d

    .line 333
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/VersionRequirement;->getLevel()Lkotlin/DeprecationLevel;

    move-result-object v6

    goto :goto_5e

    :cond_5d
    move-object v6, v2

    :goto_5e
    if-nez v6, :cond_62

    const/4 v6, -0x1

    goto :goto_6a

    :cond_62
    sget-object v7, Lkotlin/reflect/jvm/internal/impl/km/internal/ReadersKt$WhenMappings;->$EnumSwitchMapping$3:[I

    invoke-virtual {v6}, Lkotlin/DeprecationLevel;->ordinal()I

    move-result v6

    aget v6, v7, v6

    :goto_6a
    if-eq v6, v3, :cond_7f

    if-eq v6, v5, :cond_7c

    if-eq v6, v1, :cond_79

    if-ne v6, v4, :cond_73

    goto :goto_7f

    :cond_73
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    .line 335
    :cond_79
    sget-object v1, Lkotlin/reflect/jvm/internal/impl/km/KmVersionRequirementLevel;->ERROR:Lkotlin/reflect/jvm/internal/impl/km/KmVersionRequirementLevel;

    goto :goto_81

    .line 334
    :cond_7c
    sget-object v1, Lkotlin/reflect/jvm/internal/impl/km/KmVersionRequirementLevel;->WARNING:Lkotlin/reflect/jvm/internal/impl/km/KmVersionRequirementLevel;

    goto :goto_81

    .line 336
    :cond_7f
    :goto_7f
    sget-object v1, Lkotlin/reflect/jvm/internal/impl/km/KmVersionRequirementLevel;->HIDDEN:Lkotlin/reflect/jvm/internal/impl/km/KmVersionRequirementLevel;

    .line 339
    :goto_81
    invoke-virtual {v0, p1}, Lkotlin/reflect/jvm/internal/impl/km/KmVersionRequirement;->setKind(Lkotlin/reflect/jvm/internal/impl/km/KmVersionRequirementVersionKind;)V

    .line 340
    invoke-virtual {v0, v1}, Lkotlin/reflect/jvm/internal/impl/km/KmVersionRequirement;->setLevel(Lkotlin/reflect/jvm/internal/impl/km/KmVersionRequirementLevel;)V

    if-eqz p0, :cond_8e

    .line 341
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/VersionRequirement;->getErrorCode()Ljava/lang/Integer;

    move-result-object p1

    goto :goto_8f

    :cond_8e
    move-object p1, v2

    :goto_8f
    invoke-virtual {v0, p1}, Lkotlin/reflect/jvm/internal/impl/km/KmVersionRequirement;->setErrorCode(Ljava/lang/Integer;)V

    if-eqz p0, :cond_98

    .line 342
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/VersionRequirement;->getMessage()Ljava/lang/String;

    move-result-object v2

    :cond_98
    invoke-virtual {v0, v2}, Lkotlin/reflect/jvm/internal/impl/km/KmVersionRequirement;->setMessage(Ljava/lang/String;)V

    if-eqz p0, :cond_a3

    .line 344
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/VersionRequirement;->getVersion()Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/VersionRequirement$Version;

    move-result-object p0

    if-nez p0, :cond_a5

    :cond_a3
    sget-object p0, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/VersionRequirement$Version;->INFINITY:Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/VersionRequirement$Version;

    :cond_a5
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/VersionRequirement$Version;->component1()I

    move-result p1

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/VersionRequirement$Version;->component2()I

    move-result v1

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/VersionRequirement$Version;->component3()I

    move-result p0

    .line 345
    new-instance v2, Lkotlin/reflect/jvm/internal/impl/km/KmVersion;

    invoke-direct {v2, p1, v1, p0}, Lkotlin/reflect/jvm/internal/impl/km/KmVersion;-><init>(III)V

    invoke-virtual {v0, v2}, Lkotlin/reflect/jvm/internal/impl/km/KmVersionRequirement;->setVersion(Lkotlin/reflect/jvm/internal/impl/km/KmVersion;)V

    return-object v0
.end method

.method public static final toKmClass(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/NameResolver;ZLjava/util/List;)Lkotlin/reflect/jvm/internal/impl/km/KmClass;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;",
            "Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/NameResolver;",
            "Z",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/Object;",
            ">;)",
            "Lkotlin/reflect/jvm/internal/impl/km/KmClass;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "strings"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "contextExtensions"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/km/KmClass;

    invoke-direct {v0}, Lkotlin/reflect/jvm/internal/impl/km/KmClass;-><init>()V

    .line 57
    new-instance v1, Lkotlin/reflect/jvm/internal/impl/km/internal/ReadContext;

    .line 59
    new-instance v3, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/TypeTable;

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->getTypeTable()Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$TypeTable;

    move-result-object v2

    const-string v4, "getTypeTable(...)"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v3, v2}, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/TypeTable;-><init>(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$TypeTable;)V

    .line 60
    sget-object v2, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/VersionRequirementTable;->Companion:Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/VersionRequirementTable$Companion;

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->getVersionRequirementTable()Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$VersionRequirementTable;

    move-result-object v4

    const-string v5, "getVersionRequirementTable(...)"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/VersionRequirementTable$Companion;->create(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$VersionRequirementTable;)Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/VersionRequirementTable;

    move-result-object v4

    const/16 v8, 0x10

    const/4 v9, 0x0

    const/4 v6, 0x0

    move-object v2, p1

    move v5, p2

    move-object v7, p3

    .line 57
    invoke-direct/range {v1 .. v9}, Lkotlin/reflect/jvm/internal/impl/km/internal/ReadContext;-><init>(Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/NameResolver;Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/TypeTable;Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/VersionRequirementTable;ZLkotlin/reflect/jvm/internal/impl/km/internal/ReadContext;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 63
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->getTypeParameterList()Ljava/util/List;

    move-result-object p1

    const-string p2, "getTypeParameterList(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Lkotlin/reflect/jvm/internal/impl/km/internal/ReadContext;->withTypeParameters$kotlin_metadata(Ljava/util/List;)Lkotlin/reflect/jvm/internal/impl/km/internal/ReadContext;

    move-result-object p1

    .line 65
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->getFlags()I

    move-result p3

    invoke-virtual {v0, p3}, Lkotlin/reflect/jvm/internal/impl/km/KmClass;->setFlags$kotlin_metadata(I)V

    .line 66
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->getFqName()I

    move-result p3

    invoke-virtual {p1, p3}, Lkotlin/reflect/jvm/internal/impl/km/internal/ReadContext;->className$kotlin_metadata(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Lkotlin/reflect/jvm/internal/impl/km/KmClass;->setName(Ljava/lang/String;)V

    .line 68
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->getTypeParameterList()Ljava/util/List;

    move-result-object p3

    invoke-static {p3, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p3, Ljava/lang/Iterable;

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/km/KmClass;->getTypeParameters()Ljava/util/List;

    move-result-object p2

    check-cast p2, Ljava/util/Collection;

    .line 425
    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_6f
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_86

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 426
    check-cast v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$TypeParameter;

    .line 68
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v1, p1}, Lkotlin/reflect/jvm/internal/impl/km/internal/ReadersKt;->toKmTypeParameter(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$TypeParameter;Lkotlin/reflect/jvm/internal/impl/km/internal/ReadContext;)Lkotlin/reflect/jvm/internal/impl/km/KmTypeParameter;

    move-result-object v1

    .line 426
    invoke-interface {p2, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_6f

    .line 69
    :cond_86
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/km/internal/ReadContext;->getTypes()Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/TypeTable;

    move-result-object p2

    invoke-static {p0, p2}, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/ProtoTypeTableUtilKt;->supertypes(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/TypeTable;)Ljava/util/List;

    move-result-object p2

    check-cast p2, Ljava/lang/Iterable;

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/km/KmClass;->getSupertypes()Ljava/util/List;

    move-result-object p3

    check-cast p3, Ljava/util/Collection;

    .line 428
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_9a
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_ae

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 429
    check-cast v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;

    .line 69
    invoke-static {v1, p1}, Lkotlin/reflect/jvm/internal/impl/km/internal/ReadersKt;->toKmType(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;Lkotlin/reflect/jvm/internal/impl/km/internal/ReadContext;)Lkotlin/reflect/jvm/internal/impl/km/KmType;

    move-result-object v1

    .line 429
    invoke-interface {p3, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_9a

    .line 70
    :cond_ae
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->getConstructorList()Ljava/util/List;

    move-result-object p2

    const-string p3, "getConstructorList(...)"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Ljava/lang/Iterable;

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/km/KmClass;->getConstructors()Ljava/util/List;

    move-result-object p3

    check-cast p3, Ljava/util/Collection;

    .line 431
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_c3
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_da

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 432
    check-cast v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Constructor;

    .line 70
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v1, p1}, Lkotlin/reflect/jvm/internal/impl/km/internal/ReadersKt;->toKmConstructor(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Constructor;Lkotlin/reflect/jvm/internal/impl/km/internal/ReadContext;)Lkotlin/reflect/jvm/internal/impl/km/KmConstructor;

    move-result-object v1

    .line 432
    invoke-interface {p3, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_c3

    .line 71
    :cond_da
    move-object p2, v0

    check-cast p2, Lkotlin/reflect/jvm/internal/impl/km/KmDeclarationContainer;

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->getFunctionList()Ljava/util/List;

    move-result-object p3

    const-string v1, "getFunctionList(...)"

    invoke-static {p3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->getPropertyList()Ljava/util/List;

    move-result-object v1

    const-string v2, "getPropertyList(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->getTypeAliasList()Ljava/util/List;

    move-result-object v2

    const-string v3, "getTypeAliasList(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2, p3, v1, v2, p1}, Lkotlin/reflect/jvm/internal/impl/km/internal/ReadersKt;->visitDeclarations(Lkotlin/reflect/jvm/internal/impl/km/KmDeclarationContainer;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lkotlin/reflect/jvm/internal/impl/km/internal/ReadContext;)V

    .line 72
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->hasCompanionObjectName()Z

    move-result p2

    if-eqz p2, :cond_10c

    .line 73
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->getCompanionObjectName()I

    move-result p2

    invoke-virtual {p1, p2}, Lkotlin/reflect/jvm/internal/impl/km/internal/ReadContext;->get(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lkotlin/reflect/jvm/internal/impl/km/KmClass;->setCompanionObject(Ljava/lang/String;)V

    .line 76
    :cond_10c
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->getNestedClassNameList()Ljava/util/List;

    move-result-object p2

    const-string p3, "getNestedClassNameList(...)"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Ljava/lang/Iterable;

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/km/KmClass;->getNestedClasses()Ljava/util/List;

    move-result-object p3

    check-cast p3, Ljava/util/Collection;

    .line 434
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_121
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_13c

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 435
    check-cast v1, Ljava/lang/Integer;

    .line 76
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v1}, Lkotlin/reflect/jvm/internal/impl/km/internal/ReadContext;->get(I)Ljava/lang/String;

    move-result-object v1

    .line 435
    invoke-interface {p3, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_121

    .line 77
    :cond_13c
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->getEnumEntryList()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_144
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    const/4 v1, 0x0

    if-eqz p3, :cond_17e

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$EnumEntry;

    .line 78
    invoke-virtual {p3}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$EnumEntry;->hasName()Z

    move-result v2

    if-eqz v2, :cond_175

    .line 80
    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/km/KmClass;->getEnumEntries()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p3}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$EnumEntry;->getName()I

    move-result v2

    invoke-virtual {p1, v2}, Lkotlin/reflect/jvm/internal/impl/km/internal/ReadContext;->get(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 81
    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/km/KmClass;->getKmEnumEntries()Ljava/util/List;

    move-result-object v1

    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {p3, p1}, Lkotlin/reflect/jvm/internal/impl/km/internal/ReadersKt;->toKmEnumEntry(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$EnumEntry;Lkotlin/reflect/jvm/internal/impl/km/internal/ReadContext;)Lkotlin/reflect/jvm/internal/impl/km/KmEnumEntry;

    move-result-object p3

    invoke-interface {v1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_144

    .line 78
    :cond_175
    new-instance p0, Lkotlin/reflect/jvm/internal/impl/km/InconsistentKotlinMetadataException;

    const-string p1, "No name for EnumEntry"

    const/4 p2, 0x2

    invoke-direct {p0, p1, v1, p2, v1}, Lkotlin/reflect/jvm/internal/impl/km/InconsistentKotlinMetadataException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw p0

    .line 83
    :cond_17e
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->getSealedSubclassFqNameList()Ljava/util/List;

    move-result-object p2

    const-string p3, "getSealedSubclassFqNameList(...)"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Ljava/lang/Iterable;

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/km/KmClass;->getSealedSubclasses()Ljava/util/List;

    move-result-object p3

    check-cast p3, Ljava/util/Collection;

    .line 437
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_193
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1ae

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 438
    check-cast v2, Ljava/lang/Integer;

    .line 83
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p1, v2}, Lkotlin/reflect/jvm/internal/impl/km/internal/ReadContext;->className$kotlin_metadata(I)Ljava/lang/String;

    move-result-object v2

    .line 438
    invoke-interface {p3, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_193

    .line 84
    :cond_1ae
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->hasInlineClassUnderlyingPropertyName()Z

    move-result p2

    if-eqz p2, :cond_1bf

    .line 85
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->getInlineClassUnderlyingPropertyName()I

    move-result p2

    invoke-virtual {p1, p2}, Lkotlin/reflect/jvm/internal/impl/km/internal/ReadContext;->get(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lkotlin/reflect/jvm/internal/impl/km/KmClass;->setInlineClassUnderlyingPropertyName(Ljava/lang/String;)V

    .line 87
    :cond_1bf
    invoke-static {p0, p1}, Lkotlin/reflect/jvm/internal/impl/km/internal/ReadersKt;->loadInlineClassUnderlyingType(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;Lkotlin/reflect/jvm/internal/impl/km/internal/ReadContext;)Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;

    move-result-object p2

    if-eqz p2, :cond_1c9

    invoke-static {p2, p1}, Lkotlin/reflect/jvm/internal/impl/km/internal/ReadersKt;->toKmType(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;Lkotlin/reflect/jvm/internal/impl/km/internal/ReadContext;)Lkotlin/reflect/jvm/internal/impl/km/KmType;

    move-result-object v1

    :cond_1c9
    invoke-virtual {v0, v1}, Lkotlin/reflect/jvm/internal/impl/km/KmClass;->setInlineClassUnderlyingType(Lkotlin/reflect/jvm/internal/impl/km/KmType;)V

    .line 89
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/km/internal/ReadContext;->getTypes()Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/TypeTable;

    move-result-object p2

    invoke-static {p0, p2}, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/ProtoTypeTableUtilKt;->contextReceiverTypes(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/TypeTable;)Ljava/util/List;

    move-result-object p2

    check-cast p2, Ljava/lang/Iterable;

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/km/KmClass;->getContextReceiverTypes()Ljava/util/List;

    move-result-object p3

    check-cast p3, Ljava/util/Collection;

    .line 440
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1e0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1f4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 441
    check-cast v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;

    .line 89
    invoke-static {v1, p1}, Lkotlin/reflect/jvm/internal/impl/km/internal/ReadersKt;->toKmType(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;Lkotlin/reflect/jvm/internal/impl/km/internal/ReadContext;)Lkotlin/reflect/jvm/internal/impl/km/KmType;

    move-result-object v1

    .line 441
    invoke-interface {p3, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1e0

    .line 90
    :cond_1f4
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->getVersionRequirementList()Ljava/util/List;

    move-result-object p2

    const-string p3, "getVersionRequirementList(...)"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Ljava/lang/Iterable;

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/km/KmClass;->getVersionRequirements()Ljava/util/List;

    move-result-object p3

    check-cast p3, Ljava/util/Collection;

    .line 443
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_209
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_224

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 444
    check-cast v1, Ljava/lang/Integer;

    .line 90
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1, p1}, Lkotlin/reflect/jvm/internal/impl/km/internal/ReadersKt;->readVersionRequirement(ILkotlin/reflect/jvm/internal/impl/km/internal/ReadContext;)Lkotlin/reflect/jvm/internal/impl/km/KmVersionRequirement;

    move-result-object v1

    .line 444
    invoke-interface {p3, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_209

    .line 92
    :cond_224
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/km/internal/ReadContext;->getExtensions$kotlin_metadata()Ljava/util/List;

    move-result-object p2

    check-cast p2, Ljava/lang/Iterable;

    .line 446
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_22e
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_23e

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lkotlin/reflect/jvm/internal/impl/km/internal/extensions/MetadataExtensions;

    .line 92
    invoke-interface {p3, v0, p0, p1}, Lkotlin/reflect/jvm/internal/impl/km/internal/extensions/MetadataExtensions;->readClassExtensions(Lkotlin/reflect/jvm/internal/impl/km/KmClass;Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;Lkotlin/reflect/jvm/internal/impl/km/internal/ReadContext;)V

    goto :goto_22e

    :cond_23e
    return-object v0
.end method

.method public static synthetic toKmClass$default(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/NameResolver;ZLjava/util/List;ILjava/lang/Object;)Lkotlin/reflect/jvm/internal/impl/km/KmClass;
    .registers 6

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_5

    const/4 p2, 0x0

    :cond_5
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_d

    .line 54
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p3

    .line 50
    :cond_d
    invoke-static {p0, p1, p2, p3}, Lkotlin/reflect/jvm/internal/impl/km/internal/ReadersKt;->toKmClass(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/NameResolver;ZLjava/util/List;)Lkotlin/reflect/jvm/internal/impl/km/KmClass;

    move-result-object p0

    return-object p0
.end method

.method private static final toKmConstructor(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Constructor;Lkotlin/reflect/jvm/internal/impl/km/internal/ReadContext;)Lkotlin/reflect/jvm/internal/impl/km/KmConstructor;
    .registers 6

    .line 178
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/km/KmConstructor;

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Constructor;->getFlags()I

    move-result v1

    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/impl/km/KmConstructor;-><init>(I)V

    .line 179
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Constructor;->getValueParameterList()Ljava/util/List;

    move-result-object v1

    const-string v2, "getValueParameterList(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Iterable;

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/km/KmConstructor;->getValueParameters()Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    .line 477
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_35

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 478
    check-cast v3, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$ValueParameter;

    .line 179
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v3, p1}, Lkotlin/reflect/jvm/internal/impl/km/internal/ReadersKt;->toKmValueParameter(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$ValueParameter;Lkotlin/reflect/jvm/internal/impl/km/internal/ReadContext;)Lkotlin/reflect/jvm/internal/impl/km/KmValueParameter;

    move-result-object v3

    .line 478
    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1e

    .line 180
    :cond_35
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Constructor;->getVersionRequirementList()Ljava/util/List;

    move-result-object v1

    const-string v2, "getVersionRequirementList(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Iterable;

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/km/KmConstructor;->getVersionRequirements()Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    .line 480
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_65

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 481
    check-cast v3, Ljava/lang/Integer;

    .line 180
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3, p1}, Lkotlin/reflect/jvm/internal/impl/km/internal/ReadersKt;->readVersionRequirement(ILkotlin/reflect/jvm/internal/impl/km/internal/ReadContext;)Lkotlin/reflect/jvm/internal/impl/km/KmVersionRequirement;

    move-result-object v3

    .line 481
    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_4a

    .line 182
    :cond_65
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/km/internal/ReadContext;->getExtensions$kotlin_metadata()Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    .line 483
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkotlin/reflect/jvm/internal/impl/km/internal/extensions/MetadataExtensions;

    .line 182
    invoke-interface {v2, v0, p0, p1}, Lkotlin/reflect/jvm/internal/impl/km/internal/extensions/MetadataExtensions;->readConstructorExtensions(Lkotlin/reflect/jvm/internal/impl/km/KmConstructor;Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Constructor;Lkotlin/reflect/jvm/internal/impl/km/internal/ReadContext;)V

    goto :goto_6f

    :cond_7f
    return-object v0
.end method

.method private static final toKmContract(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Contract;Lkotlin/reflect/jvm/internal/impl/km/internal/ReadContext;)Lkotlin/reflect/jvm/internal/impl/km/KmContract;
    .registers 10

    .line 351
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/km/KmContract;

    invoke-direct {v0}, Lkotlin/reflect/jvm/internal/impl/km/KmContract;-><init>()V

    .line 352
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Contract;->getEffectList()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_d
    :goto_d
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_93

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Effect;

    .line 353
    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Effect;->hasEffectType()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 355
    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Effect;->getEffectType()Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Effect$EffectType;

    move-result-object v2

    const-string v3, "Required value was null."

    if-eqz v2, :cond_89

    sget-object v4, Lkotlin/reflect/jvm/internal/impl/km/internal/ReadersKt$WhenMappings;->$EnumSwitchMapping$4:[I

    invoke-virtual {v2}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Effect$EffectType;->ordinal()I

    move-result v2

    aget v2, v4, v2

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eq v2, v6, :cond_44

    if-eq v2, v5, :cond_41

    if-ne v2, v4, :cond_3b

    .line 358
    sget-object v2, Lkotlin/reflect/jvm/internal/impl/km/KmEffectType;->RETURNS_NOT_NULL:Lkotlin/reflect/jvm/internal/impl/km/KmEffectType;

    goto :goto_46

    .line 355
    :cond_3b
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    .line 357
    :cond_41
    sget-object v2, Lkotlin/reflect/jvm/internal/impl/km/KmEffectType;->CALLS:Lkotlin/reflect/jvm/internal/impl/km/KmEffectType;

    goto :goto_46

    .line 356
    :cond_44
    sget-object v2, Lkotlin/reflect/jvm/internal/impl/km/KmEffectType;->RETURNS_CONSTANT:Lkotlin/reflect/jvm/internal/impl/km/KmEffectType;

    .line 361
    :goto_46
    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Effect;->hasKind()Z

    move-result v7

    if-nez v7, :cond_4e

    const/4 v3, 0x0

    goto :goto_70

    :cond_4e
    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Effect;->getKind()Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Effect$InvocationKind;

    move-result-object v7

    if-eqz v7, :cond_7f

    sget-object v3, Lkotlin/reflect/jvm/internal/impl/km/internal/ReadersKt$WhenMappings;->$EnumSwitchMapping$5:[I

    invoke-virtual {v7}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Effect$InvocationKind;->ordinal()I

    move-result v7

    aget v3, v3, v7

    if-eq v3, v6, :cond_6e

    if-eq v3, v5, :cond_6b

    if-ne v3, v4, :cond_65

    .line 364
    sget-object v3, Lkotlin/reflect/jvm/internal/impl/km/KmEffectInvocationKind;->AT_LEAST_ONCE:Lkotlin/reflect/jvm/internal/impl/km/KmEffectInvocationKind;

    goto :goto_70

    .line 361
    :cond_65
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    .line 363
    :cond_6b
    sget-object v3, Lkotlin/reflect/jvm/internal/impl/km/KmEffectInvocationKind;->EXACTLY_ONCE:Lkotlin/reflect/jvm/internal/impl/km/KmEffectInvocationKind;

    goto :goto_70

    .line 362
    :cond_6e
    sget-object v3, Lkotlin/reflect/jvm/internal/impl/km/KmEffectInvocationKind;->AT_MOST_ONCE:Lkotlin/reflect/jvm/internal/impl/km/KmEffectInvocationKind;

    .line 367
    :goto_70
    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/km/KmContract;->getEffects()Ljava/util/List;

    move-result-object v4

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v1, v2, v3, p1}, Lkotlin/reflect/jvm/internal/impl/km/internal/ReadersKt;->toKmEffect(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Effect;Lkotlin/reflect/jvm/internal/impl/km/KmEffectType;Lkotlin/reflect/jvm/internal/impl/km/KmEffectInvocationKind;Lkotlin/reflect/jvm/internal/impl/km/internal/ReadContext;)Lkotlin/reflect/jvm/internal/impl/km/KmEffect;

    move-result-object v1

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_d

    .line 361
    :cond_7f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 355
    :cond_89
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_93
    return-object v0
.end method

.method private static final toKmEffect(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Effect;Lkotlin/reflect/jvm/internal/impl/km/KmEffectType;Lkotlin/reflect/jvm/internal/impl/km/KmEffectInvocationKind;Lkotlin/reflect/jvm/internal/impl/km/internal/ReadContext;)Lkotlin/reflect/jvm/internal/impl/km/KmEffect;
    .registers 6

    .line 375
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/km/KmEffect;

    invoke-direct {v0, p1, p2}, Lkotlin/reflect/jvm/internal/impl/km/KmEffect;-><init>(Lkotlin/reflect/jvm/internal/impl/km/KmEffectType;Lkotlin/reflect/jvm/internal/impl/km/KmEffectInvocationKind;)V

    .line 376
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Effect;->getEffectConstructorArgumentList()Ljava/util/List;

    move-result-object p1

    const-string p2, "getEffectConstructorArgumentList(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Iterable;

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/km/KmEffect;->getConstructorArguments()Ljava/util/List;

    move-result-object p2

    check-cast p2, Ljava/util/Collection;

    .line 530
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1a
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_31

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 531
    check-cast v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Expression;

    .line 376
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v1, p3}, Lkotlin/reflect/jvm/internal/impl/km/internal/ReadersKt;->toKmEffectExpression(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Expression;Lkotlin/reflect/jvm/internal/impl/km/internal/ReadContext;)Lkotlin/reflect/jvm/internal/impl/km/KmEffectExpression;

    move-result-object v1

    .line 531
    invoke-interface {p2, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1a

    .line 378
    :cond_31
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Effect;->hasConclusionOfConditionalEffect()Z

    move-result p1

    if-eqz p1, :cond_47

    .line 379
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Effect;->getConclusionOfConditionalEffect()Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Expression;

    move-result-object p0

    const-string p1, "getConclusionOfConditionalEffect(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p3}, Lkotlin/reflect/jvm/internal/impl/km/internal/ReadersKt;->toKmEffectExpression(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Expression;Lkotlin/reflect/jvm/internal/impl/km/internal/ReadContext;)Lkotlin/reflect/jvm/internal/impl/km/KmEffectExpression;

    move-result-object p0

    invoke-virtual {v0, p0}, Lkotlin/reflect/jvm/internal/impl/km/KmEffect;->setConclusion(Lkotlin/reflect/jvm/internal/impl/km/KmEffectExpression;)V

    :cond_47
    return-object v0
.end method

.method private static final toKmEffectExpression(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Expression;Lkotlin/reflect/jvm/internal/impl/km/internal/ReadContext;)Lkotlin/reflect/jvm/internal/impl/km/KmEffectExpression;
    .registers 7

    .line 387
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/km/KmEffectExpression;

    invoke-direct {v0}, Lkotlin/reflect/jvm/internal/impl/km/KmEffectExpression;-><init>()V

    .line 388
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Expression;->getFlags()I

    move-result v1

    invoke-virtual {v0, v1}, Lkotlin/reflect/jvm/internal/impl/km/KmEffectExpression;->setFlags$kotlin_metadata(I)V

    .line 389
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Expression;->hasValueParameterReference()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1c

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Expression;->getValueParameterReference()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_1d

    :cond_1c
    move-object v1, v2

    :goto_1d
    invoke-virtual {v0, v1}, Lkotlin/reflect/jvm/internal/impl/km/KmEffectExpression;->setParameterIndex(Ljava/lang/Integer;)V

    .line 391
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Expression;->hasConstantValue()Z

    move-result v1

    if-eqz v1, :cond_64

    .line 392
    new-instance v1, Lkotlin/reflect/jvm/internal/impl/km/KmConstantValue;

    .line 393
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Expression;->getConstantValue()Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Expression$ConstantValue;

    move-result-object v3

    if-eqz v3, :cond_58

    sget-object v4, Lkotlin/reflect/jvm/internal/impl/km/internal/ReadersKt$WhenMappings;->$EnumSwitchMapping$6:[I

    invoke-virtual {v3}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Expression$ConstantValue;->ordinal()I

    move-result v3

    aget v3, v4, v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_4d

    const/4 v4, 0x2

    if-eq v3, v4, :cond_47

    const/4 v4, 0x3

    if-ne v3, v4, :cond_41

    move-object v3, v2

    goto :goto_51

    :cond_41
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    :cond_47
    const/4 v3, 0x0

    .line 395
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    goto :goto_51

    .line 394
    :cond_4d
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 392
    :goto_51
    invoke-direct {v1, v3}, Lkotlin/reflect/jvm/internal/impl/km/KmConstantValue;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lkotlin/reflect/jvm/internal/impl/km/KmEffectExpression;->setConstantValue(Lkotlin/reflect/jvm/internal/impl/km/KmConstantValue;)V

    goto :goto_64

    .line 393
    :cond_58
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Required value was null."

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 401
    :cond_64
    :goto_64
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/km/internal/ReadContext;->getTypes()Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/TypeTable;

    move-result-object v1

    invoke-static {p0, v1}, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/ProtoTypeTableUtilKt;->isInstanceType(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Expression;Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/TypeTable;)Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;

    move-result-object v1

    if-eqz v1, :cond_72

    invoke-static {v1, p1}, Lkotlin/reflect/jvm/internal/impl/km/internal/ReadersKt;->toKmType(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;Lkotlin/reflect/jvm/internal/impl/km/internal/ReadContext;)Lkotlin/reflect/jvm/internal/impl/km/KmType;

    move-result-object v2

    :cond_72
    invoke-virtual {v0, v2}, Lkotlin/reflect/jvm/internal/impl/km/KmEffectExpression;->setInstanceType(Lkotlin/reflect/jvm/internal/impl/km/KmType;)V

    .line 403
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Expression;->getAndArgumentList()Ljava/util/List;

    move-result-object v1

    const-string v2, "getAndArgumentList(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Iterable;

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/km/KmEffectExpression;->getAndArguments()Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    .line 533
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_8a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 534
    check-cast v3, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Expression;

    .line 403
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v3, p1}, Lkotlin/reflect/jvm/internal/impl/km/internal/ReadersKt;->toKmEffectExpression(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Expression;Lkotlin/reflect/jvm/internal/impl/km/internal/ReadContext;)Lkotlin/reflect/jvm/internal/impl/km/KmEffectExpression;

    move-result-object v3

    .line 534
    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_8a

    .line 404
    :cond_a1
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Expression;->getOrArgumentList()Ljava/util/List;

    move-result-object p0

    const-string v1, "getOrArgumentList(...)"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Ljava/lang/Iterable;

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/km/KmEffectExpression;->getOrArguments()Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    .line 536
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_b6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_cd

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 537
    check-cast v2, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Expression;

    .line 404
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v2, p1}, Lkotlin/reflect/jvm/internal/impl/km/internal/ReadersKt;->toKmEffectExpression(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Expression;Lkotlin/reflect/jvm/internal/impl/km/internal/ReadContext;)Lkotlin/reflect/jvm/internal/impl/km/KmEffectExpression;

    move-result-object v2

    .line 537
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_b6

    :cond_cd
    return-object v0
.end method

.method private static final toKmEnumEntry(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$EnumEntry;Lkotlin/reflect/jvm/internal/impl/km/internal/ReadContext;)Lkotlin/reflect/jvm/internal/impl/km/KmEnumEntry;
    .registers 5

    .line 98
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/km/KmEnumEntry;

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$EnumEntry;->getName()I

    move-result v1

    invoke-virtual {p1, v1}, Lkotlin/reflect/jvm/internal/impl/km/internal/ReadContext;->get(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/impl/km/KmEnumEntry;-><init>(Ljava/lang/String;)V

    .line 100
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/km/internal/ReadContext;->getExtensions$kotlin_metadata()Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    .line 448
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_17
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_27

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkotlin/reflect/jvm/internal/impl/km/internal/extensions/MetadataExtensions;

    .line 100
    invoke-interface {v2, v0, p0, p1}, Lkotlin/reflect/jvm/internal/impl/km/internal/extensions/MetadataExtensions;->readEnumEntryExtensions(Lkotlin/reflect/jvm/internal/impl/km/KmEnumEntry;Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$EnumEntry;Lkotlin/reflect/jvm/internal/impl/km/internal/ReadContext;)V

    goto :goto_17

    :cond_27
    return-object v0
.end method

.method private static final toKmFunction(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Function;Lkotlin/reflect/jvm/internal/impl/km/internal/ReadContext;)Lkotlin/reflect/jvm/internal/impl/km/KmFunction;
    .registers 6

    .line 189
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/km/KmFunction;

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Function;->getFlags()I

    move-result v1

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Function;->getName()I

    move-result v2

    invoke-virtual {p1, v2}, Lkotlin/reflect/jvm/internal/impl/km/internal/ReadContext;->get(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lkotlin/reflect/jvm/internal/impl/km/KmFunction;-><init>(ILjava/lang/String;)V

    .line 190
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Function;->getTypeParameterList()Ljava/util/List;

    move-result-object v1

    const-string v2, "getTypeParameterList(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Lkotlin/reflect/jvm/internal/impl/km/internal/ReadContext;->withTypeParameters$kotlin_metadata(Ljava/util/List;)Lkotlin/reflect/jvm/internal/impl/km/internal/ReadContext;

    move-result-object p1

    .line 192
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Function;->getTypeParameterList()Ljava/util/List;

    move-result-object v1

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Iterable;

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/km/KmFunction;->getTypeParameters()Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    .line 485
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_31
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_48

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 486
    check-cast v3, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$TypeParameter;

    .line 192
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v3, p1}, Lkotlin/reflect/jvm/internal/impl/km/internal/ReadersKt;->toKmTypeParameter(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$TypeParameter;Lkotlin/reflect/jvm/internal/impl/km/internal/ReadContext;)Lkotlin/reflect/jvm/internal/impl/km/KmTypeParameter;

    move-result-object v3

    .line 486
    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_31

    .line 193
    :cond_48
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/km/internal/ReadContext;->getTypes()Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/TypeTable;

    move-result-object v1

    invoke-static {p0, v1}, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/ProtoTypeTableUtilKt;->receiverType(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Function;Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/TypeTable;)Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;

    move-result-object v1

    if-eqz v1, :cond_57

    invoke-static {v1, p1}, Lkotlin/reflect/jvm/internal/impl/km/internal/ReadersKt;->toKmType(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;Lkotlin/reflect/jvm/internal/impl/km/internal/ReadContext;)Lkotlin/reflect/jvm/internal/impl/km/KmType;

    move-result-object v1

    goto :goto_58

    :cond_57
    const/4 v1, 0x0

    :goto_58
    invoke-virtual {v0, v1}, Lkotlin/reflect/jvm/internal/impl/km/KmFunction;->setReceiverParameterType(Lkotlin/reflect/jvm/internal/impl/km/KmType;)V

    .line 194
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/km/internal/ReadContext;->getTypes()Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/TypeTable;

    move-result-object v1

    invoke-static {p0, v1}, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/ProtoTypeTableUtilKt;->contextReceiverTypes(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Function;Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/TypeTable;)Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/km/KmFunction;->getContextReceiverTypes()Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    .line 488
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_83

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 489
    check-cast v3, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;

    .line 194
    invoke-static {v3, p1}, Lkotlin/reflect/jvm/internal/impl/km/internal/ReadersKt;->toKmType(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;Lkotlin/reflect/jvm/internal/impl/km/internal/ReadContext;)Lkotlin/reflect/jvm/internal/impl/km/KmType;

    move-result-object v3

    .line 489
    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_6f

    .line 195
    :cond_83
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Function;->getValueParameterList()Ljava/util/List;

    move-result-object v1

    const-string v2, "getValueParameterList(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Iterable;

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/km/KmFunction;->getValueParameters()Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    .line 491
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_98
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_af

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 492
    check-cast v3, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$ValueParameter;

    .line 195
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v3, p1}, Lkotlin/reflect/jvm/internal/impl/km/internal/ReadersKt;->toKmValueParameter(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$ValueParameter;Lkotlin/reflect/jvm/internal/impl/km/internal/ReadContext;)Lkotlin/reflect/jvm/internal/impl/km/KmValueParameter;

    move-result-object v3

    .line 492
    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_98

    .line 196
    :cond_af
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/km/internal/ReadContext;->getTypes()Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/TypeTable;

    move-result-object v1

    invoke-static {p0, v1}, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/ProtoTypeTableUtilKt;->returnType(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Function;Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/TypeTable;)Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;

    move-result-object v1

    invoke-static {v1, p1}, Lkotlin/reflect/jvm/internal/impl/km/internal/ReadersKt;->toKmType(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;Lkotlin/reflect/jvm/internal/impl/km/internal/ReadContext;)Lkotlin/reflect/jvm/internal/impl/km/KmType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lkotlin/reflect/jvm/internal/impl/km/KmFunction;->setReturnType(Lkotlin/reflect/jvm/internal/impl/km/KmType;)V

    .line 199
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Function;->hasContract()Z

    move-result v1

    if-eqz v1, :cond_d4

    .line 200
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Function;->getContract()Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Contract;

    move-result-object v1

    const-string v2, "getContract(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1, p1}, Lkotlin/reflect/jvm/internal/impl/km/internal/ReadersKt;->toKmContract(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Contract;Lkotlin/reflect/jvm/internal/impl/km/internal/ReadContext;)Lkotlin/reflect/jvm/internal/impl/km/KmContract;

    move-result-object v1

    invoke-virtual {v0, v1}, Lkotlin/reflect/jvm/internal/impl/km/KmFunction;->setContract(Lkotlin/reflect/jvm/internal/impl/km/KmContract;)V

    .line 203
    :cond_d4
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Function;->getVersionRequirementList()Ljava/util/List;

    move-result-object v1

    const-string v2, "getVersionRequirementList(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Iterable;

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/km/KmFunction;->getVersionRequirements()Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    .line 494
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_e9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_104

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 495
    check-cast v3, Ljava/lang/Integer;

    .line 203
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3, p1}, Lkotlin/reflect/jvm/internal/impl/km/internal/ReadersKt;->readVersionRequirement(ILkotlin/reflect/jvm/internal/impl/km/internal/ReadContext;)Lkotlin/reflect/jvm/internal/impl/km/KmVersionRequirement;

    move-result-object v3

    .line 495
    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_e9

    .line 205
    :cond_104
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/km/internal/ReadContext;->getExtensions$kotlin_metadata()Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    .line 497
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_10e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_11e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkotlin/reflect/jvm/internal/impl/km/internal/extensions/MetadataExtensions;

    .line 205
    invoke-interface {v2, v0, p0, p1}, Lkotlin/reflect/jvm/internal/impl/km/internal/extensions/MetadataExtensions;->readFunctionExtensions(Lkotlin/reflect/jvm/internal/impl/km/KmFunction;Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Function;Lkotlin/reflect/jvm/internal/impl/km/internal/ReadContext;)V

    goto :goto_10e

    :cond_11e
    return-object v0
.end method

.method public static final toKmProperty(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property;Lkotlin/reflect/jvm/internal/impl/km/internal/ReadContext;)Lkotlin/reflect/jvm/internal/impl/km/KmProperty;
    .registers 7

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "outer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 212
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/km/KmProperty;

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property;->getFlags()I

    move-result v1

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property;->getName()I

    move-result v2

    invoke-virtual {p1, v2}, Lkotlin/reflect/jvm/internal/impl/km/internal/ReadContext;->get(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/km/internal/ReadersKt;->getPropertyGetterFlags(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property;)I

    move-result v3

    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/km/internal/ReadersKt;->getPropertySetterFlags(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property;)I

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lkotlin/reflect/jvm/internal/impl/km/KmProperty;-><init>(ILjava/lang/String;II)V

    .line 213
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property;->getTypeParameterList()Ljava/util/List;

    move-result-object v1

    const-string v2, "getTypeParameterList(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Lkotlin/reflect/jvm/internal/impl/km/internal/ReadContext;->withTypeParameters$kotlin_metadata(Ljava/util/List;)Lkotlin/reflect/jvm/internal/impl/km/internal/ReadContext;

    move-result-object p1

    .line 215
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property;->getTypeParameterList()Ljava/util/List;

    move-result-object v1

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Iterable;

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/km/KmProperty;->getTypeParameters()Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    .line 499
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_43
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 500
    check-cast v3, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$TypeParameter;

    .line 215
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v3, p1}, Lkotlin/reflect/jvm/internal/impl/km/internal/ReadersKt;->toKmTypeParameter(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$TypeParameter;Lkotlin/reflect/jvm/internal/impl/km/internal/ReadContext;)Lkotlin/reflect/jvm/internal/impl/km/KmTypeParameter;

    move-result-object v3

    .line 500
    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_43

    .line 216
    :cond_5a
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/km/internal/ReadContext;->getTypes()Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/TypeTable;

    move-result-object v1

    invoke-static {p0, v1}, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/ProtoTypeTableUtilKt;->receiverType(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property;Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/TypeTable;)Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;

    move-result-object v1

    if-eqz v1, :cond_69

    invoke-static {v1, p1}, Lkotlin/reflect/jvm/internal/impl/km/internal/ReadersKt;->toKmType(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;Lkotlin/reflect/jvm/internal/impl/km/internal/ReadContext;)Lkotlin/reflect/jvm/internal/impl/km/KmType;

    move-result-object v1

    goto :goto_6a

    :cond_69
    const/4 v1, 0x0

    :goto_6a
    invoke-virtual {v0, v1}, Lkotlin/reflect/jvm/internal/impl/km/KmProperty;->setReceiverParameterType(Lkotlin/reflect/jvm/internal/impl/km/KmType;)V

    .line 217
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/km/internal/ReadContext;->getTypes()Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/TypeTable;

    move-result-object v1

    invoke-static {p0, v1}, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/ProtoTypeTableUtilKt;->contextReceiverTypes(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property;Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/TypeTable;)Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/km/KmProperty;->getContextReceiverTypes()Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    .line 502
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_81
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_95

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 503
    check-cast v3, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;

    .line 217
    invoke-static {v3, p1}, Lkotlin/reflect/jvm/internal/impl/km/internal/ReadersKt;->toKmType(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;Lkotlin/reflect/jvm/internal/impl/km/internal/ReadContext;)Lkotlin/reflect/jvm/internal/impl/km/KmType;

    move-result-object v3

    .line 503
    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_81

    .line 218
    :cond_95
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property;->hasSetterValueParameter()Z

    move-result v1

    if-eqz v1, :cond_ab

    .line 219
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property;->getSetterValueParameter()Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$ValueParameter;

    move-result-object v1

    const-string v2, "getSetterValueParameter(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1, p1}, Lkotlin/reflect/jvm/internal/impl/km/internal/ReadersKt;->toKmValueParameter(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$ValueParameter;Lkotlin/reflect/jvm/internal/impl/km/internal/ReadContext;)Lkotlin/reflect/jvm/internal/impl/km/KmValueParameter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lkotlin/reflect/jvm/internal/impl/km/KmProperty;->setSetterParameter(Lkotlin/reflect/jvm/internal/impl/km/KmValueParameter;)V

    .line 221
    :cond_ab
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/km/internal/ReadContext;->getTypes()Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/TypeTable;

    move-result-object v1

    invoke-static {p0, v1}, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/ProtoTypeTableUtilKt;->returnType(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property;Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/TypeTable;)Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;

    move-result-object v1

    invoke-static {v1, p1}, Lkotlin/reflect/jvm/internal/impl/km/internal/ReadersKt;->toKmType(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;Lkotlin/reflect/jvm/internal/impl/km/internal/ReadContext;)Lkotlin/reflect/jvm/internal/impl/km/KmType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lkotlin/reflect/jvm/internal/impl/km/KmProperty;->setReturnType(Lkotlin/reflect/jvm/internal/impl/km/KmType;)V

    .line 222
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property;->getVersionRequirementList()Ljava/util/List;

    move-result-object v1

    const-string v2, "getVersionRequirementList(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Iterable;

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/km/KmProperty;->getVersionRequirements()Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    .line 505
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_cf
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_ea

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 506
    check-cast v3, Ljava/lang/Integer;

    .line 222
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3, p1}, Lkotlin/reflect/jvm/internal/impl/km/internal/ReadersKt;->readVersionRequirement(ILkotlin/reflect/jvm/internal/impl/km/internal/ReadContext;)Lkotlin/reflect/jvm/internal/impl/km/KmVersionRequirement;

    move-result-object v3

    .line 506
    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_cf

    .line 224
    :cond_ea
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/km/internal/ReadContext;->getExtensions$kotlin_metadata()Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    .line 508
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_f4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_104

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkotlin/reflect/jvm/internal/impl/km/internal/extensions/MetadataExtensions;

    .line 224
    invoke-interface {v2, v0, p0, p1}, Lkotlin/reflect/jvm/internal/impl/km/internal/extensions/MetadataExtensions;->readPropertyExtensions(Lkotlin/reflect/jvm/internal/impl/km/KmProperty;Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property;Lkotlin/reflect/jvm/internal/impl/km/internal/ReadContext;)V

    goto :goto_f4

    :cond_104
    return-object v0
.end method

.method private static final toKmType(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;Lkotlin/reflect/jvm/internal/impl/km/internal/ReadContext;)Lkotlin/reflect/jvm/internal/impl/km/KmType;
    .registers 10

    .line 279
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/km/KmType;

    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/km/internal/ReadersKt;->getTypeFlags(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;)I

    move-result v1

    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/impl/km/KmType;-><init>(I)V

    .line 281
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;->hasClassName()Z

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-eqz v1, :cond_21

    new-instance v1, Lkotlin/reflect/jvm/internal/impl/km/KmClassifier$Class;

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;->getClassName()I

    move-result v4

    invoke-virtual {p1, v4}, Lkotlin/reflect/jvm/internal/impl/km/internal/ReadContext;->className$kotlin_metadata(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Lkotlin/reflect/jvm/internal/impl/km/KmClassifier$Class;-><init>(Ljava/lang/String;)V

    check-cast v1, Lkotlin/reflect/jvm/internal/impl/km/KmClassifier;

    goto :goto_65

    .line 282
    :cond_21
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;->hasTypeAliasName()Z

    move-result v1

    if-eqz v1, :cond_37

    new-instance v1, Lkotlin/reflect/jvm/internal/impl/km/KmClassifier$TypeAlias;

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;->getTypeAliasName()I

    move-result v4

    invoke-virtual {p1, v4}, Lkotlin/reflect/jvm/internal/impl/km/internal/ReadContext;->className$kotlin_metadata(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Lkotlin/reflect/jvm/internal/impl/km/KmClassifier$TypeAlias;-><init>(Ljava/lang/String;)V

    check-cast v1, Lkotlin/reflect/jvm/internal/impl/km/KmClassifier;

    goto :goto_65

    .line 283
    :cond_37
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;->hasTypeParameter()Z

    move-result v1

    if-eqz v1, :cond_49

    new-instance v1, Lkotlin/reflect/jvm/internal/impl/km/KmClassifier$TypeParameter;

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;->getTypeParameter()I

    move-result v4

    invoke-direct {v1, v4}, Lkotlin/reflect/jvm/internal/impl/km/KmClassifier$TypeParameter;-><init>(I)V

    check-cast v1, Lkotlin/reflect/jvm/internal/impl/km/KmClassifier;

    goto :goto_65

    .line 284
    :cond_49
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;->hasTypeParameterName()Z

    move-result v1

    if-eqz v1, :cond_167

    .line 285
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;->getTypeParameterName()I

    move-result v1

    invoke-virtual {p1, v1}, Lkotlin/reflect/jvm/internal/impl/km/internal/ReadContext;->getTypeParameterId$kotlin_metadata(I)Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_14b

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 287
    new-instance v4, Lkotlin/reflect/jvm/internal/impl/km/KmClassifier$TypeParameter;

    invoke-direct {v4, v1}, Lkotlin/reflect/jvm/internal/impl/km/KmClassifier$TypeParameter;-><init>(I)V

    move-object v1, v4

    check-cast v1, Lkotlin/reflect/jvm/internal/impl/km/KmClassifier;

    .line 280
    :goto_65
    invoke-virtual {v0, v1}, Lkotlin/reflect/jvm/internal/impl/km/KmType;->setClassifier(Lkotlin/reflect/jvm/internal/impl/km/KmClassifier;)V

    .line 292
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;->getArgumentList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_70
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_e3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type$Argument;

    .line 293
    invoke-virtual {v4}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type$Argument;->getProjection()Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type$Argument$Projection;

    move-result-object v5

    if-eqz v5, :cond_d7

    sget-object v6, Lkotlin/reflect/jvm/internal/impl/km/internal/ReadersKt$WhenMappings;->$EnumSwitchMapping$1:[I

    invoke-virtual {v5}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type$Argument$Projection;->ordinal()I

    move-result v5

    aget v5, v6, v5

    const/4 v6, 0x1

    if-eq v5, v6, :cond_a3

    if-eq v5, v2, :cond_a0

    const/4 v6, 0x3

    if-eq v5, v6, :cond_9d

    const/4 v6, 0x4

    if-ne v5, v6, :cond_97

    move-object v5, v3

    goto :goto_a5

    :cond_97
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    .line 296
    :cond_9d
    sget-object v5, Lkotlin/reflect/jvm/internal/impl/km/KmVariance;->INVARIANT:Lkotlin/reflect/jvm/internal/impl/km/KmVariance;

    goto :goto_a5

    .line 295
    :cond_a0
    sget-object v5, Lkotlin/reflect/jvm/internal/impl/km/KmVariance;->OUT:Lkotlin/reflect/jvm/internal/impl/km/KmVariance;

    goto :goto_a5

    .line 294
    :cond_a3
    sget-object v5, Lkotlin/reflect/jvm/internal/impl/km/KmVariance;->IN:Lkotlin/reflect/jvm/internal/impl/km/KmVariance;

    :goto_a5
    if-eqz v5, :cond_cd

    .line 301
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/km/internal/ReadContext;->getTypes()Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/TypeTable;

    move-result-object v6

    invoke-static {v4, v6}, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/ProtoTypeTableUtilKt;->type(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type$Argument;Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/TypeTable;)Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;

    move-result-object v4

    if-eqz v4, :cond_c5

    .line 303
    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/km/KmType;->getArguments()Ljava/util/List;

    move-result-object v6

    new-instance v7, Lkotlin/reflect/jvm/internal/impl/km/KmTypeProjection;

    invoke-static {v4, p1}, Lkotlin/reflect/jvm/internal/impl/km/internal/ReadersKt;->toKmType(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;Lkotlin/reflect/jvm/internal/impl/km/internal/ReadContext;)Lkotlin/reflect/jvm/internal/impl/km/KmType;

    move-result-object v4

    invoke-direct {v7, v5, v4}, Lkotlin/reflect/jvm/internal/impl/km/KmTypeProjection;-><init>(Lkotlin/reflect/jvm/internal/impl/km/KmVariance;Lkotlin/reflect/jvm/internal/impl/km/KmType;)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_70

    .line 302
    :cond_c5
    new-instance p0, Lkotlin/reflect/jvm/internal/impl/km/InconsistentKotlinMetadataException;

    const-string p1, "No type argument for non-STAR projection in Type"

    invoke-direct {p0, p1, v3, v2, v3}, Lkotlin/reflect/jvm/internal/impl/km/InconsistentKotlinMetadataException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw p0

    .line 305
    :cond_cd
    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/km/KmType;->getArguments()Ljava/util/List;

    move-result-object v4

    sget-object v5, Lkotlin/reflect/jvm/internal/impl/km/KmTypeProjection;->STAR:Lkotlin/reflect/jvm/internal/impl/km/KmTypeProjection;

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_70

    .line 293
    :cond_d7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Required value was null."

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 309
    :cond_e3
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/km/internal/ReadContext;->getTypes()Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/TypeTable;

    move-result-object v1

    invoke-static {p0, v1}, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/ProtoTypeTableUtilKt;->abbreviatedType(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/TypeTable;)Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;

    move-result-object v1

    if-eqz v1, :cond_f2

    invoke-static {v1, p1}, Lkotlin/reflect/jvm/internal/impl/km/internal/ReadersKt;->toKmType(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;Lkotlin/reflect/jvm/internal/impl/km/internal/ReadContext;)Lkotlin/reflect/jvm/internal/impl/km/KmType;

    move-result-object v1

    goto :goto_f3

    :cond_f2
    move-object v1, v3

    :goto_f3
    invoke-virtual {v0, v1}, Lkotlin/reflect/jvm/internal/impl/km/KmType;->setAbbreviatedType(Lkotlin/reflect/jvm/internal/impl/km/KmType;)V

    .line 310
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/km/internal/ReadContext;->getTypes()Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/TypeTable;

    move-result-object v1

    invoke-static {p0, v1}, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/ProtoTypeTableUtilKt;->outerType(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/TypeTable;)Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;

    move-result-object v1

    if-eqz v1, :cond_105

    invoke-static {v1, p1}, Lkotlin/reflect/jvm/internal/impl/km/internal/ReadersKt;->toKmType(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;Lkotlin/reflect/jvm/internal/impl/km/internal/ReadContext;)Lkotlin/reflect/jvm/internal/impl/km/KmType;

    move-result-object v1

    goto :goto_106

    :cond_105
    move-object v1, v3

    :goto_106
    invoke-virtual {v0, v1}, Lkotlin/reflect/jvm/internal/impl/km/KmType;->setOuterType(Lkotlin/reflect/jvm/internal/impl/km/KmType;)V

    .line 312
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/km/internal/ReadContext;->getTypes()Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/TypeTable;

    move-result-object v1

    invoke-static {p0, v1}, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/ProtoTypeTableUtilKt;->flexibleUpperBound(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/TypeTable;)Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;

    move-result-object v1

    if-eqz v1, :cond_12d

    invoke-static {v1, p1}, Lkotlin/reflect/jvm/internal/impl/km/internal/ReadersKt;->toKmType(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;Lkotlin/reflect/jvm/internal/impl/km/internal/ReadContext;)Lkotlin/reflect/jvm/internal/impl/km/KmType;

    move-result-object v1

    if-eqz v1, :cond_12d

    .line 313
    new-instance v2, Lkotlin/reflect/jvm/internal/impl/km/KmFlexibleTypeUpperBound;

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;->hasFlexibleTypeCapabilitiesId()Z

    move-result v4

    if-eqz v4, :cond_129

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;->getFlexibleTypeCapabilitiesId()I

    move-result v3

    invoke-virtual {p1, v3}, Lkotlin/reflect/jvm/internal/impl/km/internal/ReadContext;->get(I)Ljava/lang/String;

    move-result-object v3

    :cond_129
    invoke-direct {v2, v1, v3}, Lkotlin/reflect/jvm/internal/impl/km/KmFlexibleTypeUpperBound;-><init>(Lkotlin/reflect/jvm/internal/impl/km/KmType;Ljava/lang/String;)V

    move-object v3, v2

    .line 312
    :cond_12d
    invoke-virtual {v0, v3}, Lkotlin/reflect/jvm/internal/impl/km/KmType;->setFlexibleTypeUpperBound(Lkotlin/reflect/jvm/internal/impl/km/KmFlexibleTypeUpperBound;)V

    .line 316
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/km/internal/ReadContext;->getExtensions$kotlin_metadata()Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    .line 528
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_13a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_14a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkotlin/reflect/jvm/internal/impl/km/internal/extensions/MetadataExtensions;

    .line 316
    invoke-interface {v2, v0, p0, p1}, Lkotlin/reflect/jvm/internal/impl/km/internal/extensions/MetadataExtensions;->readTypeExtensions(Lkotlin/reflect/jvm/internal/impl/km/KmType;Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;Lkotlin/reflect/jvm/internal/impl/km/internal/ReadContext;)V

    goto :goto_13a

    :cond_14a
    return-object v0

    .line 286
    :cond_14b
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/km/InconsistentKotlinMetadataException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "No type parameter id for "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;->getTypeParameterName()I

    move-result p0

    invoke-virtual {p1, p0}, Lkotlin/reflect/jvm/internal/impl/km/internal/ReadContext;->get(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0, v3, v2, v3}, Lkotlin/reflect/jvm/internal/impl/km/InconsistentKotlinMetadataException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw v0

    .line 289
    :cond_167
    new-instance p0, Lkotlin/reflect/jvm/internal/impl/km/InconsistentKotlinMetadataException;

    const-string p1, "No classifier (class, type alias or type parameter) recorded for Type"

    invoke-direct {p0, p1, v3, v2, v3}, Lkotlin/reflect/jvm/internal/impl/km/InconsistentKotlinMetadataException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw p0
.end method

.method private static final toKmTypeAlias(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$TypeAlias;Lkotlin/reflect/jvm/internal/impl/km/internal/ReadContext;)Lkotlin/reflect/jvm/internal/impl/km/KmTypeAlias;
    .registers 7

    .line 230
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/km/KmTypeAlias;

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$TypeAlias;->getFlags()I

    move-result v1

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$TypeAlias;->getName()I

    move-result v2

    invoke-virtual {p1, v2}, Lkotlin/reflect/jvm/internal/impl/km/internal/ReadContext;->get(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lkotlin/reflect/jvm/internal/impl/km/KmTypeAlias;-><init>(ILjava/lang/String;)V

    .line 232
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$TypeAlias;->getTypeParameterList()Ljava/util/List;

    move-result-object v1

    const-string v2, "getTypeParameterList(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Lkotlin/reflect/jvm/internal/impl/km/internal/ReadContext;->withTypeParameters$kotlin_metadata(Ljava/util/List;)Lkotlin/reflect/jvm/internal/impl/km/internal/ReadContext;

    move-result-object p1

    .line 234
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$TypeAlias;->getTypeParameterList()Ljava/util/List;

    move-result-object v1

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Iterable;

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/km/KmTypeAlias;->getTypeParameters()Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    .line 510
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_31
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_48

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 511
    check-cast v3, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$TypeParameter;

    .line 234
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v3, p1}, Lkotlin/reflect/jvm/internal/impl/km/internal/ReadersKt;->toKmTypeParameter(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$TypeParameter;Lkotlin/reflect/jvm/internal/impl/km/internal/ReadContext;)Lkotlin/reflect/jvm/internal/impl/km/KmTypeParameter;

    move-result-object v3

    .line 511
    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_31

    .line 235
    :cond_48
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/km/internal/ReadContext;->getTypes()Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/TypeTable;

    move-result-object v1

    invoke-static {p0, v1}, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/ProtoTypeTableUtilKt;->underlyingType(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$TypeAlias;Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/TypeTable;)Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;

    move-result-object v1

    invoke-static {v1, p1}, Lkotlin/reflect/jvm/internal/impl/km/internal/ReadersKt;->toKmType(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;Lkotlin/reflect/jvm/internal/impl/km/internal/ReadContext;)Lkotlin/reflect/jvm/internal/impl/km/KmType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lkotlin/reflect/jvm/internal/impl/km/KmTypeAlias;->setUnderlyingType(Lkotlin/reflect/jvm/internal/impl/km/KmType;)V

    .line 236
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/km/internal/ReadContext;->getTypes()Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/TypeTable;

    move-result-object v1

    invoke-static {p0, v1}, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/ProtoTypeTableUtilKt;->expandedType(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$TypeAlias;Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/TypeTable;)Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;

    move-result-object v1

    invoke-static {v1, p1}, Lkotlin/reflect/jvm/internal/impl/km/internal/ReadersKt;->toKmType(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;Lkotlin/reflect/jvm/internal/impl/km/internal/ReadContext;)Lkotlin/reflect/jvm/internal/impl/km/KmType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lkotlin/reflect/jvm/internal/impl/km/KmTypeAlias;->setExpandedType(Lkotlin/reflect/jvm/internal/impl/km/KmType;)V

    .line 237
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$TypeAlias;->getAnnotationList()Ljava/util/List;

    move-result-object v1

    const-string v2, "getAnnotationList(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Iterable;

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/km/KmTypeAlias;->getAnnotations()Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    .line 513
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_7b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_96

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 514
    check-cast v3, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Annotation;

    .line 237
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/km/internal/ReadContext;->getStrings()Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/NameResolver;

    move-result-object v4

    invoke-static {v3, v4}, Lkotlin/reflect/jvm/internal/impl/km/internal/ReadUtilsKt;->readAnnotation(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Annotation;Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/NameResolver;)Lkotlin/reflect/jvm/internal/impl/km/KmAnnotation;

    move-result-object v3

    .line 514
    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_7b

    .line 239
    :cond_96
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$TypeAlias;->getVersionRequirementList()Ljava/util/List;

    move-result-object v1

    const-string v2, "getVersionRequirementList(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Iterable;

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/km/KmTypeAlias;->getVersionRequirements()Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    .line 516
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_ab
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_c6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 517
    check-cast v3, Ljava/lang/Integer;

    .line 239
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3, p1}, Lkotlin/reflect/jvm/internal/impl/km/internal/ReadersKt;->readVersionRequirement(ILkotlin/reflect/jvm/internal/impl/km/internal/ReadContext;)Lkotlin/reflect/jvm/internal/impl/km/KmVersionRequirement;

    move-result-object v3

    .line 517
    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_ab

    .line 241
    :cond_c6
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/km/internal/ReadContext;->getExtensions$kotlin_metadata()Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    .line 519
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_e0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkotlin/reflect/jvm/internal/impl/km/internal/extensions/MetadataExtensions;

    .line 241
    invoke-interface {v2, v0, p0, p1}, Lkotlin/reflect/jvm/internal/impl/km/internal/extensions/MetadataExtensions;->readTypeAliasExtensions(Lkotlin/reflect/jvm/internal/impl/km/KmTypeAlias;Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$TypeAlias;Lkotlin/reflect/jvm/internal/impl/km/internal/ReadContext;)V

    goto :goto_d0

    :cond_e0
    return-object v0
.end method

.method private static final toKmTypeParameter(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$TypeParameter;Lkotlin/reflect/jvm/internal/impl/km/internal/ReadContext;)Lkotlin/reflect/jvm/internal/impl/km/KmTypeParameter;
    .registers 7

    .line 264
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$TypeParameter;->getVariance()Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$TypeParameter$Variance;

    move-result-object v0

    if-eqz v0, :cond_7d

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/km/internal/ReadersKt$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$TypeParameter$Variance;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_23

    const/4 v1, 0x2

    if-eq v0, v1, :cond_20

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1a

    .line 267
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/km/KmVariance;->INVARIANT:Lkotlin/reflect/jvm/internal/impl/km/KmVariance;

    goto :goto_25

    .line 264
    :cond_1a
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    .line 266
    :cond_20
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/km/KmVariance;->OUT:Lkotlin/reflect/jvm/internal/impl/km/KmVariance;

    goto :goto_25

    .line 265
    :cond_23
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/km/KmVariance;->IN:Lkotlin/reflect/jvm/internal/impl/km/KmVariance;

    .line 269
    :goto_25
    new-instance v1, Lkotlin/reflect/jvm/internal/impl/km/KmTypeParameter;

    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/km/internal/ReadersKt;->getTypeParameterFlags(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$TypeParameter;)I

    move-result v2

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$TypeParameter;->getName()I

    move-result v3

    invoke-virtual {p1, v3}, Lkotlin/reflect/jvm/internal/impl/km/internal/ReadContext;->get(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$TypeParameter;->getId()I

    move-result v4

    invoke-direct {v1, v2, v3, v4, v0}, Lkotlin/reflect/jvm/internal/impl/km/KmTypeParameter;-><init>(ILjava/lang/String;ILkotlin/reflect/jvm/internal/impl/km/KmVariance;)V

    .line 271
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/km/internal/ReadContext;->getTypes()Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/TypeTable;

    move-result-object v0

    invoke-static {p0, v0}, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/ProtoTypeTableUtilKt;->upperBounds(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$TypeParameter;Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/TypeTable;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/impl/km/KmTypeParameter;->getUpperBounds()Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    .line 523
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_62

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 524
    check-cast v3, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;

    .line 271
    invoke-static {v3, p1}, Lkotlin/reflect/jvm/internal/impl/km/internal/ReadersKt;->toKmType(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;Lkotlin/reflect/jvm/internal/impl/km/internal/ReadContext;)Lkotlin/reflect/jvm/internal/impl/km/KmType;

    move-result-object v3

    .line 524
    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_4e

    .line 273
    :cond_62
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/km/internal/ReadContext;->getExtensions$kotlin_metadata()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 526
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkotlin/reflect/jvm/internal/impl/km/internal/extensions/MetadataExtensions;

    .line 273
    invoke-interface {v2, v1, p0, p1}, Lkotlin/reflect/jvm/internal/impl/km/internal/extensions/MetadataExtensions;->readTypeParameterExtensions(Lkotlin/reflect/jvm/internal/impl/km/KmTypeParameter;Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$TypeParameter;Lkotlin/reflect/jvm/internal/impl/km/internal/ReadContext;)V

    goto :goto_6c

    :cond_7c
    return-object v1

    .line 264
    :cond_7d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Required value was null."

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static final toKmValueParameter(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$ValueParameter;Lkotlin/reflect/jvm/internal/impl/km/internal/ReadContext;)Lkotlin/reflect/jvm/internal/impl/km/KmValueParameter;
    .registers 5

    .line 247
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/km/KmValueParameter;

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$ValueParameter;->getFlags()I

    move-result v1

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$ValueParameter;->getName()I

    move-result v2

    invoke-virtual {p1, v2}, Lkotlin/reflect/jvm/internal/impl/km/internal/ReadContext;->get(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lkotlin/reflect/jvm/internal/impl/km/KmValueParameter;-><init>(ILjava/lang/String;)V

    .line 248
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/km/internal/ReadContext;->getTypes()Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/TypeTable;

    move-result-object v1

    invoke-static {p0, v1}, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/ProtoTypeTableUtilKt;->type(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$ValueParameter;Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/TypeTable;)Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;

    move-result-object v1

    invoke-static {v1, p1}, Lkotlin/reflect/jvm/internal/impl/km/internal/ReadersKt;->toKmType(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;Lkotlin/reflect/jvm/internal/impl/km/internal/ReadContext;)Lkotlin/reflect/jvm/internal/impl/km/KmType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lkotlin/reflect/jvm/internal/impl/km/KmValueParameter;->setType(Lkotlin/reflect/jvm/internal/impl/km/KmType;)V

    .line 250
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/km/internal/ReadContext;->getTypes()Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/TypeTable;

    move-result-object v1

    invoke-static {p0, v1}, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/ProtoTypeTableUtilKt;->varargElementType(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$ValueParameter;Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/TypeTable;)Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;

    move-result-object v1

    if-eqz v1, :cond_2f

    invoke-static {v1, p1}, Lkotlin/reflect/jvm/internal/impl/km/internal/ReadersKt;->toKmType(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;Lkotlin/reflect/jvm/internal/impl/km/internal/ReadContext;)Lkotlin/reflect/jvm/internal/impl/km/KmType;

    move-result-object v1

    goto :goto_30

    :cond_2f
    const/4 v1, 0x0

    :goto_30
    invoke-virtual {v0, v1}, Lkotlin/reflect/jvm/internal/impl/km/KmValueParameter;->setVarargElementType(Lkotlin/reflect/jvm/internal/impl/km/KmType;)V

    .line 252
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$ValueParameter;->hasAnnotationParameterDefaultValue()Z

    move-result v1

    if-eqz v1, :cond_4d

    .line 253
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$ValueParameter;->getAnnotationParameterDefaultValue()Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Annotation$Argument$Value;

    move-result-object v1

    const-string v2, "getAnnotationParameterDefaultValue(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/km/internal/ReadContext;->getStrings()Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/NameResolver;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/reflect/jvm/internal/impl/km/internal/ReadUtilsKt;->readAnnotationArgument(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Annotation$Argument$Value;Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/NameResolver;)Lkotlin/reflect/jvm/internal/impl/km/KmAnnotationArgument;

    move-result-object v1

    invoke-virtual {v0, v1}, Lkotlin/reflect/jvm/internal/impl/km/KmValueParameter;->setAnnotationParameterDefaultValue(Lkotlin/reflect/jvm/internal/impl/km/KmAnnotationArgument;)V

    .line 256
    :cond_4d
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/km/internal/ReadContext;->getExtensions$kotlin_metadata()Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    .line 521
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_57
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_67

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkotlin/reflect/jvm/internal/impl/km/internal/extensions/MetadataExtensions;

    .line 256
    invoke-interface {v2, v0, p0, p1}, Lkotlin/reflect/jvm/internal/impl/km/internal/extensions/MetadataExtensions;->readValueParameterExtensions(Lkotlin/reflect/jvm/internal/impl/km/KmValueParameter;Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$ValueParameter;Lkotlin/reflect/jvm/internal/impl/km/internal/ReadContext;)V

    goto :goto_57

    :cond_67
    return-object v0
.end method

.method private static final visitDeclarations(Lkotlin/reflect/jvm/internal/impl/km/KmDeclarationContainer;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lkotlin/reflect/jvm/internal/impl/km/internal/ReadContext;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/jvm/internal/impl/km/KmDeclarationContainer;",
            "Ljava/util/List<",
            "Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Function;",
            ">;",
            "Ljava/util/List<",
            "Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property;",
            ">;",
            "Ljava/util/List<",
            "Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$TypeAlias;",
            ">;",
            "Lkotlin/reflect/jvm/internal/impl/km/internal/ReadContext;",
            ")V"
        }
    .end annotation

    .line 165
    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p0}, Lkotlin/reflect/jvm/internal/impl/km/KmDeclarationContainer;->getFunctions()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    .line 468
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_c
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_20

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 469
    check-cast v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Function;

    .line 165
    invoke-static {v1, p4}, Lkotlin/reflect/jvm/internal/impl/km/internal/ReadersKt;->toKmFunction(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Function;Lkotlin/reflect/jvm/internal/impl/km/internal/ReadContext;)Lkotlin/reflect/jvm/internal/impl/km/KmFunction;

    move-result-object v1

    .line 469
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_c

    .line 166
    :cond_20
    check-cast p2, Ljava/lang/Iterable;

    invoke-interface {p0}, Lkotlin/reflect/jvm/internal/impl/km/KmDeclarationContainer;->getProperties()Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    .line 471
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_2c
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_40

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 472
    check-cast v0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property;

    .line 166
    invoke-static {v0, p4}, Lkotlin/reflect/jvm/internal/impl/km/internal/ReadersKt;->toKmProperty(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property;Lkotlin/reflect/jvm/internal/impl/km/internal/ReadContext;)Lkotlin/reflect/jvm/internal/impl/km/KmProperty;

    move-result-object v0

    .line 472
    invoke-interface {p1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2c

    .line 167
    :cond_40
    check-cast p3, Ljava/lang/Iterable;

    invoke-interface {p0}, Lkotlin/reflect/jvm/internal/impl/km/KmDeclarationContainer;->getTypeAliases()Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/util/Collection;

    .line 474
    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4c
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_60

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    .line 475
    check-cast p2, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$TypeAlias;

    .line 167
    invoke-static {p2, p4}, Lkotlin/reflect/jvm/internal/impl/km/internal/ReadersKt;->toKmTypeAlias(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$TypeAlias;Lkotlin/reflect/jvm/internal/impl/km/internal/ReadContext;)Lkotlin/reflect/jvm/internal/impl/km/KmTypeAlias;

    move-result-object p2

    .line 475
    invoke-interface {p0, p2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_4c

    :cond_60
    return-void
.end method

###### Class kotlin.reflect.jvm.internal.impl.km.internal.ReadersKt.WhenMappings (kotlin.reflect.jvm.internal.impl.km.internal.ReadersKt$WhenMappings)
.class public final synthetic Lkotlin/reflect/jvm/internal/impl/km/internal/ReadersKt$WhenMappings;
.super Ljava/lang/Object;
.source "Readers.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/km/internal/ReadersKt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1019
    name = "WhenMappings"
.end annotation


# static fields
.field public static final synthetic $EnumSwitchMapping$0:[I

.field public static final synthetic $EnumSwitchMapping$1:[I

.field public static final synthetic $EnumSwitchMapping$2:[I

.field public static final synthetic $EnumSwitchMapping$3:[I

.field public static final synthetic $EnumSwitchMapping$4:[I

.field public static final synthetic $EnumSwitchMapping$5:[I

.field public static final synthetic $EnumSwitchMapping$6:[I


# direct methods
.method static constructor <clinit>()V
    .registers 6

    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$TypeParameter$Variance;->values()[Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$TypeParameter$Variance;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    const/4 v1, 0x1

    :try_start_8
    sget-object v2, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$TypeParameter$Variance;->IN:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$TypeParameter$Variance;

    invoke-virtual {v2}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$TypeParameter$Variance;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_10} :catch_10

    :catch_10
    const/4 v2, 0x2

    :try_start_11
    sget-object v3, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$TypeParameter$Variance;->OUT:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$TypeParameter$Variance;

    invoke-virtual {v3}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$TypeParameter$Variance;->ordinal()I

    move-result v3

    aput v2, v0, v3
    :try_end_19
    .catch Ljava/lang/NoSuchFieldError; {:try_start_11 .. :try_end_19} :catch_19

    :catch_19
    const/4 v3, 0x3

    :try_start_1a
    sget-object v4, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$TypeParameter$Variance;->INV:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$TypeParameter$Variance;

    invoke-virtual {v4}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$TypeParameter$Variance;->ordinal()I

    move-result v4

    aput v3, v0, v4
    :try_end_22
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1a .. :try_end_22} :catch_22

    :catch_22
    sput-object v0, Lkotlin/reflect/jvm/internal/impl/km/internal/ReadersKt$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type$Argument$Projection;->values()[Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type$Argument$Projection;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_2b
    sget-object v4, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type$Argument$Projection;->IN:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type$Argument$Projection;

    invoke-virtual {v4}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type$Argument$Projection;->ordinal()I

    move-result v4

    aput v1, v0, v4
    :try_end_33
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2b .. :try_end_33} :catch_33

    :catch_33
    :try_start_33
    sget-object v4, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type$Argument$Projection;->OUT:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type$Argument$Projection;

    invoke-virtual {v4}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type$Argument$Projection;->ordinal()I

    move-result v4

    aput v2, v0, v4
    :try_end_3b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_33 .. :try_end_3b} :catch_3b

    :catch_3b
    :try_start_3b
    sget-object v4, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type$Argument$Projection;->INV:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type$Argument$Projection;

    invoke-virtual {v4}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type$Argument$Projection;->ordinal()I

    move-result v4

    aput v3, v0, v4
    :try_end_43
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3b .. :try_end_43} :catch_43

    :catch_43
    :try_start_43
    sget-object v4, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type$Argument$Projection;->STAR:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type$Argument$Projection;

    invoke-virtual {v4}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type$Argument$Projection;->ordinal()I

    move-result v4

    const/4 v5, 0x4

    aput v5, v0, v4
    :try_end_4c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_43 .. :try_end_4c} :catch_4c

    :catch_4c
    sput-object v0, Lkotlin/reflect/jvm/internal/impl/km/internal/ReadersKt$WhenMappings;->$EnumSwitchMapping$1:[I

    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$VersionRequirement$VersionKind;->values()[Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$VersionRequirement$VersionKind;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_55
    sget-object v4, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$VersionRequirement$VersionKind;->LANGUAGE_VERSION:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$VersionRequirement$VersionKind;

    invoke-virtual {v4}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$VersionRequirement$VersionKind;->ordinal()I

    move-result v4

    aput v1, v0, v4
    :try_end_5d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_55 .. :try_end_5d} :catch_5d

    :catch_5d
    :try_start_5d
    sget-object v4, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$VersionRequirement$VersionKind;->COMPILER_VERSION:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$VersionRequirement$VersionKind;

    invoke-virtual {v4}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$VersionRequirement$VersionKind;->ordinal()I

    move-result v4

    aput v2, v0, v4
    :try_end_65
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5d .. :try_end_65} :catch_65

    :catch_65
    :try_start_65
    sget-object v4, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$VersionRequirement$VersionKind;->API_VERSION:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$VersionRequirement$VersionKind;

    invoke-virtual {v4}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$VersionRequirement$VersionKind;->ordinal()I

    move-result v4

    aput v3, v0, v4
    :try_end_6d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_65 .. :try_end_6d} :catch_6d

    :catch_6d
    sput-object v0, Lkotlin/reflect/jvm/internal/impl/km/internal/ReadersKt$WhenMappings;->$EnumSwitchMapping$2:[I

    invoke-static {}, Lkotlin/DeprecationLevel;->values()[Lkotlin/DeprecationLevel;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_76
    sget-object v4, Lkotlin/DeprecationLevel;->WARNING:Lkotlin/DeprecationLevel;

    invoke-virtual {v4}, Lkotlin/DeprecationLevel;->ordinal()I

    move-result v4

    aput v1, v0, v4
    :try_end_7e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_76 .. :try_end_7e} :catch_7e

    :catch_7e
    :try_start_7e
    sget-object v4, Lkotlin/DeprecationLevel;->ERROR:Lkotlin/DeprecationLevel;

    invoke-virtual {v4}, Lkotlin/DeprecationLevel;->ordinal()I

    move-result v4

    aput v2, v0, v4
    :try_end_86
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7e .. :try_end_86} :catch_86

    :catch_86
    :try_start_86
    sget-object v4, Lkotlin/DeprecationLevel;->HIDDEN:Lkotlin/DeprecationLevel;

    invoke-virtual {v4}, Lkotlin/DeprecationLevel;->ordinal()I

    move-result v4

    aput v3, v0, v4
    :try_end_8e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_86 .. :try_end_8e} :catch_8e

    :catch_8e
    sput-object v0, Lkotlin/reflect/jvm/internal/impl/km/internal/ReadersKt$WhenMappings;->$EnumSwitchMapping$3:[I

    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Effect$EffectType;->values()[Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Effect$EffectType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_97
    sget-object v4, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Effect$EffectType;->RETURNS_CONSTANT:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Effect$EffectType;

    invoke-virtual {v4}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Effect$EffectType;->ordinal()I

    move-result v4

    aput v1, v0, v4
    :try_end_9f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_97 .. :try_end_9f} :catch_9f

    :catch_9f
    :try_start_9f
    sget-object v4, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Effect$EffectType;->CALLS:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Effect$EffectType;

    invoke-virtual {v4}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Effect$EffectType;->ordinal()I

    move-result v4

    aput v2, v0, v4
    :try_end_a7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9f .. :try_end_a7} :catch_a7

    :catch_a7
    :try_start_a7
    sget-object v4, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Effect$EffectType;->RETURNS_NOT_NULL:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Effect$EffectType;

    invoke-virtual {v4}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Effect$EffectType;->ordinal()I

    move-result v4

    aput v3, v0, v4
    :try_end_af
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a7 .. :try_end_af} :catch_af

    :catch_af
    sput-object v0, Lkotlin/reflect/jvm/internal/impl/km/internal/ReadersKt$WhenMappings;->$EnumSwitchMapping$4:[I

    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Effect$InvocationKind;->values()[Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Effect$InvocationKind;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_b8
    sget-object v4, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Effect$InvocationKind;->AT_MOST_ONCE:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Effect$InvocationKind;

    invoke-virtual {v4}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Effect$InvocationKind;->ordinal()I

    move-result v4

    aput v1, v0, v4
    :try_end_c0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b8 .. :try_end_c0} :catch_c0

    :catch_c0
    :try_start_c0
    sget-object v4, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Effect$InvocationKind;->EXACTLY_ONCE:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Effect$InvocationKind;

    invoke-virtual {v4}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Effect$InvocationKind;->ordinal()I

    move-result v4

    aput v2, v0, v4
    :try_end_c8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c0 .. :try_end_c8} :catch_c8

    :catch_c8
    :try_start_c8
    sget-object v4, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Effect$InvocationKind;->AT_LEAST_ONCE:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Effect$InvocationKind;

    invoke-virtual {v4}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Effect$InvocationKind;->ordinal()I

    move-result v4

    aput v3, v0, v4
    :try_end_d0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c8 .. :try_end_d0} :catch_d0

    :catch_d0
    sput-object v0, Lkotlin/reflect/jvm/internal/impl/km/internal/ReadersKt$WhenMappings;->$EnumSwitchMapping$5:[I

    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Expression$ConstantValue;->values()[Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Expression$ConstantValue;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_d9
    sget-object v4, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Expression$ConstantValue;->TRUE:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Expression$ConstantValue;

    invoke-virtual {v4}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Expression$ConstantValue;->ordinal()I

    move-result v4

    aput v1, v0, v4
    :try_end_e1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d9 .. :try_end_e1} :catch_e1

    :catch_e1
    :try_start_e1
    sget-object v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Expression$ConstantValue;->FALSE:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Expression$ConstantValue;

    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Expression$ConstantValue;->ordinal()I

    move-result v1

    aput v2, v0, v1
    :try_end_e9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e1 .. :try_end_e9} :catch_e9

    :catch_e9
    :try_start_e9
    sget-object v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Expression$ConstantValue;->NULL:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Expression$ConstantValue;

    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Expression$ConstantValue;->ordinal()I

    move-result v1

    aput v3, v0, v1
    :try_end_f1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e9 .. :try_end_f1} :catch_f1

    :catch_f1
    sput-object v0, Lkotlin/reflect/jvm/internal/impl/km/internal/ReadersKt$WhenMappings;->$EnumSwitchMapping$6:[I

    return-void
.end method
