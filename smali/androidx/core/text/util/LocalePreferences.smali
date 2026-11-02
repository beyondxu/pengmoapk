###### Class androidx.core.text.util.LocalePreferences (androidx.core.text.util.LocalePreferences)
.class public final Landroidx/core/text/util/LocalePreferences;
.super Ljava/lang/Object;
.source "LocalePreferences.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/text/util/LocalePreferences$FirstDayOfWeek;,
        Landroidx/core/text/util/LocalePreferences$TemperatureUnit;,
        Landroidx/core/text/util/LocalePreferences$CalendarType;,
        Landroidx/core/text/util/LocalePreferences$HourCycle;,
        Landroidx/core/text/util/LocalePreferences$Api24Impl;,
        Landroidx/core/text/util/LocalePreferences$Api33Impl;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "LocalePreferences"

.field private static final WEATHER_FAHRENHEIT_COUNTRIES:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .line 519
    const-string v4, "PW"

    const-string v5, "US"

    const-string v0, "BS"

    const-string v1, "BZ"

    const-string v2, "KY"

    const-string v3, "PR"

    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/core/text/util/LocalePreferences;->WEATHER_FAHRENHEIT_COUNTRIES:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 624
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getBaseFirstDayOfWeek(Ljava/util/Locale;)Ljava/lang/String;
    .registers 1

    .line 544
    invoke-static {p0}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Calendar;->getFirstDayOfWeek()I

    move-result p0

    .line 543
    invoke-static {p0}, Landroidx/core/text/util/LocalePreferences;->getStringOfFirstDayOfWeek(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getBaseHourCycle(Ljava/util/Locale;)Ljava/lang/String;
    .registers 2

    .line 531
    const-string v0, "jm"

    .line 532
    invoke-static {p0, v0}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 534
    const-string v0, "H"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_11

    const-string p0, "h23"

    return-object p0

    :cond_11
    const-string p0, "h12"

    return-object p0
.end method

.method public static getCalendarType()Ljava/lang/String;
    .registers 1

    const/4 v0, 0x1

    .line 216
    invoke-static {v0}, Landroidx/core/text/util/LocalePreferences;->getCalendarType(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getCalendarType(Ljava/util/Locale;)Ljava/lang/String;
    .registers 2

    const/4 v0, 0x1

    .line 227
    invoke-static {p0, v0}, Landroidx/core/text/util/LocalePreferences;->getCalendarType(Ljava/util/Locale;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getCalendarType(Ljava/util/Locale;Z)Ljava/lang/String;
    .registers 5

    .line 273
    const-string v0, "ca"

    const-string v1, ""

    invoke-static {v0, v1, p0, p1}, Landroidx/core/text/util/LocalePreferences;->getUnicodeLocaleType(Ljava/lang/String;Ljava/lang/String;Ljava/util/Locale;Z)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_b

    return-object v0

    .line 278
    :cond_b
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-lt v0, v2, :cond_16

    .line 279
    invoke-static {p0}, Landroidx/core/text/util/LocalePreferences$Api24Impl;->getCalendarType(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_16
    if-eqz p1, :cond_1b

    .line 281
    const-string p0, "gregorian"

    return-object p0

    :cond_1b
    return-object v1
.end method

.method public static getCalendarType(Z)Ljava/lang/String;
    .registers 3

    .line 250
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_b

    .line 251
    invoke-static {}, Landroidx/core/text/util/LocalePreferences$Api24Impl;->getDefaultLocale()Ljava/util/Locale;

    move-result-object v0

    goto :goto_f

    .line 252
    :cond_b
    invoke-static {}, Landroidx/core/text/util/LocalePreferences;->getDefaultLocale()Ljava/util/Locale;

    move-result-object v0

    .line 253
    :goto_f
    invoke-static {v0, p0}, Landroidx/core/text/util/LocalePreferences;->getCalendarType(Ljava/util/Locale;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getDefaultLocale()Ljava/util/Locale;
    .registers 1

    .line 560
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    return-object v0
.end method

.method public static getFirstDayOfWeek()Ljava/lang/String;
    .registers 1

    const/4 v0, 0x1

    .line 439
    invoke-static {v0}, Landroidx/core/text/util/LocalePreferences;->getFirstDayOfWeek(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getFirstDayOfWeek(Ljava/util/Locale;)Ljava/lang/String;
    .registers 2

    const/4 v0, 0x1

    .line 450
    invoke-static {p0, v0}, Landroidx/core/text/util/LocalePreferences;->getFirstDayOfWeek(Ljava/util/Locale;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getFirstDayOfWeek(Ljava/util/Locale;Z)Ljava/lang/String;
    .registers 4

    .line 499
    const-string v0, "fw"

    const-string v1, ""

    invoke-static {v0, v1, p0, p1}, Landroidx/core/text/util/LocalePreferences;->getUnicodeLocaleType(Ljava/lang/String;Ljava/lang/String;Ljava/util/Locale;Z)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_b

    return-object p1

    .line 501
    :cond_b
    invoke-static {p0}, Landroidx/core/text/util/LocalePreferences;->getBaseFirstDayOfWeek(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getFirstDayOfWeek(Z)Ljava/lang/String;
    .registers 3

    .line 473
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_b

    .line 474
    invoke-static {}, Landroidx/core/text/util/LocalePreferences$Api24Impl;->getDefaultLocale()Ljava/util/Locale;

    move-result-object v0

    goto :goto_f

    .line 475
    :cond_b
    invoke-static {}, Landroidx/core/text/util/LocalePreferences;->getDefaultLocale()Ljava/util/Locale;

    move-result-object v0

    .line 476
    :goto_f
    invoke-static {v0, p0}, Landroidx/core/text/util/LocalePreferences;->getFirstDayOfWeek(Ljava/util/Locale;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getHourCycle()Ljava/lang/String;
    .registers 1

    const/4 v0, 0x1

    .line 87
    invoke-static {v0}, Landroidx/core/text/util/LocalePreferences;->getHourCycle(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getHourCycle(Ljava/util/Locale;)Ljava/lang/String;
    .registers 2

    const/4 v0, 0x1

    .line 98
    invoke-static {p0, v0}, Landroidx/core/text/util/LocalePreferences;->getHourCycle(Ljava/util/Locale;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getHourCycle(Ljava/util/Locale;Z)Ljava/lang/String;
    .registers 4

    .line 144
    const-string v0, "hc"

    const-string v1, ""

    invoke-static {v0, v1, p0, p1}, Landroidx/core/text/util/LocalePreferences;->getUnicodeLocaleType(Ljava/lang/String;Ljava/lang/String;Ljava/util/Locale;Z)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_b

    return-object p1

    .line 149
    :cond_b
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x21

    if-lt p1, v0, :cond_16

    .line 150
    invoke-static {p0}, Landroidx/core/text/util/LocalePreferences$Api33Impl;->getHourCycle(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 152
    :cond_16
    invoke-static {p0}, Landroidx/core/text/util/LocalePreferences;->getBaseHourCycle(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getHourCycle(Z)Ljava/lang/String;
    .registers 3

    .line 121
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_b

    .line 122
    invoke-static {}, Landroidx/core/text/util/LocalePreferences$Api24Impl;->getDefaultLocale()Ljava/util/Locale;

    move-result-object v0

    goto :goto_f

    .line 123
    :cond_b
    invoke-static {}, Landroidx/core/text/util/LocalePreferences;->getDefaultLocale()Ljava/util/Locale;

    move-result-object v0

    .line 124
    :goto_f
    invoke-static {v0, p0}, Landroidx/core/text/util/LocalePreferences;->getHourCycle(Ljava/util/Locale;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getStringOfFirstDayOfWeek(I)Ljava/lang/String;
    .registers 8

    .line 548
    const-string v5, "fri"

    const-string v6, "sat"

    const-string/jumbo v0, "sun"

    const-string v1, "mon"

    const-string/jumbo v2, "tue"

    const-string/jumbo v3, "wed"

    const-string/jumbo v4, "thu"

    filled-new-array/range {v0 .. v6}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    if-lt p0, v1, :cond_20

    const/4 v2, 0x7

    if-gt p0, v2, :cond_20

    sub-int/2addr p0, v1

    .line 556
    aget-object p0, v0, p0

    return-object p0

    :cond_20
    const-string p0, ""

    return-object p0
.end method

.method private static getTemperatureHardCoded(Ljava/util/Locale;)Ljava/lang/String;
    .registers 2

    .line 524
    sget-object v0, Landroidx/core/text/util/LocalePreferences;->WEATHER_FAHRENHEIT_COUNTRIES:[Ljava/lang/String;

    invoke-virtual {p0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p0

    if-ltz p0, :cond_f

    .line 525
    const-string p0, "fahrenhe"

    return-object p0

    .line 526
    :cond_f
    const-string p0, "celsius"

    return-object p0
.end method

.method public static getTemperatureUnit()Ljava/lang/String;
    .registers 1

    const/4 v0, 0x1

    .line 321
    invoke-static {v0}, Landroidx/core/text/util/LocalePreferences;->getTemperatureUnit(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getTemperatureUnit(Ljava/util/Locale;)Ljava/lang/String;
    .registers 2

    const/4 v0, 0x1

    .line 332
    invoke-static {p0, v0}, Landroidx/core/text/util/LocalePreferences;->getTemperatureUnit(Ljava/util/Locale;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getTemperatureUnit(Ljava/util/Locale;Z)Ljava/lang/String;
    .registers 4

    .line 379
    const-string v0, "mu"

    const-string v1, ""

    invoke-static {v0, v1, p0, p1}, Landroidx/core/text/util/LocalePreferences;->getUnicodeLocaleType(Ljava/lang/String;Ljava/lang/String;Ljava/util/Locale;Z)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_b

    return-object p1

    .line 384
    :cond_b
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x21

    if-lt p1, v0, :cond_16

    .line 385
    invoke-static {p0}, Landroidx/core/text/util/LocalePreferences$Api33Impl;->getResolvedTemperatureUnit(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 387
    :cond_16
    invoke-static {p0}, Landroidx/core/text/util/LocalePreferences;->getTemperatureHardCoded(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getTemperatureUnit(Z)Ljava/lang/String;
    .registers 3

    .line 355
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_b

    .line 356
    invoke-static {}, Landroidx/core/text/util/LocalePreferences$Api24Impl;->getDefaultLocale()Ljava/util/Locale;

    move-result-object v0

    goto :goto_f

    .line 357
    :cond_b
    invoke-static {}, Landroidx/core/text/util/LocalePreferences;->getDefaultLocale()Ljava/util/Locale;

    move-result-object v0

    .line 358
    :goto_f
    invoke-static {v0, p0}, Landroidx/core/text/util/LocalePreferences;->getTemperatureUnit(Ljava/util/Locale;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getUnicodeLocaleType(Ljava/lang/String;Ljava/lang/String;Ljava/util/Locale;Z)Ljava/lang/String;
    .registers 4

    .line 506
    invoke-virtual {p2, p0}, Ljava/util/Locale;->getUnicodeLocaleType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_7

    return-object p0

    :cond_7
    if-nez p3, :cond_a

    return-object p1

    :cond_a
    const/4 p0, 0x0

    return-object p0
.end method

###### Class androidx.core.text.util.LocalePreferences.AnonymousClass1 (androidx.core.text.util.LocalePreferences$1)
.class synthetic Landroidx/core/text/util/LocalePreferences$1;
.super Ljava/lang/Object;
.source "LocalePreferences.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/text/util/LocalePreferences;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$android$icu$text$DateFormat$HourCycle:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 606
    invoke-static {}, Landroidx/core/util/HalfKt$$ExternalSyntheticApiModelOutline0;->m()[Landroid/icu/text/DateFormat$HourCycle;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Landroidx/core/text/util/LocalePreferences$1;->$SwitchMap$android$icu$text$DateFormat$HourCycle:[I

    :try_start_9
    invoke-static {}, Landroidx/core/util/HalfKt$$ExternalSyntheticApiModelOutline0;->m()Landroid/icu/text/DateFormat$HourCycle;

    move-result-object v1

    invoke-static {v1}, Landroidx/core/util/HalfKt$$ExternalSyntheticApiModelOutline0;->m(Landroid/icu/text/DateFormat$HourCycle;)I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_14} :catch_14

    :catch_14
    :try_start_14
    sget-object v0, Landroidx/core/text/util/LocalePreferences$1;->$SwitchMap$android$icu$text$DateFormat$HourCycle:[I

    invoke-static {}, Landroidx/core/util/HalfKt$$ExternalSyntheticApiModelOutline0;->m$1()Landroid/icu/text/DateFormat$HourCycle;

    move-result-object v1

    invoke-static {v1}, Landroidx/core/util/HalfKt$$ExternalSyntheticApiModelOutline0;->m(Landroid/icu/text/DateFormat$HourCycle;)I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_21
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_21} :catch_21

    :catch_21
    :try_start_21
    sget-object v0, Landroidx/core/text/util/LocalePreferences$1;->$SwitchMap$android$icu$text$DateFormat$HourCycle:[I

    invoke-static {}, Landroidx/core/util/HalfKt$$ExternalSyntheticApiModelOutline0;->m$2()Landroid/icu/text/DateFormat$HourCycle;

    move-result-object v1

    invoke-static {v1}, Landroidx/core/util/HalfKt$$ExternalSyntheticApiModelOutline0;->m(Landroid/icu/text/DateFormat$HourCycle;)I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_21 .. :try_end_2e} :catch_2e

    :catch_2e
    :try_start_2e
    sget-object v0, Landroidx/core/text/util/LocalePreferences$1;->$SwitchMap$android$icu$text$DateFormat$HourCycle:[I

    invoke-static {}, Landroidx/core/util/HalfKt$$ExternalSyntheticApiModelOutline0;->m$3()Landroid/icu/text/DateFormat$HourCycle;

    move-result-object v1

    invoke-static {v1}, Landroidx/core/util/HalfKt$$ExternalSyntheticApiModelOutline0;->m(Landroid/icu/text/DateFormat$HourCycle;)I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2e .. :try_end_3b} :catch_3b

    :catch_3b
    return-void
.end method

###### Class androidx.core.text.util.LocalePreferences.Api24Impl (androidx.core.text.util.LocalePreferences$Api24Impl)
.class Landroidx/core/text/util/LocalePreferences$Api24Impl;
.super Ljava/lang/Object;
.source "LocalePreferences.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/text/util/LocalePreferences;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Api24Impl"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 576
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getCalendarType(Ljava/util/Locale;)Ljava/lang/String;
    .registers 1

    .line 568
    invoke-static {p0}, Landroid/icu/util/Calendar;->getInstance(Ljava/util/Locale;)Landroid/icu/util/Calendar;

    move-result-object p0

    invoke-virtual {p0}, Landroid/icu/util/Calendar;->getType()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static getDefaultLocale()Ljava/util/Locale;
    .registers 1

    .line 573
    sget-object v0, Ljava/util/Locale$Category;->FORMAT:Ljava/util/Locale$Category;

    invoke-static {v0}, Ljava/util/Locale;->getDefault(Ljava/util/Locale$Category;)Ljava/util/Locale;

    move-result-object v0

    return-object v0
.end method

###### Class androidx.core.text.util.LocalePreferences.Api33Impl (androidx.core.text.util.LocalePreferences$Api33Impl)
.class Landroidx/core/text/util/LocalePreferences$Api33Impl;
.super Ljava/lang/Object;
.source "LocalePreferences.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/text/util/LocalePreferences;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Api33Impl"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 620
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getHourCycle(Ljava/util/Locale;)Ljava/lang/String;
    .registers 1

    .line 600
    invoke-static {p0}, Landroid/icu/text/DateTimePatternGenerator;->getInstance(Ljava/util/Locale;)Landroid/icu/text/DateTimePatternGenerator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/icu/text/DateTimePatternGenerator;->getDefaultHourCycle()Landroid/icu/text/DateFormat$HourCycle;

    move-result-object p0

    .line 599
    invoke-static {p0}, Landroidx/core/text/util/LocalePreferences$Api33Impl;->getHourCycleType(Landroid/icu/text/DateFormat$HourCycle;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getHourCycleType(Landroid/icu/text/DateFormat$HourCycle;)Ljava/lang/String;
    .registers 2

    .line 606
    sget-object v0, Landroidx/core/text/util/LocalePreferences$1;->$SwitchMap$android$icu$text$DateFormat$HourCycle:[I

    invoke-virtual {p0}, Landroid/icu/text/DateFormat$HourCycle;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_20

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1d

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1a

    const/4 v0, 0x4

    if-eq p0, v0, :cond_17

    .line 616
    const-string p0, ""

    return-object p0

    .line 614
    :cond_17
    const-string p0, "h24"

    return-object p0

    .line 612
    :cond_1a
    const-string p0, "h23"

    return-object p0

    .line 610
    :cond_1d
    const-string p0, "h12"

    return-object p0

    .line 608
    :cond_20
    const-string p0, "h11"

    return-object p0
.end method

.method static getResolvedTemperatureUnit(Ljava/util/Locale;)Ljava/lang/String;
    .registers 3

    .line 585
    invoke-static {}, Landroid/icu/number/NumberFormatter;->with()Landroid/icu/number/UnlocalizedNumberFormatter;

    move-result-object v0

    const-string/jumbo v1, "weather"

    .line 586
    invoke-virtual {v0, v1}, Landroid/icu/number/UnlocalizedNumberFormatter;->usage(Ljava/lang/String;)Landroid/icu/number/NumberFormatterSettings;

    move-result-object v0

    check-cast v0, Landroid/icu/number/UnlocalizedNumberFormatter;

    sget-object v1, Landroid/icu/util/MeasureUnit;->CELSIUS:Landroid/icu/util/MeasureUnit;

    .line 587
    invoke-virtual {v0, v1}, Landroid/icu/number/UnlocalizedNumberFormatter;->unit(Landroid/icu/util/MeasureUnit;)Landroid/icu/number/NumberFormatterSettings;

    move-result-object v0

    check-cast v0, Landroid/icu/number/UnlocalizedNumberFormatter;

    .line 588
    invoke-virtual {v0, p0}, Landroid/icu/number/UnlocalizedNumberFormatter;->locale(Ljava/util/Locale;)Landroid/icu/number/LocalizedNumberFormatter;

    move-result-object p0

    const-wide/16 v0, 0x1

    .line 589
    invoke-virtual {p0, v0, v1}, Landroid/icu/number/LocalizedNumberFormatter;->format(J)Landroid/icu/number/FormattedNumber;

    move-result-object p0

    invoke-virtual {p0}, Landroid/icu/number/FormattedNumber;->getOutputUnit()Landroid/icu/util/MeasureUnit;

    move-result-object p0

    invoke-virtual {p0}, Landroid/icu/util/MeasureUnit;->getIdentifier()Ljava/lang/String;

    move-result-object p0

    .line 590
    const-string v0, "fahrenhe"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_30

    return-object v0

    :cond_30
    return-object p0
.end method

###### Class androidx.core.text.util.LocalePreferences.CalendarType (androidx.core.text.util.LocalePreferences$CalendarType)
.class public Landroidx/core/text/util/LocalePreferences$CalendarType;
.super Ljava/lang/Object;
.source "LocalePreferences.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/text/util/LocalePreferences;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CalendarType"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/text/util/LocalePreferences$CalendarType$CalendarTypes;
    }
.end annotation


# static fields
.field public static final CHINESE:Ljava/lang/String; = "chinese"

.field public static final DANGI:Ljava/lang/String; = "dangi"

.field public static final DEFAULT:Ljava/lang/String; = ""

.field public static final GREGORIAN:Ljava/lang/String; = "gregorian"

.field public static final HEBREW:Ljava/lang/String; = "hebrew"

.field public static final INDIAN:Ljava/lang/String; = "indian"

.field public static final ISLAMIC:Ljava/lang/String; = "islamic"

.field public static final ISLAMIC_CIVIL:Ljava/lang/String; = "islamic-civil"

.field public static final ISLAMIC_RGSA:Ljava/lang/String; = "islamic-rgsa"

.field public static final ISLAMIC_TBLA:Ljava/lang/String; = "islamic-tbla"

.field public static final ISLAMIC_UMALQURA:Ljava/lang/String; = "islamic-umalqura"

.field public static final PERSIAN:Ljava/lang/String; = "persian"

.field private static final U_EXTENSION_TAG:Ljava/lang/String; = "ca"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 203
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

###### Class androidx.core.text.util.LocalePreferences.CalendarType.CalendarTypes (androidx.core.text.util.LocalePreferences$CalendarType$CalendarTypes)
.class public interface abstract annotation Landroidx/core/text/util/LocalePreferences$CalendarType$CalendarTypes;
.super Ljava/lang/Object;
.source "LocalePreferences.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/text/util/LocalePreferences$CalendarType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2609
    name = "CalendarTypes"
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation

###### Class androidx.core.text.util.LocalePreferences.FirstDayOfWeek (androidx.core.text.util.LocalePreferences$FirstDayOfWeek)
.class public Landroidx/core/text/util/LocalePreferences$FirstDayOfWeek;
.super Ljava/lang/Object;
.source "LocalePreferences.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/text/util/LocalePreferences;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FirstDayOfWeek"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/text/util/LocalePreferences$FirstDayOfWeek$Days;
    }
.end annotation


# static fields
.field public static final DEFAULT:Ljava/lang/String; = ""

.field public static final FRIDAY:Ljava/lang/String; = "fri"

.field public static final MONDAY:Ljava/lang/String; = "mon"

.field public static final SATURDAY:Ljava/lang/String; = "sat"

.field public static final SUNDAY:Ljava/lang/String; = "sun"

.field public static final THURSDAY:Ljava/lang/String; = "thu"

.field public static final TUESDAY:Ljava/lang/String; = "tue"

.field private static final U_EXTENSION_TAG:Ljava/lang/String; = "fw"

.field public static final WEDNESDAY:Ljava/lang/String; = "wed"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 426
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

###### Class androidx.core.text.util.LocalePreferences.FirstDayOfWeek.Days (androidx.core.text.util.LocalePreferences$FirstDayOfWeek$Days)
.class public interface abstract annotation Landroidx/core/text/util/LocalePreferences$FirstDayOfWeek$Days;
.super Ljava/lang/Object;
.source "LocalePreferences.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/text/util/LocalePreferences$FirstDayOfWeek;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2609
    name = "Days"
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation

###### Class androidx.core.text.util.LocalePreferences.HourCycle (androidx.core.text.util.LocalePreferences$HourCycle)
.class public Landroidx/core/text/util/LocalePreferences$HourCycle;
.super Ljava/lang/Object;
.source "LocalePreferences.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/text/util/LocalePreferences;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HourCycle"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/text/util/LocalePreferences$HourCycle$HourCycleTypes;
    }
.end annotation


# static fields
.field public static final DEFAULT:Ljava/lang/String; = ""

.field public static final H11:Ljava/lang/String; = "h11"

.field public static final H12:Ljava/lang/String; = "h12"

.field public static final H23:Ljava/lang/String; = "h23"

.field public static final H24:Ljava/lang/String; = "h24"

.field private static final U_EXTENSION_TAG:Ljava/lang/String; = "hc"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

###### Class androidx.core.text.util.LocalePreferences.HourCycle.HourCycleTypes (androidx.core.text.util.LocalePreferences$HourCycle$HourCycleTypes)
.class public interface abstract annotation Landroidx/core/text/util/LocalePreferences$HourCycle$HourCycleTypes;
.super Ljava/lang/Object;
.source "LocalePreferences.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/text/util/LocalePreferences$HourCycle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2609
    name = "HourCycleTypes"
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation

###### Class androidx.core.text.util.LocalePreferences.TemperatureUnit (androidx.core.text.util.LocalePreferences$TemperatureUnit)
.class public Landroidx/core/text/util/LocalePreferences$TemperatureUnit;
.super Ljava/lang/Object;
.source "LocalePreferences.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/text/util/LocalePreferences;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TemperatureUnit"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/text/util/LocalePreferences$TemperatureUnit$TemperatureUnits;
    }
.end annotation


# static fields
.field public static final CELSIUS:Ljava/lang/String; = "celsius"

.field public static final DEFAULT:Ljava/lang/String; = ""

.field public static final FAHRENHEIT:Ljava/lang/String; = "fahrenhe"

.field public static final KELVIN:Ljava/lang/String; = "kelvin"

.field private static final U_EXTENSION_TAG:Ljava/lang/String; = "mu"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 308
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

###### Class androidx.core.text.util.LocalePreferences.TemperatureUnit.TemperatureUnits (androidx.core.text.util.LocalePreferences$TemperatureUnit$TemperatureUnits)
.class public interface abstract annotation Landroidx/core/text/util/LocalePreferences$TemperatureUnit$TemperatureUnits;
.super Ljava/lang/Object;
.source "LocalePreferences.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/text/util/LocalePreferences$TemperatureUnit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2609
    name = "TemperatureUnits"
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation
