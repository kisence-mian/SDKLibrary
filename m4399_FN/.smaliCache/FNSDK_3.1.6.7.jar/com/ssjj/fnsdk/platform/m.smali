.class Lcom/ssjj/fnsdk/platform/m;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/ssjj/fnsdk/platform/j;

.field private final synthetic b:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/ssjj/fnsdk/platform/j;Landroid/app/Activity;)V
    .registers 3

    iput-object p1, p0, Lcom/ssjj/fnsdk/platform/m;->a:Lcom/ssjj/fnsdk/platform/j;

    iput-object p2, p0, Lcom/ssjj/fnsdk/platform/m;->b:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object p1, p0, Lcom/ssjj/fnsdk/platform/m;->b:Landroid/app/Activity;

    const-string p2, "\u767b\u5f55\u53d6\u6d88"

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    iget-object p1, p0, Lcom/ssjj/fnsdk/platform/m;->a:Lcom/ssjj/fnsdk/platform/j;

    invoke-static {p1}, Lcom/ssjj/fnsdk/platform/j;->a(Lcom/ssjj/fnsdk/platform/j;)Lcom/ssjj/fnsdk/platform/FNAdapterDemo;

    move-result-object p1

    invoke-static {p1}, Lcom/ssjj/fnsdk/platform/FNAdapterDemo;->a(Lcom/ssjj/fnsdk/platform/FNAdapterDemo;)Lcom/ssjj/fnsdk/core/listener/SsjjFNUserListener;

    move-result-object p1

    if-eqz p1, :cond_28

    iget-object p1, p0, Lcom/ssjj/fnsdk/platform/m;->a:Lcom/ssjj/fnsdk/platform/j;

    invoke-static {p1}, Lcom/ssjj/fnsdk/platform/j;->a(Lcom/ssjj/fnsdk/platform/j;)Lcom/ssjj/fnsdk/platform/FNAdapterDemo;

    move-result-object p1

    invoke-static {p1}, Lcom/ssjj/fnsdk/platform/FNAdapterDemo;->a(Lcom/ssjj/fnsdk/platform/FNAdapterDemo;)Lcom/ssjj/fnsdk/core/listener/SsjjFNUserListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/ssjj/fnsdk/core/listener/SsjjFNUserListener;->onLoginCancel()V

    :cond_28
    return-void
.end method