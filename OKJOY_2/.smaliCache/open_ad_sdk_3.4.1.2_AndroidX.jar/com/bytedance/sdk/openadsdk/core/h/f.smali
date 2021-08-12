.class public Lcom/bytedance/sdk/openadsdk/core/h/f;
.super Ljava/lang/Object;
.source "SdkSettingsHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/core/h/f$a;
    }
.end annotation


# static fields
.field private static final c:Ljava/util/concurrent/atomic/AtomicLong;

.field private static volatile d:Lcom/bytedance/sdk/openadsdk/core/h/f;

.field private static e:Z

.field private static volatile f:Z


# instance fields
.field private final a:Lcom/bytedance/sdk/openadsdk/core/h/c;

.field private final b:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 58
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    sput-object v0, Lcom/bytedance/sdk/openadsdk/core/h/f;->c:Ljava/util/concurrent/atomic/AtomicLong;

    .line 61
    const/4 v0, 0x1

    sput-boolean v0, Lcom/bytedance/sdk/openadsdk/core/h/f;->e:Z

    .line 62
    const/4 v0, 0x0

    sput-boolean v0, Lcom/bytedance/sdk/openadsdk/core/h/f;->f:Z

    return-void
.end method

.method private constructor <init>(Lcom/bytedance/sdk/openadsdk/core/h/c;)V
    .registers 5

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    if-nez p1, :cond_9

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->h()Lcom/bytedance/sdk/openadsdk/core/h/h;

    move-result-object p1

    :cond_9
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/h/f;->a:Lcom/bytedance/sdk/openadsdk/core/h/c;

    .line 104
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->a()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/h/f;->b:Landroid/content/Context;

    .line 105
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/b;->b()Z

    move-result v0

    if-eqz v0, :cond_29

    .line 107
    :try_start_17
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.bytedance.openadsdk.settingReceiver"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 108
    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/h/f$a;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/bytedance/sdk/openadsdk/core/h/f$a;-><init>(Lcom/bytedance/sdk/openadsdk/core/h/f;Lcom/bytedance/sdk/openadsdk/core/h/f$1;)V

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_27
    .catchall {:try_start_17 .. :try_end_27} :catchall_28

    .line 110
    goto :goto_29

    .line 109
    :catchall_28
    move-exception p1

    .line 112
    :cond_29
    :goto_29
    return-void
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/core/h/f;)Lcom/bytedance/sdk/openadsdk/core/h/c;
    .registers 1

    .line 52
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/h/f;->a:Lcom/bytedance/sdk/openadsdk/core/h/c;

    return-object p0
.end method

.method public static a(Lcom/bytedance/sdk/openadsdk/core/h/c;)Lcom/bytedance/sdk/openadsdk/core/h/f;
    .registers 3

    .line 65
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/h/f;->d:Lcom/bytedance/sdk/openadsdk/core/h/f;

    if-nez v0, :cond_17

    .line 66
    const-class v0, Lcom/bytedance/sdk/openadsdk/core/h/f;

    monitor-enter v0

    .line 67
    :try_start_7
    sget-object v1, Lcom/bytedance/sdk/openadsdk/core/h/f;->d:Lcom/bytedance/sdk/openadsdk/core/h/f;

    if-nez v1, :cond_12

    .line 68
    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/h/f;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/core/h/f;-><init>(Lcom/bytedance/sdk/openadsdk/core/h/c;)V

    sput-object v1, Lcom/bytedance/sdk/openadsdk/core/h/f;->d:Lcom/bytedance/sdk/openadsdk/core/h/f;

    .line 70
    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception p0

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw p0

    .line 72
    :cond_17
    :goto_17
    sget-object p0, Lcom/bytedance/sdk/openadsdk/core/h/f;->d:Lcom/bytedance/sdk/openadsdk/core/h/f;

    return-object p0
.end method

