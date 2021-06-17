.class public Landroid/support/v7/internal/view/ViewPropertyAnimatorCompatSet;
.super Ljava/lang/Object;
.source "ViewPropertyAnimatorCompatSet.java"


# instance fields
.field private final mAnimators:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/support/v4/view/ViewPropertyAnimatorCompat;",
            ">;"
        }
    .end annotation
.end field

.field private mDuration:J

.field private mInterpolator:Landroid/view/animation/Interpolator;

.field private mIsStarted:Z

.field private mListener:Landroid/support/v4/view/ViewPropertyAnimatorListener;

.field private final mProxyListener:Landroid/support/v4/view/ViewPropertyAnimatorListenerAdapter;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/support/v7/internal/view/ViewPropertyAnimatorCompatSet;->mDuration:J

    .line 107
    new-instance v0, Landroid/support/v7/internal/view/ViewPropertyAnimatorCompatSet$1;

    invoke-direct {v0, p0}, Landroid/support/v7/internal/view/ViewPropertyAnimatorCompatSet$1;-><init>(Landroid/support/v7/internal/view/ViewPropertyAnimatorCompatSet;)V

    iput-object v0, p0, Landroid/support/v7/internal/view/ViewPropertyAnimatorCompatSet;->mProxyListener:Landroid/support/v4/view/ViewPropertyAnimatorListenerAdapter;

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/internal/view/ViewPropertyAnimatorCompatSet;->mAnimators:Ljava/util/ArrayList;

    .line 45
    return-void
.end method

.method static synthetic access$000(Landroid/support/v7/internal/view/ViewPropertyAnimatorCompatSet;)Landroid/support/v4/view/ViewPropertyAnimatorListener;
    .registers 2
    .param p0, "x0"    # Landroid/support/v7/internal/view/ViewPropertyAnimatorCompatSet;

    .line 33
    iget-object v0, p0, Landroid/support/v7/internal/view/ViewPropertyAnimatorCompatSet;->mListener:Landroid/support/v4/view/ViewPropertyAnimatorListener;

    return-object v0
.end method

.method static synthetic access$100(Landroid/support/v7/internal/view/ViewPropertyAnimatorCompatSet;)V
    .registers 1
    .param p0, "x0"    # Landroid/support/v7/internal/view/ViewPropertyAnimatorCompatSet;

    .line 33
    invoke-direct {p0}, Landroid/support/v7/internal/view/ViewPropertyAnimatorCompatSet;->onAnimationsEnded()V

    return-void
.end method

