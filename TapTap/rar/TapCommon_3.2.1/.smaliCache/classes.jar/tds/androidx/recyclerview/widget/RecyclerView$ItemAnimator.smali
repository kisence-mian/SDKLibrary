.class public abstract Ltds/androidx/recyclerview/widget/RecyclerView$ItemAnimator;
.super Ljava/lang/Object;
.source "RecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltds/androidx/recyclerview/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "ItemAnimator"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltds/androidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;,
        Ltds/androidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemAnimatorFinishedListener;,
        Ltds/androidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemAnimatorListener;,
        Ltds/androidx/recyclerview/widget/RecyclerView$ItemAnimator$AdapterChanges;
    }
.end annotation


# static fields
.field public static final FLAG_APPEARED_IN_PRE_LAYOUT:I = 0x1000

.field public static final FLAG_CHANGED:I = 0x2

.field public static final FLAG_INVALIDATED:I = 0x4

.field public static final FLAG_MOVED:I = 0x800

.field public static final FLAG_REMOVED:I = 0x8


# instance fields
.field private mAddDuration:J

.field private mChangeDuration:J

.field private mFinishedListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ltds/androidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemAnimatorFinishedListener;",
            ">;"
        }
    .end annotation
.end field

.field private mListener:Ltds/androidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemAnimatorListener;

.field private mMoveDuration:J

.field private mRemoveDuration:J


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 12909
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12972
    const/4 v0, 0x0

    iput-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView$ItemAnimator;->mListener:Ltds/androidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemAnimatorListener;

    .line 12973
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView$ItemAnimator;->mFinishedListeners:Ljava/util/ArrayList;

    .line 12976
    const-wide/16 v0, 0x78

    iput-wide v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView$ItemAnimator;->mAddDuration:J

    .line 12977
    iput-wide v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView$ItemAnimator;->mRemoveDuration:J

    .line 12978
    const-wide/16 v0, 0xfa

    iput-wide v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView$ItemAnimator;->mMoveDuration:J

    .line 12979
    iput-wide v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView$ItemAnimator;->mChangeDuration:J

    return-void
.end method

.method static buildAdapterChangeFlagsForAnimations(Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;)I
    .registers 5
    .param p0, "viewHolder"    # Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 13296
    iget v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->mFlags:I

    and-int/lit8 v0, v0, 0xe

    .line 13297
    .local v0, "flags":I
    invoke-virtual {p0}, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->isInvalid()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 13298
    const/4 v1, 0x4

    return v1

    .line 13300
    :cond_c
    and-int/lit8 v1, v0, 0x4

    if-nez v1, :cond_21

    .line 13301
    invoke-virtual {p0}, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->getOldPosition()I

    move-result v1

    .line 13302
    .local v1, "oldPos":I
    invoke-virtual {p0}, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->getAbsoluteAdapterPosition()I

    move-result v2

    .line 13303
    .local v2, "pos":I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_21

    if-eq v2, v3, :cond_21

    if-eq v1, v2, :cond_21

    .line 13304
    or-int/lit16 v0, v0, 0x800

    .line 13307
    .end local v1    # "oldPos":I
    .end local v2    # "pos":I
    :cond_21
    return v0
.end method


# virtual methods
.method public abstract animateAppearance(Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;Ltds/androidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;Ltds/androidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)Z
.end method

.method public abstract animateChange(Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;Ltds/androidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;Ltds/androidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)Z
.end method

.method public abstract animateDisappearance(Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;Ltds/androidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;Ltds/androidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)Z
.end method

.method public abstract animatePersistence(Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;Ltds/androidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;Ltds/androidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)Z
.end method

