.class public abstract Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;
.super Ljava/lang/Object;
.source "RecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltds/androidx/recyclerview/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "ViewHolder"
.end annotation


# static fields
.field static final FLAG_ADAPTER_FULLUPDATE:I = 0x400

.field static final FLAG_ADAPTER_POSITION_UNKNOWN:I = 0x200

.field static final FLAG_APPEARED_IN_PRE_LAYOUT:I = 0x1000

.field static final FLAG_BOUNCED_FROM_HIDDEN_LIST:I = 0x2000

.field static final FLAG_BOUND:I = 0x1

.field static final FLAG_IGNORE:I = 0x80

.field static final FLAG_INVALID:I = 0x4

.field static final FLAG_MOVED:I = 0x800

.field static final FLAG_NOT_RECYCLABLE:I = 0x10

.field static final FLAG_REMOVED:I = 0x8

.field static final FLAG_RETURNED_FROM_SCRAP:I = 0x20

.field static final FLAG_TMP_DETACHED:I = 0x100

.field static final FLAG_UPDATE:I = 0x2

.field private static final FULLUPDATE_PAYLOADS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field static final PENDING_ACCESSIBILITY_STATE_NOT_SET:I = -0x1


# instance fields
.field public final itemView:Landroid/view/View;

.field mBindingAdapter:Ltds/androidx/recyclerview/widget/RecyclerView$Adapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ltds/androidx/recyclerview/widget/RecyclerView$Adapter<",
            "+",
            "Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field mFlags:I

.field mInChangeScrap:Z

.field private mIsRecyclableCount:I

.field mItemId:J

.field mItemViewType:I

.field mNestedRecyclerView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Ltds/androidx/recyclerview/widget/RecyclerView;",
            ">;"
        }
    .end annotation
.end field

.field mOldPosition:I

.field mOwnerRecyclerView:Ltds/androidx/recyclerview/widget/RecyclerView;

.field mPayloads:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field mPendingAccessibilityState:I

.field mPosition:I

.field mPreLayoutPosition:I

.field mScrapContainer:Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;

.field mShadowedHolder:Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;

.field mShadowingHolder:Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;

.field mUnmodifiedPayloads:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 11116
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    sput-object v0, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->FULLUPDATE_PAYLOADS:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .registers 5
    .param p1, "itemView"    # Landroid/view/View;

    .line 11142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11010
    const/4 v0, -0x1

    iput v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->mPosition:I

    .line 11011
    iput v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->mOldPosition:I

    .line 11012
    const-wide/16 v1, -0x1

    iput-wide v1, p0, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->mItemId:J

    .line 11013
    iput v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->mItemViewType:I

    .line 11014
    iput v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->mPreLayoutPosition:I

    .line 11017
    const/4 v1, 0x0

    iput-object v1, p0, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->mShadowedHolder:Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 11019
    iput-object v1, p0, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->mShadowingHolder:Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 11118
    iput-object v1, p0, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->mPayloads:Ljava/util/List;

    .line 11119
    iput-object v1, p0, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->mUnmodifiedPayloads:Ljava/util/List;

    .line 11121
    const/4 v2, 0x0

    iput v2, p0, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->mIsRecyclableCount:I

    .line 11125
    iput-object v1, p0, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->mScrapContainer:Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;

    .line 11127
    iput-boolean v2, p0, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->mInChangeScrap:Z

    .line 11130
    iput v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->mPendingAccessibilityState:I

    .line 11143
    if-eqz p1, :cond_27

    .line 11146
    iput-object p1, p0, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 11147
    return-void

    .line 11144
    :cond_27
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "itemView may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private createPayloadsIfNeeded()V
    .registers 2

    .line 11454
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->mPayloads:Ljava/util/List;

    if-nez v0, :cond_11

    .line 11455
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->mPayloads:Ljava/util/List;

    .line 11456
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->mUnmodifiedPayloads:Ljava/util/List;

    .line 11458
    :cond_11
    return-void
.end method


