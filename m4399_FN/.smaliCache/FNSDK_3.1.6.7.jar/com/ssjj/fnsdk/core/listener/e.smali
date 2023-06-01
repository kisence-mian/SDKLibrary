.class Lcom/ssjj/fnsdk/core/listener/e;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/ssjj/fnsdk/core/listener/SsjjFNExitDialogListenerImpl;


# direct methods
.method constructor <init>(Lcom/ssjj/fnsdk/core/listener/SsjjFNExitDialogListenerImpl;)V
    .registers 2

    iput-object p1, p0, Lcom/ssjj/fnsdk/core/listener/e;->a:Lcom/ssjj/fnsdk/core/listener/SsjjFNExitDialogListenerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/listener/e;->a:Lcom/ssjj/fnsdk/core/listener/SsjjFNExitDialogListenerImpl;

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/listener/SsjjFNExitDialogListenerImpl;->a(Lcom/ssjj/fnsdk/core/listener/SsjjFNExitDialogListenerImpl;)Lcom/ssjj/fnsdk/core/listener/SsjjFNExitDialogListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/ssjj/fnsdk/core/listener/SsjjFNExitDialogListener;->onCancel()V

    return-void
.end method
