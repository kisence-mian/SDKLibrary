.class public final Lcom/mintegral/msdk/system/a;
.super Ljava/lang/Object;
.source "MIntegralSDKImpl.java"

# interfaces
.implements Lcom/mintegral/msdk/MIntegralSDK;


# static fields
.field public static a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final b:Ljava/util/concurrent/locks/Lock;


# instance fields
.field private volatile c:Lcom/mintegral/msdk/MIntegralSDK$PLUGIN_LOAD_STATUS;

.field private d:Landroid/content/Context;

.field private e:Z

.field private f:Lcom/mintegral/msdk/click/AppReceiver;

.field private g:Z

.field private h:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 39
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    sput-object v0, Lcom/mintegral/msdk/system/a;->b:Ljava/util/concurrent/locks/Lock;

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    sget-object v0, Lcom/mintegral/msdk/MIntegralSDK$PLUGIN_LOAD_STATUS;->INITIAL:Lcom/mintegral/msdk/MIntegralSDK$PLUGIN_LOAD_STATUS;

    iput-object v0, p0, Lcom/mintegral/msdk/system/a;->c:Lcom/mintegral/msdk/MIntegralSDK$PLUGIN_LOAD_STATUS;

    .line 52
    iput-boolean v1, p0, Lcom/mintegral/msdk/system/a;->e:Z

    .line 53
    iput-object v2, p0, Lcom/mintegral/msdk/system/a;->f:Lcom/mintegral/msdk/click/AppReceiver;

    .line 55
    iput-boolean v1, p0, Lcom/mintegral/msdk/system/a;->g:Z

    .line 56
    iput-object v2, p0, Lcom/mintegral/msdk/system/a;->h:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic a(Lcom/mintegral/msdk/system/a;)Landroid/content/Context;
    .registers 2

    .prologue
    .line 38
    iget-object v0, p0, Lcom/mintegral/msdk/system/a;->d:Landroid/content/Context;

    return-object v0
.end method

