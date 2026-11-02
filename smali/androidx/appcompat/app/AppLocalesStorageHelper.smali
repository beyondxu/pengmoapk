###### Class androidx.appcompat.app.AppLocalesStorageHelper (androidx.appcompat.app.AppLocalesStorageHelper)
.class Landroidx/appcompat/app/AppLocalesStorageHelper;
.super Ljava/lang/Object;
.source "AppLocalesStorageHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/app/AppLocalesStorageHelper$SerialExecutor;,
        Landroidx/appcompat/app/AppLocalesStorageHelper$ThreadPerTaskExecutor;
    }
.end annotation


# static fields
.field static final APPLICATION_LOCALES_RECORD_FILE:Ljava/lang/String; = "androidx.appcompat.app.AppCompatDelegate.application_locales_record_file"

.field static final APP_LOCALES_META_DATA_HOLDER_SERVICE_NAME:Ljava/lang/String; = "androidx.appcompat.app.AppLocalesMetadataHolderService"

.field static final LOCALE_RECORD_ATTRIBUTE_TAG:Ljava/lang/String; = "application_locales"

.field static final LOCALE_RECORD_FILE_TAG:Ljava/lang/String; = "locales"

.field static final TAG:Ljava/lang/String; = "AppLocalesStorageHelper"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static persistLocales(Landroid/content/Context;Ljava/lang/String;)V
    .registers 10

    .line 120
    const-string v0, "locales"

    const-string v1, "AppLocalesStorageHelper"

    .line 0
    const-string v2, "Storing App Locales : app-locales: "

    const-string v3, "Storing App Locales : Failed to persist app-locales: "

    .line 120
    const-string v4, ""

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const-string v5, "androidx.appcompat.app.AppCompatDelegate.application_locales_record_file"

    if-eqz v4, :cond_16

    .line 121
    invoke-virtual {p0, v5}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    return-void

    :cond_16
    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 127
    :try_start_18
    invoke-virtual {p0, v5, v6}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object p0
    :try_end_1c
    .catch Ljava/io/FileNotFoundException; {:try_start_18 .. :try_end_1c} :catch_73

    .line 133
    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v5

    const/4 v6, 0x0

    .line 135
    :try_start_21
    invoke-interface {v5, p0, v6}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 136
    const-string v7, "UTF-8"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {v5, v7, v4}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 137
    invoke-interface {v5, v6, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 138
    const-string v4, "application_locales"

    invoke-interface {v5, v6, v4, p1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 139
    invoke-interface {v5, v6, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 140
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 141
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " persisted successfully."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4f
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_4f} :catch_57
    .catchall {:try_start_21 .. :try_end_4f} :catchall_55

    if-eqz p0, :cond_6c

    .line 149
    :try_start_51
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->close()V
    :try_end_54
    .catch Ljava/io/IOException; {:try_start_51 .. :try_end_54} :catch_6c

    return-void

    :catchall_55
    move-exception p1

    goto :goto_6d

    :catch_57
    move-exception v0

    .line 144
    :try_start_58
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_67
    .catchall {:try_start_58 .. :try_end_67} :catchall_55

    if-eqz p0, :cond_6c

    .line 149
    :try_start_69
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->close()V
    :try_end_6c
    .catch Ljava/io/IOException; {:try_start_69 .. :try_end_6c} :catch_6c

    :catch_6c
    :cond_6c
    return-void

    :goto_6d
    if-eqz p0, :cond_72

    :try_start_6f
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->close()V
    :try_end_72
    .catch Ljava/io/IOException; {:try_start_6f .. :try_end_72} :catch_72

    .line 154
    :catch_72
    :cond_72
    throw p1

    .line 129
    :catch_73
    new-array p0, v4, [Ljava/lang/Object;

    aput-object v5, p0, v6

    const-string p1, "Storing App Locales : FileNotFoundException: Cannot open file %s for writing "

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static readLocales(Landroid/content/Context;)Ljava/lang/String;
    .registers 10

    .line 63
    const-string v0, "androidx.appcompat.app.AppCompatDelegate.application_locales_record_file"

    const-string v1, "AppLocalesStorageHelper"

    const-string v2, ""

    .line 67
    :try_start_6
    invoke-virtual {p0, v0}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v3
    :try_end_a
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_a} :catch_74

    .line 74
    :try_start_a
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v4

    .line 75
    const-string v5, "UTF-8"

    invoke-interface {v4, v3, v5}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 77
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v5

    .line 78
    :cond_17
    :goto_17
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v6

    const/4 v7, 0x1

    if-eq v6, v7, :cond_40

    const/4 v7, 0x3

    if-ne v6, v7, :cond_27

    .line 79
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v8

    if-le v8, v5, :cond_40

    :cond_27
    if-eq v6, v7, :cond_17

    const/4 v7, 0x4

    if-ne v6, v7, :cond_2d

    goto :goto_17

    .line 84
    :cond_2d
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    .line 85
    const-string v7, "locales"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_17

    .line 86
    const-string v5, "application_locales"

    const/4 v6, 0x0

    invoke-interface {v4, v6, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_40
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_a .. :try_end_40} :catch_4a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_40} :catch_4a
    .catchall {:try_start_a .. :try_end_40} :catchall_48

    :cond_40
    if-eqz v3, :cond_52

    .line 98
    :goto_42
    :try_start_42
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_45
    .catch Ljava/io/IOException; {:try_start_42 .. :try_end_45} :catch_46

    goto :goto_52

    :catch_46
    nop

    goto :goto_52

    :catchall_48
    move-exception p0

    goto :goto_6e

    .line 92
    :catch_4a
    :try_start_4a
    const-string v4, "Reading app Locales : Unable to parse through file :androidx.appcompat.app.AppCompatDelegate.application_locales_record_file"

    invoke-static {v1, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4f
    .catchall {:try_start_4a .. :try_end_4f} :catchall_48

    if-eqz v3, :cond_52

    goto :goto_42

    .line 105
    :cond_52
    :goto_52
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_6a

    .line 106
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "Reading app Locales : Locales read from file: androidx.appcompat.app.AppCompatDelegate.application_locales_record_file , appLocales: "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6d

    .line 111
    :cond_6a
    invoke-virtual {p0, v0}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    :goto_6d
    return-object v2

    :goto_6e
    if-eqz v3, :cond_73

    .line 98
    :try_start_70
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_73
    .catch Ljava/io/IOException; {:try_start_70 .. :try_end_73} :catch_73

    .line 103
    :catch_73
    :cond_73
    throw p0

    .line 69
    :catch_74
    const-string p0, "Reading app Locales : Locales record file not found: androidx.appcompat.app.AppCompatDelegate.application_locales_record_file"

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2
.end method

.method static syncLocalesToFramework(Landroid/content/Context;)V
    .registers 5

    .line 166
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    if-lt v0, v1, :cond_3c

    .line 167
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "androidx.appcompat.app.AppLocalesMetadataHolderService"

    invoke-direct {v0, p0, v1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 170
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_3c

    .line 175
    invoke-static {}, Landroidx/appcompat/app/AppCompatDelegate;->getApplicationLocales()Landroidx/core/os/LocaleListCompat;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/core/os/LocaleListCompat;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_35

    .line 181
    invoke-static {p0}, Landroidx/appcompat/app/AppLocalesStorageHelper;->readLocales(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 185
    const-string v3, "locale"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_35

    .line 189
    invoke-static {v1}, Landroidx/appcompat/app/AppCompatDelegate$Api24Impl;->localeListForLanguageTags(Ljava/lang/String;)Landroid/os/LocaleList;

    move-result-object v1

    .line 187
    invoke-static {v3, v1}, Landroidx/appcompat/app/AppCompatDelegate$Api33Impl;->localeManagerSetApplicationLocales(Ljava/lang/Object;Landroid/os/LocaleList;)V

    .line 198
    :cond_35
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p0, v0, v2, v2}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    :cond_3c
    return-void
.end method

###### Class androidx.appcompat.app.AppLocalesStorageHelper.SerialExecutor (androidx.appcompat.app.AppLocalesStorageHelper$SerialExecutor)
.class Landroidx/appcompat/app/AppLocalesStorageHelper$SerialExecutor;
.super Ljava/lang/Object;
.source "AppLocalesStorageHelper.java"

# interfaces
.implements Ljava/util/concurrent/Executor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/app/AppLocalesStorageHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SerialExecutor"
.end annotation


# instance fields
.field mActive:Ljava/lang/Runnable;

.field final mExecutor:Ljava/util/concurrent/Executor;

.field private final mLock:Ljava/lang/Object;

.field final mTasks:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/concurrent/Executor;)V
    .registers 3

    .line 226
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 221
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/app/AppLocalesStorageHelper$SerialExecutor;->mLock:Ljava/lang/Object;

    .line 222
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/app/AppLocalesStorageHelper$SerialExecutor;->mTasks:Ljava/util/Queue;

    .line 227
    iput-object p1, p0, Landroidx/appcompat/app/AppLocalesStorageHelper$SerialExecutor;->mExecutor:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/Runnable;)V
    .registers 5

    .line 232
    iget-object v0, p0, Landroidx/appcompat/app/AppLocalesStorageHelper$SerialExecutor;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 233
    :try_start_3
    iget-object v1, p0, Landroidx/appcompat/app/AppLocalesStorageHelper$SerialExecutor;->mTasks:Ljava/util/Queue;

    new-instance v2, Landroidx/appcompat/app/AppLocalesStorageHelper$SerialExecutor$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, p1}, Landroidx/appcompat/app/AppLocalesStorageHelper$SerialExecutor$$ExternalSyntheticLambda0;-><init>(Landroidx/appcompat/app/AppLocalesStorageHelper$SerialExecutor;Ljava/lang/Runnable;)V

    invoke-interface {v1, v2}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 240
    iget-object p1, p0, Landroidx/appcompat/app/AppLocalesStorageHelper$SerialExecutor;->mActive:Ljava/lang/Runnable;

    if-nez p1, :cond_14

    .line 241
    invoke-virtual {p0}, Landroidx/appcompat/app/AppLocalesStorageHelper$SerialExecutor;->scheduleNext()V

    .line 243
    :cond_14
    monitor-exit v0

    return-void

    :catchall_16
    move-exception p1

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

    throw p1