.method private a(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .registers 3

    .line 390
    sget-boolean v0, Lcom/bytedance/sdk/openadsdk/core/h/f;->e:Z

    if-eqz v0, :cond_8

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/utils/aj;->a(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p1

    :cond_8
    return-object p1
.end method

.method public static a()V
    .registers 6

    .line 77
    :try_start_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->a()Landroid/content/Context;

    move-result-object v0

    .line 79
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_6
    .catchall {:try_start_0 .. :try_end_6} :catchall_65

    const-string v2, "shared_prefs"

    const/16 v3, 0x18

    if-lt v1, v3, :cond_16

    .line 80
    :try_start_c
    new-instance v1, Ljava/io/File;

    invoke-virtual {v0}, Landroid/content/Context;->getDataDir()Ljava/io/File;

    move-result-object v4

    invoke-direct {v1, v4, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    goto :goto_2a

    .line 83
    :cond_16
    const-string v1, "1"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 84
    new-instance v4, Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-direct {v4, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v1, v4

    .line 86
    :goto_2a
    new-instance v2, Ljava/io/File;

    const-string v4, "tt_sdk_settings.xml"

    invoke-direct {v2, v1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 87
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_64

    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_64

    .line 88
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    .line 89
    const-string v4, ".xml"

    const-string v5, ""

    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 90
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v4, v3, :cond_51

    .line 91
    invoke-virtual {v0, v1}, Landroid/content/Context;->deleteSharedPreferences(Ljava/lang/String;)Z

    goto :goto_64

    .line 93
    :cond_51
    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 94
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 95
    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/utils/l;->c(Ljava/io/File;)V
    :try_end_64
    .catchall {:try_start_c .. :try_end_64} :catchall_65

    .line 99
    :cond_64
    :goto_64
    goto :goto_66

    .line 98
    :catchall_65
    move-exception v0

    .line 100
    :goto_66
    return-void
.end method

.method public static a(J)V
    .registers 5

    .line 171
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-gtz v0, :cond_7

    .line 172
    return-void

    .line 174
    :cond_7
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->a()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_2b

    .line 176
    :try_start_d
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 177
    const-string v1, "com.bytedance.openadsdk.settingReceiver"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 178
    const-string v1, "b_msg_id"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 179
    const-string v1, "b_msg_time"

    invoke-virtual {v0, v1, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 180
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->a()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_29
    .catchall {:try_start_d .. :try_end_29} :catchall_2a

    .line 182
    goto :goto_2b

    .line 181
    :catchall_2a
    move-exception p0

    .line 184
    :cond_2b
    :goto_2b
    return-void
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/core/h/f;Ljava/lang/String;Ljava/util/Map;)V
    .registers 3

    .line 52
    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/h/f;->a(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/util/Map;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 313
    nop

    .line 316
    const/4 v0, 0x1

    :try_start_2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_54

    if-eqz p2, :cond_54

    .line 317
    const-string v1, "active-control"

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 318
    const-string v2, "ts"

    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 319
    const-string v4, "pst"

    invoke-interface {p2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 323
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 324
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/i/g/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 325
    if-eqz p1, :cond_54

    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1
    :try_end_51
    .catchall {:try_start_2 .. :try_end_51} :catchall_55

    if-eqz p1, :cond_54

    .line 327
    move v0, v1

    .line 331
    :cond_54
    goto :goto_56

    .line 330
    :catchall_55
    move-exception p1

    .line 333
    :goto_56
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/h/g;->a(I)V

    .line 334
    return-void
.end method

.method static synthetic a(Z)Z
    .registers 1

    .line 52
    sput-boolean p0, Lcom/bytedance/sdk/openadsdk/core/h/f;->f:Z

    return p0
.end method

.method public static b()V
    .registers 3

    .line 154
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->a()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1f

    .line 156
    :try_start_6
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 157
    const-string v1, "com.bytedance.openadsdk.settingReceiver"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 158
    const-string v1, "b_msg_id"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 159
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->a()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_1d
    .catchall {:try_start_6 .. :try_end_1d} :catchall_1e

    .line 161
    goto :goto_1f

    .line 160
    :catchall_1e
    move-exception v0

    .line 163
    :cond_1f
    :goto_1f
    return-void
.end method

.method public static d()Z
    .registers 1

    .line 225
    sget-boolean v0, Lcom/bytedance/sdk/openadsdk/core/h/f;->f:Z

    return v0
.end method

.method static synthetic e()Ljava/util/concurrent/atomic/AtomicLong;
    .registers 1

    .line 52
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/h/f;->c:Ljava/util/concurrent/atomic/AtomicLong;

    return-object v0
.end method

.method static synthetic f()Z
    .registers 1

    .line 52
    sget-boolean v0, Lcom/bytedance/sdk/openadsdk/core/h/f;->f:Z

    return v0
.end method

.method private g()Z
    .registers 2

    .line 216
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/i;->d()Lcom/bytedance/sdk/openadsdk/core/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/i;->f()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method private h()Lorg/json/JSONObject;
    .registers 7

    .line 338
    const-string v0, "3.4.1.2"

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 340
    :try_start_7
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/h/f;->b:Landroid/content/Context;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/utils/d;->a(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/utils/c;

    move-result-object v2

    .line 341
    if-eqz v2, :cond_1f

    .line 342
    const-string v3, "latitude"

    iget v4, v2, Lcom/bytedance/sdk/openadsdk/utils/c;->a:F

    float-to-double v4, v4

    invoke-virtual {v1, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 343
    const-string v3, "longitude"

    iget v2, v2, Lcom/bytedance/sdk/openadsdk/utils/c;->b:F

    float-to-double v4, v2

    invoke-virtual {v1, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_1f} :catch_20

    .line 346
    :cond_1f
    goto :goto_21

    .line 345
    :catch_20
    move-exception v2

    .line 349
    :goto_21
    :try_start_21
    const-string v2, "ip"

    const/4 v3, 0x1

    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/utils/i;->a(Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 350
    const-string v2, "imei"

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/h/f;->b:Landroid/content/Context;

    invoke-static {v4}, Lcom/bytedance/sdk/openadsdk/core/k;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 351
    const-string v2, "oaid"

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/y;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 352
    const-string v2, "model"

    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 353
    const-string v2, "conn_type"

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/h/f;->b:Landroid/content/Context;

    invoke-static {v4}, Lcom/bytedance/sdk/openadsdk/utils/x;->b(Landroid/content/Context;)I

    move-result v4

    invoke-virtual {v1, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 354
    const-string v2, "os"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 355
    const-string v2, "oversea_version_type"

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 356
    const-string v2, "os_version"

    sget-object v4, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 357
    const-string v2, "sdk_version"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 358
    const-string v2, "download_sdk_version"

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/downloadnew/a;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 360
    const-string v2, "package_name"

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/aj;->e()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 361
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/aj;->a()Z

    move-result v2

    .line 362
    const-string v4, "position"

    if-eqz v2, :cond_87

    goto :goto_88

    :cond_87
    const/4 v3, 0x2

    :goto_88
    invoke-virtual {v1, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 363
    const-string v2, "app_version"

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/aj;->g()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 364
    const-string v2, "vendor"

    sget-object v3, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 365
    const-string v2, "app_id"

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/i;->d()Lcom/bytedance/sdk/openadsdk/core/i;

    move-result-object v3

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/i;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 367
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    .line 368
    const-string v4, "ts"

    invoke-virtual {v1, v4, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 369
    const-string v4, ""

    .line 370
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/i;->d()Lcom/bytedance/sdk/openadsdk/core/i;

    move-result-object v5

    invoke-virtual {v5}, Lcom/bytedance/sdk/openadsdk/core/i;->f()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_d4

    .line 371
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/i;->d()Lcom/bytedance/sdk/openadsdk/core/i;

    move-result-object v4

    invoke-virtual {v4}, Lcom/bytedance/sdk/openadsdk/core/i;->f()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 373
    :cond_d4
    const-string v0, "req_sign"

    invoke-static {v4}, Lcom/bytedance/sdk/openadsdk/utils/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 374
    const-string v0, "isApplicationForeground"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "app_version:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/aj;->g()Ljava/lang/String;

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

    invoke-static {v0, v2}, Lcom/bytedance/sdk/openadsdk/utils/u;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_105
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_105} :catch_106

    .line 377
    goto :goto_107

    .line 375
    :catch_106
    move-exception v0

    .line 380
    :goto_107
    return-object v1
.end method


# virtual methods
.method public c()V
    .registers 8

    .line 192
    :try_start_0
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/h/f;->g()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 193
    return-void

    .line 196
    :cond_7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 197
    sget-object v2, Lcom/bytedance/sdk/openadsdk/core/h/f;->c:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v3

    sub-long v3, v0, v3

    const-wide/32 v5, 0x927c0

    cmp-long v3, v3, v5

    if-gez v3, :cond_1b

    .line 199
    return-void

    .line 202
    :cond_1b
    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 203
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/b;->b()Z

    move-result v2

    if-eqz v2, :cond_27

    .line 204
    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/h/f;->a(J)V

    .line 206
    :cond_27
    const/16 v0, 0xa

    invoke-static {p0, v0}, Lcom/bytedance/sdk/openadsdk/j/e;->a(Ljava/lang/Runnable;I)V
    :try_end_2c
    .catchall {:try_start_0 .. :try_end_2c} :catchall_2d

    .line 211
    goto :goto_35

    .line 207
    :catchall_2d
    move-exception v0

    .line 210
    const-string v1, "SdkSettingsHelper"

    const-string v2, "load sdk settings error: "

    invoke-static {v1, v2, v0}, Lcom/bytedance/sdk/openadsdk/utils/u;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 212
    :goto_35
    return-void
.end method

.method public run()V
    .registers 6

    .line 230
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/f;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/x;->a(Landroid/content/Context;)Z

    move-result v0

    .line 231
    if-nez v0, :cond_10

    .line 233
    :try_start_8
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/f;->a:Lcom/bytedance/sdk/openadsdk/core/h/c;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/h/c;->a()V
    :try_end_d
    .catchall {:try_start_8 .. :try_end_d} :catchall_e

    goto :goto_f

    .line 234
    :catchall_e
    move-exception v0

    .line 235
    :goto_f
    goto :goto_46

    .line 237
    :cond_10
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/h/f;->g()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 238
    return-void

    .line 241
    :cond_17
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/h/f;->h()Lorg/json/JSONObject;

    move-result-object v0

    .line 243
    new-instance v1, Lcom/bytedance/sdk/adnet/b/f;

    const/4 v2, 0x1

    const-string v3, "/api/ad/union/sdk/settings/"

    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/utils/aj;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/h/f;->a(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    new-instance v4, Lcom/bytedance/sdk/openadsdk/core/h/f$1;

    invoke-direct {v4, p0}, Lcom/bytedance/sdk/openadsdk/core/h/f$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/h/f;)V

    invoke-direct {v1, v2, v3, v0, v4}, Lcom/bytedance/sdk/adnet/b/f;-><init>(ILjava/lang/String;Lorg/json/JSONObject;Lcom/bytedance/sdk/adnet/core/m$a;)V

    .line 307
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/adnet/b/f;->setResponseOnMain(Z)Lcom/bytedance/sdk/adnet/core/Request;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/adnet/core/Request;->setShouldCache(Z)Lcom/bytedance/sdk/adnet/core/Request;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/h/f;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/h/d;->a(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/h/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/h/d;->d()Lcom/bytedance/sdk/adnet/core/l;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/adnet/core/Request;->build(Lcom/bytedance/sdk/adnet/core/l;)V

    .line 310
    :goto_46
    return-void
.end method
