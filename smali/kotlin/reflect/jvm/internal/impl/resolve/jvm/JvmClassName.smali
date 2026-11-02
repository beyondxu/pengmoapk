###### Class kotlin.reflect.jvm.internal.impl.resolve.jvm.JvmClassName (kotlin.reflect.jvm.internal.impl.resolve.jvm.JvmClassName)
.class public Lkotlin/reflect/jvm/internal/impl/resolve/jvm/JvmClassName;
.super Ljava/lang/Object;
.source "JvmClassName.java"


# instance fields
.field private fqName:Lkotlin/reflect/jvm/internal/impl/name/FqName;

.field private final internalName:Ljava/lang/String;


# direct methods
.method private static synthetic $$$reportNull$$$0(I)V
    .registers 10

    const/4 v0, 0x5

    const/4 v1, 0x3

    if-eq p0, v1, :cond_c

    if-eq p0, v0, :cond_c

    packed-switch p0, :pswitch_data_84

    const-string v2, "Argument for @NotNull parameter \'%s\' of %s.%s must not be null"

    goto :goto_e

    :cond_c
    :pswitch_c
    const-string v2, "@NotNull method %s.%s must not return null"

    :goto_e
    const/4 v3, 0x2

    if-eq p0, v1, :cond_18

    if-eq p0, v0, :cond_18

    packed-switch p0, :pswitch_data_8e

    const/4 v4, 0x3

    goto :goto_19

    :cond_18
    :pswitch_18
    const/4 v4, 0x2

    :goto_19
    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "kotlin/reflect/jvm/internal/impl/resolve/jvm/JvmClassName"

    const/4 v6, 0x0

    packed-switch p0, :pswitch_data_98

    :pswitch_21
    const-string v7, "internalName"

    aput-object v7, v4, v6

    goto :goto_32

    :pswitch_26
    const-string v7, "fqName"

    aput-object v7, v4, v6

    goto :goto_32

    :pswitch_2b
    aput-object v5, v4, v6

    goto :goto_32

    :pswitch_2e
    const-string v7, "classId"

    aput-object v7, v4, v6

    :goto_32
    const-string v6, "byFqNameWithoutInnerClasses"

    const-string v7, "internalNameByClassId"

    const/4 v8, 0x1

    if-eq p0, v1, :cond_53

    if-eq p0, v0, :cond_50

    packed-switch p0, :pswitch_data_b0

    aput-object v5, v4, v8

    goto :goto_55

    :pswitch_41
    const-string v5, "getInternalName"

    aput-object v5, v4, v8

    goto :goto_55

    :pswitch_46
    const-string v5, "getPackageFqName"

    aput-object v5, v4, v8

    goto :goto_55

    :pswitch_4b
    const-string v5, "getFqNameForClassNameWithoutDollars"

    aput-object v5, v4, v8

    goto :goto_55

    :cond_50
    aput-object v6, v4, v8

    goto :goto_55

    :cond_53
    aput-object v7, v4, v8

    :goto_55
    packed-switch p0, :pswitch_data_ba

    const-string v5, "byInternalName"

    aput-object v5, v4, v3

    goto :goto_6c

    :pswitch_5d
    const-string v5, "<init>"

    aput-object v5, v4, v3

    goto :goto_6c

    :pswitch_62
    aput-object v6, v4, v3

    goto :goto_6c

    :pswitch_65
    aput-object v7, v4, v3

    goto :goto_6c

    :pswitch_68
    const-string v5, "byClassId"

    aput-object v5, v4, v3

    :goto_6c
    :pswitch_6c
    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    if-eq p0, v1, :cond_7d

    if-eq p0, v0, :cond_7d

    packed-switch p0, :pswitch_data_d2

    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_82

    :cond_7d
    :pswitch_7d
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    :goto_82
    throw p0

    nop

    :pswitch_data_84
    .packed-switch 0x8
        :pswitch_c
        :pswitch_c
        :pswitch_c
    .end packed-switch

    :pswitch_data_8e
    .packed-switch 0x8
        :pswitch_18
        :pswitch_18
        :pswitch_18
    .end packed-switch

    :pswitch_data_98
    .packed-switch 0x1
        :pswitch_2e
        :pswitch_2e
        :pswitch_2b
        :pswitch_26
        :pswitch_2b
        :pswitch_26
        :pswitch_21
        :pswitch_2b
        :pswitch_2b
        :pswitch_2b
    .end packed-switch

    :pswitch_data_b0
    .packed-switch 0x8
        :pswitch_4b
        :pswitch_46
        :pswitch_41
    .end packed-switch

    :pswitch_data_ba
    .packed-switch 0x1
        :pswitch_68
        :pswitch_65
        :pswitch_6c
        :pswitch_62
        :pswitch_6c
        :pswitch_62
        :pswitch_5d
        :pswitch_6c
        :pswitch_6c
        :pswitch_6c
    .end packed-switch

    :pswitch_data_d2
    .packed-switch 0x8
        :pswitch_7d
        :pswitch_7d
        :pswitch_7d
    .end packed-switch
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .registers 3

    if-nez p1, :cond_6

    const/4 v0, 0x7

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/resolve/jvm/JvmClassName;->$$$reportNull$$$0(I)V

    .line 64
    :cond_6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/resolve/jvm/JvmClassName;->internalName:Ljava/lang/String;

    return-void
.end method

