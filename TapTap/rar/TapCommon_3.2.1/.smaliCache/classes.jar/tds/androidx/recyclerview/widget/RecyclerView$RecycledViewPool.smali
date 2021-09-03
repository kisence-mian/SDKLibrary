.class public Ltds/androidx/recyclerview/widget/RecyclerView$RecycledViewPool;
.super Ljava/lang/Object;
.source "RecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltds/androidx/recyclerview/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RecycledViewPool"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltds/androidx/recyclerview/widget/RecyclerView$RecycledViewPool$ScrapData;
    }
.end annotation


# static fields
.field private static final DEFAULT_MAX_SCRAP:I = 0x5


# instance fields
.field private mAttachCount:I

.field mScrap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ltds/androidx/recyclerview/widget/RecyclerView$RecycledViewPool$ScrapData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 5777
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5801
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView$RecycledViewPool;->mScrap:Landroid/util/SparseArray;

    .line 5803
    const/4 v0, 0x0

    iput v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView$RecycledViewPool;->mAttachCount:I

    return-void
.end method

.method private getScrapDataForType(I)Ltds/androidx/recyclerview/widget/RecyclerView$RecycledViewPool$ScrapData;
    .registers 4
    .param p1, "viewType"    # I

    .line 5958
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView$RecycledViewPool;->mScrap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltds/androidx/recyclerview/widget/RecyclerView$RecycledViewPool$ScrapData;

    .line 5959
    .local v0, "scrapData":Ltds/androidx/recyclerview/widget/RecyclerView$RecycledViewPool$ScrapData;
    if-nez v0, :cond_15

    .line 5960
    new-instance v1, Ltds/androidx/recyclerview/widget/RecyclerView$RecycledViewPool$ScrapData;

    invoke-direct {v1}, Ltds/androidx/recyclerview/widget/RecyclerView$RecycledViewPool$ScrapData;-><init>()V

    move-object v0, v1

    .line 5961
    iget-object v1, p0, Ltds/androidx/recyclerview/widget/RecyclerView$RecycledViewPool;->mScrap:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 5963
    :cond_15
    return-object v0
.end method


# virtual methods
.method attach()V
    .registers 2

    .line 5925
    iget v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView$RecycledViewPool;->mAttachCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView$RecycledViewPool;->mAttachCount:I

    .line 5926
    return-void
.end method

.method public clear()V
    .registers 4

    .line 5809
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Ltds/androidx/recyclerview/widget/RecyclerView$RecycledViewPool;->mScrap:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_19

    .line 5810
    iget-object v1, p0, Ltds/androidx/recyclerview/widget/RecyclerView$RecycledViewPool;->mScrap:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ltds/androidx/recyclerview/widget/RecyclerView$RecycledViewPool$ScrapData;

    .line 5811
    .local v1, "data":Ltds/androidx/recyclerview/widget/RecyclerView$RecycledViewPool$ScrapData;
    iget-object v2, v1, Ltds/androidx/recyclerview/widget/RecyclerView$RecycledViewPool$ScrapData;->mScrapHeap:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 5809
    .end local v1    # "data":Ltds/androidx/recyclerview/widget/RecyclerView$RecycledViewPool$ScrapData;
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 5813
    .end local v0    # "i":I
    :cond_19
    return-void
.end method

.method detach()V
    .registers 2

    .line 5929
    iget v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView$RecycledViewPool;->mAttachCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView$RecycledViewPool;->mAttachCount:I

    .line 5930
    return-void
.end method

.method factorInBindTime(IJ)V
    .registers 7
    .param p1, "viewType"    # I
    .param p2, "bindTimeNs"    # J

    .line 5909
    invoke-direct {p0, p1}, Ltds/androidx/recyclerview/widget/RecyclerView$RecycledViewPool;->getScrapDataForType(I)Ltds/androidx/recyclerview/widget/RecyclerView$RecycledViewPool$ScrapData;

    move-result-object v0

    .line 5910
    .local v0, "scrapData":Ltds/androidx/recyclerview/widget/RecyclerView$RecycledViewPool$ScrapData;
    iget-wide v1, v0, Ltds/androidx/recyclerview/widget/RecyclerView$RecycledViewPool$ScrapData;->mBindRunningAverageNs:J

    invoke-virtual {p0, v1, v2, p2, p3}, Ltds/androidx/recyclerview/widget/RecyclerView$RecycledViewPool;->runningAverage(JJ)J

    move-result-wide v1

    iput-wide v1, v0, Ltds/androidx/recyclerview/widget/RecyclerView$RecycledViewPool$ScrapData;->mBindRunningAverageNs:J

    .line 5912
    return-void
.end method

