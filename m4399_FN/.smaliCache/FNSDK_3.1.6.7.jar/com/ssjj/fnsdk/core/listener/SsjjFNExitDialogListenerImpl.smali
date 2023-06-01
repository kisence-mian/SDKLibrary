.class public Lcom/ssjj/fnsdk/core/listener/SsjjFNExitDialogListenerImpl;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/ssjj/fnsdk/core/listener/SsjjFNExitDialogListener;


# instance fields
.field private a:Lcom/ssjj/fnsdk/core/listener/SsjjFNExitDialogListener;


# direct methods
.method public constructor <init>(Lcom/ssjj/fnsdk/core/listener/SsjjFNExitDialogListener;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ssjj/fnsdk/core/listener/SsjjFNExitDialogListenerImpl;->a:Lcom/ssjj/fnsdk/core/listener/SsjjFNExitDialogListener;

    return-void
.end method

.method static synthetic a(Lcom/ssjj/fnsdk/core/listener/SsjjFNExitDialogListenerImpl;)Lcom/ssjj/fnsdk/core/listener/SsjjFNExitDialogListener;
    .registers 1

    iget-object p0, p0, Lcom/ssjj/fnsdk/core/listener/SsjjFNExitDialogListenerImpl;->a:Lcom/ssjj/fnsdk/core/listener/SsjjFNExitDialogListener;

    return-object p0
.end method


# virtual methods
.method public onCancel()V
    .registers 5

    invoke-static {}, Lcom/ssjj/fnsdk/core/listener/FNEventManager;->getInstance()Lcom/ssjj/fnsdk/core/listener/FNEventManager;

    move-result-object v0

    const-string v1, "-2"

    const/4 v2, 0x0

    const-string v3, "exit_dialog"

    invoke-virtual {v0, v3, v1, v2}, Lcom/ssjj/fnsdk/core/listener/FNEventManager;->a(Ljava/lang/String;Ljava/lang/String;Lcom/ssjj/fnsdk/core/SsjjFNParams;)V

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/listener/SsjjFNExitDialogListenerImpl;->a:Lcom/ssjj/fnsdk/core/listener/SsjjFNExitDialogListener;

    if-nez v0, :cond_16

    const-string v0, "SsjjFNExitDialogListener is null"

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/LogUtil;->i(Ljava/lang/String;)V

    return-void

    :cond_16
    invoke-static {}, Lcom/ssjj/fnsdk/core/listener/b;->a()Z

    move-result v0

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/listener/SsjjFNExitDialogListenerImpl;->a:Lcom/ssjj/fnsdk/core/listener/SsjjFNExitDialogListener;

    invoke-interface {v0}, Lcom/ssjj/fnsdk/core/listener/SsjjFNExitDialogListener;->onCancel()V

    return-void

    :cond_22
    new-instance v0, Lcom/ssjj/fnsdk/core/listener/e;

    invoke-direct {v0, p0}, Lcom/ssjj/fnsdk/core/listener/e;-><init>(Lcom/ssjj/fnsdk/core/listener/SsjjFNExitDialogListenerImpl;)V

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/listener/b;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onExit()V
    .registers 5

    invoke-static {}, Lcom/ssjj/fnsdk/core/listener/FNEventManager;->getInstance()Lcom/ssjj/fnsdk/core/listener/FNEventManager;

    move-result-object v0

    const-string v1, "1"

    const/4 v2, 0x0

    const-string v3, "exit_dialog"

    invoke-virtual {v0, v3, v1, v2}, Lcom/ssjj/fnsdk/core/listener/FNEventManager;->a(Ljava/lang/String;Ljava/lang/String;Lcom/ssjj/fnsdk/core/SsjjFNParams;)V

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/listener/SsjjFNExitDialogListenerImpl;->a:Lcom/ssjj/fnsdk/core/listener/SsjjFNExitDialogListener;

    if-nez v0, :cond_16

    const-string v0, "SsjjFNExitDialogListener is null"

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/LogUtil;->i(Ljava/lang/String;)V

    return-void

    :cond_16
    invoke-static {}, Lcom/ssjj/fnsdk/core/listener/b;->a()Z

    move-result v0

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/listener/SsjjFNExitDialogListenerImpl;->a:Lcom/ssjj/fnsdk/core/listener/SsjjFNExitDialogListener;

    invoke-interface {v0}, Lcom/ssjj/fnsdk/core/listener/SsjjFNExitDialogListener;->onExit()V

    return-void

    :cond_22
    new-instance v0, Lcom/ssjj/fnsdk/core/listener/d;

    invoke-direct {v0, p0}, Lcom/ssjj/fnsdk/core/listener/d;-><init>(Lcom/ssjj/fnsdk/core/listener/SsjjFNExitDialogListenerImpl;)V

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/listener/b;->a(Ljava/lang/Runnable;)V

    return-void
.end method
