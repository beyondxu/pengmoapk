###### Class androidx.core.app.RemoteInput (androidx.core.app.RemoteInput)
.class public final Landroidx/core/app/RemoteInput;
.super Ljava/lang/Object;
.source "RemoteInput.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/app/RemoteInput$Api26Impl;,
        Landroidx/core/app/RemoteInput$Api20Impl;,
        Landroidx/core/app/RemoteInput$Api28Impl;,
        Landroidx/core/app/RemoteInput$Api29Impl;,
        Landroidx/core/app/RemoteInput$Builder;,
        Landroidx/core/app/RemoteInput$EditChoicesBeforeSending;,
        Landroidx/core/app/RemoteInput$Source;
    }
.end annotation


# static fields
.field public static final EDIT_CHOICES_BEFORE_SENDING_AUTO:I = 0x0

.field public static final EDIT_CHOICES_BEFORE_SENDING_DISABLED:I = 0x1

.field public static final EDIT_CHOICES_BEFORE_SENDING_ENABLED:I = 0x2

.field private static final EXTRA_DATA_TYPE_RESULTS_DATA:Ljava/lang/String; = "android.remoteinput.dataTypeResultsData"

.field public static final EXTRA_RESULTS_DATA:Ljava/lang/String; = "android.remoteinput.resultsData"

.field private static final EXTRA_RESULTS_SOURCE:Ljava/lang/String; = "android.remoteinput.resultsSource"

.field public static final RESULTS_CLIP_LABEL:Ljava/lang/String; = "android.remoteinput.results"

.field public static final SOURCE_CHOICE:I = 0x1

.field public static final SOURCE_FREE_FORM_INPUT:I


# instance fields
.field private final mAllowFreeFormTextInput:Z

