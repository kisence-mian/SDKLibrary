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

    .line 11
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/bytedance/sdk/openadsdk/utils/HomeWatcherReceiver$a;)V
    .registers 2

    .line 52
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/utils/HomeWatcherReceiver;->a:Lcom/bytedance/sdk/openadsdk/utils/HomeWatcherReceiver$a;

    .line 53
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    .line 24
    if-nez p2, :cond_3

    return-void

    .line 25
    :cond_3
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 26
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onReceive: action: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HomeReceiver"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    const-string v0, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_76

    .line 29
    const-string p1, "reason"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 30
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "reason: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    const-string p2, "homekey"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_56

    .line 34
    invoke-static {v1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/utils/HomeWatcherReceiver;->a:Lcom/bytedance/sdk/openadsdk/utils/HomeWatcherReceiver$a;

    if-eqz p1, :cond_76

    .line 36
    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/utils/HomeWatcherReceiver$a;->J()V

    goto :goto_76

    .line 38
    :cond_56
    const-string p2, "recentapps"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_6b

    .line 40
    const-string p1, "long press home key or activity switch"

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/utils/HomeWatcherReceiver;->a:Lcom/bytedance/sdk/openadsdk/utils/HomeWatcherReceiver$a;

    if-eqz p1, :cond_76

    .line 42
    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/utils/HomeWatcherReceiver$a;->K()V

    goto :goto_76

    .line 44
    :cond_6b
    const-string p2, "assist"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_76

    .line 45
    invoke-static {v1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    :cond_76
    :goto_76
    return-void
.end method
