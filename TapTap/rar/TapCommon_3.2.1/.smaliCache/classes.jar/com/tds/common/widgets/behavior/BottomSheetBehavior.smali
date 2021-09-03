.class public Lcom/tds/common/widgets/behavior/BottomSheetBehavior;
.super Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;
.source "BottomSheetBehavior.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tds/common/widgets/behavior/BottomSheetBehavior$SavedState;,
        Lcom/tds/common/widgets/behavior/BottomSheetBehavior$SettleRunnable;,
        Lcom/tds/common/widgets/behavior/BottomSheetBehavior$SaveFlags;,
        Lcom/tds/common/widgets/behavior/BottomSheetBehavior$State;,
        Lcom/tds/common/widgets/behavior/BottomSheetBehavior$BottomSheetCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Landroid/view/View;",
        ">",
        "Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$Behavior<",
        "TV;>;"
    }
.end annotation


# static fields
.field protected static final HIDE_FRICTION:F = 0.1f

.field protected static final HIDE_THRESHOLD:F = 0.5f

.field public static final PEEK_HEIGHT_AUTO:I = -0x1

.field public static final SAVE_ALL:I = -0x1

.field public static final SAVE_FIT_TO_CONTENTS:I = 0x2

.field public static final SAVE_HIDEABLE:I = 0x4

.field public static final SAVE_NONE:I = 0x0

.field public static final SAVE_PEEK_HEIGHT:I = 0x1

.field public static final SAVE_SKIP_COLLAPSED:I = 0x8

.field protected static final SIGNIFICANT_VEL_THRESHOLD:I = 0x1f4

.field public static final STATE_COLLAPSED:I = 0x4

.field public static final STATE_DRAGGING:I = 0x1

.field public static final STATE_EXPANDED:I = 0x3

.field public static final STATE_HALF_EXPANDED:I = 0x6

.field public static final STATE_HIDDEN:I = 0x5

.field public static final STATE_SETTLING:I = 0x2

.field private static final TAG:Ljava/lang/String; = "BottomSheetBehavior"


# instance fields
.field activePointerId:I

.field private final callbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/tds/common/widgets/behavior/BottomSheetBehavior$BottomSheetCallback;",
            ">;"
        }
    .end annotation
.end field

.field protected childHeight:I

.field collapsedOffset:I

.field private final dragCallback:Ltds/androidx/customview/widget/ViewDragHelper$Callback;

.field protected draggable:Z

.field elevation:F

.field expandedOffset:I

.field protected fitToContents:Z

.field fitToContentsOffset:I

.field protected gestureInsetBottom:I

.field private gestureInsetBottomIgnored:Z

.field halfExpandedOffset:I

.field halfExpandedRatio:F

.field hideable:Z

.field protected ignoreEvents:Z

.field protected initialY:I

.field protected lastNestedScrollDy:I

.field protected maximumVelocity:F

.field protected nestedScrolled:Z

.field nestedScrollingChildRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field parentHeight:I

.field parentWidth:I

.field private peekHeight:I

.field protected peekHeightAuto:Z

.field private peekHeightGestureInsetBuffer:I

.field protected peekHeightMin:I

.field private saveFlags:I

.field protected settleRunnable:Lcom/tds/common/widgets/behavior/BottomSheetBehavior$SettleRunnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tds/common/widgets/behavior/BottomSheetBehavior<",
            "TV;>.SettleRunnable;"
        }
    .end annotation
.end field

.field protected skipCollapsed:Z

.field state:I

.field touchingScrollingChild:Z

.field protected velocityTracker:Landroid/view/VelocityTracker;

.field viewDragHelper:Ltds/androidx/customview/widget/ViewDragHelper;

.field viewRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 288
    .local p0, "this":Lcom/tds/common/widgets/behavior/BottomSheetBehavior;, "Lcom/tds/common/widgets/behavior/BottomSheetBehavior<TV;>;"
    invoke-direct {p0}, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;-><init>()V

    .line 198
    const/4 v0, 0x0

    iput v0, p0, Lcom/tds/common/widgets/behavior/BottomSheetBehavior;->saveFlags:I

    .line 207
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tds/common/widgets/behavior/BottomSheetBehavior;->fitToContents:Z

    .line 234
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/tds/common/widgets/behavior/BottomSheetBehavior;->settleRunnable:Lcom/tds/common/widgets/behavior/BottomSheetBehavior$SettleRunnable;

    .line 242
    const/high16 v1, 0x3f000000    # 0.5f

    iput v1, p0, Lcom/tds/common/widgets/behavior/BottomSheetBehavior;->halfExpandedRatio:F

    .line 246
    const/high16 v1, -0x40800000    # -1.0f

    iput v1, p0, Lcom/tds/common/widgets/behavior/BottomSheetBehavior;->elevation:F

    .line 252
    iput-boolean v0, p0, Lcom/tds/common/widgets/behavior/BottomSheetBehavior;->draggable:Z

    .line 254
    const/4 v0, 0x4

    iput v0, p0, Lcom/tds/common/widgets/behavior/BottomSheetBehavior;->state:I

    .line 276
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tds/common/widgets/behavior/BottomSheetBehavior;->callbacks:Ljava/util/ArrayList;

    .line 1214
    new-instance v0, Lcom/tds/common/widgets/behavior/BottomSheetBehavior$3;

    invoke-direct {v0, p0}, Lcom/tds/common/widgets/behavior/BottomSheetBehavior$3;-><init>(Lcom/tds/common/widgets/behavior/BottomSheetBehavior;)V

    iput-object v0, p0, Lcom/tds/common/widgets/behavior/BottomSheetBehavior;->dragCallback:Ltds/androidx/customview/widget/ViewDragHelper$Callback;

    .line 289
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 292
    .local p0, "this":Lcom/tds/common/widgets/behavior/BottomSheetBehavior;, "Lcom/tds/common/widgets/behavior/BottomSheetBehavior<TV;>;"
    invoke-direct {p0, p1, p2}, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 198
    const/4 v0, 0x0

    iput v0, p0, Lcom/tds/common/widgets/behavior/BottomSheetBehavior;->saveFlags:I

    .line 207
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/tds/common/widgets/behavior/BottomSheetBehavior;->fitToContents:Z

    .line 234
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/tds/common/widgets/behavior/BottomSheetBehavior;->settleRunnable:Lcom/tds/common/widgets/behavior/BottomSheetBehavior$SettleRunnable;

    .line 242
    const/high16 v2, 0x3f000000    # 0.5f

    iput v2, p0, Lcom/tds/common/widgets/behavior/BottomSheetBehavior;->halfExpandedRatio:F

    .line 246
    const/high16 v3, -0x40800000    # -1.0f

    iput v3, p0, Lcom/tds/common/widgets/behavior/BottomSheetBehavior;->elevation:F

    .line 252
    iput-boolean v1, p0, Lcom/tds/common/widgets/behavior/BottomSheetBehavior;->draggable:Z

    .line 254
    const/4 v4, 0x4

    iput v4, p0, Lcom/tds/common/widgets/behavior/BottomSheetBehavior;->state:I

    .line 276
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/tds/common/widgets/behavior/BottomSheetBehavior;->callbacks:Ljava/util/ArrayList;

    .line 1214
    new-instance v4, Lcom/tds/common/widgets/behavior/BottomSheetBehavior$3;

    invoke-direct {v4, p0}, Lcom/tds/common/widgets/behavior/BottomSheetBehavior$3;-><init>(Lcom/tds/common/widgets/behavior/BottomSheetBehavior;)V

    iput-object v4, p0, Lcom/tds/common/widgets/behavior/BottomSheetBehavior;->dragCallback:Ltds/androidx/customview/widget/ViewDragHelper$Callback;

    .line 294
    const/high16 v4, 0x42400000    # 48.0f

    invoke-static {p1, v4}, Lcom/tds/common/utils/UIUtils;->dp2px(Landroid/content/Context;F)I

    move-result v4

    iput v4, p0, Lcom/tds/common/widgets/behavior/BottomSheetBehavior;->peekHeightGestureInsetBuffer:I

    .line 296
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x15

    if-lt v4, v5, :cond_37

    .line 297
    iput v3, p0, Lcom/tds/common/widgets/behavior/BottomSheetBehavior;->elevation:F

    .line 300
    :cond_37
    const/4 v3, -0x1

    invoke-virtual {p0, v3}, Lcom/tds/common/widgets/behavior/BottomSheetBehavior;->setPeekHeight(I)V

    .line 301
    invoke-virtual {p0, v0}, Lcom/tds/common/widgets/behavior/BottomSheetBehavior;->setHideable(Z)V

    .line 302
    invoke-virtual {p0, v0}, Lcom/tds/common/widgets/behavior/BottomSheetBehavior;->setGestureInsetBottomIgnored(Z)V

    .line 303
    invoke-virtual {p0, v1}, Lcom/tds/common/widgets/behavior/BottomSheetBehavior;->setFitToContents(Z)V

    .line 304
    invoke-virtual {p0, v0}, Lcom/tds/common/widgets/behavior/BottomSheetBehavior;->setSkipCollapsed(Z)V

    .line 305
    invoke-virtual {p0, v1}, Lcom/tds/common/widgets/behavior/BottomSheetBehavior;->setDraggable(Z)V

    .line 306
    invoke-virtual {p0, v0}, Lcom/tds/common/widgets/behavior/BottomSheetBehavior;->setSaveFlags(I)V

    .line 307
    invoke-virtual {p0, v2}, Lcom/tds/common/widgets/behavior/BottomSheetBehavior;->setHalfExpandedRatio(F)V

    .line 309
    invoke-virtual {p0, v0}, Lcom/tds/common/widgets/behavior/BottomSheetBehavior;->setExpandedOffset(I)V

    .line 310
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 311
    .local v0, "configuration":Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/tds/common/widgets/behavior/BottomSheetBehavior;->maximumVelocity:F

    .line 312
    return-void
.end method

.method static synthetic access$000(Lcom/tds/common/widgets/behavior/BottomSheetBehavior;)I
    .registers 2
    .param p0, "x0"    # Lcom/tds/common/widgets/behavior/BottomSheetBehavior;

    .line 61
    iget v0, p0, Lcom/tds/common/widgets/behavior/BottomSheetBehavior;->peekHeight:I

    return v0
.end method

