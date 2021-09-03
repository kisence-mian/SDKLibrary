.class public Ltds/androidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
.super Ljava/lang/Object;
.source "RecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltds/androidx/recyclerview/widget/RecyclerView$ItemAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ItemHolderInfo"
.end annotation


# instance fields
.field public bottom:I

.field public changeFlags:I

.field public left:I

.field public right:I

.field public top:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 13605
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13606
    return-void
.end method


# virtual methods
.method public setFrom(Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;)Ltds/androidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
    .registers 3
    .param p1, "holder"    # Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 13617
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Ltds/androidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;->setFrom(Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;I)Ltds/androidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    move-result-object v0

    return-object v0
.end method

.method public setFrom(Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;I)Ltds/androidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
    .registers 5
    .param p1, "holder"    # Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;
    .param p2, "flags"    # I

    .line 13633
    iget-object v0, p1, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 13634
    .local v0, "view":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v1

    iput v1, p0, Ltds/androidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;->left:I

    .line 13635
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v1

    iput v1, p0, Ltds/androidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;->top:I

    .line 13636
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v1

    iput v1, p0, Ltds/androidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;->right:I

    .line 13637
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v1

    iput v1, p0, Ltds/androidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;->bottom:I

    .line 13638
    return-object p0
.end method
