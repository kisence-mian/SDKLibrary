.class public abstract Lcom/kwad/sdk/b/b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/kwad/sdk/api/proxy/IServiceProxy;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/app/Service;Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3

    const/4 p1, 0x0

    return-object p1
.end method

.method public onCreate(Landroid/app/Service;)V
    .registers 2

    return-void
.end method

.method public onDestroy(Landroid/app/Service;)V
    .registers 2

    return-void
.end method

.method public onRebind(Landroid/app/Service;Landroid/content/Intent;)V
    .registers 3

    return-void
.end method

.method public onStartCommand(Landroid/app/Service;Landroid/content/Intent;II)I
    .registers 6

    instance-of v0, p1, Lcom/kwad/sdk/api/proxy/BaseProxyService;

    if-eqz v0, :cond_b

    check-cast p1, Lcom/kwad/sdk/api/proxy/BaseProxyService;

    invoke-virtual {p1, p2, p3, p4}, Lcom/kwad/sdk/api/proxy/BaseProxyService;->superOnStartCommand(Landroid/content/Intent;II)I

    move-result p1

    return p1

    :cond_b
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p3, " must be AbstractServiceProxy"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public onUnbind(Landroid/app/Service;Landroid/content/Intent;)Z
    .registers 4

    instance-of v0, p1, Lcom/kwad/sdk/api/proxy/BaseProxyService;

    if-eqz v0, :cond_b

    check-cast p1, Lcom/kwad/sdk/api/proxy/BaseProxyService;

    invoke-virtual {p1, p2}, Lcom/kwad/sdk/api/proxy/BaseProxyService;->superOnUnbind(Landroid/content/Intent;)Z

    move-result p1

    return p1

    :cond_b
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " must be AbstractServiceProxy"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p2
.end method
