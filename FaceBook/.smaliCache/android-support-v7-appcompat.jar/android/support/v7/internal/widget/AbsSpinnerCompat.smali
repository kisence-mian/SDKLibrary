.class abstract Landroid/support/v7/internal/widget/AbsSpinnerCompat;
.super Landroid/support/v7/internal/widget/AdapterViewCompat;
.source "AbsSpinnerCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/internal/widget/AbsSpinnerCompat$RecycleBin;,
        Landroid/support/v7/internal/widget/AbsSpinnerCompat$SavedState;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/internal/widget/AdapterViewCompat<",
        "Landroid/widget/SpinnerAdapter;",
        ">;"
    }
.end annotation


# instance fields
.field mAdapter:Landroid/widget/SpinnerAdapter;

.field private mDataSetObserver:Landroid/database/DataSetObserver;

.field mHeightMeasureSpec:I

.field final mRecycler:Landroid/support/v7/internal/widget/AbsSpinnerCompat$RecycleBin;

.field mSelectionBottomPadding:I

.field mSelectionLeftPadding:I

.field mSelectionRightPadding:I

.field mSelectionTopPadding:I

.field final mSpinnerPadding:Landroid/graphics/Rect;

.field private mTouchFrame:Landroid/graphics/Rect;

.field mWidthMeasureSpec:I


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 54
    invoke-direct {p0, p1}, Landroid/support/v7/internal/widget/AdapterViewCompat;-><init>(Landroid/content/Context;)V

    .line 41
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->mSelectionLeftPadding:I

    .line 42
    iput v0, p0, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->mSelectionTopPadding:I

    .line 43
    iput v0, p0, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->mSelectionRightPadding:I

    .line 44
    iput v0, p0, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->mSelectionBottomPadding:I

    .line 45
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->mSpinnerPadding:Landroid/graphics/Rect;

    .line 47
    new-instance v0, Landroid/support/v7/internal/widget/AbsSpinnerCompat$RecycleBin;

    invoke-direct {v0, p0}, Landroid/support/v7/internal/widget/AbsSpinnerCompat$RecycleBin;-><init>(Landroid/support/v7/internal/widget/AbsSpinnerCompat;)V

    iput-object v0, p0, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->mRecycler:Landroid/support/v7/internal/widget/AbsSpinnerCompat$RecycleBin;

    .line 55
    invoke-direct {p0}, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->initAbsSpinner()V

    .line 56
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 59
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/internal/widget/AbsSpinnerCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 60
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .line 63
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/internal/widget/AdapterViewCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 41
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->mSelectionLeftPadding:I

    .line 42
    iput v0, p0, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->mSelectionTopPadding:I

    .line 43
    iput v0, p0, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->mSelectionRightPadding:I

    .line 44
    iput v0, p0, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->mSelectionBottomPadding:I

    .line 45
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->mSpinnerPadding:Landroid/graphics/Rect;

    .line 47
    new-instance v0, Landroid/support/v7/internal/widget/AbsSpinnerCompat$RecycleBin;

    invoke-direct {v0, p0}, Landroid/support/v7/internal/widget/AbsSpinnerCompat$RecycleBin;-><init>(Landroid/support/v7/internal/widget/AbsSpinnerCompat;)V

    iput-object v0, p0, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->mRecycler:Landroid/support/v7/internal/widget/AbsSpinnerCompat$RecycleBin;

    .line 64
    invoke-direct {p0}, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->initAbsSpinner()V

    .line 65
    return-void
.end method

.method static synthetic access$000(Landroid/support/v7/internal/widget/AbsSpinnerCompat;Landroid/view/View;Z)V
    .registers 3
    .param p0, "x0"    # Landroid/support/v7/internal/widget/AbsSpinnerCompat;
    .param p1, "x1"    # Landroid/view/View;
    .param p2, "x2"    # Z

    .line 35
    invoke-virtual {p0, p1, p2}, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->removeDetachedView(Landroid/view/View;Z)V

    return-void
.end method

.method private initAbsSpinner()V
    .registers 2

    .line 71
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->setFocusable(Z)V

    .line 72
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->setWillNotDraw(Z)V

    .line 73
    return-void
.end method


# virtual methods
.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .registers 4

    .line 229
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public bridge synthetic getAdapter()Landroid/widget/Adapter;
    .registers 2

    .line 35
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    return-object v0
.end method

