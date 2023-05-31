.class public Lcom/bytedance/sdk/openadsdk/utils/HomeWatcherReceiver;
.super Landroid/content/BroadcastReceiver;
.source "HomeWatcherReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/utils/HomeWatcherReceiver$a;
    }
.end annotation


# instance fields
.field private a:Lcom/bytedance/sdk/openadsdk/utils/HomeWatcherReceiver$a;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 11
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/bytedance/sdk/openadsdk/utils/HomeWatcherReceiver$a;)V
    .registers 2

    .prologue
    .line 52
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/utils/HomeWatcherReceiver;->a:Lcom/bytedance/sdk/openadsdk/utils/HomeWatcherReceiver$a;

    .line 53
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7

    .prologue
    .line 24
    if-nez p2, :cond_3

    .line 49
    :cond_2
    :goto_2
    return-void

    .line 25
    :cond_3
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 26
    const-string v1, "HomeReceiver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onReceive: action: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    const-string v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 29
    const-string v0, "reason"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 30
    const-string v1, "HomeReceiver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "reason: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    const-string v1, "homekey"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5e

    .line 34
    const-string v0, "HomeReceiver"

    const-string v1, "homekey"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/utils/HomeWatcherReceiver;->a:Lcom/bytedance/sdk/openadsdk/utils/HomeWatcherReceiver$a;

    if-eqz v0, :cond_2

    .line 36
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/utils/HomeWatcherReceiver;->a:Lcom/bytedance/sdk/openadsdk/utils/HomeWatcherReceiver$a;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/utils/HomeWatcherReceiver$a;->E()V

    goto :goto_2

    .line 38
    :cond_5e
    const-string v1, "recentapps"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_77

    .line 40
    const-string v0, "HomeReceiver"

    const-string v1, "long press home key or activity switch"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/utils/HomeWatcherReceiver;->a:Lcom/bytedance/sdk/openadsdk/utils/HomeWatcherReceiver$a;

    if-eqz v0, :cond_2

    .line 42
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/utils/HomeWatcherReceiver;->a:Lcom/bytedance/sdk/openadsdk/utils/HomeWatcherReceiver$a;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/utils/HomeWatcherReceiver$a;->F()V

    goto :goto_2

    .line 44
    :cond_77
    const-string v1, "assist"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 45
    const-string v0, "HomeReceiver"

    const-string v1, "assist"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2
.end method
