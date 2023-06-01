.class Lcom/ssjj/fnsdk/platform/v;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/ssjj/fnsdk/platform/FNAdapterDemo;

.field private final synthetic b:Lcom/ssjj/fnsdk/core/listener/SsjjFNExitDialogListener;


# direct methods
.method constructor <init>(Lcom/ssjj/fnsdk/platform/FNAdapterDemo;Lcom/ssjj/fnsdk/core/listener/SsjjFNExitDialogListener;)V
    .registers 3

    iput-object p1, p0, Lcom/ssjj/fnsdk/platform/v;->a:Lcom/ssjj/fnsdk/platform/FNAdapterDemo;

    iput-object p2, p0, Lcom/ssjj/fnsdk/platform/v;->b:Lcom/ssjj/fnsdk/core/listener/SsjjFNExitDialogListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object p1, p0, Lcom/ssjj/fnsdk/platform/v;->a:Lcom/ssjj/fnsdk/platform/FNAdapterDemo;

    invoke-static {p1}, Lcom/ssjj/fnsdk/platform/FNAdapterDemo;->b(Lcom/ssjj/fnsdk/platform/FNAdapterDemo;)Landroid/app/Activity;

    move-result-object p1

    const-string p2, "\u786e\u5b9a\u9000\u51fa"

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    iget-object p1, p0, Lcom/ssjj/fnsdk/platform/v;->b:Lcom/ssjj/fnsdk/core/listener/SsjjFNExitDialogListener;

    if-eqz p1, :cond_1a

    invoke-interface {p1}, Lcom/ssjj/fnsdk/core/listener/SsjjFNExitDialogListener;->onExit()V

    :cond_1a
    return-void
.end method