.method public static byClassId(Lkotlin/reflect/jvm/internal/impl/name/ClassId;)Lkotlin/reflect/jvm/internal/impl/resolve/jvm/JvmClassName;
    .registers 2

    if-nez p0, :cond_6

    const/4 v0, 0x1

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/resolve/jvm/JvmClassName;->$$$reportNull$$$0(I)V

    .line 31
    :cond_6
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/resolve/jvm/JvmClassName;

    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/resolve/jvm/JvmClassName;->internalNameByClassId(Lkotlin/reflect/jvm/internal/impl/name/ClassId;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lkotlin/reflect/jvm/internal/impl/resolve/jvm/JvmClassName;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static byFqNameWithoutInnerClasses(Lkotlin/reflect/jvm/internal/impl/name/FqName;)Lkotlin/reflect/jvm/internal/impl/resolve/jvm/JvmClassName;
    .registers 5

    if-nez p0, :cond_6

    const/4 v0, 0x4

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/resolve/jvm/JvmClassName;->$$$reportNull$$$0(I)V

    .line 48
    :cond_6
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/resolve/jvm/JvmClassName;

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/name/FqName;->asString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2e

    const/16 v3, 0x2f

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/impl/resolve/jvm/JvmClassName;-><init>(Ljava/lang/String;)V

    .line 49
    iput-object p0, v0, Lkotlin/reflect/jvm/internal/impl/resolve/jvm/JvmClassName;->fqName:Lkotlin/reflect/jvm/internal/impl/name/FqName;

    return-object v0
.end method

.method public static byInternalName(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/resolve/jvm/JvmClassName;
    .registers 2

    if-nez p0, :cond_6

    const/4 v0, 0x0

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/resolve/jvm/JvmClassName;->$$$reportNull$$$0(I)V

    .line 26
    :cond_6
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/resolve/jvm/JvmClassName;

    invoke-direct {v0, p0}, Lkotlin/reflect/jvm/internal/impl/resolve/jvm/JvmClassName;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static internalNameByClassId(Lkotlin/reflect/jvm/internal/impl/name/ClassId;)Ljava/lang/String;
    .registers 5

    if-nez p0, :cond_6

    const/4 v0, 0x2

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/resolve/jvm/JvmClassName;->$$$reportNull$$$0(I)V

    .line 36
    :cond_6
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/name/ClassId;->getPackageFqName()Lkotlin/reflect/jvm/internal/impl/name/FqName;

    move-result-object v0

    .line 37
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/name/ClassId;->getRelativeClassName()Lkotlin/reflect/jvm/internal/impl/name/FqName;

    move-result-object p0

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/name/FqName;->asString()Ljava/lang/String;

    move-result-object p0

    const/16 v1, 0x24

    const/16 v2, 0x2e

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    .line 38
    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/name/FqName;->isRoot()Z

    move-result v1

    if-eqz v1, :cond_21

    goto :goto_3f

    :cond_21
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 40
    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/name/FqName;->asString()Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x2f

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_3f
    if-nez p0, :cond_45

    const/4 v0, 0x3

    .line 38
    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/resolve/jvm/JvmClassName;->$$$reportNull$$$0(I)V

    :cond_45
    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 4

    if-ne p0, p1, :cond_4

    const/4 p1, 0x1

    return p1

    :cond_4
    if-eqz p1, :cond_1c

    .line 117
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_11

    goto :goto_1c

    .line 118
    :cond_11
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/resolve/jvm/JvmClassName;->internalName:Ljava/lang/String;

    check-cast p1, Lkotlin/reflect/jvm/internal/impl/resolve/jvm/JvmClassName;

    iget-object p1, p1, Lkotlin/reflect/jvm/internal/impl/resolve/jvm/JvmClassName;->internalName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1c
    :goto_1c
    const/4 p1, 0x0

    return p1
.end method

.method public getFqNameForTopLevelClassMaybeWithDollars()Lkotlin/reflect/jvm/internal/impl/name/FqName;
    .registers 5

    .line 94
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/name/FqName;

    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/resolve/jvm/JvmClassName;->internalName:Ljava/lang/String;

    const/16 v2, 0x2f

    const/16 v3, 0x2e

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/impl/name/FqName;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public getInternalName()Ljava/lang/String;
    .registers 3

    .line 106
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/resolve/jvm/JvmClassName;->internalName:Ljava/lang/String;

    if-nez v0, :cond_9

    const/16 v1, 0xa

    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/resolve/jvm/JvmClassName;->$$$reportNull$$$0(I)V

    :cond_9
    return-object v0
.end method

.method public getPackageFqName()Lkotlin/reflect/jvm/internal/impl/name/FqName;
    .registers 5

    .line 99
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/resolve/jvm/JvmClassName;->internalName:Ljava/lang/String;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_15

    .line 100
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/name/FqName;->ROOT:Lkotlin/reflect/jvm/internal/impl/name/FqName;

    if-nez v0, :cond_14

    const/16 v1, 0x9

    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/resolve/jvm/JvmClassName;->$$$reportNull$$$0(I)V

    :cond_14
    return-object v0

    .line 101
    :cond_15
    new-instance v1, Lkotlin/reflect/jvm/internal/impl/name/FqName;

    iget-object v2, p0, Lkotlin/reflect/jvm/internal/impl/resolve/jvm/JvmClassName;->internalName:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x2f

    const/16 v3, 0x2e

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lkotlin/reflect/jvm/internal/impl/name/FqName;-><init>(Ljava/lang/String;)V

    return-object v1
.end method

.method public hashCode()I
    .registers 2

    .line 123
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/resolve/jvm/JvmClassName;->internalName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 111
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/resolve/jvm/JvmClassName;->internalName:Ljava/lang/String;

    return-object v0
.end method
