.class Landroidx/fragment/app/FragmentAnim$EndViewTransitionAnimation;
.super Landroid/view/animation/AnimationSet;
.source "FragmentAnim.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/fragment/app/FragmentAnim;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EndViewTransitionAnimation"
.end annotation


# instance fields
.field private mAnimating:Z

.field private final mChild:Landroid/view/View;

.field private mEnded:Z

.field private final mParent:Landroid/view/ViewGroup;

.field private mTransitionEnded:Z


# direct methods
.method constructor <init>(Landroid/view/animation/Animation;Landroid/view/ViewGroup;Landroid/view/View;)V
    .registers 5
    .param p1, "animation"    # Landroid/view/animation/Animation;
    .param p2, "parent"    # Landroid/view/ViewGroup;
    .param p3, "child"    # Landroid/view/View;

    .line 263
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 259
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/fragment/app/FragmentAnim$EndViewTransitionAnimation;->mAnimating:Z

    .line 264
    iput-object p2, p0, Landroidx/fragment/app/FragmentAnim$EndViewTransitionAnimation;->mParent:Landroid/view/ViewGroup;

    .line 265
    iput-object p3, p0, Landroidx/fragment/app/FragmentAnim$EndViewTransitionAnimation;->mChild:Landroid/view/View;

    .line 266
    invoke-virtual {p0, p1}, Landroidx/fragment/app/FragmentAnim$EndViewTransitionAnimation;->addAnimation(Landroid/view/animation/Animation;)V

    .line 269
    invoke-virtual {p2, p0}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    .line 270
    return-void
.end method


# virtual methods
.method public getTransformation(JLandroid/view/animation/Transformation;)Z
    .registers 7
    .param p1, "currentTime"    # J
    .param p3, "t"    # Landroid/view/animation/Transformation;

    .line 274
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/fragment/app/FragmentAnim$EndViewTransitionAnimation;->mAnimating:Z

    .line 275
    iget-boolean v1, p0, Landroidx/fragment/app/FragmentAnim$EndViewTransitionAnimation;->mEnded:Z

    if-eqz v1, :cond_b

    .line 276
    iget-boolean v1, p0, Landroidx/fragment/app/FragmentAnim$EndViewTransitionAnimation;->mTransitionEnded:Z

    xor-int/2addr v0, v1

    return v0

    .line 278
    :cond_b
    invoke-super {p0, p1, p2, p3}, Landroid/view/animation/AnimationSet;->getTransformation(JLandroid/view/animation/Transformation;)Z

    move-result v1

    .line 279
    .local v1, "more":Z
    if-nez v1, :cond_18

    .line 280
    iput-boolean v0, p0, Landroidx/fragment/app/FragmentAnim$EndViewTransitionAnimation;->mEnded:Z

    .line 281
    iget-object v2, p0, Landroidx/fragment/app/FragmentAnim$EndViewTransitionAnimation;->mParent:Landroid/view/ViewGroup;

    invoke-static {v2, p0}, Landroidx/core/view/OneShotPreDrawListener;->add(Landroid/view/View;Ljava/lang/Runnable;)Landroidx/core/view/OneShotPreDrawListener;

    .line 283
    :cond_18
    return v0
.end method

.method public getTransformation(JLandroid/view/animation/Transformation;F)Z
    .registers 8
    .param p1, "currentTime"    # J
    .param p3, "outTransformation"    # Landroid/view/animation/Transformation;
    .param p4, "scale"    # F

    .line 289
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/fragment/app/FragmentAnim$EndViewTransitionAnimation;->mAnimating:Z

    .line 290
    iget-boolean v1, p0, Landroidx/fragment/app/FragmentAnim$EndViewTransitionAnimation;->mEnded:Z

    if-eqz v1, :cond_b

    .line 291
    iget-boolean v1, p0, Landroidx/fragment/app/FragmentAnim$EndViewTransitionAnimation;->mTransitionEnded:Z

    xor-int/2addr v0, v1

    return v0

    .line 293
    :cond_b
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/animation/AnimationSet;->getTransformation(JLandroid/view/animation/Transformation;F)Z

    move-result v1

    .line 294
    .local v1, "more":Z
    if-nez v1, :cond_18

    .line 295
    iput-boolean v0, p0, Landroidx/fragment/app/FragmentAnim$EndViewTransitionAnimation;->mEnded:Z

    .line 296
    iget-object v2, p0, Landroidx/fragment/app/FragmentAnim$EndViewTransitionAnimation;->mParent:Landroid/view/ViewGroup;

    invoke-static {v2, p0}, Landroidx/core/view/OneShotPreDrawListener;->add(Landroid/view/View;Ljava/lang/Runnable;)Landroidx/core/view/OneShotPreDrawListener;

    .line 298
    :cond_18
    return v0
.end method

.method public run()V
    .registers 3

    .line 303
    iget-boolean v0, p0, Landroidx/fragment/app/FragmentAnim$EndViewTransitionAnimation;->mEnded:Z

    if-nez v0, :cond_11

    iget-boolean v0, p0, Landroidx/fragment/app/FragmentAnim$EndViewTransitionAnimation;->mAnimating:Z

    if-eqz v0, :cond_11

    .line 304
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/fragment/app/FragmentAnim$EndViewTransitionAnimation;->mAnimating:Z

    .line 306
    iget-object v0, p0, Landroidx/fragment/app/FragmentAnim$EndViewTransitionAnimation;->mParent:Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    goto :goto_1b

    .line 308
    :cond_11
    iget-object v0, p0, Landroidx/fragment/app/FragmentAnim$EndViewTransitionAnimation;->mParent:Landroid/view/ViewGroup;

    iget-object v1, p0, Landroidx/fragment/app/FragmentAnim$EndViewTransitionAnimation;->mChild:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->endViewTransition(Landroid/view/View;)V

    .line 309
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/fragment/app/FragmentAnim$EndViewTransitionAnimation;->mTransitionEnded:Z

    .line 311
    :goto_1b
    return-void
.end method
