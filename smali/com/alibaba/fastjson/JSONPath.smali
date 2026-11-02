###### Class com.alibaba.fastjson.JSONPath (com.alibaba.fastjson.JSONPath)
.class public Lcom/alibaba/fastjson/JSONPath;
.super Ljava/lang/Object;
.source "JSONPath.java"

# interfaces
.implements Lcom/alibaba/fastjson/JSONAware;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/fastjson/JSONPath$FilterGroup;,
        Lcom/alibaba/fastjson/JSONPath$Filter;,
        Lcom/alibaba/fastjson/JSONPath$FilterSegment;,
        Lcom/alibaba/fastjson/JSONPath$Operator;,
        Lcom/alibaba/fastjson/JSONPath$RegMatchSegement;,
        Lcom/alibaba/fastjson/JSONPath$StringOpSegement;,
        Lcom/alibaba/fastjson/JSONPath$RlikeSegement;,
        Lcom/alibaba/fastjson/JSONPath$MatchSegement;,
        Lcom/alibaba/fastjson/JSONPath$RefOpSegement;,
        Lcom/alibaba/fastjson/JSONPath$DoubleOpSegement;,
        Lcom/alibaba/fastjson/JSONPath$PropertyFilter;,
        Lcom/alibaba/fastjson/JSONPath$IntOpSegement;,
        Lcom/alibaba/fastjson/JSONPath$StringInSegement;,
        Lcom/alibaba/fastjson/JSONPath$IntObjInSegement;,
        Lcom/alibaba/fastjson/JSONPath$IntBetweenSegement;,
        Lcom/alibaba/fastjson/JSONPath$IntInSegement;,
        Lcom/alibaba/fastjson/JSONPath$ValueSegment;,
        Lcom/alibaba/fastjson/JSONPath$NullSegement;,
        Lcom/alibaba/fastjson/JSONPath$NotNullSegement;,
        Lcom/alibaba/fastjson/JSONPath$RangeSegment;,
        Lcom/alibaba/fastjson/JSONPath$MultiIndexSegment;,
        Lcom/alibaba/fastjson/JSONPath$ArrayAccessSegment;,
        Lcom/alibaba/fastjson/JSONPath$WildCardSegment;,
        Lcom/alibaba/fastjson/JSONPath$MultiPropertySegment;,
        Lcom/alibaba/fastjson/JSONPath$PropertySegment;,
        Lcom/alibaba/fastjson/JSONPath$KeySetSegment;,
        Lcom/alibaba/fastjson/JSONPath$MinSegment;,
        Lcom/alibaba/fastjson/JSONPath$MaxSegment;,
        Lcom/alibaba/fastjson/JSONPath$FloorSegment;,
        Lcom/alibaba/fastjson/JSONPath$TypeSegment;,
        Lcom/alibaba/fastjson/JSONPath$SizeSegment;,
        Lcom/alibaba/fastjson/JSONPath$Segment;,
        Lcom/alibaba/fastjson/JSONPath$JSONPathParser;,
        Lcom/alibaba/fastjson/JSONPath$Context;
    }
.end annotation


# static fields
.field static final LENGTH:J = -0x15eea8c0e50a614bL

.field static final SIZE:J = 0x4dea9618e618ae3cL

.field private static pathCache:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/String;",
            "Lcom/alibaba/fastjson/JSONPath;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private hasRefSegment:Z

.field private ignoreNullValue:Z

.field private parserConfig:Lcom/alibaba/fastjson/parser/ParserConfig;

.field private final path:Ljava/lang/String;

