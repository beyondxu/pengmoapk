###### Class kotlin.reflect.jvm.internal.impl.descriptors.DescriptorVisibilities (kotlin.reflect.jvm.internal.impl.descriptors.DescriptorVisibilities)
.class public Lkotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibilities;
.super Ljava/lang/Object;
.source "DescriptorVisibilities.java"


# static fields
.field public static final ALWAYS_SUITABLE_RECEIVER:Lkotlin/reflect/jvm/internal/impl/resolve/scopes/receivers/ReceiverValue;

.field public static final DEFAULT_VISIBILITY:Lkotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibility;

.field public static final FALSE_IF_PROTECTED:Lkotlin/reflect/jvm/internal/impl/resolve/scopes/receivers/ReceiverValue;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final INHERITED:Lkotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibility;

.field public static final INTERNAL:Lkotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibility;

.field public static final INVISIBLE_FAKE:Lkotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibility;

.field public static final INVISIBLE_FROM_OTHER_MODULES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibility;",
            ">;"
        }
    .end annotation
.end field

.field private static final IRRELEVANT_RECEIVER:Lkotlin/reflect/jvm/internal/impl/resolve/scopes/receivers/ReceiverValue;

.field public static final LOCAL:Lkotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibility;

.field private static final MODULE_VISIBILITY_HELPER:Lkotlin/reflect/jvm/internal/impl/util/ModuleVisibilityHelper;

.field private static final ORDERED_VISIBILITIES:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibility;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final PRIVATE:Lkotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibility;

.field public static final PRIVATE_TO_THIS:Lkotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibility;

.field public static final PROTECTED:Lkotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibility;

.field public static final PUBLIC:Lkotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibility;

.field public static final UNKNOWN:Lkotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibility;

.field private static final visibilitiesMapping:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/Visibility;",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibility;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private static synthetic $$$reportNull$$$0(I)V
    .registers 9

    const/16 v0, 0x10

    if-eq p0, v0, :cond_7

    const-string v1, "Argument for @NotNull parameter \'%s\' of %s.%s must not be null"

    goto :goto_9

    :cond_7
    const-string v1, "@NotNull method %s.%s must not return null"

    :goto_9
    const/4 v2, 0x3

    const/4 v3, 0x2

    if-eq p0, v0, :cond_f

    const/4 v4, 0x3

    goto :goto_10

    :cond_f
    const/4 v4, 0x2

    :goto_10
    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "kotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibilities"

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eq p0, v6, :cond_3a

    if-eq p0, v2, :cond_3a

    const/4 v2, 0x5

    if-eq p0, v2, :cond_3a

    const/4 v2, 0x7

    if-eq p0, v2, :cond_3a

    packed-switch p0, :pswitch_data_86

    const-string v2, "what"

    aput-object v2, v4, v7

    goto :goto_3e

    :pswitch_28
    aput-object v5, v4, v7

    goto :goto_3e

    :pswitch_2b
    const-string v2, "visibility"

    aput-object v2, v4, v7

    goto :goto_3e

    :pswitch_30
    const-string v2, "second"

    aput-object v2, v4, v7

    goto :goto_3e

    :pswitch_35
    const-string v2, "first"

    aput-object v2, v4, v7

    goto :goto_3e

    :cond_3a
    :pswitch_3a
    const-string v2, "from"

    aput-object v2, v4, v7

    :goto_3e
    const-string v2, "toDescriptorVisibility"

    if-eq p0, v0, :cond_45

    aput-object v5, v4, v6

    goto :goto_47

    :cond_45
    aput-object v2, v4, v6

    :goto_47
    packed-switch p0, :pswitch_data_9a

    const-string v2, "isVisible"

    aput-object v2, v4, v3

    goto :goto_74

    :pswitch_4f
    aput-object v2, v4, v3

    goto :goto_74

    :pswitch_52
    const-string v2, "isPrivate"

    aput-object v2, v4, v3

    goto :goto_74

    :pswitch_57
    const-string v2, "compare"

    aput-object v2, v4, v3

    goto :goto_74

    :pswitch_5c
    const-string v2, "compareLocal"

    aput-object v2, v4, v3

    goto :goto_74

    :pswitch_61
    const-string v2, "findInvisibleMember"

    aput-object v2, v4, v3

    goto :goto_74

    :pswitch_66
    const-string v2, "inSameFile"

    aput-object v2, v4, v3

    goto :goto_74

    :pswitch_6b
    const-string v2, "isVisibleWithAnyReceiver"

    aput-object v2, v4, v3

    goto :goto_74

    :pswitch_70
    const-string v2, "isVisibleIgnoringReceiver"

    aput-object v2, v4, v3

    :goto_74
    :pswitch_74
    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    if-eq p0, v0, :cond_80

    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_85

    :cond_80
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    :goto_85
    throw p0

    :pswitch_data_86
    .packed-switch 0x9
        :pswitch_3a
        :pswitch_35
        :pswitch_30
        :pswitch_35
        :pswitch_30
        :pswitch_2b
        :pswitch_2b
        :pswitch_28
    .end packed-switch

    :pswitch_data_9a
    .packed-switch 0x2
        :pswitch_70
        :pswitch_70
        :pswitch_6b
        :pswitch_6b
        :pswitch_66
        :pswitch_66
        :pswitch_61
        :pswitch_61
        :pswitch_5c
        :pswitch_5c
        :pswitch_57
        :pswitch_57
        :pswitch_52
        :pswitch_4f
        :pswitch_74
    .end packed-switch
.end method