# virtual methods
.method addChangePayload(Ljava/lang/Object;)V
    .registers 4
    .param p1, "payload"    # Ljava/lang/Object;

    .line 11445
    const/16 v0, 0x400

    if-nez p1, :cond_8

    .line 11446
    invoke-virtual {p0, v0}, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->addFlags(I)V

    goto :goto_15

    .line 11447
    :cond_8
    iget v1, p0, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->mFlags:I

    and-int/2addr v0, v1

    if-nez v0, :cond_15

    .line 11448
    invoke-direct {p0}, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->createPayloadsIfNeeded()V

    .line 11449
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->mPayloads:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 11451
    :cond_15
    :goto_15
    return-void
.end method

.method addFlags(I)V
    .registers 3
    .param p1, "flags"    # I

    .line 11441
    iget v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->mFlags:I

    or-int/2addr v0, p1

    iput v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->mFlags:I

    .line 11442
    return-void
.end method

.method clearOldPosition()V
    .registers 2

    .line 11172
    const/4 v0, -0x1

    iput v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->mOldPosition:I

    .line 11173
    iput v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->mPreLayoutPosition:I

    .line 11174
    return-void
.end method

.method clearPayload()V
    .registers 2

    .line 11461
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->mPayloads:Ljava/util/List;

    if-eqz v0, :cond_7

    .line 11462
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 11464
    :cond_7
    iget v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->mFlags:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->mFlags:I

    .line 11465
    return-void
.end method

.method clearReturnedFromScrapFlag()V
    .registers 2

    .line 11388
    iget v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->mFlags:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->mFlags:I

    .line 11389
    return-void
.end method

.method clearTmpDetachFlag()V
    .registers 2

    .line 11392
    iget v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->mFlags:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->mFlags:I

    .line 11393
    return-void
.end method

.method doesTransientStatePreventRecycling()Z
    .registers 2

    .line 11588
    iget v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->mFlags:I

    and-int/lit8 v0, v0, 0x10

    if-nez v0, :cond_10

    iget-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v0}, Ltds/androidx/core/view/ViewCompat;->hasTransientState(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0
.end method

.method flagRemovedAndOffsetPosition(IIZ)V
    .registers 5
    .param p1, "mNewPosition"    # I
    .param p2, "offset"    # I
    .param p3, "applyToPreLayout"    # Z

    .line 11150
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->addFlags(I)V

    .line 11151
    invoke-virtual {p0, p2, p3}, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->offsetPosition(IZ)V

    .line 11152
    iput p1, p0, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->mPosition:I

    .line 11153
    return-void
.end method

.method public final getAbsoluteAdapterPosition()I
    .registers 2

    .line 11325
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->mOwnerRecyclerView:Ltds/androidx/recyclerview/widget/RecyclerView;

    if-nez v0, :cond_6

    .line 11326
    const/4 v0, -0x1

    return v0

    .line 11328
    :cond_6
    invoke-virtual {v0, p0}, Ltds/androidx/recyclerview/widget/RecyclerView;->getAdapterPositionInRecyclerView(Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;)I

    move-result v0

    return v0
.end method

.method public final getAdapterPosition()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 11237
    invoke-virtual {p0}, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->getBindingAdapterPosition()I

    move-result v0

    return v0
.end method

.method public final getBindingAdapter()Ltds/androidx/recyclerview/widget/RecyclerView$Adapter;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ltds/androidx/recyclerview/widget/RecyclerView$Adapter<",
            "+",
            "Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation

    .line 11340
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->mBindingAdapter:Ltds/androidx/recyclerview/widget/RecyclerView$Adapter;

    return-object v0
.end method

.method public final getBindingAdapterPosition()I
    .registers 4

    .line 11272
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->mBindingAdapter:Ltds/androidx/recyclerview/widget/RecyclerView$Adapter;

    const/4 v1, -0x1

    if-nez v0, :cond_6

    .line 11273
    return v1

    .line 11275
    :cond_6
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->mOwnerRecyclerView:Ltds/androidx/recyclerview/widget/RecyclerView;

    if-nez v0, :cond_b

    .line 11276
    return v1

    .line 11279
    :cond_b
    invoke-virtual {v0}, Ltds/androidx/recyclerview/widget/RecyclerView;->getAdapter()Ltds/androidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    .line 11280
    .local v0, "rvAdapter":Ltds/androidx/recyclerview/widget/RecyclerView$Adapter;, "Ltds/androidx/recyclerview/widget/RecyclerView$Adapter<+Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;>;"
    if-nez v0, :cond_12

    .line 11281
    return v1

    .line 11283
    :cond_12
    iget-object v2, p0, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->mOwnerRecyclerView:Ltds/androidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2, p0}, Ltds/androidx/recyclerview/widget/RecyclerView;->getAdapterPositionInRecyclerView(Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;)I

    move-result v2

    .line 11284
    .local v2, "globalPosition":I
    if-ne v2, v1, :cond_1b

    .line 11285
    return v1

    .line 11287
    :cond_1b
    iget-object v1, p0, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->mBindingAdapter:Ltds/androidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v0, v1, p0, v2}, Ltds/androidx/recyclerview/widget/RecyclerView$Adapter;->findRelativeAdapterPositionIn(Ltds/androidx/recyclerview/widget/RecyclerView$Adapter;Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;I)I

    move-result v1

    return v1