.method public getAdapter()Landroid/widget/SpinnerAdapter;
    .registers 2

    .line 308
    iget-object v0, p0, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->mAdapter:Landroid/widget/SpinnerAdapter;

    return-object v0
.end method

.method getChildHeight(Landroid/view/View;)I
    .registers 3
    .param p1, "child"    # Landroid/view/View;

    .line 220
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    return v0
.end method

.method getChildWidth(Landroid/view/View;)I
    .registers 3
    .param p1, "child"    # Landroid/view/View;

    .line 224
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    return v0
.end method

.method public getCount()I
    .registers 2

    .line 313
    iget v0, p0, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->mItemCount:I

    return v0
.end method

.method public getSelectedView()Landroid/view/View;
    .registers 3

    .line 286
    iget v0, p0, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->mItemCount:I

    if-lez v0, :cond_12

    iget v0, p0, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->mSelectedPosition:I

    if-ltz v0, :cond_12

    .line 287
    iget v0, p0, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->mSelectedPosition:I

    iget v1, p0, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->mFirstPosition:I

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0

    .line 289
    :cond_12
    const/4 v0, 0x0

    return-object v0
.end method

.method abstract layout(IZ)V
.end method

.method protected onMeasure(II)V
    .registers 16
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 147
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 151
    .local v0, "widthMode":I
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->getPaddingLeft()I

    move-result v1

    .line 152
    .local v1, "paddingLeft":I
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->getPaddingTop()I

    move-result v2

    .line 153
    .local v2, "paddingTop":I
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->getPaddingRight()I

    move-result v3

    .line 154
    .local v3, "paddingRight":I
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->getPaddingBottom()I

    move-result v4

    .line 156
    .local v4, "paddingBottom":I
    iget-object v5, p0, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v6, p0, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->mSelectionLeftPadding:I

    if-le v1, v6, :cond_1b

    move v6, v1

    :cond_1b
    iput v6, v5, Landroid/graphics/Rect;->left:I

    .line 158
    iget-object v5, p0, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v6, p0, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->mSelectionTopPadding:I

    if-le v2, v6, :cond_24

    move v6, v2

    :cond_24
    iput v6, v5, Landroid/graphics/Rect;->top:I

    .line 160
    iget-object v5, p0, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v6, p0, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->mSelectionRightPadding:I

    if-le v3, v6, :cond_2d

    move v6, v3

    :cond_2d
    iput v6, v5, Landroid/graphics/Rect;->right:I

    .line 162
    iget-object v5, p0, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v6, p0, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->mSelectionBottomPadding:I

    if-le v4, v6, :cond_36

    move v6, v4

    :cond_36
    iput v6, v5, Landroid/graphics/Rect;->bottom:I

    .line 165
    iget-boolean v5, p0, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->mDataChanged:Z

    if-eqz v5, :cond_3f

    .line 166
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->handleDataChanged()V

    .line 169
    :cond_3f
    const/4 v5, 0x0

    .line 170
    .local v5, "preferredHeight":I
    const/4 v6, 0x0

    .line 171
    .local v6, "preferredWidth":I
    const/4 v7, 0x1

    .line 173
    .local v7, "needsMeasuring":Z
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->getSelectedItemPosition()I

    move-result v8

    .line 174
    .local v8, "selectedPosition":I
    const/4 v9, 0x0

    if-ltz v8, :cond_9d

    iget-object v10, p0, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->mAdapter:Landroid/widget/SpinnerAdapter;

    if-eqz v10, :cond_9d

    invoke-interface {v10}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v10

    if-ge v8, v10, :cond_9d

    .line 176
    iget-object v10, p0, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->mRecycler:Landroid/support/v7/internal/widget/AbsSpinnerCompat$RecycleBin;

    invoke-virtual {v10, v8}, Landroid/support/v7/internal/widget/AbsSpinnerCompat$RecycleBin;->get(I)Landroid/view/View;

    move-result-object v10

    .line 177
    .local v10, "view":Landroid/view/View;
    if-nez v10, :cond_62

    .line 179
    iget-object v11, p0, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->mAdapter:Landroid/widget/SpinnerAdapter;

    const/4 v12, 0x0

    invoke-interface {v11, v8, v12, p0}, Landroid/widget/SpinnerAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v10

    .line 182
    :cond_62
    if-eqz v10, :cond_9d

    .line 184
    iget-object v11, p0, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->mRecycler:Landroid/support/v7/internal/widget/AbsSpinnerCompat$RecycleBin;

    invoke-virtual {v11, v8, v10}, Landroid/support/v7/internal/widget/AbsSpinnerCompat$RecycleBin;->put(ILandroid/view/View;)V

    .line 186
    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    if-nez v11, :cond_7b

    .line 187
    const/4 v11, 0x1

    iput-boolean v11, p0, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->mBlockLayoutRequests:Z

    .line 188
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 189
    iput-boolean v9, p0, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->mBlockLayoutRequests:Z

    .line 191
    :cond_7b
    invoke-virtual {p0, v10, p1, p2}, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->measureChild(Landroid/view/View;II)V

    .line 193
    invoke-virtual {p0, v10}, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->getChildHeight(Landroid/view/View;)I

    move-result v11

    iget-object v12, p0, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->top:I

    add-int/2addr v11, v12

    iget-object v12, p0, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->bottom:I

    add-int v5, v11, v12

    .line 194
    invoke-virtual {p0, v10}, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->getChildWidth(Landroid/view/View;)I

    move-result v11

    iget-object v12, p0, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->left:I

    add-int/2addr v11, v12

    iget-object v12, p0, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->right:I

    add-int v6, v11, v12

    .line 196
    const/4 v7, 0x0

    .line 200
    .end local v10    # "view":Landroid/view/View;
    :cond_9d
    if-eqz v7, :cond_b5

    .line 202
    iget-object v10, p0, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->top:I

    iget-object v11, p0, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->bottom:I

    add-int v5, v10, v11

    .line 203
    if-nez v0, :cond_b5

    .line 204
    iget-object v10, p0, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->left:I

    iget-object v11, p0, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->right:I

    add-int v6, v10, v11

    .line 208
    :cond_b5
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->getSuggestedMinimumHeight()I

    move-result v10

    invoke-static {v5, v10}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 209
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->getSuggestedMinimumWidth()I

    move-result v10

    invoke-static {v6, v10}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 211
    invoke-static {v5, p2, v9}, Landroid/support/v4/view/ViewCompat;->resolveSizeAndState(III)I

    move-result v10

    .line 212
    .local v10, "heightSize":I
    invoke-static {v6, p1, v9}, Landroid/support/v4/view/ViewCompat;->resolveSizeAndState(III)I

    move-result v9

    .line 214
    .local v9, "widthSize":I
    invoke-virtual {p0, v9, v10}, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->setMeasuredDimension(II)V

    .line 215
    iput p2, p0, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->mHeightMeasureSpec:I

    .line 216
    iput p1, p0, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->mWidthMeasureSpec:I

    .line 217
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 8
    .param p1, "state"    # Landroid/os/Parcelable;

    .line 406
    move-object v0, p1

    check-cast v0, Landroid/support/v7/internal/widget/AbsSpinnerCompat$SavedState;

    .line 408
    .local v0, "ss":Landroid/support/v7/internal/widget/AbsSpinnerCompat$SavedState;
    invoke-virtual {v0}, Landroid/support/v7/internal/widget/AbsSpinnerCompat$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/support/v7/internal/widget/AdapterViewCompat;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 410
    iget-wide v1, v0, Landroid/support/v7/internal/widget/AbsSpinnerCompat$SavedState;->selectedId:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-ltz v5, :cond_25

    .line 411
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->mDataChanged:Z

    .line 412
    iput-boolean v1, p0, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->mNeedSync:Z

    .line 413
    iget-wide v1, v0, Landroid/support/v7/internal/widget/AbsSpinnerCompat$SavedState;->selectedId:J

    iput-wide v1, p0, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->mSyncRowId:J

    .line 414
    iget v1, v0, Landroid/support/v7/internal/widget/AbsSpinnerCompat$SavedState;->position:I

    iput v1, p0, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->mSyncPosition:I

    .line 415
    const/4 v1, 0x0

    iput v1, p0, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->mSyncMode:I

    .line 416
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->requestLayout()V

    .line 418
    :cond_25
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .registers 8

    .line 393
    invoke-super {p0}, Landroid/support/v7/internal/widget/AdapterViewCompat;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 394
    .local v0, "superState":Landroid/os/Parcelable;
    new-instance v1, Landroid/support/v7/internal/widget/AbsSpinnerCompat$SavedState;

    invoke-direct {v1, v0}, Landroid/support/v7/internal/widget/AbsSpinnerCompat$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 395
    .local v1, "ss":Landroid/support/v7/internal/widget/AbsSpinnerCompat$SavedState;
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->getSelectedItemId()J

    move-result-wide v2

    iput-wide v2, v1, Landroid/support/v7/internal/widget/AbsSpinnerCompat$SavedState;->selectedId:J

    .line 396
    iget-wide v2, v1, Landroid/support/v7/internal/widget/AbsSpinnerCompat$SavedState;->selectedId:J

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-ltz v6, :cond_1e

    .line 397
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->getSelectedItemPosition()I

    move-result v2

    iput v2, v1, Landroid/support/v7/internal/widget/AbsSpinnerCompat$SavedState;->position:I

    goto :goto_21

    .line 399
    :cond_1e
    const/4 v2, -0x1

    iput v2, v1, Landroid/support/v7/internal/widget/AbsSpinnerCompat$SavedState;->position:I

    .line 401
    :goto_21
    return-object v1
