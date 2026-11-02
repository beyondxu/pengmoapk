###### Class androidx.core.view.inputmethod.InputConnectionCompat (androidx.core.view.inputmethod.InputConnectionCompat)
.class public final Landroidx/core/view/inputmethod/InputConnectionCompat;
.super Ljava/lang/Object;
.source "InputConnectionCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/view/inputmethod/InputConnectionCompat$OnCommitContentListener;,
        Landroidx/core/view/inputmethod/InputConnectionCompat$Api25Impl;
    }
.end annotation


# static fields
.field private static final COMMIT_CONTENT_ACTION:Ljava/lang/String; = "androidx.core.view.inputmethod.InputConnectionCompat.COMMIT_CONTENT"

.field private static final COMMIT_CONTENT_CONTENT_URI_INTEROP_KEY:Ljava/lang/String; = "android.support.v13.view.inputmethod.InputConnectionCompat.CONTENT_URI"

.field private static final COMMIT_CONTENT_CONTENT_URI_KEY:Ljava/lang/String; = "androidx.core.view.inputmethod.InputConnectionCompat.CONTENT_URI"

.field private static final COMMIT_CONTENT_DESCRIPTION_INTEROP_KEY:Ljava/lang/String; = "android.support.v13.view.inputmethod.InputConnectionCompat.CONTENT_DESCRIPTION"

.field private static final COMMIT_CONTENT_DESCRIPTION_KEY:Ljava/lang/String; = "androidx.core.view.inputmethod.InputConnectionCompat.CONTENT_DESCRIPTION"

.field private static final COMMIT_CONTENT_FLAGS_INTEROP_KEY:Ljava/lang/String; = "android.support.v13.view.inputmethod.InputConnectionCompat.CONTENT_FLAGS"

.field private static final COMMIT_CONTENT_FLAGS_KEY:Ljava/lang/String; = "androidx.core.view.inputmethod.InputConnectionCompat.CONTENT_FLAGS"

.field private static final COMMIT_CONTENT_INTEROP_ACTION:Ljava/lang/String; = "android.support.v13.view.inputmethod.InputConnectionCompat.COMMIT_CONTENT"

.field private static final COMMIT_CONTENT_LINK_URI_INTEROP_KEY:Ljava/lang/String; = "android.support.v13.view.inputmethod.InputConnectionCompat.CONTENT_LINK_URI"

.field private static final COMMIT_CONTENT_LINK_URI_KEY:Ljava/lang/String; = "androidx.core.view.inputmethod.InputConnectionCompat.CONTENT_LINK_URI"

.field private static final COMMIT_CONTENT_OPTS_INTEROP_KEY:Ljava/lang/String; = "android.support.v13.view.inputmethod.InputConnectionCompat.CONTENT_OPTS"

.field private static final COMMIT_CONTENT_OPTS_KEY:Ljava/lang/String; = "androidx.core.view.inputmethod.InputConnectionCompat.CONTENT_OPTS"

.field private static final COMMIT_CONTENT_RESULT_INTEROP_RECEIVER_KEY:Ljava/lang/String; = "android.support.v13.view.inputmethod.InputConnectionCompat.CONTENT_RESULT_RECEIVER"

.field private static final COMMIT_CONTENT_RESULT_RECEIVER_KEY:Ljava/lang/String; = "androidx.core.view.inputmethod.InputConnectionCompat.CONTENT_RESULT_RECEIVER"

.field private static final EXTRA_INPUT_CONTENT_INFO:Ljava/lang/String; = "androidx.core.view.extra.INPUT_CONTENT_INFO"

.field public static final INPUT_CONTENT_GRANT_READ_URI_PERMISSION:I = 0x1

.field private static final LOG_TAG:Ljava/lang/String; = "InputConnectionCompat"


