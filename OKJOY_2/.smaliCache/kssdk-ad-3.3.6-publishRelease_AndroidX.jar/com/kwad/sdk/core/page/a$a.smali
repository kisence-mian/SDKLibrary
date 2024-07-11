.class Lcom/kwad/sdk/core/page/a$a;
.super Lcom/kwad/sdk/core/page/recycle/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kwad/sdk/core/page/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field a:Lcom/kwad/sdk/core/response/model/AdTemplate;

.field b:Lcom/kwad/sdk/core/page/recycle/e;

.field private c:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/kwad/sdk/core/response/model/AdTemplate;Landroid/content/Context;Lcom/kwad/sdk/core/page/recycle/e;)V
    .registers 4

    invoke-direct {p0}, Lcom/kwad/sdk/core/page/recycle/d;-><init>()V

    iput-object p1, p0, Lcom/kwad/sdk/core/page/a$a;->a:Lcom/kwad/sdk/core/response/model/AdTemplate;

    iput-object p2, p0, Lcom/kwad/sdk/core/page/a$a;->c:Landroid/content/Context;

    iput-object p3, p0, Lcom/kwad/sdk/core/page/a$a;->b:Lcom/kwad/sdk/core/page/recycle/e;

    return-void
.end method


# virtual methods
.method protected a(Landroid/view/ViewGroup;I)Lcom/kwad/sdk/core/page/recycle/c;
    .registers 6

    const/4 v0, 0x1

    if-ne p2, v0, :cond_25

    iget-object p2, p0, Lcom/kwad/sdk/core/page/a$a;->c:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lcom/kwad/sdk/R$layout;->ksad_datail_webview_container:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    new-instance p2, Lcom/kwad/sdk/mvp/Presenter;

    invoke-direct {p2}, Lcom/kwad/sdk/mvp/Presenter;-><init>()V

    new-instance v0, Lcom/kwad/sdk/core/page/a/b;

    invoke-direct {v0}, Lcom/kwad/sdk/core/page/a/b;-><init>()V

    invoke-virtual {p2, v0}, Lcom/kwad/sdk/mvp/Presenter;->a(Lcom/kwad/sdk/mvp/Presenter;)V

    new-instance v0, Lcom/kwad/sdk/core/page/recycle/c;

    iget-object v1, p0, Lcom/kwad/sdk/core/page/a$a;->b:Lcom/kwad/sdk/core/page/recycle/e;

    invoke-direct {v0, p1, p2, v1}, Lcom/kwad/sdk/core/page/recycle/c;-><init>(Landroid/view/View;Lcom/kwad/sdk/mvp/Presenter;Lcom/kwad/sdk/core/page/recycle/e;)V

    return-object v0

    :cond_25
    if-nez p2, :cond_45

    new-instance p2, Lcom/kwad/sdk/feed/widget/k;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/kwad/sdk/feed/widget/k;-><init>(Landroid/content/Context;)V

    new-instance p1, Lcom/kwad/sdk/mvp/Presenter;

    invoke-direct {p1}, Lcom/kwad/sdk/mvp/Presenter;-><init>()V

    new-instance v0, Lcom/kwad/sdk/core/page/a/a;

    invoke-direct {v0}, Lcom/kwad/sdk/core/page/a/a;-><init>()V

    invoke-virtual {p1, v0}, Lcom/kwad/sdk/mvp/Presenter;->a(Lcom/kwad/sdk/mvp/Presenter;)V

    new-instance v0, Lcom/kwad/sdk/core/page/recycle/c;

    iget-object v1, p0, Lcom/kwad/sdk/core/page/a$a;->b:Lcom/kwad/sdk/core/page/recycle/e;

    invoke-direct {v0, p2, p1, v1}, Lcom/kwad/sdk/core/page/recycle/c;-><init>(Landroid/view/View;Lcom/kwad/sdk/mvp/Presenter;Lcom/kwad/sdk/core/page/recycle/e;)V

    return-object v0

    :cond_45
    new-instance p2, Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x1

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    const/high16 v2, 0x42800000    # 64.0f

    invoke-static {p1, v2}, Lcom/kwad/sdk/utils/ah;->a(Landroid/content/Context;F)I

    move-result p1

    invoke-direct {v0, v1, p1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance p1, Lcom/kwad/sdk/core/page/recycle/c;

    new-instance v0, Lcom/kwad/sdk/mvp/Presenter;

    invoke-direct {v0}, Lcom/kwad/sdk/mvp/Presenter;-><init>()V

    iget-object v1, p0, Lcom/kwad/sdk/core/page/a$a;->b:Lcom/kwad/sdk/core/page/recycle/e;

    invoke-direct {p1, p2, v0, v1}, Lcom/kwad/sdk/core/page/recycle/c;-><init>(Landroid/view/View;Lcom/kwad/sdk/mvp/Presenter;Lcom/kwad/sdk/core/page/recycle/e;)V

    return-object p1
.end method

.method public a(Lcom/kwad/sdk/core/page/recycle/c;I)V
    .registers 3

    invoke-super {p0, p1, p2}, Lcom/kwad/sdk/core/page/recycle/d;->a(Lcom/kwad/sdk/core/page/recycle/c;I)V

    return-void
.end method

.method public getItemCount()I
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/core/page/a$a;->a:Lcom/kwad/sdk/core/response/model/AdTemplate;

    invoke-static {v0}, Lcom/kwad/sdk/core/response/b/c;->g(Lcom/kwad/sdk/core/response/model/AdTemplate;)Lcom/kwad/sdk/core/response/model/AdInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/kwad/sdk/core/response/b/a;->t(Lcom/kwad/sdk/core/response/model/AdInfo;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x3

    return v0

    :cond_e
    const/4 v0, 0x2

    return v0
.end method

.method public getItemViewType(I)I
    .registers 2

    return p1
.end method

.method public synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .registers 3

    check-cast p1, Lcom/kwad/sdk/core/page/recycle/c;

    invoke-virtual {p0, p1, p2}, Lcom/kwad/sdk/core/page/a$a;->a(Lcom/kwad/sdk/core/page/recycle/c;I)V

    return-void
.end method