.end method

.method public pointToPosition(II)I
    .registers 8
    .param p1, "x"    # I
    .param p2, "y"    # I

    .line 325
    iget-object v0, p0, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->mTouchFrame:Landroid/graphics/Rect;

    .line 326
    .local v0, "frame":Landroid/graphics/Rect;
    if-nez v0, :cond_d

    .line 327
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->mTouchFrame:Landroid/graphics/Rect;

    .line 328
    iget-object v0, p0, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->mTouchFrame:Landroid/graphics/Rect;

    .line 331
    :cond_d
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->getChildCount()I

    move-result v1

    .line 332
    .local v1, "count":I
    add-int/lit8 v2, v1, -0x1

    .local v2, "i":I
    :goto_13
    if-ltz v2, :cond_2f

    .line 333
    invoke-virtual {p0, v2}, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 334
    .local v3, "child":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_2c

    .line 335
    invoke-virtual {v3, v0}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 336
    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v4

    if-eqz v4, :cond_2c

    .line 337
    iget v4, p0, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->mFirstPosition:I

    add-int/2addr v4, v2

    return v4

    .line 332
    .end local v3    # "child":Landroid/view/View;
    :cond_2c
    add-int/lit8 v2, v2, -0x1

    goto :goto_13

    .line 341
    .end local v2    # "i":I
    :cond_2f
    const/4 v2, -0x1

    return v2
