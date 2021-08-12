.class public Lcom/kwad/sdk/core/page/recycle/f;
.super Ljava/lang/Object;


# instance fields
.field final a:Landroidx/recyclerview/widget/RecyclerView;

.field final b:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;


# direct methods
.method constructor <init>(Landroidx/recyclerview/widget/RecyclerView;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/kwad/sdk/core/page/recycle/f;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p1

    iput-object p1, p0, Lcom/kwad/sdk/core/page/recycle/f;->b:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    return-void
.end method

.method private a(IIZZ)Landroid/view/View;
    .registers 13

    iget-object v0, p0, Lcom/kwad/sdk/core/page/recycle/f;->b:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/kwad/sdk/core/page/recycle/f;->b:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-static {v0}, Landroidx/recyclerview/widget/OrientationHelper;->createVerticalHelper(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroidx/recyclerview/widget/OrientationHelper;

    move-result-object v0

    goto :goto_15

    :cond_f
    iget-object v0, p0, Lcom/kwad/sdk/core/page/recycle/f;->b:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-static {v0}, Landroidx/recyclerview/widget/OrientationHelper;->createHorizontalHelper(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroidx/recyclerview/widget/OrientationHelper;

    move-result-object v0

    :goto_15
    invoke-virtual {v0}, Landroidx/recyclerview/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v1

    invoke-virtual {v0}, Landroidx/recyclerview/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v2

    if-le p2, p1, :cond_21

    const/4 v3, 0x1

    goto :goto_22

    :cond_21
    const/4 v3, -0x1

    :goto_22
    const/4 v4, 0x0

    :goto_23
    if-eq p1, p2, :cond_47

    iget-object v5, p0, Lcom/kwad/sdk/core/page/recycle/f;->b:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v5, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v6

    invoke-virtual {v0, v5}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v7

    if-ge v6, v2, :cond_45

    if-le v7, v1, :cond_45

    if-eqz p3, :cond_44

    if-lt v6, v1, :cond_3e

    if-gt v7, v2, :cond_3e

    return-object v5

    :cond_3e
    if-eqz p4, :cond_45

    if-nez v4, :cond_45

    move-object v4, v5

    goto :goto_45

    :cond_44
    return-object v5

    :cond_45
    :goto_45
    add-int/2addr p1, v3

    goto :goto_23

    :cond_47
    return-object v4
.end method

.method public static a(Landroidx/recyclerview/widget/RecyclerView;)Lcom/kwad/sdk/core/page/recycle/f;
    .registers 2

    if-eqz p0, :cond_8

    new-instance v0, Lcom/kwad/sdk/core/page/recycle/f;

    invoke-direct {v0, p0}, Lcom/kwad/sdk/core/page/recycle/f;-><init>(Landroidx/recyclerview/widget/RecyclerView;)V

    return-object v0

    :cond_8
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "Recycler View is null"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public a()I
    .registers 4

    iget-object v0, p0, Lcom/kwad/sdk/core/page/recycle/f;->b:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, v1, v0, v1, v2}, Lcom/kwad/sdk/core/page/recycle/f;->a(IIZZ)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_10

    const/4 v0, -0x1

    goto :goto_16

    :cond_10
    iget-object v1, p0, Lcom/kwad/sdk/core/page/recycle/f;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v0

    :goto_16
    return v0
.end method

.method public b()I
    .registers 5

    iget-object v0, p0, Lcom/kwad/sdk/core/page/recycle/f;->b:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-direct {p0, v0, v2, v3, v1}, Lcom/kwad/sdk/core/page/recycle/f;->a(IIZZ)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_11

    goto :goto_17

    :cond_11
    iget-object v1, p0, Lcom/kwad/sdk/core/page/recycle/f;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v2

    :goto_17
    return v2
.end method
