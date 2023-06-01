.class Lcom/ssjj/fnsdk/core/ct;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field final synthetic a:Lcom/ssjj/fnsdk/core/SsjjFNTempManager;

.field private final synthetic b:Lcom/ssjj/fnsdk/core/SsjjFNListener;


# direct methods
.method constructor <init>(Lcom/ssjj/fnsdk/core/SsjjFNTempManager;Lcom/ssjj/fnsdk/core/SsjjFNListener;)V
    .registers 3

    iput-object p1, p0, Lcom/ssjj/fnsdk/core/ct;->a:Lcom/ssjj/fnsdk/core/SsjjFNTempManager;

    iput-object p2, p0, Lcom/ssjj/fnsdk/core/ct;->b:Lcom/ssjj/fnsdk/core/SsjjFNListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 5

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/ct;->a:Lcom/ssjj/fnsdk/core/SsjjFNTempManager;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/ssjj/fnsdk/core/SsjjFNTempManager;->a(Lcom/ssjj/fnsdk/core/SsjjFNTempManager;Landroid/app/AlertDialog;)V

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/ct;->a:Lcom/ssjj/fnsdk/core/SsjjFNTempManager;

    const/4 v1, 0x0

    invoke-static {p1, v1}, Lcom/ssjj/fnsdk/core/SsjjFNTempManager;->a(Lcom/ssjj/fnsdk/core/SsjjFNTempManager;Z)V

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/ct;->a:Lcom/ssjj/fnsdk/core/SsjjFNTempManager;

    const-string v1, "temp_show_bind_dlg_cancel"

    invoke-virtual {p1, v1}, Lcom/ssjj/fnsdk/core/SsjjFNTempManager;->a(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/ct;->b:Lcom/ssjj/fnsdk/core/SsjjFNListener;

    if-eqz p1, :cond_1e

    sget v1, Lcom/ssjj/fnsdk/core/SsjjFNTempManager;->CODE_CANCEL_BIND:I

    const-string v2, ""

    invoke-interface {p1, v1, v2, v0}, Lcom/ssjj/fnsdk/core/SsjjFNListener;->onCallback(ILjava/lang/String;Lcom/ssjj/fnsdk/core/SsjjFNParams;)V

    :cond_1e
    return-void
.end method