.method private a()V
    .registers 4

    .prologue
    .line 155
    sget-object v0, Lcom/mintegral/msdk/system/a;->b:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 167
    :try_start_5
    invoke-static {}, Lcom/mintegral/msdk/base/controller/b;->a()Lcom/mintegral/msdk/base/controller/b;

    move-result-object v0

    sget-object v1, Lcom/mintegral/msdk/system/a;->a:Ljava/util/Map;

    iget-object v2, p0, Lcom/mintegral/msdk/system/a;->d:Landroid/content/Context;

    invoke-virtual {v0, v1, v2}, Lcom/mintegral/msdk/base/controller/b;->a(Ljava/util/Map;Landroid/content/Context;)V

    .line 168
    sget-object v0, Lcom/mintegral/msdk/MIntegralSDK$PLUGIN_LOAD_STATUS;->COMPLETED:Lcom/mintegral/msdk/MIntegralSDK$PLUGIN_LOAD_STATUS;

    iput-object v0, p0, Lcom/mintegral/msdk/system/a;->c:Lcom/mintegral/msdk/MIntegralSDK$PLUGIN_LOAD_STATUS;

    .line 170
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/mintegral/msdk/system/a$1;

    invoke-direct {v1, p0}, Lcom/mintegral/msdk/system/a$1;-><init>(Lcom/mintegral/msdk/system/a;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 183
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 185
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/mintegral/msdk/system/a$2;

    invoke-direct {v1, p0}, Lcom/mintegral/msdk/system/a$2;-><init>(Lcom/mintegral/msdk/system/a;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 192
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_2e} :catch_34

    .line 200
    :cond_2e
    :goto_2e
    sget-object v0, Lcom/mintegral/msdk/system/a;->b:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 202
    return-void

    .line 193
    :catch_34
    move-exception v0

    .line 194
    sget-boolean v1, Lcom/mintegral/msdk/MIntegralConstans;->DEBUG:Z

    if-eqz v1, :cond_2e

    .line 195
    const-string v1, "com.mintegral.msdk"

    const-string v2, "\u65e0\u6cd5\u521d\u59cb\u5316MMSDK"

    invoke-static {v1, v2, v0}, Lcom/mintegral/msdk/base/utils/g;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 196
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2e
.end method

.method static synthetic a(Lcom/mintegral/msdk/system/a;Landroid/content/Context;)V
    .registers 4

    .prologue
    .line 3074
    if-eqz p1, :cond_24

    iget-boolean v0, p0, Lcom/mintegral/msdk/system/a;->e:Z

    if-nez v0, :cond_24

    .line 3075
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mintegral/msdk/system/a;->e:Z

    .line 3076
    new-instance v0, Lcom/mintegral/msdk/click/AppReceiver;

    invoke-direct {v0}, Lcom/mintegral/msdk/click/AppReceiver;-><init>()V

    iput-object v0, p0, Lcom/mintegral/msdk/system/a;->f:Lcom/mintegral/msdk/click/AppReceiver;

    .line 3078
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 3079
    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3080
    const-string v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 3081
    iget-object v1, p0, Lcom/mintegral/msdk/system/a;->f:Lcom/mintegral/msdk/click/AppReceiver;

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 38
    :cond_24
    return-void
.end method

.method static synthetic a(Landroid/content/Context;)Z
    .registers 4

    .prologue
    const/16 v2, 0x1a

    const/4 v0, 0x0

    .line 38
    .line 3061
    if-eqz p0, :cond_11

    .line 3062
    invoke-static {p0}, Lcom/mintegral/msdk/base/utils/c;->m(Landroid/content/Context;)I

    move-result v1

    .line 3066
    :goto_9
    if-lt v1, v2, :cond_10

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v2, :cond_10

    .line 3067
    const/4 v0, 0x1

    :cond_10
    return v0

    :cond_11
    move v1, v0

    goto :goto_9
.end method

.method static synthetic a(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 3

    .prologue
    .line 38
    invoke-static {p0, p1}, Lcom/mintegral/msdk/system/a;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static b(Landroid/content/Context;)V
    .registers 2

    .prologue
    .line 343
    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/controller/a;->h()Landroid/content/Context;

    move-result-object v0

    .line 344
    if-nez v0, :cond_13

    .line 345
    if-eqz p0, :cond_13

    .line 346
    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mintegral/msdk/base/controller/a;->a(Landroid/content/Context;)V

    .line 349
    :cond_13
    return-void
.end method

.method static synthetic b(Lcom/mintegral/msdk/system/a;Landroid/content/Context;)V
    .registers 4

    .prologue
    .line 3087
    if-eqz p1, :cond_35

    :try_start_2
    iget-boolean v0, p0, Lcom/mintegral/msdk/system/a;->g:Z

    if-nez v0, :cond_35

    .line 3088
    const-string v0, "com.alphab.receiver.AlphabReceiver"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 3089
    if-eqz v0, :cond_35

    .line 3090
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_35

    .line 3091
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/mintegral/msdk/system/a;->g:Z

    .line 3092
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/BroadcastReceiver;

    iput-object v0, p0, Lcom/mintegral/msdk/system/a;->h:Landroid/content/BroadcastReceiver;

    .line 3094
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 3095
    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3096
    const-string v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 3097
    iget-object v1, p0, Lcom/mintegral/msdk/system/a;->h:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_35
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_35} :catch_36
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_35} :catch_3f

    .line 3111
    :cond_35
    :goto_35
    return-void

    .line 3102
    :catch_36
    move-exception v0

    .line 3103
    sget-boolean v1, Lcom/mintegral/msdk/MIntegralConstans;->DEBUG:Z

    if-eqz v1, :cond_35

    .line 3104
    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_35

    .line 3107
    :catch_3f
    move-exception v0

    .line 3108
    sget-boolean v1, Lcom/mintegral/msdk/MIntegralConstans;->DEBUG:Z

    if-eqz v1, :cond_35

    .line 3109
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_35
.end method

