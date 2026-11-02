###### Class androidx.webkit.internal.ApiHelperForP$$ExternalSyntheticApiModelOutline6 (androidx.webkit.internal.ApiHelperForP$$ExternalSyntheticApiModelOutline6)
.class public final synthetic Landroidx/webkit/internal/ApiHelperForP$$ExternalSyntheticApiModelOutline6;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"


# direct methods
.method public static bridge synthetic m(Ljava/util/OptionalDouble;)D
    .registers 3

    .line 0
    invoke-virtual {p0}, Ljava/util/OptionalDouble;->getAsDouble()D

    move-result-wide v0

    return-wide v0
.end method

.method public static bridge synthetic m(Landroid/webkit/WebSettings;)I
    .registers 1

    .line 0
    invoke-virtual {p0}, Landroid/webkit/WebSettings;->getForceDark()I

    move-result p0

    return p0
.end method

.method public static bridge synthetic m(Ljava/time/LocalDateTime;)I
    .registers 1

    .line 0
    invoke-virtual {p0}, Ljava/time/LocalDateTime;->getHour()I

    move-result p0

    return p0
.end method

.method public static bridge synthetic m(Ljava/util/OptionalInt;)I
    .registers 1

    .line 0
    invoke-virtual {p0}, Ljava/util/OptionalInt;->getAsInt()I

    move-result p0

    return p0
.end method

.method public static bridge synthetic m(Ljava/time/Instant;)J
    .registers 3

    .line 0
    invoke-virtual {p0}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v0

    return-wide v0
.end method

.method public static bridge synthetic m(Ljava/time/chrono/ChronoZonedDateTime;)J
    .registers 3

    .line 0
    invoke-interface {p0}, Ljava/time/chrono/ChronoZonedDateTime;->toEpochSecond()J

    move-result-wide v0

    return-wide v0
.end method

.method public static bridge synthetic m(Ljava/lang/Object;)Landroid/webkit/SafeBrowsingResponse;
    .registers 1

    .line 0
    check-cast p0, Landroid/webkit/SafeBrowsingResponse;

    return-object p0
.end method

.method public static bridge synthetic m(Ljava/lang/Object;)Landroid/webkit/ServiceWorkerWebSettings;
    .registers 1

    .line 0
    check-cast p0, Landroid/webkit/ServiceWorkerWebSettings;

    return-object p0
.end method

