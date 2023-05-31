.class public Landroid/support/v7/widget/RecyclerView$RecycledViewPool;
.super Ljava/lang/Object;
.source "RecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RecycledViewPool"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/widget/RecyclerView$RecycledViewPool$ScrapData;
    }
.end annotation


# static fields
.field private static final DEFAULT_MAX_SCRAP:I = 0x5


# instance fields
.field private mAttachCount:I

.field mScrap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/support/v7/widget/RecyclerView$RecycledViewPool$ScrapData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 4946
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4969
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView$RecycledViewPool;->mScrap:Landroid/util/SparseArray;

    .line 4971
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/widget/RecyclerView$RecycledViewPool;->mAttachCount:I

    return-void
.end method

.method private getScrapDataForType(I)Landroid/support/v7/widget/RecyclerView$RecycledViewPool$ScrapData;
    .registers 4
    .param p1, "viewType"    # I

    .prologue
    .line 5094
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$RecycledViewPool;->mScrap:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$RecycledViewPool$ScrapData;

    .line 5095
    .local v0, "scrapData":Landroid/support/v7/widget/RecyclerView$RecycledViewPool$ScrapData;
    if-nez v0, :cond_14

    .line 5096
    new-instance v0, Landroid/support/v7/widget/RecyclerView$RecycledViewPool$ScrapData;

    .end local v0    # "scrapData":Landroid/support/v7/widget/RecyclerView$RecycledViewPool$ScrapData;
    invoke-direct {v0}, Landroid/support/v7/widget/RecyclerView$RecycledViewPool$ScrapData;-><init>()V

    .line 5097
    .restart local v0    # "scrapData":Landroid/support/v7/widget/RecyclerView$RecycledViewPool$ScrapData;
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$RecycledViewPool;->mScrap:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 5099
    :cond_14
    return-object v0
.end method


# virtual methods
.method attach(Landroid/support/v7/widget/RecyclerView$Adapter;)V
    .registers 3
    .param p1, "adapter"    # Landroid/support/v7/widget/RecyclerView$Adapter;

    .prologue
    .line 5061
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$RecycledViewPool;->mAttachCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/support/v7/widget/RecyclerView$RecycledViewPool;->mAttachCount:I

    .line 5062
    return-void
.end method

.method public clear()V
    .registers 4

    .prologue
    .line 4974
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView$RecycledViewPool;->mScrap:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_19

    .line 4975
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView$RecycledViewPool;->mScrap:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$RecycledViewPool$ScrapData;

    .line 4976
    .local v0, "data":Landroid/support/v7/widget/RecyclerView$RecycledViewPool$ScrapData;
    iget-object v2, v0, Landroid/support/v7/widget/RecyclerView$RecycledViewPool$ScrapData;->mScrapHeap:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 4974
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 4978
    .end local v0    # "data":Landroid/support/v7/widget/RecyclerView$RecycledViewPool$ScrapData;
    :cond_19
    return-void
.end method

.method detach()V
    .registers 2

    .prologue
    .line 5065
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$RecycledViewPool;->mAttachCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/support/v7/widget/RecyclerView$RecycledViewPool;->mAttachCount:I

    .line 5066
    return-void
.end method

.method factorInBindTime(IJ)V
    .registers 8
    .param p1, "viewType"    # I
    .param p2, "bindTimeNs"    # J

    .prologue
    .line 5045
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$RecycledViewPool;->getScrapDataForType(I)Landroid/support/v7/widget/RecyclerView$RecycledViewPool$ScrapData;

    move-result-object v0

    .line 5046
    .local v0, "scrapData":Landroid/support/v7/widget/RecyclerView$RecycledViewPool$ScrapData;
    iget-wide v2, v0, Landroid/support/v7/widget/RecyclerView$RecycledViewPool$ScrapData;->mBindRunningAverageNs:J

    invoke-virtual {p0, v2, v3, p2, p3}, Landroid/support/v7/widget/RecyclerView$RecycledViewPool;->runningAverage(JJ)J

    move-result-wide v2

    iput-wide v2, v0, Landroid/support/v7/widget/RecyclerView$RecycledViewPool$ScrapData;->mBindRunningAverageNs:J

    .line 5048
    return-void
.end method

