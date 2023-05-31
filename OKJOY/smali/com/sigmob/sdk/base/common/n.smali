.class public abstract Lcom/sigmob/sdk/base/common/n;
.super Ljava/lang/Object;


# instance fields
.field protected a:Ljava/lang/Long;

.field protected b:Landroid/content/Context;

.field protected c:Landroid/content/Context;

.field protected d:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field protected e:Landroid/widget/RelativeLayout;

.field protected f:Lcom/sigmob/sdk/base/common/o;


# direct methods
.method protected constructor <init>(Landroid/app/Activity;Ljava/lang/Long;Lcom/sigmob/sdk/base/common/o;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sigmob/sdk/base/common/n;->c:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/sigmob/sdk/base/common/n;->b:Landroid/content/Context;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/sigmob/sdk/base/common/n;->d:Ljava/lang/ref/WeakReference;

    iput-object p2, p0, Lcom/sigmob/sdk/base/common/n;->a:Ljava/lang/Long;

    iput-object p3, p0, Lcom/sigmob/sdk/base/common/n;->f:Lcom/sigmob/sdk/base/common/o;

    new-instance v0, Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/sigmob/sdk/base/common/n;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sigmob/sdk/base/common/n;->e:Landroid/widget/RelativeLayout;

    return-void
.end method


# virtual methods
.method public abstract a()V
.end method

.method public a(IILandroid/content/Intent;)V
    .registers 4

    return-void
.end method

.method public abstract a(Landroid/content/res/Configuration;)V
.end method

.method public abstract a(Landroid/os/Bundle;)V
.end method

.method protected a(Ljava/lang/String;)V
    .registers 6

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/n;->a:Ljava/lang/Long;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/n;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/sigmob/sdk/base/common/n;->a:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v0, v2, v3, p1}, Lcom/sigmob/sdk/base/common/BaseBroadcastReceiver;->a(Landroid/content/Context;JLjava/lang/String;)V

    :goto_f
    return-void

    :cond_10
    const-string v0, "Tried to broadcast a video event without a broadcast identifier to send to."

    invoke-static {v0}, Lcom/sigmob/sdk/base/common/logging/SigmobLog;->w(Ljava/lang/String;)V

    goto :goto_f
.end method

.method protected a(Ljava/lang/String;Ljava/util/Map;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/n;->a:Ljava/lang/Long;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/n;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/sigmob/sdk/base/common/n;->a:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v0, v2, v3, p2, p1}, Lcom/sigmob/sdk/base/common/BaseBroadcastReceiver;->a(Landroid/content/Context;JLjava/util/Map;Ljava/lang/String;)V

    :goto_f
    return-void

    :cond_10
    const-string v0, "Tried to broadcast a video event without a broadcast identifier to send to."

    invoke-static {v0}, Lcom/sigmob/sdk/base/common/logging/SigmobLog;->w(Ljava/lang/String;)V

    goto :goto_f
.end method

.method public abstract b()V
.end method

.method public abstract c()V
.end method

.method public abstract d()V
.end method

.method public abstract e()V
.end method

.method public f()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method protected g()Lcom/sigmob/sdk/base/common/o;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/n;->f:Lcom/sigmob/sdk/base/common/o;

    return-object v0
.end method

.method protected h()Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/n;->b:Landroid/content/Context;

    return-object v0
.end method

.method protected i()Landroid/view/ViewGroup;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/n;->e:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method protected j()Landroid/app/Activity;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/n;->d:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/n;->d:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    :goto_c
    return-object v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method
