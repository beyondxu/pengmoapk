###### Class com.alibaba.fastjson.serializer.JodaCodec (com.alibaba.fastjson.serializer.JodaCodec)
.class public Lcom/alibaba/fastjson/serializer/JodaCodec;
.super Ljava/lang/Object;
.source "JodaCodec.java"

# interfaces
.implements Lcom/alibaba/fastjson/serializer/ObjectSerializer;
.implements Lcom/alibaba/fastjson/serializer/ContextObjectSerializer;
.implements Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;


# static fields
.field private static final ISO_FIXED_FORMAT:Lorg/joda/time/format/DateTimeFormatter;

.field private static final defaultFormatter:Lorg/joda/time/format/DateTimeFormatter;

.field private static final defaultFormatter_23:Lorg/joda/time/format/DateTimeFormatter;

.field private static final defaultPatttern:Ljava/lang/String; = "yyyy-MM-dd HH:mm:ss"

.field private static final formatter_d10_cn:Lorg/joda/time/format/DateTimeFormatter;

.field private static final formatter_d10_de:Lorg/joda/time/format/DateTimeFormatter;

.field private static final formatter_d10_eur:Lorg/joda/time/format/DateTimeFormatter;

.field private static final formatter_d10_in:Lorg/joda/time/format/DateTimeFormatter;

.field private static final formatter_d10_kr:Lorg/joda/time/format/DateTimeFormatter;

.field private static final formatter_d10_tw:Lorg/joda/time/format/DateTimeFormatter;

.field private static final formatter_d10_us:Lorg/joda/time/format/DateTimeFormatter;

.field private static final formatter_d8:Lorg/joda/time/format/DateTimeFormatter;

.field private static final formatter_dt19_cn:Lorg/joda/time/format/DateTimeFormatter;

.field private static final formatter_dt19_cn_1:Lorg/joda/time/format/DateTimeFormatter;

.field private static final formatter_dt19_de:Lorg/joda/time/format/DateTimeFormatter;

.field private static final formatter_dt19_eur:Lorg/joda/time/format/DateTimeFormatter;

.field private static final formatter_dt19_in:Lorg/joda/time/format/DateTimeFormatter;

.field private static final formatter_dt19_kr:Lorg/joda/time/format/DateTimeFormatter;

.field private static final formatter_dt19_tw:Lorg/joda/time/format/DateTimeFormatter;

.field private static final formatter_dt19_us:Lorg/joda/time/format/DateTimeFormatter;

.field private static final formatter_iso8601:Lorg/joda/time/format/DateTimeFormatter;

.field private static final formatter_iso8601_pattern:Ljava/lang/String; = "yyyy-MM-dd\'T\'HH:mm:ss"

.field private static final formatter_iso8601_pattern_23:Ljava/lang/String; = "yyyy-MM-dd\'T\'HH:mm:ss.SSS"

.field private static final formatter_iso8601_pattern_29:Ljava/lang/String; = "yyyy-MM-dd\'T\'HH:mm:ss.SSSSSSSSS"