# direct methods
.method public constructor <init>()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 404
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static commitContent(Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;Landroidx/core/view/inputmethod/InputContentInfoCompat;ILandroid/os/Bundle;)Z
    .registers 8

    .line 152
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x19

    if-lt v0, v1, :cond_13

    .line 154
    invoke-virtual {p2}, Landroidx/core/view/inputmethod/InputContentInfoCompat;->unwrap()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Landroidx/tracing/Trace$$ExternalSyntheticApiModelOutline0;->m(Ljava/lang/Object;)Landroid/view/inputmethod/InputContentInfo;

    move-result-object p1

    .line 153
    invoke-static {p0, p1, p3, p4}, Landroidx/core/view/inputmethod/InputConnectionCompat$Api25Impl;->commitContent(Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/InputContentInfo;ILandroid/os/Bundle;)Z

    move-result p0

    return p0

    .line 156
    :cond_13
    invoke-static {p1}, Landroidx/core/view/inputmethod/EditorInfoCompat;->getProtocol(Landroid/view/inputmethod/EditorInfo;)I

    move-result p1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_22

    const/4 v0, 0x3

    const/4 v1, 0x0

    if-eq p1, v0, :cond_23

    const/4 v0, 0x4

    if-eq p1, v0, :cond_23

    return v1

    :cond_22
    const/4 v1, 0x1

    .line 171
    :cond_23
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    if-eqz v1, :cond_2d

    .line 173
    const-string v0, "android.support.v13.view.inputmethod.InputConnectionCompat.CONTENT_URI"

    goto :goto_2f

    .line 174
    :cond_2d
    const-string v0, "androidx.core.view.inputmethod.InputConnectionCompat.CONTENT_URI"

    .line 175
    :goto_2f
    invoke-virtual {p2}, Landroidx/core/view/inputmethod/InputContentInfoCompat;->getContentUri()Landroid/net/Uri;

    move-result-object v2

    .line 172
    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    if-eqz v1, :cond_3b

    .line 177
    const-string v0, "android.support.v13.view.inputmethod.InputConnectionCompat.CONTENT_DESCRIPTION"

    goto :goto_3d

    .line 178
    :cond_3b
    const-string v0, "androidx.core.view.inputmethod.InputConnectionCompat.CONTENT_DESCRIPTION"

    .line 179
    :goto_3d
    invoke-virtual {p2}, Landroidx/core/view/inputmethod/InputContentInfoCompat;->getDescription()Landroid/content/ClipDescription;

    move-result-object v2

    .line 176
    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    if-eqz v1, :cond_49

    .line 181
    const-string v0, "android.support.v13.view.inputmethod.InputConnectionCompat.CONTENT_LINK_URI"

    goto :goto_4b

    .line 182
    :cond_49
    const-string v0, "androidx.core.view.inputmethod.InputConnectionCompat.CONTENT_LINK_URI"

    .line 183
    :goto_4b
    invoke-virtual {p2}, Landroidx/core/view/inputmethod/InputContentInfoCompat;->getLinkUri()Landroid/net/Uri;

    move-result-object p2

    .line 180
    invoke-virtual {p1, v0, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    if-eqz v1, :cond_57

    .line 185
    const-string p2, "android.support.v13.view.inputmethod.InputConnectionCompat.CONTENT_FLAGS"

    goto :goto_59

    .line 186
    :cond_57
    const-string p2, "androidx.core.view.inputmethod.InputConnectionCompat.CONTENT_FLAGS"

    .line 184
    :goto_59
    invoke-virtual {p1, p2, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    if-eqz v1, :cond_61

    .line 189
    const-string p2, "android.support.v13.view.inputmethod.InputConnectionCompat.CONTENT_OPTS"

    goto :goto_63

    .line 190
    :cond_61
    const-string p2, "androidx.core.view.inputmethod.InputConnectionCompat.CONTENT_OPTS"

    .line 188
    :goto_63
    invoke-virtual {p1, p2, p4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    if-eqz v1, :cond_6b

    .line 194
    const-string p2, "android.support.v13.view.inputmethod.InputConnectionCompat.COMMIT_CONTENT"

    goto :goto_6d

    .line 195
    :cond_6b
    const-string p2, "androidx.core.view.inputmethod.InputConnectionCompat.COMMIT_CONTENT"

    .line 193
    :goto_6d
    invoke-interface {p0, p2, p1}, Landroid/view/inputmethod/InputConnection;->performPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result p0

    return p0
.end method

.method private static createOnCommitContentListenerUsingPerformReceiveContent(Landroid/view/View;)Landroidx/core/view/inputmethod/InputConnectionCompat$OnCommitContentListener;
    .registers 2

    .line 361
    invoke-static {p0}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 362
    new-instance v0, Landroidx/core/view/inputmethod/InputConnectionCompat$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Landroidx/core/view/inputmethod/InputConnectionCompat$$ExternalSyntheticLambda1;-><init>(Landroid/view/View;)V

    return-object v0
.end method

.method public static createWrapper(Landroid/view/View;Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .registers 3

    .line 349
    invoke-static {p0}, Landroidx/core/view/inputmethod/InputConnectionCompat;->createOnCommitContentListenerUsingPerformReceiveContent(Landroid/view/View;)Landroidx/core/view/inputmethod/InputConnectionCompat$OnCommitContentListener;

    move-result-object p0

    .line 350
    invoke-static {p1, p2, p0}, Landroidx/core/view/inputmethod/InputConnectionCompat;->createWrapper(Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;Landroidx/core/view/inputmethod/InputConnectionCompat$OnCommitContentListener;)Landroid/view/inputmethod/InputConnection;

    move-result-object p0

    return-object p0
.end method

.method public static createWrapper(Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;Landroidx/core/view/inputmethod/InputConnectionCompat$OnCommitContentListener;)Landroid/view/inputmethod/InputConnection;
    .registers 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 273
    const-string v0, "inputConnection must be non-null"

    invoke-static {p0, v0}, Landroidx/core/util/ObjectsCompat;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 274
    const-string v0, "editorInfo must be non-null"

    invoke-static {p1, v0}, Landroidx/core/util/ObjectsCompat;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 275
    const-string v0, "onCommitContentListener must be non-null"

    invoke-static {p2, v0}, Landroidx/core/util/ObjectsCompat;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 278
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x19

    const/4 v2, 0x0

    if-lt v0, v1, :cond_1c

    .line 280
    new-instance p1, Landroidx/core/view/inputmethod/InputConnectionCompat$1;

    invoke-direct {p1, p0, v2, p2}, Landroidx/core/view/inputmethod/InputConnectionCompat$1;-><init>(Landroid/view/inputmethod/InputConnection;ZLandroidx/core/view/inputmethod/InputConnectionCompat$OnCommitContentListener;)V

    return-object p1

    .line 293
    :cond_1c
    invoke-static {p1}, Landroidx/core/view/inputmethod/EditorInfoCompat;->getContentMimeTypes(Landroid/view/inputmethod/EditorInfo;)[Ljava/lang/String;

    move-result-object p1

    .line 294
    array-length p1, p1

    if-nez p1, :cond_24

    return-object p0

    .line 298
    :cond_24
    new-instance p1, Landroidx/core/view/inputmethod/InputConnectionCompat$2;

    invoke-direct {p1, p0, v2, p2}, Landroidx/core/view/inputmethod/InputConnectionCompat$2;-><init>(Landroid/view/inputmethod/InputConnection;ZLandroidx/core/view/inputmethod/InputConnectionCompat$OnCommitContentListener;)V

    return-object p1
.end method

.method static handlePerformPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;Landroidx/core/view/inputmethod/InputConnectionCompat$OnCommitContentListener;)Z
    .registers 10

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 97
    :cond_4
    const-string v1, "androidx.core.view.inputmethod.InputConnectionCompat.COMMIT_CONTENT"

    invoke-static {v1, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_e

    const/4 p0, 0x0

    goto :goto_17

    .line 99
    :cond_e
    const-string v1, "android.support.v13.view.inputmethod.InputConnectionCompat.COMMIT_CONTENT"

    invoke-static {v1, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_81

    const/4 p0, 0x1

    :goto_17
    const/4 v1, 0x0

    if-eqz p0, :cond_1d

    .line 108
    :try_start_1a
    const-string v2, "android.support.v13.view.inputmethod.InputConnectionCompat.CONTENT_RESULT_RECEIVER"

    goto :goto_1f

    .line 109
    :cond_1d
    const-string v2, "androidx.core.view.inputmethod.InputConnectionCompat.CONTENT_RESULT_RECEIVER"

    .line 107
    :goto_1f
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/os/ResultReceiver;
    :try_end_25
    .catchall {:try_start_1a .. :try_end_25} :catchall_79

    if-eqz p0, :cond_2a

    .line 111
    :try_start_27
    const-string v3, "android.support.v13.view.inputmethod.InputConnectionCompat.CONTENT_URI"

    goto :goto_2c

    .line 112
    :cond_2a
    const-string v3, "androidx.core.view.inputmethod.InputConnectionCompat.CONTENT_URI"

    .line 110
    :goto_2c
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    if-eqz p0, :cond_37

    .line 114
    const-string v4, "android.support.v13.view.inputmethod.InputConnectionCompat.CONTENT_DESCRIPTION"

    goto :goto_39

    .line 115
    :cond_37
    const-string v4, "androidx.core.view.inputmethod.InputConnectionCompat.CONTENT_DESCRIPTION"

    .line 113
    :goto_39
    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/content/ClipDescription;

    if-eqz p0, :cond_44

    .line 117
    const-string v5, "android.support.v13.view.inputmethod.InputConnectionCompat.CONTENT_LINK_URI"

    goto :goto_46

    .line 118
    :cond_44
    const-string v5, "androidx.core.view.inputmethod.InputConnectionCompat.CONTENT_LINK_URI"

    .line 116
    :goto_46
    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Landroid/net/Uri;

    if-eqz p0, :cond_51

    .line 120
    const-string v6, "android.support.v13.view.inputmethod.InputConnectionCompat.CONTENT_FLAGS"

    goto :goto_53

    .line 121
    :cond_51
    const-string v6, "androidx.core.view.inputmethod.InputConnectionCompat.CONTENT_FLAGS"

    .line 119
    :goto_53
    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    if-eqz p0, :cond_5c

    .line 123
    const-string p0, "android.support.v13.view.inputmethod.InputConnectionCompat.CONTENT_OPTS"

    goto :goto_5e

    .line 124
    :cond_5c
    const-string p0, "androidx.core.view.inputmethod.InputConnectionCompat.CONTENT_OPTS"

    .line 122
    :goto_5e
    invoke-virtual {p1, p0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p0

    check-cast p0, Landroid/os/Bundle;

    if-eqz v3, :cond_71

    if-eqz v4, :cond_71

    .line 126
    new-instance p1, Landroidx/core/view/inputmethod/InputContentInfoCompat;

    invoke-direct {p1, v3, v4, v5}, Landroidx/core/view/inputmethod/InputContentInfoCompat;-><init>(Landroid/net/Uri;Landroid/content/ClipDescription;Landroid/net/Uri;)V

    .line 128
    invoke-interface {p2, p1, v6, p0}, Landroidx/core/view/inputmethod/InputConnectionCompat$OnCommitContentListener;->onCommitContent(Landroidx/core/view/inputmethod/InputContentInfoCompat;ILandroid/os/Bundle;)Z

    move-result v0
    :try_end_71
    .catchall {:try_start_27 .. :try_end_71} :catchall_77

    :cond_71
    if-eqz v2, :cond_76

    .line 132
    invoke-virtual {v2, v0, v1}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    :cond_76
    return v0

    :catchall_77
    move-exception p0

    goto :goto_7b

    :catchall_79
    move-exception p0

    move-object v2, v1

    :goto_7b
    if-eqz v2, :cond_80

    invoke-virtual {v2, v0, v1}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    .line 134
    :cond_80
    throw p0

    :cond_81
    return v0
.end method

.method static synthetic lambda$createOnCommitContentListenerUsingPerformReceiveContent$0(Landroid/view/View;Landroidx/core/view/inputmethod/InputContentInfoCompat;ILandroid/os/Bundle;)Z
    .registers 9

    .line 364
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x19

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-lt v0, v1, :cond_31

    and-int/2addr p2, v3

    if-eqz p2, :cond_31

    .line 367
    :try_start_b
    invoke-virtual {p1}, Landroidx/core/view/inputmethod/InputContentInfoCompat;->requestPermission()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_e} :catch_28

    .line 379
    invoke-virtual {p1}, Landroidx/core/view/inputmethod/InputContentInfoCompat;->unwrap()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/Parcelable;

    if-nez p3, :cond_1c

    .line 380
    new-instance p3, Landroid/os/Bundle;

    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    goto :goto_22

    :cond_1c
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, p3}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    move-object p3, v0

    .line 381
    :goto_22
    const-string v0, "androidx.core.view.extra.INPUT_CONTENT_INFO"

    invoke-virtual {p3, v0, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto :goto_31

    :catch_28
    move-exception p0

    .line 369
    const-string p1, "InputConnectionCompat"

    const-string p2, "Can\'t insert content from IME; requestPermission() failed"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v2

    .line 383
    :cond_31
    :goto_31
    new-instance p2, Landroid/content/ClipData;

    invoke-virtual {p1}, Landroidx/core/view/inputmethod/InputContentInfoCompat;->getDescription()Landroid/content/ClipDescription;

    move-result-object v0

    new-instance v1, Landroid/content/ClipData$Item;

    .line 384
    invoke-virtual {p1}, Landroidx/core/view/inputmethod/InputContentInfoCompat;->getContentUri()Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v1, v4}, Landroid/content/ClipData$Item;-><init>(Landroid/net/Uri;)V

    invoke-direct {p2, v0, v1}, Landroid/content/ClipData;-><init>(Landroid/content/ClipDescription;Landroid/content/ClipData$Item;)V

    .line 385
    new-instance v0, Landroidx/core/view/ContentInfoCompat$Builder;

    const/4 v1, 0x2

    invoke-direct {v0, p2, v1}, Landroidx/core/view/ContentInfoCompat$Builder;-><init>(Landroid/content/ClipData;I)V

    .line 386
    invoke-virtual {p1}, Landroidx/core/view/inputmethod/InputContentInfoCompat;->getLinkUri()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/core/view/ContentInfoCompat$Builder;->setLinkUri(Landroid/net/Uri;)Landroidx/core/view/ContentInfoCompat$Builder;

    move-result-object p1

    .line 387
    invoke-virtual {p1, p3}, Landroidx/core/view/ContentInfoCompat$Builder;->setExtras(Landroid/os/Bundle;)Landroidx/core/view/ContentInfoCompat$Builder;

    move-result-object p1

    .line 388
    invoke-virtual {p1}, Landroidx/core/view/ContentInfoCompat$Builder;->build()Landroidx/core/view/ContentInfoCompat;

    move-result-object p1

    .line 389
    invoke-static {p0, p1}, Landroidx/core/view/ViewCompat;->performReceiveContent(Landroid/view/View;Landroidx/core/view/ContentInfoCompat;)Landroidx/core/view/ContentInfoCompat;

    move-result-object p0

    if-nez p0, :cond_60

    return v3

    :cond_60
    return v2
.end method

###### Class androidx.core.view.inputmethod.InputConnectionCompat.AnonymousClass1 (androidx.core.view.inputmethod.InputConnectionCompat$1)
.class Landroidx/core/view/inputmethod/InputConnectionCompat$1;
.super Landroid/view/inputmethod/InputConnectionWrapper;
.source "InputConnectionCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/core/view/inputmethod/InputConnectionCompat;->createWrapper(Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;Landroidx/core/view/inputmethod/InputConnectionCompat$OnCommitContentListener;)Landroid/view/inputmethod/InputConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$listener:Landroidx/core/view/inputmethod/InputConnectionCompat$OnCommitContentListener;


# direct methods
.method constructor <init>(Landroid/view/inputmethod/InputConnection;ZLandroidx/core/view/inputmethod/InputConnectionCompat$OnCommitContentListener;)V
    .registers 4

    .line 280
    iput-object p3, p0, Landroidx/core/view/inputmethod/InputConnectionCompat$1;->val$listener:Landroidx/core/view/inputmethod/InputConnectionCompat$OnCommitContentListener;

    invoke-direct {p0, p1, p2}, Landroid/view/inputmethod/InputConnectionWrapper;-><init>(Landroid/view/inputmethod/InputConnection;Z)V

    return-void
.end method


# virtual methods
.method public commitContent(Landroid/view/inputmethod/InputContentInfo;ILandroid/os/Bundle;)Z
    .registers 6

    .line 285
    iget-object v0, p0, Landroidx/core/view/inputmethod/InputConnectionCompat$1;->val$listener:Landroidx/core/view/inputmethod/InputConnectionCompat$OnCommitContentListener;

    invoke-static {p1}, Landroidx/core/view/inputmethod/InputContentInfoCompat;->wrap(Ljava/lang/Object;)Landroidx/core/view/inputmethod/InputContentInfoCompat;

    move-result-object v1

    invoke-interface {v0, v1, p2, p3}, Landroidx/core/view/inputmethod/InputConnectionCompat$OnCommitContentListener;->onCommitContent(Landroidx/core/view/inputmethod/InputContentInfoCompat;ILandroid/os/Bundle;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 p1, 0x1

    return p1

    .line 289
    :cond_e
    invoke-super {p0, p1, p2, p3}, Landroid/view/inputmethod/InputConnectionWrapper;->commitContent(Landroid/view/inputmethod/InputContentInfo;ILandroid/os/Bundle;)Z

    move-result p1

    return p1
.end method

###### Class androidx.core.view.inputmethod.InputConnectionCompat.AnonymousClass2 (androidx.core.view.inputmethod.InputConnectionCompat$2)
.class Landroidx/core/view/inputmethod/InputConnectionCompat$2;
.super Landroid/view/inputmethod/InputConnectionWrapper;
.source "InputConnectionCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/core/view/inputmethod/InputConnectionCompat;->createWrapper(Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;Landroidx/core/view/inputmethod/InputConnectionCompat$OnCommitContentListener;)Landroid/view/inputmethod/InputConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$listener:Landroidx/core/view/inputmethod/InputConnectionCompat$OnCommitContentListener;


# direct methods
.method constructor <init>(Landroid/view/inputmethod/InputConnection;ZLandroidx/core/view/inputmethod/InputConnectionCompat$OnCommitContentListener;)V
    .registers 4

    .line 298
    iput-object p3, p0, Landroidx/core/view/inputmethod/InputConnectionCompat$2;->val$listener:Landroidx/core/view/inputmethod/InputConnectionCompat$OnCommitContentListener;

    invoke-direct {p0, p1, p2}, Landroid/view/inputmethod/InputConnectionWrapper;-><init>(Landroid/view/inputmethod/InputConnection;Z)V

    return-void
.end method


# virtual methods
.method public performPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)Z
    .registers 4

    .line 301
    iget-object v0, p0, Landroidx/core/view/inputmethod/InputConnectionCompat$2;->val$listener:Landroidx/core/view/inputmethod/InputConnectionCompat$OnCommitContentListener;

    invoke-static {p1, p2, v0}, Landroidx/core/view/inputmethod/InputConnectionCompat;->handlePerformPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;Landroidx/core/view/inputmethod/InputConnectionCompat$OnCommitContentListener;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 p1, 0x1

    return p1

    .line 304
    :cond_a
    invoke-super {p0, p1, p2}, Landroid/view/inputmethod/InputConnectionWrapper;->performPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result p1

    return p1
.end method

###### Class androidx.core.view.inputmethod.InputConnectionCompat.Api25Impl (androidx.core.view.inputmethod.InputConnectionCompat$Api25Impl)
.class Landroidx/core/view/inputmethod/InputConnectionCompat$Api25Impl;
.super Ljava/lang/Object;
.source "InputConnectionCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/view/inputmethod/InputConnectionCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Api25Impl"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 409
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static commitContent(Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/InputContentInfo;ILandroid/os/Bundle;)Z
    .registers 4

    .line 416
    invoke-interface {p0, p1, p2, p3}, Landroid/view/inputmethod/InputConnection;->commitContent(Landroid/view/inputmethod/InputContentInfo;ILandroid/os/Bundle;)Z

    move-result p0

    return p0
.end method

###### Class androidx.core.view.inputmethod.InputConnectionCompat.OnCommitContentListener (androidx.core.view.inputmethod.InputConnectionCompat$OnCommitContentListener)
.class public interface abstract Landroidx/core/view/inputmethod/InputConnectionCompat$OnCommitContentListener;
.super Ljava/lang/Object;
.source "InputConnectionCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/view/inputmethod/InputConnectionCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnCommitContentListener"
.end annotation


# virtual methods
.method public abstract onCommitContent(Landroidx/core/view/inputmethod/InputContentInfoCompat;ILandroid/os/Bundle;)Z
.end method

###### Class androidx.core.view.inputmethod.InputConnectionCompat$$ExternalSyntheticLambda1 (androidx.core.view.inputmethod.InputConnectionCompat$$ExternalSyntheticLambda1)
.class public final synthetic Landroidx/core/view/inputmethod/InputConnectionCompat$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroidx/core/view/inputmethod/InputConnectionCompat$OnCommitContentListener;


# instance fields
.field public final synthetic f$0:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Landroid/view/View;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/core/view/inputmethod/InputConnectionCompat$$ExternalSyntheticLambda1;->f$0:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final onCommitContent(Landroidx/core/view/inputmethod/InputContentInfoCompat;ILandroid/os/Bundle;)Z
    .registers 5

    .line 0
    iget-object v0, p0, Landroidx/core/view/inputmethod/InputConnectionCompat$$ExternalSyntheticLambda1;->f$0:Landroid/view/View;

    invoke-static {v0, p1, p2, p3}, Landroidx/core/view/inputmethod/InputConnectionCompat;->lambda$createOnCommitContentListenerUsingPerformReceiveContent$0(Landroid/view/View;Landroidx/core/view/inputmethod/InputContentInfoCompat;ILandroid/os/Bundle;)Z

    move-result p1

    return p1
.end method
