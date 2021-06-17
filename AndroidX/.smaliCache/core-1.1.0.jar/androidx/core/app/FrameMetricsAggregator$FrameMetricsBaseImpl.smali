.class Landroidx/core/app/FrameMetricsAggregator$FrameMetricsBaseImpl;
.super Ljava/lang/Object;
.source "FrameMetricsAggregator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/app/FrameMetricsAggregator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FrameMetricsBaseImpl"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 309
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 310
    return-void
.end method


# virtual methods
.method public add(Landroid/app/Activity;)V
    .registers 2
    .param p1, "activity"    # Landroid/app/Activity;

    .line 313
    return-void
.end method

.method public getMetrics()[Landroid/util/SparseIntArray;
    .registers 2

    .line 324
    const/4 v0, 0x0

    return-object v0
.end method

.method public remove(Landroid/app/Activity;)[Landroid/util/SparseIntArray;
    .registers 3
    .param p1, "activity"    # Landroid/app/Activity;

    .line 316
    const/4 v0, 0x0

    return-object v0
.end method

.method public reset()[Landroid/util/SparseIntArray;
    .registers 2

    .line 328
    const/4 v0, 0x0

    return-object v0
.end method

.method public stop()[Landroid/util/SparseIntArray;
    .registers 2

    .line 320
    const/4 v0, 0x0

    return-object v0
.end method