.end method

.method synthetic lambda$execute$0$androidx-appcompat-app-AppLocalesStorageHelper$SerialExecutor(Ljava/lang/Runnable;)V
    .registers 2

    .line 235
    :try_start_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V
    :try_end_3
    .catchall {:try_start_0 .. :try_end_3} :catchall_7

    .line 237
    invoke-virtual {p0}, Landroidx/appcompat/app/AppLocalesStorageHelper$SerialExecutor;->scheduleNext()V

    return-void

    :catchall_7
    move-exception p1

    invoke-virtual {p0}, Landroidx/appcompat/app/AppLocalesStorageHelper$SerialExecutor;->scheduleNext()V

    .line 238
    throw p1
.end method

.method protected scheduleNext()V
    .registers 4

    .line 247
    iget-object v0, p0, Landroidx/appcompat/app/AppLocalesStorageHelper$SerialExecutor;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 248
    :try_start_3
    iget-object v1, p0, Landroidx/appcompat/app/AppLocalesStorageHelper$SerialExecutor;->mTasks:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    iput-object v1, p0, Landroidx/appcompat/app/AppLocalesStorageHelper$SerialExecutor;->mActive:Ljava/lang/Runnable;

    if-eqz v1, :cond_14

    .line 249
    iget-object v2, p0, Landroidx/appcompat/app/AppLocalesStorageHelper$SerialExecutor;->mExecutor:Ljava/util/concurrent/Executor;

    invoke-interface {v2, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 251
    :cond_14
    monitor-exit v0

    return-void

    :catchall_16
    move-exception v1

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

    throw v1
.end method

###### Class androidx.appcompat.app.AppLocalesStorageHelper$SerialExecutor$$ExternalSyntheticLambda0 (androidx.appcompat.app.AppLocalesStorageHelper$SerialExecutor$$ExternalSyntheticLambda0)
.class public final synthetic Landroidx/appcompat/app/AppLocalesStorageHelper$SerialExecutor$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroidx/appcompat/app/AppLocalesStorageHelper$SerialExecutor;

.field public final synthetic f$1:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Landroidx/appcompat/app/AppLocalesStorageHelper$SerialExecutor;Ljava/lang/Runnable;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/appcompat/app/AppLocalesStorageHelper$SerialExecutor$$ExternalSyntheticLambda0;->f$0:Landroidx/appcompat/app/AppLocalesStorageHelper$SerialExecutor;

    iput-object p2, p0, Landroidx/appcompat/app/AppLocalesStorageHelper$SerialExecutor$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 0
    iget-object v0, p0, Landroidx/appcompat/app/AppLocalesStorageHelper$SerialExecutor$$ExternalSyntheticLambda0;->f$0:Landroidx/appcompat/app/AppLocalesStorageHelper$SerialExecutor;

    iget-object v1, p0, Landroidx/appcompat/app/AppLocalesStorageHelper$SerialExecutor$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AppLocalesStorageHelper$SerialExecutor;->lambda$execute$0$androidx-appcompat-app-AppLocalesStorageHelper$SerialExecutor(Ljava/lang/Runnable;)V

    return-void
.end method

###### Class androidx.appcompat.app.AppLocalesStorageHelper.ThreadPerTaskExecutor (androidx.appcompat.app.AppLocalesStorageHelper$ThreadPerTaskExecutor)
.class Landroidx/appcompat/app/AppLocalesStorageHelper$ThreadPerTaskExecutor;
.super Ljava/lang/Object;
.source "AppLocalesStorageHelper.java"

# interfaces
.implements Ljava/util/concurrent/Executor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/app/AppLocalesStorageHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ThreadPerTaskExecutor"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 208
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/Runnable;)V
    .registers 3

    .line 211
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method