.method static constructor <clinit>()V
    .registers 15

    .line 36
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibilities$1;

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/descriptors/Visibilities$Private;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/descriptors/Visibilities$Private;

    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibilities$1;-><init>(Lkotlin/reflect/jvm/internal/impl/descriptors/Visibility;)V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibilities;->PRIVATE:Lkotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibility;

    .line 106
    new-instance v1, Lkotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibilities$2;

    sget-object v2, Lkotlin/reflect/jvm/internal/impl/descriptors/Visibilities$PrivateToThis;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/descriptors/Visibilities$PrivateToThis;

    invoke-direct {v1, v2}, Lkotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibilities$2;-><init>(Lkotlin/reflect/jvm/internal/impl/descriptors/Visibility;)V

    sput-object v1, Lkotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibilities;->PRIVATE_TO_THIS:Lkotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibility;

    .line 130
    new-instance v2, Lkotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibilities$3;

    sget-object v3, Lkotlin/reflect/jvm/internal/impl/descriptors/Visibilities$Protected;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/descriptors/Visibilities$Protected;

    invoke-direct {v2, v3}, Lkotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibilities$3;-><init>(Lkotlin/reflect/jvm/internal/impl/descriptors/Visibility;)V

    sput-object v2, Lkotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibilities;->PROTECTED:Lkotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibility;

    .line 192
    new-instance v3, Lkotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibilities$4;

    sget-object v4, Lkotlin/reflect/jvm/internal/impl/descriptors/Visibilities$Internal;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/descriptors/Visibilities$Internal;

    invoke-direct {v3, v4}, Lkotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibilities$4;-><init>(Lkotlin/reflect/jvm/internal/impl/descriptors/Visibility;)V

    sput-object v3, Lkotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibilities;->INTERNAL:Lkotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibility;

    .line 214
    new-instance v4, Lkotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibilities$5;

    sget-object v5, Lkotlin/reflect/jvm/internal/impl/descriptors/Visibilities$Public;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/descriptors/Visibilities$Public;

    invoke-direct {v4, v5}, Lkotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibilities$5;-><init>(Lkotlin/reflect/jvm/internal/impl/descriptors/Visibility;)V

    sput-object v4, Lkotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibilities;->PUBLIC:Lkotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibility;

    .line 227
    new-instance v5, Lkotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibilities$6;

    sget-object v6, Lkotlin/reflect/jvm/internal/impl/descriptors/Visibilities$Local;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/descriptors/Visibilities$Local;

    invoke-direct {v5, v6}, Lkotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibilities$6;-><init>(Lkotlin/reflect/jvm/internal/impl/descriptors/Visibility;)V

    sput-object v5, Lkotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibilities;->LOCAL:Lkotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibility;

    .line 240
    new-instance v6, Lkotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibilities$7;

    sget-object v7, Lkotlin/reflect/jvm/internal/impl/descriptors/Visibilities$Inherited;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/descriptors/Visibilities$Inherited;

    invoke-direct {v6, v7}, Lkotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibilities$7;-><init>(Lkotlin/reflect/jvm/internal/impl/descriptors/Visibility;)V

    sput-object v6, Lkotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibilities;->INHERITED:Lkotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibility;

    .line 254
    new-instance v7, Lkotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibilities$8;

    sget-object v8, Lkotlin/reflect/jvm/internal/impl/descriptors/Visibilities$InvisibleFake;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/descriptors/Visibilities$InvisibleFake;

    invoke-direct {v7, v8}, Lkotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibilities$8;-><init>(Lkotlin/reflect/jvm/internal/impl/descriptors/Visibility;)V

    sput-object v7, Lkotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibilities;->INVISIBLE_FAKE:Lkotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibility;

    .line 269
    new-instance v8, Lkotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibilities$9;

    sget-object v9, Lkotlin/reflect/jvm/internal/impl/descriptors/Visibilities$Unknown;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/descriptors/Visibilities$Unknown;

    invoke-direct {v8, v9}, Lkotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibilities$9;-><init>(Lkotlin/reflect/jvm/internal/impl/descriptors/Visibility;)V

    sput-object v8, Lkotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibilities;->UNKNOWN:Lkotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibility;

    const/4 v9, 0x4

    .line 279
    new-array v10, v9, [Lkotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibility;

    const/4 v11, 0x0

    .line 360
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    .line 279
    aput-object v0, v10, v11

    const/4 v11, 0x1

    .line 362
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    .line 279
    aput-object v1, v10, v11

    const/4 v11, 0x2

    aput-object v3, v10, v11

    const/4 v14, 0x3

    aput-object v5, v10, v14

    .line 280
    invoke-static {v10}, Lkotlin/collections/SetsKt;->setOf([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v10

    invoke-static {v10}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v10

    sput-object v10, Lkotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibilities;->INVISIBLE_FROM_OTHER_MODULES:Ljava/util/Set;

    .line 359
    invoke-static {v9}, Lkotlin/reflect/jvm/internal/impl/utils/CollectionsKt;->newHashMapWithExpectedSize(I)Ljava/util/HashMap;

    move-result-object v9

    .line 360
    invoke-interface {v9, v1, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 361
    invoke-interface {v9, v0, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 362
    invoke-interface {v9, v3, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 363
    invoke-interface {v9, v2, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 364
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v9, v4, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 365
    invoke-static {v9}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v9

    sput-object v9, Lkotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibilities;->ORDERED_VISIBILITIES:Ljava/util/Map;

    .line 393
    sput-object v4, Lkotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibilities;->DEFAULT_VISIBILITY:Lkotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibility;

    .line 399
    new-instance v9, Lkotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibilities$10;

    invoke-direct {v9}, Lkotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibilities$10;-><init>()V

    sput-object v9, Lkotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibilities;->IRRELEVANT_RECEIVER:Lkotlin/reflect/jvm/internal/impl/resolve/scopes/receivers/ReceiverValue;

    .line 423
    new-instance v9, Lkotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibilities$11;

    invoke-direct {v9}, Lkotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibilities$11;-><init>()V

    sput-object v9, Lkotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibilities;->ALWAYS_SUITABLE_RECEIVER:Lkotlin/reflect/jvm/internal/impl/resolve/scopes/receivers/ReceiverValue;

    .line 445
    new-instance v9, Lkotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibilities$12;

    invoke-direct {v9}, Lkotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibilities$12;-><init>()V

    sput-object v9, Lkotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibilities;->FALSE_IF_PROTECTED:Lkotlin/reflect/jvm/internal/impl/resolve/scopes/receivers/ReceiverValue;

    .line 473
    const-class v9, Lkotlin/reflect/jvm/internal/impl/util/ModuleVisibilityHelper;

    const-class v10, Lkotlin/reflect/jvm/internal/impl/util/ModuleVisibilityHelper;

    invoke-virtual {v10}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v10

    invoke-static {v9, v10}, Ljava/util/ServiceLoader;->load(Ljava/lang/Class;Ljava/lang/ClassLoader;)Ljava/util/ServiceLoader;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/ServiceLoader;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .line 474
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_c3

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lkotlin/reflect/jvm/internal/impl/util/ModuleVisibilityHelper;

    goto :goto_c5

    :cond_c3
    sget-object v9, Lkotlin/reflect/jvm/internal/impl/util/ModuleVisibilityHelper$EMPTY;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/util/ModuleVisibilityHelper$EMPTY;

    :goto_c5
    sput-object v9, Lkotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibilities;->MODULE_VISIBILITY_HELPER:Lkotlin/reflect/jvm/internal/impl/util/ModuleVisibilityHelper;

    .line 478
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    sput-object v9, Lkotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibilities;->visibilitiesMapping:Ljava/util/Map;

    .line 485
    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibilities;->recordVisibilityMapping(Lkotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibility;)V

    .line 486
    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibilities;->recordVisibilityMapping(Lkotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibility;)V

    .line 487
    invoke-static {v2}, Lkotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibilities;->recordVisibilityMapping(Lkotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibility;)V

    .line 488
    invoke-static {v3}, Lkotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibilities;->recordVisibilityMapping(Lkotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibility;)V

    .line 489
    invoke-static {v4}, Lkotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibilities;->recordVisibilityMapping(Lkotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibility;)V

    .line 490
    invoke-static {v5}, Lkotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibilities;->recordVisibilityMapping(Lkotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibility;)V

    .line 491
    invoke-static {v6}, Lkotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibilities;->recordVisibilityMapping(Lkotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibility;)V

    .line 492
    invoke-static {v7}, Lkotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibilities;->recordVisibilityMapping(Lkotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibility;)V

    .line 493
    invoke-static {v8}, Lkotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibilities;->recordVisibilityMapping(Lkotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibility;)V

    return-void
.end method

.method static synthetic access$000()Lkotlin/reflect/jvm/internal/impl/resolve/scopes/receivers/ReceiverValue;
    .registers 1

    .line 34
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibilities;->IRRELEVANT_RECEIVER:Lkotlin/reflect/jvm/internal/impl/resolve/scopes/receivers/ReceiverValue;

    return-object v0
.end method

.method static synthetic access$100()Lkotlin/reflect/jvm/internal/impl/util/ModuleVisibilityHelper;
    .registers 1

    .line 34
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibilities;->MODULE_VISIBILITY_HELPER:Lkotlin/reflect/jvm/internal/impl/util/ModuleVisibilityHelper;

    return-object v0
.end method

.method public static compare(Lkotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibility;Lkotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibility;)Ljava/lang/Integer;
    .registers 3

    if-nez p0, :cond_7

    const/16 v0, 0xc

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibilities;->$$$reportNull$$$0(I)V

    :cond_7
    if-nez p1, :cond_e

    const/16 v0, 0xd

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibilities;->$$$reportNull$$$0(I)V

    .line 382
    :cond_e
    invoke-virtual {p0, p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibility;->compareTo(Lkotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibility;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_15

    return-object v0

    .line 386
    :cond_15
    invoke-virtual {p1, p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibility;->compareTo(Lkotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibility;)Ljava/lang/Integer;

    move-result-object p0

    if-eqz p0, :cond_25

    .line 388
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    neg-int p0, p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_25
    const/4 p0, 0x0

    return-object p0
.end method

.method public static findInvisibleMember(Lkotlin/reflect/jvm/internal/impl/resolve/scopes/receivers/ReceiverValue;Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptorWithVisibility;Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;Z)Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptorWithVisibility;
    .registers 7

    if-nez p1, :cond_7

    const/16 v0, 0x8

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibilities;->$$$reportNull$$$0(I)V

    :cond_7
    if-nez p2, :cond_e

    const/16 v0, 0x9

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibilities;->$$$reportNull$$$0(I)V

    .line 334
    :cond_e
    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptorWithVisibility;->getOriginal()Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;

    move-result-object v0

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptorWithVisibility;

    :goto_14
    if-eqz v0, :cond_32

    .line 335
    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptorWithVisibility;->getVisibility()Lkotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibility;

    move-result-object v1

    sget-object v2, Lkotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibilities;->LOCAL:Lkotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibility;

    if-eq v1, v2, :cond_32

    .line 336
    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptorWithVisibility;->getVisibility()Lkotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibility;

    move-result-object v1

    invoke-virtual {v1, p0, v0, p2, p3}, Lkotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibility;->isVisible(Lkotlin/reflect/jvm/internal/impl/resolve/scopes/receivers/ReceiverValue;Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptorWithVisibility;Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;Z)Z

    move-result v1

    if-nez v1, :cond_29

    return-object v0

    .line 339
    :cond_29
    const-class v1, Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptorWithVisibility;

    invoke-static {v0, v1}, Lkotlin/reflect/jvm/internal/impl/resolve/DescriptorUtils;->getParentOfType(Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;Ljava/lang/Class;)Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;

    move-result-object v0

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptorWithVisibility;

    goto :goto_14

    .line 342
    :cond_32
    instance-of v0, p1, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/TypeAliasConstructorDescriptor;

    if-eqz v0, :cond_43

    .line 343
    check-cast p1, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/TypeAliasConstructorDescriptor;

    .line 346
    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/TypeAliasConstructorDescriptor;->getUnderlyingConstructorDescriptor()Lkotlin/reflect/jvm/internal/impl/descriptors/ClassConstructorDescriptor;

    move-result-object p1

    .line 344
    invoke-static {p0, p1, p2, p3}, Lkotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibilities;->findInvisibleMember(Lkotlin/reflect/jvm/internal/impl/resolve/scopes/receivers/ReceiverValue;Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptorWithVisibility;Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;Z)Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptorWithVisibility;

    move-result-object p0

    if-eqz p0, :cond_43

    return-object p0

    :cond_43
    const/4 p0, 0x0

    return-object p0
.end method

.method public static inSameFile(Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;)Z
    .registers 3

    if-nez p0, :cond_6

    const/4 v0, 0x6

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibilities;->$$$reportNull$$$0(I)V

    :cond_6
    if-nez p1, :cond_c

    const/4 v0, 0x7

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibilities;->$$$reportNull$$$0(I)V

    .line 320
    :cond_c
    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/resolve/DescriptorUtils;->getContainingSourceFile(Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;)Lkotlin/reflect/jvm/internal/impl/descriptors/SourceFile;

    move-result-object p1

    .line 321
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/descriptors/SourceFile;->NO_SOURCE_FILE:Lkotlin/reflect/jvm/internal/impl/descriptors/SourceFile;

    if-eq p1, v0, :cond_1d

    .line 322
    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/resolve/DescriptorUtils;->getContainingSourceFile(Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;)Lkotlin/reflect/jvm/internal/impl/descriptors/SourceFile;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_1d
    const/4 p0, 0x0

    return p0
.end method

.method public static isPrivate(Lkotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibility;)Z
    .registers 2

    if-nez p0, :cond_7

    const/16 v0, 0xe

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibilities;->$$$reportNull$$$0(I)V

    .line 466
    :cond_7
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibilities;->PRIVATE:Lkotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibility;

    if-eq p0, v0, :cond_12

    sget-object v0, Lkotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibilities;->PRIVATE_TO_THIS:Lkotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibility;

    if-ne p0, v0, :cond_10

    goto :goto_12

    :cond_10
    const/4 p0, 0x0

    return p0

    :cond_12
    :goto_12
    const/4 p0, 0x1

    return p0
.end method

.method public static isVisibleIgnoringReceiver(Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptorWithVisibility;Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;Z)Z
    .registers 4

    if-nez p0, :cond_6

    const/4 v0, 0x2

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibilities;->$$$reportNull$$$0(I)V

    :cond_6
    if-nez p1, :cond_c

    const/4 v0, 0x3

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibilities;->$$$reportNull$$$0(I)V

    .line 302
    :cond_c
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibilities;->ALWAYS_SUITABLE_RECEIVER:Lkotlin/reflect/jvm/internal/impl/resolve/scopes/receivers/ReceiverValue;

    invoke-static {v0, p0, p1, p2}, Lkotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibilities;->findInvisibleMember(Lkotlin/reflect/jvm/internal/impl/resolve/scopes/receivers/ReceiverValue;Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptorWithVisibility;Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;Z)Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptorWithVisibility;

    move-result-object p0

    if-nez p0, :cond_16

    const/4 p0, 0x1

    return p0

    :cond_16
    const/4 p0, 0x0

    return p0
.end method

.method private static recordVisibilityMapping(Lkotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibility;)V
    .registers 3

    .line 481
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibilities;->visibilitiesMapping:Ljava/util/Map;

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibility;->getDelegate()Lkotlin/reflect/jvm/internal/impl/descriptors/Visibility;

    move-result-object v1

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static toDescriptorVisibility(Lkotlin/reflect/jvm/internal/impl/descriptors/Visibility;)Lkotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibility;
    .registers 4

    if-nez p0, :cond_7

    const/16 v0, 0xf

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibilities;->$$$reportNull$$$0(I)V

    .line 498
    :cond_7
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibilities;->visibilitiesMapping:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibility;

    if-eqz v0, :cond_19

    if-nez v0, :cond_18

    const/16 p0, 0x10

    .line 502
    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibilities;->$$$reportNull$$$0(I)V

    :cond_18
    return-object v0

    .line 500
    :cond_19
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Inapplicable visibility: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

###### Class kotlin.reflect.jvm.internal.impl.descriptors.DescriptorVisibilities.AnonymousClass1 (kotlin.reflect.jvm.internal.impl.descriptors.DescriptorVisibilities$1)
.class final Lkotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibilities$1;
.super Lkotlin/reflect/jvm/internal/impl/descriptors/DelegatedDescriptorVisibility;
.source "DescriptorVisibilities.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibilities;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method private static synthetic $$$reportNull$$$0(I)V
    .registers 6

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq p0, v3, :cond_14

    if-eq p0, v2, :cond_f

    const-string v4, "descriptor"

    aput-object v4, v0, v1

    goto :goto_18

    :cond_f
    const-string v4, "from"

    aput-object v4, v0, v1

    goto :goto_18

    :cond_14
    const-string v4, "what"

    aput-object v4, v0, v1

    :goto_18
    const-string v1, "kotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibilities$1"

    aput-object v1, v0, v3

    if-eq p0, v3, :cond_25

    if-eq p0, v2, :cond_25

    const-string p0, "hasContainingSourceFile"

    aput-object p0, v0, v2

    goto :goto_29

    :cond_25
    const-string p0, "isVisible"

    aput-object p0, v0, v2

    :goto_29
    const-string p0, "Argument for @NotNull parameter \'%s\' of %s.%s must not be null"

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method constructor <init>(Lkotlin/reflect/jvm/internal/impl/descriptors/Visibility;)V
    .registers 2

    .line 36
    invoke-direct {p0, p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/DelegatedDescriptorVisibility;-><init>(Lkotlin/reflect/jvm/internal/impl/descriptors/Visibility;)V

    return-void
.end method

.method private hasContainingSourceFile(Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;)Z
    .registers 4

    const/4 v0, 0x0

    if-nez p1, :cond_6

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibilities$1;->$$$reportNull$$$0(I)V

    .line 38
    :cond_6
    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/resolve/DescriptorUtils;->getContainingSourceFile(Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;)Lkotlin/reflect/jvm/internal/impl/descriptors/SourceFile;

    move-result-object p1

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/descriptors/SourceFile;->NO_SOURCE_FILE:Lkotlin/reflect/jvm/internal/impl/descriptors/SourceFile;

    if-eq p1, v1, :cond_10

    const/4 p1, 0x1

    return p1

    :cond_10
    return v0
.end method


# virtual methods
.method public isVisible(Lkotlin/reflect/jvm/internal/impl/resolve/scopes/receivers/ReceiverValue;Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptorWithVisibility;Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;Z)Z
    .registers 7

    const/4 p1, 0x1

    if-nez p2, :cond_6

    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibilities$1;->$$$reportNull$$$0(I)V

    :cond_6
    if-nez p3, :cond_c

    const/4 v0, 0x2

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibilities$1;->$$$reportNull$$$0(I)V

    .line 48
    :cond_c
    invoke-static {p2}, Lkotlin/reflect/jvm/internal/impl/resolve/DescriptorUtils;->isTopLevelDeclaration(Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;)Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-direct {p0, p3}, Lkotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibilities$1;->hasContainingSourceFile(Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 49
    invoke-static {p2, p3}, Lkotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibilities;->inSameFile(Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;)Z

    move-result p1

    return p1

    .line 52
    :cond_1d
    instance-of v0, p2, Lkotlin/reflect/jvm/internal/impl/descriptors/ConstructorDescriptor;

    if-eqz v0, :cond_4b

    .line 53
    move-object v0, p2

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/descriptors/ConstructorDescriptor;

    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/ConstructorDescriptor;->getContainingDeclaration()Lkotlin/reflect/jvm/internal/impl/descriptors/ClassifierDescriptorWithTypeParameters;

    move-result-object v0

    if-eqz p4, :cond_4b

    .line 55
    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/resolve/DescriptorUtils;->isSealedClass(Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;)Z

    move-result p4

    if-eqz p4, :cond_4b

    .line 56
    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/resolve/DescriptorUtils;->isTopLevelDeclaration(Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;)Z

    move-result p4

    if-eqz p4, :cond_4b

    instance-of p4, p3, Lkotlin/reflect/jvm/internal/impl/descriptors/ConstructorDescriptor;

    if-eqz p4, :cond_4b

    .line 58
    invoke-interface {p3}, Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;->getContainingDeclaration()Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;

    move-result-object p4

    invoke-static {p4}, Lkotlin/reflect/jvm/internal/impl/resolve/DescriptorUtils;->isTopLevelDeclaration(Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;)Z

    move-result p4

    if-eqz p4, :cond_4b

    .line 59
    invoke-static {p2, p3}, Lkotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibilities;->inSameFile(Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;)Z

    move-result p4

    if-eqz p4, :cond_4b

    return p1

    :cond_4b
    if-eqz p2, :cond_5f

    .line 66
    invoke-interface {p2}, Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;->getContainingDeclaration()Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;

    move-result-object p2

    .line 67
    instance-of p4, p2, Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;

    if-eqz p4, :cond_5b

    invoke-static {p2}, Lkotlin/reflect/jvm/internal/impl/resolve/DescriptorUtils;->isCompanionObject(Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;)Z

    move-result p4

    if-eqz p4, :cond_5f

    :cond_5b
    instance-of p4, p2, Lkotlin/reflect/jvm/internal/impl/descriptors/PackageFragmentDescriptor;

    if-eqz p4, :cond_4b

    :cond_5f
    const/4 p4, 0x0

    if-nez p2, :cond_63

    return p4

    :cond_63
    :goto_63
    if-eqz p3, :cond_91

    if-ne p2, p3, :cond_68

    return p1

    .line 80
    :cond_68
    instance-of v0, p3, Lkotlin/reflect/jvm/internal/impl/descriptors/PackageFragmentDescriptor;

    if-eqz v0, :cond_8c

    .line 81
    instance-of v0, p2, Lkotlin/reflect/jvm/internal/impl/descriptors/PackageFragmentDescriptor;

    if-eqz v0, :cond_8b

    move-object v0, p2

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/descriptors/PackageFragmentDescriptor;

    .line 82
    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/PackageFragmentDescriptor;->getFqName()Lkotlin/reflect/jvm/internal/impl/name/FqName;

    move-result-object v0

    move-object v1, p3

    check-cast v1, Lkotlin/reflect/jvm/internal/impl/descriptors/PackageFragmentDescriptor;

    invoke-interface {v1}, Lkotlin/reflect/jvm/internal/impl/descriptors/PackageFragmentDescriptor;->getFqName()Lkotlin/reflect/jvm/internal/impl/name/FqName;

    move-result-object v1

    invoke-virtual {v0, v1}, Lkotlin/reflect/jvm/internal/impl/name/FqName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8b

    .line 83
    invoke-static {p3, p2}, Lkotlin/reflect/jvm/internal/impl/resolve/DescriptorUtils;->areInSameModule(Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;)Z

    move-result p2

    if-eqz p2, :cond_8b

    return p1

    :cond_8b
    return p4

    .line 85
    :cond_8c
    invoke-interface {p3}, Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;->getContainingDeclaration()Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;

    move-result-object p3

    goto :goto_63

    :cond_91
    return p4
.end method

###### Class kotlin.reflect.jvm.internal.impl.descriptors.DescriptorVisibilities.AnonymousClass10 (kotlin.reflect.jvm.internal.impl.descriptors.DescriptorVisibilities$10)
.class final Lkotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibilities$10;
.super Ljava/lang/Object;
.source "DescriptorVisibilities.java"

# interfaces
.implements Lkotlin/reflect/jvm/internal/impl/resolve/scopes/receivers/ReceiverValue;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibilities;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 399
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getType()Lkotlin/reflect/jvm/internal/impl/types/KotlinType;
    .registers 3

    .line 403
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This method should not be called"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

###### Class kotlin.reflect.jvm.internal.impl.descriptors.DescriptorVisibilities.AnonymousClass11 (kotlin.reflect.jvm.internal.impl.descriptors.DescriptorVisibilities$11)
.class final Lkotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibilities$11;
.super Ljava/lang/Object;
.source "DescriptorVisibilities.java"

# interfaces
.implements Lkotlin/reflect/jvm/internal/impl/resolve/scopes/receivers/ReceiverValue;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibilities;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 423
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getType()Lkotlin/reflect/jvm/internal/impl/types/KotlinType;
    .registers 3

    .line 427
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This method should not be called"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

###### Class kotlin.reflect.jvm.internal.impl.descriptors.DescriptorVisibilities.AnonymousClass12 (kotlin.reflect.jvm.internal.impl.descriptors.DescriptorVisibilities$12)
.class final Lkotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibilities$12;
.super Ljava/lang/Object;
.source "DescriptorVisibilities.java"

# interfaces
.implements Lkotlin/reflect/jvm/internal/impl/resolve/scopes/receivers/ReceiverValue;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibilities;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 445
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getType()Lkotlin/reflect/jvm/internal/impl/types/KotlinType;
    .registers 3

    .line 449
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This method should not be called"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

###### Class kotlin.reflect.jvm.internal.impl.descriptors.DescriptorVisibilities.AnonymousClass2 (kotlin.reflect.jvm.internal.impl.descriptors.DescriptorVisibilities$2)
.class final Lkotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibilities$2;
.super Lkotlin/reflect/jvm/internal/impl/descriptors/DelegatedDescriptorVisibility;
.source "DescriptorVisibilities.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibilities;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method private static synthetic $$$reportNull$$$0(I)V
    .registers 4

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq p0, v2, :cond_c

    const-string p0, "what"

    aput-object p0, v0, v1

    goto :goto_10

    :cond_c
    const-string p0, "from"

    aput-object p0, v0, v1

    :goto_10
    const-string p0, "kotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibilities$2"

    aput-object p0, v0, v2

    const/4 p0, 0x2

    const-string v1, "isVisible"

    aput-object v1, v0, p0

    const-string p0, "Argument for @NotNull parameter \'%s\' of %s.%s must not be null"

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method constructor <init>(Lkotlin/reflect/jvm/internal/impl/descriptors/Visibility;)V
    .registers 2

    .line 106
    invoke-direct {p0, p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/DelegatedDescriptorVisibility;-><init>(Lkotlin/reflect/jvm/internal/impl/descriptors/Visibility;)V

    return-void
.end method


# virtual methods
.method public isVisible(Lkotlin/reflect/jvm/internal/impl/resolve/scopes/receivers/ReceiverValue;Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptorWithVisibility;Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;Z)Z
    .registers 8

    const/4 v0, 0x0

    if-nez p2, :cond_6

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibilities$2;->$$$reportNull$$$0(I)V

    :cond_6
    const/4 v1, 0x1

    if-nez p3, :cond_c

    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibilities$2;->$$$reportNull$$$0(I)V

    .line 114
    :cond_c
    sget-object v2, Lkotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibilities;->PRIVATE:Lkotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibility;

    invoke-virtual {v2, p1, p2, p3, p4}, Lkotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibility;->isVisible(Lkotlin/reflect/jvm/internal/impl/resolve/scopes/receivers/ReceiverValue;Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptorWithVisibility;Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;Z)Z

    move-result p3

    if-eqz p3, :cond_3f

    .line 116
    sget-object p3, Lkotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibilities;->ALWAYS_SUITABLE_RECEIVER:Lkotlin/reflect/jvm/internal/impl/resolve/scopes/receivers/ReceiverValue;

    if-ne p1, p3, :cond_19

    return v1

    .line 117
    :cond_19
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibilities;->access$000()Lkotlin/reflect/jvm/internal/impl/resolve/scopes/receivers/ReceiverValue;

    move-result-object p3

    if-ne p1, p3, :cond_20

    return v0

    .line 119
    :cond_20
    const-class p3, Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;

    invoke-static {p2, p3}, Lkotlin/reflect/jvm/internal/impl/resolve/DescriptorUtils;->getParentOfType(Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;Ljava/lang/Class;)Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;

    move-result-object p2

    if-eqz p2, :cond_3f

    .line 121
    instance-of p3, p1, Lkotlin/reflect/jvm/internal/impl/resolve/scopes/receivers/ThisClassReceiver;

    if-eqz p3, :cond_3f

    .line 122
    check-cast p1, Lkotlin/reflect/jvm/internal/impl/resolve/scopes/receivers/ThisClassReceiver;

    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/resolve/scopes/receivers/ThisClassReceiver;->getClassDescriptor()Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;

    move-result-object p1

    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;->getOriginal()Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;

    move-result-object p1

    invoke-interface {p2}, Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;->getOriginal()Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_3f
    return v0
.end method

###### Class kotlin.reflect.jvm.internal.impl.descriptors.DescriptorVisibilities.AnonymousClass3 (kotlin.reflect.jvm.internal.impl.descriptors.DescriptorVisibilities$3)
.class final Lkotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibilities$3;
.super Lkotlin/reflect/jvm/internal/impl/descriptors/DelegatedDescriptorVisibility;
.source "DescriptorVisibilities.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibilities;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method private static synthetic $$$reportNull$$$0(I)V
    .registers 7

    const/4 v0, 0x3

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eq p0, v4, :cond_1b

    if-eq p0, v3, :cond_16

    if-eq p0, v0, :cond_11

    const-string v5, "what"

    aput-object v5, v1, v2

    goto :goto_1f

    :cond_11
    const-string v5, "fromClass"

    aput-object v5, v1, v2

    goto :goto_1f

    :cond_16
    const-string v5, "whatDeclaration"

    aput-object v5, v1, v2

    goto :goto_1f

    :cond_1b
    const-string v5, "from"

    aput-object v5, v1, v2

    :goto_1f
    const-string v2, "kotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibilities$3"

    aput-object v2, v1, v4

    if-eq p0, v3, :cond_2c

    if-eq p0, v0, :cond_2c

    const-string p0, "isVisible"

    aput-object p0, v1, v3

    goto :goto_30

    :cond_2c
    const-string p0, "doesReceiverFitForProtectedVisibility"

    aput-object p0, v1, v3

    :goto_30
    const-string p0, "Argument for @NotNull parameter \'%s\' of %s.%s must not be null"

    invoke-static {p0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method constructor <init>(Lkotlin/reflect/jvm/internal/impl/descriptors/Visibility;)V
    .registers 2

    .line 130
    invoke-direct {p0, p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/DelegatedDescriptorVisibility;-><init>(Lkotlin/reflect/jvm/internal/impl/descriptors/Visibility;)V

    return-void
.end method

.method private doesReceiverFitForProtectedVisibility(Lkotlin/reflect/jvm/internal/impl/resolve/scopes/receivers/ReceiverValue;Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptorWithVisibility;Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;)Z
    .registers 7

    if-nez p2, :cond_6

    const/4 v0, 0x2

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibilities$3;->$$$reportNull$$$0(I)V

    :cond_6
    if-nez p3, :cond_c

    const/4 v0, 0x3

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibilities$3;->$$$reportNull$$$0(I)V

    .line 172
    :cond_c
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibilities;->FALSE_IF_PROTECTED:Lkotlin/reflect/jvm/internal/impl/resolve/scopes/receivers/ReceiverValue;

    const/4 v1, 0x0

    if-ne p1, v0, :cond_12

    return v1

    .line 175
    :cond_12
    instance-of v0, p2, Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;

    const/4 v2, 0x1

    if-nez v0, :cond_18

    return v2

    .line 177
    :cond_18
    instance-of p2, p2, Lkotlin/reflect/jvm/internal/impl/descriptors/ConstructorDescriptor;

    if-eqz p2, :cond_1d

    return v2

    .line 180
    :cond_1d
    sget-object p2, Lkotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibilities;->ALWAYS_SUITABLE_RECEIVER:Lkotlin/reflect/jvm/internal/impl/resolve/scopes/receivers/ReceiverValue;

    if-ne p1, p2, :cond_22

    return v2

    .line 181
    :cond_22
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibilities;->access$000()Lkotlin/reflect/jvm/internal/impl/resolve/scopes/receivers/ReceiverValue;

    move-result-object p2

    if-eq p1, p2, :cond_49

    if-nez p1, :cond_2b

    goto :goto_49

    .line 183
    :cond_2b
    instance-of p2, p1, Lkotlin/reflect/jvm/internal/impl/resolve/scopes/receivers/SuperCallReceiverValue;

    if-eqz p2, :cond_36

    check-cast p1, Lkotlin/reflect/jvm/internal/impl/resolve/scopes/receivers/SuperCallReceiverValue;

    .line 184
    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/resolve/scopes/receivers/SuperCallReceiverValue;->getThisType()Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    move-result-object p1

    goto :goto_3a

    .line 185
    :cond_36
    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/resolve/scopes/receivers/ReceiverValue;->getType()Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    move-result-object p1

    .line 187
    :goto_3a
    invoke-static {p1, p3}, Lkotlin/reflect/jvm/internal/impl/resolve/DescriptorUtils;->isSubtypeOfClass(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;)Z

    move-result p2

    if-nez p2, :cond_48

    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/types/DynamicTypesKt;->isDynamic(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Z

    move-result p1

    if-eqz p1, :cond_47

    goto :goto_48

    :cond_47
    return v1

    :cond_48
    :goto_48
    return v2

    :cond_49
    :goto_49
    return v1
.end method


# virtual methods
.method public isVisible(Lkotlin/reflect/jvm/internal/impl/resolve/scopes/receivers/ReceiverValue;Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptorWithVisibility;Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;Z)Z
    .registers 9

    const/4 v0, 0x0

    if-nez p2, :cond_6

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibilities$3;->$$$reportNull$$$0(I)V

    :cond_6
    const/4 v1, 0x1

    if-nez p3, :cond_c

    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibilities$3;->$$$reportNull$$$0(I)V

    .line 138
    :cond_c
    const-class v2, Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;

    invoke-static {p2, v2}, Lkotlin/reflect/jvm/internal/impl/resolve/DescriptorUtils;->getParentOfType(Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;Ljava/lang/Class;)Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;

    move-result-object v2

    check-cast v2, Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;

    .line 139
    const-class v3, Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;

    invoke-static {p3, v3, v0}, Lkotlin/reflect/jvm/internal/impl/resolve/DescriptorUtils;->getParentOfType(Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;Ljava/lang/Class;Z)Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;

    move-result-object p3

    check-cast p3, Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;

    if-nez p3, :cond_1f

    return v0

    :cond_1f
    if-eqz v2, :cond_38

    .line 142
    invoke-static {v2}, Lkotlin/reflect/jvm/internal/impl/resolve/DescriptorUtils;->isCompanionObject(Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;)Z

    move-result v3

    if-eqz v3, :cond_38

    .line 146
    const-class v3, Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;

    invoke-static {v2, v3}, Lkotlin/reflect/jvm/internal/impl/resolve/DescriptorUtils;->getParentOfType(Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;Ljava/lang/Class;)Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;

    move-result-object v2

    check-cast v2, Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;

    if-eqz v2, :cond_38

    .line 147
    invoke-static {p3, v2}, Lkotlin/reflect/jvm/internal/impl/resolve/DescriptorUtils;->isSubclass(Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;)Z

    move-result v2

    if-eqz v2, :cond_38

    return v1

    .line 153
    :cond_38
    invoke-static {p2}, Lkotlin/reflect/jvm/internal/impl/resolve/DescriptorUtils;->unwrapFakeOverrideToAnyDeclaration(Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptorWithVisibility;)Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptorWithVisibility;

    move-result-object v2

    .line 155
    const-class v3, Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;

    invoke-static {v2, v3}, Lkotlin/reflect/jvm/internal/impl/resolve/DescriptorUtils;->getParentOfType(Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;Ljava/lang/Class;)Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;

    move-result-object v3

    check-cast v3, Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;

    if-nez v3, :cond_47

    return v0

    .line 158
    :cond_47
    invoke-static {p3, v3}, Lkotlin/reflect/jvm/internal/impl/resolve/DescriptorUtils;->isSubclass(Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;)Z

    move-result v0

    if-eqz v0, :cond_54

    .line 159
    invoke-direct {p0, p1, v2, p3}, Lkotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibilities$3;->doesReceiverFitForProtectedVisibility(Lkotlin/reflect/jvm/internal/impl/resolve/scopes/receivers/ReceiverValue;Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptorWithVisibility;Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;)Z

    move-result v0

    if-eqz v0, :cond_54

    return v1

    .line 163
    :cond_54
    invoke-interface {p3}, Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;->getContainingDeclaration()Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;

    move-result-object p3

    invoke-virtual {p0, p1, p2, p3, p4}, Lkotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibilities$3;->isVisible(Lkotlin/reflect/jvm/internal/impl/resolve/scopes/receivers/ReceiverValue;Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptorWithVisibility;Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;Z)Z

    move-result p1

    return p1
.end method

###### Class kotlin.reflect.jvm.internal.impl.descriptors.DescriptorVisibilities.AnonymousClass4 (kotlin.reflect.jvm.internal.impl.descriptors.DescriptorVisibilities$4)
.class final Lkotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibilities$4;
.super Lkotlin/reflect/jvm/internal/impl/descriptors/DelegatedDescriptorVisibility;
.source "DescriptorVisibilities.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibilities;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method private static synthetic $$$reportNull$$$0(I)V
    .registers 4

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq p0, v2, :cond_c

    const-string p0, "what"

    aput-object p0, v0, v1

    goto :goto_10

    :cond_c
    const-string p0, "from"

    aput-object p0, v0, v1

    :goto_10
    const-string p0, "kotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibilities$4"

    aput-object p0, v0, v2

    const/4 p0, 0x2

    const-string v1, "isVisible"

    aput-object v1, v0, p0

    const-string p0, "Argument for @NotNull parameter \'%s\' of %s.%s must not be null"

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method constructor <init>(Lkotlin/reflect/jvm/internal/impl/descriptors/Visibility;)V
    .registers 2

    .line 192
    invoke-direct {p0, p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/DelegatedDescriptorVisibility;-><init>(Lkotlin/reflect/jvm/internal/impl/descriptors/Visibility;)V

    return-void
.end method


# virtual methods
.method public isVisible(Lkotlin/reflect/jvm/internal/impl/resolve/scopes/receivers/ReceiverValue;Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptorWithVisibility;Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;Z)Z
    .registers 6

    const/4 p1, 0x0

    if-nez p2, :cond_6

    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibilities$4;->$$$reportNull$$$0(I)V

    :cond_6
    if-nez p3, :cond_c

    const/4 p4, 0x1

    invoke-static {p4}, Lkotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibilities$4;->$$$reportNull$$$0(I)V

    .line 200
    :cond_c
    invoke-static {p2}, Lkotlin/reflect/jvm/internal/impl/resolve/DescriptorUtils;->getContainingModule(Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;)Lkotlin/reflect/jvm/internal/impl/descriptors/ModuleDescriptor;

    move-result-object p4

    .line 201
    invoke-static {p3}, Lkotlin/reflect/jvm/internal/impl/resolve/DescriptorUtils;->getContainingModule(Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;)Lkotlin/reflect/jvm/internal/impl/descriptors/ModuleDescriptor;

    move-result-object v0

    .line 206
    invoke-interface {v0, p4}, Lkotlin/reflect/jvm/internal/impl/descriptors/ModuleDescriptor;->shouldSeeInternalsOf(Lkotlin/reflect/jvm/internal/impl/descriptors/ModuleDescriptor;)Z

    move-result p4

    if-nez p4, :cond_1b

    return p1

    .line 209
    :cond_1b
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibilities;->access$100()Lkotlin/reflect/jvm/internal/impl/util/ModuleVisibilityHelper;

    move-result-object p1

    invoke-interface {p1, p2, p3}, Lkotlin/reflect/jvm/internal/impl/util/ModuleVisibilityHelper;->isInFriendModule(Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;)Z

    move-result p1

    return p1
.end method

###### Class kotlin.reflect.jvm.internal.impl.descriptors.DescriptorVisibilities.AnonymousClass5 (kotlin.reflect.jvm.internal.impl.descriptors.DescriptorVisibilities$5)
.class final Lkotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibilities$5;
.super Lkotlin/reflect/jvm/internal/impl/descriptors/DelegatedDescriptorVisibility;
.source "DescriptorVisibilities.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibilities;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method private static synthetic $$$reportNull$$$0(I)V
    .registers 4

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq p0, v2, :cond_c

    const-string p0, "what"

    aput-object p0, v0, v1

    goto :goto_10

    :cond_c
    const-string p0, "from"

    aput-object p0, v0, v1

    :goto_10
    const-string p0, "kotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibilities$5"

    aput-object p0, v0, v2

    const/4 p0, 0x2

    const-string v1, "isVisible"

    aput-object v1, v0, p0

    const-string p0, "Argument for @NotNull parameter \'%s\' of %s.%s must not be null"

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method constructor <init>(Lkotlin/reflect/jvm/internal/impl/descriptors/Visibility;)V
    .registers 2

    .line 214
    invoke-direct {p0, p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/DelegatedDescriptorVisibility;-><init>(Lkotlin/reflect/jvm/internal/impl/descriptors/Visibility;)V

    return-void
.end method


# virtual methods
.method public isVisible(Lkotlin/reflect/jvm/internal/impl/resolve/scopes/receivers/ReceiverValue;Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptorWithVisibility;Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;Z)Z
    .registers 5

    if-nez p2, :cond_6

    const/4 p1, 0x0

    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibilities$5;->$$$reportNull$$$0(I)V

    :cond_6
    const/4 p1, 0x1

    if-nez p3, :cond_c

    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibilities$5;->$$$reportNull$$$0(I)V

    :cond_c
    return p1
.end method

###### Class kotlin.reflect.jvm.internal.impl.descriptors.DescriptorVisibilities.AnonymousClass6 (kotlin.reflect.jvm.internal.impl.descriptors.DescriptorVisibilities$6)
.class final Lkotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibilities$6;
.super Lkotlin/reflect/jvm/internal/impl/descriptors/DelegatedDescriptorVisibility;
.source "DescriptorVisibilities.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibilities;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method private static synthetic $$$reportNull$$$0(I)V
    .registers 4

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq p0, v2, :cond_c

    const-string p0, "what"

    aput-object p0, v0, v1

    goto :goto_10

    :cond_c
    const-string p0, "from"

    aput-object p0, v0, v1

    :goto_10
    const-string p0, "kotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibilities$6"

    aput-object p0, v0, v2

    const/4 p0, 0x2

    const-string v1, "isVisible"

    aput-object v1, v0, p0

    const-string p0, "Argument for @NotNull parameter \'%s\' of %s.%s must not be null"

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method constructor <init>(Lkotlin/reflect/jvm/internal/impl/descriptors/Visibility;)V
    .registers 2

    .line 227
    invoke-direct {p0, p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/DelegatedDescriptorVisibility;-><init>(Lkotlin/reflect/jvm/internal/impl/descriptors/Visibility;)V

    return-void
.end method


# virtual methods
.method public isVisible(Lkotlin/reflect/jvm/internal/impl/resolve/scopes/receivers/ReceiverValue;Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptorWithVisibility;Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;Z)Z
    .registers 5

    if-nez p2, :cond_6

    const/4 p1, 0x0

    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibilities$6;->$$$reportNull$$$0(I)V

    :cond_6
    if-nez p3, :cond_c

    const/4 p1, 0x1

    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibilities$6;->$$$reportNull$$$0(I)V

    .line 235
    :cond_c
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "This method shouldn\'t be invoked for LOCAL visibility"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

###### Class kotlin.reflect.jvm.internal.impl.descriptors.DescriptorVisibilities.AnonymousClass7 (kotlin.reflect.jvm.internal.impl.descriptors.DescriptorVisibilities$7)
.class final Lkotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibilities$7;
.super Lkotlin/reflect/jvm/internal/impl/descriptors/DelegatedDescriptorVisibility;
.source "DescriptorVisibilities.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibilities;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method private static synthetic $$$reportNull$$$0(I)V
    .registers 4

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq p0, v2, :cond_c

    const-string p0, "what"

    aput-object p0, v0, v1

    goto :goto_10

    :cond_c
    const-string p0, "from"

    aput-object p0, v0, v1

    :goto_10
    const-string p0, "kotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibilities$7"

    aput-object p0, v0, v2

    const/4 p0, 0x2

    const-string v1, "isVisible"

    aput-object v1, v0, p0

    const-string p0, "Argument for @NotNull parameter \'%s\' of %s.%s must not be null"

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method constructor <init>(Lkotlin/reflect/jvm/internal/impl/descriptors/Visibility;)V
    .registers 2

    .line 240
    invoke-direct {p0, p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/DelegatedDescriptorVisibility;-><init>(Lkotlin/reflect/jvm/internal/impl/descriptors/Visibility;)V

    return-void
.end method


# virtual methods
.method public isVisible(Lkotlin/reflect/jvm/internal/impl/resolve/scopes/receivers/ReceiverValue;Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptorWithVisibility;Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;Z)Z
    .registers 5

    if-nez p2, :cond_6

    const/4 p1, 0x0

    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibilities$7;->$$$reportNull$$$0(I)V

    :cond_6
    if-nez p3, :cond_c

    const/4 p1, 0x1

    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibilities$7;->$$$reportNull$$$0(I)V

    .line 248
    :cond_c
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Visibility is unknown yet"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

###### Class kotlin.reflect.jvm.internal.impl.descriptors.DescriptorVisibilities.AnonymousClass8 (kotlin.reflect.jvm.internal.impl.descriptors.DescriptorVisibilities$8)
.class final Lkotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibilities$8;
.super Lkotlin/reflect/jvm/internal/impl/descriptors/DelegatedDescriptorVisibility;
.source "DescriptorVisibilities.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibilities;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method private static synthetic $$$reportNull$$$0(I)V
    .registers 4

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq p0, v2, :cond_c

    const-string p0, "what"

    aput-object p0, v0, v1

    goto :goto_10

    :cond_c
    const-string p0, "from"

    aput-object p0, v0, v1

    :goto_10
    const-string p0, "kotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibilities$8"

    aput-object p0, v0, v2

    const/4 p0, 0x2

    const-string v1, "isVisible"

    aput-object v1, v0, p0

    const-string p0, "Argument for @NotNull parameter \'%s\' of %s.%s must not be null"

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method constructor <init>(Lkotlin/reflect/jvm/internal/impl/descriptors/Visibility;)V
    .registers 2

    .line 254
    invoke-direct {p0, p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/DelegatedDescriptorVisibility;-><init>(Lkotlin/reflect/jvm/internal/impl/descriptors/Visibility;)V

    return-void
.end method


# virtual methods
.method public isVisible(Lkotlin/reflect/jvm/internal/impl/resolve/scopes/receivers/ReceiverValue;Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptorWithVisibility;Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;Z)Z
    .registers 5

    const/4 p1, 0x0

    if-nez p2, :cond_6

    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibilities$8;->$$$reportNull$$$0(I)V

    :cond_6
    if-nez p3, :cond_c

    const/4 p2, 0x1

    invoke-static {p2}, Lkotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibilities$8;->$$$reportNull$$$0(I)V

    :cond_c
    return p1
.end method

###### Class kotlin.reflect.jvm.internal.impl.descriptors.DescriptorVisibilities.AnonymousClass9 (kotlin.reflect.jvm.internal.impl.descriptors.DescriptorVisibilities$9)
.class final Lkotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibilities$9;
.super Lkotlin/reflect/jvm/internal/impl/descriptors/DelegatedDescriptorVisibility;
.source "DescriptorVisibilities.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibilities;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method private static synthetic $$$reportNull$$$0(I)V
    .registers 4

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq p0, v2, :cond_c

    const-string p0, "what"

    aput-object p0, v0, v1

    goto :goto_10

    :cond_c
    const-string p0, "from"

    aput-object p0, v0, v1

    :goto_10
    const-string p0, "kotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibilities$9"

    aput-object p0, v0, v2

    const/4 p0, 0x2

    const-string v1, "isVisible"

    aput-object v1, v0, p0

    const-string p0, "Argument for @NotNull parameter \'%s\' of %s.%s must not be null"

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method constructor <init>(Lkotlin/reflect/jvm/internal/impl/descriptors/Visibility;)V
    .registers 2

    .line 269
    invoke-direct {p0, p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/DelegatedDescriptorVisibility;-><init>(Lkotlin/reflect/jvm/internal/impl/descriptors/Visibility;)V

    return-void
.end method


# virtual methods
.method public isVisible(Lkotlin/reflect/jvm/internal/impl/resolve/scopes/receivers/ReceiverValue;Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptorWithVisibility;Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;Z)Z
    .registers 5

    const/4 p1, 0x0

    if-nez p2, :cond_6

    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibilities$9;->$$$reportNull$$$0(I)V

    :cond_6
    if-nez p3, :cond_c

    const/4 p2, 0x1

    invoke-static {p2}, Lkotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibilities$9;->$$$reportNull$$$0(I)V

    :cond_c
    return p1
.end method