.end method

.method public final getItemId()J
    .registers 3

    .line 11365
    iget-wide v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->mItemId:J

    return-wide v0
.end method

.method public final getItemViewType()I
    .registers 2

    .line 11372
    iget v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->mItemViewType:I

    return v0
.end method

.method public final getLayoutPosition()I
    .registers 3

    .line 11224
    iget v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->mPreLayoutPosition:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_7

    iget v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->mPosition:I

    :cond_7
    return v0
.end method

.method public final getOldPosition()I
    .registers 2

    .line 11355
    iget v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->mOldPosition:I

    return v0
.end method

.method public final getPosition()I
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 11197
    iget v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->mPreLayoutPosition:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_7

    iget v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->mPosition:I

    :cond_7
    return v0
.end method

.method getUnmodifiedPayloads()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 11468
    iget v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->mFlags:I

    and-int/lit16 v0, v0, 0x400

    if-nez v0, :cond_17

    .line 11469
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->mPayloads:Ljava/util/List;

    if-eqz v0, :cond_14

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_11

    goto :goto_14

    .line 11474
    :cond_11
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->mUnmodifiedPayloads:Ljava/util/List;

    return-object v0

    .line 11471
    :cond_14
    :goto_14
    sget-object v0, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->FULLUPDATE_PAYLOADS:Ljava/util/List;

    return-object v0

    .line 11477
    :cond_17
    sget-object v0, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->FULLUPDATE_PAYLOADS:Ljava/util/List;

    return-object v0
.end method

.method hasAnyOfTheFlags(I)Z
    .registers 3
    .param p1, "flags"    # I

    .line 11421
    iget v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->mFlags:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method isAdapterPositionUnknown()Z
    .registers 2

    .line 11433
    iget v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->mFlags:I

    and-int/lit16 v0, v0, 0x200

    if-nez v0, :cond_f

    invoke-virtual {p0}, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->isInvalid()Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 v0, 0x1

    :goto_10
    return v0
.end method

.method isAttachedToTransitionOverlay()Z
    .registers 3

    .line 11429
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object v1, p0, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->mOwnerRecyclerView:Ltds/androidx/recyclerview/widget/RecyclerView;

    if-eq v0, v1, :cond_14

    const/4 v0, 0x1

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    :goto_15
    return v0
.end method

.method isBound()Z
    .registers 3

    .line 11413
    iget v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->mFlags:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_7

    goto :goto_8

    :cond_7
    const/4 v1, 0x0

    :goto_8
    return v1
.end method

