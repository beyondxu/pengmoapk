###### Class com.dcloud.zxing2.client.result.VEventResultParser (com.dcloud.zxing2.client.result.VEventResultParser)
.class public final Lcom/dcloud/zxing2/client/result/VEventResultParser;
.super Lcom/dcloud/zxing2/client/result/ResultParser;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/dcloud/zxing2/client/result/ResultParser;-><init>()V

    return-void
.end method

.method private static matchSingleVCardPrefixedField(Ljava/lang/CharSequence;Ljava/lang/String;Z)Ljava/lang/String;
    .registers 4

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, p1, p2, v0}, Lcom/dcloud/zxing2/client/result/VCardResultParser;->matchSingleVCardPrefixedField(Ljava/lang/CharSequence;Ljava/lang/String;ZZ)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_15

    .line 2
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_e

    goto :goto_15

    :cond_e
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_15
    :goto_15
    const/4 p0, 0x0

    return-object p0
.end method

.method private static matchVCardPrefixedField(Ljava/lang/CharSequence;Ljava/lang/String;Z)[Ljava/lang/String;
    .registers 6

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, p1, p2, v0}, Lcom/dcloud/zxing2/client/result/VCardResultParser;->matchVCardPrefixedField(Ljava/lang/CharSequence;Ljava/lang/String;ZZ)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_29

    .line 2
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_e

    goto :goto_29

    .line 5
    :cond_e
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    .line 6
    new-array p2, p1, [Ljava/lang/String;

    const/4 v1, 0x0

    :goto_15
    if-ge v1, p1, :cond_28

    .line 8
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    aput-object v2, p2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_15

    :cond_28
    return-object p2

    :cond_29
    :goto_29
    const/4 p0, 0x0

    return-object p0
.end method

.method private static stripMailto(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    if-eqz p0, :cond_17

    .line 1
    const-string v0, "mailto:"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_12

    const-string v0, "MAILTO:"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17

    :cond_12
    const/4 v0, 0x7

    .line 2
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    :cond_17
    return-object p0
.end method


# virtual methods
.method public parse(Lcom/dcloud/zxing2/Result;)Lcom/dcloud/zxing2/client/result/CalendarParsedResult;
    .registers 19

    .line 2
    invoke-static/range {p1 .. p1}, Lcom/dcloud/zxing2/client/result/ResultParser;->getMassagedText(Lcom/dcloud/zxing2/Result;)Ljava/lang/String;

    move-result-object v0

    .line 3
    const-string v1, "BEGIN:VEVENT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    if-gez v1, :cond_e

    return-object v2

    .line 8
    :cond_e
    const-string v1, "SUMMARY"

    const/4 v3, 0x1

    invoke-static {v1, v0, v3}, Lcom/dcloud/zxing2/client/result/VEventResultParser;->matchSingleVCardPrefixedField(Ljava/lang/CharSequence;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v5

    .line 9
    const-string v1, "DTSTART"

    invoke-static {v1, v0, v3}, Lcom/dcloud/zxing2/client/result/VEventResultParser;->matchSingleVCardPrefixedField(Ljava/lang/CharSequence;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_1e

    return-object v2

    .line 13
    :cond_1e
    const-string v1, "DTEND"

    invoke-static {v1, v0, v3}, Lcom/dcloud/zxing2/client/result/VEventResultParser;->matchSingleVCardPrefixedField(Ljava/lang/CharSequence;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v7

    .line 14
    const-string v1, "DURATION"

    invoke-static {v1, v0, v3}, Lcom/dcloud/zxing2/client/result/VEventResultParser;->matchSingleVCardPrefixedField(Ljava/lang/CharSequence;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v8

    .line 15
    const-string v1, "LOCATION"

    invoke-static {v1, v0, v3}, Lcom/dcloud/zxing2/client/result/VEventResultParser;->matchSingleVCardPrefixedField(Ljava/lang/CharSequence;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v9

    .line 16
    const-string v1, "ORGANIZER"

    invoke-static {v1, v0, v3}, Lcom/dcloud/zxing2/client/result/VEventResultParser;->matchSingleVCardPrefixedField(Ljava/lang/CharSequence;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/dcloud/zxing2/client/result/VEventResultParser;->stripMailto(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 18
    const-string v1, "ATTENDEE"

    invoke-static {v1, v0, v3}, Lcom/dcloud/zxing2/client/result/VEventResultParser;->matchVCardPrefixedField(Ljava/lang/CharSequence;Ljava/lang/String;Z)[Ljava/lang/String;

    move-result-object v11

    const/4 v1, 0x0

    if-eqz v11, :cond_52

    const/4 v4, 0x0

    .line 20
    :goto_44
    array-length v12, v11

    if-ge v4, v12, :cond_52

    .line 21
    aget-object v12, v11, v4

    invoke-static {v12}, Lcom/dcloud/zxing2/client/result/VEventResultParser;->stripMailto(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v11, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_44

    .line 24
    :cond_52
    const-string v4, "DESCRIPTION"

    invoke-static {v4, v0, v3}, Lcom/dcloud/zxing2/client/result/VEventResultParser;->matchSingleVCardPrefixedField(Ljava/lang/CharSequence;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v12

    .line 26
    const-string v4, "GEO"

    invoke-static {v4, v0, v3}, Lcom/dcloud/zxing2/client/result/VEventResultParser;->matchSingleVCardPrefixedField(Ljava/lang/CharSequence;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_65

    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    move-wide v13, v0

    move-wide v15, v13

    goto :goto_80

    :cond_65
    const/16 v4, 0x3b

    .line 33
    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-gez v4, :cond_6e

    return-object v2

    .line 38
    :cond_6e
    :try_start_6e
    invoke-virtual {v0, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v13

    add-int/2addr v4, v3

    .line 39
    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0
    :try_end_7f
    .catch Ljava/lang/NumberFormatException; {:try_start_6e .. :try_end_7f} :catch_86

    move-wide v15, v0

    .line 46
    :goto_80
    :try_start_80
    new-instance v4, Lcom/dcloud/zxing2/client/result/CalendarParsedResult;

    invoke-direct/range {v4 .. v16}, Lcom/dcloud/zxing2/client/result/CalendarParsedResult;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;DD)V
    :try_end_85
    .catch Ljava/lang/IllegalArgumentException; {:try_start_80 .. :try_end_85} :catch_86

    return-object v4

    :catch_86
    return-object v2
.end method

.method public bridge synthetic parse(Lcom/dcloud/zxing2/Result;)Lcom/dcloud/zxing2/client/result/ParsedResult;
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/dcloud/zxing2/client/result/VEventResultParser;->parse(Lcom/dcloud/zxing2/Result;)Lcom/dcloud/zxing2/client/result/CalendarParsedResult;

    move-result-object p1

    return-object p1
.end method
