.class Lcom/ssjj/fnsdk/core/cn;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field final synthetic a:Lcom/ssjj/fnsdk/core/SsjjFNTempManager;

.field private final synthetic b:Lcom/ssjj/fnsdk/core/SsjjFNListener;


# direct methods
.method constructor <init>(Lcom/ssjj/fnsdk/core/SsjjFNTempManager;Lcom/ssjj/fnsdk/core/SsjjFNListener;)V
    .registers 3

    iput-object p1, p0, Lcom/ssjj/fnsdk/core/cn;->a:Lcom/ssjj/fnsdk/core/SsjjFNTempManager;

    iput-object p2, p0, Lcom/ssjj/fnsdk/core/cn;->b:Lcom/ssjj/fnsdk/core/SsjjFNListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 5

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/cn;->a:Lcom/ssjj/fnsdk/core/SsjjFNTempManager;

    const-string v0, "temp_login_cancel"

    invoke-virtual {p1, v0}, Lcom/ssjj/fnsdk/core/SsjjFNTempManager;->a(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/cn;->a:Lcom/ssjj/fnsdk/core/SsjjFNTempManager;

    invoke-virtual {p1}, Lcom/ssjj/fnsdk/core/SsjjFNTempManager;->cancelTempLogin()V

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/cn;->b:Lcom/ssjj/fnsdk/core/SsjjFNListener;

    if-eqz p1, :cond_17

    const-string v0, "\u6e38\u5ba2\u767b\u5f55\u53d6\u6d88"

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-interface {p1, v2, v0, v1}, Lcom/ssjj/fnsdk/core/SsjjFNListener;->onCallback(ILjava/lang/String;Lcom/ssjj/fnsdk/core/SsjjFNParams;)V

    :cond_17
    return-void
.end method