.field private final mAllowedDataTypes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mChoices:[Ljava/lang/CharSequence;

.field private final mEditChoicesBeforeSending:I

.field private final mExtras:Landroid/os/Bundle;

.field private final mLabel:Ljava/lang/CharSequence;

.field private final mResultKey:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/CharSequence;[Ljava/lang/CharSequence;ZILandroid/os/Bundle;Ljava/util/Set;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/CharSequence;",
            "[",
            "Ljava/lang/CharSequence;",
            "ZI",
            "Landroid/os/Bundle;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    iput-object p1, p0, Landroidx/core/app/RemoteInput;->mResultKey:Ljava/lang/String;

    .line 96
    iput-object p2, p0, Landroidx/core/app/RemoteInput;->mLabel:Ljava/lang/CharSequence;

    .line 97
    iput-object p3, p0, Landroidx/core/app/RemoteInput;->mChoices:[Ljava/lang/CharSequence;

    .line 98
    iput-boolean p4, p0, Landroidx/core/app/RemoteInput;->mAllowFreeFormTextInput:Z

    .line 99
    iput p5, p0, Landroidx/core/app/RemoteInput;->mEditChoicesBeforeSending:I

    .line 100
    iput-object p6, p0, Landroidx/core/app/RemoteInput;->mExtras:Landroid/os/Bundle;

    .line 101
    iput-object p7, p0, Landroidx/core/app/RemoteInput;->mAllowedDataTypes:Ljava/util/Set;

    .line 102
    invoke-virtual {p0}, Landroidx/core/app/RemoteInput;->getEditChoicesBeforeSending()I

    move-result p1

    const/4 p2, 0x2

    if-ne p1, p2, :cond_27

    .line 103
    invoke-virtual {p0}, Landroidx/core/app/RemoteInput;->getAllowFreeFormInput()Z

    move-result p1

    if-eqz p1, :cond_1f

    goto :goto_27

    .line 104
    :cond_1f
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "setEditChoicesBeforeSending requires setAllowFreeFormInput"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_27
    :goto_27
    return-void
.end method

.method public static addDataResultToIntent(Landroidx/core/app/RemoteInput;Landroid/content/Intent;Ljava/util/Map;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/core/app/RemoteInput;",
            "Landroid/content/Intent;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    .line 472
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_a

    .line 473
    invoke-static {p0, p1, p2}, Landroidx/core/app/RemoteInput$Api26Impl;->addDataResultToIntent(Landroidx/core/app/RemoteInput;Landroid/content/Intent;Ljava/util/Map;)V

    return-void

    .line 475
    :cond_a
    invoke-static {p1}, Landroidx/core/app/RemoteInput;->getClipDataIntentFromIntent(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_15

    .line 477
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 479
    :cond_15
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1d
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5a

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 480
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 481
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    if-nez v2, :cond_38

    goto :goto_1d

    .line 486
    :cond_38
    invoke-static {v2}, Landroidx/core/app/RemoteInput;->getExtraResultsKeyForData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    if-nez v3, :cond_47

    .line 488
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 490
    :cond_47
    invoke-virtual {p0}, Landroidx/core/app/RemoteInput;->getResultKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v4, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 491
    invoke-static {v2}, Landroidx/core/app/RemoteInput;->getExtraResultsKeyForData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    goto :goto_1d

    .line 493
    :cond_5a
    const-string p0, "android.remoteinput.results"

    invoke-static {p0, v0}, Landroid/content/ClipData;->newIntent(Ljava/lang/CharSequence;Landroid/content/Intent;)Landroid/content/ClipData;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/content/Intent;->setClipData(Landroid/content/ClipData;)V

    return-void
.end method

.method public static addResultsToIntent([Landroidx/core/app/RemoteInput;Landroid/content/Intent;Landroid/os/Bundle;)V
    .registers 10

    .line 409
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_e

    .line 410
    invoke-static {p0}, Landroidx/core/app/RemoteInput;->fromCompat([Landroidx/core/app/RemoteInput;)[Landroid/app/RemoteInput;

    move-result-object p0

    invoke-static {p0, p1, p2}, Landroidx/core/app/RemoteInput$Api20Impl;->addResultsToIntent(Ljava/lang/Object;Landroid/content/Intent;Landroid/os/Bundle;)V

    return-void

    .line 416
    :cond_e
    invoke-static {p1}, Landroidx/core/app/RemoteInput;->getResultsFromIntent(Landroid/content/Intent;)Landroid/os/Bundle;

    move-result-object v0

    .line 419
    invoke-static {p1}, Landroidx/core/app/RemoteInput;->getResultsSource(Landroid/content/Intent;)I

    move-result v1

    if-nez v0, :cond_19

    goto :goto_1d

    .line 424
    :cond_19
    invoke-virtual {v0, p2}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    move-object p2, v0

    .line 426
    :goto_1d
    array-length v0, p0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_20
    if-ge v3, v0, :cond_40

    aget-object v4, p0, v3

    .line 430
    invoke-virtual {v4}, Landroidx/core/app/RemoteInput;->getResultKey()Ljava/lang/String;

    move-result-object v5

    .line 429
    invoke-static {p1, v5}, Landroidx/core/app/RemoteInput;->getDataResultsFromIntent(Landroid/content/Intent;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v5

    const/4 v6, 0x1

    .line 432
    new-array v6, v6, [Landroidx/core/app/RemoteInput;

    aput-object v4, v6, v2

    .line 433
    invoke-static {v6}, Landroidx/core/app/RemoteInput;->fromCompat([Landroidx/core/app/RemoteInput;)[Landroid/app/RemoteInput;

    move-result-object v6

    invoke-static {v6, p1, p2}, Landroidx/core/app/RemoteInput$Api20Impl;->addResultsToIntent(Ljava/lang/Object;Landroid/content/Intent;Landroid/os/Bundle;)V

    if-eqz v5, :cond_3d

    .line 435
    invoke-static {v4, p1, v5}, Landroidx/core/app/RemoteInput;->addDataResultToIntent(Landroidx/core/app/RemoteInput;Landroid/content/Intent;Ljava/util/Map;)V

    :cond_3d
    add-int/lit8 v3, v3, 0x1

    goto :goto_20

    .line 440
    :cond_40
    invoke-static {p1, v1}, Landroidx/core/app/RemoteInput;->setResultsSource(Landroid/content/Intent;I)V

    return-void
.end method

.method static fromCompat(Landroidx/core/app/RemoteInput;)Landroid/app/RemoteInput;
    .registers 1

    .line 565
    invoke-static {p0}, Landroidx/core/app/RemoteInput$Api20Impl;->fromCompat(Landroidx/core/app/RemoteInput;)Landroid/app/RemoteInput;

    move-result-object p0

    return-object p0
.end method

.method static fromCompat([Landroidx/core/app/RemoteInput;)[Landroid/app/RemoteInput;
    .registers 4

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 556
    :cond_4
    array-length v0, p0

    new-array v0, v0, [Landroid/app/RemoteInput;

    const/4 v1, 0x0

    .line 557
    :goto_8
    array-length v2, p0

    if-ge v1, v2, :cond_16

    .line 558
    aget-object v2, p0, v1

    invoke-static {v2}, Landroidx/core/app/RemoteInput;->fromCompat(Landroidx/core/app/RemoteInput;)Landroid/app/RemoteInput;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_16
    return-object v0
.end method

.method static fromPlatform(Landroid/app/RemoteInput;)Landroidx/core/app/RemoteInput;
    .registers 1

    .line 570
    invoke-static {p0}, Landroidx/core/app/RemoteInput$Api20Impl;->fromPlatform(Ljava/lang/Object;)Landroidx/core/app/RemoteInput;

    move-result-object p0

    return-object p0
.end method

.method private static getClipDataIntentFromIntent(Landroid/content/Intent;)Landroid/content/Intent;
    .registers 4

    .line 574
    invoke-virtual {p0}, Landroid/content/Intent;->getClipData()Landroid/content/ClipData;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_8

    return-object v0

    .line 578
    :cond_8
    invoke-virtual {p0}, Landroid/content/ClipData;->getDescription()Landroid/content/ClipDescription;

    move-result-object v1

    .line 579
    const-string/jumbo v2, "text/vnd.android.intent"

    invoke-virtual {v1, v2}, Landroid/content/ClipDescription;->hasMimeType(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_16

    return-object v0

    .line 582
    :cond_16
    invoke-virtual {v1}, Landroid/content/ClipDescription;->getLabel()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.remoteinput.results"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_27

    return-object v0

    :cond_27
    const/4 v0, 0x0

    .line 585
    invoke-virtual {p0, v0}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/ClipData$Item;->getIntent()Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public static getDataResultsFromIntent(Landroid/content/Intent;Ljava/lang/String;)Ljava/util/Map;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    .line 345
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_b

    .line 346
    invoke-static {p0, p1}, Landroidx/core/app/RemoteInput$Api26Impl;->getDataResultsFromIntent(Landroid/content/Intent;Ljava/lang/String;)Ljava/util/Map;

    move-result-object p0

    return-object p0

    .line 348
    :cond_b
    invoke-static {p0}, Landroidx/core/app/RemoteInput;->getClipDataIntentFromIntent(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_13

    return-object v0

    .line 352
    :cond_13
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 353
    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 354
    invoke-virtual {v2}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_24
    :goto_24
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 355
    const-string v4, "android.remoteinput.dataTypeResultsData"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_24

    const/16 v4, 0x27

    .line 356
    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 357
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_45

    goto :goto_24

    .line 360
    :cond_45
    invoke-virtual {p0, v3}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    .line 361
    invoke-virtual {v3, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_24

    .line 362
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_56

    goto :goto_24

    .line 365
    :cond_56
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-interface {v1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_24

    .line 368
    :cond_5e
    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_65

    return-object v0

    :cond_65
    return-object v1
.end method

.method private static getExtraResultsKeyForData(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 548
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "android.remoteinput.dataTypeResultsData"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getResultsFromIntent(Landroid/content/Intent;)Landroid/os/Bundle;
    .registers 1

    .line 385
    invoke-static {p0}, Landroidx/core/app/RemoteInput$Api20Impl;->getResultsFromIntent(Landroid/content/Intent;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public static getResultsSource(Landroid/content/Intent;)I
    .registers 3

    .line 536
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_b

    .line 537
    invoke-static {p0}, Landroidx/core/app/RemoteInput$Api28Impl;->getResultsSource(Landroid/content/Intent;)I

    move-result p0

    return p0

    .line 539
    :cond_b
    invoke-static {p0}, Landroidx/core/app/RemoteInput;->getClipDataIntentFromIntent(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_13

    return v0

    .line 543
    :cond_13
    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p0

    const-string v1, "android.remoteinput.resultsSource"

    invoke-virtual {p0, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static setResultsSource(Landroid/content/Intent;I)V
    .registers 4

    .line 511
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_a

    .line 512
    invoke-static {p0, p1}, Landroidx/core/app/RemoteInput$Api28Impl;->setResultsSource(Landroid/content/Intent;I)V

    return-void

    .line 514
    :cond_a
    invoke-static {p0}, Landroidx/core/app/RemoteInput;->getClipDataIntentFromIntent(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_15

    .line 516
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 518
    :cond_15
    const-string v1, "android.remoteinput.resultsSource"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 519
    const-string p1, "android.remoteinput.results"

    invoke-static {p1, v0}, Landroid/content/ClipData;->newIntent(Ljava/lang/CharSequence;Landroid/content/Intent;)Landroid/content/ClipData;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/content/Intent;->setClipData(Landroid/content/ClipData;)V

    return-void
.end method


# virtual methods
.method public getAllowFreeFormInput()Z
    .registers 2

    .line 160
    iget-boolean v0, p0, Landroidx/core/app/RemoteInput;->mAllowFreeFormTextInput:Z

    return v0
.end method

.method public getAllowedDataTypes()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 138
    iget-object v0, p0, Landroidx/core/app/RemoteInput;->mAllowedDataTypes:Ljava/util/Set;

    return-object v0
.end method

.method public getChoices()[Ljava/lang/CharSequence;
    .registers 2

    .line 132
    iget-object v0, p0, Landroidx/core/app/RemoteInput;->mChoices:[Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getEditChoicesBeforeSending()I
    .registers 2

    .line 168
    iget v0, p0, Landroidx/core/app/RemoteInput;->mEditChoicesBeforeSending:I

    return v0
.end method

.method public getExtras()Landroid/os/Bundle;
    .registers 2

    .line 176
    iget-object v0, p0, Landroidx/core/app/RemoteInput;->mExtras:Landroid/os/Bundle;

    return-object v0
.end method

.method public getLabel()Ljava/lang/CharSequence;
    .registers 2

    .line 123
    iget-object v0, p0, Landroidx/core/app/RemoteInput;->mLabel:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getResultKey()Ljava/lang/String;
    .registers 2

    .line 115
    iget-object v0, p0, Landroidx/core/app/RemoteInput;->mResultKey:Ljava/lang/String;

    return-object v0
.end method

.method public isDataOnly()Z
    .registers 2

    .line 147
    invoke-virtual {p0}, Landroidx/core/app/RemoteInput;->getAllowFreeFormInput()Z

    move-result v0

    if-nez v0, :cond_25

    .line 148
    invoke-virtual {p0}, Landroidx/core/app/RemoteInput;->getChoices()[Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_13

    invoke-virtual {p0}, Landroidx/core/app/RemoteInput;->getChoices()[Ljava/lang/CharSequence;

    move-result-object v0

    array-length v0, v0

    if-nez v0, :cond_25

    .line 149
    :cond_13
    invoke-virtual {p0}, Landroidx/core/app/RemoteInput;->getAllowedDataTypes()Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_25

    .line 150
    invoke-virtual {p0}, Landroidx/core/app/RemoteInput;->getAllowedDataTypes()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_25

    const/4 v0, 0x1

    return v0

    :cond_25
    const/4 v0, 0x0

    return v0
.end method

###### Class androidx.core.app.RemoteInput.Api20Impl (androidx.core.app.RemoteInput$Api20Impl)
.class Landroidx/core/app/RemoteInput$Api20Impl;
.super Ljava/lang/Object;
.source "RemoteInput.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/app/RemoteInput;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Api20Impl"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 620
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static addResultsToIntent(Ljava/lang/Object;Landroid/content/Intent;Landroid/os/Bundle;)V
    .registers 3

    .line 631
    check-cast p0, [Landroid/app/RemoteInput;

    invoke-static {p0, p1, p2}, Landroid/app/RemoteInput;->addResultsToIntent([Landroid/app/RemoteInput;Landroid/content/Intent;Landroid/os/Bundle;)V

    return-void
.end method

.method public static fromCompat(Landroidx/core/app/RemoteInput;)Landroid/app/RemoteInput;
    .registers 5

    .line 658
    new-instance v0, Landroid/app/RemoteInput$Builder;

    .line 659
    invoke-virtual {p0}, Landroidx/core/app/RemoteInput;->getResultKey()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/RemoteInput$Builder;-><init>(Ljava/lang/String;)V

    .line 660
    invoke-virtual {p0}, Landroidx/core/app/RemoteInput;->getLabel()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/RemoteInput$Builder;->setLabel(Ljava/lang/CharSequence;)Landroid/app/RemoteInput$Builder;

    move-result-object v0

    .line 661
    invoke-virtual {p0}, Landroidx/core/app/RemoteInput;->getChoices()[Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/RemoteInput$Builder;->setChoices([Ljava/lang/CharSequence;)Landroid/app/RemoteInput$Builder;

    move-result-object v0

    .line 662
    invoke-virtual {p0}, Landroidx/core/app/RemoteInput;->getAllowFreeFormInput()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/RemoteInput$Builder;->setAllowFreeFormInput(Z)Landroid/app/RemoteInput$Builder;

    move-result-object v0

    .line 663
    invoke-virtual {p0}, Landroidx/core/app/RemoteInput;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/RemoteInput$Builder;->addExtras(Landroid/os/Bundle;)Landroid/app/RemoteInput$Builder;

    move-result-object v0

    .line 664
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_4a

    .line 665
    invoke-virtual {p0}, Landroidx/core/app/RemoteInput;->getAllowedDataTypes()Ljava/util/Set;

    move-result-object v1

    if-eqz v1, :cond_4a

    .line 667
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_39
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const/4 v3, 0x1

    .line 668
    invoke-static {v0, v2, v3}, Landroidx/core/app/RemoteInput$Api26Impl;->setAllowDataType(Landroid/app/RemoteInput$Builder;Ljava/lang/String;Z)Landroid/app/RemoteInput$Builder;

    goto :goto_39

    .line 672
    :cond_4a
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1d

    if-lt v1, v2, :cond_57

    .line 673
    invoke-virtual {p0}, Landroidx/core/app/RemoteInput;->getEditChoicesBeforeSending()I

    move-result p0

    invoke-static {v0, p0}, Landroidx/core/app/RemoteInput$Api29Impl;->setEditChoicesBeforeSending(Landroid/app/RemoteInput$Builder;I)Landroid/app/RemoteInput$Builder;

    .line 675
    :cond_57
    invoke-virtual {v0}, Landroid/app/RemoteInput$Builder;->build()Landroid/app/RemoteInput;

    move-result-object p0

    return-object p0
.end method

.method static fromPlatform(Ljava/lang/Object;)Landroidx/core/app/RemoteInput;
    .registers 5

    .line 636
    check-cast p0, Landroid/app/RemoteInput;

    .line 637
    new-instance v0, Landroidx/core/app/RemoteInput$Builder;

    .line 638
    invoke-virtual {p0}, Landroid/app/RemoteInput;->getResultKey()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/core/app/RemoteInput$Builder;-><init>(Ljava/lang/String;)V

    .line 639
    invoke-virtual {p0}, Landroid/app/RemoteInput;->getLabel()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/core/app/RemoteInput$Builder;->setLabel(Ljava/lang/CharSequence;)Landroidx/core/app/RemoteInput$Builder;

    move-result-object v0

    .line 640
    invoke-virtual {p0}, Landroid/app/RemoteInput;->getChoices()[Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/core/app/RemoteInput$Builder;->setChoices([Ljava/lang/CharSequence;)Landroidx/core/app/RemoteInput$Builder;

    move-result-object v0

    .line 641
    invoke-virtual {p0}, Landroid/app/RemoteInput;->getAllowFreeFormInput()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/core/app/RemoteInput$Builder;->setAllowFreeFormInput(Z)Landroidx/core/app/RemoteInput$Builder;

    move-result-object v0

    .line 642
    invoke-virtual {p0}, Landroid/app/RemoteInput;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/core/app/RemoteInput$Builder;->addExtras(Landroid/os/Bundle;)Landroidx/core/app/RemoteInput$Builder;

    move-result-object v0

    .line 643
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_4c

    .line 644
    invoke-static {p0}, Landroidx/core/app/RemoteInput$Api26Impl;->getAllowedDataTypes(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    if-eqz v1, :cond_4c

    .line 646
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const/4 v3, 0x1

    .line 647
    invoke-virtual {v0, v2, v3}, Landroidx/core/app/RemoteInput$Builder;->setAllowDataType(Ljava/lang/String;Z)Landroidx/core/app/RemoteInput$Builder;

    goto :goto_3b

    .line 651
    :cond_4c
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1d

    if-lt v1, v2, :cond_59

    .line 652
    invoke-static {p0}, Landroidx/core/app/RemoteInput$Api29Impl;->getEditChoicesBeforeSending(Ljava/lang/Object;)I

    move-result p0

    invoke-virtual {v0, p0}, Landroidx/core/app/RemoteInput$Builder;->setEditChoicesBeforeSending(I)Landroidx/core/app/RemoteInput$Builder;

    .line 654
    :cond_59
    invoke-virtual {v0}, Landroidx/core/app/RemoteInput$Builder;->build()Landroidx/core/app/RemoteInput;

    move-result-object p0

    return-object p0
.end method

.method static getResultsFromIntent(Landroid/content/Intent;)Landroid/os/Bundle;
    .registers 1

    .line 626
    invoke-static {p0}, Landroid/app/RemoteInput;->getResultsFromIntent(Landroid/content/Intent;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

###### Class androidx.core.app.RemoteInput.Api26Impl (androidx.core.app.RemoteInput$Api26Impl)
.class Landroidx/core/app/RemoteInput$Api26Impl;
.super Ljava/lang/Object;
.source "RemoteInput.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/app/RemoteInput;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Api26Impl"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 590
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static addDataResultToIntent(Landroidx/core/app/RemoteInput;Landroid/content/Intent;Ljava/util/Map;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/core/app/RemoteInput;",
            "Landroid/content/Intent;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    .line 608
    invoke-static {p0}, Landroidx/core/app/RemoteInput;->fromCompat(Landroidx/core/app/RemoteInput;)Landroid/app/RemoteInput;

    move-result-object p0

    invoke-static {p0, p1, p2}, Landroid/app/RemoteInput;->addDataResultToIntent(Landroid/app/RemoteInput;Landroid/content/Intent;Ljava/util/Map;)V

    return-void
.end method

.method static getAllowedDataTypes(Ljava/lang/Object;)Ljava/util/Set;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 602
    check-cast p0, Landroid/app/RemoteInput;

    invoke-virtual {p0}, Landroid/app/RemoteInput;->getAllowedDataTypes()Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method static getDataResultsFromIntent(Landroid/content/Intent;Ljava/lang/String;)Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    .line 597
    invoke-static {p0, p1}, Landroid/app/RemoteInput;->getDataResultsFromIntent(Landroid/content/Intent;Ljava/lang/String;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method static setAllowDataType(Landroid/app/RemoteInput$Builder;Ljava/lang/String;Z)Landroid/app/RemoteInput$Builder;
    .registers 3

    .line 614
    invoke-virtual {p0, p1, p2}, Landroid/app/RemoteInput$Builder;->setAllowDataType(Ljava/lang/String;Z)Landroid/app/RemoteInput$Builder;

    move-result-object p0

    return-object p0
.end method

###### Class androidx.core.app.RemoteInput.Api28Impl (androidx.core.app.RemoteInput$Api28Impl)
.class Landroidx/core/app/RemoteInput$Api28Impl;
.super Ljava/lang/Object;
.source "RemoteInput.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/app/RemoteInput;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Api28Impl"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 699
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getResultsSource(Landroid/content/Intent;)I
    .registers 1

    .line 710
    invoke-static {p0}, Landroid/app/RemoteInput;->getResultsSource(Landroid/content/Intent;)I

    move-result p0

    return p0
.end method

.method static setResultsSource(Landroid/content/Intent;I)V
    .registers 2

    .line 705
    invoke-static {p0, p1}, Landroid/app/RemoteInput;->setResultsSource(Landroid/content/Intent;I)V

    return-void
.end method

###### Class androidx.core.app.RemoteInput.Api29Impl (androidx.core.app.RemoteInput$Api29Impl)
.class Landroidx/core/app/RemoteInput$Api29Impl;
.super Ljava/lang/Object;
.source "RemoteInput.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/app/RemoteInput;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Api29Impl"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 681
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getEditChoicesBeforeSending(Ljava/lang/Object;)I
    .registers 1

    .line 687
    check-cast p0, Landroid/app/RemoteInput;

    invoke-virtual {p0}, Landroid/app/RemoteInput;->getEditChoicesBeforeSending()I

    move-result p0

    return p0
.end method

.method static setEditChoicesBeforeSending(Landroid/app/RemoteInput$Builder;I)Landroid/app/RemoteInput$Builder;
    .registers 2

    .line 693
    invoke-virtual {p0, p1}, Landroid/app/RemoteInput$Builder;->setEditChoicesBeforeSending(I)Landroid/app/RemoteInput$Builder;

    move-result-object p0

    return-object p0
.end method

###### Class androidx.core.app.RemoteInput.Builder (androidx.core.app.RemoteInput$Builder)
.class public final Landroidx/core/app/RemoteInput$Builder;
.super Ljava/lang/Object;
.source "RemoteInput.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/app/RemoteInput;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mAllowFreeFormTextInput:Z

.field private final mAllowedDataTypes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mChoices:[Ljava/lang/CharSequence;

.field private mEditChoicesBeforeSending:I

.field private final mExtras:Landroid/os/Bundle;

.field private mLabel:Ljava/lang/CharSequence;

.field private final mResultKey:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    .line 197
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 184
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroidx/core/app/RemoteInput$Builder;->mAllowedDataTypes:Ljava/util/Set;

    .line 185
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroidx/core/app/RemoteInput$Builder;->mExtras:Landroid/os/Bundle;

    const/4 v0, 0x1

    .line 188
    iput-boolean v0, p0, Landroidx/core/app/RemoteInput$Builder;->mAllowFreeFormTextInput:Z

    const/4 v0, 0x0

    .line 189
    iput v0, p0, Landroidx/core/app/RemoteInput$Builder;->mEditChoicesBeforeSending:I

    if-eqz p1, :cond_1c

    .line 201
    iput-object p1, p0, Landroidx/core/app/RemoteInput$Builder;->mResultKey:Ljava/lang/String;

    return-void

    .line 199
    :cond_1c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Result key can\'t be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public addExtras(Landroid/os/Bundle;)Landroidx/core/app/RemoteInput$Builder;
    .registers 3

    if-eqz p1, :cond_7

    .line 293
    iget-object v0, p0, Landroidx/core/app/RemoteInput$Builder;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    :cond_7
    return-object p0
.end method

.method public build()Landroidx/core/app/RemoteInput;
    .registers 9

    .line 314
    new-instance v0, Landroidx/core/app/RemoteInput;

    iget-object v1, p0, Landroidx/core/app/RemoteInput$Builder;->mResultKey:Ljava/lang/String;

    iget-object v2, p0, Landroidx/core/app/RemoteInput$Builder;->mLabel:Ljava/lang/CharSequence;

    iget-object v3, p0, Landroidx/core/app/RemoteInput$Builder;->mChoices:[Ljava/lang/CharSequence;

    iget-boolean v4, p0, Landroidx/core/app/RemoteInput$Builder;->mAllowFreeFormTextInput:Z

    iget v5, p0, Landroidx/core/app/RemoteInput$Builder;->mEditChoicesBeforeSending:I

    iget-object v6, p0, Landroidx/core/app/RemoteInput$Builder;->mExtras:Landroid/os/Bundle;

    iget-object v7, p0, Landroidx/core/app/RemoteInput$Builder;->mAllowedDataTypes:Ljava/util/Set;

    invoke-direct/range {v0 .. v7}, Landroidx/core/app/RemoteInput;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;[Ljava/lang/CharSequence;ZILandroid/os/Bundle;Ljava/util/Set;)V

    return-object v0
.end method

.method public getExtras()Landroid/os/Bundle;
    .registers 2

    .line 305
    iget-object v0, p0, Landroidx/core/app/RemoteInput$Builder;->mExtras:Landroid/os/Bundle;

    return-object v0
.end method

.method public setAllowDataType(Ljava/lang/String;Z)Landroidx/core/app/RemoteInput$Builder;
    .registers 3

    if-eqz p2, :cond_8

    .line 247
    iget-object p2, p0, Landroidx/core/app/RemoteInput$Builder;->mAllowedDataTypes:Ljava/util/Set;

    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object p0

    .line 249
    :cond_8
    iget-object p2, p0, Landroidx/core/app/RemoteInput$Builder;->mAllowedDataTypes:Ljava/util/Set;

    invoke-interface {p2, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public setAllowFreeFormInput(Z)Landroidx/core/app/RemoteInput$Builder;
    .registers 2

    .line 266
    iput-boolean p1, p0, Landroidx/core/app/RemoteInput$Builder;->mAllowFreeFormTextInput:Z

    return-object p0
.end method

.method public setChoices([Ljava/lang/CharSequence;)Landroidx/core/app/RemoteInput$Builder;
    .registers 2

    .line 230
    iput-object p1, p0, Landroidx/core/app/RemoteInput$Builder;->mChoices:[Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setEditChoicesBeforeSending(I)Landroidx/core/app/RemoteInput$Builder;
    .registers 2

    .line 279
    iput p1, p0, Landroidx/core/app/RemoteInput$Builder;->mEditChoicesBeforeSending:I

    return-object p0
.end method

.method public setLabel(Ljava/lang/CharSequence;)Landroidx/core/app/RemoteInput$Builder;
    .registers 2

    .line 212
    iput-object p1, p0, Landroidx/core/app/RemoteInput$Builder;->mLabel:Ljava/lang/CharSequence;

    return-object p0
.end method

###### Class androidx.core.app.RemoteInput.EditChoicesBeforeSending (androidx.core.app.RemoteInput$EditChoicesBeforeSending)
.class public interface abstract annotation Landroidx/core/app/RemoteInput$EditChoicesBeforeSending;
.super Ljava/lang/Object;
.source "RemoteInput.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/app/RemoteInput;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2609
    name = "EditChoicesBeforeSending"
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation

###### Class androidx.core.app.RemoteInput.Source (androidx.core.app.RemoteInput$Source)
.class public interface abstract annotation Landroidx/core/app/RemoteInput$Source;
.super Ljava/lang/Object;
.source "RemoteInput.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/app/RemoteInput;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2609
    name = "Source"
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation
