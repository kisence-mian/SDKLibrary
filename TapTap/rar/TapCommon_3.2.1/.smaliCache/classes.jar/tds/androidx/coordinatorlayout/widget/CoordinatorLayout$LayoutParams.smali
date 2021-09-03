.class public Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;
.super Landroid/view/ViewGroup$MarginLayoutParams;
.source "CoordinatorLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutParams"
.end annotation


# instance fields
.field public anchorGravity:I

.field public dodgeInsetEdges:I

.field public gravity:I

.field public insetEdge:I

.field public keyline:I

.field mAnchorDirectChild:Landroid/view/View;

.field mAnchorId:I

.field mAnchorView:Landroid/view/View;

.field mBehavior:Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;

.field mBehaviorResolved:Z

.field mBehaviorTag:Ljava/lang/Object;

.field private mDidAcceptNestedScrollNonTouch:Z

.field private mDidAcceptNestedScrollTouch:Z

.field private mDidBlockInteraction:Z

.field private mDidChangeAfterNestedScroll:Z

.field mInsetOffsetX:I

.field mInsetOffsetY:I

.field final mLastChildRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(II)V
    .registers 5
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 2871
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 2811
    const/4 v0, 0x0

    iput-boolean v0, p0, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->mBehaviorResolved:Z

    .line 2820
    iput v0, p0, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->gravity:I

    .line 2826
    iput v0, p0, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->anchorGravity:I

    .line 2833
    const/4 v1, -0x1

    iput v1, p0, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->keyline:I

    .line 2839
    iput v1, p0, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->mAnchorId:I

    .line 2846
    iput v0, p0, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->insetEdge:I

    .line 2853
    iput v0, p0, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->dodgeInsetEdges:I

    .line 2866
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->mLastChildRect:Landroid/graphics/Rect;

    .line 2872
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 2875
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2811
    const/4 v0, 0x0

    iput-boolean v0, p0, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->mBehaviorResolved:Z

    .line 2820
    iput v0, p0, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->gravity:I

    .line 2826
    iput v0, p0, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->anchorGravity:I

    .line 2833
    const/4 v1, -0x1

    iput v1, p0, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->keyline:I

    .line 2839
    iput v1, p0, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->mAnchorId:I

    .line 2846
    iput v0, p0, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->insetEdge:I

    .line 2853
    iput v0, p0, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->dodgeInsetEdges:I

    .line 2866
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->mLastChildRect:Landroid/graphics/Rect;

    .line 2880
    iput v0, p0, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->gravity:I

    .line 2883
    iput v1, p0, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->mAnchorId:I

    .line 2886
    iput v0, p0, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->anchorGravity:I

    .line 2889
    iput v1, p0, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->keyline:I

    .line 2892
    iput v0, p0, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->insetEdge:I

    .line 2893
    iput v0, p0, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->dodgeInsetEdges:I

    .line 2895
    iput-boolean v0, p0, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->mBehaviorResolved:Z

    .line 2903
    iget-object v0, p0, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->mBehavior:Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;

    if-eqz v0, :cond_2f

    .line 2905
    invoke-virtual {v0, p0}, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;->onAttachedToLayoutParams(Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;)V

    .line 2907
    :cond_2f
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .registers 4
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .line 2918
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2811
    const/4 v0, 0x0

    iput-boolean v0, p0, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->mBehaviorResolved:Z

    .line 2820
    iput v0, p0, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->gravity:I

    .line 2826
    iput v0, p0, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->anchorGravity:I

    .line 2833
    const/4 v1, -0x1

    iput v1, p0, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->keyline:I

    .line 2839
    iput v1, p0, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->mAnchorId:I

    .line 2846
    iput v0, p0, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->insetEdge:I

    .line 2853
    iput v0, p0, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->dodgeInsetEdges:I

    .line 2866
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->mLastChildRect:Landroid/graphics/Rect;

    .line 2919
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$MarginLayoutParams;)V
    .registers 4
    .param p1, "p"    # Landroid/view/ViewGroup$MarginLayoutParams;

    .line 2914
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 2811
    const/4 v0, 0x0

    iput-boolean v0, p0, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->mBehaviorResolved:Z

    .line 2820
    iput v0, p0, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->gravity:I

    .line 2826
    iput v0, p0, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->anchorGravity:I

    .line 2833
    const/4 v1, -0x1

    iput v1, p0, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->keyline:I

    .line 2839
    iput v1, p0, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->mAnchorId:I

    .line 2846
    iput v0, p0, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->insetEdge:I

    .line 2853
    iput v0, p0, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->dodgeInsetEdges:I

    .line 2866
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->mLastChildRect:Landroid/graphics/Rect;

    .line 2915
    return-void
.end method

