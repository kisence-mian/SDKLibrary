.class public Lcom/sigmob/sdk/splash/c;
.super Ljava/lang/Object;


# instance fields
.field a:Lcom/sigmob/sdk/splash/g;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/view/ViewGroup;Lcom/sigmob/sdk/base/models/LoadAdRequest;Lcom/sigmob/sdk/splash/b;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/sigmob/sdk/splash/g;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/sigmob/sdk/splash/g;-><init>(Landroid/app/Activity;Landroid/view/ViewGroup;Lcom/sigmob/sdk/base/models/LoadAdRequest;Lcom/sigmob/sdk/splash/b;)V

    iput-object v0, p0, Lcom/sigmob/sdk/splash/c;->a:Lcom/sigmob/sdk/splash/g;

    return-void
.end method


# virtual methods
.method public a(Landroid/app/Activity;)V
    .registers 3

    iget-object v0, p0, Lcom/sigmob/sdk/splash/c;->a:Lcom/sigmob/sdk/splash/g;

    invoke-virtual {v0, p1}, Lcom/sigmob/sdk/splash/g;->a(Landroid/app/Activity;)V

    return-void
.end method

.method public a()Z
    .registers 3

    iget-object v0, p0, Lcom/sigmob/sdk/splash/c;->a:Lcom/sigmob/sdk/splash/g;

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/splash/g;->a(Z)V

    const/4 v0, 0x1

    return v0

    :cond_a
    const-string v0, "loadAd adManager is null"

    invoke-static {v0}, Lcom/sigmob/logger/SigmobLog;->e(Ljava/lang/String;)V

    return v1
.end method

.method public b(Landroid/app/Activity;)V
    .registers 3

    iget-object v0, p0, Lcom/sigmob/sdk/splash/c;->a:Lcom/sigmob/sdk/splash/g;

    invoke-virtual {v0, p1}, Lcom/sigmob/sdk/splash/g;->b(Landroid/app/Activity;)V

    return-void
.end method

.method public b()Z
    .registers 2

    iget-object v0, p0, Lcom/sigmob/sdk/splash/c;->a:Lcom/sigmob/sdk/splash/g;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/sigmob/sdk/splash/g;->e()V

    const/4 v0, 0x1

    return v0

    :cond_9
    const-string v0, "showAd adManager is null"

    invoke-static {v0}, Lcom/sigmob/logger/SigmobLog;->e(Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method
