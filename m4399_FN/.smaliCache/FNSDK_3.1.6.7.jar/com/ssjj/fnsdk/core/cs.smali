.class Lcom/ssjj/fnsdk/core/cs;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/ssjj/fnsdk/core/SsjjFNTempManager;

.field private final synthetic b:Lcom/ssjj/fnsdk/core/SsjjFNListener;


# direct methods
.method constructor <init>(Lcom/ssjj/fnsdk/core/SsjjFNTempManager;Lcom/ssjj/fnsdk/core/SsjjFNListener;)V
    .registers 3

    iput-object p1, p0, Lcom/ssjj/fnsdk/core/cs;->a:Lcom/ssjj/fnsdk/core/SsjjFNTempManager;

    iput-object p2, p0, Lcom/ssjj/fnsdk/core/cs;->b:Lcom/ssjj/fnsdk/core/SsjjFNListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/cs;->a:Lcom/ssjj/fnsdk/core/SsjjFNTempManager;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/ssjj/fnsdk/core/SsjjFNTempManager;->a(Lcom/ssjj/fnsdk/core/SsjjFNTempManager;Landroid/app/AlertDialog;)V

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/cs;->a:Lcom/ssjj/fnsdk/core/SsjjFNTempManager;

    const-string v0, "temp_show_bind_dlg_click_bind"

    invoke-virtual {p1, v0}, Lcom/ssjj/fnsdk/core/SsjjFNTempManager;->a(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/cs;->b:Lcom/ssjj/fnsdk/core/SsjjFNListener;

    if-eqz p1, :cond_18

    sget v0, Lcom/ssjj/fnsdk/core/SsjjFNTempManager;->CODE_START_BIND:I

    const-string v1, ""

    invoke-interface {p1, v0, v1, p2}, Lcom/ssjj/fnsdk/core/SsjjFNListener;->onCallback(ILjava/lang/String;Lcom/ssjj/fnsdk/core/SsjjFNParams;)V

    :cond_18
    return-void
.end method
