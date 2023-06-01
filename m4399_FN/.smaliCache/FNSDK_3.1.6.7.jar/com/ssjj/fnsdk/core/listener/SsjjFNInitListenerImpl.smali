.class public Lcom/ssjj/fnsdk/core/listener/SsjjFNInitListenerImpl;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/ssjj/fnsdk/core/listener/SsjjFNInitListener;


# instance fields
.field private a:Lcom/ssjj/fnsdk/core/listener/SsjjFNInitListener;


# direct methods
.method public constructor <init>(Lcom/ssjj/fnsdk/core/listener/SsjjFNInitListener;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ssjj/fnsdk/core/listener/SsjjFNInitListenerImpl;->a:Lcom/ssjj/fnsdk/core/listener/SsjjFNInitListener;

    return-void
.end method

.method static synthetic a(Lcom/ssjj/fnsdk/core/listener/SsjjFNInitListenerImpl;)Lcom/ssjj/fnsdk/core/listener/SsjjFNInitListener;
    .registers 1

    iget-object p0, p0, Lcom/ssjj/fnsdk/core/listener/SsjjFNInitListenerImpl;->a:Lcom/ssjj/fnsdk/core/listener/SsjjFNInitListener;

    return-object p0
.end method


# virtual methods
.method public onFailed(Ljava/lang/String;)V
    .registers 6

    invoke-static {p1}, Lcom/ssjj/fnsdk/core/LogUtil;->e(Ljava/lang/String;)V

    invoke-static {}, Lcom/ssjj/fnsdk/core/listener/FNEventManager;->getInstance()Lcom/ssjj/fnsdk/core/listener/FNEventManager;

    move-result-object v0

    const-string v1, "-1"

    const/4 v2, 0x0

    const-string v3, "init"

    invoke-virtual {v0, v3, v1, v2}, Lcom/ssjj/fnsdk/core/listener/FNEventManager;->a(Ljava/lang/String;Ljava/lang/String;Lcom/ssjj/fnsdk/core/SsjjFNParams;)V

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/listener/SsjjFNInitListenerImpl;->a:Lcom/ssjj/fnsdk/core/listener/SsjjFNInitListener;

    if-nez v0, :cond_19

    const-string p1, "SsjjFNInitListener is null"

    invoke-static {p1}, Lcom/ssjj/fnsdk/core/LogUtil;->i(Ljava/lang/String;)V

    return-void

    :cond_19
    invoke-static {}, Lcom/ssjj/fnsdk/core/listener/b;->a()Z

    move-result v0

    if-eqz v0, :cond_25

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/listener/SsjjFNInitListenerImpl;->a:Lcom/ssjj/fnsdk/core/listener/SsjjFNInitListener;

    invoke-interface {v0, p1}, Lcom/ssjj/fnsdk/core/listener/SsjjFNInitListener;->onFailed(Ljava/lang/String;)V

    return-void

    :cond_25
    new-instance v0, Lcom/ssjj/fnsdk/core/listener/h;

    invoke-direct {v0, p0, p1}, Lcom/ssjj/fnsdk/core/listener/h;-><init>(Lcom/ssjj/fnsdk/core/listener/SsjjFNInitListenerImpl;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/listener/b;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onSucceed()V
    .registers 5

    invoke-static {}, Lcom/ssjj/fnsdk/core/listener/FNEventManager;->getInstance()Lcom/ssjj/fnsdk/core/listener/FNEventManager;

    move-result-object v0

    const-string v1, "1"

    const/4 v2, 0x0

    const-string v3, "init"

    invoke-virtual {v0, v3, v1, v2}, Lcom/ssjj/fnsdk/core/listener/FNEventManager;->a(Ljava/lang/String;Ljava/lang/String;Lcom/ssjj/fnsdk/core/SsjjFNParams;)V

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/listener/SsjjFNInitListenerImpl;->a:Lcom/ssjj/fnsdk/core/listener/SsjjFNInitListener;

    if-nez v0, :cond_16

    const-string v0, "SsjjFNInitListener is null"

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/LogUtil;->i(Ljava/lang/String;)V

    return-void

    :cond_16
    invoke-static {}, Lcom/ssjj/fnsdk/core/listener/b;->a()Z

    move-result v0

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/listener/SsjjFNInitListenerImpl;->a:Lcom/ssjj/fnsdk/core/listener/SsjjFNInitListener;

    invoke-interface {v0}, Lcom/ssjj/fnsdk/core/listener/SsjjFNInitListener;->onSucceed()V

    return-void

    :cond_22
    new-instance v0, Lcom/ssjj/fnsdk/core/listener/g;

    invoke-direct {v0, p0}, Lcom/ssjj/fnsdk/core/listener/g;-><init>(Lcom/ssjj/fnsdk/core/listener/SsjjFNInitListenerImpl;)V

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/listener/b;->a(Ljava/lang/Runnable;)V

    return-void
.end method
