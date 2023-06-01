.class Lcom/ssjj/fnsdk/core/share/page/i;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/ssjj/fnsdk/core/share/page/SelectTextView;


# direct methods
.method constructor <init>(Lcom/ssjj/fnsdk/core/share/page/SelectTextView;)V
    .registers 2

    iput-object p1, p0, Lcom/ssjj/fnsdk/core/share/page/i;->a:Lcom/ssjj/fnsdk/core/share/page/SelectTextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/share/page/i;->a:Lcom/ssjj/fnsdk/core/share/page/SelectTextView;

    invoke-static {p1}, Lcom/ssjj/fnsdk/core/share/page/SelectTextView;->a(Lcom/ssjj/fnsdk/core/share/page/SelectTextView;)[I

    move-result-object p1

    aget p1, p1, p3

    const/4 p2, 0x1

    if-ne p1, p2, :cond_15

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/share/page/i;->a:Lcom/ssjj/fnsdk/core/share/page/SelectTextView;

    invoke-static {p1}, Lcom/ssjj/fnsdk/core/share/page/SelectTextView;->a(Lcom/ssjj/fnsdk/core/share/page/SelectTextView;)[I

    move-result-object p1

    const/4 p4, 0x0

    aput p4, p1, p3

    goto :goto_1d

    :cond_15
    iget-object p1, p0, Lcom/ssjj/fnsdk/core/share/page/i;->a:Lcom/ssjj/fnsdk/core/share/page/SelectTextView;

    invoke-static {p1}, Lcom/ssjj/fnsdk/core/share/page/SelectTextView;->a(Lcom/ssjj/fnsdk/core/share/page/SelectTextView;)[I

    move-result-object p1

    aput p2, p1, p3

    :goto_1d
    iget-object p1, p0, Lcom/ssjj/fnsdk/core/share/page/i;->a:Lcom/ssjj/fnsdk/core/share/page/SelectTextView;

    invoke-static {p1}, Lcom/ssjj/fnsdk/core/share/page/SelectTextView;->e(Lcom/ssjj/fnsdk/core/share/page/SelectTextView;)Lcom/ssjj/fnsdk/core/share/page/SelectTextView$a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ssjj/fnsdk/core/share/page/SelectTextView$a;->notifyDataSetChanged()V

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/share/page/i;->a:Lcom/ssjj/fnsdk/core/share/page/SelectTextView;

    invoke-static {p1}, Lcom/ssjj/fnsdk/core/share/page/SelectTextView;->i(Lcom/ssjj/fnsdk/core/share/page/SelectTextView;)Lcom/ssjj/fnsdk/core/share/page/SelectTextView$SelectTextListener;

    move-result-object p1

    if-eqz p1, :cond_63

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/share/page/i;->a:Lcom/ssjj/fnsdk/core/share/page/SelectTextView;

    invoke-static {p1}, Lcom/ssjj/fnsdk/core/share/page/SelectTextView;->a(Lcom/ssjj/fnsdk/core/share/page/SelectTextView;)[I

    move-result-object p1

    aget p1, p1, p3

    if-ne p1, p2, :cond_4e

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/share/page/i;->a:Lcom/ssjj/fnsdk/core/share/page/SelectTextView;

    invoke-static {p1}, Lcom/ssjj/fnsdk/core/share/page/SelectTextView;->i(Lcom/ssjj/fnsdk/core/share/page/SelectTextView;)Lcom/ssjj/fnsdk/core/share/page/SelectTextView$SelectTextListener;

    move-result-object p1

    iget-object p2, p0, Lcom/ssjj/fnsdk/core/share/page/i;->a:Lcom/ssjj/fnsdk/core/share/page/SelectTextView;

    invoke-static {p2}, Lcom/ssjj/fnsdk/core/share/page/SelectTextView;->k(Lcom/ssjj/fnsdk/core/share/page/SelectTextView;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-interface {p1, p3, p2}, Lcom/ssjj/fnsdk/core/share/page/SelectTextView$SelectTextListener;->onSelected(ILjava/lang/String;)V

    goto :goto_63

    :cond_4e
    iget-object p1, p0, Lcom/ssjj/fnsdk/core/share/page/i;->a:Lcom/ssjj/fnsdk/core/share/page/SelectTextView;

    invoke-static {p1}, Lcom/ssjj/fnsdk/core/share/page/SelectTextView;->i(Lcom/ssjj/fnsdk/core/share/page/SelectTextView;)Lcom/ssjj/fnsdk/core/share/page/SelectTextView$SelectTextListener;

    move-result-object p1

    iget-object p2, p0, Lcom/ssjj/fnsdk/core/share/page/i;->a:Lcom/ssjj/fnsdk/core/share/page/SelectTextView;

    invoke-static {p2}, Lcom/ssjj/fnsdk/core/share/page/SelectTextView;->k(Lcom/ssjj/fnsdk/core/share/page/SelectTextView;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-interface {p1, p3, p2}, Lcom/ssjj/fnsdk/core/share/page/SelectTextView$SelectTextListener;->onUnselected(ILjava/lang/String;)V

    :cond_63
    :goto_63
    return-void
.end method
