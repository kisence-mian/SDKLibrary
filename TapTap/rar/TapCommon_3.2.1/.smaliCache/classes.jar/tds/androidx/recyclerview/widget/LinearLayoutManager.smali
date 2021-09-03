.class public Ltds/androidx/recyclerview/widget/LinearLayoutManager;
.super Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;
.source "LinearLayoutManager.java"

# interfaces
.implements Ltds/androidx/recyclerview/widget/ItemTouchHelper$ViewDropHandler;
.implements Ltds/androidx/recyclerview/widget/RecyclerView$SmoothScroller$ScrollVectorProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltds/androidx/recyclerview/widget/LinearLayoutManager$LayoutChunkResult;,
        Ltds/androidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;,
        Ltds/androidx/recyclerview/widget/LinearLayoutManager$SavedState;,
        Ltds/androidx/recyclerview/widget/LinearLayoutManager$LayoutState;
    }
.end annotation


# static fields
.field static final DEBUG:Z = false

.field public static final HORIZONTAL:I = 0x0

.field public static final INVALID_OFFSET:I = -0x80000000

.field private static final MAX_SCROLL_FACTOR:F = 0.33333334f

.field private static final TAG:Ljava/lang/String; = "LinearLayoutManager"

.field public static final VERTICAL:I = 0x1


# instance fields
.field final mAnchorInfo:Ltds/androidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;

.field private mInitialPrefetchItemCount:I

.field private mLastStackFromEnd:Z

.field private final mLayoutChunkResult:Ltds/androidx/recyclerview/widget/LinearLayoutManager$LayoutChunkResult;

.field private mLayoutState:Ltds/androidx/recyclerview/widget/LinearLayoutManager$LayoutState;

.field mOrientation:I

.field mOrientationHelper:Ltds/androidx/recyclerview/widget/OrientationHelper;

.field mPendingSavedState:Ltds/androidx/recyclerview/widget/LinearLayoutManager$SavedState;

.field mPendingScrollPosition:I

.field mPendingScrollPositionOffset:I

.field private mRecycleChildrenOnDetach:Z

