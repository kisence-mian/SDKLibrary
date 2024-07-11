.class public Lcom/kwad/sdk/core/page/recycle/g;
.super Landroidx/recyclerview/widget/RecyclerView;


# instance fields
.field private a:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method protected removeDetachedView(Landroid/view/View;Z)V
    .registers 4

    iget-boolean v0, p0, Lcom/kwad/sdk/core/page/recycle/g;->a:Z

    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->removeDetachedView(Landroid/view/View;Z)V

    return-void
.end method

.method public setIngoreTmpDetachedFlag(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/kwad/sdk/core/page/recycle/g;->a:Z

    return-void
.end method
