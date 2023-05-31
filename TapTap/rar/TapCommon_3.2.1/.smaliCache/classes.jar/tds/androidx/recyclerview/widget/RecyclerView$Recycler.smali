.class public final Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;
.super Ljava/lang/Object;
.source "RecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltds/androidx/recyclerview/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Recycler"
.end annotation


# static fields
.field static final DEFAULT_CACHE_SIZE:I = 0x2


# instance fields
.field final mAttachedScrap:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field final mCachedViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field mChangedScrap:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field mRecyclerPool:Ltds/androidx/recyclerview/widget/RecyclerView$RecycledViewPool;

.field private mRequestedCacheMax:I

.field private final mUnmodifiableAttachedScrap:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field private mViewCacheExtension:Ltds/androidx/recyclerview/widget/RecyclerView$ViewCacheExtension;

.field mViewCacheMax:I

.field final synthetic this$0:Ltds/androidx/recyclerview/widget/RecyclerView;


# direct methods
.method public constructor <init>(Ltds/androidx/recyclerview/widget/RecyclerView;)V
    .registers 4
    .param p1, "this$0"    # Ltds/androidx/recyclerview/widget/RecyclerView;

    .line 6039
    iput-object p1, p0, Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;->this$0:Ltds/androidx/recyclerview/widget/RecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6040
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;->mAttachedScrap:Ljava/util/ArrayList;

    .line 6041
    const/4 v1, 0x0

    iput-object v1, p0, Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;->mChangedScrap:Ljava/util/ArrayList;

    .line 6043
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    .line 6045
    nop

    .line 6046
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;->mUnmodifiableAttachedScrap:Ljava/util/List;

    .line 6048
    const/4 v0, 0x2

    iput v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;->mRequestedCacheMax:I

    .line 6049
    iput v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;->mViewCacheMax:I

    return-void
.end method

