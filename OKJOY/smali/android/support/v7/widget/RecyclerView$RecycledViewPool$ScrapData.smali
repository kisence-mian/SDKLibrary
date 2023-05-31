.class Landroid/support/v7/widget/RecyclerView$RecycledViewPool$ScrapData;
.super Ljava/lang/Object;
.source "RecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/RecyclerView$RecycledViewPool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ScrapData"
.end annotation


# instance fields
.field mBindRunningAverageNs:J

.field mCreateRunningAverageNs:J

.field mMaxScrap:I

.field mScrapHeap:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 5

    .prologue
    const-wide/16 v2, 0x0

    .line 4963
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4964
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView$RecycledViewPool$ScrapData;->mScrapHeap:Ljava/util/ArrayList;

    .line 4965
    const/4 v0, 0x5

    iput v0, p0, Landroid/support/v7/widget/RecyclerView$RecycledViewPool$ScrapData;->mMaxScrap:I

    .line 4966
    iput-wide v2, p0, Landroid/support/v7/widget/RecyclerView$RecycledViewPool$ScrapData;->mCreateRunningAverageNs:J

    .line 4967
    iput-wide v2, p0, Landroid/support/v7/widget/RecyclerView$RecycledViewPool$ScrapData;->mBindRunningAverageNs:J

    return-void
.end method
