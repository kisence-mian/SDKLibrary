.class public abstract Lcom/sigmob/sdk/base/common/BaseBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method public constructor <init>(J)V
    .registers 3

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private static a(Landroid/content/Context;)Ljava/lang/Object;
    .registers 5

    const/4 v0, 0x0

    :try_start_1
    const-string v1, "android.support.v4.content.LocalBroadcastManager"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_6} :catch_24

    move-result-object v1

    :goto_7
    :try_start_7
    const-string v2, "androidx.localbroadcastmanager.content.LocalBroadcastManager"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_c} :catch_2c

    move-result-object v1

    :goto_d
    if-eqz v1, :cond_23

    new-instance v2, Lcom/sigmob/sdk/base/common/utils/x;

    const-string v3, "getInstance"

    invoke-direct {v2, v1, v3}, Lcom/sigmob/sdk/base/common/utils/x;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    const-class v1, Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lcom/sigmob/sdk/base/common/utils/x;->a(Ljava/lang/Class;Ljava/lang/Object;)Lcom/sigmob/sdk/base/common/utils/x;

    :try_start_1f
    invoke-virtual {v2}, Lcom/sigmob/sdk/base/common/utils/x;->a()Ljava/lang/Object;
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_22} :catch_27

    move-result-object v0

    :cond_23
    :goto_23
    return-object v0

    :catch_24
    move-exception v1

    move-object v1, v0

    goto :goto_7

    :catch_27
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_23

    :catch_2c
    move-exception v2

    goto :goto_d
.end method

.method public static a(Landroid/content/Context;JLjava/lang/String;)V
    .registers 5

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0, p3}, Lcom/sigmob/sdk/base/common/BaseBroadcastReceiver;->a(Landroid/content/Context;JLjava/util/Map;Ljava/lang/String;)V

    return-void
.end method

.method public static a(Landroid/content/Context;JLjava/util/Map;Ljava/lang/String;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "J",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-static {p0}, Lcom/sigmob/sdk/base/common/utils/v;->a(Ljava/lang/Object;)Z

    invoke-static {p4}, Lcom/sigmob/sdk/base/common/utils/v;->a(Ljava/lang/Object;)Z

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, p4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "broadcastIdentifier"

    invoke-virtual {v2, v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    if-eqz p3, :cond_32

    invoke-interface {p3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_32

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :try_start_26
    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_2f
    .catch Ljava/lang/Throwable; {:try_start_26 .. :try_end_2f} :catch_30

    goto :goto_1a

    :catch_30
    move-exception v0

    goto :goto_1a

    :cond_32
    invoke-static {p0}, Lcom/sigmob/sdk/base/common/BaseBroadcastReceiver;->a(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_47

    new-instance v1, Lcom/sigmob/sdk/base/common/utils/x;

    const-string v3, "sendBroadcast"

    invoke-direct {v1, v0, v3}, Lcom/sigmob/sdk/base/common/utils/x;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    const-class v0, Landroid/content/Intent;

    invoke-virtual {v1, v0, v2}, Lcom/sigmob/sdk/base/common/utils/x;->a(Ljava/lang/Class;Ljava/lang/Object;)Lcom/sigmob/sdk/base/common/utils/x;

    :try_start_44
    invoke-virtual {v1}, Lcom/sigmob/sdk/base/common/utils/x;->a()Ljava/lang/Object;
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_44 .. :try_end_47} :catch_48

    :cond_47
    :goto_47
    return-void

    :catch_48
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_47
.end method


# virtual methods
.method protected abstract a()Landroid/content/IntentFilter;
.end method

.method public a(Landroid/content/BroadcastReceiver;)V
    .registers 5

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/BaseBroadcastReceiver;->a:Landroid/content/Context;

    if-eqz v0, :cond_20

    if-eqz p1, :cond_20

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/BaseBroadcastReceiver;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/sigmob/sdk/base/common/BaseBroadcastReceiver;->a(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1d

    new-instance v1, Lcom/sigmob/sdk/base/common/utils/x;

    const-string v2, "unregisterReceiver"

    invoke-direct {v1, v0, v2}, Lcom/sigmob/sdk/base/common/utils/x;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    const-class v0, Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v0, p1}, Lcom/sigmob/sdk/base/common/utils/x;->a(Ljava/lang/Class;Ljava/lang/Object;)Lcom/sigmob/sdk/base/common/utils/x;

    :try_start_1a
    invoke-virtual {v1}, Lcom/sigmob/sdk/base/common/utils/x;->a()Ljava/lang/Object;
    :try_end_1d
    .catch Ljava/lang/Throwable; {:try_start_1a .. :try_end_1d} :catch_21

    :cond_1d
    :goto_1d
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sigmob/sdk/base/common/BaseBroadcastReceiver;->a:Landroid/content/Context;

    :cond_20
    return-void

    :catch_21
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1d
.end method

.method public a(Landroid/content/BroadcastReceiver;Landroid/content/Context;)V
    .registers 6

    iput-object p2, p0, Lcom/sigmob/sdk/base/common/BaseBroadcastReceiver;->a:Landroid/content/Context;

    invoke-static {p2}, Lcom/sigmob/sdk/base/common/BaseBroadcastReceiver;->a(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_20

    new-instance v1, Lcom/sigmob/sdk/base/common/utils/x;

    const-string v2, "registerReceiver"

    invoke-direct {v1, v0, v2}, Lcom/sigmob/sdk/base/common/utils/x;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    const-class v0, Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v0, p1}, Lcom/sigmob/sdk/base/common/utils/x;->a(Ljava/lang/Class;Ljava/lang/Object;)Lcom/sigmob/sdk/base/common/utils/x;

    const-class v0, Landroid/content/IntentFilter;

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/common/BaseBroadcastReceiver;->a()Landroid/content/IntentFilter;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/sigmob/sdk/base/common/utils/x;->a(Ljava/lang/Class;Ljava/lang/Object;)Lcom/sigmob/sdk/base/common/utils/x;

    :try_start_1d
    invoke-virtual {v1}, Lcom/sigmob/sdk/base/common/utils/x;->a()Ljava/lang/Object;
    :try_end_20
    .catch Ljava/lang/Throwable; {:try_start_1d .. :try_end_20} :catch_21

    :cond_20
    :goto_20
    return-void

    :catch_21
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_20
.end method

.method protected a(Landroid/content/Intent;)Z
    .registers 6

    invoke-static {p1}, Lcom/sigmob/sdk/base/common/utils/v;->a(Ljava/lang/Object;)Z

    const-string v0, "broadcastIdentifier"

    const-wide/16 v2, -0x1

    invoke-virtual {p1, v0, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    const/4 v0, 0x1

    return v0
.end method