.method public static from(Landroid/view/View;)Lcom/tds/common/widgets/behavior/BottomSheetBehavior;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Landroid/view/View;",
            ">(TV;)",
            "Lcom/tds/common/widgets/behavior/BottomSheetBehavior<",
            "TV;>;"
        }
    .end annotation

    .line 1496
    .local p0, "view":Landroid/view/View;, "TV;"
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 1497
    .local v0, "params":Landroid/view/ViewGroup$LayoutParams;
    instance-of v1, v0, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    if-eqz v1, :cond_1f

    .line 1500
    move-object v1, v0

    check-cast v1, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    .line 1501
    invoke-virtual {v1}, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->getBehavior()Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;

    move-result-object v1

    .line 1502
    .local v1, "behavior":Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;, "Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$Behavior<*>;"
    instance-of v2, v1, Lcom/tds/common/widgets/behavior/BottomSheetBehavior;

    if-eqz v2, :cond_17

    .line 1505
    move-object v2, v1

    check-cast v2, Lcom/tds/common/widgets/behavior/BottomSheetBehavior;

    return-object v2

    .line 1503
    :cond_17
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "The view is not associated with BottomSheetBehavior"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1498
    .end local v1    # "behavior":Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;, "Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$Behavior<*>;"
    :cond_1f
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "The view is not a child of CoordinatorLayout"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private restoreOptionalState(Lcom/tds/common/widgets/behavior/BottomSheetBehavior$SavedState;)V
    .registers 5
    .param p1, "ss"    # Lcom/tds/common/widgets/behavior/BottomSheetBehavior$SavedState;

    .line 1088
    .local p0, "this":Lcom/tds/common/widgets/behavior/BottomSheetBehavior;, "Lcom/tds/common/widgets/behavior/BottomSheetBehavior<TV;>;"
    iget v0, p0, Lcom/tds/common/widgets/behavior/BottomSheetBehavior;->saveFlags:I

    if-nez v0, :cond_5

    .line 1089
    return-void

    .line 1091
    :cond_5
    const/4 v1, -0x1

    if-eq v0, v1, :cond_c

    const/4 v2, 0x1

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_10

    .line 1092
    :cond_c
    iget v0, p1, Lcom/tds/common/widgets/behavior/BottomSheetBehavior$SavedState;->peekHeight:I

    iput v0, p0, Lcom/tds/common/widgets/behavior/BottomSheetBehavior;->peekHeight:I

    .line 1094
    :cond_10
    iget v0, p0, Lcom/tds/common/widgets/behavior/BottomSheetBehavior;->saveFlags:I

    if-eq v0, v1, :cond_18

    const/4 v2, 0x2

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_1c

    .line 1096
    :cond_18
    iget-boolean v0, p1, Lcom/tds/common/widgets/behavior/BottomSheetBehavior$SavedState;->fitToContents:Z

    iput-boolean v0, p0, Lcom/tds/common/widgets/behavior/BottomSheetBehavior;->fitToContents:Z

    .line 1098
    :cond_1c
    iget v0, p0, Lcom/tds/common/widgets/behavior/BottomSheetBehavior;->saveFlags:I

    if-eq v0, v1, :cond_24

    const/4 v2, 0x4

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_28

    .line 1099
    :cond_24
    iget-boolean v0, p1, Lcom/tds/common/widgets/behavior/BottomSheetBehavior$SavedState;->hideable:Z

    iput-boolean v0, p0, Lcom/tds/common/widgets/behavior/BottomSheetBehavior;->hideable:Z

    .line 1101
    :cond_28
    iget v0, p0, Lcom/tds/common/widgets/behavior/BottomSheetBehavior;->saveFlags:I

    if-eq v0, v1, :cond_31

    const/16 v1, 0x8

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_35

    .line 1103
    :cond_31
    iget-boolean v0, p1, Lcom/tds/common/widgets/behavior/BottomSheetBehavior$SavedState;->skipCollapsed:Z

    iput-boolean v0, p0, Lcom/tds/common/widgets/behavior/BottomSheetBehavior;->skipCollapsed:Z

    .line 1105
    :cond_35
    return-void
.end method

