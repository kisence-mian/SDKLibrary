.class public final Landroidx/fragment/app/FragmentContainerView;
.super Landroid/widget/FrameLayout;
.source "FragmentContainerView.java"


# instance fields
.field private mDisappearingFragmentChildren:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mDrawDisappearingViewsFirst:Z

.field private mTransitioningFragmentViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 108
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 105
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/fragment/app/FragmentContainerView;->mDrawDisappearingViewsFirst:Z

    .line 109
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 116
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 105
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/fragment/app/FragmentContainerView;->mDrawDisappearingViewsFirst:Z

    .line 117
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "FragmentContainerView must be within a FragmentActivity to be instantiated from XML."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 129
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 105
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/fragment/app/FragmentContainerView;->mDrawDisappearingViewsFirst:Z

    .line 130
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "FragmentContainerView must be within a FragmentActivity to be instantiated from XML."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;Landroidx/fragment/app/FragmentManager;)V
    .registers 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "fm"    # Landroidx/fragment/app/FragmentManager;

    .line 138
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 105
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/fragment/app/FragmentContainerView;->mDrawDisappearingViewsFirst:Z

    .line 140
    invoke-interface {p2}, Landroid/util/AttributeSet;->getClassAttribute()Ljava/lang/String;

    move-result-object v1

    .line 141
    .local v1, "name":Ljava/lang/String;
    sget-object v2, Landroidx/fragment/R$styleable;->FragmentContainerView:[I

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 142
    .local v2, "a":Landroid/content/res/TypedArray;
    if-nez v1, :cond_18

    .line 143
    sget v3, Landroidx/fragment/R$styleable;->FragmentContainerView_android_name:I

    invoke-virtual {v2, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 145
    :cond_18
    sget v3, Landroidx/fragment/R$styleable;->FragmentContainerView_android_tag:I

    invoke-virtual {v2, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 146
    .local v3, "tag":Ljava/lang/String;
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 148
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentContainerView;->getId()I

    move-result v4

    .line 149
    .local v4, "id":I
    invoke-virtual {p3, v4}, Landroidx/fragment/app/FragmentManager;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    move-result-object v5

    .line 152
    .local v5, "existingFragment":Landroidx/fragment/app/Fragment;
    if-eqz v1, :cond_84

    if-nez v5, :cond_84

    .line 153
    if-gtz v4, :cond_64

    .line 154
    if-eqz v3, :cond_45

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " with tag "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_47

    :cond_45
    const-string v0, ""

    .line 157
    .local v0, "tagMessage":Ljava/lang/String;
    :goto_47
    new-instance v6, Ljava/lang/IllegalStateException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "FragmentContainerView must have an android:id to add Fragment "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 160
    .end local v0    # "tagMessage":Ljava/lang/String;
    :cond_64
    nop

    .line 161
    invoke-virtual {p3}, Landroidx/fragment/app/FragmentManager;->getFragmentFactory()Landroidx/fragment/app/FragmentFactory;

    move-result-object v6

    invoke-virtual {p1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v7

    invoke-virtual {v6, v7, v1}, Landroidx/fragment/app/FragmentFactory;->instantiate(Ljava/lang/ClassLoader;Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v6

    .line 162
    .local v6, "containerFragment":Landroidx/fragment/app/Fragment;
    const/4 v7, 0x0

    invoke-virtual {v6, p1, p2, v7}, Landroidx/fragment/app/Fragment;->onInflate(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/os/Bundle;)V

    .line 163
    invoke-virtual {p3}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v7

    .line 164
    invoke-virtual {v7, v0}, Landroidx/fragment/app/FragmentTransaction;->setReorderingAllowed(Z)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    .line 165
    invoke-virtual {v0, p0, v6, v3}, Landroidx/fragment/app/FragmentTransaction;->add(Landroid/view/ViewGroup;Landroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    .line 166
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commitNowAllowingStateLoss()V

    .line 168
    .end local v6    # "containerFragment":Landroidx/fragment/app/Fragment;
    :cond_84
    return-void
.end method

.method private addDisappearingFragmentView(Landroid/view/View;)V
    .registers 3
    .param p1, "v"    # Landroid/view/View;

    .line 362
    invoke-virtual {p1}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    if-nez v0, :cond_10

    iget-object v0, p0, Landroidx/fragment/app/FragmentContainerView;->mTransitioningFragmentViews:Ljava/util/ArrayList;

    if-eqz v0, :cond_20

    .line 363
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 364
    :cond_10
    iget-object v0, p0, Landroidx/fragment/app/FragmentContainerView;->mDisappearingFragmentChildren:Ljava/util/ArrayList;

    if-nez v0, :cond_1b

    .line 365
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/fragment/app/FragmentContainerView;->mDisappearingFragmentChildren:Ljava/util/ArrayList;

    .line 367
    :cond_1b
    iget-object v0, p0, Landroidx/fragment/app/FragmentContainerView;->mDisappearingFragmentChildren:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 369
    :cond_20
    return-void
.end method


# virtual methods
.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .registers 7
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I
    .param p3, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .line 275
    invoke-static {p1}, Landroidx/fragment/app/FragmentManager;->getViewFragment(Landroid/view/View;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 280
    invoke-super {p0, p1, p2, p3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 281
    return-void

    .line 276
    :cond_a
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Views added to a FragmentContainerView must be associated with a Fragment. View "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not associated with a Fragment."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)Z
    .registers 8
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I
    .param p3, "params"    # Landroid/view/ViewGroup$LayoutParams;
    .param p4, "preventRequestLayout"    # Z

    .line 293
    invoke-static {p1}, Landroidx/fragment/app/FragmentManager;->getViewFragment(Landroid/view/View;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 298
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)Z

    move-result v0

    return v0

    .line 294
    :cond_b
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Views added to a FragmentContainerView must be associated with a Fragment. View "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not associated with a Fragment."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .registers 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 218
    iget-boolean v0, p0, Landroidx/fragment/app/FragmentContainerView;->mDrawDisappearingViewsFirst:Z

    if-eqz v0, :cond_23

    iget-object v0, p0, Landroidx/fragment/app/FragmentContainerView;->mDisappearingFragmentChildren:Ljava/util/ArrayList;

    if-eqz v0, :cond_23

    .line 219
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_9
    iget-object v1, p0, Landroidx/fragment/app/FragmentContainerView;->mDisappearingFragmentChildren:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_23

    .line 220
    iget-object v1, p0, Landroidx/fragment/app/FragmentContainerView;->mDisappearingFragmentChildren:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentContainerView;->getDrawingTime()J

    move-result-wide v2

    invoke-super {p0, p1, v1, v2, v3}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 219
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 223
    .end local v0    # "i":I
    :cond_23
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 224
    return-void
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .registers 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "child"    # Landroid/view/View;
    .param p3, "drawingTime"    # J

    .line 228
    iget-boolean v0, p0, Landroidx/fragment/app/FragmentContainerView;->mDrawDisappearingViewsFirst:Z

    if-eqz v0, :cond_18

    iget-object v0, p0, Landroidx/fragment/app/FragmentContainerView;->mDisappearingFragmentChildren:Ljava/util/ArrayList;

    if-eqz v0, :cond_18

    .line 229
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_18

    .line 231
    iget-object v0, p0, Landroidx/fragment/app/FragmentContainerView;->mDisappearingFragmentChildren:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 232
    const/4 v0, 0x0

    return v0

    .line 235
    :cond_18
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v0

    return v0
.end method

.method public endViewTransition(Landroid/view/View;)V
    .registers 3
    .param p1, "view"    # Landroid/view/View;

    .line 251
    iget-object v0, p0, Landroidx/fragment/app/FragmentContainerView;->mTransitioningFragmentViews:Ljava/util/ArrayList;

    if-eqz v0, :cond_14

    .line 252
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 253
    iget-object v0, p0, Landroidx/fragment/app/FragmentContainerView;->mDisappearingFragmentChildren:Ljava/util/ArrayList;

    if-eqz v0, :cond_14

    .line 254
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 255
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/fragment/app/FragmentContainerView;->mDrawDisappearingViewsFirst:Z

    .line 258
    :cond_14
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->endViewTransition(Landroid/view/View;)V

    .line 259
    return-void
.end method

.method public onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .registers 5
    .param p1, "insets"    # Landroid/view/WindowInsets;

    .line 208
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentContainerView;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_16

    .line 209
    invoke-virtual {p0, v0}, Landroidx/fragment/app/FragmentContainerView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 211
    .local v1, "child":Landroid/view/View;
    new-instance v2, Landroid/view/WindowInsets;

    invoke-direct {v2, p1}, Landroid/view/WindowInsets;-><init>(Landroid/view/WindowInsets;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->dispatchApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    .line 208
    .end local v1    # "child":Landroid/view/View;
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 213
    .end local v0    # "i":I
    :cond_16
    return-object p1
.end method

.method public removeAllViewsInLayout()V
    .registers 3

    .line 340
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentContainerView;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_6
    if-ltz v0, :cond_12

    .line 341
    invoke-virtual {p0, v0}, Landroidx/fragment/app/FragmentContainerView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 342
    .local v1, "view":Landroid/view/View;
    invoke-direct {p0, v1}, Landroidx/fragment/app/FragmentContainerView;->addDisappearingFragmentView(Landroid/view/View;)V

    .line 340
    .end local v1    # "view":Landroid/view/View;
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    .line 344
    .end local v0    # "i":I
    :cond_12
    invoke-super {p0}, Landroid/widget/FrameLayout;->removeAllViewsInLayout()V

    .line 345
    return-void
.end method

.method protected removeDetachedView(Landroid/view/View;Z)V
    .registers 3
    .param p1, "child"    # Landroid/view/View;
    .param p2, "animate"    # Z

    .line 349
    if-eqz p2, :cond_5

    .line 350
    invoke-direct {p0, p1}, Landroidx/fragment/app/FragmentContainerView;->addDisappearingFragmentView(Landroid/view/View;)V

    .line 352
    :cond_5
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->removeDetachedView(Landroid/view/View;Z)V

    .line 353
    return-void
.end method

.method public removeView(Landroid/view/View;)V
    .registers 2
    .param p1, "view"    # Landroid/view/View;

    .line 316
    invoke-direct {p0, p1}, Landroidx/fragment/app/FragmentContainerView;->addDisappearingFragmentView(Landroid/view/View;)V

    .line 317
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 318
    return-void
.end method

.method public removeViewAt(I)V
    .registers 3
    .param p1, "index"    # I

    .line 303
    invoke-virtual {p0, p1}, Landroidx/fragment/app/FragmentContainerView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 304
    .local v0, "view":Landroid/view/View;
    invoke-direct {p0, v0}, Landroidx/fragment/app/FragmentContainerView;->addDisappearingFragmentView(Landroid/view/View;)V

    .line 305
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->removeViewAt(I)V

    .line 306
    return-void
.end method

.method public removeViewInLayout(Landroid/view/View;)V
    .registers 2
    .param p1, "view"    # Landroid/view/View;

    .line 310
    invoke-direct {p0, p1}, Landroidx/fragment/app/FragmentContainerView;->addDisappearingFragmentView(Landroid/view/View;)V

    .line 311
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->removeViewInLayout(Landroid/view/View;)V

    .line 312
    return-void
.end method

.method public removeViews(II)V
    .registers 5
    .param p1, "start"    # I
    .param p2, "count"    # I

    .line 322
    move v0, p1

    .local v0, "i":I
    :goto_1
    add-int v1, p1, p2

    if-ge v0, v1, :cond_f

    .line 323
    invoke-virtual {p0, v0}, Landroidx/fragment/app/FragmentContainerView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 324
    .local v1, "view":Landroid/view/View;
    invoke-direct {p0, v1}, Landroidx/fragment/app/FragmentContainerView;->addDisappearingFragmentView(Landroid/view/View;)V

    .line 322
    .end local v1    # "view":Landroid/view/View;
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 326
    .end local v0    # "i":I
    :cond_f
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->removeViews(II)V

    .line 327
    return-void
.end method

.method public removeViewsInLayout(II)V
    .registers 5
    .param p1, "start"    # I
    .param p2, "count"    # I

    .line 331
    move v0, p1

    .local v0, "i":I
    :goto_1
    add-int v1, p1, p2

    if-ge v0, v1, :cond_f

    .line 332
    invoke-virtual {p0, v0}, Landroidx/fragment/app/FragmentContainerView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 333
    .local v1, "view":Landroid/view/View;
    invoke-direct {p0, v1}, Landroidx/fragment/app/FragmentContainerView;->addDisappearingFragmentView(Landroid/view/View;)V

    .line 331
    .end local v1    # "view":Landroid/view/View;
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 335
    .end local v0    # "i":I
    :cond_f
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->removeViewsInLayout(II)V

    .line 336
    return-void
.end method

.method setDrawDisappearingViewsLast(Z)V
    .registers 2
    .param p1, "drawDisappearingViewsFirst"    # Z

    .line 263
    iput-boolean p1, p0, Landroidx/fragment/app/FragmentContainerView;->mDrawDisappearingViewsFirst:Z

    .line 264
    return-void
.end method

.method public setLayoutTransition(Landroid/animation/LayoutTransition;)V
    .registers 4
    .param p1, "transition"    # Landroid/animation/LayoutTransition;

    .line 186
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-ge v0, v1, :cond_a

    .line 190
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    .line 191
    return-void

    .line 194
    :cond_a
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "FragmentContainerView does not support Layout Transitions or animateLayoutChanges=\"true\"."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public startViewTransition(Landroid/view/View;)V
    .registers 3
    .param p1, "view"    # Landroid/view/View;

    .line 240
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-ne v0, p0, :cond_16

    .line 241
    iget-object v0, p0, Landroidx/fragment/app/FragmentContainerView;->mTransitioningFragmentViews:Ljava/util/ArrayList;

    if-nez v0, :cond_11

    .line 242
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/fragment/app/FragmentContainerView;->mTransitioningFragmentViews:Ljava/util/ArrayList;

    .line 244
    :cond_11
    iget-object v0, p0, Landroidx/fragment/app/FragmentContainerView;->mTransitioningFragmentViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 246
    :cond_16
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->startViewTransition(Landroid/view/View;)V

    .line 247
    return-void
.end method