.field private mReusableIntPair:[I

.field private mReverseLayout:Z

.field mShouldReverseLayout:Z

.field private mSmoothScrollbarEnabled:Z

.field private mStackFromEnd:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .line 159
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Ltds/androidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 160
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IZ)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "orientation"    # I
    .param p3, "reverseLayout"    # Z

    .line 169
    invoke-direct {p0}, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;-><init>()V

    .line 67
    const/4 v0, 0x1

    iput v0, p0, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->mOrientation:I

    .line 94
    const/4 v1, 0x0

    iput-boolean v1, p0, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->mReverseLayout:Z

    .line 101
    iput-boolean v1, p0, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    .line 108
    iput-boolean v1, p0, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->mStackFromEnd:Z

    .line 114
    iput-boolean v0, p0, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->mSmoothScrollbarEnabled:Z

    .line 120
    const/4 v0, -0x1

    iput v0, p0, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->mPendingScrollPosition:I

    .line 126
    const/high16 v0, -0x80000000

    iput v0, p0, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->mPendingScrollPositionOffset:I

    .line 130
    const/4 v0, 0x0

    iput-object v0, p0, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->mPendingSavedState:Ltds/androidx/recyclerview/widget/LinearLayoutManager$SavedState;

    .line 136
    new-instance v0, Ltds/androidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;

    invoke-direct {v0}, Ltds/androidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;-><init>()V

    iput-object v0, p0, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->mAnchorInfo:Ltds/androidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;

    .line 141
    new-instance v0, Ltds/androidx/recyclerview/widget/LinearLayoutManager$LayoutChunkResult;

    invoke-direct {v0}, Ltds/androidx/recyclerview/widget/LinearLayoutManager$LayoutChunkResult;-><init>()V

    iput-object v0, p0, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->mLayoutChunkResult:Ltds/androidx/recyclerview/widget/LinearLayoutManager$LayoutChunkResult;

    .line 146
    const/4 v0, 0x2

    iput v0, p0, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->mInitialPrefetchItemCount:I

    .line 151
    new-array v0, v0, [I

    iput-object v0, p0, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->mReusableIntPair:[I

    .line 170
    invoke-virtual {p0, p2}, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    .line 171
    invoke-virtual {p0, p3}, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->setReverseLayout(Z)V

    .line 172
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 183
    invoke-direct {p0}, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;-><init>()V

    .line 67
    const/4 v0, 0x1

    iput v0, p0, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->mOrientation:I

    .line 94
    const/4 v1, 0x0

    iput-boolean v1, p0, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->mReverseLayout:Z

    .line 101
    iput-boolean v1, p0, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    .line 108
    iput-boolean v1, p0, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->mStackFromEnd:Z

    .line 114
    iput-boolean v0, p0, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->mSmoothScrollbarEnabled:Z

    .line 120
    const/4 v0, -0x1

    iput v0, p0, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->mPendingScrollPosition:I

    .line 126
    const/high16 v0, -0x80000000

    iput v0, p0, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->mPendingScrollPositionOffset:I

    .line 130
    const/4 v0, 0x0

    iput-object v0, p0, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->mPendingSavedState:Ltds/androidx/recyclerview/widget/LinearLayoutManager$SavedState;

    .line 136
    new-instance v0, Ltds/androidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;

    invoke-direct {v0}, Ltds/androidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;-><init>()V

    iput-object v0, p0, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->mAnchorInfo:Ltds/androidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;

    .line 141
    new-instance v0, Ltds/androidx/recyclerview/widget/LinearLayoutManager$LayoutChunkResult;

    invoke-direct {v0}, Ltds/androidx/recyclerview/widget/LinearLayoutManager$LayoutChunkResult;-><init>()V

    iput-object v0, p0, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->mLayoutChunkResult:Ltds/androidx/recyclerview/widget/LinearLayoutManager$LayoutChunkResult;

    .line 146
    const/4 v0, 0x2

    iput v0, p0, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->mInitialPrefetchItemCount:I

    .line 151
    new-array v0, v0, [I

    iput-object v0, p0, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->mReusableIntPair:[I

    .line 184
    invoke-static {p1, p2, p3, p4}, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->getProperties(Landroid/content/Context;Landroid/util/AttributeSet;II)Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager$Properties;

    move-result-object v0

    .line 185
    .local v0, "properties":Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager$Properties;
    iget v1, v0, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager$Properties;->orientation:I

    invoke-virtual {p0, v1}, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    .line 186
    iget-boolean v1, v0, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager$Properties;->reverseLayout:Z

    invoke-virtual {p0, v1}, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->setReverseLayout(Z)V

    .line 187
    iget-boolean v1, v0, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager$Properties;->stackFromEnd:Z

    invoke-virtual {p0, v1}, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->setStackFromEnd(Z)V

    .line 188
    return-void
.end method

.method private computeScrollExtent(Ltds/androidx/recyclerview/widget/RecyclerView$State;)I
    .registers 9
    .param p1, "state"    # Ltds/androidx/recyclerview/widget/RecyclerView$State;

    .line 1181
    invoke-virtual {p0}, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->getChildCount()I

    move-result v0

    if-nez v0, :cond_8

    .line 1182
    const/4 v0, 0x0

    return v0

    .line 1184
    :cond_8
    invoke-virtual {p0}, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->ensureLayoutState()V

    .line 1185
    iget-object v2, p0, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Ltds/androidx/recyclerview/widget/OrientationHelper;

    iget-boolean v0, p0, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->mSmoothScrollbarEnabled:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    .line 1186
    invoke-virtual {p0, v0, v1}, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleChildClosestToStart(ZZ)Landroid/view/View;

    move-result-object v3

    iget-boolean v0, p0, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->mSmoothScrollbarEnabled:Z

    xor-int/2addr v0, v1

    .line 1187
    invoke-virtual {p0, v0, v1}, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleChildClosestToEnd(ZZ)Landroid/view/View;

    move-result-object v4

    iget-boolean v6, p0, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->mSmoothScrollbarEnabled:Z

    .line 1185
    move-object v1, p1

    move-object v5, p0

    invoke-static/range {v1 .. v6}, Ltds/androidx/recyclerview/widget/ScrollbarHelper;->computeScrollExtent(Ltds/androidx/recyclerview/widget/RecyclerView$State;Ltds/androidx/recyclerview/widget/OrientationHelper;Landroid/view/View;Landroid/view/View;Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;Z)I

    move-result v0

    return v0
.end method

.method private computeScrollOffset(Ltds/androidx/recyclerview/widget/RecyclerView$State;)I
    .registers 10
    .param p1, "state"    # Ltds/androidx/recyclerview/widget/RecyclerView$State;

    .line 1170
    invoke-virtual {p0}, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->getChildCount()I

    move-result v0

    if-nez v0, :cond_8

    .line 1171
    const/4 v0, 0x0

    return v0

    .line 1173
    :cond_8
    invoke-virtual {p0}, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->ensureLayoutState()V

    .line 1174
    iget-object v2, p0, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Ltds/androidx/recyclerview/widget/OrientationHelper;

    iget-boolean v0, p0, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->mSmoothScrollbarEnabled:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    .line 1175
    invoke-virtual {p0, v0, v1}, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleChildClosestToStart(ZZ)Landroid/view/View;

    move-result-object v3

    iget-boolean v0, p0, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->mSmoothScrollbarEnabled:Z

    xor-int/2addr v0, v1

    .line 1176
    invoke-virtual {p0, v0, v1}, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleChildClosestToEnd(ZZ)Landroid/view/View;

    move-result-object v4

    iget-boolean v6, p0, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->mSmoothScrollbarEnabled:Z

    iget-boolean v7, p0, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    .line 1174
    move-object v1, p1

    move-object v5, p0

    invoke-static/range {v1 .. v7}, Ltds/androidx/recyclerview/widget/ScrollbarHelper;->computeScrollOffset(Ltds/androidx/recyclerview/widget/RecyclerView$State;Ltds/androidx/recyclerview/widget/OrientationHelper;Landroid/view/View;Landroid/view/View;Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;ZZ)I

    move-result v0

    return v0
.end method

.method private computeScrollRange(Ltds/androidx/recyclerview/widget/RecyclerView$State;)I
    .registers 9
    .param p1, "state"    # Ltds/androidx/recyclerview/widget/RecyclerView$State;

    .line 1192
    invoke-virtual {p0}, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->getChildCount()I

    move-result v0

    if-nez v0, :cond_8

    .line 1193
    const/4 v0, 0x0

    return v0

    .line 1195
    :cond_8
    invoke-virtual {p0}, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->ensureLayoutState()V

    .line 1196
    iget-object v2, p0, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Ltds/androidx/recyclerview/widget/OrientationHelper;

    iget-boolean v0, p0, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->mSmoothScrollbarEnabled:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    .line 1197
    invoke-virtual {p0, v0, v1}, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleChildClosestToStart(ZZ)Landroid/view/View;

    move-result-object v3

    iget-boolean v0, p0, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->mSmoothScrollbarEnabled:Z

    xor-int/2addr v0, v1

    .line 1198
    invoke-virtual {p0, v0, v1}, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleChildClosestToEnd(ZZ)Landroid/view/View;

    move-result-object v4

    iget-boolean v6, p0, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->mSmoothScrollbarEnabled:Z

    .line 1196
    move-object v1, p1

    move-object v5, p0

    invoke-static/range {v1 .. v6}, Ltds/androidx/recyclerview/widget/ScrollbarHelper;->computeScrollRange(Ltds/androidx/recyclerview/widget/RecyclerView$State;Ltds/androidx/recyclerview/widget/OrientationHelper;Landroid/view/View;Landroid/view/View;Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;Z)I

    move-result v0

    return v0
.end method

.method private findFirstPartiallyOrCompletelyInvisibleChild()Landroid/view/View;
    .registers 3

    .line 1924
    invoke-virtual {p0}, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->findOnePartiallyOrCompletelyInvisibleChild(II)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private findLastPartiallyOrCompletelyInvisibleChild()Landroid/view/View;
    .registers 3

    .line 1928
    invoke-virtual {p0}, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->findOnePartiallyOrCompletelyInvisibleChild(II)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private findPartiallyOrCompletelyInvisibleChildClosestToEnd()Landroid/view/View;
    .registers 2

    .line 1912
    iget-boolean v0, p0, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    if-eqz v0, :cond_9

    invoke-direct {p0}, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->findFirstPartiallyOrCompletelyInvisibleChild()Landroid/view/View;

    move-result-object v0

    goto :goto_d

    .line 1913
    :cond_9
    invoke-direct {p0}, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->findLastPartiallyOrCompletelyInvisibleChild()Landroid/view/View;

    move-result-object v0

    .line 1912
    :goto_d
    return-object v0
.end method

.method private findPartiallyOrCompletelyInvisibleChildClosestToStart()Landroid/view/View;
    .registers 2

    .line 1919
    iget-boolean v0, p0, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    if-eqz v0, :cond_9

    invoke-direct {p0}, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->findLastPartiallyOrCompletelyInvisibleChild()Landroid/view/View;

    move-result-object v0

    goto :goto_d

    .line 1920
    :cond_9
    invoke-direct {p0}, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->findFirstPartiallyOrCompletelyInvisibleChild()Landroid/view/View;

    move-result-object v0

    .line 1919
    :goto_d
    return-object v0
.end method

.method private fixLayoutEndGap(ILtds/androidx/recyclerview/widget/RecyclerView$Recycler;Ltds/androidx/recyclerview/widget/RecyclerView$State;Z)I
    .registers 8
    .param p1, "endOffset"    # I
    .param p2, "recycler"    # Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;
    .param p3, "state"    # Ltds/androidx/recyclerview/widget/RecyclerView$State;
    .param p4, "canOffsetChildren"    # Z

    .line 969
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Ltds/androidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {v0}, Ltds/androidx/recyclerview/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v0

    sub-int/2addr v0, p1

    .line 970
    .local v0, "gap":I
    const/4 v1, 0x0

    .line 971
    .local v1, "fixOffset":I
    if-lez v0, :cond_26

    .line 972
    neg-int v2, v0

    invoke-virtual {p0, v2, p2, p3}, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->scrollBy(ILtds/androidx/recyclerview/widget/RecyclerView$Recycler;Ltds/androidx/recyclerview/widget/RecyclerView$State;)I

    move-result v2

    neg-int v1, v2

    .line 977
    add-int/2addr p1, v1

    .line 978
    if-eqz p4, :cond_25

    .line 980
    iget-object v2, p0, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Ltds/androidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {v2}, Ltds/androidx/recyclerview/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v2

    sub-int v0, v2, p1

    .line 981
    if-lez v0, :cond_25

    .line 982
    iget-object v2, p0, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Ltds/androidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {v2, v0}, Ltds/androidx/recyclerview/widget/OrientationHelper;->offsetChildren(I)V

    .line 983
    add-int v2, v0, v1

    return v2

    .line 986
    :cond_25
    return v1

    .line 974
    :cond_26
    const/4 v2, 0x0

    return v2
.end method

.method private fixLayoutStartGap(ILtds/androidx/recyclerview/widget/RecyclerView$Recycler;Ltds/androidx/recyclerview/widget/RecyclerView$State;Z)I
    .registers 9
    .param p1, "startOffset"    # I
    .param p2, "recycler"    # Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;
    .param p3, "state"    # Ltds/androidx/recyclerview/widget/RecyclerView$State;
    .param p4, "canOffsetChildren"    # Z

    .line 994
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Ltds/androidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {v0}, Ltds/androidx/recyclerview/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v0

    sub-int v0, p1, v0

    .line 995
    .local v0, "gap":I
    const/4 v1, 0x0

    .line 996
    .local v1, "fixOffset":I
    if-lez v0, :cond_27

    .line 998
    invoke-virtual {p0, v0, p2, p3}, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->scrollBy(ILtds/androidx/recyclerview/widget/RecyclerView$Recycler;Ltds/androidx/recyclerview/widget/RecyclerView$State;)I

    move-result v2

    neg-int v1, v2

    .line 1002
    add-int/2addr p1, v1

    .line 1003
    if-eqz p4, :cond_26

    .line 1005
    iget-object v2, p0, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Ltds/androidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {v2}, Ltds/androidx/recyclerview/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v2

    sub-int v0, p1, v2

    .line 1006
    if-lez v0, :cond_26

    .line 1007
    iget-object v2, p0, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Ltds/androidx/recyclerview/widget/OrientationHelper;

    neg-int v3, v0

    invoke-virtual {v2, v3}, Ltds/androidx/recyclerview/widget/OrientationHelper;->offsetChildren(I)V

    .line 1008
    sub-int v2, v1, v0

    return v2

    .line 1011
    :cond_26
    return v1

    .line 1000
    :cond_27
    const/4 v2, 0x0

    return v2
.end method

.method private getChildClosestToEnd()Landroid/view/View;
    .registers 2

    .line 1775
    iget-boolean v0, p0, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    if-eqz v0, :cond_6

    const/4 v0, 0x0

    goto :goto_c

    :cond_6
    invoke-virtual {p0}, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_c
    invoke-virtual {p0, v0}, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private getChildClosestToStart()Landroid/view/View;
    .registers 2

    .line 1765
    iget-boolean v0, p0, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    if-eqz v0, :cond_b

    invoke-virtual {p0}, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    invoke-virtual {p0, v0}, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private layoutForPredictiveAnimations(Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;Ltds/androidx/recyclerview/widget/RecyclerView$State;II)V
    .registers 21
    .param p1, "recycler"    # Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;
    .param p2, "state"    # Ltds/androidx/recyclerview/widget/RecyclerView$State;
    .param p3, "startOffset"    # I
    .param p4, "endOffset"    # I

    .line 759
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual/range {p2 .. p2}, Ltds/androidx/recyclerview/widget/RecyclerView$State;->willRunPredictiveAnimations()Z

    move-result v3

    if-eqz v3, :cond_c1

    invoke-virtual/range {p0 .. p0}, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->getChildCount()I

    move-result v3

    if-eqz v3, :cond_c1

    invoke-virtual/range {p2 .. p2}, Ltds/androidx/recyclerview/widget/RecyclerView$State;->isPreLayout()Z

    move-result v3

    if-nez v3, :cond_c1

    .line 760
    invoke-virtual/range {p0 .. p0}, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->supportsPredictiveItemAnimations()Z

    move-result v3

    if-nez v3, :cond_24

    move/from16 v11, p3

    move/from16 v12, p4

    goto/16 :goto_c5

    .line 764
    :cond_24
    const/4 v3, 0x0

    .local v3, "scrapExtraStart":I
    const/4 v4, 0x0

    .line 765
    .local v4, "scrapExtraEnd":I
    invoke-virtual/range {p1 .. p1}, Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;->getScrapList()Ljava/util/List;

    move-result-object v5

    .line 766
    .local v5, "scrapList":Ljava/util/List;, "Ljava/util/List<Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;>;"
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    .line 767
    .local v6, "scrapSize":I
    const/4 v7, 0x0

    invoke-virtual {v0, v7}, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v0, v8}, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v8

    .line 768
    .local v8, "firstChildPos":I
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_38
    if-ge v9, v6, :cond_6f

    .line 769
    invoke-interface {v5, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 770
    .local v10, "scrap":Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;
    invoke-virtual {v10}, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->isRemoved()Z

    move-result v11

    if-eqz v11, :cond_47

    .line 771
    goto :goto_6c

    .line 773
    :cond_47
    invoke-virtual {v10}, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    move-result v11

    .line 774
    .local v11, "position":I
    const/4 v12, 0x1

    if-ge v11, v8, :cond_50

    move v13, v12

    goto :goto_51

    :cond_50
    move v13, v7

    :goto_51
    iget-boolean v14, v0, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    const/4 v15, -0x1

    if-eq v13, v14, :cond_57

    move v12, v15

    .line 776
    .local v12, "direction":I
    :cond_57
    if-ne v12, v15, :cond_63

    .line 777
    iget-object v13, v0, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Ltds/androidx/recyclerview/widget/OrientationHelper;

    iget-object v14, v10, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v13, v14}, Ltds/androidx/recyclerview/widget/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v13

    add-int/2addr v3, v13

    goto :goto_6c

    .line 779
    :cond_63
    iget-object v13, v0, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Ltds/androidx/recyclerview/widget/OrientationHelper;

    iget-object v14, v10, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v13, v14}, Ltds/androidx/recyclerview/widget/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v13

    add-int/2addr v4, v13

    .line 768
    .end local v10    # "scrap":Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;
    .end local v11    # "position":I
    .end local v12    # "direction":I
    :goto_6c
    add-int/lit8 v9, v9, 0x1

    goto :goto_38

    .line 787
    .end local v9    # "i":I
    :cond_6f
    iget-object v9, v0, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Ltds/androidx/recyclerview/widget/LinearLayoutManager$LayoutState;

    iput-object v5, v9, Ltds/androidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mScrapList:Ljava/util/List;

    .line 788
    if-lez v3, :cond_95

    .line 789
    invoke-direct/range {p0 .. p0}, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->getChildClosestToStart()Landroid/view/View;

    move-result-object v9

    .line 790
    .local v9, "anchor":Landroid/view/View;
    invoke-virtual {v0, v9}, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v10

    move/from16 v11, p3

    invoke-direct {v0, v10, v11}, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->updateLayoutStateToFillStart(II)V

    .line 791
    iget-object v10, v0, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Ltds/androidx/recyclerview/widget/LinearLayoutManager$LayoutState;

    iput v3, v10, Ltds/androidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mExtraFillSpace:I

    .line 792
    iget-object v10, v0, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Ltds/androidx/recyclerview/widget/LinearLayoutManager$LayoutState;

    iput v7, v10, Ltds/androidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mAvailable:I

    .line 793
    iget-object v10, v0, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Ltds/androidx/recyclerview/widget/LinearLayoutManager$LayoutState;

    invoke-virtual {v10}, Ltds/androidx/recyclerview/widget/LinearLayoutManager$LayoutState;->assignPositionFromScrapList()V

    .line 794
    iget-object v10, v0, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Ltds/androidx/recyclerview/widget/LinearLayoutManager$LayoutState;

    invoke-virtual {v0, v1, v10, v2, v7}, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->fill(Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;Ltds/androidx/recyclerview/widget/LinearLayoutManager$LayoutState;Ltds/androidx/recyclerview/widget/RecyclerView$State;Z)I

    goto :goto_97

    .line 788
    .end local v9    # "anchor":Landroid/view/View;
    :cond_95
    move/from16 v11, p3

    .line 797
    :goto_97
    if-lez v4, :cond_b9

    .line 798
    invoke-direct/range {p0 .. p0}, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->getChildClosestToEnd()Landroid/view/View;

    move-result-object v9

    .line 799
    .restart local v9    # "anchor":Landroid/view/View;
    invoke-virtual {v0, v9}, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v10

    move/from16 v12, p4

    invoke-direct {v0, v10, v12}, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->updateLayoutStateToFillEnd(II)V

    .line 800
    iget-object v10, v0, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Ltds/androidx/recyclerview/widget/LinearLayoutManager$LayoutState;

    iput v4, v10, Ltds/androidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mExtraFillSpace:I

    .line 801
    iget-object v10, v0, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Ltds/androidx/recyclerview/widget/LinearLayoutManager$LayoutState;

    iput v7, v10, Ltds/androidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mAvailable:I

    .line 802
    iget-object v10, v0, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Ltds/androidx/recyclerview/widget/LinearLayoutManager$LayoutState;

    invoke-virtual {v10}, Ltds/androidx/recyclerview/widget/LinearLayoutManager$LayoutState;->assignPositionFromScrapList()V

    .line 803
    iget-object v10, v0, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Ltds/androidx/recyclerview/widget/LinearLayoutManager$LayoutState;

    invoke-virtual {v0, v1, v10, v2, v7}, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->fill(Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;Ltds/androidx/recyclerview/widget/LinearLayoutManager$LayoutState;Ltds/androidx/recyclerview/widget/RecyclerView$State;Z)I

    goto :goto_bb

    .line 797
    .end local v9    # "anchor":Landroid/view/View;
    :cond_b9
    move/from16 v12, p4

    .line 805
    :goto_bb
    iget-object v7, v0, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Ltds/androidx/recyclerview/widget/LinearLayoutManager$LayoutState;

    const/4 v9, 0x0

    iput-object v9, v7, Ltds/androidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mScrapList:Ljava/util/List;

    .line 806
    return-void

    .line 759
    .end local v3    # "scrapExtraStart":I
    .end local v4    # "scrapExtraEnd":I
    .end local v5    # "scrapList":Ljava/util/List;, "Ljava/util/List<Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;>;"
    .end local v6    # "scrapSize":I
    .end local v8    # "firstChildPos":I
    :cond_c1
    move/from16 v11, p3

    move/from16 v12, p4

    .line 761
    :goto_c5
    return-void
.end method

.method private logChildren()V
    .registers 6

    .line 2116
    const-string v0, "LinearLayoutManager"

    const-string v1, "internal representation of views on the screen"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2117
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_8
    invoke-virtual {p0}, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_3f

    .line 2118
    invoke-virtual {p0, v1}, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 2119
    .local v2, "child":Landroid/view/View;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "item "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0, v2}, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", coord:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Ltds/androidx/recyclerview/widget/OrientationHelper;

    .line 2120
    invoke-virtual {v4, v2}, Ltds/androidx/recyclerview/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2119
    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2117
    .end local v2    # "child":Landroid/view/View;
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 2122
    .end local v1    # "i":I
    :cond_3f
    const-string v1, "=============="

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2123
    return-void
.end method

.method private recycleByLayoutState(Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;Ltds/androidx/recyclerview/widget/LinearLayoutManager$LayoutState;)V
    .registers 7
    .param p1, "recycler"    # Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;
    .param p2, "layoutState"    # Ltds/androidx/recyclerview/widget/LinearLayoutManager$LayoutState;

    .line 1550
    iget-boolean v0, p2, Ltds/androidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mRecycle:Z

    if-eqz v0, :cond_1a

    iget-boolean v0, p2, Ltds/androidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mInfinite:Z

    if-eqz v0, :cond_9

    goto :goto_1a

    .line 1553
    :cond_9
    iget v0, p2, Ltds/androidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mScrollingOffset:I

    .line 1554
    .local v0, "scrollingOffset":I
    iget v1, p2, Ltds/androidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mNoRecycleSpace:I

    .line 1555
    .local v1, "noRecycleSpace":I
    iget v2, p2, Ltds/androidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mLayoutDirection:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_16

    .line 1556
    invoke-direct {p0, p1, v0, v1}, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->recycleViewsFromEnd(Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;II)V

    goto :goto_19

    .line 1558
    :cond_16
    invoke-direct {p0, p1, v0, v1}, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->recycleViewsFromStart(Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;II)V

    .line 1560
    :goto_19
    return-void

    .line 1551
    .end local v0    # "scrollingOffset":I
    .end local v1    # "noRecycleSpace":I
    :cond_1a
    :goto_1a
    return-void
.end method

.method private recycleChildren(Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;II)V
    .registers 5
    .param p1, "recycler"    # Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;
    .param p2, "startIndex"    # I
    .param p3, "endIndex"    # I

    .line 1425
    if-ne p2, p3, :cond_3

    .line 1426
    return-void

    .line 1431
    :cond_3
    if-le p3, p2, :cond_10

    .line 1432
    add-int/lit8 v0, p3, -0x1

    .local v0, "i":I
    :goto_7
    if-lt v0, p2, :cond_f

    .line 1433
    invoke-virtual {p0, v0, p1}, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->removeAndRecycleViewAt(ILtds/androidx/recyclerview/widget/RecyclerView$Recycler;)V

    .line 1432
    add-int/lit8 v0, v0, -0x1

    goto :goto_7

    .end local v0    # "i":I
    :cond_f
    goto :goto_19

    .line 1436
    :cond_10
    move v0, p2

    .restart local v0    # "i":I
    :goto_11
    if-le v0, p3, :cond_19

    .line 1437
    invoke-virtual {p0, v0, p1}, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->removeAndRecycleViewAt(ILtds/androidx/recyclerview/widget/RecyclerView$Recycler;)V

    .line 1436
    add-int/lit8 v0, v0, -0x1

    goto :goto_11

    .line 1440
    .end local v0    # "i":I
    :cond_19
    :goto_19
    return-void
.end method

.method private recycleViewsFromEnd(Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;II)V
    .registers 9
    .param p1, "recycler"    # Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;
    .param p2, "scrollingOffset"    # I
    .param p3, "noRecycleSpace"    # I

    .line 1506
    invoke-virtual {p0}, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->getChildCount()I

    move-result v0

    .line 1507
    .local v0, "childCount":I
    if-gez p2, :cond_7

    .line 1512
    return-void

    .line 1514
    :cond_7
    iget-object v1, p0, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Ltds/androidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {v1}, Ltds/androidx/recyclerview/widget/OrientationHelper;->getEnd()I

    move-result v1

    sub-int/2addr v1, p2

    add-int/2addr v1, p3

    .line 1515
    .local v1, "limit":I
    iget-boolean v2, p0, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    if-eqz v2, :cond_34

    .line 1516
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_14
    if-ge v2, v0, :cond_33

    .line 1517
    invoke-virtual {p0, v2}, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1518
    .local v3, "child":Landroid/view/View;
    iget-object v4, p0, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Ltds/androidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {v4, v3}, Ltds/androidx/recyclerview/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v4

    if-lt v4, v1, :cond_2e

    iget-object v4, p0, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Ltds/androidx/recyclerview/widget/OrientationHelper;

    .line 1519
    invoke-virtual {v4, v3}, Ltds/androidx/recyclerview/widget/OrientationHelper;->getTransformedStartWithDecoration(Landroid/view/View;)I

    move-result v4

    if-ge v4, v1, :cond_2b

    goto :goto_2e

    .line 1516
    .end local v3    # "child":Landroid/view/View;
    :cond_2b
    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    .line 1521
    .restart local v3    # "child":Landroid/view/View;
    :cond_2e
    :goto_2e
    const/4 v4, 0x0

    invoke-direct {p0, p1, v4, v2}, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->recycleChildren(Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;II)V

    .line 1522
    return-void

    .line 1516
    .end local v2    # "i":I
    .end local v3    # "child":Landroid/view/View;
    :cond_33
    goto :goto_56

    .line 1526
    :cond_34
    add-int/lit8 v2, v0, -0x1

    .restart local v2    # "i":I
    :goto_36
    if-ltz v2, :cond_56

    .line 1527
    invoke-virtual {p0, v2}, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1528
    .restart local v3    # "child":Landroid/view/View;
    iget-object v4, p0, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Ltds/androidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {v4, v3}, Ltds/androidx/recyclerview/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v4

    if-lt v4, v1, :cond_50

    iget-object v4, p0, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Ltds/androidx/recyclerview/widget/OrientationHelper;

    .line 1529
    invoke-virtual {v4, v3}, Ltds/androidx/recyclerview/widget/OrientationHelper;->getTransformedStartWithDecoration(Landroid/view/View;)I

    move-result v4

    if-ge v4, v1, :cond_4d

    goto :goto_50

    .line 1526
    .end local v3    # "child":Landroid/view/View;
    :cond_4d
    add-int/lit8 v2, v2, -0x1

    goto :goto_36

    .line 1531
    .restart local v3    # "child":Landroid/view/View;
    :cond_50
    :goto_50
    add-int/lit8 v4, v0, -0x1

    invoke-direct {p0, p1, v4, v2}, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->recycleChildren(Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;II)V

    .line 1532
    return-void

    .line 1536
    .end local v2    # "i":I
    .end local v3    # "child":Landroid/view/View;
    :cond_56
    :goto_56
    return-void
.end method

.method private recycleViewsFromStart(Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;II)V
    .registers 9
    .param p1, "recycler"    # Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;
    .param p2, "scrollingOffset"    # I
    .param p3, "noRecycleSpace"    # I

    .line 1457
    if-gez p2, :cond_3

    .line 1462
    return-void

    .line 1465
    :cond_3
    sub-int v0, p2, p3

    .line 1466
    .local v0, "limit":I
    invoke-virtual {p0}, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->getChildCount()I

    move-result v1

    .line 1467
    .local v1, "childCount":I
    iget-boolean v2, p0, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    if-eqz v2, :cond_30

    .line 1468
    add-int/lit8 v2, v1, -0x1

    .local v2, "i":I
    :goto_f
    if-ltz v2, :cond_2f

    .line 1469
    invoke-virtual {p0, v2}, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1470
    .local v3, "child":Landroid/view/View;
    iget-object v4, p0, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Ltds/androidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {v4, v3}, Ltds/androidx/recyclerview/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v4

    if-gt v4, v0, :cond_29

    iget-object v4, p0, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Ltds/androidx/recyclerview/widget/OrientationHelper;

    .line 1471
    invoke-virtual {v4, v3}, Ltds/androidx/recyclerview/widget/OrientationHelper;->getTransformedEndWithDecoration(Landroid/view/View;)I

    move-result v4

    if-le v4, v0, :cond_26

    goto :goto_29

    .line 1468
    .end local v3    # "child":Landroid/view/View;
    :cond_26
    add-int/lit8 v2, v2, -0x1

    goto :goto_f

    .line 1473
    .restart local v3    # "child":Landroid/view/View;
    :cond_29
    :goto_29
    add-int/lit8 v4, v1, -0x1

    invoke-direct {p0, p1, v4, v2}, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->recycleChildren(Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;II)V

    .line 1474
    return-void

    .line 1468
    .end local v2    # "i":I
    .end local v3    # "child":Landroid/view/View;
    :cond_2f
    goto :goto_50

    .line 1478
    :cond_30
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_31
    if-ge v2, v1, :cond_50

    .line 1479
    invoke-virtual {p0, v2}, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1480
    .restart local v3    # "child":Landroid/view/View;
    iget-object v4, p0, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Ltds/androidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {v4, v3}, Ltds/androidx/recyclerview/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v4

    if-gt v4, v0, :cond_4b

    iget-object v4, p0, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Ltds/androidx/recyclerview/widget/OrientationHelper;

    .line 1481
    invoke-virtual {v4, v3}, Ltds/androidx/recyclerview/widget/OrientationHelper;->getTransformedEndWithDecoration(Landroid/view/View;)I

    move-result v4

    if-le v4, v0, :cond_48

    goto :goto_4b

    .line 1478
    .end local v3    # "child":Landroid/view/View;
    :cond_48
    add-int/lit8 v2, v2, 0x1

    goto :goto_31

    .line 1483
    .restart local v3    # "child":Landroid/view/View;
    :cond_4b
    :goto_4b
    const/4 v4, 0x0

    invoke-direct {p0, p1, v4, v2}, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->recycleChildren(Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;II)V

    .line 1484
    return-void

    .line 1488
    .end local v2    # "i":I
    .end local v3    # "child":Landroid/view/View;
    :cond_50
    :goto_50
    return-void
.end method

.method private resolveShouldLayoutReverse()V
    .registers 3

    .line 365
    iget v0, p0, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->mOrientation:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_12

    invoke-virtual {p0}, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->isLayoutRTL()Z

    move-result v0

    if-nez v0, :cond_c

    goto :goto_12

    .line 368
    :cond_c
    iget-boolean v0, p0, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->mReverseLayout:Z

    xor-int/2addr v0, v1

    iput-boolean v0, p0, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    goto :goto_16

    .line 366
    :cond_12
    :goto_12
    iget-boolean v0, p0, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->mReverseLayout:Z

    iput-boolean v0, p0, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    .line 370
    :goto_16
    return-void
.end method

.method private updateAnchorFromChildren(Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;Ltds/androidx/recyclerview/widget/RecyclerView$State;Ltds/androidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;)Z
    .registers 14
    .param p1, "recycler"    # Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;
    .param p2, "state"    # Ltds/androidx/recyclerview/widget/RecyclerView$State;
    .param p3, "anchorInfo"    # Ltds/androidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;

    .line 838
    invoke-virtual {p0}, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 839
    return v1

    .line 841
    :cond_8
    invoke-virtual {p0}, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->getFocusedChild()Landroid/view/View;

    move-result-object v0

    .line 842
    .local v0, "focused":Landroid/view/View;
    const/4 v2, 0x1

    if-eqz v0, :cond_1d

    invoke-virtual {p3, v0, p2}, Ltds/androidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;->isViewValidAsAnchor(Landroid/view/View;Ltds/androidx/recyclerview/widget/RecyclerView$State;)Z

    move-result v3

    if-eqz v3, :cond_1d

    .line 843
    invoke-virtual {p0, v0}, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v1

    invoke-virtual {p3, v0, v1}, Ltds/androidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;->assignFromViewAndKeepVisibleRect(Landroid/view/View;I)V

    .line 844
    return v2

    .line 846
    :cond_1d
    iget-boolean v3, p0, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->mLastStackFromEnd:Z

    iget-boolean v4, p0, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->mStackFromEnd:Z

    if-eq v3, v4, :cond_24

    .line 847
    return v1

    .line 849
    :cond_24
    iget-boolean v3, p3, Ltds/androidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    iget-boolean v4, p0, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->mStackFromEnd:Z

    .line 850
    invoke-virtual {p0, p1, p2, v3, v4}, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->findReferenceChild(Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;Ltds/androidx/recyclerview/widget/RecyclerView$State;ZZ)Landroid/view/View;

    move-result-object v3

    .line 855
    .local v3, "referenceChild":Landroid/view/View;
    if-eqz v3, :cond_73

    .line 856
    invoke-virtual {p0, v3}, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v4

    invoke-virtual {p3, v3, v4}, Ltds/androidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;->assignFromView(Landroid/view/View;I)V

    .line 859
    invoke-virtual {p2}, Ltds/androidx/recyclerview/widget/RecyclerView$State;->isPreLayout()Z

    move-result v4

    if-nez v4, :cond_72

    invoke-virtual {p0}, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->supportsPredictiveItemAnimations()Z

    move-result v4

    if-eqz v4, :cond_72

    .line 861
    iget-object v4, p0, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Ltds/androidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {v4, v3}, Ltds/androidx/recyclerview/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v4

    .line 862
    .local v4, "childStart":I
    iget-object v5, p0, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Ltds/androidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {v5, v3}, Ltds/androidx/recyclerview/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v5

    .line 863
    .local v5, "childEnd":I
    iget-object v6, p0, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Ltds/androidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {v6}, Ltds/androidx/recyclerview/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v6

    .line 864
    .local v6, "boundsStart":I
    iget-object v7, p0, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Ltds/androidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {v7}, Ltds/androidx/recyclerview/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v7

    .line 867
    .local v7, "boundsEnd":I
    if-gt v5, v6, :cond_5f

    if-ge v4, v6, :cond_5f

    move v8, v2

    goto :goto_60

    :cond_5f
    move v8, v1

    .line 868
    .local v8, "outOfBoundsBefore":Z
    :goto_60
    if-lt v4, v7, :cond_65

    if-le v5, v7, :cond_65

    move v1, v2

    .line 869
    .local v1, "outOfBoundsAfter":Z
    :cond_65
    if-nez v8, :cond_69

    if-eqz v1, :cond_72

    .line 870
    :cond_69
    iget-boolean v9, p3, Ltds/androidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    if-eqz v9, :cond_6f

    move v9, v7

    goto :goto_70

    :cond_6f
    move v9, v6

    :goto_70
    iput v9, p3, Ltds/androidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;->mCoordinate:I

    .line 873
    .end local v1    # "outOfBoundsAfter":Z
    .end local v4    # "childStart":I
    .end local v5    # "childEnd":I
    .end local v6    # "boundsStart":I
    .end local v7    # "boundsEnd":I
    .end local v8    # "outOfBoundsBefore":Z
    :cond_72
    return v2

    .line 875
    :cond_73
    return v1
.end method

.method private updateAnchorFromPendingData(Ltds/androidx/recyclerview/widget/RecyclerView$State;Ltds/androidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;)Z
    .registers 10
    .param p1, "state"    # Ltds/androidx/recyclerview/widget/RecyclerView$State;
    .param p2, "anchorInfo"    # Ltds/androidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;

    .line 883
    invoke-virtual {p1}, Ltds/androidx/recyclerview/widget/RecyclerView$State;->isPreLayout()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_101

    iget v0, p0, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->mPendingScrollPosition:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_e

    goto/16 :goto_101

    .line 887
    :cond_e
    const/high16 v3, -0x80000000

    if-ltz v0, :cond_fc

    invoke-virtual {p1}, Ltds/androidx/recyclerview/widget/RecyclerView$State;->getItemCount()I

    move-result v4

    if-lt v0, v4, :cond_1a

    goto/16 :goto_fc

    .line 898
    :cond_1a
    iget v0, p0, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->mPendingScrollPosition:I

    iput v0, p2, Ltds/androidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;->mPosition:I

    .line 899
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->mPendingSavedState:Ltds/androidx/recyclerview/widget/LinearLayoutManager$SavedState;

    const/4 v2, 0x1

    if-eqz v0, :cond_4f

    invoke-virtual {v0}, Ltds/androidx/recyclerview/widget/LinearLayoutManager$SavedState;->hasValidAnchor()Z

    move-result v0

    if-eqz v0, :cond_4f

    .line 902
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->mPendingSavedState:Ltds/androidx/recyclerview/widget/LinearLayoutManager$SavedState;

    iget-boolean v0, v0, Ltds/androidx/recyclerview/widget/LinearLayoutManager$SavedState;->mAnchorLayoutFromEnd:Z

    iput-boolean v0, p2, Ltds/androidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    .line 903
    iget-boolean v0, p2, Ltds/androidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    if-eqz v0, :cond_41

    .line 904
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Ltds/androidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {v0}, Ltds/androidx/recyclerview/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v0

    iget-object v1, p0, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->mPendingSavedState:Ltds/androidx/recyclerview/widget/LinearLayoutManager$SavedState;

    iget v1, v1, Ltds/androidx/recyclerview/widget/LinearLayoutManager$SavedState;->mAnchorOffset:I

    sub-int/2addr v0, v1

    iput v0, p2, Ltds/androidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;->mCoordinate:I

    goto :goto_4e

    .line 907
    :cond_41
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Ltds/androidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {v0}, Ltds/androidx/recyclerview/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v0

    iget-object v1, p0, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->mPendingSavedState:Ltds/androidx/recyclerview/widget/LinearLayoutManager$SavedState;

    iget v1, v1, Ltds/androidx/recyclerview/widget/LinearLayoutManager$SavedState;->mAnchorOffset:I

    add-int/2addr v0, v1

    iput v0, p2, Ltds/androidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;->mCoordinate:I

    .line 910
    :goto_4e
    return v2

    .line 913
    :cond_4f
    iget v0, p0, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->mPendingScrollPositionOffset:I

    if-ne v0, v3, :cond_dc

    .line 914
    iget v0, p0, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->mPendingScrollPosition:I

    invoke-virtual {p0, v0}, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v0

    .line 915
    .local v0, "child":Landroid/view/View;
    if-eqz v0, :cond_bc

    .line 916
    iget-object v3, p0, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Ltds/androidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {v3, v0}, Ltds/androidx/recyclerview/widget/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v3

    .line 917
    .local v3, "childSize":I
    iget-object v4, p0, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Ltds/androidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {v4}, Ltds/androidx/recyclerview/widget/OrientationHelper;->getTotalSpace()I

    move-result v4

    if-le v3, v4, :cond_6d

    .line 919
    invoke-virtual {p2}, Ltds/androidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;->assignCoordinateFromPadding()V

    .line 920
    return v2

    .line 922
    :cond_6d
    iget-object v4, p0, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Ltds/androidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {v4, v0}, Ltds/androidx/recyclerview/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v4

    iget-object v5, p0, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Ltds/androidx/recyclerview/widget/OrientationHelper;

    .line 923
    invoke-virtual {v5}, Ltds/androidx/recyclerview/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v5

    sub-int/2addr v4, v5

    .line 924
    .local v4, "startGap":I
    if-gez v4, :cond_87

    .line 925
    iget-object v5, p0, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Ltds/androidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {v5}, Ltds/androidx/recyclerview/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v5

    iput v5, p2, Ltds/androidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;->mCoordinate:I

    .line 926
    iput-boolean v1, p2, Ltds/androidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    .line 927
    return v2

    .line 929
    :cond_87
    iget-object v1, p0, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Ltds/androidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {v1}, Ltds/androidx/recyclerview/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v1

    iget-object v5, p0, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Ltds/androidx/recyclerview/widget/OrientationHelper;

    .line 930
    invoke-virtual {v5, v0}, Ltds/androidx/recyclerview/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v5

    sub-int/2addr v1, v5

    .line 931
    .local v1, "endGap":I
    if-gez v1, :cond_a1

    .line 932
    iget-object v5, p0, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Ltds/androidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {v5}, Ltds/androidx/recyclerview/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v5

    iput v5, p2, Ltds/androidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;->mCoordinate:I

    .line 933
    iput-boolean v2, p2, Ltds/androidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    .line 934
    return v2

    .line 936
    :cond_a1
    iget-boolean v5, p2, Ltds/androidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    if-eqz v5, :cond_b3

    iget-object v5, p0, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Ltds/androidx/recyclerview/widget/OrientationHelper;

    .line 937
    invoke-virtual {v5, v0}, Ltds/androidx/recyclerview/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v5

    iget-object v6, p0, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Ltds/androidx/recyclerview/widget/OrientationHelper;

    .line 938
    invoke-virtual {v6}, Ltds/androidx/recyclerview/widget/OrientationHelper;->getTotalSpaceChange()I

    move-result v6

    add-int/2addr v5, v6

    goto :goto_b9

    :cond_b3
    iget-object v5, p0, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Ltds/androidx/recyclerview/widget/OrientationHelper;

    .line 939
    invoke-virtual {v5, v0}, Ltds/androidx/recyclerview/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v5

    :goto_b9
    iput v5, p2, Ltds/androidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;->mCoordinate:I

    .line 940
    .end local v1    # "endGap":I
    .end local v3    # "childSize":I
    .end local v4    # "startGap":I
    goto :goto_db

    .line 941
    :cond_bc
    invoke-virtual {p0}, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->getChildCount()I

    move-result v3

    if-lez v3, :cond_d8

    .line 943
    invoke-virtual {p0, v1}, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {p0, v3}, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v3

    .line 944
    .local v3, "pos":I
    iget v4, p0, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->mPendingScrollPosition:I

    if-ge v4, v3, :cond_d0

    move v4, v2

    goto :goto_d1

    :cond_d0
    move v4, v1

    :goto_d1
    iget-boolean v5, p0, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    if-ne v4, v5, :cond_d6

    move v1, v2

    :cond_d6
    iput-boolean v1, p2, Ltds/androidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    .line 947
    .end local v3    # "pos":I
    :cond_d8
    invoke-virtual {p2}, Ltds/androidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;->assignCoordinateFromPadding()V

    .line 949
    :goto_db
    return v2

    .line 952
    .end local v0    # "child":Landroid/view/View;
    :cond_dc
    iget-boolean v0, p0, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    iput-boolean v0, p2, Ltds/androidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    .line 954
    iget-boolean v0, p0, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    if-eqz v0, :cond_f0

    .line 955
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Ltds/androidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {v0}, Ltds/androidx/recyclerview/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v0

    iget v1, p0, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->mPendingScrollPositionOffset:I

    sub-int/2addr v0, v1

    iput v0, p2, Ltds/androidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;->mCoordinate:I

    goto :goto_fb

    .line 958
    :cond_f0
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Ltds/androidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {v0}, Ltds/androidx/recyclerview/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v0

    iget v1, p0, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->mPendingScrollPositionOffset:I

    add-int/2addr v0, v1

    iput v0, p2, Ltds/androidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;->mCoordinate:I

    .line 961
    :goto_fb
    return v2

    .line 888
    :cond_fc
    :goto_fc
    iput v2, p0, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->mPendingScrollPosition:I

    .line 889
    iput v3, p0, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->mPendingScrollPositionOffset:I

    .line 893
    return v1

    .line 884
    :cond_101
    :goto_101
    return v1
.end method

.method private updateAnchorInfoForLayout(Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;Ltds/androidx/recyclerview/widget/RecyclerView$State;Ltds/androidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;)V
    .registers 5
    .param p1, "recycler"    # Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;
    .param p2, "state"    # Ltds/androidx/recyclerview/widget/RecyclerView$State;
    .param p3, "anchorInfo"    # Ltds/androidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;

    .line 810
    invoke-direct {p0, p2, p3}, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->updateAnchorFromPendingData(Ltds/androidx/recyclerview/widget/RecyclerView$State;Ltds/androidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 814
    return-void

    .line 817
    :cond_7
    invoke-direct {p0, p1, p2, p3}, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->updateAnchorFromChildren(Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;Ltds/androidx/recyclerview/widget/RecyclerView$State;Ltds/androidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 821
    return-void

    .line 826
    :cond_e
    invoke-virtual {p3}, Ltds/androidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;->assignCoordinateFromPadding()V

    .line 827
    iget-boolean v0, p0, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->mStackFromEnd:Z

    if-eqz v0, :cond_1c

    invoke-virtual {p2}, Ltds/androidx/recyclerview/widget/RecyclerView$State;->getItemCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_1d

    :cond_1c
    const/4 v0, 0x0

    :goto_1d
    iput v0, p3, Ltds/androidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;->mPosition:I

    .line 828
    return-void
.end method

.method private updateLayoutState(IIZLtds/androidx/recyclerview/widget/RecyclerView$State;)V
    .registers 14
    .param p1, "layoutDirection"    # I
    .param p2, "requiredSpace"    # I
    .param p3, "canUseExistingSpace"    # Z
    .param p4, "state"    # Ltds/androidx/recyclerview/widget/RecyclerView$State;

    .line 1235
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Ltds/androidx/recyclerview/widget/LinearLayoutManager$LayoutState;

    invoke-virtual {p0}, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->resolveIsInfinite()Z

    move-result v1

    iput-boolean v1, v0, Ltds/androidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mInfinite:Z

    .line 1236
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Ltds/androidx/recyclerview/widget/LinearLayoutManager$LayoutState;

    iput p1, v0, Ltds/androidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mLayoutDirection:I

    .line 1237
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->mReusableIntPair:[I

    const/4 v1, 0x0

    aput v1, v0, v1

    .line 1238
    const/4 v2, 0x1

    aput v1, v0, v2

    .line 1239
    invoke-virtual {p0, p4, v0}, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->calculateExtraLayoutSpace(Ltds/androidx/recyclerview/widget/RecyclerView$State;[I)V

    .line 1240
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->mReusableIntPair:[I

    aget v0, v0, v1

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1241
    .local v0, "extraForStart":I
    iget-object v3, p0, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->mReusableIntPair:[I

    aget v3, v3, v2

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 1242
    .local v3, "extraForEnd":I
    if-ne p1, v2, :cond_2a

    move v1, v2

    .line 1243
    .local v1, "layoutToEnd":Z
    :cond_2a
    iget-object v4, p0, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Ltds/androidx/recyclerview/widget/LinearLayoutManager$LayoutState;

    if-eqz v1, :cond_30

    move v5, v3

    goto :goto_31

    :cond_30
    move v5, v0

    :goto_31
    iput v5, v4, Ltds/androidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mExtraFillSpace:I

    .line 1244
    iget-object v4, p0, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Ltds/androidx/recyclerview/widget/LinearLayoutManager$LayoutState;

    if-eqz v1, :cond_39

    move v5, v0

    goto :goto_3a

    :cond_39
    move v5, v3

    :goto_3a
    iput v5, v4, Ltds/androidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mNoRecycleSpace:I

    .line 1246
    const/4 v4, -0x1

    if-eqz v1, :cond_7e

    .line 1247
    iget-object v5, p0, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Ltds/androidx/recyclerview/widget/LinearLayoutManager$LayoutState;

    iget v6, v5, Ltds/androidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mExtraFillSpace:I

    iget-object v7, p0, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Ltds/androidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {v7}, Ltds/androidx/recyclerview/widget/OrientationHelper;->getEndPadding()I

    move-result v7

    add-int/2addr v6, v7

    iput v6, v5, Ltds/androidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mExtraFillSpace:I

    .line 1249
    invoke-direct {p0}, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->getChildClosestToEnd()Landroid/view/View;

    move-result-object v5

    .line 1251
    .local v5, "child":Landroid/view/View;
    iget-object v6, p0, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Ltds/androidx/recyclerview/widget/LinearLayoutManager$LayoutState;

    iget-boolean v7, p0, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    if-eqz v7, :cond_57

    move v2, v4

    :cond_57
    iput v2, v6, Ltds/androidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mItemDirection:I

    .line 1253
    iget-object v2, p0, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Ltds/androidx/recyclerview/widget/LinearLayoutManager$LayoutState;

    invoke-virtual {p0, v5}, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v4

    iget-object v6, p0, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Ltds/androidx/recyclerview/widget/LinearLayoutManager$LayoutState;

    iget v6, v6, Ltds/androidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mItemDirection:I

    add-int/2addr v4, v6

    iput v4, v2, Ltds/androidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    .line 1254
    iget-object v2, p0, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Ltds/androidx/recyclerview/widget/LinearLayoutManager$LayoutState;

    iget-object v4, p0, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Ltds/androidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {v4, v5}, Ltds/androidx/recyclerview/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v4

    iput v4, v2, Ltds/androidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mOffset:I

    .line 1256
    iget-object v2, p0, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Ltds/androidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {v2, v5}, Ltds/androidx/recyclerview/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v2

    iget-object v4, p0, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Ltds/androidx/recyclerview/widget/OrientationHelper;

    .line 1257
    invoke-virtual {v4}, Ltds/androidx/recyclerview/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v4

    sub-int/2addr v2, v4

    .line 1259
    .end local v5    # "child":Landroid/view/View;
    .local v2, "scrollingOffset":I
    goto :goto_be

    .line 1260
    .end local v2    # "scrollingOffset":I
    :cond_7e
    invoke-direct {p0}, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->getChildClosestToStart()Landroid/view/View;

    move-result-object v5

    .line 1261
    .restart local v5    # "child":Landroid/view/View;
    iget-object v6, p0, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Ltds/androidx/recyclerview/widget/LinearLayoutManager$LayoutState;

    iget v7, v6, Ltds/androidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mExtraFillSpace:I

    iget-object v8, p0, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Ltds/androidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {v8}, Ltds/androidx/recyclerview/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v8

    add-int/2addr v7, v8

    iput v7, v6, Ltds/androidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mExtraFillSpace:I

    .line 1262
    iget-object v6, p0, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Ltds/androidx/recyclerview/widget/LinearLayoutManager$LayoutState;

    iget-boolean v7, p0, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    if-eqz v7, :cond_96

    goto :goto_97

    :cond_96
    move v2, v4

    :goto_97
    iput v2, v6, Ltds/androidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mItemDirection:I

    .line 1264
    iget-object v2, p0, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Ltds/androidx/recyclerview/widget/LinearLayoutManager$LayoutState;

    invoke-virtual {p0, v5}, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v4

    iget-object v6, p0, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Ltds/androidx/recyclerview/widget/LinearLayoutManager$LayoutState;

    iget v6, v6, Ltds/androidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mItemDirection:I

    add-int/2addr v4, v6

    iput v4, v2, Ltds/androidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    .line 1265
    iget-object v2, p0, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Ltds/androidx/recyclerview/widget/LinearLayoutManager$LayoutState;

    iget-object v4, p0, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Ltds/androidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {v4, v5}, Ltds/androidx/recyclerview/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v4

    iput v4, v2, Ltds/androidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mOffset:I

    .line 1266
    iget-object v2, p0, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Ltds/androidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {v2, v5}, Ltds/androidx/recyclerview/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v2

    neg-int v2, v2

    iget-object v4, p0, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Ltds/androidx/recyclerview/widget/OrientationHelper;

    .line 1267
    invoke-virtual {v4}, Ltds/androidx/recyclerview/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v4

    add-int/2addr v2, v4

    .line 1269
    .end local v5    # "child":Landroid/view/View;
    .restart local v2    # "scrollingOffset":I
    :goto_be
    iget-object v4, p0, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Ltds/androidx/recyclerview/widget/LinearLayoutManager$LayoutState;

    iput p2, v4, Ltds/androidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mAvailable:I

    .line 1270
    if-eqz p3, :cond_cb

    .line 1271
    iget-object v4, p0, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Ltds/androidx/recyclerview/widget/LinearLayoutManager$LayoutState;

    iget v5, v4, Ltds/androidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mAvailable:I

    sub-int/2addr v5, v2

    iput v5, v4, Ltds/androidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mAvailable:I

    .line 1273
    :cond_cb
    iget-object v4, p0, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Ltds/androidx/recyclerview/widget/LinearLayoutManager$LayoutState;

    iput v2, v4, Ltds/androidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mScrollingOffset:I

    .line 1274
    return-void
.end method

.method private updateLayoutStateToFillEnd(II)V
    .registers 6
    .param p1, "itemPosition"    # I
    .param p2, "offset"    # I

    .line 1019
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Ltds/androidx/recyclerview/widget/LinearLayoutManager$LayoutState;

    iget-object v1, p0, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Ltds/androidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {v1}, Ltds/androidx/recyclerview/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v1

    sub-int/2addr v1, p2

    iput v1, v0, Ltds/androidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mAvailable:I

    .line 1020
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Ltds/androidx/recyclerview/widget/LinearLayoutManager$LayoutState;

    iget-boolean v1, p0, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_14

    const/4 v1, -0x1

    goto :goto_15

    :cond_14
    move v1, v2

    :goto_15
    iput v1, v0, Ltds/androidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mItemDirection:I

    .line 1022
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Ltds/androidx/recyclerview/widget/LinearLayoutManager$LayoutState;

    iput p1, v0, Ltds/androidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    .line 1023
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Ltds/androidx/recyclerview/widget/LinearLayoutManager$LayoutState;

    iput v2, v0, Ltds/androidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mLayoutDirection:I

    .line 1024
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Ltds/androidx/recyclerview/widget/LinearLayoutManager$LayoutState;

    iput p2, v0, Ltds/androidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mOffset:I

    .line 1025
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Ltds/androidx/recyclerview/widget/LinearLayoutManager$LayoutState;

    const/high16 v1, -0x80000000

    iput v1, v0, Ltds/androidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mScrollingOffset:I

    .line 1026
    return-void
.end method

.method private updateLayoutStateToFillEnd(Ltds/androidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;)V
    .registers 4
    .param p1, "anchorInfo"    # Ltds/androidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;

    .line 1015
    iget v0, p1, Ltds/androidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;->mPosition:I

    iget v1, p1, Ltds/androidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;->mCoordinate:I

    invoke-direct {p0, v0, v1}, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->updateLayoutStateToFillEnd(II)V

    .line 1016
    return-void
.end method

.method private updateLayoutStateToFillStart(II)V
    .registers 6
    .param p1, "itemPosition"    # I
    .param p2, "offset"    # I

    .line 1033
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Ltds/androidx/recyclerview/widget/LinearLayoutManager$LayoutState;

    iget-object v1, p0, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Ltds/androidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {v1}, Ltds/androidx/recyclerview/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v1

    sub-int v1, p2, v1

    iput v1, v0, Ltds/androidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mAvailable:I

    .line 1034
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Ltds/androidx/recyclerview/widget/LinearLayoutManager$LayoutState;

    iput p1, v0, Ltds/androidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    .line 1035
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Ltds/androidx/recyclerview/widget/LinearLayoutManager$LayoutState;

    iget-boolean v1, p0, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    const/4 v2, -0x1

    if-eqz v1, :cond_19

    const/4 v1, 0x1

    goto :goto_1a

    :cond_19
    move v1, v2

    :goto_1a
    iput v1, v0, Ltds/androidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mItemDirection:I

    .line 1037
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Ltds/androidx/recyclerview/widget/LinearLayoutManager$LayoutState;

    iput v2, v0, Ltds/androidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mLayoutDirection:I

    .line 1038
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Ltds/androidx/recyclerview/widget/LinearLayoutManager$LayoutState;

    iput p2, v0, Ltds/androidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mOffset:I

    .line 1039
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Ltds/androidx/recyclerview/widget/LinearLayoutManager$LayoutState;

    const/high16 v1, -0x80000000

    iput v1, v0, Ltds/androidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mScrollingOffset:I

    .line 1041
    return-void
.end method

.method private updateLayoutStateToFillStart(Ltds/androidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;)V
    .registers 4
    .param p1, "anchorInfo"    # Ltds/androidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;

    .line 1029
    iget v0, p1, Ltds/androidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;->mPosition:I

    iget v1, p1, Ltds/androidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;->mCoordinate:I

    invoke-direct {p0, v0, v1}, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->updateLayoutStateToFillStart(II)V

    .line 1030
    return-void
.end method


# virtual methods
.method public assertNotInLayoutOrScroll(Ljava/lang/String;)V
    .registers 3
    .param p1, "message"    # Ljava/lang/String;

    .line 1413
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->mPendingSavedState:Ltds/androidx/recyclerview/widget/LinearLayoutManager$SavedState;

    if-nez v0, :cond_7

    .line 1414
    invoke-super {p0, p1}, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 1416
    :cond_7
    return-void
.end method

.method protected calculateExtraLayoutSpace(Ltds/androidx/recyclerview/widget/RecyclerView$State;[I)V
    .registers 8
    .param p1, "state"    # Ltds/androidx/recyclerview/widget/RecyclerView$State;
    .param p2, "extraLayoutSpace"    # [I

    .line 485
    const/4 v0, 0x0

    .line 486
    .local v0, "extraLayoutSpaceStart":I
    const/4 v1, 0x0

    .line 491
    .local v1, "extraLayoutSpaceEnd":I
    invoke-virtual {p0, p1}, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->getExtraLayoutSpace(Ltds/androidx/recyclerview/widget/RecyclerView$State;)I

    move-result v2

    .line 492
    .local v2, "extraScrollSpace":I
    iget-object v3, p0, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Ltds/androidx/recyclerview/widget/LinearLayoutManager$LayoutState;

    iget v3, v3, Ltds/androidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mLayoutDirection:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_f

    .line 493
    move v0, v2

    goto :goto_10

    .line 495
    :cond_f
    move v1, v2

    .line 498
    :goto_10
    const/4 v3, 0x0

    aput v0, p2, v3

    .line 499
    const/4 v3, 0x1

    aput v1, p2, v3

    .line 500
    return-void
.end method

.method public canScrollHorizontally()Z
    .registers 2

    .line 298
    iget v0, p0, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->mOrientation:I

    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public canScrollVertically()Z
    .registers 3

    .line 306
    iget v0, p0, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->mOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    goto :goto_7

    :cond_6
    const/4 v1, 0x0

    :goto_7
    return v1
.end method

.method public collectAdjacentPrefetchPositions(IILtds/androidx/recyclerview/widget/RecyclerView$State;Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager$LayoutPrefetchRegistry;)V
    .registers 9
    .param p1, "dx"    # I
    .param p2, "dy"    # I
    .param p3, "state"    # Ltds/androidx/recyclerview/widget/RecyclerView$State;
    .param p4, "layoutPrefetchRegistry"    # Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager$LayoutPrefetchRegistry;

    .line 1372
    iget v0, p0, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->mOrientation:I

    if-nez v0, :cond_6

    move v0, p1

    goto :goto_7

    :cond_6
    move v0, p2

    .line 1373
    .local v0, "delta":I
    :goto_7
    invoke-virtual {p0}, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->getChildCount()I

    move-result v1

    if-eqz v1, :cond_26

    if-nez v0, :cond_10

    goto :goto_26

    .line 1378
    :cond_10
    invoke-virtual {p0}, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->ensureLayoutState()V

    .line 1379
    const/4 v1, 0x1

    if-lez v0, :cond_18

    move v2, v1

    goto :goto_19

    :cond_18
    const/4 v2, -0x1

    .line 1380
    .local v2, "layoutDirection":I
    :goto_19
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v3

    .line 1381
    .local v3, "absDelta":I
    invoke-direct {p0, v2, v3, v1, p3}, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->updateLayoutState(IIZLtds/androidx/recyclerview/widget/RecyclerView$State;)V

    .line 1382
    iget-object v1, p0, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Ltds/androidx/recyclerview/widget/LinearLayoutManager$LayoutState;

    invoke-virtual {p0, p3, v1, p4}, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->collectPrefetchPositionsForLayoutState(Ltds/androidx/recyclerview/widget/RecyclerView$State;Ltds/androidx/recyclerview/widget/LinearLayoutManager$LayoutState;Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager$LayoutPrefetchRegistry;)V

    .line 1383
    return-void

    .line 1375
    .end local v2    # "layoutDirection":I
    .end local v3    # "absDelta":I
    :cond_26
    :goto_26
    return-void
.end method

.method public collectInitialPrefetchPositions(ILtds/androidx/recyclerview/widget/RecyclerView$LayoutManager$LayoutPrefetchRegistry;)V
    .registers 10
    .param p1, "adapterItemCount"    # I
    .param p2, "layoutPrefetchRegistry"    # Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager$LayoutPrefetchRegistry;

    .line 1294
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->mPendingSavedState:Ltds/androidx/recyclerview/widget/LinearLayoutManager$SavedState;

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-eqz v0, :cond_15

    invoke-virtual {v0}, Ltds/androidx/recyclerview/widget/LinearLayoutManager$SavedState;->hasValidAnchor()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 1296
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->mPendingSavedState:Ltds/androidx/recyclerview/widget/LinearLayoutManager$SavedState;

    iget-boolean v0, v0, Ltds/androidx/recyclerview/widget/LinearLayoutManager$SavedState;->mAnchorLayoutFromEnd:Z

    .line 1297
    .local v0, "fromEnd":Z
    iget-object v3, p0, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->mPendingSavedState:Ltds/androidx/recyclerview/widget/LinearLayoutManager$SavedState;

    iget v3, v3, Ltds/androidx/recyclerview/widget/LinearLayoutManager$SavedState;->mAnchorPosition:I

    .local v3, "anchorPos":I
    goto :goto_27

    .line 1299
    .end local v0    # "fromEnd":Z
    .end local v3    # "anchorPos":I
    :cond_15
    invoke-direct {p0}, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->resolveShouldLayoutReverse()V

    .line 1300
    iget-boolean v0, p0, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    .line 1301
    .restart local v0    # "fromEnd":Z
    iget v3, p0, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->mPendingScrollPosition:I

    if-ne v3, v2, :cond_25

    .line 1302
    if-eqz v0, :cond_23

    add-int/lit8 v3, p1, -0x1

    goto :goto_24

    :cond_23
    move v3, v1

    .restart local v3    # "anchorPos":I
    :goto_24
    goto :goto_27

    .line 1304
    .end local v3    # "anchorPos":I
    :cond_25
    iget v3, p0, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->mPendingScrollPosition:I

    .line 1308
    .restart local v3    # "anchorPos":I
    :goto_27
    if-eqz v0, :cond_2a

    goto :goto_2b

    :cond_2a
    const/4 v2, 0x1

    .line 1311
    .local v2, "direction":I
    :goto_2b
    move v4, v3

    .line 1312
    .local v4, "targetPos":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_2d
    iget v6, p0, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->mInitialPrefetchItemCount:I

    if-ge v5, v6, :cond_3c

    .line 1313
    if-ltz v4, :cond_3c

    if-ge v4, p1, :cond_3c

    .line 1314
    invoke-interface {p2, v4, v1}, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager$LayoutPrefetchRegistry;->addPosition(II)V

    .line 1318
    add-int/2addr v4, v2

    .line 1312
    add-int/lit8 v5, v5, 0x1

    goto :goto_2d

    .line 1320
    .end local v5    # "i":I
    :cond_3c
    return-void
.end method

.method collectPrefetchPositionsForLayoutState(Ltds/androidx/recyclerview/widget/RecyclerView$State;Ltds/androidx/recyclerview/widget/LinearLayoutManager$LayoutState;Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager$LayoutPrefetchRegistry;)V
    .registers 7
    .param p1, "state"    # Ltds/androidx/recyclerview/widget/RecyclerView$State;
    .param p2, "layoutState"    # Ltds/androidx/recyclerview/widget/LinearLayoutManager$LayoutState;
    .param p3, "layoutPrefetchRegistry"    # Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager$LayoutPrefetchRegistry;

    .line 1283
    iget v0, p2, Ltds/androidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    .line 1284
    .local v0, "pos":I
    if-ltz v0, :cond_14

    invoke-virtual {p1}, Ltds/androidx/recyclerview/widget/RecyclerView$State;->getItemCount()I

    move-result v1

    if-ge v0, v1, :cond_14

    .line 1285
    const/4 v1, 0x0

    iget v2, p2, Ltds/androidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mScrollingOffset:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-interface {p3, v0, v1}, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager$LayoutPrefetchRegistry;->addPosition(II)V

    .line 1287
    :cond_14
    return-void
.end method

.method public computeHorizontalScrollExtent(Ltds/androidx/recyclerview/widget/RecyclerView$State;)I
    .registers 3
    .param p1, "state"    # Ltds/androidx/recyclerview/widget/RecyclerView$State;

    .line 1151
    invoke-direct {p0, p1}, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->computeScrollExtent(Ltds/androidx/recyclerview/widget/RecyclerView$State;)I

    move-result v0

    return v0
.end method

.method public computeHorizontalScrollOffset(Ltds/androidx/recyclerview/widget/RecyclerView$State;)I
    .registers 3
    .param p1, "state"    # Ltds/androidx/recyclerview/widget/RecyclerView$State;

    .line 1141
    invoke-direct {p0, p1}, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->computeScrollOffset(Ltds/androidx/recyclerview/widget/RecyclerView$State;)I

    move-result v0

    return v0
.end method

.method public computeHorizontalScrollRange(Ltds/androidx/recyclerview/widget/RecyclerView$State;)I
    .registers 3
    .param p1, "state"    # Ltds/androidx/recyclerview/widget/RecyclerView$State;

    .line 1161
    invoke-direct {p0, p1}, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->computeScrollRange(Ltds/androidx/recyclerview/widget/RecyclerView$State;)I

    move-result v0

    return v0
.end method

.method public computeScrollVectorForPosition(I)Landroid/graphics/PointF;
    .registers 7
    .param p1, "targetPosition"    # I

    .line 513
    invoke-virtual {p0}, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->getChildCount()I

    move-result v0

    if-nez v0, :cond_8

    .line 514
    const/4 v0, 0x0

    return-object v0

    .line 516
    :cond_8
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v1

    .line 517
    .local v1, "firstChildPos":I
    const/4 v2, 0x1

    if-ge p1, v1, :cond_15

    move v0, v2

    :cond_15
    iget-boolean v3, p0, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    if-eq v0, v3, :cond_1a

    const/4 v2, -0x1

    :cond_1a
    move v0, v2

    .line 518
    .local v0, "direction":I
    iget v2, p0, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->mOrientation:I

    const/4 v3, 0x0

    if-nez v2, :cond_27

    .line 519
    new-instance v2, Landroid/graphics/PointF;

    int-to-float v4, v0

    invoke-direct {v2, v4, v3}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v2

    .line 521
    :cond_27
    new-instance v2, Landroid/graphics/PointF;

    int-to-float v4, v0

    invoke-direct {v2, v3, v4}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v2
.end method

.method public computeVerticalScrollExtent(Ltds/androidx/recyclerview/widget/RecyclerView$State;)I
    .registers 3
    .param p1, "state"    # Ltds/androidx/recyclerview/widget/RecyclerView$State;

    .line 1156
    invoke-direct {p0, p1}, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->computeScrollExtent(Ltds/androidx/recyclerview/widget/RecyclerView$State;)I

    move-result v0

    return v0
.end method

.method public computeVerticalScrollOffset(Ltds/androidx/recyclerview/widget/RecyclerView$State;)I
    .registers 3
    .param p1, "state"    # Ltds/androidx/recyclerview/widget/RecyclerView$State;

    .line 1146
    invoke-direct {p0, p1}, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->computeScrollOffset(Ltds/androidx/recyclerview/widget/RecyclerView$State;)I

    move-result v0

    return v0
.end method

.method public computeVerticalScrollRange(Ltds/androidx/recyclerview/widget/RecyclerView$State;)I
    .registers 3
    .param p1, "state"    # Ltds/androidx/recyclerview/widget/RecyclerView$State;

    .line 1166
    invoke-direct {p0, p1}, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->computeScrollRange(Ltds/androidx/recyclerview/widget/RecyclerView$State;)I

    move-result v0

    return v0
.end method

.method convertFocusDirectionToLayoutDirection(I)I
    .registers 6
    .param p1, "focusDirection"    # I

    .line 1720
    const/4 v0, -0x1

    const/high16 v1, -0x80000000

    const/4 v2, 0x1

    sparse-switch p1, :sswitch_data_3c

    .line 1753
    return v1

    .line 1741
    :sswitch_8
    iget v0, p0, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->mOrientation:I

    if-ne v0, v2, :cond_d

    move v1, v2

    :cond_d
    return v1

    .line 1747
    :sswitch_e
    iget v0, p0, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->mOrientation:I

    if-nez v0, :cond_13

    move v1, v2

    :cond_13
    return v1

    .line 1738
    :sswitch_14
    iget v3, p0, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->mOrientation:I

    if-ne v3, v2, :cond_19

    goto :goto_1a

    :cond_19
    move v0, v1

    :goto_1a
    return v0

    .line 1744
    :sswitch_1b
    iget v2, p0, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->mOrientation:I

    if-nez v2, :cond_20

    goto :goto_21

    :cond_20
    move v0, v1

    :goto_21
    return v0

    .line 1730
    :sswitch_22
    iget v1, p0, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->mOrientation:I

    if-ne v1, v2, :cond_27

    .line 1731
    return v2

    .line 1732
    :cond_27
    invoke-virtual {p0}, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->isLayoutRTL()Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 1733
    return v0

    .line 1735
    :cond_2e
    return v2

    .line 1722
    :sswitch_2f
    iget v1, p0, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->mOrientation:I

    if-ne v1, v2, :cond_34

    .line 1723
    return v0

    .line 1724
    :cond_34
    invoke-virtual {p0}, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->isLayoutRTL()Z

    move-result v1

    if-eqz v1, :cond_3b

    .line 1725
    return v2

    .line 1727
    :cond_3b
    return v0

    :sswitch_data_3c
    .sparse-switch
        0x1 -> :sswitch_2f
        0x2 -> :sswitch_22
        0x11 -> :sswitch_1b
        0x21 -> :sswitch_14
        0x42 -> :sswitch_e
        0x82 -> :sswitch_8
    .end sparse-switch
.end method

.method createLayoutState()Ltds/androidx/recyclerview/widget/LinearLayoutManager$LayoutState;
    .registers 2

    .line 1059
    new-instance v0, Ltds/androidx/recyclerview/widget/LinearLayoutManager$LayoutState;

    invoke-direct {v0}, Ltds/androidx/recyclerview/widget/LinearLayoutManager$LayoutState;-><init>()V

    return-object v0
.end method

.method ensureLayoutState()V
    .registers 2

    .line 1048
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Ltds/androidx/recyclerview/widget/LinearLayoutManager$LayoutState;

    if-nez v0, :cond_a

    .line 1049
    invoke-virtual {p0}, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->createLayoutState()Ltds/androidx/recyclerview/widget/LinearLayoutManager$LayoutState;

    move-result-object v0

    iput-object v0, p0, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Ltds/androidx/recyclerview/widget/LinearLayoutManager$LayoutState;

    .line 1051
    :cond_a
    return-void
.end method

.method fill(Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;Ltds/androidx/recyclerview/widget/LinearLayoutManager$LayoutState;Ltds/androidx/recyclerview/widget/RecyclerView$State;Z)I
    .registers 12
    .param p1, "recycler"    # Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;
    .param p2, "layoutState"    # Ltds/androidx/recyclerview/widget/LinearLayoutManager$LayoutState;
    .param p3, "state"    # Ltds/androidx/recyclerview/widget/RecyclerView$State;
    .param p4, "stopOnFocusable"    # Z

    .line 1576
    iget v0, p2, Ltds/androidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mAvailable:I

    .line 1577
    .local v0, "start":I
    iget v1, p2, Ltds/androidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mScrollingOffset:I

    const/high16 v2, -0x80000000

    if-eq v1, v2, :cond_16

    .line 1579
    iget v1, p2, Ltds/androidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mAvailable:I

    if-gez v1, :cond_13

    .line 1580
    iget v1, p2, Ltds/androidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mScrollingOffset:I

    iget v3, p2, Ltds/androidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mAvailable:I

    add-int/2addr v1, v3

    iput v1, p2, Ltds/androidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mScrollingOffset:I

    .line 1582
    :cond_13
    invoke-direct {p0, p1, p2}, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->recycleByLayoutState(Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;Ltds/androidx/recyclerview/widget/LinearLayoutManager$LayoutState;)V

    .line 1584
    :cond_16
    iget v1, p2, Ltds/androidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mAvailable:I

    iget v3, p2, Ltds/androidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mExtraFillSpace:I

    add-int/2addr v1, v3

    .line 1585
    .local v1, "remainingSpace":I
    iget-object v3, p0, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->mLayoutChunkResult:Ltds/androidx/recyclerview/widget/LinearLayoutManager$LayoutChunkResult;

    .line 1586
    .local v3, "layoutChunkResult":Ltds/androidx/recyclerview/widget/LinearLayoutManager$LayoutChunkResult;
    :cond_1d
    iget-boolean v4, p2, Ltds/androidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mInfinite:Z

    if-nez v4, :cond_23

    if-lez v1, :cond_75

    :cond_23
    invoke-virtual {p2, p3}, Ltds/androidx/recyclerview/widget/LinearLayoutManager$LayoutState;->hasMore(Ltds/androidx/recyclerview/widget/RecyclerView$State;)Z

    move-result v4

    if-eqz v4, :cond_75

    .line 1587
    invoke-virtual {v3}, Ltds/androidx/recyclerview/widget/LinearLayoutManager$LayoutChunkResult;->resetInternal()V

    .line 1591
    invoke-virtual {p0, p1, p3, p2, v3}, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->layoutChunk(Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;Ltds/androidx/recyclerview/widget/RecyclerView$State;Ltds/androidx/recyclerview/widget/LinearLayoutManager$LayoutState;Ltds/androidx/recyclerview/widget/LinearLayoutManager$LayoutChunkResult;)V

    .line 1595
    iget-boolean v4, v3, Ltds/androidx/recyclerview/widget/LinearLayoutManager$LayoutChunkResult;->mFinished:Z

    if-eqz v4, :cond_34

    .line 1596
    goto :goto_75

    .line 1598
    :cond_34
    iget v4, p2, Ltds/androidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mOffset:I

    iget v5, v3, Ltds/androidx/recyclerview/widget/LinearLayoutManager$LayoutChunkResult;->mConsumed:I

    iget v6, p2, Ltds/androidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mLayoutDirection:I

    mul-int/2addr v5, v6

    add-int/2addr v4, v5

    iput v4, p2, Ltds/androidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mOffset:I

    .line 1605
    iget-boolean v4, v3, Ltds/androidx/recyclerview/widget/LinearLayoutManager$LayoutChunkResult;->mIgnoreConsumed:Z

    if-eqz v4, :cond_4c

    iget-object v4, p2, Ltds/androidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mScrapList:Ljava/util/List;

    if-nez v4, :cond_4c

    .line 1606
    invoke-virtual {p3}, Ltds/androidx/recyclerview/widget/RecyclerView$State;->isPreLayout()Z

    move-result v4

    if-nez v4, :cond_56

    .line 1607
    :cond_4c
    iget v4, p2, Ltds/androidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mAvailable:I

    iget v5, v3, Ltds/androidx/recyclerview/widget/LinearLayoutManager$LayoutChunkResult;->mConsumed:I

    sub-int/2addr v4, v5

    iput v4, p2, Ltds/androidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mAvailable:I

    .line 1609
    iget v4, v3, Ltds/androidx/recyclerview/widget/LinearLayoutManager$LayoutChunkResult;->mConsumed:I

    sub-int/2addr v1, v4

    .line 1612
    :cond_56
    iget v4, p2, Ltds/androidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mScrollingOffset:I

    if-eq v4, v2, :cond_6f

    .line 1613
    iget v4, p2, Ltds/androidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mScrollingOffset:I

    iget v5, v3, Ltds/androidx/recyclerview/widget/LinearLayoutManager$LayoutChunkResult;->mConsumed:I

    add-int/2addr v4, v5

    iput v4, p2, Ltds/androidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mScrollingOffset:I

    .line 1614
    iget v4, p2, Ltds/androidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mAvailable:I

    if-gez v4, :cond_6c

    .line 1615
    iget v4, p2, Ltds/androidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mScrollingOffset:I

    iget v5, p2, Ltds/androidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mAvailable:I

    add-int/2addr v4, v5

    iput v4, p2, Ltds/androidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mScrollingOffset:I

    .line 1617
    :cond_6c
    invoke-direct {p0, p1, p2}, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->recycleByLayoutState(Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;Ltds/androidx/recyclerview/widget/LinearLayoutManager$LayoutState;)V

    .line 1619
    :cond_6f
    if-eqz p4, :cond_1d

    iget-boolean v4, v3, Ltds/androidx/recyclerview/widget/LinearLayoutManager$LayoutChunkResult;->mFocusable:Z

    if-eqz v4, :cond_1d

    .line 1626
    :cond_75
    :goto_75
    iget v2, p2, Ltds/androidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mAvailable:I

    sub-int v2, v0, v2

    return v2
.end method

.method public findFirstCompletelyVisibleItemPosition()I
    .registers 4

    .line 1967
    invoke-virtual {p0}, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v0, v2, v1}, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->findOneVisibleChild(IIZZ)Landroid/view/View;

    move-result-object v0

    .line 1968
    .local v0, "child":Landroid/view/View;
    if-nez v0, :cond_e

    const/4 v1, -0x1

    goto :goto_12

    :cond_e
    invoke-virtual {p0, v0}, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v1

    :goto_12
    return v1
.end method

.method findFirstVisibleChildClosestToEnd(ZZ)Landroid/view/View;
    .registers 5
    .param p1, "completelyVisible"    # Z
    .param p2, "acceptPartiallyVisible"    # Z

    .line 1805
    iget-boolean v0, p0, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    if-eqz v0, :cond_e

    .line 1806
    const/4 v0, 0x0

    invoke-virtual {p0}, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->getChildCount()I

    move-result v1

    invoke-virtual {p0, v0, v1, p1, p2}, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->findOneVisibleChild(IIZZ)Landroid/view/View;

    move-result-object v0

    return-object v0

    .line 1809
    :cond_e
    invoke-virtual {p0}, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1, p1, p2}, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->findOneVisibleChild(IIZZ)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method findFirstVisibleChildClosestToStart(ZZ)Landroid/view/View;
    .registers 5
    .param p1, "completelyVisible"    # Z
    .param p2, "acceptPartiallyVisible"    # Z

    .line 1787
    iget-boolean v0, p0, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    if-eqz v0, :cond_10

    .line 1788
    invoke-virtual {p0}, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1, p1, p2}, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->findOneVisibleChild(IIZZ)Landroid/view/View;

    move-result-object v0

    return-object v0

    .line 1791
    :cond_10
    const/4 v0, 0x0

    invoke-virtual {p0}, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->getChildCount()I

    move-result v1

    invoke-virtual {p0, v0, v1, p1, p2}, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->findOneVisibleChild(IIZZ)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public findFirstVisibleItemPosition()I
    .registers 4

    .line 1950
    invoke-virtual {p0}, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v0, v1, v2}, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->findOneVisibleChild(IIZZ)Landroid/view/View;

    move-result-object v0

    .line 1951
    .local v0, "child":Landroid/view/View;
    if-nez v0, :cond_e

    const/4 v1, -0x1

    goto :goto_12

    :cond_e
    invoke-virtual {p0, v0}, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v1

    :goto_12
    return v1
.end method

.method public findLastCompletelyVisibleItemPosition()I
    .registers 5

    .line 2007
    invoke-virtual {p0}, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v2, v1, v3}, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->findOneVisibleChild(IIZZ)Landroid/view/View;

    move-result-object v0

    .line 2008
    .local v0, "child":Landroid/view/View;
    if-nez v0, :cond_f

    goto :goto_13

    :cond_f
    invoke-virtual {p0, v0}, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v2

    :goto_13
    return v2
.end method

.method public findLastVisibleItemPosition()I
    .registers 5

    .line 1990
    invoke-virtual {p0}, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v2, v3, v1}, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->findOneVisibleChild(IIZZ)Landroid/view/View;

    move-result-object v0

    .line 1991
    .local v0, "child":Landroid/view/View;
    if-nez v0, :cond_f

    goto :goto_13

    :cond_f
    invoke-virtual {p0, v0}, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v2

    :goto_13
    return v2
.end method

.method findOnePartiallyOrCompletelyInvisibleChild(II)Landroid/view/View;
    .registers 8
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I

    .line 2039
    invoke-virtual {p0}, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->ensureLayoutState()V

    .line 2040
    if-le p2, p1, :cond_7

    const/4 v0, 0x1

    goto :goto_c

    :cond_7
    if-ge p2, p1, :cond_b

    const/4 v0, -0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    .line 2041
    .local v0, "next":I
    :goto_c
    if-nez v0, :cond_13

    .line 2042
    invoke-virtual {p0, p1}, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    return-object v1

    .line 2044
    :cond_13
    const/4 v1, 0x0

    .line 2045
    .local v1, "preferredBoundsFlag":I
    const/4 v2, 0x0

    .line 2046
    .local v2, "acceptableBoundsFlag":I
    iget-object v3, p0, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Ltds/androidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {p0, p1}, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v3, v4}, Ltds/androidx/recyclerview/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v3

    iget-object v4, p0, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Ltds/androidx/recyclerview/widget/OrientationHelper;

    .line 2047
    invoke-virtual {v4}, Ltds/androidx/recyclerview/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v4

    if-ge v3, v4, :cond_2c

    .line 2048
    const/16 v1, 0x4104

    .line 2050
    const/16 v2, 0x4004

    goto :goto_30

    .line 2053
    :cond_2c
    const/16 v1, 0x1041

    .line 2055
    const/16 v2, 0x1001

    .line 2058
    :goto_30
    iget v3, p0, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->mOrientation:I

    if-nez v3, :cond_3b

    iget-object v3, p0, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->mHorizontalBoundCheck:Ltds/androidx/recyclerview/widget/ViewBoundsCheck;

    .line 2059
    invoke-virtual {v3, p1, p2, v1, v2}, Ltds/androidx/recyclerview/widget/ViewBoundsCheck;->findOneViewWithinBoundFlags(IIII)Landroid/view/View;

    move-result-object v3

    goto :goto_41

    :cond_3b
    iget-object v3, p0, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->mVerticalBoundCheck:Ltds/androidx/recyclerview/widget/ViewBoundsCheck;

    .line 2061
    invoke-virtual {v3, p1, p2, v1, v2}, Ltds/androidx/recyclerview/widget/ViewBoundsCheck;->findOneViewWithinBoundFlags(IIII)Landroid/view/View;

    move-result-object v3

    .line 2058
    :goto_41
    return-object v3
.end method

.method findOneVisibleChild(IIZZ)Landroid/view/View;
    .registers 8
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I
    .param p3, "completelyVisible"    # Z
    .param p4, "acceptPartiallyVisible"    # Z

    .line 2017
    invoke-virtual {p0}, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->ensureLayoutState()V

    .line 2018
    const/4 v0, 0x0

    .line 2019
    .local v0, "preferredBoundsFlag":I
    const/4 v1, 0x0

    .line 2020
    .local v1, "acceptableBoundsFlag":I
    if-eqz p3, :cond_a

    .line 2021
    const/16 v0, 0x6003

    goto :goto_c

    .line 2024
    :cond_a
    const/16 v0, 0x140

    .line 2027
    :goto_c
    if-eqz p4, :cond_10

    .line 2028
    const/16 v1, 0x140

    .line 2031
    :cond_10
    iget v2, p0, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->mOrientation:I

    if-nez v2, :cond_1b

    iget-object v2, p0, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->mHorizontalBoundCheck:Ltds/androidx/recyclerview/widget/ViewBoundsCheck;

    .line 2032
    invoke-virtual {v2, p1, p2, v0, v1}, Ltds/androidx/recyclerview/widget/ViewBoundsCheck;->findOneViewWithinBoundFlags(IIII)Landroid/view/View;

    move-result-object v2

    goto :goto_21

    :cond_1b
    iget-object v2, p0, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->mVerticalBoundCheck:Ltds/androidx/recyclerview/widget/ViewBoundsCheck;

    .line 2034
    invoke-virtual {v2, p1, p2, v0, v1}, Ltds/androidx/recyclerview/widget/ViewBoundsCheck;->findOneViewWithinBoundFlags(IIII)Landroid/view/View;

    move-result-object v2

    .line 2031
    :goto_21
    return-object v2
.end method

.method findReferenceChild(Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;Ltds/androidx/recyclerview/widget/RecyclerView$State;ZZ)Landroid/view/View;
    .registers 23
    .param p1, "recycler"    # Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;
    .param p2, "state"    # Ltds/androidx/recyclerview/widget/RecyclerView$State;
    .param p3, "layoutFromEnd"    # Z
    .param p4, "traverseChildrenInReverseOrder"    # Z

    .line 1837
    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->ensureLayoutState()V

    .line 1840
    const/4 v1, 0x0

    .line 1841
    .local v1, "start":I
    invoke-virtual/range {p0 .. p0}, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->getChildCount()I

    move-result v2

    .line 1842
    .local v2, "end":I
    const/4 v3, 0x1

    .line 1843
    .local v3, "diff":I
    const/4 v4, 0x1

    if-eqz p4, :cond_16

    .line 1844
    invoke-virtual/range {p0 .. p0}, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->getChildCount()I

    move-result v5

    add-int/lit8 v1, v5, -0x1

    .line 1845
    const/4 v2, -0x1

    .line 1846
    const/4 v3, -0x1

    .line 1849
    :cond_16
    invoke-virtual/range {p2 .. p2}, Ltds/androidx/recyclerview/widget/RecyclerView$State;->getItemCount()I

    move-result v5

    .line 1851
    .local v5, "itemCount":I
    iget-object v6, v0, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Ltds/androidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {v6}, Ltds/androidx/recyclerview/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v6

    .line 1852
    .local v6, "boundsStart":I
    iget-object v7, v0, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Ltds/androidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {v7}, Ltds/androidx/recyclerview/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v7

    .line 1854
    .local v7, "boundsEnd":I
    const/4 v8, 0x0

    .line 1855
    .local v8, "invalidMatch":Landroid/view/View;
    const/4 v9, 0x0

    .line 1856
    .local v9, "bestFirstFind":Landroid/view/View;
    const/4 v10, 0x0

    .line 1858
    .local v10, "bestSecondFind":Landroid/view/View;
    move v11, v1

    .local v11, "i":I
    :goto_2a
    if-eq v11, v2, :cond_7e

    .line 1859
    invoke-virtual {v0, v11}, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    .line 1860
    .local v12, "view":Landroid/view/View;
    invoke-virtual {v0, v12}, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v13

    .line 1861
    .local v13, "position":I
    iget-object v14, v0, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Ltds/androidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {v14, v12}, Ltds/androidx/recyclerview/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v14

    .line 1862
    .local v14, "childStart":I
    iget-object v15, v0, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Ltds/androidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {v15, v12}, Ltds/androidx/recyclerview/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v15

    .line 1863
    .local v15, "childEnd":I
    if-ltz v13, :cond_7c

    if-ge v13, v5, :cond_7c

    .line 1864
    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v16

    check-cast v16, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutParams;

    invoke-virtual/range {v16 .. v16}, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutParams;->isItemRemoved()Z

    move-result v16

    if-eqz v16, :cond_54

    .line 1865
    if-nez v8, :cond_7c

    .line 1866
    move-object v8, v12

    goto :goto_7c

    .line 1871
    :cond_54
    const/16 v16, 0x0

    if-gt v15, v6, :cond_5d

    if-ge v14, v6, :cond_5d

    move/from16 v17, v4

    goto :goto_5f

    :cond_5d
    move/from16 v17, v16

    .line 1872
    .local v17, "outOfBoundsBefore":Z
    :goto_5f
    if-lt v14, v7, :cond_65

    if-le v15, v7, :cond_65

    move/from16 v16, v4

    .line 1873
    .local v16, "outOfBoundsAfter":Z
    :cond_65
    if-nez v17, :cond_6b

    if-eqz v16, :cond_6a

    goto :goto_6b

    .line 1896
    :cond_6a
    return-object v12

    .line 1881
    :cond_6b
    :goto_6b
    if-eqz p3, :cond_75

    .line 1882
    if-eqz v16, :cond_71

    .line 1883
    move-object v9, v12

    goto :goto_7c

    .line 1884
    :cond_71
    if-nez v10, :cond_7c

    .line 1885
    move-object v10, v12

    goto :goto_7c

    .line 1888
    :cond_75
    if-eqz v17, :cond_79

    .line 1889
    move-object v9, v12

    goto :goto_7c

    .line 1890
    :cond_79
    if-nez v10, :cond_7c

    .line 1891
    move-object v10, v12

    .line 1858
    .end local v12    # "view":Landroid/view/View;
    .end local v13    # "position":I
    .end local v14    # "childStart":I
    .end local v15    # "childEnd":I
    .end local v16    # "outOfBoundsAfter":Z
    .end local v17    # "outOfBoundsBefore":Z
    :cond_7c
    :goto_7c
    add-int/2addr v11, v3

    goto :goto_2a

    .line 1905
    .end local v11    # "i":I
    :cond_7e
    if-eqz v10, :cond_82

    move-object v4, v10

    goto :goto_87

    :cond_82
    if-eqz v9, :cond_86

    move-object v4, v9

    goto :goto_87

    :cond_86
    move-object v4, v8

    :goto_87
    return-object v4
.end method

.method public findViewByPosition(I)Landroid/view/View;
    .registers 7
    .param p1, "position"    # I

    .line 410
    invoke-virtual {p0}, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->getChildCount()I

    move-result v0

    .line 411
    .local v0, "childCount":I
    if-nez v0, :cond_8

    .line 412
    const/4 v1, 0x0

    return-object v1

    .line 414
    :cond_8
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v1

    .line 415
    .local v1, "firstChild":I
    sub-int v2, p1, v1

    .line 416
    .local v2, "viewPosition":I
    if-ltz v2, :cond_22

    if-ge v2, v0, :cond_22

    .line 417
    invoke-virtual {p0, v2}, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 418
    .local v3, "child":Landroid/view/View;
    invoke-virtual {p0, v3}, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v4

    if-ne v4, p1, :cond_22

    .line 419
    return-object v3

    .line 423
    .end local v3    # "child":Landroid/view/View;
    :cond_22
    invoke-super {p0, p1}, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v3

    return-object v3
.end method

.method public generateDefaultLayoutParams()Ltds/androidx/recyclerview/widget/RecyclerView$LayoutParams;
    .registers 3

    .line 200
    new-instance v0, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method protected getExtraLayoutSpace(Ltds/androidx/recyclerview/widget/RecyclerView$State;)I
    .registers 3
    .param p1, "state"    # Ltds/androidx/recyclerview/widget/RecyclerView$State;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 450
    invoke-virtual {p1}, Ltds/androidx/recyclerview/widget/RecyclerView$State;->hasTargetScrollPosition()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 451
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Ltds/androidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {v0}, Ltds/androidx/recyclerview/widget/OrientationHelper;->getTotalSpace()I

    move-result v0

    return v0

    .line 453
    :cond_d
    const/4 v0, 0x0

    return v0
.end method

.method public getInitialPrefetchItemCount()I
    .registers 2

    .line 1366
    iget v0, p0, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->mInitialPrefetchItemCount:I

    return v0
.end method

.method public getOrientation()I
    .registers 2

    .line 333
    iget v0, p0, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->mOrientation:I

    return v0
.end method

.method public getRecycleChildrenOnDetach()Z
    .registers 2

    .line 212
    iget-boolean v0, p0, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->mRecycleChildrenOnDetach:Z

    return v0
.end method

.method public getReverseLayout()Z
    .registers 2

    .line 379
    iget-boolean v0, p0, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->mReverseLayout:Z

    return v0
.end method

.method public getStackFromEnd()Z
    .registers 2

    .line 322
    iget-boolean v0, p0, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->mStackFromEnd:Z

    return v0
.end method

.method public isAutoMeasureEnabled()Z
    .registers 2

    .line 192
    const/4 v0, 0x1

    return v0
.end method

.method protected isLayoutRTL()Z
    .registers 3

    .line 1044
    invoke-virtual {p0}, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->getLayoutDirection()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_8

    goto :goto_9

    :cond_8
    const/4 v1, 0x0

    :goto_9
    return v1
.end method

.method public isSmoothScrollbarEnabled()Z
    .registers 2

    .line 1229
    iget-boolean v0, p0, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->mSmoothScrollbarEnabled:Z

    return v0
.end method

.method layoutChunk(Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;Ltds/androidx/recyclerview/widget/RecyclerView$State;Ltds/androidx/recyclerview/widget/LinearLayoutManager$LayoutState;Ltds/androidx/recyclerview/widget/LinearLayoutManager$LayoutChunkResult;)V
    .registers 22
    .param p1, "recycler"    # Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;
    .param p2, "state"    # Ltds/androidx/recyclerview/widget/RecyclerView$State;
    .param p3, "layoutState"    # Ltds/androidx/recyclerview/widget/LinearLayoutManager$LayoutState;
    .param p4, "result"    # Ltds/androidx/recyclerview/widget/LinearLayoutManager$LayoutChunkResult;

    .line 1631
    move-object/from16 v6, p0

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p1

    invoke-virtual {v7, v9}, Ltds/androidx/recyclerview/widget/LinearLayoutManager$LayoutState;->next(Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;)Landroid/view/View;

    move-result-object v10

    .line 1632
    .local v10, "view":Landroid/view/View;
    const/4 v11, 0x1

    if-nez v10, :cond_12

    .line 1638
    iput-boolean v11, v8, Ltds/androidx/recyclerview/widget/LinearLayoutManager$LayoutChunkResult;->mFinished:Z

    .line 1639
    return-void

    .line 1641
    :cond_12
    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutParams;

    .line 1642
    .local v12, "params":Ltds/androidx/recyclerview/widget/RecyclerView$LayoutParams;
    iget-object v0, v7, Ltds/androidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mScrapList:Ljava/util/List;

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-nez v0, :cond_32

    .line 1643
    iget-boolean v0, v6, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    iget v3, v7, Ltds/androidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mLayoutDirection:I

    if-ne v3, v1, :cond_27

    move v3, v11

    goto :goto_28

    :cond_27
    move v3, v2

    :goto_28
    if-ne v0, v3, :cond_2e

    .line 1645
    invoke-virtual {v6, v10}, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->addView(Landroid/view/View;)V

    goto :goto_44

    .line 1647
    :cond_2e
    invoke-virtual {v6, v10, v2}, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->addView(Landroid/view/View;I)V

    goto :goto_44

    .line 1650
    :cond_32
    iget-boolean v0, v6, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    iget v3, v7, Ltds/androidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mLayoutDirection:I

    if-ne v3, v1, :cond_3a

    move v3, v11

    goto :goto_3b

    :cond_3a
    move v3, v2

    :goto_3b
    if-ne v0, v3, :cond_41

    .line 1652
    invoke-virtual {v6, v10}, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->addDisappearingView(Landroid/view/View;)V

    goto :goto_44

    .line 1654
    :cond_41
    invoke-virtual {v6, v10, v2}, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->addDisappearingView(Landroid/view/View;I)V

    .line 1657
    :goto_44
    invoke-virtual {v6, v10, v2, v2}, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->measureChildWithMargins(Landroid/view/View;II)V

    .line 1658
    iget-object v0, v6, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Ltds/androidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {v0, v10}, Ltds/androidx/recyclerview/widget/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v0

    iput v0, v8, Ltds/androidx/recyclerview/widget/LinearLayoutManager$LayoutChunkResult;->mConsumed:I

    .line 1660
    iget v0, v6, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->mOrientation:I

    if-ne v0, v11, :cond_94

    .line 1661
    invoke-virtual/range {p0 .. p0}, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->isLayoutRTL()Z

    move-result v0

    if-eqz v0, :cond_6b

    .line 1662
    invoke-virtual/range {p0 .. p0}, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->getWidth()I

    move-result v0

    invoke-virtual/range {p0 .. p0}, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->getPaddingRight()I

    move-result v2

    sub-int/2addr v0, v2

    .line 1663
    .local v0, "right":I
    iget-object v2, v6, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Ltds/androidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {v2, v10}, Ltds/androidx/recyclerview/widget/OrientationHelper;->getDecoratedMeasurementInOther(Landroid/view/View;)I

    move-result v2

    sub-int v2, v0, v2

    .local v2, "left":I
    goto :goto_76

    .line 1665
    .end local v0    # "right":I
    .end local v2    # "left":I
    :cond_6b
    invoke-virtual/range {p0 .. p0}, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->getPaddingLeft()I

    move-result v2

    .line 1666
    .restart local v2    # "left":I
    iget-object v0, v6, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Ltds/androidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {v0, v10}, Ltds/androidx/recyclerview/widget/OrientationHelper;->getDecoratedMeasurementInOther(Landroid/view/View;)I

    move-result v0

    add-int/2addr v0, v2

    .line 1668
    .restart local v0    # "right":I
    :goto_76
    iget v3, v7, Ltds/androidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mLayoutDirection:I

    if-ne v3, v1, :cond_87

    .line 1669
    iget v1, v7, Ltds/androidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mOffset:I

    .line 1670
    .local v1, "bottom":I
    iget v3, v7, Ltds/androidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mOffset:I

    iget v4, v8, Ltds/androidx/recyclerview/widget/LinearLayoutManager$LayoutChunkResult;->mConsumed:I

    sub-int/2addr v3, v4

    move v13, v0

    move v14, v1

    move v15, v2

    move/from16 v16, v3

    .local v3, "top":I
    goto :goto_bc

    .line 1672
    .end local v1    # "bottom":I
    .end local v3    # "top":I
    :cond_87
    iget v3, v7, Ltds/androidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mOffset:I

    .line 1673
    .restart local v3    # "top":I
    iget v1, v7, Ltds/androidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mOffset:I

    iget v4, v8, Ltds/androidx/recyclerview/widget/LinearLayoutManager$LayoutChunkResult;->mConsumed:I

    add-int/2addr v1, v4

    move v13, v0

    move v14, v1

    move v15, v2

    move/from16 v16, v3

    .restart local v1    # "bottom":I
    goto :goto_bc

    .line 1676
    .end local v0    # "right":I
    .end local v1    # "bottom":I
    .end local v2    # "left":I
    .end local v3    # "top":I
    :cond_94
    invoke-virtual/range {p0 .. p0}, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->getPaddingTop()I

    move-result v3

    .line 1677
    .restart local v3    # "top":I
    iget-object v0, v6, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Ltds/androidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {v0, v10}, Ltds/androidx/recyclerview/widget/OrientationHelper;->getDecoratedMeasurementInOther(Landroid/view/View;)I

    move-result v0

    add-int/2addr v0, v3

    .line 1679
    .local v0, "bottom":I
    iget v2, v7, Ltds/androidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mLayoutDirection:I

    if-ne v2, v1, :cond_b0

    .line 1680
    iget v1, v7, Ltds/androidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mOffset:I

    .line 1681
    .local v1, "right":I
    iget v2, v7, Ltds/androidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mOffset:I

    iget v4, v8, Ltds/androidx/recyclerview/widget/LinearLayoutManager$LayoutChunkResult;->mConsumed:I

    sub-int/2addr v2, v4

    move v14, v0

    move v13, v1

    move v15, v2

    move/from16 v16, v3

    .restart local v2    # "left":I
    goto :goto_bc

    .line 1683
    .end local v1    # "right":I
    .end local v2    # "left":I
    :cond_b0
    iget v2, v7, Ltds/androidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mOffset:I

    .line 1684
    .restart local v2    # "left":I
    iget v1, v7, Ltds/androidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mOffset:I

    iget v4, v8, Ltds/androidx/recyclerview/widget/LinearLayoutManager$LayoutChunkResult;->mConsumed:I

    add-int/2addr v1, v4

    move v14, v0

    move v13, v1

    move v15, v2

    move/from16 v16, v3

    .line 1689
    .end local v0    # "bottom":I
    .end local v2    # "left":I
    .end local v3    # "top":I
    .local v13, "right":I
    .local v14, "bottom":I
    .local v15, "left":I
    .local v16, "top":I
    :goto_bc
    move-object/from16 v0, p0

    move-object v1, v10

    move v2, v15

    move/from16 v3, v16

    move v4, v13

    move v5, v14

    invoke-virtual/range {v0 .. v5}, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->layoutDecoratedWithMargins(Landroid/view/View;IIII)V

    .line 1696
    invoke-virtual {v12}, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutParams;->isItemRemoved()Z

    move-result v0

    if-nez v0, :cond_d3

    invoke-virtual {v12}, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutParams;->isItemChanged()Z

    move-result v0

    if-eqz v0, :cond_d5

    .line 1697
    :cond_d3
    iput-boolean v11, v8, Ltds/androidx/recyclerview/widget/LinearLayoutManager$LayoutChunkResult;->mIgnoreConsumed:Z

    .line 1699
    :cond_d5
    invoke-virtual {v10}, Landroid/view/View;->hasFocusable()Z

    move-result v0

    iput-boolean v0, v8, Ltds/androidx/recyclerview/widget/LinearLayoutManager$LayoutChunkResult;->mFocusable:Z

    .line 1700
    return-void
.end method

.method onAnchorReady(Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;Ltds/androidx/recyclerview/widget/RecyclerView$State;Ltds/androidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;I)V
    .registers 5
    .param p1, "recycler"    # Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;
    .param p2, "state"    # Ltds/androidx/recyclerview/widget/RecyclerView$State;
    .param p3, "anchorInfo"    # Ltds/androidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;
    .param p4, "firstLayoutItemDirection"    # I

    .line 747
    return-void
.end method

.method public onDetachedFromWindow(Ltds/androidx/recyclerview/widget/RecyclerView;Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;)V
    .registers 4
    .param p1, "view"    # Ltds/androidx/recyclerview/widget/RecyclerView;
    .param p2, "recycler"    # Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;

    .line 234
    invoke-super {p0, p1, p2}, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;->onDetachedFromWindow(Ltds/androidx/recyclerview/widget/RecyclerView;Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;)V

    .line 235
    iget-boolean v0, p0, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->mRecycleChildrenOnDetach:Z

    if-eqz v0, :cond_d

    .line 236
    invoke-virtual {p0, p2}, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->removeAndRecycleAllViews(Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;)V

    .line 237
    invoke-virtual {p2}, Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;->clear()V

    .line 239
    :cond_d
    return-void
.end method

.method public onFocusSearchFailed(Landroid/view/View;ILtds/androidx/recyclerview/widget/RecyclerView$Recycler;Ltds/androidx/recyclerview/widget/RecyclerView$State;)Landroid/view/View;
    .registers 11
    .param p1, "focused"    # Landroid/view/View;
    .param p2, "focusDirection"    # I
    .param p3, "recycler"    # Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;
    .param p4, "state"    # Ltds/androidx/recyclerview/widget/RecyclerView$State;

    .line 2068
    invoke-direct {p0}, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->resolveShouldLayoutReverse()V

    .line 2069
    invoke-virtual {p0}, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_b

    .line 2070
    return-object v1

    .line 2073
    :cond_b
    invoke-virtual {p0, p2}, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->convertFocusDirectionToLayoutDirection(I)I

    move-result v0

    .line 2074
    .local v0, "layoutDir":I
    const/high16 v2, -0x80000000

    if-ne v0, v2, :cond_14

    .line 2075
    return-object v1

    .line 2077
    :cond_14
    invoke-virtual {p0}, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->ensureLayoutState()V

    .line 2078
    const v3, 0x3eaaaaab

    iget-object v4, p0, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Ltds/androidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {v4}, Ltds/androidx/recyclerview/widget/OrientationHelper;->getTotalSpace()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v3

    float-to-int v3, v4

    .line 2079
    .local v3, "maxScroll":I
    const/4 v4, 0x0

    invoke-direct {p0, v0, v3, v4, p4}, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->updateLayoutState(IIZLtds/androidx/recyclerview/widget/RecyclerView$State;)V

    .line 2080
    iget-object v5, p0, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Ltds/androidx/recyclerview/widget/LinearLayoutManager$LayoutState;

    iput v2, v5, Ltds/androidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mScrollingOffset:I

    .line 2081
    iget-object v2, p0, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Ltds/androidx/recyclerview/widget/LinearLayoutManager$LayoutState;

    iput-boolean v4, v2, Ltds/androidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mRecycle:Z

    .line 2082
    iget-object v2, p0, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Ltds/androidx/recyclerview/widget/LinearLayoutManager$LayoutState;

    const/4 v4, 0x1

    invoke-virtual {p0, p3, v2, p4, v4}, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->fill(Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;Ltds/androidx/recyclerview/widget/LinearLayoutManager$LayoutState;Ltds/androidx/recyclerview/widget/RecyclerView$State;Z)I

    .line 2089
    const/4 v2, -0x1

    if-ne v0, v2, :cond_3d

    .line 2090
    invoke-direct {p0}, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->findPartiallyOrCompletelyInvisibleChildClosestToStart()Landroid/view/View;

    move-result-object v4

    .local v4, "nextCandidate":Landroid/view/View;
    goto :goto_41

    .line 2092
    .end local v4    # "nextCandidate":Landroid/view/View;
    :cond_3d
    invoke-direct {p0}, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->findPartiallyOrCompletelyInvisibleChildClosestToEnd()Landroid/view/View;

    move-result-object v4

    .line 2097
    .restart local v4    # "nextCandidate":Landroid/view/View;
    :goto_41
    if-ne v0, v2, :cond_48

    .line 2098
    invoke-direct {p0}, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->getChildClosestToStart()Landroid/view/View;

    move-result-object v2

    .local v2, "nextFocus":Landroid/view/View;
    goto :goto_4c

    .line 2100
    .end local v2    # "nextFocus":Landroid/view/View;
    :cond_48
    invoke-direct {p0}, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->getChildClosestToEnd()Landroid/view/View;

    move-result-object v2

    .line 2102
    .restart local v2    # "nextFocus":Landroid/view/View;
    :goto_4c
    invoke-virtual {v2}, Landroid/view/View;->hasFocusable()Z

    move-result v5

    if-eqz v5, :cond_56

    .line 2103
    if-nez v4, :cond_55

    .line 2104
    return-object v1

    .line 2106
    :cond_55
    return-object v2

    .line 2108
    :cond_56
    return-object v4
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 3
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .line 243
    invoke-super {p0, p1}, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 244
    invoke-virtual {p0}, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->getChildCount()I

    move-result v0

    if-lez v0, :cond_17

    .line 245
    invoke-virtual {p0}, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setFromIndex(I)V

    .line 246
    invoke-virtual {p0}, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setToIndex(I)V

    .line 248
    :cond_17
    return-void
.end method

.method public onLayoutChildren(Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;Ltds/androidx/recyclerview/widget/RecyclerView$State;)V
    .registers 14
    .param p1, "recycler"    # Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;
    .param p2, "state"    # Ltds/androidx/recyclerview/widget/RecyclerView$State;

    .line 540
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->mPendingSavedState:Ltds/androidx/recyclerview/widget/LinearLayoutManager$SavedState;

    const/4 v1, -0x1

    if-nez v0, :cond_9

    iget v0, p0, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->mPendingScrollPosition:I

    if-eq v0, v1, :cond_13

    .line 541
    :cond_9
    invoke-virtual {p2}, Ltds/androidx/recyclerview/widget/RecyclerView$State;->getItemCount()I

    move-result v0

    if-nez v0, :cond_13

    .line 542
    invoke-virtual {p0, p1}, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->removeAndRecycleAllViews(Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;)V

    .line 543
    return-void

    .line 546
    :cond_13
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->mPendingSavedState:Ltds/androidx/recyclerview/widget/LinearLayoutManager$SavedState;

    if-eqz v0, :cond_23

    invoke-virtual {v0}, Ltds/androidx/recyclerview/widget/LinearLayoutManager$SavedState;->hasValidAnchor()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 547
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->mPendingSavedState:Ltds/androidx/recyclerview/widget/LinearLayoutManager$SavedState;

    iget v0, v0, Ltds/androidx/recyclerview/widget/LinearLayoutManager$SavedState;->mAnchorPosition:I

    iput v0, p0, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->mPendingScrollPosition:I

    .line 550
    :cond_23
    invoke-virtual {p0}, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->ensureLayoutState()V

    .line 551
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Ltds/androidx/recyclerview/widget/LinearLayoutManager$LayoutState;

    const/4 v2, 0x0

    iput-boolean v2, v0, Ltds/androidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mRecycle:Z

    .line 553
    invoke-direct {p0}, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->resolveShouldLayoutReverse()V

    .line 555
    invoke-virtual {p0}, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->getFocusedChild()Landroid/view/View;

    move-result-object v0

    .line 556
    .local v0, "focused":Landroid/view/View;
    iget-object v3, p0, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->mAnchorInfo:Ltds/androidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;

    iget-boolean v3, v3, Ltds/androidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;->mValid:Z

    const/4 v4, 0x1

    if-eqz v3, :cond_6a

    iget v3, p0, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->mPendingScrollPosition:I

    if-ne v3, v1, :cond_6a

    iget-object v3, p0, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->mPendingSavedState:Ltds/androidx/recyclerview/widget/LinearLayoutManager$SavedState;

    if-eqz v3, :cond_42

    goto :goto_6a

    .line 563
    :cond_42
    if-eqz v0, :cond_81

    iget-object v3, p0, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Ltds/androidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {v3, v0}, Ltds/androidx/recyclerview/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v3

    iget-object v5, p0, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Ltds/androidx/recyclerview/widget/OrientationHelper;

    .line 564
    invoke-virtual {v5}, Ltds/androidx/recyclerview/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v5

    if-ge v3, v5, :cond_60

    iget-object v3, p0, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Ltds/androidx/recyclerview/widget/OrientationHelper;

    .line 565
    invoke-virtual {v3, v0}, Ltds/androidx/recyclerview/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v3

    iget-object v5, p0, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Ltds/androidx/recyclerview/widget/OrientationHelper;

    .line 566
    invoke-virtual {v5}, Ltds/androidx/recyclerview/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v5

    if-gt v3, v5, :cond_81

    .line 578
    :cond_60
    iget-object v3, p0, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->mAnchorInfo:Ltds/androidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;

    invoke-virtual {p0, v0}, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v5

    invoke-virtual {v3, v0, v5}, Ltds/androidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;->assignFromViewAndKeepVisibleRect(Landroid/view/View;I)V

    goto :goto_81

    .line 558
    :cond_6a
    :goto_6a
    iget-object v3, p0, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->mAnchorInfo:Ltds/androidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;

    invoke-virtual {v3}, Ltds/androidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;->reset()V

    .line 559
    iget-object v3, p0, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->mAnchorInfo:Ltds/androidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;

    iget-boolean v5, p0, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    iget-boolean v6, p0, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->mStackFromEnd:Z

    xor-int/2addr v5, v6

    iput-boolean v5, v3, Ltds/androidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    .line 561
    iget-object v3, p0, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->mAnchorInfo:Ltds/androidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;

    invoke-direct {p0, p1, p2, v3}, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->updateAnchorInfoForLayout(Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;Ltds/androidx/recyclerview/widget/RecyclerView$State;Ltds/androidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;)V

    .line 562
    iget-object v3, p0, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->mAnchorInfo:Ltds/androidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;

    iput-boolean v4, v3, Ltds/androidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;->mValid:Z

    .line 587
    :cond_81
    :goto_81
    iget-object v3, p0, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Ltds/androidx/recyclerview/widget/LinearLayoutManager$LayoutState;

    iget v5, v3, Ltds/androidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mLastScrollDelta:I

    if-ltz v5, :cond_89

    move v5, v4

    goto :goto_8a

    :cond_89
    move v5, v1

    :goto_8a
    iput v5, v3, Ltds/androidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mLayoutDirection:I

    .line 589
    iget-object v3, p0, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->mReusableIntPair:[I

    aput v2, v3, v2

    .line 590
    aput v2, v3, v4

    .line 591
    invoke-virtual {p0, p2, v3}, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->calculateExtraLayoutSpace(Ltds/androidx/recyclerview/widget/RecyclerView$State;[I)V

    .line 592
    iget-object v3, p0, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->mReusableIntPair:[I

    aget v3, v3, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    iget-object v5, p0, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Ltds/androidx/recyclerview/widget/OrientationHelper;

    .line 593
    invoke-virtual {v5}, Ltds/androidx/recyclerview/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v5

    add-int/2addr v3, v5

    .line 594
    .local v3, "extraForStart":I
    iget-object v5, p0, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->mReusableIntPair:[I

    aget v5, v5, v4

    invoke-static {v2, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    iget-object v6, p0, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Ltds/androidx/recyclerview/widget/OrientationHelper;

    .line 595
    invoke-virtual {v6}, Ltds/androidx/recyclerview/widget/OrientationHelper;->getEndPadding()I

    move-result v6

    add-int/2addr v5, v6

    .line 596
    .local v5, "extraForEnd":I
    invoke-virtual {p2}, Ltds/androidx/recyclerview/widget/RecyclerView$State;->isPreLayout()Z

    move-result v6

    if-eqz v6, :cond_f4

    iget v6, p0, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->mPendingScrollPosition:I

    if-eq v6, v1, :cond_f4

    iget v7, p0, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->mPendingScrollPositionOffset:I

    const/high16 v8, -0x80000000

    if-eq v7, v8, :cond_f4

    .line 601
    invoke-virtual {p0, v6}, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v6

    .line 602
    .local v6, "existing":Landroid/view/View;
    if-eqz v6, :cond_f4

    .line 605
    iget-boolean v7, p0, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    if-eqz v7, :cond_df

    .line 606
    iget-object v7, p0, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Ltds/androidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {v7}, Ltds/androidx/recyclerview/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v7

    iget-object v8, p0, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Ltds/androidx/recyclerview/widget/OrientationHelper;

    .line 607
    invoke-virtual {v8, v6}, Ltds/androidx/recyclerview/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v8

    sub-int/2addr v7, v8

    .line 608
    .local v7, "current":I
    iget v8, p0, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->mPendingScrollPositionOffset:I

    sub-int v8, v7, v8

    .local v8, "upcomingOffset":I
    goto :goto_ef

    .line 610
    .end local v7    # "current":I
    .end local v8    # "upcomingOffset":I
    :cond_df
    iget-object v7, p0, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Ltds/androidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {v7, v6}, Ltds/androidx/recyclerview/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v7

    iget-object v8, p0, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Ltds/androidx/recyclerview/widget/OrientationHelper;

    .line 611
    invoke-virtual {v8}, Ltds/androidx/recyclerview/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v8

    sub-int/2addr v7, v8

    .line 612
    .restart local v7    # "current":I
    iget v8, p0, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->mPendingScrollPositionOffset:I

    sub-int/2addr v8, v7

    .line 614
    .restart local v8    # "upcomingOffset":I
    :goto_ef
    if-lez v8, :cond_f3

    .line 615
    add-int/2addr v3, v8

    goto :goto_f4

    .line 617
    :cond_f3
    sub-int/2addr v5, v8

    .line 624
    .end local v6    # "existing":Landroid/view/View;
    .end local v7    # "current":I
    .end local v8    # "upcomingOffset":I
    :cond_f4
    :goto_f4
    iget-object v6, p0, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->mAnchorInfo:Ltds/androidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;

    iget-boolean v6, v6, Ltds/androidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    if-eqz v6, :cond_100

    .line 625
    iget-boolean v6, p0, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    if-eqz v6, :cond_ff

    move v1, v4

    .local v1, "firstLayoutDirection":I
    :cond_ff
    goto :goto_106

    .line 628
    .end local v1    # "firstLayoutDirection":I
    :cond_100
    iget-boolean v6, p0, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    if-eqz v6, :cond_105

    goto :goto_106

    :cond_105
    move v1, v4

    .line 632
    .restart local v1    # "firstLayoutDirection":I
    :goto_106
    iget-object v6, p0, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->mAnchorInfo:Ltds/androidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;

    invoke-virtual {p0, p1, p2, v6, v1}, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->onAnchorReady(Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;Ltds/androidx/recyclerview/widget/RecyclerView$State;Ltds/androidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;I)V

    .line 633
    invoke-virtual {p0, p1}, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->detachAndScrapAttachedViews(Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;)V

    .line 634
    iget-object v6, p0, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Ltds/androidx/recyclerview/widget/LinearLayoutManager$LayoutState;

    invoke-virtual {p0}, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->resolveIsInfinite()Z

    move-result v7

    iput-boolean v7, v6, Ltds/androidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mInfinite:Z

    .line 635
    iget-object v6, p0, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Ltds/androidx/recyclerview/widget/LinearLayoutManager$LayoutState;

    invoke-virtual {p2}, Ltds/androidx/recyclerview/widget/RecyclerView$State;->isPreLayout()Z

    move-result v7

    iput-boolean v7, v6, Ltds/androidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mIsPreLayout:Z

    .line 638
    iget-object v6, p0, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Ltds/androidx/recyclerview/widget/LinearLayoutManager$LayoutState;

    iput v2, v6, Ltds/androidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mNoRecycleSpace:I

    .line 639
    iget-object v6, p0, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->mAnchorInfo:Ltds/androidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;

    iget-boolean v6, v6, Ltds/androidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    if-eqz v6, :cond_181

    .line 641
    iget-object v6, p0, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->mAnchorInfo:Ltds/androidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;

    invoke-direct {p0, v6}, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->updateLayoutStateToFillStart(Ltds/androidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;)V

    .line 642
    iget-object v6, p0, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Ltds/androidx/recyclerview/widget/LinearLayoutManager$LayoutState;

    iput v3, v6, Ltds/androidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mExtraFillSpace:I

    .line 643
    iget-object v6, p0, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Ltds/androidx/recyclerview/widget/LinearLayoutManager$LayoutState;

    invoke-virtual {p0, p1, v6, p2, v2}, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->fill(Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;Ltds/androidx/recyclerview/widget/LinearLayoutManager$LayoutState;Ltds/androidx/recyclerview/widget/RecyclerView$State;Z)I

    .line 644
    iget-object v6, p0, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Ltds/androidx/recyclerview/widget/LinearLayoutManager$LayoutState;

    iget v6, v6, Ltds/androidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mOffset:I

    .line 645
    .local v6, "startOffset":I
    iget-object v7, p0, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Ltds/androidx/recyclerview/widget/LinearLayoutManager$LayoutState;

    iget v7, v7, Ltds/androidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    .line 646
    .local v7, "firstElement":I
    iget-object v8, p0, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Ltds/androidx/recyclerview/widget/LinearLayoutManager$LayoutState;

    iget v8, v8, Ltds/androidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mAvailable:I

    if-lez v8, :cond_149

    .line 647
    iget-object v8, p0, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Ltds/androidx/recyclerview/widget/LinearLayoutManager$LayoutState;

    iget v8, v8, Ltds/androidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mAvailable:I

    add-int/2addr v5, v8

    .line 650
    :cond_149
    iget-object v8, p0, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->mAnchorInfo:Ltds/androidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;

    invoke-direct {p0, v8}, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->updateLayoutStateToFillEnd(Ltds/androidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;)V

    .line 651
    iget-object v8, p0, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Ltds/androidx/recyclerview/widget/LinearLayoutManager$LayoutState;

    iput v5, v8, Ltds/androidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mExtraFillSpace:I

    .line 652
    iget-object v8, p0, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Ltds/androidx/recyclerview/widget/LinearLayoutManager$LayoutState;

    iget v9, v8, Ltds/androidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    iget-object v10, p0, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Ltds/androidx/recyclerview/widget/LinearLayoutManager$LayoutState;

    iget v10, v10, Ltds/androidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mItemDirection:I

    add-int/2addr v9, v10

    iput v9, v8, Ltds/androidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    .line 653
    iget-object v8, p0, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Ltds/androidx/recyclerview/widget/LinearLayoutManager$LayoutState;

    invoke-virtual {p0, p1, v8, p2, v2}, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->fill(Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;Ltds/androidx/recyclerview/widget/LinearLayoutManager$LayoutState;Ltds/androidx/recyclerview/widget/RecyclerView$State;Z)I

    .line 654
    iget-object v8, p0, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Ltds/androidx/recyclerview/widget/LinearLayoutManager$LayoutState;

    iget v8, v8, Ltds/androidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mOffset:I

    .line 656
    .local v8, "endOffset":I
    iget-object v9, p0, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Ltds/androidx/recyclerview/widget/LinearLayoutManager$LayoutState;

    iget v9, v9, Ltds/androidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mAvailable:I

    if-lez v9, :cond_180

    .line 658
    iget-object v9, p0, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Ltds/androidx/recyclerview/widget/LinearLayoutManager$LayoutState;

    iget v3, v9, Ltds/androidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mAvailable:I

    .line 659
    invoke-direct {p0, v7, v6}, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->updateLayoutStateToFillStart(II)V

    .line 660
    iget-object v9, p0, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Ltds/androidx/recyclerview/widget/LinearLayoutManager$LayoutState;

    iput v3, v9, Ltds/androidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mExtraFillSpace:I

    .line 661
    iget-object v9, p0, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Ltds/androidx/recyclerview/widget/LinearLayoutManager$LayoutState;

    invoke-virtual {p0, p1, v9, p2, v2}, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->fill(Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;Ltds/androidx/recyclerview/widget/LinearLayoutManager$LayoutState;Ltds/androidx/recyclerview/widget/RecyclerView$State;Z)I

    .line 662
    iget-object v9, p0, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Ltds/androidx/recyclerview/widget/LinearLayoutManager$LayoutState;

    iget v6, v9, Ltds/androidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mOffset:I

    .line 664
    .end local v7    # "firstElement":I
    :cond_180
    goto :goto_1dc

    .line 666
    .end local v6    # "startOffset":I
    .end local v8    # "endOffset":I
    :cond_181
    iget-object v6, p0, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->mAnchorInfo:Ltds/androidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;

    invoke-direct {p0, v6}, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->updateLayoutStateToFillEnd(Ltds/androidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;)V

    .line 667
    iget-object v6, p0, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Ltds/androidx/recyclerview/widget/LinearLayoutManager$LayoutState;

    iput v5, v6, Ltds/androidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mExtraFillSpace:I

    .line 668
    iget-object v6, p0, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Ltds/androidx/recyclerview/widget/LinearLayoutManager$LayoutState;

    invoke-virtual {p0, p1, v6, p2, v2}, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->fill(Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;Ltds/androidx/recyclerview/widget/LinearLayoutManager$LayoutState;Ltds/androidx/recyclerview/widget/RecyclerView$State;Z)I

    .line 669
    iget-object v6, p0, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Ltds/androidx/recyclerview/widget/LinearLayoutManager$LayoutState;

    iget v8, v6, Ltds/androidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mOffset:I

    .line 670
    .restart local v8    # "endOffset":I
    iget-object v6, p0, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Ltds/androidx/recyclerview/widget/LinearLayoutManager$LayoutState;

    iget v6, v6, Ltds/androidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    .line 671
    .local v6, "lastElement":I
    iget-object v7, p0, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Ltds/androidx/recyclerview/widget/LinearLayoutManager$LayoutState;

    iget v7, v7, Ltds/androidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mAvailable:I

    if-lez v7, :cond_1a2

    .line 672
    iget-object v7, p0, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Ltds/androidx/recyclerview/widget/LinearLayoutManager$LayoutState;

    iget v7, v7, Ltds/androidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mAvailable:I

    add-int/2addr v3, v7

    .line 675
    :cond_1a2
    iget-object v7, p0, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->mAnchorInfo:Ltds/androidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;

    invoke-direct {p0, v7}, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->updateLayoutStateToFillStart(Ltds/androidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;)V

    .line 676
    iget-object v7, p0, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Ltds/androidx/recyclerview/widget/LinearLayoutManager$LayoutState;

    iput v3, v7, Ltds/androidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mExtraFillSpace:I

    .line 677
    iget-object v7, p0, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Ltds/androidx/recyclerview/widget/LinearLayoutManager$LayoutState;

    iget v9, v7, Ltds/androidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    iget-object v10, p0, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Ltds/androidx/recyclerview/widget/LinearLayoutManager$LayoutState;

    iget v10, v10, Ltds/androidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mItemDirection:I

    add-int/2addr v9, v10

    iput v9, v7, Ltds/androidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    .line 678
    iget-object v7, p0, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Ltds/androidx/recyclerview/widget/LinearLayoutManager$LayoutState;

    invoke-virtual {p0, p1, v7, p2, v2}, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->fill(Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;Ltds/androidx/recyclerview/widget/LinearLayoutManager$LayoutState;Ltds/androidx/recyclerview/widget/RecyclerView$State;Z)I

    .line 679
    iget-object v7, p0, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Ltds/androidx/recyclerview/widget/LinearLayoutManager$LayoutState;

    iget v7, v7, Ltds/androidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mOffset:I

    .line 681
    .local v7, "startOffset":I
    iget-object v9, p0, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Ltds/androidx/recyclerview/widget/LinearLayoutManager$LayoutState;

    iget v9, v9, Ltds/androidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mAvailable:I

    if-lez v9, :cond_1db

    .line 682
    iget-object v9, p0, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Ltds/androidx/recyclerview/widget/LinearLayoutManager$LayoutState;

    iget v5, v9, Ltds/androidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mAvailable:I

    .line 684
    invoke-direct {p0, v6, v8}, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->updateLayoutStateToFillEnd(II)V

    .line 685
    iget-object v9, p0, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Ltds/androidx/recyclerview/widget/LinearLayoutManager$LayoutState;

    iput v5, v9, Ltds/androidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mExtraFillSpace:I

    .line 686
    iget-object v9, p0, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Ltds/androidx/recyclerview/widget/LinearLayoutManager$LayoutState;

    invoke-virtual {p0, p1, v9, p2, v2}, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->fill(Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;Ltds/androidx/recyclerview/widget/LinearLayoutManager$LayoutState;Ltds/androidx/recyclerview/widget/RecyclerView$State;Z)I

    .line 687
    iget-object v9, p0, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Ltds/androidx/recyclerview/widget/LinearLayoutManager$LayoutState;

    iget v8, v9, Ltds/androidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mOffset:I

    move v6, v7

    goto :goto_1dc

    .line 681
    :cond_1db
    move v6, v7

    .line 694
    .end local v7    # "startOffset":I
    .local v6, "startOffset":I
    :goto_1dc
    invoke-virtual {p0}, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->getChildCount()I

    move-result v7

    if-lez v7, :cond_202

    .line 698
    iget-boolean v7, p0, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    iget-boolean v9, p0, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->mStackFromEnd:Z

    xor-int/2addr v7, v9

    if-eqz v7, :cond_1f6

    .line 699
    invoke-direct {p0, v8, p1, p2, v4}, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->fixLayoutEndGap(ILtds/androidx/recyclerview/widget/RecyclerView$Recycler;Ltds/androidx/recyclerview/widget/RecyclerView$State;Z)I

    move-result v4

    .line 700
    .local v4, "fixOffset":I
    add-int/2addr v6, v4

    .line 701
    add-int/2addr v8, v4

    .line 702
    invoke-direct {p0, v6, p1, p2, v2}, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->fixLayoutStartGap(ILtds/androidx/recyclerview/widget/RecyclerView$Recycler;Ltds/androidx/recyclerview/widget/RecyclerView$State;Z)I

    move-result v2

    .line 703
    .end local v4    # "fixOffset":I
    .local v2, "fixOffset":I
    add-int/2addr v6, v2

    .line 704
    add-int/2addr v8, v2

    .line 705
    .end local v2    # "fixOffset":I
    goto :goto_202

    .line 706
    :cond_1f6
    invoke-direct {p0, v6, p1, p2, v4}, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->fixLayoutStartGap(ILtds/androidx/recyclerview/widget/RecyclerView$Recycler;Ltds/androidx/recyclerview/widget/RecyclerView$State;Z)I

    move-result v4

    .line 707
    .restart local v4    # "fixOffset":I
    add-int/2addr v6, v4

    .line 708
    add-int/2addr v8, v4

    .line 709
    invoke-direct {p0, v8, p1, p2, v2}, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->fixLayoutEndGap(ILtds/androidx/recyclerview/widget/RecyclerView$Recycler;Ltds/androidx/recyclerview/widget/RecyclerView$State;Z)I

    move-result v2

    .line 710
    .end local v4    # "fixOffset":I
    .restart local v2    # "fixOffset":I
    add-int/2addr v6, v2

    .line 711
    add-int/2addr v8, v2

    .line 714
    .end local v2    # "fixOffset":I
    :cond_202
    :goto_202
    invoke-direct {p0, p1, p2, v6, v8}, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->layoutForPredictiveAnimations(Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;Ltds/androidx/recyclerview/widget/RecyclerView$State;II)V

    .line 715
    invoke-virtual {p2}, Ltds/androidx/recyclerview/widget/RecyclerView$State;->isPreLayout()Z

    move-result v2

    if-nez v2, :cond_211

    .line 716
    iget-object v2, p0, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Ltds/androidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {v2}, Ltds/androidx/recyclerview/widget/OrientationHelper;->onLayoutComplete()V

    goto :goto_216

    .line 718
    :cond_211
    iget-object v2, p0, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->mAnchorInfo:Ltds/androidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;

    invoke-virtual {v2}, Ltds/androidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;->reset()V

    .line 720
    :goto_216
    iget-boolean v2, p0, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->mStackFromEnd:Z

    iput-boolean v2, p0, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->mLastStackFromEnd:Z

    .line 724
    return-void
.end method

.method public onLayoutCompleted(Ltds/androidx/recyclerview/widget/RecyclerView$State;)V
    .registers 3
    .param p1, "state"    # Ltds/androidx/recyclerview/widget/RecyclerView$State;

    .line 728
    invoke-super {p0, p1}, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;->onLayoutCompleted(Ltds/androidx/recyclerview/widget/RecyclerView$State;)V

    .line 729
    const/4 v0, 0x0

    iput-object v0, p0, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->mPendingSavedState:Ltds/androidx/recyclerview/widget/LinearLayoutManager$SavedState;

    .line 730
    const/4 v0, -0x1

    iput v0, p0, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->mPendingScrollPosition:I

    .line 731
    const/high16 v0, -0x80000000

    iput v0, p0, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->mPendingScrollPositionOffset:I

    .line 732
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->mAnchorInfo:Ltds/androidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;

    invoke-virtual {v0}, Ltds/androidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;->reset()V

    .line 733
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 5
    .param p1, "state"    # Landroid/os/Parcelable;

    .line 279
    instance-of v0, p1, Ltds/androidx/recyclerview/widget/LinearLayoutManager$SavedState;

    if-eqz v0, :cond_14

    .line 280
    move-object v0, p1

    check-cast v0, Ltds/androidx/recyclerview/widget/LinearLayoutManager$SavedState;

    iput-object v0, p0, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->mPendingSavedState:Ltds/androidx/recyclerview/widget/LinearLayoutManager$SavedState;

    .line 281
    iget v1, p0, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->mPendingScrollPosition:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_11

    .line 282
    invoke-virtual {v0}, Ltds/androidx/recyclerview/widget/LinearLayoutManager$SavedState;->invalidateAnchor()V

    .line 284
    :cond_11
    invoke-virtual {p0}, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->requestLayout()V

    .line 291
    :cond_14
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .registers 6

    .line 252
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->mPendingSavedState:Ltds/androidx/recyclerview/widget/LinearLayoutManager$SavedState;

    if-eqz v0, :cond_c

    .line 253
    new-instance v0, Ltds/androidx/recyclerview/widget/LinearLayoutManager$SavedState;

    iget-object v1, p0, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->mPendingSavedState:Ltds/androidx/recyclerview/widget/LinearLayoutManager$SavedState;

    invoke-direct {v0, v1}, Ltds/androidx/recyclerview/widget/LinearLayoutManager$SavedState;-><init>(Ltds/androidx/recyclerview/widget/LinearLayoutManager$SavedState;)V

    return-object v0

    .line 255
    :cond_c
    new-instance v0, Ltds/androidx/recyclerview/widget/LinearLayoutManager$SavedState;

    invoke-direct {v0}, Ltds/androidx/recyclerview/widget/LinearLayoutManager$SavedState;-><init>()V

    .line 256
    .local v0, "state":Ltds/androidx/recyclerview/widget/LinearLayoutManager$SavedState;
    invoke-virtual {p0}, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->getChildCount()I

    move-result v1

    if-lez v1, :cond_57

    .line 257
    invoke-virtual {p0}, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->ensureLayoutState()V

    .line 258
    iget-boolean v1, p0, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->mLastStackFromEnd:Z

    iget-boolean v2, p0, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    xor-int/2addr v1, v2

    .line 259
    .local v1, "didLayoutFromEnd":Z
    iput-boolean v1, v0, Ltds/androidx/recyclerview/widget/LinearLayoutManager$SavedState;->mAnchorLayoutFromEnd:Z

    .line 260
    if-eqz v1, :cond_3d

    .line 261
    invoke-direct {p0}, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->getChildClosestToEnd()Landroid/view/View;

    move-result-object v2

    .line 262
    .local v2, "refChild":Landroid/view/View;
    iget-object v3, p0, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Ltds/androidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {v3}, Ltds/androidx/recyclerview/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v3

    iget-object v4, p0, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Ltds/androidx/recyclerview/widget/OrientationHelper;

    .line 263
    invoke-virtual {v4, v2}, Ltds/androidx/recyclerview/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v4

    sub-int/2addr v3, v4

    iput v3, v0, Ltds/androidx/recyclerview/widget/LinearLayoutManager$SavedState;->mAnchorOffset:I

    .line 264
    invoke-virtual {p0, v2}, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v3

    iput v3, v0, Ltds/androidx/recyclerview/widget/LinearLayoutManager$SavedState;->mAnchorPosition:I

    .line 265
    .end local v2    # "refChild":Landroid/view/View;
    goto :goto_56

    .line 266
    :cond_3d
    invoke-direct {p0}, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->getChildClosestToStart()Landroid/view/View;

    move-result-object v2

    .line 267
    .restart local v2    # "refChild":Landroid/view/View;
    invoke-virtual {p0, v2}, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v3

    iput v3, v0, Ltds/androidx/recyclerview/widget/LinearLayoutManager$SavedState;->mAnchorPosition:I

    .line 268
    iget-object v3, p0, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Ltds/androidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {v3, v2}, Ltds/androidx/recyclerview/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v3

    iget-object v4, p0, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Ltds/androidx/recyclerview/widget/OrientationHelper;

    .line 269
    invoke-virtual {v4}, Ltds/androidx/recyclerview/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v4

    sub-int/2addr v3, v4

    iput v3, v0, Ltds/androidx/recyclerview/widget/LinearLayoutManager$SavedState;->mAnchorOffset:I

    .line 271
    .end local v1    # "didLayoutFromEnd":Z
    .end local v2    # "refChild":Landroid/view/View;
    :goto_56
    goto :goto_5a

    .line 272
    :cond_57
    invoke-virtual {v0}, Ltds/androidx/recyclerview/widget/LinearLayoutManager$SavedState;->invalidateAnchor()V

    .line 274
    :goto_5a
    return-object v0
.end method

.method public prepareForDrop(Landroid/view/View;Landroid/view/View;II)V
    .registers 11
    .param p1, "view"    # Landroid/view/View;
    .param p2, "target"    # Landroid/view/View;
    .param p3, "x"    # I
    .param p4, "y"    # I

    .line 2187
    const-string v0, "Cannot drop a view during a scroll or layout calculation"

    invoke-virtual {p0, v0}, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 2188
    invoke-virtual {p0}, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->ensureLayoutState()V

    .line 2189
    invoke-direct {p0}, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->resolveShouldLayoutReverse()V

    .line 2190
    invoke-virtual {p0, p1}, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v0

    .line 2191
    .local v0, "myPos":I
    invoke-virtual {p0, p2}, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v1

    .line 2192
    .local v1, "targetPos":I
    const/4 v2, 0x1

    const/4 v3, -0x1

    if-ge v0, v1, :cond_19

    move v4, v2

    goto :goto_1a

    :cond_19
    move v4, v3

    .line 2194
    .local v4, "dropDirection":I
    :goto_1a
    iget-boolean v5, p0, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    if-eqz v5, :cond_49

    .line 2195
    if-ne v4, v2, :cond_38

    .line 2196
    iget-object v2, p0, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Ltds/androidx/recyclerview/widget/OrientationHelper;

    .line 2197
    invoke-virtual {v2}, Ltds/androidx/recyclerview/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v2

    iget-object v3, p0, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Ltds/androidx/recyclerview/widget/OrientationHelper;

    .line 2198
    invoke-virtual {v3, p2}, Ltds/androidx/recyclerview/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v3

    iget-object v5, p0, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Ltds/androidx/recyclerview/widget/OrientationHelper;

    .line 2199
    invoke-virtual {v5, p1}, Ltds/androidx/recyclerview/widget/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v5

    add-int/2addr v3, v5

    sub-int/2addr v2, v3

    .line 2196
    invoke-virtual {p0, v1, v2}, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    goto :goto_65

    .line 2201
    :cond_38
    iget-object v2, p0, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Ltds/androidx/recyclerview/widget/OrientationHelper;

    .line 2202
    invoke-virtual {v2}, Ltds/androidx/recyclerview/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v2

    iget-object v3, p0, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Ltds/androidx/recyclerview/widget/OrientationHelper;

    .line 2203
    invoke-virtual {v3, p2}, Ltds/androidx/recyclerview/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v3

    sub-int/2addr v2, v3

    .line 2201
    invoke-virtual {p0, v1, v2}, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    goto :goto_65

    .line 2206
    :cond_49
    if-ne v4, v3, :cond_55

    .line 2207
    iget-object v2, p0, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Ltds/androidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {v2, p2}, Ltds/androidx/recyclerview/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v2

    invoke-virtual {p0, v1, v2}, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    goto :goto_65

    .line 2209
    :cond_55
    iget-object v2, p0, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Ltds/androidx/recyclerview/widget/OrientationHelper;

    .line 2210
    invoke-virtual {v2, p2}, Ltds/androidx/recyclerview/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v2

    iget-object v3, p0, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Ltds/androidx/recyclerview/widget/OrientationHelper;

    .line 2211
    invoke-virtual {v3, p1}, Ltds/androidx/recyclerview/widget/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v3

    sub-int/2addr v2, v3

    .line 2209
    invoke-virtual {p0, v1, v2}, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    .line 2214
    :goto_65
    return-void
.end method

.method resolveIsInfinite()Z
    .registers 2

    .line 1277
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Ltds/androidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {v0}, Ltds/androidx/recyclerview/widget/OrientationHelper;->getMode()I

    move-result v0

    if-nez v0, :cond_12

    iget-object v0, p0, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Ltds/androidx/recyclerview/widget/OrientationHelper;

    .line 1278
    invoke-virtual {v0}, Ltds/androidx/recyclerview/widget/OrientationHelper;->getEnd()I

    move-result v0

    if-nez v0, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    .line 1277
    :goto_13
    return v0
.end method

.method scrollBy(ILtds/androidx/recyclerview/widget/RecyclerView$Recycler;Ltds/androidx/recyclerview/widget/RecyclerView$State;)I
    .registers 10
    .param p1, "delta"    # I
    .param p2, "recycler"    # Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;
    .param p3, "state"    # Ltds/androidx/recyclerview/widget/RecyclerView$State;

    .line 1386
    invoke-virtual {p0}, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3d

    if-nez p1, :cond_a

    goto :goto_3d

    .line 1389
    :cond_a
    invoke-virtual {p0}, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->ensureLayoutState()V

    .line 1390
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Ltds/androidx/recyclerview/widget/LinearLayoutManager$LayoutState;

    const/4 v2, 0x1

    iput-boolean v2, v0, Ltds/androidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mRecycle:Z

    .line 1391
    if-lez p1, :cond_16

    move v0, v2

    goto :goto_17

    :cond_16
    const/4 v0, -0x1

    .line 1392
    .local v0, "layoutDirection":I
    :goto_17
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v3

    .line 1393
    .local v3, "absDelta":I
    invoke-direct {p0, v0, v3, v2, p3}, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->updateLayoutState(IIZLtds/androidx/recyclerview/widget/RecyclerView$State;)V

    .line 1394
    iget-object v2, p0, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Ltds/androidx/recyclerview/widget/LinearLayoutManager$LayoutState;

    iget v2, v2, Ltds/androidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mScrollingOffset:I

    iget-object v4, p0, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Ltds/androidx/recyclerview/widget/LinearLayoutManager$LayoutState;

    .line 1395
    invoke-virtual {p0, p2, v4, p3, v1}, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->fill(Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;Ltds/androidx/recyclerview/widget/LinearLayoutManager$LayoutState;Ltds/androidx/recyclerview/widget/RecyclerView$State;Z)I

    move-result v4

    add-int/2addr v2, v4

    .line 1396
    .local v2, "consumed":I
    if-gez v2, :cond_2c

    .line 1400
    return v1

    .line 1402
    :cond_2c
    if-le v3, v2, :cond_31

    mul-int v1, v0, v2

    goto :goto_32

    :cond_31
    move v1, p1

    .line 1403
    .local v1, "scrolled":I
    :goto_32
    iget-object v4, p0, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Ltds/androidx/recyclerview/widget/OrientationHelper;

    neg-int v5, v1

    invoke-virtual {v4, v5}, Ltds/androidx/recyclerview/widget/OrientationHelper;->offsetChildren(I)V

    .line 1407
    iget-object v4, p0, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Ltds/androidx/recyclerview/widget/LinearLayoutManager$LayoutState;

    iput v1, v4, Ltds/androidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mLastScrollDelta:I

    .line 1408
    return v1

    .line 1387
    .end local v0    # "layoutDirection":I
    .end local v1    # "scrolled":I
    .end local v2    # "consumed":I
    .end local v3    # "absDelta":I
    :cond_3d
    :goto_3d
    return v1
.end method

.method public scrollHorizontallyBy(ILtds/androidx/recyclerview/widget/RecyclerView$Recycler;Ltds/androidx/recyclerview/widget/RecyclerView$State;)I
    .registers 6
    .param p1, "dx"    # I
    .param p2, "recycler"    # Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;
    .param p3, "state"    # Ltds/androidx/recyclerview/widget/RecyclerView$State;

    .line 1121
    iget v0, p0, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->mOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_7

    .line 1122
    const/4 v0, 0x0

    return v0

    .line 1124
    :cond_7
    invoke-virtual {p0, p1, p2, p3}, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->scrollBy(ILtds/androidx/recyclerview/widget/RecyclerView$Recycler;Ltds/androidx/recyclerview/widget/RecyclerView$State;)I

    move-result v0

    return v0
.end method

.method public scrollToPosition(I)V
    .registers 3
    .param p1, "position"    # I

    .line 1078
    iput p1, p0, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->mPendingScrollPosition:I

    .line 1079
    const/high16 v0, -0x80000000

    iput v0, p0, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->mPendingScrollPositionOffset:I

    .line 1080
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->mPendingSavedState:Ltds/androidx/recyclerview/widget/LinearLayoutManager$SavedState;

    if-eqz v0, :cond_d

    .line 1081
    invoke-virtual {v0}, Ltds/androidx/recyclerview/widget/LinearLayoutManager$SavedState;->invalidateAnchor()V

    .line 1083
    :cond_d
    invoke-virtual {p0}, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->requestLayout()V

    .line 1084
    return-void
.end method

.method public scrollToPositionWithOffset(II)V
    .registers 4
    .param p1, "position"    # I
    .param p2, "offset"    # I

    .line 1106
    iput p1, p0, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->mPendingScrollPosition:I

    .line 1107
    iput p2, p0, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->mPendingScrollPositionOffset:I

    .line 1108
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->mPendingSavedState:Ltds/androidx/recyclerview/widget/LinearLayoutManager$SavedState;

    if-eqz v0, :cond_b

    .line 1109
    invoke-virtual {v0}, Ltds/androidx/recyclerview/widget/LinearLayoutManager$SavedState;->invalidateAnchor()V

    .line 1111
    :cond_b
    invoke-virtual {p0}, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->requestLayout()V

    .line 1112
    return-void
.end method

.method public scrollVerticallyBy(ILtds/androidx/recyclerview/widget/RecyclerView$Recycler;Ltds/androidx/recyclerview/widget/RecyclerView$State;)I
    .registers 5
    .param p1, "dy"    # I
    .param p2, "recycler"    # Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;
    .param p3, "state"    # Ltds/androidx/recyclerview/widget/RecyclerView$State;

    .line 1133
    iget v0, p0, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->mOrientation:I

    if-nez v0, :cond_6

    .line 1134
    const/4 v0, 0x0

    return v0

    .line 1136
    :cond_6
    invoke-virtual {p0, p1, p2, p3}, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->scrollBy(ILtds/androidx/recyclerview/widget/RecyclerView$Recycler;Ltds/androidx/recyclerview/widget/RecyclerView$State;)I

    move-result v0

    return v0
.end method

.method public setInitialPrefetchItemCount(I)V
    .registers 2
    .param p1, "itemCount"    # I

    .line 1351
    iput p1, p0, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->mInitialPrefetchItemCount:I

    .line 1352
    return-void
.end method

.method public setOrientation(I)V
    .registers 5
    .param p1, "orientation"    # I

    .line 343
    if-eqz p1, :cond_1f

    const/4 v0, 0x1

    if-ne p1, v0, :cond_6

    goto :goto_1f

    .line 344
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid orientation:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 347
    :cond_1f
    :goto_1f
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 349
    iget v0, p0, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->mOrientation:I

    if-ne p1, v0, :cond_2b

    iget-object v0, p0, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Ltds/androidx/recyclerview/widget/OrientationHelper;

    if-nez v0, :cond_3b

    .line 350
    :cond_2b
    nop

    .line 351
    invoke-static {p0, p1}, Ltds/androidx/recyclerview/widget/OrientationHelper;->createOrientationHelper(Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;I)Ltds/androidx/recyclerview/widget/OrientationHelper;

    move-result-object v0

    iput-object v0, p0, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Ltds/androidx/recyclerview/widget/OrientationHelper;

    .line 352
    iget-object v1, p0, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->mAnchorInfo:Ltds/androidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;

    iput-object v0, v1, Ltds/androidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;->mOrientationHelper:Ltds/androidx/recyclerview/widget/OrientationHelper;

    .line 353
    iput p1, p0, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->mOrientation:I

    .line 354
    invoke-virtual {p0}, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->requestLayout()V

    .line 356
    :cond_3b
    return-void
.end method

.method public setRecycleChildrenOnDetach(Z)V
    .registers 2
    .param p1, "recycleChildrenOnDetach"    # Z

    .line 229
    iput-boolean p1, p0, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->mRecycleChildrenOnDetach:Z

    .line 230
    return-void
.end method

.method public setReverseLayout(Z)V
    .registers 3
    .param p1, "reverseLayout"    # Z

    .line 397
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 398
    iget-boolean v0, p0, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->mReverseLayout:Z

    if-ne p1, v0, :cond_9

    .line 399
    return-void

    .line 401
    :cond_9
    iput-boolean p1, p0, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->mReverseLayout:Z

    .line 402
    invoke-virtual {p0}, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->requestLayout()V

    .line 403
    return-void
.end method

.method public setSmoothScrollbarEnabled(Z)V
    .registers 2
    .param p1, "enabled"    # Z

    .line 1219
    iput-boolean p1, p0, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->mSmoothScrollbarEnabled:Z

    .line 1220
    return-void
.end method

.method public setStackFromEnd(Z)V
    .registers 3
    .param p1, "stackFromEnd"    # Z

    .line 313
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 314
    iget-boolean v0, p0, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->mStackFromEnd:Z

    if-ne v0, p1, :cond_9

    .line 315
    return-void

    .line 317
    :cond_9
    iput-boolean p1, p0, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->mStackFromEnd:Z

    .line 318
    invoke-virtual {p0}, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->requestLayout()V

    .line 319
    return-void
.end method

.method shouldMeasureTwice()Z
    .registers 3

    .line 1704
    invoke-virtual {p0}, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->getHeightMode()I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    if-eq v0, v1, :cond_16

    .line 1705
    invoke-virtual {p0}, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->getWidthMode()I

    move-result v0

    if-eq v0, v1, :cond_16

    .line 1706
    invoke-virtual {p0}, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->hasFlexibleChildInBothOrientations()Z

    move-result v0

    if-eqz v0, :cond_16

    const/4 v0, 0x1

    goto :goto_17

    :cond_16
    const/4 v0, 0x0

    .line 1704
    :goto_17
    return v0
.end method

.method public smoothScrollToPosition(Ltds/androidx/recyclerview/widget/RecyclerView;Ltds/androidx/recyclerview/widget/RecyclerView$State;I)V
    .registers 6
    .param p1, "recyclerView"    # Ltds/androidx/recyclerview/widget/RecyclerView;
    .param p2, "state"    # Ltds/androidx/recyclerview/widget/RecyclerView$State;
    .param p3, "position"    # I

    .line 505
    new-instance v0, Ltds/androidx/recyclerview/widget/LinearSmoothScroller;

    .line 506
    invoke-virtual {p1}, Ltds/androidx/recyclerview/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Ltds/androidx/recyclerview/widget/LinearSmoothScroller;-><init>(Landroid/content/Context;)V

    .line 507
    .local v0, "linearSmoothScroller":Ltds/androidx/recyclerview/widget/LinearSmoothScroller;
    invoke-virtual {v0, p3}, Ltds/androidx/recyclerview/widget/LinearSmoothScroller;->setTargetPosition(I)V

    .line 508
    invoke-virtual {p0, v0}, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->startSmoothScroll(Ltds/androidx/recyclerview/widget/RecyclerView$SmoothScroller;)V

    .line 509
    return-void
.end method

.method public supportsPredictiveItemAnimations()Z
    .registers 3

    .line 2177
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->mPendingSavedState:Ltds/androidx/recyclerview/widget/LinearLayoutManager$SavedState;

    if-nez v0, :cond_c

    iget-boolean v0, p0, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->mLastStackFromEnd:Z

    iget-boolean v1, p0, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->mStackFromEnd:Z

    if-ne v0, v1, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method validateChildOrder()V
    .registers 12

    .line 2136
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "validating child count "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->getChildCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LinearLayoutManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2137
    invoke-virtual {p0}, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_24

    .line 2138
    return-void

    .line 2140
    :cond_24
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, v2}, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v2

    .line 2141
    .local v2, "lastPos":I
    iget-object v3, p0, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Ltds/androidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {p0, v0}, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v3, v4}, Ltds/androidx/recyclerview/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v3

    .line 2142
    .local v3, "lastScreenLoc":I
    iget-boolean v4, p0, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    const-string v5, "detected invalid location"

    const-string v6, "detected invalid position. loc invalid? "

    if-eqz v4, :cond_83

    .line 2143
    const/4 v4, 0x1

    .local v4, "i":I
    :goto_40
    invoke-virtual {p0}, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->getChildCount()I

    move-result v7

    if-ge v4, v7, :cond_82

    .line 2144
    invoke-virtual {p0, v4}, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 2145
    .local v7, "child":Landroid/view/View;
    invoke-virtual {p0, v7}, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v8

    .line 2146
    .local v8, "pos":I
    iget-object v9, p0, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Ltds/androidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {v9, v7}, Ltds/androidx/recyclerview/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v9

    .line 2147
    .local v9, "screenLoc":I
    if-ge v8, v2, :cond_74

    .line 2148
    invoke-direct {p0}, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->logChildren()V

    .line 2149
    new-instance v5, Ljava/lang/RuntimeException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-ge v9, v3, :cond_67

    goto :goto_68

    :cond_67
    move v1, v0

    :goto_68
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 2152
    :cond_74
    if-gt v9, v3, :cond_79

    .line 2143
    .end local v7    # "child":Landroid/view/View;
    .end local v8    # "pos":I
    .end local v9    # "screenLoc":I
    add-int/lit8 v4, v4, 0x1

    goto :goto_40

    .line 2153
    .restart local v7    # "child":Landroid/view/View;
    .restart local v8    # "pos":I
    .restart local v9    # "screenLoc":I
    :cond_79
    invoke-direct {p0}, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->logChildren()V

    .line 2154
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2143
    .end local v4    # "i":I
    .end local v7    # "child":Landroid/view/View;
    .end local v8    # "pos":I
    .end local v9    # "screenLoc":I
    :cond_82
    goto :goto_c6

    .line 2158
    :cond_83
    const/4 v4, 0x1

    .restart local v4    # "i":I
    :goto_84
    invoke-virtual {p0}, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->getChildCount()I

    move-result v7

    if-ge v4, v7, :cond_c6

    .line 2159
    invoke-virtual {p0, v4}, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 2160
    .restart local v7    # "child":Landroid/view/View;
    invoke-virtual {p0, v7}, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v8

    .line 2161
    .restart local v8    # "pos":I
    iget-object v9, p0, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Ltds/androidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {v9, v7}, Ltds/androidx/recyclerview/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v9

    .line 2162
    .restart local v9    # "screenLoc":I
    if-ge v8, v2, :cond_b8

    .line 2163
    invoke-direct {p0}, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->logChildren()V

    .line 2164
    new-instance v5, Ljava/lang/RuntimeException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-ge v9, v3, :cond_ab

    goto :goto_ac

    :cond_ab
    move v1, v0

    :goto_ac
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 2167
    :cond_b8
    if-lt v9, v3, :cond_bd

    .line 2158
    .end local v7    # "child":Landroid/view/View;
    .end local v8    # "pos":I
    .end local v9    # "screenLoc":I
    add-int/lit8 v4, v4, 0x1

    goto :goto_84

    .line 2168
    .restart local v7    # "child":Landroid/view/View;
    .restart local v8    # "pos":I
    .restart local v9    # "screenLoc":I
    :cond_bd
    invoke-direct {p0}, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->logChildren()V

    .line 2169
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2173
    .end local v4    # "i":I
    .end local v7    # "child":Landroid/view/View;
    .end local v8    # "pos":I
    .end local v9    # "screenLoc":I
    :cond_c6
    :goto_c6
    return-void
.end method