.method private settleToStatePendingLayout(I)V
    .registers 6
    .param p1, "state"    # I

    .line 1003
    .local p0, "this":Lcom/tds/common/widgets/behavior/BottomSheetBehavior;, "Lcom/tds/common/widgets/behavior/BottomSheetBehavior<TV;>;"
    iget-object v0, p0, Lcom/tds/common/widgets/behavior/BottomSheetBehavior;->viewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 1004
    .local v0, "child":Landroid/view/View;, "TV;"
    if-nez v0, :cond_b

    .line 1005
    return-void

    .line 1008
    :cond_b
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 1009
    .local v1, "parent":Landroid/view/ViewParent;
    if-eqz v1, :cond_27

    invoke-interface {v1}, Landroid/view/ViewParent;->isLayoutRequested()Z

    move-result v2

    if-eqz v2, :cond_27

    invoke-static {v0}, Ltds/androidx/core/view/ViewCompat;->isAttachedToWindow(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_27

    .line 1010
    move v2, p1

    .line 1011
    .local v2, "finalState":I
    new-instance v3, Lcom/tds/common/widgets/behavior/BottomSheetBehavior$1;

    invoke-direct {v3, p0, v0, v2}, Lcom/tds/common/widgets/behavior/BottomSheetBehavior$1;-><init>(Lcom/tds/common/widgets/behavior/BottomSheetBehavior;Landroid/view/View;I)V

    invoke-virtual {v0, v3}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 1018
    .end local v2    # "finalState":I
    goto :goto_2a

    .line 1019
    :cond_27
    invoke-virtual {p0, v0, p1}, Lcom/tds/common/widgets/behavior/BottomSheetBehavior;->settleToState(Landroid/view/View;I)V

    .line 1021
    :goto_2a
    return-void
.end method


# virtual methods
.method public addBottomSheetCallback(Lcom/tds/common/widgets/behavior/BottomSheetBehavior$BottomSheetCallback;)V
    .registers 3
    .param p1, "callback"    # Lcom/tds/common/widgets/behavior/BottomSheetBehavior$BottomSheetCallback;

    .line 943
    .local p0, "this":Lcom/tds/common/widgets/behavior/BottomSheetBehavior;, "Lcom/tds/common/widgets/behavior/BottomSheetBehavior<TV;>;"
    iget-object v0, p0, Lcom/tds/common/widgets/behavior/BottomSheetBehavior;->callbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 944
    iget-object v0, p0, Lcom/tds/common/widgets/behavior/BottomSheetBehavior;->callbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 946
    :cond_d
    return-void
.end method

.method protected calculateCollapsedOffset()V
    .registers 4

    .line 1066
    .local p0, "this":Lcom/tds/common/widgets/behavior/BottomSheetBehavior;, "Lcom/tds/common/widgets/behavior/BottomSheetBehavior<TV;>;"
    invoke-virtual {p0}, Lcom/tds/common/widgets/behavior/BottomSheetBehavior;->calculatePeekHeight()I

    move-result v0

    .line 1068
    .local v0, "peek":I
    iget-boolean v1, p0, Lcom/tds/common/widgets/behavior/BottomSheetBehavior;->fitToContents:Z

    if-eqz v1, :cond_14

    .line 1069
    iget v1, p0, Lcom/tds/common/widgets/behavior/BottomSheetBehavior;->parentHeight:I

    sub-int/2addr v1, v0

    iget v2, p0, Lcom/tds/common/widgets/behavior/BottomSheetBehavior;->fitToContentsOffset:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/tds/common/widgets/behavior/BottomSheetBehavior;->collapsedOffset:I

    goto :goto_19

    .line 1071
    :cond_14
    iget v1, p0, Lcom/tds/common/widgets/behavior/BottomSheetBehavior;->parentHeight:I

    sub-int/2addr v1, v0

    iput v1, p0, Lcom/tds/common/widgets/behavior/BottomSheetBehavior;->collapsedOffset:I

    .line 1073
    :goto_19
    return-void
.end method

.method protected calculateHalfExpandedOffset()V
    .registers 4

    .line 1076
    .local p0, "this":Lcom/tds/common/widgets/behavior/BottomSheetBehavior;, "Lcom/tds/common/widgets/behavior/BottomSheetBehavior<TV;>;"
    iget v0, p0, Lcom/tds/common/widgets/behavior/BottomSheetBehavior;->parentHeight:I

    int-to-float v0, v0

    iget v1, p0, Lcom/tds/common/widgets/behavior/BottomSheetBehavior;->halfExpandedRatio:F

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v2, v1

    mul-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, p0, Lcom/tds/common/widgets/behavior/BottomSheetBehavior;->halfExpandedOffset:I

    .line 1077
    return-void
.end method

.method protected calculatePeekHeight()I
    .registers 4

    .line 1055
    .local p0, "this":Lcom/tds/common/widgets/behavior/BottomSheetBehavior;, "Lcom/tds/common/widgets/behavior/BottomSheetBehavior<TV;>;"
    iget-boolean v0, p0, Lcom/tds/common/widgets/behavior/BottomSheetBehavior;->peekHeightAuto:Z

    if-eqz v0, :cond_1a

    .line 1056
    iget v0, p0, Lcom/tds/common/widgets/behavior/BottomSheetBehavior;->peekHeightMin:I

    iget v1, p0, Lcom/tds/common/widgets/behavior/BottomSheetBehavior;->parentHeight:I

    iget v2, p0, Lcom/tds/common/widgets/behavior/BottomSheetBehavior;->parentWidth:I

    mul-int/lit8 v2, v2, 0x9

    div-int/lit8 v2, v2, 0x10

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1057
    .local v0, "desiredHeight":I
    iget v1, p0, Lcom/tds/common/widgets/behavior/BottomSheetBehavior;->childHeight:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    return v1

    .line 1059
    .end local v0    # "desiredHeight":I
    :cond_1a
    iget-boolean v0, p0, Lcom/tds/common/widgets/behavior/BottomSheetBehavior;->gestureInsetBottomIgnored:Z

    if-nez v0, :cond_2c

    iget v0, p0, Lcom/tds/common/widgets/behavior/BottomSheetBehavior;->gestureInsetBottom:I

    if-lez v0, :cond_2c

    .line 1060
    iget v1, p0, Lcom/tds/common/widgets/behavior/BottomSheetBehavior;->peekHeight:I

    iget v2, p0, Lcom/tds/common/widgets/behavior/BottomSheetBehavior;->peekHeightGestureInsetBuffer:I

    add-int/2addr v0, v2

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0

    .line 1062
    :cond_2c
    iget v0, p0, Lcom/tds/common/widgets/behavior/BottomSheetBehavior;->peekHeight:I

    return v0
.end method

.method dispatchOnSlide(I)V
    .registers 6
    .param p1, "top"    # I

    .line 1364
    .local p0, "this":Lcom/tds/common/widgets/behavior/BottomSheetBehavior;, "Lcom/tds/common/widgets/behavior/BottomSheetBehavior<TV;>;"
    iget-object v0, p0, Lcom/tds/common/widgets/behavior/BottomSheetBehavior;->viewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 1365
    .local v0, "bottomSheet":Landroid/view/View;
    if-eqz v0, :cond_4c

    iget-object v1, p0, Lcom/tds/common/widgets/behavior/BottomSheetBehavior;->callbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4c

    .line 1366
    iget v1, p0, Lcom/tds/common/widgets/behavior/BottomSheetBehavior;->collapsedOffset:I

    if-gt p1, v1, :cond_2a

    .line 1367
    invoke-virtual {p0}, Lcom/tds/common/widgets/behavior/BottomSheetBehavior;->getExpandedOffset()I

    move-result v2

    if-ne v1, v2, :cond_1d

    goto :goto_2a

    :cond_1d
    iget v1, p0, Lcom/tds/common/widgets/behavior/BottomSheetBehavior;->collapsedOffset:I

    sub-int v2, v1, p1

    int-to-float v2, v2

    .line 1369
    invoke-virtual {p0}, Lcom/tds/common/widgets/behavior/BottomSheetBehavior;->getExpandedOffset()I

    move-result v3

    sub-int/2addr v1, v3

    int-to-float v1, v1

    div-float/2addr v2, v1

    goto :goto_34

    .line 1367
    :cond_2a
    :goto_2a
    iget v1, p0, Lcom/tds/common/widgets/behavior/BottomSheetBehavior;->collapsedOffset:I

    sub-int v2, v1, p1

    int-to-float v2, v2

    iget v3, p0, Lcom/tds/common/widgets/behavior/BottomSheetBehavior;->parentHeight:I

    sub-int/2addr v3, v1

    int-to-float v1, v3

    div-float/2addr v2, v1

    .line 1369
    :goto_34
    move v1, v2

    .line 1370
    .local v1, "slideOffset":F
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_36
    iget-object v3, p0, Lcom/tds/common/widgets/behavior/BottomSheetBehavior;->callbacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_4c

    .line 1371
    iget-object v3, p0, Lcom/tds/common/widgets/behavior/BottomSheetBehavior;->callbacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tds/common/widgets/behavior/BottomSheetBehavior$BottomSheetCallback;

    invoke-virtual {v3, v0, v1}, Lcom/tds/common/widgets/behavior/BottomSheetBehavior$BottomSheetCallback;->onSlide(Landroid/view/View;F)V

    .line 1370
    add-int/lit8 v2, v2, 0x1

    goto :goto_36

    .line 1374
    .end local v1    # "slideOffset":F
    .end local v2    # "i":I
    :cond_4c
    return-void
.end method

.method findScrollingChild(Landroid/view/View;)Landroid/view/View;
    .registers 6
    .param p1, "view"    # Landroid/view/View;

    .line 1123
    .local p0, "this":Lcom/tds/common/widgets/behavior/BottomSheetBehavior;, "Lcom/tds/common/widgets/behavior/BottomSheetBehavior<TV;>;"
    invoke-static {p1}, Ltds/androidx/core/view/ViewCompat;->isNestedScrollingEnabled(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1124
    return-object p1

    .line 1126
    :cond_7
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_23

    .line 1127
    move-object v0, p1

    check-cast v0, Landroid/view/ViewGroup;

    .line 1128
    .local v0, "group":Landroid/view/ViewGroup;
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    .local v2, "count":I
    :goto_13
    if-ge v1, v2, :cond_23

    .line 1129
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/tds/common/widgets/behavior/BottomSheetBehavior;->findScrollingChild(Landroid/view/View;)Landroid/view/View;

    move-result-object v3

    .line 1130
    .local v3, "scrollingChild":Landroid/view/View;
    if-eqz v3, :cond_20

    .line 1131
    return-object v3

    .line 1128
    .end local v3    # "scrollingChild":Landroid/view/View;
    :cond_20
    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    .line 1135
    .end local v0    # "group":Landroid/view/ViewGroup;
    .end local v1    # "i":I
    .end local v2    # "count":I
    :cond_23
    const/4 v0, 0x0

    return-object v0
.end method

.method public getExpandedOffset()I
    .registers 2

    .line 826
    .local p0, "this":Lcom/tds/common/widgets/behavior/BottomSheetBehavior;, "Lcom/tds/common/widgets/behavior/BottomSheetBehavior<TV;>;"
    iget-boolean v0, p0, Lcom/tds/common/widgets/behavior/BottomSheetBehavior;->fitToContents:Z

    if-eqz v0, :cond_7

    iget v0, p0, Lcom/tds/common/widgets/behavior/BottomSheetBehavior;->fitToContentsOffset:I

    goto :goto_9

    :cond_7
    iget v0, p0, Lcom/tds/common/widgets/behavior/BottomSheetBehavior;->expandedOffset:I

    :goto_9
    return v0
.end method

.method public getHalfExpandedRatio()F
    .registers 2

    .line 800
    .local p0, "this":Lcom/tds/common/widgets/behavior/BottomSheetBehavior;, "Lcom/tds/common/widgets/behavior/BottomSheetBehavior<TV;>;"
    iget v0, p0, Lcom/tds/common/widgets/behavior/BottomSheetBehavior;->halfExpandedRatio:F

    return v0
.end method

.method public getPeekHeight()I
    .registers 2

    .line 768
    .local p0, "this":Lcom/tds/common/widgets/behavior/BottomSheetBehavior;, "Lcom/tds/common/widgets/behavior/BottomSheetBehavior<TV;>;"
    iget-boolean v0, p0, Lcom/tds/common/widgets/behavior/BottomSheetBehavior;->peekHeightAuto:Z

    if-eqz v0, :cond_6

    const/4 v0, -0x1

    goto :goto_8

    :cond_6
    iget v0, p0, Lcom/tds/common/widgets/behavior/BottomSheetBehavior;->peekHeight:I

    :goto_8
    return v0
.end method

.method getPeekHeightMin()I
    .registers 2

    .line 1378
    .local p0, "this":Lcom/tds/common/widgets/behavior/BottomSheetBehavior;, "Lcom/tds/common/widgets/behavior/BottomSheetBehavior<TV;>;"
    iget v0, p0, Lcom/tds/common/widgets/behavior/BottomSheetBehavior;->peekHeightMin:I

    return v0
.end method

.method public getSaveFlags()I
    .registers 2

    .line 912
    .local p0, "this":Lcom/tds/common/widgets/behavior/BottomSheetBehavior;, "Lcom/tds/common/widgets/behavior/BottomSheetBehavior<TV;>;"
    iget v0, p0, Lcom/tds/common/widgets/behavior/BottomSheetBehavior;->saveFlags:I

    return v0
.end method

.method public getSkipCollapsed()Z
    .registers 2

    .line 874
    .local p0, "this":Lcom/tds/common/widgets/behavior/BottomSheetBehavior;, "Lcom/tds/common/widgets/behavior/BottomSheetBehavior<TV;>;"
    iget-boolean v0, p0, Lcom/tds/common/widgets/behavior/BottomSheetBehavior;->skipCollapsed:Z

    return v0
.end method

.method public getState()I
    .registers 2

    .line 1031
    .local p0, "this":Lcom/tds/common/widgets/behavior/BottomSheetBehavior;, "Lcom/tds/common/widgets/behavior/BottomSheetBehavior<TV;>;"
    iget v0, p0, Lcom/tds/common/widgets/behavior/BottomSheetBehavior;->state:I

    return v0
.end method

.method protected getYVelocity()F
    .registers 4

    .line 1159
    .local p0, "this":Lcom/tds/common/widgets/behavior/BottomSheetBehavior;, "Lcom/tds/common/widgets/behavior/BottomSheetBehavior<TV;>;"
    iget-object v0, p0, Lcom/tds/common/widgets/behavior/BottomSheetBehavior;->velocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_6

    .line 1160
    const/4 v0, 0x0

    return v0

    .line 1162
    :cond_6
    const/16 v1, 0x3e8

    iget v2, p0, Lcom/tds/common/widgets/behavior/BottomSheetBehavior;->maximumVelocity:F

    invoke-virtual {v0, v1, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 1163
    iget-object v0, p0, Lcom/tds/common/widgets/behavior/BottomSheetBehavior;->velocityTracker:Landroid/view/VelocityTracker;

    iget v1, p0, Lcom/tds/common/widgets/behavior/BottomSheetBehavior;->activePointerId:I

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v0

    return v0
.end method

.method public isDraggable()Z
    .registers 2

    .line 889
    .local p0, "this":Lcom/tds/common/widgets/behavior/BottomSheetBehavior;, "Lcom/tds/common/widgets/behavior/BottomSheetBehavior<TV;>;"
    iget-boolean v0, p0, Lcom/tds/common/widgets/behavior/BottomSheetBehavior;->draggable:Z

    return v0
.end method

.method public isFitToContents()Z
    .registers 2

    .line 679
    .local p0, "this":Lcom/tds/common/widgets/behavior/BottomSheetBehavior;, "Lcom/tds/common/widgets/behavior/BottomSheetBehavior<TV;>;"
    iget-boolean v0, p0, Lcom/tds/common/widgets/behavior/BottomSheetBehavior;->fitToContents:Z

    return v0
.end method

.method public isGestureInsetBottomIgnored()Z
    .registers 2

    .line 999
    .local p0, "this":Lcom/tds/common/widgets/behavior/BottomSheetBehavior;, "Lcom/tds/common/widgets/behavior/BottomSheetBehavior<TV;>;"
    iget-boolean v0, p0, Lcom/tds/common/widgets/behavior/BottomSheetBehavior;->gestureInsetBottomIgnored:Z

    return v0
.end method

.method public isHideable()Z
    .registers 2

    .line 852
    .local p0, "this":Lcom/tds/common/widgets/behavior/BottomSheetBehavior;, "Lcom/tds/common/widgets/behavior/BottomSheetBehavior<TV;>;"
    iget-boolean v0, p0, Lcom/tds/common/widgets/behavior/BottomSheetBehavior;->hideable:Z

    return v0
.end method

.method public onAttachedToLayoutParams(Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;)V
    .registers 3
    .param p1, "layoutParams"    # Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    .line 337
    .local p0, "this":Lcom/tds/common/widgets/behavior/BottomSheetBehavior;, "Lcom/tds/common/widgets/behavior/BottomSheetBehavior<TV;>;"
    invoke-super {p0, p1}, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;->onAttachedToLayoutParams(Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;)V

    .line 340
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tds/common/widgets/behavior/BottomSheetBehavior;->viewRef:Ljava/lang/ref/WeakReference;

    .line 341
    iput-object v0, p0, Lcom/tds/common/widgets/behavior/BottomSheetBehavior;->viewDragHelper:Ltds/androidx/customview/widget/ViewDragHelper;

    .line 342
    return-void
.end method

.method public onDetachedFromLayoutParams()V
    .registers 2

    .line 346
    .local p0, "this":Lcom/tds/common/widgets/behavior/BottomSheetBehavior;, "Lcom/tds/common/widgets/behavior/BottomSheetBehavior<TV;>;"
    invoke-super {p0}, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;->onDetachedFromLayoutParams()V

    .line 348
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tds/common/widgets/behavior/BottomSheetBehavior;->viewRef:Ljava/lang/ref/WeakReference;

    .line 349
    iput-object v0, p0, Lcom/tds/common/widgets/behavior/BottomSheetBehavior;->viewDragHelper:Ltds/androidx/customview/widget/ViewDragHelper;

    .line 350
    return-void
.end method

.method public onInterceptTouchEvent(Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 13
    .param p1, "parent"    # Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;
    .param p3, "event"    # Landroid/view/MotionEvent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TV;",
            "Landroid/view/MotionEvent;",
            ")Z"
        }
    .end annotation

    .line 399
    .local p0, "this":Lcom/tds/common/widgets/behavior/BottomSheetBehavior;, "Lcom/tds/common/widgets/behavior/BottomSheetBehavior<TV;>;"
    .local p2, "child":Landroid/view/View;, "TV;"
    invoke-virtual {p2}, Landroid/view/View;->isShown()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_d0

    iget-boolean v0, p0, Lcom/tds/common/widgets/behavior/BottomSheetBehavior;->draggable:Z

    if-nez v0, :cond_e

    goto/16 :goto_d0

    .line 403
    :cond_e
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 405
    .local v0, "action":I
    if-nez v0, :cond_17

    .line 406
    invoke-virtual {p0}, Lcom/tds/common/widgets/behavior/BottomSheetBehavior;->reset()V

    .line 408
    :cond_17
    iget-object v3, p0, Lcom/tds/common/widgets/behavior/BottomSheetBehavior;->velocityTracker:Landroid/view/VelocityTracker;

    if-nez v3, :cond_21

    .line 409
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v3

    iput-object v3, p0, Lcom/tds/common/widgets/behavior/BottomSheetBehavior;->velocityTracker:Landroid/view/VelocityTracker;

    .line 411
    :cond_21
    iget-object v3, p0, Lcom/tds/common/widgets/behavior/BottomSheetBehavior;->velocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3, p3}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 412
    const/4 v3, 0x0

    const/4 v4, -0x1

    const/4 v5, 0x2

    packed-switch v0, :pswitch_data_d4

    :pswitch_2c
    goto :goto_7c

    .line 415
    :pswitch_2d
    iput-boolean v1, p0, Lcom/tds/common/widgets/behavior/BottomSheetBehavior;->touchingScrollingChild:Z

    .line 416
    iput v4, p0, Lcom/tds/common/widgets/behavior/BottomSheetBehavior;->activePointerId:I

    .line 418
    iget-boolean v4, p0, Lcom/tds/common/widgets/behavior/BottomSheetBehavior;->ignoreEvents:Z

    if-eqz v4, :cond_7c

    .line 419
    iput-boolean v1, p0, Lcom/tds/common/widgets/behavior/BottomSheetBehavior;->ignoreEvents:Z

    .line 420
    return v1

    .line 424
    :pswitch_38
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    float-to-int v6, v6

    .line 425
    .local v6, "initialX":I
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    float-to-int v7, v7

    iput v7, p0, Lcom/tds/common/widgets/behavior/BottomSheetBehavior;->initialY:I

    .line 428
    iget v7, p0, Lcom/tds/common/widgets/behavior/BottomSheetBehavior;->state:I

    if-eq v7, v5, :cond_6a

    .line 429
    iget-object v7, p0, Lcom/tds/common/widgets/behavior/BottomSheetBehavior;->nestedScrollingChildRef:Ljava/lang/ref/WeakReference;

    if-eqz v7, :cond_53

    invoke-virtual {v7}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/View;

    goto :goto_54

    :cond_53
    move-object v7, v3

    .line 430
    .local v7, "scroll":Landroid/view/View;
    :goto_54
    if-eqz v7, :cond_6a

    iget v8, p0, Lcom/tds/common/widgets/behavior/BottomSheetBehavior;->initialY:I

    invoke-virtual {p1, v7, v6, v8}, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;->isPointInChildBounds(Landroid/view/View;II)Z

    move-result v8

    if-eqz v8, :cond_6a

    .line 431
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v8

    invoke-virtual {p3, v8}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v8

    iput v8, p0, Lcom/tds/common/widgets/behavior/BottomSheetBehavior;->activePointerId:I

    .line 432
    iput-boolean v2, p0, Lcom/tds/common/widgets/behavior/BottomSheetBehavior;->touchingScrollingChild:Z

    .line 435
    .end local v7    # "scroll":Landroid/view/View;
    :cond_6a
    iget v7, p0, Lcom/tds/common/widgets/behavior/BottomSheetBehavior;->activePointerId:I

    if-ne v7, v4, :cond_78

    iget v4, p0, Lcom/tds/common/widgets/behavior/BottomSheetBehavior;->initialY:I

    .line 437
    invoke-virtual {p1, p2, v6, v4}, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;->isPointInChildBounds(Landroid/view/View;II)Z

    move-result v4

    if-nez v4, :cond_78

    move v4, v2

    goto :goto_79

    :cond_78
    move v4, v1

    :goto_79
    iput-boolean v4, p0, Lcom/tds/common/widgets/behavior/BottomSheetBehavior;->ignoreEvents:Z

    .line 438
    nop

    .line 441
    .end local v6    # "initialX":I
    :cond_7c
    :goto_7c
    iget-boolean v4, p0, Lcom/tds/common/widgets/behavior/BottomSheetBehavior;->ignoreEvents:Z

    if-nez v4, :cond_8b

    iget-object v4, p0, Lcom/tds/common/widgets/behavior/BottomSheetBehavior;->viewDragHelper:Ltds/androidx/customview/widget/ViewDragHelper;

    if-eqz v4, :cond_8b

    .line 443
    invoke-virtual {v4, p3}, Ltds/androidx/customview/widget/ViewDragHelper;->shouldInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    if-eqz v4, :cond_8b

    .line 444
    return v2

    .line 449
    :cond_8b
    iget-object v4, p0, Lcom/tds/common/widgets/behavior/BottomSheetBehavior;->nestedScrollingChildRef:Ljava/lang/ref/WeakReference;

    if-eqz v4, :cond_95

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 450
    .local v3, "scroll":Landroid/view/View;
    :cond_95
    if-ne v0, v5, :cond_ce

    if-eqz v3, :cond_ce

    iget-boolean v4, p0, Lcom/tds/common/widgets/behavior/BottomSheetBehavior;->ignoreEvents:Z

    if-nez v4, :cond_ce

    iget v4, p0, Lcom/tds/common/widgets/behavior/BottomSheetBehavior;->state:I

    if-eq v4, v2, :cond_ce

    .line 454
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {p1, v3, v4, v5}, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;->isPointInChildBounds(Landroid/view/View;II)Z

    move-result v4

    if-nez v4, :cond_ce

    iget-object v4, p0, Lcom/tds/common/widgets/behavior/BottomSheetBehavior;->viewDragHelper:Ltds/androidx/customview/widget/ViewDragHelper;

    if-eqz v4, :cond_ce

    iget v4, p0, Lcom/tds/common/widgets/behavior/BottomSheetBehavior;->initialY:I

    int-to-float v4, v4

    .line 456
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iget-object v5, p0, Lcom/tds/common/widgets/behavior/BottomSheetBehavior;->viewDragHelper:Ltds/androidx/customview/widget/ViewDragHelper;

    invoke-virtual {v5}, Ltds/androidx/customview/widget/ViewDragHelper;->getTouchSlop()I

    move-result v5

    int-to-float v5, v5

    cmpl-float v4, v4, v5

    if-lez v4, :cond_ce

    move v1, v2

    goto :goto_cf

    :cond_ce
    nop

    .line 450
    :goto_cf
    return v1

    .line 400
    .end local v0    # "action":I
    .end local v3    # "scroll":Landroid/view/View;
    :cond_d0
    :goto_d0
    iput-boolean v2, p0, Lcom/tds/common/widgets/behavior/BottomSheetBehavior;->ignoreEvents:Z

    .line 401
    return v1

    nop

    :pswitch_data_d4
    .packed-switch 0x0
        :pswitch_38
        :pswitch_2d
        :pswitch_2c
        :pswitch_2d
    .end packed-switch
.end method

.method public onLayoutChild(Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;I)Z
    .registers 9
    .param p1, "parent"    # Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;
    .param p3, "layoutDirection"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TV;I)Z"
        }
    .end annotation

    .line 355
    .local p0, "this":Lcom/tds/common/widgets/behavior/BottomSheetBehavior;, "Lcom/tds/common/widgets/behavior/BottomSheetBehavior<TV;>;"
    .local p2, "child":Landroid/view/View;, "TV;"
    invoke-static {p1}, Ltds/androidx/core/view/ViewCompat;->getFitsSystemWindows(Landroid/view/View;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_10

    invoke-static {p2}, Ltds/androidx/core/view/ViewCompat;->getFitsSystemWindows(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 356
    invoke-virtual {p2, v1}, Landroid/view/View;->setFitsSystemWindows(Z)V

    .line 359
    :cond_10
    iget-object v0, p0, Lcom/tds/common/widgets/behavior/BottomSheetBehavior;->viewRef:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_2a

    .line 361
    invoke-virtual {p1}, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v2, 0x42800000    # 64.0f

    invoke-static {v0, v2}, Lcom/tds/common/utils/UIUtils;->dp2px(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/tds/common/widgets/behavior/BottomSheetBehavior;->peekHeightMin:I

    .line 362
    invoke-virtual {p0, p2}, Lcom/tds/common/widgets/behavior/BottomSheetBehavior;->setSystemGestureInsets(Landroid/view/View;)V

    .line 363
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/tds/common/widgets/behavior/BottomSheetBehavior;->viewRef:Ljava/lang/ref/WeakReference;

    .line 365
    :cond_2a
    iget-object v0, p0, Lcom/tds/common/widgets/behavior/BottomSheetBehavior;->viewDragHelper:Ltds/androidx/customview/widget/ViewDragHelper;

    if-nez v0, :cond_36

    .line 366
    iget-object v0, p0, Lcom/tds/common/widgets/behavior/BottomSheetBehavior;->dragCallback:Ltds/androidx/customview/widget/ViewDragHelper$Callback;

    invoke-static {p1, v0}, Ltds/androidx/customview/widget/ViewDragHelper;->create(Landroid/view/ViewGroup;Ltds/androidx/customview/widget/ViewDragHelper$Callback;)Ltds/androidx/customview/widget/ViewDragHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/tds/common/widgets/behavior/BottomSheetBehavior;->viewDragHelper:Ltds/androidx/customview/widget/ViewDragHelper;

    .line 369
    :cond_36
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v0

    .line 371
    .local v0, "savedTop":I
    invoke-virtual {p1, p2, p3}, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;->onLayoutChild(Landroid/view/View;I)V

    .line 373
    invoke-virtual {p1}, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;->getWidth()I

    move-result v2

    iput v2, p0, Lcom/tds/common/widgets/behavior/BottomSheetBehavior;->parentWidth:I

    .line 374
    invoke-virtual {p1}, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;->getHeight()I

    move-result v2

    iput v2, p0, Lcom/tds/common/widgets/behavior/BottomSheetBehavior;->parentHeight:I

    .line 375
    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v2

    iput v2, p0, Lcom/tds/common/widgets/behavior/BottomSheetBehavior;->childHeight:I

    .line 376
    const/4 v3, 0x0

    iget v4, p0, Lcom/tds/common/widgets/behavior/BottomSheetBehavior;->parentHeight:I

    sub-int/2addr v4, v2

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, p0, Lcom/tds/common/widgets/behavior/BottomSheetBehavior;->fitToContentsOffset:I

    .line 377
    invoke-virtual {p0}, Lcom/tds/common/widgets/behavior/BottomSheetBehavior;->calculateHalfExpandedOffset()V

    .line 378
    invoke-virtual {p0}, Lcom/tds/common/widgets/behavior/BottomSheetBehavior;->calculateCollapsedOffset()V

    .line 380
    iget v2, p0, Lcom/tds/common/widgets/behavior/BottomSheetBehavior;->state:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_6c

    .line 381
    invoke-virtual {p0}, Lcom/tds/common/widgets/behavior/BottomSheetBehavior;->getExpandedOffset()I

    move-result v2

    invoke-static {p2, v2}, Ltds/androidx/core/view/ViewCompat;->offsetTopAndBottom(Landroid/view/View;I)V

    goto :goto_99

    .line 382
    :cond_6c
    const/4 v3, 0x6

    if-ne v2, v3, :cond_75

    .line 383
    iget v2, p0, Lcom/tds/common/widgets/behavior/BottomSheetBehavior;->halfExpandedOffset:I

    invoke-static {p2, v2}, Ltds/androidx/core/view/ViewCompat;->offsetTopAndBottom(Landroid/view/View;I)V

    goto :goto_99

    .line 384
    :cond_75
    iget-boolean v3, p0, Lcom/tds/common/widgets/behavior/BottomSheetBehavior;->hideable:Z

    if-eqz v3, :cond_82

    const/4 v3, 0x5

    if-ne v2, v3, :cond_82

    .line 385
    iget v2, p0, Lcom/tds/common/widgets/behavior/BottomSheetBehavior;->parentHeight:I

    invoke-static {p2, v2}, Ltds/androidx/core/view/ViewCompat;->offsetTopAndBottom(Landroid/view/View;I)V

    goto :goto_99

    .line 386
    :cond_82
    const/4 v3, 0x4

    if-ne v2, v3, :cond_8b

    .line 387
    iget v2, p0, Lcom/tds/common/widgets/behavior/BottomSheetBehavior;->collapsedOffset:I

    invoke-static {p2, v2}, Ltds/androidx/core/view/ViewCompat;->offsetTopAndBottom(Landroid/view/View;I)V

    goto :goto_99

    .line 388
    :cond_8b
    if-eq v2, v1, :cond_90

    const/4 v3, 0x2

    if-ne v2, v3, :cond_99

    .line 389
    :cond_90
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v2

    sub-int v2, v0, v2

    invoke-static {p2, v2}, Ltds/androidx/core/view/ViewCompat;->offsetTopAndBottom(Landroid/view/View;I)V

    .line 392
    :cond_99
    :goto_99
    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {p0, p2}, Lcom/tds/common/widgets/behavior/BottomSheetBehavior;->findScrollingChild(Landroid/view/View;)Landroid/view/View;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v2, p0, Lcom/tds/common/widgets/behavior/BottomSheetBehavior;->nestedScrollingChildRef:Ljava/lang/ref/WeakReference;

    .line 393
    return v1
.end method

.method public onNestedPreFling(Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;FF)Z
    .registers 9
    .param p1, "coordinatorLayout"    # Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;
    .param p3, "target"    # Landroid/view/View;
    .param p4, "velocityX"    # F
    .param p5, "velocityY"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TV;",
            "Landroid/view/View;",
            "FF)Z"
        }
    .end annotation

    .line 664
    .local p0, "this":Lcom/tds/common/widgets/behavior/BottomSheetBehavior;, "Lcom/tds/common/widgets/behavior/BottomSheetBehavior<TV;>;"
    .local p2, "child":Landroid/view/View;, "TV;"
    iget-object v0, p0, Lcom/tds/common/widgets/behavior/BottomSheetBehavior;->nestedScrollingChildRef:Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    if-eqz v0, :cond_1a

    .line 665
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-ne p3, v0, :cond_18

    iget v0, p0, Lcom/tds/common/widgets/behavior/BottomSheetBehavior;->state:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_16

    .line 667
    invoke-super/range {p0 .. p5}, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;->onNestedPreFling(Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;FF)Z

    move-result v0

    if-eqz v0, :cond_18

    :cond_16
    const/4 v1, 0x1

    goto :goto_19

    :cond_18
    nop

    .line 665
    :goto_19
    return v1

    .line 669
    :cond_1a
    return v1
.end method

.method public onNestedPreScroll(Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;II[II)V
    .registers 14
    .param p1, "coordinatorLayout"    # Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;
    .param p3, "target"    # Landroid/view/View;
    .param p4, "dx"    # I
    .param p5, "dy"    # I
    .param p6, "consumed"    # [I
    .param p7, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TV;",
            "Landroid/view/View;",
            "II[II)V"
        }
    .end annotation

    .line 512
    .local p0, "this":Lcom/tds/common/widgets/behavior/BottomSheetBehavior;, "Lcom/tds/common/widgets/behavior/BottomSheetBehavior<TV;>;"
    .local p2, "child":Landroid/view/View;, "TV;"
    const/4 v0, 0x1

    if-ne p7, v0, :cond_4

    .line 514
    return-void

    .line 516
    :cond_4
    iget-object v1, p0, Lcom/tds/common/widgets/behavior/BottomSheetBehavior;->nestedScrollingChildRef:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_f

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    goto :goto_10

    :cond_f
    const/4 v1, 0x0

    .line 517
    .local v1, "scrollingChild":Landroid/view/View;
    :goto_10
    if-eq p3, v1, :cond_13

    .line 518
    return-void

    .line 520
    :cond_13
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v2

    .line 521
    .local v2, "currentTop":I
    sub-int v3, v2, p5

    .line 522
    .local v3, "newTop":I
    if-lez p5, :cond_43

    .line 523
    invoke-virtual {p0}, Lcom/tds/common/widgets/behavior/BottomSheetBehavior;->getExpandedOffset()I

    move-result v4

    if-ge v3, v4, :cond_34

    .line 524
    invoke-virtual {p0}, Lcom/tds/common/widgets/behavior/BottomSheetBehavior;->getExpandedOffset()I

    move-result v4

    sub-int v4, v2, v4

    aput v4, p6, v0

    .line 525
    aget v4, p6, v0

    neg-int v4, v4

    invoke-static {p2, v4}, Ltds/androidx/core/view/ViewCompat;->offsetTopAndBottom(Landroid/view/View;I)V

    .line 526
    const/4 v4, 0x3

    invoke-virtual {p0, v4}, Lcom/tds/common/widgets/behavior/BottomSheetBehavior;->setStateInternal(I)V

    goto :goto_72

    .line 528
    :cond_34
    iget-boolean v4, p0, Lcom/tds/common/widgets/behavior/BottomSheetBehavior;->draggable:Z

    if-nez v4, :cond_39

    .line 530
    return-void

    .line 533
    :cond_39
    aput p5, p6, v0

    .line 534
    neg-int v4, p5

    invoke-static {p2, v4}, Ltds/androidx/core/view/ViewCompat;->offsetTopAndBottom(Landroid/view/View;I)V

    .line 535
    invoke-virtual {p0, v0}, Lcom/tds/common/widgets/behavior/BottomSheetBehavior;->setStateInternal(I)V

    goto :goto_72

    .line 537
    :cond_43
    if-gez p5, :cond_72

    .line 538
    const/4 v4, -0x1

    invoke-virtual {p3, v4}, Landroid/view/View;->canScrollVertically(I)Z

    move-result v4

    if-nez v4, :cond_72

    .line 539
    iget v4, p0, Lcom/tds/common/widgets/behavior/BottomSheetBehavior;->collapsedOffset:I

    if-le v3, v4, :cond_64

    iget-boolean v5, p0, Lcom/tds/common/widgets/behavior/BottomSheetBehavior;->hideable:Z

    if-eqz v5, :cond_55

    goto :goto_64

    .line 549
    :cond_55
    sub-int v4, v2, v4

    aput v4, p6, v0

    .line 550
    aget v4, p6, v0

    neg-int v4, v4

    invoke-static {p2, v4}, Ltds/androidx/core/view/ViewCompat;->offsetTopAndBottom(Landroid/view/View;I)V

    .line 551
    const/4 v4, 0x4

    invoke-virtual {p0, v4}, Lcom/tds/common/widgets/behavior/BottomSheetBehavior;->setStateInternal(I)V

    goto :goto_72

    .line 540
    :cond_64
    :goto_64
    iget-boolean v4, p0, Lcom/tds/common/widgets/behavior/BottomSheetBehavior;->draggable:Z

    if-nez v4, :cond_69

    .line 542
    return-void

    .line 545
    :cond_69
    aput p5, p6, v0

    .line 546
    neg-int v4, p5

    invoke-static {p2, v4}, Ltds/androidx/core/view/ViewCompat;->offsetTopAndBottom(Landroid/view/View;I)V

    .line 547
    invoke-virtual {p0, v0}, Lcom/tds/common/widgets/behavior/BottomSheetBehavior;->setStateInternal(I)V

    .line 555
    :cond_72
    :goto_72
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/tds/common/widgets/behavior/BottomSheetBehavior;->dispatchOnSlide(I)V

    .line 556
    iput p5, p0, Lcom/tds/common/widgets/behavior/BottomSheetBehavior;->lastNestedScrollDy:I

    .line 557
    iput-boolean v0, p0, Lcom/tds/common/widgets/behavior/BottomSheetBehavior;->nestedScrolled:Z

    .line 558
    return-void
.end method

.method public onNestedScroll(Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;IIIII[I)V
    .registers 10
    .param p1, "coordinatorLayout"    # Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;
    .param p3, "target"    # Landroid/view/View;
    .param p4, "dxConsumed"    # I
    .param p5, "dyConsumed"    # I
    .param p6, "dxUnconsumed"    # I
    .param p7, "dyUnconsumed"    # I
    .param p8, "type"    # I
    .param p9, "consumed"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TV;",
            "Landroid/view/View;",
            "IIIII[I)V"
        }
    .end annotation

    .line 655
    .local p0, "this":Lcom/tds/common/widgets/behavior/BottomSheetBehavior;, "Lcom/tds/common/widgets/behavior/BottomSheetBehavior<TV;>;"
    .local p2, "child":Landroid/view/View;, "TV;"
    return-void
.end method

.method public onRestoreInstanceState(Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/os/Parcelable;)V
    .registers 7
    .param p1, "parent"    # Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;
    .param p3, "state"    # Landroid/os/Parcelable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TV;",
            "Landroid/os/Parcelable;",
            ")V"
        }
    .end annotation

    .line 323
    .local p0, "this":Lcom/tds/common/widgets/behavior/BottomSheetBehavior;, "Lcom/tds/common/widgets/behavior/BottomSheetBehavior<TV;>;"
    .local p2, "child":Landroid/view/View;, "TV;"
    move-object v0, p3

    check-cast v0, Lcom/tds/common/widgets/behavior/BottomSheetBehavior$SavedState;

    .line 324
    .local v0, "ss":Lcom/tds/common/widgets/behavior/BottomSheetBehavior$SavedState;
    invoke-virtual {v0}, Lcom/tds/common/widgets/behavior/BottomSheetBehavior$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, p1, p2, v1}, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;->onRestoreInstanceState(Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/os/Parcelable;)V

    .line 326
    invoke-direct {p0, v0}, Lcom/tds/common/widgets/behavior/BottomSheetBehavior;->restoreOptionalState(Lcom/tds/common/widgets/behavior/BottomSheetBehavior$SavedState;)V

    .line 328
    iget v1, v0, Lcom/tds/common/widgets/behavior/BottomSheetBehavior$SavedState;->state:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1d

    iget v1, v0, Lcom/tds/common/widgets/behavior/BottomSheetBehavior$SavedState;->state:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_18

    goto :goto_1d

    .line 331
    :cond_18
    iget v1, v0, Lcom/tds/common/widgets/behavior/BottomSheetBehavior$SavedState;->state:I

    iput v1, p0, Lcom/tds/common/widgets/behavior/BottomSheetBehavior;->state:I

    goto :goto_20

    .line 329
    :cond_1d
    :goto_1d
    const/4 v1, 0x4

    iput v1, p0, Lcom/tds/common/widgets/behavior/BottomSheetBehavior;->state:I

    .line 333
    :goto_20
    return-void
