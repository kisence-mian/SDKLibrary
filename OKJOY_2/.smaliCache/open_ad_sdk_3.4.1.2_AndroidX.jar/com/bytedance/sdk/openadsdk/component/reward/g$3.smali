.class Lcom/bytedance/sdk/openadsdk/component/reward/g$3;
.super Landroid/content/BroadcastReceiver;
.source "RewardVideoLoadManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/component/reward/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/component/reward/g;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/component/reward/g;)V
    .registers 2

    .line 335
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/g$3;->a:Lcom/bytedance/sdk/openadsdk/component/reward/g;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4

    .line 338
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 339
    const-string p2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_36

    .line 340
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/g$3;->a:Lcom/bytedance/sdk/openadsdk/component/reward/g;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/g;->a(Lcom/bytedance/sdk/openadsdk/component/reward/g;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/utils/x;->c(Landroid/content/Context;)I

    move-result p1

    .line 341
    if-eqz p1, :cond_36

    .line 343
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/g$3;->a:Lcom/bytedance/sdk/openadsdk/component/reward/g;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/g;->b(Lcom/bytedance/sdk/openadsdk/component/reward/g;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 344
    :goto_22
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_36

    .line 345
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Runnable;

    const/4 v0, 0x1

    invoke-static {p2, v0}, Lcom/bytedance/sdk/openadsdk/j/e;->a(Ljava/lang/Runnable;I)V

    .line 346
    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    goto :goto_22

    .line 350
    :cond_36
    return-void
.end method