.method static synthetic access$200(Landroid/support/v7/internal/view/ViewPropertyAnimatorCompatSet;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"    # Landroid/support/v7/internal/view/ViewPropertyAnimatorCompatSet;

    .line 33
    iget-object v0, p0, Landroid/support/v7/internal/view/ViewPropertyAnimatorCompatSet;->mAnimators:Ljava/util/ArrayList;

    return-object v0
.end method

.method private onAnimationsEnded()V
    .registers 2

    .line 73
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/internal/view/ViewPropertyAnimatorCompatSet;->mIsStarted:Z

    .line 74
    return-void
.end method


# virtual methods
.method public cancel()V
    .registers 3

    .line 77
    iget-boolean v0, p0, Landroid/support/v7/internal/view/ViewPropertyAnimatorCompatSet;->mIsStarted:Z

    if-nez v0, :cond_5

    .line 78
    return-void

    .line 80
    :cond_5
    iget-object v0, p0, Landroid/support/v7/internal/view/ViewPropertyAnimatorCompatSet;->mAnimators:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .line 81
    .local v1, "animator":Landroid/support/v4/view/ViewPropertyAnimatorCompat;
    invoke-virtual {v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->cancel()V

    .line 82
    .end local v1    # "animator":Landroid/support/v4/view/ViewPropertyAnimatorCompat;
    goto :goto_b

    .line 83
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_1b
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/internal/view/ViewPropertyAnimatorCompatSet;->mIsStarted:Z

    .line 84
    return-void
.end method

.method public play(Landroid/support/v4/view/ViewPropertyAnimatorCompat;)Landroid/support/v7/internal/view/ViewPropertyAnimatorCompatSet;
    .registers 3
    .param p1, "animator"    # Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .line 48
    iget-boolean v0, p0, Landroid/support/v7/internal/view/ViewPropertyAnimatorCompatSet;->mIsStarted:Z

    if-nez v0, :cond_9

    .line 49
    iget-object v0, p0, Landroid/support/v7/internal/view/ViewPropertyAnimatorCompatSet;->mAnimators:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 51
    :cond_9
    return-object p0
.end method

.method public setDuration(J)Landroid/support/v7/internal/view/ViewPropertyAnimatorCompatSet;
    .registers 4
    .param p1, "duration"    # J

    .line 87
    iget-boolean v0, p0, Landroid/support/v7/internal/view/ViewPropertyAnimatorCompatSet;->mIsStarted:Z

    if-nez v0, :cond_6

    .line 88
    iput-wide p1, p0, Landroid/support/v7/internal/view/ViewPropertyAnimatorCompatSet;->mDuration:J

    .line 90
    :cond_6
    return-object p0
.end method

.method public setInterpolator(Landroid/view/animation/Interpolator;)Landroid/support/v7/internal/view/ViewPropertyAnimatorCompatSet;
    .registers 3
    .param p1, "interpolator"    # Landroid/view/animation/Interpolator;

    .line 94
    iget-boolean v0, p0, Landroid/support/v7/internal/view/ViewPropertyAnimatorCompatSet;->mIsStarted:Z

    if-nez v0, :cond_6

    .line 95
    iput-object p1, p0, Landroid/support/v7/internal/view/ViewPropertyAnimatorCompatSet;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 97
    :cond_6
    return-object p0
.end method

.method public setListener(Landroid/support/v4/view/ViewPropertyAnimatorListener;)Landroid/support/v7/internal/view/ViewPropertyAnimatorCompatSet;
    .registers 3
    .param p1, "listener"    # Landroid/support/v4/view/ViewPropertyAnimatorListener;

    .line 101
    iget-boolean v0, p0, Landroid/support/v7/internal/view/ViewPropertyAnimatorCompatSet;->mIsStarted:Z

    if-nez v0, :cond_6

    .line 102
    iput-object p1, p0, Landroid/support/v7/internal/view/ViewPropertyAnimatorCompatSet;->mListener:Landroid/support/v4/view/ViewPropertyAnimatorListener;

    .line 104
    :cond_6
    return-object p0
.end method

.method public start()V
    .registers 8

    .line 55
    iget-boolean v0, p0, Landroid/support/v7/internal/view/ViewPropertyAnimatorCompatSet;->mIsStarted:Z

    if-eqz v0, :cond_5

    return-void

    .line 56
    :cond_5
    iget-object v0, p0, Landroid/support/v7/internal/view/ViewPropertyAnimatorCompatSet;->mAnimators:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_36

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .line 57
    .local v1, "animator":Landroid/support/v4/view/ViewPropertyAnimatorCompat;
    iget-wide v2, p0, Landroid/support/v7/internal/view/ViewPropertyAnimatorCompatSet;->mDuration:J

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-ltz v6, :cond_22

    .line 58
    invoke-virtual {v1, v2, v3}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .line 60
    :cond_22
    iget-object v2, p0, Landroid/support/v7/internal/view/ViewPropertyAnimatorCompatSet;->mInterpolator:Landroid/view/animation/Interpolator;

    if-eqz v2, :cond_29

    .line 61
    invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setInterpolator(Landroid/view/animation/Interpolator;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .line 63
    :cond_29
    iget-object v2, p0, Landroid/support/v7/internal/view/ViewPropertyAnimatorCompatSet;->mListener:Landroid/support/v4/view/ViewPropertyAnimatorListener;

    if-eqz v2, :cond_32

    .line 64
    iget-object v2, p0, Landroid/support/v7/internal/view/ViewPropertyAnimatorCompatSet;->mProxyListener:Landroid/support/v4/view/ViewPropertyAnimatorListenerAdapter;

    invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setListener(Landroid/support/v4/view/ViewPropertyAnimatorListener;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .line 66
    :cond_32
    invoke-virtual {v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->start()V

    .line 67
    .end local v1    # "animator":Landroid/support/v4/view/ViewPropertyAnimatorCompat;
    goto :goto_b

    .line 69
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_36
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/internal/view/ViewPropertyAnimatorCompatSet;->mIsStarted:Z

    .line 70
    return-void
.end method