.end method

.method public onSaveInstanceState(Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;)Landroid/os/Parcelable;
    .registers 5
    .param p1, "parent"    # Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TV;)",
            "Landroid/os/Parcelable;"
        }
    .end annotation

    .line 317
    .local p0, "this":Lcom/tds/common/widgets/behavior/BottomSheetBehavior;, "Lcom/tds/common/widgets/behavior/BottomSheetBehavior<TV;>;"
    .local p2, "child":Landroid/view/View;, "TV;"
    new-instance v0, Lcom/tds/common/widgets/behavior/BottomSheetBehavior$SavedState;

    invoke-super {p0, p1, p2}, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;->onSaveInstanceState(Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;)Landroid/os/Parcelable;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/tds/common/widgets/behavior/BottomSheetBehavior$SavedState;-><init>(Landroid/os/Parcelable;Lcom/tds/common/widgets/behavior/BottomSheetBehavior;)V

    return-object v0
.end method

.method public onStartNestedScroll(Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;Landroid/view/View;II)Z
    .registers 9
    .param p1, "coordinatorLayout"    # Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;
    .param p3, "directTargetChild"    # Landroid/view/View;
    .param p4, "target"    # Landroid/view/View;
    .param p5, "axes"    # I
    .param p6, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TV;",
            "Landroid/view/View;",
            "Landroid/view/View;",
            "II)Z"
        }
    .end annotation

    .line 498
    .local p0, "this":Lcom/tds/common/widgets/behavior/BottomSheetBehavior;, "Lcom/tds/common/widgets/behavior/BottomSheetBehavior<TV;>;"
    .local p2, "child":Landroid/view/View;, "TV;"
    const/4 v0, 0x0

    iput v0, p0, Lcom/tds/common/widgets/behavior/BottomSheetBehavior;->lastNestedScrollDy:I

    .line 499
    iput-boolean v0, p0, Lcom/tds/common/widgets/behavior/BottomSheetBehavior;->nestedScrolled:Z

    .line 500
    and-int/lit8 v1, p5, 0x2

    if-eqz v1, :cond_a

    const/4 v0, 0x1

    :cond_a
    return v0