.field public static final instance:Lcom/alibaba/fastjson/serializer/JodaCodec;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 20
    new-instance v0, Lcom/alibaba/fastjson/serializer/JodaCodec;

    invoke-direct {v0}, Lcom/alibaba/fastjson/serializer/JodaCodec;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson/serializer/JodaCodec;->instance:Lcom/alibaba/fastjson/serializer/JodaCodec;

    .line 23
    const-string/jumbo v0, "yyyy-MM-dd HH:mm:ss"

    invoke-static {v0}, Lorg/joda/time/format/DateTimeFormat;->forPattern(Ljava/lang/String;)Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v1

    sput-object v1, Lcom/alibaba/fastjson/serializer/JodaCodec;->defaultFormatter:Lorg/joda/time/format/DateTimeFormatter;

    .line 24
    const-string/jumbo v1, "yyyy-MM-dd HH:mm:ss.SSS"

    invoke-static {v1}, Lorg/joda/time/format/DateTimeFormat;->forPattern(Ljava/lang/String;)Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v1

    sput-object v1, Lcom/alibaba/fastjson/serializer/JodaCodec;->defaultFormatter_23:Lorg/joda/time/format/DateTimeFormatter;

    .line 25
    const-string/jumbo v1, "yyyy/MM/dd HH:mm:ss"

    invoke-static {v1}, Lorg/joda/time/format/DateTimeFormat;->forPattern(Ljava/lang/String;)Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v1

    sput-object v1, Lcom/alibaba/fastjson/serializer/JodaCodec;->formatter_dt19_tw:Lorg/joda/time/format/DateTimeFormatter;

    .line 26
    const-string/jumbo v1, "yyyy\u5e74M\u6708d\u65e5 HH:mm:ss"

    invoke-static {v1}, Lorg/joda/time/format/DateTimeFormat;->forPattern(Ljava/lang/String;)Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v1

    sput-object v1, Lcom/alibaba/fastjson/serializer/JodaCodec;->formatter_dt19_cn:Lorg/joda/time/format/DateTimeFormatter;

    .line 27
    const-string/jumbo v1, "yyyy\u5e74M\u6708d\u65e5 H\u65f6m\u5206s\u79d2"

    invoke-static {v1}, Lorg/joda/time/format/DateTimeFormat;->forPattern(Ljava/lang/String;)Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v1

    sput-object v1, Lcom/alibaba/fastjson/serializer/JodaCodec;->formatter_dt19_cn_1:Lorg/joda/time/format/DateTimeFormatter;

    .line 28
    const-string/jumbo v1, "yyyy\ub144M\uc6d4d\uc77c HH:mm:ss"

    invoke-static {v1}, Lorg/joda/time/format/DateTimeFormat;->forPattern(Ljava/lang/String;)Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v1

    sput-object v1, Lcom/alibaba/fastjson/serializer/JodaCodec;->formatter_dt19_kr:Lorg/joda/time/format/DateTimeFormatter;

    .line 29
    const-string v1, "MM/dd/yyyy HH:mm:ss"

    invoke-static {v1}, Lorg/joda/time/format/DateTimeFormat;->forPattern(Ljava/lang/String;)Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v1

    sput-object v1, Lcom/alibaba/fastjson/serializer/JodaCodec;->formatter_dt19_us:Lorg/joda/time/format/DateTimeFormatter;

    .line 30
    const-string v1, "dd/MM/yyyy HH:mm:ss"

    invoke-static {v1}, Lorg/joda/time/format/DateTimeFormat;->forPattern(Ljava/lang/String;)Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v1

    sput-object v1, Lcom/alibaba/fastjson/serializer/JodaCodec;->formatter_dt19_eur:Lorg/joda/time/format/DateTimeFormatter;

    .line 31
    const-string v1, "dd.MM.yyyy HH:mm:ss"

    invoke-static {v1}, Lorg/joda/time/format/DateTimeFormat;->forPattern(Ljava/lang/String;)Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v1

    sput-object v1, Lcom/alibaba/fastjson/serializer/JodaCodec;->formatter_dt19_de:Lorg/joda/time/format/DateTimeFormatter;

    .line 32
    const-string v1, "dd-MM-yyyy HH:mm:ss"

    invoke-static {v1}, Lorg/joda/time/format/DateTimeFormat;->forPattern(Ljava/lang/String;)Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v1

    sput-object v1, Lcom/alibaba/fastjson/serializer/JodaCodec;->formatter_dt19_in:Lorg/joda/time/format/DateTimeFormatter;

    .line 34
    const-string/jumbo v1, "yyyyMMdd"

    invoke-static {v1}, Lorg/joda/time/format/DateTimeFormat;->forPattern(Ljava/lang/String;)Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v1

    sput-object v1, Lcom/alibaba/fastjson/serializer/JodaCodec;->formatter_d8:Lorg/joda/time/format/DateTimeFormatter;

    .line 35
    const-string/jumbo v1, "yyyy/MM/dd"

    invoke-static {v1}, Lorg/joda/time/format/DateTimeFormat;->forPattern(Ljava/lang/String;)Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v1

    sput-object v1, Lcom/alibaba/fastjson/serializer/JodaCodec;->formatter_d10_tw:Lorg/joda/time/format/DateTimeFormatter;

    .line 36
    const-string/jumbo v1, "yyyy\u5e74M\u6708d\u65e5"

    invoke-static {v1}, Lorg/joda/time/format/DateTimeFormat;->forPattern(Ljava/lang/String;)Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v1

    sput-object v1, Lcom/alibaba/fastjson/serializer/JodaCodec;->formatter_d10_cn:Lorg/joda/time/format/DateTimeFormatter;

    .line 37
    const-string/jumbo v1, "yyyy\ub144M\uc6d4d\uc77c"

    invoke-static {v1}, Lorg/joda/time/format/DateTimeFormat;->forPattern(Ljava/lang/String;)Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v1

    sput-object v1, Lcom/alibaba/fastjson/serializer/JodaCodec;->formatter_d10_kr:Lorg/joda/time/format/DateTimeFormatter;

    .line 38
    const-string v1, "MM/dd/yyyy"

    invoke-static {v1}, Lorg/joda/time/format/DateTimeFormat;->forPattern(Ljava/lang/String;)Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v1

    sput-object v1, Lcom/alibaba/fastjson/serializer/JodaCodec;->formatter_d10_us:Lorg/joda/time/format/DateTimeFormatter;

    .line 39
    const-string v1, "dd/MM/yyyy"

    invoke-static {v1}, Lorg/joda/time/format/DateTimeFormat;->forPattern(Ljava/lang/String;)Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v1

    sput-object v1, Lcom/alibaba/fastjson/serializer/JodaCodec;->formatter_d10_eur:Lorg/joda/time/format/DateTimeFormatter;

    .line 40
    const-string v1, "dd.MM.yyyy"

    invoke-static {v1}, Lorg/joda/time/format/DateTimeFormat;->forPattern(Ljava/lang/String;)Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v1

    sput-object v1, Lcom/alibaba/fastjson/serializer/JodaCodec;->formatter_d10_de:Lorg/joda/time/format/DateTimeFormatter;

    .line 41
    const-string v1, "dd-MM-yyyy"

    invoke-static {v1}, Lorg/joda/time/format/DateTimeFormat;->forPattern(Ljava/lang/String;)Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v1

    sput-object v1, Lcom/alibaba/fastjson/serializer/JodaCodec;->formatter_d10_in:Lorg/joda/time/format/DateTimeFormatter;

    .line 44
    invoke-static {v0}, Lorg/joda/time/format/DateTimeFormat;->forPattern(Ljava/lang/String;)Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v0

    invoke-static {}, Lorg/joda/time/DateTimeZone;->getDefault()Lorg/joda/time/DateTimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/joda/time/format/DateTimeFormatter;->withZone(Lorg/joda/time/DateTimeZone;)Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v0

    sput-object v0, Lcom/alibaba/fastjson/serializer/JodaCodec;->ISO_FIXED_FORMAT:Lorg/joda/time/format/DateTimeFormatter;

    .line 49
    const-string/jumbo v0, "yyyy-MM-dd\'T\'HH:mm:ss"

    invoke-static {v0}, Lorg/joda/time/format/DateTimeFormat;->forPattern(Ljava/lang/String;)Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v0

    sput-object v0, Lcom/alibaba/fastjson/serializer/JodaCodec;->formatter_iso8601:Lorg/joda/time/format/DateTimeFormatter;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private write(Lcom/alibaba/fastjson/serializer/SerializeWriter;Lorg/joda/time/ReadablePartial;Ljava/lang/String;)V
    .registers 5

    .line 494
    const-string/jumbo v0, "yyyy-MM-dd\'T\'HH:mm:ss"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 495
    sget-object p3, Lcom/alibaba/fastjson/serializer/JodaCodec;->formatter_iso8601:Lorg/joda/time/format/DateTimeFormatter;

    goto :goto_10

    .line 497
    :cond_c
    invoke-static {p3}, Lorg/joda/time/format/DateTimeFormat;->forPattern(Ljava/lang/String;)Lorg/joda/time/format/DateTimeFormatter;

    move-result-object p3

    .line 500
    :goto_10
    invoke-virtual {p3, p2}, Lorg/joda/time/format/DateTimeFormatter;->print(Lorg/joda/time/ReadablePartial;)Ljava/lang/String;

    move-result-object p2

    .line 501
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeString(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/alibaba/fastjson/parser/DefaultJSONParser;",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 53
    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/fastjson/serializer/JodaCodec;->deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;Ljava/lang/String;I)Ljava/lang/Object;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/alibaba/fastjson/parser/DefaultJSONParser;",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "I)TT;"
        }
    .end annotation

    .line 57
    iget-object p3, p1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    .line 58
    invoke-interface {p3}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result p5

    const/4 v0, 0x0

    const/16 v1, 0x8

    if-ne p5, v1, :cond_f

    .line 59
    invoke-interface {p3}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    return-object v0

    .line 63
    :cond_f
    invoke-interface {p3}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result p5

    const/4 v2, 0x4

    if-ne p5, v2, :cond_fa

    .line 64
    invoke-interface {p3}, Lcom/alibaba/fastjson/parser/JSONLexer;->stringVal()Ljava/lang/String;

    move-result-object p1

    .line 65
    invoke-interface {p3}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    if-eqz p4, :cond_30

    .line 69
    const-string/jumbo p3, "yyyy-MM-dd HH:mm:ss"

    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_2b

    .line 70
    sget-object p3, Lcom/alibaba/fastjson/serializer/JodaCodec;->defaultFormatter:Lorg/joda/time/format/DateTimeFormatter;

    goto :goto_31

    .line 72
    :cond_2b
    invoke-static {p4}, Lorg/joda/time/format/DateTimeFormat;->forPattern(Ljava/lang/String;)Lorg/joda/time/format/DateTimeFormatter;

    move-result-object p3

    goto :goto_31

    :cond_30
    move-object p3, v0

    .line 76
    :goto_31
    const-string p5, ""

    invoke-virtual {p5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p5

    if-eqz p5, :cond_3a

    return-object v0

    .line 80
    :cond_3a
    const-class p5, Lorg/joda/time/LocalDateTime;

    if-ne p2, p5, :cond_5d

    .line 82
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    const/16 p5, 0xa

    if-eq p2, p5, :cond_52

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    if-ne p2, v1, :cond_4d

    goto :goto_52

    .line 86
    :cond_4d
    invoke-virtual {p0, p1, p3}, Lcom/alibaba/fastjson/serializer/JodaCodec;->parseDateTime(Ljava/lang/String;Lorg/joda/time/format/DateTimeFormatter;)Lorg/joda/time/LocalDateTime;

    move-result-object p1

    return-object p1

    .line 83
    :cond_52
    :goto_52
    invoke-virtual {p0, p1, p4, p3}, Lcom/alibaba/fastjson/serializer/JodaCodec;->parseLocalDate(Ljava/lang/String;Ljava/lang/String;Lorg/joda/time/format/DateTimeFormatter;)Lorg/joda/time/LocalDate;

    move-result-object p1

    .line 84
    sget-object p2, Lorg/joda/time/LocalTime;->MIDNIGHT:Lorg/joda/time/LocalTime;

    invoke-virtual {p1, p2}, Lorg/joda/time/LocalDate;->toLocalDateTime(Lorg/joda/time/LocalTime;)Lorg/joda/time/LocalDateTime;

    move-result-object p1

    return-object p1

    .line 89
    :cond_5d
    const-class p5, Lorg/joda/time/LocalDate;

    const/16 v2, 0x17

    if-ne p2, p5, :cond_77

    .line 91
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    if-ne p2, v2, :cond_72

    .line 92
    invoke-static {p1}, Lorg/joda/time/LocalDateTime;->parse(Ljava/lang/String;)Lorg/joda/time/LocalDateTime;

    move-result-object p1

    .line 93
    invoke-virtual {p1}, Lorg/joda/time/LocalDateTime;->toLocalDate()Lorg/joda/time/LocalDate;

    move-result-object p1

    return-object p1

    .line 95
    :cond_72
    invoke-virtual {p0, p1, p4, p3}, Lcom/alibaba/fastjson/serializer/JodaCodec;->parseLocalDate(Ljava/lang/String;Ljava/lang/String;Lorg/joda/time/format/DateTimeFormatter;)Lorg/joda/time/LocalDate;

    move-result-object p1

    return-object p1

    .line 99
    :cond_77
    const-class p4, Lorg/joda/time/LocalTime;

    if-ne p2, p4, :cond_8f

    .line 101
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    if-ne p2, v2, :cond_8a

    .line 102
    invoke-static {p1}, Lorg/joda/time/LocalDateTime;->parse(Ljava/lang/String;)Lorg/joda/time/LocalDateTime;

    move-result-object p1

    .line 103
    invoke-virtual {p1}, Lorg/joda/time/LocalDateTime;->toLocalTime()Lorg/joda/time/LocalTime;

    move-result-object p1

    return-object p1

    .line 105
    :cond_8a
    invoke-static {p1}, Lorg/joda/time/LocalTime;->parse(Ljava/lang/String;)Lorg/joda/time/LocalTime;

    move-result-object p1

    return-object p1

    .line 108
    :cond_8f
    const-class p4, Lorg/joda/time/DateTime;

    if-ne p2, p4, :cond_9e

    .line 109
    sget-object p2, Lcom/alibaba/fastjson/serializer/JodaCodec;->defaultFormatter:Lorg/joda/time/format/DateTimeFormatter;

    if-ne p3, p2, :cond_99

    .line 110
    sget-object p3, Lcom/alibaba/fastjson/serializer/JodaCodec;->ISO_FIXED_FORMAT:Lorg/joda/time/format/DateTimeFormatter;

    .line 113
    :cond_99
    invoke-virtual {p0, p1, p3}, Lcom/alibaba/fastjson/serializer/JodaCodec;->parseZonedDateTime(Ljava/lang/String;Lorg/joda/time/format/DateTimeFormatter;)Lorg/joda/time/DateTime;

    move-result-object p1

    return-object p1

    .line 116
    :cond_9e
    const-class p3, Lorg/joda/time/DateTimeZone;

    if-ne p2, p3, :cond_a7

    .line 117
    invoke-static {p1}, Lorg/joda/time/DateTimeZone;->forID(Ljava/lang/String;)Lorg/joda/time/DateTimeZone;

    move-result-object p1

    return-object p1

    .line 120
    :cond_a7
    const-class p3, Lorg/joda/time/Period;

    if-ne p2, p3, :cond_b0

    .line 121
    invoke-static {p1}, Lorg/joda/time/Period;->parse(Ljava/lang/String;)Lorg/joda/time/Period;

    move-result-object p1

    return-object p1

    .line 124
    :cond_b0
    const-class p3, Lorg/joda/time/Duration;

    if-ne p2, p3, :cond_b9

    .line 125
    invoke-static {p1}, Lorg/joda/time/Duration;->parse(Ljava/lang/String;)Lorg/joda/time/Duration;

    move-result-object p1

    return-object p1

    .line 128
    :cond_b9
    const-class p3, Lorg/joda/time/Instant;

    if-ne p2, p3, :cond_f1

    const/4 p2, 0x0

    .line 130
    :goto_be
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p3

    if-ge p2, p3, :cond_d4

    .line 131
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result p3

    const/16 p4, 0x30

    if-lt p3, p4, :cond_ec

    const/16 p4, 0x39

    if-le p3, p4, :cond_d1

    goto :goto_ec

    :cond_d1
    add-int/lit8 p2, p2, 0x1

    goto :goto_be

    .line 137
    :cond_d4
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    if-le p2, v1, :cond_ec

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    const/16 p3, 0x13

    if-ge p2, p3, :cond_ec

    .line 138
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p1

    .line 139
    new-instance p3, Lorg/joda/time/Instant;

    invoke-direct {p3, p1, p2}, Lorg/joda/time/Instant;-><init>(J)V

    return-object p3

    .line 142
    :cond_ec
    :goto_ec
    invoke-static {p1}, Lorg/joda/time/Instant;->parse(Ljava/lang/String;)Lorg/joda/time/Instant;

    move-result-object p1

    return-object p1

    .line 145
    :cond_f1
    const-class p3, Lorg/joda/time/format/DateTimeFormatter;

    if-ne p2, p3, :cond_188

    .line 146
    invoke-static {p1}, Lorg/joda/time/format/DateTimeFormat;->forPattern(Ljava/lang/String;)Lorg/joda/time/format/DateTimeFormatter;

    move-result-object p1

    return-object p1

    .line 148
    :cond_fa
    invoke-interface {p3}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result p4

    const/4 p5, 0x2

    if-ne p4, p5, :cond_14e

    .line 149
    invoke-interface {p3}, Lcom/alibaba/fastjson/parser/JSONLexer;->longValue()J

    move-result-wide p4

    .line 150
    invoke-interface {p3}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    .line 152
    sget-object p1, Lcom/alibaba/fastjson/JSON;->defaultTimeZone:Ljava/util/TimeZone;

    if-nez p1, :cond_110

    .line 154
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object p1

    .line 157
    :cond_110
    const-class p3, Lorg/joda/time/DateTime;

    if-ne p2, p3, :cond_11e

    .line 158
    new-instance p2, Lorg/joda/time/DateTime;

    invoke-static {p1}, Lorg/joda/time/DateTimeZone;->forTimeZone(Ljava/util/TimeZone;)Lorg/joda/time/DateTimeZone;

    move-result-object p1

    invoke-direct {p2, p4, p5, p1}, Lorg/joda/time/DateTime;-><init>(JLorg/joda/time/DateTimeZone;)V

    return-object p2

    .line 161
    :cond_11e
    new-instance p3, Lorg/joda/time/LocalDateTime;

    invoke-static {p1}, Lorg/joda/time/DateTimeZone;->forTimeZone(Ljava/util/TimeZone;)Lorg/joda/time/DateTimeZone;

    move-result-object p1

    invoke-direct {p3, p4, p5, p1}, Lorg/joda/time/LocalDateTime;-><init>(JLorg/joda/time/DateTimeZone;)V

    .line 162
    const-class p1, Lorg/joda/time/LocalDateTime;

    if-ne p2, p1, :cond_12c

    return-object p3

    .line 166
    :cond_12c
    const-class p1, Lorg/joda/time/LocalDate;

    if-ne p2, p1, :cond_135

    .line 167
    invoke-virtual {p3}, Lorg/joda/time/LocalDateTime;->toLocalDate()Lorg/joda/time/LocalDate;

    move-result-object p1

    return-object p1

    .line 170
    :cond_135
    const-class p1, Lorg/joda/time/LocalTime;

    if-ne p2, p1, :cond_13e

    .line 171
    invoke-virtual {p3}, Lorg/joda/time/LocalDateTime;->toLocalTime()Lorg/joda/time/LocalTime;

    move-result-object p1

    return-object p1

    .line 174
    :cond_13e
    const-class p1, Lorg/joda/time/Instant;

    if-ne p2, p1, :cond_148

    .line 175
    new-instance p1, Lorg/joda/time/Instant;

    invoke-direct {p1, p4, p5}, Lorg/joda/time/Instant;-><init>(J)V

    return-object p1

    .line 180
    :cond_148
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    .line 181
    :cond_14e
    invoke-interface {p3}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result p3

    const/16 p4, 0xc

    if-ne p3, p4, :cond_189

    .line 182
    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parseObject()Lcom/alibaba/fastjson/JSONObject;

    move-result-object p1

    .line 184
    const-class p3, Lorg/joda/time/Instant;

    if-ne p2, p3, :cond_188

    .line 185
    const-string p2, "epochSecond"

    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 187
    instance-of p3, p2, Ljava/lang/Number;

    if-eqz p3, :cond_173

    .line 188
    check-cast p2, Ljava/lang/Number;

    .line 189
    invoke-static {p2}, Lcom/alibaba/fastjson/util/TypeUtils;->longExtractValue(Ljava/lang/Number;)J

    move-result-wide p1

    .line 188
    invoke-static {p1, p2}, Lorg/joda/time/Instant;->ofEpochSecond(J)Lorg/joda/time/Instant;

    move-result-object p1

    return-object p1

    .line 192
    :cond_173
    const-string p2, "millis"

    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 193
    instance-of p2, p1, Ljava/lang/Number;

    if-eqz p2, :cond_188

    .line 194
    check-cast p1, Ljava/lang/Number;

    .line 195
    invoke-static {p1}, Lcom/alibaba/fastjson/util/TypeUtils;->longExtractValue(Ljava/lang/Number;)J

    move-result-wide p1

    .line 194
    invoke-static {p1, p2}, Lorg/joda/time/Instant;->ofEpochMilli(J)Lorg/joda/time/Instant;

    move-result-object p1

    return-object p1

    :cond_188
    return-object v0

    .line 199
    :cond_189
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public getFastMatchToken()I
    .registers 2

    const/4 v0, 0x4

    return v0
.end method

.method protected parseDateTime(Ljava/lang/String;Lorg/joda/time/format/DateTimeFormatter;)Lorg/joda/time/LocalDateTime;
    .registers 19

    move-object/from16 v0, p1

    if-nez p2, :cond_148

    .line 206
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x20

    const/4 v3, 0x0

    const/16 v4, 0x10

    const/16 v5, 0xd

    const/4 v6, 0x7

    const/16 v7, 0x2e

    const/4 v8, 0x1

    const/4 v9, 0x4

    const/16 v10, 0x13

    const/16 v11, 0x3a

    const/16 v12, 0xa

    const/16 v13, 0x30

    const/16 v14, 0x2d

    if-ne v1, v10, :cond_bb

    .line 207
    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 208
    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 209
    invoke-virtual {v0, v12}, Ljava/lang/String;->charAt(I)C

    move-result v15

    .line 210
    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 211
    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v5, v11, :cond_ea

    if-ne v4, v11, :cond_ea

    if-ne v1, v14, :cond_4a

    if-ne v6, v14, :cond_4a

    const/16 v1, 0x54

    if-ne v15, v1, :cond_44

    .line 215
    sget-object v1, Lcom/alibaba/fastjson/serializer/JodaCodec;->formatter_iso8601:Lorg/joda/time/format/DateTimeFormatter;

    goto/16 :goto_ec

    :cond_44
    if-ne v15, v2, :cond_ea

    .line 217
    sget-object v1, Lcom/alibaba/fastjson/serializer/JodaCodec;->defaultFormatter:Lorg/joda/time/format/DateTimeFormatter;

    goto/16 :goto_ec

    :cond_4a
    const/16 v2, 0x2f

    if-ne v1, v2, :cond_54

    if-ne v6, v2, :cond_54

    .line 220
    sget-object v1, Lcom/alibaba/fastjson/serializer/JodaCodec;->formatter_dt19_tw:Lorg/joda/time/format/DateTimeFormatter;

    goto/16 :goto_ec

    .line 222
    :cond_54
    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 223
    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/4 v6, 0x2

    .line 224
    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/4 v11, 0x3

    .line 225
    invoke-virtual {v0, v11}, Ljava/lang/String;->charAt(I)C

    move-result v11

    const/4 v15, 0x5

    .line 226
    invoke-virtual {v0, v15}, Ljava/lang/String;->charAt(I)C

    move-result v15

    if-ne v6, v2, :cond_ad

    if-ne v15, v2, :cond_ad

    sub-int/2addr v4, v13

    mul-int/lit8 v4, v4, 0xa

    sub-int/2addr v5, v13

    add-int/2addr v4, v5

    sub-int/2addr v11, v13

    mul-int/lit8 v11, v11, 0xa

    sub-int/2addr v1, v13

    add-int/2addr v11, v1

    const/16 v1, 0xc

    if-le v4, v1, :cond_81

    .line 231
    sget-object v1, Lcom/alibaba/fastjson/serializer/JodaCodec;->formatter_dt19_eur:Lorg/joda/time/format/DateTimeFormatter;

    goto/16 :goto_ec

    :cond_81
    if-le v11, v1, :cond_87

    .line 233
    sget-object v1, Lcom/alibaba/fastjson/serializer/JodaCodec;->formatter_dt19_us:Lorg/joda/time/format/DateTimeFormatter;

    goto/16 :goto_ec

    .line 235
    :cond_87
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    .line 237
    const-string v2, "US"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9a

    .line 238
    sget-object v1, Lcom/alibaba/fastjson/serializer/JodaCodec;->formatter_dt19_us:Lorg/joda/time/format/DateTimeFormatter;

    goto :goto_ec

    .line 239
    :cond_9a
    const-string v2, "BR"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_aa

    const-string v2, "AU"

    .line 240
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_ea

    .line 241
    :cond_aa
    sget-object v1, Lcom/alibaba/fastjson/serializer/JodaCodec;->formatter_dt19_eur:Lorg/joda/time/format/DateTimeFormatter;

    goto :goto_ec

    :cond_ad
    if-ne v6, v7, :cond_b4

    if-ne v15, v7, :cond_b4

    .line 245
    sget-object v1, Lcom/alibaba/fastjson/serializer/JodaCodec;->formatter_dt19_de:Lorg/joda/time/format/DateTimeFormatter;

    goto :goto_ec

    :cond_b4
    if-ne v6, v14, :cond_ea

    if-ne v15, v14, :cond_ea

    .line 247
    sget-object v1, Lcom/alibaba/fastjson/serializer/JodaCodec;->formatter_dt19_in:Lorg/joda/time/format/DateTimeFormatter;

    goto :goto_ec

    .line 251
    :cond_bb
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v15, 0x17

    if-ne v1, v15, :cond_ea

    .line 252
    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 253
    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 254
    invoke-virtual {v0, v12}, Ljava/lang/String;->charAt(I)C

    move-result v12

    .line 255
    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 256
    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 257
    invoke-virtual {v0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v15

    if-ne v5, v11, :cond_ea

    if-ne v4, v11, :cond_ea

    if-ne v1, v14, :cond_ea

    if-ne v6, v14, :cond_ea

    if-ne v12, v2, :cond_ea

    if-ne v15, v7, :cond_ea

    .line 266
    sget-object v1, Lcom/alibaba/fastjson/serializer/JodaCodec;->defaultFormatter_23:Lorg/joda/time/format/DateTimeFormatter;

    goto :goto_ec

    :cond_ea
    move-object/from16 v1, p2

    .line 270
    :goto_ec
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v4, 0x11

    if-lt v2, v4, :cond_116

    .line 271
    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v4, 0x5e74

    if-ne v2, v4, :cond_10f

    .line 273
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v8

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x79d2

    if-ne v1, v2, :cond_10c

    .line 274
    sget-object v1, Lcom/alibaba/fastjson/serializer/JodaCodec;->formatter_dt19_cn_1:Lorg/joda/time/format/DateTimeFormatter;

    goto :goto_116

    .line 276
    :cond_10c
    sget-object v1, Lcom/alibaba/fastjson/serializer/JodaCodec;->formatter_dt19_cn:Lorg/joda/time/format/DateTimeFormatter;

    goto :goto_116

    :cond_10f
    const v4, 0xb144

    if-ne v2, v4, :cond_116

    .line 279
    sget-object v1, Lcom/alibaba/fastjson/serializer/JodaCodec;->formatter_dt19_kr:Lorg/joda/time/format/DateTimeFormatter;

    .line 284
    :cond_116
    :goto_116
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v3, v2, :cond_12a

    .line 285
    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-lt v2, v13, :cond_14a

    const/16 v4, 0x39

    if-le v2, v4, :cond_127

    goto :goto_14a

    :cond_127
    add-int/lit8 v3, v3, 0x1

    goto :goto_116

    .line 291
    :cond_12a
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x8

    if-le v2, v3, :cond_14a

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v2, v10, :cond_14a

    .line 292
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 293
    new-instance v2, Lorg/joda/time/LocalDateTime;

    sget-object v3, Lcom/alibaba/fastjson/JSON;->defaultTimeZone:Ljava/util/TimeZone;

    invoke-static {v3}, Lorg/joda/time/DateTimeZone;->forTimeZone(Ljava/util/TimeZone;)Lorg/joda/time/DateTimeZone;

    move-result-object v3

    invoke-direct {v2, v0, v1, v3}, Lorg/joda/time/LocalDateTime;-><init>(JLorg/joda/time/DateTimeZone;)V

    return-object v2

    :cond_148
    move-object/from16 v1, p2

    :cond_14a
    :goto_14a
    if-nez v1, :cond_151

    .line 298
    invoke-static {v0}, Lorg/joda/time/LocalDateTime;->parse(Ljava/lang/String;)Lorg/joda/time/LocalDateTime;

    move-result-object v0

    return-object v0

    .line 299
    :cond_151
    invoke-static {v0, v1}, Lorg/joda/time/LocalDateTime;->parse(Ljava/lang/String;Lorg/joda/time/format/DateTimeFormatter;)Lorg/joda/time/LocalDateTime;

    move-result-object v0

    return-object v0
.end method

.method protected parseLocalDate(Ljava/lang/String;Ljava/lang/String;Lorg/joda/time/format/DateTimeFormatter;)Lorg/joda/time/LocalDate;
    .registers 15

    if-nez p3, :cond_e5

    .line 304
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    const/16 v0, 0x8

    if-ne p2, v0, :cond_c

    .line 305
    sget-object p3, Lcom/alibaba/fastjson/serializer/JodaCodec;->formatter_d8:Lorg/joda/time/format/DateTimeFormatter;

    .line 308
    :cond_c
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    const/4 v1, 0x0

    const/4 v2, 0x4

    const/16 v3, 0xa

    const/16 v4, 0x30

    if-ne p2, v3, :cond_93

    .line 309
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result p2

    const/4 v5, 0x7

    .line 310
    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x2f

    if-ne p2, v6, :cond_29

    if-ne v5, v6, :cond_29

    .line 312
    sget-object p3, Lcom/alibaba/fastjson/serializer/JodaCodec;->formatter_d10_tw:Lorg/joda/time/format/DateTimeFormatter;

    .line 315
    :cond_29
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/4 v7, 0x1

    .line 316
    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/4 v8, 0x2

    .line 317
    invoke-virtual {p1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/4 v9, 0x3

    .line 318
    invoke-virtual {p1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    const/4 v10, 0x5

    .line 319
    invoke-virtual {p1, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-ne v8, v6, :cond_82

    if-ne v10, v6, :cond_82

    sub-int/2addr v5, v4

    mul-int/lit8 v5, v5, 0xa

    sub-int/2addr v7, v4

    add-int/2addr v5, v7

    sub-int/2addr v9, v4

    mul-int/lit8 v9, v9, 0xa

    sub-int/2addr p2, v4

    add-int/2addr v9, p2

    const/16 p2, 0xc

    if-le v5, p2, :cond_57

    .line 324
    sget-object p2, Lcom/alibaba/fastjson/serializer/JodaCodec;->formatter_d10_eur:Lorg/joda/time/format/DateTimeFormatter;

    :goto_55
    move-object p3, p2

    goto :goto_93

    :cond_57
    if-le v9, p2, :cond_5c

    .line 326
    sget-object p2, Lcom/alibaba/fastjson/serializer/JodaCodec;->formatter_d10_us:Lorg/joda/time/format/DateTimeFormatter;

    goto :goto_55

    .line 328
    :cond_5c
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object p2

    .line 330
    const-string v3, "US"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6f

    .line 331
    sget-object p2, Lcom/alibaba/fastjson/serializer/JodaCodec;->formatter_d10_us:Lorg/joda/time/format/DateTimeFormatter;

    goto :goto_55

    .line 332
    :cond_6f
    const-string v3, "BR"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7f

    const-string v3, "AU"

    .line 333
    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_93

    .line 334
    :cond_7f
    sget-object p2, Lcom/alibaba/fastjson/serializer/JodaCodec;->formatter_d10_eur:Lorg/joda/time/format/DateTimeFormatter;

    goto :goto_55

    :cond_82
    const/16 p2, 0x2e

    if-ne v8, p2, :cond_8b

    if-ne v10, p2, :cond_8b

    .line 338
    sget-object p3, Lcom/alibaba/fastjson/serializer/JodaCodec;->formatter_d10_de:Lorg/joda/time/format/DateTimeFormatter;

    goto :goto_93

    :cond_8b
    const/16 p2, 0x2d

    if-ne v8, p2, :cond_93

    if-ne v10, p2, :cond_93

    .line 340
    sget-object p3, Lcom/alibaba/fastjson/serializer/JodaCodec;->formatter_d10_in:Lorg/joda/time/format/DateTimeFormatter;

    .line 344
    :cond_93
    :goto_93
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    const/16 v3, 0x9

    if-lt p2, v3, :cond_af

    .line 345
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result p2

    const/16 v2, 0x5e74

    if-ne p2, v2, :cond_a7

    .line 347
    sget-object p2, Lcom/alibaba/fastjson/serializer/JodaCodec;->formatter_d10_cn:Lorg/joda/time/format/DateTimeFormatter;

    :goto_a5
    move-object p3, p2

    goto :goto_af

    :cond_a7
    const v2, 0xb144

    if-ne p2, v2, :cond_af

    .line 349
    sget-object p2, Lcom/alibaba/fastjson/serializer/JodaCodec;->formatter_d10_kr:Lorg/joda/time/format/DateTimeFormatter;

    goto :goto_a5

    .line 354
    :cond_af
    :goto_af
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    if-ge v1, p2, :cond_c3

    .line 355
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result p2

    if-lt p2, v4, :cond_e5

    const/16 v2, 0x39

    if-le p2, v2, :cond_c0

    goto :goto_e5

    :cond_c0
    add-int/lit8 v1, v1, 0x1

    goto :goto_af

    .line 361
    :cond_c3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    if-le p2, v0, :cond_e5

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    const/16 v0, 0x13

    if-ge p2, v0, :cond_e5

    .line 362
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p1

    .line 363
    new-instance p3, Lorg/joda/time/LocalDateTime;

    sget-object v0, Lcom/alibaba/fastjson/JSON;->defaultTimeZone:Ljava/util/TimeZone;

    invoke-static {v0}, Lorg/joda/time/DateTimeZone;->forTimeZone(Ljava/util/TimeZone;)Lorg/joda/time/DateTimeZone;

    move-result-object v0

    invoke-direct {p3, p1, p2, v0}, Lorg/joda/time/LocalDateTime;-><init>(JLorg/joda/time/DateTimeZone;)V

    .line 364
    invoke-virtual {p3}, Lorg/joda/time/LocalDateTime;->toLocalDate()Lorg/joda/time/LocalDate;

    move-result-object p1

    return-object p1

    :cond_e5
    :goto_e5
    if-nez p3, :cond_ec

    .line 369
    invoke-static {p1}, Lorg/joda/time/LocalDate;->parse(Ljava/lang/String;)Lorg/joda/time/LocalDate;

    move-result-object p1

    return-object p1

    .line 370
    :cond_ec
    invoke-static {p1, p3}, Lorg/joda/time/LocalDate;->parse(Ljava/lang/String;Lorg/joda/time/format/DateTimeFormatter;)Lorg/joda/time/LocalDate;

    move-result-object p1

    return-object p1
.end method

.method protected parseZonedDateTime(Ljava/lang/String;Lorg/joda/time/format/DateTimeFormatter;)Lorg/joda/time/DateTime;
    .registers 14

    if-nez p2, :cond_e2

    .line 375
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x13

    const/4 v2, 0x1

    const/4 v3, 0x4

    if-ne v0, v1, :cond_b8

    .line 376
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/4 v1, 0x7

    .line 377
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v4, 0xa

    .line 378
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0xd

    .line 379
    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x10

    .line 380
    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0x3a

    if-ne v6, v8, :cond_b8

    if-ne v7, v8, :cond_b8

    const/16 v6, 0x2d

    if-ne v0, v6, :cond_43

    if-ne v1, v6, :cond_43

    const/16 v0, 0x54

    if-ne v5, v0, :cond_3b

    .line 384
    sget-object p2, Lcom/alibaba/fastjson/serializer/JodaCodec;->formatter_iso8601:Lorg/joda/time/format/DateTimeFormatter;

    goto/16 :goto_b8

    :cond_3b
    const/16 v0, 0x20

    if-ne v5, v0, :cond_b8

    .line 386
    sget-object p2, Lcom/alibaba/fastjson/serializer/JodaCodec;->defaultFormatter:Lorg/joda/time/format/DateTimeFormatter;

    goto/16 :goto_b8

    :cond_43
    const/16 v5, 0x2f

    if-ne v0, v5, :cond_4d

    if-ne v1, v5, :cond_4d

    .line 389
    sget-object p2, Lcom/alibaba/fastjson/serializer/JodaCodec;->formatter_dt19_tw:Lorg/joda/time/format/DateTimeFormatter;

    goto/16 :goto_b8

    :cond_4d
    const/4 v1, 0x0

    .line 391
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 392
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/4 v8, 0x2

    .line 393
    invoke-virtual {p1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/4 v9, 0x3

    .line 394
    invoke-virtual {p1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    const/4 v10, 0x5

    .line 395
    invoke-virtual {p1, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-ne v8, v5, :cond_a9

    if-ne v10, v5, :cond_a9

    add-int/lit8 v1, v1, -0x30

    mul-int/lit8 v1, v1, 0xa

    add-int/lit8 v7, v7, -0x30

    add-int/2addr v1, v7

    add-int/lit8 v9, v9, -0x30

    mul-int/lit8 v9, v9, 0xa

    add-int/lit8 v0, v0, -0x30

    add-int/2addr v9, v0

    const/16 v0, 0xc

    if-le v1, v0, :cond_7e

    .line 400
    sget-object p2, Lcom/alibaba/fastjson/serializer/JodaCodec;->formatter_dt19_eur:Lorg/joda/time/format/DateTimeFormatter;

    goto :goto_b8

    :cond_7e
    if-le v9, v0, :cond_83

    .line 402
    sget-object p2, Lcom/alibaba/fastjson/serializer/JodaCodec;->formatter_dt19_us:Lorg/joda/time/format/DateTimeFormatter;

    goto :goto_b8

    .line 404
    :cond_83
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    .line 406
    const-string v1, "US"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_96

    .line 407
    sget-object p2, Lcom/alibaba/fastjson/serializer/JodaCodec;->formatter_dt19_us:Lorg/joda/time/format/DateTimeFormatter;

    goto :goto_b8

    .line 408
    :cond_96
    const-string v1, "BR"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a6

    const-string v1, "AU"

    .line 409
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b8

    .line 410
    :cond_a6
    sget-object p2, Lcom/alibaba/fastjson/serializer/JodaCodec;->formatter_dt19_eur:Lorg/joda/time/format/DateTimeFormatter;

    goto :goto_b8

    :cond_a9
    const/16 v0, 0x2e

    if-ne v8, v0, :cond_b2

    if-ne v10, v0, :cond_b2

    .line 414
    sget-object p2, Lcom/alibaba/fastjson/serializer/JodaCodec;->formatter_dt19_de:Lorg/joda/time/format/DateTimeFormatter;

    goto :goto_b8

    :cond_b2
    if-ne v8, v6, :cond_b8

    if-ne v10, v6, :cond_b8

    .line 416
    sget-object p2, Lcom/alibaba/fastjson/serializer/JodaCodec;->formatter_dt19_in:Lorg/joda/time/format/DateTimeFormatter;

    .line 422
    :cond_b8
    :goto_b8
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x11

    if-lt v0, v1, :cond_e2

    .line 423
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x5e74

    if-ne v0, v1, :cond_db

    .line 425
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    sub-int/2addr p2, v2

    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result p2

    const/16 v0, 0x79d2

    if-ne p2, v0, :cond_d8

    .line 426
    sget-object p2, Lcom/alibaba/fastjson/serializer/JodaCodec;->formatter_dt19_cn_1:Lorg/joda/time/format/DateTimeFormatter;

    goto :goto_e2

    .line 428
    :cond_d8
    sget-object p2, Lcom/alibaba/fastjson/serializer/JodaCodec;->formatter_dt19_cn:Lorg/joda/time/format/DateTimeFormatter;

    goto :goto_e2

    :cond_db
    const v1, 0xb144

    if-ne v0, v1, :cond_e2

    .line 431
    sget-object p2, Lcom/alibaba/fastjson/serializer/JodaCodec;->formatter_dt19_kr:Lorg/joda/time/format/DateTimeFormatter;

    :cond_e2
    :goto_e2
    if-nez p2, :cond_e9

    .line 437
    invoke-static {p1}, Lorg/joda/time/DateTime;->parse(Ljava/lang/String;)Lorg/joda/time/DateTime;

    move-result-object p1

    return-object p1

    .line 438
    :cond_e9
    invoke-static {p1, p2}, Lorg/joda/time/DateTime;->parse(Ljava/lang/String;Lorg/joda/time/format/DateTimeFormatter;)Lorg/joda/time/DateTime;

    move-result-object p1

    return-object p1
.end method

.method public write(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Lcom/alibaba/fastjson/serializer/BeanContext;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 487
    iget-object p1, p1, Lcom/alibaba/fastjson/serializer/JSONSerializer;->out:Lcom/alibaba/fastjson/serializer/SerializeWriter;

    .line 488
    invoke-virtual {p3}, Lcom/alibaba/fastjson/serializer/BeanContext;->getFormat()Ljava/lang/String;

    move-result-object p3

    .line 489
    check-cast p2, Lorg/joda/time/ReadablePartial;

    invoke-direct {p0, p1, p2, p3}, Lcom/alibaba/fastjson/serializer/JodaCodec;->write(Lcom/alibaba/fastjson/serializer/SerializeWriter;Lorg/joda/time/ReadablePartial;Ljava/lang/String;)V

    return-void
.end method

.method public write(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 447
    iget-object p3, p1, Lcom/alibaba/fastjson/serializer/JSONSerializer;->out:Lcom/alibaba/fastjson/serializer/SerializeWriter;

    if-nez p2, :cond_8

    .line 449
    invoke-virtual {p3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull()V

    return-void

    :cond_8
    if-nez p4, :cond_e

    .line 452
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p4

    .line 455
    :cond_e
    const-class v0, Lorg/joda/time/LocalDateTime;

    if-ne p4, v0, :cond_64

    .line 456
    sget-object p4, Lcom/alibaba/fastjson/serializer/SerializerFeature;->UseISO8601DateFormat:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {p4}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->getMask()I

    move-result p4

    .line 457
    check-cast p2, Lorg/joda/time/LocalDateTime;

    .line 458
    invoke-virtual {p1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->getDateFormatPattern()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_48

    and-int/2addr p4, p5

    if-nez p4, :cond_45

    .line 461
    sget-object p4, Lcom/alibaba/fastjson/serializer/SerializerFeature;->UseISO8601DateFormat:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {p1, p4}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result p4

    if-eqz p4, :cond_2c

    goto :goto_45

    .line 463
    :cond_2c
    sget-object p4, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteDateUseDateFormat:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {p1, p4}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result p1

    if-eqz p1, :cond_37

    .line 464
    sget-object v0, Lcom/alibaba/fastjson/JSON;->DEFFAULT_DATE_FORMAT:Ljava/lang/String;

    goto :goto_48

    .line 466
    :cond_37
    invoke-virtual {p2}, Lorg/joda/time/LocalDateTime;->getMillisOfSecond()I

    move-result p1

    if-nez p1, :cond_41

    .line 468
    const-string/jumbo v0, "yyyy-MM-dd\'T\'HH:mm:ss.SSS"

    goto :goto_48

    .line 470
    :cond_41
    const-string/jumbo v0, "yyyy-MM-dd\'T\'HH:mm:ss.SSSSSSSSS"

    goto :goto_48

    .line 462
    :cond_45
    :goto_45
    const-string/jumbo v0, "yyyy-MM-dd\'T\'HH:mm:ss"

    :cond_48
    :goto_48
    if-eqz v0, :cond_4e

    .line 476
    invoke-direct {p0, p3, p2, v0}, Lcom/alibaba/fastjson/serializer/JodaCodec;->write(Lcom/alibaba/fastjson/serializer/SerializeWriter;Lorg/joda/time/ReadablePartial;Ljava/lang/String;)V

    return-void

    .line 478
    :cond_4e
    sget-object p1, Lcom/alibaba/fastjson/JSON;->defaultTimeZone:Ljava/util/TimeZone;

    invoke-static {p1}, Lorg/joda/time/DateTimeZone;->forTimeZone(Ljava/util/TimeZone;)Lorg/joda/time/DateTimeZone;

    move-result-object p1

    invoke-virtual {p2, p1}, Lorg/joda/time/LocalDateTime;->toDateTime(Lorg/joda/time/DateTimeZone;)Lorg/joda/time/DateTime;

    move-result-object p1

    invoke-virtual {p1}, Lorg/joda/time/DateTime;->toInstant()Lorg/joda/time/Instant;

    move-result-object p1

    invoke-virtual {p1}, Lorg/joda/time/Instant;->getMillis()J

    move-result-wide p1

    invoke-virtual {p3, p1, p2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeLong(J)V

    return-void

    .line 481
    :cond_64
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeString(Ljava/lang/String;)V

    return-void
.end method
