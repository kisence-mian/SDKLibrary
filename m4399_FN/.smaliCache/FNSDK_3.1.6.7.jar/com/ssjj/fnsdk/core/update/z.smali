.class Lcom/ssjj/fnsdk/core/update/z;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/ssjj/fnsdk/core/update/ViewUpdate;


# direct methods
.method constructor <init>(Lcom/ssjj/fnsdk/core/update/ViewUpdate;)V
    .registers 2

    iput-object p1, p0, Lcom/ssjj/fnsdk/core/update/z;->a:Lcom/ssjj/fnsdk/core/update/ViewUpdate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/update/z;->a:Lcom/ssjj/fnsdk/core/update/ViewUpdate;

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/update/ViewUpdate;->a(Lcom/ssjj/fnsdk/core/update/ViewUpdate;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x3

    if-ne p1, v0, :cond_2f

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/update/z;->a:Lcom/ssjj/fnsdk/core/update/ViewUpdate;

    invoke-static {p1}, Lcom/ssjj/fnsdk/core/update/ViewUpdate;->b(Lcom/ssjj/fnsdk/core/update/ViewUpdate;)Lcom/ssjj/fnsdk/core/update/ViewUpdate$ViewCallBack;

    move-result-object p1

    if-eqz p1, :cond_d0

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/update/z;->a:Lcom/ssjj/fnsdk/core/update/ViewUpdate;

    invoke-static {p1}, Lcom/ssjj/fnsdk/core/update/ViewUpdate;->c(Lcom/ssjj/fnsdk/core/update/ViewUpdate;)I

    move-result p1

    if-ne p1, v1, :cond_24

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/update/z;->a:Lcom/ssjj/fnsdk/core/update/ViewUpdate;

    invoke-static {p1}, Lcom/ssjj/fnsdk/core/update/ViewUpdate;->b(Lcom/ssjj/fnsdk/core/update/ViewUpdate;)Lcom/ssjj/fnsdk/core/update/ViewUpdate$ViewCallBack;

    move-result-object p1

    invoke-interface {p1}, Lcom/ssjj/fnsdk/core/update/ViewUpdate$ViewCallBack;->onClickReDown()V

    goto/16 :goto_d0

    :cond_24
    iget-object p1, p0, Lcom/ssjj/fnsdk/core/update/z;->a:Lcom/ssjj/fnsdk/core/update/ViewUpdate;

    invoke-static {p1}, Lcom/ssjj/fnsdk/core/update/ViewUpdate;->b(Lcom/ssjj/fnsdk/core/update/ViewUpdate;)Lcom/ssjj/fnsdk/core/update/ViewUpdate$ViewCallBack;

    move-result-object p1

    invoke-interface {p1}, Lcom/ssjj/fnsdk/core/update/ViewUpdate$ViewCallBack;->onClickLeftButton()V

    goto/16 :goto_d0

    :cond_2f
    iget-object v0, p0, Lcom/ssjj/fnsdk/core/update/z;->a:Lcom/ssjj/fnsdk/core/update/ViewUpdate;

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/update/ViewUpdate;->d(Lcom/ssjj/fnsdk/core/update/ViewUpdate;)Landroid/widget/Button;

    move-result-object v0

    if-ne p1, v0, :cond_9d

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/update/z;->a:Lcom/ssjj/fnsdk/core/update/ViewUpdate;

    invoke-static {p1}, Lcom/ssjj/fnsdk/core/update/ViewUpdate;->b(Lcom/ssjj/fnsdk/core/update/ViewUpdate;)Lcom/ssjj/fnsdk/core/update/ViewUpdate$ViewCallBack;

    move-result-object p1

    if-eqz p1, :cond_d0

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/update/z;->a:Lcom/ssjj/fnsdk/core/update/ViewUpdate;

    invoke-static {p1}, Lcom/ssjj/fnsdk/core/update/ViewUpdate;->c(Lcom/ssjj/fnsdk/core/update/ViewUpdate;)I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_53

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/update/z;->a:Lcom/ssjj/fnsdk/core/update/ViewUpdate;

    invoke-static {p1}, Lcom/ssjj/fnsdk/core/update/ViewUpdate;->b(Lcom/ssjj/fnsdk/core/update/ViewUpdate;)Lcom/ssjj/fnsdk/core/update/ViewUpdate$ViewCallBack;

    move-result-object p1

    invoke-interface {p1}, Lcom/ssjj/fnsdk/core/update/ViewUpdate$ViewCallBack;->onClickDownload()V

    goto/16 :goto_d0

    :cond_53
    iget-object p1, p0, Lcom/ssjj/fnsdk/core/update/z;->a:Lcom/ssjj/fnsdk/core/update/ViewUpdate;

    invoke-static {p1}, Lcom/ssjj/fnsdk/core/update/ViewUpdate;->c(Lcom/ssjj/fnsdk/core/update/ViewUpdate;)I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_66

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/update/z;->a:Lcom/ssjj/fnsdk/core/update/ViewUpdate;

    invoke-static {p1}, Lcom/ssjj/fnsdk/core/update/ViewUpdate;->b(Lcom/ssjj/fnsdk/core/update/ViewUpdate;)Lcom/ssjj/fnsdk/core/update/ViewUpdate$ViewCallBack;

    move-result-object p1

    invoke-interface {p1}, Lcom/ssjj/fnsdk/core/update/ViewUpdate$ViewCallBack;->onClickContinue()V

    goto :goto_d0

    :cond_66
    iget-object p1, p0, Lcom/ssjj/fnsdk/core/update/z;->a:Lcom/ssjj/fnsdk/core/update/ViewUpdate;

    invoke-static {p1}, Lcom/ssjj/fnsdk/core/update/ViewUpdate;->c(Lcom/ssjj/fnsdk/core/update/ViewUpdate;)I

    move-result p1

    if-nez p1, :cond_78

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/update/z;->a:Lcom/ssjj/fnsdk/core/update/ViewUpdate;

    invoke-static {p1}, Lcom/ssjj/fnsdk/core/update/ViewUpdate;->b(Lcom/ssjj/fnsdk/core/update/ViewUpdate;)Lcom/ssjj/fnsdk/core/update/ViewUpdate$ViewCallBack;

    move-result-object p1

    invoke-interface {p1}, Lcom/ssjj/fnsdk/core/update/ViewUpdate$ViewCallBack;->onClickPause()V

    goto :goto_d0

    :cond_78
    iget-object p1, p0, Lcom/ssjj/fnsdk/core/update/z;->a:Lcom/ssjj/fnsdk/core/update/ViewUpdate;

    invoke-static {p1}, Lcom/ssjj/fnsdk/core/update/ViewUpdate;->c(Lcom/ssjj/fnsdk/core/update/ViewUpdate;)I

    move-result p1

    if-ne p1, v1, :cond_8a

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/update/z;->a:Lcom/ssjj/fnsdk/core/update/ViewUpdate;

    invoke-static {p1}, Lcom/ssjj/fnsdk/core/update/ViewUpdate;->b(Lcom/ssjj/fnsdk/core/update/ViewUpdate;)Lcom/ssjj/fnsdk/core/update/ViewUpdate$ViewCallBack;

    move-result-object p1

    invoke-interface {p1}, Lcom/ssjj/fnsdk/core/update/ViewUpdate$ViewCallBack;->onClickInstall()V

    goto :goto_d0

    :cond_8a
    iget-object p1, p0, Lcom/ssjj/fnsdk/core/update/z;->a:Lcom/ssjj/fnsdk/core/update/ViewUpdate;

    invoke-static {p1}, Lcom/ssjj/fnsdk/core/update/ViewUpdate;->c(Lcom/ssjj/fnsdk/core/update/ViewUpdate;)I

    move-result p1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_d0

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/update/z;->a:Lcom/ssjj/fnsdk/core/update/ViewUpdate;

    invoke-static {p1}, Lcom/ssjj/fnsdk/core/update/ViewUpdate;->b(Lcom/ssjj/fnsdk/core/update/ViewUpdate;)Lcom/ssjj/fnsdk/core/update/ViewUpdate$ViewCallBack;

    move-result-object p1

    invoke-interface {p1}, Lcom/ssjj/fnsdk/core/update/ViewUpdate$ViewCallBack;->onClickRetryDown()V

    goto :goto_d0

    :cond_9d
    iget-object v0, p0, Lcom/ssjj/fnsdk/core/update/z;->a:Lcom/ssjj/fnsdk/core/update/ViewUpdate;

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/update/ViewUpdate;->e(Lcom/ssjj/fnsdk/core/update/ViewUpdate;)Landroid/widget/TextView;

    move-result-object v0

    if-ne p1, v0, :cond_b7

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/update/z;->a:Lcom/ssjj/fnsdk/core/update/ViewUpdate;

    invoke-static {p1}, Lcom/ssjj/fnsdk/core/update/ViewUpdate;->b(Lcom/ssjj/fnsdk/core/update/ViewUpdate;)Lcom/ssjj/fnsdk/core/update/ViewUpdate$ViewCallBack;

    move-result-object p1

    if-eqz p1, :cond_d0

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/update/z;->a:Lcom/ssjj/fnsdk/core/update/ViewUpdate;

    invoke-static {p1}, Lcom/ssjj/fnsdk/core/update/ViewUpdate;->b(Lcom/ssjj/fnsdk/core/update/ViewUpdate;)Lcom/ssjj/fnsdk/core/update/ViewUpdate$ViewCallBack;

    move-result-object p1

    invoke-interface {p1}, Lcom/ssjj/fnsdk/core/update/ViewUpdate$ViewCallBack;->onClickToDetail()V

    goto :goto_d0

    :cond_b7
    iget-object v0, p0, Lcom/ssjj/fnsdk/core/update/z;->a:Lcom/ssjj/fnsdk/core/update/ViewUpdate;

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/update/ViewUpdate;->f(Lcom/ssjj/fnsdk/core/update/ViewUpdate;)Landroid/widget/TextView;

    move-result-object v0

    if-ne p1, v0, :cond_d0

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/update/z;->a:Lcom/ssjj/fnsdk/core/update/ViewUpdate;

    invoke-static {p1}, Lcom/ssjj/fnsdk/core/update/ViewUpdate;->b(Lcom/ssjj/fnsdk/core/update/ViewUpdate;)Lcom/ssjj/fnsdk/core/update/ViewUpdate$ViewCallBack;

    move-result-object p1

    if-eqz p1, :cond_d0

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/update/z;->a:Lcom/ssjj/fnsdk/core/update/ViewUpdate;

    invoke-static {p1}, Lcom/ssjj/fnsdk/core/update/ViewUpdate;->b(Lcom/ssjj/fnsdk/core/update/ViewUpdate;)Lcom/ssjj/fnsdk/core/update/ViewUpdate$ViewCallBack;

    move-result-object p1

    invoke-interface {p1}, Lcom/ssjj/fnsdk/core/update/ViewUpdate$ViewCallBack;->onClickWebDownload()V

    :cond_d0
    :goto_d0
    return-void
.end method
