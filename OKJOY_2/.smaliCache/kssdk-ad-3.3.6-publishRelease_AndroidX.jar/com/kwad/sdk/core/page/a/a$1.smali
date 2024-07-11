.class Lcom/kwad/sdk/core/page/a/a$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kwad/sdk/core/page/a/a;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/kwad/sdk/core/page/recycle/e;

.field final synthetic b:Lcom/kwad/sdk/core/page/a/a;


# direct methods
.method constructor <init>(Lcom/kwad/sdk/core/page/a/a;Lcom/kwad/sdk/core/page/recycle/e;)V
    .registers 3

    iput-object p1, p0, Lcom/kwad/sdk/core/page/a/a$1;->b:Lcom/kwad/sdk/core/page/a/a;

    iput-object p2, p0, Lcom/kwad/sdk/core/page/a/a$1;->a:Lcom/kwad/sdk/core/page/recycle/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    iget-object p1, p0, Lcom/kwad/sdk/core/page/a/a$1;->a:Lcom/kwad/sdk/core/page/recycle/e;

    iget-object p1, p1, Lcom/kwad/sdk/core/page/recycle/e;->c:Lcom/kwad/sdk/core/response/model/AdTemplate;

    invoke-static {p1}, Lcom/kwad/sdk/core/response/b/c;->g(Lcom/kwad/sdk/core/response/model/AdTemplate;)Lcom/kwad/sdk/core/response/model/AdInfo;

    move-result-object p1

    invoke-static {p1}, Lcom/kwad/sdk/core/response/b/a;->t(Lcom/kwad/sdk/core/response/model/AdInfo;)Z

    move-result p1

    if-eqz p1, :cond_22

    iget-object p1, p0, Lcom/kwad/sdk/core/page/a/a$1;->a:Lcom/kwad/sdk/core/page/recycle/e;

    iget-object p1, p1, Lcom/kwad/sdk/core/page/recycle/e;->a:Lcom/kwad/sdk/core/download/b/b;

    if-eqz p1, :cond_48

    iget-object p1, p0, Lcom/kwad/sdk/core/page/a/a$1;->a:Lcom/kwad/sdk/core/page/recycle/e;

    iget-object p1, p1, Lcom/kwad/sdk/core/page/recycle/e;->a:Lcom/kwad/sdk/core/download/b/b;

    iget-object v0, p0, Lcom/kwad/sdk/core/page/a/a$1;->b:Lcom/kwad/sdk/core/page/a/a;

    invoke-virtual {v0}, Lcom/kwad/sdk/core/page/a/a;->j()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/kwad/sdk/core/download/b/b;->a(Landroid/content/Context;)V

    goto :goto_48

    :cond_22
    iget-object p1, p0, Lcom/kwad/sdk/core/page/a/a$1;->a:Lcom/kwad/sdk/core/page/recycle/e;

    iget-object p1, p1, Lcom/kwad/sdk/core/page/recycle/e;->b:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p1, :cond_48

    iget-object p1, p0, Lcom/kwad/sdk/core/page/a/a$1;->a:Lcom/kwad/sdk/core/page/recycle/e;

    iget-object p1, p1, Lcom/kwad/sdk/core/page/recycle/e;->b:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p1

    if-eqz p1, :cond_48

    iget-object p1, p0, Lcom/kwad/sdk/core/page/a/a$1;->a:Lcom/kwad/sdk/core/page/recycle/e;

    iget-object p1, p1, Lcom/kwad/sdk/core/page/recycle/e;->b:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result p1

    const/4 v0, 0x1

    if-le p1, v0, :cond_48

    iget-object p1, p0, Lcom/kwad/sdk/core/page/a/a$1;->a:Lcom/kwad/sdk/core/page/recycle/e;

    iget-object p1, p1, Lcom/kwad/sdk/core/page/recycle/e;->b:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    :cond_48
    :goto_48
    return-void
.end method