.end method

.method recycleAllViews()V
    .registers 7

    .line 235
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->getChildCount()I

    move-result v0

    .line 236
    .local v0, "childCount":I
    iget-object v1, p0, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->mRecycler:Landroid/support/v7/internal/widget/AbsSpinnerCompat$RecycleBin;

    .line 237
    .local v1, "recycleBin":Landroid/support/v7/internal/widget/AbsSpinnerCompat$RecycleBin;
    iget v2, p0, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->mFirstPosition:I

    .line 240
    .local v2, "position":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_9
    if-ge v3, v0, :cond_17

    .line 241
    invoke-virtual {p0, v3}, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 242
    .local v4, "v":Landroid/view/View;
    add-int v5, v2, v3

    .line 243
    .local v5, "index":I
    invoke-virtual {v1, v5, v4}, Landroid/support/v7/internal/widget/AbsSpinnerCompat$RecycleBin;->put(ILandroid/view/View;)V

    .line 240
    .end local v4    # "v":Landroid/view/View;
    .end local v5    # "index":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    .line 245
    .end local v3    # "i":I
    :cond_17
    return-void
.end method

.method public requestLayout()V
    .registers 2

    .line 301
    iget-boolean v0, p0, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->mBlockLayoutRequests:Z

    if-nez v0, :cond_7

    .line 302
    invoke-super {p0}, Landroid/support/v7/internal/widget/AdapterViewCompat;->requestLayout()V

    .line 304
    :cond_7
    return-void
.end method