.end method

.method public onStopNestedScroll(Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;I)V
    .registers 8
    .param p1, "coordinatorLayout"    # Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;
    .param p3, "target"    # Landroid/view/View;
    .param p4, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TV;",
            "Landroid/view/View;",
            "I)V"
        }
    .end annotation

    .line 566
    .local p0, "this":Lcom/tds/common/widgets/behavior/BottomSheetBehavior;, "Lcom/tds/common/widgets/behavior/BottomSheetBehavior<TV;>;"
    .local p2, "child":Landroid/view/View;, "TV;"
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v0

    invoke-virtual {p0}, Lcom/tds/common/widgets/behavior/BottomSheetBehavior;->getExpandedOffset()I

    move-result v1

    if-ne v0, v1, :cond_f

    .line 567
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/tds/common/widgets/behavior/BottomSheetBehavior;->setStateInternal(I)V

    .line 568
    return-void

    .line 570
    :cond_f
    iget-object v0, p0, Lcom/tds/common/widgets/behavior/BottomSheetBehavior;->nestedScrollingChildRef:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_e4

    .line 571
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-ne p3, v0, :cond_e4

    iget-boolean v0, p0, Lcom/tds/common/widgets/behavior/BottomSheetBehavior;->nestedScrolled:Z

    if-nez v0, :cond_1f

    goto/16 :goto_e4

    .line 577
    :cond_1f
    iget v0, p0, Lcom/tds/common/widgets/behavior/BottomSheetBehavior;->lastNestedScrollDy:I

    if-lez v0, :cond_41

    .line 578
    iget-boolean v0, p0, Lcom/tds/common/widgets/behavior/BottomSheetBehavior;->fitToContents:Z

    if-eqz v0, :cond_2c

    .line 579
    iget v0, p0, Lcom/tds/common/widgets/behavior/BottomSheetBehavior;->fitToContentsOffset:I

    .line 580
    .local v0, "top":I
    const/4 v1, 0x3

    .local v1, "targetState":I
    goto/16 :goto_dd

    .line 582
    .end local v0    # "top":I
    .end local v1    # "targetState":I
    :cond_2c
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v0

    .line 583
    .local v0, "currentTop":I
    iget v1, p0, Lcom/tds/common/widgets/behavior/BottomSheetBehavior;->halfExpandedOffset:I

    if-le v0, v1, :cond_3a

    .line 584
    iget v1, p0, Lcom/tds/common/widgets/behavior/BottomSheetBehavior;->halfExpandedOffset:I

    .line 585
    .local v1, "top":I
    const/4 v2, 0x6

    move v0, v1

    move v1, v2

    .local v2, "targetState":I
    goto :goto_3f

    .line 587
    .end local v1    # "top":I
    .end local v2    # "targetState":I
    :cond_3a
    iget v1, p0, Lcom/tds/common/widgets/behavior/BottomSheetBehavior;->expandedOffset:I

    .line 588
    .restart local v1    # "top":I
    const/4 v2, 0x3

    move v0, v1

    move v1, v2

    .line 590
    .local v0, "top":I
    .local v1, "targetState":I
    :goto_3f
    goto/16 :goto_dd

    .line 591
    .end local v0    # "top":I
    .end local v1    # "targetState":I
    :cond_41
    iget-boolean v0, p0, Lcom/tds/common/widgets/behavior/BottomSheetBehavior;->hideable:Z

    if-eqz v0, :cond_54

    invoke-virtual {p0}, Lcom/tds/common/widgets/behavior/BottomSheetBehavior;->getYVelocity()F

    move-result v0

    invoke-virtual {p0, p2, v0}, Lcom/tds/common/widgets/behavior/BottomSheetBehavior;->shouldHide(Landroid/view/View;F)Z

    move-result v0

    if-eqz v0, :cond_54

    .line 592
    iget v0, p0, Lcom/tds/common/widgets/behavior/BottomSheetBehavior;->parentHeight:I

    .line 593
    .restart local v0    # "top":I
    const/4 v1, 0x5

    .restart local v1    # "targetState":I
    goto/16 :goto_dd

    .line 594
    .end local v0    # "top":I
    .end local v1    # "targetState":I
    :cond_54
    iget v0, p0, Lcom/tds/common/widgets/behavior/BottomSheetBehavior;->lastNestedScrollDy:I

    if-nez v0, :cond_b4

    .line 595
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v0

    .line 596
    .local v0, "currentTop":I
    iget-boolean v1, p0, Lcom/tds/common/widgets/behavior/BottomSheetBehavior;->fitToContents:Z

    if-eqz v1, :cond_7e

    .line 597
    iget v1, p0, Lcom/tds/common/widgets/behavior/BottomSheetBehavior;->fitToContentsOffset:I

    sub-int v1, v0, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget v2, p0, Lcom/tds/common/widgets/behavior/BottomSheetBehavior;->collapsedOffset:I

    sub-int v2, v0, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    if-ge v1, v2, :cond_78

    .line 598
    iget v1, p0, Lcom/tds/common/widgets/behavior/BottomSheetBehavior;->fitToContentsOffset:I

    .line 599
    .local v1, "top":I
    const/4 v2, 0x3

    move v0, v1

    move v1, v2

    .restart local v2    # "targetState":I
    goto :goto_b3

    .line 601
    .end local v1    # "top":I
    .end local v2    # "targetState":I
    :cond_78
    iget v1, p0, Lcom/tds/common/widgets/behavior/BottomSheetBehavior;->collapsedOffset:I

    .line 602
    .restart local v1    # "top":I
    const/4 v2, 0x4

    move v0, v1

    move v1, v2

    .restart local v2    # "targetState":I
    goto :goto_b3

    .line 605
    .end local v1    # "top":I
    .end local v2    # "targetState":I
    :cond_7e
    iget v1, p0, Lcom/tds/common/widgets/behavior/BottomSheetBehavior;->halfExpandedOffset:I

    if-ge v0, v1, :cond_98

    .line 606
    iget v1, p0, Lcom/tds/common/widgets/behavior/BottomSheetBehavior;->collapsedOffset:I

    sub-int v1, v0, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-ge v0, v1, :cond_92

    .line 607
    iget v1, p0, Lcom/tds/common/widgets/behavior/BottomSheetBehavior;->expandedOffset:I

    .line 608
    .restart local v1    # "top":I
    const/4 v2, 0x3

    move v0, v1

    move v1, v2

    .restart local v2    # "targetState":I
    goto :goto_b3

    .line 610
    .end local v1    # "top":I
    .end local v2    # "targetState":I
    :cond_92
    iget v1, p0, Lcom/tds/common/widgets/behavior/BottomSheetBehavior;->halfExpandedOffset:I

    .line 611
    .restart local v1    # "top":I
    const/4 v2, 0x6

    move v0, v1

    move v1, v2

    .restart local v2    # "targetState":I
    goto :goto_b3

    .line 614
    .end local v1    # "top":I
    .end local v2    # "targetState":I
    :cond_98
    sub-int v1, v0, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget v2, p0, Lcom/tds/common/widgets/behavior/BottomSheetBehavior;->collapsedOffset:I

    sub-int v2, v0, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    if-ge v1, v2, :cond_ae

    .line 615
    iget v1, p0, Lcom/tds/common/widgets/behavior/BottomSheetBehavior;->halfExpandedOffset:I

    .line 616
    .restart local v1    # "top":I
    const/4 v2, 0x6

    move v0, v1

    move v1, v2

    .restart local v2    # "targetState":I
    goto :goto_b3

    .line 618
    .end local v1    # "top":I
    .end local v2    # "targetState":I
    :cond_ae
    iget v1, p0, Lcom/tds/common/widgets/behavior/BottomSheetBehavior;->collapsedOffset:I

    .line 619
    .restart local v1    # "top":I
    const/4 v2, 0x4

    move v0, v1

    move v1, v2

    .line 623
    .local v0, "top":I
    .local v1, "targetState":I
    :goto_b3
    goto :goto_dd

    .line 624
    .end local v0    # "top":I
    .end local v1    # "targetState":I
    :cond_b4
    iget-boolean v0, p0, Lcom/tds/common/widgets/behavior/BottomSheetBehavior;->fitToContents:Z

    if-eqz v0, :cond_bc

    .line 625
    iget v0, p0, Lcom/tds/common/widgets/behavior/BottomSheetBehavior;->collapsedOffset:I

    .line 626
    .restart local v0    # "top":I
    const/4 v1, 0x4

    .restart local v1    # "targetState":I
    goto :goto_dd

    .line 629
    .end local v0    # "top":I
    .end local v1    # "targetState":I
    :cond_bc
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v0

    .line 630
    .local v0, "currentTop":I
    iget v1, p0, Lcom/tds/common/widgets/behavior/BottomSheetBehavior;->halfExpandedOffset:I

    sub-int v1, v0, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget v2, p0, Lcom/tds/common/widgets/behavior/BottomSheetBehavior;->collapsedOffset:I

    sub-int v2, v0, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    if-ge v1, v2, :cond_d8

    .line 631
    iget v1, p0, Lcom/tds/common/widgets/behavior/BottomSheetBehavior;->halfExpandedOffset:I

    .line 632
    .local v1, "top":I
    const/4 v2, 0x6

    move v0, v1

    move v1, v2

    .restart local v2    # "targetState":I
    goto :goto_dd

    .line 634
    .end local v1    # "top":I
    .end local v2    # "targetState":I
    :cond_d8
    iget v1, p0, Lcom/tds/common/widgets/behavior/BottomSheetBehavior;->collapsedOffset:I

    .line 635
    .restart local v1    # "top":I
    const/4 v2, 0x4

    move v0, v1

    move v1, v2

    .line 639
    .local v0, "top":I
    .local v1, "targetState":I
    :goto_dd
    const/4 v2, 0x0

    invoke-virtual {p0, p2, v1, v0, v2}, Lcom/tds/common/widgets/behavior/BottomSheetBehavior;->startSettlingAnimation(Landroid/view/View;IIZ)V

    .line 640
    iput-boolean v2, p0, Lcom/tds/common/widgets/behavior/BottomSheetBehavior;->nestedScrolled:Z

    .line 641
    return-void

    .line 573
    .end local v0    # "top":I
    .end local v1    # "targetState":I
    :cond_e4
    :goto_e4
    return-void
