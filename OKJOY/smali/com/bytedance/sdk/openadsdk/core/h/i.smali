.class public Lcom/bytedance/sdk/openadsdk/core/h/i;
.super Ljava/lang/Object;
.source "SdkSettingsHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/core/h/i$a;
    }
.end annotation


# static fields
.field private static final c:Ljava/util/concurrent/atomic/AtomicLong;

.field private static volatile d:Lcom/bytedance/sdk/openadsdk/core/h/i;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation
.end field

.field private static e:Z

.field private static volatile f:Z


# instance fields
.field private final a:Lcom/bytedance/sdk/openadsdk/core/h/e;

.field private final b:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    .line 57
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v2, 0x0

    invoke-direct {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    sput-object v0, Lcom/bytedance/sdk/openadsdk/core/h/i;->c:Ljava/util/concurrent/atomic/AtomicLong;

    .line 60
    const/4 v0, 0x1

    sput-boolean v0, Lcom/bytedance/sdk/openadsdk/core/h/i;->e:Z

    .line 61
    const/4 v0, 0x0

    sput-boolean v0, Lcom/bytedance/sdk/openadsdk/core/h/i;->f:Z

    return-void
.end method

.method private constructor <init>(Lcom/bytedance/sdk/openadsdk/core/h/e;)V
    .registers 6

    .prologue
    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    if-nez p1, :cond_9

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->h()Lcom/bytedance/sdk/openadsdk/core/h/l;

    move-result-object p1

    :cond_9
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/h/i;->a:Lcom/bytedance/sdk/openadsdk/core/h/e;

    .line 103
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->a()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/i;->b:Landroid/content/Context;

    .line 104
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/b;->b()Z

    move-result v0

    if-eqz v0, :cond_29

    .line 106
    :try_start_17
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.bytedance.openadsdk.settingReceiver"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 107
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/h/i;->b:Landroid/content/Context;

    new-instance v2, Lcom/bytedance/sdk/openadsdk/core/h/i$a;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/bytedance/sdk/openadsdk/core/h/i$a;-><init>(Lcom/bytedance/sdk/openadsdk/core/h/i;Lcom/bytedance/sdk/openadsdk/core/h/i$1;)V

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_29
    .catch Ljava/lang/Throwable; {:try_start_17 .. :try_end_29} :catch_2a

    .line 111
    :cond_29
    :goto_29
    return-void

    .line 108
    :catch_2a
    move-exception v0

    goto :goto_29
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/core/h/i;)Lcom/bytedance/sdk/openadsdk/core/h/e;
    .registers 2

    .prologue
    .line 51
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/i;->a:Lcom/bytedance/sdk/openadsdk/core/h/e;

    return-object v0
.end method

.method public static a(Lcom/bytedance/sdk/openadsdk/core/h/e;)Lcom/bytedance/sdk/openadsdk/core/h/i;
    .registers 3

    .prologue
    .line 64
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/h/i;->d:Lcom/bytedance/sdk/openadsdk/core/h/i;

    if-nez v0, :cond_13

    .line 65
    const-class v1, Lcom/bytedance/sdk/openadsdk/core/h/i;

    monitor-enter v1

    .line 66
    :try_start_7
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/h/i;->d:Lcom/bytedance/sdk/openadsdk/core/h/i;

    if-nez v0, :cond_12

    .line 67
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/h/i;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/h/i;-><init>(Lcom/bytedance/sdk/openadsdk/core/h/e;)V

    sput-object v0, Lcom/bytedance/sdk/openadsdk/core/h/i;->d:Lcom/bytedance/sdk/openadsdk/core/h/i;

    .line 69
    :cond_12
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_16

    .line 71
    :cond_13
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/h/i;->d:Lcom/bytedance/sdk/openadsdk/core/h/i;

    return-object v0

    .line 69
    :catchall_16
    move-exception v0

    :try_start_17
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v0
.end method

