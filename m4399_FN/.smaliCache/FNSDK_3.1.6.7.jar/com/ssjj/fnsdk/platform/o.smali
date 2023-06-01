.class Lcom/ssjj/fnsdk/platform/o;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/ssjj/fnsdk/platform/FNAdapterDemo;

.field private final synthetic b:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/ssjj/fnsdk/platform/FNAdapterDemo;Landroid/app/Activity;)V
    .registers 3

    iput-object p1, p0, Lcom/ssjj/fnsdk/platform/o;->a:Lcom/ssjj/fnsdk/platform/FNAdapterDemo;

    iput-object p2, p0, Lcom/ssjj/fnsdk/platform/o;->b:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object p1, p0, Lcom/ssjj/fnsdk/platform/o;->b:Landroid/app/Activity;

    const-string v0, "\u5207\u6362\u5e10\u53f7\u5e76\u767b\u5f55\u6210\u529f"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    iget-object p1, p0, Lcom/ssjj/fnsdk/platform/o;->a:Lcom/ssjj/fnsdk/platform/FNAdapterDemo;

    iget-object v0, p0, Lcom/ssjj/fnsdk/platform/o;->b:Landroid/app/Activity;

    invoke-static {p1, v0, p2}, Lcom/ssjj/fnsdk/platform/FNAdapterDemo;->a(Lcom/ssjj/fnsdk/platform/FNAdapterDemo;Landroid/app/Activity;I)Lcom/ssjj/fnsdk/core/entity/SsjjFNUser;

    move-result-object p1

    iget-object p2, p0, Lcom/ssjj/fnsdk/platform/o;->a:Lcom/ssjj/fnsdk/platform/FNAdapterDemo;

    iget-object v0, p1, Lcom/ssjj/fnsdk/core/entity/SsjjFNUser;->uid:Ljava/lang/String;

    invoke-static {p2, v0}, Lcom/ssjj/fnsdk/platform/FNAdapterDemo;->a(Lcom/ssjj/fnsdk/platform/FNAdapterDemo;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/ssjj/fnsdk/platform/o;->a:Lcom/ssjj/fnsdk/platform/FNAdapterDemo;

    invoke-static {p2}, Lcom/ssjj/fnsdk/platform/FNAdapterDemo;->a(Lcom/ssjj/fnsdk/platform/FNAdapterDemo;)Lcom/ssjj/fnsdk/core/listener/SsjjFNUserListener;

    move-result-object p2

    if-eqz p2, :cond_2f

    iget-object p2, p0, Lcom/ssjj/fnsdk/platform/o;->a:Lcom/ssjj/fnsdk/platform/FNAdapterDemo;

    invoke-static {p2}, Lcom/ssjj/fnsdk/platform/FNAdapterDemo;->a(Lcom/ssjj/fnsdk/platform/FNAdapterDemo;)Lcom/ssjj/fnsdk/core/listener/SsjjFNUserListener;

    move-result-object p2

    invoke-interface {p2, p1}, Lcom/ssjj/fnsdk/core/listener/SsjjFNUserListener;->onSwitchUser(Lcom/ssjj/fnsdk/core/entity/SsjjFNUser;)V

    :cond_2f
    return-void
.end method
