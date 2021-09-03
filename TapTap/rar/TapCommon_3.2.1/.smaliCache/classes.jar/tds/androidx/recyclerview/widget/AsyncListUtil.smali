.class public Ltds/androidx/recyclerview/widget/AsyncListUtil;
.super Ljava/lang/Object;
.source "AsyncListUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltds/androidx/recyclerview/widget/AsyncListUtil$ViewCallback;,
        Ltds/androidx/recyclerview/widget/AsyncListUtil$DataCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field static final DEBUG:Z = false

.field static final TAG:Ljava/lang/String; = "AsyncListUtil"


# instance fields
.field mAllowScrollHints:Z

.field private final mBackgroundCallback:Ltds/androidx/recyclerview/widget/ThreadUtil$BackgroundCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ltds/androidx/recyclerview/widget/ThreadUtil$BackgroundCallback<",
            "TT;>;"
        }
    .end annotation
.end field

.field final mBackgroundProxy:Ltds/androidx/recyclerview/widget/ThreadUtil$BackgroundCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ltds/androidx/recyclerview/widget/ThreadUtil$BackgroundCallback<",
            "TT;>;"
        }
    .end annotation
.end field

.field final mDataCallback:Ltds/androidx/recyclerview/widget/AsyncListUtil$DataCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ltds/androidx/recyclerview/widget/AsyncListUtil$DataCallback<",
            "TT;>;"
        }
    .end annotation
.end field

.field mDisplayedGeneration:I

.field mItemCount:I

.field private final mMainThreadCallback:Ltds/androidx/recyclerview/widget/ThreadUtil$MainThreadCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ltds/androidx/recyclerview/widget/ThreadUtil$MainThreadCallback<",
            "TT;>;"
        }
    .end annotation
.end field

.field final mMainThreadProxy:Ltds/androidx/recyclerview/widget/ThreadUtil$MainThreadCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ltds/androidx/recyclerview/widget/ThreadUtil$MainThreadCallback<",
            "TT;>;"
        }
    .end annotation
.end field

.field final mMissingPositions:Landroid/util/SparseIntArray;

.field final mPrevRange:[I

.field mRequestedGeneration:I

.field private mScrollHint:I

.field final mTClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation
.end field

.field final mTileList:Ltds/androidx/recyclerview/widget/TileList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ltds/androidx/recyclerview/widget/TileList<",
            "TT;>;"
        }
    .end annotation
.end field

.field final mTileSize:I