.method private a(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .registers 3

    .prologue
    .line 391
    sget-boolean v0, Lcom/bytedance/sdk/openadsdk/core/h/i;->e:Z

    if-eqz v0, :cond_8

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/utils/ah;->a(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p1

    :cond_8
    return-object p1
.end method

.method public static a()V
    .registers 6

    .prologue
    const/16 v5, 0x18

    .line 76
    :try_start_2
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->a()Landroid/content/Context;

    move-result-object v1

    .line 78
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v5, :cond_3c

    .line 79
    new-instance v0, Ljava/io/File;

    invoke-virtual {v1}, Landroid/content/Context;->getDataDir()Ljava/io/File;

    move-result-object v2

    const-string v3, "shared_prefs"

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 85
    :goto_15
    new-instance v2, Ljava/io/File;

    const-string v3, "tt_sdk_settings.xml"

    invoke-direct {v2, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 86
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_3b

    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 87
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    .line 88
    const-string v3, ".xml"

    const-string v4, ""

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 89
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v3, v5, :cond_54

    .line 90
    invoke-virtual {v1, v0}, Landroid/content/Context;->deleteSharedPreferences(Ljava/lang/String;)Z

    .line 99
    :cond_3b
    :goto_3b
    return-void

    .line 82
    :cond_3c
    const-string v0, "1"

    invoke-virtual {v1, v0}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 83
    new-instance v0, Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    const-string v3, "shared_prefs"

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    goto :goto_15

    .line 97
    :catch_52
    move-exception v0

    goto :goto_3b

    .line 92
    :cond_54
    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 93
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 94
    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/utils/k;->c(Ljava/io/File;)V
    :try_end_67
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_67} :catch_52

    goto :goto_3b
.end method

.method public static a(J)V
    .registers 6

    .prologue
    .line 170
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-gtz v0, :cond_7

    .line 183
    :cond_6
    :goto_6
    return-void

    .line 173
    :cond_7
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->a()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 175
    :try_start_d
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 176
    const-string v1, "com.bytedance.openadsdk.settingReceiver"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 177
    const-string v1, "b_msg_id"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 178
    const-string v1, "b_msg_time"

    invoke-virtual {v0, v1, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 179
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->a()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_29
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_29} :catch_2a

    goto :goto_6

    .line 180
    :catch_2a
    move-exception v0

    goto :goto_6
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/core/h/i;Ljava/lang/String;Ljava/util/Map;)V
    .registers 3

    .prologue
    .line 51
    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/h/i;->a(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/util/Map;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 314
    const/4 v2, 0x1

    .line 317
    :try_start_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5a

    if-eqz p2, :cond_5a

    .line 318
    const-string v0, "active-control"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 319
    const-string v0, "ts"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 320
    const-string v0, "pst"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 324
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 325
    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/h/g/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 326
    if-eqz v3, :cond_5a

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_4f
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_4f} :catch_57

    move-result v0

    if-eqz v0, :cond_5a

    move v0, v1

    .line 334
    :goto_53
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/h/j;->a(I)V

    .line 335
    return-void

    .line 331
    :catch_57
    move-exception v0

    move v0, v2

    goto :goto_53

    :cond_5a
    move v0, v2

    goto :goto_53
.end method

.method static synthetic a(Z)Z
    .registers 1

    .prologue
    .line 51
    sput-boolean p0, Lcom/bytedance/sdk/openadsdk/core/h/i;->f:Z

    return p0
.end method

.method public static b()V
    .registers 3

    .prologue
    .line 153
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->a()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1d

    .line 155
    :try_start_6
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 156
    const-string v1, "com.bytedance.openadsdk.settingReceiver"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 157
    const-string v1, "b_msg_id"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 158
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->a()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_1d
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_1d} :catch_1e

    .line 162
    :cond_1d
    :goto_1d
    return-void

    .line 159
    :catch_1e
    move-exception v0

    goto :goto_1d
.end method

.method public static d()Z
    .registers 1

    .prologue
    .line 224
    sget-boolean v0, Lcom/bytedance/sdk/openadsdk/core/h/i;->f:Z

    return v0
.end method

.method static synthetic e()Ljava/util/concurrent/atomic/AtomicLong;
    .registers 1

    .prologue
    .line 51
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/h/i;->c:Ljava/util/concurrent/atomic/AtomicLong;

    return-object v0
.end method

.method static synthetic f()Z
    .registers 1

    .prologue
    .line 51
    sget-boolean v0, Lcom/bytedance/sdk/openadsdk/core/h/i;->f:Z

    return v0
.end method

