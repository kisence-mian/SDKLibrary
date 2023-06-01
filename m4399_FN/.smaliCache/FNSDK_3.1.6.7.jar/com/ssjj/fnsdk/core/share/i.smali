.class Lcom/ssjj/fnsdk/core/share/i;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/ssjj/fnsdk/core/share/ShareDialog$a;


# direct methods
.method constructor <init>(Lcom/ssjj/fnsdk/core/share/ShareDialog$a;)V
    .registers 2

    iput-object p1, p0, Lcom/ssjj/fnsdk/core/share/i;->a:Lcom/ssjj/fnsdk/core/share/ShareDialog$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/share/i;->a:Lcom/ssjj/fnsdk/core/share/ShareDialog$a;

    iget-object v0, v0, Lcom/ssjj/fnsdk/core/share/ShareDialog$a;->c:Lcom/ssjj/fnsdk/core/share/ShareDialog$ShareDialogListener;

    invoke-interface {v0, p1}, Lcom/ssjj/fnsdk/core/share/ShareDialog$ShareDialogListener;->checkShare(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/share/i;->a:Lcom/ssjj/fnsdk/core/share/ShareDialog$a;

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/share/ShareDialog$a;->a(Lcom/ssjj/fnsdk/core/share/ShareDialog$a;)Lcom/ssjj/fnsdk/core/share/ShareDialog;

    move-result-object v0

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/share/ShareDialog;->b(Lcom/ssjj/fnsdk/core/share/ShareDialog;)V

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/share/i;->a:Lcom/ssjj/fnsdk/core/share/ShareDialog$a;

    iget-object v0, v0, Lcom/ssjj/fnsdk/core/share/ShareDialog$a;->c:Lcom/ssjj/fnsdk/core/share/ShareDialog$ShareDialogListener;

    invoke-interface {v0, p1}, Lcom/ssjj/fnsdk/core/share/ShareDialog$ShareDialogListener;->onClick(Ljava/lang/String;)V

    goto :goto_44

    :cond_21
    iget-object p1, p0, Lcom/ssjj/fnsdk/core/share/i;->a:Lcom/ssjj/fnsdk/core/share/ShareDialog$a;

    invoke-static {p1}, Lcom/ssjj/fnsdk/core/share/ShareDialog$a;->a(Lcom/ssjj/fnsdk/core/share/ShareDialog$a;)Lcom/ssjj/fnsdk/core/share/ShareDialog;

    move-result-object p1

    invoke-static {p1}, Lcom/ssjj/fnsdk/core/share/ShareDialog;->c(Lcom/ssjj/fnsdk/core/share/ShareDialog;)Lcom/ssjj/fnsdk/core/share/FNShareItem;

    move-result-object p1

    if-eqz p1, :cond_44

    invoke-static {}, Lcom/ssjj/fnsdk/core/share/ShareStat;->getInstance()Lcom/ssjj/fnsdk/core/share/ShareStat;

    move-result-object p1

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/share/i;->a:Lcom/ssjj/fnsdk/core/share/ShareDialog$a;

    iget-object v0, v0, Lcom/ssjj/fnsdk/core/share/ShareDialog$a;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/share/i;->a:Lcom/ssjj/fnsdk/core/share/ShareDialog$a;

    invoke-static {v1}, Lcom/ssjj/fnsdk/core/share/ShareDialog$a;->a(Lcom/ssjj/fnsdk/core/share/ShareDialog$a;)Lcom/ssjj/fnsdk/core/share/ShareDialog;

    move-result-object v1

    invoke-static {v1}, Lcom/ssjj/fnsdk/core/share/ShareDialog;->c(Lcom/ssjj/fnsdk/core/share/ShareDialog;)Lcom/ssjj/fnsdk/core/share/FNShareItem;

    move-result-object v1

    const/16 v2, -0x66

    invoke-virtual {p1, v0, v1, v2}, Lcom/ssjj/fnsdk/core/share/ShareStat;->shareStat(Landroid/content/Context;Lcom/ssjj/fnsdk/core/share/FNShareItem;I)V

    :cond_44
    :goto_44
    return-void
.end method