.end method

.method public onTouchEvent(Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 8
    .param p1, "parent"    # Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;
    .param p3, "event"    # Landroid/view/MotionEvent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TV;",
            "Landroid/view/MotionEvent;",
            ")Z"
        }
    .end annotation

    .line 462
    .local p0, "this":Lcom/tds/common/widgets/behavior/BottomSheetBehavior;, "Lcom/tds/common/widgets/behavior/BottomSheetBehavior<TV;>;"
    .local p2, "child":Landroid/view/View;, "TV;"
    invoke-virtual {p2}, Landroid/view/View;->isShown()Z

    move-result v0

    if-nez v0, :cond_8

    .line 463
    const/4 v0, 0x0

    return v0

    .line 465
    :cond_8
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 466
    .local v0, "action":I
    iget v1, p0, Lcom/tds/common/widgets/behavior/BottomSheetBehavior;->state:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_14

    if-nez v0, :cond_14

    .line 467
    return v2

    .line 469
    :cond_14
    iget-object v1, p0, Lcom/tds/common/widgets/behavior/BottomSheetBehavior;->viewDragHelper:Ltds/androidx/customview/widget/ViewDragHelper;

    if-eqz v1, :cond_1b

    .line 470
    invoke-virtual {v1, p3}, Ltds/androidx/customview/widget/ViewDragHelper;->processTouchEvent(Landroid/view/MotionEvent;)V

    .line 473
    :cond_1b
    if-nez v0, :cond_20

    .line 474
    invoke-virtual {p0}, Lcom/tds/common/widgets/behavior/BottomSheetBehavior;->reset()V

    .line 476
    :cond_20
    iget-object v1, p0, Lcom/tds/common/widgets/behavior/BottomSheetBehavior;->velocityTracker:Landroid/view/VelocityTracker;

    if-nez v1, :cond_2a

    .line 477
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v1

    iput-object v1, p0, Lcom/tds/common/widgets/behavior/BottomSheetBehavior;->velocityTracker:Landroid/view/VelocityTracker;

    .line 479
    :cond_2a
    iget-object v1, p0, Lcom/tds/common/widgets/behavior/BottomSheetBehavior;->velocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v1, p3}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 482
    iget-object v1, p0, Lcom/tds/common/widgets/behavior/BottomSheetBehavior;->viewDragHelper:Ltds/androidx/customview/widget/ViewDragHelper;

    if-eqz v1, :cond_5e

    const/4 v1, 0x2

    if-ne v0, v1, :cond_5e

    iget-boolean v1, p0, Lcom/tds/common/widgets/behavior/BottomSheetBehavior;->ignoreEvents:Z

    if-nez v1, :cond_5e

    .line 483
    iget v1, p0, Lcom/tds/common/widgets/behavior/BottomSheetBehavior;->initialY:I

    int-to-float v1, v1

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    sub-float/2addr v1, v3

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget-object v3, p0, Lcom/tds/common/widgets/behavior/BottomSheetBehavior;->viewDragHelper:Ltds/androidx/customview/widget/ViewDragHelper;

    invoke-virtual {v3}, Ltds/androidx/customview/widget/ViewDragHelper;->getTouchSlop()I

    move-result v3

    int-to-float v3, v3

    cmpl-float v1, v1, v3

    if-lez v1, :cond_5e

    .line 484
    iget-object v1, p0, Lcom/tds/common/widgets/behavior/BottomSheetBehavior;->viewDragHelper:Ltds/androidx/customview/widget/ViewDragHelper;

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v3

    invoke-virtual {p3, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    invoke-virtual {v1, p2, v3}, Ltds/androidx/customview/widget/ViewDragHelper;->captureChildView(Landroid/view/View;I)V

    .line 487
    :cond_5e
    iget-boolean v1, p0, Lcom/tds/common/widgets/behavior/BottomSheetBehavior;->ignoreEvents:Z

    xor-int/2addr v1, v2

    return v1
.end method

.method public removeBottomSheetCallback(Lcom/tds/common/widgets/behavior/BottomSheetBehavior$BottomSheetCallback;)V
    .registers 3
    .param p1, "callback"    # Lcom/tds/common/widgets/behavior/BottomSheetBehavior$BottomSheetCallback;

    .line 954
    .local p0, "this":Lcom/tds/common/widgets/behavior/BottomSheetBehavior;, "Lcom/tds/common/widgets/behavior/BottomSheetBehavior<TV;>;"
    iget-object v0, p0, Lcom/tds/common/widgets/behavior/BottomSheetBehavior;->callbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 955
    return-void
.end method

.method protected reset()V
    .registers 2

    .line 1080
    .local p0, "this":Lcom/tds/common/widgets/behavior/BottomSheetBehavior;, "Lcom/tds/common/widgets/behavior/BottomSheetBehavior<TV;>;"
    const/4 v0, -0x1

    iput v0, p0, Lcom/tds/common/widgets/behavior/BottomSheetBehavior;->activePointerId:I

    .line 1081
    iget-object v0, p0, Lcom/tds/common/widgets/behavior/BottomSheetBehavior;->velocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_d

    .line 1082
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 1083
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tds/common/widgets/behavior/BottomSheetBehavior;->velocityTracker:Landroid/view/VelocityTracker;

    .line 1085
    :cond_d
    return-void
.end method

.method public setBottomSheetCallback(Lcom/tds/common/widgets/behavior/BottomSheetBehavior$BottomSheetCallback;)V
    .registers 4
    .param p1, "callback"    # Lcom/tds/common/widgets/behavior/BottomSheetBehavior$BottomSheetCallback;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 924
    .local p0, "this":Lcom/tds/common/widgets/behavior/BottomSheetBehavior;, "Lcom/tds/common/widgets/behavior/BottomSheetBehavior<TV;>;"
    const-string v0, "BottomSheetBehavior"

    const-string v1, "BottomSheetBehavior now supports multiple callbacks. `setBottomSheetCallback()` removes all existing callbacks, including ones set internally by library authors, which may result in unintended behavior. This may change in the future. Please use `addBottomSheetCallback()` and `removeBottomSheetCallback()` instead to set your own callbacks."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 931
    iget-object v0, p0, Lcom/tds/common/widgets/behavior/BottomSheetBehavior;->callbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 932
    if-eqz p1, :cond_13

    .line 933
    iget-object v0, p0, Lcom/tds/common/widgets/behavior/BottomSheetBehavior;->callbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 935
    :cond_13
    return-void
.end method

.method public setDraggable(Z)V
    .registers 2
    .param p1, "draggable"    # Z

    .line 885
    .local p0, "this":Lcom/tds/common/widgets/behavior/BottomSheetBehavior;, "Lcom/tds/common/widgets/behavior/BottomSheetBehavior<TV;>;"
    iput-boolean p1, p0, Lcom/tds/common/widgets/behavior/BottomSheetBehavior;->draggable:Z

    .line 886
    return-void
.end method

.method public setExpandedOffset(I)V
    .registers 4
    .param p1, "offset"    # I

    .line 813
    .local p0, "this":Lcom/tds/common/widgets/behavior/BottomSheetBehavior;, "Lcom/tds/common/widgets/behavior/BottomSheetBehavior<TV;>;"
    if-ltz p1, :cond_5

    .line 816
    iput p1, p0, Lcom/tds/common/widgets/behavior/BottomSheetBehavior;->expandedOffset:I

    .line 817
    return-void

    .line 814
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "offset must be greater than or equal to 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setFitToContents(Z)V
    .registers 4
    .param p1, "fitToContents"    # Z

    .line 690
    .local p0, "this":Lcom/tds/common/widgets/behavior/BottomSheetBehavior;, "Lcom/tds/common/widgets/behavior/BottomSheetBehavior<TV;>;"
    iget-boolean v0, p0, Lcom/tds/common/widgets/behavior/BottomSheetBehavior;->fitToContents:Z

    if-ne v0, p1, :cond_5

    .line 691
    return-void

    .line 693
    :cond_5
    iput-boolean p1, p0, Lcom/tds/common/widgets/behavior/BottomSheetBehavior;->fitToContents:Z

    .line 697
    iget-object v0, p0, Lcom/tds/common/widgets/behavior/BottomSheetBehavior;->viewRef:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_e

    .line 698
    invoke-virtual {p0}, Lcom/tds/common/widgets/behavior/BottomSheetBehavior;->calculateCollapsedOffset()V

    .line 701
    :cond_e
    iget-boolean v0, p0, Lcom/tds/common/widgets/behavior/BottomSheetBehavior;->fitToContents:Z

    if-eqz v0, :cond_19

    iget v0, p0, Lcom/tds/common/widgets/behavior/BottomSheetBehavior;->state:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_19

    const/4 v0, 0x3

    goto :goto_1b

    :cond_19
    iget v0, p0, Lcom/tds/common/widgets/behavior/BottomSheetBehavior;->state:I

    :goto_1b
    invoke-virtual {p0, v0}, Lcom/tds/common/widgets/behavior/BottomSheetBehavior;->setStateInternal(I)V

    .line 703
    return-void
.end method

.method public setGestureInsetBottomIgnored(Z)V
    .registers 2
    .param p1, "gestureInsetBottomIgnored"    # Z

    .line 991
    .local p0, "this":Lcom/tds/common/widgets/behavior/BottomSheetBehavior;, "Lcom/tds/common/widgets/behavior/BottomSheetBehavior<TV;>;"
    iput-boolean p1, p0, Lcom/tds/common/widgets/behavior/BottomSheetBehavior;->gestureInsetBottomIgnored:Z

    .line 992
    return-void
.end method

.method public setHalfExpandedRatio(F)V
    .registers 4
    .param p1, "ratio"    # F

    .line 782
    .local p0, "this":Lcom/tds/common/widgets/behavior/BottomSheetBehavior;, "Lcom/tds/common/widgets/behavior/BottomSheetBehavior<TV;>;"
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-lez v0, :cond_15

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-gez v0, :cond_15

    .line 785
    iput p1, p0, Lcom/tds/common/widgets/behavior/BottomSheetBehavior;->halfExpandedRatio:F

    .line 788
    iget-object v0, p0, Lcom/tds/common/widgets/behavior/BottomSheetBehavior;->viewRef:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_14

    .line 789
    invoke-virtual {p0}, Lcom/tds/common/widgets/behavior/BottomSheetBehavior;->calculateHalfExpandedOffset()V

    .line 791
    :cond_14
    return-void

    .line 783
    :cond_15
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ratio must be a float value between 0 and 1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setHideable(Z)V
    .registers 4
    .param p1, "hideable"    # Z

    .line 836
    .local p0, "this":Lcom/tds/common/widgets/behavior/BottomSheetBehavior;, "Lcom/tds/common/widgets/behavior/BottomSheetBehavior<TV;>;"
    iget-boolean v0, p0, Lcom/tds/common/widgets/behavior/BottomSheetBehavior;->hideable:Z

    if-eq v0, p1, :cond_11

    .line 837
    iput-boolean p1, p0, Lcom/tds/common/widgets/behavior/BottomSheetBehavior;->hideable:Z

    .line 838
    if-nez p1, :cond_11

    iget v0, p0, Lcom/tds/common/widgets/behavior/BottomSheetBehavior;->state:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_11

    .line 840
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/tds/common/widgets/behavior/BottomSheetBehavior;->setState(I)V

    .line 843
    :cond_11
    return-void
.end method

.method public setPeekHeight(I)V
    .registers 3
    .param p1, "peekHeight"    # I

    .line 713
    .local p0, "this":Lcom/tds/common/widgets/behavior/BottomSheetBehavior;, "Lcom/tds/common/widgets/behavior/BottomSheetBehavior<TV;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/tds/common/widgets/behavior/BottomSheetBehavior;->setPeekHeight(IZ)V

    .line 714
    return-void
.end method

.method public final setPeekHeight(IZ)V
    .registers 5
    .param p1, "peekHeight"    # I
    .param p2, "animate"    # Z

    .line 726
    .local p0, "this":Lcom/tds/common/widgets/behavior/BottomSheetBehavior;, "Lcom/tds/common/widgets/behavior/BottomSheetBehavior<TV;>;"
    const/4 v0, 0x0

    .line 727
    .local v0, "layout":Z
    const/4 v1, -0x1

    if-ne p1, v1, :cond_d

    .line 728
    iget-boolean v1, p0, Lcom/tds/common/widgets/behavior/BottomSheetBehavior;->peekHeightAuto:Z

    if-nez v1, :cond_1f

    .line 729
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/tds/common/widgets/behavior/BottomSheetBehavior;->peekHeightAuto:Z

    .line 730
    const/4 v0, 0x1

    goto :goto_1f

    .line 732
    :cond_d
    iget-boolean v1, p0, Lcom/tds/common/widgets/behavior/BottomSheetBehavior;->peekHeightAuto:Z

    if-nez v1, :cond_15

    iget v1, p0, Lcom/tds/common/widgets/behavior/BottomSheetBehavior;->peekHeight:I

    if-eq v1, p1, :cond_1f

    .line 733
    :cond_15
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/tds/common/widgets/behavior/BottomSheetBehavior;->peekHeightAuto:Z

    .line 734
    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/tds/common/widgets/behavior/BottomSheetBehavior;->peekHeight:I

    .line 735
    const/4 v0, 0x1

    .line 739
    :cond_1f
    :goto_1f
    if-eqz v0, :cond_24

    .line 740
    invoke-virtual {p0, p2}, Lcom/tds/common/widgets/behavior/BottomSheetBehavior;->updatePeekHeight(Z)V

    .line 742
    :cond_24
    return-void
.end method

.method public setSaveFlags(I)V
    .registers 2
    .param p1, "flags"    # I

    .line 901
    .local p0, "this":Lcom/tds/common/widgets/behavior/BottomSheetBehavior;, "Lcom/tds/common/widgets/behavior/BottomSheetBehavior<TV;>;"
    iput p1, p0, Lcom/tds/common/widgets/behavior/BottomSheetBehavior;->saveFlags:I

    .line 902
    return-void
.end method

.method public setSkipCollapsed(Z)V
    .registers 2
    .param p1, "skipCollapsed"    # Z

    .line 863
    .local p0, "this":Lcom/tds/common/widgets/behavior/BottomSheetBehavior;, "Lcom/tds/common/widgets/behavior/BottomSheetBehavior<TV;>;"
    iput-boolean p1, p0, Lcom/tds/common/widgets/behavior/BottomSheetBehavior;->skipCollapsed:Z

    .line 864
    return-void
.end method

.method public setState(I)V
    .registers 3
    .param p1, "state"    # I

    .line 965
    .local p0, "this":Lcom/tds/common/widgets/behavior/BottomSheetBehavior;, "Lcom/tds/common/widgets/behavior/BottomSheetBehavior<TV;>;"
    iget v0, p0, Lcom/tds/common/widgets/behavior/BottomSheetBehavior;->state:I

    if-ne p1, v0, :cond_5

    .line 966
    return-void

    .line 968
    :cond_5
    iget-object v0, p0, Lcom/tds/common/widgets/behavior/BottomSheetBehavior;->viewRef:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_1c

    .line 970
    const/4 v0, 0x4

    if-eq p1, v0, :cond_19

    const/4 v0, 0x3

    if-eq p1, v0, :cond_19

    const/4 v0, 0x6

    if-eq p1, v0, :cond_19

    iget-boolean v0, p0, Lcom/tds/common/widgets/behavior/BottomSheetBehavior;->hideable:Z

    if-eqz v0, :cond_1b

    const/4 v0, 0x5

    if-ne p1, v0, :cond_1b

    .line 974
    :cond_19
    iput p1, p0, Lcom/tds/common/widgets/behavior/BottomSheetBehavior;->state:I

    .line 976
    :cond_1b
    return-void

    .line 978
    :cond_1c
    invoke-direct {p0, p1}, Lcom/tds/common/widgets/behavior/BottomSheetBehavior;->settleToStatePendingLayout(I)V

    .line 979
    return-void
.end method

.method setStateInternal(I)V
    .registers 5
    .param p1, "state"    # I

    .line 1035
    .local p0, "this":Lcom/tds/common/widgets/behavior/BottomSheetBehavior;, "Lcom/tds/common/widgets/behavior/BottomSheetBehavior<TV;>;"
    iget v0, p0, Lcom/tds/common/widgets/behavior/BottomSheetBehavior;->state:I

    if-ne v0, p1, :cond_5

    .line 1036
    return-void

    .line 1038
    :cond_5
    iput p1, p0, Lcom/tds/common/widgets/behavior/BottomSheetBehavior;->state:I

    .line 1040
    iget-object v0, p0, Lcom/tds/common/widgets/behavior/BottomSheetBehavior;->viewRef:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_c

    .line 1041
    return-void

    .line 1044
    :cond_c
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 1045
    .local v0, "bottomSheet":Landroid/view/View;
    if-nez v0, :cond_15

    .line 1046
    return-void

    .line 1049
    :cond_15
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_16
    iget-object v2, p0, Lcom/tds/common/widgets/behavior/BottomSheetBehavior;->callbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2c

    .line 1050
    iget-object v2, p0, Lcom/tds/common/widgets/behavior/BottomSheetBehavior;->callbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tds/common/widgets/behavior/BottomSheetBehavior$BottomSheetCallback;

    invoke-virtual {v2, v0, p1}, Lcom/tds/common/widgets/behavior/BottomSheetBehavior$BottomSheetCallback;->onStateChanged(Landroid/view/View;I)V

    .line 1049
    add-int/lit8 v1, v1, 0x1

    goto :goto_16

    .line 1052
    .end local v1    # "i":I
    :cond_2c
    return-void
.end method

.method protected setSystemGestureInsets(Landroid/view/View;)V
    .registers 4
    .param p1, "child"    # Landroid/view/View;

    .line 1143
    .local p0, "this":Lcom/tds/common/widgets/behavior/BottomSheetBehavior;, "Lcom/tds/common/widgets/behavior/BottomSheetBehavior<TV;>;"
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_18

    invoke-virtual {p0}, Lcom/tds/common/widgets/behavior/BottomSheetBehavior;->isGestureInsetBottomIgnored()Z

    move-result v0

    if-nez v0, :cond_18

    iget-boolean v0, p0, Lcom/tds/common/widgets/behavior/BottomSheetBehavior;->peekHeightAuto:Z

    if-nez v0, :cond_18

    .line 1144
    new-instance v0, Lcom/tds/common/widgets/behavior/BottomSheetBehavior$2;

    invoke-direct {v0, p0}, Lcom/tds/common/widgets/behavior/BottomSheetBehavior$2;-><init>(Lcom/tds/common/widgets/behavior/BottomSheetBehavior;)V

    invoke-static {p1, v0}, Ltds/com/google/android/material/internal/ViewUtils;->doOnApplyWindowInsets(Landroid/view/View;Ltds/com/google/android/material/internal/ViewUtils$OnApplyWindowInsetsListener;)V

    .line 1156
    :cond_18
    return-void
.end method

.method settleToState(Landroid/view/View;I)V
    .registers 6
    .param p1, "child"    # Landroid/view/View;
    .param p2, "state"    # I

    .line 1168
    .local p0, "this":Lcom/tds/common/widgets/behavior/BottomSheetBehavior;, "Lcom/tds/common/widgets/behavior/BottomSheetBehavior<TV;>;"
    const/4 v0, 0x4

    if-ne p2, v0, :cond_6

    .line 1169
    iget v0, p0, Lcom/tds/common/widgets/behavior/BottomSheetBehavior;->collapsedOffset:I

    .local v0, "top":I
    goto :goto_28

    .line 1170
    .end local v0    # "top":I
    :cond_6
    const/4 v0, 0x6

    if-ne p2, v0, :cond_17

    .line 1171
    iget v0, p0, Lcom/tds/common/widgets/behavior/BottomSheetBehavior;->halfExpandedOffset:I

    .line 1172
    .restart local v0    # "top":I
    iget-boolean v1, p0, Lcom/tds/common/widgets/behavior/BottomSheetBehavior;->fitToContents:Z

    if-eqz v1, :cond_28

    iget v1, p0, Lcom/tds/common/widgets/behavior/BottomSheetBehavior;->fitToContentsOffset:I

    if-gt v0, v1, :cond_28

    .line 1174
    const/4 p2, 0x3

    .line 1175
    iget v0, p0, Lcom/tds/common/widgets/behavior/BottomSheetBehavior;->fitToContentsOffset:I

    goto :goto_28

    .line 1177
    .end local v0    # "top":I
    :cond_17
    const/4 v0, 0x3

    if-ne p2, v0, :cond_1f

    .line 1178
    invoke-virtual {p0}, Lcom/tds/common/widgets/behavior/BottomSheetBehavior;->getExpandedOffset()I

    move-result v0

    .restart local v0    # "top":I
    goto :goto_28

    .line 1179
    .end local v0    # "top":I
    :cond_1f
    iget-boolean v0, p0, Lcom/tds/common/widgets/behavior/BottomSheetBehavior;->hideable:Z

    if-eqz v0, :cond_2d

    const/4 v0, 0x5

    if-ne p2, v0, :cond_2d

    .line 1180
    iget v0, p0, Lcom/tds/common/widgets/behavior/BottomSheetBehavior;->parentHeight:I

    .line 1184
    .restart local v0    # "top":I
    :cond_28
    :goto_28
    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/tds/common/widgets/behavior/BottomSheetBehavior;->startSettlingAnimation(Landroid/view/View;IIZ)V

    .line 1185
    return-void

    .line 1182
    .end local v0    # "top":I
    :cond_2d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal state argument: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method shouldHide(Landroid/view/View;F)Z
    .registers 9
    .param p1, "child"    # Landroid/view/View;
    .param p2, "yvel"    # F

    .line 1108
    .local p0, "this":Lcom/tds/common/widgets/behavior/BottomSheetBehavior;, "Lcom/tds/common/widgets/behavior/BottomSheetBehavior<TV;>;"
    iget-boolean v0, p0, Lcom/tds/common/widgets/behavior/BottomSheetBehavior;->skipCollapsed:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_6

    .line 1109
    return v1

    .line 1111
    :cond_6
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    iget v2, p0, Lcom/tds/common/widgets/behavior/BottomSheetBehavior;->collapsedOffset:I

    const/4 v3, 0x0

    if-ge v0, v2, :cond_10

    .line 1113
    return v3

    .line 1115
    :cond_10
    invoke-virtual {p0}, Lcom/tds/common/widgets/behavior/BottomSheetBehavior;->calculatePeekHeight()I

    move-result v0

    .line 1116
    .local v0, "peek":I
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v2

    int-to-float v2, v2

    const v4, 0x3dcccccd    # 0.1f

    mul-float/2addr v4, p2

    add-float/2addr v2, v4

    .line 1117
    .local v2, "newTop":F
    iget v4, p0, Lcom/tds/common/widgets/behavior/BottomSheetBehavior;->collapsedOffset:I

    int-to-float v4, v4

    sub-float v4, v2, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    int-to-float v5, v0

    div-float/2addr v4, v5

    const/high16 v5, 0x3f000000    # 0.5f

    cmpl-float v4, v4, v5

    if-lez v4, :cond_30

    goto :goto_31

    :cond_30
    move v1, v3

    :goto_31
    return v1
.end method

.method startSettlingAnimation(Landroid/view/View;IIZ)V
    .registers 8
    .param p1, "child"    # Landroid/view/View;
    .param p2, "state"    # I
    .param p3, "top"    # I
    .param p4, "settleFromViewDragHelper"    # Z

    .line 1188
    .local p0, "this":Lcom/tds/common/widgets/behavior/BottomSheetBehavior;, "Lcom/tds/common/widgets/behavior/BottomSheetBehavior<TV;>;"
    iget-object v0, p0, Lcom/tds/common/widgets/behavior/BottomSheetBehavior;->viewDragHelper:Ltds/androidx/customview/widget/ViewDragHelper;

    const/4 v1, 0x1

    if-eqz v0, :cond_1f

    if-eqz p4, :cond_12

    .line 1191
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v2

    invoke-virtual {v0, v2, p3}, Ltds/androidx/customview/widget/ViewDragHelper;->settleCapturedViewAt(II)Z

    move-result v0

    if-eqz v0, :cond_1f

    goto :goto_1d

    :cond_12
    nop

    .line 1192
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v2

    invoke-virtual {v0, p1, v2, p3}, Ltds/androidx/customview/widget/ViewDragHelper;->smoothSlideViewTo(Landroid/view/View;II)Z

    move-result v0

    if-eqz v0, :cond_1f

    :goto_1d
    move v0, v1

    goto :goto_20

    :cond_1f
    const/4 v0, 0x0

    .line 1193
    .local v0, "startedSettling":Z
    :goto_20
    if-eqz v0, :cond_4a

    .line 1194
    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Lcom/tds/common/widgets/behavior/BottomSheetBehavior;->setStateInternal(I)V

    .line 1196
    iget-object v2, p0, Lcom/tds/common/widgets/behavior/BottomSheetBehavior;->settleRunnable:Lcom/tds/common/widgets/behavior/BottomSheetBehavior$SettleRunnable;

    if-nez v2, :cond_31

    .line 1198
    new-instance v2, Lcom/tds/common/widgets/behavior/BottomSheetBehavior$SettleRunnable;

    invoke-direct {v2, p0, p1, p2}, Lcom/tds/common/widgets/behavior/BottomSheetBehavior$SettleRunnable;-><init>(Lcom/tds/common/widgets/behavior/BottomSheetBehavior;Landroid/view/View;I)V

    iput-object v2, p0, Lcom/tds/common/widgets/behavior/BottomSheetBehavior;->settleRunnable:Lcom/tds/common/widgets/behavior/BottomSheetBehavior$SettleRunnable;

    .line 1201
    :cond_31
    iget-object v2, p0, Lcom/tds/common/widgets/behavior/BottomSheetBehavior;->settleRunnable:Lcom/tds/common/widgets/behavior/BottomSheetBehavior$SettleRunnable;

    iget-boolean v2, v2, Lcom/tds/common/widgets/behavior/BottomSheetBehavior$SettleRunnable;->isPosted:Z

    if-nez v2, :cond_45

    .line 1202
    iget-object v2, p0, Lcom/tds/common/widgets/behavior/BottomSheetBehavior;->settleRunnable:Lcom/tds/common/widgets/behavior/BottomSheetBehavior$SettleRunnable;

    iput p2, v2, Lcom/tds/common/widgets/behavior/BottomSheetBehavior$SettleRunnable;->targetState:I

    .line 1203
    iget-object v2, p0, Lcom/tds/common/widgets/behavior/BottomSheetBehavior;->settleRunnable:Lcom/tds/common/widgets/behavior/BottomSheetBehavior$SettleRunnable;

    invoke-static {p1, v2}, Ltds/androidx/core/view/ViewCompat;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 1204
    iget-object v2, p0, Lcom/tds/common/widgets/behavior/BottomSheetBehavior;->settleRunnable:Lcom/tds/common/widgets/behavior/BottomSheetBehavior$SettleRunnable;

    iput-boolean v1, v2, Lcom/tds/common/widgets/behavior/BottomSheetBehavior$SettleRunnable;->isPosted:Z

    goto :goto_4d

    .line 1207
    :cond_45
    iget-object v1, p0, Lcom/tds/common/widgets/behavior/BottomSheetBehavior;->settleRunnable:Lcom/tds/common/widgets/behavior/BottomSheetBehavior$SettleRunnable;

    iput p2, v1, Lcom/tds/common/widgets/behavior/BottomSheetBehavior$SettleRunnable;->targetState:I

    goto :goto_4d

    .line 1210
    :cond_4a
    invoke-virtual {p0, p2}, Lcom/tds/common/widgets/behavior/BottomSheetBehavior;->setStateInternal(I)V

    .line 1212
    :goto_4d
    return-void
.end method

.method protected updatePeekHeight(Z)V
    .registers 4
    .param p1, "animate"    # Z

    .line 745
    .local p0, "this":Lcom/tds/common/widgets/behavior/BottomSheetBehavior;, "Lcom/tds/common/widgets/behavior/BottomSheetBehavior<TV;>;"
    iget-object v0, p0, Lcom/tds/common/widgets/behavior/BottomSheetBehavior;->viewRef:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_21

    .line 746
    invoke-virtual {p0}, Lcom/tds/common/widgets/behavior/BottomSheetBehavior;->calculateCollapsedOffset()V

    .line 747
    iget v0, p0, Lcom/tds/common/widgets/behavior/BottomSheetBehavior;->state:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_21

    .line 748
    iget-object v0, p0, Lcom/tds/common/widgets/behavior/BottomSheetBehavior;->viewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 749
    .local v0, "view":Landroid/view/View;, "TV;"
    if-eqz v0, :cond_21

    .line 750
    if-eqz p1, :cond_1e

    .line 751
    iget v1, p0, Lcom/tds/common/widgets/behavior/BottomSheetBehavior;->state:I

    invoke-direct {p0, v1}, Lcom/tds/common/widgets/behavior/BottomSheetBehavior;->settleToStatePendingLayout(I)V

    goto :goto_21

    .line 753
    :cond_1e
    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 758
    .end local v0    # "view":Landroid/view/View;, "TV;"
    :cond_21
    :goto_21
    return-void
.end method
