.class Lcom/ssjj/fnsdk/core/share/page/c;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/ssjj/fnsdk/core/share/page/PopView;


# direct methods
.method constructor <init>(Lcom/ssjj/fnsdk/core/share/page/PopView;)V
    .registers 2

    iput-object p1, p0, Lcom/ssjj/fnsdk/core/share/page/c;->a:Lcom/ssjj/fnsdk/core/share/page/PopView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/share/page/c;->a:Lcom/ssjj/fnsdk/core/share/page/PopView;

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/share/page/PopView;->a(Lcom/ssjj/fnsdk/core/share/page/PopView;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq p1, v0, :cond_6b

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/share/page/c;->a:Lcom/ssjj/fnsdk/core/share/page/PopView;

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/share/page/PopView;->b(Lcom/ssjj/fnsdk/core/share/page/PopView;)Landroid/widget/RelativeLayout;

    move-result-object v0

    if-ne p1, v0, :cond_13

    goto :goto_6b

    :cond_13
    iget-object v0, p0, Lcom/ssjj/fnsdk/core/share/page/c;->a:Lcom/ssjj/fnsdk/core/share/page/PopView;

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/share/page/PopView;->f(Lcom/ssjj/fnsdk/core/share/page/PopView;)Landroid/widget/TextView;

    move-result-object v0

    if-ne p1, v0, :cond_29

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/share/page/c;->a:Lcom/ssjj/fnsdk/core/share/page/PopView;

    iget-object p1, p1, Lcom/ssjj/fnsdk/core/share/page/PopView;->mPopListener:Lcom/ssjj/fnsdk/core/share/page/PopView$PopListener;

    if-eqz p1, :cond_88

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/share/page/c;->a:Lcom/ssjj/fnsdk/core/share/page/PopView;

    iget-object p1, p1, Lcom/ssjj/fnsdk/core/share/page/PopView;->mPopListener:Lcom/ssjj/fnsdk/core/share/page/PopView$PopListener;

    invoke-interface {p1}, Lcom/ssjj/fnsdk/core/share/page/PopView$PopListener;->onShare()V

    goto :goto_88

    :cond_29
    iget-object v0, p0, Lcom/ssjj/fnsdk/core/share/page/c;->a:Lcom/ssjj/fnsdk/core/share/page/PopView;

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/share/page/PopView;->g(Lcom/ssjj/fnsdk/core/share/page/PopView;)Landroid/widget/TextView;

    move-result-object v0

    if-ne p1, v0, :cond_88

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/share/page/c;->a:Lcom/ssjj/fnsdk/core/share/page/PopView;

    iget-object p1, p1, Lcom/ssjj/fnsdk/core/share/page/PopView;->mPopListener:Lcom/ssjj/fnsdk/core/share/page/PopView$PopListener;

    if-eqz p1, :cond_88

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/share/page/c;->a:Lcom/ssjj/fnsdk/core/share/page/PopView;

    invoke-static {p1}, Lcom/ssjj/fnsdk/core/share/page/PopView;->h(Lcom/ssjj/fnsdk/core/share/page/PopView;)Z

    move-result p1

    if-eqz p1, :cond_4d

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/share/page/c;->a:Lcom/ssjj/fnsdk/core/share/page/PopView;

    invoke-static {p1, v1}, Lcom/ssjj/fnsdk/core/share/page/PopView;->b(Lcom/ssjj/fnsdk/core/share/page/PopView;Z)V

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/share/page/c;->a:Lcom/ssjj/fnsdk/core/share/page/PopView;

    invoke-static {p1}, Lcom/ssjj/fnsdk/core/share/page/PopView;->g(Lcom/ssjj/fnsdk/core/share/page/PopView;)Landroid/widget/TextView;

    move-result-object p1

    const-string v0, "\u663e\u793a\u6587\u5b57\u6548\u679c"

    goto :goto_5a

    :cond_4d
    iget-object p1, p0, Lcom/ssjj/fnsdk/core/share/page/c;->a:Lcom/ssjj/fnsdk/core/share/page/PopView;

    invoke-static {p1, v2}, Lcom/ssjj/fnsdk/core/share/page/PopView;->b(Lcom/ssjj/fnsdk/core/share/page/PopView;Z)V

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/share/page/c;->a:Lcom/ssjj/fnsdk/core/share/page/PopView;

    invoke-static {p1}, Lcom/ssjj/fnsdk/core/share/page/PopView;->g(Lcom/ssjj/fnsdk/core/share/page/PopView;)Landroid/widget/TextView;

    move-result-object p1

    const-string v0, "\u53d6\u6d88\u6587\u5b57\u6548\u679c"

    :goto_5a
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/share/page/c;->a:Lcom/ssjj/fnsdk/core/share/page/PopView;

    iget-object p1, p1, Lcom/ssjj/fnsdk/core/share/page/PopView;->mPopListener:Lcom/ssjj/fnsdk/core/share/page/PopView$PopListener;

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/share/page/c;->a:Lcom/ssjj/fnsdk/core/share/page/PopView;

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/share/page/PopView;->h(Lcom/ssjj/fnsdk/core/share/page/PopView;)Z

    move-result v0

    invoke-interface {p1, v0}, Lcom/ssjj/fnsdk/core/share/page/PopView$PopListener;->isShowText(Z)V

    goto :goto_88

    :cond_6b
    :goto_6b
    iget-object p1, p0, Lcom/ssjj/fnsdk/core/share/page/c;->a:Lcom/ssjj/fnsdk/core/share/page/PopView;

    invoke-static {p1}, Lcom/ssjj/fnsdk/core/share/page/PopView;->c(Lcom/ssjj/fnsdk/core/share/page/PopView;)Z

    move-result p1

    if-eqz p1, :cond_7e

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/share/page/c;->a:Lcom/ssjj/fnsdk/core/share/page/PopView;

    invoke-static {p1}, Lcom/ssjj/fnsdk/core/share/page/PopView;->d(Lcom/ssjj/fnsdk/core/share/page/PopView;)V

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/share/page/c;->a:Lcom/ssjj/fnsdk/core/share/page/PopView;

    invoke-static {p1, v1}, Lcom/ssjj/fnsdk/core/share/page/PopView;->a(Lcom/ssjj/fnsdk/core/share/page/PopView;Z)V

    goto :goto_88

    :cond_7e
    iget-object p1, p0, Lcom/ssjj/fnsdk/core/share/page/c;->a:Lcom/ssjj/fnsdk/core/share/page/PopView;

    invoke-static {p1}, Lcom/ssjj/fnsdk/core/share/page/PopView;->e(Lcom/ssjj/fnsdk/core/share/page/PopView;)V

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/share/page/c;->a:Lcom/ssjj/fnsdk/core/share/page/PopView;

    invoke-static {p1, v2}, Lcom/ssjj/fnsdk/core/share/page/PopView;->a(Lcom/ssjj/fnsdk/core/share/page/PopView;Z)V

    :cond_88
    :goto_88
    return-void
.end method
