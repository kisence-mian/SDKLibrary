.class Lcom/ssjj/fnsdk/core/share/page/l;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/ssjj/fnsdk/core/share/page/SharePageView;


# direct methods
.method constructor <init>(Lcom/ssjj/fnsdk/core/share/page/SharePageView;)V
    .registers 2

    iput-object p1, p0, Lcom/ssjj/fnsdk/core/share/page/l;->a:Lcom/ssjj/fnsdk/core/share/page/SharePageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/share/page/l;->a:Lcom/ssjj/fnsdk/core/share/page/SharePageView;

    iget-object v0, v0, Lcom/ssjj/fnsdk/core/share/page/SharePageView;->a:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_17

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/share/page/l;->a:Lcom/ssjj/fnsdk/core/share/page/SharePageView;

    invoke-static {p1}, Lcom/ssjj/fnsdk/core/share/page/SharePageView;->a(Lcom/ssjj/fnsdk/core/share/page/SharePageView;)Lcom/ssjj/fnsdk/core/share/page/SharePageView$SharePageListener;

    move-result-object p1

    if-eqz p1, :cond_17

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/share/page/l;->a:Lcom/ssjj/fnsdk/core/share/page/SharePageView;

    invoke-static {p1}, Lcom/ssjj/fnsdk/core/share/page/SharePageView;->a(Lcom/ssjj/fnsdk/core/share/page/SharePageView;)Lcom/ssjj/fnsdk/core/share/page/SharePageView$SharePageListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/ssjj/fnsdk/core/share/page/SharePageView$SharePageListener;->onBack()V

    :cond_17
    return-void
.end method
