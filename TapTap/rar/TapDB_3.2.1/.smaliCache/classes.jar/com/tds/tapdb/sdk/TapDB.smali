.class public Lcom/tds/tapdb/sdk/TapDB;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tds/tapdb/sdk/TapDB$x;,
        Lcom/tds/tapdb/sdk/TapDB$TapDBDataDynamicProperties;,
        Lcom/tds/tapdb/sdk/TapDB$y;
    }
.end annotation


# static fields
.field private static final n:Ljava/lang/String;

.field private static final o:Ljava/lang/String; = "taptapdid.tmp"

.field private static final p:Ljava/lang/String; = "taptapdid_share_preference"

.field private static final q:Ljava/lang/String; = "taptap_device_id_saved_param"

.field private static final r:Ljava/lang/String; = "com.taptap"

.field private static final s:Ljava/lang/String; = "com.taptap.global"

.field private static t:Ljava/lang/String;

.field private static volatile u:Lcom/tds/tapdb/sdk/TapDB;

.field private static v:Ljava/lang/String;

.field private static w:Ljava/lang/String;

.field private static x:Z

.field private static y:Z

.field private static z:Z


# instance fields
.field private a:Lorg/json/JSONObject;

.field private b:Lcom/tds/tapdb/sdk/TapDB$TapDBDataDynamicProperties;

.field private final c:Landroid/content/Context;

.field private d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Lcom/tds/tapdb/sdk/LoginType;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:J

.field private volatile l:Lcom/tds/tapdb/sdk/LoginType;

.field private volatile m:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/taptap_did"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tds/tapdb/sdk/TapDB;->n:Ljava/lang/String;

    const-string v0, "com.taptap"

    sput-object v0, Lcom/tds/tapdb/sdk/TapDB;->t:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/tds/tapdb/sdk/TapDB;->v:Ljava/lang/String;

    sput-object v0, Lcom/tds/tapdb/sdk/TapDB;->w:Ljava/lang/String;

    const/4 v0, 0x1

    sput-boolean v0, Lcom/tds/tapdb/sdk/TapDB;->x:Z

    const/4 v1, 0x0

    sput-boolean v1, Lcom/tds/tapdb/sdk/TapDB;->y:Z

    sput-boolean v0, Lcom/tds/tapdb/sdk/TapDB;->z:Z

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/tds/tapdb/sdk/TapDB;->j:Ljava/lang/String;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tds/tapdb/sdk/TapDB;->k:J

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/tds/tapdb/sdk/TapDB;->c:Landroid/content/Context;

    return-void
.end method

.method private static a(Landroid/os/ResultReceiver;)Landroid/os/ResultReceiver;
    .registers 3

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/os/ResultReceiver;->writeToParcel(Landroid/os/Parcel;I)V

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    sget-object p0, Landroid/os/ResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p0, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/ResultReceiver;

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p0
.end method

.method static synthetic a(Lcom/tds/tapdb/sdk/TapDB;Lcom/tds/tapdb/sdk/LoginType;)Lcom/tds/tapdb/sdk/LoginType;
    .registers 2

    iput-object p1, p0, Lcom/tds/tapdb/sdk/TapDB;->l:Lcom/tds/tapdb/sdk/LoginType;

    return-object p1
.end method

.method static synthetic a(Landroid/content/Context;Z)Lcom/tds/tapdb/sdk/TapDB$x;
    .registers 2

    invoke-static {p0, p1}, Lcom/tds/tapdb/sdk/TapDB;->b(Landroid/content/Context;Z)Lcom/tds/tapdb/sdk/TapDB$x;

    move-result-object p0

    return-object p0
.end method

.method private static a(Landroid/content/Context;)Lcom/tds/tapdb/sdk/TapDB;
    .registers 3

    const-class v0, Lcom/tds/tapdb/sdk/TapDB;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/tds/tapdb/sdk/TapDB;->u:Lcom/tds/tapdb/sdk/TapDB;

    if-nez v1, :cond_e

    new-instance v1, Lcom/tds/tapdb/sdk/TapDB;

    invoke-direct {v1, p0}, Lcom/tds/tapdb/sdk/TapDB;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/tds/tapdb/sdk/TapDB;->u:Lcom/tds/tapdb/sdk/TapDB;

    :cond_e
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_12

    sget-object p0, Lcom/tds/tapdb/sdk/TapDB;->u:Lcom/tds/tapdb/sdk/TapDB;

    return-object p0

    :catchall_12
    move-exception p0

    :try_start_13
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_12

    throw p0
.end method