.method factorInCreateTime(IJ)V
    .registers 8
    .param p1, "viewType"    # I
    .param p2, "createTimeNs"    # J

    .prologue
    .line 5039
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$RecycledViewPool;->getScrapDataForType(I)Landroid/support/v7/widget/RecyclerView$RecycledViewPool$ScrapData;

    move-result-object v0

    .line 5040
    .local v0, "scrapData":Landroid/support/v7/widget/RecyclerView$RecycledViewPool$ScrapData;
    iget-wide v2, v0, Landroid/support/v7/widget/RecyclerView$RecycledViewPool$ScrapData;->mCreateRunningAverageNs:J

    invoke-virtual {p0, v2, v3, p2, p3}, Landroid/support/v7/widget/RecyclerView$RecycledViewPool;->runningAverage(JJ)J

    move-result-wide v2

    iput-wide v2, v0, Landroid/support/v7/widget/RecyclerView$RecycledViewPool$ScrapData;->mCreateRunningAverageNs:J

    .line 5042
    return-void
.end method

.method public getRecycledView(I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .registers 5
    .param p1, "viewType"    # I

    .prologue
    .line 4999
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView$RecycledViewPool;->mScrap:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$RecycledViewPool$ScrapData;

    .line 5000
    .local v0, "scrapData":Landroid/support/v7/widget/RecyclerView$RecycledViewPool$ScrapData;
    if-eqz v0, :cond_21

    iget-object v2, v0, Landroid/support/v7/widget/RecyclerView$RecycledViewPool$ScrapData;->mScrapHeap:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_21

    .line 5001
    iget-object v1, v0, Landroid/support/v7/widget/RecyclerView$RecycledViewPool$ScrapData;->mScrapHeap:Ljava/util/ArrayList;

    .line 5002
    .local v1, "scrapHeap":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v7/widget/RecyclerView$ViewHolder;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .line 5004
    .end local v1    # "scrapHeap":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v7/widget/RecyclerView$ViewHolder;>;"
    :goto_20
    return-object v2

    :cond_21
    const/4 v2, 0x0

    goto :goto_20
.end method

.method public getRecycledViewCount(I)I
    .registers 3
    .param p1, "viewType"    # I

    .prologue
    .line 4995
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$RecycledViewPool;->getScrapDataForType(I)Landroid/support/v7/widget/RecyclerView$RecycledViewPool$ScrapData;

    move-result-object v0

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$RecycledViewPool$ScrapData;->mScrapHeap:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method onAdapterChanged(Landroid/support/v7/widget/RecyclerView$Adapter;Landroid/support/v7/widget/RecyclerView$Adapter;Z)V
    .registers 5
    .param p1, "oldAdapter"    # Landroid/support/v7/widget/RecyclerView$Adapter;
    .param p2, "newAdapter"    # Landroid/support/v7/widget/RecyclerView$Adapter;
    .param p3, "compatibleWithPrevious"    # Z

    .prologue
    .line 5082
    if-eqz p1, :cond_5

    .line 5083
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$RecycledViewPool;->detach()V

    .line 5085
    :cond_5
    if-nez p3, :cond_e

    iget v0, p0, Landroid/support/v7/widget/RecyclerView$RecycledViewPool;->mAttachCount:I

    if-nez v0, :cond_e

    .line 5086
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$RecycledViewPool;->clear()V

    .line 5088
    :cond_e
    if-eqz p2, :cond_13

    .line 5089
    invoke-virtual {p0, p2}, Landroid/support/v7/widget/RecyclerView$RecycledViewPool;->attach(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 5091
    :cond_13
    return-void
.end method

.method public putRecycledView(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .registers 6
    .param p1, "scrap"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .prologue
    .line 5019
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v1

    .line 5020
    .local v1, "viewType":I
    invoke-direct {p0, v1}, Landroid/support/v7/widget/RecyclerView$RecycledViewPool;->getScrapDataForType(I)Landroid/support/v7/widget/RecyclerView$RecycledViewPool$ScrapData;

    move-result-object v2

    iget-object v0, v2, Landroid/support/v7/widget/RecyclerView$RecycledViewPool$ScrapData;->mScrapHeap:Ljava/util/ArrayList;

    .line 5021
    .local v0, "scrapHeap":Ljava/util/ArrayList;
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView$RecycledViewPool;->mScrap:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v7/widget/RecyclerView$RecycledViewPool$ScrapData;

    iget v2, v2, Landroid/support/v7/widget/RecyclerView$RecycledViewPool$ScrapData;->mMaxScrap:I

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-gt v2, v3, :cond_1b

    .line 5029
    :goto_1a
    return-void

    .line 5027
    :cond_1b
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->resetInternal()V

    .line 5028
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1a
.end method

.method runningAverage(JJ)J
    .registers 12
    .param p1, "oldAverage"    # J
    .param p3, "newValue"    # J

    .prologue
    const-wide/16 v4, 0x4

    .line 5032
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_9

    .line 5035
    .end local p3    # "newValue":J
    :goto_8
    return-wide p3

    .restart local p3    # "newValue":J
    :cond_9
    div-long v0, p1, v4

    const-wide/16 v2, 0x3

    mul-long/2addr v0, v2

    div-long v2, p3, v4

    add-long p3, v0, v2

    goto :goto_8
.end method

.method public setMaxRecycledViews(II)V
    .registers 6
    .param p1, "viewType"    # I
    .param p2, "max"    # I

    .prologue
    .line 4981
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$RecycledViewPool;->getScrapDataForType(I)Landroid/support/v7/widget/RecyclerView$RecycledViewPool$ScrapData;

    move-result-object v0

    .line 4982
    .local v0, "scrapData":Landroid/support/v7/widget/RecyclerView$RecycledViewPool$ScrapData;
    iput p2, v0, Landroid/support/v7/widget/RecyclerView$RecycledViewPool$ScrapData;->mMaxScrap:I

    .line 4983
    iget-object v1, v0, Landroid/support/v7/widget/RecyclerView$RecycledViewPool$ScrapData;->mScrapHeap:Ljava/util/ArrayList;

    .line 4984
    .local v1, "scrapHeap":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v7/widget/RecyclerView$ViewHolder;>;"
    if-eqz v1, :cond_1a

    .line 4985
    :goto_a
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-le v2, p2, :cond_1a

    .line 4986
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_a

    .line 4989
    :cond_1a
    return-void
.end method

.method size()I
    .registers 5

    .prologue
    .line 5008
    const/4 v0, 0x0

    .line 5009
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView$RecycledViewPool;->mScrap:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v1, v3, :cond_1e

    .line 5010
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView$RecycledViewPool;->mScrap:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v7/widget/RecyclerView$RecycledViewPool$ScrapData;

    iget-object v2, v3, Landroid/support/v7/widget/RecyclerView$RecycledViewPool$ScrapData;->mScrapHeap:Ljava/util/ArrayList;

    .line 5011
    .local v2, "viewHolders":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v7/widget/RecyclerView$ViewHolder;>;"
    if-eqz v2, :cond_1b

    .line 5012
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/2addr v0, v3

    .line 5009
    :cond_1b
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 5015
    .end local v2    # "viewHolders":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v7/widget/RecyclerView$ViewHolder;>;"
    :cond_1e
    return v0
.end method

.method willBindInTime(IJJ)Z
    .registers 10
    .param p1, "viewType"    # I
    .param p2, "approxCurrentNs"    # J
    .param p4, "deadlineNs"    # J

    .prologue
    .line 5056
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$RecycledViewPool;->getScrapDataForType(I)Landroid/support/v7/widget/RecyclerView$RecycledViewPool$ScrapData;

    move-result-object v2

    iget-wide v0, v2, Landroid/support/v7/widget/RecyclerView$RecycledViewPool$ScrapData;->mBindRunningAverageNs:J

    .line 5057
    .local v0, "expectedDurationNs":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_12

    add-long v2, p2, v0

    cmp-long v2, v2, p4

    if-gez v2, :cond_14

    :cond_12
    const/4 v2, 0x1

    :goto_13
    return v2

    :cond_14
    const/4 v2, 0x0

    goto :goto_13
.end method

.method willCreateInTime(IJJ)Z
    .registers 10
    .param p1, "viewType"    # I
    .param p2, "approxCurrentNs"    # J
    .param p4, "deadlineNs"    # J

    .prologue
    .line 5051
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$RecycledViewPool;->getScrapDataForType(I)Landroid/support/v7/widget/RecyclerView$RecycledViewPool$ScrapData;

    move-result-object v2

    iget-wide v0, v2, Landroid/support/v7/widget/RecyclerView$RecycledViewPool$ScrapData;->mCreateRunningAverageNs:J

    .line 5052
    .local v0, "expectedDurationNs":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_12

    add-long v2, p2, v0

    cmp-long v2, v2, p4

    if-gez v2, :cond_14

    :cond_12
    const/4 v2, 0x1

    :goto_13
    return v2

    :cond_14
    const/4 v2, 0x0

    goto :goto_13
.end method