.method public canReuseUpdatedViewHolder(Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .registers 3
    .param p1, "viewHolder"    # Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 13484
    const/4 v0, 0x1

    return v0
.end method

.method public canReuseUpdatedViewHolder(Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;Ljava/util/List;)Z
    .registers 4
    .param p1, "viewHolder"    # Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .line 13512
    .local p2, "payloads":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-virtual {p0, p1}, Ltds/androidx/recyclerview/widget/RecyclerView$ItemAnimator;->canReuseUpdatedViewHolder(Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;)Z

    move-result v0

    return v0
.end method

.method public final dispatchAnimationFinished(Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .registers 3
    .param p1, "viewHolder"    # Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 13380
    invoke-virtual {p0, p1}, Ltds/androidx/recyclerview/widget/RecyclerView$ItemAnimator;->onAnimationFinished(Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 13381
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView$ItemAnimator;->mListener:Ltds/androidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemAnimatorListener;

    if-eqz v0, :cond_a

    .line 13382
    invoke-interface {v0, p1}, Ltds/androidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemAnimatorListener;->onAnimationFinished(Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 13384
    :cond_a
    return-void
.end method

.method public final dispatchAnimationStarted(Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .registers 2
    .param p1, "viewHolder"    # Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 13421
    invoke-virtual {p0, p1}, Ltds/androidx/recyclerview/widget/RecyclerView$ItemAnimator;->onAnimationStarted(Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 13422
    return-void
.end method

.method public final dispatchAnimationsFinished()V
    .registers 4

    .line 13520
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView$ItemAnimator;->mFinishedListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 13521
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_17

    .line 13522
    iget-object v2, p0, Ltds/androidx/recyclerview/widget/RecyclerView$ItemAnimator;->mFinishedListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ltds/androidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemAnimatorFinishedListener;

    invoke-interface {v2}, Ltds/androidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemAnimatorFinishedListener;->onAnimationsFinished()V

    .line 13521
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 13524
    .end local v1    # "i":I
    :cond_17
    iget-object v1, p0, Ltds/androidx/recyclerview/widget/RecyclerView$ItemAnimator;->mFinishedListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 13525
    return-void
.end method

.method public abstract endAnimation(Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;)V
.end method

.method public abstract endAnimations()V
.end method

.method public getAddDuration()J
    .registers 3

    .line 13005
    iget-wide v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView$ItemAnimator;->mAddDuration:J

    return-wide v0
.end method

.method public getChangeDuration()J
    .registers 3

    .line 13041
    iget-wide v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView$ItemAnimator;->mChangeDuration:J

    return-wide v0
.end method

.method public getMoveDuration()J
    .registers 3

    .line 12987
    iget-wide v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView$ItemAnimator;->mMoveDuration:J

    return-wide v0
.end method

.method public getRemoveDuration()J
    .registers 3

    .line 13023
    iget-wide v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView$ItemAnimator;->mRemoveDuration:J

    return-wide v0
.end method

.method public abstract isRunning()Z
.end method

.method public final isRunning(Ltds/androidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemAnimatorFinishedListener;)Z
    .registers 4
    .param p1, "listener"    # Ltds/androidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemAnimatorFinishedListener;

    .line 13453
    invoke-virtual {p0}, Ltds/androidx/recyclerview/widget/RecyclerView$ItemAnimator;->isRunning()Z

    move-result v0

    .line 13454
    .local v0, "running":Z
    if-eqz p1, :cond_11

    .line 13455
    if-nez v0, :cond_c

    .line 13456
    invoke-interface {p1}, Ltds/androidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemAnimatorFinishedListener;->onAnimationsFinished()V

    goto :goto_11

    .line 13458
    :cond_c
    iget-object v1, p0, Ltds/androidx/recyclerview/widget/RecyclerView$ItemAnimator;->mFinishedListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 13461
    :cond_11
    :goto_11
    return v0
.end method

.method public obtainHolderInfo()Ltds/androidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
    .registers 2

    .line 13538
    new-instance v0, Ltds/androidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    invoke-direct {v0}, Ltds/androidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;-><init>()V

    return-object v0
.end method

.method public onAnimationFinished(Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .registers 2
    .param p1, "viewHolder"    # Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 13395
    return-void
.end method

.method public onAnimationStarted(Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .registers 2
    .param p1, "viewHolder"    # Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 13433
    return-void
.end method

.method public recordPostLayoutInformation(Ltds/androidx/recyclerview/widget/RecyclerView$State;Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;)Ltds/androidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
    .registers 4
    .param p1, "state"    # Ltds/androidx/recyclerview/widget/RecyclerView$State;
    .param p2, "viewHolder"    # Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 13128
    invoke-virtual {p0}, Ltds/androidx/recyclerview/widget/RecyclerView$ItemAnimator;->obtainHolderInfo()Ltds/androidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    move-result-object v0

    invoke-virtual {v0, p2}, Ltds/androidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;->setFrom(Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;)Ltds/androidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    move-result-object v0

    return-object v0
.end method

.method public recordPreLayoutInformation(Ltds/androidx/recyclerview/widget/RecyclerView$State;Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;ILjava/util/List;)Ltds/androidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
    .registers 6
    .param p1, "state"    # Ltds/androidx/recyclerview/widget/RecyclerView$State;
    .param p2, "viewHolder"    # Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;
    .param p3, "changeFlags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltds/androidx/recyclerview/widget/RecyclerView$State;",
            "Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)",
            "Ltds/androidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;"
        }
    .end annotation

    .line 13100
    .local p4, "payloads":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-virtual {p0}, Ltds/androidx/recyclerview/widget/RecyclerView$ItemAnimator;->obtainHolderInfo()Ltds/androidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    move-result-object v0

    invoke-virtual {v0, p2}, Ltds/androidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;->setFrom(Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;)Ltds/androidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    move-result-object v0

    return-object v0
.end method

.method public abstract runPendingAnimations()V
.end method

.method public setAddDuration(J)V
    .registers 3
    .param p1, "addDuration"    # J

    .line 13014
    iput-wide p1, p0, Ltds/androidx/recyclerview/widget/RecyclerView$ItemAnimator;->mAddDuration:J

    .line 13015
    return-void
.end method

.method public setChangeDuration(J)V
    .registers 3
    .param p1, "changeDuration"    # J

    .line 13050
    iput-wide p1, p0, Ltds/androidx/recyclerview/widget/RecyclerView$ItemAnimator;->mChangeDuration:J

    .line 13051
    return-void
.end method

.method setListener(Ltds/androidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemAnimatorListener;)V
    .registers 2
    .param p1, "listener"    # Ltds/androidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemAnimatorListener;

    .line 13062
    iput-object p1, p0, Ltds/androidx/recyclerview/widget/RecyclerView$ItemAnimator;->mListener:Ltds/androidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemAnimatorListener;

    .line 13063
    return-void
.end method

.method public setMoveDuration(J)V
    .registers 3
    .param p1, "moveDuration"    # J

    .line 12996
    iput-wide p1, p0, Ltds/androidx/recyclerview/widget/RecyclerView$ItemAnimator;->mMoveDuration:J

    .line 12997
    return-void
.end method

.method public setRemoveDuration(J)V
    .registers 3
    .param p1, "removeDuration"    # J

    .line 13032
    iput-wide p1, p0, Ltds/androidx/recyclerview/widget/RecyclerView$ItemAnimator;->mRemoveDuration:J

    .line 13033
    return-void
.end method