.method private g()Z
    .registers 2

    .prologue
    .line 215
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/h;->c()Lcom/bytedance/sdk/openadsdk/core/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/h;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method private h()Lorg/json/JSONObject;
    .registers 7
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 339
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 341
    :try_start_6
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/h/i;->b:Landroid/content/Context;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/utils/d;->a(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/utils/c;

    move-result-object v2

    .line 342
    if-eqz v2, :cond_1e

    .line 343
    const-string v3, "latitude"

    iget v4, v2, Lcom/bytedance/sdk/openadsdk/utils/c;->a:F

    float-to-double v4, v4

    invoke-virtual {v1, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 344
    const-string v3, "longitude"

    iget v2, v2, Lcom/bytedance/sdk/openadsdk/utils/c;->b:F

    float-to-double v4, v2

    invoke-virtual {v1, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_1e} :catch_111

    .line 350
    :cond_1e
    :goto_1e
    :try_start_1e
    const-string v2, "ip"

    const/4 v3, 0x1

    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/utils/i;->a(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 351
    const-string v2, "imei"

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/h/i;->b:Landroid/content/Context;

    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/core/j;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 352
    const-string v2, "oaid"

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/x;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 353
    const-string v2, "model"

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 354
    const-string v2, "conn_type"

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/h/i;->b:Landroid/content/Context;

    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/utils/w;->b(Landroid/content/Context;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 355
    const-string v2, "os"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 356
    const-string v2, "oversea_version_type"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 357
    const-string v2, "os_version"

    sget-object v3, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 358
    const-string v2, "sdk_version"

    const-string v3, "2.9.5.3"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 359
    const-string v2, "download_sdk_version"

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/downloadnew/a;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 361
    const-string v2, "package_name"

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/ah;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 362
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/h/i;->b:Landroid/content/Context;

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/ah;->d()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/bytedance/sdk/openadsdk/utils/ah;->d(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    .line 363
    const-string v3, "position"

    if-eqz v2, :cond_10c

    :goto_8c
    invoke-virtual {v1, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 364
    const-string v0, "app_version"

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/ah;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 365
    const-string v0, "vendor"

    sget-object v2, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 366
    const-string v0, "app_id"

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/h;->c()Lcom/bytedance/sdk/openadsdk/core/h;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/h;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 368
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    .line 369
    const-string v0, "ts"

    invoke-virtual {v1, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 370
    const-string v0, ""

    .line 371
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/h;->c()Lcom/bytedance/sdk/openadsdk/core/h;

    move-result-object v4

    invoke-virtual {v4}, Lcom/bytedance/sdk/openadsdk/core/h;->e()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_da

    .line 372
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/h;->c()Lcom/bytedance/sdk/openadsdk/core/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/h;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "2.9.5.3"

    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 374
    :cond_da
    const-string v2, "req_sign"

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 375
    const-string v0, "isApplicationForeground"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "app_version:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/ah;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\uff0cvendor:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/bytedance/sdk/openadsdk/utils/t;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_10b
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_10b} :catch_10f

    .line 381
    :goto_10b
    return-object v1

    .line 363
    :cond_10c
    const/4 v0, 0x2

    goto/16 :goto_8c

    .line 376
    :catch_10f
    move-exception v0

    goto :goto_10b

    .line 346
    :catch_111
    move-exception v2

    goto/16 :goto_1e
.end method


# virtual methods
.method public c()V
    .registers 7

    .prologue
    .line 191
    :try_start_0
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/h/i;->g()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 211
    :cond_6
    :goto_6
    return-void

    .line 195
    :cond_7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 196
    sget-object v2, Lcom/bytedance/sdk/openadsdk/core/h/i;->c:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    sub-long v2, v0, v2

    const-wide/32 v4, 0x927c0

    cmp-long v2, v2, v4

    if-ltz v2, :cond_6

    .line 201
    sget-object v2, Lcom/bytedance/sdk/openadsdk/core/h/i;->c:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 202
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/b;->b()Z

    move-result v2

    if-eqz v2, :cond_28

    .line 203
    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/h/i;->a(J)V

    .line 205
    :cond_28
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/i/a;->a()Lcom/bytedance/sdk/openadsdk/i/a;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, p0, v1}, Lcom/bytedance/sdk/openadsdk/i/a;->b(Ljava/lang/Runnable;I)V
    :try_end_31
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_31} :catch_32

    goto :goto_6

    .line 206
    :catch_32
    move-exception v0

    .line 209
    const-string v1, "SdkSettingsHelper"

    const-string v2, "load sdk settings error: "

    invoke-static {v1, v2, v0}, Lcom/bytedance/sdk/openadsdk/utils/t;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_6
.end method

.method public run()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    .line 229
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/i;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/w;->a(Landroid/content/Context;)Z

    move-result v0

    .line 230
    if-nez v0, :cond_f

    .line 232
    :try_start_9
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/i;->a:Lcom/bytedance/sdk/openadsdk/core/h/e;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/h/e;->a()V
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_e} :catch_44

    .line 311
    :cond_e
    :goto_e
    return-void

    .line 236
    :cond_f
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/h/i;->g()Z

    move-result v0

    if-nez v0, :cond_e

    .line 240
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/h/i;->h()Lorg/json/JSONObject;

    move-result-object v0

    .line 242
    new-instance v1, Lcom/bytedance/sdk/adnet/b/f;

    const/4 v2, 0x1

    const-string v3, "/api/ad/union/sdk/settings/"

    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/utils/ah;->q(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/h/i;->a(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    new-instance v4, Lcom/bytedance/sdk/openadsdk/core/h/i$1;

    invoke-direct {v4, p0}, Lcom/bytedance/sdk/openadsdk/core/h/i$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/h/i;)V

    invoke-direct {v1, v2, v3, v0, v4}, Lcom/bytedance/sdk/adnet/b/f;-><init>(ILjava/lang/String;Lorg/json/JSONObject;Lcom/bytedance/sdk/adnet/core/n$a;)V

    .line 308
    invoke-virtual {v1, v5}, Lcom/bytedance/sdk/adnet/b/f;->setResponseOnMain(Z)Lcom/bytedance/sdk/adnet/core/Request;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/bytedance/sdk/adnet/core/Request;->setShouldCache(Z)Lcom/bytedance/sdk/adnet/core/Request;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/h/i;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/g/e;->a(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/g/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/g/e;->d()Lcom/bytedance/sdk/adnet/core/m;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/adnet/core/Request;->build(Lcom/bytedance/sdk/adnet/core/m;)V

    goto :goto_e

    .line 233
    :catch_44
    move-exception v0

    goto :goto_e
.end method