.field final mTmpRange:[I

.field final mTmpRangeExtended:[I

.field final mViewCallback:Ltds/androidx/recyclerview/widget/AsyncListUtil$ViewCallback;


# direct methods
.method public constructor <init>(Ljava/lang/Class;ILtds/androidx/recyclerview/widget/AsyncListUtil$DataCallback;Ltds/androidx/recyclerview/widget/AsyncListUtil$ViewCallback;)V
    .registers 8
    .param p2, "tileSize"    # I
    .param p4, "viewCallback"    # Ltds/androidx/recyclerview/widget/AsyncListUtil$ViewCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TT;>;I",
            "Ltds/androidx/recyclerview/widget/AsyncListUtil$DataCallback<",
            "TT;>;",
            "Ltds/androidx/recyclerview/widget/AsyncListUtil$ViewCallback;",
            ")V"
        }
    .end annotation

    .line 91
    .local p0, "this":Ltds/androidx/recyclerview/widget/AsyncListUtil;, "Ltds/androidx/recyclerview/widget/AsyncListUtil<TT;>;"
    .local p1, "klass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p3, "dataCallback":Ltds/androidx/recyclerview/widget/AsyncListUtil$DataCallback;, "Ltds/androidx/recyclerview/widget/AsyncListUtil$DataCallback<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    const/4 v0, 0x2

    new-array v1, v0, [I

    iput-object v1, p0, Ltds/androidx/recyclerview/widget/AsyncListUtil;->mTmpRange:[I

    .line 65
    new-array v1, v0, [I

    iput-object v1, p0, Ltds/androidx/recyclerview/widget/AsyncListUtil;->mPrevRange:[I

    .line 66
    new-array v0, v0, [I

    iput-object v0, p0, Ltds/androidx/recyclerview/widget/AsyncListUtil;->mTmpRangeExtended:[I

    .line 69
    const/4 v0, 0x0

    iput v0, p0, Ltds/androidx/recyclerview/widget/AsyncListUtil;->mScrollHint:I

    .line 71
    iput v0, p0, Ltds/androidx/recyclerview/widget/AsyncListUtil;->mItemCount:I

    .line 73
    iput v0, p0, Ltds/androidx/recyclerview/widget/AsyncListUtil;->mDisplayedGeneration:I

    .line 74
    iput v0, p0, Ltds/androidx/recyclerview/widget/AsyncListUtil;->mRequestedGeneration:I

    .line 76
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Ltds/androidx/recyclerview/widget/AsyncListUtil;->mMissingPositions:Landroid/util/SparseIntArray;

    .line 211
    new-instance v0, Ltds/androidx/recyclerview/widget/AsyncListUtil$1;

    invoke-direct {v0, p0}, Ltds/androidx/recyclerview/widget/AsyncListUtil$1;-><init>(Ltds/androidx/recyclerview/widget/AsyncListUtil;)V

    iput-object v0, p0, Ltds/androidx/recyclerview/widget/AsyncListUtil;->mMainThreadCallback:Ltds/androidx/recyclerview/widget/ThreadUtil$MainThreadCallback;

    .line 293
    new-instance v1, Ltds/androidx/recyclerview/widget/AsyncListUtil$2;

    invoke-direct {v1, p0}, Ltds/androidx/recyclerview/widget/AsyncListUtil$2;-><init>(Ltds/androidx/recyclerview/widget/AsyncListUtil;)V

    iput-object v1, p0, Ltds/androidx/recyclerview/widget/AsyncListUtil;->mBackgroundCallback:Ltds/androidx/recyclerview/widget/ThreadUtil$BackgroundCallback;

    .line 92
    iput-object p1, p0, Ltds/androidx/recyclerview/widget/AsyncListUtil;->mTClass:Ljava/lang/Class;

    .line 93
    iput p2, p0, Ltds/androidx/recyclerview/widget/AsyncListUtil;->mTileSize:I

    .line 94
    iput-object p3, p0, Ltds/androidx/recyclerview/widget/AsyncListUtil;->mDataCallback:Ltds/androidx/recyclerview/widget/AsyncListUtil$DataCallback;

    .line 95
    iput-object p4, p0, Ltds/androidx/recyclerview/widget/AsyncListUtil;->mViewCallback:Ltds/androidx/recyclerview/widget/AsyncListUtil$ViewCallback;

    .line 97
    new-instance v2, Ltds/androidx/recyclerview/widget/TileList;

    invoke-direct {v2, p2}, Ltds/androidx/recyclerview/widget/TileList;-><init>(I)V

    iput-object v2, p0, Ltds/androidx/recyclerview/widget/AsyncListUtil;->mTileList:Ltds/androidx/recyclerview/widget/TileList;

    .line 99
    new-instance v2, Ltds/androidx/recyclerview/widget/MessageThreadUtil;

    invoke-direct {v2}, Ltds/androidx/recyclerview/widget/MessageThreadUtil;-><init>()V

    .line 100
    .local v2, "threadUtil":Ltds/androidx/recyclerview/widget/ThreadUtil;, "Ltds/androidx/recyclerview/widget/ThreadUtil<TT;>;"
    invoke-interface {v2, v0}, Ltds/androidx/recyclerview/widget/ThreadUtil;->getMainThreadProxy(Ltds/androidx/recyclerview/widget/ThreadUtil$MainThreadCallback;)Ltds/androidx/recyclerview/widget/ThreadUtil$MainThreadCallback;

    move-result-object v0

    iput-object v0, p0, Ltds/androidx/recyclerview/widget/AsyncListUtil;->mMainThreadProxy:Ltds/androidx/recyclerview/widget/ThreadUtil$MainThreadCallback;

    .line 101
    invoke-interface {v2, v1}, Ltds/androidx/recyclerview/widget/ThreadUtil;->getBackgroundProxy(Ltds/androidx/recyclerview/widget/ThreadUtil$BackgroundCallback;)Ltds/androidx/recyclerview/widget/ThreadUtil$BackgroundCallback;

    move-result-object v0

    iput-object v0, p0, Ltds/androidx/recyclerview/widget/AsyncListUtil;->mBackgroundProxy:Ltds/androidx/recyclerview/widget/ThreadUtil$BackgroundCallback;

    .line 103
    invoke-virtual {p0}, Ltds/androidx/recyclerview/widget/AsyncListUtil;->refresh()V

    .line 104
    return-void
.end method

.method private isRefreshPending()Z
    .registers 3

    .line 107
    .local p0, "this":Ltds/androidx/recyclerview/widget/AsyncListUtil;, "Ltds/androidx/recyclerview/widget/AsyncListUtil<TT;>;"
    iget v0, p0, Ltds/androidx/recyclerview/widget/AsyncListUtil;->mRequestedGeneration:I

    iget v1, p0, Ltds/androidx/recyclerview/widget/AsyncListUtil;->mDisplayedGeneration:I

    if-eq v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method


# virtual methods
.method public getItem(I)Ljava/lang/Object;
    .registers 5
    .param p1, "position"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 155
    .local p0, "this":Ltds/androidx/recyclerview/widget/AsyncListUtil;, "Ltds/androidx/recyclerview/widget/AsyncListUtil<TT;>;"
    if-ltz p1, :cond_1b

    iget v0, p0, Ltds/androidx/recyclerview/widget/AsyncListUtil;->mItemCount:I

    if-ge p1, v0, :cond_1b

    .line 158
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/AsyncListUtil;->mTileList:Ltds/androidx/recyclerview/widget/TileList;

    invoke-virtual {v0, p1}, Ltds/androidx/recyclerview/widget/TileList;->getItemAt(I)Ljava/lang/Object;

    move-result-object v0

    .line 159
    .local v0, "item":Ljava/lang/Object;, "TT;"
    if-nez v0, :cond_1a

    invoke-direct {p0}, Ltds/androidx/recyclerview/widget/AsyncListUtil;->isRefreshPending()Z

    move-result v1

    if-nez v1, :cond_1a

    .line 160
    iget-object v1, p0, Ltds/androidx/recyclerview/widget/AsyncListUtil;->mMissingPositions:Landroid/util/SparseIntArray;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 162
    :cond_1a
    return-object v0

    .line 156
    .end local v0    # "item":Ljava/lang/Object;, "TT;"
    :cond_1b
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not within 0 and "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Ltds/androidx/recyclerview/widget/AsyncListUtil;->mItemCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getItemCount()I
    .registers 2

    .line 175
    .local p0, "this":Ltds/androidx/recyclerview/widget/AsyncListUtil;, "Ltds/androidx/recyclerview/widget/AsyncListUtil<TT;>;"
    iget v0, p0, Ltds/androidx/recyclerview/widget/AsyncListUtil;->mItemCount:I

    return v0
.end method

.method varargs log(Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 5
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .line 79
    .local p0, "this":Ltds/androidx/recyclerview/widget/AsyncListUtil;, "Ltds/androidx/recyclerview/widget/AsyncListUtil<TT;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[MAIN] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AsyncListUtil"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    return-void
.end method

.method public onRangeChanged()V
    .registers 2

    .line 119
    .local p0, "this":Ltds/androidx/recyclerview/widget/AsyncListUtil;, "Ltds/androidx/recyclerview/widget/AsyncListUtil<TT;>;"
    invoke-direct {p0}, Ltds/androidx/recyclerview/widget/AsyncListUtil;->isRefreshPending()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 120
    return-void

    .line 122
    :cond_7
    invoke-virtual {p0}, Ltds/androidx/recyclerview/widget/AsyncListUtil;->updateRange()V

    .line 123
    const/4 v0, 0x1

    iput-boolean v0, p0, Ltds/androidx/recyclerview/widget/AsyncListUtil;->mAllowScrollHints:Z

    .line 124
    return-void
.end method

.method public refresh()V
    .registers 3

    .line 133
    .local p0, "this":Ltds/androidx/recyclerview/widget/AsyncListUtil;, "Ltds/androidx/recyclerview/widget/AsyncListUtil<TT;>;"
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/AsyncListUtil;->mMissingPositions:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 134
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/AsyncListUtil;->mBackgroundProxy:Ltds/androidx/recyclerview/widget/ThreadUtil$BackgroundCallback;

    iget v1, p0, Ltds/androidx/recyclerview/widget/AsyncListUtil;->mRequestedGeneration:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Ltds/androidx/recyclerview/widget/AsyncListUtil;->mRequestedGeneration:I

    invoke-interface {v0, v1}, Ltds/androidx/recyclerview/widget/ThreadUtil$BackgroundCallback;->refresh(I)V

    .line 135
    return-void
.end method

.method updateRange()V
    .registers 11

    .line 179
    .local p0, "this":Ltds/androidx/recyclerview/widget/AsyncListUtil;, "Ltds/androidx/recyclerview/widget/AsyncListUtil<TT;>;"
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/AsyncListUtil;->mViewCallback:Ltds/androidx/recyclerview/widget/AsyncListUtil$ViewCallback;

    iget-object v1, p0, Ltds/androidx/recyclerview/widget/AsyncListUtil;->mTmpRange:[I

    invoke-virtual {v0, v1}, Ltds/androidx/recyclerview/widget/AsyncListUtil$ViewCallback;->getItemRangeInto([I)V

    .line 180
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/AsyncListUtil;->mTmpRange:[I

    const/4 v1, 0x0

    aget v2, v0, v1

    const/4 v3, 0x1

    aget v4, v0, v3

    if-gt v2, v4, :cond_97

    aget v2, v0, v1

    if-gez v2, :cond_17

    goto/16 :goto_97

    .line 183
    :cond_17
    aget v2, v0, v3

    iget v4, p0, Ltds/androidx/recyclerview/widget/AsyncListUtil;->mItemCount:I

    if-lt v2, v4, :cond_1e

    .line 185
    return-void

    .line 188
    :cond_1e
    iget-boolean v2, p0, Ltds/androidx/recyclerview/widget/AsyncListUtil;->mAllowScrollHints:Z

    if-nez v2, :cond_25

    .line 189
    iput v1, p0, Ltds/androidx/recyclerview/widget/AsyncListUtil;->mScrollHint:I

    goto :goto_49

    .line 190
    :cond_25
    aget v2, v0, v1

    iget-object v4, p0, Ltds/androidx/recyclerview/widget/AsyncListUtil;->mPrevRange:[I

    aget v5, v4, v3

    if-gt v2, v5, :cond_47

    aget v2, v4, v1

    aget v5, v0, v3

    if-le v2, v5, :cond_34

    goto :goto_47

    .line 193
    :cond_34
    aget v2, v0, v1

    aget v5, v4, v1

    if-ge v2, v5, :cond_3d

    .line 194
    iput v3, p0, Ltds/androidx/recyclerview/widget/AsyncListUtil;->mScrollHint:I

    goto :goto_49

    .line 195
    :cond_3d
    aget v2, v0, v1

    aget v4, v4, v1

    if-le v2, v4, :cond_49

    .line 196
    const/4 v2, 0x2

    iput v2, p0, Ltds/androidx/recyclerview/widget/AsyncListUtil;->mScrollHint:I

    goto :goto_49

    .line 192
    :cond_47
    :goto_47
    iput v1, p0, Ltds/androidx/recyclerview/widget/AsyncListUtil;->mScrollHint:I

    .line 199
    :cond_49
    :goto_49
    iget-object v2, p0, Ltds/androidx/recyclerview/widget/AsyncListUtil;->mPrevRange:[I

    aget v4, v0, v1

    aput v4, v2, v1

    .line 200
    aget v4, v0, v3

    aput v4, v2, v3

    .line 202
    iget-object v2, p0, Ltds/androidx/recyclerview/widget/AsyncListUtil;->mViewCallback:Ltds/androidx/recyclerview/widget/AsyncListUtil$ViewCallback;

    iget-object v4, p0, Ltds/androidx/recyclerview/widget/AsyncListUtil;->mTmpRangeExtended:[I

    iget v5, p0, Ltds/androidx/recyclerview/widget/AsyncListUtil;->mScrollHint:I

    invoke-virtual {v2, v0, v4, v5}, Ltds/androidx/recyclerview/widget/AsyncListUtil$ViewCallback;->extendRangeInto([I[II)V

    .line 203
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/AsyncListUtil;->mTmpRangeExtended:[I

    iget-object v2, p0, Ltds/androidx/recyclerview/widget/AsyncListUtil;->mTmpRange:[I

    aget v2, v2, v1

    aget v4, v0, v1

    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    aput v2, v0, v1

    .line 204
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/AsyncListUtil;->mTmpRangeExtended:[I

    iget-object v2, p0, Ltds/androidx/recyclerview/widget/AsyncListUtil;->mTmpRange:[I

    aget v2, v2, v3

    aget v4, v0, v3

    iget v5, p0, Ltds/androidx/recyclerview/widget/AsyncListUtil;->mItemCount:I

    sub-int/2addr v5, v3

    .line 205
    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    aput v2, v0, v3

    .line 207
    iget-object v4, p0, Ltds/androidx/recyclerview/widget/AsyncListUtil;->mBackgroundProxy:Ltds/androidx/recyclerview/widget/ThreadUtil$BackgroundCallback;

    iget-object v0, p0, Ltds/androidx/recyclerview/widget/AsyncListUtil;->mTmpRange:[I

    aget v5, v0, v1

    aget v6, v0, v3

    iget-object v0, p0, Ltds/androidx/recyclerview/widget/AsyncListUtil;->mTmpRangeExtended:[I

    aget v7, v0, v1

    aget v8, v0, v3

    iget v9, p0, Ltds/androidx/recyclerview/widget/AsyncListUtil;->mScrollHint:I

    invoke-interface/range {v4 .. v9}, Ltds/androidx/recyclerview/widget/ThreadUtil$BackgroundCallback;->updateRange(IIIII)V

    .line 209
    return-void

    .line 181
    :cond_97
    :goto_97
    return-void
.end method
