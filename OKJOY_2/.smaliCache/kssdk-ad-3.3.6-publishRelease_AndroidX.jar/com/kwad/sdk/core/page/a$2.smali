.class Lcom/kwad/sdk/core/page/a$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kwad/sdk/core/page/a;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/kwad/sdk/core/page/recycle/DetailWebRecycleView;

.field final synthetic b:Lcom/kwad/sdk/core/page/a;


# direct methods
.method constructor <init>(Lcom/kwad/sdk/core/page/a;Lcom/kwad/sdk/core/page/recycle/DetailWebRecycleView;)V
    .registers 3

    iput-object p1, p0, Lcom/kwad/sdk/core/page/a$2;->b:Lcom/kwad/sdk/core/page/a;

    iput-object p2, p0, Lcom/kwad/sdk/core/page/a$2;->a:Lcom/kwad/sdk/core/page/recycle/DetailWebRecycleView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .registers 7

    iget-object v0, p0, Lcom/kwad/sdk/core/page/a$2;->a:Lcom/kwad/sdk/core/page/recycle/DetailWebRecycleView;

    invoke-virtual {v0}, Lcom/kwad/sdk/core/page/recycle/DetailWebRecycleView;->getChildCount()I

    move-result v0

    const-string v1, "AdRecycleWebFragment"

    if-lez v0, :cond_53

    iget-object v0, p0, Lcom/kwad/sdk/core/page/a$2;->a:Lcom/kwad/sdk/core/page/recycle/DetailWebRecycleView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/kwad/sdk/core/page/recycle/DetailWebRecycleView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v0

    iget-object v3, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "recycleView.setTopViewHeight("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/kwad/sdk/core/d/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/kwad/sdk/core/page/a$2;->a:Lcom/kwad/sdk/core/page/recycle/DetailWebRecycleView;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/kwad/sdk/core/page/recycle/DetailWebRecycleView;->setTopViewHeight(I)V

    iget-object v0, p0, Lcom/kwad/sdk/core/page/a$2;->a:Lcom/kwad/sdk/core/page/recycle/DetailWebRecycleView;

    invoke-virtual {v0, v2}, Lcom/kwad/sdk/core/page/recycle/DetailWebRecycleView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v0

    iget-object v2, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    instance-of v2, v2, Lcom/kwad/sdk/feed/widget/k;

    if-eqz v2, :cond_53

    iget-object v2, p0, Lcom/kwad/sdk/core/page/a$2;->b:Lcom/kwad/sdk/core/page/a;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v0, Lcom/kwad/sdk/feed/widget/k;

    invoke-static {v2, v0}, Lcom/kwad/sdk/core/page/a;->a(Lcom/kwad/sdk/core/page/a;Lcom/kwad/sdk/feed/widget/k;)Lcom/kwad/sdk/feed/widget/k;

    :cond_53
    iget-object v0, p0, Lcom/kwad/sdk/core/page/a$2;->a:Lcom/kwad/sdk/core/page/recycle/DetailWebRecycleView;

    invoke-virtual {v0}, Lcom/kwad/sdk/core/page/recycle/DetailWebRecycleView;->getChildCount()I

    move-result v0

    const/4 v2, 0x1

    if-le v0, v2, :cond_76

    iget-object v0, p0, Lcom/kwad/sdk/core/page/a$2;->a:Lcom/kwad/sdk/core/page/recycle/DetailWebRecycleView;

    invoke-virtual {v0, v2}, Lcom/kwad/sdk/core/page/recycle/DetailWebRecycleView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v0

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iget-object v2, p0, Lcom/kwad/sdk/core/page/a$2;->b:Lcom/kwad/sdk/core/page/a;

    sget v3, Lcom/kwad/sdk/R$id;->ksad_video_webView:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/webkit/WebView;

    invoke-static {v2, v3}, Lcom/kwad/sdk/core/page/a;->a(Lcom/kwad/sdk/core/page/a;Landroid/webkit/WebView;)Landroid/webkit/WebView;

    iget-object v2, p0, Lcom/kwad/sdk/core/page/a$2;->b:Lcom/kwad/sdk/core/page/a;

    invoke-static {v2, v0}, Lcom/kwad/sdk/core/page/a;->a(Lcom/kwad/sdk/core/page/a;Landroid/view/View;)V

    :cond_76
    const-string v0, "onGlobalLayout"

    invoke-static {v1, v0}, Lcom/kwad/sdk/core/d/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kwad/sdk/core/page/a$2;->a:Lcom/kwad/sdk/core/page/recycle/DetailWebRecycleView;

    invoke-virtual {v0}, Lcom/kwad/sdk/core/page/recycle/DetailWebRecycleView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method