.method private static b(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 7

    .prologue
    const/4 v0, 0x0

    .line 130
    if-eqz p0, :cond_29

    .line 131
    :try_start_3
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 132
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    .line 131
    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 133
    if-eqz v1, :cond_29

    iget-object v2, v1, Landroid/content/pm/PackageInfo;->receivers:[Landroid/content/pm/ActivityInfo;

    if-eqz v2, :cond_29

    .line 134
    iget-object v2, v1, Landroid/content/pm/PackageInfo;->receivers:[Landroid/content/pm/ActivityInfo;

    array-length v3, v2

    move v1, v0

    :goto_1a
    if-ge v1, v3, :cond_29

    aget-object v4, v2, v1

    .line 135
    if-eqz v4, :cond_2a

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_25
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_25} :catch_2d
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_25} :catch_36

    move-result v4

    if-eqz v4, :cond_2a

    .line 136
    const/4 v0, 0x1

    .line 151
    :cond_29
    :goto_29
    return v0

    .line 134
    :cond_2a
    add-int/lit8 v1, v1, 0x1

    goto :goto_1a

    .line 141
    :catch_2d
    move-exception v1

    .line 142
    sget-boolean v2, Lcom/mintegral/msdk/MIntegralConstans;->DEBUG:Z

    if-eqz v2, :cond_29

    .line 143
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_29

    .line 145
    :catch_36
    move-exception v1

    .line 146
    sget-boolean v2, Lcom/mintegral/msdk/MIntegralConstans;->DEBUG:Z

    if-eqz v2, :cond_29

    .line 147
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_29
.end method


# virtual methods
.method public final a(Landroid/app/Application;)V
    .registers 3

    .prologue
    .line 309
    invoke-virtual {p1}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/mintegral/msdk/system/a;->d:Landroid/content/Context;

    .line 310
    invoke-direct {p0}, Lcom/mintegral/msdk/system/a;->a()V

    .line 311
    return-void
.end method

.method public final getConsentStatus(Landroid/content/Context;)Z
    .registers 3

    .prologue
    .line 266
    invoke-static {p1}, Lcom/mintegral/msdk/system/a;->b(Landroid/content/Context;)V

    .line 267
    invoke-static {}, Lcom/mintegral/msdk/base/controller/authoritycontroller/a;->a()Lcom/mintegral/msdk/base/controller/authoritycontroller/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/controller/authoritycontroller/a;->e()Z

    move-result v0

    .line 268
    return v0
.end method

.method public final getMTGConfigurationMap(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 291
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 292
    const-string v1, "mintegral_appid"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 293
    const-string v1, "mintegral_appkey"

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 294
    const-string v1, "mintegral_appstartupcarsh"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 295
    return-object v0
.end method

.method public final getStatus()Lcom/mintegral/msdk/MIntegralSDK$PLUGIN_LOAD_STATUS;
    .registers 2

    .prologue
    .line 206
    iget-object v0, p0, Lcom/mintegral/msdk/system/a;->c:Lcom/mintegral/msdk/MIntegralSDK$PLUGIN_LOAD_STATUS;

    return-object v0
.end method

.method public final init(Ljava/util/Map;Landroid/app/Application;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroid/app/Application;",
            ")V"
        }
    .end annotation

    .prologue
    .line 315
    invoke-virtual {p2}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/mintegral/msdk/system/a;->d:Landroid/content/Context;

    .line 316
    sput-object p1, Lcom/mintegral/msdk/system/a;->a:Ljava/util/Map;

    .line 317
    invoke-direct {p0}, Lcom/mintegral/msdk/system/a;->a()V

    .line 318
    return-void
.end method

.method public final init(Ljava/util/Map;Landroid/content/Context;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .prologue
    .line 329
    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/mintegral/msdk/system/a;->d:Landroid/content/Context;

    .line 330
    sput-object p1, Lcom/mintegral/msdk/system/a;->a:Ljava/util/Map;

    .line 331
    invoke-direct {p0}, Lcom/mintegral/msdk/system/a;->a()V

    .line 333
    return-void
.end method

.method public final initAsync(Ljava/util/Map;Landroid/app/Application;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroid/app/Application;",
            ")V"
        }
    .end annotation

    .prologue
    .line 322
    invoke-virtual {p2}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/mintegral/msdk/system/a;->d:Landroid/content/Context;

    .line 323
    sput-object p1, Lcom/mintegral/msdk/system/a;->a:Ljava/util/Map;

    .line 324
    invoke-direct {p0}, Lcom/mintegral/msdk/system/a;->a()V

    .line 325
    return-void
.end method

.method public final initAsync(Ljava/util/Map;Landroid/content/Context;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .prologue
    .line 337
    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/mintegral/msdk/system/a;->d:Landroid/content/Context;

    .line 338
    sput-object p1, Lcom/mintegral/msdk/system/a;->a:Ljava/util/Map;

    .line 339
    invoke-direct {p0}, Lcom/mintegral/msdk/system/a;->a()V

    .line 340
    return-void
.end method

.method public final preload(Ljava/util/Map;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 211
    iget-object v0, p0, Lcom/mintegral/msdk/system/a;->c:Lcom/mintegral/msdk/MIntegralSDK$PLUGIN_LOAD_STATUS;

    sget-object v1, Lcom/mintegral/msdk/MIntegralSDK$PLUGIN_LOAD_STATUS;->COMPLETED:Lcom/mintegral/msdk/MIntegralSDK$PLUGIN_LOAD_STATUS;

    if-ne v0, v1, :cond_e

    .line 212
    invoke-static {}, Lcom/mintegral/msdk/base/controller/b;->a()Lcom/mintegral/msdk/base/controller/b;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/mintegral/msdk/base/controller/b;->a(Ljava/util/Map;I)V

    .line 214
    :cond_e
    return-void
.end method

.method public final preloadFrame(Ljava/util/Map;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 273
    invoke-static {}, Lcom/mintegral/msdk/base/controller/b;->a()Lcom/mintegral/msdk/base/controller/b;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/mintegral/msdk/base/controller/b;->a(Ljava/util/Map;I)V

    .line 274
    return-void
.end method

.method public final release()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 300
    iget-object v0, p0, Lcom/mintegral/msdk/system/a;->c:Lcom/mintegral/msdk/MIntegralSDK$PLUGIN_LOAD_STATUS;

    sget-object v1, Lcom/mintegral/msdk/MIntegralSDK$PLUGIN_LOAD_STATUS;->COMPLETED:Lcom/mintegral/msdk/MIntegralSDK$PLUGIN_LOAD_STATUS;

    if-ne v0, v1, :cond_e

    .line 301
    invoke-static {}, Lcom/mintegral/msdk/base/controller/b;->a()Lcom/mintegral/msdk/base/controller/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/controller/b;->b()V

    .line 303
    :cond_e
    iget-object v0, p0, Lcom/mintegral/msdk/system/a;->d:Landroid/content/Context;

    .line 2115
    if-eqz v0, :cond_21

    iget-object v1, p0, Lcom/mintegral/msdk/system/a;->f:Lcom/mintegral/msdk/click/AppReceiver;

    if-eqz v1, :cond_21

    iget-boolean v1, p0, Lcom/mintegral/msdk/system/a;->e:Z

    if-eqz v1, :cond_21

    .line 2116
    iput-boolean v2, p0, Lcom/mintegral/msdk/system/a;->e:Z

    .line 2117
    iget-object v1, p0, Lcom/mintegral/msdk/system/a;->f:Lcom/mintegral/msdk/click/AppReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 304
    :cond_21
    iget-object v0, p0, Lcom/mintegral/msdk/system/a;->d:Landroid/content/Context;

    .line 2122
    if-eqz v0, :cond_34

    iget-object v1, p0, Lcom/mintegral/msdk/system/a;->h:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_34

    iget-boolean v1, p0, Lcom/mintegral/msdk/system/a;->g:Z

    if-eqz v1, :cond_34

    .line 2123
    iput-boolean v2, p0, Lcom/mintegral/msdk/system/a;->g:Z

    .line 2124
    iget-object v1, p0, Lcom/mintegral/msdk/system/a;->h:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 305
    :cond_34
    invoke-static {}, Lcom/mintegral/msdk/c/b/a;->a()Lcom/mintegral/msdk/c/b/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mintegral/msdk/c/b/a;->b()V

    .line 306
    return-void
.end method

.method public final reportUser(Lcom/mintegral/msdk/MIntegralUser;)V
    .registers 3

    .prologue
    .line 228
    invoke-static {}, Lcom/mintegral/msdk/base/controller/b;->a()Lcom/mintegral/msdk/base/controller/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mintegral/msdk/base/controller/b;->a(Lcom/mintegral/msdk/MIntegralUser;)V

    .line 229
    return-void
.end method

.method public final setAdMobClickListener(Lcom/mintegral/msdk/out/AdMobClickListener;)V
    .registers 3

    .prologue
    .line 222
    invoke-static {}, Lcom/mintegral/msdk/base/controller/b;->a()Lcom/mintegral/msdk/base/controller/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mintegral/msdk/base/controller/b;->a(Lcom/mintegral/msdk/out/AdMobClickListener;)V

    .line 224
    return-void
.end method

.method public final setConsentStatus(Landroid/content/Context;I)V
    .registers 4

    .prologue
    .line 260
    invoke-static {p1}, Lcom/mintegral/msdk/system/a;->b(Landroid/content/Context;)V

    .line 261
    invoke-static {}, Lcom/mintegral/msdk/base/controller/authoritycontroller/a;->a()Lcom/mintegral/msdk/base/controller/authoritycontroller/a;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/mintegral/msdk/base/controller/authoritycontroller/a;->a(I)V

    .line 262
    return-void
.end method

.method public final setDoNotTrackStatus(Z)V
    .registers 3

    .prologue
    .line 240
    invoke-static {}, Lcom/mintegral/msdk/base/controller/authoritycontroller/a;->a()Lcom/mintegral/msdk/base/controller/authoritycontroller/a;

    if-eqz p1, :cond_a

    const/4 v0, 0x1

    :goto_6
    invoke-static {v0}, Lcom/mintegral/msdk/base/controller/authoritycontroller/a;->b(I)V

    .line 241
    return-void

    .line 240
    :cond_a
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public final setThirdPartyFeatures(Ljava/util/Map;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 279
    return-void
.end method

.method public final setUserPrivateInfoType(Landroid/content/Context;Ljava/lang/String;I)V
    .registers 5

    .prologue
    .line 233
    invoke-static {p1}, Lcom/mintegral/msdk/system/a;->b(Landroid/content/Context;)V

    .line 234
    invoke-static {}, Lcom/mintegral/msdk/base/controller/authoritycontroller/a;->a()Lcom/mintegral/msdk/base/controller/authoritycontroller/a;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lcom/mintegral/msdk/base/controller/authoritycontroller/a;->a(Ljava/lang/String;I)V

    .line 235
    return-void
.end method

.method public final showUserPrivateInfoTips(Landroid/content/Context;Lcom/mintegral/msdk/base/controller/authoritycontroller/CallBackForDeveloper;)V
    .registers 6

    .prologue
    .line 254
    invoke-static {p1}, Lcom/mintegral/msdk/system/a;->b(Landroid/content/Context;)V

    .line 255
    invoke-static {}, Lcom/mintegral/msdk/base/controller/authoritycontroller/a;->a()Lcom/mintegral/msdk/base/controller/authoritycontroller/a;

    move-result-object v0

    .line 1241
    iput-object p2, v0, Lcom/mintegral/msdk/base/controller/authoritycontroller/a;->b:Lcom/mintegral/msdk/base/controller/authoritycontroller/CallBackForDeveloper;

    .line 1242
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 1244
    invoke-static {}, Lcom/mintegral/msdk/c/b;->a()Lcom/mintegral/msdk/c/b;

    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/controller/a;->j()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mintegral/msdk/c/b;->b(Ljava/lang/String;)Lcom/mintegral/msdk/c/a;

    move-result-object v0

    .line 1245
    if-nez v0, :cond_26

    .line 1246
    invoke-static {}, Lcom/mintegral/msdk/c/b;->a()Lcom/mintegral/msdk/c/b;

    invoke-static {}, Lcom/mintegral/msdk/c/b;->b()Lcom/mintegral/msdk/c/a;

    move-result-object v0

    .line 1248
    :cond_26
    invoke-virtual {v0}, Lcom/mintegral/msdk/c/a;->s()I

    move-result v0

    .line 1249
    const/4 v2, 0x1

    if-ne v0, v2, :cond_6e

    .line 1250
    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/controller/a;->h()Landroid/content/Context;

    move-result-object v0

    .line 1251
    if-nez v0, :cond_4b

    .line 1252
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Landroid/content/Context;

    if-eqz v2, :cond_4b

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_4b

    .line 1253
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 1268
    :cond_4b
    :try_start_4b
    const-string v1, "com.mintegral.msdk.mtgjscommon.authority.activity.MTGAuthorityActivity"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 1269
    const-string v1, "com.mintegral.msdk.mtgjscommon.authority.activity.MTGAuthorityActivity"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 1270
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1271
    const/high16 v1, 0x10000000

    invoke-virtual {v2, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1272
    invoke-virtual {v0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_63
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4b .. :try_end_63} :catch_64
    .catch Ljava/lang/Throwable; {:try_start_4b .. :try_end_63} :catch_69

    .line 1277
    :cond_63
    :goto_63
    return-void

    .line 1274
    :catch_64
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_63

    .line 1276
    :catch_69
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_63

    .line 1257
    :cond_6e
    if-nez v0, :cond_63

    .line 1258
    const-string v0, "Temporarily does not support the popup window"

    invoke-interface {p2, v0}, Lcom/mintegral/msdk/base/controller/authoritycontroller/CallBackForDeveloper;->onShowPopWindowStatusFaile(Ljava/lang/String;)V

    goto :goto_63
.end method

.method public final userPrivateInfo(Landroid/content/Context;)Lcom/mintegral/msdk/base/controller/authoritycontroller/AuthorityInfoBean;
    .registers 3

    .prologue
    .line 245
    invoke-static {p1}, Lcom/mintegral/msdk/system/a;->b(Landroid/content/Context;)V

    .line 246
    invoke-static {}, Lcom/mintegral/msdk/base/controller/authoritycontroller/a;->a()Lcom/mintegral/msdk/base/controller/authoritycontroller/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/controller/authoritycontroller/a;->b()Lcom/mintegral/msdk/base/controller/authoritycontroller/AuthorityInfoBean;

    move-result-object v0

    .line 247
    return-object v0
.end method