.method factorInCreateTime(IJ)V
    .registers 7
    .param p1, "viewType"    # I
    .param p2, "createTimeNs"    # J

    .line 5903
    invoke-direct {p0, p1}, Ltds/androidx/recyclerview/widget/RecyclerView$RecycledViewPool;->getScrapDataForType(I)Ltds/androidx/recyclerview/widget/RecyclerView$RecycledViewPool$ScrapData;

    move-result-object v0

    .line 5904
    .local v0, "scrapData":Ltds/androidx/recyclerview/widget/RecyclerView$RecycledViewPool$ScrapData;
    iget-wide v1, v0, Ltds/androidx/recyclerview/widget/RecyclerView$RecycledViewPool$ScrapData;->mCreateRunningAverageNs:J

    invoke-virtual {p0, v1, v2, p2, p3}, Ltds/androidx/recyclerview/widget/RecyclerView$RecycledViewPool;->runningAverage(JJ)J

    move-result-wide v1

    iput-wide v1, v0, Ltds/androidx/recyclerview/widget/RecyclerView$RecycledViewPool$ScrapData;->mCreateRunningAverageNs:J

    .line 5906
    return-void
.end method

.method public getRecycledView(I)Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;
    .registers 6
    .param p1, "viewType"    # I

    .line 5847
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView$RecycledViewPool;->mScrap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltds/androidx/recyclerview/widget/RecyclerView$RecycledViewPool$ScrapData;

    .line 5848
    .local v0, "scrapData":Ltds/androidx/recyclerview/widget/RecyclerView$RecycledViewPool$ScrapData;
    if-eqz v0, :cond_32

    iget-object v1, v0, Ltds/androidx/recyclerview/widget/RecyclerView$RecycledViewPool$ScrapData;->mScrapHeap:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_32

    .line 5849
    iget-object v1, v0, Ltds/androidx/recyclerview/widget/RecyclerView$RecycledViewPool$ScrapData;->mScrapHeap:Ljava/util/ArrayList;

    .line 5850
    .local v1, "scrapHeap":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_1a
    if-ltz v2, :cond_32

    .line 5851
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-virtual {v3}, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->isAttachedToTransitionOverlay()Z

    move-result v3

    if-nez v3, :cond_2f

    .line 5852
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;

    return-object v3

    .line 5850
    :cond_2f
    add-int/lit8 v2, v2, -0x1

    goto :goto_1a

    .line 5856
    .end local v1    # "scrapHeap":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;>;"
    .end local v2    # "i":I
    :cond_32
    const/4 v1, 0x0

    return-object v1
.end method

.method public getRecycledViewCount(I)I
    .registers 3
    .param p1, "viewType"    # I

    .line 5834
    invoke-direct {p0, p1}, Ltds/androidx/recyclerview/widget/RecyclerView$RecycledViewPool;->getScrapDataForType(I)Ltds/androidx/recyclerview/widget/RecyclerView$RecycledViewPool$ScrapData;

    move-result-object v0

    iget-object v0, v0, Ltds/androidx/recyclerview/widget/RecyclerView$RecycledViewPool$ScrapData;->mScrapHeap:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method onAdapterChanged(Ltds/androidx/recyclerview/widget/RecyclerView$Adapter;Ltds/androidx/recyclerview/widget/RecyclerView$Adapter;Z)V
    .registers 5
    .param p1, "oldAdapter"    # Ltds/androidx/recyclerview/widget/RecyclerView$Adapter;
    .param p2, "newAdapter"    # Ltds/androidx/recyclerview/widget/RecyclerView$Adapter;
    .param p3, "compatibleWithPrevious"    # Z

    .line 5946
    if-eqz p1, :cond_5

    .line 5947
    invoke-virtual {p0}, Ltds/androidx/recyclerview/widget/RecyclerView$RecycledViewPool;->detach()V

    .line 5949
    :cond_5
    if-nez p3, :cond_e

    iget v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView$RecycledViewPool;->mAttachCount:I

    if-nez v0, :cond_e

    .line 5950
    invoke-virtual {p0}, Ltds/androidx/recyclerview/widget/RecyclerView$RecycledViewPool;->clear()V

    .line 5952
    :cond_e
    if-eqz p2, :cond_13

    .line 5953
    invoke-virtual {p0}, Ltds/androidx/recyclerview/widget/RecyclerView$RecycledViewPool;->attach()V

    .line 5955
    :cond_13
    return-void
.end method