.method resetList()V
    .registers 4

    .line 125
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->mDataChanged:Z

    .line 126
    iput-boolean v0, p0, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->mNeedSync:Z

    .line 128
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->removeAllViewsInLayout()V

    .line 129
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->mOldSelectedPosition:I

    .line 130
    const-wide/high16 v1, -0x8000000000000000L

    iput-wide v1, p0, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->mOldSelectedRowId:J

    .line 132
    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->setSelectedPositionInt(I)V

    .line 133
    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->setNextSelectedPositionInt(I)V

    .line 134
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->invalidate()V

    .line 135
    return-void
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .registers 3
    .param p1, "x0"    # Landroid/widget/Adapter;

    .line 35
    move-object v0, p1

    check-cast v0, Landroid/widget/SpinnerAdapter;

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/SpinnerAdapter;)V
    .registers 5
    .param p1, "adapter"    # Landroid/widget/SpinnerAdapter;

    .line 83
    iget-object v0, p0, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->mAdapter:Landroid/widget/SpinnerAdapter;

    if-eqz v0, :cond_c

    .line 84
    iget-object v1, p0, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-interface {v0, v1}, Landroid/widget/SpinnerAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 85
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->resetList()V

    .line 88
    :cond_c
    iput-object p1, p0, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->mAdapter:Landroid/widget/SpinnerAdapter;

    .line 90
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->mOldSelectedPosition:I

    .line 91
    const-wide/high16 v1, -0x8000000000000000L

    iput-wide v1, p0, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->mOldSelectedRowId:J

    .line 93
    iget-object v1, p0, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->mAdapter:Landroid/widget/SpinnerAdapter;

    if-eqz v1, :cond_47

    .line 94
    iget v1, p0, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->mItemCount:I

    iput v1, p0, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->mOldItemCount:I

    .line 95
    iget-object v1, p0, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->mAdapter:Landroid/widget/SpinnerAdapter;

    invoke-interface {v1}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v1

    iput v1, p0, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->mItemCount:I

    .line 96
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->checkFocus()V

    .line 98
    new-instance v1, Landroid/support/v7/internal/widget/AdapterViewCompat$AdapterDataSetObserver;

    invoke-direct {v1, p0}, Landroid/support/v7/internal/widget/AdapterViewCompat$AdapterDataSetObserver;-><init>(Landroid/support/v7/internal/widget/AdapterViewCompat;)V

    iput-object v1, p0, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->mDataSetObserver:Landroid/database/DataSetObserver;

    .line 99
    iget-object v2, p0, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->mAdapter:Landroid/widget/SpinnerAdapter;

    invoke-interface {v2, v1}, Landroid/widget/SpinnerAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 101
    iget v1, p0, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->mItemCount:I

    if-lez v1, :cond_39

    const/4 v0, 0x0

    .line 103
    .local v0, "position":I
    :cond_39
    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->setSelectedPositionInt(I)V

    .line 104
    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->setNextSelectedPositionInt(I)V

    .line 106
    iget v1, p0, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->mItemCount:I

    if-nez v1, :cond_46

    .line 108
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->checkSelectionChanged()V

    .line 111
    .end local v0    # "position":I
    :cond_46
    goto :goto_50

    .line 112
    :cond_47
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->checkFocus()V

    .line 113
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->resetList()V

    .line 115
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->checkSelectionChanged()V

    .line 118
    :goto_50
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->requestLayout()V

    .line 119
    return-void
.end method

.method public setSelection(I)V
    .registers 2
    .param p1, "position"    # I

    .line 259
    invoke-virtual {p0, p1}, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->setNextSelectedPositionInt(I)V

    .line 260
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->requestLayout()V

    .line 261
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->invalidate()V

    .line 262
    return-void
.end method

.method public setSelection(IZ)V
    .registers 6
    .param p1, "position"    # I
    .param p2, "animate"    # Z

    .line 252
    const/4 v0, 0x1

    if-eqz p2, :cond_12

    iget v1, p0, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->mFirstPosition:I

    if-gt v1, p1, :cond_12

    iget v1, p0, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->mFirstPosition:I

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->getChildCount()I

    move-result v2

    add-int/2addr v1, v2

    sub-int/2addr v1, v0

    if-gt p1, v1, :cond_12

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    .line 254
    .local v0, "shouldAnimate":Z
    :goto_13
    invoke-virtual {p0, p1, v0}, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->setSelectionInt(IZ)V

    .line 255
    return-void
.end method

.method setSelectionInt(IZ)V
    .registers 5
    .param p1, "position"    # I
    .param p2, "animate"    # Z

    .line 273
    iget v0, p0, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->mOldSelectedPosition:I

    if-eq p1, v0, :cond_14

    .line 274
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->mBlockLayoutRequests:Z

    .line 275
    iget v0, p0, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->mSelectedPosition:I

    sub-int v0, p1, v0

    .line 276
    .local v0, "delta":I
    invoke-virtual {p0, p1}, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->setNextSelectedPositionInt(I)V

    .line 277
    invoke-virtual {p0, v0, p2}, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->layout(IZ)V

    .line 278
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->mBlockLayoutRequests:Z

    .line 280
    .end local v0    # "delta":I
    :cond_14
    return-void
.end method