.method public static bridge synthetic m(Landroid/webkit/TracingConfig$Builder;I)Landroid/webkit/TracingConfig$Builder;
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Landroid/webkit/TracingConfig$Builder;->setTracingMode(I)Landroid/webkit/TracingConfig$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic m(Landroid/webkit/TracingConfig$Builder;Ljava/util/Collection;)Landroid/webkit/TracingConfig$Builder;
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Landroid/webkit/TracingConfig$Builder;->addCategories(Ljava/util/Collection;)Landroid/webkit/TracingConfig$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic m(Landroid/webkit/TracingConfig$Builder;[I)Landroid/webkit/TracingConfig$Builder;
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Landroid/webkit/TracingConfig$Builder;->addCategories([I)Landroid/webkit/TracingConfig$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic m(Landroid/webkit/TracingConfig$Builder;)Landroid/webkit/TracingConfig;
    .registers 1

    .line 0
    invoke-virtual {p0}, Landroid/webkit/TracingConfig$Builder;->build()Landroid/webkit/TracingConfig;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic m(Ljava/lang/Object;)Landroid/webkit/WebMessagePort;
    .registers 1

    .line 0
    check-cast p0, Landroid/webkit/WebMessagePort;

    return-object p0
.end method

.method public static bridge synthetic m(Ljava/lang/Object;)Landroid/webkit/WebResourceError;
    .registers 1

    .line 0
    check-cast p0, Landroid/webkit/WebResourceError;

    return-object p0
.end method

.method public static bridge synthetic m(Landroid/webkit/WebView;)Landroid/webkit/WebViewRenderProcess;
    .registers 1

    .line 0
    invoke-virtual {p0}, Landroid/webkit/WebView;->getWebViewRenderProcess()Landroid/webkit/WebViewRenderProcess;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic m(Ljava/lang/Object;)Landroid/webkit/WebViewRenderProcess;
    .registers 1

    .line 0
    check-cast p0, Landroid/webkit/WebViewRenderProcess;

    return-object p0
.end method

.method public static bridge synthetic m(Landroid/webkit/WebView;)Landroid/webkit/WebViewRenderProcessClient;
    .registers 1

    .line 0
    invoke-virtual {p0}, Landroid/webkit/WebView;->getWebViewRenderProcessClient()Landroid/webkit/WebViewRenderProcessClient;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic m()Ljava/lang/Class;
    .registers 1

    .line 0
    const-class v0, Ljava/time/LocalTime;

    return-object v0
.end method

.method public static bridge synthetic m(Ljava/util/Optional;)Ljava/lang/Object;
    .registers 1

    .line 0
    invoke-virtual {p0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic m(Ljava/time/format/DateTimeFormatter;Ljava/time/temporal/TemporalAccessor;)Ljava/lang/String;
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Ljava/time/format/DateTimeFormatter;->format(Ljava/time/temporal/TemporalAccessor;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic m(JJ)Ljava/time/Duration;
    .registers 4

    .line 0
    invoke-static {p0, p1, p2, p3}, Ljava/time/Duration;->ofSeconds(JJ)Ljava/time/Duration;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic m(Ljava/lang/CharSequence;)Ljava/time/Duration;
    .registers 1

    .line 0
    invoke-static {p0}, Ljava/time/Duration;->parse(Ljava/lang/CharSequence;)Ljava/time/Duration;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic m(J)Ljava/time/Instant;
    .registers 2

    .line 0
    invoke-static {p0, p1}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic m(JJ)Ljava/time/Instant;
    .registers 4

    .line 0
    invoke-static {p0, p1, p2, p3}, Ljava/time/Instant;->ofEpochSecond(JJ)Ljava/time/Instant;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic m(Ljava/lang/CharSequence;)Ljava/time/Instant;
    .registers 1

    .line 0
    invoke-static {p0}, Ljava/time/Instant;->parse(Ljava/lang/CharSequence;)Ljava/time/Instant;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic m(Ljava/time/chrono/ChronoZonedDateTime;)Ljava/time/Instant;
    .registers 1

    .line 0
    invoke-interface {p0}, Ljava/time/chrono/ChronoZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic m(Ljava/util/Calendar;)Ljava/time/Instant;
    .registers 1

    .line 0
    invoke-virtual {p0}, Ljava/util/Calendar;->toInstant()Ljava/time/Instant;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic m(Ljava/util/Date;)Ljava/time/Instant;
    .registers 1

    .line 0
    invoke-virtual {p0}, Ljava/util/Date;->toInstant()Ljava/time/Instant;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic m(III)Ljava/time/LocalDate;
    .registers 3

    .line 0
    invoke-static {p0, p1, p2}, Ljava/time/LocalDate;->of(III)Ljava/time/LocalDate;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic m(Ljava/lang/CharSequence;)Ljava/time/LocalDate;
    .registers 1

    .line 0
    invoke-static {p0}, Ljava/time/LocalDate;->parse(Ljava/lang/CharSequence;)Ljava/time/LocalDate;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic m(Ljava/lang/CharSequence;Ljava/time/format/DateTimeFormatter;)Ljava/time/LocalDate;
    .registers 2

    .line 0
    invoke-static {p0, p1}, Ljava/time/LocalDate;->parse(Ljava/lang/CharSequence;Ljava/time/format/DateTimeFormatter;)Ljava/time/LocalDate;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic m(Ljava/time/LocalDateTime;)Ljava/time/LocalDate;
    .registers 1

    .line 0
    invoke-virtual {p0}, Ljava/time/LocalDateTime;->toLocalDate()Ljava/time/LocalDate;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic m(IIIIII)Ljava/time/LocalDateTime;
    .registers 6

    .line 0
    invoke-static/range {p0 .. p5}, Ljava/time/LocalDateTime;->of(IIIIII)Ljava/time/LocalDateTime;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic m(Ljava/lang/CharSequence;)Ljava/time/LocalDateTime;
    .registers 1

    .line 0
    invoke-static {p0}, Ljava/time/LocalDateTime;->parse(Ljava/lang/CharSequence;)Ljava/time/LocalDateTime;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic m(Ljava/lang/CharSequence;Ljava/time/format/DateTimeFormatter;)Ljava/time/LocalDateTime;
    .registers 2

    .line 0
    invoke-static {p0, p1}, Ljava/time/LocalDateTime;->parse(Ljava/lang/CharSequence;Ljava/time/format/DateTimeFormatter;)Ljava/time/LocalDateTime;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic m(Ljava/lang/Object;)Ljava/time/LocalDateTime;
    .registers 1

    .line 0
    check-cast p0, Ljava/time/LocalDateTime;

    return-object p0
.end method

.method public static bridge synthetic m(Ljava/time/Instant;Ljava/time/ZoneId;)Ljava/time/LocalDateTime;
    .registers 2

    .line 0
    invoke-static {p0, p1}, Ljava/time/LocalDateTime;->ofInstant(Ljava/time/Instant;Ljava/time/ZoneId;)Ljava/time/LocalDateTime;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic m(Ljava/time/LocalDate;Ljava/time/LocalTime;)Ljava/time/LocalDateTime;
    .registers 2

    .line 0
    invoke-static {p0, p1}, Ljava/time/LocalDateTime;->of(Ljava/time/LocalDate;Ljava/time/LocalTime;)Ljava/time/LocalDateTime;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic m()Ljava/time/LocalTime;
    .registers 1

    .line 0
    sget-object v0, Ljava/time/LocalTime;->MIN:Ljava/time/LocalTime;

    return-object v0
.end method

.method public static bridge synthetic m(IIII)Ljava/time/LocalTime;
    .registers 4

    .line 0
    invoke-static {p0, p1, p2, p3}, Ljava/time/LocalTime;->of(IIII)Ljava/time/LocalTime;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic m(Ljava/lang/CharSequence;)Ljava/time/LocalTime;
    .registers 1

    .line 0
    invoke-static {p0}, Ljava/time/LocalTime;->parse(Ljava/lang/CharSequence;)Ljava/time/LocalTime;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic m(Ljava/time/LocalDateTime;)Ljava/time/LocalTime;
    .registers 1

    .line 0
    invoke-virtual {p0}, Ljava/time/LocalDateTime;->toLocalTime()Ljava/time/LocalTime;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic m(Ljava/lang/CharSequence;)Ljava/time/OffsetDateTime;
    .registers 1

    .line 0
    invoke-static {p0}, Ljava/time/OffsetDateTime;->parse(Ljava/lang/CharSequence;)Ljava/time/OffsetDateTime;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic m(Ljava/lang/CharSequence;)Ljava/time/OffsetTime;
    .registers 1

    .line 0
    invoke-static {p0}, Ljava/time/OffsetTime;->parse(Ljava/lang/CharSequence;)Ljava/time/OffsetTime;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic m(Ljava/lang/CharSequence;)Ljava/time/Period;
    .registers 1

    .line 0
    invoke-static {p0}, Ljava/time/Period;->parse(Ljava/lang/CharSequence;)Ljava/time/Period;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic m()Ljava/time/ZoneId;
    .registers 1

    .line 0
    invoke-static {}, Ljava/time/ZoneId;->systemDefault()Ljava/time/ZoneId;

    move-result-object v0

    return-object v0
.end method

.method public static bridge synthetic m(Ljava/lang/String;)Ljava/time/ZoneId;
    .registers 1

    .line 0
    invoke-static {p0}, Ljava/time/ZoneId;->of(Ljava/lang/String;)Ljava/time/ZoneId;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic m(Ljava/util/TimeZone;)Ljava/time/ZoneId;
    .registers 1

    .line 0
    invoke-virtual {p0}, Ljava/util/TimeZone;->toZoneId()Ljava/time/ZoneId;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic m(Ljava/lang/CharSequence;)Ljava/time/ZonedDateTime;
    .registers 1

    .line 0
    invoke-static {p0}, Ljava/time/ZonedDateTime;->parse(Ljava/lang/CharSequence;)Ljava/time/ZonedDateTime;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic m(Ljava/lang/CharSequence;Ljava/time/format/DateTimeFormatter;)Ljava/time/ZonedDateTime;
    .registers 2

    .line 0
    invoke-static {p0, p1}, Ljava/time/ZonedDateTime;->parse(Ljava/lang/CharSequence;Ljava/time/format/DateTimeFormatter;)Ljava/time/ZonedDateTime;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic m(Ljava/time/Instant;Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;
    .registers 2

    .line 0
    invoke-static {p0, p1}, Ljava/time/ZonedDateTime;->ofInstant(Ljava/time/Instant;Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic m(Ljava/time/LocalDateTime;Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Ljava/time/LocalDateTime;->atZone(Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic m(Ljava/lang/Object;)Ljava/time/chrono/ChronoZonedDateTime;
    .registers 1

    .line 0
    check-cast p0, Ljava/time/chrono/ChronoZonedDateTime;

    return-object p0
.end method

.method public static bridge synthetic m()Ljava/time/format/DateTimeFormatter;
    .registers 1

    .line 0
    sget-object v0, Ljava/time/format/DateTimeFormatter;->ISO_LOCAL_DATE_TIME:Ljava/time/format/DateTimeFormatter;

    return-object v0
.end method

.method public static bridge synthetic m(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;
    .registers 1

    .line 0
    invoke-static {p0}, Ljava/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic m(Ljava/time/format/DateTimeFormatter;Ljava/time/ZoneId;)Ljava/time/format/DateTimeFormatter;
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Ljava/time/format/DateTimeFormatter;->withZone(Ljava/time/ZoneId;)Ljava/time/format/DateTimeFormatter;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic m(Ljava/lang/Object;)Ljava/time/temporal/TemporalAccessor;
    .registers 1

    .line 0
    check-cast p0, Ljava/time/temporal/TemporalAccessor;

    return-object p0
.end method

.method public static bridge synthetic m()Ljava/util/Optional;
    .registers 1

    .line 0
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method public static bridge synthetic m(Ljava/lang/Object;)Ljava/util/Optional;
    .registers 1

    .line 0
    invoke-static {p0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic m()Ljava/util/OptionalDouble;
    .registers 1

    .line 0
    invoke-static {}, Ljava/util/OptionalDouble;->empty()Ljava/util/OptionalDouble;

    move-result-object v0

    return-object v0
.end method

.method public static bridge synthetic m(D)Ljava/util/OptionalDouble;
    .registers 2

    .line 0
    invoke-static {p0, p1}, Ljava/util/OptionalDouble;->of(D)Ljava/util/OptionalDouble;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic m(Ljava/lang/Object;)Ljava/util/OptionalDouble;
    .registers 1

    .line 0
    check-cast p0, Ljava/util/OptionalDouble;

    return-object p0
.end method

.method public static bridge synthetic m()Ljava/util/OptionalInt;
    .registers 1

    .line 0
    invoke-static {}, Ljava/util/OptionalInt;->empty()Ljava/util/OptionalInt;

    move-result-object v0

    return-object v0
.end method

.method public static bridge synthetic m(I)Ljava/util/OptionalInt;
    .registers 1

    .line 0
    invoke-static {p0}, Ljava/util/OptionalInt;->of(I)Ljava/util/OptionalInt;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic m(Ljava/lang/Object;)Ljava/util/OptionalInt;
    .registers 1

    .line 0
    check-cast p0, Ljava/util/OptionalInt;

    return-object p0
.end method

.method public static bridge synthetic m()Ljava/util/OptionalLong;
    .registers 1

    .line 0
    invoke-static {}, Ljava/util/OptionalLong;->empty()Ljava/util/OptionalLong;

    move-result-object v0

    return-object v0
.end method

.method public static bridge synthetic m(J)Ljava/util/OptionalLong;
    .registers 2

    .line 0
    invoke-static {p0, p1}, Ljava/util/OptionalLong;->of(J)Ljava/util/OptionalLong;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic m(Ljava/lang/Object;)Ljava/util/OptionalLong;
    .registers 1

    .line 0
    check-cast p0, Ljava/util/OptionalLong;

    return-object p0
.end method

.method public static bridge synthetic m(Landroid/webkit/WebSettings;I)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Landroid/webkit/WebSettings;->setForceDark(I)V

    return-void
.end method

.method public static bridge synthetic m(Landroid/webkit/WebView;Landroid/webkit/WebViewRenderProcessClient;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Landroid/webkit/WebView;->setWebViewRenderProcessClient(Landroid/webkit/WebViewRenderProcessClient;)V

    return-void
.end method

.method public static bridge synthetic m(Landroid/webkit/WebView;Ljava/util/concurrent/Executor;Landroid/webkit/WebViewRenderProcessClient;)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Landroid/webkit/WebView;->setWebViewRenderProcessClient(Ljava/util/concurrent/Executor;Landroid/webkit/WebViewRenderProcessClient;)V

    return-void
.end method

.method public static bridge synthetic m(Landroid/webkit/WebViewRenderProcess;)Z
    .registers 1

    .line 0
    invoke-virtual {p0}, Landroid/webkit/WebViewRenderProcess;->terminate()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic m(Ljava/lang/Object;)Z
    .registers 1

    .line 0
    instance-of p0, p0, Ljava/time/chrono/ChronoZonedDateTime;

    return p0
.end method

.method public static bridge synthetic m(Ljava/util/Optional;)Z
    .registers 1

    .line 0
    invoke-virtual {p0}, Ljava/util/Optional;->isPresent()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic m(Ljava/util/OptionalDouble;)Z
    .registers 1

    .line 0
    invoke-virtual {p0}, Ljava/util/OptionalDouble;->isPresent()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic m(Ljava/util/OptionalInt;)Z
    .registers 1

    .line 0
    invoke-virtual {p0}, Ljava/util/OptionalInt;->isPresent()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic m$1(Ljava/time/LocalDateTime;)I
    .registers 1

    .line 0
    invoke-virtual {p0}, Ljava/time/LocalDateTime;->getMinute()I

    move-result p0

    return p0
.end method

.method public static bridge synthetic m$1()Ljava/lang/Class;
    .registers 1

    .line 0
    const-class v0, Ljava/time/ZonedDateTime;

    return-object v0
.end method

.method public static bridge synthetic m$1(J)Ljava/time/Instant;
    .registers 2

    .line 0
    invoke-static {p0, p1}, Ljava/time/Instant;->ofEpochSecond(J)Ljava/time/Instant;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic m$1(Ljava/lang/Object;)Z
    .registers 1

    .line 0
    instance-of p0, p0, Ljava/time/LocalDateTime;

    return p0
.end method

.method public static bridge synthetic m$10()Ljava/lang/Class;
    .registers 1

    .line 0
    const-class v0, Ljava/util/OptionalInt;

    return-object v0
.end method

.method public static bridge synthetic m$11()Ljava/lang/Class;
    .registers 1

    .line 0
    const-class v0, Ljava/util/OptionalLong;

    return-object v0
.end method

.method public static bridge synthetic m$12()Ljava/lang/Class;
    .registers 1

    .line 0
    const-class v0, Ljava/util/OptionalDouble;

    return-object v0
.end method

.method public static bridge synthetic m$2(Ljava/time/LocalDateTime;)I
    .registers 1

    .line 0
    invoke-virtual {p0}, Ljava/time/LocalDateTime;->getSecond()I

    move-result p0

    return p0
.end method

.method public static bridge synthetic m$2()Ljava/lang/Class;
    .registers 1

    .line 0
    const-class v0, Ljava/time/OffsetDateTime;

    return-object v0
.end method

.method public static bridge synthetic m$2(Ljava/lang/Object;)Z
    .registers 1

    .line 0
    instance-of p0, p0, Ljava/util/OptionalDouble;

    return p0
.end method

.method public static bridge synthetic m$3(Ljava/time/LocalDateTime;)I
    .registers 1

    .line 0
    invoke-virtual {p0}, Ljava/time/LocalDateTime;->getYear()I

    move-result p0

    return p0
.end method

.method public static bridge synthetic m$3()Ljava/lang/Class;
    .registers 1

    .line 0
    const-class v0, Ljava/time/OffsetTime;

    return-object v0
.end method

.method public static bridge synthetic m$3(Ljava/lang/Object;)Z
    .registers 1

    .line 0
    instance-of p0, p0, Ljava/util/OptionalInt;

    return p0
.end method

.method public static bridge synthetic m$4(Ljava/time/LocalDateTime;)I
    .registers 1

    .line 0
    invoke-virtual {p0}, Ljava/time/LocalDateTime;->getMonthValue()I

    move-result p0

    return p0
.end method

.method public static bridge synthetic m$4()Ljava/lang/Class;
    .registers 1

    .line 0
    const-class v0, Ljava/time/ZoneId;

    return-object v0
.end method

.method public static bridge synthetic m$4(Ljava/lang/Object;)Z
    .registers 1

    .line 0
    instance-of p0, p0, Ljava/util/Optional;

    return p0
.end method

.method public static bridge synthetic m$5(Ljava/time/LocalDateTime;)I
    .registers 1

    .line 0
    invoke-virtual {p0}, Ljava/time/LocalDateTime;->getDayOfMonth()I

    move-result p0

    return p0
.end method

.method public static bridge synthetic m$5()Ljava/lang/Class;
    .registers 1

    .line 0
    const-class v0, Ljava/time/Period;

    return-object v0
.end method

.method public static bridge synthetic m$5(Ljava/lang/Object;)Z
    .registers 1

    .line 0
    instance-of p0, p0, Ljava/util/OptionalLong;

    return p0
.end method

.method public static bridge synthetic m$6(Ljava/time/LocalDateTime;)I
    .registers 1

    .line 0
    invoke-virtual {p0}, Ljava/time/LocalDateTime;->getNano()I

    move-result p0

    return p0
.end method

.method public static bridge synthetic m$6()Ljava/lang/Class;
    .registers 1

    .line 0
    const-class v0, Ljava/time/Duration;

    return-object v0
.end method

.method public static bridge synthetic m$7()Ljava/lang/Class;
    .registers 1

    .line 0
    const-class v0, Ljava/time/Instant;

    return-object v0
.end method

.method public static bridge synthetic m$8()Ljava/lang/Class;
    .registers 1

    .line 0
    const-class v0, Ljava/time/LocalDate;

    return-object v0
.end method

.method public static bridge synthetic m$9()Ljava/lang/Class;
    .registers 1

    .line 0
    const-class v0, Ljava/time/LocalDateTime;

    return-object v0
.end method
