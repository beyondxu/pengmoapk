###### Class io.dcloud.p.j3 (io.dcloud.p.j3)
.class Lio/dcloud/p/j3;
.super Ljava/lang/Object;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/dcloud/p/j3$a;
    }
.end annotation


# instance fields
.field a:Lio/dcloud/p/x2;

.field b:Ljava/lang/Class;

.field c:Ljava/lang/Object;

.field d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lio/dcloud/common/DHInterface/IWebview;Lio/dcloud/p/x2;Ljava/lang/Class;Ljava/lang/String;Lorg/json/JSONArray;)V
    .registers 7

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lio/dcloud/p/j3;->c:Ljava/lang/Object;

    .line 7
    iput-object p2, p0, Lio/dcloud/p/j3;->a:Lio/dcloud/p/x2;

    .line 8
    iput-object p3, p0, Lio/dcloud/p/j3;->b:Ljava/lang/Class;

    .line 9
    iput-object p4, p0, Lio/dcloud/p/j3;->d:Ljava/lang/String;

    .line 10
    invoke-static {p1, p2, p3, p5}, Lio/dcloud/p/j3;->a(Lio/dcloud/common/DHInterface/IWebview;Lio/dcloud/p/x2;Ljava/lang/Class;Lorg/json/JSONArray;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lio/dcloud/p/j3;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lio/dcloud/p/x2;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 5

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lio/dcloud/p/j3;->a:Lio/dcloud/p/x2;

    .line 13
    iput-object p2, p0, Lio/dcloud/p/j3;->b:Ljava/lang/Class;

    .line 14
    iput-object p3, p0, Lio/dcloud/p/j3;->d:Ljava/lang/String;

    .line 15
    iput-object p4, p0, Lio/dcloud/p/j3;->c:Ljava/lang/Object;

    return-void
.end method

.method static a(Ljava/lang/Class;)Ljava/lang/Class;
    .registers 2

    .line 181
    const-class v0, Ljava/lang/Integer;

    if-ne p0, v0, :cond_7

    .line 182
    sget-object p0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    return-object p0

    .line 183
    :cond_7
    const-class v0, Ljava/lang/Boolean;

    if-ne p0, v0, :cond_d

    .line 184
    sget-object p0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    :cond_d
    return-object p0
.end method

.method public static final a(Lio/dcloud/common/DHInterface/IWebview;Lio/dcloud/p/x2;Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Lorg/json/JSONArray;)Ljava/lang/Object;
    .registers 6

    .line 41
    invoke-static {p0, p1, p5}, Lio/dcloud/p/j3;->a(Lio/dcloud/common/DHInterface/IWebview;Lio/dcloud/p/x2;Lorg/json/JSONArray;)[Ljava/lang/Object;

    move-result-object p0

    const/4 p1, 0x0

    .line 43
    aget-object p1, p0, p1

    check-cast p1, [Ljava/lang/Class;

    const/4 p5, 0x1

    .line 44
    aget-object p0, p0, p5

    check-cast p0, [Ljava/lang/Object;

    .line 45
    invoke-static {p2, p4, p1, p0}, Lio/dcloud/p/j3;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/reflect/Method;

    move-result-object p1

    .line 47
    invoke-static {p3, p1, p0, p5}, Lio/dcloud/p/j3;->a(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lio/dcloud/common/DHInterface/IWebview;Lio/dcloud/p/x2;Ljava/lang/Class;Lorg/json/JSONArray;)Ljava/lang/Object;
    .registers 8

    if-eqz p3, :cond_3b

    .line 1
    invoke-static {p0, p1, p3}, Lio/dcloud/p/j3;->a(Lio/dcloud/common/DHInterface/IWebview;Lio/dcloud/p/x2;Lorg/json/JSONArray;)[Ljava/lang/Object;

    move-result-object p0

    const/4 p1, 0x0

    .line 2
    aget-object p3, p0, p1

    check-cast p3, [Ljava/lang/Class;

    const/4 v0, 0x1

    .line 3
    aget-object p0, p0, v0

    check-cast p0, [Ljava/lang/Object;

    const/4 v0, 0x0

    .line 7
    :try_start_11
    invoke-virtual {p2, p3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p1
    :try_end_15
    .catch Ljava/lang/NoSuchMethodException; {:try_start_11 .. :try_end_15} :catch_16

    goto :goto_34

    .line 9
    :catch_16
    invoke-virtual {p2}, Ljava/lang/Class;->getConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object p2

    .line 10
    :goto_1a
    array-length v1, p2

    if-ge p1, v1, :cond_33

    .line 11
    aget-object v1, p2, p1

    invoke-virtual {v1}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v1

    .line 12
    array-length v2, v1

    array-length v3, p3

    if-ne v2, v3, :cond_30

    .line 13
    invoke-static {v1, p3, p0}, Lio/dcloud/p/j3;->a([Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_30

    .line 14
    aget-object p1, p2, p1

    goto :goto_34

    :cond_30
    add-int/lit8 p1, p1, 0x1

    goto :goto_1a

    :cond_33
    move-object p1, v0

    :goto_34
    if-eqz p1, :cond_3a

    .line 22
    invoke-virtual {p1, p0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :cond_3a
    return-object v0

    .line 25
    :cond_3b
    invoke-virtual {p2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .registers 4

    const/4 v0, 0x0

    .line 26
    :try_start_1
    invoke-virtual {p0, p2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0

    if-eqz p0, :cond_10

    const/4 p2, 0x1

    .line 28
    invoke-virtual {p0, p2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 29
    invoke-virtual {p0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_f} :catch_11

    return-object p0

    :cond_10
    return-object v0

    :catch_11
    move-exception p0

    .line 32
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-object v0
.end method

.method static a(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;
    .registers 3

    .line 154
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    if-eq p1, v0, :cond_b5

    .line 155
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-eq p1, v0, :cond_a9

    const-class v0, Ljava/lang/Byte;

    if-ne p1, v0, :cond_10

    goto/16 :goto_a9

    .line 157
    :cond_10
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-eq p1, v0, :cond_9c

    const-class v0, Ljava/lang/Integer;

    if-ne p1, v0, :cond_1a

    goto/16 :goto_9c

    .line 159
    :cond_1a
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-eq p1, v0, :cond_8f

    const-class v0, Ljava/lang/Boolean;

    if-ne p1, v0, :cond_24

    goto/16 :goto_8f

    .line 161
    :cond_24
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-eq p1, v0, :cond_82

    const-class v0, Ljava/lang/Short;

    if-ne p1, v0, :cond_2d

    goto :goto_82

    .line 163
    :cond_2d
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-eq p1, v0, :cond_75

    const-class v0, Ljava/lang/Long;

    if-ne p1, v0, :cond_36

    goto :goto_75

    .line 165
    :cond_36
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-eq p1, v0, :cond_68

    const-class v0, Ljava/lang/Double;

    if-ne p1, v0, :cond_3f

    goto :goto_68

    .line 167
    :cond_3f
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-eq p1, v0, :cond_5b

    const-class v0, Ljava/lang/Float;

    if-ne p1, v0, :cond_48

    goto :goto_5b

    .line 169
    :cond_48
    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-eq p1, v0, :cond_56

    const-class v0, Ljava/lang/Character;

    if-ne p1, v0, :cond_51

    goto :goto_56

    .line 172
    :cond_51
    invoke-virtual {p1, p0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 173
    :cond_56
    :goto_56
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 174
    :cond_5b
    :goto_5b
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0

    .line 175
    :cond_68
    :goto_68
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0

    .line 176
    :cond_75
    :goto_75
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    .line 177
    :cond_82
    :goto_82
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S

    move-result p0

    invoke-static {p0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p0

    return-object p0

    .line 178
    :cond_8f
    :goto_8f
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    .line 179
    :cond_9c
    :goto_9c
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    .line 180
    :cond_a9
    :goto_a9
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result p0

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    :cond_b5
    return-object p0
.end method

.method static a(Ljava/lang/Object;Ljava/lang/Class;ILio/dcloud/p/j3$a;)Ljava/lang/Object;
    .registers 9

    .line 127
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_58

    .line 128
    invoke-static {p0}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_10
    if-ge v2, v0, :cond_57

    .line 132
    :try_start_12
    invoke-static {p0, v2}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v4, p2, -0x1

    .line 133
    invoke-static {v3, p1, v4, p3}, Lio/dcloud/p/j3;->a(Ljava/lang/Object;Ljava/lang/Class;ILio/dcloud/p/j3$a;)Ljava/lang/Object;

    move-result-object v3

    if-nez v1, :cond_31

    .line 135
    invoke-virtual {p3, p2, v0}, Lio/dcloud/p/j3$a;->a(II)V

    const/4 v4, 0x1

    if-ne p2, v4, :cond_29

    .line 137
    invoke-static {p1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v1

    goto :goto_31

    .line 139
    :cond_29
    invoke-virtual {p3, p2}, Lio/dcloud/p/j3$a;->a(I)[I

    move-result-object v4

    .line 140
    invoke-static {p1, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    .line 143
    :cond_31
    :goto_31
    invoke-static {v1, v2, v3}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_34} :catch_35

    goto :goto_54

    :catch_35
    move-exception v3

    .line 145
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    .line 146
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "i="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ";mAw="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "test"

    invoke-static {v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_54
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    :cond_57
    return-object v1

    .line 150
    :cond_58
    invoke-static {p0, p1}, Lio/dcloud/p/j3;->a(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static final a(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;Z)Ljava/lang/Object;
    .registers 10

    const/4 v0, 0x0

    .line 48
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v1

    .line 49
    const-class v2, Ljava/lang/Void;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 50
    invoke-virtual {p1, p0, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0

    .line 52
    :cond_11
    invoke-virtual {p1, p0, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_15
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_15} :catch_16

    return-object p0

    :catch_16
    move-exception v1

    if-eqz p3, :cond_5a

    .line 56
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object p3

    if-eqz p3, :cond_59

    if-eqz p2, :cond_59

    .line 57
    array-length v2, p3

    array-length v3, p2

    if-ne v2, v3, :cond_59

    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 58
    :goto_27
    array-length v3, p3

    if-ge v2, v3, :cond_54

    .line 59
    aget-object v3, p2, v2

    if-eqz v3, :cond_51

    .line 60
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    .line 61
    aget-object v4, p3, v2

    .line 62
    invoke-virtual {v3, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_3b

    goto :goto_51

    .line 63
    :cond_3b
    invoke-static {v3}, Lio/dcloud/p/j3;->e(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_50

    invoke-static {v4}, Lio/dcloud/p/j3;->e(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_50

    .line 64
    aget-object v3, p2, v2

    invoke-static {v3, v4}, Lio/dcloud/p/j3;->a(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, p2, v2

    goto :goto_51

    .line 66
    :cond_50
    throw v1

    :cond_51
    :goto_51
    add-int/lit8 v2, v2, 0x1

    goto :goto_27

    .line 70
    :cond_54
    invoke-static {p0, p1, p2, v0}, Lio/dcloud/p/j3;->a(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_59
    return-object v0

    .line 73
    :cond_5a
    throw v1
.end method

.method static a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/reflect/Method;
    .registers 8

    .line 74
    const-string v0, "getClass"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    move-object v1, p0

    :goto_7
    if-nez v0, :cond_13

    .line 75
    const-class v2, Ljava/lang/Object;

    if-eq v1, v2, :cond_e

    goto :goto_13

    .line 86
    :cond_e
    invoke-static {p0, p1, p2, p3}, Lio/dcloud/p/j3;->b(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/reflect/Method;

    move-result-object p0

    return-object p0

    .line 87
    :cond_13
    :goto_13
    :try_start_13
    invoke-virtual {p0, p1, p2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    if-eqz v2, :cond_1e

    const/4 v3, 0x1

    .line 89
    invoke-virtual {v2, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_1d
    .catch Ljava/lang/NoSuchMethodException; {:try_start_13 .. :try_end_1d} :catch_1e

    return-object v2

    .line 90
    :catch_1e
    :cond_1e
    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    goto :goto_7
.end method

.method static a(Ljava/lang/Class;Ljava/lang/Class;)Z
    .registers 2

    .line 151
    invoke-static {p0}, Lio/dcloud/p/j3;->c(Ljava/lang/Class;)Z

    move-result p0

    if-eqz p0, :cond_e

    invoke-static {p1}, Lio/dcloud/p/j3;->c(Ljava/lang/Class;)Z

    move-result p0

    if-eqz p0, :cond_e

    const/4 p0, 0x1

    return p0

    :cond_e
    const/4 p0, 0x0

    return p0
.end method

.method static a(Ljava/lang/Class;[Ljava/lang/Class;I)Z
    .registers 4

    .line 152
    aget-object v0, p1, p2

    invoke-static {p0, v0}, Lio/dcloud/p/j3;->a(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 153
    aput-object p0, p1, p2

    :cond_a
    return v0
.end method

.method static a(Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Object;I)Z
    .registers 10

    .line 108
    aget-object v0, p1, p3

    const/4 v1, 0x1

    if-ne p0, v0, :cond_6

    return v1

    .line 109
    :cond_6
    invoke-static {p0}, Lio/dcloud/p/j3;->b(Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    .line 110
    aget-object v2, p1, p3

    invoke-static {v2}, Lio/dcloud/p/j3;->b(Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x0

    .line 111
    aget-object v4, v0, v3

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 112
    aget-object v0, v0, v1

    check-cast v0, Ljava/lang/Class;

    .line 113
    aget-object v5, v2, v3

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 114
    aget-object v2, v2, v1

    check-cast v2, Ljava/lang/Class;

    if-ne v4, v5, :cond_59

    .line 116
    invoke-static {v0, v2}, Lio/dcloud/p/j3;->a(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v5

    if-nez v5, :cond_47

    .line 117
    invoke-static {v0, v2}, Lio/dcloud/p/j3;->b(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v5

    if-nez v5, :cond_47

    .line 118
    invoke-static {v0, v2}, Lio/dcloud/p/j3;->c(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v5

    if-nez v5, :cond_47

    .line 119
    invoke-virtual {v2, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_59

    .line 123
    :cond_47
    :try_start_47
    aget-object v2, p2, p3

    new-instance v5, Lio/dcloud/p/j3$a;

    invoke-direct {v5, v4}, Lio/dcloud/p/j3$a;-><init>(I)V

    invoke-static {v2, v0, v4, v5}, Lio/dcloud/p/j3;->a(Ljava/lang/Object;Ljava/lang/Class;ILio/dcloud/p/j3$a;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_59

    .line 125
    aput-object p0, p1, p3

    .line 126
    aput-object v0, p2, p3
    :try_end_58
    .catch Ljava/lang/Exception; {:try_start_47 .. :try_end_58} :catch_59

    return v1

    :catch_59
    :cond_59
    return v3
.end method

.method public static a([Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Object;)Z
    .registers 7

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 91
    :goto_3
    array-length v3, p0

    if-ge v1, v3, :cond_66

    .line 93
    aget-object v2, p1, v1

    .line 94
    aget-object v3, p0, v1

    if-eqz v2, :cond_37

    .line 96
    invoke-virtual {v3, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_5d

    .line 97
    invoke-static {v3, p1, v1}, Lio/dcloud/p/j3;->c(Ljava/lang/Class;[Ljava/lang/Class;I)Z

    move-result v2

    if-nez v2, :cond_5d

    .line 98
    invoke-static {v3, p1, v1}, Lio/dcloud/p/j3;->a(Ljava/lang/Class;[Ljava/lang/Class;I)Z

    move-result v2

    if-nez v2, :cond_5d

    .line 99
    invoke-static {v3, p1, v1}, Lio/dcloud/p/j3;->b(Ljava/lang/Class;[Ljava/lang/Class;I)Z

    move-result v2

    if-nez v2, :cond_5d

    .line 100
    invoke-virtual {v3}, Ljava/lang/Class;->isArray()Z

    move-result v2

    if-eqz v2, :cond_5f

    invoke-virtual {v3}, Ljava/lang/Class;->isArray()Z

    move-result v2

    if-eqz v2, :cond_5f

    invoke-static {v3, p1, p2, v1}, Lio/dcloud/p/j3;->a(Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_5f

    goto :goto_5d

    .line 105
    :cond_37
    invoke-static {v3}, Lio/dcloud/p/j3;->e(Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_5f

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 106
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5f

    const-class v2, Ljava/lang/Boolean;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5f

    sget-object v2, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    .line 107
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5f

    const-class v2, Ljava/lang/Character;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5f

    :cond_5d
    :goto_5d
    const/4 v2, 0x1

    goto :goto_60

    :cond_5f
    const/4 v2, 0x0

    :goto_60
    if-nez v2, :cond_63

    return v2

    :cond_63
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_66
    return v2
.end method

.method static a(Lio/dcloud/common/DHInterface/IWebview;Lio/dcloud/p/x2;Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 12

    const/4 v0, 0x2

    .line 185
    new-array v0, v0, [Ljava/lang/Object;

    .line 186
    instance-of v1, p2, Lorg/json/JSONArray;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_a5

    .line 187
    check-cast p2, Lorg/json/JSONArray;

    .line 188
    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_11
    if-ge v5, v1, :cond_9a

    .line 191
    invoke-virtual {p2, v5}, Lorg/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v6

    .line 192
    invoke-static {p0, p1, v6}, Lio/dcloud/p/j3;->a(Lio/dcloud/common/DHInterface/IWebview;Lio/dcloud/p/x2;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    .line 193
    aget-object v7, v6, v3

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    if-nez v5, :cond_31

    .line 195
    aget-object v4, v6, v3

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-static {v4}, Lio/dcloud/p/j3;->a(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v4

    invoke-static {v4, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v4

    .line 197
    :cond_31
    const-class v8, Ljava/lang/Boolean;

    if-ne v7, v8, :cond_41

    .line 198
    aget-object v6, v6, v3

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    invoke-static {v4, v5, v6}, Ljava/lang/reflect/Array;->setBoolean(Ljava/lang/Object;IZ)V

    goto :goto_96

    .line 199
    :cond_41
    const-class v8, Ljava/lang/Byte;

    if-ne v7, v8, :cond_51

    .line 200
    aget-object v6, v6, v3

    check-cast v6, Ljava/lang/Byte;

    invoke-virtual {v6}, Ljava/lang/Byte;->byteValue()B

    move-result v6

    invoke-static {v4, v5, v6}, Ljava/lang/reflect/Array;->setByte(Ljava/lang/Object;IB)V

    goto :goto_96

    .line 201
    :cond_51
    const-class v8, Ljava/lang/Double;

    if-ne v7, v8, :cond_61

    .line 202
    aget-object v6, v6, v3

    check-cast v6, Ljava/lang/Double;

    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Ljava/lang/reflect/Array;->setDouble(Ljava/lang/Object;ID)V

    goto :goto_96

    .line 203
    :cond_61
    const-class v8, Ljava/lang/Float;

    if-ne v7, v8, :cond_71

    .line 204
    aget-object v6, v6, v3

    check-cast v6, Ljava/lang/Float;

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    invoke-static {v4, v5, v6}, Ljava/lang/reflect/Array;->setFloat(Ljava/lang/Object;IF)V

    goto :goto_96

    .line 205
    :cond_71
    const-class v8, Ljava/lang/Integer;

    if-ne v7, v8, :cond_81

    .line 206
    aget-object v6, v6, v3

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v4, v5, v6}, Ljava/lang/reflect/Array;->setInt(Ljava/lang/Object;II)V

    goto :goto_96

    .line 207
    :cond_81
    const-class v8, Ljava/lang/Long;

    if-ne v7, v8, :cond_91

    .line 208
    aget-object v6, v6, v3

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Ljava/lang/reflect/Array;->setLong(Ljava/lang/Object;IJ)V

    goto :goto_96

    .line 210
    :cond_91
    aget-object v6, v6, v3

    invoke-static {v4, v5, v6}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    :goto_96
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_11

    :cond_9a
    if-eqz v4, :cond_14c

    .line 214
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    aput-object p0, v0, v2

    .line 215
    aput-object v4, v0, v3

    return-object v0

    .line 217
    :cond_a5
    instance-of v1, p2, Lorg/json/JSONObject;

    if-eqz v1, :cond_14d

    .line 218
    check-cast p2, Lorg/json/JSONObject;

    .line 219
    const-string v1, "type"

    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 221
    const-string v4, "value"

    invoke-virtual {p2, v4}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 222
    const-string v5, "object"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d0

    .line 223
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 224
    invoke-virtual {p1, p0, p2}, Lio/dcloud/p/x2;->a(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)Lio/dcloud/p/j3;

    move-result-object p0

    .line 225
    iget-object p1, p0, Lio/dcloud/p/j3;->b:Ljava/lang/Class;

    aput-object p1, v0, v2

    .line 226
    iget-object p0, p0, Lio/dcloud/p/j3;->c:Ljava/lang/Object;

    aput-object p0, v0, v3

    return-object v0

    .line 227
    :cond_d0
    const-string v5, "string"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_df

    .line 228
    const-class p0, Ljava/lang/String;

    aput-object p0, v0, v2

    .line 229
    aput-object v4, v0, v3

    return-object v0

    .line 230
    :cond_df
    const-string v5, "number"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_11b

    .line 231
    instance-of p0, v4, Ljava/lang/Integer;

    if-eqz p0, :cond_f4

    .line 232
    sget-object p0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object p0, v0, v2

    .line 233
    check-cast v4, Ljava/lang/Integer;

    aput-object v4, v0, v3

    return-object v0

    .line 234
    :cond_f4
    instance-of p0, v4, Ljava/lang/Double;

    if-eqz p0, :cond_101

    .line 235
    const-class p0, Ljava/lang/Double;

    aput-object p0, v0, v2

    .line 236
    check-cast v4, Ljava/lang/Double;

    aput-object v4, v0, v3

    return-object v0

    .line 237
    :cond_101
    instance-of p0, v4, Ljava/lang/Float;

    if-eqz p0, :cond_10e

    .line 238
    const-class p0, Ljava/lang/Float;

    aput-object p0, v0, v2

    .line 239
    check-cast v4, Ljava/lang/Float;

    aput-object v4, v0, v3

    return-object v0

    .line 240
    :cond_10e
    instance-of p0, v4, Ljava/lang/Long;

    if-eqz p0, :cond_14c

    .line 241
    const-class p0, Ljava/lang/Long;

    aput-object p0, v0, v2

    .line 242
    check-cast v4, Ljava/lang/Long;

    aput-object v4, v0, v3

    return-object v0

    .line 244
    :cond_11b
    const-string v5, "boolean"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12c

    .line 245
    const-class p0, Ljava/lang/Boolean;

    aput-object p0, v0, v2

    .line 246
    check-cast v4, Ljava/lang/Boolean;

    aput-object v4, v0, v3

    return-object v0

    .line 248
    :cond_12c
    const-string v1, "__TYPE__"

    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 249
    const-string v4, "JSBObject"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14c

    .line 250
    const-string v1, "__UUID__"

    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 251
    invoke-virtual {p1, p0, p2}, Lio/dcloud/p/x2;->a(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)Lio/dcloud/p/j3;

    move-result-object p0

    .line 252
    iget-object p1, p0, Lio/dcloud/p/j3;->b:Ljava/lang/Class;

    aput-object p1, v0, v2

    .line 253
    iget-object p0, p0, Lio/dcloud/p/j3;->c:Ljava/lang/Object;

    aput-object p0, v0, v3

    :cond_14c
    return-object v0

    .line 257
    :cond_14d
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    aput-object p0, v0, v2

    .line 258
    aput-object p2, v0, v3

    return-object v0
.end method

.method protected static a(Lio/dcloud/common/DHInterface/IWebview;Lio/dcloud/p/x2;Lorg/json/JSONArray;)[Ljava/lang/Object;
    .registers 12

    const/4 v0, 0x2

    .line 259
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    if-eqz p2, :cond_b

    .line 263
    :try_start_6
    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v2

    goto :goto_c

    :cond_b
    const/4 v2, 0x0

    .line 265
    :goto_c
    new-array v3, v2, [Ljava/lang/Class;

    .line 266
    new-array v4, v2, [Ljava/lang/Object;

    const/4 v5, 0x0

    :goto_11
    const/4 v6, 0x1

    if-ge v5, v2, :cond_29

    .line 268
    invoke-virtual {p2, v5}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    .line 269
    invoke-static {p0, p1, v7}, Lio/dcloud/p/j3;->a(Lio/dcloud/common/DHInterface/IWebview;Lio/dcloud/p/x2;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    .line 270
    aget-object v8, v7, v1

    check-cast v8, Ljava/lang/Class;

    aput-object v8, v3, v5

    .line 271
    aget-object v6, v7, v6

    aput-object v6, v4, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_11

    .line 273
    :cond_29
    aput-object v3, v0, v1

    .line 274
    aput-object v4, v0, v6
    :try_end_2d
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_2d} :catch_2e

    return-object v0

    :catch_2e
    move-exception p0

    .line 276
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-object v0
.end method

.method private static b(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/reflect/Method;
    .registers 9

    .line 10
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x0

    .line 11
    :goto_5
    array-length v2, v0

    if-ge v1, v2, :cond_2d

    .line 12
    aget-object v2, v0, v1

    .line 13
    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2a

    .line 14
    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v3

    array-length v3, v3

    .line 15
    array-length v4, p2

    if-ne v3, v4, :cond_2a

    if-nez v3, :cond_1f

    goto :goto_29

    .line 20
    :cond_1f
    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v3

    .line 21
    invoke-static {v3, p2, p3}, Lio/dcloud/p/j3;->a([Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2a

    :goto_29
    return-object v2

    :cond_2a
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 27
    :cond_2d
    const-class v0, Ljava/lang/Object;

    if-eq p0, v0, :cond_3e

    .line 28
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p0

    invoke-static {p0, p1, p2, p3}, Lio/dcloud/p/j3;->b(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/reflect/Method;

    move-result-object p0
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_39} :catch_3a

    return-object p0

    :catch_3a
    move-exception p0

    .line 31
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_3e
    const/4 p0, 0x0

    return-object p0
.end method

.method public static b(Lio/dcloud/common/DHInterface/IWebview;Lio/dcloud/p/x2;Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Lorg/json/JSONArray;)V
    .registers 6

    .line 1
    invoke-static {p0, p1, p5}, Lio/dcloud/p/j3;->a(Lio/dcloud/common/DHInterface/IWebview;Lio/dcloud/p/x2;Lorg/json/JSONArray;)[Ljava/lang/Object;

    move-result-object p0

    .line 3
    :try_start_4
    invoke-virtual {p2, p4}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1

    if-eqz p1, :cond_18

    const/4 p2, 0x1

    .line 5
    invoke-virtual {p1, p2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 6
    aget-object p0, p0, p2

    check-cast p0, [Ljava/lang/Object;

    const/4 p2, 0x0

    aget-object p0, p0, p2

    invoke-virtual {p1, p3, p0}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_18} :catch_19

    :cond_18
    return-void

    :catch_19
    move-exception p0

    .line 9
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method static b(Ljava/lang/Class;Ljava/lang/Class;)Z
    .registers 2

    .line 75
    invoke-static {p0}, Lio/dcloud/p/j3;->d(Ljava/lang/Class;)Z

    move-result p0

    if-eqz p0, :cond_e

    invoke-static {p1}, Lio/dcloud/p/j3;->d(Ljava/lang/Class;)Z

    move-result p0

    if-eqz p0, :cond_e

    const/4 p0, 0x1

    return p0

    :cond_e
    const/4 p0, 0x0

    return p0
.end method

.method static b(Ljava/lang/Class;[Ljava/lang/Class;I)Z
    .registers 4

    .line 76
    aget-object v0, p1, p2

    invoke-static {p0, v0}, Lio/dcloud/p/j3;->b(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 77
    aput-object p0, p1, p2

    :cond_a
    return v0
.end method

.method static b(Ljava/lang/Class;)[Ljava/lang/Object;
    .registers 8

    .line 32
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 36
    :goto_8
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x1

    if-ge v2, v4, :cond_6a

    .line 37
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v6, 0x5b

    if-ne v4, v6, :cond_1a

    add-int/lit8 v3, v3, 0x1

    goto :goto_4a

    :cond_1a
    const/16 v6, 0x42

    if-ne v4, v6, :cond_21

    .line 42
    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    goto :goto_4a

    :cond_21
    const/16 v6, 0x49

    if-ne v4, v6, :cond_28

    .line 44
    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    goto :goto_4a

    :cond_28
    const/16 v6, 0x46

    if-ne v4, v6, :cond_2f

    .line 46
    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    goto :goto_4a

    :cond_2f
    const/16 v6, 0x44

    if-ne v4, v6, :cond_36

    .line 48
    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    goto :goto_4a

    :cond_36
    const/16 v6, 0x5a

    if-ne v4, v6, :cond_3d

    .line 50
    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    goto :goto_4a

    :cond_3d
    const/16 v6, 0x4a

    if-ne v4, v6, :cond_44

    .line 52
    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    goto :goto_4a

    :cond_44
    const/16 v6, 0x53

    if-ne v4, v6, :cond_4d

    .line 54
    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    :goto_4a
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_4d
    const/16 v6, 0x4c

    if-ne v4, v6, :cond_60

    add-int/2addr v2, v5

    .line 56
    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 58
    :try_start_56
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0
    :try_end_5a
    .catch Ljava/lang/ClassNotFoundException; {:try_start_56 .. :try_end_5a} :catch_5b

    goto :goto_64

    :catch_5b
    move-exception p0

    .line 60
    invoke-virtual {p0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_6a

    .line 65
    :cond_60
    :try_start_60
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0
    :try_end_64
    .catch Ljava/lang/ClassNotFoundException; {:try_start_60 .. :try_end_64} :catch_66

    :goto_64
    move-object v1, p0

    goto :goto_6a

    :catch_66
    move-exception p0

    .line 67
    invoke-virtual {p0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    .line 73
    :cond_6a
    :goto_6a
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v2, 0x2

    .line 74
    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v0

    aput-object v1, v2, v5

    return-object v2
.end method

.method static c(Ljava/lang/Class;)Z
    .registers 2

    .line 4
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    const-class v0, Ljava/lang/Boolean;

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_11

    goto :goto_13

    :cond_11
    const/4 p0, 0x0

    return p0

    :cond_13
    :goto_13
    const/4 p0, 0x1

    return p0
.end method

.method static c(Ljava/lang/Class;Ljava/lang/Class;)Z
    .registers 3

    .line 3
    const-class v0, Ljava/lang/Number;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_10

    const-class v0, Ljava/lang/Number;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_1c

    :cond_10
    invoke-static {p0}, Lio/dcloud/p/j3;->e(Ljava/lang/Class;)Z

    move-result p0

    if-eqz p0, :cond_1e

    invoke-static {p1}, Lio/dcloud/p/j3;->e(Ljava/lang/Class;)Z

    move-result p0

    if-eqz p0, :cond_1e

    :cond_1c
    const/4 p0, 0x1

    return p0

    :cond_1e
    const/4 p0, 0x0

    return p0
.end method

.method static c(Ljava/lang/Class;[Ljava/lang/Class;I)Z
    .registers 4

    .line 1
    aget-object v0, p1, p2

    invoke-static {p0, v0}, Lio/dcloud/p/j3;->c(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 2
    aput-object p0, p1, p2

    :cond_a
    return v0
.end method

.method static d(Ljava/lang/Class;)Z
    .registers 2

    .line 1
    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    const-class v0, Ljava/lang/Character;

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_11

    goto :goto_13

    :cond_11
    const/4 p0, 0x0

    return p0

    :cond_13
    :goto_13
    const/4 p0, 0x1

    return p0
.end method

.method static e(Ljava/lang/Class;)Z
    .registers 2

    .line 1
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_63

    const-class v0, Ljava/lang/Byte;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_63

    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 2
    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_63

    const-class v0, Ljava/lang/Integer;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_63

    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    .line 3
    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_63

    const-class v0, Ljava/lang/Short;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_63

    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    .line 4
    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_63

    const-class v0, Ljava/lang/Float;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_63

    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    .line 5
    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_63

    const-class v0, Ljava/lang/Long;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_63

    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    .line 6
    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_63

    const-class v0, Ljava/lang/Double;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_61

    goto :goto_63

    :cond_61
    const/4 p0, 0x0

    return p0

    :cond_63
    :goto_63
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method a(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Lorg/json/JSONArray;)Ljava/lang/Object;
    .registers 10

    .line 40
    iget-object v1, p0, Lio/dcloud/p/j3;->a:Lio/dcloud/p/x2;

    iget-object v2, p0, Lio/dcloud/p/j3;->b:Ljava/lang/Class;

    iget-object v3, p0, Lio/dcloud/p/j3;->c:Ljava/lang/Object;

    move-object v0, p1

    move-object v4, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lio/dcloud/p/j3;->a(Lio/dcloud/common/DHInterface/IWebview;Lio/dcloud/p/x2;Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Lorg/json/JSONArray;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method a(Lio/dcloud/common/DHInterface/IWebview;Lio/dcloud/p/x2;)Ljava/lang/String;
    .registers 12

    .line 33
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    .line 34
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    .line 35
    iget-object v0, p0, Lio/dcloud/p/j3;->b:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object v7

    const/4 v0, 0x0

    const/4 v8, 0x0

    .line 36
    :goto_12
    array-length v0, v7

    if-ge v8, v0, :cond_22

    .line 37
    iget-object v2, p0, Lio/dcloud/p/j3;->c:Ljava/lang/Object;

    aget-object v3, v7, v8

    const/4 v4, 0x0

    move-object v0, p1

    move-object v1, p2

    invoke-static/range {v0 .. v6}, Lio/dcloud/p/k3;->a(Lio/dcloud/common/DHInterface/IWebview;Lio/dcloud/p/x2;Ljava/lang/Object;Ljava/lang/reflect/Field;ZLjava/lang/StringBuffer;Ljava/lang/StringBuffer;)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_12

    .line 39
    :cond_22
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public a()V
    .registers 2

    const/4 v0, 0x0

    .line 277
    iput-object v0, p0, Lio/dcloud/p/j3;->a:Lio/dcloud/p/x2;

    .line 278
    iput-object v0, p0, Lio/dcloud/p/j3;->b:Ljava/lang/Class;

    .line 279
    iput-object v0, p0, Lio/dcloud/p/j3;->c:Ljava/lang/Object;

    .line 280
    iput-object v0, p0, Lio/dcloud/p/j3;->d:Ljava/lang/String;

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3

    .line 1
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    iget-object v0, p0, Lio/dcloud/p/j3;->c:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_f

    goto :goto_11

    :cond_f
    const/4 p1, 0x0

    return p1

    :cond_11
    :goto_11
    const/4 p1, 0x1

    return p1
.end method

###### Class io.dcloud.p.j3.a (io.dcloud.p.j3$a)
.class Lio/dcloud/p/j3$a;
.super Ljava/lang/Object;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/p/j3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field private a:[I


# direct methods
.method constructor <init>(I)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lio/dcloud/p/j3$a;->a:[I

    .line 4
    new-array p1, p1, [I

    iput-object p1, p0, Lio/dcloud/p/j3$a;->a:[I

    return-void
.end method


# virtual methods
.method a(II)V
    .registers 5

    .line 3
    iget-object v0, p0, Lio/dcloud/p/j3$a;->a:[I

    array-length v1, v0

    if-le p1, v1, :cond_6

    return-void

    .line 4
    :cond_6
    array-length v1, v0

    sub-int/2addr v1, p1

    aput p2, v0, v1

    return-void
.end method

.method a(I)[I
    .registers 4

    .line 1
    iget-object v0, p0, Lio/dcloud/p/j3$a;->a:[I

    array-length v1, v0

    if-le p1, v1, :cond_7

    const/4 p1, 0x0

    return-object p1

    .line 2
    :cond_7
    array-length v1, v0

    sub-int/2addr v1, p1

    array-length p1, v0

    invoke-static {v0, v1, p1}, Ljava/util/Arrays;->copyOfRange([III)[I

    move-result-object p1

    return-object p1
.end method