.method private attachAccessibilityDelegateOnBind(Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .registers 3
    .param p1, "holder"    # Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 6441
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;->this$0:Ltds/androidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Ltds/androidx/recyclerview/widget/RecyclerView;->isAccessibilityEnabled()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 6442
    iget-object v0, p1, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 6460
    :cond_a
    return-void
.end method

.method private invalidateDisplayListInt(Landroid/view/ViewGroup;Z)V
    .registers 7
    .param p1, "viewGroup"    # Landroid/view/ViewGroup;
    .param p2, "invalidateThis"    # Z

    .line 6469
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_6
    if-ltz v0, :cond_19

    .line 6470
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 6471
    .local v2, "view":Landroid/view/View;
    instance-of v3, v2, Landroid/view/ViewGroup;

    if-eqz v3, :cond_16

    .line 6472
    move-object v3, v2

    check-cast v3, Landroid/view/ViewGroup;

    invoke-direct {p0, v3, v1}, Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;->invalidateDisplayListInt(Landroid/view/ViewGroup;Z)V

    .line 6469
    .end local v2    # "view":Landroid/view/View;
    :cond_16
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    .line 6475
    .end local v0    # "i":I
    :cond_19
    if-nez p2, :cond_1c

    .line 6476
    return-void

    .line 6479
    :cond_1c
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2b

    .line 6480
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 6481
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_35

    .line 6483
    :cond_2b
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    .line 6484
    .local v0, "visibility":I
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 6485
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 6487
    .end local v0    # "visibility":I
    :goto_35
    return-void
.end method

.method private invalidateDisplayListInt(Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .registers 4
    .param p1, "holder"    # Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 6463
    iget-object v0, p1, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_e

    .line 6464
    iget-object v0, p1, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;->invalidateDisplayListInt(Landroid/view/ViewGroup;Z)V

    .line 6466
    :cond_e
    return-void
.end method

.method private tryBindViewHolderByDeadline(Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;IIJ)Z
    .registers 15
    .param p1, "holder"    # Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;
    .param p2, "offsetPosition"    # I
    .param p3, "position"    # I
    .param p4, "deadlineNs"    # J

    .line 6146
    const/4 v0, 0x0

    iput-object v0, p1, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->mBindingAdapter:Ltds/androidx/recyclerview/widget/RecyclerView$Adapter;

    .line 6147
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;->this$0:Ltds/androidx/recyclerview/widget/RecyclerView;

    iput-object v0, p1, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->mOwnerRecyclerView:Ltds/androidx/recyclerview/widget/RecyclerView;

    .line 6148
    invoke-virtual {p1}, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    .line 6149
    .local v0, "viewType":I
    iget-object v1, p0, Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;->this$0:Ltds/androidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Ltds/androidx/recyclerview/widget/RecyclerView;->getNanoTime()J

    move-result-wide v7

    .line 6150
    .local v7, "startBindNs":J
    const-wide v1, 0x7fffffffffffffffL

    cmp-long v1, p4, v1

    if-eqz v1, :cond_27

    iget-object v1, p0, Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;->mRecyclerPool:Ltds/androidx/recyclerview/widget/RecyclerView$RecycledViewPool;

    .line 6151
    move v2, v0

    move-wide v3, v7

    move-wide v5, p4

    invoke-virtual/range {v1 .. v6}, Ltds/androidx/recyclerview/widget/RecyclerView$RecycledViewPool;->willBindInTime(IJJ)Z

    move-result v1

    if-nez v1, :cond_27

    .line 6153
    const/4 v1, 0x0

    return v1

    .line 6155
    :cond_27
    iget-object v1, p0, Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;->this$0:Ltds/androidx/recyclerview/widget/RecyclerView;

    iget-object v1, v1, Ltds/androidx/recyclerview/widget/RecyclerView;->mAdapter:Ltds/androidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v1, p1, p2}, Ltds/androidx/recyclerview/widget/RecyclerView$Adapter;->bindViewHolder(Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    .line 6156
    iget-object v1, p0, Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;->this$0:Ltds/androidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Ltds/androidx/recyclerview/widget/RecyclerView;->getNanoTime()J

    move-result-wide v1

    .line 6157
    .local v1, "endBindNs":J
    iget-object v3, p0, Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;->mRecyclerPool:Ltds/androidx/recyclerview/widget/RecyclerView$RecycledViewPool;

    invoke-virtual {p1}, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v4

    sub-long v5, v1, v7

    invoke-virtual {v3, v4, v5, v6}, Ltds/androidx/recyclerview/widget/RecyclerView$RecycledViewPool;->factorInBindTime(IJ)V

    .line 6158
    invoke-direct {p0, p1}, Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;->attachAccessibilityDelegateOnBind(Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 6159
    iget-object v3, p0, Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;->this$0:Ltds/androidx/recyclerview/widget/RecyclerView;

    iget-object v3, v3, Ltds/androidx/recyclerview/widget/RecyclerView;->mState:Ltds/androidx/recyclerview/widget/RecyclerView$State;

    invoke-virtual {v3}, Ltds/androidx/recyclerview/widget/RecyclerView$State;->isPreLayout()Z

    move-result v3

    if-eqz v3, :cond_4e

    .line 6160
    iput p3, p1, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->mPreLayoutPosition:I

    .line 6162
    :cond_4e
    const/4 v3, 0x1

    return v3
.end method


# virtual methods
.method addViewHolderToRecycledViewPool(Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;Z)V
    .registers 5
    .param p1, "holder"    # Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;
    .param p2, "dispatchRecycled"    # Z

    .line 6666
    invoke-static {p1}, Ltds/androidx/recyclerview/widget/RecyclerView;->clearNestedRecyclerViewIfNotNested(Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 6667
    iget-object v0, p1, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 6679
    .local v0, "itemView":Landroid/view/View;
    if-eqz p2, :cond_a

    .line 6680
    invoke-virtual {p0, p1}, Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;->dispatchViewRecycled(Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 6682
    :cond_a
    const/4 v1, 0x0

    iput-object v1, p1, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->mBindingAdapter:Ltds/androidx/recyclerview/widget/RecyclerView$Adapter;

    .line 6683
    iput-object v1, p1, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->mOwnerRecyclerView:Ltds/androidx/recyclerview/widget/RecyclerView;

    .line 6684
    invoke-virtual {p0}, Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;->getRecycledViewPool()Ltds/androidx/recyclerview/widget/RecyclerView$RecycledViewPool;

    move-result-object v1

    invoke-virtual {v1, p1}, Ltds/androidx/recyclerview/widget/RecyclerView$RecycledViewPool;->putRecycledView(Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 6685
    return-void
.end method

.method public bindViewToPosition(Landroid/view/View;I)V
    .registers 11
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I

    .line 6181
    invoke-static {p1}, Ltds/androidx/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v6

    .line 6182
    .local v6, "holder":Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;
    if-eqz v6, :cond_a6

    .line 6187
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;->this$0:Ltds/androidx/recyclerview/widget/RecyclerView;

    iget-object v0, v0, Ltds/androidx/recyclerview/widget/RecyclerView;->mAdapterHelper:Ltds/androidx/recyclerview/widget/AdapterHelper;

    invoke-virtual {v0, p2}, Ltds/androidx/recyclerview/widget/AdapterHelper;->findPositionOffset(I)I

    move-result v7

    .line 6188
    .local v7, "offsetPosition":I
    if-ltz v7, :cond_67

    iget-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;->this$0:Ltds/androidx/recyclerview/widget/RecyclerView;

    iget-object v0, v0, Ltds/androidx/recyclerview/widget/RecyclerView;->mAdapter:Ltds/androidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v0}, Ltds/androidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v0

    if-ge v7, v0, :cond_67

    .line 6193
    const-wide v4, 0x7fffffffffffffffL

    move-object v0, p0

    move-object v1, v6

    move v2, v7

    move v3, p2

    invoke-direct/range {v0 .. v5}, Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;->tryBindViewHolderByDeadline(Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;IIJ)Z

    .line 6195
    iget-object v0, v6, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 6197
    .local v0, "lp":Landroid/view/ViewGroup$LayoutParams;
    if-nez v0, :cond_3c

    .line 6198
    iget-object v1, p0, Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;->this$0:Ltds/androidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Ltds/androidx/recyclerview/widget/RecyclerView;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutParams;

    .line 6199
    .local v1, "rvLayoutParams":Ltds/androidx/recyclerview/widget/RecyclerView$LayoutParams;
    iget-object v2, v6, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_55

    .line 6200
    .end local v1    # "rvLayoutParams":Ltds/androidx/recyclerview/widget/RecyclerView$LayoutParams;
    :cond_3c
    iget-object v1, p0, Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;->this$0:Ltds/androidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Ltds/androidx/recyclerview/widget/RecyclerView;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v1

    if-nez v1, :cond_52

    .line 6201
    iget-object v1, p0, Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;->this$0:Ltds/androidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Ltds/androidx/recyclerview/widget/RecyclerView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutParams;

    .line 6202
    .restart local v1    # "rvLayoutParams":Ltds/androidx/recyclerview/widget/RecyclerView$LayoutParams;
    iget-object v2, v6, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_55

    .line 6204
    .end local v1    # "rvLayoutParams":Ltds/androidx/recyclerview/widget/RecyclerView$LayoutParams;
    :cond_52
    move-object v1, v0

    check-cast v1, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutParams;

    .line 6207
    .restart local v1    # "rvLayoutParams":Ltds/androidx/recyclerview/widget/RecyclerView$LayoutParams;
    :goto_55
    const/4 v2, 0x1

    iput-boolean v2, v1, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutParams;->mInsetsDirty:Z

    .line 6208
    iput-object v6, v1, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutParams;->mViewHolder:Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 6209
    iget-object v3, v6, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-nez v3, :cond_63

    goto :goto_64

    :cond_63
    const/4 v2, 0x0

    :goto_64
    iput-boolean v2, v1, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutParams;->mPendingInvalidate:Z

    .line 6210
    return-void

    .line 6189
    .end local v0    # "lp":Landroid/view/ViewGroup$LayoutParams;
    .end local v1    # "rvLayoutParams":Ltds/androidx/recyclerview/widget/RecyclerView$LayoutParams;
    :cond_67
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Inconsistency detected. Invalid item position "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "(offset:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ").state:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;->this$0:Ltds/androidx/recyclerview/widget/RecyclerView;

    iget-object v2, v2, Ltds/androidx/recyclerview/widget/RecyclerView;->mState:Ltds/androidx/recyclerview/widget/RecyclerView$State;

    .line 6191
    invoke-virtual {v2}, Ltds/androidx/recyclerview/widget/RecyclerView$State;->getItemCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;->this$0:Ltds/androidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2}, Ltds/androidx/recyclerview/widget/RecyclerView;->exceptionLabel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 6183
    .end local v7    # "offsetPosition":I
    :cond_a6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The view does not have a ViewHolder. You cannot pass arbitrary views to this method, they should be created by the Adapter"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;->this$0:Ltds/androidx/recyclerview/widget/RecyclerView;

    .line 6185
    invoke-virtual {v2}, Ltds/androidx/recyclerview/widget/RecyclerView;->exceptionLabel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public clear()V
    .registers 2

    .line 6062
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;->mAttachedScrap:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 6063
    invoke-virtual {p0}, Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;->recycleAndClearCachedViews()V

    .line 6064
    return-void
.end method

.method clearOldPositions()V
    .registers 6

    .line 7060
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 7061
    .local v0, "cachedCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_17

    .line 7062
    iget-object v2, p0, Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 7063
    .local v2, "holder":Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;
    invoke-virtual {v2}, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->clearOldPosition()V

    .line 7061
    .end local v2    # "holder":Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 7065
    .end local v1    # "i":I
    :cond_17
    iget-object v1, p0, Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;->mAttachedScrap:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 7066
    .local v1, "scrapCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1e
    if-ge v2, v1, :cond_2e

    .line 7067
    iget-object v3, p0, Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;->mAttachedScrap:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-virtual {v3}, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->clearOldPosition()V

    .line 7066
    add-int/lit8 v2, v2, 0x1

    goto :goto_1e

    .line 7069
    .end local v2    # "i":I
    :cond_2e
    iget-object v2, p0, Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;->mChangedScrap:Ljava/util/ArrayList;

    if-eqz v2, :cond_47

    .line 7070
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 7071
    .local v2, "changedScrapCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_37
    if-ge v3, v2, :cond_47

    .line 7072
    iget-object v4, p0, Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;->mChangedScrap:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-virtual {v4}, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->clearOldPosition()V

    .line 7071
    add-int/lit8 v3, v3, 0x1

    goto :goto_37

    .line 7075
    .end local v2    # "changedScrapCount":I
    .end local v3    # "i":I
    :cond_47
    return-void
.end method

.method clearScrap()V
    .registers 2

    .line 6755
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;->mAttachedScrap:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 6756
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;->mChangedScrap:Ljava/util/ArrayList;

    if-eqz v0, :cond_c

    .line 6757
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 6759
    :cond_c
    return-void
.end method

.method public convertPreLayoutPositionToPostLayout(I)I
    .registers 5
    .param p1, "position"    # I

    .line 6231
    if-ltz p1, :cond_20

    iget-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;->this$0:Ltds/androidx/recyclerview/widget/RecyclerView;

    iget-object v0, v0, Ltds/androidx/recyclerview/widget/RecyclerView;->mState:Ltds/androidx/recyclerview/widget/RecyclerView$State;

    invoke-virtual {v0}, Ltds/androidx/recyclerview/widget/RecyclerView$State;->getItemCount()I

    move-result v0

    if-ge p1, v0, :cond_20

    .line 6235
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;->this$0:Ltds/androidx/recyclerview/widget/RecyclerView;

    iget-object v0, v0, Ltds/androidx/recyclerview/widget/RecyclerView;->mState:Ltds/androidx/recyclerview/widget/RecyclerView$State;

    invoke-virtual {v0}, Ltds/androidx/recyclerview/widget/RecyclerView$State;->isPreLayout()Z

    move-result v0

    if-nez v0, :cond_17

    .line 6236
    return p1

    .line 6238
    :cond_17
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;->this$0:Ltds/androidx/recyclerview/widget/RecyclerView;

    iget-object v0, v0, Ltds/androidx/recyclerview/widget/RecyclerView;->mAdapterHelper:Ltds/androidx/recyclerview/widget/AdapterHelper;

    invoke-virtual {v0, p1}, Ltds/androidx/recyclerview/widget/AdapterHelper;->findPositionOffset(I)I

    move-result v0

    return v0

    .line 6232
    :cond_20
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid position "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". State item count is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;->this$0:Ltds/androidx/recyclerview/widget/RecyclerView;

    iget-object v2, v2, Ltds/androidx/recyclerview/widget/RecyclerView;->mState:Ltds/androidx/recyclerview/widget/RecyclerView$State;

    .line 6233
    invoke-virtual {v2}, Ltds/androidx/recyclerview/widget/RecyclerView$State;->getItemCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;->this$0:Ltds/androidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2}, Ltds/androidx/recyclerview/widget/RecyclerView;->exceptionLabel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method dispatchViewRecycled(Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .registers 5
    .param p1, "holder"    # Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 6909
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;->this$0:Ltds/androidx/recyclerview/widget/RecyclerView;

    iget-object v0, v0, Ltds/androidx/recyclerview/widget/RecyclerView;->mRecyclerListener:Ltds/androidx/recyclerview/widget/RecyclerView$RecyclerListener;

    if-eqz v0, :cond_d

    .line 6910
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;->this$0:Ltds/androidx/recyclerview/widget/RecyclerView;

    iget-object v0, v0, Ltds/androidx/recyclerview/widget/RecyclerView;->mRecyclerListener:Ltds/androidx/recyclerview/widget/RecyclerView$RecyclerListener;

    invoke-interface {v0, p1}, Ltds/androidx/recyclerview/widget/RecyclerView$RecyclerListener;->onViewRecycled(Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 6913
    :cond_d
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;->this$0:Ltds/androidx/recyclerview/widget/RecyclerView;

    iget-object v0, v0, Ltds/androidx/recyclerview/widget/RecyclerView;->mRecyclerListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 6914
    .local v0, "listenerCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_16
    if-ge v1, v0, :cond_28

    .line 6915
    iget-object v2, p0, Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;->this$0:Ltds/androidx/recyclerview/widget/RecyclerView;

    iget-object v2, v2, Ltds/androidx/recyclerview/widget/RecyclerView;->mRecyclerListeners:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ltds/androidx/recyclerview/widget/RecyclerView$RecyclerListener;

    invoke-interface {v2, p1}, Ltds/androidx/recyclerview/widget/RecyclerView$RecyclerListener;->onViewRecycled(Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 6914
    add-int/lit8 v1, v1, 0x1

    goto :goto_16

    .line 6917
    .end local v1    # "i":I
    :cond_28
    iget-object v1, p0, Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;->this$0:Ltds/androidx/recyclerview/widget/RecyclerView;

    iget-object v1, v1, Ltds/androidx/recyclerview/widget/RecyclerView;->mAdapter:Ltds/androidx/recyclerview/widget/RecyclerView$Adapter;

    if-eqz v1, :cond_35

    .line 6918
    iget-object v1, p0, Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;->this$0:Ltds/androidx/recyclerview/widget/RecyclerView;

    iget-object v1, v1, Ltds/androidx/recyclerview/widget/RecyclerView;->mAdapter:Ltds/androidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v1, p1}, Ltds/androidx/recyclerview/widget/RecyclerView$Adapter;->onViewRecycled(Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 6920
    :cond_35
    iget-object v1, p0, Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;->this$0:Ltds/androidx/recyclerview/widget/RecyclerView;

    iget-object v1, v1, Ltds/androidx/recyclerview/widget/RecyclerView;->mState:Ltds/androidx/recyclerview/widget/RecyclerView$State;

    if-eqz v1, :cond_42

    .line 6921
    iget-object v1, p0, Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;->this$0:Ltds/androidx/recyclerview/widget/RecyclerView;

    iget-object v1, v1, Ltds/androidx/recyclerview/widget/RecyclerView;->mViewInfoStore:Ltds/androidx/recyclerview/widget/ViewInfoStore;

    invoke-virtual {v1, p1}, Ltds/androidx/recyclerview/widget/ViewInfoStore;->removeViewHolder(Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 6924
    :cond_42
    return-void
.end method

.method getChangedScrapViewForPosition(I)Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;
    .registers 12
    .param p1, "position"    # I

    .line 6764
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;->mChangedScrap:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-eqz v0, :cond_74

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    move v2, v0

    .local v2, "changedScrapSize":I
    if-nez v0, :cond_d

    goto :goto_74

    .line 6768
    :cond_d
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_e
    const/16 v3, 0x20

    if-ge v0, v2, :cond_2d

    .line 6769
    iget-object v4, p0, Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;->mChangedScrap:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 6770
    .local v4, "holder":Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;
    invoke-virtual {v4}, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->wasReturnedFromScrap()Z

    move-result v5

    if-nez v5, :cond_2a

    invoke-virtual {v4}, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    move-result v5

    if-ne v5, p1, :cond_2a

    .line 6771
    invoke-virtual {v4, v3}, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->addFlags(I)V

    .line 6772
    return-object v4

    .line 6768
    .end local v4    # "holder":Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;
    :cond_2a
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 6776
    .end local v0    # "i":I
    :cond_2d
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;->this$0:Ltds/androidx/recyclerview/widget/RecyclerView;

    iget-object v0, v0, Ltds/androidx/recyclerview/widget/RecyclerView;->mAdapter:Ltds/androidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v0}, Ltds/androidx/recyclerview/widget/RecyclerView$Adapter;->hasStableIds()Z

    move-result v0

    if-eqz v0, :cond_73

    .line 6777
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;->this$0:Ltds/androidx/recyclerview/widget/RecyclerView;

    iget-object v0, v0, Ltds/androidx/recyclerview/widget/RecyclerView;->mAdapterHelper:Ltds/androidx/recyclerview/widget/AdapterHelper;

    invoke-virtual {v0, p1}, Ltds/androidx/recyclerview/widget/AdapterHelper;->findPositionOffset(I)I

    move-result v0

    .line 6778
    .local v0, "offsetPosition":I
    if-lez v0, :cond_73

    iget-object v4, p0, Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;->this$0:Ltds/androidx/recyclerview/widget/RecyclerView;

    iget-object v4, v4, Ltds/androidx/recyclerview/widget/RecyclerView;->mAdapter:Ltds/androidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v4}, Ltds/androidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v4

    if-ge v0, v4, :cond_73

    .line 6779
    iget-object v4, p0, Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;->this$0:Ltds/androidx/recyclerview/widget/RecyclerView;

    iget-object v4, v4, Ltds/androidx/recyclerview/widget/RecyclerView;->mAdapter:Ltds/androidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v4, v0}, Ltds/androidx/recyclerview/widget/RecyclerView$Adapter;->getItemId(I)J

    move-result-wide v4

    .line 6780
    .local v4, "id":J
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_54
    if-ge v6, v2, :cond_73

    .line 6781
    iget-object v7, p0, Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;->mChangedScrap:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 6782
    .local v7, "holder":Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;
    invoke-virtual {v7}, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->wasReturnedFromScrap()Z

    move-result v8

    if-nez v8, :cond_70

    invoke-virtual {v7}, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemId()J

    move-result-wide v8

    cmp-long v8, v8, v4

    if-nez v8, :cond_70

    .line 6783
    invoke-virtual {v7, v3}, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->addFlags(I)V

    .line 6784
    return-object v7

    .line 6780
    .end local v7    # "holder":Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;
    :cond_70
    add-int/lit8 v6, v6, 0x1

    goto :goto_54

    .line 6789
    .end local v0    # "offsetPosition":I
    .end local v4    # "id":J
    .end local v6    # "i":I
    :cond_73
    return-object v1

    .line 6765
    .end local v2    # "changedScrapSize":I
    :cond_74
    :goto_74
    return-object v1
.end method

.method getRecycledViewPool()Ltds/androidx/recyclerview/widget/RecyclerView$RecycledViewPool;
    .registers 2

    .line 7018
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;->mRecyclerPool:Ltds/androidx/recyclerview/widget/RecyclerView$RecycledViewPool;

    if-nez v0, :cond_b

    .line 7019
    new-instance v0, Ltds/androidx/recyclerview/widget/RecyclerView$RecycledViewPool;

    invoke-direct {v0}, Ltds/androidx/recyclerview/widget/RecyclerView$RecycledViewPool;-><init>()V

    iput-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;->mRecyclerPool:Ltds/androidx/recyclerview/widget/RecyclerView$RecycledViewPool;

    .line 7021
    :cond_b
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;->mRecyclerPool:Ltds/androidx/recyclerview/widget/RecyclerView$RecycledViewPool;

    return-object v0
.end method

.method getScrapCount()I
    .registers 2

    .line 6747
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;->mAttachedScrap:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getScrapList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation

    .line 6094
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;->mUnmodifiableAttachedScrap:Ljava/util/List;

    return-object v0
.end method

.method getScrapOrCachedViewForId(JIZ)Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;
    .registers 12
    .param p1, "id"    # J
    .param p3, "type"    # I
    .param p4, "dryRun"    # Z

    .line 6855
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;->mAttachedScrap:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 6856
    .local v0, "count":I
    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    :goto_8
    if-ltz v1, :cond_59

    .line 6857
    iget-object v2, p0, Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;->mAttachedScrap:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 6858
    .local v2, "holder":Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;
    invoke-virtual {v2}, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemId()J

    move-result-wide v3

    cmp-long v3, v3, p1

    if-nez v3, :cond_56

    invoke-virtual {v2}, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->wasReturnedFromScrap()Z

    move-result v3

    if-nez v3, :cond_56

    .line 6859
    invoke-virtual {v2}, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v3

    if-ne p3, v3, :cond_42

    .line 6860
    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->addFlags(I)V

    .line 6861
    invoke-virtual {v2}, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->isRemoved()Z

    move-result v3

    if-eqz v3, :cond_41

    .line 6870
    iget-object v3, p0, Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;->this$0:Ltds/androidx/recyclerview/widget/RecyclerView;

    iget-object v3, v3, Ltds/androidx/recyclerview/widget/RecyclerView;->mState:Ltds/androidx/recyclerview/widget/RecyclerView$State;

    invoke-virtual {v3}, Ltds/androidx/recyclerview/widget/RecyclerView$State;->isPreLayout()Z

    move-result v3

    if-nez v3, :cond_41

    .line 6871
    const/4 v3, 0x2

    const/16 v4, 0xe

    invoke-virtual {v2, v3, v4}, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->setFlags(II)V

    .line 6875
    :cond_41
    return-object v2

    .line 6876
    :cond_42
    if-nez p4, :cond_56

    .line 6880
    iget-object v3, p0, Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;->mAttachedScrap:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 6881
    iget-object v3, p0, Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;->this$0:Ltds/androidx/recyclerview/widget/RecyclerView;

    iget-object v4, v2, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Ltds/androidx/recyclerview/widget/RecyclerView;->removeDetachedView(Landroid/view/View;Z)V

    .line 6882
    iget-object v3, v2, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p0, v3}, Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;->quickRecycleScrapView(Landroid/view/View;)V

    .line 6856
    .end local v2    # "holder":Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;
    :cond_56
    add-int/lit8 v1, v1, -0x1

    goto :goto_8

    .line 6888
    .end local v1    # "i":I
    :cond_59
    iget-object v1, p0, Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 6889
    .local v1, "cacheSize":I
    add-int/lit8 v2, v1, -0x1

    .local v2, "i":I
    :goto_61
    const/4 v3, 0x0

    if-ltz v2, :cond_91

    .line 6890
    iget-object v4, p0, Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 6891
    .local v4, "holder":Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;
    invoke-virtual {v4}, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemId()J

    move-result-wide v5

    cmp-long v5, v5, p1

    if-nez v5, :cond_8e

    invoke-virtual {v4}, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->isAttachedToTransitionOverlay()Z

    move-result v5

    if-nez v5, :cond_8e

    .line 6892
    invoke-virtual {v4}, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v5

    if-ne p3, v5, :cond_88

    .line 6893
    if-nez p4, :cond_87

    .line 6894
    iget-object v3, p0, Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 6896
    :cond_87
    return-object v4

    .line 6897
    :cond_88
    if-nez p4, :cond_8e

    .line 6898
    invoke-virtual {p0, v2}, Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;->recycleCachedViewAt(I)V

    .line 6899
    return-object v3

    .line 6889
    .end local v4    # "holder":Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;
    :cond_8e
    add-int/lit8 v2, v2, -0x1

    goto :goto_61

    .line 6903
    .end local v2    # "i":I
    :cond_91
    return-object v3
.end method

.method getScrapOrHiddenOrCachedHolderForPosition(IZ)Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;
    .registers 10
    .param p1, "position"    # I
    .param p2, "dryRun"    # Z

    .line 6800
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;->mAttachedScrap:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 6803
    .local v0, "scrapCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_3a

    .line 6804
    iget-object v2, p0, Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;->mAttachedScrap:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 6805
    .local v2, "holder":Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;
    invoke-virtual {v2}, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->wasReturnedFromScrap()Z

    move-result v3

    if-nez v3, :cond_37

    invoke-virtual {v2}, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    move-result v3

    if-ne v3, p1, :cond_37

    .line 6806
    invoke-virtual {v2}, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->isInvalid()Z

    move-result v3

    if-nez v3, :cond_37

    iget-object v3, p0, Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;->this$0:Ltds/androidx/recyclerview/widget/RecyclerView;

    iget-object v3, v3, Ltds/androidx/recyclerview/widget/RecyclerView;->mState:Ltds/androidx/recyclerview/widget/RecyclerView$State;

    iget-boolean v3, v3, Ltds/androidx/recyclerview/widget/RecyclerView$State;->mInPreLayout:Z

    if-nez v3, :cond_31

    invoke-virtual {v2}, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->isRemoved()Z

    move-result v3

    if-nez v3, :cond_37

    .line 6807
    :cond_31
    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->addFlags(I)V

    .line 6808
    return-object v2

    .line 6803
    .end local v2    # "holder":Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;
    :cond_37
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 6812
    .end local v1    # "i":I
    :cond_3a
    if-nez p2, :cond_8f

    .line 6813
    iget-object v1, p0, Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;->this$0:Ltds/androidx/recyclerview/widget/RecyclerView;

    iget-object v1, v1, Ltds/androidx/recyclerview/widget/RecyclerView;->mChildHelper:Ltds/androidx/recyclerview/widget/ChildHelper;

    invoke-virtual {v1, p1}, Ltds/androidx/recyclerview/widget/ChildHelper;->findHiddenNonRemovedView(I)Landroid/view/View;

    move-result-object v1

    .line 6814
    .local v1, "view":Landroid/view/View;
    if-eqz v1, :cond_8f

    .line 6817
    invoke-static {v1}, Ltds/androidx/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v2

    .line 6818
    .local v2, "vh":Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;
    iget-object v3, p0, Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;->this$0:Ltds/androidx/recyclerview/widget/RecyclerView;

    iget-object v3, v3, Ltds/androidx/recyclerview/widget/RecyclerView;->mChildHelper:Ltds/androidx/recyclerview/widget/ChildHelper;

    invoke-virtual {v3, v1}, Ltds/androidx/recyclerview/widget/ChildHelper;->unhide(Landroid/view/View;)V

    .line 6819
    iget-object v3, p0, Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;->this$0:Ltds/androidx/recyclerview/widget/RecyclerView;

    iget-object v3, v3, Ltds/androidx/recyclerview/widget/RecyclerView;->mChildHelper:Ltds/androidx/recyclerview/widget/ChildHelper;

    invoke-virtual {v3, v1}, Ltds/androidx/recyclerview/widget/ChildHelper;->indexOfChild(Landroid/view/View;)I

    move-result v3

    .line 6820
    .local v3, "layoutIndex":I
    const/4 v4, -0x1

    if-eq v3, v4, :cond_6c

    .line 6824
    iget-object v4, p0, Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;->this$0:Ltds/androidx/recyclerview/widget/RecyclerView;

    iget-object v4, v4, Ltds/androidx/recyclerview/widget/RecyclerView;->mChildHelper:Ltds/androidx/recyclerview/widget/ChildHelper;

    invoke-virtual {v4, v3}, Ltds/androidx/recyclerview/widget/ChildHelper;->detachViewFromParent(I)V

    .line 6825
    invoke-virtual {p0, v1}, Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;->scrapView(Landroid/view/View;)V

    .line 6826
    const/16 v4, 0x2020

    invoke-virtual {v2, v4}, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->addFlags(I)V

    .line 6828
    return-object v2

    .line 6821
    :cond_6c
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "layout index should not be -1 after unhiding a view:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;->this$0:Ltds/androidx/recyclerview/widget/RecyclerView;

    .line 6822
    invoke-virtual {v6}, Ltds/androidx/recyclerview/widget/RecyclerView;->exceptionLabel()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 6833
    .end local v1    # "view":Landroid/view/View;
    .end local v2    # "vh":Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;
    .end local v3    # "layoutIndex":I
    :cond_8f
    iget-object v1, p0, Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 6834
    .local v1, "cacheSize":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_96
    if-ge v2, v1, :cond_bd

    .line 6835
    iget-object v3, p0, Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 6838
    .local v3, "holder":Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;
    invoke-virtual {v3}, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->isInvalid()Z

    move-result v4

    if-nez v4, :cond_ba

    invoke-virtual {v3}, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    move-result v4

    if-ne v4, p1, :cond_ba

    .line 6839
    invoke-virtual {v3}, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->isAttachedToTransitionOverlay()Z

    move-result v4

    if-nez v4, :cond_ba

    .line 6840
    if-nez p2, :cond_b9

    .line 6841
    iget-object v4, p0, Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 6847
    :cond_b9
    return-object v3

    .line 6834
    .end local v3    # "holder":Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;
    :cond_ba
    add-int/lit8 v2, v2, 0x1

    goto :goto_96

    .line 6850
    .end local v2    # "i":I
    :cond_bd
    const/4 v2, 0x0

    return-object v2
.end method

.method getScrapViewAt(I)Landroid/view/View;
    .registers 3
    .param p1, "index"    # I

    .line 6751
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;->mAttachedScrap:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;

    iget-object v0, v0, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    return-object v0
.end method

.method public getViewForPosition(I)Landroid/view/View;
    .registers 3
    .param p1, "position"    # I

    .line 6257
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;->getViewForPosition(IZ)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method getViewForPosition(IZ)Landroid/view/View;
    .registers 5
    .param p1, "position"    # I
    .param p2, "dryRun"    # Z

    .line 6261
    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, p1, p2, v0, v1}, Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;->tryGetViewHolderForPositionByDeadline(IZJ)Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v0

    iget-object v0, v0, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    return-object v0
.end method

.method markItemDecorInsetsDirty()V
    .registers 6

    .line 7078
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 7079
    .local v0, "cachedCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_21

    .line 7080
    iget-object v2, p0, Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 7081
    .local v2, "holder":Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;
    iget-object v3, v2, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutParams;

    .line 7082
    .local v3, "layoutParams":Ltds/androidx/recyclerview/widget/RecyclerView$LayoutParams;
    if-eqz v3, :cond_1e

    .line 7083
    const/4 v4, 0x1

    iput-boolean v4, v3, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutParams;->mInsetsDirty:Z

    .line 7079
    .end local v2    # "holder":Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;
    .end local v3    # "layoutParams":Ltds/androidx/recyclerview/widget/RecyclerView$LayoutParams;
    :cond_1e
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 7086
    .end local v1    # "i":I
    :cond_21
    return-void
.end method

.method markKnownViewsInvalid()V
    .registers 5

    .line 7044
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 7045
    .local v0, "cachedCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_1e

    .line 7046
    iget-object v2, p0, Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 7047
    .local v2, "holder":Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;
    if-eqz v2, :cond_1b

    .line 7048
    const/4 v3, 0x6

    invoke-virtual {v2, v3}, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->addFlags(I)V

    .line 7049
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->addChangePayload(Ljava/lang/Object;)V

    .line 7045
    .end local v2    # "holder":Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;
    :cond_1b
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 7053
    .end local v1    # "i":I
    :cond_1e
    iget-object v1, p0, Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;->this$0:Ltds/androidx/recyclerview/widget/RecyclerView;

    iget-object v1, v1, Ltds/androidx/recyclerview/widget/RecyclerView;->mAdapter:Ltds/androidx/recyclerview/widget/RecyclerView$Adapter;

    if-eqz v1, :cond_2e

    iget-object v1, p0, Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;->this$0:Ltds/androidx/recyclerview/widget/RecyclerView;

    iget-object v1, v1, Ltds/androidx/recyclerview/widget/RecyclerView;->mAdapter:Ltds/androidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v1}, Ltds/androidx/recyclerview/widget/RecyclerView$Adapter;->hasStableIds()Z

    move-result v1

    if-nez v1, :cond_31

    .line 7055
    :cond_2e
    invoke-virtual {p0}, Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;->recycleAndClearCachedViews()V

    .line 7057
    :cond_31
    return-void
.end method

.method offsetPositionRecordsForInsert(II)V
    .registers 7
    .param p1, "insertedAt"    # I
    .param p2, "count"    # I

    .line 6962
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 6963
    .local v0, "cachedCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_1e

    .line 6964
    iget-object v2, p0, Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 6965
    .local v2, "holder":Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;
    if-eqz v2, :cond_1b

    iget v3, v2, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->mPosition:I

    if-lt v3, p1, :cond_1b

    .line 6970
    const/4 v3, 0x1

    invoke-virtual {v2, p2, v3}, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->offsetPosition(IZ)V

    .line 6963
    .end local v2    # "holder":Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;
    :cond_1b
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 6973
    .end local v1    # "i":I
    :cond_1e
    return-void
.end method

.method offsetPositionRecordsForMove(II)V
    .registers 11
    .param p1, "from"    # I
    .param p2, "to"    # I

    .line 6934
    if-ge p1, p2, :cond_6

    .line 6935
    move v0, p1

    .line 6936
    .local v0, "start":I
    move v1, p2

    .line 6937
    .local v1, "end":I
    const/4 v2, -0x1

    .local v2, "inBetweenOffset":I
    goto :goto_9

    .line 6939
    .end local v0    # "start":I
    .end local v1    # "end":I
    .end local v2    # "inBetweenOffset":I
    :cond_6
    move v0, p2

    .line 6940
    .restart local v0    # "start":I
    move v1, p1

    .line 6941
    .restart local v1    # "end":I
    const/4 v2, 0x1

    .line 6943
    .restart local v2    # "inBetweenOffset":I
    :goto_9
    iget-object v3, p0, Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 6944
    .local v3, "cachedCount":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_10
    if-ge v4, v3, :cond_36

    .line 6945
    iget-object v5, p0, Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 6946
    .local v5, "holder":Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;
    if-eqz v5, :cond_33

    iget v6, v5, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->mPosition:I

    if-lt v6, v0, :cond_33

    iget v6, v5, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->mPosition:I

    if-le v6, v1, :cond_25

    .line 6947
    goto :goto_33

    .line 6949
    :cond_25
    iget v6, v5, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->mPosition:I

    const/4 v7, 0x0

    if-ne v6, p1, :cond_30

    .line 6950
    sub-int v6, p2, p1

    invoke-virtual {v5, v6, v7}, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->offsetPosition(IZ)V

    goto :goto_33

    .line 6952
    :cond_30
    invoke-virtual {v5, v2, v7}, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->offsetPosition(IZ)V

    .line 6944
    .end local v5    # "holder":Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;
    :cond_33
    :goto_33
    add-int/lit8 v4, v4, 0x1

    goto :goto_10

    .line 6959
    .end local v4    # "i":I
    :cond_36
    return-void
.end method

.method offsetPositionRecordsForRemove(IIZ)V
    .registers 9
    .param p1, "removedFrom"    # I
    .param p2, "count"    # I
    .param p3, "applyToPreLayout"    # Z

    .line 6982
    add-int v0, p1, p2

    .line 6983
    .local v0, "removedEnd":I
    iget-object v1, p0, Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 6984
    .local v1, "cachedCount":I
    add-int/lit8 v2, v1, -0x1

    .local v2, "i":I
    :goto_a
    if-ltz v2, :cond_2e

    .line 6985
    iget-object v3, p0, Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 6986
    .local v3, "holder":Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;
    if-eqz v3, :cond_2b

    .line 6987
    iget v4, v3, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->mPosition:I

    if-lt v4, v0, :cond_1f

    .line 6993
    neg-int v4, p2

    invoke-virtual {v3, v4, p3}, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->offsetPosition(IZ)V

    goto :goto_2b

    .line 6994
    :cond_1f
    iget v4, v3, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->mPosition:I

    if-lt v4, p1, :cond_2b

    .line 6996
    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->addFlags(I)V

    .line 6997
    invoke-virtual {p0, v2}, Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;->recycleCachedViewAt(I)V

    .line 6984
    .end local v3    # "holder":Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;
    :cond_2b
    :goto_2b
    add-int/lit8 v2, v2, -0x1

    goto :goto_a

    .line 7001
    .end local v2    # "i":I
    :cond_2e
    return-void
.end method

.method onAdapterChanged(Ltds/androidx/recyclerview/widget/RecyclerView$Adapter;Ltds/androidx/recyclerview/widget/RecyclerView$Adapter;Z)V
    .registers 5
    .param p1, "oldAdapter"    # Ltds/androidx/recyclerview/widget/RecyclerView$Adapter;
    .param p2, "newAdapter"    # Ltds/androidx/recyclerview/widget/RecyclerView$Adapter;
    .param p3, "compatibleWithPrevious"    # Z

    .line 6928
    invoke-virtual {p0}, Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;->clear()V

    .line 6929
    invoke-virtual {p0}, Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;->getRecycledViewPool()Ltds/androidx/recyclerview/widget/RecyclerView$RecycledViewPool;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Ltds/androidx/recyclerview/widget/RecyclerView$RecycledViewPool;->onAdapterChanged(Ltds/androidx/recyclerview/widget/RecyclerView$Adapter;Ltds/androidx/recyclerview/widget/RecyclerView$Adapter;Z)V

    .line 6930
    return-void
.end method

.method quickRecycleScrapView(Landroid/view/View;)V
    .registers 4
    .param p1, "view"    # Landroid/view/View;

    .line 6693
    invoke-static {p1}, Ltds/androidx/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v0

    .line 6694
    .local v0, "holder":Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;
    const/4 v1, 0x0

    iput-object v1, v0, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->mScrapContainer:Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;

    .line 6695
    const/4 v1, 0x0

    iput-boolean v1, v0, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->mInChangeScrap:Z

    .line 6696
    invoke-virtual {v0}, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->clearReturnedFromScrapFlag()V

    .line 6697
    invoke-virtual {p0, v0}, Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;->recycleViewHolderInternal(Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 6698
    return-void
.end method

.method recycleAndClearCachedViews()V
    .registers 3

    .line 6532
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 6533
    .local v0, "count":I
    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    :goto_8
    if-ltz v1, :cond_10

    .line 6534
    invoke-virtual {p0, v1}, Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;->recycleCachedViewAt(I)V

    .line 6533
    add-int/lit8 v1, v1, -0x1

    goto :goto_8

    .line 6536
    .end local v1    # "i":I
    :cond_10
    iget-object v1, p0, Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 6537
    sget-boolean v1, Ltds/androidx/recyclerview/widget/RecyclerView;->ALLOW_THREAD_GAP_WORK:Z

    if-eqz v1, :cond_20

    .line 6538
    iget-object v1, p0, Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;->this$0:Ltds/androidx/recyclerview/widget/RecyclerView;

    iget-object v1, v1, Ltds/androidx/recyclerview/widget/RecyclerView;->mPrefetchRegistry:Ltds/androidx/recyclerview/widget/GapWorker$LayoutPrefetchRegistryImpl;

    invoke-virtual {v1}, Ltds/androidx/recyclerview/widget/GapWorker$LayoutPrefetchRegistryImpl;->clearPrefetchPositions()V

    .line 6540
    :cond_20
    return-void
.end method

.method recycleCachedViewAt(I)V
    .registers 4
    .param p1, "cachedViewIndex"    # I

    .line 6557
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 6561
    .local v0, "viewHolder":Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;->addViewHolderToRecycledViewPool(Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;Z)V

    .line 6562
    iget-object v1, p0, Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 6563
    return-void
.end method

.method public recycleView(Landroid/view/View;)V
    .registers 5
    .param p1, "view"    # Landroid/view/View;

    .line 6502
    invoke-static {p1}, Ltds/androidx/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v0

    .line 6503
    .local v0, "holder":Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;
    invoke-virtual {v0}, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->isTmpDetached()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 6504
    iget-object v1, p0, Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;->this$0:Ltds/androidx/recyclerview/widget/RecyclerView;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Ltds/androidx/recyclerview/widget/RecyclerView;->removeDetachedView(Landroid/view/View;Z)V

    .line 6506
    :cond_10
    invoke-virtual {v0}, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->isScrap()Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 6507
    invoke-virtual {v0}, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->unScrap()V

    goto :goto_23

    .line 6508
    :cond_1a
    invoke-virtual {v0}, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->wasReturnedFromScrap()Z

    move-result v1

    if-eqz v1, :cond_23

    .line 6509
    invoke-virtual {v0}, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->clearReturnedFromScrapFlag()V

    .line 6511
    :cond_23
    :goto_23
    invoke-virtual {p0, v0}, Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;->recycleViewHolderInternal(Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 6526
    iget-object v1, p0, Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;->this$0:Ltds/androidx/recyclerview/widget/RecyclerView;

    iget-object v1, v1, Ltds/androidx/recyclerview/widget/RecyclerView;->mItemAnimator:Ltds/androidx/recyclerview/widget/RecyclerView$ItemAnimator;

    if-eqz v1, :cond_39

    invoke-virtual {v0}, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->isRecyclable()Z

    move-result v1

    if-nez v1, :cond_39

    .line 6527
    iget-object v1, p0, Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;->this$0:Ltds/androidx/recyclerview/widget/RecyclerView;

    iget-object v1, v1, Ltds/androidx/recyclerview/widget/RecyclerView;->mItemAnimator:Ltds/androidx/recyclerview/widget/RecyclerView$ItemAnimator;

    invoke-virtual {v1, v0}, Ltds/androidx/recyclerview/widget/RecyclerView$ItemAnimator;->endAnimation(Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 6529
    :cond_39
    return-void
.end method

.method recycleViewHolderInternal(Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .registers 12
    .param p1, "holder"    # Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 6571
    invoke-virtual {p1}, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->isScrap()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_f2

    iget-object v0, p1, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_12

    goto/16 :goto_f2

    .line 6578
    :cond_12
    invoke-virtual {p1}, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->isTmpDetached()Z

    move-result v0

    if-nez v0, :cond_cf

    .line 6584
    invoke-virtual {p1}, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v0

    if-nez v0, :cond_b0

    .line 6589
    nop

    .line 6590
    invoke-virtual {p1}, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->doesTransientStatePreventRecycling()Z

    move-result v0

    .line 6591
    .local v0, "transientStatePreventsRecycling":Z
    iget-object v3, p0, Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;->this$0:Ltds/androidx/recyclerview/widget/RecyclerView;

    iget-object v3, v3, Ltds/androidx/recyclerview/widget/RecyclerView;->mAdapter:Ltds/androidx/recyclerview/widget/RecyclerView$Adapter;

    if-eqz v3, :cond_37

    if-eqz v0, :cond_37

    iget-object v3, p0, Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;->this$0:Ltds/androidx/recyclerview/widget/RecyclerView;

    iget-object v3, v3, Ltds/androidx/recyclerview/widget/RecyclerView;->mAdapter:Ltds/androidx/recyclerview/widget/RecyclerView$Adapter;

    .line 6593
    invoke-virtual {v3, p1}, Ltds/androidx/recyclerview/widget/RecyclerView$Adapter;->onFailedToRecycleView(Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;)Z

    move-result v3

    if-eqz v3, :cond_37

    move v3, v2

    goto :goto_38

    :cond_37
    move v3, v1

    .line 6594
    .local v3, "forceRecycle":Z
    :goto_38
    const/4 v4, 0x0

    .line 6595
    .local v4, "cached":Z
    const/4 v5, 0x0

    .line 6600
    .local v5, "recycled":Z
    if-nez v3, :cond_42

    invoke-virtual {p1}, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->isRecyclable()Z

    move-result v6

    if-eqz v6, :cond_9d

    .line 6601
    :cond_42
    iget v6, p0, Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;->mViewCacheMax:I

    if-lez v6, :cond_97

    const/16 v6, 0x20e

    .line 6602
    invoke-virtual {p1, v6}, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->hasAnyOfTheFlags(I)Z

    move-result v6

    if-nez v6, :cond_97

    .line 6607
    iget-object v6, p0, Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 6608
    .local v6, "cachedViewSize":I
    iget v7, p0, Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;->mViewCacheMax:I

    if-lt v6, v7, :cond_5f

    if-lez v6, :cond_5f

    .line 6609
    invoke-virtual {p0, v1}, Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;->recycleCachedViewAt(I)V

    .line 6610
    add-int/lit8 v6, v6, -0x1

    .line 6613
    :cond_5f
    move v1, v6

    .line 6614
    .local v1, "targetCacheIndex":I
    sget-boolean v7, Ltds/androidx/recyclerview/widget/RecyclerView;->ALLOW_THREAD_GAP_WORK:Z

    if-eqz v7, :cond_91

    if-lez v6, :cond_91

    iget-object v7, p0, Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;->this$0:Ltds/androidx/recyclerview/widget/RecyclerView;

    iget-object v7, v7, Ltds/androidx/recyclerview/widget/RecyclerView;->mPrefetchRegistry:Ltds/androidx/recyclerview/widget/GapWorker$LayoutPrefetchRegistryImpl;

    iget v8, p1, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->mPosition:I

    .line 6616
    invoke-virtual {v7, v8}, Ltds/androidx/recyclerview/widget/GapWorker$LayoutPrefetchRegistryImpl;->lastPrefetchIncludedPosition(I)Z

    move-result v7

    if-nez v7, :cond_91

    .line 6618
    add-int/lit8 v7, v6, -0x1

    .line 6619
    .local v7, "cacheIndex":I
    :goto_74
    if-ltz v7, :cond_8f

    .line 6620
    iget-object v8, p0, Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;

    iget v8, v8, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->mPosition:I

    .line 6621
    .local v8, "cachedPos":I
    iget-object v9, p0, Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;->this$0:Ltds/androidx/recyclerview/widget/RecyclerView;

    iget-object v9, v9, Ltds/androidx/recyclerview/widget/RecyclerView;->mPrefetchRegistry:Ltds/androidx/recyclerview/widget/GapWorker$LayoutPrefetchRegistryImpl;

    invoke-virtual {v9, v8}, Ltds/androidx/recyclerview/widget/GapWorker$LayoutPrefetchRegistryImpl;->lastPrefetchIncludedPosition(I)Z

    move-result v9

    if-nez v9, :cond_8b

    .line 6622
    goto :goto_8f

    .line 6624
    :cond_8b
    nop

    .end local v8    # "cachedPos":I
    add-int/lit8 v7, v7, -0x1

    .line 6625
    goto :goto_74

    .line 6626
    :cond_8f
    :goto_8f
    add-int/lit8 v1, v7, 0x1

    .line 6628
    .end local v7    # "cacheIndex":I
    :cond_91
    iget-object v7, p0, Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v7, v1, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 6629
    const/4 v4, 0x1

    .line 6631
    .end local v1    # "targetCacheIndex":I
    .end local v6    # "cachedViewSize":I
    :cond_97
    if-nez v4, :cond_9d

    .line 6632
    invoke-virtual {p0, p1, v2}, Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;->addViewHolderToRecycledViewPool(Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;Z)V

    .line 6633
    const/4 v5, 0x1

    .line 6650
    :cond_9d
    iget-object v1, p0, Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;->this$0:Ltds/androidx/recyclerview/widget/RecyclerView;

    iget-object v1, v1, Ltds/androidx/recyclerview/widget/RecyclerView;->mViewInfoStore:Ltds/androidx/recyclerview/widget/ViewInfoStore;

    invoke-virtual {v1, p1}, Ltds/androidx/recyclerview/widget/ViewInfoStore;->removeViewHolder(Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 6651
    if-nez v4, :cond_af

    if-nez v5, :cond_af

    if-eqz v0, :cond_af

    .line 6652
    const/4 v1, 0x0

    iput-object v1, p1, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->mBindingAdapter:Ltds/androidx/recyclerview/widget/RecyclerView$Adapter;

    .line 6653
    iput-object v1, p1, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->mOwnerRecyclerView:Ltds/androidx/recyclerview/widget/RecyclerView;

    .line 6655
    :cond_af
    return-void

    .line 6585
    .end local v0    # "transientStatePreventsRecycling":Z
    .end local v3    # "forceRecycle":Z
    .end local v4    # "cached":Z
    .end local v5    # "recycled":Z
    :cond_b0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Trying to recycle an ignored view holder. You should first call stopIgnoringView(view) before calling recycle."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;->this$0:Ltds/androidx/recyclerview/widget/RecyclerView;

    .line 6587
    invoke-virtual {v2}, Ltds/androidx/recyclerview/widget/RecyclerView;->exceptionLabel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 6579
    :cond_cf
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Tmp detached view should be removed from RecyclerView before it can be recycled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;->this$0:Ltds/androidx/recyclerview/widget/RecyclerView;

    .line 6581
    invoke-virtual {v2}, Ltds/androidx/recyclerview/widget/RecyclerView;->exceptionLabel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 6572
    :cond_f2
    :goto_f2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Scrapped or attached views may not be recycled. isScrap:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 6574
    invoke-virtual {p1}, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->isScrap()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " isAttached:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 6575
    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    if-eqz v4, :cond_116

    move v1, v2

    :cond_116
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;->this$0:Ltds/androidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2}, Ltds/androidx/recyclerview/widget/RecyclerView;->exceptionLabel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method scrapView(Landroid/view/View;)V
    .registers 6
    .param p1, "view"    # Landroid/view/View;

    .line 6710
    invoke-static {p1}, Ltds/androidx/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v0

    .line 6711
    .local v0, "holder":Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;
    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->hasAnyOfTheFlags(I)Z

    move-result v1

    if-nez v1, :cond_30

    .line 6712
    invoke-virtual {v0}, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->isUpdated()Z

    move-result v1

    if-eqz v1, :cond_30

    iget-object v1, p0, Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;->this$0:Ltds/androidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Ltds/androidx/recyclerview/widget/RecyclerView;->canReuseUpdatedViewHolder(Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;)Z

    move-result v1

    if-eqz v1, :cond_1b

    goto :goto_30

    .line 6721
    :cond_1b
    iget-object v1, p0, Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;->mChangedScrap:Ljava/util/ArrayList;

    if-nez v1, :cond_26

    .line 6722
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;->mChangedScrap:Ljava/util/ArrayList;

    .line 6724
    :cond_26
    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->setScrapContainer(Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;Z)V

    .line 6725
    iget-object v1, p0, Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;->mChangedScrap:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6f

    .line 6713
    :cond_30
    :goto_30
    invoke-virtual {v0}, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->isInvalid()Z

    move-result v1

    if-eqz v1, :cond_66

    invoke-virtual {v0}, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->isRemoved()Z

    move-result v1

    if-nez v1, :cond_66

    iget-object v1, p0, Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;->this$0:Ltds/androidx/recyclerview/widget/RecyclerView;

    iget-object v1, v1, Ltds/androidx/recyclerview/widget/RecyclerView;->mAdapter:Ltds/androidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v1}, Ltds/androidx/recyclerview/widget/RecyclerView$Adapter;->hasStableIds()Z

    move-result v1

    if-eqz v1, :cond_47

    goto :goto_66

    .line 6714
    :cond_47
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Called scrap view with an invalid view. Invalid views cannot be reused from scrap, they should rebound from recycler pool."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;->this$0:Ltds/androidx/recyclerview/widget/RecyclerView;

    .line 6716
    invoke-virtual {v3}, Ltds/androidx/recyclerview/widget/RecyclerView;->exceptionLabel()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 6718
    :cond_66
    :goto_66
    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->setScrapContainer(Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;Z)V

    .line 6719
    iget-object v1, p0, Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;->mAttachedScrap:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6727
    :goto_6f
    return-void
.end method

.method setRecycledViewPool(Ltds/androidx/recyclerview/widget/RecyclerView$RecycledViewPool;)V
    .registers 3
    .param p1, "pool"    # Ltds/androidx/recyclerview/widget/RecyclerView$RecycledViewPool;

    .line 7008
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;->mRecyclerPool:Ltds/androidx/recyclerview/widget/RecyclerView$RecycledViewPool;

    if-eqz v0, :cond_7

    .line 7009
    invoke-virtual {v0}, Ltds/androidx/recyclerview/widget/RecyclerView$RecycledViewPool;->detach()V

    .line 7011
    :cond_7
    iput-object p1, p0, Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;->mRecyclerPool:Ltds/androidx/recyclerview/widget/RecyclerView$RecycledViewPool;

    .line 7012
    if-eqz p1, :cond_18

    iget-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;->this$0:Ltds/androidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Ltds/androidx/recyclerview/widget/RecyclerView;->getAdapter()Ltds/androidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    if-eqz v0, :cond_18

    .line 7013
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;->mRecyclerPool:Ltds/androidx/recyclerview/widget/RecyclerView$RecycledViewPool;

    invoke-virtual {v0}, Ltds/androidx/recyclerview/widget/RecyclerView$RecycledViewPool;->attach()V

    .line 7015
    :cond_18
    return-void
.end method

.method setViewCacheExtension(Ltds/androidx/recyclerview/widget/RecyclerView$ViewCacheExtension;)V
    .registers 2
    .param p1, "extension"    # Ltds/androidx/recyclerview/widget/RecyclerView$ViewCacheExtension;

    .line 7004
    iput-object p1, p0, Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;->mViewCacheExtension:Ltds/androidx/recyclerview/widget/RecyclerView$ViewCacheExtension;

    .line 7005
    return-void
.end method

.method public setViewCacheSize(I)V
    .registers 2
    .param p1, "viewCount"    # I

    .line 6072
    iput p1, p0, Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;->mRequestedCacheMax:I

    .line 6073
    invoke-virtual {p0}, Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;->updateViewCacheSize()V

    .line 6074
    return-void
.end method

.method tryGetViewHolderForPositionByDeadline(IZJ)Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;
    .registers 22
    .param p1, "position"    # I
    .param p2, "dryRun"    # Z
    .param p3, "deadlineNs"    # J

    .line 6284
    move-object/from16 v6, p0

    move/from16 v7, p1

    move/from16 v8, p2

    if-ltz v7, :cond_246

    iget-object v0, v6, Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;->this$0:Ltds/androidx/recyclerview/widget/RecyclerView;

    iget-object v0, v0, Ltds/androidx/recyclerview/widget/RecyclerView;->mState:Ltds/androidx/recyclerview/widget/RecyclerView$State;

    invoke-virtual {v0}, Ltds/androidx/recyclerview/widget/RecyclerView$State;->getItemCount()I

    move-result v0

    if-ge v7, v0, :cond_246

    .line 6289
    const/4 v0, 0x0

    .line 6290
    .local v0, "fromScrapOrHiddenOrCache":Z
    const/4 v1, 0x0

    .line 6292
    .local v1, "holder":Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;
    iget-object v2, v6, Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;->this$0:Ltds/androidx/recyclerview/widget/RecyclerView;

    iget-object v2, v2, Ltds/androidx/recyclerview/widget/RecyclerView;->mState:Ltds/androidx/recyclerview/widget/RecyclerView$State;

    invoke-virtual {v2}, Ltds/androidx/recyclerview/widget/RecyclerView$State;->isPreLayout()Z

    move-result v2

    const/4 v9, 0x1

    const/4 v10, 0x0

    if-eqz v2, :cond_2a

    .line 6293
    invoke-virtual/range {p0 .. p1}, Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;->getChangedScrapViewForPosition(I)Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v1

    .line 6294
    if-eqz v1, :cond_28

    move v2, v9

    goto :goto_29

    :cond_28
    move v2, v10

    :goto_29
    move v0, v2

    .line 6297
    :cond_2a
    if-nez v1, :cond_5e

    .line 6298
    invoke-virtual/range {p0 .. p2}, Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;->getScrapOrHiddenOrCachedHolderForPosition(IZ)Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v1

    .line 6299
    if-eqz v1, :cond_5e

    .line 6300
    invoke-virtual {v6, v1}, Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;->validateViewHolderForOffsetPosition(Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;)Z

    move-result v2

    if-nez v2, :cond_5d

    .line 6302
    if-nez v8, :cond_5b

    .line 6305
    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->addFlags(I)V

    .line 6306
    invoke-virtual {v1}, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->isScrap()Z

    move-result v2

    if-eqz v2, :cond_4f

    .line 6307
    iget-object v2, v6, Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;->this$0:Ltds/androidx/recyclerview/widget/RecyclerView;

    iget-object v3, v1, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v2, v3, v10}, Ltds/androidx/recyclerview/widget/RecyclerView;->removeDetachedView(Landroid/view/View;Z)V

    .line 6308
    invoke-virtual {v1}, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->unScrap()V

    goto :goto_58

    .line 6309
    :cond_4f
    invoke-virtual {v1}, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->wasReturnedFromScrap()Z

    move-result v2

    if-eqz v2, :cond_58

    .line 6310
    invoke-virtual {v1}, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->clearReturnedFromScrapFlag()V

    .line 6312
    :cond_58
    :goto_58
    invoke-virtual {v6, v1}, Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;->recycleViewHolderInternal(Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 6314
    :cond_5b
    const/4 v1, 0x0

    goto :goto_5e

    .line 6316
    :cond_5d
    const/4 v0, 0x1

    .line 6320
    :cond_5e
    :goto_5e
    if-nez v1, :cond_195

    .line 6321
    iget-object v2, v6, Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;->this$0:Ltds/androidx/recyclerview/widget/RecyclerView;

    iget-object v2, v2, Ltds/androidx/recyclerview/widget/RecyclerView;->mAdapterHelper:Ltds/androidx/recyclerview/widget/AdapterHelper;

    invoke-virtual {v2, v7}, Ltds/androidx/recyclerview/widget/AdapterHelper;->findPositionOffset(I)I

    move-result v2

    .line 6322
    .local v2, "offsetPosition":I
    if-ltz v2, :cond_156

    iget-object v3, v6, Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;->this$0:Ltds/androidx/recyclerview/widget/RecyclerView;

    iget-object v3, v3, Ltds/androidx/recyclerview/widget/RecyclerView;->mAdapter:Ltds/androidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v3}, Ltds/androidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v3

    if-ge v2, v3, :cond_156

    .line 6328
    iget-object v3, v6, Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;->this$0:Ltds/androidx/recyclerview/widget/RecyclerView;

    iget-object v3, v3, Ltds/androidx/recyclerview/widget/RecyclerView;->mAdapter:Ltds/androidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v3, v2}, Ltds/androidx/recyclerview/widget/RecyclerView$Adapter;->getItemViewType(I)I

    move-result v3

    .line 6330
    .local v3, "type":I
    iget-object v4, v6, Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;->this$0:Ltds/androidx/recyclerview/widget/RecyclerView;

    iget-object v4, v4, Ltds/androidx/recyclerview/widget/RecyclerView;->mAdapter:Ltds/androidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v4}, Ltds/androidx/recyclerview/widget/RecyclerView$Adapter;->hasStableIds()Z

    move-result v4

    if-eqz v4, :cond_97

    .line 6331
    iget-object v4, v6, Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;->this$0:Ltds/androidx/recyclerview/widget/RecyclerView;

    iget-object v4, v4, Ltds/androidx/recyclerview/widget/RecyclerView;->mAdapter:Ltds/androidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v4, v2}, Ltds/androidx/recyclerview/widget/RecyclerView$Adapter;->getItemId(I)J

    move-result-wide v4

    invoke-virtual {v6, v4, v5, v3, v8}, Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;->getScrapOrCachedViewForId(JIZ)Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v1

    .line 6333
    if-eqz v1, :cond_97

    .line 6335
    iput v2, v1, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->mPosition:I

    .line 6336
    const/4 v0, 0x1

    .line 6339
    :cond_97
    if-nez v1, :cond_f1

    iget-object v4, v6, Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;->mViewCacheExtension:Ltds/androidx/recyclerview/widget/RecyclerView$ViewCacheExtension;

    if-eqz v4, :cond_f1

    .line 6342
    nop

    .line 6343
    invoke-virtual {v4, v6, v7, v3}, Ltds/androidx/recyclerview/widget/RecyclerView$ViewCacheExtension;->getViewForPositionAndType(Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;II)Landroid/view/View;

    move-result-object v4

    .line 6344
    .local v4, "view":Landroid/view/View;
    if-eqz v4, :cond_f1

    .line 6345
    iget-object v5, v6, Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;->this$0:Ltds/androidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v5, v4}, Ltds/androidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v1

    .line 6346
    if-eqz v1, :cond_d2

    .line 6350
    invoke-virtual {v1}, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v5

    if-nez v5, :cond_b3

    goto :goto_f1

    .line 6351
    :cond_b3
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getViewForPositionAndType returned a view that is ignored. You must call stopIgnoring before returning this view."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v6, Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;->this$0:Ltds/androidx/recyclerview/widget/RecyclerView;

    .line 6353
    invoke-virtual {v10}, Ltds/androidx/recyclerview/widget/RecyclerView;->exceptionLabel()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v5, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 6347
    :cond_d2
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getViewForPositionAndType returned a view which does not have a ViewHolder"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v6, Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;->this$0:Ltds/androidx/recyclerview/widget/RecyclerView;

    .line 6349
    invoke-virtual {v10}, Ltds/androidx/recyclerview/widget/RecyclerView;->exceptionLabel()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v5, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 6357
    .end local v4    # "view":Landroid/view/View;
    :cond_f1
    :goto_f1
    if-nez v1, :cond_107

    .line 6362
    invoke-virtual/range {p0 .. p0}, Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;->getRecycledViewPool()Ltds/androidx/recyclerview/widget/RecyclerView$RecycledViewPool;

    move-result-object v4

    invoke-virtual {v4, v3}, Ltds/androidx/recyclerview/widget/RecyclerView$RecycledViewPool;->getRecycledView(I)Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v1

    .line 6363
    if-eqz v1, :cond_107

    .line 6364
    invoke-virtual {v1}, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->resetInternal()V

    .line 6365
    sget-boolean v4, Ltds/androidx/recyclerview/widget/RecyclerView;->FORCE_INVALIDATE_DISPLAY_LIST:Z

    if-eqz v4, :cond_107

    .line 6366
    invoke-direct {v6, v1}, Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;->invalidateDisplayListInt(Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 6370
    :cond_107
    if-nez v1, :cond_153

    .line 6371
    iget-object v4, v6, Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;->this$0:Ltds/androidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v4}, Ltds/androidx/recyclerview/widget/RecyclerView;->getNanoTime()J

    move-result-wide v4

    .line 6372
    .local v4, "start":J
    const-wide v11, 0x7fffffffffffffffL

    cmp-long v11, p3, v11

    if-eqz v11, :cond_126

    iget-object v11, v6, Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;->mRecyclerPool:Ltds/androidx/recyclerview/widget/RecyclerView$RecycledViewPool;

    .line 6373
    move v12, v3

    move-wide v13, v4

    move-wide/from16 v15, p3

    invoke-virtual/range {v11 .. v16}, Ltds/androidx/recyclerview/widget/RecyclerView$RecycledViewPool;->willCreateInTime(IJJ)Z

    move-result v11

    if-nez v11, :cond_126

    .line 6375
    const/4 v9, 0x0

    return-object v9

    .line 6377
    :cond_126
    iget-object v11, v6, Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;->this$0:Ltds/androidx/recyclerview/widget/RecyclerView;

    iget-object v11, v11, Ltds/androidx/recyclerview/widget/RecyclerView;->mAdapter:Ltds/androidx/recyclerview/widget/RecyclerView$Adapter;

    iget-object v12, v6, Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;->this$0:Ltds/androidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v11, v12, v3}, Ltds/androidx/recyclerview/widget/RecyclerView$Adapter;->createViewHolder(Landroid/view/ViewGroup;I)Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v1

    .line 6378
    sget-boolean v11, Ltds/androidx/recyclerview/widget/RecyclerView;->ALLOW_THREAD_GAP_WORK:Z

    if-eqz v11, :cond_143

    .line 6380
    iget-object v11, v1, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v11}, Ltds/androidx/recyclerview/widget/RecyclerView;->findNestedRecyclerView(Landroid/view/View;)Ltds/androidx/recyclerview/widget/RecyclerView;

    move-result-object v11

    .line 6381
    .local v11, "innerView":Ltds/androidx/recyclerview/widget/RecyclerView;
    if-eqz v11, :cond_143

    .line 6382
    new-instance v12, Ljava/lang/ref/WeakReference;

    invoke-direct {v12, v11}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v12, v1, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->mNestedRecyclerView:Ljava/lang/ref/WeakReference;

    .line 6386
    .end local v11    # "innerView":Ltds/androidx/recyclerview/widget/RecyclerView;
    :cond_143
    iget-object v11, v6, Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;->this$0:Ltds/androidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v11}, Ltds/androidx/recyclerview/widget/RecyclerView;->getNanoTime()J

    move-result-wide v11

    .line 6387
    .local v11, "end":J
    iget-object v13, v6, Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;->mRecyclerPool:Ltds/androidx/recyclerview/widget/RecyclerView$RecycledViewPool;

    sub-long v14, v11, v4

    invoke-virtual {v13, v3, v14, v15}, Ltds/androidx/recyclerview/widget/RecyclerView$RecycledViewPool;->factorInCreateTime(IJ)V

    move v11, v0

    move-object v12, v1

    goto :goto_197

    .line 6370
    .end local v4    # "start":J
    .end local v11    # "end":J
    :cond_153
    move v11, v0

    move-object v12, v1

    goto :goto_197

    .line 6323
    .end local v3    # "type":I
    :cond_156
    new-instance v3, Ljava/lang/IndexOutOfBoundsException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Inconsistency detected. Invalid item position "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "(offset:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ").state:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v6, Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;->this$0:Ltds/androidx/recyclerview/widget/RecyclerView;

    iget-object v5, v5, Ltds/androidx/recyclerview/widget/RecyclerView;->mState:Ltds/androidx/recyclerview/widget/RecyclerView$State;

    .line 6325
    invoke-virtual {v5}, Ltds/androidx/recyclerview/widget/RecyclerView$State;->getItemCount()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v6, Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;->this$0:Ltds/androidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v5}, Ltds/androidx/recyclerview/widget/RecyclerView;->exceptionLabel()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 6320
    .end local v2    # "offsetPosition":I
    :cond_195
    move v11, v0

    move-object v12, v1

    .line 6397
    .end local v0    # "fromScrapOrHiddenOrCache":Z
    .end local v1    # "holder":Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;
    .local v11, "fromScrapOrHiddenOrCache":Z
    .local v12, "holder":Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;
    :goto_197
    if-eqz v11, :cond_1d2

    iget-object v0, v6, Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;->this$0:Ltds/androidx/recyclerview/widget/RecyclerView;

    iget-object v0, v0, Ltds/androidx/recyclerview/widget/RecyclerView;->mState:Ltds/androidx/recyclerview/widget/RecyclerView$State;

    invoke-virtual {v0}, Ltds/androidx/recyclerview/widget/RecyclerView$State;->isPreLayout()Z

    move-result v0

    if-nez v0, :cond_1d2

    .line 6398
    const/16 v0, 0x2000

    invoke-virtual {v12, v0}, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->hasAnyOfTheFlags(I)Z

    move-result v1

    if-eqz v1, :cond_1d2

    .line 6399
    invoke-virtual {v12, v10, v0}, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->setFlags(II)V

    .line 6400
    iget-object v0, v6, Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;->this$0:Ltds/androidx/recyclerview/widget/RecyclerView;

    iget-object v0, v0, Ltds/androidx/recyclerview/widget/RecyclerView;->mState:Ltds/androidx/recyclerview/widget/RecyclerView$State;

    iget-boolean v0, v0, Ltds/androidx/recyclerview/widget/RecyclerView$State;->mRunSimpleAnimations:Z

    if-eqz v0, :cond_1d2

    .line 6401
    nop

    .line 6402
    invoke-static {v12}, Ltds/androidx/recyclerview/widget/RecyclerView$ItemAnimator;->buildAdapterChangeFlagsForAnimations(Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;)I

    move-result v0

    .line 6403
    .local v0, "changeFlags":I
    or-int/lit16 v0, v0, 0x1000

    .line 6404
    iget-object v1, v6, Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;->this$0:Ltds/androidx/recyclerview/widget/RecyclerView;

    iget-object v1, v1, Ltds/androidx/recyclerview/widget/RecyclerView;->mItemAnimator:Ltds/androidx/recyclerview/widget/RecyclerView$ItemAnimator;

    iget-object v2, v6, Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;->this$0:Ltds/androidx/recyclerview/widget/RecyclerView;

    iget-object v2, v2, Ltds/androidx/recyclerview/widget/RecyclerView;->mState:Ltds/androidx/recyclerview/widget/RecyclerView$State;

    .line 6405
    invoke-virtual {v12}, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->getUnmodifiedPayloads()Ljava/util/List;

    move-result-object v3

    .line 6404
    invoke-virtual {v1, v2, v12, v0, v3}, Ltds/androidx/recyclerview/widget/RecyclerView$ItemAnimator;->recordPreLayoutInformation(Ltds/androidx/recyclerview/widget/RecyclerView$State;Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;ILjava/util/List;)Ltds/androidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    move-result-object v1

    .line 6406
    .local v1, "info":Ltds/androidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
    iget-object v2, v6, Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;->this$0:Ltds/androidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2, v12, v1}, Ltds/androidx/recyclerview/widget/RecyclerView;->recordAnimationInfoIfBouncedHiddenView(Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;Ltds/androidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)V

    .line 6410
    .end local v0    # "changeFlags":I
    .end local v1    # "info":Ltds/androidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
    :cond_1d2
    const/4 v13, 0x0

    .line 6411
    .local v13, "bound":Z
    iget-object v0, v6, Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;->this$0:Ltds/androidx/recyclerview/widget/RecyclerView;

    iget-object v0, v0, Ltds/androidx/recyclerview/widget/RecyclerView;->mState:Ltds/androidx/recyclerview/widget/RecyclerView$State;

    invoke-virtual {v0}, Ltds/androidx/recyclerview/widget/RecyclerView$State;->isPreLayout()Z

    move-result v0

    if-eqz v0, :cond_1e6

    invoke-virtual {v12}, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->isBound()Z

    move-result v0

    if-eqz v0, :cond_1e6

    .line 6413
    iput v7, v12, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->mPreLayoutPosition:I

    goto :goto_20c

    .line 6414
    :cond_1e6
    invoke-virtual {v12}, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->isBound()Z

    move-result v0

    if-eqz v0, :cond_1f8

    invoke-virtual {v12}, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->needsUpdate()Z

    move-result v0

    if-nez v0, :cond_1f8

    invoke-virtual {v12}, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->isInvalid()Z

    move-result v0

    if-eqz v0, :cond_20c

    .line 6420
    :cond_1f8
    iget-object v0, v6, Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;->this$0:Ltds/androidx/recyclerview/widget/RecyclerView;

    iget-object v0, v0, Ltds/androidx/recyclerview/widget/RecyclerView;->mAdapterHelper:Ltds/androidx/recyclerview/widget/AdapterHelper;

    invoke-virtual {v0, v7}, Ltds/androidx/recyclerview/widget/AdapterHelper;->findPositionOffset(I)I

    move-result v14

    .line 6421
    .local v14, "offsetPosition":I
    move-object/from16 v0, p0

    move-object v1, v12

    move v2, v14

    move/from16 v3, p1

    move-wide/from16 v4, p3

    invoke-direct/range {v0 .. v5}, Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;->tryBindViewHolderByDeadline(Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;IIJ)Z

    move-result v13

    .line 6424
    .end local v14    # "offsetPosition":I
    :cond_20c
    :goto_20c
    iget-object v0, v12, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 6426
    .local v0, "lp":Landroid/view/ViewGroup$LayoutParams;
    if-nez v0, :cond_222

    .line 6427
    iget-object v1, v6, Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;->this$0:Ltds/androidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Ltds/androidx/recyclerview/widget/RecyclerView;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutParams;

    .line 6428
    .local v1, "rvLayoutParams":Ltds/androidx/recyclerview/widget/RecyclerView$LayoutParams;
    iget-object v2, v12, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_23b

    .line 6429
    .end local v1    # "rvLayoutParams":Ltds/androidx/recyclerview/widget/RecyclerView$LayoutParams;
    :cond_222
    iget-object v1, v6, Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;->this$0:Ltds/androidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Ltds/androidx/recyclerview/widget/RecyclerView;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v1

    if-nez v1, :cond_238

    .line 6430
    iget-object v1, v6, Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;->this$0:Ltds/androidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Ltds/androidx/recyclerview/widget/RecyclerView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutParams;

    .line 6431
    .restart local v1    # "rvLayoutParams":Ltds/androidx/recyclerview/widget/RecyclerView$LayoutParams;
    iget-object v2, v12, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_23b

    .line 6433
    .end local v1    # "rvLayoutParams":Ltds/androidx/recyclerview/widget/RecyclerView$LayoutParams;
    :cond_238
    move-object v1, v0

    check-cast v1, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutParams;

    .line 6435
    .restart local v1    # "rvLayoutParams":Ltds/androidx/recyclerview/widget/RecyclerView$LayoutParams;
    :goto_23b
    iput-object v12, v1, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutParams;->mViewHolder:Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 6436
    if-eqz v11, :cond_242

    if-eqz v13, :cond_242

    goto :goto_243

    :cond_242
    move v9, v10

    :goto_243
    iput-boolean v9, v1, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutParams;->mPendingInvalidate:Z

    .line 6437
    return-object v12

    .line 6285
    .end local v0    # "lp":Landroid/view/ViewGroup$LayoutParams;
    .end local v1    # "rvLayoutParams":Ltds/androidx/recyclerview/widget/RecyclerView$LayoutParams;
    .end local v11    # "fromScrapOrHiddenOrCache":Z
    .end local v12    # "holder":Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;
    .end local v13    # "bound":Z
    :cond_246
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid item position "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "). Item count:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v6, Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;->this$0:Ltds/androidx/recyclerview/widget/RecyclerView;

    iget-object v2, v2, Ltds/androidx/recyclerview/widget/RecyclerView;->mState:Ltds/androidx/recyclerview/widget/RecyclerView$State;

    .line 6286
    invoke-virtual {v2}, Ltds/androidx/recyclerview/widget/RecyclerView$State;->getItemCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v6, Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;->this$0:Ltds/androidx/recyclerview/widget/RecyclerView;

    .line 6287
    invoke-virtual {v2}, Ltds/androidx/recyclerview/widget/RecyclerView;->exceptionLabel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method unscrapView(Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .registers 3
    .param p1, "holder"    # Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 6736
    iget-boolean v0, p1, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->mInChangeScrap:Z

    if-eqz v0, :cond_a

    .line 6737
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;->mChangedScrap:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_f

    .line 6739
    :cond_a
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;->mAttachedScrap:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 6741
    :goto_f
    const/4 v0, 0x0

    iput-object v0, p1, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->mScrapContainer:Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;

    .line 6742
    const/4 v0, 0x0

    iput-boolean v0, p1, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->mInChangeScrap:Z

    .line 6743
    invoke-virtual {p1}, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->clearReturnedFromScrapFlag()V

    .line 6744
    return-void
.end method

.method updateViewCacheSize()V
    .registers 5

    .line 6077
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;->this$0:Ltds/androidx/recyclerview/widget/RecyclerView;

    iget-object v0, v0, Ltds/androidx/recyclerview/widget/RecyclerView;->mLayout:Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;

    if-eqz v0, :cond_d

    iget-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;->this$0:Ltds/androidx/recyclerview/widget/RecyclerView;

    iget-object v0, v0, Ltds/androidx/recyclerview/widget/RecyclerView;->mLayout:Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;

    iget v0, v0, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;->mPrefetchMaxCountObserved:I

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    .line 6078
    .local v0, "extraCache":I
    :goto_e
    iget v1, p0, Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;->mRequestedCacheMax:I

    add-int/2addr v1, v0

    iput v1, p0, Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;->mViewCacheMax:I

    .line 6081
    iget-object v1, p0, Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .line 6082
    .local v1, "i":I
    :goto_1b
    if-ltz v1, :cond_2d

    iget-object v2, p0, Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    iget v3, p0, Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;->mViewCacheMax:I

    if-le v2, v3, :cond_2d

    .line 6083
    invoke-virtual {p0, v1}, Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;->recycleCachedViewAt(I)V

    .line 6082
    add-int/lit8 v1, v1, -0x1

    goto :goto_1b

    .line 6085
    .end local v1    # "i":I
    :cond_2d
    return-void
.end method

.method validateViewHolderForOffsetPosition(Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .registers 9
    .param p1, "holder"    # Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 6108
    invoke-virtual {p1}, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->isRemoved()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 6113
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;->this$0:Ltds/androidx/recyclerview/widget/RecyclerView;

    iget-object v0, v0, Ltds/androidx/recyclerview/widget/RecyclerView;->mState:Ltds/androidx/recyclerview/widget/RecyclerView$State;

    invoke-virtual {v0}, Ltds/androidx/recyclerview/widget/RecyclerView$State;->isPreLayout()Z

    move-result v0

    return v0

    .line 6115
    :cond_f
    iget v0, p1, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->mPosition:I

    if-ltz v0, :cond_5b

    iget v0, p1, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->mPosition:I

    iget-object v1, p0, Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;->this$0:Ltds/androidx/recyclerview/widget/RecyclerView;

    iget-object v1, v1, Ltds/androidx/recyclerview/widget/RecyclerView;->mAdapter:Ltds/androidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v1}, Ltds/androidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v1

    if-ge v0, v1, :cond_5b

    .line 6119
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;->this$0:Ltds/androidx/recyclerview/widget/RecyclerView;

    iget-object v0, v0, Ltds/androidx/recyclerview/widget/RecyclerView;->mState:Ltds/androidx/recyclerview/widget/RecyclerView$State;

    invoke-virtual {v0}, Ltds/androidx/recyclerview/widget/RecyclerView$State;->isPreLayout()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_3b

    .line 6121
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;->this$0:Ltds/androidx/recyclerview/widget/RecyclerView;

    iget-object v0, v0, Ltds/androidx/recyclerview/widget/RecyclerView;->mAdapter:Ltds/androidx/recyclerview/widget/RecyclerView$Adapter;

    iget v2, p1, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->mPosition:I

    invoke-virtual {v0, v2}, Ltds/androidx/recyclerview/widget/RecyclerView$Adapter;->getItemViewType(I)I

    move-result v0

    .line 6122
    .local v0, "type":I
    invoke-virtual {p1}, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v2

    if-eq v0, v2, :cond_3b

    .line 6123
    return v1

    .line 6126
    .end local v0    # "type":I
    :cond_3b
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;->this$0:Ltds/androidx/recyclerview/widget/RecyclerView;

    iget-object v0, v0, Ltds/androidx/recyclerview/widget/RecyclerView;->mAdapter:Ltds/androidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v0}, Ltds/androidx/recyclerview/widget/RecyclerView$Adapter;->hasStableIds()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_5a

    .line 6127
    invoke-virtual {p1}, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemId()J

    move-result-wide v3

    iget-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;->this$0:Ltds/androidx/recyclerview/widget/RecyclerView;

    iget-object v0, v0, Ltds/androidx/recyclerview/widget/RecyclerView;->mAdapter:Ltds/androidx/recyclerview/widget/RecyclerView$Adapter;

    iget v5, p1, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->mPosition:I

    invoke-virtual {v0, v5}, Ltds/androidx/recyclerview/widget/RecyclerView$Adapter;->getItemId(I)J

    move-result-wide v5

    cmp-long v0, v3, v5

    if-nez v0, :cond_59

    move v1, v2

    :cond_59
    return v1

    .line 6129
    :cond_5a
    return v2

    .line 6116
    :cond_5b
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Inconsistency detected. Invalid view holder adapter position"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;->this$0:Ltds/androidx/recyclerview/widget/RecyclerView;

    .line 6117
    invoke-virtual {v2}, Ltds/androidx/recyclerview/widget/RecyclerView;->exceptionLabel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method viewRangeUpdate(II)V
    .registers 9
    .param p1, "positionStart"    # I
    .param p2, "itemCount"    # I

    .line 7025
    add-int v0, p1, p2

    .line 7026
    .local v0, "positionEnd":I
    iget-object v1, p0, Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 7027
    .local v1, "cachedCount":I
    add-int/lit8 v2, v1, -0x1

    .local v2, "i":I
    :goto_a
    if-ltz v2, :cond_27

    .line 7028
    iget-object v3, p0, Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 7029
    .local v3, "holder":Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;
    if-nez v3, :cond_17

    .line 7030
    goto :goto_24

    .line 7033
    :cond_17
    iget v4, v3, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->mPosition:I

    .line 7034
    .local v4, "pos":I
    if-lt v4, p1, :cond_24

    if-ge v4, v0, :cond_24

    .line 7035
    const/4 v5, 0x2

    invoke-virtual {v3, v5}, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->addFlags(I)V

    .line 7036
    invoke-virtual {p0, v2}, Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;->recycleCachedViewAt(I)V

    .line 7027
    .end local v3    # "holder":Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;
    .end local v4    # "pos":I
    :cond_24
    :goto_24
    add-int/lit8 v2, v2, -0x1

    goto :goto_a

    .line 7041
    .end local v2    # "i":I
    :cond_27
    return-void
.end method
