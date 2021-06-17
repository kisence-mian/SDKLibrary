.class public Landroidx/core/widget/ContentLoadingProgressBar;
.super Landroid/widget/ProgressBar;
.source "ContentLoadingProgressBar.java"


# static fields
.field private static final MIN_DELAY:I = 0x1f4

.field private static final MIN_SHOW_TIME:I = 0x1f4


# instance fields
.field private final mDelayedHide:Ljava/lang/Runnable;

.field private final mDelayedShow:Ljava/lang/Runnable;

.field mDismissed:Z

.field mPostedHide:Z

.field mPostedShow:Z

.field mStartTime:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 68
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroidx/core/widget/ContentLoadingProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 69
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 72
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 37
    const-wide/16 v1, -0x1

    iput-wide v1, p0, Landroidx/core/widget/ContentLoadingProgressBar;->mStartTime:J

    .line 39
    iput-boolean v0, p0, Landroidx/core/widget/ContentLoadingProgressBar;->mPostedHide:Z

    .line 41
    iput-boolean v0, p0, Landroidx/core/widget/ContentLoadingProgressBar;->mPostedShow:Z

    .line 43
    iput-boolean v0, p0, Landroidx/core/widget/ContentLoadingProgressBar;->mDismissed:Z

    .line 45
    new-instance v0, Landroidx/core/widget/ContentLoadingProgressBar$1;

    invoke-direct {v0, p0}, Landroidx/core/widget/ContentLoadingProgressBar$1;-><init>(Landroidx/core/widget/ContentLoadingProgressBar;)V

    iput-object v0, p0, Landroidx/core/widget/ContentLoadingProgressBar;->mDelayedHide:Ljava/lang/Runnable;

    .line 55
    new-instance v0, Landroidx/core/widget/ContentLoadingProgressBar$2;

    invoke-direct {v0, p0}, Landroidx/core/widget/ContentLoadingProgressBar$2;-><init>(Landroidx/core/widget/ContentLoadingProgressBar;)V

    iput-object v0, p0, Landroidx/core/widget/ContentLoadingProgressBar;->mDelayedShow:Ljava/lang/Runnable;

    .line 73
    return-void
.end method

.method private removeCallbacks()V
    .registers 2

    .line 88
    iget-object v0, p0, Landroidx/core/widget/ContentLoadingProgressBar;->mDelayedHide:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroidx/core/widget/ContentLoadingProgressBar;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 89
    iget-object v0, p0, Landroidx/core/widget/ContentLoadingProgressBar;->mDelayedShow:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroidx/core/widget/ContentLoadingProgressBar;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 90
    return-void
.end method


# virtual methods
.method public declared-synchronized hide()V
    .registers 11

    monitor-enter p0

    .line 98
    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Landroidx/core/widget/ContentLoadingProgressBar;->mDismissed:Z

    .line 99
    iget-object v1, p0, Landroidx/core/widget/ContentLoadingProgressBar;->mDelayedShow:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Landroidx/core/widget/ContentLoadingProgressBar;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 100
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroidx/core/widget/ContentLoadingProgressBar;->mPostedShow:Z

    .line 101
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Landroidx/core/widget/ContentLoadingProgressBar;->mStartTime:J

    sub-long/2addr v1, v3

    .line 102
    .local v1, "diff":J
    const-wide/16 v5, 0x1f4

    cmp-long v7, v1, v5

    if-gez v7, :cond_2d

    const-wide/16 v7, -0x1

    cmp-long v9, v3, v7

    if-nez v9, :cond_20

    goto :goto_2d

    .line 111
    :cond_20
    iget-boolean v3, p0, Landroidx/core/widget/ContentLoadingProgressBar;->mPostedHide:Z

    if-nez v3, :cond_32

    .line 112
    iget-object v3, p0, Landroidx/core/widget/ContentLoadingProgressBar;->mDelayedHide:Ljava/lang/Runnable;

    sub-long/2addr v5, v1

    invoke-virtual {p0, v3, v5, v6}, Landroidx/core/widget/ContentLoadingProgressBar;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 113
    iput-boolean v0, p0, Landroidx/core/widget/ContentLoadingProgressBar;->mPostedHide:Z

    goto :goto_32

    .line 106
    .end local p0    # "this":Landroidx/core/widget/ContentLoadingProgressBar;
    :cond_2d
    :goto_2d
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroidx/core/widget/ContentLoadingProgressBar;->setVisibility(I)V
    :try_end_32
    .catchall {:try_start_2 .. :try_end_32} :catchall_34

    .line 116
    :cond_32
    :goto_32
    monitor-exit p0

    return-void

    .line 97
    .end local v1    # "diff":J
    :catchall_34
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onAttachedToWindow()V
    .registers 1

    .line 77
    invoke-super {p0}, Landroid/widget/ProgressBar;->onAttachedToWindow()V

    .line 78
    invoke-direct {p0}, Landroidx/core/widget/ContentLoadingProgressBar;->removeCallbacks()V

    .line 79
    return-void
.end method

.method public onDetachedFromWindow()V
    .registers 1

    .line 83
    invoke-super {p0}, Landroid/widget/ProgressBar;->onDetachedFromWindow()V

    .line 84
    invoke-direct {p0}, Landroidx/core/widget/ContentLoadingProgressBar;->removeCallbacks()V

    .line 85
    return-void
.end method

.method public declared-synchronized show()V
    .registers 4

    monitor-enter p0

    .line 124
    const-wide/16 v0, -0x1

    :try_start_3
    iput-wide v0, p0, Landroidx/core/widget/ContentLoadingProgressBar;->mStartTime:J

    .line 125
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/core/widget/ContentLoadingProgressBar;->mDismissed:Z

    .line 126
    iget-object v1, p0, Landroidx/core/widget/ContentLoadingProgressBar;->mDelayedHide:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Landroidx/core/widget/ContentLoadingProgressBar;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 127
    iput-boolean v0, p0, Landroidx/core/widget/ContentLoadingProgressBar;->mPostedHide:Z

    .line 128
    iget-boolean v0, p0, Landroidx/core/widget/ContentLoadingProgressBar;->mPostedShow:Z

    if-nez v0, :cond_1d

    .line 129
    iget-object v0, p0, Landroidx/core/widget/ContentLoadingProgressBar;->mDelayedShow:Ljava/lang/Runnable;

    const-wide/16 v1, 0x1f4

    invoke-virtual {p0, v0, v1, v2}, Landroidx/core/widget/ContentLoadingProgressBar;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 130
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/core/widget/ContentLoadingProgressBar;->mPostedShow:Z
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_1f

    .line 132
    .end local p0    # "this":Landroidx/core/widget/ContentLoadingProgressBar;
    :cond_1d
    monitor-exit p0

    return-void

    .line 123
    :catchall_1f
    move-exception v0

    monitor-exit p0

    throw v0
.end method