.method public putRecycledView(Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .registers 6
    .param p1, "scrap"    # Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 5883
    invoke-virtual {p1}, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    .line 5884
    .local v0, "viewType":I
    invoke-direct {p0, v0}, Ltds/androidx/recyclerview/widget/RecyclerView$RecycledViewPool;->getScrapDataForType(I)Ltds/androidx/recyclerview/widget/RecyclerView$RecycledViewPool$ScrapData;

    move-result-object v1

    iget-object v1, v1, Ltds/androidx/recyclerview/widget/RecyclerView$RecycledViewPool$ScrapData;->mScrapHeap:Ljava/util/ArrayList;

    .line 5885
    .local v1, "scrapHeap":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;>;"
    iget-object v2, p0, Ltds/androidx/recyclerview/widget/RecyclerView$RecycledViewPool;->mScrap:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ltds/androidx/recyclerview/widget/RecyclerView$RecycledViewPool$ScrapData;

    iget v2, v2, Ltds/androidx/recyclerview/widget/RecyclerView$RecycledViewPool$ScrapData;->mMaxScrap:I

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-gt v2, v3, :cond_1b

    .line 5886
    return-void

    .line 5891
    :cond_1b
    invoke-virtual {p1}, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->resetInternal()V

    .line 5892
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5893
    return-void
.end method

.method runningAverage(JJ)J
    .registers 11
    .param p1, "oldAverage"    # J
    .param p3, "newValue"    # J

    .line 5896
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_7

    .line 5897
    return-wide p3

    .line 5899
    :cond_7
    const-wide/16 v0, 0x4

    div-long v2, p1, v0

    const-wide/16 v4, 0x3

    mul-long/2addr v2, v4

    div-long v0, p3, v0

    add-long/2addr v2, v0

    return-wide v2
.end method

.method public setMaxRecycledViews(II)V
    .registers 6
    .param p1, "viewType"    # I
    .param p2, "max"    # I

    .line 5822
    invoke-direct {p0, p1}, Ltds/androidx/recyclerview/widget/RecyclerView$RecycledViewPool;->getScrapDataForType(I)Ltds/androidx/recyclerview/widget/RecyclerView$RecycledViewPool$ScrapData;

    move-result-object v0

    .line 5823
    .local v0, "scrapData":Ltds/androidx/recyclerview/widget/RecyclerView$RecycledViewPool$ScrapData;
    iput p2, v0, Ltds/androidx/recyclerview/widget/RecyclerView$RecycledViewPool$ScrapData;->mMaxScrap:I

    .line 5824
    iget-object v1, v0, Ltds/androidx/recyclerview/widget/RecyclerView$RecycledViewPool$ScrapData;->mScrapHeap:Ljava/util/ArrayList;

    .line 5825
    .local v1, "scrapHeap":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;>;"
    :goto_8
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-le v2, p2, :cond_18

    .line 5826
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_8

    .line 5828
    :cond_18
    return-void
.end method

.method size()I
    .registers 5

    .line 5865
    const/4 v0, 0x0

    .line 5866
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    iget-object v2, p0, Ltds/androidx/recyclerview/widget/RecyclerView$RecycledViewPool;->mScrap:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_1e

    .line 5867
    iget-object v2, p0, Ltds/androidx/recyclerview/widget/RecyclerView$RecycledViewPool;->mScrap:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ltds/androidx/recyclerview/widget/RecyclerView$RecycledViewPool$ScrapData;

    iget-object v2, v2, Ltds/androidx/recyclerview/widget/RecyclerView$RecycledViewPool$ScrapData;->mScrapHeap:Ljava/util/ArrayList;

    .line 5868
    .local v2, "viewHolders":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;>;"
    if-eqz v2, :cond_1b

    .line 5869
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/2addr v0, v3

    .line 5866
    .end local v2    # "viewHolders":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;>;"
    :cond_1b
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 5872
    .end local v1    # "i":I
    :cond_1e
    return v0
.end method

.method willBindInTime(IJJ)Z
    .registers 10
    .param p1, "viewType"    # I
    .param p2, "approxCurrentNs"    # J
    .param p4, "deadlineNs"    # J

    .line 5920
    invoke-direct {p0, p1}, Ltds/androidx/recyclerview/widget/RecyclerView$RecycledViewPool;->getScrapDataForType(I)Ltds/androidx/recyclerview/widget/RecyclerView$RecycledViewPool$ScrapData;

    move-result-object v0

    iget-wide v0, v0, Ltds/androidx/recyclerview/widget/RecyclerView$RecycledViewPool$ScrapData;->mBindRunningAverageNs:J

    .line 5921
    .local v0, "expectedDurationNs":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_15

    add-long v2, p2, v0

    cmp-long v2, v2, p4

    if-gez v2, :cond_13

    goto :goto_15

    :cond_13
    const/4 v2, 0x0

    goto :goto_16

    :cond_15
    :goto_15
    const/4 v2, 0x1

    :goto_16
    return v2
.end method

.method willCreateInTime(IJJ)Z
    .registers 10
    .param p1, "viewType"    # I
    .param p2, "approxCurrentNs"    # J
    .param p4, "deadlineNs"    # J

    .line 5915
    invoke-direct {p0, p1}, Ltds/androidx/recyclerview/widget/RecyclerView$RecycledViewPool;->getScrapDataForType(I)Ltds/androidx/recyclerview/widget/RecyclerView$RecycledViewPool$ScrapData;

    move-result-object v0

    iget-wide v0, v0, Ltds/androidx/recyclerview/widget/RecyclerView$RecycledViewPool$ScrapData;->mCreateRunningAverageNs:J

    .line 5916
    .local v0, "expectedDurationNs":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_15

    add-long v2, p2, v0

    cmp-long v2, v2, p4

    if-gez v2, :cond_13

    goto :goto_15

    :cond_13
    const/4 v2, 0x0

    goto :goto_16

    :cond_15
    :goto_15
    const/4 v2, 0x1

    :goto_16
    return v2
.end method