.method public constructor <init>(Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;)V
    .registers 4
    .param p1, "p"    # Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    .line 2910
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 2811
    const/4 v0, 0x0

    iput-boolean v0, p0, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->mBehaviorResolved:Z

    .line 2820
    iput v0, p0, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->gravity:I

    .line 2826
    iput v0, p0, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->anchorGravity:I

    .line 2833
    const/4 v1, -0x1

    iput v1, p0, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->keyline:I

    .line 2839
    iput v1, p0, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->mAnchorId:I

    .line 2846
    iput v0, p0, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->insetEdge:I

    .line 2853
    iput v0, p0, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->dodgeInsetEdges:I

    .line 2866
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->mLastChildRect:Landroid/graphics/Rect;

    .line 2911
    return-void
.end method

.method private resolveAnchorView(Landroid/view/View;Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;)V
    .registers 7
    .param p1, "forChild"    # Landroid/view/View;
    .param p2, "parent"    # Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;

    .line 3140
    iget v0, p0, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->mAnchorId:I

    invoke-virtual {p2, v0}, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->mAnchorView:Landroid/view/View;

    .line 3141
    const/4 v1, 0x0

    if-eqz v0, :cond_4f

    .line 3142
    if-ne v0, p2, :cond_20

    .line 3143
    invoke-virtual {p2}, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 3144
    iput-object v1, p0, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->mAnchorDirectChild:Landroid/view/View;

    iput-object v1, p0, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->mAnchorView:Landroid/view/View;

    .line 3145
    return-void

    .line 3147
    :cond_18
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "View can not be anchored to the the parent CoordinatorLayout"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3151
    :cond_20
    iget-object v2, p0, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->mAnchorView:Landroid/view/View;

    .line 3152
    .local v2, "directChild":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 3153
    .local v0, "p":Landroid/view/ViewParent;
    :goto_26
    if-eq v0, p2, :cond_4b

    if-eqz v0, :cond_4b

    .line 3155
    if-ne v0, p1, :cond_3f

    .line 3156
    invoke-virtual {p2}, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;->isInEditMode()Z

    move-result v3

    if-eqz v3, :cond_37

    .line 3157
    iput-object v1, p0, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->mAnchorDirectChild:Landroid/view/View;

    iput-object v1, p0, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->mAnchorView:Landroid/view/View;

    .line 3158
    return-void

    .line 3160
    :cond_37
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v3, "Anchor must not be a descendant of the anchored view"

    invoke-direct {v1, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3163
    :cond_3f
    instance-of v3, v0, Landroid/view/View;

    if-eqz v3, :cond_46

    .line 3164
    move-object v2, v0

    check-cast v2, Landroid/view/View;

    .line 3154
    :cond_46
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_26

    .line 3167
    .end local v0    # "p":Landroid/view/ViewParent;
    :cond_4b
    iput-object v2, p0, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->mAnchorDirectChild:Landroid/view/View;

    .line 3168
    .end local v2    # "directChild":Landroid/view/View;
    nop

    .line 3177
    return-void

    .line 3169
    :cond_4f
    invoke-virtual {p2}, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_5a

    .line 3170
    iput-object v1, p0, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->mAnchorDirectChild:Landroid/view/View;

    iput-object v1, p0, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->mAnchorView:Landroid/view/View;

    .line 3171
    return-void

    .line 3173
    :cond_5a
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not find CoordinatorLayout descendant view with id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 3174
    invoke-virtual {p2}, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v3, p0, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->mAnchorId:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to anchor view "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private shouldDodge(Landroid/view/View;I)Z
    .registers 6
    .param p1, "other"    # Landroid/view/View;
    .param p2, "layoutDirection"    # I

    .line 3209
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    .line 3210
    .local v0, "lp":Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;
    iget v1, v0, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->insetEdge:I

    invoke-static {v1, p2}, Ltds/androidx/core/view/GravityCompat;->getAbsoluteGravity(II)I

    move-result v1

    .line 3211
    .local v1, "absInset":I
    if-eqz v1, :cond_19

    iget v2, p0, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->dodgeInsetEdges:I

    .line 3212
    invoke-static {v2, p2}, Ltds/androidx/core/view/GravityCompat;->getAbsoluteGravity(II)I

    move-result v2

    and-int/2addr v2, v1

    if-ne v2, v1, :cond_19

    const/4 v2, 0x1

    goto :goto_1a

    :cond_19
    const/4 v2, 0x0

    .line 3211
    :goto_1a
    return v2
.end method

.method private verifyAnchorView(Landroid/view/View;Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;)Z
    .registers 7
    .param p1, "forChild"    # Landroid/view/View;
    .param p2, "parent"    # Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;

    .line 3185
    iget-object v0, p0, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->mAnchorView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    iget v1, p0, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->mAnchorId:I

    const/4 v2, 0x0

    if-eq v0, v1, :cond_c

    .line 3186
    return v2

    .line 3189
    :cond_c
    iget-object v0, p0, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->mAnchorView:Landroid/view/View;

    .line 3190
    .local v0, "directChild":Landroid/view/View;
    iget-object v1, p0, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->mAnchorView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 3191
    .local v1, "p":Landroid/view/ViewParent;
    :goto_14
    if-eq v1, p2, :cond_2d

    .line 3193
    if-eqz v1, :cond_27

    if-ne v1, p1, :cond_1b

    goto :goto_27

    .line 3197
    :cond_1b
    instance-of v3, v1, Landroid/view/View;

    if-eqz v3, :cond_22

    .line 3198
    move-object v0, v1

    check-cast v0, Landroid/view/View;

    .line 3192
    :cond_22
    invoke-interface {v1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    goto :goto_14

    .line 3194
    :cond_27
    :goto_27
    const/4 v3, 0x0

    iput-object v3, p0, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->mAnchorDirectChild:Landroid/view/View;

    iput-object v3, p0, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->mAnchorView:Landroid/view/View;

    .line 3195
    return v2

    .line 3201
    .end local v1    # "p":Landroid/view/ViewParent;
    :cond_2d
    iput-object v0, p0, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->mAnchorDirectChild:Landroid/view/View;

    .line 3202
    const/4 v1, 0x1

    return v1
.end method


# virtual methods
.method checkAnchorChanged()Z
    .registers 3

    .line 3006
    iget-object v0, p0, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->mAnchorView:Landroid/view/View;

    if-nez v0, :cond_b

    iget v0, p0, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->mAnchorId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return v0
.end method

.method dependsOn(Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)Z
    .registers 5
    .param p1, "parent"    # Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;
    .param p2, "child"    # Landroid/view/View;
    .param p3, "dependency"    # Landroid/view/View;

    .line 3102
    iget-object v0, p0, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->mAnchorDirectChild:Landroid/view/View;

    if-eq p3, v0, :cond_1b

    .line 3103
    invoke-static {p1}, Ltds/androidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v0

    invoke-direct {p0, p3, v0}, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->shouldDodge(Landroid/view/View;I)Z

    move-result v0

    if-nez v0, :cond_1b

    iget-object v0, p0, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->mBehavior:Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;

    if-eqz v0, :cond_19

    .line 3104
    invoke-virtual {v0, p1, p2, p3}, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;->layoutDependsOn(Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_19

    goto :goto_1b

    :cond_19
    const/4 v0, 0x0

    goto :goto_1c

    :cond_1b
    :goto_1b
    const/4 v0, 0x1

    .line 3102
    :goto_1c
    return v0
.end method

.method didBlockInteraction()Z
    .registers 2

    .line 3017
    iget-object v0, p0, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->mBehavior:Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;

    if-nez v0, :cond_7

    .line 3018
    const/4 v0, 0x0

    iput-boolean v0, p0, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->mDidBlockInteraction:Z

    .line 3020
    :cond_7
    iget-boolean v0, p0, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->mDidBlockInteraction:Z

    return v0
.end method

.method findAnchorView(Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;)Landroid/view/View;
    .registers 5
    .param p1, "parent"    # Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;
    .param p2, "forChild"    # Landroid/view/View;

    .line 3124
    iget v0, p0, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->mAnchorId:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_b

    .line 3125
    const/4 v0, 0x0

    iput-object v0, p0, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->mAnchorDirectChild:Landroid/view/View;

    iput-object v0, p0, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->mAnchorView:Landroid/view/View;

    .line 3126
    return-object v0

    .line 3129
    :cond_b
    iget-object v0, p0, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->mAnchorView:Landroid/view/View;

    if-eqz v0, :cond_15

    invoke-direct {p0, p2, p1}, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->verifyAnchorView(Landroid/view/View;Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;)Z

    move-result v0

    if-nez v0, :cond_18

    .line 3130
    :cond_15
    invoke-direct {p0, p2, p1}, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->resolveAnchorView(Landroid/view/View;Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;)V

    .line 3132
    :cond_18
    iget-object v0, p0, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->mAnchorView:Landroid/view/View;

    return-object v0
.end method

.method public getAnchorId()I
    .registers 2

    .line 2928
    iget v0, p0, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->mAnchorId:I

    return v0
.end method

.method public getBehavior()Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;
    .registers 2

    .line 2954
    iget-object v0, p0, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->mBehavior:Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;

    return-object v0
.end method

.method getChangedAfterNestedScroll()Z
    .registers 2

    .line 3081
    iget-boolean v0, p0, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->mDidChangeAfterNestedScroll:Z

    return v0
.end method

.method getLastChildRect()Landroid/graphics/Rect;
    .registers 2

    .line 2998
    iget-object v0, p0, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->mLastChildRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method invalidateAnchor()V
    .registers 2

    .line 3112
    const/4 v0, 0x0

    iput-object v0, p0, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->mAnchorDirectChild:Landroid/view/View;

    iput-object v0, p0, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->mAnchorView:Landroid/view/View;

    .line 3113
    return-void
.end method

.method isBlockingInteractionBelow(Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;)Z
    .registers 5
    .param p1, "parent"    # Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;
    .param p2, "child"    # Landroid/view/View;

    .line 3036
    iget-boolean v0, p0, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->mDidBlockInteraction:Z

    if-eqz v0, :cond_6

    .line 3037
    const/4 v0, 0x1

    return v0

    .line 3040
    :cond_6
    iget-object v1, p0, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->mBehavior:Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;

    if-eqz v1, :cond_f

    .line 3041
    invoke-virtual {v1, p1, p2}, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;->blocksInteractionBelow(Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;)Z

    move-result v1

    goto :goto_10

    :cond_f
    const/4 v1, 0x0

    :goto_10
    or-int/2addr v0, v1

    iput-boolean v0, p0, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->mDidBlockInteraction:Z

    .line 3040
    return v0
.end method

.method isNestedScrollAccepted(I)Z
    .registers 3
    .param p1, "type"    # I

    .line 3071
    packed-switch p1, :pswitch_data_c

    .line 3077
    const/4 v0, 0x0

    return v0

    .line 3075
    :pswitch_5
    iget-boolean v0, p0, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->mDidAcceptNestedScrollNonTouch:Z

    return v0

    .line 3073
    :pswitch_8
    iget-boolean v0, p0, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->mDidAcceptNestedScrollTouch:Z

    return v0

    nop

    :pswitch_data_c
    .packed-switch 0x0
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method

.method resetChangedAfterNestedScroll()V
    .registers 2

    .line 3089
    const/4 v0, 0x0

    iput-boolean v0, p0, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->mDidChangeAfterNestedScroll:Z

    .line 3090
    return-void
.end method

.method resetNestedScroll(I)V
    .registers 3
    .param p1, "type"    # I

    .line 3056
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->setNestedScrollAccepted(IZ)V

    .line 3057
    return-void
.end method

.method resetTouchBehaviorTracking()V
    .registers 2

    .line 3052
    const/4 v0, 0x0

    iput-boolean v0, p0, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->mDidBlockInteraction:Z

    .line 3053
    return-void
.end method

.method public setAnchorId(I)V
    .registers 2
    .param p1, "id"    # I

    .line 2942
    invoke-virtual {p0}, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->invalidateAnchor()V

    .line 2943
    iput p1, p0, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->mAnchorId:I

    .line 2944
    return-void
.end method

.method public setBehavior(Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;)V
    .registers 3
    .param p1, "behavior"    # Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;

    .line 2967
    iget-object v0, p0, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->mBehavior:Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;

    if-eq v0, p1, :cond_16

    .line 2968
    if-eqz v0, :cond_9

    .line 2970
    invoke-virtual {v0}, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;->onDetachedFromLayoutParams()V

    .line 2973
    :cond_9
    iput-object p1, p0, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->mBehavior:Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;

    .line 2974
    const/4 v0, 0x0

    iput-object v0, p0, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->mBehaviorTag:Ljava/lang/Object;

    .line 2975
    const/4 v0, 0x1

    iput-boolean v0, p0, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->mBehaviorResolved:Z

    .line 2977
    if-eqz p1, :cond_16

    .line 2979
    invoke-virtual {p1, p0}, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;->onAttachedToLayoutParams(Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;)V

    .line 2982
    :cond_16
    return-void
.end method

.method setChangedAfterNestedScroll(Z)V
    .registers 2
    .param p1, "changed"    # Z

    .line 3085
    iput-boolean p1, p0, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->mDidChangeAfterNestedScroll:Z

    .line 3086
    return-void
.end method

.method setLastChildRect(Landroid/graphics/Rect;)V
    .registers 3
    .param p1, "r"    # Landroid/graphics/Rect;

    .line 2990
    iget-object v0, p0, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->mLastChildRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2991
    return-void
.end method

.method setNestedScrollAccepted(IZ)V
    .registers 3
    .param p1, "type"    # I
    .param p2, "accept"    # Z

    .line 3060
    packed-switch p1, :pswitch_data_c

    goto :goto_a

    .line 3065
    :pswitch_4
    iput-boolean p2, p0, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->mDidAcceptNestedScrollNonTouch:Z

    goto :goto_a

    .line 3062
    :pswitch_7
    iput-boolean p2, p0, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->mDidAcceptNestedScrollTouch:Z

    .line 3063
    nop

    .line 3068
    :goto_a
    return-void

    nop

    :pswitch_data_c
    .packed-switch 0x0
        :pswitch_7
        :pswitch_4
    .end packed-switch
.end method
