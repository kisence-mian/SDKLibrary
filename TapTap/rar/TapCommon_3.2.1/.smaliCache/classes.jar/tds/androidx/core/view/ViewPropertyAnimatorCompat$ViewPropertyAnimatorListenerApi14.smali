.class Ltds/androidx/core/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorListenerApi14;
.super Ljava/lang/Object;
.source "ViewPropertyAnimatorCompat.java"

# interfaces
.implements Ltds/androidx/core/view/ViewPropertyAnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltds/androidx/core/view/ViewPropertyAnimatorCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ViewPropertyAnimatorListenerApi14"
.end annotation


# instance fields
.field mAnimEndCalled:Z

.field mVpa:Ltds/androidx/core/view/ViewPropertyAnimatorCompat;


# direct methods
.method constructor <init>(Ltds/androidx/core/view/ViewPropertyAnimatorCompat;)V
    .registers 2
    .param p1, "vpa"    # Ltds/androidx/core/view/ViewPropertyAnimatorCompat;

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Ltds/androidx/core/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorListenerApi14;->mVpa:Ltds/androidx/core/view/ViewPropertyAnimatorCompat;

    .line 47
    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/view/View;)V
    .registers 5
    .param p1, "view"    # Landroid/view/View;

    .line 101
    const/high16 v0, 0x7e000000

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    .line 102
    .local v0, "listenerTag":Ljava/lang/Object;
    const/4 v1, 0x0

    .line 103
    .local v1, "listener":Ltds/androidx/core/view/ViewPropertyAnimatorListener;
    instance-of v2, v0, Ltds/androidx/core/view/ViewPropertyAnimatorListener;

    if-eqz v2, :cond_e

    .line 104
    move-object v1, v0

    check-cast v1, Ltds/androidx/core/view/ViewPropertyAnimatorListener;

    .line 106
    :cond_e
    if-eqz v1, :cond_13

    .line 107
    invoke-interface {v1, p1}, Ltds/androidx/core/view/ViewPropertyAnimatorListener;->onAnimationCancel(Landroid/view/View;)V

    .line 109
    :cond_13
    return-void
.end method

