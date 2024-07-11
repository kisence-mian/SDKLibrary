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

.method public static a(Landroid/content/Context;JLjava/lang/String;)V
    .registers 5

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0, p3}, Lcom/sigmob/sdk/base/common/BaseBroadcastReceiver;->a(Landroid/content/Context;JLjava/util/Map;Ljava/lang/String;)V

    return-void
.end method

.method public static a(Landroid/content/Context;JLjava/util/Map;Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "J",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-static {p0}, Lcom/sigmob/sdk/common/f/m$a;->a(Ljava/lang/Object;)Z

    invoke-static {p4}, Lcom/sigmob/sdk/common/f/m$a;->a(Ljava/lang/Object;)Z

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string p4, "broadcastIdentifier"

    invoke-virtual {v0, p4, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    if-eqz p3, :cond_32

    invoke-interface {p3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1a
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_32

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    :try_start_26
    invoke-interface {p3, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/String;

    invoke-virtual {v0, p2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_2f
    .catchall {:try_start_26 .. :try_end_2f} :catchall_30

    goto :goto_1a

    :catchall_30
    move-exception p2

    goto :goto_1a

    :cond_32
    invoke-static {p0}, Lcom/sigmob/sdk/base/common/u;->a(Landroid/content/Context;)Lcom/sigmob/sdk/base/common/u;

    move-result-object p0

    if-eqz p0, :cond_40

    :try_start_38
    invoke-virtual {p0, v0}, Lcom/sigmob/sdk/base/common/u;->a(Landroid/content/Intent;)Z
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_38 .. :try_end_3b} :catch_3c

    goto :goto_40

    :catch_3c
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_40
    :goto_40
    return-void
.end method


# virtual methods
.method protected abstract a()Landroid/content/IntentFilter;
.end method

.method public a(Landroid/content/BroadcastReceiver;)V
    .registers 3

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/BaseBroadcastReceiver;->a:Landroid/content/Context;

    if-eqz v0, :cond_17

    if-eqz p1, :cond_17

    invoke-static {v0}, Lcom/sigmob/sdk/base/common/u;->a(Landroid/content/Context;)Lcom/sigmob/sdk/base/common/u;

    move-result-object v0

    if-eqz v0, :cond_14

    :try_start_c
    invoke-virtual {v0, p1}, Lcom/sigmob/sdk/base/common/u;->a(Landroid/content/BroadcastReceiver;)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_f} :catch_10

    goto :goto_14

    :catch_10
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_14
    :goto_14
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/sigmob/sdk/base/common/BaseBroadcastReceiver;->a:Landroid/content/Context;

    :cond_17
    return-void
.end method

.method public a(Landroid/content/BroadcastReceiver;Landroid/content/Context;)V
    .registers 4

    iput-object p2, p0, Lcom/sigmob/sdk/base/common/BaseBroadcastReceiver;->a:Landroid/content/Context;

    invoke-static {p2}, Lcom/sigmob/sdk/base/common/u;->a(Landroid/content/Context;)Lcom/sigmob/sdk/base/common/u;

    move-result-object p2

    if-eqz p2, :cond_14

    :try_start_8
    invoke-virtual {p0}, Lcom/sigmob/sdk/base/common/BaseBroadcastReceiver;->a()Landroid/content/IntentFilter;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Lcom/sigmob/sdk/base/common/u;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_f} :catch_10

    goto :goto_14

    :catch_10
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_14
    :goto_14
    return-void
.end method

.method protected a(Landroid/content/Intent;)Z
    .registers 5

    invoke-static {p1}, Lcom/sigmob/sdk/common/f/m$a;->a(Ljava/lang/Object;)Z

    const-string v0, "broadcastIdentifier"

    const-wide/16 v1, -0x1

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    const/4 p1, 0x1

    return p1
.end method
