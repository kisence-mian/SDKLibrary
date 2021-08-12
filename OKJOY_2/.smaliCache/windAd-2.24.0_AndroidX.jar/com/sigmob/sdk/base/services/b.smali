.class public Lcom/sigmob/sdk/base/services/b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/sigmob/sdk/base/services/j$a;


# instance fields
.field a:Lcom/sigmob/sdk/base/services/a;

.field b:Lcom/sigmob/sdk/base/services/k;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/sigmob/sdk/base/services/k;->b:Lcom/sigmob/sdk/base/services/k;

    iput-object v0, p0, Lcom/sigmob/sdk/base/services/b;->b:Lcom/sigmob/sdk/base/services/k;

    iget-object v0, p0, Lcom/sigmob/sdk/base/services/b;->a:Lcom/sigmob/sdk/base/services/a;

    if-nez v0, :cond_12

    new-instance v0, Lcom/sigmob/sdk/base/services/a;

    invoke-direct {v0}, Lcom/sigmob/sdk/base/services/a;-><init>()V

    iput-object v0, p0, Lcom/sigmob/sdk/base/services/b;->a:Lcom/sigmob/sdk/base/services/a;

    :cond_12
    return-void
.end method

.method public static b()V
    .registers 1

    :try_start_0
    invoke-static {}, Lcom/sigmob/sdk/base/services/b;->e()V
    :try_end_3
    .catchall {:try_start_0 .. :try_end_3} :catchall_4

    goto :goto_5

    :catchall_4
    move-exception v0

    :goto_5
    return-void
.end method

.method private static c()Z
    .registers 4

    invoke-static {}, Lcom/sigmob/sdk/common/a;->ai()Lcom/sigmob/sdk/common/a;

    move-result-object v0

    if-eqz v0, :cond_37

    invoke-static {}, Lcom/sigmob/sdk/common/a;->ai()Lcom/sigmob/sdk/common/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/sdk/common/a;->Y()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_11

    goto :goto_37

    :cond_11
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    sget-object v1, Lcom/sigmob/sdk/common/Constants;->sdf:Ljava/text/SimpleDateFormat;

    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/sigmob/sdk/common/a;->ai()Lcom/sigmob/sdk/common/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sigmob/sdk/common/a;->Y()Landroid/content/Context;

    move-result-object v1

    const-string v2, "BuriedPointConfig"

    invoke-static {v1, v2}, Lcom/sigmob/sdk/common/f/o;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "last_day"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    :cond_37
    :goto_37
    const/4 v0, 0x1

    return v0
.end method

.method private static d()V
    .registers 2

    invoke-static {}, Lcom/sigmob/sdk/common/b/c$a;->b()Lcom/sigmob/sdk/common/b/c$a;

    move-result-object v0

    new-instance v1, Lcom/sigmob/sdk/base/services/b$1;

    invoke-direct {v1}, Lcom/sigmob/sdk/base/services/b$1;-><init>()V

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/common/b/c$a;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static e()V
    .registers 2

    :try_start_0
    invoke-static {}, Lcom/sigmob/sdk/common/a;->b()Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-static {}, Lcom/sigmob/sdk/base/services/b;->c()Z

    move-result v0

    invoke-static {}, Lcom/sigmob/sdk/common/SDKConfig;->sharedInstance()Lcom/sigmob/sdk/common/SDKConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sigmob/sdk/common/SDKConfig;->isDisableUpAppInfo()Z

    move-result v1

    if-nez v1, :cond_20

    if-nez v0, :cond_20

    invoke-static {}, Lcom/sigmob/sdk/base/services/b;->d()V
    :try_end_19
    .catchall {:try_start_0 .. :try_end_19} :catchall_1a

    goto :goto_20

    :catchall_1a
    move-exception v0

    const-string v1, "BuriedPointManager getInstance"

    invoke-static {v1, v0}, Lcom/sigmob/logger/SigmobLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_20
    :goto_20
    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .registers 5

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.INSTALL_PACKAGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1b

    if-lt v1, v2, :cond_15

    const-string v1, "android.intent.action.INSTALL_FAILURE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    :cond_15
    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.DOWNLOAD_COMPLETE"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sigmob/sdk/base/services/b;->a:Lcom/sigmob/sdk/base/services/a;

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public a()Z
    .registers 2

    invoke-static {}, Lcom/sigmob/sdk/common/a;->ai()Lcom/sigmob/sdk/common/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/sdk/common/a;->Y()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sigmob/sdk/base/services/b;->a(Landroid/content/Context;)V

    sget-object v0, Lcom/sigmob/sdk/base/services/k;->a:Lcom/sigmob/sdk/base/services/k;

    iput-object v0, p0, Lcom/sigmob/sdk/base/services/b;->b:Lcom/sigmob/sdk/base/services/k;

    const/4 v0, 0x0

    return v0
.end method