.field private segments:[Lcom/alibaba/fastjson/JSONPath$Segment;

.field private serializeConfig:Lcom/alibaba/fastjson/serializer/SerializeConfig;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 48
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/high16 v1, 0x3f400000    # 0.75f

    const/4 v2, 0x1

    const/16 v3, 0x80

    invoke-direct {v0, v3, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    sput-object v0, Lcom/alibaba/fastjson/JSONPath;->pathCache:Ljava/util/concurrent/ConcurrentMap;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 5

    .line 60
    invoke-static {}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->getGlobalInstance()Lcom/alibaba/fastjson/serializer/SerializeConfig;

    move-result-object v0

    invoke-static {}, Lcom/alibaba/fastjson/parser/ParserConfig;->getGlobalInstance()Lcom/alibaba/fastjson/parser/ParserConfig;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/alibaba/fastjson/JSONPath;-><init>(Ljava/lang/String;Lcom/alibaba/fastjson/serializer/SerializeConfig;Lcom/alibaba/fastjson/parser/ParserConfig;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/alibaba/fastjson/serializer/SerializeConfig;Lcom/alibaba/fastjson/parser/ParserConfig;Z)V
    .registers 6

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_14

    .line 68
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_14

    .line 72
    iput-object p1, p0, Lcom/alibaba/fastjson/JSONPath;->path:Ljava/lang/String;

    .line 73
    iput-object p2, p0, Lcom/alibaba/fastjson/JSONPath;->serializeConfig:Lcom/alibaba/fastjson/serializer/SerializeConfig;

    .line 74
    iput-object p3, p0, Lcom/alibaba/fastjson/JSONPath;->parserConfig:Lcom/alibaba/fastjson/parser/ParserConfig;

    .line 75
    iput-boolean p4, p0, Lcom/alibaba/fastjson/JSONPath;->ignoreNullValue:Z

    return-void

    .line 69
    :cond_14
    new-instance p1, Lcom/alibaba/fastjson/JSONPathException;

    const-string p2, "json-path can not be null or empty"

    invoke-direct {p1, p2}, Lcom/alibaba/fastjson/JSONPathException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .registers 5

    .line 64
    invoke-static {}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->getGlobalInstance()Lcom/alibaba/fastjson/serializer/SerializeConfig;

    move-result-object v0

    invoke-static {}, Lcom/alibaba/fastjson/parser/ParserConfig;->getGlobalInstance()Lcom/alibaba/fastjson/parser/ParserConfig;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1, p2}, Lcom/alibaba/fastjson/JSONPath;-><init>(Ljava/lang/String;Lcom/alibaba/fastjson/serializer/SerializeConfig;Lcom/alibaba/fastjson/parser/ParserConfig;Z)V

    return-void
.end method

.method public static varargs arrayAdd(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 3

    .line 684
    invoke-static {p1}, Lcom/alibaba/fastjson/JSONPath;->compile(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONPath;

    move-result-object p1

    .line 685
    invoke-virtual {p1, p0, p2}, Lcom/alibaba/fastjson/JSONPath;->arrayAdd(Ljava/lang/Object;[Ljava/lang/Object;)V

    return-void
.end method

.method static compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 5

    .line 2264
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-ne v0, v1, :cond_11

    .line 2265
    check-cast p0, Ljava/lang/Comparable;

    invoke-interface {p0, p1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result p0

    return p0

    .line 2268
    :cond_11
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 2269
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 2271
    const-class v2, Ljava/math/BigDecimal;

    if-ne v0, v2, :cond_60

    .line 2272
    const-class v0, Ljava/lang/Integer;

    if-ne v1, v0, :cond_2f

    .line 2273
    new-instance v0, Ljava/math/BigDecimal;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {v0, p1}, Ljava/math/BigDecimal;-><init>(I)V

    :goto_2c
    move-object p1, v0

    goto/16 :goto_164

    .line 2274
    :cond_2f
    const-class v0, Ljava/lang/Long;

    if-ne v1, v0, :cond_3f

    .line 2275
    new-instance v0, Ljava/math/BigDecimal;

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/math/BigDecimal;-><init>(J)V

    goto :goto_2c

    .line 2276
    :cond_3f
    const-class v0, Ljava/lang/Float;

    if-ne v1, v0, :cond_50

    .line 2277
    new-instance v0, Ljava/math/BigDecimal;

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    float-to-double v1, p1

    invoke-direct {v0, v1, v2}, Ljava/math/BigDecimal;-><init>(D)V

    goto :goto_2c

    .line 2278
    :cond_50
    const-class v0, Ljava/lang/Double;

    if-ne v1, v0, :cond_164

    .line 2279
    new-instance v0, Ljava/math/BigDecimal;

    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/math/BigDecimal;-><init>(D)V

    goto :goto_2c

    .line 2281
    :cond_60
    const-class v2, Ljava/lang/Long;

    if-ne v0, v2, :cond_a7

    .line 2282
    const-class v0, Ljava/lang/Integer;

    if-ne v1, v0, :cond_75

    .line 2283
    new-instance v0, Ljava/lang/Long;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    int-to-long v1, p1

    invoke-direct {v0, v1, v2}, Ljava/lang/Long;-><init>(J)V

    goto :goto_2c

    .line 2284
    :cond_75
    const-class v0, Ljava/math/BigDecimal;

    if-ne v1, v0, :cond_85

    .line 2285
    new-instance v0, Ljava/math/BigDecimal;

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/math/BigDecimal;-><init>(J)V

    goto :goto_bb

    .line 2286
    :cond_85
    const-class v0, Ljava/lang/Float;

    if-ne v1, v0, :cond_96

    .line 2287
    new-instance v0, Ljava/lang/Float;

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    long-to-float p0, v1

    invoke-direct {v0, p0}, Ljava/lang/Float;-><init>(F)V

    goto :goto_bb

    .line 2288
    :cond_96
    const-class v0, Ljava/lang/Double;

    if-ne v1, v0, :cond_164

    .line 2289
    new-instance v0, Ljava/lang/Double;

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    long-to-double v1, v1

    invoke-direct {v0, v1, v2}, Ljava/lang/Double;-><init>(D)V

    goto :goto_bb

    .line 2291
    :cond_a7
    const-class v2, Ljava/lang/Integer;

    if-ne v0, v2, :cond_f0

    .line 2292
    const-class v0, Ljava/lang/Long;

    if-ne v1, v0, :cond_be

    .line 2293
    new-instance v0, Ljava/lang/Long;

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    int-to-long v1, p0

    invoke-direct {v0, v1, v2}, Ljava/lang/Long;-><init>(J)V

    :goto_bb
    move-object p0, v0

    goto/16 :goto_164

    .line 2294
    :cond_be
    const-class v0, Ljava/math/BigDecimal;

    if-ne v1, v0, :cond_ce

    .line 2295
    new-instance v0, Ljava/math/BigDecimal;

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-direct {v0, p0}, Ljava/math/BigDecimal;-><init>(I)V

    goto :goto_bb

    .line 2296
    :cond_ce
    const-class v0, Ljava/lang/Float;

    if-ne v1, v0, :cond_df

    .line 2297
    new-instance v0, Ljava/lang/Float;

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    int-to-float p0, p0

    invoke-direct {v0, p0}, Ljava/lang/Float;-><init>(F)V

    goto :goto_bb

    .line 2298
    :cond_df
    const-class v0, Ljava/lang/Double;

    if-ne v1, v0, :cond_164

    .line 2299
    new-instance v0, Ljava/lang/Double;

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    int-to-double v1, p0

    invoke-direct {v0, v1, v2}, Ljava/lang/Double;-><init>(D)V

    goto :goto_bb

    .line 2301
    :cond_f0
    const-class v2, Ljava/lang/Double;

    if-ne v0, v2, :cond_12a

    .line 2302
    const-class v0, Ljava/lang/Integer;

    if-ne v1, v0, :cond_106

    .line 2303
    new-instance v0, Ljava/lang/Double;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    int-to-double v1, p1

    invoke-direct {v0, v1, v2}, Ljava/lang/Double;-><init>(D)V

    goto/16 :goto_2c

    .line 2304
    :cond_106
    const-class v0, Ljava/lang/Long;

    if-ne v1, v0, :cond_118

    .line 2305
    new-instance v0, Ljava/lang/Double;

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    long-to-double v1, v1

    invoke-direct {v0, v1, v2}, Ljava/lang/Double;-><init>(D)V

    goto/16 :goto_2c

    .line 2306
    :cond_118
    const-class v0, Ljava/lang/Float;

    if-ne v1, v0, :cond_164

    .line 2307
    new-instance v0, Ljava/lang/Double;

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    float-to-double v1, p1

    invoke-direct {v0, v1, v2}, Ljava/lang/Double;-><init>(D)V

    goto/16 :goto_2c

    .line 2309
    :cond_12a
    const-class v2, Ljava/lang/Float;

    if-ne v0, v2, :cond_164

    .line 2310
    const-class v0, Ljava/lang/Integer;

    if-ne v1, v0, :cond_140

    .line 2311
    new-instance v0, Ljava/lang/Float;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    int-to-float p1, p1

    invoke-direct {v0, p1}, Ljava/lang/Float;-><init>(F)V

    goto/16 :goto_2c

    .line 2312
    :cond_140
    const-class v0, Ljava/lang/Long;

    if-ne v1, v0, :cond_152

    .line 2313
    new-instance v0, Ljava/lang/Float;

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    long-to-float p1, v1

    invoke-direct {v0, p1}, Ljava/lang/Float;-><init>(F)V

    goto/16 :goto_2c

    .line 2314
    :cond_152
    const-class v0, Ljava/lang/Double;

    if-ne v1, v0, :cond_164

    .line 2315
    new-instance v0, Ljava/lang/Double;

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    float-to-double v1, p0

    invoke-direct {v0, v1, v2}, Ljava/lang/Double;-><init>(D)V

    goto/16 :goto_bb

    .line 2319
    :cond_164
    :goto_164
    check-cast p0, Ljava/lang/Comparable;

    invoke-interface {p0, p1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public static compile(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONPath;
    .registers 4

    if-eqz p0, :cond_2a

    .line 703
    sget-object v0, Lcom/alibaba/fastjson/JSONPath;->pathCache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/fastjson/JSONPath;

    if-nez v0, :cond_29

    .line 705
    new-instance v0, Lcom/alibaba/fastjson/JSONPath;

    invoke-direct {v0, p0}, Lcom/alibaba/fastjson/JSONPath;-><init>(Ljava/lang/String;)V

    .line 706
    sget-object v1, Lcom/alibaba/fastjson/JSONPath;->pathCache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1}, Ljava/util/concurrent/ConcurrentMap;->size()I

    move-result v1

    const/16 v2, 0x400

    if-ge v1, v2, :cond_29

    .line 707
    sget-object v1, Lcom/alibaba/fastjson/JSONPath;->pathCache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, p0, v0}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 708
    sget-object v0, Lcom/alibaba/fastjson/JSONPath;->pathCache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/alibaba/fastjson/JSONPath;

    return-object p0

    :cond_29
    return-object v0

    .line 700
    :cond_2a
    new-instance p0, Lcom/alibaba/fastjson/JSONPathException;

    const-string v0, "jsonpath can not be null"

    invoke-direct {p0, v0}, Lcom/alibaba/fastjson/JSONPathException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static compile(Ljava/lang/String;Z)Lcom/alibaba/fastjson/JSONPath;
    .registers 4

    if-eqz p0, :cond_2a

    .line 719
    sget-object v0, Lcom/alibaba/fastjson/JSONPath;->pathCache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/fastjson/JSONPath;

    if-nez v0, :cond_29

    .line 721
    new-instance v0, Lcom/alibaba/fastjson/JSONPath;

    invoke-direct {v0, p0, p1}, Lcom/alibaba/fastjson/JSONPath;-><init>(Ljava/lang/String;Z)V

    .line 722
    sget-object p1, Lcom/alibaba/fastjson/JSONPath;->pathCache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {p1}, Ljava/util/concurrent/ConcurrentMap;->size()I

    move-result p1

    const/16 v1, 0x400

    if-ge p1, v1, :cond_29

    .line 723
    sget-object p1, Lcom/alibaba/fastjson/JSONPath;->pathCache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {p1, p0, v0}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 724
    sget-object p1, Lcom/alibaba/fastjson/JSONPath;->pathCache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {p1, p0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/alibaba/fastjson/JSONPath;

    return-object p0

    :cond_29
    return-object v0

    .line 716
    :cond_2a
    new-instance p0, Lcom/alibaba/fastjson/JSONPathException;

    const-string p1, "jsonpath can not be null"

    invoke-direct {p0, p1}, Lcom/alibaba/fastjson/JSONPathException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static contains(Ljava/lang/Object;Ljava/lang/String;)Z
    .registers 2

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return p0

    .line 674
    :cond_4
    invoke-static {p1}, Lcom/alibaba/fastjson/JSONPath;->compile(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONPath;

    move-result-object p1

    .line 675
    invoke-virtual {p1, p0}, Lcom/alibaba/fastjson/JSONPath;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static containsValue(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Z
    .registers 3

    .line 679
    invoke-static {p1}, Lcom/alibaba/fastjson/JSONPath;->compile(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONPath;

    move-result-object p1

    .line 680
    invoke-virtual {p1, p0, p2}, Lcom/alibaba/fastjson/JSONPath;->containsValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method static eq(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 5

    if-ne p0, p1, :cond_4

    const/4 p0, 0x1

    return p0

    :cond_4
    const/4 v0, 0x0

    if-eqz p0, :cond_30

    if-nez p1, :cond_a

    goto :goto_30

    .line 3767
    :cond_a
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-ne v1, v2, :cond_19

    .line 3768
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 3771
    :cond_19
    instance-of v1, p0, Ljava/lang/Number;

    if-eqz v1, :cond_2b

    .line 3772
    instance-of v1, p1, Ljava/lang/Number;

    if-eqz v1, :cond_2a

    .line 3773
    check-cast p0, Ljava/lang/Number;

    check-cast p1, Ljava/lang/Number;

    invoke-static {p0, p1}, Lcom/alibaba/fastjson/JSONPath;->eqNotNull(Ljava/lang/Number;Ljava/lang/Number;)Z

    move-result p0

    return p0

    :cond_2a
    return v0

    .line 3779
    :cond_2b
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_30
    :goto_30
    return v0
.end method

.method static eqNotNull(Ljava/lang/Number;Ljava/lang/Number;)Z
    .registers 9

    .line 3784
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 3785
    invoke-static {v0}, Lcom/alibaba/fastjson/JSONPath;->isInt(Ljava/lang/Class;)Z

    move-result v1

    .line 3787
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 3788
    invoke-static {v2}, Lcom/alibaba/fastjson/JSONPath;->isInt(Ljava/lang/Class;)Z

    move-result v3

    .line 3790
    instance-of v4, p0, Ljava/math/BigDecimal;

    if-eqz v4, :cond_26

    .line 3791
    move-object v4, p0

    check-cast v4, Ljava/math/BigDecimal;

    if-eqz v3, :cond_26

    .line 3794
    invoke-static {p1}, Lcom/alibaba/fastjson/util/TypeUtils;->longExtractValue(Ljava/lang/Number;)J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object p0

    invoke-virtual {v4, p0}, Ljava/math/BigDecimal;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_26
    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v1, :cond_4e

    if-eqz v3, :cond_3a

    .line 3800
    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide p0

    cmp-long v2, v0, p0

    if-nez v2, :cond_39

    return v4

    :cond_39
    return v5

    .line 3803
    :cond_3a
    instance-of v6, p1, Ljava/math/BigInteger;

    if-eqz v6, :cond_4e

    .line 3804
    move-object p1, p0

    check-cast p1, Ljava/math/BigInteger;

    .line 3805
    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p0

    .line 3807
    invoke-virtual {p0, p1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_4e
    if-eqz v3, :cond_63

    .line 3812
    instance-of v6, p0, Ljava/math/BigInteger;

    if-eqz v6, :cond_63

    .line 3813
    check-cast p0, Ljava/math/BigInteger;

    .line 3814
    invoke-static {p1}, Lcom/alibaba/fastjson/util/TypeUtils;->longExtractValue(Ljava/lang/Number;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p1

    .line 3816
    invoke-virtual {p0, p1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 3821
    :cond_63
    invoke-static {v0}, Lcom/alibaba/fastjson/JSONPath;->isDouble(Ljava/lang/Class;)Z

    move-result v0

    .line 3822
    invoke-static {v2}, Lcom/alibaba/fastjson/JSONPath;->isDouble(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v0, :cond_6f

    if-nez v2, :cond_77

    :cond_6f
    if-eqz v0, :cond_73

    if-nez v3, :cond_77

    :cond_73
    if-eqz v2, :cond_84

    if-eqz v1, :cond_84

    .line 3825
    :cond_77
    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide p0

    cmpl-double v2, v0, p0

    if-nez v2, :cond_84

    return v4

    :cond_84
    return v5
.end method

.method public static eval(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .registers 2

    .line 641
    invoke-static {p1}, Lcom/alibaba/fastjson/JSONPath;->compile(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONPath;

    move-result-object p1

    .line 642
    invoke-virtual {p1, p0}, Lcom/alibaba/fastjson/JSONPath;->eval(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static eval(Ljava/lang/Object;Ljava/lang/String;Z)Ljava/lang/Object;
    .registers 3

    .line 646
    invoke-static {p1, p2}, Lcom/alibaba/fastjson/JSONPath;->compile(Ljava/lang/String;Z)Lcom/alibaba/fastjson/JSONPath;

    move-result-object p1

    .line 647
    invoke-virtual {p1, p0}, Lcom/alibaba/fastjson/JSONPath;->eval(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static extract(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .registers 5

    .line 782
    sget-object v0, Lcom/alibaba/fastjson/parser/ParserConfig;->global:Lcom/alibaba/fastjson/parser/ParserConfig;

    sget v1, Lcom/alibaba/fastjson/JSON;->DEFAULT_PARSER_FEATURE:I

    const/4 v2, 0x0

    new-array v2, v2, [Lcom/alibaba/fastjson/parser/Feature;

    invoke-static {p0, p1, v0, v1, v2}, Lcom/alibaba/fastjson/JSONPath;->extract(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/fastjson/parser/ParserConfig;I[Lcom/alibaba/fastjson/parser/Feature;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static varargs extract(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/fastjson/parser/ParserConfig;I[Lcom/alibaba/fastjson/parser/Feature;)Ljava/lang/Object;
    .registers 5

    .line 773
    sget-object p4, Lcom/alibaba/fastjson/parser/Feature;->OrderedField:Lcom/alibaba/fastjson/parser/Feature;

    iget p4, p4, Lcom/alibaba/fastjson/parser/Feature;->mask:I

    or-int/2addr p3, p4

    .line 774
    new-instance p4, Lcom/alibaba/fastjson/parser/DefaultJSONParser;

    invoke-direct {p4, p0, p2, p3}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;-><init>(Ljava/lang/String;Lcom/alibaba/fastjson/parser/ParserConfig;I)V

    .line 775
    invoke-static {p1}, Lcom/alibaba/fastjson/JSONPath;->compile(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONPath;

    move-result-object p0

    .line 776
    invoke-virtual {p0, p4}, Lcom/alibaba/fastjson/JSONPath;->extract(Lcom/alibaba/fastjson/parser/DefaultJSONParser;)Ljava/lang/Object;

    move-result-object p0

    .line 777
    iget-object p1, p4, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {p1}, Lcom/alibaba/fastjson/parser/JSONLexer;->close()V

    return-object p0
.end method

.method protected static isDouble(Ljava/lang/Class;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 3833
    const-class v0, Ljava/lang/Float;

    if-eq p0, v0, :cond_b

    const-class v0, Ljava/lang/Double;

    if-ne p0, v0, :cond_9

    goto :goto_b

    :cond_9
    const/4 p0, 0x0

    return p0

    :cond_b
    :goto_b
    const/4 p0, 0x1

    return p0
.end method

.method protected static isInt(Ljava/lang/Class;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 3837
    const-class v0, Ljava/lang/Byte;

    if-eq p0, v0, :cond_13

    const-class v0, Ljava/lang/Short;

    if-eq p0, v0, :cond_13

    const-class v0, Ljava/lang/Integer;

    if-eq p0, v0, :cond_13

    const-class v0, Ljava/lang/Long;

    if-ne p0, v0, :cond_11

    goto :goto_13

    :cond_11
    const/4 p0, 0x0

    return p0

    :cond_13
    :goto_13
    const/4 p0, 0x1

    return p0
.end method

.method public static keySet(Ljava/lang/Object;Ljava/lang/String;)Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "*>;"
        }
    .end annotation

    .line 664
    invoke-static {p1}, Lcom/alibaba/fastjson/JSONPath;->compile(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONPath;

    move-result-object p1

    .line 665
    invoke-virtual {p1, p0}, Lcom/alibaba/fastjson/JSONPath;->eval(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 666
    invoke-virtual {p1, p0}, Lcom/alibaba/fastjson/JSONPath;->evalKeySet(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public static paths(Ljava/lang/Object;)Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 786
    sget-object v0, Lcom/alibaba/fastjson/serializer/SerializeConfig;->globalInstance:Lcom/alibaba/fastjson/serializer/SerializeConfig;

    invoke-static {p0, v0}, Lcom/alibaba/fastjson/JSONPath;->paths(Ljava/lang/Object;Lcom/alibaba/fastjson/serializer/SerializeConfig;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public static paths(Ljava/lang/Object;Lcom/alibaba/fastjson/serializer/SerializeConfig;)Ljava/util/Map;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lcom/alibaba/fastjson/serializer/SerializeConfig;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 790
    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    .line 791
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 793
    const-string v2, "/"

    invoke-static {v0, v1, v2, p0, p1}, Lcom/alibaba/fastjson/JSONPath;->paths(Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;Lcom/alibaba/fastjson/serializer/SerializeConfig;)V

    return-object v1
.end method

.method private static paths(Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;Lcom/alibaba/fastjson/serializer/SerializeConfig;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Lcom/alibaba/fastjson/serializer/SerializeConfig;",
            ")V"
        }
    .end annotation

    if-nez p3, :cond_4

    goto/16 :goto_15b

    .line 802
    :cond_4
    invoke-interface {p0, p3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_30

    .line 804
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 805
    const-class v1, Ljava/lang/String;

    if-eq v0, v1, :cond_30

    const-class v1, Ljava/lang/Boolean;

    if-eq v0, v1, :cond_30

    const-class v1, Ljava/lang/Character;

    if-eq v0, v1, :cond_30

    const-class v1, Ljava/util/UUID;

    if-eq v0, v1, :cond_30

    .line 809
    invoke-virtual {v0}, Ljava/lang/Class;->isEnum()Z

    move-result v0

    if-nez v0, :cond_30

    instance-of v0, p3, Ljava/lang/Number;

    if-nez v0, :cond_30

    instance-of v0, p3, Ljava/util/Date;

    if-eqz v0, :cond_2f

    goto :goto_30

    :cond_2f
    return-void

    .line 819
    :cond_30
    :goto_30
    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 821
    instance-of v0, p3, Ljava/util/Map;

    const-string v1, "/"

    if-eqz v0, :cond_7d

    .line 822
    check-cast p3, Ljava/util/Map;

    .line 824
    invoke-interface {p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_43
    :goto_43
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_15b

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 825
    check-cast v0, Ljava/util/Map$Entry;

    .line 826
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    .line 828
    instance-of v3, v2, Ljava/lang/String;

    if-eqz v3, :cond_43

    .line 829
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_63

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto :goto_6e

    :cond_63
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_6e
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 830
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {p0, p1, v2, v0, p4}, Lcom/alibaba/fastjson/JSONPath;->paths(Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;Lcom/alibaba/fastjson/serializer/SerializeConfig;)V

    goto :goto_43

    .line 836
    :cond_7d
    instance-of v0, p3, Ljava/util/Collection;

    const/4 v2, 0x0

    if-eqz v0, :cond_b6

    .line 837
    check-cast p3, Ljava/util/Collection;

    .line 840
    invoke-interface {p3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_88
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_15b

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 841
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9e

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto :goto_a9

    :cond_9e
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_a9
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 842
    invoke-static {p0, p1, v3, v0, p4}, Lcom/alibaba/fastjson/JSONPath;->paths(Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;Lcom/alibaba/fastjson/serializer/SerializeConfig;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_88

    .line 849
    :cond_b6
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 851
    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v3

    if-eqz v3, :cond_ee

    .line 852
    invoke-static {p3}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    :goto_c4
    if-ge v2, v0, :cond_15b

    .line 855
    invoke-static {p3, v2}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v3

    .line 857
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d6

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto :goto_e1

    :cond_d6
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_e1
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 858
    invoke-static {p0, p1, v4, v3, p4}, Lcom/alibaba/fastjson/JSONPath;->paths(Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;Lcom/alibaba/fastjson/serializer/SerializeConfig;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_c4

    .line 864
    :cond_ee
    invoke-static {v0}, Lcom/alibaba/fastjson/parser/ParserConfig;->isPrimitive2(Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_15b

    invoke-virtual {v0}, Ljava/lang/Class;->isEnum()Z

    move-result v2

    if-eqz v2, :cond_fb

    goto :goto_15b

    .line 868
    :cond_fb
    invoke-virtual {p4, v0}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->getObjectWriter(Ljava/lang/Class;)Lcom/alibaba/fastjson/serializer/ObjectSerializer;

    move-result-object v0

    .line 869
    instance-of v2, v0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;

    if-eqz v2, :cond_15b

    .line 870
    check-cast v0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;

    .line 873
    :try_start_105
    invoke-virtual {v0, p3}, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->getFieldValuesMap(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p3

    .line 874
    invoke-interface {p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_111
    :goto_111
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_15b

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 875
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 877
    instance-of v3, v2, Ljava/lang/String;

    if-eqz v3, :cond_111

    .line 878
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13d

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_135
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_149

    :cond_13d
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_135

    .line 879
    :goto_149
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {p0, p1, v2, v0, p4}, Lcom/alibaba/fastjson/JSONPath;->paths(Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;Lcom/alibaba/fastjson/serializer/SerializeConfig;)V
    :try_end_150
    .catch Ljava/lang/Exception; {:try_start_105 .. :try_end_150} :catch_151

    goto :goto_111

    :catch_151
    move-exception p0

    .line 883
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo p2, "toJSON error"

    invoke-direct {p1, p2, p0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :cond_15b
    :goto_15b
    return-void
.end method

.method public static read(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .registers 2

    .line 737
    invoke-static {p1}, Lcom/alibaba/fastjson/JSONPath;->compile(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONPath;

    move-result-object p1

    .line 739
    invoke-static {p0}, Lcom/alibaba/fastjson/JSON;->parse(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .line 738
    invoke-virtual {p1, p0}, Lcom/alibaba/fastjson/JSONPath;->eval(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static read(Ljava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Type;",
            ")TT;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 763
    invoke-static {p0, p1, p2, v0}, Lcom/alibaba/fastjson/JSONPath;->read(Ljava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/parser/ParserConfig;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static read(Ljava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/parser/ParserConfig;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Type;",
            "Lcom/alibaba/fastjson/parser/ParserConfig;",
            ")TT;"
        }
    .end annotation

    .line 752
    invoke-static {p1}, Lcom/alibaba/fastjson/JSONPath;->compile(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONPath;

    move-result-object p1

    invoke-static {p0}, Lcom/alibaba/fastjson/JSON;->parse(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p1, p0, p2, p3}, Lcom/alibaba/fastjson/JSONPath;->eval(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/parser/ParserConfig;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static remove(Ljava/lang/Object;Ljava/lang/String;)Z
    .registers 2

    .line 694
    invoke-static {p1}, Lcom/alibaba/fastjson/JSONPath;->compile(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONPath;

    move-result-object p1

    .line 695
    invoke-virtual {p1, p0}, Lcom/alibaba/fastjson/JSONPath;->remove(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static varargs reserveToArray(Ljava/lang/Object;[Ljava/lang/String;)Ljava/lang/Object;
    .registers 6

    .line 4322
    new-instance v0, Lcom/alibaba/fastjson/JSONArray;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONArray;-><init>()V

    if-eqz p1, :cond_22

    .line 4324
    array-length v1, p1

    if-nez v1, :cond_b

    goto :goto_22

    .line 4328
    :cond_b
    array-length v1, p1

    const/4 v2, 0x0

    :goto_d
    if-ge v2, v1, :cond_22

    aget-object v3, p1, v2

    .line 4329
    invoke-static {v3}, Lcom/alibaba/fastjson/JSONPath;->compile(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONPath;

    move-result-object v3

    .line 4330
    invoke-virtual {v3}, Lcom/alibaba/fastjson/JSONPath;->init()V

    .line 4332
    invoke-virtual {v3, p0}, Lcom/alibaba/fastjson/JSONPath;->eval(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 4333
    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/JSONArray;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    :cond_22
    :goto_22
    return-object v0
.end method

.method public static varargs reserveToObject(Ljava/lang/Object;[Ljava/lang/String;)Ljava/lang/Object;
    .registers 9

    if-eqz p1, :cond_31

    .line 4340
    array-length v0, p1

    if-nez v0, :cond_6

    goto :goto_31

    .line 4344
    :cond_6
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONObject;-><init>(Z)V

    .line 4345
    array-length v2, p1

    const/4 v3, 0x0

    :goto_e
    if-ge v3, v2, :cond_30

    aget-object v4, p1, v3

    .line 4346
    invoke-static {v4}, Lcom/alibaba/fastjson/JSONPath;->compile(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONPath;

    move-result-object v4

    .line 4347
    invoke-virtual {v4}, Lcom/alibaba/fastjson/JSONPath;->init()V

    .line 4348
    iget-object v5, v4, Lcom/alibaba/fastjson/JSONPath;->segments:[Lcom/alibaba/fastjson/JSONPath$Segment;

    array-length v6, v5

    sub-int/2addr v6, v1

    aget-object v5, v5, v6

    .line 4349
    instance-of v5, v5, Lcom/alibaba/fastjson/JSONPath$PropertySegment;

    if-eqz v5, :cond_2d

    .line 4350
    invoke-virtual {v4, p0}, Lcom/alibaba/fastjson/JSONPath;->eval(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_2a

    goto :goto_2d

    .line 4354
    :cond_2a
    invoke-virtual {v4, v0, v5}, Lcom/alibaba/fastjson/JSONPath;->set(Ljava/lang/Object;Ljava/lang/Object;)Z

    :cond_2d
    :goto_2d
    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    :cond_30
    return-object v0

    :cond_31
    :goto_31
    return-object p0
.end method

.method public static set(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Z
    .registers 3

    .line 689
    invoke-static {p1}, Lcom/alibaba/fastjson/JSONPath;->compile(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONPath;

    move-result-object p1

    .line 690
    invoke-virtual {p1, p0, p2}, Lcom/alibaba/fastjson/JSONPath;->set(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static size(Ljava/lang/Object;Ljava/lang/String;)I
    .registers 2

    .line 651
    invoke-static {p1}, Lcom/alibaba/fastjson/JSONPath;->compile(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONPath;

    move-result-object p1

    .line 652
    invoke-virtual {p1, p0}, Lcom/alibaba/fastjson/JSONPath;->eval(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 653
    invoke-virtual {p1, p0}, Lcom/alibaba/fastjson/JSONPath;->evalSize(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method


# virtual methods
.method public varargs arrayAdd(Ljava/lang/Object;[Ljava/lang/Object;)V
    .registers 9

    if-eqz p2, :cond_ae

    .line 384
    array-length v0, p2

    if-nez v0, :cond_7

    goto/16 :goto_ae

    :cond_7
    if-nez p1, :cond_b

    goto/16 :goto_ae

    .line 392
    :cond_b
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath;->init()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    move-object v3, p1

    const/4 v2, 0x0

    .line 396
    :goto_12
    iget-object v4, p0, Lcom/alibaba/fastjson/JSONPath;->segments:[Lcom/alibaba/fastjson/JSONPath$Segment;

    array-length v5, v4

    if-ge v2, v5, :cond_26

    .line 397
    array-length v5, v4

    add-int/lit8 v5, v5, -0x1

    if-ne v2, v5, :cond_1d

    move-object v1, v3

    .line 400
    :cond_1d
    aget-object v4, v4, v2

    invoke-interface {v4, p0, p1, v3}, Lcom/alibaba/fastjson/JSONPath$Segment;->eval(Lcom/alibaba/fastjson/JSONPath;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    :cond_26
    if-eqz v3, :cond_97

    .line 409
    instance-of p1, v3, Ljava/util/Collection;

    if-eqz p1, :cond_39

    .line 410
    check-cast v3, Ljava/util/Collection;

    .line 411
    array-length p1, p2

    :goto_2f
    if-ge v0, p1, :cond_ae

    aget-object v1, p2, v0

    .line 412
    invoke-interface {v3, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_2f

    .line 417
    :cond_39
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    .line 420
    invoke-virtual {p1}, Ljava/lang/Class;->isArray()Z

    move-result v2

    if-eqz v2, :cond_82

    .line 421
    invoke-static {v3}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v2

    .line 422
    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p1

    array-length v4, p2

    add-int/2addr v4, v2

    invoke-static {p1, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p1

    .line 424
    invoke-static {v3, v0, p1, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 425
    :goto_54
    array-length v3, p2

    if-ge v0, v3, :cond_61

    add-int v3, v2, v0

    .line 426
    aget-object v4, p2, v0

    invoke-static {p1, v3, v4}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_54

    .line 434
    :cond_61
    iget-object p2, p0, Lcom/alibaba/fastjson/JSONPath;->segments:[Lcom/alibaba/fastjson/JSONPath$Segment;

    array-length v0, p2

    add-int/lit8 v0, v0, -0x1

    aget-object p2, p2, v0

    .line 435
    instance-of v0, p2, Lcom/alibaba/fastjson/JSONPath$PropertySegment;

    if-eqz v0, :cond_72

    .line 436
    check-cast p2, Lcom/alibaba/fastjson/JSONPath$PropertySegment;

    .line 437
    invoke-virtual {p2, p0, v1, p1}, Lcom/alibaba/fastjson/JSONPath$PropertySegment;->setValue(Lcom/alibaba/fastjson/JSONPath;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    .line 441
    :cond_72
    instance-of v0, p2, Lcom/alibaba/fastjson/JSONPath$ArrayAccessSegment;

    if-eqz v0, :cond_7c

    .line 442
    check-cast p2, Lcom/alibaba/fastjson/JSONPath$ArrayAccessSegment;

    invoke-virtual {p2, p0, v1, p1}, Lcom/alibaba/fastjson/JSONPath$ArrayAccessSegment;->setValue(Lcom/alibaba/fastjson/JSONPath;Ljava/lang/Object;Ljava/lang/Object;)Z

    return-void

    .line 446
    :cond_7c
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    .line 431
    :cond_82
    new-instance p2, Lcom/alibaba/fastjson/JSONException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "unsupported array put operation. "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 406
    :cond_97
    new-instance p1, Lcom/alibaba/fastjson/JSONPathException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "value not found in path "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alibaba/fastjson/JSONPath;->path:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/alibaba/fastjson/JSONPathException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_ae
    :goto_ae
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .registers 7

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 235
    :cond_4
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath;->init()V

    move-object v2, p1

    const/4 v1, 0x0

    .line 238
    :goto_9
    iget-object v3, p0, Lcom/alibaba/fastjson/JSONPath;->segments:[Lcom/alibaba/fastjson/JSONPath$Segment;

    array-length v4, v3

    if-ge v1, v4, :cond_2a

    .line 240
    aget-object v3, v3, v1

    invoke-interface {v3, p0, p1, v2}, Lcom/alibaba/fastjson/JSONPath$Segment;->eval(Lcom/alibaba/fastjson/JSONPath;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_17

    return v0

    .line 245
    :cond_17
    sget-object v4, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    if-ne v3, v4, :cond_26

    instance-of v4, v2, Ljava/util/List;

    if-eqz v4, :cond_26

    .line 246
    check-cast v2, Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_26
    add-int/lit8 v1, v1, 0x1

    move-object v2, v3

    goto :goto_9

    :cond_2a
    const/4 p1, 0x1

    return p1
.end method

.method public containsValue(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 6

    .line 255
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/JSONPath;->eval(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const/4 v0, 0x1

    if-ne p1, p2, :cond_8

    return v0

    :cond_8
    const/4 v1, 0x0

    if-nez p1, :cond_c

    return v1

    .line 265
    :cond_c
    instance-of v2, p1, Ljava/lang/Iterable;

    if-eqz v2, :cond_28

    .line 266
    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 267
    :cond_16
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_27

    .line 268
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 269
    invoke-static {v2, p2}, Lcom/alibaba/fastjson/JSONPath;->eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    return v0

    :cond_27
    return v1

    .line 277
    :cond_28
    invoke-static {p1, p2}, Lcom/alibaba/fastjson/JSONPath;->eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method protected deepGetObjects(Ljava/lang/Object;Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 3691
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 3693
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/JSONPath;->getJavaBeanSerializer(Ljava/lang/Class;)Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;

    move-result-object v1

    if-eqz v1, :cond_29

    .line 3698
    :try_start_a
    invoke-virtual {v1, p1}, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->getFieldValues(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 3699
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_11} :catch_12

    goto :goto_40

    :catch_12
    move-exception p1

    .line 3701
    new-instance p2, Lcom/alibaba/fastjson/JSONPathException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "jsonpath error, path "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alibaba/fastjson/JSONPath;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Lcom/alibaba/fastjson/JSONPathException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    .line 3703
    :cond_29
    instance-of v1, p1, Ljava/util/Map;

    if-eqz v1, :cond_37

    .line 3704
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3705
    check-cast p1, Ljava/util/Map;

    .line 3706
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    goto :goto_40

    .line 3707
    :cond_37
    instance-of v1, p1, Ljava/util/Collection;

    if-eqz v1, :cond_3f

    .line 3708
    move-object v1, p1

    check-cast v1, Ljava/util/Collection;

    goto :goto_40

    :cond_3f
    const/4 v1, 0x0

    :goto_40
    if-eqz v1, :cond_62

    .line 3712
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_46
    :goto_46
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_61

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_46

    .line 3713
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lcom/alibaba/fastjson/parser/ParserConfig;->isPrimitive2(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_5d

    goto :goto_46

    .line 3716
    :cond_5d
    invoke-virtual {p0, v0, p2}, Lcom/alibaba/fastjson/JSONPath;->deepGetObjects(Ljava/lang/Object;Ljava/util/List;)V

    goto :goto_46

    :cond_61
    return-void

    .line 3722
    :cond_62
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected deepGetPropertyValues(Ljava/lang/Object;Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 3726
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 3728
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/JSONPath;->getJavaBeanSerializer(Ljava/lang/Class;)Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;

    move-result-object v1

    if-eqz v1, :cond_26

    .line 3733
    :try_start_a
    invoke-virtual {v1, p1}, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->getFieldValues(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_e} :catch_f

    goto :goto_39

    :catch_f
    move-exception p1

    .line 3735
    new-instance p2, Lcom/alibaba/fastjson/JSONPathException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "jsonpath error, path "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alibaba/fastjson/JSONPath;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Lcom/alibaba/fastjson/JSONPathException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    .line 3737
    :cond_26
    instance-of v1, p1, Ljava/util/Map;

    if-eqz v1, :cond_31

    .line 3738
    check-cast p1, Ljava/util/Map;

    .line 3739
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    goto :goto_39

    .line 3740
    :cond_31
    instance-of v1, p1, Ljava/util/Collection;

    if-eqz v1, :cond_38

    .line 3741
    check-cast p1, Ljava/util/Collection;

    goto :goto_39

    :cond_38
    const/4 p1, 0x0

    :goto_39
    if-eqz p1, :cond_5f

    .line 3745
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3f
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5e

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_5a

    .line 3746
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lcom/alibaba/fastjson/parser/ParserConfig;->isPrimitive2(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_56

    goto :goto_5a

    .line 3749
    :cond_56
    invoke-virtual {p0, v0, p2}, Lcom/alibaba/fastjson/JSONPath;->deepGetPropertyValues(Ljava/lang/Object;Ljava/util/List;)V

    goto :goto_3f

    .line 3747
    :cond_5a
    :goto_5a
    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3f

    :cond_5e
    return-void

    .line 3755
    :cond_5f
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected deepScan(Ljava/lang/Object;Ljava/lang/String;Ljava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "getFieldValue error."

    if-nez p1, :cond_6

    goto/16 :goto_fa

    .line 4005
    :cond_6
    instance-of v1, p1, Ljava/util/Map;

    if-eqz v1, :cond_4d

    .line 4006
    check-cast p1, Ljava/util/Map;

    .line 4008
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_14
    :goto_14
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_fa

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 4009
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 4011
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 4012
    instance-of v0, v1, Ljava/util/Collection;

    if-eqz v0, :cond_38

    .line 4013
    check-cast v1, Ljava/util/Collection;

    invoke-interface {p3, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_14

    .line 4015
    :cond_38
    invoke-interface {p3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_14

    :cond_3c
    if-eqz v1, :cond_14

    .line 4020
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/fastjson/parser/ParserConfig;->isPrimitive2(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_49

    goto :goto_14

    .line 4024
    :cond_49
    invoke-virtual {p0, v1, p2, p3}, Lcom/alibaba/fastjson/JSONPath;->deepScan(Ljava/lang/Object;Ljava/lang/String;Ljava/util/List;)V

    goto :goto_14

    .line 4030
    :cond_4d
    instance-of v1, p1, Ljava/util/Collection;

    if-eqz v1, :cond_70

    .line 4031
    check-cast p1, Ljava/util/Collection;

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 4032
    :goto_57
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_fa

    .line 4033
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 4034
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lcom/alibaba/fastjson/parser/ParserConfig;->isPrimitive2(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_6c

    goto :goto_57

    .line 4037
    :cond_6c
    invoke-virtual {p0, v0, p2, p3}, Lcom/alibaba/fastjson/JSONPath;->deepScan(Ljava/lang/Object;Ljava/lang/String;Ljava/util/List;)V

    goto :goto_57

    .line 4042
    :cond_70
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 4044
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/JSONPath;->getJavaBeanSerializer(Ljava/lang/Class;)Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;

    move-result-object v1

    if-eqz v1, :cond_e3

    .line 4047
    :try_start_7a
    invoke-virtual {v1, p2}, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->getFieldSerializer(Ljava/lang/String;)Lcom/alibaba/fastjson/serializer/FieldSerializer;

    move-result-object v2
    :try_end_7e
    .catch Ljava/lang/Exception; {:try_start_7a .. :try_end_7e} :catch_c4

    if-eqz v2, :cond_ae

    .line 4050
    :try_start_80
    invoke-virtual {v2, p1}, Lcom/alibaba/fastjson/serializer/FieldSerializer;->getPropertyValueDirect(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 4051
    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_87
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_80 .. :try_end_87} :catch_9b
    .catch Ljava/lang/IllegalAccessException; {:try_start_80 .. :try_end_87} :catch_88
    .catch Ljava/lang/Exception; {:try_start_80 .. :try_end_87} :catch_c4

    return-void

    :catch_88
    move-exception p1

    .line 4055
    :try_start_89
    new-instance p3, Lcom/alibaba/fastjson/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p3, v0, p1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p3

    :catch_9b
    move-exception p1

    .line 4053
    new-instance p3, Lcom/alibaba/fastjson/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p3, v0, p1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p3

    .line 4059
    :cond_ae
    invoke-virtual {v1, p1}, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->getFieldValues(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 4060
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_b6
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_fa

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 4061
    invoke-virtual {p0, v0, p2, p3}, Lcom/alibaba/fastjson/JSONPath;->deepScan(Ljava/lang/Object;Ljava/lang/String;Ljava/util/List;)V
    :try_end_c3
    .catch Ljava/lang/Exception; {:try_start_89 .. :try_end_c3} :catch_c4

    goto :goto_b6

    :catch_c4
    move-exception p1

    .line 4065
    new-instance p3, Lcom/alibaba/fastjson/JSONPathException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "jsonpath error, path "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alibaba/fastjson/JSONPath;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", segement "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p3, p2, p1}, Lcom/alibaba/fastjson/JSONPathException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p3

    .line 4069
    :cond_e3
    instance-of v0, p1, Ljava/util/List;

    if-eqz v0, :cond_fa

    .line 4070
    check-cast p1, Ljava/util/List;

    const/4 v0, 0x0

    .line 4072
    :goto_ea
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_fa

    .line 4073
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 4074
    invoke-virtual {p0, v1, p2, p3}, Lcom/alibaba/fastjson/JSONPath;->deepScan(Ljava/lang/Object;Ljava/lang/String;Ljava/util/List;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_ea

    :cond_fa
    :goto_fa
    return-void
.end method

.method protected deepSet(Ljava/lang/Object;Ljava/lang/String;JLjava/lang/Object;)V
    .registers 15

    if-nez p1, :cond_4

    goto/16 :goto_a5

    .line 4085
    :cond_4
    instance-of v0, p1, Ljava/util/Map;

    if-eqz v0, :cond_3b

    .line 4086
    check-cast p1, Ljava/util/Map;

    .line 4088
    invoke-interface {p1, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 4089
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4090
    invoke-interface {p1, p2, p5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 4094
    :cond_17
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1f
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_38

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v1, p0

    move-object v3, p2

    move-wide v4, p3

    move-object v6, p5

    .line 4095
    invoke-virtual/range {v1 .. v6}, Lcom/alibaba/fastjson/JSONPath;->deepSet(Ljava/lang/Object;Ljava/lang/String;JLjava/lang/Object;)V

    move-object v8, v6

    move-wide v6, v4

    move-object v5, v3

    move-object v3, v1

    move-object p2, v5

    move-wide p3, v6

    move-object p5, v8

    goto :goto_1f

    :cond_38
    move-object v3, p0

    goto/16 :goto_a5

    :cond_3b
    move-object v3, p0

    move-object v5, p2

    move-wide v6, p3

    move-object v8, p5

    .line 4100
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    .line 4102
    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson/JSONPath;->getJavaBeanDeserializer(Ljava/lang/Class;)Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;

    move-result-object p3

    if-eqz p3, :cond_8d

    .line 4105
    :try_start_49
    invoke-virtual {p3, v5}, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->getFieldDeserializer(Ljava/lang/String;)Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    move-result-object p3

    if-eqz p3, :cond_53

    .line 4107
    invoke-virtual {p3, p1, v8}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->setValue(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    .line 4111
    :cond_53
    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson/JSONPath;->getJavaBeanSerializer(Ljava/lang/Class;)Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;

    move-result-object p2

    .line 4112
    invoke-virtual {p2, p1}, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->getObjectFieldValues(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 4113
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_5f
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_a5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 4114
    invoke-virtual/range {v3 .. v8}, Lcom/alibaba/fastjson/JSONPath;->deepSet(Ljava/lang/Object;Ljava/lang/String;JLjava/lang/Object;)V
    :try_end_6c
    .catch Ljava/lang/Exception; {:try_start_49 .. :try_end_6c} :catch_6d

    goto :goto_5f

    :catch_6d
    move-exception v0

    move-object p1, v0

    .line 4118
    new-instance p2, Lcom/alibaba/fastjson/JSONPathException;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "jsonpath error, path "

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p4, v3, Lcom/alibaba/fastjson/JSONPath;->path:Ljava/lang/String;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, ", segement "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Lcom/alibaba/fastjson/JSONPathException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    .line 4122
    :cond_8d
    instance-of p2, p1, Ljava/util/List;

    if-eqz p2, :cond_a5

    .line 4123
    check-cast p1, Ljava/util/List;

    const/4 p2, 0x0

    .line 4125
    :goto_94
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p3

    if-ge p2, p3, :cond_a5

    .line 4126
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    .line 4127
    invoke-virtual/range {v3 .. v8}, Lcom/alibaba/fastjson/JSONPath;->deepSet(Ljava/lang/Object;Ljava/lang/String;JLjava/lang/Object;)V

    add-int/lit8 p2, p2, 0x1

    move-object v3, p0

    goto :goto_94

    :cond_a5
    :goto_a5
    return-void
.end method

.method public eval(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6

    if-nez p1, :cond_4

    const/4 p1, 0x0

    return-object p1

    .line 116
    :cond_4
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath;->init()V

    const/4 v0, 0x0

    move-object v1, p1

    .line 119
    :goto_9
    iget-object v2, p0, Lcom/alibaba/fastjson/JSONPath;->segments:[Lcom/alibaba/fastjson/JSONPath$Segment;

    array-length v3, v2

    if-ge v0, v3, :cond_17

    .line 120
    aget-object v2, v2, v0

    .line 121
    invoke-interface {v2, p0, p1, v1}, Lcom/alibaba/fastjson/JSONPath$Segment;->eval(Lcom/alibaba/fastjson/JSONPath;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    :cond_17
    return-object v1
.end method

.method public eval(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/reflect/Type;",
            ")TT;"
        }
    .end annotation

    .line 145
    invoke-static {}, Lcom/alibaba/fastjson/parser/ParserConfig;->getGlobalInstance()Lcom/alibaba/fastjson/parser/ParserConfig;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/alibaba/fastjson/JSONPath;->eval(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/parser/ParserConfig;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public eval(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/parser/ParserConfig;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/reflect/Type;",
            "Lcom/alibaba/fastjson/parser/ParserConfig;",
            ")TT;"
        }
    .end annotation

    .line 134
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/JSONPath;->eval(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 135
    invoke-static {p1, p2, p3}, Lcom/alibaba/fastjson/util/TypeUtils;->cast(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/parser/ParserConfig;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method evalKeySet(Ljava/lang/Object;)Ljava/util/Set;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Set<",
            "*>;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return-object v0

    .line 4295
    :cond_4
    instance-of v1, p1, Ljava/util/Map;

    if-eqz v1, :cond_f

    .line 4297
    check-cast p1, Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    return-object p1

    .line 4300
    :cond_f
    instance-of v1, p1, Ljava/util/Collection;

    if-nez v1, :cond_49

    instance-of v1, p1, [Ljava/lang/Object;

    if-nez v1, :cond_49

    .line 4301
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_22

    goto :goto_49

    .line 4305
    :cond_22
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/JSONPath;->getJavaBeanSerializer(Ljava/lang/Class;)Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;

    move-result-object v1

    if-nez v1, :cond_2d

    return-object v0

    .line 4311
    :cond_2d
    :try_start_2d
    invoke-virtual {v1, p1}, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->getFieldNames(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_31} :catch_32

    return-object p1

    :catch_32
    move-exception p1

    .line 4313
    new-instance v0, Lcom/alibaba/fastjson/JSONPathException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "evalKeySet error : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alibaba/fastjson/JSONPath;->path:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/alibaba/fastjson/JSONPathException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_49
    :goto_49
    return-object v0
.end method

.method evalSize(Ljava/lang/Object;)I
    .registers 5

    const/4 v0, -0x1

    if-nez p1, :cond_4

    return v0

    .line 4253
    :cond_4
    instance-of v1, p1, Ljava/util/Collection;

    if-eqz v1, :cond_f

    .line 4254
    check-cast p1, Ljava/util/Collection;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result p1

    return p1

    .line 4257
    :cond_f
    instance-of v1, p1, [Ljava/lang/Object;

    if-eqz v1, :cond_19

    .line 4258
    check-cast p1, [Ljava/lang/Object;

    check-cast p1, [Ljava/lang/Object;

    array-length p1, p1

    return p1

    .line 4261
    :cond_19
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_28

    .line 4262
    invoke-static {p1}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result p1

    return p1

    .line 4265
    :cond_28
    instance-of v1, p1, Ljava/util/Map;

    if-eqz v1, :cond_47

    .line 4268
    check-cast p1, Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    :cond_37
    :goto_37
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_46

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_37

    add-int/lit8 v0, v0, 0x1

    goto :goto_37

    :cond_46
    return v0

    .line 4276
    :cond_47
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/JSONPath;->getJavaBeanSerializer(Ljava/lang/Class;)Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;

    move-result-object v1

    if-nez v1, :cond_52

    return v0

    .line 4283
    :cond_52
    :try_start_52
    invoke-virtual {v1, p1}, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->getSize(Ljava/lang/Object;)I

    move-result p1
    :try_end_56
    .catch Ljava/lang/Exception; {:try_start_52 .. :try_end_56} :catch_57

    return p1

    :catch_57
    move-exception p1

    .line 4285
    new-instance v0, Lcom/alibaba/fastjson/JSONPathException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "evalSize error : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alibaba/fastjson/JSONPath;->path:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/alibaba/fastjson/JSONPathException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public extract(Lcom/alibaba/fastjson/parser/DefaultJSONParser;)Ljava/lang/Object;
    .registers 10

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return-object v0

    .line 153
    :cond_4
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath;->init()V

    .line 155
    iget-boolean v1, p0, Lcom/alibaba/fastjson/JSONPath;->hasRefSegment:Z

    if-eqz v1, :cond_14

    .line 156
    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parse()Ljava/lang/Object;

    move-result-object p1

    .line 157
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/JSONPath;->eval(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 160
    :cond_14
    iget-object v1, p0, Lcom/alibaba/fastjson/JSONPath;->segments:[Lcom/alibaba/fastjson/JSONPath$Segment;

    array-length v2, v1

    if-nez v2, :cond_1e

    .line 161
    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parse()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 164
    :cond_1e
    array-length v2, v1

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    aget-object v1, v1, v2

    .line 165
    instance-of v2, v1, Lcom/alibaba/fastjson/JSONPath$TypeSegment;

    if-nez v2, :cond_ae

    instance-of v2, v1, Lcom/alibaba/fastjson/JSONPath$FloorSegment;

    if-nez v2, :cond_ae

    instance-of v1, v1, Lcom/alibaba/fastjson/JSONPath$MultiIndexSegment;

    if-eqz v1, :cond_31

    goto/16 :goto_ae

    :cond_31
    const/4 v1, 0x0

    move-object v4, v0

    const/4 v2, 0x0

    .line 173
    :goto_34
    iget-object v5, p0, Lcom/alibaba/fastjson/JSONPath;->segments:[Lcom/alibaba/fastjson/JSONPath$Segment;

    array-length v6, v5

    if-ge v2, v6, :cond_ab

    .line 174
    aget-object v6, v5, v2

    .line 175
    array-length v5, v5

    sub-int/2addr v5, v3

    if-ne v2, v5, :cond_41

    const/4 v5, 0x1

    goto :goto_42

    :cond_41
    const/4 v5, 0x0

    :goto_42
    if-eqz v4, :cond_51

    .line 177
    iget-object v7, v4, Lcom/alibaba/fastjson/JSONPath$Context;->object:Ljava/lang/Object;

    if-eqz v7, :cond_51

    .line 178
    iget-object v5, v4, Lcom/alibaba/fastjson/JSONPath$Context;->object:Ljava/lang/Object;

    invoke-interface {v6, p0, v0, v5}, Lcom/alibaba/fastjson/JSONPath$Segment;->eval(Lcom/alibaba/fastjson/JSONPath;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    iput-object v5, v4, Lcom/alibaba/fastjson/JSONPath$Context;->object:Ljava/lang/Object;

    goto :goto_a8

    :cond_51
    if-nez v5, :cond_9e

    .line 185
    iget-object v5, p0, Lcom/alibaba/fastjson/JSONPath;->segments:[Lcom/alibaba/fastjson/JSONPath$Segment;

    add-int/lit8 v7, v2, 0x1

    aget-object v5, v5, v7

    .line 186
    instance-of v7, v6, Lcom/alibaba/fastjson/JSONPath$PropertySegment;

    if-eqz v7, :cond_7f

    move-object v7, v6

    check-cast v7, Lcom/alibaba/fastjson/JSONPath$PropertySegment;

    .line 187
    invoke-static {v7}, Lcom/alibaba/fastjson/JSONPath$PropertySegment;->access$100(Lcom/alibaba/fastjson/JSONPath$PropertySegment;)Z

    move-result v7

    if-eqz v7, :cond_7f

    instance-of v7, v5, Lcom/alibaba/fastjson/JSONPath$ArrayAccessSegment;

    if-nez v7, :cond_9e

    instance-of v7, v5, Lcom/alibaba/fastjson/JSONPath$MultiIndexSegment;

    if-nez v7, :cond_9e

    instance-of v7, v5, Lcom/alibaba/fastjson/JSONPath$MultiPropertySegment;

    if-nez v7, :cond_9e

    instance-of v7, v5, Lcom/alibaba/fastjson/JSONPath$SizeSegment;

    if-nez v7, :cond_9e

    instance-of v7, v5, Lcom/alibaba/fastjson/JSONPath$PropertySegment;

    if-nez v7, :cond_9e

    instance-of v7, v5, Lcom/alibaba/fastjson/JSONPath$FilterSegment;

    if-eqz v7, :cond_7f

    goto :goto_9e

    .line 196
    :cond_7f
    instance-of v7, v5, Lcom/alibaba/fastjson/JSONPath$ArrayAccessSegment;

    if-eqz v7, :cond_8d

    move-object v7, v5

    check-cast v7, Lcom/alibaba/fastjson/JSONPath$ArrayAccessSegment;

    .line 197
    invoke-static {v7}, Lcom/alibaba/fastjson/JSONPath$ArrayAccessSegment;->access$200(Lcom/alibaba/fastjson/JSONPath$ArrayAccessSegment;)I

    move-result v7

    if-gez v7, :cond_8d

    goto :goto_9e

    .line 199
    :cond_8d
    instance-of v5, v5, Lcom/alibaba/fastjson/JSONPath$FilterSegment;

    if-eqz v5, :cond_92

    goto :goto_9e

    .line 201
    :cond_92
    instance-of v5, v6, Lcom/alibaba/fastjson/JSONPath$WildCardSegment;

    if-eqz v5, :cond_97

    goto :goto_9e

    .line 203
    :cond_97
    instance-of v5, v6, Lcom/alibaba/fastjson/JSONPath$MultiIndexSegment;

    if-eqz v5, :cond_9c

    goto :goto_9e

    :cond_9c
    const/4 v5, 0x0

    goto :goto_9f

    :cond_9e
    :goto_9e
    const/4 v5, 0x1

    .line 212
    :goto_9f
    new-instance v7, Lcom/alibaba/fastjson/JSONPath$Context;

    invoke-direct {v7, v4, v5}, Lcom/alibaba/fastjson/JSONPath$Context;-><init>(Lcom/alibaba/fastjson/JSONPath$Context;Z)V

    .line 213
    invoke-interface {v6, p0, p1, v7}, Lcom/alibaba/fastjson/JSONPath$Segment;->extract(Lcom/alibaba/fastjson/JSONPath;Lcom/alibaba/fastjson/parser/DefaultJSONParser;Lcom/alibaba/fastjson/JSONPath$Context;)V

    move-object v4, v7

    :goto_a8
    add-int/lit8 v2, v2, 0x1

    goto :goto_34

    .line 216
    :cond_ab
    iget-object p1, v4, Lcom/alibaba/fastjson/JSONPath$Context;->object:Ljava/lang/Object;

    return-object p1

    .line 169
    :cond_ae
    :goto_ae
    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parse()Ljava/lang/Object;

    move-result-object p1

    .line 168
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/JSONPath;->eval(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method protected getArrayItem(Ljava/lang/Object;I)Ljava/lang/Object;
    .registers 6

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return-object v0

    .line 3543
    :cond_4
    instance-of v1, p1, Ljava/util/List;

    if-eqz v1, :cond_2d

    .line 3544
    check-cast p1, Ljava/util/List;

    if-ltz p2, :cond_18

    .line 3547
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p2, v1, :cond_17

    .line 3548
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_17
    return-object v0

    .line 3552
    :cond_18
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-gt v1, v2, :cond_2c

    .line 3553
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/2addr v0, p2

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_2c
    return-object v0

    .line 3559
    :cond_2d
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_52

    .line 3560
    invoke-static {p1}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v1

    if-ltz p2, :cond_45

    if-ge p2, v1, :cond_44

    .line 3564
    invoke-static {p1, p2}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_44
    return-object v0

    .line 3568
    :cond_45
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    if-gt v2, v1, :cond_51

    add-int/2addr v1, p2

    .line 3569
    invoke-static {p1, v1}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_51
    return-object v0

    .line 3575
    :cond_52
    instance-of v1, p1, Ljava/util/Map;

    if-eqz v1, :cond_6c

    .line 3576
    check-cast p1, Ljava/util/Map;

    .line 3577
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_6b

    .line 3579
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_6b
    return-object v0

    .line 3584
    :cond_6c
    instance-of v1, p1, Ljava/util/Collection;

    if-eqz v1, :cond_88

    .line 3585
    check-cast p1, Ljava/util/Collection;

    .line 3587
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v1, 0x0

    :goto_77
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_87

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    if-ne v1, p2, :cond_84

    return-object v2

    :cond_84
    add-int/lit8 v1, v1, 0x1

    goto :goto_77

    :cond_87
    return-object v0

    :cond_88
    if-nez p2, :cond_8b

    return-object p1

    .line 3600
    :cond_8b
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method protected getJavaBeanDeserializer(Ljava/lang/Class;)Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;"
        }
    .end annotation

    .line 4239
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONPath;->parserConfig:Lcom/alibaba/fastjson/parser/ParserConfig;

    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson/parser/ParserConfig;->getDeserializer(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    move-result-object p1

    .line 4240
    instance-of v0, p1, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;

    if-eqz v0, :cond_d

    .line 4241
    check-cast p1, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;

    return-object p1

    :cond_d
    const/4 p1, 0x0

    return-object p1
.end method

.method protected getJavaBeanSerializer(Ljava/lang/Class;)Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;"
        }
    .end annotation

    .line 4228
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONPath;->serializeConfig:Lcom/alibaba/fastjson/serializer/SerializeConfig;

    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->getObjectWriter(Ljava/lang/Class;)Lcom/alibaba/fastjson/serializer/ObjectSerializer;

    move-result-object p1

    .line 4229
    instance-of v0, p1, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;

    if-eqz v0, :cond_d

    .line 4230
    check-cast p1, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;

    return-object p1

    :cond_d
    const/4 p1, 0x0

    return-object p1
.end method

.method public getPath()Ljava/lang/String;
    .registers 2

    .line 892
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONPath;->path:Ljava/lang/String;

    return-object v0
.end method

.method protected getPropertyValue(Ljava/lang/Object;Ljava/lang/String;J)Ljava/lang/Object;
    .registers 13

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return-object v0

    .line 3848
    :cond_4
    instance-of v1, p1, Ljava/lang/String;

    if-eqz v1, :cond_16

    .line 3850
    :try_start_8
    move-object v1, p1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/alibaba/fastjson/JSONPath;->parserConfig:Lcom/alibaba/fastjson/parser/ParserConfig;

    invoke-static {v1, v2}, Lcom/alibaba/fastjson/JSON;->parse(Ljava/lang/String;Lcom/alibaba/fastjson/parser/ParserConfig;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/fastjson/JSONObject;
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_13} :catch_15

    move-object v3, v1

    goto :goto_17

    :catch_15
    nop

    :cond_16
    move-object v3, p1

    .line 3857
    :goto_17
    nop

    instance-of p1, v3, Ljava/util/Map;

    const-wide v1, -0x15eea8c0e50a614bL    # -8.49505883430448E202

    const-wide v4, 0x4dea9618e618ae3cL    # 2.239892812106928E67

    if-eqz p1, :cond_3f

    .line 3858
    check-cast v3, Ljava/util/Map;

    .line 3859
    invoke-interface {v3, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_3e

    cmp-long p2, v4, p3

    if-eqz p2, :cond_36

    cmp-long p2, v1, p3

    if-nez p2, :cond_3e

    .line 3862
    :cond_36
    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    :cond_3e
    return-object p1

    .line 3868
    :cond_3f
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    .line 3870
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/JSONPath;->getJavaBeanSerializer(Ljava/lang/Class;)Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;

    move-result-object p1

    if-eqz p1, :cond_73

    const/4 v7, 0x0

    move-object v2, p1

    move-object v4, p2

    move-wide v5, p3

    .line 3873
    :try_start_4d
    invoke-virtual/range {v2 .. v7}, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->getFieldValue(Ljava/lang/Object;Ljava/lang/String;JZ)Ljava/lang/Object;

    move-result-object p1
    :try_end_51
    .catch Ljava/lang/Exception; {:try_start_4d .. :try_end_51} :catch_52

    return-object p1

    :catch_52
    move-exception v0

    move-object p1, v4

    move-object p2, v0

    .line 3875
    new-instance p3, Lcom/alibaba/fastjson/JSONPathException;

    new-instance p4, Ljava/lang/StringBuilder;

    const-string v0, "jsonpath error, path "

    invoke-direct {p4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alibaba/fastjson/JSONPath;->path:Ljava/lang/String;

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", segement "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1, p2}, Lcom/alibaba/fastjson/JSONPathException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p3

    :cond_73
    move-object p1, p2

    move-wide p2, p3

    .line 3879
    instance-of p4, v3, Ljava/util/List;

    const/4 v6, 0x0

    if-eqz p4, :cond_de

    .line 3880
    check-cast v3, Ljava/util/List;

    cmp-long p4, v4, p2

    if-eqz p4, :cond_d5

    cmp-long p4, v1, p2

    if-nez p4, :cond_85

    goto :goto_d5

    .line 3888
    :cond_85
    :goto_85
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result p4

    if-ge v6, p4, :cond_d0

    .line 3889
    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p4

    if-ne p4, v3, :cond_a0

    if-nez v0, :cond_9c

    .line 3894
    new-instance v0, Lcom/alibaba/fastjson/JSONArray;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONArray;-><init>(I)V

    .line 3896
    :cond_9c
    invoke-interface {v0, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_cd

    .line 3900
    :cond_a0
    invoke-virtual {p0, p4, p1, p2, p3}, Lcom/alibaba/fastjson/JSONPath;->getPropertyValue(Ljava/lang/Object;Ljava/lang/String;J)Ljava/lang/Object;

    move-result-object p4

    .line 3901
    instance-of v1, p4, Ljava/util/Collection;

    if-eqz v1, :cond_b9

    .line 3902
    check-cast p4, Ljava/util/Collection;

    if-nez v0, :cond_b5

    .line 3904
    new-instance v0, Lcom/alibaba/fastjson/JSONArray;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONArray;-><init>(I)V

    .line 3906
    :cond_b5
    invoke-interface {v0, p4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_cd

    :cond_b9
    if-nez p4, :cond_bf

    .line 3907
    iget-boolean v1, p0, Lcom/alibaba/fastjson/JSONPath;->ignoreNullValue:Z

    if-nez v1, :cond_cd

    :cond_bf
    if-nez v0, :cond_ca

    .line 3909
    new-instance v0, Lcom/alibaba/fastjson/JSONArray;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONArray;-><init>(I)V

    .line 3911
    :cond_ca
    invoke-interface {v0, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_cd
    :goto_cd
    add-int/lit8 v6, v6, 0x1

    goto :goto_85

    :cond_d0
    if-nez v0, :cond_d4

    .line 3916
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    :cond_d4
    return-object v0

    .line 3883
    :cond_d5
    :goto_d5
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 3922
    :cond_de
    instance-of p4, v3, [Ljava/lang/Object;

    if-eqz p4, :cond_121

    .line 3923
    check-cast v3, [Ljava/lang/Object;

    check-cast v3, [Ljava/lang/Object;

    cmp-long p4, v4, p2

    if-eqz p4, :cond_11b

    cmp-long p4, v1, p2

    if-nez p4, :cond_ef

    goto :goto_11b

    .line 3929
    :cond_ef
    new-instance p4, Lcom/alibaba/fastjson/JSONArray;

    array-length v0, v3

    invoke-direct {p4, v0}, Lcom/alibaba/fastjson/JSONArray;-><init>(I)V

    .line 3931
    :goto_f5
    array-length v0, v3

    if-ge v6, v0, :cond_11a

    .line 3932
    aget-object v0, v3, v6

    if-ne v0, v3, :cond_100

    .line 3936
    invoke-interface {p4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_117

    .line 3940
    :cond_100
    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/alibaba/fastjson/JSONPath;->getPropertyValue(Ljava/lang/Object;Ljava/lang/String;J)Ljava/lang/Object;

    move-result-object v0

    .line 3941
    instance-of v1, v0, Ljava/util/Collection;

    if-eqz v1, :cond_10e

    .line 3942
    check-cast v0, Ljava/util/Collection;

    .line 3943
    invoke-interface {p4, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_117

    :cond_10e
    if-nez v0, :cond_114

    .line 3944
    iget-boolean v1, p0, Lcom/alibaba/fastjson/JSONPath;->ignoreNullValue:Z

    if-nez v1, :cond_117

    .line 3945
    :cond_114
    invoke-interface {p4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_117
    :goto_117
    add-int/lit8 v6, v6, 0x1

    goto :goto_f5

    :cond_11a
    return-object p4

    .line 3926
    :cond_11b
    :goto_11b
    array-length p1, v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 3952
    :cond_121
    instance-of p1, v3, Ljava/lang/Enum;

    if-eqz p1, :cond_148

    .line 3956
    move-object p1, v3

    check-cast p1, Ljava/lang/Enum;

    const-wide v1, -0x3b435245719ce47aL    # -1.3543099103600943E23

    cmp-long p4, v1, p2

    if-nez p4, :cond_136

    .line 3958
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_136
    const-wide v1, -0xe14383dfcdd03deL    # -5.788733405278088E240

    cmp-long p4, v1, p2

    if-nez p4, :cond_148

    .line 3962
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 3966
    :cond_148
    instance-of p1, v3, Ljava/util/Calendar;

    if-eqz p1, :cond_1c3

    .line 3974
    check-cast v3, Ljava/util/Calendar;

    const-wide v1, 0x7c64634977425edcL

    cmp-long p1, v1, p2

    if-nez p1, :cond_161

    const/4 p1, 0x1

    .line 3976
    invoke-virtual {v3, p1}, Ljava/util/Calendar;->get(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_161
    const-wide v1, -0xb423c6c9050a95bL

    cmp-long p1, v1, p2

    if-nez p1, :cond_174

    const/4 p1, 0x2

    .line 3979
    invoke-virtual {v3, p1}, Ljava/util/Calendar;->get(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_174
    const-wide v1, -0x3572c6e70ba870e3L    # -1.3667045267075351E51

    cmp-long p1, v1, p2

    if-nez p1, :cond_187

    const/4 p1, 0x5

    .line 3982
    invoke-virtual {v3, p1}, Ljava/util/Calendar;->get(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_187
    const-wide v1, 0x407efecc7eb5764fL    # 495.924925526463

    cmp-long p1, v1, p2

    if-nez p1, :cond_19b

    const/16 p1, 0xb

    .line 3985
    invoke-virtual {v3, p1}, Ljava/util/Calendar;->get(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_19b
    const-wide v1, 0x5bb2f9bdf2fad1e9L    # 5.387565597711505E133

    cmp-long p1, v1, p2

    if-nez p1, :cond_1af

    const/16 p1, 0xc

    .line 3988
    invoke-virtual {v3, p1}, Ljava/util/Calendar;->get(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_1af
    const-wide v1, -0x5b667a10b311df43L

    cmp-long p1, v1, p2

    if-nez p1, :cond_1c3

    const/16 p1, 0xd

    .line 3991
    invoke-virtual {v3, p1}, Ljava/util/Calendar;->get(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_1c3
    return-object v0
.end method

.method protected getPropertyValues(Ljava/lang/Object;)Ljava/util/Collection;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Collection<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_4

    const/4 p1, 0x0

    return-object p1

    .line 3666
    :cond_4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 3668
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/JSONPath;->getJavaBeanSerializer(Ljava/lang/Class;)Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;

    move-result-object v0

    if-eqz v0, :cond_2a

    .line 3672
    :try_start_e
    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->getFieldValues(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_12} :catch_13

    return-object p1

    :catch_13
    move-exception p1

    .line 3674
    new-instance v0, Lcom/alibaba/fastjson/JSONPathException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "jsonpath error, path "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alibaba/fastjson/JSONPath;->path:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/alibaba/fastjson/JSONPathException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 3678
    :cond_2a
    instance-of v0, p1, Ljava/util/Map;

    if-eqz v0, :cond_35

    .line 3679
    check-cast p1, Ljava/util/Map;

    .line 3680
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    return-object p1

    .line 3683
    :cond_35
    instance-of v0, p1, Ljava/util/Collection;

    if-eqz v0, :cond_3c

    .line 3684
    check-cast p1, Ljava/util/Collection;

    return-object p1

    .line 3687
    :cond_3c
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method protected init()V
    .registers 4

    .line 79
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONPath;->segments:[Lcom/alibaba/fastjson/JSONPath$Segment;

    if-eqz v0, :cond_5

    return-void

    .line 83
    :cond_5
    const-string v0, "*"

    iget-object v1, p0, Lcom/alibaba/fastjson/JSONPath;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    const/4 v0, 0x1

    .line 84
    new-array v0, v0, [Lcom/alibaba/fastjson/JSONPath$Segment;

    const/4 v1, 0x0

    sget-object v2, Lcom/alibaba/fastjson/JSONPath$WildCardSegment;->instance:Lcom/alibaba/fastjson/JSONPath$WildCardSegment;

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/alibaba/fastjson/JSONPath;->segments:[Lcom/alibaba/fastjson/JSONPath$Segment;

    return-void

    .line 86
    :cond_1a
    new-instance v0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;

    iget-object v1, p0, Lcom/alibaba/fastjson/JSONPath;->path:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;-><init>(Ljava/lang/String;)V

    .line 87
    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->explain()[Lcom/alibaba/fastjson/JSONPath$Segment;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/fastjson/JSONPath;->segments:[Lcom/alibaba/fastjson/JSONPath$Segment;

    .line 88
    invoke-static {v0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->access$000(Lcom/alibaba/fastjson/JSONPath$JSONPathParser;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alibaba/fastjson/JSONPath;->hasRefSegment:Z

    return-void
.end method

.method public isRef()Z
    .registers 5

    const/4 v0, 0x0

    .line 94
    :try_start_1
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath;->init()V

    const/4 v1, 0x0

    .line 95
    :goto_5
    iget-object v2, p0, Lcom/alibaba/fastjson/JSONPath;->segments:[Lcom/alibaba/fastjson/JSONPath$Segment;

    array-length v3, v2

    if-ge v1, v3, :cond_1d

    .line 96
    aget-object v2, v2, v1

    .line 97
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 98
    const-class v3, Lcom/alibaba/fastjson/JSONPath$ArrayAccessSegment;

    if-eq v2, v3, :cond_1a

    const-class v3, Lcom/alibaba/fastjson/JSONPath$PropertySegment;
    :try_end_16
    .catch Lcom/alibaba/fastjson/JSONPathException; {:try_start_1 .. :try_end_16} :catch_1e

    if-ne v2, v3, :cond_19

    goto :goto_1a

    :cond_19
    return v0

    :cond_1a
    :goto_1a
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_1d
    const/4 v0, 0x1

    :catch_1e
    return v0
.end method

.method public keySet(Ljava/lang/Object;)Ljava/util/Set;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Set<",
            "*>;"
        }
    .end annotation

    if-nez p1, :cond_4

    const/4 p1, 0x0

    return-object p1

    .line 306
    :cond_4
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath;->init()V

    const/4 v0, 0x0

    move-object v1, p1

    .line 309
    :goto_9
    iget-object v2, p0, Lcom/alibaba/fastjson/JSONPath;->segments:[Lcom/alibaba/fastjson/JSONPath$Segment;

    array-length v3, v2

    if-ge v0, v3, :cond_17

    .line 310
    aget-object v2, v2, v0

    invoke-interface {v2, p0, p1, v1}, Lcom/alibaba/fastjson/JSONPath$Segment;->eval(Lcom/alibaba/fastjson/JSONPath;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 313
    :cond_17
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/JSONPath;->evalKeySet(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public patchAdd(Ljava/lang/Object;Ljava/lang/Object;Z)V
    .registers 10

    if-nez p1, :cond_3

    return-void

    .line 321
    :cond_3
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath;->init()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    move-object v2, v1

    const/4 v3, 0x0

    move-object v1, p1

    .line 325
    :goto_b
    iget-object v4, p0, Lcom/alibaba/fastjson/JSONPath;->segments:[Lcom/alibaba/fastjson/JSONPath$Segment;

    array-length v5, v4

    if-ge v3, v5, :cond_32

    .line 327
    aget-object v2, v4, v3

    .line 328
    invoke-interface {v2, p0, p1, v1}, Lcom/alibaba/fastjson/JSONPath$Segment;->eval(Lcom/alibaba/fastjson/JSONPath;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_2d

    .line 329
    iget-object v5, p0, Lcom/alibaba/fastjson/JSONPath;->segments:[Lcom/alibaba/fastjson/JSONPath$Segment;

    array-length v5, v5

    add-int/lit8 v5, v5, -0x1

    if-eq v3, v5, :cond_2d

    .line 330
    instance-of v5, v2, Lcom/alibaba/fastjson/JSONPath$PropertySegment;

    if-eqz v5, :cond_2d

    .line 331
    new-instance v4, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v4}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 332
    check-cast v2, Lcom/alibaba/fastjson/JSONPath$PropertySegment;

    invoke-virtual {v2, p0, v1, v4}, Lcom/alibaba/fastjson/JSONPath$PropertySegment;->setValue(Lcom/alibaba/fastjson/JSONPath;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2d
    add-int/lit8 v3, v3, 0x1

    move-object v2, v1

    move-object v1, v4

    goto :goto_b

    :cond_32
    if-nez p3, :cond_3e

    .line 339
    instance-of p1, v1, Ljava/util/Collection;

    if-eqz p1, :cond_3e

    .line 340
    check-cast v1, Ljava/util/Collection;

    .line 341
    invoke-interface {v1, p2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    return-void

    :cond_3e
    if-eqz v1, :cond_80

    if-nez p3, :cond_80

    .line 348
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    .line 350
    invoke-virtual {p1}, Ljava/lang/Class;->isArray()Z

    move-result p3

    if-eqz p3, :cond_62

    .line 351
    invoke-static {v1}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result p3

    .line 352
    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p1

    add-int/lit8 v3, p3, 0x1

    invoke-static {p1, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p1

    .line 354
    invoke-static {v1, v0, p1, v0, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 355
    invoke-static {p1, p3, p2}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    move-object p2, p1

    goto :goto_80

    .line 358
    :cond_62
    const-class p3, Ljava/util/Map;

    invoke-virtual {p3, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p3

    if-eqz p3, :cond_6b

    goto :goto_80

    .line 361
    :cond_6b
    new-instance p2, Lcom/alibaba/fastjson/JSONException;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "unsupported array put operation. "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 367
    :cond_80
    :goto_80
    iget-object p1, p0, Lcom/alibaba/fastjson/JSONPath;->segments:[Lcom/alibaba/fastjson/JSONPath$Segment;

    array-length p3, p1

    add-int/lit8 p3, p3, -0x1

    aget-object p1, p1, p3

    .line 368
    instance-of p3, p1, Lcom/alibaba/fastjson/JSONPath$PropertySegment;

    if-eqz p3, :cond_91

    .line 369
    check-cast p1, Lcom/alibaba/fastjson/JSONPath$PropertySegment;

    .line 370
    invoke-virtual {p1, p0, v2, p2}, Lcom/alibaba/fastjson/JSONPath$PropertySegment;->setValue(Lcom/alibaba/fastjson/JSONPath;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    .line 374
    :cond_91
    instance-of p3, p1, Lcom/alibaba/fastjson/JSONPath$ArrayAccessSegment;

    if-eqz p3, :cond_9b

    .line 375
    check-cast p1, Lcom/alibaba/fastjson/JSONPath$ArrayAccessSegment;

    invoke-virtual {p1, p0, v2, p2}, Lcom/alibaba/fastjson/JSONPath$ArrayAccessSegment;->setValue(Lcom/alibaba/fastjson/JSONPath;Ljava/lang/Object;Ljava/lang/Object;)Z

    return-void

    .line 379
    :cond_9b
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public remove(Ljava/lang/Object;)Z
    .registers 12

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 454
    :cond_4
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath;->init()V

    .line 459
    iget-object v1, p0, Lcom/alibaba/fastjson/JSONPath;->segments:[Lcom/alibaba/fastjson/JSONPath$Segment;

    array-length v2, v1

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    aget-object v1, v1, v2

    move-object v4, p1

    const/4 v2, 0x0

    .line 460
    :goto_10
    iget-object v5, p0, Lcom/alibaba/fastjson/JSONPath;->segments:[Lcom/alibaba/fastjson/JSONPath$Segment;

    array-length v6, v5

    if-ge v2, v6, :cond_8d

    .line 461
    array-length v6, v5

    sub-int/2addr v6, v3

    if-ne v2, v6, :cond_1b

    goto/16 :goto_8e

    .line 465
    :cond_1b
    aget-object v6, v5, v2

    .line 466
    array-length v5, v5

    add-int/lit8 v5, v5, -0x2

    if-ne v2, v5, :cond_83

    instance-of v5, v1, Lcom/alibaba/fastjson/JSONPath$FilterSegment;

    if-eqz v5, :cond_83

    instance-of v5, v6, Lcom/alibaba/fastjson/JSONPath$PropertySegment;

    if-eqz v5, :cond_83

    .line 470
    move-object v5, v1

    check-cast v5, Lcom/alibaba/fastjson/JSONPath$FilterSegment;

    .line 472
    instance-of v7, v4, Ljava/util/List;

    if-eqz v7, :cond_63

    .line 473
    check-cast v6, Lcom/alibaba/fastjson/JSONPath$PropertySegment;

    .line 474
    move-object v0, v4

    check-cast v0, Ljava/util/List;

    .line 476
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3a
    :goto_3a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_62

    .line 477
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 478
    invoke-virtual {v6, p0, p1, v1}, Lcom/alibaba/fastjson/JSONPath$PropertySegment;->eval(Lcom/alibaba/fastjson/JSONPath;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 479
    instance-of v2, v1, Ljava/lang/Iterable;

    if-eqz v2, :cond_50

    .line 480
    invoke-virtual {v5, p0, p1, v1}, Lcom/alibaba/fastjson/JSONPath$FilterSegment;->remove(Lcom/alibaba/fastjson/JSONPath;Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_3a

    .line 481
    :cond_50
    instance-of v2, v1, Ljava/util/Map;

    if-eqz v2, :cond_3a

    .line 482
    invoke-static {v5}, Lcom/alibaba/fastjson/JSONPath$FilterSegment;->access$300(Lcom/alibaba/fastjson/JSONPath$FilterSegment;)Lcom/alibaba/fastjson/JSONPath$Filter;

    move-result-object v2

    invoke-interface {v2, p0, p1, v4, v1}, Lcom/alibaba/fastjson/JSONPath$Filter;->apply(Lcom/alibaba/fastjson/JSONPath;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3a

    .line 483
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_3a

    :cond_62
    return v3

    .line 488
    :cond_63
    instance-of v7, v4, Ljava/util/Map;

    if-eqz v7, :cond_83

    .line 489
    move-object v7, v6

    check-cast v7, Lcom/alibaba/fastjson/JSONPath$PropertySegment;

    .line 490
    invoke-virtual {v7, p0, p1, v4}, Lcom/alibaba/fastjson/JSONPath$PropertySegment;->eval(Lcom/alibaba/fastjson/JSONPath;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-nez v8, :cond_71

    return v0

    .line 494
    :cond_71
    instance-of v9, v8, Ljava/util/Map;

    if-eqz v9, :cond_83

    .line 495
    invoke-static {v5}, Lcom/alibaba/fastjson/JSONPath$FilterSegment;->access$300(Lcom/alibaba/fastjson/JSONPath$FilterSegment;)Lcom/alibaba/fastjson/JSONPath$Filter;

    move-result-object v5

    invoke-interface {v5, p0, p1, v4, v8}, Lcom/alibaba/fastjson/JSONPath$Filter;->apply(Lcom/alibaba/fastjson/JSONPath;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_83

    .line 496
    invoke-virtual {v7, p0, v4}, Lcom/alibaba/fastjson/JSONPath$PropertySegment;->remove(Lcom/alibaba/fastjson/JSONPath;Ljava/lang/Object;)Z

    return v3

    .line 502
    :cond_83
    invoke-interface {v6, p0, p1, v4}, Lcom/alibaba/fastjson/JSONPath$Segment;->eval(Lcom/alibaba/fastjson/JSONPath;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_8a

    goto :goto_8d

    :cond_8a
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    :cond_8d
    :goto_8d
    const/4 v4, 0x0

    :goto_8e
    if-nez v4, :cond_91

    return v0

    .line 513
    :cond_91
    instance-of v2, v1, Lcom/alibaba/fastjson/JSONPath$PropertySegment;

    if-eqz v2, :cond_cb

    .line 514
    check-cast v1, Lcom/alibaba/fastjson/JSONPath$PropertySegment;

    .line 516
    instance-of p1, v4, Ljava/util/Collection;

    if-eqz p1, :cond_c6

    .line 517
    iget-object p1, p0, Lcom/alibaba/fastjson/JSONPath;->segments:[Lcom/alibaba/fastjson/JSONPath$Segment;

    array-length v2, p1

    if-le v2, v3, :cond_c6

    .line 518
    array-length v2, p1

    add-int/lit8 v2, v2, -0x2

    aget-object p1, p1, v2

    .line 519
    instance-of v2, p1, Lcom/alibaba/fastjson/JSONPath$RangeSegment;

    if-nez v2, :cond_ad

    instance-of p1, p1, Lcom/alibaba/fastjson/JSONPath$MultiIndexSegment;

    if-eqz p1, :cond_c6

    .line 520
    :cond_ad
    check-cast v4, Ljava/util/Collection;

    .line 522
    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_b3
    :goto_b3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_c5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 523
    invoke-virtual {v1, p0, v2}, Lcom/alibaba/fastjson/JSONPath$PropertySegment;->remove(Lcom/alibaba/fastjson/JSONPath;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b3

    const/4 v0, 0x1

    goto :goto_b3

    :cond_c5
    return v0

    .line 532
    :cond_c6
    invoke-virtual {v1, p0, v4}, Lcom/alibaba/fastjson/JSONPath$PropertySegment;->remove(Lcom/alibaba/fastjson/JSONPath;Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 535
    :cond_cb
    instance-of v0, v1, Lcom/alibaba/fastjson/JSONPath$ArrayAccessSegment;

    if-eqz v0, :cond_d6

    .line 536
    check-cast v1, Lcom/alibaba/fastjson/JSONPath$ArrayAccessSegment;

    invoke-virtual {v1, p0, v4}, Lcom/alibaba/fastjson/JSONPath$ArrayAccessSegment;->remove(Lcom/alibaba/fastjson/JSONPath;Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 539
    :cond_d6
    instance-of v0, v1, Lcom/alibaba/fastjson/JSONPath$FilterSegment;

    if-eqz v0, :cond_e1

    .line 540
    check-cast v1, Lcom/alibaba/fastjson/JSONPath$FilterSegment;

    .line 541
    invoke-virtual {v1, p0, p1, v4}, Lcom/alibaba/fastjson/JSONPath$FilterSegment;->remove(Lcom/alibaba/fastjson/JSONPath;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 544
    :cond_e1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public removeArrayItem(Lcom/alibaba/fastjson/JSONPath;Ljava/lang/Object;I)Z
    .registers 5

    .line 3637
    instance-of p1, p2, Ljava/util/List;

    if-eqz p1, :cond_21

    .line 3638
    check-cast p2, Ljava/util/List;

    const/4 p1, 0x0

    if-ltz p3, :cond_14

    .line 3640
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-lt p3, v0, :cond_10

    return p1

    .line 3643
    :cond_10
    invoke-interface {p2, p3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_1f

    .line 3645
    :cond_14
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    add-int/2addr v0, p3

    if-gez v0, :cond_1c

    return p1

    .line 3651
    :cond_1c
    invoke-interface {p2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :goto_1f
    const/4 p1, 0x1

    return p1

    .line 3656
    :cond_21
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    .line 3657
    new-instance p2, Lcom/alibaba/fastjson/JSONPathException;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "unsupported set operation."

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/alibaba/fastjson/JSONPathException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method protected removePropertyValue(Ljava/lang/Object;Ljava/lang/String;Z)Z
    .registers 9

    .line 4176
    instance-of v0, p1, Ljava/util/Map;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_29

    .line 4177
    check-cast p1, Ljava/util/Map;

    invoke-interface {p1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_f

    goto :goto_10

    :cond_f
    const/4 v1, 0x0

    :goto_10
    if-eqz p3, :cond_28

    .line 4181
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1a
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_28

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 4182
    invoke-virtual {p0, v0, p2, p3}, Lcom/alibaba/fastjson/JSONPath;->removePropertyValue(Ljava/lang/Object;Ljava/lang/String;Z)Z

    goto :goto_1a

    :cond_28
    return v1

    .line 4189
    :cond_29
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONPath;->parserConfig:Lcom/alibaba/fastjson/parser/ParserConfig;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/ParserConfig;->getDeserializer(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    move-result-object v0

    .line 4192
    instance-of v3, v0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;

    const/4 v4, 0x0

    if-eqz v3, :cond_3b

    .line 4193
    check-cast v0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;

    goto :goto_3c

    :cond_3b
    move-object v0, v4

    :goto_3c
    if-eqz v0, :cond_65

    .line 4197
    invoke-virtual {v0, p2}, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->getFieldDeserializer(Ljava/lang/String;)Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    move-result-object v0

    if-eqz v0, :cond_48

    .line 4201
    invoke-virtual {v0, p1, v4}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->setValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_49

    :cond_48
    const/4 v1, 0x0

    :goto_49
    if-eqz p3, :cond_64

    .line 4206
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/JSONPath;->getPropertyValues(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object p1

    .line 4207
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_53
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_64

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_60

    goto :goto_53

    .line 4211
    :cond_60
    invoke-virtual {p0, v0, p2, p3}, Lcom/alibaba/fastjson/JSONPath;->removePropertyValue(Ljava/lang/Object;Ljava/lang/String;Z)Z

    goto :goto_53

    :cond_64
    return v1

    :cond_65
    if-eqz p3, :cond_68

    return v2

    .line 4222
    :cond_68
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public set(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 4

    const/4 v0, 0x1

    .line 548
    invoke-virtual {p0, p1, p2, v0}, Lcom/alibaba/fastjson/JSONPath;->set(Ljava/lang/Object;Ljava/lang/Object;Z)Z

    move-result p1

    return p1
.end method

.method public set(Ljava/lang/Object;Ljava/lang/Object;Z)Z
    .registers 12

    const/4 p3, 0x0

    if-nez p1, :cond_4

    return p3

    .line 556
    :cond_4
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath;->init()V

    const/4 v0, 0x0

    move-object v2, p1

    move-object v3, v0

    const/4 v1, 0x0

    .line 560
    :goto_b
    iget-object v4, p0, Lcom/alibaba/fastjson/JSONPath;->segments:[Lcom/alibaba/fastjson/JSONPath$Segment;

    array-length v5, v4

    const/4 v6, 0x1

    if-ge v1, v5, :cond_86

    .line 567
    aget-object v3, v4, v1

    .line 568
    invoke-interface {v3, p0, p1, v2}, Lcom/alibaba/fastjson/JSONPath$Segment;->eval(Lcom/alibaba/fastjson/JSONPath;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_81

    .line 571
    iget-object v4, p0, Lcom/alibaba/fastjson/JSONPath;->segments:[Lcom/alibaba/fastjson/JSONPath$Segment;

    array-length v5, v4

    sub-int/2addr v5, v6

    if-ge v1, v5, :cond_24

    add-int/lit8 v5, v1, 0x1

    .line 572
    aget-object v4, v4, v5

    goto :goto_25

    :cond_24
    move-object v4, v0

    .line 576
    :goto_25
    instance-of v5, v4, Lcom/alibaba/fastjson/JSONPath$PropertySegment;

    if-eqz v5, :cond_61

    .line 579
    instance-of v4, v3, Lcom/alibaba/fastjson/JSONPath$PropertySegment;

    if-eqz v4, :cond_4b

    .line 580
    move-object v4, v3

    check-cast v4, Lcom/alibaba/fastjson/JSONPath$PropertySegment;

    invoke-static {v4}, Lcom/alibaba/fastjson/JSONPath$PropertySegment;->access$400(Lcom/alibaba/fastjson/JSONPath$PropertySegment;)Ljava/lang/String;

    move-result-object v4

    .line 581
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    .line 582
    invoke-virtual {p0, v5}, Lcom/alibaba/fastjson/JSONPath;->getJavaBeanDeserializer(Ljava/lang/Class;)Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;

    move-result-object v5

    if-eqz v5, :cond_4b

    .line 584
    invoke-virtual {v5, v4}, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->getFieldDeserializer(Ljava/lang/String;)Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    move-result-object v4

    .line 585
    iget-object v4, v4, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    iget-object v4, v4, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    .line 586
    invoke-virtual {p0, v4}, Lcom/alibaba/fastjson/JSONPath;->getJavaBeanDeserializer(Ljava/lang/Class;)Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;

    move-result-object v5

    goto :goto_4d

    :cond_4b
    move-object v4, v0

    move-object v5, v4

    :goto_4d
    if-eqz v5, :cond_5b

    .line 592
    iget-object v7, v5, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

    iget-object v7, v7, Lcom/alibaba/fastjson/util/JavaBeanInfo;->defaultConstructor:Ljava/lang/reflect/Constructor;

    if-eqz v7, :cond_5a

    .line 593
    invoke-virtual {v5, v0, v4}, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->createInstance(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v4

    goto :goto_6c

    :cond_5a
    return p3

    .line 598
    :cond_5b
    new-instance v4, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v4}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    goto :goto_6c

    .line 600
    :cond_61
    instance-of v4, v4, Lcom/alibaba/fastjson/JSONPath$ArrayAccessSegment;

    if-eqz v4, :cond_6b

    .line 601
    new-instance v4, Lcom/alibaba/fastjson/JSONArray;

    invoke-direct {v4}, Lcom/alibaba/fastjson/JSONArray;-><init>()V

    goto :goto_6c

    :cond_6b
    move-object v4, v0

    :goto_6c
    if-eqz v4, :cond_87

    .line 605
    instance-of v5, v3, Lcom/alibaba/fastjson/JSONPath$PropertySegment;

    if-eqz v5, :cond_78

    .line 606
    check-cast v3, Lcom/alibaba/fastjson/JSONPath$PropertySegment;

    .line 607
    invoke-virtual {v3, p0, v2, v4}, Lcom/alibaba/fastjson/JSONPath$PropertySegment;->setValue(Lcom/alibaba/fastjson/JSONPath;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_81

    .line 610
    :cond_78
    instance-of v5, v3, Lcom/alibaba/fastjson/JSONPath$ArrayAccessSegment;

    if-eqz v5, :cond_87

    .line 611
    check-cast v3, Lcom/alibaba/fastjson/JSONPath$ArrayAccessSegment;

    .line 612
    invoke-virtual {v3, p0, v2, v4}, Lcom/alibaba/fastjson/JSONPath$ArrayAccessSegment;->setValue(Lcom/alibaba/fastjson/JSONPath;Ljava/lang/Object;Ljava/lang/Object;)Z

    :cond_81
    :goto_81
    add-int/lit8 v1, v1, 0x1

    move-object v3, v2

    move-object v2, v4

    goto :goto_b

    :cond_86
    move-object v2, v3

    :cond_87
    if-nez v2, :cond_8a

    return p3

    .line 626
    :cond_8a
    iget-object p1, p0, Lcom/alibaba/fastjson/JSONPath;->segments:[Lcom/alibaba/fastjson/JSONPath$Segment;

    array-length p3, p1

    sub-int/2addr p3, v6

    aget-object p1, p1, p3

    .line 627
    instance-of p3, p1, Lcom/alibaba/fastjson/JSONPath$PropertySegment;

    if-eqz p3, :cond_9a

    .line 628
    check-cast p1, Lcom/alibaba/fastjson/JSONPath$PropertySegment;

    .line 629
    invoke-virtual {p1, p0, v2, p2}, Lcom/alibaba/fastjson/JSONPath$PropertySegment;->setValue(Lcom/alibaba/fastjson/JSONPath;Ljava/lang/Object;Ljava/lang/Object;)V

    return v6

    .line 633
    :cond_9a
    instance-of p3, p1, Lcom/alibaba/fastjson/JSONPath$ArrayAccessSegment;

    if-eqz p3, :cond_a5

    .line 634
    check-cast p1, Lcom/alibaba/fastjson/JSONPath$ArrayAccessSegment;

    invoke-virtual {p1, p0, v2, p2}, Lcom/alibaba/fastjson/JSONPath$ArrayAccessSegment;->setValue(Lcom/alibaba/fastjson/JSONPath;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 637
    :cond_a5
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public setArrayItem(Lcom/alibaba/fastjson/JSONPath;Ljava/lang/Object;ILjava/lang/Object;)Z
    .registers 7

    .line 3605
    instance-of p1, p2, Ljava/util/List;

    const/4 v0, 0x1

    if-eqz p1, :cond_16

    .line 3606
    check-cast p2, Ljava/util/List;

    if-ltz p3, :cond_d

    .line 3608
    invoke-interface {p2, p3, p4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_15

    .line 3610
    :cond_d
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    add-int/2addr p1, p3

    invoke-interface {p2, p1, p4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :goto_15
    return v0

    .line 3615
    :cond_16
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    .line 3616
    invoke-virtual {p1}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_37

    .line 3617
    invoke-static {p2}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result p1

    if-ltz p3, :cond_2c

    if-ge p3, p1, :cond_36

    .line 3621
    invoke-static {p2, p3, p4}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    goto :goto_36

    .line 3624
    :cond_2c
    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-gt v1, p1, :cond_36

    add-int/2addr p1, p3

    .line 3625
    invoke-static {p2, p1, p4}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    :cond_36
    :goto_36
    return v0

    .line 3632
    :cond_37
    new-instance p2, Lcom/alibaba/fastjson/JSONPathException;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string/jumbo p4, "unsupported set operation."

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/alibaba/fastjson/JSONPathException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method protected setPropertyValue(Ljava/lang/Object;Ljava/lang/String;JLjava/lang/Object;)Z
    .registers 14

    .line 4135
    instance-of v0, p1, Ljava/util/Map;

    const/4 v1, 0x1

    if-eqz v0, :cond_b

    .line 4136
    check-cast p1, Ljava/util/Map;

    invoke-interface {p1, p2, p5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return v1

    .line 4140
    :cond_b
    instance-of v0, p1, Ljava/util/List;

    if-eqz v0, :cond_2c

    .line 4141
    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_15
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_22

    goto :goto_15

    :cond_22
    move-object v2, p0

    move-object v4, p2

    move-wide v5, p3

    move-object v7, p5

    .line 4145
    invoke-virtual/range {v2 .. v7}, Lcom/alibaba/fastjson/JSONPath;->setPropertyValue(Ljava/lang/Object;Ljava/lang/String;JLjava/lang/Object;)Z

    goto :goto_15

    :cond_2a
    move-object v2, p0

    return v1

    :cond_2c
    move-object v2, p0

    move-wide v5, p3

    move-object v7, p5

    .line 4150
    iget-object p2, v2, Lcom/alibaba/fastjson/JSONPath;->parserConfig:Lcom/alibaba/fastjson/parser/ParserConfig;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/alibaba/fastjson/parser/ParserConfig;->getDeserializer(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    move-result-object p2

    .line 4153
    instance-of p3, p2, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;

    if-eqz p3, :cond_40

    .line 4154
    check-cast p2, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;

    goto :goto_41

    :cond_40
    const/4 p2, 0x0

    :goto_41
    if-eqz p2, :cond_67

    .line 4158
    invoke-virtual {p2, v5, v6}, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->getFieldDeserializer(J)Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    move-result-object p2

    if-nez p2, :cond_4b

    const/4 p1, 0x0

    return p1

    :cond_4b
    if-eqz v7, :cond_62

    .line 4163
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    iget-object p4, p2, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    iget-object p4, p4, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    if-eq p3, p4, :cond_62

    .line 4164
    iget-object p3, p2, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    iget-object p3, p3, Lcom/alibaba/fastjson/util/FieldInfo;->fieldType:Ljava/lang/reflect/Type;

    iget-object p4, v2, Lcom/alibaba/fastjson/JSONPath;->parserConfig:Lcom/alibaba/fastjson/parser/ParserConfig;

    invoke-static {v7, p3, p4}, Lcom/alibaba/fastjson/util/TypeUtils;->cast(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/parser/ParserConfig;)Ljava/lang/Object;

    move-result-object p5

    goto :goto_63

    :cond_62
    move-object p5, v7

    .line 4167
    :goto_63
    invoke-virtual {p2, p1, p5}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->setValue(Ljava/lang/Object;Ljava/lang/Object;)V

    return v1

    .line 4171
    :cond_67
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public size(Ljava/lang/Object;)I
    .registers 6

    if-nez p1, :cond_4

    const/4 p1, -0x1

    return p1

    .line 285
    :cond_4
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath;->init()V

    const/4 v0, 0x0

    move-object v1, p1

    .line 288
    :goto_9
    iget-object v2, p0, Lcom/alibaba/fastjson/JSONPath;->segments:[Lcom/alibaba/fastjson/JSONPath$Segment;

    array-length v3, v2

    if-ge v0, v3, :cond_17

    .line 289
    aget-object v2, v2, v0

    invoke-interface {v2, p0, p1, v1}, Lcom/alibaba/fastjson/JSONPath$Segment;->eval(Lcom/alibaba/fastjson/JSONPath;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 292
    :cond_17
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/JSONPath;->evalSize(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public toJSONString()Ljava/lang/String;
    .registers 2

    .line 4318
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONPath;->path:Ljava/lang/String;

    invoke-static {v0}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class com.alibaba.fastjson.JSONPath.AnonymousClass1 (com.alibaba.fastjson.JSONPath$1)
.class synthetic Lcom/alibaba/fastjson/JSONPath$1;
.super Ljava/lang/Object;
.source "JSONPath.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/fastjson/JSONPath;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$alibaba$fastjson$JSONPath$Operator:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 3034
    invoke-static {}, Lcom/alibaba/fastjson/JSONPath$Operator;->values()[Lcom/alibaba/fastjson/JSONPath$Operator;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/alibaba/fastjson/JSONPath$1;->$SwitchMap$com$alibaba$fastjson$JSONPath$Operator:[I

    :try_start_9
    sget-object v1, Lcom/alibaba/fastjson/JSONPath$Operator;->EQ:Lcom/alibaba/fastjson/JSONPath$Operator;

    invoke-virtual {v1}, Lcom/alibaba/fastjson/JSONPath$Operator;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_12} :catch_12

    :catch_12
    :try_start_12
    sget-object v0, Lcom/alibaba/fastjson/JSONPath$1;->$SwitchMap$com$alibaba$fastjson$JSONPath$Operator:[I

    sget-object v1, Lcom/alibaba/fastjson/JSONPath$Operator;->NE:Lcom/alibaba/fastjson/JSONPath$Operator;

    invoke-virtual {v1}, Lcom/alibaba/fastjson/JSONPath$Operator;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_1d} :catch_1d

    :catch_1d
    :try_start_1d
    sget-object v0, Lcom/alibaba/fastjson/JSONPath$1;->$SwitchMap$com$alibaba$fastjson$JSONPath$Operator:[I

    sget-object v1, Lcom/alibaba/fastjson/JSONPath$Operator;->GE:Lcom/alibaba/fastjson/JSONPath$Operator;

    invoke-virtual {v1}, Lcom/alibaba/fastjson/JSONPath$Operator;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_28
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_28} :catch_28

    :catch_28
    :try_start_28
    sget-object v0, Lcom/alibaba/fastjson/JSONPath$1;->$SwitchMap$com$alibaba$fastjson$JSONPath$Operator:[I

    sget-object v1, Lcom/alibaba/fastjson/JSONPath$Operator;->GT:Lcom/alibaba/fastjson/JSONPath$Operator;

    invoke-virtual {v1}, Lcom/alibaba/fastjson/JSONPath$Operator;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_33
    .catch Ljava/lang/NoSuchFieldError; {:try_start_28 .. :try_end_33} :catch_33

    :catch_33
    :try_start_33
    sget-object v0, Lcom/alibaba/fastjson/JSONPath$1;->$SwitchMap$com$alibaba$fastjson$JSONPath$Operator:[I

    sget-object v1, Lcom/alibaba/fastjson/JSONPath$Operator;->LE:Lcom/alibaba/fastjson/JSONPath$Operator;

    invoke-virtual {v1}, Lcom/alibaba/fastjson/JSONPath$Operator;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_3e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_33 .. :try_end_3e} :catch_3e

    :catch_3e
    :try_start_3e
    sget-object v0, Lcom/alibaba/fastjson/JSONPath$1;->$SwitchMap$com$alibaba$fastjson$JSONPath$Operator:[I

    sget-object v1, Lcom/alibaba/fastjson/JSONPath$Operator;->LT:Lcom/alibaba/fastjson/JSONPath$Operator;

    invoke-virtual {v1}, Lcom/alibaba/fastjson/JSONPath$Operator;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_49
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3e .. :try_end_49} :catch_49

    :catch_49
    return-void
.end method

###### Class com.alibaba.fastjson.JSONPath.ArrayAccessSegment (com.alibaba.fastjson.JSONPath$ArrayAccessSegment)
.class Lcom/alibaba/fastjson/JSONPath$ArrayAccessSegment;
.super Ljava/lang/Object;
.source "JSONPath.java"

# interfaces
.implements Lcom/alibaba/fastjson/JSONPath$Segment;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/fastjson/JSONPath;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ArrayAccessSegment"
.end annotation


# instance fields
.field private final index:I


# direct methods
.method public constructor <init>(I)V
    .registers 2

    .line 2731
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2732
    iput p1, p0, Lcom/alibaba/fastjson/JSONPath$ArrayAccessSegment;->index:I

    return-void
.end method

.method static synthetic access$200(Lcom/alibaba/fastjson/JSONPath$ArrayAccessSegment;)I
    .registers 1

    .line 2727
    iget p0, p0, Lcom/alibaba/fastjson/JSONPath$ArrayAccessSegment;->index:I

    return p0
.end method


# virtual methods
.method public eval(Lcom/alibaba/fastjson/JSONPath;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 2736
    iget p2, p0, Lcom/alibaba/fastjson/JSONPath$ArrayAccessSegment;->index:I

    invoke-virtual {p1, p3, p2}, Lcom/alibaba/fastjson/JSONPath;->getArrayItem(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public extract(Lcom/alibaba/fastjson/JSONPath;Lcom/alibaba/fastjson/parser/DefaultJSONParser;Lcom/alibaba/fastjson/JSONPath$Context;)V
    .registers 5

    .line 2748
    iget-object p1, p2, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    check-cast p1, Lcom/alibaba/fastjson/parser/JSONLexerBase;

    .line 2749
    iget v0, p0, Lcom/alibaba/fastjson/JSONPath$ArrayAccessSegment;->index:I

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->seekArrayToItem(I)Z

    move-result p1

    if-eqz p1, :cond_16

    iget-boolean p1, p3, Lcom/alibaba/fastjson/JSONPath$Context;->eval:Z

    if-eqz p1, :cond_16

    .line 2752
    invoke-virtual {p2}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parse()Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p3, Lcom/alibaba/fastjson/JSONPath$Context;->object:Ljava/lang/Object;

    :cond_16
    return-void
.end method

.method public remove(Lcom/alibaba/fastjson/JSONPath;Ljava/lang/Object;)Z
    .registers 4

    .line 2744
    iget v0, p0, Lcom/alibaba/fastjson/JSONPath$ArrayAccessSegment;->index:I

    invoke-virtual {p1, p1, p2, v0}, Lcom/alibaba/fastjson/JSONPath;->removeArrayItem(Lcom/alibaba/fastjson/JSONPath;Ljava/lang/Object;I)Z

    move-result p1

    return p1
.end method

.method public setValue(Lcom/alibaba/fastjson/JSONPath;Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 5

    .line 2740
    iget v0, p0, Lcom/alibaba/fastjson/JSONPath$ArrayAccessSegment;->index:I

    invoke-virtual {p1, p1, p2, v0, p3}, Lcom/alibaba/fastjson/JSONPath;->setArrayItem(Lcom/alibaba/fastjson/JSONPath;Ljava/lang/Object;ILjava/lang/Object;)Z

    move-result p1

    return p1
.end method

###### Class com.alibaba.fastjson.JSONPath.Context (com.alibaba.fastjson.JSONPath$Context)
.class Lcom/alibaba/fastjson/JSONPath$Context;
.super Ljava/lang/Object;
.source "JSONPath.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/fastjson/JSONPath;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Context"
.end annotation


# instance fields
.field final eval:Z

.field object:Ljava/lang/Object;

.field final parent:Lcom/alibaba/fastjson/JSONPath$Context;


# direct methods
.method public constructor <init>(Lcom/alibaba/fastjson/JSONPath$Context;Z)V
    .registers 3

    .line 224
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 225
    iput-object p1, p0, Lcom/alibaba/fastjson/JSONPath$Context;->parent:Lcom/alibaba/fastjson/JSONPath$Context;

    .line 226
    iput-boolean p2, p0, Lcom/alibaba/fastjson/JSONPath$Context;->eval:Z

    return-void
.end method

###### Class com.alibaba.fastjson.JSONPath.DoubleOpSegement (com.alibaba.fastjson.JSONPath$DoubleOpSegement)
.class Lcom/alibaba/fastjson/JSONPath$DoubleOpSegement;
.super Lcom/alibaba/fastjson/JSONPath$PropertyFilter;
.source "JSONPath.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/fastjson/JSONPath;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "DoubleOpSegement"
.end annotation


# instance fields
.field private final op:Lcom/alibaba/fastjson/JSONPath$Operator;

.field private final value:D


# direct methods
.method public constructor <init>(Ljava/lang/String;ZDLcom/alibaba/fastjson/JSONPath$Operator;)V
    .registers 6

    .line 3158
    invoke-direct {p0, p1, p2}, Lcom/alibaba/fastjson/JSONPath$PropertyFilter;-><init>(Ljava/lang/String;Z)V

    .line 3159
    iput-wide p3, p0, Lcom/alibaba/fastjson/JSONPath$DoubleOpSegement;->value:D

    .line 3160
    iput-object p5, p0, Lcom/alibaba/fastjson/JSONPath$DoubleOpSegement;->op:Lcom/alibaba/fastjson/JSONPath$Operator;

    return-void
.end method


# virtual methods
.method public apply(Lcom/alibaba/fastjson/JSONPath;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 8

    .line 3164
    invoke-virtual {p0, p1, p2, p4}, Lcom/alibaba/fastjson/JSONPath$DoubleOpSegement;->get(Lcom/alibaba/fastjson/JSONPath;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const/4 p2, 0x0

    if-nez p1, :cond_8

    return p2

    .line 3170
    :cond_8
    instance-of p3, p1, Ljava/lang/Number;

    if-nez p3, :cond_d

    return p2

    .line 3174
    :cond_d
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide p3

    .line 3176
    sget-object p1, Lcom/alibaba/fastjson/JSONPath$1;->$SwitchMap$com$alibaba$fastjson$JSONPath$Operator:[I

    iget-object v0, p0, Lcom/alibaba/fastjson/JSONPath$DoubleOpSegement;->op:Lcom/alibaba/fastjson/JSONPath$Operator;

    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONPath$Operator;->ordinal()I

    move-result v0

    aget p1, p1, v0

    const/4 v0, 0x1

    packed-switch p1, :pswitch_data_52

    return p2

    .line 3188
    :pswitch_22
    iget-wide v1, p0, Lcom/alibaba/fastjson/JSONPath$DoubleOpSegement;->value:D

    cmpg-double p1, p3, v1

    if-gez p1, :cond_29

    return v0

    :cond_29
    return p2

    .line 3186
    :pswitch_2a
    iget-wide v1, p0, Lcom/alibaba/fastjson/JSONPath$DoubleOpSegement;->value:D

    cmpg-double p1, p3, v1

    if-gtz p1, :cond_31

    return v0

    :cond_31
    return p2

    .line 3184
    :pswitch_32
    iget-wide v1, p0, Lcom/alibaba/fastjson/JSONPath$DoubleOpSegement;->value:D

    cmpl-double p1, p3, v1

    if-lez p1, :cond_39

    return v0

    :cond_39
    return p2

    .line 3182
    :pswitch_3a
    iget-wide v1, p0, Lcom/alibaba/fastjson/JSONPath$DoubleOpSegement;->value:D

    cmpl-double p1, p3, v1

    if-ltz p1, :cond_41

    return v0

    :cond_41
    return p2

    .line 3180
    :pswitch_42
    iget-wide v1, p0, Lcom/alibaba/fastjson/JSONPath$DoubleOpSegement;->value:D

    cmpl-double p1, p3, v1

    if-eqz p1, :cond_49

    return v0

    :cond_49
    return p2

    .line 3178
    :pswitch_4a
    iget-wide v1, p0, Lcom/alibaba/fastjson/JSONPath$DoubleOpSegement;->value:D

    cmpl-double p1, p3, v1

    if-nez p1, :cond_51

    return v0

    :cond_51
    return p2

    :pswitch_data_52
    .packed-switch 0x1
        :pswitch_4a
        :pswitch_42
        :pswitch_3a
        :pswitch_32
        :pswitch_2a
        :pswitch_22
    .end packed-switch
.end method

###### Class com.alibaba.fastjson.JSONPath.Filter (com.alibaba.fastjson.JSONPath$Filter)
.class interface abstract Lcom/alibaba/fastjson/JSONPath$Filter;
.super Ljava/lang/Object;
.source "JSONPath.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/fastjson/JSONPath;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "Filter"
.end annotation


# virtual methods
.method public abstract apply(Lcom/alibaba/fastjson/JSONPath;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
.end method

###### Class com.alibaba.fastjson.JSONPath.FilterGroup (com.alibaba.fastjson.JSONPath$FilterGroup)
.class Lcom/alibaba/fastjson/JSONPath$FilterGroup;
.super Ljava/lang/Object;
.source "JSONPath.java"

# interfaces
.implements Lcom/alibaba/fastjson/JSONPath$Filter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/fastjson/JSONPath;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "FilterGroup"
.end annotation


# instance fields
.field private and:Z

.field private fitlers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alibaba/fastjson/JSONPath$Filter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/alibaba/fastjson/JSONPath$Filter;Lcom/alibaba/fastjson/JSONPath$Filter;Z)V
    .registers 6

    .line 3511
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3512
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/alibaba/fastjson/JSONPath$FilterGroup;->fitlers:Ljava/util/List;

    .line 3513
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3514
    iget-object p1, p0, Lcom/alibaba/fastjson/JSONPath$FilterGroup;->fitlers:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3515
    iput-boolean p3, p0, Lcom/alibaba/fastjson/JSONPath$FilterGroup;->and:Z

    return-void
.end method


# virtual methods
.method public apply(Lcom/alibaba/fastjson/JSONPath;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 9

    .line 3519
    iget-boolean v0, p0, Lcom/alibaba/fastjson/JSONPath$FilterGroup;->and:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_20

    .line 3520
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONPath$FilterGroup;->fitlers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/fastjson/JSONPath$Filter;

    .line 3521
    invoke-interface {v3, p1, p2, p3, p4}, Lcom/alibaba/fastjson/JSONPath$Filter;->apply(Lcom/alibaba/fastjson/JSONPath;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_c

    return v2

    :cond_1f
    return v1

    .line 3527
    :cond_20
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONPath$FilterGroup;->fitlers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_26
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_39

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/fastjson/JSONPath$Filter;

    .line 3528
    invoke-interface {v3, p1, p2, p3, p4}, Lcom/alibaba/fastjson/JSONPath$Filter;->apply(Lcom/alibaba/fastjson/JSONPath;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_26

    return v1

    :cond_39
    return v2
.end method

###### Class com.alibaba.fastjson.JSONPath.FilterSegment (com.alibaba.fastjson.JSONPath$FilterSegment)
.class public Lcom/alibaba/fastjson/JSONPath$FilterSegment;
.super Ljava/lang/Object;
.source "JSONPath.java"

# interfaces
.implements Lcom/alibaba/fastjson/JSONPath$Segment;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/fastjson/JSONPath;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FilterSegment"
.end annotation


# instance fields
.field private final filter:Lcom/alibaba/fastjson/JSONPath$Filter;


# direct methods
.method public constructor <init>(Lcom/alibaba/fastjson/JSONPath$Filter;)V
    .registers 2

    .line 3444
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3445
    iput-object p1, p0, Lcom/alibaba/fastjson/JSONPath$FilterSegment;->filter:Lcom/alibaba/fastjson/JSONPath$Filter;

    return-void
.end method

.method static synthetic access$300(Lcom/alibaba/fastjson/JSONPath$FilterSegment;)Lcom/alibaba/fastjson/JSONPath$Filter;
    .registers 1

    .line 3439
    iget-object p0, p0, Lcom/alibaba/fastjson/JSONPath$FilterSegment;->filter:Lcom/alibaba/fastjson/JSONPath$Filter;

    return-object p0
.end method


# virtual methods
.method public eval(Lcom/alibaba/fastjson/JSONPath;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 8

    const/4 v0, 0x0

    if-nez p3, :cond_4

    return-object v0

    .line 3454
    :cond_4
    new-instance v1, Lcom/alibaba/fastjson/JSONArray;

    invoke-direct {v1}, Lcom/alibaba/fastjson/JSONArray;-><init>()V

    .line 3456
    instance-of v2, p3, Ljava/lang/Iterable;

    if-eqz v2, :cond_2b

    .line 3457
    move-object v0, p3

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 3458
    :cond_14
    :goto_14
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 3459
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 3461
    iget-object v3, p0, Lcom/alibaba/fastjson/JSONPath$FilterSegment;->filter:Lcom/alibaba/fastjson/JSONPath$Filter;

    invoke-interface {v3, p1, p2, p3, v2}, Lcom/alibaba/fastjson/JSONPath$Filter;->apply(Lcom/alibaba/fastjson/JSONPath;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14

    .line 3462
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_14

    :cond_2a
    return-object v1

    .line 3469
    :cond_2b
    iget-object v1, p0, Lcom/alibaba/fastjson/JSONPath$FilterSegment;->filter:Lcom/alibaba/fastjson/JSONPath$Filter;

    invoke-interface {v1, p1, p2, p3, p3}, Lcom/alibaba/fastjson/JSONPath$Filter;->apply(Lcom/alibaba/fastjson/JSONPath;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_34

    return-object p3

    :cond_34
    return-object v0
.end method

.method public extract(Lcom/alibaba/fastjson/JSONPath;Lcom/alibaba/fastjson/parser/DefaultJSONParser;Lcom/alibaba/fastjson/JSONPath$Context;)V
    .registers 4

    .line 3477
    invoke-virtual {p2}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parse()Ljava/lang/Object;

    move-result-object p2

    .line 3478
    invoke-virtual {p0, p1, p2, p2}, Lcom/alibaba/fastjson/JSONPath$FilterSegment;->eval(Lcom/alibaba/fastjson/JSONPath;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p3, Lcom/alibaba/fastjson/JSONPath$Context;->object:Ljava/lang/Object;

    return-void
.end method

.method public remove(Lcom/alibaba/fastjson/JSONPath;Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 7

    const/4 v0, 0x0

    if-nez p3, :cond_4

    return v0

    .line 3486
    :cond_4
    instance-of v1, p3, Ljava/lang/Iterable;

    if-eqz v1, :cond_27

    .line 3487
    move-object v0, p3

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 3488
    :cond_f
    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_25

    .line 3489
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 3491
    iget-object v2, p0, Lcom/alibaba/fastjson/JSONPath$FilterSegment;->filter:Lcom/alibaba/fastjson/JSONPath$Filter;

    invoke-interface {v2, p1, p2, p3, v1}, Lcom/alibaba/fastjson/JSONPath$Filter;->apply(Lcom/alibaba/fastjson/JSONPath;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 3492
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_f

    :cond_25
    const/4 p1, 0x1

    return p1

    :cond_27
    return v0
.end method

###### Class com.alibaba.fastjson.JSONPath.FloorSegment (com.alibaba.fastjson.JSONPath$FloorSegment)
.class Lcom/alibaba/fastjson/JSONPath$FloorSegment;
.super Ljava/lang/Object;
.source "JSONPath.java"

# interfaces
.implements Lcom/alibaba/fastjson/JSONPath$Segment;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/fastjson/JSONPath;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "FloorSegment"
.end annotation


# static fields
.field public static final instance:Lcom/alibaba/fastjson/JSONPath$FloorSegment;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 2149
    new-instance v0, Lcom/alibaba/fastjson/JSONPath$FloorSegment;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONPath$FloorSegment;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson/JSONPath$FloorSegment;->instance:Lcom/alibaba/fastjson/JSONPath$FloorSegment;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    .line 2148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static floor(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 2171
    :cond_4
    instance-of v0, p0, Ljava/lang/Float;

    if-eqz v0, :cond_18

    .line 2172
    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    float-to-double v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0

    .line 2175
    :cond_18
    instance-of v0, p0, Ljava/lang/Double;

    if-eqz v0, :cond_2b

    .line 2176
    check-cast p0, Ljava/lang/Double;

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0

    .line 2179
    :cond_2b
    instance-of v0, p0, Ljava/math/BigDecimal;

    if-eqz v0, :cond_39

    .line 2180
    check-cast p0, Ljava/math/BigDecimal;

    const/4 v0, 0x0

    .line 2181
    sget-object v1, Ljava/math/RoundingMode;->FLOOR:Ljava/math/RoundingMode;

    invoke-virtual {p0, v0, v1}, Ljava/math/BigDecimal;->setScale(ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object p0

    return-object p0

    .line 2184
    :cond_39
    instance-of v0, p0, Ljava/lang/Byte;

    if-nez v0, :cond_54

    instance-of v0, p0, Ljava/lang/Short;

    if-nez v0, :cond_54

    instance-of v0, p0, Ljava/lang/Integer;

    if-nez v0, :cond_54

    instance-of v0, p0, Ljava/lang/Long;

    if-nez v0, :cond_54

    instance-of v0, p0, Ljava/math/BigInteger;

    if-eqz v0, :cond_4e

    goto :goto_54

    .line 2192
    :cond_4e
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0

    :cond_54
    :goto_54
    return-object p0
.end method


# virtual methods
.method public eval(Lcom/alibaba/fastjson/JSONPath;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    .line 2151
    instance-of p1, p3, Lcom/alibaba/fastjson/JSONArray;

    if-eqz p1, :cond_24

    .line 2152
    check-cast p3, Lcom/alibaba/fastjson/JSONArray;

    invoke-virtual {p3}, Lcom/alibaba/fastjson/JSONArray;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/alibaba/fastjson/JSONArray;

    const/4 p2, 0x0

    .line 2153
    :goto_d
    invoke-virtual {p1}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result p3

    if-ge p2, p3, :cond_23

    .line 2154
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object p3

    .line 2155
    invoke-static {p3}, Lcom/alibaba/fastjson/JSONPath$FloorSegment;->floor(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eq v0, p3, :cond_20

    .line 2157
    invoke-virtual {p1, p2, v0}, Lcom/alibaba/fastjson/JSONArray;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_20
    add-int/lit8 p2, p2, 0x1

    goto :goto_d

    :cond_23
    return-object p1

    .line 2163
    :cond_24
    invoke-static {p3}, Lcom/alibaba/fastjson/JSONPath$FloorSegment;->floor(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public extract(Lcom/alibaba/fastjson/JSONPath;Lcom/alibaba/fastjson/parser/DefaultJSONParser;Lcom/alibaba/fastjson/JSONPath$Context;)V
    .registers 4

    .line 2196
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

###### Class com.alibaba.fastjson.JSONPath.IntBetweenSegement (com.alibaba.fastjson.JSONPath$IntBetweenSegement)
.class Lcom/alibaba/fastjson/JSONPath$IntBetweenSegement;
.super Lcom/alibaba/fastjson/JSONPath$PropertyFilter;
.source "JSONPath.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/fastjson/JSONPath;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "IntBetweenSegement"
.end annotation


# instance fields
.field private final endValue:J

.field private final not:Z

.field private final startValue:J


# direct methods
.method public constructor <init>(Ljava/lang/String;ZJJZ)V
    .registers 8

    .line 2914
    invoke-direct {p0, p1, p2}, Lcom/alibaba/fastjson/JSONPath$PropertyFilter;-><init>(Ljava/lang/String;Z)V

    .line 2915
    iput-wide p3, p0, Lcom/alibaba/fastjson/JSONPath$IntBetweenSegement;->startValue:J

    .line 2916
    iput-wide p5, p0, Lcom/alibaba/fastjson/JSONPath$IntBetweenSegement;->endValue:J

    .line 2917
    iput-boolean p7, p0, Lcom/alibaba/fastjson/JSONPath$IntBetweenSegement;->not:Z

    return-void
.end method


# virtual methods
.method public apply(Lcom/alibaba/fastjson/JSONPath;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 6

    .line 2921
    invoke-virtual {p0, p1, p2, p4}, Lcom/alibaba/fastjson/JSONPath$IntBetweenSegement;->get(Lcom/alibaba/fastjson/JSONPath;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_8

    const/4 p1, 0x0

    return p1

    .line 2927
    :cond_8
    instance-of p2, p1, Ljava/lang/Number;

    if-eqz p2, :cond_23

    .line 2928
    check-cast p1, Ljava/lang/Number;

    invoke-static {p1}, Lcom/alibaba/fastjson/util/TypeUtils;->longExtractValue(Ljava/lang/Number;)J

    move-result-wide p1

    .line 2929
    iget-wide p3, p0, Lcom/alibaba/fastjson/JSONPath$IntBetweenSegement;->startValue:J

    cmp-long v0, p1, p3

    if-ltz v0, :cond_23

    iget-wide p3, p0, Lcom/alibaba/fastjson/JSONPath$IntBetweenSegement;->endValue:J

    cmp-long v0, p1, p3

    if-gtz v0, :cond_23

    .line 2930
    iget-boolean p1, p0, Lcom/alibaba/fastjson/JSONPath$IntBetweenSegement;->not:Z

    xor-int/lit8 p1, p1, 0x1

    return p1

    .line 2934
    :cond_23
    iget-boolean p1, p0, Lcom/alibaba/fastjson/JSONPath$IntBetweenSegement;->not:Z

    return p1
.end method

###### Class com.alibaba.fastjson.JSONPath.IntInSegement (com.alibaba.fastjson.JSONPath$IntInSegement)
.class Lcom/alibaba/fastjson/JSONPath$IntInSegement;
.super Lcom/alibaba/fastjson/JSONPath$PropertyFilter;
.source "JSONPath.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/fastjson/JSONPath;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "IntInSegement"
.end annotation


# instance fields
.field private final not:Z

.field private final values:[J


# direct methods
.method public constructor <init>(Ljava/lang/String;Z[JZ)V
    .registers 5

    .line 2883
    invoke-direct {p0, p1, p2}, Lcom/alibaba/fastjson/JSONPath$PropertyFilter;-><init>(Ljava/lang/String;Z)V

    .line 2884
    iput-object p3, p0, Lcom/alibaba/fastjson/JSONPath$IntInSegement;->values:[J

    .line 2885
    iput-boolean p4, p0, Lcom/alibaba/fastjson/JSONPath$IntInSegement;->not:Z

    return-void
.end method


# virtual methods
.method public apply(Lcom/alibaba/fastjson/JSONPath;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 9

    .line 2889
    invoke-virtual {p0, p1, p2, p4}, Lcom/alibaba/fastjson/JSONPath$IntInSegement;->get(Lcom/alibaba/fastjson/JSONPath;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const/4 p2, 0x0

    if-nez p1, :cond_8

    return p2

    .line 2895
    :cond_8
    instance-of p3, p1, Ljava/lang/Number;

    if-eqz p3, :cond_25

    .line 2896
    check-cast p1, Ljava/lang/Number;

    invoke-static {p1}, Lcom/alibaba/fastjson/util/TypeUtils;->longExtractValue(Ljava/lang/Number;)J

    move-result-wide p3

    .line 2897
    iget-object p1, p0, Lcom/alibaba/fastjson/JSONPath$IntInSegement;->values:[J

    array-length v0, p1

    :goto_15
    if-ge p2, v0, :cond_25

    aget-wide v1, p1, p2

    cmp-long v3, v1, p3

    if-nez v3, :cond_22

    .line 2899
    iget-boolean p1, p0, Lcom/alibaba/fastjson/JSONPath$IntInSegement;->not:Z

    xor-int/lit8 p1, p1, 0x1

    return p1

    :cond_22
    add-int/lit8 p2, p2, 0x1

    goto :goto_15

    .line 2904
    :cond_25
    iget-boolean p1, p0, Lcom/alibaba/fastjson/JSONPath$IntInSegement;->not:Z

    return p1
.end method

###### Class com.alibaba.fastjson.JSONPath.IntObjInSegement (com.alibaba.fastjson.JSONPath$IntObjInSegement)
.class Lcom/alibaba/fastjson/JSONPath$IntObjInSegement;
.super Lcom/alibaba/fastjson/JSONPath$PropertyFilter;
.source "JSONPath.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/fastjson/JSONPath;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "IntObjInSegement"
.end annotation


# instance fields
.field private final not:Z

.field private final values:[Ljava/lang/Long;


# direct methods
.method public constructor <init>(Ljava/lang/String;Z[Ljava/lang/Long;Z)V
    .registers 5

    .line 2943
    invoke-direct {p0, p1, p2}, Lcom/alibaba/fastjson/JSONPath$PropertyFilter;-><init>(Ljava/lang/String;Z)V

    .line 2944
    iput-object p3, p0, Lcom/alibaba/fastjson/JSONPath$IntObjInSegement;->values:[Ljava/lang/Long;

    .line 2945
    iput-boolean p4, p0, Lcom/alibaba/fastjson/JSONPath$IntObjInSegement;->not:Z

    return-void
.end method


# virtual methods
.method public apply(Lcom/alibaba/fastjson/JSONPath;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 9

    .line 2949
    invoke-virtual {p0, p1, p2, p4}, Lcom/alibaba/fastjson/JSONPath$IntObjInSegement;->get(Lcom/alibaba/fastjson/JSONPath;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const/4 p2, 0x0

    if-nez p1, :cond_1b

    .line 2952
    iget-object p1, p0, Lcom/alibaba/fastjson/JSONPath$IntObjInSegement;->values:[Ljava/lang/Long;

    array-length p3, p1

    :goto_a
    if-ge p2, p3, :cond_18

    aget-object p4, p1, p2

    if-nez p4, :cond_15

    .line 2954
    iget-boolean p1, p0, Lcom/alibaba/fastjson/JSONPath$IntObjInSegement;->not:Z

    :goto_12
    xor-int/lit8 p1, p1, 0x1

    return p1

    :cond_15
    add-int/lit8 p2, p2, 0x1

    goto :goto_a

    .line 2958
    :cond_18
    iget-boolean p1, p0, Lcom/alibaba/fastjson/JSONPath$IntObjInSegement;->not:Z

    return p1

    .line 2961
    :cond_1b
    instance-of p3, p1, Ljava/lang/Number;

    if-eqz p3, :cond_3d

    .line 2962
    check-cast p1, Ljava/lang/Number;

    invoke-static {p1}, Lcom/alibaba/fastjson/util/TypeUtils;->longExtractValue(Ljava/lang/Number;)J

    move-result-wide p3

    .line 2963
    iget-object p1, p0, Lcom/alibaba/fastjson/JSONPath$IntObjInSegement;->values:[Ljava/lang/Long;

    array-length v0, p1

    :goto_28
    if-ge p2, v0, :cond_3d

    aget-object v1, p1, p2

    if-nez v1, :cond_2f

    goto :goto_3a

    .line 2968
    :cond_2f
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    cmp-long v3, v1, p3

    if-nez v3, :cond_3a

    .line 2969
    iget-boolean p1, p0, Lcom/alibaba/fastjson/JSONPath$IntObjInSegement;->not:Z

    goto :goto_12

    :cond_3a
    :goto_3a
    add-int/lit8 p2, p2, 0x1

    goto :goto_28

    .line 2974
    :cond_3d
    iget-boolean p1, p0, Lcom/alibaba/fastjson/JSONPath$IntObjInSegement;->not:Z

    return p1
.end method

###### Class com.alibaba.fastjson.JSONPath.IntOpSegement (com.alibaba.fastjson.JSONPath$IntOpSegement)
.class Lcom/alibaba/fastjson/JSONPath$IntOpSegement;
.super Lcom/alibaba/fastjson/JSONPath$PropertyFilter;
.source "JSONPath.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/fastjson/JSONPath;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "IntOpSegement"
.end annotation


# instance fields
.field private final op:Lcom/alibaba/fastjson/JSONPath$Operator;

.field private final value:J

.field private valueDecimal:Ljava/math/BigDecimal;

.field private valueDouble:Ljava/lang/Double;

.field private valueFloat:Ljava/lang/Float;


# direct methods
.method public constructor <init>(Ljava/lang/String;ZJLcom/alibaba/fastjson/JSONPath$Operator;)V
    .registers 6

    .line 3012
    invoke-direct {p0, p1, p2}, Lcom/alibaba/fastjson/JSONPath$PropertyFilter;-><init>(Ljava/lang/String;Z)V

    .line 3013
    iput-wide p3, p0, Lcom/alibaba/fastjson/JSONPath$IntOpSegement;->value:J

    .line 3014
    iput-object p5, p0, Lcom/alibaba/fastjson/JSONPath$IntOpSegement;->op:Lcom/alibaba/fastjson/JSONPath$Operator;

    return-void
.end method


# virtual methods
.method public apply(Lcom/alibaba/fastjson/JSONPath;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 9

    .line 3018
    invoke-virtual {p0, p1, p2, p4}, Lcom/alibaba/fastjson/JSONPath$IntOpSegement;->get(Lcom/alibaba/fastjson/JSONPath;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const/4 p2, 0x0

    if-nez p1, :cond_8

    return p2

    .line 3024
    :cond_8
    instance-of p3, p1, Ljava/lang/Number;

    if-nez p3, :cond_d

    return p2

    .line 3028
    :cond_d
    instance-of p3, p1, Ljava/math/BigDecimal;

    const/4 p4, 0x1

    if-eqz p3, :cond_4c

    .line 3029
    iget-object p3, p0, Lcom/alibaba/fastjson/JSONPath$IntOpSegement;->valueDecimal:Ljava/math/BigDecimal;

    if-nez p3, :cond_1e

    .line 3030
    iget-wide v0, p0, Lcom/alibaba/fastjson/JSONPath$IntOpSegement;->value:J

    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object p3

    iput-object p3, p0, Lcom/alibaba/fastjson/JSONPath$IntOpSegement;->valueDecimal:Ljava/math/BigDecimal;

    .line 3033
    :cond_1e
    iget-object p3, p0, Lcom/alibaba/fastjson/JSONPath$IntOpSegement;->valueDecimal:Ljava/math/BigDecimal;

    check-cast p1, Ljava/math/BigDecimal;

    invoke-virtual {p3, p1}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result p1

    .line 3034
    sget-object p3, Lcom/alibaba/fastjson/JSONPath$1;->$SwitchMap$com$alibaba$fastjson$JSONPath$Operator:[I

    iget-object v0, p0, Lcom/alibaba/fastjson/JSONPath$IntOpSegement;->op:Lcom/alibaba/fastjson/JSONPath$Operator;

    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONPath$Operator;->ordinal()I

    move-result v0

    aget p3, p3, v0

    packed-switch p3, :pswitch_data_10e

    return p2

    :pswitch_34
    if-lez p1, :cond_37

    return p4

    :cond_37
    return p2

    :pswitch_38
    if-ltz p1, :cond_3b

    return p4

    :cond_3b
    return p2

    :pswitch_3c
    if-gez p1, :cond_3f

    return p4

    :cond_3f
    return p2

    :pswitch_40
    if-gtz p1, :cond_43

    return p4

    :cond_43
    return p2

    :pswitch_44
    if-eqz p1, :cond_47

    return p4

    :cond_47
    return p2

    :pswitch_48
    if-nez p1, :cond_4b

    return p4

    :cond_4b
    return p2

    .line 3052
    :cond_4c
    instance-of p3, p1, Ljava/lang/Float;

    if-eqz p3, :cond_8b

    .line 3053
    iget-object p3, p0, Lcom/alibaba/fastjson/JSONPath$IntOpSegement;->valueFloat:Ljava/lang/Float;

    if-nez p3, :cond_5d

    .line 3054
    iget-wide v0, p0, Lcom/alibaba/fastjson/JSONPath$IntOpSegement;->value:J

    long-to-float p3, v0

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p3

    iput-object p3, p0, Lcom/alibaba/fastjson/JSONPath$IntOpSegement;->valueFloat:Ljava/lang/Float;

    .line 3057
    :cond_5d
    iget-object p3, p0, Lcom/alibaba/fastjson/JSONPath$IntOpSegement;->valueFloat:Ljava/lang/Float;

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p3, p1}, Ljava/lang/Float;->compareTo(Ljava/lang/Float;)I

    move-result p1

    .line 3058
    sget-object p3, Lcom/alibaba/fastjson/JSONPath$1;->$SwitchMap$com$alibaba$fastjson$JSONPath$Operator:[I

    iget-object v0, p0, Lcom/alibaba/fastjson/JSONPath$IntOpSegement;->op:Lcom/alibaba/fastjson/JSONPath$Operator;

    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONPath$Operator;->ordinal()I

    move-result v0

    aget p3, p3, v0

    packed-switch p3, :pswitch_data_11e

    return p2

    :pswitch_73
    if-lez p1, :cond_76

    return p4

    :cond_76
    return p2

    :pswitch_77
    if-ltz p1, :cond_7a

    return p4

    :cond_7a
    return p2

    :pswitch_7b
    if-gez p1, :cond_7e

    return p4

    :cond_7e
    return p2

    :pswitch_7f
    if-gtz p1, :cond_82

    return p4

    :cond_82
    return p2

    :pswitch_83
    if-eqz p1, :cond_86

    return p4

    :cond_86
    return p2

    :pswitch_87
    if-nez p1, :cond_8a

    return p4

    :cond_8a
    return p2

    .line 3076
    :cond_8b
    instance-of p3, p1, Ljava/lang/Double;

    if-eqz p3, :cond_ca

    .line 3077
    iget-object p3, p0, Lcom/alibaba/fastjson/JSONPath$IntOpSegement;->valueDouble:Ljava/lang/Double;

    if-nez p3, :cond_9c

    .line 3078
    iget-wide v0, p0, Lcom/alibaba/fastjson/JSONPath$IntOpSegement;->value:J

    long-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p3

    iput-object p3, p0, Lcom/alibaba/fastjson/JSONPath$IntOpSegement;->valueDouble:Ljava/lang/Double;

    .line 3081
    :cond_9c
    iget-object p3, p0, Lcom/alibaba/fastjson/JSONPath$IntOpSegement;->valueDouble:Ljava/lang/Double;

    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p3, p1}, Ljava/lang/Double;->compareTo(Ljava/lang/Double;)I

    move-result p1

    .line 3082
    sget-object p3, Lcom/alibaba/fastjson/JSONPath$1;->$SwitchMap$com$alibaba$fastjson$JSONPath$Operator:[I

    iget-object v0, p0, Lcom/alibaba/fastjson/JSONPath$IntOpSegement;->op:Lcom/alibaba/fastjson/JSONPath$Operator;

    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONPath$Operator;->ordinal()I

    move-result v0

    aget p3, p3, v0

    packed-switch p3, :pswitch_data_12e

    return p2

    :pswitch_b2
    if-lez p1, :cond_b5

    return p4

    :cond_b5
    return p2

    :pswitch_b6
    if-ltz p1, :cond_b9

    return p4

    :cond_b9
    return p2

    :pswitch_ba
    if-gez p1, :cond_bd

    return p4

    :cond_bd
    return p2

    :pswitch_be
    if-gtz p1, :cond_c1

    return p4

    :cond_c1
    return p2

    :pswitch_c2
    if-eqz p1, :cond_c5

    return p4

    :cond_c5
    return p2

    :pswitch_c6
    if-nez p1, :cond_c9

    return p4

    :cond_c9
    return p2

    .line 3100
    :cond_ca
    check-cast p1, Ljava/lang/Number;

    invoke-static {p1}, Lcom/alibaba/fastjson/util/TypeUtils;->longExtractValue(Ljava/lang/Number;)J

    move-result-wide v0

    .line 3102
    sget-object p1, Lcom/alibaba/fastjson/JSONPath$1;->$SwitchMap$com$alibaba$fastjson$JSONPath$Operator:[I

    iget-object p3, p0, Lcom/alibaba/fastjson/JSONPath$IntOpSegement;->op:Lcom/alibaba/fastjson/JSONPath$Operator;

    invoke-virtual {p3}, Lcom/alibaba/fastjson/JSONPath$Operator;->ordinal()I

    move-result p3

    aget p1, p1, p3

    packed-switch p1, :pswitch_data_13e

    return p2

    .line 3114
    :pswitch_de
    iget-wide v2, p0, Lcom/alibaba/fastjson/JSONPath$IntOpSegement;->value:J

    cmp-long p1, v0, v2

    if-gez p1, :cond_e5

    return p4

    :cond_e5
    return p2

    .line 3112
    :pswitch_e6
    iget-wide v2, p0, Lcom/alibaba/fastjson/JSONPath$IntOpSegement;->value:J

    cmp-long p1, v0, v2

    if-gtz p1, :cond_ed

    return p4

    :cond_ed
    return p2

    .line 3110
    :pswitch_ee
    iget-wide v2, p0, Lcom/alibaba/fastjson/JSONPath$IntOpSegement;->value:J

    cmp-long p1, v0, v2

    if-lez p1, :cond_f5

    return p4

    :cond_f5
    return p2

    .line 3108
    :pswitch_f6
    iget-wide v2, p0, Lcom/alibaba/fastjson/JSONPath$IntOpSegement;->value:J

    cmp-long p1, v0, v2

    if-ltz p1, :cond_fd

    return p4

    :cond_fd
    return p2

    .line 3106
    :pswitch_fe
    iget-wide v2, p0, Lcom/alibaba/fastjson/JSONPath$IntOpSegement;->value:J

    cmp-long p1, v0, v2

    if-eqz p1, :cond_105

    return p4

    :cond_105
    return p2

    .line 3104
    :pswitch_106
    iget-wide v2, p0, Lcom/alibaba/fastjson/JSONPath$IntOpSegement;->value:J

    cmp-long p1, v0, v2

    if-nez p1, :cond_10d

    return p4

    :cond_10d
    return p2

    :pswitch_data_10e
    .packed-switch 0x1
        :pswitch_48
        :pswitch_44
        :pswitch_40
        :pswitch_3c
        :pswitch_38
        :pswitch_34
    .end packed-switch

    :pswitch_data_11e
    .packed-switch 0x1
        :pswitch_87
        :pswitch_83
        :pswitch_7f
        :pswitch_7b
        :pswitch_77
        :pswitch_73
    .end packed-switch

    :pswitch_data_12e
    .packed-switch 0x1
        :pswitch_c6
        :pswitch_c2
        :pswitch_be
        :pswitch_ba
        :pswitch_b6
        :pswitch_b2
    .end packed-switch

    :pswitch_data_13e
    .packed-switch 0x1
        :pswitch_106
        :pswitch_fe
        :pswitch_f6
        :pswitch_ee
        :pswitch_e6
        :pswitch_de
    .end packed-switch
.end method

###### Class com.alibaba.fastjson.JSONPath.JSONPathParser (com.alibaba.fastjson.JSONPath$JSONPathParser)
.class Lcom/alibaba/fastjson/JSONPath$JSONPathParser;
.super Ljava/lang/Object;
.source "JSONPath.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/fastjson/JSONPath;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "JSONPathParser"
.end annotation


# static fields
.field private static final strArrayPatternx:Ljava/util/regex/Pattern;

.field private static final strArrayRegex:Ljava/lang/String; = "\'\\s*,\\s*\'"


# instance fields
.field private ch:C

.field private hasRefSegment:Z

.field private level:I

.field private final path:Ljava/lang/String;

.field private pos:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 903
    const-string v0, "\'\\s*,\\s*\'"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->strArrayPatternx:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 905
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 906
    iput-object p1, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->path:Ljava/lang/String;

    .line 907
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/fastjson/JSONPath$JSONPathParser;)Z
    .registers 1

    .line 895
    iget-boolean p0, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->hasRefSegment:Z

    return p0
.end method

.method static isDigitFirst(C)Z
    .registers 2

    const/16 v0, 0x2d

    if-eq p0, v0, :cond_13

    const/16 v0, 0x2b

    if-eq p0, v0, :cond_13

    const/16 v0, 0x30

    if-lt p0, v0, :cond_11

    const/16 v0, 0x39

    if-gt p0, v0, :cond_11

    goto :goto_13

    :cond_11
    const/4 p0, 0x0

    return p0

    :cond_13
    :goto_13
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method accept(C)V
    .registers 5

    .line 1954
    iget-char v0, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    const/16 v1, 0x20

    if-ne v0, v1, :cond_9

    .line 1955
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    .line 1958
    :cond_9
    iget-char v0, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    if-ne v0, p1, :cond_17

    .line 1962
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->isEOF()Z

    move-result p1

    if-nez p1, :cond_16

    .line 1963
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    :cond_16
    return-void

    .line 1959
    :cond_17
    new-instance v0, Lcom/alibaba/fastjson/JSONPathException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "expect \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string p1, ", but \'"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-char p1, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string p1, "\'"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/alibaba/fastjson/JSONPathException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method buildArraySegement(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONPath$Segment;
    .registers 11

    .line 2005
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    .line 2006
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v0, v3

    .line 2007
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x2c

    .line 2009
    invoke-virtual {p1, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    .line 2011
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v7, -0x1

    const/4 v8, 0x2

    if-le v6, v8, :cond_48

    const/16 v6, 0x27

    if-ne v2, v6, :cond_48

    if-ne v4, v6, :cond_48

    .line 2013
    invoke-virtual {p1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    if-eq v5, v7, :cond_42

    .line 2015
    sget-object v2, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->strArrayPatternx:Ljava/util/regex/Pattern;

    invoke-virtual {v2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->find()Z

    move-result p1

    if-nez p1, :cond_36

    goto :goto_42

    .line 2019
    :cond_36
    const-string p1, "\'\\s*,\\s*\'"

    invoke-virtual {v0, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 2020
    new-instance v0, Lcom/alibaba/fastjson/JSONPath$MultiPropertySegment;

    invoke-direct {v0, p1}, Lcom/alibaba/fastjson/JSONPath$MultiPropertySegment;-><init>([Ljava/lang/String;)V

    return-object v0

    .line 2016
    :cond_42
    :goto_42
    new-instance p1, Lcom/alibaba/fastjson/JSONPath$PropertySegment;

    invoke-direct {p1, v0, v1}, Lcom/alibaba/fastjson/JSONPath$PropertySegment;-><init>(Ljava/lang/String;Z)V

    return-object p1

    :cond_48
    const/16 v0, 0x3a

    .line 2023
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ne v5, v7, :cond_8a

    if-ne v0, v7, :cond_8a

    .line 2026
    invoke-static {p1}, Lcom/alibaba/fastjson/util/TypeUtils;->isNumber(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_68

    .line 2028
    :try_start_58
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 2029
    new-instance v2, Lcom/alibaba/fastjson/JSONPath$ArrayAccessSegment;

    invoke-direct {v2, v0}, Lcom/alibaba/fastjson/JSONPath$ArrayAccessSegment;-><init>(I)V
    :try_end_61
    .catch Ljava/lang/NumberFormatException; {:try_start_58 .. :try_end_61} :catch_62

    return-object v2

    .line 2031
    :catch_62
    new-instance v0, Lcom/alibaba/fastjson/JSONPath$PropertySegment;

    invoke-direct {v0, p1, v1}, Lcom/alibaba/fastjson/JSONPath$PropertySegment;-><init>(Ljava/lang/String;Z)V

    return-object v0

    .line 2034
    :cond_68
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v2, 0x22

    if-ne v0, v2, :cond_84

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v3

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v2, :cond_84

    .line 2035
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v3

    invoke-virtual {p1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 2037
    :cond_84
    new-instance v0, Lcom/alibaba/fastjson/JSONPath$PropertySegment;

    invoke-direct {v0, p1, v1}, Lcom/alibaba/fastjson/JSONPath$PropertySegment;-><init>(Ljava/lang/String;Z)V

    return-object v0

    :cond_8a
    if-eq v5, v7, :cond_a9

    .line 2042
    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 2043
    array-length v0, p1

    new-array v0, v0, [I

    .line 2044
    :goto_95
    array-length v2, p1

    if-ge v1, v2, :cond_a3

    .line 2045
    aget-object v2, p1, v1

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_95

    .line 2047
    :cond_a3
    new-instance p1, Lcom/alibaba/fastjson/JSONPath$MultiIndexSegment;

    invoke-direct {p1, v0}, Lcom/alibaba/fastjson/JSONPath$MultiIndexSegment;-><init>([I)V

    return-object p1

    :cond_a9
    if-eq v0, v7, :cond_11d

    .line 2051
    const-string v0, ":"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 2052
    array-length v0, p1

    new-array v2, v0, [I

    const/4 v4, 0x0

    .line 2053
    :goto_b5
    array-length v5, p1

    if-ge v4, v5, :cond_d4

    .line 2054
    aget-object v5, p1, v4

    .line 2055
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_cb

    if-nez v4, :cond_c5

    .line 2057
    aput v1, v2, v4

    goto :goto_d1

    .line 2059
    :cond_c5
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    .line 2062
    :cond_cb
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    aput v5, v2, v4

    :goto_d1
    add-int/lit8 v4, v4, 0x1

    goto :goto_b5

    .line 2066
    :cond_d4
    aget p1, v2, v1

    if-le v0, v3, :cond_da

    .line 2069
    aget v7, v2, v3

    :cond_da
    const/4 v1, 0x3

    if-ne v0, v1, :cond_df

    .line 2075
    aget v3, v2, v8

    :cond_df
    if-ltz v7, :cond_100

    if-lt v7, p1, :cond_e4

    goto :goto_100

    .line 2081
    :cond_e4
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "end must greater than or equals start. start "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ",  end "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_100
    :goto_100
    if-lez v3, :cond_108

    .line 2088
    new-instance v0, Lcom/alibaba/fastjson/JSONPath$RangeSegment;

    invoke-direct {v0, p1, v7, v3}, Lcom/alibaba/fastjson/JSONPath$RangeSegment;-><init>(III)V

    return-object v0

    .line 2086
    :cond_108
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "step must greater than zero : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2091
    :cond_11d
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public explain()[Lcom/alibaba/fastjson/JSONPath$Segment;
    .registers 6

    .line 1968
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->path:Ljava/lang/String;

    if-eqz v0, :cond_53

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_53

    const/16 v0, 0x8

    .line 1972
    new-array v0, v0, [Lcom/alibaba/fastjson/JSONPath$Segment;

    .line 1975
    :goto_e
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->readSegement()Lcom/alibaba/fastjson/JSONPath$Segment;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_21

    .line 1995
    iget v1, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->level:I

    array-length v3, v0

    if-ne v1, v3, :cond_1b

    return-object v0

    .line 1999
    :cond_1b
    new-array v3, v1, [Lcom/alibaba/fastjson/JSONPath$Segment;

    .line 2000
    invoke-static {v0, v2, v3, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v3

    .line 1980
    :cond_21
    instance-of v3, v1, Lcom/alibaba/fastjson/JSONPath$PropertySegment;

    if-eqz v3, :cond_3b

    .line 1981
    move-object v3, v1

    check-cast v3, Lcom/alibaba/fastjson/JSONPath$PropertySegment;

    .line 1982
    invoke-static {v3}, Lcom/alibaba/fastjson/JSONPath$PropertySegment;->access$100(Lcom/alibaba/fastjson/JSONPath$PropertySegment;)Z

    move-result v4

    if-nez v4, :cond_3b

    invoke-static {v3}, Lcom/alibaba/fastjson/JSONPath$PropertySegment;->access$400(Lcom/alibaba/fastjson/JSONPath$PropertySegment;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "*"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3b

    goto :goto_e

    .line 1987
    :cond_3b
    iget v3, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->level:I

    array-length v4, v0

    if-ne v3, v4, :cond_4a

    mul-int/lit8 v4, v3, 0x3

    .line 1988
    div-int/lit8 v4, v4, 0x2

    new-array v4, v4, [Lcom/alibaba/fastjson/JSONPath$Segment;

    .line 1989
    invoke-static {v0, v2, v4, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v0, v4

    .line 1992
    :cond_4a
    iget v2, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->level:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->level:I

    aput-object v1, v0, v2

    goto :goto_e

    .line 1969
    :cond_53
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method filterRest(Lcom/alibaba/fastjson/JSONPath$Filter;)Lcom/alibaba/fastjson/JSONPath$Filter;
    .registers 7

    .line 1745
    iget-char v0, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0x26

    if-ne v0, v3, :cond_a

    const/4 v4, 0x1

    goto :goto_b

    :cond_a
    const/4 v4, 0x0

    :goto_b
    if-ne v0, v3, :cond_13

    .line 1746
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->getNextChar()C

    move-result v0

    if-eq v0, v3, :cond_1f

    :cond_13
    iget-char v0, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    const/16 v3, 0x7c

    if-ne v0, v3, :cond_51

    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->getNextChar()C

    move-result v0

    if-ne v0, v3, :cond_51

    .line 1747
    :cond_1f
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    .line 1748
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    .line 1751
    iget-char v0, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    const/16 v3, 0x28

    if-ne v0, v3, :cond_2f

    .line 1753
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    goto :goto_30

    :cond_2f
    const/4 v1, 0x0

    .line 1756
    :goto_30
    iget-char v0, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    const/16 v3, 0x20

    if-ne v0, v3, :cond_3a

    .line 1757
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    goto :goto_30

    .line 1760
    :cond_3a
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->parseArrayAccessFilter(Z)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/fastjson/JSONPath$Filter;

    .line 1762
    new-instance v2, Lcom/alibaba/fastjson/JSONPath$FilterGroup;

    invoke-direct {v2, p1, v0, v4}, Lcom/alibaba/fastjson/JSONPath$FilterGroup;-><init>(Lcom/alibaba/fastjson/JSONPath$Filter;Lcom/alibaba/fastjson/JSONPath$Filter;Z)V

    if-eqz v1, :cond_50

    .line 1764
    iget-char p1, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    const/16 v0, 0x29

    if-ne p1, v0, :cond_50

    .line 1765
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    :cond_50
    return-object v2

    :cond_51
    return-object p1
.end method

.method getNextChar()C
    .registers 3

    .line 915
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->path:Ljava/lang/String;

    iget v1, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->pos:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    return v0
.end method

.method isEOF()Z
    .registers 3

    .line 919
    iget v0, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->pos:I

    iget-object v1, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->path:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v0, v1, :cond_c

    const/4 v0, 0x1

    return v0

    :cond_c
    const/4 v0, 0x0

    return v0
.end method

.method next()V
    .registers 4

    .line 911
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->path:Ljava/lang/String;

    iget v1, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->pos:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    iput-char v0, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    return-void
.end method

.method parseArrayAccess(Z)Lcom/alibaba/fastjson/JSONPath$Segment;
    .registers 3

    .line 1047
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->parseArrayAccessFilter(Z)Ljava/lang/Object;

    move-result-object p1

    .line 1048
    instance-of v0, p1, Lcom/alibaba/fastjson/JSONPath$Segment;

    if-eqz v0, :cond_b

    .line 1049
    check-cast p1, Lcom/alibaba/fastjson/JSONPath$Segment;

    return-object p1

    .line 1051
    :cond_b
    new-instance v0, Lcom/alibaba/fastjson/JSONPath$FilterSegment;

    check-cast p1, Lcom/alibaba/fastjson/JSONPath$Filter;

    invoke-direct {v0, p1}, Lcom/alibaba/fastjson/JSONPath$FilterSegment;-><init>(Lcom/alibaba/fastjson/JSONPath$Filter;)V

    return-object v0
.end method

.method parseArrayAccessFilter(Z)Ljava/lang/Object;
    .registers 27

    move-object/from16 v0, p0

    if-eqz p1, :cond_9

    const/16 v1, 0x5b

    .line 1056
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->accept(C)V

    .line 1062
    :cond_9
    iget-char v1, v0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    const/16 v2, 0x3f

    const/16 v3, 0x28

    const/4 v5, 0x1

    if-ne v1, v2, :cond_25

    .line 1063
    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    .line 1064
    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->accept(C)V

    const/4 v1, 0x1

    .line 1066
    :goto_19
    iget-char v2, v0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    if-ne v2, v3, :cond_23

    .line 1067
    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_19

    :cond_23
    const/4 v2, 0x1

    goto :goto_27

    :cond_25
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 1073
    :goto_27
    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->skipWhitespace()V

    const/16 v6, 0x22

    const/16 v7, 0x27

    const/16 v8, 0x40

    const/16 v9, 0x2f

    const/16 v10, 0x2e

    const/4 v11, -0x1

    const/4 v12, 0x2

    const/16 v13, 0x5c

    const/16 v14, 0x5d

    if-nez v2, :cond_12b

    .line 1075
    iget-char v3, v0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    .line 1076
    invoke-static {v3}, Lcom/alibaba/fastjson/util/IOUtils;->firstIdentifier(C)Z

    move-result v3

    if-nez v3, :cond_12b

    iget-char v3, v0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    .line 1077
    invoke-static {v3}, Ljava/lang/Character;->isJavaIdentifierStart(C)Z

    move-result v3

    if-nez v3, :cond_12b

    iget-char v3, v0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    if-eq v3, v13, :cond_12b

    if-ne v3, v8, :cond_54

    goto/16 :goto_12b

    .line 1669
    :cond_54
    iget v1, v0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->pos:I

    sub-int/2addr v1, v5

    .line 1671
    :goto_57
    iget-char v4, v0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    if-eq v4, v14, :cond_77

    if-eq v4, v9, :cond_77

    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->isEOF()Z

    move-result v4

    if-nez v4, :cond_77

    .line 1672
    iget-char v4, v0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    if-ne v4, v10, :cond_6e

    if-nez v2, :cond_6e

    if-nez v2, :cond_6e

    if-eq v3, v7, :cond_6e

    goto :goto_77

    :cond_6e
    if-ne v4, v13, :cond_73

    .line 1681
    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    .line 1683
    :cond_73
    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    goto :goto_57

    :cond_77
    :goto_77
    if-eqz p1, :cond_7d

    .line 1688
    iget v4, v0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->pos:I

    :goto_7b
    sub-int/2addr v4, v5

    goto :goto_8a

    .line 1690
    :cond_7d
    iget-char v4, v0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    if-eq v4, v9, :cond_87

    if-ne v4, v10, :cond_84

    goto :goto_87

    .line 1693
    :cond_84
    iget v4, v0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->pos:I

    goto :goto_8a

    .line 1691
    :cond_87
    :goto_87
    iget v4, v0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->pos:I

    goto :goto_7b

    .line 1697
    :goto_8a
    iget-object v9, v0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->path:Ljava/lang/String;

    invoke-virtual {v9, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 1699
    invoke-virtual {v1, v13}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-eqz v4, :cond_d0

    .line 1700
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v9

    invoke-direct {v4, v9}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v9, 0x0

    .line 1701
    :goto_a0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v10

    if-ge v9, v10, :cond_cc

    .line 1702
    invoke-virtual {v1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-ne v10, v13, :cond_c5

    .line 1703
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v16

    add-int/lit8 v14, v16, -0x1

    if-ge v9, v14, :cond_c5

    add-int/lit8 v14, v9, 0x1

    .line 1704
    invoke-virtual {v1, v14}, Ljava/lang/String;->charAt(I)C

    move-result v15

    if-eq v15, v8, :cond_c0

    if-eq v10, v13, :cond_c0

    if-ne v10, v6, :cond_c5

    .line 1706
    :cond_c0
    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v9, v14

    goto :goto_c8

    .line 1712
    :cond_c5
    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_c8
    add-int/2addr v9, v5

    const/16 v14, 0x5d

    goto :goto_a0

    .line 1714
    :cond_cc
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1717
    :cond_d0
    const-string v4, "\\."

    invoke-virtual {v1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    if-eq v6, v11, :cond_119

    if-ne v3, v7, :cond_f5

    .line 1719
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    if-le v6, v12, :cond_f5

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    sub-int/2addr v6, v5

    invoke-virtual {v1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-ne v6, v3, :cond_f5

    .line 1720
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v3, v5

    invoke-virtual {v1, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_10b

    .line 1722
    :cond_f5
    const-string v3, "\\\\\\."

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1723
    const-string v3, "\\-"

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-eq v3, v11, :cond_10b

    .line 1724
    const-string v3, "\\\\-"

    const-string v4, "-"

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_10b
    :goto_10b
    if-eqz v2, :cond_112

    const/16 v2, 0x29

    .line 1729
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->accept(C)V

    .line 1732
    :cond_112
    new-instance v2, Lcom/alibaba/fastjson/JSONPath$PropertySegment;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v3}, Lcom/alibaba/fastjson/JSONPath$PropertySegment;-><init>(Ljava/lang/String;Z)V

    return-object v2

    .line 1735
    :cond_119
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->buildArraySegement(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONPath$Segment;

    move-result-object v1

    if-eqz p1, :cond_12a

    .line 1737
    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->isEOF()Z

    move-result v2

    if-nez v2, :cond_12a

    const/16 v2, 0x5d

    .line 1738
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->accept(C)V

    :cond_12a
    return-object v1

    .line 1081
    :cond_12b
    :goto_12b
    iget-char v3, v0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    if-ne v3, v8, :cond_135

    .line 1082
    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    .line 1083
    invoke-virtual {v0, v10}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->accept(C)V

    .line 1086
    :cond_135
    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->readName()Ljava/lang/String;

    move-result-object v3

    .line 1088
    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->skipWhitespace()V

    const/16 v4, 0x7c

    const/16 v8, 0x26

    const/16 v14, 0x20

    if-eqz v2, :cond_16b

    .line 1090
    iget-char v15, v0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    const/16 v12, 0x29

    if-ne v15, v12, :cond_16b

    .line 1091
    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    .line 1093
    new-instance v1, Lcom/alibaba/fastjson/JSONPath$NotNullSegement;

    const/4 v2, 0x0

    invoke-direct {v1, v3, v2}, Lcom/alibaba/fastjson/JSONPath$NotNullSegement;-><init>(Ljava/lang/String;Z)V

    .line 1094
    :goto_153
    iget-char v2, v0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    if-ne v2, v14, :cond_15b

    .line 1095
    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    goto :goto_153

    :cond_15b
    if-eq v2, v8, :cond_15f

    if-ne v2, v4, :cond_163

    .line 1099
    :cond_15f
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->filterRest(Lcom/alibaba/fastjson/JSONPath$Filter;)Lcom/alibaba/fastjson/JSONPath$Filter;

    move-result-object v1

    :cond_163
    if-eqz p1, :cond_16a

    const/16 v12, 0x5d

    .line 1103
    invoke-virtual {v0, v12}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->accept(C)V

    :cond_16a
    return-object v1

    :cond_16b
    const/16 v12, 0x5d

    if-eqz p1, :cond_1b6

    .line 1108
    iget-char v15, v0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    if-ne v15, v12, :cond_1b6

    .line 1109
    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->isEOF()Z

    move-result v1

    if-eqz v1, :cond_18b

    .line 1110
    const-string v1, "last"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18b

    .line 1111
    new-instance v1, Lcom/alibaba/fastjson/JSONPath$MultiIndexSegment;

    filled-new-array {v11}, [I

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson/JSONPath$MultiIndexSegment;-><init>([I)V

    return-object v1

    .line 1115
    :cond_18b
    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    .line 1116
    new-instance v1, Lcom/alibaba/fastjson/JSONPath$NotNullSegement;

    const/4 v5, 0x0

    invoke-direct {v1, v3, v5}, Lcom/alibaba/fastjson/JSONPath$NotNullSegement;-><init>(Ljava/lang/String;Z)V

    .line 1117
    :goto_194
    iget-char v3, v0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    if-ne v3, v14, :cond_19c

    .line 1118
    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    goto :goto_194

    :cond_19c
    if-eq v3, v8, :cond_1a0

    if-ne v3, v4, :cond_1a4

    .line 1122
    :cond_1a0
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->filterRest(Lcom/alibaba/fastjson/JSONPath$Filter;)Lcom/alibaba/fastjson/JSONPath$Filter;

    move-result-object v1

    :cond_1a4
    const/16 v12, 0x29

    .line 1125
    invoke-virtual {v0, v12}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->accept(C)V

    if-eqz v2, :cond_1ae

    .line 1127
    invoke-virtual {v0, v12}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->accept(C)V

    :cond_1ae
    if-eqz p1, :cond_1b5

    const/16 v2, 0x5d

    .line 1131
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->accept(C)V

    :cond_1b5
    return-object v1

    .line 1137
    :cond_1b6
    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->skipWhitespace()V

    .line 1138
    iget-char v12, v0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    const/16 v15, 0x28

    if-ne v12, v15, :cond_1cd

    .line 1139
    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    const/16 v12, 0x29

    .line 1140
    invoke-virtual {v0, v12}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->accept(C)V

    .line 1141
    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->skipWhitespace()V

    const/16 v19, 0x1

    goto :goto_1cf

    :cond_1cd
    const/16 v19, 0x0

    .line 1145
    :goto_1cf
    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->readOp()Lcom/alibaba/fastjson/JSONPath$Operator;

    move-result-object v12

    .line 1147
    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->skipWhitespace()V

    .line 1149
    sget-object v15, Lcom/alibaba/fastjson/JSONPath$Operator;->BETWEEN:Lcom/alibaba/fastjson/JSONPath$Operator;

    if-eq v12, v15, :cond_6b2

    sget-object v15, Lcom/alibaba/fastjson/JSONPath$Operator;->NOT_BETWEEN:Lcom/alibaba/fastjson/JSONPath$Operator;

    if-ne v12, v15, :cond_1e0

    goto/16 :goto_6b2

    .line 1178
    :cond_1e0
    sget-object v15, Lcom/alibaba/fastjson/JSONPath$Operator;->IN:Lcom/alibaba/fastjson/JSONPath$Operator;

    if-eq v12, v15, :cond_4c3

    sget-object v15, Lcom/alibaba/fastjson/JSONPath$Operator;->NOT_IN:Lcom/alibaba/fastjson/JSONPath$Operator;

    if-ne v12, v15, :cond_1ea

    goto/16 :goto_4c3

    .line 1388
    :cond_1ea
    iget-char v15, v0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    const/16 v16, 0x0

    if-eq v15, v7, :cond_3be

    if-ne v15, v6, :cond_1f4

    goto/16 :goto_3be

    .line 1474
    :cond_1f4
    invoke-static {v15}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->isDigitFirst(C)Z

    move-result v6

    if-eqz v6, :cond_252

    .line 1475
    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->readLongValue()J

    move-result-wide v6

    .line 1477
    iget-char v9, v0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    const-wide/16 v15, 0x0

    if-ne v9, v10, :cond_20b

    .line 1478
    invoke-virtual {v0, v6, v7}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->readDoubleValue(J)D

    move-result-wide v9

    move-wide/from16 v20, v9

    goto :goto_20d

    :cond_20b
    move-wide/from16 v20, v15

    :goto_20d
    cmpl-double v9, v20, v15

    if-nez v9, :cond_21d

    .line 1485
    new-instance v17, Lcom/alibaba/fastjson/JSONPath$IntOpSegement;

    move-object/from16 v18, v3

    move-wide/from16 v20, v6

    move-object/from16 v22, v12

    invoke-direct/range {v17 .. v22}, Lcom/alibaba/fastjson/JSONPath$IntOpSegement;-><init>(Ljava/lang/String;ZJLcom/alibaba/fastjson/JSONPath$Operator;)V

    goto :goto_226

    :cond_21d
    move-object/from16 v18, v3

    move-object/from16 v22, v12

    .line 1487
    new-instance v17, Lcom/alibaba/fastjson/JSONPath$DoubleOpSegement;

    invoke-direct/range {v17 .. v22}, Lcom/alibaba/fastjson/JSONPath$DoubleOpSegement;-><init>(Ljava/lang/String;ZDLcom/alibaba/fastjson/JSONPath$Operator;)V

    :goto_226
    move-object/from16 v3, v17

    .line 1490
    :goto_228
    iget-char v6, v0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    if-ne v6, v14, :cond_230

    .line 1491
    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    goto :goto_228

    :cond_230
    if-le v1, v5, :cond_239

    const/16 v12, 0x29

    if-ne v6, v12, :cond_239

    .line 1495
    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    .line 1499
    :cond_239
    iget-char v1, v0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    if-eq v1, v8, :cond_23f

    if-ne v1, v4, :cond_243

    .line 1500
    :cond_23f
    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->filterRest(Lcom/alibaba/fastjson/JSONPath$Filter;)Lcom/alibaba/fastjson/JSONPath$Filter;

    move-result-object v3

    :cond_243
    if-eqz v2, :cond_24a

    const/16 v12, 0x29

    .line 1505
    invoke-virtual {v0, v12}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->accept(C)V

    :cond_24a
    if-eqz p1, :cond_251

    const/16 v2, 0x5d

    .line 1509
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->accept(C)V

    :cond_251
    return-object v3

    :cond_252
    move-object v1, v3

    move-object v3, v12

    move/from16 v6, v19

    .line 1513
    iget-char v7, v0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    const/16 v10, 0x24

    if-ne v7, v10, :cond_27e

    .line 1514
    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->readSegement()Lcom/alibaba/fastjson/JSONPath$Segment;

    move-result-object v4

    .line 1515
    new-instance v7, Lcom/alibaba/fastjson/JSONPath$RefOpSegement;

    invoke-direct {v7, v1, v6, v4, v3}, Lcom/alibaba/fastjson/JSONPath$RefOpSegement;-><init>(Ljava/lang/String;ZLcom/alibaba/fastjson/JSONPath$Segment;Lcom/alibaba/fastjson/JSONPath$Operator;)V

    .line 1516
    iput-boolean v5, v0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->hasRefSegment:Z

    .line 1517
    :goto_267
    iget-char v1, v0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    if-ne v1, v14, :cond_26f

    .line 1518
    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    goto :goto_267

    :cond_26f
    if-eqz v2, :cond_276

    const/16 v12, 0x29

    .line 1522
    invoke-virtual {v0, v12}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->accept(C)V

    :cond_276
    if-eqz p1, :cond_27d

    const/16 v2, 0x5d

    .line 1526
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->accept(C)V

    :cond_27d
    return-object v7

    :cond_27e
    if-ne v7, v9, :cond_2c6

    .line 1532
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 1534
    :goto_285
    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    .line 1535
    iget-char v4, v0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    if-ne v4, v9, :cond_2b7

    .line 1536
    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    .line 1537
    iget-char v4, v0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    const/16 v5, 0x69

    if-ne v4, v5, :cond_29a

    .line 1538
    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    const/4 v4, 0x2

    goto :goto_29b

    :cond_29a
    const/4 v4, 0x0

    .line 1552
    :goto_29b
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v4

    .line 1553
    new-instance v5, Lcom/alibaba/fastjson/JSONPath$RegMatchSegement;

    invoke-direct {v5, v1, v6, v4, v3}, Lcom/alibaba/fastjson/JSONPath$RegMatchSegement;-><init>(Ljava/lang/String;ZLjava/util/regex/Pattern;Lcom/alibaba/fastjson/JSONPath$Operator;)V

    if-eqz v2, :cond_2af

    const/16 v12, 0x29

    .line 1556
    invoke-virtual {v0, v12}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->accept(C)V

    :cond_2af
    if-eqz p1, :cond_2b6

    const/16 v2, 0x5d

    .line 1560
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->accept(C)V

    :cond_2b6
    return-object v5

    :cond_2b7
    if-ne v4, v13, :cond_2c2

    .line 1545
    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    .line 1546
    iget-char v4, v0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_285

    .line 1548
    :cond_2c2
    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_285

    :cond_2c6
    const/16 v9, 0x6e

    if-ne v7, v9, :cond_313

    .line 1567
    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->readName()Ljava/lang/String;

    move-result-object v5

    .line 1568
    const-string v7, "null"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3b8

    .line 1570
    sget-object v5, Lcom/alibaba/fastjson/JSONPath$Operator;->EQ:Lcom/alibaba/fastjson/JSONPath$Operator;

    if-ne v3, v5, :cond_2e0

    .line 1571
    new-instance v3, Lcom/alibaba/fastjson/JSONPath$NullSegement;

    invoke-direct {v3, v1, v6}, Lcom/alibaba/fastjson/JSONPath$NullSegement;-><init>(Ljava/lang/String;Z)V

    goto :goto_2ec

    .line 1572
    :cond_2e0
    sget-object v5, Lcom/alibaba/fastjson/JSONPath$Operator;->NE:Lcom/alibaba/fastjson/JSONPath$Operator;

    if-ne v3, v5, :cond_2ea

    .line 1573
    new-instance v3, Lcom/alibaba/fastjson/JSONPath$NotNullSegement;

    invoke-direct {v3, v1, v6}, Lcom/alibaba/fastjson/JSONPath$NotNullSegement;-><init>(Ljava/lang/String;Z)V

    goto :goto_2ec

    :cond_2ea
    move-object/from16 v3, v16

    :goto_2ec
    if-eqz v3, :cond_2fe

    .line 1577
    :goto_2ee
    iget-char v1, v0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    if-ne v1, v14, :cond_2f6

    .line 1578
    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    goto :goto_2ee

    :cond_2f6
    if-eq v1, v8, :cond_2fa

    if-ne v1, v4, :cond_2fe

    .line 1582
    :cond_2fa
    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->filterRest(Lcom/alibaba/fastjson/JSONPath$Filter;)Lcom/alibaba/fastjson/JSONPath$Filter;

    move-result-object v3

    :cond_2fe
    if-eqz v2, :cond_305

    const/16 v12, 0x29

    .line 1587
    invoke-virtual {v0, v12}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->accept(C)V

    :cond_305
    const/16 v2, 0x5d

    .line 1589
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->accept(C)V

    if-eqz v3, :cond_30d

    return-object v3

    .line 1595
    :cond_30d
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v1

    :cond_313
    const/16 v9, 0x74

    if-ne v7, v9, :cond_366

    .line 1598
    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->readName()Ljava/lang/String;

    move-result-object v7

    .line 1600
    const-string/jumbo v9, "true"

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3b8

    .line 1603
    sget-object v7, Lcom/alibaba/fastjson/JSONPath$Operator;->EQ:Lcom/alibaba/fastjson/JSONPath$Operator;

    if-ne v3, v7, :cond_330

    .line 1604
    new-instance v3, Lcom/alibaba/fastjson/JSONPath$ValueSegment;

    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-direct {v3, v1, v6, v7, v5}, Lcom/alibaba/fastjson/JSONPath$ValueSegment;-><init>(Ljava/lang/String;ZLjava/lang/Object;Z)V

    goto :goto_33f

    .line 1605
    :cond_330
    sget-object v5, Lcom/alibaba/fastjson/JSONPath$Operator;->NE:Lcom/alibaba/fastjson/JSONPath$Operator;

    if-ne v3, v5, :cond_33d

    .line 1606
    new-instance v3, Lcom/alibaba/fastjson/JSONPath$ValueSegment;

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/4 v7, 0x0

    invoke-direct {v3, v1, v6, v5, v7}, Lcom/alibaba/fastjson/JSONPath$ValueSegment;-><init>(Ljava/lang/String;ZLjava/lang/Object;Z)V

    goto :goto_33f

    :cond_33d
    move-object/from16 v3, v16

    :goto_33f
    if-eqz v3, :cond_351

    .line 1610
    :goto_341
    iget-char v1, v0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    if-ne v1, v14, :cond_349

    .line 1611
    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    goto :goto_341

    :cond_349
    if-eq v1, v8, :cond_34d

    if-ne v1, v4, :cond_351

    .line 1615
    :cond_34d
    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->filterRest(Lcom/alibaba/fastjson/JSONPath$Filter;)Lcom/alibaba/fastjson/JSONPath$Filter;

    move-result-object v3

    :cond_351
    if-eqz v2, :cond_358

    const/16 v12, 0x29

    .line 1620
    invoke-virtual {v0, v12}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->accept(C)V

    :cond_358
    const/16 v2, 0x5d

    .line 1622
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->accept(C)V

    if-eqz v3, :cond_360

    return-object v3

    .line 1628
    :cond_360
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v1

    :cond_366
    const/16 v9, 0x66

    if-ne v7, v9, :cond_3b8

    .line 1631
    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->readName()Ljava/lang/String;

    move-result-object v7

    .line 1633
    const-string v9, "false"

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3b8

    .line 1636
    sget-object v7, Lcom/alibaba/fastjson/JSONPath$Operator;->EQ:Lcom/alibaba/fastjson/JSONPath$Operator;

    if-ne v3, v7, :cond_382

    .line 1637
    new-instance v3, Lcom/alibaba/fastjson/JSONPath$ValueSegment;

    sget-object v7, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {v3, v1, v6, v7, v5}, Lcom/alibaba/fastjson/JSONPath$ValueSegment;-><init>(Ljava/lang/String;ZLjava/lang/Object;Z)V

    goto :goto_391

    .line 1638
    :cond_382
    sget-object v5, Lcom/alibaba/fastjson/JSONPath$Operator;->NE:Lcom/alibaba/fastjson/JSONPath$Operator;

    if-ne v3, v5, :cond_38f

    .line 1639
    new-instance v3, Lcom/alibaba/fastjson/JSONPath$ValueSegment;

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/4 v7, 0x0

    invoke-direct {v3, v1, v6, v5, v7}, Lcom/alibaba/fastjson/JSONPath$ValueSegment;-><init>(Ljava/lang/String;ZLjava/lang/Object;Z)V

    goto :goto_391

    :cond_38f
    move-object/from16 v3, v16

    :goto_391
    if-eqz v3, :cond_3a3

    .line 1643
    :goto_393
    iget-char v1, v0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    if-ne v1, v14, :cond_39b

    .line 1644
    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    goto :goto_393

    :cond_39b
    if-eq v1, v8, :cond_39f

    if-ne v1, v4, :cond_3a3

    .line 1648
    :cond_39f
    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->filterRest(Lcom/alibaba/fastjson/JSONPath$Filter;)Lcom/alibaba/fastjson/JSONPath$Filter;

    move-result-object v3

    :cond_3a3
    if-eqz v2, :cond_3aa

    const/16 v12, 0x29

    .line 1653
    invoke-virtual {v0, v12}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->accept(C)V

    :cond_3aa
    const/16 v2, 0x5d

    .line 1655
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->accept(C)V

    if-eqz v3, :cond_3b2

    return-object v3

    .line 1661
    :cond_3b2
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v1

    .line 1665
    :cond_3b8
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v1

    :cond_3be
    :goto_3be
    move-object v1, v3

    move-object v3, v12

    move/from16 v6, v19

    .line 1389
    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->readString()Ljava/lang/String;

    move-result-object v7

    .line 1392
    sget-object v9, Lcom/alibaba/fastjson/JSONPath$Operator;->RLIKE:Lcom/alibaba/fastjson/JSONPath$Operator;

    if-ne v3, v9, :cond_3d2

    .line 1393
    new-instance v3, Lcom/alibaba/fastjson/JSONPath$RlikeSegement;

    const/4 v5, 0x0

    invoke-direct {v3, v1, v6, v7, v5}, Lcom/alibaba/fastjson/JSONPath$RlikeSegement;-><init>(Ljava/lang/String;ZLjava/lang/String;Z)V

    goto/16 :goto_4a4

    .line 1394
    :cond_3d2
    sget-object v9, Lcom/alibaba/fastjson/JSONPath$Operator;->NOT_RLIKE:Lcom/alibaba/fastjson/JSONPath$Operator;

    if-ne v3, v9, :cond_3dd

    .line 1395
    new-instance v3, Lcom/alibaba/fastjson/JSONPath$RlikeSegement;

    invoke-direct {v3, v1, v6, v7, v5}, Lcom/alibaba/fastjson/JSONPath$RlikeSegement;-><init>(Ljava/lang/String;ZLjava/lang/String;Z)V

    goto/16 :goto_4a4

    .line 1396
    :cond_3dd
    sget-object v9, Lcom/alibaba/fastjson/JSONPath$Operator;->LIKE:Lcom/alibaba/fastjson/JSONPath$Operator;

    if-eq v3, v9, :cond_3ee

    sget-object v9, Lcom/alibaba/fastjson/JSONPath$Operator;->NOT_LIKE:Lcom/alibaba/fastjson/JSONPath$Operator;

    if-ne v3, v9, :cond_3e6

    goto :goto_3ee

    .line 1452
    :cond_3e6
    new-instance v5, Lcom/alibaba/fastjson/JSONPath$StringOpSegement;

    invoke-direct {v5, v1, v6, v7, v3}, Lcom/alibaba/fastjson/JSONPath$StringOpSegement;-><init>(Ljava/lang/String;ZLjava/lang/String;Lcom/alibaba/fastjson/JSONPath$Operator;)V

    :goto_3eb
    move-object v3, v5

    goto/16 :goto_4a4

    .line 1397
    :cond_3ee
    :goto_3ee
    const-string v9, "%%"

    invoke-virtual {v7, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    const-string v12, "%"

    if-eq v10, v11, :cond_3fd

    .line 1398
    invoke-virtual {v7, v9, v12}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto :goto_3ee

    .line 1401
    :cond_3fd
    sget-object v9, Lcom/alibaba/fastjson/JSONPath$Operator;->NOT_LIKE:Lcom/alibaba/fastjson/JSONPath$Operator;

    if-ne v3, v9, :cond_404

    const/16 v23, 0x1

    goto :goto_406

    :cond_404
    const/16 v23, 0x0

    :goto_406
    const/16 v9, 0x25

    .line 1403
    invoke-virtual {v7, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v10

    if-ne v10, v11, :cond_41d

    .line 1405
    sget-object v5, Lcom/alibaba/fastjson/JSONPath$Operator;->LIKE:Lcom/alibaba/fastjson/JSONPath$Operator;

    if-ne v3, v5, :cond_415

    .line 1406
    sget-object v3, Lcom/alibaba/fastjson/JSONPath$Operator;->EQ:Lcom/alibaba/fastjson/JSONPath$Operator;

    goto :goto_417

    .line 1408
    :cond_415
    sget-object v3, Lcom/alibaba/fastjson/JSONPath$Operator;->NE:Lcom/alibaba/fastjson/JSONPath$Operator;

    .line 1410
    :goto_417
    new-instance v5, Lcom/alibaba/fastjson/JSONPath$StringOpSegement;

    invoke-direct {v5, v1, v6, v7, v3}, Lcom/alibaba/fastjson/JSONPath$StringOpSegement;-><init>(Ljava/lang/String;ZLjava/lang/String;Lcom/alibaba/fastjson/JSONPath$Operator;)V

    goto :goto_3eb

    .line 1412
    :cond_41d
    invoke-virtual {v7, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    if-nez v10, :cond_45b

    .line 1418
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v10

    sub-int/2addr v10, v5

    invoke-virtual {v7, v10}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-ne v7, v9, :cond_43d

    .line 1419
    array-length v7, v3

    sub-int/2addr v7, v5

    new-array v9, v7, [Ljava/lang/String;

    const/4 v10, 0x0

    .line 1420
    invoke-static {v3, v5, v9, v10, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object/from16 v22, v9

    :goto_438
    move-object/from16 v20, v16

    move-object/from16 v21, v20

    goto :goto_499

    :cond_43d
    const/4 v10, 0x0

    .line 1422
    array-length v7, v3

    sub-int/2addr v7, v5

    aget-object v7, v3, v7

    .line 1423
    array-length v9, v3

    const/4 v11, 0x2

    if-le v9, v11, :cond_454

    .line 1424
    array-length v9, v3

    sub-int/2addr v9, v11

    new-array v11, v9, [Ljava/lang/String;

    .line 1425
    invoke-static {v3, v5, v11, v10, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_44d
    move-object/from16 v21, v7

    move-object/from16 v22, v11

    move-object/from16 v20, v16

    goto :goto_499

    :cond_454
    move-object/from16 v21, v7

    move-object/from16 v20, v16

    move-object/from16 v22, v20

    goto :goto_499

    :cond_45b
    const/4 v10, 0x0

    .line 1428
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v11

    sub-int/2addr v11, v5

    invoke-virtual {v7, v11}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-ne v7, v9, :cond_470

    .line 1429
    array-length v7, v3

    if-ne v7, v5, :cond_46d

    .line 1430
    aget-object v3, v3, v10

    goto :goto_475

    :cond_46d
    move-object/from16 v22, v3

    goto :goto_438

    .line 1435
    :cond_470
    array-length v7, v3

    if-ne v7, v5, :cond_47c

    .line 1436
    aget-object v3, v3, v10

    :goto_475
    move-object/from16 v20, v3

    move-object/from16 v21, v16

    move-object/from16 v22, v21

    goto :goto_499

    .line 1437
    :cond_47c
    array-length v7, v3

    const/4 v11, 0x2

    if-ne v7, v11, :cond_48b

    .line 1438
    aget-object v7, v3, v10

    .line 1439
    aget-object v3, v3, v5

    move-object/from16 v21, v3

    move-object/from16 v20, v7

    move-object/from16 v22, v16

    goto :goto_499

    .line 1441
    :cond_48b
    aget-object v16, v3, v10

    .line 1442
    array-length v7, v3

    sub-int/2addr v7, v5

    aget-object v7, v3, v7

    .line 1443
    array-length v9, v3

    sub-int/2addr v9, v11

    new-array v11, v9, [Ljava/lang/String;

    .line 1444
    invoke-static {v3, v5, v11, v10, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_44d

    .line 1448
    :goto_499
    new-instance v17, Lcom/alibaba/fastjson/JSONPath$MatchSegement;

    move-object/from16 v18, v1

    move/from16 v19, v6

    invoke-direct/range {v17 .. v23}, Lcom/alibaba/fastjson/JSONPath$MatchSegement;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Z)V

    move-object/from16 v3, v17

    .line 1455
    :goto_4a4
    iget-char v1, v0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    if-ne v1, v14, :cond_4ac

    .line 1456
    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    goto :goto_4a4

    :cond_4ac
    if-eq v1, v8, :cond_4b0

    if-ne v1, v4, :cond_4b4

    .line 1460
    :cond_4b0
    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->filterRest(Lcom/alibaba/fastjson/JSONPath$Filter;)Lcom/alibaba/fastjson/JSONPath$Filter;

    move-result-object v3

    :cond_4b4
    if-eqz v2, :cond_4bb

    const/16 v12, 0x29

    .line 1464
    invoke-virtual {v0, v12}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->accept(C)V

    :cond_4bb
    if-eqz p1, :cond_4c2

    const/16 v2, 0x5d

    .line 1468
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->accept(C)V

    :cond_4c2
    return-object v3

    :cond_4c3
    :goto_4c3
    move-object v1, v3

    move-object v3, v12

    move/from16 v6, v19

    .line 1179
    sget-object v7, Lcom/alibaba/fastjson/JSONPath$Operator;->NOT_IN:Lcom/alibaba/fastjson/JSONPath$Operator;

    if-ne v3, v7, :cond_4cd

    const/4 v7, 0x1

    goto :goto_4ce

    :cond_4cd
    const/4 v7, 0x0

    :goto_4ce
    const/16 v15, 0x28

    .line 1180
    invoke-virtual {v0, v15}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->accept(C)V

    .line 1182
    new-instance v9, Lcom/alibaba/fastjson/JSONArray;

    invoke-direct {v9}, Lcom/alibaba/fastjson/JSONArray;-><init>()V

    .line 1184
    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->readValue()Ljava/lang/Object;

    move-result-object v3

    .line 1185
    invoke-interface {v9, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1188
    :goto_4df
    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->skipWhitespace()V

    .line 1189
    iget-char v3, v0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    const/16 v10, 0x2c

    if-eq v3, v10, :cond_6a1

    .line 1202
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v10, 0x1

    const/4 v11, 0x1

    const/4 v12, 0x1

    :cond_4ef
    :goto_4ef
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_51f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    if-nez v13, :cond_4ff

    if-eqz v10, :cond_4ef

    const/4 v10, 0x0

    goto :goto_4ef

    .line 1210
    :cond_4ff
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v13

    if-eqz v10, :cond_517

    .line 1211
    const-class v15, Ljava/lang/Byte;

    if-eq v13, v15, :cond_517

    const-class v15, Ljava/lang/Short;

    if-eq v13, v15, :cond_517

    const-class v15, Ljava/lang/Integer;

    if-eq v13, v15, :cond_517

    const-class v15, Ljava/lang/Long;

    if-eq v13, v15, :cond_517

    const/4 v10, 0x0

    const/4 v12, 0x0

    :cond_517
    if-eqz v11, :cond_4ef

    .line 1217
    const-class v15, Ljava/lang/String;

    if-eq v13, v15, :cond_4ef

    const/4 v11, 0x0

    goto :goto_4ef

    .line 1222
    :cond_51f
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v3

    if-ne v3, v5, :cond_55b

    const/4 v3, 0x0

    invoke-interface {v9, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    if-nez v13, :cond_55b

    if-eqz v7, :cond_534

    .line 1225
    new-instance v3, Lcom/alibaba/fastjson/JSONPath$NotNullSegement;

    invoke-direct {v3, v1, v6}, Lcom/alibaba/fastjson/JSONPath$NotNullSegement;-><init>(Ljava/lang/String;Z)V

    goto :goto_539

    .line 1227
    :cond_534
    new-instance v3, Lcom/alibaba/fastjson/JSONPath$NullSegement;

    invoke-direct {v3, v1, v6}, Lcom/alibaba/fastjson/JSONPath$NullSegement;-><init>(Ljava/lang/String;Z)V

    .line 1230
    :goto_539
    iget-char v1, v0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    if-ne v1, v14, :cond_541

    .line 1231
    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    goto :goto_539

    :cond_541
    if-eq v1, v8, :cond_545

    if-ne v1, v4, :cond_549

    .line 1235
    :cond_545
    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->filterRest(Lcom/alibaba/fastjson/JSONPath$Filter;)Lcom/alibaba/fastjson/JSONPath$Filter;

    move-result-object v3

    :cond_549
    const/16 v12, 0x29

    .line 1238
    invoke-virtual {v0, v12}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->accept(C)V

    if-eqz v2, :cond_553

    .line 1240
    invoke-virtual {v0, v12}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->accept(C)V

    :cond_553
    if-eqz p1, :cond_55a

    const/16 v2, 0x5d

    .line 1244
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->accept(C)V

    :cond_55a
    return-object v3

    :cond_55b
    if-eqz v10, :cond_5e7

    .line 1251
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v3

    if-ne v3, v5, :cond_5a8

    const/4 v3, 0x0

    .line 1252
    invoke-interface {v9, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-static {v3}, Lcom/alibaba/fastjson/util/TypeUtils;->longExtractValue(Ljava/lang/Number;)J

    move-result-wide v20

    if-eqz v7, :cond_573

    .line 1253
    sget-object v3, Lcom/alibaba/fastjson/JSONPath$Operator;->NE:Lcom/alibaba/fastjson/JSONPath$Operator;

    goto :goto_575

    :cond_573
    sget-object v3, Lcom/alibaba/fastjson/JSONPath$Operator;->EQ:Lcom/alibaba/fastjson/JSONPath$Operator;

    :goto_575
    move-object/from16 v22, v3

    .line 1254
    new-instance v17, Lcom/alibaba/fastjson/JSONPath$IntOpSegement;

    move-object/from16 v18, v1

    move/from16 v19, v6

    invoke-direct/range {v17 .. v22}, Lcom/alibaba/fastjson/JSONPath$IntOpSegement;-><init>(Ljava/lang/String;ZJLcom/alibaba/fastjson/JSONPath$Operator;)V

    move-object/from16 v1, v17

    .line 1255
    :goto_582
    iget-char v3, v0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    if-ne v3, v14, :cond_58a

    .line 1256
    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    goto :goto_582

    :cond_58a
    if-eq v3, v8, :cond_592

    if-ne v3, v4, :cond_58f

    goto :goto_592

    :cond_58f
    move-object/from16 v17, v1

    goto :goto_596

    .line 1260
    :cond_592
    :goto_592
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->filterRest(Lcom/alibaba/fastjson/JSONPath$Filter;)Lcom/alibaba/fastjson/JSONPath$Filter;

    move-result-object v17

    :goto_596
    const/16 v12, 0x29

    .line 1263
    invoke-virtual {v0, v12}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->accept(C)V

    if-eqz v2, :cond_5a0

    .line 1265
    invoke-virtual {v0, v12}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->accept(C)V

    :cond_5a0
    if-eqz p1, :cond_5a7

    const/16 v2, 0x5d

    .line 1269
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->accept(C)V

    :cond_5a7
    return-object v17

    .line 1275
    :cond_5a8
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v3

    new-array v5, v3, [J

    const/4 v10, 0x0

    :goto_5af
    if-ge v10, v3, :cond_5c0

    .line 1277
    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Number;

    invoke-static {v11}, Lcom/alibaba/fastjson/util/TypeUtils;->longExtractValue(Ljava/lang/Number;)J

    move-result-wide v11

    aput-wide v11, v5, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_5af

    .line 1280
    :cond_5c0
    new-instance v3, Lcom/alibaba/fastjson/JSONPath$IntInSegement;

    invoke-direct {v3, v1, v6, v5, v7}, Lcom/alibaba/fastjson/JSONPath$IntInSegement;-><init>(Ljava/lang/String;Z[JZ)V

    .line 1282
    :goto_5c5
    iget-char v1, v0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    if-ne v1, v14, :cond_5cd

    .line 1283
    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    goto :goto_5c5

    :cond_5cd
    if-eq v1, v8, :cond_5d1

    if-ne v1, v4, :cond_5d5

    .line 1287
    :cond_5d1
    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->filterRest(Lcom/alibaba/fastjson/JSONPath$Filter;)Lcom/alibaba/fastjson/JSONPath$Filter;

    move-result-object v3

    :cond_5d5
    const/16 v12, 0x29

    .line 1290
    invoke-virtual {v0, v12}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->accept(C)V

    if-eqz v2, :cond_5df

    .line 1292
    invoke-virtual {v0, v12}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->accept(C)V

    :cond_5df
    if-eqz p1, :cond_5e6

    const/16 v2, 0x5d

    .line 1296
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->accept(C)V

    :cond_5e6
    return-object v3

    :cond_5e7
    if-eqz v11, :cond_654

    .line 1303
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v3

    if-ne v3, v5, :cond_624

    const/4 v10, 0x0

    .line 1304
    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-eqz v7, :cond_5fb

    .line 1306
    sget-object v5, Lcom/alibaba/fastjson/JSONPath$Operator;->NE:Lcom/alibaba/fastjson/JSONPath$Operator;

    goto :goto_5fd

    :cond_5fb
    sget-object v5, Lcom/alibaba/fastjson/JSONPath$Operator;->EQ:Lcom/alibaba/fastjson/JSONPath$Operator;

    .line 1307
    :goto_5fd
    new-instance v7, Lcom/alibaba/fastjson/JSONPath$StringOpSegement;

    invoke-direct {v7, v1, v6, v3, v5}, Lcom/alibaba/fastjson/JSONPath$StringOpSegement;-><init>(Ljava/lang/String;ZLjava/lang/String;Lcom/alibaba/fastjson/JSONPath$Operator;)V

    .line 1309
    :goto_602
    iget-char v1, v0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    if-ne v1, v14, :cond_60a

    .line 1310
    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    goto :goto_602

    :cond_60a
    if-eq v1, v8, :cond_60e

    if-ne v1, v4, :cond_612

    .line 1314
    :cond_60e
    invoke-virtual {v0, v7}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->filterRest(Lcom/alibaba/fastjson/JSONPath$Filter;)Lcom/alibaba/fastjson/JSONPath$Filter;

    move-result-object v7

    :cond_612
    const/16 v12, 0x29

    .line 1317
    invoke-virtual {v0, v12}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->accept(C)V

    if-eqz v2, :cond_61c

    .line 1319
    invoke-virtual {v0, v12}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->accept(C)V

    :cond_61c
    if-eqz p1, :cond_623

    const/16 v2, 0x5d

    .line 1323
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->accept(C)V

    :cond_623
    return-object v7

    .line 1329
    :cond_624
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    .line 1330
    invoke-interface {v9, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 1332
    new-instance v5, Lcom/alibaba/fastjson/JSONPath$StringInSegement;

    invoke-direct {v5, v1, v6, v3, v7}, Lcom/alibaba/fastjson/JSONPath$StringInSegement;-><init>(Ljava/lang/String;Z[Ljava/lang/String;Z)V

    .line 1334
    :goto_632
    iget-char v1, v0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    if-ne v1, v14, :cond_63a

    .line 1335
    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    goto :goto_632

    :cond_63a
    if-eq v1, v8, :cond_63e

    if-ne v1, v4, :cond_642

    .line 1339
    :cond_63e
    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->filterRest(Lcom/alibaba/fastjson/JSONPath$Filter;)Lcom/alibaba/fastjson/JSONPath$Filter;

    move-result-object v5

    :cond_642
    const/16 v12, 0x29

    .line 1342
    invoke-virtual {v0, v12}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->accept(C)V

    if-eqz v2, :cond_64c

    .line 1344
    invoke-virtual {v0, v12}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->accept(C)V

    :cond_64c
    if-eqz p1, :cond_653

    const/16 v2, 0x5d

    .line 1348
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->accept(C)V

    :cond_653
    return-object v5

    :cond_654
    const/4 v10, 0x0

    if-eqz v12, :cond_69b

    .line 1355
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v3

    new-array v5, v3, [Ljava/lang/Long;

    :goto_65d
    if-ge v10, v3, :cond_674

    .line 1357
    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Number;

    if-eqz v11, :cond_671

    .line 1359
    invoke-static {v11}, Lcom/alibaba/fastjson/util/TypeUtils;->longExtractValue(Ljava/lang/Number;)J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v5, v10

    :cond_671
    add-int/lit8 v10, v10, 0x1

    goto :goto_65d

    .line 1363
    :cond_674
    new-instance v3, Lcom/alibaba/fastjson/JSONPath$IntObjInSegement;

    invoke-direct {v3, v1, v6, v5, v7}, Lcom/alibaba/fastjson/JSONPath$IntObjInSegement;-><init>(Ljava/lang/String;Z[Ljava/lang/Long;Z)V

    .line 1365
    :goto_679
    iget-char v1, v0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    if-ne v1, v14, :cond_681

    .line 1366
    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    goto :goto_679

    :cond_681
    if-eq v1, v8, :cond_685

    if-ne v1, v4, :cond_689

    .line 1370
    :cond_685
    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->filterRest(Lcom/alibaba/fastjson/JSONPath$Filter;)Lcom/alibaba/fastjson/JSONPath$Filter;

    move-result-object v3

    :cond_689
    const/16 v12, 0x29

    .line 1373
    invoke-virtual {v0, v12}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->accept(C)V

    if-eqz v2, :cond_693

    .line 1375
    invoke-virtual {v0, v12}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->accept(C)V

    :cond_693
    if-eqz p1, :cond_69a

    const/16 v11, 0x5d

    .line 1379
    invoke-virtual {v0, v11}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->accept(C)V

    :cond_69a
    return-object v3

    .line 1385
    :cond_69b
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v1

    :cond_6a1
    const/4 v10, 0x0

    const/16 v11, 0x5d

    const/16 v12, 0x29

    .line 1192
    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    .line 1194
    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->readValue()Ljava/lang/Object;

    move-result-object v3

    .line 1195
    invoke-interface {v9, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4df

    :cond_6b2
    :goto_6b2
    move-object v1, v3

    move-object v3, v12

    move/from16 v6, v19

    const/4 v10, 0x0

    .line 1150
    sget-object v2, Lcom/alibaba/fastjson/JSONPath$Operator;->NOT_BETWEEN:Lcom/alibaba/fastjson/JSONPath$Operator;

    if-ne v3, v2, :cond_6be

    const/16 v24, 0x1

    goto :goto_6c0

    :cond_6be
    const/16 v24, 0x0

    .line 1152
    :goto_6c0
    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->readValue()Ljava/lang/Object;

    move-result-object v2

    .line 1154
    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->readName()Ljava/lang/String;

    move-result-object v3

    .line 1156
    const-string v4, "and"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_712

    .line 1160
    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->readValue()Ljava/lang/Object;

    move-result-object v3

    if-eqz v2, :cond_70a

    if-eqz v3, :cond_70a

    .line 1166
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-static {v4}, Lcom/alibaba/fastjson/JSONPath;->isInt(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_702

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-static {v4}, Lcom/alibaba/fastjson/JSONPath;->isInt(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_702

    .line 1167
    new-instance v17, Lcom/alibaba/fastjson/JSONPath$IntBetweenSegement;

    check-cast v2, Ljava/lang/Number;

    .line 1169
    invoke-static {v2}, Lcom/alibaba/fastjson/util/TypeUtils;->longExtractValue(Ljava/lang/Number;)J

    move-result-wide v20

    check-cast v3, Ljava/lang/Number;

    .line 1170
    invoke-static {v3}, Lcom/alibaba/fastjson/util/TypeUtils;->longExtractValue(Ljava/lang/Number;)J

    move-result-wide v22

    move-object/from16 v18, v1

    move/from16 v19, v6

    invoke-direct/range {v17 .. v24}, Lcom/alibaba/fastjson/JSONPath$IntBetweenSegement;-><init>(Ljava/lang/String;ZJJZ)V

    return-object v17

    .line 1175
    :cond_702
    new-instance v1, Lcom/alibaba/fastjson/JSONPathException;

    iget-object v2, v0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->path:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson/JSONPathException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1163
    :cond_70a
    new-instance v1, Lcom/alibaba/fastjson/JSONPathException;

    iget-object v2, v0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->path:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson/JSONPathException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1157
    :cond_712
    new-instance v1, Lcom/alibaba/fastjson/JSONPathException;

    iget-object v2, v0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->path:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson/JSONPathException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected readDoubleValue(J)D
    .registers 6

    .line 1788
    iget v0, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->pos:I

    add-int/lit8 v0, v0, -0x1

    .line 1790
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    .line 1791
    :goto_7
    iget-char v1, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    const/16 v2, 0x30

    if-lt v1, v2, :cond_15

    const/16 v2, 0x39

    if-gt v1, v2, :cond_15

    .line 1792
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    goto :goto_7

    .line 1795
    :cond_15
    iget v1, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->pos:I

    add-int/lit8 v1, v1, -0x1

    .line 1796
    iget-object v2, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->path:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 1797
    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    long-to-double p1, p1

    add-double/2addr v0, p1

    return-wide v0
.end method

.method protected readLongValue()J
    .registers 4

    .line 1772
    iget v0, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->pos:I

    add-int/lit8 v0, v0, -0x1

    .line 1773
    iget-char v1, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    const/16 v2, 0x2b

    if-eq v1, v2, :cond_e

    const/16 v2, 0x2d

    if-ne v1, v2, :cond_11

    .line 1774
    :cond_e
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    .line 1777
    :cond_11
    :goto_11
    iget-char v1, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    const/16 v2, 0x30

    if-lt v1, v2, :cond_1f

    const/16 v2, 0x39

    if-gt v1, v2, :cond_1f

    .line 1778
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    goto :goto_11

    .line 1781
    :cond_1f
    iget v1, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->pos:I

    add-int/lit8 v1, v1, -0x1

    .line 1782
    iget-object v2, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->path:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 1783
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method readName()Ljava/lang/String;
    .registers 4

    .line 1904
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->skipWhitespace()V

    .line 1906
    iget-char v0, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    const/16 v1, 0x5c

    if-eq v0, v1, :cond_26

    invoke-static {v0}, Ljava/lang/Character;->isJavaIdentifierStart(C)Z

    move-result v0

    if-eqz v0, :cond_10

    goto :goto_26

    .line 1907
    :cond_10
    new-instance v0, Lcom/alibaba/fastjson/JSONPathException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "illeal jsonpath syntax. "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->path:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONPathException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1910
    :cond_26
    :goto_26
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1911
    :goto_2b
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->isEOF()Z

    move-result v2

    if-nez v2, :cond_5c

    .line 1912
    iget-char v2, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    if-ne v2, v1, :cond_4c

    .line 1913
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    .line 1914
    iget-char v2, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1915
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->isEOF()Z

    move-result v2

    if-eqz v2, :cond_48

    .line 1916
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1918
    :cond_48
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    goto :goto_2b

    .line 1922
    :cond_4c
    invoke-static {v2}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    move-result v2

    if-nez v2, :cond_53

    goto :goto_5c

    .line 1926
    :cond_53
    iget-char v2, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1927
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    goto :goto_2b

    .line 1930
    :cond_5c
    :goto_5c
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->isEOF()Z

    move-result v1

    if-eqz v1, :cond_6f

    iget-char v1, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    invoke-static {v1}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    move-result v1

    if-eqz v1, :cond_6f

    .line 1931
    iget-char v1, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1934
    :cond_6f
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected readOp()Lcom/alibaba/fastjson/JSONPath$Operator;
    .registers 7

    .line 1832
    iget-char v0, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    const/16 v1, 0x3d

    if-ne v0, v1, :cond_20

    .line 1833
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    .line 1834
    iget-char v0, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    const/16 v2, 0x7e

    if-ne v0, v2, :cond_15

    .line 1835
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    .line 1836
    sget-object v0, Lcom/alibaba/fastjson/JSONPath$Operator;->REG_MATCH:Lcom/alibaba/fastjson/JSONPath$Operator;

    goto :goto_56

    :cond_15
    if-ne v0, v1, :cond_1d

    .line 1838
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    .line 1839
    sget-object v0, Lcom/alibaba/fastjson/JSONPath$Operator;->EQ:Lcom/alibaba/fastjson/JSONPath$Operator;

    goto :goto_56

    .line 1841
    :cond_1d
    sget-object v0, Lcom/alibaba/fastjson/JSONPath$Operator;->EQ:Lcom/alibaba/fastjson/JSONPath$Operator;

    goto :goto_56

    :cond_20
    const/16 v2, 0x21

    if-ne v0, v2, :cond_2d

    .line 1844
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    .line 1845
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->accept(C)V

    .line 1846
    sget-object v0, Lcom/alibaba/fastjson/JSONPath$Operator;->NE:Lcom/alibaba/fastjson/JSONPath$Operator;

    goto :goto_56

    :cond_2d
    const/16 v2, 0x3c

    if-ne v0, v2, :cond_41

    .line 1848
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    .line 1849
    iget-char v0, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    if-ne v0, v1, :cond_3e

    .line 1850
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    .line 1851
    sget-object v0, Lcom/alibaba/fastjson/JSONPath$Operator;->LE:Lcom/alibaba/fastjson/JSONPath$Operator;

    goto :goto_56

    .line 1853
    :cond_3e
    sget-object v0, Lcom/alibaba/fastjson/JSONPath$Operator;->LT:Lcom/alibaba/fastjson/JSONPath$Operator;

    goto :goto_56

    :cond_41
    const/16 v2, 0x3e

    if-ne v0, v2, :cond_55

    .line 1856
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    .line 1857
    iget-char v0, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    if-ne v0, v1, :cond_52

    .line 1858
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    .line 1859
    sget-object v0, Lcom/alibaba/fastjson/JSONPath$Operator;->GE:Lcom/alibaba/fastjson/JSONPath$Operator;

    goto :goto_56

    .line 1861
    :cond_52
    sget-object v0, Lcom/alibaba/fastjson/JSONPath$Operator;->GT:Lcom/alibaba/fastjson/JSONPath$Operator;

    goto :goto_56

    :cond_55
    const/4 v0, 0x0

    :goto_56
    if-nez v0, :cond_d2

    .line 1866
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->readName()Ljava/lang/String;

    move-result-object v0

    .line 1868
    const-string v1, "not"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "between"

    const-string v3, "in"

    const-string v4, "rlike"

    const-string v5, "like"

    if-eqz v1, :cond_9d

    .line 1869
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->skipWhitespace()V

    .line 1871
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->readName()Ljava/lang/String;

    move-result-object v0

    .line 1873
    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7c

    .line 1874
    sget-object v0, Lcom/alibaba/fastjson/JSONPath$Operator;->NOT_LIKE:Lcom/alibaba/fastjson/JSONPath$Operator;

    return-object v0

    .line 1875
    :cond_7c
    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_85

    .line 1876
    sget-object v0, Lcom/alibaba/fastjson/JSONPath$Operator;->NOT_RLIKE:Lcom/alibaba/fastjson/JSONPath$Operator;

    return-object v0

    .line 1877
    :cond_85
    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8e

    .line 1878
    sget-object v0, Lcom/alibaba/fastjson/JSONPath$Operator;->NOT_IN:Lcom/alibaba/fastjson/JSONPath$Operator;

    return-object v0

    .line 1879
    :cond_8e
    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_97

    .line 1880
    sget-object v0, Lcom/alibaba/fastjson/JSONPath$Operator;->NOT_BETWEEN:Lcom/alibaba/fastjson/JSONPath$Operator;

    return-object v0

    .line 1882
    :cond_97
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 1884
    :cond_9d
    const-string v1, "nin"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a8

    .line 1885
    sget-object v0, Lcom/alibaba/fastjson/JSONPath$Operator;->NOT_IN:Lcom/alibaba/fastjson/JSONPath$Operator;

    return-object v0

    .line 1887
    :cond_a8
    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b1

    .line 1888
    sget-object v0, Lcom/alibaba/fastjson/JSONPath$Operator;->LIKE:Lcom/alibaba/fastjson/JSONPath$Operator;

    return-object v0

    .line 1889
    :cond_b1
    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_ba

    .line 1890
    sget-object v0, Lcom/alibaba/fastjson/JSONPath$Operator;->RLIKE:Lcom/alibaba/fastjson/JSONPath$Operator;

    return-object v0

    .line 1891
    :cond_ba
    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c3

    .line 1892
    sget-object v0, Lcom/alibaba/fastjson/JSONPath$Operator;->IN:Lcom/alibaba/fastjson/JSONPath$Operator;

    return-object v0

    .line 1893
    :cond_c3
    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_cc

    .line 1894
    sget-object v0, Lcom/alibaba/fastjson/JSONPath$Operator;->BETWEEN:Lcom/alibaba/fastjson/JSONPath$Operator;

    return-object v0

    .line 1896
    :cond_cc
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    :cond_d2
    return-object v0
.end method

.method readSegement()Lcom/alibaba/fastjson/JSONPath$Segment;
    .registers 10

    .line 923
    iget v0, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->level:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_3e

    iget-object v0, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->path:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ne v0, v1, :cond_3e

    .line 924
    iget-char v0, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    invoke-static {v0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->isDigitFirst(C)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 925
    iget-char v0, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    add-int/lit8 v0, v0, -0x30

    .line 926
    new-instance v1, Lcom/alibaba/fastjson/JSONPath$ArrayAccessSegment;

    invoke-direct {v1, v0}, Lcom/alibaba/fastjson/JSONPath$ArrayAccessSegment;-><init>(I)V

    return-object v1

    .line 927
    :cond_20
    iget-char v0, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    const/16 v3, 0x61

    if-lt v0, v3, :cond_2a

    const/16 v3, 0x7a

    if-le v0, v3, :cond_32

    :cond_2a
    const/16 v3, 0x41

    if-lt v0, v3, :cond_3e

    const/16 v3, 0x5a

    if-gt v0, v3, :cond_3e

    .line 928
    :cond_32
    new-instance v0, Lcom/alibaba/fastjson/JSONPath$PropertySegment;

    iget-char v1, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    invoke-static {v1}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v2}, Lcom/alibaba/fastjson/JSONPath$PropertySegment;-><init>(Ljava/lang/String;Z)V

    return-object v0

    .line 931
    :cond_3e
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->isEOF()Z

    move-result v0

    if-nez v0, :cond_1bc

    .line 932
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->skipWhitespace()V

    .line 934
    iget-char v0, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    const/16 v3, 0x24

    const/16 v4, 0x3f

    if-ne v0, v3, :cond_65

    .line 935
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    .line 936
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->skipWhitespace()V

    .line 937
    iget-char v0, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    if-ne v0, v4, :cond_3e

    .line 938
    new-instance v0, Lcom/alibaba/fastjson/JSONPath$FilterSegment;

    .line 939
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->parseArrayAccessFilter(Z)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/fastjson/JSONPath$Filter;

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONPath$FilterSegment;-><init>(Lcom/alibaba/fastjson/JSONPath$Filter;)V

    return-object v0

    .line 944
    :cond_65
    const-string v3, "not support jsonpath : "

    const/16 v5, 0x5b

    const/16 v6, 0x2e

    if-eq v0, v6, :cond_a9

    const/16 v7, 0x2f

    if-ne v0, v7, :cond_72

    goto :goto_a9

    :cond_72
    if-ne v0, v5, :cond_79

    .line 1015
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->parseArrayAccess(Z)Lcom/alibaba/fastjson/JSONPath$Segment;

    move-result-object v0

    return-object v0

    .line 1018
    :cond_79
    iget v1, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->level:I

    if-nez v1, :cond_87

    .line 1019
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->readName()Ljava/lang/String;

    move-result-object v0

    .line 1021
    new-instance v1, Lcom/alibaba/fastjson/JSONPath$PropertySegment;

    invoke-direct {v1, v0, v2}, Lcom/alibaba/fastjson/JSONPath$PropertySegment;-><init>(Ljava/lang/String;Z)V

    return-object v1

    :cond_87
    if-ne v0, v4, :cond_95

    .line 1025
    new-instance v0, Lcom/alibaba/fastjson/JSONPath$FilterSegment;

    .line 1026
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->parseArrayAccessFilter(Z)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/fastjson/JSONPath$Filter;

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONPath$FilterSegment;-><init>(Lcom/alibaba/fastjson/JSONPath$Filter;)V

    return-object v0

    .line 1029
    :cond_95
    new-instance v0, Lcom/alibaba/fastjson/JSONPathException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->path:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONPathException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 947
    :cond_a9
    :goto_a9
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    const/16 v4, 0x2a

    if-ne v0, v6, :cond_f6

    .line 948
    iget-char v0, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    if-ne v0, v6, :cond_f6

    .line 949
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    .line 951
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->path:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iget v7, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->pos:I

    add-int/lit8 v8, v7, 0x3

    if-le v0, v8, :cond_f4

    iget-char v0, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    if-ne v0, v5, :cond_f4

    iget-object v0, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->path:Ljava/lang/String;

    .line 953
    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v4, :cond_f4

    iget-object v0, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->path:Ljava/lang/String;

    iget v7, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->pos:I

    add-int/2addr v7, v1

    .line 954
    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v7, 0x5d

    if-ne v0, v7, :cond_f4

    iget-object v0, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->path:Ljava/lang/String;

    iget v7, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->pos:I

    add-int/lit8 v7, v7, 0x2

    .line 955
    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v6, :cond_f4

    .line 956
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    .line 957
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    .line 958
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    .line 959
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    :cond_f4
    const/4 v0, 0x1

    goto :goto_f7

    :cond_f6
    const/4 v0, 0x0

    .line 962
    :goto_f7
    iget-char v6, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    if-eq v6, v4, :cond_1a2

    if-eqz v0, :cond_101

    if-ne v6, v5, :cond_101

    goto/16 :goto_1a2

    .line 979
    :cond_101
    invoke-static {v6}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->isDigitFirst(C)Z

    move-result v1

    if-eqz v1, :cond_10c

    .line 980
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->parseArrayAccess(Z)Lcom/alibaba/fastjson/JSONPath$Segment;

    move-result-object v0

    return-object v0

    .line 983
    :cond_10c
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->readName()Ljava/lang/String;

    move-result-object v1

    .line 984
    iget-char v2, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    const/16 v4, 0x28

    if-ne v2, v4, :cond_19c

    .line 985
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    .line 986
    iget-char v0, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    const/16 v2, 0x29

    if-ne v0, v2, :cond_188

    .line 987
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->isEOF()Z

    move-result v0

    if-nez v0, :cond_128

    .line 988
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    .line 991
    :cond_128
    const-string v0, "size"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_185

    const-string v0, "length"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_139

    goto :goto_185

    .line 993
    :cond_139
    const-string v0, "max"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_144

    .line 994
    sget-object v0, Lcom/alibaba/fastjson/JSONPath$MaxSegment;->instance:Lcom/alibaba/fastjson/JSONPath$MaxSegment;

    return-object v0

    .line 995
    :cond_144
    const-string v0, "min"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14f

    .line 996
    sget-object v0, Lcom/alibaba/fastjson/JSONPath$MinSegment;->instance:Lcom/alibaba/fastjson/JSONPath$MinSegment;

    return-object v0

    .line 997
    :cond_14f
    const-string v0, "keySet"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15a

    .line 998
    sget-object v0, Lcom/alibaba/fastjson/JSONPath$KeySetSegment;->instance:Lcom/alibaba/fastjson/JSONPath$KeySetSegment;

    return-object v0

    .line 999
    :cond_15a
    const-string/jumbo v0, "type"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_166

    .line 1000
    sget-object v0, Lcom/alibaba/fastjson/JSONPath$TypeSegment;->instance:Lcom/alibaba/fastjson/JSONPath$TypeSegment;

    return-object v0

    .line 1001
    :cond_166
    const-string v0, "floor"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_171

    .line 1002
    sget-object v0, Lcom/alibaba/fastjson/JSONPath$FloorSegment;->instance:Lcom/alibaba/fastjson/JSONPath$FloorSegment;

    return-object v0

    .line 1005
    :cond_171
    new-instance v0, Lcom/alibaba/fastjson/JSONPathException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->path:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONPathException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 992
    :cond_185
    :goto_185
    sget-object v0, Lcom/alibaba/fastjson/JSONPath$SizeSegment;->instance:Lcom/alibaba/fastjson/JSONPath$SizeSegment;

    return-object v0

    .line 1008
    :cond_188
    new-instance v0, Lcom/alibaba/fastjson/JSONPathException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->path:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONPathException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1011
    :cond_19c
    new-instance v2, Lcom/alibaba/fastjson/JSONPath$PropertySegment;

    invoke-direct {v2, v1, v0}, Lcom/alibaba/fastjson/JSONPath$PropertySegment;-><init>(Ljava/lang/String;Z)V

    return-object v2

    :cond_1a2
    :goto_1a2
    if-ne v6, v5, :cond_1a5

    goto :goto_1a6

    :cond_1a5
    const/4 v1, 0x0

    .line 964
    :goto_1a6
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->isEOF()Z

    move-result v2

    if-nez v2, :cond_1af

    .line 965
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    :cond_1af
    if-eqz v0, :cond_1b9

    if-eqz v1, :cond_1b6

    .line 970
    sget-object v0, Lcom/alibaba/fastjson/JSONPath$WildCardSegment;->instance_deep_objectOnly:Lcom/alibaba/fastjson/JSONPath$WildCardSegment;

    return-object v0

    .line 972
    :cond_1b6
    sget-object v0, Lcom/alibaba/fastjson/JSONPath$WildCardSegment;->instance_deep:Lcom/alibaba/fastjson/JSONPath$WildCardSegment;

    return-object v0

    .line 975
    :cond_1b9
    sget-object v0, Lcom/alibaba/fastjson/JSONPath$WildCardSegment;->instance:Lcom/alibaba/fastjson/JSONPath$WildCardSegment;

    return-object v0

    :cond_1bc
    const/4 v0, 0x0

    return-object v0
.end method

.method readString()Ljava/lang/String;
    .registers 5

    .line 1938
    iget-char v0, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    .line 1939
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    .line 1941
    iget v1, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->pos:I

    add-int/lit8 v1, v1, -0x1

    .line 1942
    :goto_9
    iget-char v2, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    if-eq v2, v0, :cond_17

    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->isEOF()Z

    move-result v2

    if-nez v2, :cond_17

    .line 1943
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    goto :goto_9

    .line 1946
    :cond_17
    iget-object v2, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->path:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->isEOF()Z

    move-result v3

    if-eqz v3, :cond_22

    iget v3, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->pos:I

    goto :goto_26

    :cond_22
    iget v3, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->pos:I

    add-int/lit8 v3, v3, -0x1

    :goto_26
    invoke-virtual {v2, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 1948
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->accept(C)V

    return-object v1
.end method

.method protected readValue()Ljava/lang/Object;
    .registers 3

    .line 1803
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->skipWhitespace()V

    .line 1805
    iget-char v0, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    invoke-static {v0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->isDigitFirst(C)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 1806
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->readLongValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    .line 1809
    :cond_14
    iget-char v0, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    const/16 v1, 0x22

    if-eq v0, v1, :cond_3f

    const/16 v1, 0x27

    if-ne v0, v1, :cond_1f

    goto :goto_3f

    :cond_1f
    const/16 v1, 0x6e

    if-ne v0, v1, :cond_39

    .line 1814
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->readName()Ljava/lang/String;

    move-result-object v0

    .line 1816
    const-string v1, "null"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_31

    const/4 v0, 0x0

    return-object v0

    .line 1819
    :cond_31
    new-instance v0, Lcom/alibaba/fastjson/JSONPathException;

    iget-object v1, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->path:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONPathException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1823
    :cond_39
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 1810
    :cond_3f
    :goto_3f
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->readString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final skipWhitespace()V
    .registers 3

    .line 1037
    :goto_0
    iget-char v0, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    const/16 v1, 0x20

    if-gt v0, v1, :cond_20

    if-eq v0, v1, :cond_1c

    const/16 v1, 0xd

    if-eq v0, v1, :cond_1c

    const/16 v1, 0xa

    if-eq v0, v1, :cond_1c

    const/16 v1, 0x9

    if-eq v0, v1, :cond_1c

    const/16 v1, 0xc

    if-eq v0, v1, :cond_1c

    const/16 v1, 0x8

    if-ne v0, v1, :cond_20

    .line 1038
    :cond_1c
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    goto :goto_0

    :cond_20
    return-void
.end method

###### Class com.alibaba.fastjson.JSONPath.KeySetSegment (com.alibaba.fastjson.JSONPath$KeySetSegment)
.class Lcom/alibaba/fastjson/JSONPath$KeySetSegment;
.super Ljava/lang/Object;
.source "JSONPath.java"

# interfaces
.implements Lcom/alibaba/fastjson/JSONPath$Segment;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/fastjson/JSONPath;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "KeySetSegment"
.end annotation


# static fields
.field public static final instance:Lcom/alibaba/fastjson/JSONPath$KeySetSegment;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 2324
    new-instance v0, Lcom/alibaba/fastjson/JSONPath$KeySetSegment;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONPath$KeySetSegment;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson/JSONPath$KeySetSegment;->instance:Lcom/alibaba/fastjson/JSONPath$KeySetSegment;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    .line 2322
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public eval(Lcom/alibaba/fastjson/JSONPath;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 2327
    invoke-virtual {p1, p3}, Lcom/alibaba/fastjson/JSONPath;->evalKeySet(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public extract(Lcom/alibaba/fastjson/JSONPath;Lcom/alibaba/fastjson/parser/DefaultJSONParser;Lcom/alibaba/fastjson/JSONPath$Context;)V
    .registers 4

    .line 2331
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

###### Class com.alibaba.fastjson.JSONPath.MatchSegement (com.alibaba.fastjson.JSONPath$MatchSegement)
.class Lcom/alibaba/fastjson/JSONPath$MatchSegement;
.super Lcom/alibaba/fastjson/JSONPath$PropertyFilter;
.source "JSONPath.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/fastjson/JSONPath;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MatchSegement"
.end annotation


# instance fields
.field private final containsValues:[Ljava/lang/String;

.field private final endsWithValue:Ljava/lang/String;

.field private final minLength:I

.field private final not:Z

.field private final startsWithValue:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Z)V
    .registers 7

    .line 3280
    invoke-direct {p0, p1, p2}, Lcom/alibaba/fastjson/JSONPath$PropertyFilter;-><init>(Ljava/lang/String;Z)V

    .line 3281
    iput-object p3, p0, Lcom/alibaba/fastjson/JSONPath$MatchSegement;->startsWithValue:Ljava/lang/String;

    .line 3282
    iput-object p4, p0, Lcom/alibaba/fastjson/JSONPath$MatchSegement;->endsWithValue:Ljava/lang/String;

    .line 3283
    iput-object p5, p0, Lcom/alibaba/fastjson/JSONPath$MatchSegement;->containsValues:[Ljava/lang/String;

    .line 3284
    iput-boolean p6, p0, Lcom/alibaba/fastjson/JSONPath$MatchSegement;->not:Z

    const/4 p1, 0x0

    if-eqz p3, :cond_13

    .line 3288
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p2

    goto :goto_14

    :cond_13
    const/4 p2, 0x0

    :goto_14
    if-eqz p4, :cond_1b

    .line 3292
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result p3

    add-int/2addr p2, p3

    :cond_1b
    if-eqz p5, :cond_2a

    .line 3296
    array-length p3, p5

    :goto_1e
    if-ge p1, p3, :cond_2a

    aget-object p4, p5, p1

    .line 3297
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result p4

    add-int/2addr p2, p4

    add-int/lit8 p1, p1, 0x1

    goto :goto_1e

    .line 3301
    :cond_2a
    iput p2, p0, Lcom/alibaba/fastjson/JSONPath$MatchSegement;->minLength:I

    return-void
.end method


# virtual methods
.method public apply(Lcom/alibaba/fastjson/JSONPath;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 8

    .line 3305
    invoke-virtual {p0, p1, p2, p4}, Lcom/alibaba/fastjson/JSONPath$MatchSegement;->get(Lcom/alibaba/fastjson/JSONPath;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const/4 p2, 0x0

    if-nez p1, :cond_8

    return p2

    .line 3311
    :cond_8
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 3313
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p3

    iget p4, p0, Lcom/alibaba/fastjson/JSONPath$MatchSegement;->minLength:I

    if-ge p3, p4, :cond_17

    .line 3314
    iget-boolean p1, p0, Lcom/alibaba/fastjson/JSONPath$MatchSegement;->not:Z

    return p1

    .line 3318
    :cond_17
    iget-object p3, p0, Lcom/alibaba/fastjson/JSONPath$MatchSegement;->startsWithValue:Ljava/lang/String;

    if-eqz p3, :cond_2b

    .line 3319
    invoke-virtual {p1, p3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p3

    if-nez p3, :cond_24

    .line 3320
    iget-boolean p1, p0, Lcom/alibaba/fastjson/JSONPath$MatchSegement;->not:Z

    return p1

    .line 3322
    :cond_24
    iget-object p3, p0, Lcom/alibaba/fastjson/JSONPath$MatchSegement;->startsWithValue:Ljava/lang/String;

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p3

    goto :goto_2c

    :cond_2b
    const/4 p3, 0x0

    .line 3325
    :goto_2c
    iget-object p4, p0, Lcom/alibaba/fastjson/JSONPath$MatchSegement;->containsValues:[Ljava/lang/String;

    if-eqz p4, :cond_47

    .line 3326
    array-length v0, p4

    :goto_31
    if-ge p2, v0, :cond_47

    aget-object v1, p4, p2

    .line 3327
    invoke-virtual {p1, v1, p3}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result p3

    const/4 v2, -0x1

    if-ne p3, v2, :cond_3f

    .line 3329
    iget-boolean p1, p0, Lcom/alibaba/fastjson/JSONPath$MatchSegement;->not:Z

    return p1

    .line 3331
    :cond_3f
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr p3, v1

    add-int/lit8 p2, p2, 0x1

    goto :goto_31

    .line 3335
    :cond_47
    iget-object p2, p0, Lcom/alibaba/fastjson/JSONPath$MatchSegement;->endsWithValue:Ljava/lang/String;

    if-eqz p2, :cond_54

    .line 3336
    invoke-virtual {p1, p2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_54

    .line 3337
    iget-boolean p1, p0, Lcom/alibaba/fastjson/JSONPath$MatchSegement;->not:Z

    return p1

    .line 3341
    :cond_54
    iget-boolean p1, p0, Lcom/alibaba/fastjson/JSONPath$MatchSegement;->not:Z

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

###### Class com.alibaba.fastjson.JSONPath.MaxSegment (com.alibaba.fastjson.JSONPath$MaxSegment)
.class Lcom/alibaba/fastjson/JSONPath$MaxSegment;
.super Ljava/lang/Object;
.source "JSONPath.java"

# interfaces
.implements Lcom/alibaba/fastjson/JSONPath$Segment;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/fastjson/JSONPath;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MaxSegment"
.end annotation


# static fields
.field public static final instance:Lcom/alibaba/fastjson/JSONPath$MaxSegment;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 2202
    new-instance v0, Lcom/alibaba/fastjson/JSONPath$MaxSegment;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONPath$MaxSegment;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson/JSONPath$MaxSegment;->instance:Lcom/alibaba/fastjson/JSONPath$MaxSegment;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    .line 2200
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public eval(Lcom/alibaba/fastjson/JSONPath;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    .line 2206
    instance-of p1, p3, Ljava/util/Collection;

    if-eqz p1, :cond_24

    .line 2207
    check-cast p3, Ljava/util/Collection;

    invoke-interface {p3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 p2, 0x0

    .line 2208
    :cond_b
    :goto_b
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_23

    .line 2209
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    if-nez p3, :cond_18

    goto :goto_b

    :cond_18
    if-nez p2, :cond_1b

    goto :goto_21

    .line 2216
    :cond_1b
    invoke-static {p2, p3}, Lcom/alibaba/fastjson/JSONPath;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-gez v0, :cond_b

    :goto_21
    move-object p2, p3

    goto :goto_b

    :cond_23
    return-object p2

    .line 2221
    :cond_24
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public extract(Lcom/alibaba/fastjson/JSONPath;Lcom/alibaba/fastjson/parser/DefaultJSONParser;Lcom/alibaba/fastjson/JSONPath$Context;)V
    .registers 4

    .line 2228
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

###### Class com.alibaba.fastjson.JSONPath.MinSegment (com.alibaba.fastjson.JSONPath$MinSegment)
.class Lcom/alibaba/fastjson/JSONPath$MinSegment;
.super Ljava/lang/Object;
.source "JSONPath.java"

# interfaces
.implements Lcom/alibaba/fastjson/JSONPath$Segment;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/fastjson/JSONPath;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MinSegment"
.end annotation


# static fields
.field public static final instance:Lcom/alibaba/fastjson/JSONPath$MinSegment;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 2233
    new-instance v0, Lcom/alibaba/fastjson/JSONPath$MinSegment;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONPath$MinSegment;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson/JSONPath$MinSegment;->instance:Lcom/alibaba/fastjson/JSONPath$MinSegment;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    .line 2232
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public eval(Lcom/alibaba/fastjson/JSONPath;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    .line 2237
    instance-of p1, p3, Ljava/util/Collection;

    if-eqz p1, :cond_24

    .line 2238
    check-cast p3, Ljava/util/Collection;

    invoke-interface {p3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 p2, 0x0

    .line 2239
    :cond_b
    :goto_b
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_23

    .line 2240
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    if-nez p3, :cond_18

    goto :goto_b

    :cond_18
    if-nez p2, :cond_1b

    goto :goto_21

    .line 2247
    :cond_1b
    invoke-static {p2, p3}, Lcom/alibaba/fastjson/JSONPath;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-lez v0, :cond_b

    :goto_21
    move-object p2, p3

    goto :goto_b

    :cond_23
    return-object p2

    .line 2252
    :cond_24
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public extract(Lcom/alibaba/fastjson/JSONPath;Lcom/alibaba/fastjson/parser/DefaultJSONParser;Lcom/alibaba/fastjson/JSONPath$Context;)V
    .registers 4

    .line 2259
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

###### Class com.alibaba.fastjson.JSONPath.MultiIndexSegment (com.alibaba.fastjson.JSONPath$MultiIndexSegment)
.class Lcom/alibaba/fastjson/JSONPath$MultiIndexSegment;
.super Ljava/lang/Object;
.source "JSONPath.java"

# interfaces
.implements Lcom/alibaba/fastjson/JSONPath$Segment;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/fastjson/JSONPath;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MultiIndexSegment"
.end annotation


# instance fields
.field private final indexes:[I


# direct methods
.method public constructor <init>([I)V
    .registers 2

    .line 2761
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2762
    iput-object p1, p0, Lcom/alibaba/fastjson/JSONPath$MultiIndexSegment;->indexes:[I

    return-void
.end method


# virtual methods
.method public eval(Lcom/alibaba/fastjson/JSONPath;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7

    .line 2766
    new-instance p2, Lcom/alibaba/fastjson/JSONArray;

    iget-object v0, p0, Lcom/alibaba/fastjson/JSONPath$MultiIndexSegment;->indexes:[I

    array-length v0, v0

    invoke-direct {p2, v0}, Lcom/alibaba/fastjson/JSONArray;-><init>(I)V

    const/4 v0, 0x0

    .line 2767
    :goto_9
    iget-object v1, p0, Lcom/alibaba/fastjson/JSONPath$MultiIndexSegment;->indexes:[I

    array-length v2, v1

    if-ge v0, v2, :cond_1a

    .line 2768
    aget v1, v1, v0

    invoke-virtual {p1, p3, v1}, Lcom/alibaba/fastjson/JSONPath;->getArrayItem(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v1

    .line 2769
    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    :cond_1a
    return-object p2
.end method

.method public extract(Lcom/alibaba/fastjson/JSONPath;Lcom/alibaba/fastjson/parser/DefaultJSONParser;Lcom/alibaba/fastjson/JSONPath$Context;)V
    .registers 7

    .line 2775
    iget-boolean p1, p3, Lcom/alibaba/fastjson/JSONPath$Context;->eval:Z

    if-eqz p1, :cond_35

    .line 2776
    invoke-virtual {p2}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parse()Ljava/lang/Object;

    move-result-object p1

    .line 2777
    instance-of p2, p1, Ljava/util/List;

    if-eqz p2, :cond_35

    .line 2778
    iget-object p2, p0, Lcom/alibaba/fastjson/JSONPath$MultiIndexSegment;->indexes:[I

    array-length v0, p2

    new-array v1, v0, [I

    const/4 v2, 0x0

    .line 2779
    invoke-static {p2, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2780
    aget p2, v1, v2

    const/4 v0, 0x1

    if-ltz p2, :cond_1b

    const/4 v2, 0x1

    .line 2782
    :cond_1b
    check-cast p1, Ljava/util/List;

    if-eqz v2, :cond_35

    .line 2784
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    sub-int/2addr p2, v0

    :goto_24
    if-ltz p2, :cond_32

    .line 2785
    invoke-static {v1, p2}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v0

    if-gez v0, :cond_2f

    .line 2786
    invoke-interface {p1, p2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_2f
    add-int/lit8 p2, p2, -0x1

    goto :goto_24

    .line 2789
    :cond_32
    iput-object p1, p3, Lcom/alibaba/fastjson/JSONPath$Context;->object:Ljava/lang/Object;

    return-void

    .line 2794
    :cond_35
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

###### Class com.alibaba.fastjson.JSONPath.MultiPropertySegment (com.alibaba.fastjson.JSONPath$MultiPropertySegment)
.class Lcom/alibaba/fastjson/JSONPath$MultiPropertySegment;
.super Ljava/lang/Object;
.source "JSONPath.java"

# interfaces
.implements Lcom/alibaba/fastjson/JSONPath$Segment;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/fastjson/JSONPath;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MultiPropertySegment"
.end annotation


# instance fields
.field private final propertyNames:[Ljava/lang/String;

.field private final propertyNamesHash:[J


# direct methods
.method public constructor <init>([Ljava/lang/String;)V
    .registers 6

    .line 2555
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2556
    iput-object p1, p0, Lcom/alibaba/fastjson/JSONPath$MultiPropertySegment;->propertyNames:[Ljava/lang/String;

    .line 2557
    array-length v0, p1

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/alibaba/fastjson/JSONPath$MultiPropertySegment;->propertyNamesHash:[J

    const/4 v0, 0x0

    .line 2558
    :goto_b
    iget-object v1, p0, Lcom/alibaba/fastjson/JSONPath$MultiPropertySegment;->propertyNamesHash:[J

    array-length v2, v1

    if-ge v0, v2, :cond_1b

    .line 2559
    aget-object v2, p1, v0

    invoke-static {v2}, Lcom/alibaba/fastjson/util/TypeUtils;->fnv1a_64(Ljava/lang/String;)J

    move-result-wide v2

    aput-wide v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    :cond_1b
    return-void
.end method


# virtual methods
.method public eval(Lcom/alibaba/fastjson/JSONPath;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 9

    .line 2564
    new-instance p2, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/alibaba/fastjson/JSONPath$MultiPropertySegment;->propertyNames:[Ljava/lang/String;

    array-length v0, v0

    invoke-direct {p2, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v0, 0x0

    .line 2566
    :goto_9
    iget-object v1, p0, Lcom/alibaba/fastjson/JSONPath$MultiPropertySegment;->propertyNames:[Ljava/lang/String;

    array-length v2, v1

    if-ge v0, v2, :cond_1e

    .line 2567
    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/alibaba/fastjson/JSONPath$MultiPropertySegment;->propertyNamesHash:[J

    aget-wide v3, v2, v0

    invoke-virtual {p1, p3, v1, v3, v4}, Lcom/alibaba/fastjson/JSONPath;->getPropertyValue(Ljava/lang/Object;Ljava/lang/String;J)Ljava/lang/Object;

    move-result-object v1

    .line 2568
    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    :cond_1e
    return-object p2
.end method

.method public extract(Lcom/alibaba/fastjson/JSONPath;Lcom/alibaba/fastjson/parser/DefaultJSONParser;Lcom/alibaba/fastjson/JSONPath$Context;)V
    .registers 9

    .line 2575
    iget-object p1, p2, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    check-cast p1, Lcom/alibaba/fastjson/parser/JSONLexerBase;

    .line 2578
    iget-object v0, p3, Lcom/alibaba/fastjson/JSONPath$Context;->object:Ljava/lang/Object;

    if-nez v0, :cond_10

    .line 2579
    new-instance v0, Lcom/alibaba/fastjson/JSONArray;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONArray;-><init>()V

    iput-object v0, p3, Lcom/alibaba/fastjson/JSONPath$Context;->object:Ljava/lang/Object;

    goto :goto_15

    .line 2581
    :cond_10
    iget-object p3, p3, Lcom/alibaba/fastjson/JSONPath$Context;->object:Ljava/lang/Object;

    move-object v0, p3

    check-cast v0, Lcom/alibaba/fastjson/JSONArray;

    .line 2583
    :goto_15
    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result p3

    :goto_19
    iget-object v1, p0, Lcom/alibaba/fastjson/JSONPath$MultiPropertySegment;->propertyNamesHash:[J

    array-length v1, v1

    if-ge p3, v1, :cond_25

    const/4 v1, 0x0

    .line 2584
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONArray;->add(Ljava/lang/Object;)Z

    add-int/lit8 p3, p3, 0x1

    goto :goto_19

    .line 2640
    :cond_25
    :goto_25
    iget-object p3, p0, Lcom/alibaba/fastjson/JSONPath$MultiPropertySegment;->propertyNamesHash:[J

    invoke-virtual {p1, p3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->seekObjectToField([J)I

    move-result p3

    .line 2641
    iget v1, p1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_64

    .line 2644
    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token()I

    move-result v1

    const/4 v3, 0x2

    const/16 v4, 0x10

    if-eq v1, v3, :cond_53

    if-eq v1, v2, :cond_4b

    const/4 v2, 0x4

    if-eq v1, v2, :cond_43

    .line 2658
    invoke-virtual {p2}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parse()Ljava/lang/Object;

    move-result-object v1

    goto :goto_5a

    .line 2654
    :cond_43
    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->stringVal()Ljava/lang/String;

    move-result-object v1

    .line 2655
    invoke-virtual {p1, v4}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->nextToken(I)V

    goto :goto_5a

    .line 2650
    :cond_4b
    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->decimalValue()Ljava/math/BigDecimal;

    move-result-object v1

    .line 2651
    invoke-virtual {p1, v4}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->nextToken(I)V

    goto :goto_5a

    .line 2646
    :cond_53
    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->integerValue()Ljava/lang/Number;

    move-result-object v1

    .line 2647
    invoke-virtual {p1, v4}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->nextToken(I)V

    .line 2662
    :goto_5a
    invoke-virtual {v0, p3, v1}, Lcom/alibaba/fastjson/JSONArray;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2664
    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token()I

    move-result p3

    if-ne p3, v4, :cond_64

    goto :goto_25

    :cond_64
    return-void
.end method

###### Class com.alibaba.fastjson.JSONPath.NotNullSegement (com.alibaba.fastjson.JSONPath$NotNullSegement)
.class Lcom/alibaba/fastjson/JSONPath$NotNullSegement;
.super Lcom/alibaba/fastjson/JSONPath$PropertyFilter;
.source "JSONPath.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/fastjson/JSONPath;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "NotNullSegement"
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;Z)V
    .registers 3

    .line 2834
    invoke-direct {p0, p1, p2}, Lcom/alibaba/fastjson/JSONPath$PropertyFilter;-><init>(Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public apply(Lcom/alibaba/fastjson/JSONPath;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 7

    .line 2838
    iget-object p2, p0, Lcom/alibaba/fastjson/JSONPath$NotNullSegement;->propertyName:Ljava/lang/String;

    iget-wide v0, p0, Lcom/alibaba/fastjson/JSONPath$NotNullSegement;->propertyNameHash:J

    invoke-virtual {p1, p4, p2, v0, v1}, Lcom/alibaba/fastjson/JSONPath;->getPropertyValue(Ljava/lang/Object;Ljava/lang/String;J)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_c

    const/4 p1, 0x1

    return p1

    :cond_c
    const/4 p1, 0x0

    return p1
.end method

###### Class com.alibaba.fastjson.JSONPath.NullSegement (com.alibaba.fastjson.JSONPath$NullSegement)
.class Lcom/alibaba/fastjson/JSONPath$NullSegement;
.super Lcom/alibaba/fastjson/JSONPath$PropertyFilter;
.source "JSONPath.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/fastjson/JSONPath;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "NullSegement"
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;Z)V
    .registers 3

    .line 2844
    invoke-direct {p0, p1, p2}, Lcom/alibaba/fastjson/JSONPath$PropertyFilter;-><init>(Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public apply(Lcom/alibaba/fastjson/JSONPath;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 5

    .line 2848
    invoke-virtual {p0, p1, p2, p4}, Lcom/alibaba/fastjson/JSONPath$NullSegement;->get(Lcom/alibaba/fastjson/JSONPath;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_8

    const/4 p1, 0x1

    return p1

    :cond_8
    const/4 p1, 0x0

    return p1
.end method

###### Class com.alibaba.fastjson.JSONPath.Operator (com.alibaba.fastjson.JSONPath$Operator)
.class final enum Lcom/alibaba/fastjson/JSONPath$Operator;
.super Ljava/lang/Enum;
.source "JSONPath.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/fastjson/JSONPath;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "Operator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/alibaba/fastjson/JSONPath$Operator;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/fastjson/JSONPath$Operator;

.field public static final enum And:Lcom/alibaba/fastjson/JSONPath$Operator;

.field public static final enum BETWEEN:Lcom/alibaba/fastjson/JSONPath$Operator;

.field public static final enum EQ:Lcom/alibaba/fastjson/JSONPath$Operator;

.field public static final enum GE:Lcom/alibaba/fastjson/JSONPath$Operator;

.field public static final enum GT:Lcom/alibaba/fastjson/JSONPath$Operator;

.field public static final enum IN:Lcom/alibaba/fastjson/JSONPath$Operator;

.field public static final enum LE:Lcom/alibaba/fastjson/JSONPath$Operator;

.field public static final enum LIKE:Lcom/alibaba/fastjson/JSONPath$Operator;

.field public static final enum LT:Lcom/alibaba/fastjson/JSONPath$Operator;

.field public static final enum NE:Lcom/alibaba/fastjson/JSONPath$Operator;

.field public static final enum NOT_BETWEEN:Lcom/alibaba/fastjson/JSONPath$Operator;

.field public static final enum NOT_IN:Lcom/alibaba/fastjson/JSONPath$Operator;

.field public static final enum NOT_LIKE:Lcom/alibaba/fastjson/JSONPath$Operator;

.field public static final enum NOT_RLIKE:Lcom/alibaba/fastjson/JSONPath$Operator;

.field public static final enum Or:Lcom/alibaba/fastjson/JSONPath$Operator;

.field public static final enum REG_MATCH:Lcom/alibaba/fastjson/JSONPath$Operator;

.field public static final enum RLIKE:Lcom/alibaba/fastjson/JSONPath$Operator;


# direct methods
.method static constructor <clinit>()V
    .registers 35

    .line 3436
    new-instance v0, Lcom/alibaba/fastjson/JSONPath$Operator;

    const-string v1, "EQ"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/alibaba/fastjson/JSONPath$Operator;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/fastjson/JSONPath$Operator;->EQ:Lcom/alibaba/fastjson/JSONPath$Operator;

    new-instance v1, Lcom/alibaba/fastjson/JSONPath$Operator;

    const-string v3, "NE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/alibaba/fastjson/JSONPath$Operator;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/alibaba/fastjson/JSONPath$Operator;->NE:Lcom/alibaba/fastjson/JSONPath$Operator;

    new-instance v3, Lcom/alibaba/fastjson/JSONPath$Operator;

    const-string v5, "GT"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/alibaba/fastjson/JSONPath$Operator;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/alibaba/fastjson/JSONPath$Operator;->GT:Lcom/alibaba/fastjson/JSONPath$Operator;

    new-instance v5, Lcom/alibaba/fastjson/JSONPath$Operator;

    const-string v7, "GE"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/alibaba/fastjson/JSONPath$Operator;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/alibaba/fastjson/JSONPath$Operator;->GE:Lcom/alibaba/fastjson/JSONPath$Operator;

    new-instance v7, Lcom/alibaba/fastjson/JSONPath$Operator;

    const-string v9, "LT"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/alibaba/fastjson/JSONPath$Operator;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/alibaba/fastjson/JSONPath$Operator;->LT:Lcom/alibaba/fastjson/JSONPath$Operator;

    new-instance v9, Lcom/alibaba/fastjson/JSONPath$Operator;

    const-string v11, "LE"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/alibaba/fastjson/JSONPath$Operator;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/alibaba/fastjson/JSONPath$Operator;->LE:Lcom/alibaba/fastjson/JSONPath$Operator;

    new-instance v11, Lcom/alibaba/fastjson/JSONPath$Operator;

    const-string v13, "LIKE"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/alibaba/fastjson/JSONPath$Operator;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/alibaba/fastjson/JSONPath$Operator;->LIKE:Lcom/alibaba/fastjson/JSONPath$Operator;

    new-instance v13, Lcom/alibaba/fastjson/JSONPath$Operator;

    const-string v15, "NOT_LIKE"

    const/16 v16, 0x0

    const/4 v2, 0x7

    invoke-direct {v13, v15, v2}, Lcom/alibaba/fastjson/JSONPath$Operator;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/alibaba/fastjson/JSONPath$Operator;->NOT_LIKE:Lcom/alibaba/fastjson/JSONPath$Operator;

    new-instance v15, Lcom/alibaba/fastjson/JSONPath$Operator;

    const/16 v17, 0x7

    const-string v2, "RLIKE"

    const/16 v18, 0x1

    const/16 v4, 0x8

    invoke-direct {v15, v2, v4}, Lcom/alibaba/fastjson/JSONPath$Operator;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lcom/alibaba/fastjson/JSONPath$Operator;->RLIKE:Lcom/alibaba/fastjson/JSONPath$Operator;

    new-instance v2, Lcom/alibaba/fastjson/JSONPath$Operator;

    const/16 v19, 0x8

    const-string v4, "NOT_RLIKE"

    const/16 v20, 0x2

    const/16 v6, 0x9

    invoke-direct {v2, v4, v6}, Lcom/alibaba/fastjson/JSONPath$Operator;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/alibaba/fastjson/JSONPath$Operator;->NOT_RLIKE:Lcom/alibaba/fastjson/JSONPath$Operator;

    new-instance v4, Lcom/alibaba/fastjson/JSONPath$Operator;

    const/16 v21, 0x9

    const-string v6, "IN"

    const/16 v22, 0x3

    const/16 v8, 0xa

    invoke-direct {v4, v6, v8}, Lcom/alibaba/fastjson/JSONPath$Operator;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/alibaba/fastjson/JSONPath$Operator;->IN:Lcom/alibaba/fastjson/JSONPath$Operator;

    new-instance v6, Lcom/alibaba/fastjson/JSONPath$Operator;

    const/16 v23, 0xa

    const-string v8, "NOT_IN"

    const/16 v24, 0x4

    const/16 v10, 0xb

    invoke-direct {v6, v8, v10}, Lcom/alibaba/fastjson/JSONPath$Operator;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/alibaba/fastjson/JSONPath$Operator;->NOT_IN:Lcom/alibaba/fastjson/JSONPath$Operator;

    new-instance v8, Lcom/alibaba/fastjson/JSONPath$Operator;

    const/16 v25, 0xb

    const-string v10, "BETWEEN"

    const/16 v26, 0x5

    const/16 v12, 0xc

    invoke-direct {v8, v10, v12}, Lcom/alibaba/fastjson/JSONPath$Operator;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lcom/alibaba/fastjson/JSONPath$Operator;->BETWEEN:Lcom/alibaba/fastjson/JSONPath$Operator;

    new-instance v10, Lcom/alibaba/fastjson/JSONPath$Operator;

    const/16 v27, 0xc

    const-string v12, "NOT_BETWEEN"

    const/16 v28, 0x6

    const/16 v14, 0xd

    invoke-direct {v10, v12, v14}, Lcom/alibaba/fastjson/JSONPath$Operator;-><init>(Ljava/lang/String;I)V

    sput-object v10, Lcom/alibaba/fastjson/JSONPath$Operator;->NOT_BETWEEN:Lcom/alibaba/fastjson/JSONPath$Operator;

    new-instance v12, Lcom/alibaba/fastjson/JSONPath$Operator;

    const/16 v29, 0xd

    const-string v14, "And"

    move-object/from16 v30, v0

    const/16 v0, 0xe

    invoke-direct {v12, v14, v0}, Lcom/alibaba/fastjson/JSONPath$Operator;-><init>(Ljava/lang/String;I)V

    sput-object v12, Lcom/alibaba/fastjson/JSONPath$Operator;->And:Lcom/alibaba/fastjson/JSONPath$Operator;

    new-instance v14, Lcom/alibaba/fastjson/JSONPath$Operator;

    const/16 v31, 0xe

    const-string v0, "Or"

    move-object/from16 v32, v1

    const/16 v1, 0xf

    invoke-direct {v14, v0, v1}, Lcom/alibaba/fastjson/JSONPath$Operator;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lcom/alibaba/fastjson/JSONPath$Operator;->Or:Lcom/alibaba/fastjson/JSONPath$Operator;

    new-instance v0, Lcom/alibaba/fastjson/JSONPath$Operator;

    const/16 v33, 0xf

    const-string v1, "REG_MATCH"

    move-object/from16 v34, v2

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lcom/alibaba/fastjson/JSONPath$Operator;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/fastjson/JSONPath$Operator;->REG_MATCH:Lcom/alibaba/fastjson/JSONPath$Operator;

    const/16 v1, 0x11

    .line 3435
    new-array v1, v1, [Lcom/alibaba/fastjson/JSONPath$Operator;

    aput-object v30, v1, v16

    aput-object v32, v1, v18

    aput-object v3, v1, v20

    aput-object v5, v1, v22

    aput-object v7, v1, v24

    aput-object v9, v1, v26

    aput-object v11, v1, v28

    aput-object v13, v1, v17

    aput-object v15, v1, v19

    aput-object v34, v1, v21

    aput-object v4, v1, v23

    aput-object v6, v1, v25

    aput-object v8, v1, v27

    aput-object v10, v1, v29

    aput-object v12, v1, v31

    aput-object v14, v1, v33

    aput-object v0, v1, v2

    sput-object v1, Lcom/alibaba/fastjson/JSONPath$Operator;->$VALUES:[Lcom/alibaba/fastjson/JSONPath$Operator;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 3435
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONPath$Operator;
    .registers 2

    .line 3435
    const-class v0, Lcom/alibaba/fastjson/JSONPath$Operator;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/alibaba/fastjson/JSONPath$Operator;

    return-object p0
.end method

.method public static values()[Lcom/alibaba/fastjson/JSONPath$Operator;
    .registers 1

    .line 3435
    sget-object v0, Lcom/alibaba/fastjson/JSONPath$Operator;->$VALUES:[Lcom/alibaba/fastjson/JSONPath$Operator;

    invoke-virtual {v0}, [Lcom/alibaba/fastjson/JSONPath$Operator;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/fastjson/JSONPath$Operator;

    return-object v0
.end method

###### Class com.alibaba.fastjson.JSONPath.PropertyFilter (com.alibaba.fastjson.JSONPath$PropertyFilter)
.class abstract Lcom/alibaba/fastjson/JSONPath$PropertyFilter;
.super Ljava/lang/Object;
.source "JSONPath.java"

# interfaces
.implements Lcom/alibaba/fastjson/JSONPath$Filter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/fastjson/JSONPath;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "PropertyFilter"
.end annotation


# static fields
.field static TYPE:J


# instance fields
.field protected final function:Z

.field protected functionExpr:Lcom/alibaba/fastjson/JSONPath$Segment;

.field protected final propertyName:Ljava/lang/String;

.field protected final propertyNameHash:J


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 3122
    const-string/jumbo v0, "type"

    invoke-static {v0}, Lcom/alibaba/fastjson/util/TypeUtils;->fnv1a_64(Ljava/lang/String;)J

    move-result-wide v0

    sput-wide v0, Lcom/alibaba/fastjson/JSONPath$PropertyFilter;->TYPE:J

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Z)V
    .registers 7

    .line 3129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3130
    iput-object p1, p0, Lcom/alibaba/fastjson/JSONPath$PropertyFilter;->propertyName:Ljava/lang/String;

    .line 3131
    invoke-static {p1}, Lcom/alibaba/fastjson/util/TypeUtils;->fnv1a_64(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/fastjson/JSONPath$PropertyFilter;->propertyNameHash:J

    .line 3132
    iput-boolean p2, p0, Lcom/alibaba/fastjson/JSONPath$PropertyFilter;->function:Z

    if-eqz p2, :cond_3d

    .line 3135
    sget-wide v2, Lcom/alibaba/fastjson/JSONPath$PropertyFilter;->TYPE:J

    cmp-long p2, v0, v2

    if-nez p2, :cond_1a

    .line 3136
    sget-object p1, Lcom/alibaba/fastjson/JSONPath$TypeSegment;->instance:Lcom/alibaba/fastjson/JSONPath$TypeSegment;

    iput-object p1, p0, Lcom/alibaba/fastjson/JSONPath$PropertyFilter;->functionExpr:Lcom/alibaba/fastjson/JSONPath$Segment;

    return-void

    :cond_1a
    const-wide v2, 0x4dea9618e618ae3cL    # 2.239892812106928E67

    cmp-long p2, v0, v2

    if-nez p2, :cond_28

    .line 3138
    sget-object p1, Lcom/alibaba/fastjson/JSONPath$SizeSegment;->instance:Lcom/alibaba/fastjson/JSONPath$SizeSegment;

    iput-object p1, p0, Lcom/alibaba/fastjson/JSONPath$PropertyFilter;->functionExpr:Lcom/alibaba/fastjson/JSONPath$Segment;

    return-void

    .line 3140
    :cond_28
    new-instance p2, Lcom/alibaba/fastjson/JSONPathException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "unsupported funciton : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/alibaba/fastjson/JSONPathException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_3d
    return-void
.end method


# virtual methods
.method protected get(Lcom/alibaba/fastjson/JSONPath;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6

    .line 3146
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONPath$PropertyFilter;->functionExpr:Lcom/alibaba/fastjson/JSONPath$Segment;

    if-eqz v0, :cond_9

    .line 3147
    invoke-interface {v0, p1, p2, p3}, Lcom/alibaba/fastjson/JSONPath$Segment;->eval(Lcom/alibaba/fastjson/JSONPath;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 3149
    :cond_9
    iget-object p2, p0, Lcom/alibaba/fastjson/JSONPath$PropertyFilter;->propertyName:Ljava/lang/String;

    iget-wide v0, p0, Lcom/alibaba/fastjson/JSONPath$PropertyFilter;->propertyNameHash:J

    invoke-virtual {p1, p3, p2, v0, v1}, Lcom/alibaba/fastjson/JSONPath;->getPropertyValue(Ljava/lang/Object;Ljava/lang/String;J)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

###### Class com.alibaba.fastjson.JSONPath.PropertySegment (com.alibaba.fastjson.JSONPath$PropertySegment)
.class Lcom/alibaba/fastjson/JSONPath$PropertySegment;
.super Ljava/lang/Object;
.source "JSONPath.java"

# interfaces
.implements Lcom/alibaba/fastjson/JSONPath$Segment;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/fastjson/JSONPath;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PropertySegment"
.end annotation


# instance fields
.field private final deep:Z

.field private final propertyName:Ljava/lang/String;

.field private final propertyNameHash:J


# direct methods
.method public constructor <init>(Ljava/lang/String;Z)V
    .registers 5

    .line 2341
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2342
    iput-object p1, p0, Lcom/alibaba/fastjson/JSONPath$PropertySegment;->propertyName:Ljava/lang/String;

    .line 2343
    invoke-static {p1}, Lcom/alibaba/fastjson/util/TypeUtils;->fnv1a_64(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/fastjson/JSONPath$PropertySegment;->propertyNameHash:J

    .line 2344
    iput-boolean p2, p0, Lcom/alibaba/fastjson/JSONPath$PropertySegment;->deep:Z

    return-void
.end method

.method static synthetic access$100(Lcom/alibaba/fastjson/JSONPath$PropertySegment;)Z
    .registers 1

    .line 2335
    iget-boolean p0, p0, Lcom/alibaba/fastjson/JSONPath$PropertySegment;->deep:Z

    return p0
.end method

.method static synthetic access$400(Lcom/alibaba/fastjson/JSONPath$PropertySegment;)Ljava/lang/String;
    .registers 1

    .line 2335
    iget-object p0, p0, Lcom/alibaba/fastjson/JSONPath$PropertySegment;->propertyName:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public eval(Lcom/alibaba/fastjson/JSONPath;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6

    .line 2348
    iget-boolean p2, p0, Lcom/alibaba/fastjson/JSONPath$PropertySegment;->deep:Z

    if-eqz p2, :cond_f

    .line 2349
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 2350
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONPath$PropertySegment;->propertyName:Ljava/lang/String;

    invoke-virtual {p1, p3, v0, p2}, Lcom/alibaba/fastjson/JSONPath;->deepScan(Ljava/lang/Object;Ljava/lang/String;Ljava/util/List;)V

    return-object p2

    .line 2354
    :cond_f
    iget-object p2, p0, Lcom/alibaba/fastjson/JSONPath$PropertySegment;->propertyName:Ljava/lang/String;

    iget-wide v0, p0, Lcom/alibaba/fastjson/JSONPath$PropertySegment;->propertyNameHash:J

    invoke-virtual {p1, p3, p2, v0, v1}, Lcom/alibaba/fastjson/JSONPath;->getPropertyValue(Ljava/lang/Object;Ljava/lang/String;J)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public extract(Lcom/alibaba/fastjson/JSONPath;Lcom/alibaba/fastjson/parser/DefaultJSONParser;Lcom/alibaba/fastjson/JSONPath$Context;)V
    .registers 20

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    .line 2359
    iget-object v3, v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    check-cast v3, Lcom/alibaba/fastjson/parser/JSONLexerBase;

    .line 2361
    iget-boolean v4, v0, Lcom/alibaba/fastjson/JSONPath$PropertySegment;->deep:Z

    if-eqz v4, :cond_19

    iget-object v4, v2, Lcom/alibaba/fastjson/JSONPath$Context;->object:Ljava/lang/Object;

    if-nez v4, :cond_19

    .line 2362
    new-instance v4, Lcom/alibaba/fastjson/JSONArray;

    invoke-direct {v4}, Lcom/alibaba/fastjson/JSONArray;-><init>()V

    iput-object v4, v2, Lcom/alibaba/fastjson/JSONPath$Context;->object:Ljava/lang/Object;

    .line 2365
    :cond_19
    invoke-virtual {v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token()I

    move-result v4

    const/4 v5, -0x1

    const/16 v6, 0xe

    const/4 v7, 0x4

    const/4 v8, 0x2

    const/4 v9, 0x3

    const/16 v10, 0x10

    if-ne v4, v6, :cond_f1

    .line 2366
    const-string v4, "*"

    iget-object v11, v0, Lcom/alibaba/fastjson/JSONPath$PropertySegment;->propertyName:Ljava/lang/String;

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_33

    goto/16 :goto_138

    .line 2370
    :cond_33
    invoke-virtual {v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->nextToken()V

    .line 2373
    iget-boolean v4, v0, Lcom/alibaba/fastjson/JSONPath$PropertySegment;->deep:Z

    if-eqz v4, :cond_3f

    .line 2374
    iget-object v4, v2, Lcom/alibaba/fastjson/JSONPath$Context;->object:Ljava/lang/Object;

    check-cast v4, Lcom/alibaba/fastjson/JSONArray;

    goto :goto_44

    .line 2376
    :cond_3f
    new-instance v4, Lcom/alibaba/fastjson/JSONArray;

    invoke-direct {v4}, Lcom/alibaba/fastjson/JSONArray;-><init>()V

    .line 2379
    :goto_44
    invoke-virtual {v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token()I

    move-result v11

    const/16 v12, 0xc

    const/4 v13, 0x0

    if-eq v11, v12, :cond_63

    if-eq v11, v6, :cond_57

    packed-switch v11, :pswitch_data_190

    goto :goto_ac

    .line 2434
    :pswitch_53
    invoke-virtual {v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->nextToken()V

    goto :goto_ac

    .line 2421
    :cond_57
    iget-boolean v11, v0, Lcom/alibaba/fastjson/JSONPath$PropertySegment;->deep:Z

    if-eqz v11, :cond_5f

    .line 2422
    invoke-virtual/range {p0 .. p3}, Lcom/alibaba/fastjson/JSONPath$PropertySegment;->extract(Lcom/alibaba/fastjson/JSONPath;Lcom/alibaba/fastjson/parser/DefaultJSONParser;Lcom/alibaba/fastjson/JSONPath$Context;)V

    goto :goto_ac

    .line 2424
    :cond_5f
    invoke-virtual {v3, v13}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->skipObject(Z)V

    goto :goto_ac

    .line 2381
    :cond_63
    iget-boolean v11, v0, Lcom/alibaba/fastjson/JSONPath$PropertySegment;->deep:Z

    if-eqz v11, :cond_6b

    .line 2382
    invoke-virtual/range {p0 .. p3}, Lcom/alibaba/fastjson/JSONPath$PropertySegment;->extract(Lcom/alibaba/fastjson/JSONPath;Lcom/alibaba/fastjson/parser/DefaultJSONParser;Lcom/alibaba/fastjson/JSONPath$Context;)V

    goto :goto_ac

    .line 2385
    :cond_6b
    iget-wide v14, v0, Lcom/alibaba/fastjson/JSONPath$PropertySegment;->propertyNameHash:J

    invoke-virtual {v3, v14, v15, v11}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->seekObjectToField(JZ)I

    move-result v11

    if-ne v11, v9, :cond_a2

    .line 2388
    invoke-virtual {v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token()I

    move-result v11

    if-eq v11, v8, :cond_88

    if-eq v11, v7, :cond_80

    .line 2398
    invoke-virtual {v1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parse()Ljava/lang/Object;

    move-result-object v11

    goto :goto_8f

    .line 2394
    :cond_80
    invoke-virtual {v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->stringVal()Ljava/lang/String;

    move-result-object v11

    .line 2395
    invoke-virtual {v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->nextToken()V

    goto :goto_8f

    .line 2390
    :cond_88
    invoke-virtual {v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->integerValue()Ljava/lang/Number;

    move-result-object v11

    .line 2391
    invoke-virtual {v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->nextToken()V

    .line 2402
    :goto_8f
    invoke-virtual {v4, v11}, Lcom/alibaba/fastjson/JSONArray;->add(Ljava/lang/Object;)Z

    .line 2403
    invoke-virtual {v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token()I

    move-result v11

    const/16 v12, 0xd

    if-ne v11, v12, :cond_9e

    .line 2404
    invoke-virtual {v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->nextToken()V

    goto :goto_44

    .line 2407
    :cond_9e
    invoke-virtual {v3, v13}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->skipObject(Z)V

    goto :goto_ac

    :cond_a2
    if-ne v11, v5, :cond_a5

    goto :goto_44

    .line 2412
    :cond_a5
    iget-boolean v11, v0, Lcom/alibaba/fastjson/JSONPath$PropertySegment;->deep:Z

    if-nez v11, :cond_e7

    .line 2415
    invoke-virtual {v3, v13}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->skipObject(Z)V

    .line 2440
    :goto_ac
    invoke-virtual {v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token()I

    move-result v11

    const/16 v12, 0xf

    if-ne v11, v12, :cond_c4

    .line 2441
    invoke-virtual {v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->nextToken()V

    .line 2451
    iget-boolean v1, v0, Lcom/alibaba/fastjson/JSONPath$PropertySegment;->deep:Z

    if-nez v1, :cond_138

    .line 2452
    invoke-virtual {v4}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v1

    if-lez v1, :cond_138

    .line 2453
    iput-object v4, v2, Lcom/alibaba/fastjson/JSONPath$Context;->object:Ljava/lang/Object;

    return-void

    .line 2443
    :cond_c4
    invoke-virtual {v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token()I

    move-result v11

    if-ne v11, v10, :cond_cf

    .line 2444
    invoke-virtual {v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->nextToken()V

    goto/16 :goto_44

    .line 2447
    :cond_cf
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "illegal json : "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->info()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2413
    :cond_e7
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    invoke-virtual {v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->info()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2459
    :cond_f1
    iget-boolean v4, v0, Lcom/alibaba/fastjson/JSONPath$PropertySegment;->deep:Z

    if-nez v4, :cond_12e

    .line 2460
    iget-wide v5, v0, Lcom/alibaba/fastjson/JSONPath$PropertySegment;->propertyNameHash:J

    invoke-virtual {v3, v5, v6, v4}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->seekObjectToField(JZ)I

    move-result v4

    if-ne v4, v9, :cond_138

    .line 2462
    iget-boolean v4, v2, Lcom/alibaba/fastjson/JSONPath$Context;->eval:Z

    if-eqz v4, :cond_138

    .line 2464
    invoke-virtual {v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token()I

    move-result v4

    if-eq v4, v8, :cond_120

    if-eq v4, v9, :cond_118

    if-eq v4, v7, :cond_110

    .line 2478
    invoke-virtual {v1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parse()Ljava/lang/Object;

    move-result-object v1

    goto :goto_127

    .line 2474
    :cond_110
    invoke-virtual {v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->stringVal()Ljava/lang/String;

    move-result-object v1

    .line 2475
    invoke-virtual {v3, v10}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->nextToken(I)V

    goto :goto_127

    .line 2470
    :cond_118
    invoke-virtual {v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->decimalValue()Ljava/math/BigDecimal;

    move-result-object v1

    .line 2471
    invoke-virtual {v3, v10}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->nextToken(I)V

    goto :goto_127

    .line 2466
    :cond_120
    invoke-virtual {v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->integerValue()Ljava/lang/Number;

    move-result-object v1

    .line 2467
    invoke-virtual {v3, v10}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->nextToken(I)V

    .line 2482
    :goto_127
    iget-boolean v3, v2, Lcom/alibaba/fastjson/JSONPath$Context;->eval:Z

    if-eqz v3, :cond_138

    .line 2483
    iput-object v1, v2, Lcom/alibaba/fastjson/JSONPath$Context;->object:Ljava/lang/Object;

    return-void

    .line 2492
    :cond_12e
    :goto_12e
    iget-wide v11, v0, Lcom/alibaba/fastjson/JSONPath$PropertySegment;->propertyNameHash:J

    iget-boolean v4, v0, Lcom/alibaba/fastjson/JSONPath$PropertySegment;->deep:Z

    invoke-virtual {v3, v11, v12, v4}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->seekObjectToField(JZ)I

    move-result v4

    if-ne v4, v5, :cond_139

    :cond_138
    :goto_138
    return-void

    :cond_139
    if-ne v4, v9, :cond_187

    .line 2498
    iget-boolean v4, v2, Lcom/alibaba/fastjson/JSONPath$Context;->eval:Z

    if-eqz v4, :cond_12e

    .line 2500
    invoke-virtual {v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token()I

    move-result v4

    if-eq v4, v8, :cond_15e

    if-eq v4, v9, :cond_156

    if-eq v4, v7, :cond_14e

    .line 2514
    invoke-virtual {v1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parse()Ljava/lang/Object;

    move-result-object v4

    goto :goto_165

    .line 2510
    :cond_14e
    invoke-virtual {v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->stringVal()Ljava/lang/String;

    move-result-object v4

    .line 2511
    invoke-virtual {v3, v10}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->nextToken(I)V

    goto :goto_165

    .line 2506
    :cond_156
    invoke-virtual {v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->decimalValue()Ljava/math/BigDecimal;

    move-result-object v4

    .line 2507
    invoke-virtual {v3, v10}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->nextToken(I)V

    goto :goto_165

    .line 2502
    :cond_15e
    invoke-virtual {v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->integerValue()Ljava/lang/Number;

    move-result-object v4

    .line 2503
    invoke-virtual {v3, v10}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->nextToken(I)V

    .line 2518
    :goto_165
    iget-boolean v6, v2, Lcom/alibaba/fastjson/JSONPath$Context;->eval:Z

    if-eqz v6, :cond_12e

    .line 2519
    iget-object v6, v2, Lcom/alibaba/fastjson/JSONPath$Context;->object:Ljava/lang/Object;

    instance-of v6, v6, Ljava/util/List;

    if-eqz v6, :cond_184

    .line 2520
    iget-object v6, v2, Lcom/alibaba/fastjson/JSONPath$Context;->object:Ljava/lang/Object;

    check-cast v6, Ljava/util/List;

    .line 2521
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v11

    if-nez v11, :cond_180

    instance-of v11, v4, Ljava/util/List;

    if-eqz v11, :cond_180

    .line 2522
    iput-object v4, v2, Lcom/alibaba/fastjson/JSONPath$Context;->object:Ljava/lang/Object;

    goto :goto_12e

    .line 2524
    :cond_180
    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_12e

    .line 2527
    :cond_184
    iput-object v4, v2, Lcom/alibaba/fastjson/JSONPath$Context;->object:Ljava/lang/Object;

    goto :goto_12e

    :cond_187
    const/4 v6, 0x1

    if-eq v4, v6, :cond_18c

    if-ne v4, v8, :cond_12e

    .line 2532
    :cond_18c
    invoke-virtual/range {p0 .. p3}, Lcom/alibaba/fastjson/JSONPath$PropertySegment;->extract(Lcom/alibaba/fastjson/JSONPath;Lcom/alibaba/fastjson/parser/DefaultJSONParser;Lcom/alibaba/fastjson/JSONPath$Context;)V

    goto :goto_12e

    :pswitch_data_190
    .packed-switch 0x2
        :pswitch_53
        :pswitch_53
        :pswitch_53
        :pswitch_53
        :pswitch_53
        :pswitch_53
        :pswitch_53
    .end packed-switch
.end method

.method public remove(Lcom/alibaba/fastjson/JSONPath;Ljava/lang/Object;)Z
    .registers 5

    .line 2546
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONPath$PropertySegment;->propertyName:Ljava/lang/String;

    iget-boolean v1, p0, Lcom/alibaba/fastjson/JSONPath$PropertySegment;->deep:Z

    invoke-virtual {p1, p2, v0, v1}, Lcom/alibaba/fastjson/JSONPath;->removePropertyValue(Ljava/lang/Object;Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method public setValue(Lcom/alibaba/fastjson/JSONPath;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 16

    .line 2538
    iget-boolean v0, p0, Lcom/alibaba/fastjson/JSONPath$PropertySegment;->deep:Z

    if-eqz v0, :cond_f

    .line 2539
    iget-object v3, p0, Lcom/alibaba/fastjson/JSONPath$PropertySegment;->propertyName:Ljava/lang/String;

    iget-wide v4, p0, Lcom/alibaba/fastjson/JSONPath$PropertySegment;->propertyNameHash:J

    move-object v1, p1

    move-object v2, p2

    move-object v6, p3

    invoke-virtual/range {v1 .. v6}, Lcom/alibaba/fastjson/JSONPath;->deepSet(Ljava/lang/Object;Ljava/lang/String;JLjava/lang/Object;)V

    return-void

    :cond_f
    move-object v1, p1

    move-object v2, p2

    move-object v6, p3

    .line 2541
    iget-object v8, p0, Lcom/alibaba/fastjson/JSONPath$PropertySegment;->propertyName:Ljava/lang/String;

    iget-wide v9, p0, Lcom/alibaba/fastjson/JSONPath$PropertySegment;->propertyNameHash:J

    move-object v7, v2

    move-object v11, v6

    move-object v6, v1

    invoke-virtual/range {v6 .. v11}, Lcom/alibaba/fastjson/JSONPath;->setPropertyValue(Ljava/lang/Object;Ljava/lang/String;JLjava/lang/Object;)Z

    return-void
.end method

###### Class com.alibaba.fastjson.JSONPath.RangeSegment (com.alibaba.fastjson.JSONPath$RangeSegment)
.class Lcom/alibaba/fastjson/JSONPath$RangeSegment;
.super Ljava/lang/Object;
.source "JSONPath.java"

# interfaces
.implements Lcom/alibaba/fastjson/JSONPath$Segment;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/fastjson/JSONPath;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "RangeSegment"
.end annotation


# instance fields
.field private final end:I

.field private final start:I

.field private final step:I


# direct methods
.method public constructor <init>(III)V
    .registers 4

    .line 2803
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2804
    iput p1, p0, Lcom/alibaba/fastjson/JSONPath$RangeSegment;->start:I

    .line 2805
    iput p2, p0, Lcom/alibaba/fastjson/JSONPath$RangeSegment;->end:I

    .line 2806
    iput p3, p0, Lcom/alibaba/fastjson/JSONPath$RangeSegment;->step:I

    return-void
.end method


# virtual methods
.method public eval(Lcom/alibaba/fastjson/JSONPath;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 8

    .line 2810
    sget-object v0, Lcom/alibaba/fastjson/JSONPath$SizeSegment;->instance:Lcom/alibaba/fastjson/JSONPath$SizeSegment;

    invoke-virtual {v0, p1, p2, p3}, Lcom/alibaba/fastjson/JSONPath$SizeSegment;->eval(Lcom/alibaba/fastjson/JSONPath;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .line 2811
    iget v0, p0, Lcom/alibaba/fastjson/JSONPath$RangeSegment;->start:I

    if-ltz v0, :cond_f

    goto :goto_10

    :cond_f
    add-int/2addr v0, p2

    .line 2812
    :goto_10
    iget v1, p0, Lcom/alibaba/fastjson/JSONPath$RangeSegment;->end:I

    if-ltz v1, :cond_15

    goto :goto_16

    :cond_15
    add-int/2addr v1, p2

    :goto_16
    sub-int v2, v1, v0

    .line 2814
    iget v3, p0, Lcom/alibaba/fastjson/JSONPath$RangeSegment;->step:I

    div-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x1

    const/4 v3, -0x1

    if-ne v2, v3, :cond_22

    const/4 p1, 0x0

    return-object p1

    .line 2819
    :cond_22
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(I)V

    :goto_27
    if-gt v0, v1, :cond_36

    if-ge v0, p2, :cond_36

    .line 2821
    invoke-virtual {p1, p3, v0}, Lcom/alibaba/fastjson/JSONPath;->getArrayItem(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v2

    .line 2822
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2820
    iget v2, p0, Lcom/alibaba/fastjson/JSONPath$RangeSegment;->step:I

    add-int/2addr v0, v2

    goto :goto_27

    :cond_36
    return-object v3
.end method

.method public extract(Lcom/alibaba/fastjson/JSONPath;Lcom/alibaba/fastjson/parser/DefaultJSONParser;Lcom/alibaba/fastjson/JSONPath$Context;)V
    .registers 4

    .line 2828
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

###### Class com.alibaba.fastjson.JSONPath.RefOpSegement (com.alibaba.fastjson.JSONPath$RefOpSegement)
.class Lcom/alibaba/fastjson/JSONPath$RefOpSegement;
.super Lcom/alibaba/fastjson/JSONPath$PropertyFilter;
.source "JSONPath.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/fastjson/JSONPath;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "RefOpSegement"
.end annotation


# instance fields
.field private final op:Lcom/alibaba/fastjson/JSONPath$Operator;

.field private final refSgement:Lcom/alibaba/fastjson/JSONPath$Segment;


# direct methods
.method public constructor <init>(Ljava/lang/String;ZLcom/alibaba/fastjson/JSONPath$Segment;Lcom/alibaba/fastjson/JSONPath$Operator;)V
    .registers 5

    .line 3200
    invoke-direct {p0, p1, p2}, Lcom/alibaba/fastjson/JSONPath$PropertyFilter;-><init>(Ljava/lang/String;Z)V

    .line 3201
    iput-object p3, p0, Lcom/alibaba/fastjson/JSONPath$RefOpSegement;->refSgement:Lcom/alibaba/fastjson/JSONPath$Segment;

    .line 3202
    iput-object p4, p0, Lcom/alibaba/fastjson/JSONPath$RefOpSegement;->op:Lcom/alibaba/fastjson/JSONPath$Operator;

    return-void
.end method


# virtual methods
.method public apply(Lcom/alibaba/fastjson/JSONPath;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 9

    .line 3206
    invoke-virtual {p0, p1, p2, p4}, Lcom/alibaba/fastjson/JSONPath$RefOpSegement;->get(Lcom/alibaba/fastjson/JSONPath;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    const/4 p4, 0x0

    if-nez p3, :cond_8

    return p4

    .line 3212
    :cond_8
    instance-of v0, p3, Ljava/lang/Number;

    if-nez v0, :cond_d

    return p4

    .line 3216
    :cond_d
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONPath$RefOpSegement;->refSgement:Lcom/alibaba/fastjson/JSONPath$Segment;

    invoke-interface {v0, p1, p2, p2}, Lcom/alibaba/fastjson/JSONPath$Segment;->eval(Lcom/alibaba/fastjson/JSONPath;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 3218
    instance-of p2, p1, Ljava/lang/Integer;

    if-nez p2, :cond_23

    instance-of p2, p1, Ljava/lang/Long;

    if-nez p2, :cond_23

    instance-of p2, p1, Ljava/lang/Short;

    if-nez p2, :cond_23

    instance-of p2, p1, Ljava/lang/Byte;

    if-eqz p2, :cond_a7

    .line 3219
    :cond_23
    check-cast p1, Ljava/lang/Number;

    invoke-static {p1}, Lcom/alibaba/fastjson/util/TypeUtils;->longExtractValue(Ljava/lang/Number;)J

    move-result-wide p1

    .line 3221
    instance-of v0, p3, Ljava/lang/Integer;

    const/4 v1, 0x1

    if-nez v0, :cond_6f

    instance-of v0, p3, Ljava/lang/Long;

    if-nez v0, :cond_6f

    instance-of v0, p3, Ljava/lang/Short;

    if-nez v0, :cond_6f

    instance-of v0, p3, Ljava/lang/Byte;

    if-eqz v0, :cond_3b

    goto :goto_6f

    .line 3238
    :cond_3b
    instance-of v0, p3, Ljava/math/BigDecimal;

    if-eqz v0, :cond_a7

    .line 3239
    invoke-static {p1, p2}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object p1

    .line 3241
    check-cast p3, Ljava/math/BigDecimal;

    invoke-virtual {p1, p3}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result p1

    .line 3242
    sget-object p2, Lcom/alibaba/fastjson/JSONPath$1;->$SwitchMap$com$alibaba$fastjson$JSONPath$Operator:[I

    iget-object p3, p0, Lcom/alibaba/fastjson/JSONPath$RefOpSegement;->op:Lcom/alibaba/fastjson/JSONPath$Operator;

    invoke-virtual {p3}, Lcom/alibaba/fastjson/JSONPath$Operator;->ordinal()I

    move-result p3

    aget p2, p2, p3

    packed-switch p2, :pswitch_data_ae

    return p4

    :pswitch_57
    if-lez p1, :cond_5a

    return v1

    :cond_5a
    return p4

    :pswitch_5b
    if-ltz p1, :cond_5e

    return v1

    :cond_5e
    return p4

    :pswitch_5f
    if-gez p1, :cond_62

    return v1

    :cond_62
    return p4

    :pswitch_63
    if-gtz p1, :cond_66

    return v1

    :cond_66
    return p4

    :pswitch_67
    if-eqz p1, :cond_6a

    return v1

    :cond_6a
    return p4

    :pswitch_6b
    if-nez p1, :cond_6e

    return v1

    :cond_6e
    return p4

    .line 3222
    :cond_6f
    :goto_6f
    check-cast p3, Ljava/lang/Number;

    invoke-static {p3}, Lcom/alibaba/fastjson/util/TypeUtils;->longExtractValue(Ljava/lang/Number;)J

    move-result-wide v2

    .line 3224
    sget-object p3, Lcom/alibaba/fastjson/JSONPath$1;->$SwitchMap$com$alibaba$fastjson$JSONPath$Operator:[I

    iget-object v0, p0, Lcom/alibaba/fastjson/JSONPath$RefOpSegement;->op:Lcom/alibaba/fastjson/JSONPath$Operator;

    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONPath$Operator;->ordinal()I

    move-result v0

    aget p3, p3, v0

    packed-switch p3, :pswitch_data_be

    goto :goto_a7

    :pswitch_83
    cmp-long p3, v2, p1

    if-gez p3, :cond_88

    return v1

    :cond_88
    return p4

    :pswitch_89
    cmp-long p3, v2, p1

    if-gtz p3, :cond_8e

    return v1

    :cond_8e
    return p4

    :pswitch_8f
    cmp-long p3, v2, p1

    if-lez p3, :cond_94

    return v1

    :cond_94
    return p4

    :pswitch_95
    cmp-long p3, v2, p1

    if-ltz p3, :cond_9a

    return v1

    :cond_9a
    return p4

    :pswitch_9b
    cmp-long p3, v2, p1

    if-eqz p3, :cond_a0

    return v1

    :cond_a0
    return p4

    :pswitch_a1
    cmp-long p3, v2, p1

    if-nez p3, :cond_a6

    return v1

    :cond_a6
    return p4

    .line 3261
    :cond_a7
    :goto_a7
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    nop

    :pswitch_data_ae
    .packed-switch 0x1
        :pswitch_6b
        :pswitch_67
        :pswitch_63
        :pswitch_5f
        :pswitch_5b
        :pswitch_57
    .end packed-switch

    :pswitch_data_be
    .packed-switch 0x1
        :pswitch_a1
        :pswitch_9b
        :pswitch_95
        :pswitch_8f
        :pswitch_89
        :pswitch_83
    .end packed-switch
.end method

###### Class com.alibaba.fastjson.JSONPath.RegMatchSegement (com.alibaba.fastjson.JSONPath$RegMatchSegement)
.class Lcom/alibaba/fastjson/JSONPath$RegMatchSegement;
.super Lcom/alibaba/fastjson/JSONPath$PropertyFilter;
.source "JSONPath.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/fastjson/JSONPath;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "RegMatchSegement"
.end annotation


# instance fields
.field private final op:Lcom/alibaba/fastjson/JSONPath$Operator;

.field private final pattern:Ljava/util/regex/Pattern;


# direct methods
.method public constructor <init>(Ljava/lang/String;ZLjava/util/regex/Pattern;Lcom/alibaba/fastjson/JSONPath$Operator;)V
    .registers 5

    .line 3417
    invoke-direct {p0, p1, p2}, Lcom/alibaba/fastjson/JSONPath$PropertyFilter;-><init>(Ljava/lang/String;Z)V

    .line 3418
    iput-object p3, p0, Lcom/alibaba/fastjson/JSONPath$RegMatchSegement;->pattern:Ljava/util/regex/Pattern;

    .line 3419
    iput-object p4, p0, Lcom/alibaba/fastjson/JSONPath$RegMatchSegement;->op:Lcom/alibaba/fastjson/JSONPath$Operator;

    return-void
.end method


# virtual methods
.method public apply(Lcom/alibaba/fastjson/JSONPath;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 5

    .line 3423
    invoke-virtual {p0, p1, p2, p4}, Lcom/alibaba/fastjson/JSONPath$RegMatchSegement;->get(Lcom/alibaba/fastjson/JSONPath;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_8

    const/4 p1, 0x0

    return p1

    .line 3428
    :cond_8
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 3430
    iget-object p2, p0, Lcom/alibaba/fastjson/JSONPath$RegMatchSegement;->pattern:Ljava/util/regex/Pattern;

    invoke-virtual {p2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    .line 3431
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->matches()Z

    move-result p1

    return p1
.end method

###### Class com.alibaba.fastjson.JSONPath.RlikeSegement (com.alibaba.fastjson.JSONPath$RlikeSegement)
.class Lcom/alibaba/fastjson/JSONPath$RlikeSegement;
.super Lcom/alibaba/fastjson/JSONPath$PropertyFilter;
.source "JSONPath.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/fastjson/JSONPath;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "RlikeSegement"
.end annotation


# instance fields
.field private final not:Z

.field private final pattern:Ljava/util/regex/Pattern;


# direct methods
.method public constructor <init>(Ljava/lang/String;ZLjava/lang/String;Z)V
    .registers 5

    .line 3350
    invoke-direct {p0, p1, p2}, Lcom/alibaba/fastjson/JSONPath$PropertyFilter;-><init>(Ljava/lang/String;Z)V

    .line 3351
    invoke-static {p3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/fastjson/JSONPath$RlikeSegement;->pattern:Ljava/util/regex/Pattern;

    .line 3352
    iput-boolean p4, p0, Lcom/alibaba/fastjson/JSONPath$RlikeSegement;->not:Z

    return-void
.end method


# virtual methods
.method public apply(Lcom/alibaba/fastjson/JSONPath;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 5

    .line 3356
    invoke-virtual {p0, p1, p2, p4}, Lcom/alibaba/fastjson/JSONPath$RlikeSegement;->get(Lcom/alibaba/fastjson/JSONPath;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_8

    const/4 p1, 0x0

    return p1

    .line 3362
    :cond_8
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 3363
    iget-object p2, p0, Lcom/alibaba/fastjson/JSONPath$RlikeSegement;->pattern:Ljava/util/regex/Pattern;

    invoke-virtual {p2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    .line 3364
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->matches()Z

    move-result p1

    .line 3366
    iget-boolean p2, p0, Lcom/alibaba/fastjson/JSONPath$RlikeSegement;->not:Z

    if-eqz p2, :cond_1c

    xor-int/lit8 p1, p1, 0x1

    :cond_1c
    return p1
.end method

###### Class com.alibaba.fastjson.JSONPath.Segment (com.alibaba.fastjson.JSONPath$Segment)
.class interface abstract Lcom/alibaba/fastjson/JSONPath$Segment;
.super Ljava/lang/Object;
.source "JSONPath.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/fastjson/JSONPath;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "Segment"
.end annotation


# virtual methods
.method public abstract eval(Lcom/alibaba/fastjson/JSONPath;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method public abstract extract(Lcom/alibaba/fastjson/JSONPath;Lcom/alibaba/fastjson/parser/DefaultJSONParser;Lcom/alibaba/fastjson/JSONPath$Context;)V
.end method

###### Class com.alibaba.fastjson.JSONPath.SizeSegment (com.alibaba.fastjson.JSONPath$SizeSegment)
.class Lcom/alibaba/fastjson/JSONPath$SizeSegment;
.super Ljava/lang/Object;
.source "JSONPath.java"

# interfaces
.implements Lcom/alibaba/fastjson/JSONPath$Segment;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/fastjson/JSONPath;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SizeSegment"
.end annotation


# static fields
.field public static final instance:Lcom/alibaba/fastjson/JSONPath$SizeSegment;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 2103
    new-instance v0, Lcom/alibaba/fastjson/JSONPath$SizeSegment;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONPath$SizeSegment;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson/JSONPath$SizeSegment;->instance:Lcom/alibaba/fastjson/JSONPath$SizeSegment;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    .line 2102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public eval(Lcom/alibaba/fastjson/JSONPath;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Integer;
    .registers 4

    .line 2105
    invoke-virtual {p1, p3}, Lcom/alibaba/fastjson/JSONPath;->evalSize(Ljava/lang/Object;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic eval(Lcom/alibaba/fastjson/JSONPath;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 2102
    invoke-virtual {p0, p1, p2, p3}, Lcom/alibaba/fastjson/JSONPath$SizeSegment;->eval(Lcom/alibaba/fastjson/JSONPath;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public extract(Lcom/alibaba/fastjson/JSONPath;Lcom/alibaba/fastjson/parser/DefaultJSONParser;Lcom/alibaba/fastjson/JSONPath$Context;)V
    .registers 4

    .line 2109
    invoke-virtual {p2}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parse()Ljava/lang/Object;

    move-result-object p2

    .line 2110
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson/JSONPath;->evalSize(Ljava/lang/Object;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p3, Lcom/alibaba/fastjson/JSONPath$Context;->object:Ljava/lang/Object;

    return-void
.end method

###### Class com.alibaba.fastjson.JSONPath.StringInSegement (com.alibaba.fastjson.JSONPath$StringInSegement)
.class Lcom/alibaba/fastjson/JSONPath$StringInSegement;
.super Lcom/alibaba/fastjson/JSONPath$PropertyFilter;
.source "JSONPath.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/fastjson/JSONPath;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "StringInSegement"
.end annotation


# instance fields
.field private final not:Z

.field private final values:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Z[Ljava/lang/String;Z)V
    .registers 5

    .line 2983
    invoke-direct {p0, p1, p2}, Lcom/alibaba/fastjson/JSONPath$PropertyFilter;-><init>(Ljava/lang/String;Z)V

    .line 2984
    iput-object p3, p0, Lcom/alibaba/fastjson/JSONPath$StringInSegement;->values:[Ljava/lang/String;

    .line 2985
    iput-boolean p4, p0, Lcom/alibaba/fastjson/JSONPath$StringInSegement;->not:Z

    return-void
.end method


# virtual methods
.method public apply(Lcom/alibaba/fastjson/JSONPath;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 6

    .line 2989
    invoke-virtual {p0, p1, p2, p4}, Lcom/alibaba/fastjson/JSONPath$StringInSegement;->get(Lcom/alibaba/fastjson/JSONPath;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 2991
    iget-object p2, p0, Lcom/alibaba/fastjson/JSONPath$StringInSegement;->values:[Ljava/lang/String;

    array-length p3, p2

    const/4 p4, 0x0

    :goto_8
    if-ge p4, p3, :cond_21

    aget-object v0, p2, p4

    if-ne v0, p1, :cond_13

    .line 2993
    iget-boolean p1, p0, Lcom/alibaba/fastjson/JSONPath$StringInSegement;->not:Z

    :goto_10
    xor-int/lit8 p1, p1, 0x1

    return p1

    :cond_13
    if-eqz v0, :cond_1e

    .line 2994
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 2995
    iget-boolean p1, p0, Lcom/alibaba/fastjson/JSONPath$StringInSegement;->not:Z

    goto :goto_10

    :cond_1e
    add-int/lit8 p4, p4, 0x1

    goto :goto_8

    .line 2999
    :cond_21
    iget-boolean p1, p0, Lcom/alibaba/fastjson/JSONPath$StringInSegement;->not:Z

    return p1
.end method

###### Class com.alibaba.fastjson.JSONPath.StringOpSegement (com.alibaba.fastjson.JSONPath$StringOpSegement)
.class Lcom/alibaba/fastjson/JSONPath$StringOpSegement;
.super Lcom/alibaba/fastjson/JSONPath$PropertyFilter;
.source "JSONPath.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/fastjson/JSONPath;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "StringOpSegement"
.end annotation


# instance fields
.field private final op:Lcom/alibaba/fastjson/JSONPath$Operator;

.field private final value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;ZLjava/lang/String;Lcom/alibaba/fastjson/JSONPath$Operator;)V
    .registers 5

    .line 3379
    invoke-direct {p0, p1, p2}, Lcom/alibaba/fastjson/JSONPath$PropertyFilter;-><init>(Ljava/lang/String;Z)V

    .line 3380
    iput-object p3, p0, Lcom/alibaba/fastjson/JSONPath$StringOpSegement;->value:Ljava/lang/String;

    .line 3381
    iput-object p4, p0, Lcom/alibaba/fastjson/JSONPath$StringOpSegement;->op:Lcom/alibaba/fastjson/JSONPath$Operator;

    return-void
.end method


# virtual methods
.method public apply(Lcom/alibaba/fastjson/JSONPath;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 6

    .line 3385
    invoke-virtual {p0, p1, p2, p4}, Lcom/alibaba/fastjson/JSONPath$StringOpSegement;->get(Lcom/alibaba/fastjson/JSONPath;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 3387
    iget-object p2, p0, Lcom/alibaba/fastjson/JSONPath$StringOpSegement;->op:Lcom/alibaba/fastjson/JSONPath$Operator;

    sget-object p3, Lcom/alibaba/fastjson/JSONPath$Operator;->EQ:Lcom/alibaba/fastjson/JSONPath$Operator;

    if-ne p2, p3, :cond_11

    .line 3388
    iget-object p2, p0, Lcom/alibaba/fastjson/JSONPath$StringOpSegement;->value:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 3389
    :cond_11
    iget-object p2, p0, Lcom/alibaba/fastjson/JSONPath$StringOpSegement;->op:Lcom/alibaba/fastjson/JSONPath$Operator;

    sget-object p3, Lcom/alibaba/fastjson/JSONPath$Operator;->NE:Lcom/alibaba/fastjson/JSONPath$Operator;

    const/4 p4, 0x1

    if-ne p2, p3, :cond_20

    .line 3390
    iget-object p2, p0, Lcom/alibaba/fastjson/JSONPath$StringOpSegement;->value:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    xor-int/2addr p1, p4

    return p1

    :cond_20
    const/4 p2, 0x0

    if-nez p1, :cond_24

    return p2

    .line 3397
    :cond_24
    iget-object p3, p0, Lcom/alibaba/fastjson/JSONPath$StringOpSegement;->value:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    .line 3398
    iget-object p3, p0, Lcom/alibaba/fastjson/JSONPath$StringOpSegement;->op:Lcom/alibaba/fastjson/JSONPath$Operator;

    sget-object v0, Lcom/alibaba/fastjson/JSONPath$Operator;->GE:Lcom/alibaba/fastjson/JSONPath$Operator;

    if-ne p3, v0, :cond_38

    if-gtz p1, :cond_37

    return p4

    :cond_37
    return p2

    .line 3400
    :cond_38
    iget-object p3, p0, Lcom/alibaba/fastjson/JSONPath$StringOpSegement;->op:Lcom/alibaba/fastjson/JSONPath$Operator;

    sget-object v0, Lcom/alibaba/fastjson/JSONPath$Operator;->GT:Lcom/alibaba/fastjson/JSONPath$Operator;

    if-ne p3, v0, :cond_42

    if-gez p1, :cond_41

    return p4

    :cond_41
    return p2

    .line 3402
    :cond_42
    iget-object p3, p0, Lcom/alibaba/fastjson/JSONPath$StringOpSegement;->op:Lcom/alibaba/fastjson/JSONPath$Operator;

    sget-object v0, Lcom/alibaba/fastjson/JSONPath$Operator;->LE:Lcom/alibaba/fastjson/JSONPath$Operator;

    if-ne p3, v0, :cond_4c

    if-ltz p1, :cond_4b

    return p4

    :cond_4b
    return p2

    .line 3404
    :cond_4c
    iget-object p3, p0, Lcom/alibaba/fastjson/JSONPath$StringOpSegement;->op:Lcom/alibaba/fastjson/JSONPath$Operator;

    sget-object v0, Lcom/alibaba/fastjson/JSONPath$Operator;->LT:Lcom/alibaba/fastjson/JSONPath$Operator;

    if-ne p3, v0, :cond_55

    if-lez p1, :cond_55

    return p4

    :cond_55
    return p2
.end method

###### Class com.alibaba.fastjson.JSONPath.TypeSegment (com.alibaba.fastjson.JSONPath$TypeSegment)
.class Lcom/alibaba/fastjson/JSONPath$TypeSegment;
.super Ljava/lang/Object;
.source "JSONPath.java"

# interfaces
.implements Lcom/alibaba/fastjson/JSONPath$Segment;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/fastjson/JSONPath;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TypeSegment"
.end annotation


# static fields
.field public static final instance:Lcom/alibaba/fastjson/JSONPath$TypeSegment;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 2115
    new-instance v0, Lcom/alibaba/fastjson/JSONPath$TypeSegment;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONPath$TypeSegment;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson/JSONPath$TypeSegment;->instance:Lcom/alibaba/fastjson/JSONPath$TypeSegment;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    .line 2114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic eval(Lcom/alibaba/fastjson/JSONPath;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 2114
    invoke-virtual {p0, p1, p2, p3}, Lcom/alibaba/fastjson/JSONPath$TypeSegment;->eval(Lcom/alibaba/fastjson/JSONPath;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public eval(Lcom/alibaba/fastjson/JSONPath;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;
    .registers 4

    if-nez p3, :cond_5

    .line 2119
    const-string p1, "null"

    return-object p1

    .line 2122
    :cond_5
    instance-of p1, p3, Ljava/util/Collection;

    if-eqz p1, :cond_c

    .line 2123
    const-string p1, "array"

    return-object p1

    .line 2126
    :cond_c
    instance-of p1, p3, Ljava/lang/Number;

    if-eqz p1, :cond_13

    .line 2127
    const-string p1, "number"

    return-object p1

    .line 2130
    :cond_13
    instance-of p1, p3, Ljava/lang/Boolean;

    if-eqz p1, :cond_1a

    .line 2131
    const-string p1, "boolean"

    return-object p1

    .line 2134
    :cond_1a
    instance-of p1, p3, Ljava/lang/String;

    if-nez p1, :cond_2a

    instance-of p1, p3, Ljava/util/UUID;

    if-nez p1, :cond_2a

    instance-of p1, p3, Ljava/lang/Enum;

    if-eqz p1, :cond_27

    goto :goto_2a

    .line 2140
    :cond_27
    const-string p1, "object"

    return-object p1

    .line 2137
    :cond_2a
    :goto_2a
    const-string/jumbo p1, "string"

    return-object p1
.end method

.method public extract(Lcom/alibaba/fastjson/JSONPath;Lcom/alibaba/fastjson/parser/DefaultJSONParser;Lcom/alibaba/fastjson/JSONPath$Context;)V
    .registers 4

    .line 2144
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

###### Class com.alibaba.fastjson.JSONPath.ValueSegment (com.alibaba.fastjson.JSONPath$ValueSegment)
.class Lcom/alibaba/fastjson/JSONPath$ValueSegment;
.super Lcom/alibaba/fastjson/JSONPath$PropertyFilter;
.source "JSONPath.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/fastjson/JSONPath;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ValueSegment"
.end annotation


# instance fields
.field private eq:Z

.field private final value:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/String;ZLjava/lang/Object;Z)V
    .registers 5

    .line 2859
    invoke-direct {p0, p1, p2}, Lcom/alibaba/fastjson/JSONPath$PropertyFilter;-><init>(Ljava/lang/String;Z)V

    const/4 p1, 0x1

    .line 2856
    iput-boolean p1, p0, Lcom/alibaba/fastjson/JSONPath$ValueSegment;->eq:Z

    if-eqz p3, :cond_d

    .line 2864
    iput-object p3, p0, Lcom/alibaba/fastjson/JSONPath$ValueSegment;->value:Ljava/lang/Object;

    .line 2865
    iput-boolean p4, p0, Lcom/alibaba/fastjson/JSONPath$ValueSegment;->eq:Z

    return-void

    .line 2862
    :cond_d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p2, "value is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public apply(Lcom/alibaba/fastjson/JSONPath;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 5

    .line 2869
    invoke-virtual {p0, p1, p2, p4}, Lcom/alibaba/fastjson/JSONPath$ValueSegment;->get(Lcom/alibaba/fastjson/JSONPath;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 2870
    iget-object p2, p0, Lcom/alibaba/fastjson/JSONPath$ValueSegment;->value:Ljava/lang/Object;

    invoke-virtual {p2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    .line 2871
    iget-boolean p2, p0, Lcom/alibaba/fastjson/JSONPath$ValueSegment;->eq:Z

    if-nez p2, :cond_10

    xor-int/lit8 p1, p1, 0x1

    :cond_10
    return p1
.end method

###### Class com.alibaba.fastjson.JSONPath.WildCardSegment (com.alibaba.fastjson.JSONPath$WildCardSegment)
.class Lcom/alibaba/fastjson/JSONPath$WildCardSegment;
.super Ljava/lang/Object;
.source "JSONPath.java"

# interfaces
.implements Lcom/alibaba/fastjson/JSONPath$Segment;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/fastjson/JSONPath;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "WildCardSegment"
.end annotation


# static fields
.field public static final instance:Lcom/alibaba/fastjson/JSONPath$WildCardSegment;

.field public static final instance_deep:Lcom/alibaba/fastjson/JSONPath$WildCardSegment;

.field public static final instance_deep_objectOnly:Lcom/alibaba/fastjson/JSONPath$WildCardSegment;


# instance fields
.field private deep:Z

.field private objectOnly:Z


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 2683
    new-instance v0, Lcom/alibaba/fastjson/JSONPath$WildCardSegment;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Lcom/alibaba/fastjson/JSONPath$WildCardSegment;-><init>(ZZ)V

    sput-object v0, Lcom/alibaba/fastjson/JSONPath$WildCardSegment;->instance:Lcom/alibaba/fastjson/JSONPath$WildCardSegment;

    .line 2684
    new-instance v0, Lcom/alibaba/fastjson/JSONPath$WildCardSegment;

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1}, Lcom/alibaba/fastjson/JSONPath$WildCardSegment;-><init>(ZZ)V

    sput-object v0, Lcom/alibaba/fastjson/JSONPath$WildCardSegment;->instance_deep:Lcom/alibaba/fastjson/JSONPath$WildCardSegment;

    .line 2685
    new-instance v0, Lcom/alibaba/fastjson/JSONPath$WildCardSegment;

    invoke-direct {v0, v2, v2}, Lcom/alibaba/fastjson/JSONPath$WildCardSegment;-><init>(ZZ)V

    sput-object v0, Lcom/alibaba/fastjson/JSONPath$WildCardSegment;->instance_deep_objectOnly:Lcom/alibaba/fastjson/JSONPath$WildCardSegment;

    return-void
.end method

.method private constructor <init>(ZZ)V
    .registers 3

    .line 2678
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2679
    iput-boolean p1, p0, Lcom/alibaba/fastjson/JSONPath$WildCardSegment;->deep:Z

    .line 2680
    iput-boolean p2, p0, Lcom/alibaba/fastjson/JSONPath$WildCardSegment;->objectOnly:Z

    return-void
.end method


# virtual methods
.method public eval(Lcom/alibaba/fastjson/JSONPath;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 2688
    iget-boolean p2, p0, Lcom/alibaba/fastjson/JSONPath$WildCardSegment;->deep:Z

    if-nez p2, :cond_9

    .line 2689
    invoke-virtual {p1, p3}, Lcom/alibaba/fastjson/JSONPath;->getPropertyValues(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object p1

    return-object p1

    .line 2692
    :cond_9
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 2693
    invoke-virtual {p1, p3, p2}, Lcom/alibaba/fastjson/JSONPath;->deepGetPropertyValues(Ljava/lang/Object;Ljava/util/List;)V

    return-object p2
.end method

.method public extract(Lcom/alibaba/fastjson/JSONPath;Lcom/alibaba/fastjson/parser/DefaultJSONParser;Lcom/alibaba/fastjson/JSONPath$Context;)V
    .registers 6

    .line 2698
    iget-boolean v0, p3, Lcom/alibaba/fastjson/JSONPath$Context;->eval:Z

    if-eqz v0, :cond_3f

    .line 2699
    invoke-virtual {p2}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parse()Ljava/lang/Object;

    move-result-object p2

    .line 2700
    iget-boolean v0, p0, Lcom/alibaba/fastjson/JSONPath$WildCardSegment;->deep:Z

    if-eqz v0, :cond_1f

    .line 2701
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2702
    iget-boolean v1, p0, Lcom/alibaba/fastjson/JSONPath$WildCardSegment;->objectOnly:Z

    if-eqz v1, :cond_19

    .line 2703
    invoke-virtual {p1, p2, v0}, Lcom/alibaba/fastjson/JSONPath;->deepGetObjects(Ljava/lang/Object;Ljava/util/List;)V

    goto :goto_1c

    .line 2705
    :cond_19
    invoke-virtual {p1, p2, v0}, Lcom/alibaba/fastjson/JSONPath;->deepGetPropertyValues(Ljava/lang/Object;Ljava/util/List;)V

    .line 2707
    :goto_1c
    iput-object v0, p3, Lcom/alibaba/fastjson/JSONPath$Context;->object:Ljava/lang/Object;

    return-void

    .line 2711
    :cond_1f
    instance-of p1, p2, Lcom/alibaba/fastjson/JSONObject;

    if-eqz p1, :cond_38

    .line 2712
    check-cast p2, Lcom/alibaba/fastjson/JSONObject;

    invoke-virtual {p2}, Lcom/alibaba/fastjson/JSONObject;->values()Ljava/util/Collection;

    move-result-object p1

    .line 2713
    new-instance p2, Lcom/alibaba/fastjson/JSONArray;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    invoke-direct {p2, v0}, Lcom/alibaba/fastjson/JSONArray;-><init>(I)V

    .line 2714
    invoke-virtual {p2, p1}, Lcom/alibaba/fastjson/JSONArray;->addAll(Ljava/util/Collection;)Z

    .line 2715
    iput-object p2, p3, Lcom/alibaba/fastjson/JSONPath$Context;->object:Ljava/lang/Object;

    return-void

    .line 2717
    :cond_38
    instance-of p1, p2, Lcom/alibaba/fastjson/JSONArray;

    if-eqz p1, :cond_3f

    .line 2718
    iput-object p2, p3, Lcom/alibaba/fastjson/JSONPath$Context;->object:Ljava/lang/Object;

    return-void

    .line 2723
    :cond_3f
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    const-string p2, "TODO"

    invoke-direct {p1, p2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