.method static synthetic a()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/tds/tapdb/sdk/TapDB;->v:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/tds/tapdb/sdk/TapDB;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/tds/tapdb/sdk/TapDB;->e:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic a(Lcom/tds/tapdb/sdk/TapDB;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    iput-object p1, p0, Lcom/tds/tapdb/sdk/TapDB;->m:Ljava/lang/String;

    return-object p1
.end method

.method static a(JLjava/lang/String;)V
    .registers 9

    sget-object v0, Lcom/tds/tapdb/sdk/TapDB;->u:Lcom/tds/tapdb/sdk/TapDB;

    if-nez v0, :cond_a

    const-string p0, "clearUser method called error, TapDB SDK not initialized yet, please call init method first"

    invoke-static {p0}, Lcom/tds/tapdb/b/n;->b(Ljava/lang/String;)V

    return-void

    :cond_a
    :try_start_a
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    const-string v0, "duration"

    invoke-virtual {v4, v0, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    sget-object v0, Lcom/tds/tapdb/sdk/TapDB;->u:Lcom/tds/tapdb/sdk/TapDB;

    sget-object v1, Lcom/tds/tapdb/b/e;->c:Lcom/tds/tapdb/b/e;

    const-string v2, "event"

    const-string v3, "play_game"

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/tds/tapdb/sdk/TapDB;->a(Lcom/tds/tapdb/b/e;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)V
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_20} :catch_21

    goto :goto_25

    :catch_21
    move-exception p0

    invoke-static {p0}, Lcom/tds/tapdb/b/n;->a(Ljava/lang/Throwable;)V

    :goto_25
    return-void
.end method

.method static synthetic a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/tds/tapdb/sdk/TapDB;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static a(Ljava/lang/String;Lcom/tds/tapdb/sdk/LoginType;Lorg/json/JSONObject;)V
    .registers 4

    sget-object v0, Lcom/tds/tapdb/sdk/TapDB;->u:Lcom/tds/tapdb/sdk/TapDB;

    if-nez v0, :cond_a

    const-string p0, "setUser method called error,TapDB SDK not initialized yet, please call init method first"

    invoke-static {p0}, Lcom/tds/tapdb/b/n;->b(Ljava/lang/String;)V

    return-void

    :cond_a
    sget-object v0, Lcom/tds/tapdb/sdk/TapDB;->u:Lcom/tds/tapdb/sdk/TapDB;

    iput-object p0, v0, Lcom/tds/tapdb/sdk/TapDB;->g:Ljava/lang/String;

    sget-object p0, Lcom/tds/tapdb/sdk/TapDB;->u:Lcom/tds/tapdb/sdk/TapDB;

    if-nez p1, :cond_15

    sget-object v0, Lcom/tds/tapdb/sdk/LoginType;->NONE:Lcom/tds/tapdb/sdk/LoginType;

    goto :goto_16

    :cond_15
    move-object v0, p1

    :goto_16
    iput-object v0, p0, Lcom/tds/tapdb/sdk/TapDB;->h:Lcom/tds/tapdb/sdk/LoginType;

    new-instance p0, Lcom/tds/tapdb/sdk/TapDB$r;

    invoke-direct {p0, p2, p1}, Lcom/tds/tapdb/sdk/TapDB$r;-><init>(Lorg/json/JSONObject;Lcom/tds/tapdb/sdk/LoginType;)V

    invoke-static {p0}, Lcom/tds/tapdb/b/b;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method private a(Lorg/json/JSONObject;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    invoke-static {}, Lcom/tds/tapdb/sdk/TapDB;->g()Lcom/tds/tapdb/sdk/TapDB;

    move-result-object v0

    if-eqz v0, :cond_34

    iget-object v1, v0, Lcom/tds/tapdb/sdk/TapDB;->a:Lorg/json/JSONObject;

    if-eqz v1, :cond_16

    new-instance v1, Lorg/json/JSONObject;

    iget-object v2, v0, Lcom/tds/tapdb/sdk/TapDB;->a:Lorg/json/JSONObject;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    goto :goto_1b

    :cond_16
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :goto_1b
    const/4 v2, 0x0

    :try_start_1c
    iget-object v0, v0, Lcom/tds/tapdb/sdk/TapDB;->b:Lcom/tds/tapdb/sdk/TapDB$TapDBDataDynamicProperties;

    if-eqz v0, :cond_2d

    invoke-interface {v0}, Lcom/tds/tapdb/sdk/TapDB$TapDBDataDynamicProperties;->getDynamicProperties()Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0}, Lcom/tds/tapdb/b/l;->a(Lorg/json/JSONObject;)V
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_27} :catch_29

    move-object v2, v0

    goto :goto_2d

    :catch_29
    move-exception v0

    invoke-static {v0}, Lcom/tds/tapdb/b/n;->a(Ljava/lang/Exception;)V

    :cond_2d
    :goto_2d
    invoke-static {v2, v1}, Lcom/tds/tapdb/b/c;->b(Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/tds/tapdb/b/c;->a(Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    :cond_34
    return-void
.end method

.method static synthetic b(Lcom/tds/tapdb/sdk/TapDB;)Lcom/tds/tapdb/sdk/LoginType;
    .registers 1

    iget-object p0, p0, Lcom/tds/tapdb/sdk/TapDB;->h:Lcom/tds/tapdb/sdk/LoginType;

    return-object p0
.end method

.method private static b(Landroid/content/Context;Z)Lcom/tds/tapdb/sdk/TapDB$x;
    .registers 10

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-nez v0, :cond_9

    invoke-static {}, Landroid/os/Looper;->prepare()V

    :cond_9
    new-instance v0, Lcom/tds/tapdb/sdk/TapDB$x;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/tds/tapdb/sdk/TapDB$x;-><init>(Z)V

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    monitor-enter v1

    if-eqz p1, :cond_2b

    :try_start_17
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    new-instance v3, Landroid/content/ComponentName;

    sget-object v4, Lcom/tds/tapdb/sdk/TapDB;->t:Ljava/lang/String;

    const-string v5, "com.tds.tapdb.proxy.FakeProxyActivity"

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    invoke-virtual {p0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_2b
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v4, "cmd"

    const-string v5, "getUnifiedId"

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v4

    if-nez v4, :cond_4a

    const-string v4, "TapTapDIDIntentService"

    const-string v5, "my looper is null"

    :goto_46
    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4f

    :cond_4a
    const-string v4, "TapTapDIDIntentService"

    const-string v5, "my looper is not null"

    goto :goto_46

    :goto_4f
    new-instance v4, Lcom/tds/tapdb/sdk/TapDB$h;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {v4, v5, v1}, Lcom/tds/tapdb/sdk/TapDB$h;-><init>(Landroid/os/Looper;Ljava/lang/Object;)V
    :try_end_58
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_58} :catch_8e
    .catchall {:try_start_17 .. :try_end_58} :catchall_8c

    const-string v4, "receiver"

    :try_start_5a
    new-instance v5, Lcom/tds/tapdb/sdk/TapDB$i;

    new-instance v6, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v5, v6, v0, p1, p0}, Lcom/tds/tapdb/sdk/TapDB$i;-><init>(Landroid/os/Handler;Lcom/tds/tapdb/sdk/TapDB$x;ZLandroid/content/Context;)V

    invoke-static {v5}, Lcom/tds/tapdb/sdk/TapDB;->a(Landroid/os/ResultReceiver;)Landroid/os/ResultReceiver;

    move-result-object p1

    invoke-virtual {v2, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    invoke-virtual {v2, v3}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    new-instance p1, Landroid/content/ComponentName;

    sget-object v3, Lcom/tds/tapdb/sdk/TapDB;->t:Ljava/lang/String;

    const-string v4, "com.tds.tapdb.service.TapTapDIDIntentService"

    invoke-direct {p1, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1a

    if-lt p1, v3, :cond_88

    invoke-virtual {p0, v2}, Landroid/content/Context;->startForegroundService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_9b

    :cond_88
    invoke-virtual {p0, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_8b
    .catch Ljava/lang/Exception; {:try_start_5a .. :try_end_8b} :catch_8e
    .catchall {:try_start_5a .. :try_end_8b} :catchall_8c

    goto :goto_9b

    :catchall_8c
    move-exception p0

    goto :goto_ad

    :catch_8e
    move-exception p0

    const-string p1, "TapTapDIDIntentService"

    :try_start_91
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    :goto_9b
    monitor-exit v1
    :try_end_9c
    .catchall {:try_start_91 .. :try_end_9c} :catchall_8c

    monitor-enter v1

    const-wide/16 p0, 0x64

    :try_start_9f
    invoke-virtual {v1, p0, p1}, Ljava/lang/Object;->wait(J)V
    :try_end_a2
    .catch Ljava/lang/Exception; {:try_start_9f .. :try_end_a2} :catch_a5
    .catchall {:try_start_9f .. :try_end_a2} :catchall_a3

    goto :goto_a9

    :catchall_a3
    move-exception p0

    goto :goto_ab

    :catch_a5
    move-exception p0

    :try_start_a6
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_a9
    monitor-exit v1

    return-object v0

    :goto_ab
    monitor-exit v1
    :try_end_ac
    .catchall {:try_start_a6 .. :try_end_ac} :catchall_a3

    throw p0

    :goto_ad
    :try_start_ad
    monitor-exit v1
    :try_end_ae
    .catchall {:try_start_ad .. :try_end_ae} :catchall_8c

    throw p0
.end method

.method static synthetic b()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/tds/tapdb/sdk/TapDB;->w:Ljava/lang/String;

    return-object v0
.end method

.method private static b(Landroid/content/Context;)V
    .registers 3

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    new-instance v1, Lcom/tds/tapdb/sdk/TapDB$j;

    invoke-direct {v1, v0, p0}, Lcom/tds/tapdb/sdk/TapDB$j;-><init>(Ljava/util/concurrent/atomic/AtomicBoolean;Landroid/content/Context;)V

    invoke-static {v1}, Lcom/tds/tapdb/b/b;->a(Ljava/lang/Runnable;)V

    new-instance v1, Lcom/tds/tapdb/sdk/TapDB$l;

    invoke-direct {v1, v0, p0}, Lcom/tds/tapdb/sdk/TapDB$l;-><init>(Ljava/util/concurrent/atomic/AtomicBoolean;Landroid/content/Context;)V

    invoke-static {v1}, Lcom/tds/tapdb/b/b;->a(Ljava/lang/Runnable;)V

    new-instance v1, Lcom/tds/tapdb/sdk/TapDB$m;

    invoke-direct {v1, v0, p0}, Lcom/tds/tapdb/sdk/TapDB$m;-><init>(Ljava/util/concurrent/atomic/AtomicBoolean;Landroid/content/Context;)V

    invoke-static {v1}, Lcom/tds/tapdb/b/b;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "saveTapTapDID:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tds/tapdb/b/n;->a(Ljava/lang/String;)V

    sput-object p1, Lcom/tds/tapdb/sdk/TapDB;->v:Ljava/lang/String;

    sput-object p2, Lcom/tds/tapdb/sdk/TapDB;->w:Ljava/lang/String;

    :try_start_2b
    const-string p2, "taptapdid_share_preference"

    const/4 v0, 0x0

    invoke-virtual {p0, p2, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string p2, "taptap_device_id_saved_param"

    invoke-interface {p0, p2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_3e} :catch_3f

    goto :goto_45

    :catch_3f
    move-exception p0

    const-string p0, "save taptap device id fail"

    invoke-static {p0}, Lcom/tds/tapdb/b/n;->c(Ljava/lang/String;)V

    :goto_45
    return-void
.end method

.method static synthetic c()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/tds/tapdb/sdk/TapDB;->n:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/tds/tapdb/sdk/TapDB;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/tds/tapdb/sdk/TapDB;->m:Ljava/lang/String;

    return-object p0
.end method

.method private static c(Landroid/content/Context;)V
    .registers 1

    invoke-static {p0}, Lcom/tds/tapdb/sdk/TapDB;->b(Landroid/content/Context;)V

    return-void
.end method

.method public static clearStaticProperties()V
    .registers 2

    invoke-static {}, Lcom/tds/tapdb/sdk/TapDB;->g()Lcom/tds/tapdb/sdk/TapDB;

    move-result-object v0

    if-eqz v0, :cond_9

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/tds/tapdb/sdk/TapDB;->a:Lorg/json/JSONObject;

    :cond_9
    return-void
.end method

.method public static clearUser()V
    .registers 2

    sget-object v0, Lcom/tds/tapdb/sdk/TapDB;->u:Lcom/tds/tapdb/sdk/TapDB;

    if-nez v0, :cond_a

    const-string v0, "clearUser method called error, TapDB SDK not initialized yet, please call init method first"

    invoke-static {v0}, Lcom/tds/tapdb/b/n;->b(Ljava/lang/String;)V

    return-void

    :cond_a
    sget-object v0, Lcom/tds/tapdb/sdk/TapDB;->u:Lcom/tds/tapdb/sdk/TapDB;

    iget-object v0, v0, Lcom/tds/tapdb/sdk/TapDB;->g:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1a

    const-string v0, "clearUser method called error, TapDB setUser method not called, please call setUser method first"

    invoke-static {v0}, Lcom/tds/tapdb/b/n;->b(Ljava/lang/String;)V

    return-void

    :cond_1a
    sget-object v0, Lcom/tds/tapdb/sdk/TapDB;->u:Lcom/tds/tapdb/sdk/TapDB;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/tds/tapdb/sdk/TapDB;->h:Lcom/tds/tapdb/sdk/LoginType;

    sget-object v0, Lcom/tds/tapdb/sdk/TapDB;->u:Lcom/tds/tapdb/sdk/TapDB;

    iput-object v1, v0, Lcom/tds/tapdb/sdk/TapDB;->g:Ljava/lang/String;

    return-void
.end method

.method public static closeFetchTapTapDeviceId()V
    .registers 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/tds/tapdb/sdk/TapDB;->z:Z

    return-void
.end method

.method static synthetic d(Lcom/tds/tapdb/sdk/TapDB;)Lcom/tds/tapdb/sdk/LoginType;
    .registers 1

    iget-object p0, p0, Lcom/tds/tapdb/sdk/TapDB;->l:Lcom/tds/tapdb/sdk/LoginType;

    return-object p0
.end method

.method static synthetic d()Lcom/tds/tapdb/sdk/TapDB;
    .registers 1

    sget-object v0, Lcom/tds/tapdb/sdk/TapDB;->u:Lcom/tds/tapdb/sdk/TapDB;

    return-object v0
.end method

.method public static deviceAdd(Lorg/json/JSONObject;)V
    .registers 2

    sget-object v0, Lcom/tds/tapdb/sdk/TapDB;->u:Lcom/tds/tapdb/sdk/TapDB;

    if-nez v0, :cond_a

    const-string p0, "deviceAdd method called error, TapDB SDK not initialized yet, please call init method first"

    invoke-static {p0}, Lcom/tds/tapdb/b/n;->b(Ljava/lang/String;)V

    return-void

    :cond_a
    new-instance v0, Lcom/tds/tapdb/sdk/TapDB$a;

    invoke-direct {v0, p0}, Lcom/tds/tapdb/sdk/TapDB$a;-><init>(Lorg/json/JSONObject;)V

    invoke-static {v0}, Lcom/tds/tapdb/b/b;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static deviceInitialize(Lorg/json/JSONObject;)V
    .registers 2

    sget-object v0, Lcom/tds/tapdb/sdk/TapDB;->u:Lcom/tds/tapdb/sdk/TapDB;

    if-nez v0, :cond_a

    const-string p0, "deviceInitialize method called error, TapDB SDK not initialized yet, please call init method first"

    invoke-static {p0}, Lcom/tds/tapdb/b/n;->b(Ljava/lang/String;)V

    return-void

    :cond_a
    new-instance v0, Lcom/tds/tapdb/sdk/TapDB$v;

    invoke-direct {v0, p0}, Lcom/tds/tapdb/sdk/TapDB$v;-><init>(Lorg/json/JSONObject;)V

    invoke-static {v0}, Lcom/tds/tapdb/b/b;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static deviceUpdate(Lorg/json/JSONObject;)V
    .registers 2

    sget-object v0, Lcom/tds/tapdb/sdk/TapDB;->u:Lcom/tds/tapdb/sdk/TapDB;

    if-nez v0, :cond_a

    const-string p0, "deviceUpdate method called error, TapDB SDK not initialized yet, please call init method first"

    invoke-static {p0}, Lcom/tds/tapdb/b/n;->b(Ljava/lang/String;)V

    return-void

    :cond_a
    new-instance v0, Lcom/tds/tapdb/sdk/TapDB$w;

    invoke-direct {v0, p0}, Lcom/tds/tapdb/sdk/TapDB$w;-><init>(Lorg/json/JSONObject;)V

    invoke-static {v0}, Lcom/tds/tapdb/b/b;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic e(Lcom/tds/tapdb/sdk/TapDB;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/tds/tapdb/sdk/TapDB;->f:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic e()Z
    .registers 1

    sget-boolean v0, Lcom/tds/tapdb/sdk/TapDB;->x:Z

    return v0
.end method

.method public static enableLog(Z)V
    .registers 1

    invoke-static {p0}, Lcom/tds/tapdb/b/n;->a(Z)V

    return-void
.end method

.method static synthetic f(Lcom/tds/tapdb/sdk/TapDB;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/tds/tapdb/sdk/TapDB;->c:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic f()Lcom/tds/tapdb/sdk/TapDB;
    .registers 1

    invoke-static {}, Lcom/tds/tapdb/sdk/TapDB;->g()Lcom/tds/tapdb/sdk/TapDB;

    move-result-object v0

    return-object v0
.end method

.method private static g()Lcom/tds/tapdb/sdk/TapDB;
    .registers 1

    sget-object v0, Lcom/tds/tapdb/sdk/TapDB;->u:Lcom/tds/tapdb/sdk/TapDB;

    if-nez v0, :cond_9

    const-string v0, "The static method getInstance(Context context) should be called before calling getInstance(), so you must call init(Context context, String clientId, String channel) method first"

    invoke-static {v0}, Lcom/tds/tapdb/b/n;->b(Ljava/lang/String;)V

    :cond_9
    sget-object v0, Lcom/tds/tapdb/sdk/TapDB;->u:Lcom/tds/tapdb/sdk/TapDB;

    return-object v0
.end method

.method public static getDeviceId(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_f

    invoke-static {p0}, Lcom/tds/tapdb/b/c;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_f
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "cannot call getDeviceId method on main thread"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getTapTapDID(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    sget-object v0, Lcom/tds/tapdb/sdk/TapDB;->v:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    sget-object p0, Lcom/tds/tapdb/sdk/TapDB;->v:Ljava/lang/String;

    return-object p0

    :cond_b
    const/4 v0, 0x0

    const-string v1, "taptapdid_share_preference"

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "taptap_device_id_saved_param"

    const-string v1, ""

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/tds/tapdb/sdk/TapDB;->v:Ljava/lang/String;

    return-object p0
.end method

.method static h()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/tds/tapdb/sdk/TapDB;->u:Lcom/tds/tapdb/sdk/TapDB;

    if-eqz v0, :cond_9

    sget-object v0, Lcom/tds/tapdb/sdk/TapDB;->u:Lcom/tds/tapdb/sdk/TapDB;

    iget-object v0, v0, Lcom/tds/tapdb/sdk/TapDB;->g:Ljava/lang/String;

    return-object v0

    :cond_9
    const/4 v0, 0x0

    return-object v0
.end method

.method private i()Ljava/util/Map;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "os"

    const-string v2, "Android"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/tds/tapdb/b/d;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "device_model"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/tds/tapdb/sdk/TapDB;->c:Landroid/content/Context;

    invoke-static {v1}, Lcom/tds/tapdb/b/c;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "install_uuid"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/tds/tapdb/sdk/TapDB;->c:Landroid/content/Context;

    invoke-static {v1}, Lcom/tds/tapdb/b/c;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "persist_uuid"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/tds/tapdb/sdk/TapDB;->c:Landroid/content/Context;

    invoke-static {v1}, Lcom/tds/tapdb/b/d;->a(Landroid/content/Context;)[I

    move-result-object v1

    const/4 v2, 0x0

    aget v2, v1, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "width"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x1

    aget v1, v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "height"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/tds/tapdb/b/d;->b()Ljava/lang/String;

    move-result-object v1

    const-string v2, "os_version"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/tds/tapdb/sdk/TapDB;->c:Landroid/content/Context;

    invoke-static {v1}, Lcom/tds/tapdb/b/c;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "provider"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/tds/tapdb/sdk/TapDB;->i:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6c

    iget-object v1, p0, Lcom/tds/tapdb/sdk/TapDB;->c:Landroid/content/Context;

    invoke-static {v1}, Lcom/tds/tapdb/b/a;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    goto :goto_6e

    :cond_6c
    iget-object v1, p0, Lcom/tds/tapdb/sdk/TapDB;->i:Ljava/lang/String;

    :goto_6e
    const-string v2, "app_version"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "sdk_version"

    const-string v2, "3.2.0"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/tds/tapdb/sdk/TapDB;->c:Landroid/content/Context;

    invoke-static {v1}, Lcom/tds/tapdb/b/i;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "network"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    const-class v0, Lcom/tds/tapdb/sdk/TapDB;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_4
    invoke-static {p0, p1, p2, v1}, Lcom/tds/tapdb/sdk/TapDB;->init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_9

    monitor-exit v0

    return-void

    :catchall_9
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 12

    const-class v0, Lcom/tds/tapdb/sdk/TapDB;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_4
    sput-boolean v1, Lcom/tds/tapdb/sdk/TapDB;->x:Z

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-static/range {v2 .. v7}, Lcom/tds/tapdb/sdk/TapDB;->init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLorg/json/JSONObject;)V
    :try_end_f
    .catchall {:try_start_4 .. :try_end_f} :catchall_11

    monitor-exit v0

    return-void

    :catchall_11
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V
    .registers 13

    const-class v0, Lcom/tds/tapdb/sdk/TapDB;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_4
    sput-boolean v1, Lcom/tds/tapdb/sdk/TapDB;->x:Z

    const/4 v6, 0x1

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v7, p4

    invoke-static/range {v2 .. v7}, Lcom/tds/tapdb/sdk/TapDB;->init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLorg/json/JSONObject;)V
    :try_end_f
    .catchall {:try_start_4 .. :try_end_f} :catchall_11

    monitor-exit v0

    return-void

    :catchall_11
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 12

    const-class v0, Lcom/tds/tapdb/sdk/TapDB;

    monitor-enter v0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    :try_start_9
    invoke-static/range {v1 .. v6}, Lcom/tds/tapdb/sdk/TapDB;->init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLorg/json/JSONObject;)V
    :try_end_c
    .catchall {:try_start_9 .. :try_end_c} :catchall_e

    monitor-exit v0

    return-void

    :catchall_e
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLorg/json/JSONObject;)V
    .registers 8

    const-class v0, Lcom/tds/tapdb/sdk/TapDB;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/tds/tapdb/sdk/TapDB;->u:Lcom/tds/tapdb/sdk/TapDB;

    if-nez v1, :cond_81

    if-nez p0, :cond_10

    const-string p0, "context is illegal"

    invoke-static {p0}, Lcom/tds/tapdb/b/n;->b(Ljava/lang/String;)V
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_83

    monitor-exit v0

    return-void

    :cond_10
    :try_start_10
    invoke-static {p1}, Lcom/tds/tapdb/b/k;->c(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1d

    const-string p0, "clientId is illegal"

    invoke-static {p0}, Lcom/tds/tapdb/b/n;->b(Ljava/lang/String;)V
    :try_end_1b
    .catchall {:try_start_10 .. :try_end_1b} :catchall_83

    monitor-exit v0

    return-void

    :cond_1d
    if-eqz p4, :cond_24

    :try_start_1f
    const-string v1, "com.taptap"

    :goto_21
    sput-object v1, Lcom/tds/tapdb/sdk/TapDB;->t:Ljava/lang/String;

    goto :goto_27

    :cond_24
    const-string v1, "com.taptap.global"

    goto :goto_21

    :goto_27
    invoke-static {p0}, Lcom/tds/tapdb/sdk/TapDB;->a(Landroid/content/Context;)Lcom/tds/tapdb/sdk/TapDB;

    move-result-object v1

    iput-object p1, v1, Lcom/tds/tapdb/sdk/TapDB;->f:Ljava/lang/String;

    iput-object p2, v1, Lcom/tds/tapdb/sdk/TapDB;->e:Ljava/lang/String;

    iput-object p3, v1, Lcom/tds/tapdb/sdk/TapDB;->i:Ljava/lang/String;

    invoke-direct {v1}, Lcom/tds/tapdb/sdk/TapDB;->i()Ljava/util/Map;

    move-result-object p2

    iput-object p2, v1, Lcom/tds/tapdb/sdk/TapDB;->d:Ljava/util/Map;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, v1, Lcom/tds/tapdb/sdk/TapDB;->j:Ljava/lang/String;

    sget-boolean p2, Lcom/tds/tapdb/sdk/TapDB;->z:Z

    if-eqz p2, :cond_48

    invoke-static {p0}, Lcom/tds/tapdb/sdk/TapDB;->c(Landroid/content/Context;)V

    :cond_48
    new-instance p2, Lcom/tds/tapdb/sdk/TapDB$k;

    invoke-direct {p2, p0, v1, p5}, Lcom/tds/tapdb/sdk/TapDB$k;-><init>(Landroid/content/Context;Lcom/tds/tapdb/sdk/TapDB;Lorg/json/JSONObject;)V

    invoke-static {p2}, Lcom/tds/tapdb/b/b;->a(Ljava/lang/Runnable;)V

    new-instance p2, Lcom/tds/tapdb/sdk/TapDB$p;

    invoke-direct {p2, p0}, Lcom/tds/tapdb/sdk/TapDB$p;-><init>(Landroid/content/Context;)V

    invoke-static {p2}, Lcom/tds/tapdb/b/b;->a(Ljava/lang/Runnable;)V

    new-instance p2, Lcom/tds/tapdb/sdk/TapDB$q;

    invoke-direct {p2, p0}, Lcom/tds/tapdb/sdk/TapDB$q;-><init>(Landroid/content/Context;)V

    invoke-static {p2}, Lcom/tds/tapdb/b/b;->a(Ljava/lang/Runnable;)V
    :try_end_60
    .catchall {:try_start_1f .. :try_end_60} :catchall_83

    :try_start_60
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    check-cast p2, Landroid/app/Application;

    sget-boolean p3, Lcom/tds/tapdb/sdk/TapDB;->y:Z

    if-nez p3, :cond_75

    new-instance p3, Lcom/tds/tapdb/sdk/TapDbActivityLifecycleCallbacks;

    invoke-direct {p3, p2}, Lcom/tds/tapdb/sdk/TapDbActivityLifecycleCallbacks;-><init>(Landroid/content/Context;)V

    invoke-virtual {p2, p3}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    const/4 p2, 0x1

    sput-boolean p2, Lcom/tds/tapdb/sdk/TapDB;->y:Z

    :cond_75
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, p1, p4}, Lcom/tds/tapdb/c/a;->a(Landroid/content/Context;Ljava/lang/String;Z)V
    :try_end_7c
    .catch Ljava/lang/Exception; {:try_start_60 .. :try_end_7c} :catch_7d
    .catchall {:try_start_60 .. :try_end_7c} :catchall_83

    goto :goto_81

    :catch_7d
    move-exception p0

    :try_start_7e
    invoke-static {p0}, Lcom/tds/tapdb/b/n;->a(Ljava/lang/Exception;)V
    :try_end_81
    .catchall {:try_start_7e .. :try_end_81} :catchall_83

    :cond_81
    :goto_81
    monitor-exit v0

    return-void

    :catchall_83
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 11

    const-class v0, Lcom/tds/tapdb/sdk/TapDB;

    monitor-enter v0

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v5, p3

    :try_start_9
    invoke-static/range {v1 .. v6}, Lcom/tds/tapdb/sdk/TapDB;->init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLorg/json/JSONObject;)V
    :try_end_c
    .catchall {:try_start_9 .. :try_end_c} :catchall_e

    monitor-exit v0

    return-void

    :catchall_e
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static isTapEnable()Z
    .registers 1

    sget-boolean v0, Lcom/tds/tapdb/sdk/TapDB;->x:Z

    return v0
.end method

.method public static onCharge(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V
    .registers 13

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    move-object v5, p5

    invoke-static/range {v0 .. v6}, Lcom/tds/tapdb/sdk/TapDB;->onCharge(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method public static onCharge(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V
    .registers 16

    sget-object v0, Lcom/tds/tapdb/sdk/TapDB;->u:Lcom/tds/tapdb/sdk/TapDB;

    if-nez v0, :cond_a

    const-string p0, "onCharge method called error, TapDB SDK not initialized yet, please call init method first"

    invoke-static {p0}, Lcom/tds/tapdb/b/n;->b(Ljava/lang/String;)V

    return-void

    :cond_a
    sget-object v0, Lcom/tds/tapdb/sdk/TapDB;->u:Lcom/tds/tapdb/sdk/TapDB;

    iget-object v0, v0, Lcom/tds/tapdb/sdk/TapDB;->g:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1a

    const-string p0, "TapDB setUser method not called, please call setUser method first"

    invoke-static {p0}, Lcom/tds/tapdb/b/n;->b(Ljava/lang/String;)V

    return-void

    :cond_1a
    new-instance v8, Lcom/tds/tapdb/sdk/TapDB$g;

    move-object v0, v8

    move-object v1, p6

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/tds/tapdb/sdk/TapDB$g;-><init>(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V

    invoke-static {v8}, Lcom/tds/tapdb/b/b;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static onEvent(Ljava/lang/String;Lorg/json/JSONObject;)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    sget-object v0, Lcom/tds/tapdb/sdk/TapDB;->u:Lcom/tds/tapdb/sdk/TapDB;

    if-nez v0, :cond_a

    const-string p0, "onEvent method called error, TapDB SDK not initialized yet, please call init method first"

    invoke-static {p0}, Lcom/tds/tapdb/b/n;->b(Ljava/lang/String;)V

    return-void

    :cond_a
    new-instance v0, Lcom/tds/tapdb/sdk/TapDB$f;

    invoke-direct {v0, p0, p1}, Lcom/tds/tapdb/sdk/TapDB$f;-><init>(Ljava/lang/String;Lorg/json/JSONObject;)V

    invoke-static {v0}, Lcom/tds/tapdb/b/b;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static registerDynamicProperties(Lcom/tds/tapdb/sdk/TapDB$TapDBDataDynamicProperties;)V
    .registers 2

    invoke-static {}, Lcom/tds/tapdb/sdk/TapDB;->g()Lcom/tds/tapdb/sdk/TapDB;

    move-result-object v0

    if-eqz v0, :cond_8

    iput-object p0, v0, Lcom/tds/tapdb/sdk/TapDB;->b:Lcom/tds/tapdb/sdk/TapDB$TapDBDataDynamicProperties;

    :cond_8
    return-void
.end method

.method public static registerStaticProperties(Lorg/json/JSONObject;)V
    .registers 2

    invoke-static {}, Lcom/tds/tapdb/sdk/TapDB;->g()Lcom/tds/tapdb/sdk/TapDB;

    move-result-object v0

    if-eqz v0, :cond_8

    iput-object p0, v0, Lcom/tds/tapdb/sdk/TapDB;->a:Lorg/json/JSONObject;

    :cond_8
    return-void
.end method

.method public static setCustomEventHost(Ljava/lang/String;)V
    .registers 1

    invoke-static {p0}, Lcom/tds/tapdb/sdk/b;->a(Ljava/lang/String;)V

    return-void
.end method

.method public static setHost(Ljava/lang/String;)V
    .registers 1

    invoke-static {p0}, Lcom/tds/tapdb/sdk/b;->b(Ljava/lang/String;)V

    return-void
.end method

.method public static setLevel(I)V
    .registers 2

    sget-object v0, Lcom/tds/tapdb/sdk/TapDB;->u:Lcom/tds/tapdb/sdk/TapDB;

    if-nez v0, :cond_a

    const-string p0, "setLevel method called error, TapDB SDK not initialized yet, please call init method first"

    invoke-static {p0}, Lcom/tds/tapdb/b/n;->b(Ljava/lang/String;)V

    return-void

    :cond_a
    sget-object v0, Lcom/tds/tapdb/sdk/TapDB;->u:Lcom/tds/tapdb/sdk/TapDB;

    iget-object v0, v0, Lcom/tds/tapdb/sdk/TapDB;->g:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1a

    const-string p0, "setLevel method called error, TapDB setUser method not called, please call setUser method first"

    invoke-static {p0}, Lcom/tds/tapdb/b/n;->b(Ljava/lang/String;)V

    return-void

    :cond_1a
    new-instance v0, Lcom/tds/tapdb/sdk/TapDB$t;

    invoke-direct {v0, p0}, Lcom/tds/tapdb/sdk/TapDB$t;-><init>(I)V

    invoke-static {v0}, Lcom/tds/tapdb/b/b;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static setName(Ljava/lang/String;)V
    .registers 2

    sget-object v0, Lcom/tds/tapdb/sdk/TapDB;->u:Lcom/tds/tapdb/sdk/TapDB;

    if-nez v0, :cond_a

    const-string p0, "setName method called error, TapDB SDK not initialized yet, please call init method first"

    invoke-static {p0}, Lcom/tds/tapdb/b/n;->b(Ljava/lang/String;)V

    return-void

    :cond_a
    sget-object v0, Lcom/tds/tapdb/sdk/TapDB;->u:Lcom/tds/tapdb/sdk/TapDB;

    iget-object v0, v0, Lcom/tds/tapdb/sdk/TapDB;->g:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1a

    const-string p0, "setName method called error, TapDB setUser method not called, please call setUser method first"

    invoke-static {p0}, Lcom/tds/tapdb/b/n;->b(Ljava/lang/String;)V

    return-void

    :cond_1a
    new-instance v0, Lcom/tds/tapdb/sdk/TapDB$s;

    invoke-direct {v0, p0}, Lcom/tds/tapdb/sdk/TapDB$s;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/tds/tapdb/b/b;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static setServer(Ljava/lang/String;)V
    .registers 2

    sget-object v0, Lcom/tds/tapdb/sdk/TapDB;->u:Lcom/tds/tapdb/sdk/TapDB;

    if-nez v0, :cond_a

    const-string p0, "setServer method called error, TapDB SDK not initialized yet, please call init method first"

    invoke-static {p0}, Lcom/tds/tapdb/b/n;->b(Ljava/lang/String;)V

    return-void

    :cond_a
    sget-object v0, Lcom/tds/tapdb/sdk/TapDB;->u:Lcom/tds/tapdb/sdk/TapDB;

    iget-object v0, v0, Lcom/tds/tapdb/sdk/TapDB;->g:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1a

    const-string p0, "set Server method called error, TapDB setUser method not called, please call setUser method first"

    invoke-static {p0}, Lcom/tds/tapdb/b/n;->b(Ljava/lang/String;)V

    return-void

    :cond_1a
    new-instance v0, Lcom/tds/tapdb/sdk/TapDB$u;

    invoke-direct {v0, p0}, Lcom/tds/tapdb/sdk/TapDB$u;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/tds/tapdb/b/b;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static setTapTapDID(Landroid/content/Context;Ljava/lang/String;Lcom/tds/tapdb/Callback;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lcom/tds/tapdb/Callback<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_c

    const-string p0, "setTapTapDID with empty str!"

    invoke-static {p0}, Lcom/tds/tapdb/b/n;->b(Ljava/lang/String;)V

    return-void

    :cond_c
    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    :try_start_e
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v0

    if-nez v0, :cond_52

    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/tds/tapdb/sdk/TapDB;->n:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x1

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_2e

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v2

    :cond_2e
    if-eqz v2, :cond_52

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "taptapdid.tmp"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tds/tapdb/b/p/a;->a([BLjava/lang/String;)V
    :try_end_50
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_50} :catch_51

    goto :goto_52

    :catch_51
    move-exception v0

    :cond_52
    :goto_52
    :try_start_52
    invoke-static {p0, p1}, Lcom/tds/tapdb/service/TapTapDIDIntentService;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1
    :try_end_56
    .catch Ljava/lang/Exception; {:try_start_52 .. :try_end_56} :catch_71

    const-string v0, "receiver"

    :try_start_58
    new-instance v1, Lcom/tds/tapdb/sdk/TapDB$n;

    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v1, v2, p2}, Lcom/tds/tapdb/sdk/TapDB$n;-><init>(Landroid/os/Handler;Lcom/tds/tapdb/Callback;)V

    invoke-static {v1}, Lcom/tds/tapdb/sdk/TapDB;->a(Landroid/os/ResultReceiver;)Landroid/os/ResultReceiver;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    invoke-virtual {p0, p1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_70
    .catch Ljava/lang/Exception; {:try_start_58 .. :try_end_70} :catch_71

    goto :goto_7e

    :catch_71
    move-exception p0

    new-instance p1, Ljava/lang/Throwable;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-interface {p2, p1}, Lcom/tds/tapdb/Callback;->onFail(Ljava/lang/Throwable;)V

    :goto_7e
    return-void
.end method

.method public static setUser(Ljava/lang/String;)V
    .registers 2

    sget-object v0, Lcom/tds/tapdb/sdk/LoginType;->NONE:Lcom/tds/tapdb/sdk/LoginType;

    invoke-static {p0, v0}, Lcom/tds/tapdb/sdk/TapDB;->setUser(Ljava/lang/String;Lcom/tds/tapdb/sdk/LoginType;)V

    return-void
.end method

.method public static setUser(Ljava/lang/String;Lcom/tds/tapdb/sdk/LoginType;)V
    .registers 3

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/tds/tapdb/sdk/TapDB;->a(Ljava/lang/String;Lcom/tds/tapdb/sdk/LoginType;Lorg/json/JSONObject;)V

    return-void
.end method

.method public static setUser(Ljava/lang/String;Lorg/json/JSONObject;)V
    .registers 3

    sget-object v0, Lcom/tds/tapdb/sdk/LoginType;->NONE:Lcom/tds/tapdb/sdk/LoginType;

    invoke-static {p0, v0, p1}, Lcom/tds/tapdb/sdk/TapDB;->a(Ljava/lang/String;Lcom/tds/tapdb/sdk/LoginType;Lorg/json/JSONObject;)V

    return-void
.end method

.method public static trackEvent(Ljava/lang/String;Lorg/json/JSONObject;)V
    .registers 3

    sget-object v0, Lcom/tds/tapdb/sdk/TapDB;->u:Lcom/tds/tapdb/sdk/TapDB;

    if-nez v0, :cond_a

    const-string p0, "track method called error, TapDB SDK not initialized yet, please call init method first"

    invoke-static {p0}, Lcom/tds/tapdb/b/n;->b(Ljava/lang/String;)V

    return-void

    :cond_a
    new-instance v0, Lcom/tds/tapdb/sdk/TapDB$e;

    invoke-direct {v0, p0, p1}, Lcom/tds/tapdb/sdk/TapDB$e;-><init>(Ljava/lang/String;Lorg/json/JSONObject;)V

    invoke-static {v0}, Lcom/tds/tapdb/b/b;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static unregisterStaticProperty(Ljava/lang/String;)V
    .registers 2

    invoke-static {}, Lcom/tds/tapdb/sdk/TapDB;->g()Lcom/tds/tapdb/sdk/TapDB;

    move-result-object v0

    if-eqz v0, :cond_b

    iget-object v0, v0, Lcom/tds/tapdb/sdk/TapDB;->a:Lorg/json/JSONObject;

    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    :cond_b
    return-void
.end method

.method public static userAdd(Lorg/json/JSONObject;)V
    .registers 2

    sget-object v0, Lcom/tds/tapdb/sdk/TapDB;->u:Lcom/tds/tapdb/sdk/TapDB;

    if-nez v0, :cond_a

    const-string p0, "userAdd method called error, TapDB SDK not initialized yet, please call init method first"

    invoke-static {p0}, Lcom/tds/tapdb/b/n;->b(Ljava/lang/String;)V

    return-void

    :cond_a
    sget-object v0, Lcom/tds/tapdb/sdk/TapDB;->u:Lcom/tds/tapdb/sdk/TapDB;

    iget-object v0, v0, Lcom/tds/tapdb/sdk/TapDB;->g:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1a

    const-string p0, "userAdd method called error, TapDB setUser method not called, please call setUser method first"

    invoke-static {p0}, Lcom/tds/tapdb/b/n;->b(Ljava/lang/String;)V

    return-void

    :cond_1a
    new-instance v0, Lcom/tds/tapdb/sdk/TapDB$d;

    invoke-direct {v0, p0}, Lcom/tds/tapdb/sdk/TapDB$d;-><init>(Lorg/json/JSONObject;)V

    invoke-static {v0}, Lcom/tds/tapdb/b/b;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static userInitialize(Lorg/json/JSONObject;)V
    .registers 2

    sget-object v0, Lcom/tds/tapdb/sdk/TapDB;->u:Lcom/tds/tapdb/sdk/TapDB;

    if-nez v0, :cond_a

    const-string p0, "userInitialize method called error, TapDB SDK not initialized yet, please call init method first"

    invoke-static {p0}, Lcom/tds/tapdb/b/n;->b(Ljava/lang/String;)V

    return-void

    :cond_a
    sget-object v0, Lcom/tds/tapdb/sdk/TapDB;->u:Lcom/tds/tapdb/sdk/TapDB;

    iget-object v0, v0, Lcom/tds/tapdb/sdk/TapDB;->g:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1a

    const-string p0, "userInitialize method called error, TapDB setUser method not called, please call setUser method first"

    invoke-static {p0}, Lcom/tds/tapdb/b/n;->b(Ljava/lang/String;)V

    return-void

    :cond_1a
    new-instance v0, Lcom/tds/tapdb/sdk/TapDB$b;

    invoke-direct {v0, p0}, Lcom/tds/tapdb/sdk/TapDB$b;-><init>(Lorg/json/JSONObject;)V

    invoke-static {v0}, Lcom/tds/tapdb/b/b;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static userUpdate(Lorg/json/JSONObject;)V
    .registers 2

    sget-object v0, Lcom/tds/tapdb/sdk/TapDB;->u:Lcom/tds/tapdb/sdk/TapDB;

    if-nez v0, :cond_a

    const-string p0, "userUpdate method called error, TapDB SDK not initialized yet, please call init method first"

    invoke-static {p0}, Lcom/tds/tapdb/b/n;->b(Ljava/lang/String;)V

    return-void

    :cond_a
    sget-object v0, Lcom/tds/tapdb/sdk/TapDB;->u:Lcom/tds/tapdb/sdk/TapDB;

    iget-object v0, v0, Lcom/tds/tapdb/sdk/TapDB;->g:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1a

    const-string p0, "userUpdate method called error, TapDB setUser method not called, please call setUser method first"

    invoke-static {p0}, Lcom/tds/tapdb/b/n;->b(Ljava/lang/String;)V

    return-void

    :cond_1a
    new-instance v0, Lcom/tds/tapdb/sdk/TapDB$c;

    invoke-direct {v0, p0}, Lcom/tds/tapdb/sdk/TapDB$c;-><init>(Lorg/json/JSONObject;)V

    invoke-static {v0}, Lcom/tds/tapdb/b/b;->a(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method a(Lcom/tds/tapdb/b/e;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V
    .registers 11

    iget-object v5, p0, Lcom/tds/tapdb/sdk/TapDB;->g:Ljava/lang/String;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/tds/tapdb/sdk/TapDB;->a(Lcom/tds/tapdb/b/e;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)V

    return-void
.end method

.method a(Lcom/tds/tapdb/b/e;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)V
    .registers 14

    :try_start_0
    invoke-virtual {p1}, Lcom/tds/tapdb/b/e;->b()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-static {p3}, Lcom/tds/tapdb/b/l;->a(Ljava/lang/String;)V

    :cond_9
    invoke-static {p4}, Lcom/tds/tapdb/b/l;->a(Lorg/json/JSONObject;)V

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_11} :catch_141

    const-string v1, "type"

    :try_start_13
    invoke-virtual {p1}, Lcom/tds/tapdb/b/e;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-boolean v1, Lcom/tds/tapdb/sdk/TapDB;->x:Z

    if-eqz v1, :cond_23

    iget-object v1, p0, Lcom/tds/tapdb/sdk/TapDB;->f:Ljava/lang/String;
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_20} :catch_141

    const-string v2, "client_id"

    goto :goto_27

    :cond_23
    :try_start_23
    iget-object v1, p0, Lcom/tds/tapdb/sdk/TapDB;->f:Ljava/lang/String;
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_25} :catch_141

    const-string v2, "index"

    :goto_27
    :try_start_27
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_2a} :catch_141

    const-string v1, "ip_v6"

    :try_start_2c
    invoke-static {}, Lcom/tds/tapdb/b/h;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/tds/tapdb/b/c;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "name"

    invoke-static {v0, v1, p3}, Lcom/tds/tapdb/b/c;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/tds/tapdb/b/e;->b()Z

    move-result v1
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_3c} :catch_141

    const/4 v2, 0x1

    const-string v3, "tap_sandbox"

    const-string v4, "properties"

    const-string v5, "flag_running_in_sandbox"

    const-string v6, "device_id"

    const-string v7, "user_id"

    if-eqz v1, :cond_106

    :try_start_49
    invoke-static {v0, v7, p5}, Lcom/tds/tapdb/b/c;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/tds/tapdb/sdk/TapDB;->c:Landroid/content/Context;

    invoke-static {p1}, Lcom/tds/tapdb/b/c;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, v6, p1}, Lcom/tds/tapdb/b/c;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string p1, "device_login"

    invoke-static {p1, p3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1
    :try_end_5b
    .catch Ljava/lang/Exception; {:try_start_49 .. :try_end_5b} :catch_141

    if-nez p1, :cond_66

    const-string p1, "open_id"

    :try_start_5f
    invoke-static {}, Lcom/tds/tapdb/b/c;->a()Ljava/lang/String;

    move-result-object p3

    invoke-static {v0, p1, p3}, Lcom/tds/tapdb/b/c;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_66
    iget-object p1, p0, Lcom/tds/tapdb/sdk/TapDB;->d:Ljava/util/Map;

    if-eqz p1, :cond_72

    new-instance p1, Lorg/json/JSONObject;

    iget-object p3, p0, Lcom/tds/tapdb/sdk/TapDB;->d:Ljava/util/Map;

    invoke-direct {p1, p3}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    goto :goto_77

    :cond_72
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    :goto_77
    sget-object p3, Lcom/tds/tapdb/sdk/TapDB;->v:Ljava/lang/String;

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3
    :try_end_7d
    .catch Ljava/lang/Exception; {:try_start_5f .. :try_end_7d} :catch_141

    if-nez p3, :cond_86

    const-string p3, "tap_did"

    :try_start_81
    sget-object p5, Lcom/tds/tapdb/sdk/TapDB;->v:Ljava/lang/String;

    invoke-static {p1, p3, p5}, Lcom/tds/tapdb/b/c;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_86
    .catch Ljava/lang/Exception; {:try_start_81 .. :try_end_86} :catch_141

    :cond_86
    const-string p3, "channel"

    :try_start_88
    iget-object p5, p0, Lcom/tds/tapdb/sdk/TapDB;->e:Ljava/lang/String;

    invoke-static {p1, p3, p5}, Lcom/tds/tapdb/b/c;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_8d
    .catch Ljava/lang/Exception; {:try_start_88 .. :try_end_8d} :catch_141

    const-string p3, "device_id1"

    :try_start_8f
    iget-object p5, p0, Lcom/tds/tapdb/sdk/TapDB;->c:Landroid/content/Context;

    invoke-static {p5}, Lcom/tds/tapdb/b/c;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p5

    invoke-static {p1, p3, p5}, Lcom/tds/tapdb/b/c;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_98
    .catch Ljava/lang/Exception; {:try_start_8f .. :try_end_98} :catch_141

    const-string p3, "device_id2"

    :try_start_9a
    iget-object p5, p0, Lcom/tds/tapdb/sdk/TapDB;->c:Landroid/content/Context;

    invoke-static {p5}, Lcom/tds/tapdb/b/f;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p5

    invoke-static {p1, p3, p5}, Lcom/tds/tapdb/b/c;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_a3
    .catch Ljava/lang/Exception; {:try_start_9a .. :try_end_a3} :catch_141

    const-string p3, "device_id3"

    :try_start_a5
    iget-object p5, p0, Lcom/tds/tapdb/sdk/TapDB;->c:Landroid/content/Context;

    invoke-static {p5}, Lcom/tds/tapdb/b/c;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p5

    invoke-static {p1, p3, p5}, Lcom/tds/tapdb/b/c;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_ae
    .catch Ljava/lang/Exception; {:try_start_a5 .. :try_end_ae} :catch_141

    const-string p3, "device_id4"

    :try_start_b0
    iget-object p5, p0, Lcom/tds/tapdb/sdk/TapDB;->c:Landroid/content/Context;

    invoke-static {p5}, Lcom/tds/tapdb/b/j;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p5

    invoke-static {p1, p3, p5}, Lcom/tds/tapdb/b/c;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_b9
    .catch Ljava/lang/Exception; {:try_start_b0 .. :try_end_b9} :catch_141

    const-string p3, "smaf_id"

    :try_start_bb
    invoke-static {}, Lcom/tds/tapdb/c/a;->a()Ljava/lang/String;

    move-result-object p5

    invoke-static {p1, p3, p5}, Lcom/tds/tapdb/b/c;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p3, p0, Lcom/tds/tapdb/sdk/TapDB;->h:Lcom/tds/tapdb/sdk/LoginType;
    :try_end_c4
    .catch Ljava/lang/Exception; {:try_start_bb .. :try_end_c4} :catch_141

    if-eqz p3, :cond_cf

    const-string p5, "login_type"

    :try_start_c8
    invoke-virtual {p3}, Lcom/tds/tapdb/sdk/LoginType;->getDecoratedName()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p5, p3}, Lcom/tds/tapdb/b/c;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_cf
    invoke-static {p4, p1}, Lcom/tds/tapdb/b/c;->a(Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    invoke-direct {p0, p1}, Lcom/tds/tapdb/sdk/TapDB;->a(Lorg/json/JSONObject;)V
    :try_end_d5
    .catch Ljava/lang/Exception; {:try_start_c8 .. :try_end_d5} :catch_141

    const-string p3, "event_uuid"

    :try_start_d7
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p4

    invoke-static {p1, p3, p4}, Lcom/tds/tapdb/b/c;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_de
    .catch Ljava/lang/Exception; {:try_start_d7 .. :try_end_de} :catch_141

    const-string p3, "session_uuid"

    :try_start_e0
    iget-object p4, p0, Lcom/tds/tapdb/sdk/TapDB;->j:Ljava/lang/String;

    invoke-static {p1, p3, p4}, Lcom/tds/tapdb/b/c;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_e5
    .catch Ljava/lang/Exception; {:try_start_e0 .. :try_end_e5} :catch_141

    const-string p3, "event_index"

    :try_start_e7
    iget-wide p4, p0, Lcom/tds/tapdb/sdk/TapDB;->k:J

    const-wide/16 v6, 0x1

    add-long/2addr p4, v6

    iput-wide p4, p0, Lcom/tds/tapdb/sdk/TapDB;->k:J

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p4

    invoke-static {p1, p3, p4}, Lcom/tds/tapdb/b/c;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {}, Ljava/lang/System;->getProperties()Ljava/util/Properties;

    move-result-object p3

    invoke-virtual {p3, v5}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    if-eqz p3, :cond_102

    invoke-virtual {p1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_102
    invoke-virtual {v0, v4, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_13d

    :cond_106
    sget-object p3, Lcom/tds/tapdb/sdk/TapDB$o;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p3, p1

    packed-switch p1, :pswitch_data_146

    goto :goto_11f

    :pswitch_112
    iget-object p1, p0, Lcom/tds/tapdb/sdk/TapDB;->c:Landroid/content/Context;

    invoke-static {p1}, Lcom/tds/tapdb/b/c;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, v6, p1}, Lcom/tds/tapdb/b/c;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_11f

    :pswitch_11c
    invoke-static {v0, v7, p5}, Lcom/tds/tapdb/b/c;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    :goto_11f
    if-nez p4, :cond_126

    new-instance p4, Lorg/json/JSONObject;

    invoke-direct {p4}, Lorg/json/JSONObject;-><init>()V

    :cond_126
    const-string p1, "sdk_version"

    const-string p3, "3.2.0"

    invoke-virtual {p4, p1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {}, Ljava/lang/System;->getProperties()Ljava/util/Properties;

    move-result-object p1

    invoke-virtual {p1, v5}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_13a

    invoke-virtual {p4, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_13a
    invoke-virtual {v0, v4, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :goto_13d
    invoke-static {p2, v0}, Lcom/tds/tapdb/sdk/b;->a(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_140
    .catch Ljava/lang/Exception; {:try_start_e7 .. :try_end_140} :catch_141

    goto :goto_145

    :catch_141
    move-exception p1

    invoke-static {p1}, Lcom/tds/tapdb/b/n;->a(Ljava/lang/Exception;)V

    :goto_145
    return-void

    :pswitch_data_146
    .packed-switch 0x1
        :pswitch_11c
        :pswitch_11c
        :pswitch_11c
        :pswitch_112
        :pswitch_112
        :pswitch_112
    .end packed-switch
.end method
