###### Class io.dcloud.nineoldandroids.animation.PropertyValuesHolder (io.dcloud.nineoldandroids.animation.PropertyValuesHolder)
.class public Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;
.super Ljava/lang/Object;
.source "PropertyValuesHolder.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder$FloatPropertyValuesHolder;,
        Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder$IntPropertyValuesHolder;
    }
.end annotation


# static fields
.field private static DOUBLE_VARIANTS:[Ljava/lang/Class;

.field private static FLOAT_VARIANTS:[Ljava/lang/Class;

.field private static INTEGER_VARIANTS:[Ljava/lang/Class;

.field private static final sFloatEvaluator:Lio/dcloud/nineoldandroids/animation/TypeEvaluator;

.field private static final sGetterPropertyMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Class;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Method;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final sIntEvaluator:Lio/dcloud/nineoldandroids/animation/TypeEvaluator;

.field private static final sSetterPropertyMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Class;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Method;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private mAnimatedValue:Ljava/lang/Object;

.field private mEvaluator:Lio/dcloud/nineoldandroids/animation/TypeEvaluator;

.field private mGetter:Ljava/lang/reflect/Method;

.field mKeyframeSet:Lio/dcloud/nineoldandroids/animation/KeyframeSet;

.field protected mProperty:Lio/dcloud/nineoldandroids/util/Property;

.field final mPropertyMapLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

.field mPropertyName:Ljava/lang/String;

.field mSetter:Ljava/lang/reflect/Method;

.field final mTmpValueArray:[Ljava/lang/Object;

.field mValueType:Ljava/lang/Class;


# direct methods
.method static constructor <clinit>()V
    .registers 9

    .line 81
    new-instance v0, Lio/dcloud/nineoldandroids/animation/IntEvaluator;

    invoke-direct {v0}, Lio/dcloud/nineoldandroids/animation/IntEvaluator;-><init>()V

    sput-object v0, Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;->sIntEvaluator:Lio/dcloud/nineoldandroids/animation/TypeEvaluator;

    .line 82
    new-instance v0, Lio/dcloud/nineoldandroids/animation/FloatEvaluator;

    invoke-direct {v0}, Lio/dcloud/nineoldandroids/animation/FloatEvaluator;-><init>()V

    sput-object v0, Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;->sFloatEvaluator:Lio/dcloud/nineoldandroids/animation/TypeEvaluator;

    const/4 v0, 0x6

    .line 92
    new-array v1, v0, [Ljava/lang/Class;

    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-class v2, Ljava/lang/Float;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x2

    aput-object v2, v1, v5

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x3

    aput-object v2, v1, v6

    const-class v2, Ljava/lang/Double;

    const/4 v7, 0x4

    aput-object v2, v1, v7

    const-class v2, Ljava/lang/Integer;

    const/4 v8, 0x5

    aput-object v2, v1, v8

    .line 91
    sput-object v1, Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;->FLOAT_VARIANTS:[Ljava/lang/Class;

    .line 94
    new-array v1, v0, [Ljava/lang/Class;

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v2, v1, v3

    const-class v2, Ljava/lang/Integer;

    aput-object v2, v1, v4

    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    aput-object v2, v1, v5

    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    aput-object v2, v1, v6

    const-class v2, Ljava/lang/Float;

    aput-object v2, v1, v7

    const-class v2, Ljava/lang/Double;

    aput-object v2, v1, v8

    .line 93
    sput-object v1, Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;->INTEGER_VARIANTS:[Ljava/lang/Class;

    .line 96
    new-array v0, v0, [Ljava/lang/Class;

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    aput-object v1, v0, v3

    const-class v1, Ljava/lang/Double;

    aput-object v1, v0, v4

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    aput-object v1, v0, v5

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v1, v0, v6

    const-class v1, Ljava/lang/Float;

    aput-object v1, v0, v7

    const-class v1, Ljava/lang/Integer;

    aput-object v1, v0, v8

    .line 95
    sput-object v0, Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;->DOUBLE_VARIANTS:[Ljava/lang/Class;

    .line 102
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 101
    sput-object v0, Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;->sSetterPropertyMap:Ljava/util/HashMap;

    .line 104
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 103
    sput-object v0, Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;->sGetterPropertyMap:Ljava/util/HashMap;

    return-void
.end method

.method private constructor <init>(Lio/dcloud/nineoldandroids/util/Property;)V
    .registers 3

    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 57
    iput-object v0, p0, Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;->mSetter:Ljava/lang/reflect/Method;

    .line 66
    iput-object v0, p0, Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;->mGetter:Ljava/lang/reflect/Method;

    .line 77
    iput-object v0, p0, Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;->mKeyframeSet:Lio/dcloud/nineoldandroids/animation/KeyframeSet;

    .line 108
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    iput-object v0, p0, Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;->mPropertyMapLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    const/4 v0, 0x1

    .line 111
    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;->mTmpValueArray:[Ljava/lang/Object;

    .line 141
    iput-object p1, p0, Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;->mProperty:Lio/dcloud/nineoldandroids/util/Property;

    if-eqz p1, :cond_20

    .line 143
    invoke-virtual {p1}, Lio/dcloud/nineoldandroids/util/Property;->getName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;->mPropertyName:Ljava/lang/String;

    :cond_20
    return-void
.end method

.method synthetic constructor <init>(Lio/dcloud/nineoldandroids/util/Property;Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;)V
    .registers 3

    .line 140
    invoke-direct {p0, p1}, Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;-><init>(Lio/dcloud/nineoldandroids/util/Property;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .registers 3

    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 57
    iput-object v0, p0, Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;->mSetter:Ljava/lang/reflect/Method;

    .line 66
    iput-object v0, p0, Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;->mGetter:Ljava/lang/reflect/Method;

    .line 77
    iput-object v0, p0, Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;->mKeyframeSet:Lio/dcloud/nineoldandroids/animation/KeyframeSet;

    .line 108
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    iput-object v0, p0, Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;->mPropertyMapLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    const/4 v0, 0x1

    .line 111
    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;->mTmpValueArray:[Ljava/lang/Object;

    .line 133
    iput-object p1, p0, Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;->mPropertyName:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;)V
    .registers 3

    .line 132
    invoke-direct {p0, p1}, Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method static getMethodName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    if-eqz p1, :cond_2a

    .line 745
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_9

    goto :goto_2a

    :cond_9
    const/4 v0, 0x0

    .line 749
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v0

    const/4 v1, 0x1

    .line 750
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 751
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_2a
    :goto_2a
    return-object p0
.end method

.method private getPropertyFunction(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .registers 12

    .line 383
    iget-object v0, p0, Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;->mPropertyName:Ljava/lang/String;

    invoke-static {p2, v0}, Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;->getMethodName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 385
    const-string v0, "PropertyValuesHolder"

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez p3, :cond_36

    .line 387
    :try_start_c
    invoke-virtual {p1, p2, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1
    :try_end_10
    .catch Ljava/lang/NoSuchMethodException; {:try_start_c .. :try_end_10} :catch_11

    return-object p1

    :catch_11
    move-exception p3

    .line 393
    :try_start_12
    invoke-virtual {p1, p2, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 394
    invoke-virtual {v2, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_19
    .catch Ljava/lang/NoSuchMethodException; {:try_start_12 .. :try_end_19} :catch_1a

    goto :goto_85

    .line 397
    :catch_1a
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Couldn\'t find no-arg method for property "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p2, p0, Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;->mPropertyName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ": "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 396
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_85

    .line 403
    :cond_36
    iget-object p3, p0, Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;->mValueType:Ljava/lang/Class;

    const-class v3, Ljava/lang/Float;

    invoke-virtual {p3, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p3

    const/4 v3, 0x0

    if-eqz p3, :cond_44

    .line 404
    sget-object p3, Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;->FLOAT_VARIANTS:[Ljava/lang/Class;

    goto :goto_64

    .line 405
    :cond_44
    iget-object p3, p0, Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;->mValueType:Ljava/lang/Class;

    const-class v4, Ljava/lang/Integer;

    invoke-virtual {p3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_51

    .line 406
    sget-object p3, Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;->INTEGER_VARIANTS:[Ljava/lang/Class;

    goto :goto_64

    .line 407
    :cond_51
    iget-object p3, p0, Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;->mValueType:Ljava/lang/Class;

    const-class v4, Ljava/lang/Double;

    invoke-virtual {p3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_5e

    .line 408
    sget-object p3, Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;->DOUBLE_VARIANTS:[Ljava/lang/Class;

    goto :goto_64

    .line 410
    :cond_5e
    new-array p3, v1, [Ljava/lang/Class;

    .line 411
    iget-object v4, p0, Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;->mValueType:Ljava/lang/Class;

    aput-object v4, p3, v3

    .line 413
    :goto_64
    array-length v4, p3

    const/4 v5, 0x0

    :goto_66
    if-lt v5, v4, :cond_86

    .line 437
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Couldn\'t find setter/getter for property "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p2, p0, Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;->mPropertyName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 438
    const-string p2, " with value type "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;->mValueType:Ljava/lang/Class;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 437
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 436
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_85
    return-object v2

    .line 413
    :cond_86
    aget-object v6, p3, v5

    .line 414
    new-array v7, v1, [Ljava/lang/Class;

    aput-object v6, v7, v3

    .line 416
    :try_start_8c
    invoke-virtual {p1, p2, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 418
    iput-object v6, p0, Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;->mValueType:Ljava/lang/Class;
    :try_end_92
    .catch Ljava/lang/NoSuchMethodException; {:try_start_8c .. :try_end_92} :catch_93

    return-object v2

    .line 425
    :catch_93
    :try_start_93
    invoke-virtual {p1, p2, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 426
    invoke-virtual {v2, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 428
    iput-object v6, p0, Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;->mValueType:Ljava/lang/Class;
    :try_end_9c
    .catch Ljava/lang/NoSuchMethodException; {:try_start_93 .. :try_end_9c} :catch_9d

    return-object v2

    :catch_9d
    add-int/lit8 v5, v5, 0x1

    goto :goto_66
.end method

.method public static varargs ofFloat(Lio/dcloud/nineoldandroids/util/Property;[F)Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/dcloud/nineoldandroids/util/Property<",
            "*",
            "Ljava/lang/Float;",
            ">;[F)",
            "Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;"
        }
    .end annotation

    .line 188
    new-instance v0, Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder$FloatPropertyValuesHolder;

    invoke-direct {v0, p0, p1}, Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder$FloatPropertyValuesHolder;-><init>(Lio/dcloud/nineoldandroids/util/Property;[F)V

    return-object v0
.end method

.method public static varargs ofFloat(Ljava/lang/String;[F)Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;
    .registers 3

    .line 177
    new-instance v0, Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder$FloatPropertyValuesHolder;

    invoke-direct {v0, p0, p1}, Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder$FloatPropertyValuesHolder;-><init>(Ljava/lang/String;[F)V

    return-object v0
.end method

.method public static varargs ofInt(Lio/dcloud/nineoldandroids/util/Property;[I)Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/dcloud/nineoldandroids/util/Property<",
            "*",
            "Ljava/lang/Integer;",
            ">;[I)",
            "Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;"
        }
    .end annotation

    .line 166
    new-instance v0, Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder$IntPropertyValuesHolder;

    invoke-direct {v0, p0, p1}, Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder$IntPropertyValuesHolder;-><init>(Lio/dcloud/nineoldandroids/util/Property;[I)V

    return-object v0
.end method

.method public static varargs ofInt(Ljava/lang/String;[I)Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;
    .registers 3

    .line 155
    new-instance v0, Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder$IntPropertyValuesHolder;

    invoke-direct {v0, p0, p1}, Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder$IntPropertyValuesHolder;-><init>(Ljava/lang/String;[I)V

    return-object v0
.end method

.method public static varargs ofKeyframe(Lio/dcloud/nineoldandroids/util/Property;[Lio/dcloud/nineoldandroids/animation/Keyframe;)Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;
    .registers 4

    .line 282
    invoke-static {p1}, Lio/dcloud/nineoldandroids/animation/KeyframeSet;->ofKeyframe([Lio/dcloud/nineoldandroids/animation/Keyframe;)Lio/dcloud/nineoldandroids/animation/KeyframeSet;

    move-result-object v0

    .line 283
    instance-of v1, v0, Lio/dcloud/nineoldandroids/animation/IntKeyframeSet;

    if-eqz v1, :cond_10

    .line 284
    new-instance p1, Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder$IntPropertyValuesHolder;

    check-cast v0, Lio/dcloud/nineoldandroids/animation/IntKeyframeSet;

    invoke-direct {p1, p0, v0}, Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder$IntPropertyValuesHolder;-><init>(Lio/dcloud/nineoldandroids/util/Property;Lio/dcloud/nineoldandroids/animation/IntKeyframeSet;)V

    return-object p1

    .line 285
    :cond_10
    instance-of v1, v0, Lio/dcloud/nineoldandroids/animation/FloatKeyframeSet;

    if-eqz v1, :cond_1c

    .line 286
    new-instance p1, Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder$FloatPropertyValuesHolder;

    check-cast v0, Lio/dcloud/nineoldandroids/animation/FloatKeyframeSet;

    invoke-direct {p1, p0, v0}, Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder$FloatPropertyValuesHolder;-><init>(Lio/dcloud/nineoldandroids/util/Property;Lio/dcloud/nineoldandroids/animation/FloatKeyframeSet;)V

    return-object p1

    .line 289
    :cond_1c
    new-instance v1, Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;

    invoke-direct {v1, p0}, Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;-><init>(Lio/dcloud/nineoldandroids/util/Property;)V

    .line 290
    iput-object v0, v1, Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;->mKeyframeSet:Lio/dcloud/nineoldandroids/animation/KeyframeSet;

    const/4 p0, 0x0

    .line 291
    aget-object p0, p1, p0

    invoke-virtual {p0}, Lio/dcloud/nineoldandroids/animation/Keyframe;->getType()Ljava/lang/Class;

    move-result-object p0

    iput-object p0, v1, Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;->mValueType:Ljava/lang/Class;

    return-object v1
.end method

.method public static varargs ofKeyframe(Ljava/lang/String;[Lio/dcloud/nineoldandroids/animation/Keyframe;)Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;
    .registers 4

    .line 251
    invoke-static {p1}, Lio/dcloud/nineoldandroids/animation/KeyframeSet;->ofKeyframe([Lio/dcloud/nineoldandroids/animation/Keyframe;)Lio/dcloud/nineoldandroids/animation/KeyframeSet;

    move-result-object v0

    .line 252
    instance-of v1, v0, Lio/dcloud/nineoldandroids/animation/IntKeyframeSet;

    if-eqz v1, :cond_10

    .line 253
    new-instance p1, Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder$IntPropertyValuesHolder;

    check-cast v0, Lio/dcloud/nineoldandroids/animation/IntKeyframeSet;

    invoke-direct {p1, p0, v0}, Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder$IntPropertyValuesHolder;-><init>(Ljava/lang/String;Lio/dcloud/nineoldandroids/animation/IntKeyframeSet;)V

    return-object p1

    .line 254
    :cond_10
    instance-of v1, v0, Lio/dcloud/nineoldandroids/animation/FloatKeyframeSet;

    if-eqz v1, :cond_1c

    .line 255
    new-instance p1, Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder$FloatPropertyValuesHolder;

    check-cast v0, Lio/dcloud/nineoldandroids/animation/FloatKeyframeSet;

    invoke-direct {p1, p0, v0}, Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder$FloatPropertyValuesHolder;-><init>(Ljava/lang/String;Lio/dcloud/nineoldandroids/animation/FloatKeyframeSet;)V

    return-object p1

    .line 258
    :cond_1c
    new-instance v1, Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;

    invoke-direct {v1, p0}, Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;-><init>(Ljava/lang/String;)V

    .line 259
    iput-object v0, v1, Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;->mKeyframeSet:Lio/dcloud/nineoldandroids/animation/KeyframeSet;

    const/4 p0, 0x0

    .line 260
    aget-object p0, p1, p0

    invoke-virtual {p0}, Lio/dcloud/nineoldandroids/animation/Keyframe;->getType()Ljava/lang/Class;

    move-result-object p0

    iput-object p0, v1, Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;->mValueType:Ljava/lang/Class;

    return-object v1
.end method

.method public static varargs ofObject(Lio/dcloud/nineoldandroids/util/Property;Lio/dcloud/nineoldandroids/animation/TypeEvaluator;[Ljava/lang/Object;)Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/dcloud/nineoldandroids/util/Property;",
            "Lio/dcloud/nineoldandroids/animation/TypeEvaluator<",
            "TV;>;[TV;)",
            "Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;"
        }
    .end annotation

    .line 225
    new-instance v0, Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;

    invoke-direct {v0, p0}, Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;-><init>(Lio/dcloud/nineoldandroids/util/Property;)V

    .line 226
    invoke-virtual {v0, p2}, Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;->setObjectValues([Ljava/lang/Object;)V

    .line 227
    invoke-virtual {v0, p1}, Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;->setEvaluator(Lio/dcloud/nineoldandroids/animation/TypeEvaluator;)V

    return-object v0
.end method

.method public static varargs ofObject(Ljava/lang/String;Lio/dcloud/nineoldandroids/animation/TypeEvaluator;[Ljava/lang/Object;)Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;
    .registers 4

    .line 205
    new-instance v0, Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;

    invoke-direct {v0, p0}, Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;-><init>(Ljava/lang/String;)V

    .line 206
    invoke-virtual {v0, p2}, Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;->setObjectValues([Ljava/lang/Object;)V

    .line 207
    invoke-virtual {v0, p1}, Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;->setEvaluator(Lio/dcloud/nineoldandroids/animation/TypeEvaluator;)V

    return-object v0
.end method

.method private setupGetter(Ljava/lang/Class;)V
    .registers 5

    .line 494
    sget-object v0, Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;->sGetterPropertyMap:Ljava/util/HashMap;

    const-string v1, "get"

    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, v1, v2}, Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;->setupSetterOrGetter(Ljava/lang/Class;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    iput-object p1, p0, Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;->mGetter:Ljava/lang/reflect/Method;

    return-void
.end method

.method private setupSetterOrGetter(Ljava/lang/Class;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class;",
            "Ljava/util/HashMap<",
            "Ljava/lang/Class;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Method;",
            ">;>;",
            "Ljava/lang/String;",
            "Ljava/lang/Class;",
            ")",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .line 463
    :try_start_0
    iget-object v0, p0, Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;->mPropertyMapLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 464
    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    if-eqz v0, :cond_1a

    .line 466
    iget-object v1, p0, Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;->mPropertyName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/reflect/Method;

    goto :goto_1b

    :cond_1a
    const/4 v1, 0x0

    :goto_1b
    if-nez v1, :cond_30

    .line 469
    invoke-direct {p0, p1, p3, p4}, Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;->getPropertyFunction(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    if-nez v0, :cond_2b

    .line 471
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 472
    invoke-virtual {p2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 474
    :cond_2b
    iget-object p1, p0, Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;->mPropertyName:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_30
    .catchall {:try_start_0 .. :try_end_30} :catchall_3a

    .line 477
    :cond_30
    iget-object p1, p0, Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;->mPropertyMapLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    return-object v1

    :catchall_3a
    move-exception p1

    iget-object p2, p0, Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;->mPropertyMapLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 478
    throw p1
.end method

.method private setupValue(Ljava/lang/Object;Lio/dcloud/nineoldandroids/animation/Keyframe;)V
    .registers 6

    .line 552
    const-string v0, "PropertyValuesHolder"

    iget-object v1, p0, Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;->mProperty:Lio/dcloud/nineoldandroids/util/Property;

    if-eqz v1, :cond_d

    .line 553
    invoke-virtual {v1, p1}, Lio/dcloud/nineoldandroids/util/Property;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p2, v1}, Lio/dcloud/nineoldandroids/animation/Keyframe;->setValue(Ljava/lang/Object;)V

    .line 556
    :cond_d
    :try_start_d
    iget-object v1, p0, Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;->mGetter:Ljava/lang/reflect/Method;

    if-nez v1, :cond_18

    .line 557
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 558
    invoke-direct {p0, v1}, Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;->setupGetter(Ljava/lang/Class;)V

    .line 560
    :cond_18
    iget-object v1, p0, Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;->mGetter:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p2, p1}, Lio/dcloud/nineoldandroids/animation/Keyframe;->setValue(Ljava/lang/Object;)V
    :try_end_22
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_d .. :try_end_22} :catch_2c
    .catch Ljava/lang/IllegalAccessException; {:try_start_d .. :try_end_22} :catch_23

    return-void

    :catch_23
    move-exception p1

    .line 564
    invoke-virtual {p1}, Ljava/lang/IllegalAccessException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_34

    :catch_2c
    move-exception p1

    .line 562
    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_34
    return-void
.end method


# virtual methods
.method calculateValue(F)V
    .registers 3

    .line 671
    iget-object v0, p0, Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;->mKeyframeSet:Lio/dcloud/nineoldandroids/animation/KeyframeSet;

    invoke-virtual {v0, p1}, Lio/dcloud/nineoldandroids/animation/KeyframeSet;->getValue(F)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;->mAnimatedValue:Ljava/lang/Object;

    return-void
.end method

.method public clone()Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;
    .registers 3

    .line 595
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;

    .line 596
    iget-object v1, p0, Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;->mPropertyName:Ljava/lang/String;

    iput-object v1, v0, Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;->mPropertyName:Ljava/lang/String;

    .line 597
    iget-object v1, p0, Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;->mProperty:Lio/dcloud/nineoldandroids/util/Property;

    iput-object v1, v0, Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;->mProperty:Lio/dcloud/nineoldandroids/util/Property;

    .line 598
    iget-object v1, p0, Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;->mKeyframeSet:Lio/dcloud/nineoldandroids/animation/KeyframeSet;

    invoke-virtual {v1}, Lio/dcloud/nineoldandroids/animation/KeyframeSet;->clone()Lio/dcloud/nineoldandroids/animation/KeyframeSet;

    move-result-object v1

    iput-object v1, v0, Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;->mKeyframeSet:Lio/dcloud/nineoldandroids/animation/KeyframeSet;

    .line 599
    iget-object v1, p0, Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;->mEvaluator:Lio/dcloud/nineoldandroids/animation/TypeEvaluator;

    iput-object v1, v0, Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;->mEvaluator:Lio/dcloud/nineoldandroids/animation/TypeEvaluator;
    :try_end_1a
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_1a} :catch_1b

    return-object v0

    :catch_1b
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;->clone()Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;

    move-result-object v0

    return-object v0
.end method

.method getAnimatedValue()Ljava/lang/Object;
    .registers 2

    .line 723
    iget-object v0, p0, Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;->mAnimatedValue:Ljava/lang/Object;

    return-object v0
.end method

.method public getPropertyName()Ljava/lang/String;
    .registers 2

    .line 714
    iget-object v0, p0, Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;->mPropertyName:Ljava/lang/String;

    return-object v0
.end method

.method init()V
    .registers 3

    .line 635
    iget-object v0, p0, Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;->mEvaluator:Lio/dcloud/nineoldandroids/animation/TypeEvaluator;

    if-nez v0, :cond_17

    .line 638
    iget-object v0, p0, Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;->mValueType:Ljava/lang/Class;

    const-class v1, Ljava/lang/Integer;

    if-ne v0, v1, :cond_d

    sget-object v0, Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;->sIntEvaluator:Lio/dcloud/nineoldandroids/animation/TypeEvaluator;

    goto :goto_15

    .line 639
    :cond_d
    const-class v1, Ljava/lang/Float;

    if-ne v0, v1, :cond_14

    sget-object v0, Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;->sFloatEvaluator:Lio/dcloud/nineoldandroids/animation/TypeEvaluator;

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    .line 638
    :goto_15
    iput-object v0, p0, Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;->mEvaluator:Lio/dcloud/nineoldandroids/animation/TypeEvaluator;

    .line 642
    :cond_17
    iget-object v0, p0, Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;->mEvaluator:Lio/dcloud/nineoldandroids/animation/TypeEvaluator;

    if-eqz v0, :cond_20

    .line 645
    iget-object v1, p0, Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;->mKeyframeSet:Lio/dcloud/nineoldandroids/animation/KeyframeSet;

    invoke-virtual {v1, v0}, Lio/dcloud/nineoldandroids/animation/KeyframeSet;->setEvaluator(Lio/dcloud/nineoldandroids/animation/TypeEvaluator;)V

    :cond_20
    return-void
.end method

.method setAnimatedValue(Ljava/lang/Object;)V
    .registers 6

    .line 615
    const-string v0, "PropertyValuesHolder"

    iget-object v1, p0, Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;->mProperty:Lio/dcloud/nineoldandroids/util/Property;

    if-eqz v1, :cond_d

    .line 616
    invoke-virtual {p0}, Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Lio/dcloud/nineoldandroids/util/Property;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 618
    :cond_d
    iget-object v1, p0, Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;->mSetter:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_33

    .line 620
    :try_start_11
    iget-object v1, p0, Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;->mTmpValueArray:[Ljava/lang/Object;

    invoke-virtual {p0}, Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 621
    iget-object v1, p0, Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;->mSetter:Ljava/lang/reflect/Method;

    iget-object v2, p0, Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;->mTmpValueArray:[Ljava/lang/Object;

    invoke-virtual {v1, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_21
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_11 .. :try_end_21} :catch_2b
    .catch Ljava/lang/IllegalAccessException; {:try_start_11 .. :try_end_21} :catch_22

    return-void

    :catch_22
    move-exception p1

    .line 625
    invoke-virtual {p1}, Ljava/lang/IllegalAccessException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_33

    :catch_2b
    move-exception p1

    .line 623
    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_33
    :goto_33
    return-void
.end method

.method public setEvaluator(Lio/dcloud/nineoldandroids/animation/TypeEvaluator;)V
    .registers 3

    .line 660
    iput-object p1, p0, Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;->mEvaluator:Lio/dcloud/nineoldandroids/animation/TypeEvaluator;

    .line 661
    iget-object v0, p0, Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;->mKeyframeSet:Lio/dcloud/nineoldandroids/animation/KeyframeSet;

    invoke-virtual {v0, p1}, Lio/dcloud/nineoldandroids/animation/KeyframeSet;->setEvaluator(Lio/dcloud/nineoldandroids/animation/TypeEvaluator;)V

    return-void
.end method

.method public varargs setFloatValues([F)V
    .registers 3

    .line 328
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    iput-object v0, p0, Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;->mValueType:Ljava/lang/Class;

    .line 329
    invoke-static {p1}, Lio/dcloud/nineoldandroids/animation/KeyframeSet;->ofFloat([F)Lio/dcloud/nineoldandroids/animation/KeyframeSet;

    move-result-object p1

    iput-object p1, p0, Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;->mKeyframeSet:Lio/dcloud/nineoldandroids/animation/KeyframeSet;

    return-void
.end method

.method public varargs setIntValues([I)V
    .registers 3

    .line 310
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    iput-object v0, p0, Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;->mValueType:Ljava/lang/Class;

    .line 311
    invoke-static {p1}, Lio/dcloud/nineoldandroids/animation/KeyframeSet;->ofInt([I)Lio/dcloud/nineoldandroids/animation/KeyframeSet;

    move-result-object p1

    iput-object p1, p0, Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;->mKeyframeSet:Lio/dcloud/nineoldandroids/animation/KeyframeSet;

    return-void
.end method

.method public varargs setKeyframes([Lio/dcloud/nineoldandroids/animation/Keyframe;)V
    .registers 6

    .line 338
    array-length v0, p1

    const/4 v1, 0x2

    .line 339
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    new-array v1, v1, [Lio/dcloud/nineoldandroids/animation/Keyframe;

    const/4 v2, 0x0

    .line 340
    aget-object v3, p1, v2

    invoke-virtual {v3}, Lio/dcloud/nineoldandroids/animation/Keyframe;->getType()Ljava/lang/Class;

    move-result-object v3

    iput-object v3, p0, Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;->mValueType:Ljava/lang/Class;

    :goto_11
    if-lt v2, v0, :cond_1b

    .line 344
    new-instance p1, Lio/dcloud/nineoldandroids/animation/KeyframeSet;

    invoke-direct {p1, v1}, Lio/dcloud/nineoldandroids/animation/KeyframeSet;-><init>([Lio/dcloud/nineoldandroids/animation/Keyframe;)V

    iput-object p1, p0, Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;->mKeyframeSet:Lio/dcloud/nineoldandroids/animation/KeyframeSet;

    return-void

    .line 342
    :cond_1b
    aget-object v3, p1, v2

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_11
.end method

.method public varargs setObjectValues([Ljava/lang/Object;)V
    .registers 3

    const/4 v0, 0x0

    .line 361
    aget-object v0, p1, v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;->mValueType:Ljava/lang/Class;

    .line 362
    invoke-static {p1}, Lio/dcloud/nineoldandroids/animation/KeyframeSet;->ofObject([Ljava/lang/Object;)Lio/dcloud/nineoldandroids/animation/KeyframeSet;

    move-result-object p1

    iput-object p1, p0, Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;->mKeyframeSet:Lio/dcloud/nineoldandroids/animation/KeyframeSet;

    return-void
.end method

.method public setProperty(Lio/dcloud/nineoldandroids/util/Property;)V
    .registers 2

    .line 702
    iput-object p1, p0, Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;->mProperty:Lio/dcloud/nineoldandroids/util/Property;

    return-void
.end method

.method public setPropertyName(Ljava/lang/String;)V
    .registers 2

    .line 690
    iput-object p1, p0, Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;->mPropertyName:Ljava/lang/String;

    return-void
.end method

.method setupEndValue(Ljava/lang/Object;)V
    .registers 4

    .line 589
    iget-object v0, p0, Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;->mKeyframeSet:Lio/dcloud/nineoldandroids/animation/KeyframeSet;

    iget-object v0, v0, Lio/dcloud/nineoldandroids/animation/KeyframeSet;->mKeyframes:Ljava/util/ArrayList;

    iget-object v1, p0, Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;->mKeyframeSet:Lio/dcloud/nineoldandroids/animation/KeyframeSet;

    iget-object v1, v1, Lio/dcloud/nineoldandroids/animation/KeyframeSet;->mKeyframes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/dcloud/nineoldandroids/animation/Keyframe;

    invoke-direct {p0, p1, v0}, Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;->setupValue(Ljava/lang/Object;Lio/dcloud/nineoldandroids/animation/Keyframe;)V

    return-void
.end method

.method setupSetter(Ljava/lang/Class;)V
    .registers 5

    .line 487
    sget-object v0, Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;->sSetterPropertyMap:Ljava/util/HashMap;

    const-string v1, "set"

    iget-object v2, p0, Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;->mValueType:Ljava/lang/Class;

    invoke-direct {p0, p1, v0, v1, v2}, Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;->setupSetterOrGetter(Ljava/lang/Class;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    iput-object p1, p0, Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;->mSetter:Ljava/lang/reflect/Method;

    return-void
.end method

.method setupSetterAndGetter(Ljava/lang/Object;)V
    .registers 8

    .line 508
    iget-object v0, p0, Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;->mProperty:Lio/dcloud/nineoldandroids/util/Property;

    const/4 v1, 0x0

    const-string v2, "PropertyValuesHolder"

    if-eqz v0, :cond_55

    .line 511
    :try_start_7
    invoke-virtual {v0, p1}, Lio/dcloud/nineoldandroids/util/Property;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 512
    iget-object v0, p0, Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;->mKeyframeSet:Lio/dcloud/nineoldandroids/animation/KeyframeSet;

    iget-object v0, v0, Lio/dcloud/nineoldandroids/animation/KeyframeSet;->mKeyframes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_12
    :goto_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_19

    goto :goto_6e

    :cond_19
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/dcloud/nineoldandroids/animation/Keyframe;

    .line 513
    invoke-virtual {v3}, Lio/dcloud/nineoldandroids/animation/Keyframe;->hasValue()Z

    move-result v4

    if-nez v4, :cond_12

    .line 514
    iget-object v4, p0, Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;->mProperty:Lio/dcloud/nineoldandroids/util/Property;

    invoke-virtual {v4, p1}, Lio/dcloud/nineoldandroids/util/Property;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Lio/dcloud/nineoldandroids/animation/Keyframe;->setValue(Ljava/lang/Object;)V
    :try_end_2e
    .catch Ljava/lang/ClassCastException; {:try_start_7 .. :try_end_2e} :catch_2f

    goto :goto_12

    .line 519
    :catch_2f
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "No such property ("

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;->mProperty:Lio/dcloud/nineoldandroids/util/Property;

    invoke-virtual {v3}, Lio/dcloud/nineoldandroids/util/Property;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 520
    const-string v3, ") on target object "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ". Trying reflection instead"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 519
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 521
    iput-object v1, p0, Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;->mProperty:Lio/dcloud/nineoldandroids/util/Property;

    .line 524
    :cond_55
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 525
    iget-object v3, p0, Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;->mSetter:Ljava/lang/reflect/Method;

    if-nez v3, :cond_60

    .line 526
    invoke-virtual {p0, v0}, Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;->setupSetter(Ljava/lang/Class;)V

    .line 528
    :cond_60
    iget-object v3, p0, Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;->mKeyframeSet:Lio/dcloud/nineoldandroids/animation/KeyframeSet;

    iget-object v3, v3, Lio/dcloud/nineoldandroids/animation/KeyframeSet;->mKeyframes:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_68
    :goto_68
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_6f

    :goto_6e
    return-void

    :cond_6f
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/dcloud/nineoldandroids/animation/Keyframe;

    .line 529
    invoke-virtual {v4}, Lio/dcloud/nineoldandroids/animation/Keyframe;->hasValue()Z

    move-result v5

    if-nez v5, :cond_68

    .line 530
    iget-object v5, p0, Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;->mGetter:Ljava/lang/reflect/Method;

    if-nez v5, :cond_82

    .line 531
    invoke-direct {p0, v0}, Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;->setupGetter(Ljava/lang/Class;)V

    .line 534
    :cond_82
    :try_start_82
    iget-object v5, p0, Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;->mGetter:Ljava/lang/reflect/Method;

    invoke-virtual {v5, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Lio/dcloud/nineoldandroids/animation/Keyframe;->setValue(Ljava/lang/Object;)V
    :try_end_8b
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_82 .. :try_end_8b} :catch_95
    .catch Ljava/lang/IllegalAccessException; {:try_start_82 .. :try_end_8b} :catch_8c

    goto :goto_68

    :catch_8c
    move-exception v4

    .line 538
    invoke-virtual {v4}, Ljava/lang/IllegalAccessException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_68

    :catch_95
    move-exception v4

    .line 536
    invoke-virtual {v4}, Ljava/lang/reflect/InvocationTargetException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_68
.end method

.method setupStartValue(Ljava/lang/Object;)V
    .registers 4

    .line 577
    iget-object v0, p0, Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;->mKeyframeSet:Lio/dcloud/nineoldandroids/animation/KeyframeSet;

    iget-object v0, v0, Lio/dcloud/nineoldandroids/animation/KeyframeSet;->mKeyframes:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/dcloud/nineoldandroids/animation/Keyframe;

    invoke-direct {p0, p1, v0}, Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;->setupValue(Ljava/lang/Object;Lio/dcloud/nineoldandroids/animation/Keyframe;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 728
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;->mPropertyName:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;->mKeyframeSet:Lio/dcloud/nineoldandroids/animation/KeyframeSet;

    invoke-virtual {v1}, Lio/dcloud/nineoldandroids/animation/KeyframeSet;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class io.dcloud.nineoldandroids.animation.PropertyValuesHolder.FloatPropertyValuesHolder (io.dcloud.nineoldandroids.animation.PropertyValuesHolder$FloatPropertyValuesHolder)
.class Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder$FloatPropertyValuesHolder;
.super Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;
.source "PropertyValuesHolder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "FloatPropertyValuesHolder"
.end annotation


# instance fields
.field mFloatAnimatedValue:F

.field mFloatKeyframeSet:Lio/dcloud/nineoldandroids/animation/FloatKeyframeSet;

.field private mFloatProperty:Lio/dcloud/nineoldandroids/util/FloatProperty;


# direct methods
.method public constructor <init>(Lio/dcloud/nineoldandroids/util/Property;Lio/dcloud/nineoldandroids/animation/FloatKeyframeSet;)V
    .registers 4

    const/4 v0, 0x0

    .line 909
    invoke-direct {p0, p1, v0}, Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;-><init>(Lio/dcloud/nineoldandroids/util/Property;Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;)V

    .line 910
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    iput-object v0, p0, Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder$FloatPropertyValuesHolder;->mValueType:Ljava/lang/Class;

    .line 911
    iput-object p2, p0, Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder$FloatPropertyValuesHolder;->mKeyframeSet:Lio/dcloud/nineoldandroids/animation/KeyframeSet;

    .line 912
    iget-object p2, p0, Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder$FloatPropertyValuesHolder;->mKeyframeSet:Lio/dcloud/nineoldandroids/animation/KeyframeSet;

    check-cast p2, Lio/dcloud/nineoldandroids/animation/FloatKeyframeSet;

    iput-object p2, p0, Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder$FloatPropertyValuesHolder;->mFloatKeyframeSet:Lio/dcloud/nineoldandroids/animation/FloatKeyframeSet;

    .line 913
    instance-of p1, p1, Lio/dcloud/nineoldandroids/util/FloatProperty;

    if-eqz p1, :cond_1a

    .line 914
    iget-object p1, p0, Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder$FloatPropertyValuesHolder;->mProperty:Lio/dcloud/nineoldandroids/util/Property;

    check-cast p1, Lio/dcloud/nineoldandroids/util/FloatProperty;

    iput-object p1, p0, Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder$FloatPropertyValuesHolder;->mFloatProperty:Lio/dcloud/nineoldandroids/util/FloatProperty;

    :cond_1a
    return-void
.end method

.method public varargs constructor <init>(Lio/dcloud/nineoldandroids/util/Property;[F)V
    .registers 4

    const/4 v0, 0x0

    .line 924
    invoke-direct {p0, p1, v0}, Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;-><init>(Lio/dcloud/nineoldandroids/util/Property;Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;)V

    .line 925
    invoke-virtual {p0, p2}, Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder$FloatPropertyValuesHolder;->setFloatValues([F)V

    .line 926
    instance-of p1, p1, Lio/dcloud/nineoldandroids/util/FloatProperty;

    if-eqz p1, :cond_11

    .line 927
    iget-object p1, p0, Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder$FloatPropertyValuesHolder;->mProperty:Lio/dcloud/nineoldandroids/util/Property;

    check-cast p1, Lio/dcloud/nineoldandroids/util/FloatProperty;

    iput-object p1, p0, Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder$FloatPropertyValuesHolder;->mFloatProperty:Lio/dcloud/nineoldandroids/util/FloatProperty;

    :cond_11
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lio/dcloud/nineoldandroids/animation/FloatKeyframeSet;)V
    .registers 4

    const/4 v0, 0x0

    .line 902
    invoke-direct {p0, p1, v0}, Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;-><init>(Ljava/lang/String;Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;)V

    .line 903
    sget-object p1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    iput-object p1, p0, Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder$FloatPropertyValuesHolder;->mValueType:Ljava/lang/Class;

    .line 904
    iput-object p2, p0, Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder$FloatPropertyValuesHolder;->mKeyframeSet:Lio/dcloud/nineoldandroids/animation/KeyframeSet;

    .line 905
    iget-object p1, p0, Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder$FloatPropertyValuesHolder;->mKeyframeSet:Lio/dcloud/nineoldandroids/animation/KeyframeSet;

    check-cast p1, Lio/dcloud/nineoldandroids/animation/FloatKeyframeSet;

    iput-object p1, p0, Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder$FloatPropertyValuesHolder;->mFloatKeyframeSet:Lio/dcloud/nineoldandroids/animation/FloatKeyframeSet;

    return-void
.end method

.method public varargs constructor <init>(Ljava/lang/String;[F)V
    .registers 4

    const/4 v0, 0x0

    .line 919
    invoke-direct {p0, p1, v0}, Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;-><init>(Ljava/lang/String;Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;)V

    .line 920
    invoke-virtual {p0, p2}, Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder$FloatPropertyValuesHolder;->setFloatValues([F)V

    return-void
.end method


# virtual methods
.method calculateValue(F)V
    .registers 3

    .line 939
    iget-object v0, p0, Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder$FloatPropertyValuesHolder;->mFloatKeyframeSet:Lio/dcloud/nineoldandroids/animation/FloatKeyframeSet;

    invoke-virtual {v0, p1}, Lio/dcloud/nineoldandroids/animation/FloatKeyframeSet;->getFloatValue(F)F

    move-result p1

    iput p1, p0, Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder$FloatPropertyValuesHolder;->mFloatAnimatedValue:F

    return-void
.end method

.method public clone()Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder$FloatPropertyValuesHolder;
    .registers 3

    .line 949
    invoke-super {p0}, Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;->clone()Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;

    move-result-object v0

    check-cast v0, Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder$FloatPropertyValuesHolder;

    .line 950
    iget-object v1, v0, Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder$FloatPropertyValuesHolder;->mKeyframeSet:Lio/dcloud/nineoldandroids/animation/KeyframeSet;

    check-cast v1, Lio/dcloud/nineoldandroids/animation/FloatKeyframeSet;

    iput-object v1, v0, Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder$FloatPropertyValuesHolder;->mFloatKeyframeSet:Lio/dcloud/nineoldandroids/animation/FloatKeyframeSet;

    return-object v0
.end method

.method public bridge synthetic clone()Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder$FloatPropertyValuesHolder;->clone()Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder$FloatPropertyValuesHolder;

    move-result-object v0

    return-object v0
.end method

.method getAnimatedValue()Ljava/lang/Object;
    .registers 2

    .line 944
    iget v0, p0, Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder$FloatPropertyValuesHolder;->mFloatAnimatedValue:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method setAnimatedValue(Ljava/lang/Object;)V
    .registers 6

    .line 963
    const-string v0, "PropertyValuesHolder"

    iget-object v1, p0, Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder$FloatPropertyValuesHolder;->mFloatProperty:Lio/dcloud/nineoldandroids/util/FloatProperty;

    if-eqz v1, :cond_c

    .line 964
    iget v0, p0, Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder$FloatPropertyValuesHolder;->mFloatAnimatedValue:F

    invoke-virtual {v1, p1, v0}, Lio/dcloud/nineoldandroids/util/FloatProperty;->setValue(Ljava/lang/Object;F)V

    return-void

    .line 967
    :cond_c
    iget-object v1, p0, Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder$FloatPropertyValuesHolder;->mProperty:Lio/dcloud/nineoldandroids/util/Property;

    if-eqz v1, :cond_1c

    .line 968
    iget-object v0, p0, Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder$FloatPropertyValuesHolder;->mProperty:Lio/dcloud/nineoldandroids/util/Property;

    iget v1, p0, Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder$FloatPropertyValuesHolder;->mFloatAnimatedValue:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lio/dcloud/nineoldandroids/util/Property;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    .line 975
    :cond_1c
    iget-object v1, p0, Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder$FloatPropertyValuesHolder;->mSetter:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_44

    .line 977
    :try_start_20
    iget-object v1, p0, Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder$FloatPropertyValuesHolder;->mTmpValueArray:[Ljava/lang/Object;

    iget v2, p0, Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder$FloatPropertyValuesHolder;->mFloatAnimatedValue:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 978
    iget-object v1, p0, Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder$FloatPropertyValuesHolder;->mSetter:Ljava/lang/reflect/Method;

    iget-object v2, p0, Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder$FloatPropertyValuesHolder;->mTmpValueArray:[Ljava/lang/Object;

    invoke-virtual {v1, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_32
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_20 .. :try_end_32} :catch_3c
    .catch Ljava/lang/IllegalAccessException; {:try_start_20 .. :try_end_32} :catch_33

    return-void

    :catch_33
    move-exception p1

    .line 982
    invoke-virtual {p1}, Ljava/lang/IllegalAccessException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_44

    :catch_3c
    move-exception p1

    .line 980
    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_44
    :goto_44
    return-void
.end method

.method public varargs setFloatValues([F)V
    .registers 2

    .line 933
    invoke-super {p0, p1}, Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;->setFloatValues([F)V

    .line 934
    iget-object p1, p0, Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder$FloatPropertyValuesHolder;->mKeyframeSet:Lio/dcloud/nineoldandroids/animation/KeyframeSet;

    check-cast p1, Lio/dcloud/nineoldandroids/animation/FloatKeyframeSet;

    iput-object p1, p0, Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder$FloatPropertyValuesHolder;->mFloatKeyframeSet:Lio/dcloud/nineoldandroids/animation/FloatKeyframeSet;

    return-void
.end method

.method setupSetter(Ljava/lang/Class;)V
    .registers 3

    .line 989
    iget-object v0, p0, Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder$FloatPropertyValuesHolder;->mProperty:Lio/dcloud/nineoldandroids/util/Property;

    if-eqz v0, :cond_5

    return-void

    .line 1021
    :cond_5
    invoke-super {p0, p1}, Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;->setupSetter(Ljava/lang/Class;)V

    return-void
.end method

###### Class io.dcloud.nineoldandroids.animation.PropertyValuesHolder.IntPropertyValuesHolder (io.dcloud.nineoldandroids.animation.PropertyValuesHolder$IntPropertyValuesHolder)
.class Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder$IntPropertyValuesHolder;
.super Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;
.source "PropertyValuesHolder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "IntPropertyValuesHolder"
.end annotation


# instance fields
.field mIntAnimatedValue:I

.field mIntKeyframeSet:Lio/dcloud/nineoldandroids/animation/IntKeyframeSet;

.field private mIntProperty:Lio/dcloud/nineoldandroids/util/IntProperty;


# direct methods
.method public constructor <init>(Lio/dcloud/nineoldandroids/util/Property;Lio/dcloud/nineoldandroids/animation/IntKeyframeSet;)V
    .registers 4

    const/4 v0, 0x0

    .line 773
    invoke-direct {p0, p1, v0}, Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;-><init>(Lio/dcloud/nineoldandroids/util/Property;Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;)V

    .line 774
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    iput-object v0, p0, Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder$IntPropertyValuesHolder;->mValueType:Ljava/lang/Class;

    .line 775
    iput-object p2, p0, Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder$IntPropertyValuesHolder;->mKeyframeSet:Lio/dcloud/nineoldandroids/animation/KeyframeSet;

    .line 776
    iget-object p2, p0, Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder$IntPropertyValuesHolder;->mKeyframeSet:Lio/dcloud/nineoldandroids/animation/KeyframeSet;

    check-cast p2, Lio/dcloud/nineoldandroids/animation/IntKeyframeSet;

    iput-object p2, p0, Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder$IntPropertyValuesHolder;->mIntKeyframeSet:Lio/dcloud/nineoldandroids/animation/IntKeyframeSet;

    .line 777
    instance-of p1, p1, Lio/dcloud/nineoldandroids/util/IntProperty;

    if-eqz p1, :cond_1a

    .line 778
    iget-object p1, p0, Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder$IntPropertyValuesHolder;->mProperty:Lio/dcloud/nineoldandroids/util/Property;

    check-cast p1, Lio/dcloud/nineoldandroids/util/IntProperty;

    iput-object p1, p0, Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder$IntPropertyValuesHolder;->mIntProperty:Lio/dcloud/nineoldandroids/util/IntProperty;

    :cond_1a
    return-void
.end method

.method public varargs constructor <init>(Lio/dcloud/nineoldandroids/util/Property;[I)V
    .registers 4

    const/4 v0, 0x0

    .line 788
    invoke-direct {p0, p1, v0}, Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;-><init>(Lio/dcloud/nineoldandroids/util/Property;Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;)V

    .line 789
    invoke-virtual {p0, p2}, Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder$IntPropertyValuesHolder;->setIntValues([I)V

    .line 790
    instance-of p1, p1, Lio/dcloud/nineoldandroids/util/IntProperty;

    if-eqz p1, :cond_11

    .line 791
    iget-object p1, p0, Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder$IntPropertyValuesHolder;->mProperty:Lio/dcloud/nineoldandroids/util/Property;

    check-cast p1, Lio/dcloud/nineoldandroids/util/IntProperty;

    iput-object p1, p0, Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder$IntPropertyValuesHolder;->mIntProperty:Lio/dcloud/nineoldandroids/util/IntProperty;

    :cond_11
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lio/dcloud/nineoldandroids/animation/IntKeyframeSet;)V
    .registers 4

    const/4 v0, 0x0

    .line 766
    invoke-direct {p0, p1, v0}, Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;-><init>(Ljava/lang/String;Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;)V

    .line 767
    sget-object p1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    iput-object p1, p0, Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder$IntPropertyValuesHolder;->mValueType:Ljava/lang/Class;

    .line 768
    iput-object p2, p0, Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder$IntPropertyValuesHolder;->mKeyframeSet:Lio/dcloud/nineoldandroids/animation/KeyframeSet;

    .line 769
    iget-object p1, p0, Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder$IntPropertyValuesHolder;->mKeyframeSet:Lio/dcloud/nineoldandroids/animation/KeyframeSet;

    check-cast p1, Lio/dcloud/nineoldandroids/animation/IntKeyframeSet;

    iput-object p1, p0, Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder$IntPropertyValuesHolder;->mIntKeyframeSet:Lio/dcloud/nineoldandroids/animation/IntKeyframeSet;

    return-void
.end method

.method public varargs constructor <init>(Ljava/lang/String;[I)V
    .registers 4

    const/4 v0, 0x0

    .line 783
    invoke-direct {p0, p1, v0}, Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;-><init>(Ljava/lang/String;Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;)V

    .line 784
    invoke-virtual {p0, p2}, Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder$IntPropertyValuesHolder;->setIntValues([I)V

    return-void
.end method


# virtual methods
.method calculateValue(F)V
    .registers 3

    .line 803
    iget-object v0, p0, Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder$IntPropertyValuesHolder;->mIntKeyframeSet:Lio/dcloud/nineoldandroids/animation/IntKeyframeSet;

    invoke-virtual {v0, p1}, Lio/dcloud/nineoldandroids/animation/IntKeyframeSet;->getIntValue(F)I

    move-result p1

    iput p1, p0, Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder$IntPropertyValuesHolder;->mIntAnimatedValue:I

    return-void
.end method

.method public clone()Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder$IntPropertyValuesHolder;
    .registers 3

    .line 813
    invoke-super {p0}, Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;->clone()Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;

    move-result-object v0

    check-cast v0, Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder$IntPropertyValuesHolder;

    .line 814
    iget-object v1, v0, Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder$IntPropertyValuesHolder;->mKeyframeSet:Lio/dcloud/nineoldandroids/animation/KeyframeSet;

    check-cast v1, Lio/dcloud/nineoldandroids/animation/IntKeyframeSet;

    iput-object v1, v0, Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder$IntPropertyValuesHolder;->mIntKeyframeSet:Lio/dcloud/nineoldandroids/animation/IntKeyframeSet;

    return-object v0
.end method

.method public bridge synthetic clone()Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder$IntPropertyValuesHolder;->clone()Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder$IntPropertyValuesHolder;

    move-result-object v0

    return-object v0
.end method

.method getAnimatedValue()Ljava/lang/Object;
    .registers 2

    .line 808
    iget v0, p0, Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder$IntPropertyValuesHolder;->mIntAnimatedValue:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method setAnimatedValue(Ljava/lang/Object;)V
    .registers 6

    .line 827
    const-string v0, "PropertyValuesHolder"

    iget-object v1, p0, Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder$IntPropertyValuesHolder;->mIntProperty:Lio/dcloud/nineoldandroids/util/IntProperty;

    if-eqz v1, :cond_c

    .line 828
    iget v0, p0, Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder$IntPropertyValuesHolder;->mIntAnimatedValue:I

    invoke-virtual {v1, p1, v0}, Lio/dcloud/nineoldandroids/util/IntProperty;->setValue(Ljava/lang/Object;I)V

    return-void

    .line 831
    :cond_c
    iget-object v1, p0, Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder$IntPropertyValuesHolder;->mProperty:Lio/dcloud/nineoldandroids/util/Property;

    if-eqz v1, :cond_1c

    .line 832
    iget-object v0, p0, Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder$IntPropertyValuesHolder;->mProperty:Lio/dcloud/nineoldandroids/util/Property;

    iget v1, p0, Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder$IntPropertyValuesHolder;->mIntAnimatedValue:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lio/dcloud/nineoldandroids/util/Property;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    .line 839
    :cond_1c
    iget-object v1, p0, Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder$IntPropertyValuesHolder;->mSetter:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_44

    .line 841
    :try_start_20
    iget-object v1, p0, Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder$IntPropertyValuesHolder;->mTmpValueArray:[Ljava/lang/Object;

    iget v2, p0, Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder$IntPropertyValuesHolder;->mIntAnimatedValue:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 842
    iget-object v1, p0, Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder$IntPropertyValuesHolder;->mSetter:Ljava/lang/reflect/Method;

    iget-object v2, p0, Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder$IntPropertyValuesHolder;->mTmpValueArray:[Ljava/lang/Object;

    invoke-virtual {v1, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_32
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_20 .. :try_end_32} :catch_3c
    .catch Ljava/lang/IllegalAccessException; {:try_start_20 .. :try_end_32} :catch_33

    return-void

    :catch_33
    move-exception p1

    .line 846
    invoke-virtual {p1}, Ljava/lang/IllegalAccessException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_44

    :catch_3c
    move-exception p1

    .line 844
    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_44
    :goto_44
    return-void
.end method

.method public varargs setIntValues([I)V
    .registers 2

    .line 797
    invoke-super {p0, p1}, Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;->setIntValues([I)V

    .line 798
    iget-object p1, p0, Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder$IntPropertyValuesHolder;->mKeyframeSet:Lio/dcloud/nineoldandroids/animation/KeyframeSet;

    check-cast p1, Lio/dcloud/nineoldandroids/animation/IntKeyframeSet;

    iput-object p1, p0, Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder$IntPropertyValuesHolder;->mIntKeyframeSet:Lio/dcloud/nineoldandroids/animation/IntKeyframeSet;

    return-void
.end method

.method setupSetter(Ljava/lang/Class;)V
    .registers 3

    .line 853
    iget-object v0, p0, Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder$IntPropertyValuesHolder;->mProperty:Lio/dcloud/nineoldandroids/util/Property;

    if-eqz v0, :cond_5

    return-void

    .line 885
    :cond_5
    invoke-super {p0, p1}, Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;->setupSetter(Ljava/lang/Class;)V

    return-void
.end method
