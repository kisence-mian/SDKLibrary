.class public Lcom/kwad/sdk/core/page/recycle/e;
.super Ljava/lang/Object;


# instance fields
.field public a:Lcom/kwad/sdk/core/download/b/b;

.field public b:Landroidx/recyclerview/widget/RecyclerView;

.field public c:Lcom/kwad/sdk/core/response/model/AdTemplate;


# direct methods
.method public constructor <init>(Lcom/kwad/sdk/core/response/model/AdTemplate;Lcom/kwad/sdk/core/download/b/b;Landroidx/recyclerview/widget/RecyclerView;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/kwad/sdk/core/page/recycle/e;->c:Lcom/kwad/sdk/core/response/model/AdTemplate;

    iput-object p2, p0, Lcom/kwad/sdk/core/page/recycle/e;->a:Lcom/kwad/sdk/core/download/b/b;

    iput-object p3, p0, Lcom/kwad/sdk/core/page/recycle/e;->b:Landroidx/recyclerview/widget/RecyclerView;

    return-void
.end method
