.class public Lcom/kwad/sdk/core/page/recycle/c;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;


# instance fields
.field public final a:Lcom/kwad/sdk/mvp/Presenter;

.field public final b:Lcom/kwad/sdk/core/page/recycle/e;


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/kwad/sdk/mvp/Presenter;Lcom/kwad/sdk/core/page/recycle/e;)V
    .registers 4

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    iput-object p3, p0, Lcom/kwad/sdk/core/page/recycle/c;->b:Lcom/kwad/sdk/core/page/recycle/e;

    iput-object p2, p0, Lcom/kwad/sdk/core/page/recycle/c;->a:Lcom/kwad/sdk/mvp/Presenter;

    invoke-virtual {p2, p1}, Lcom/kwad/sdk/mvp/Presenter;->a(Landroid/view/View;)V

    return-void
.end method