.method public onAnimationEnd(Landroid/view/View;)V
    .registers 5
    .param p1, "view"    # Landroid/view/View;

    .line 75
    iget-object v0, p0, Ltds/androidx/core/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorListenerApi14;->mVpa:Ltds/androidx/core/view/ViewPropertyAnimatorCompat;

    iget v0, v0, Ltds/androidx/core/view/ViewPropertyAnimatorCompat;->mOldLayerType:I

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-le v0, v2, :cond_13

    .line 76
    iget-object v0, p0, Ltds/androidx/core/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorListenerApi14;->mVpa:Ltds/androidx/core/view/ViewPropertyAnimatorCompat;

    iget v0, v0, Ltds/androidx/core/view/ViewPropertyAnimatorCompat;->mOldLayerType:I

    invoke-virtual {p1, v0, v1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 77
    iget-object v0, p0, Ltds/androidx/core/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorListenerApi14;->mVpa:Ltds/androidx/core/view/ViewPropertyAnimatorCompat;

    iput v2, v0, Ltds/androidx/core/view/ViewPropertyAnimatorCompat;->mOldLayerType:I

    .line 79
    :cond_13
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-ge v0, v2, :cond_1d

    iget-boolean v0, p0, Ltds/androidx/core/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorListenerApi14;->mAnimEndCalled:Z

    if-nez v0, :cond_44

    .line 82
    :cond_1d
    iget-object v0, p0, Ltds/androidx/core/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorListenerApi14;->mVpa:Ltds/androidx/core/view/ViewPropertyAnimatorCompat;

    iget-object v0, v0, Ltds/androidx/core/view/ViewPropertyAnimatorCompat;->mEndAction:Ljava/lang/Runnable;

    if-eqz v0, :cond_2e

    .line 83
    iget-object v0, p0, Ltds/androidx/core/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorListenerApi14;->mVpa:Ltds/androidx/core/view/ViewPropertyAnimatorCompat;

    iget-object v0, v0, Ltds/androidx/core/view/ViewPropertyAnimatorCompat;->mEndAction:Ljava/lang/Runnable;

    .line 84
    .local v0, "endAction":Ljava/lang/Runnable;
    iget-object v2, p0, Ltds/androidx/core/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorListenerApi14;->mVpa:Ltds/androidx/core/view/ViewPropertyAnimatorCompat;

    iput-object v1, v2, Ltds/androidx/core/view/ViewPropertyAnimatorCompat;->mEndAction:Ljava/lang/Runnable;

    .line 85
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 87
    .end local v0    # "endAction":Ljava/lang/Runnable;
    :cond_2e
    const/high16 v0, 0x7e000000

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    .line 88
    .local v0, "listenerTag":Ljava/lang/Object;
    const/4 v1, 0x0

    .line 89
    .local v1, "listener":Ltds/androidx/core/view/ViewPropertyAnimatorListener;
    instance-of v2, v0, Ltds/androidx/core/view/ViewPropertyAnimatorListener;

    if-eqz v2, :cond_3c

    .line 90
    move-object v1, v0

    check-cast v1, Ltds/androidx/core/view/ViewPropertyAnimatorListener;

    .line 92
    :cond_3c
    if-eqz v1, :cond_41

    .line 93
    invoke-interface {v1, p1}, Ltds/androidx/core/view/ViewPropertyAnimatorListener;->onAnimationEnd(Landroid/view/View;)V

    .line 95
    :cond_41
    const/4 v2, 0x1

    iput-boolean v2, p0, Ltds/androidx/core/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorListenerApi14;->mAnimEndCalled:Z

    .line 97
    .end local v0    # "listenerTag":Ljava/lang/Object;
    .end local v1    # "listener":Ltds/androidx/core/view/ViewPropertyAnimatorListener;
    :cond_44
    return-void
.end method

.method public onAnimationStart(Landroid/view/View;)V
    .registers 5
    .param p1, "view"    # Landroid/view/View;

    .line 52
    const/4 v0, 0x0

    iput-boolean v0, p0, Ltds/androidx/core/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorListenerApi14;->mAnimEndCalled:Z

    .line 54
    iget-object v0, p0, Ltds/androidx/core/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorListenerApi14;->mVpa:Ltds/androidx/core/view/ViewPropertyAnimatorCompat;

    iget v0, v0, Ltds/androidx/core/view/ViewPropertyAnimatorCompat;->mOldLayerType:I

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-le v0, v2, :cond_f

    .line 55
    const/4 v0, 0x2

    invoke-virtual {p1, v0, v1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 57
    :cond_f
    iget-object v0, p0, Ltds/androidx/core/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorListenerApi14;->mVpa:Ltds/androidx/core/view/ViewPropertyAnimatorCompat;

    iget-object v0, v0, Ltds/androidx/core/view/ViewPropertyAnimatorCompat;->mStartAction:Ljava/lang/Runnable;

    if-eqz v0, :cond_20

    .line 58
    iget-object v0, p0, Ltds/androidx/core/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorListenerApi14;->mVpa:Ltds/androidx/core/view/ViewPropertyAnimatorCompat;

    iget-object v0, v0, Ltds/androidx/core/view/ViewPropertyAnimatorCompat;->mStartAction:Ljava/lang/Runnable;

    .line 59
    .local v0, "startAction":Ljava/lang/Runnable;
    iget-object v2, p0, Ltds/androidx/core/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorListenerApi14;->mVpa:Ltds/androidx/core/view/ViewPropertyAnimatorCompat;

    iput-object v1, v2, Ltds/androidx/core/view/ViewPropertyAnimatorCompat;->mStartAction:Ljava/lang/Runnable;

    .line 60
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 62
    .end local v0    # "startAction":Ljava/lang/Runnable;
    :cond_20
    const/high16 v0, 0x7e000000

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    .line 63
    .local v0, "listenerTag":Ljava/lang/Object;
    const/4 v1, 0x0

    .line 64
    .local v1, "listener":Ltds/androidx/core/view/ViewPropertyAnimatorListener;
    instance-of v2, v0, Ltds/androidx/core/view/ViewPropertyAnimatorListener;

    if-eqz v2, :cond_2e

    .line 65
    move-object v1, v0

    check-cast v1, Ltds/androidx/core/view/ViewPropertyAnimatorListener;

    .line 67
    :cond_2e
    if-eqz v1, :cond_33

    .line 68
    invoke-interface {v1, p1}, Ltds/androidx/core/view/ViewPropertyAnimatorListener;->onAnimationStart(Landroid/view/View;)V

    .line 70
    :cond_33
    return-void
.end method