.method isInvalid()Z
    .registers 2

    .line 11405
    iget v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->mFlags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public final isRecyclable()Z
    .registers 2

    .line 11571
    iget v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->mFlags:I

    and-int/lit8 v0, v0, 0x10

    if-nez v0, :cond_10

    iget-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 11572
    invoke-static {v0}, Ltds/androidx/core/view/ViewCompat;->hasTransientState(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    .line 11571
    :goto_11
    return v0
.end method

.method isRemoved()Z
    .registers 2

    .line 11417
    iget v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->mFlags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method isScrap()Z
    .registers 2

    .line 11376
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->mScrapContainer:Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method isTmpDetached()Z
    .registers 2

    .line 11425
    iget v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->mFlags:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method isUpdated()Z
    .registers 2

    .line 11592
    iget v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->mFlags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method needsUpdate()Z
    .registers 2

    .line 11409
    iget v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->mFlags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method offsetPosition(IZ)V
    .registers 5
    .param p1, "offset"    # I
    .param p2, "applyToPreLayout"    # Z

    .line 11156
    iget v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->mOldPosition:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_9

    .line 11157
    iget v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->mPosition:I

    iput v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->mOldPosition:I

    .line 11159
    :cond_9
    iget v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->mPreLayoutPosition:I

    if-ne v0, v1, :cond_11

    .line 11160
    iget v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->mPosition:I

    iput v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->mPreLayoutPosition:I

    .line 11162
    :cond_11
    if-eqz p2, :cond_18

    .line 11163
    iget v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->mPreLayoutPosition:I

    add-int/2addr v0, p1

    iput v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->mPreLayoutPosition:I

    .line 11165
    :cond_18
    iget v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->mPosition:I

    add-int/2addr v0, p1

    iput v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->mPosition:I

    .line 11166
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_30

    .line 11167
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutParams;

    const/4 v1, 0x1

    iput-boolean v1, v0, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutParams;->mInsetsDirty:Z

    .line 11169
    :cond_30
    return-void
.end method

.method onEnteredHiddenState(Ltds/androidx/recyclerview/widget/RecyclerView;)V
    .registers 2
    .param p1, "parent"    # Ltds/androidx/recyclerview/widget/RecyclerView;

    .line 11500
    return-void
.end method

.method onLeftHiddenState(Ltds/androidx/recyclerview/widget/RecyclerView;)V
    .registers 2
    .param p1, "parent"    # Ltds/androidx/recyclerview/widget/RecyclerView;

    .line 11507
    return-void
.end method

.method resetInternal()V
    .registers 5

    .line 11482
    const/4 v0, 0x0

    iput v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->mFlags:I

    .line 11483
    const/4 v1, -0x1

    iput v1, p0, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->mPosition:I

    .line 11484
    iput v1, p0, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->mOldPosition:I

    .line 11485
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->mItemId:J

    .line 11486
    iput v1, p0, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->mPreLayoutPosition:I

    .line 11487
    iput v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->mIsRecyclableCount:I

    .line 11488
    const/4 v0, 0x0

    iput-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->mShadowedHolder:Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 11489
    iput-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->mShadowingHolder:Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 11490
    invoke-virtual {p0}, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->clearPayload()V

    .line 11491
    iput v1, p0, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->mPendingAccessibilityState:I

    .line 11492
    invoke-static {p0}, Ltds/androidx/recyclerview/widget/RecyclerView;->clearNestedRecyclerViewIfNotNested(Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 11493
    return-void
.end method

.method saveOldPosition()V
    .registers 3

    .line 11177
    iget v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->mOldPosition:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_9

    .line 11178
    iget v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->mPosition:I

    iput v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->mOldPosition:I

    .line 11180
    :cond_9
    return-void
.end method

.method setFlags(II)V
    .registers 5
    .param p1, "flags"    # I
    .param p2, "mask"    # I

    .line 11437
    iget v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->mFlags:I

    not-int v1, p2

    and-int/2addr v0, v1

    and-int v1, p1, p2

    or-int/2addr v0, v1

    iput v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->mFlags:I

    .line 11438
    return-void
.end method

.method public final setIsRecyclable(Z)V
    .registers 4
    .param p1, "recyclable"    # Z

    .line 11547
    const/4 v0, 0x1

    iget v1, p0, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->mIsRecyclableCount:I

    if-eqz p1, :cond_7

    sub-int/2addr v1, v0

    goto :goto_8

    :cond_7
    add-int/2addr v1, v0

    :goto_8
    iput v1, p0, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->mIsRecyclableCount:I

    .line 11548
    if-gez v1, :cond_28

    .line 11549
    const/4 v0, 0x0

    iput v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->mIsRecyclableCount:I

    .line 11554
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isRecyclable decremented below 0: unmatched pair of setIsRecyable() calls for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "View"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3d

    .line 11556
    :cond_28
    if-nez p1, :cond_33

    if-ne v1, v0, :cond_33

    .line 11557
    iget v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->mFlags:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->mFlags:I

    goto :goto_3d

    .line 11558
    :cond_33
    if-eqz p1, :cond_3d

    if-nez v1, :cond_3d

    .line 11559
    iget v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->mFlags:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->mFlags:I

    .line 11564
    :cond_3d
    :goto_3d
    return-void
.end method

.method setScrapContainer(Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;Z)V
    .registers 3
    .param p1, "recycler"    # Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;
    .param p2, "isChangeScrap"    # Z

    .line 11400
    iput-object p1, p0, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->mScrapContainer:Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;

    .line 11401
    iput-boolean p2, p0, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->mInChangeScrap:Z

    .line 11402
    return-void
.end method

.method shouldBeKeptAsChild()Z
    .registers 2

    .line 11580
    iget v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->mFlags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method shouldIgnore()Z
    .registers 2

    .line 11183
    iget v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->mFlags:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method stopIgnoring()V
    .registers 2

    .line 11396
    iget v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->mFlags:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->mFlags:I

    .line 11397
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    .line 11511
    nop

    .line 11512
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isAnonymousClass()Z

    move-result v0

    if-eqz v0, :cond_e

    const-string v0, "ViewHolder"

    goto :goto_16

    :cond_e
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    .line 11513
    .local v0, "className":Ljava/lang/String;
    :goto_16
    new-instance v1, Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "{"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 11514
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " position="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->mPosition:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->mItemId:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", oldPos="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->mOldPosition:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", pLpos:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->mPreLayoutPosition:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 11516
    .local v1, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->isScrap()Z

    move-result v2

    if-eqz v2, :cond_82

    .line 11517
    const-string v2, " scrap "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->mInChangeScrap:Z

    if-eqz v3, :cond_7d

    const-string v3, "[changeScrap]"

    goto :goto_7f

    :cond_7d
    const-string v3, "[attachedScrap]"

    .line 11518
    :goto_7f
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11520
    :cond_82
    invoke-virtual {p0}, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->isInvalid()Z

    move-result v2

    if-eqz v2, :cond_8d

    const-string v2, " invalid"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11521
    :cond_8d
    invoke-virtual {p0}, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->isBound()Z

    move-result v2

    if-nez v2, :cond_98

    const-string v2, " unbound"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11522
    :cond_98
    invoke-virtual {p0}, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->needsUpdate()Z

    move-result v2

    if-eqz v2, :cond_a3

    const-string v2, " update"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11523
    :cond_a3
    invoke-virtual {p0}, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->isRemoved()Z

    move-result v2

    if-eqz v2, :cond_ae

    const-string v2, " removed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11524
    :cond_ae
    invoke-virtual {p0}, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v2

    if-eqz v2, :cond_b9

    const-string v2, " ignored"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11525
    :cond_b9
    invoke-virtual {p0}, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->isTmpDetached()Z

    move-result v2

    if-eqz v2, :cond_c4

    const-string v2, " tmpDetached"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11526
    :cond_c4
    invoke-virtual {p0}, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->isRecyclable()Z

    move-result v2

    if-nez v2, :cond_e8

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " not recyclable("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->mIsRecyclableCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11527
    :cond_e8
    invoke-virtual {p0}, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->isAdapterPositionUnknown()Z

    move-result v2

    if-eqz v2, :cond_f3

    const-string v2, " undefined adapter position"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11529
    :cond_f3
    iget-object v2, p0, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-nez v2, :cond_100

    const-string v2, " no parent"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11530
    :cond_100
    const-string v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11531
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method unScrap()V
    .registers 2

    .line 11380
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->mScrapContainer:Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;

    invoke-virtual {v0, p0}, Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;->unscrapView(Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 11381
    return-void
.end method

.method wasReturnedFromScrap()Z
    .registers 2

    .line 11384
    iget v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->mFlags:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method
