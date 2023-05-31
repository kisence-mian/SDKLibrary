.class public final Landroid/support/v4/view/ScaleGestureDetectorCompat;
.super Ljava/lang/Object;
.source "ScaleGestureDetectorCompat.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isQuickScaleEnabled(Landroid/view/ScaleGestureDetector;)Z
    .registers 3
    .param p0, "scaleGestureDetector"    # Landroid/view/ScaleGestureDetector;

    .prologue
    .line 78
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_b

    .line 79
    invoke-virtual {p0}, Landroid/view/ScaleGestureDetector;->isQuickScaleEnabled()Z

    move-result v0

    .line 81
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public static isQuickScaleEnabled(Ljava/lang/Object;)Z
    .registers 2
    .param p0, "scaleGestureDetector"    # Ljava/lang/Object;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 68
    check-cast p0, Landroid/view/ScaleGestureDetector;

    .end local p0    # "scaleGestureDetector":Ljava/lang/Object;
    invoke-static {p0}, Landroid/support/v4/view/ScaleGestureDetectorCompat;->isQuickScaleEnabled(Landroid/view/ScaleGestureDetector;)Z

    move-result v0

    return v0
.end method

.method public static setQuickScaleEnabled(Landroid/view/ScaleGestureDetector;Z)V
    .registers 4
    .param p0, "scaleGestureDetector"    # Landroid/view/ScaleGestureDetector;
    .param p1, "enabled"    # Z

    .prologue
    .line 53
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_9

    .line 54
    invoke-virtual {p0, p1}, Landroid/view/ScaleGestureDetector;->setQuickScaleEnabled(Z)V

    .line 56
    :cond_9
    return-void
.end method

.method public static setQuickScaleEnabled(Ljava/lang/Object;Z)V
    .registers 2
    .param p0, "scaleGestureDetector"    # Ljava/lang/Object;
    .param p1, "enabled"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 40
    check-cast p0, Landroid/view/ScaleGestureDetector;

    .end local p0    # "scaleGestureDetector":Ljava/lang/Object;
    invoke-static {p0, p1}, Landroid/support/v4/view/ScaleGestureDetectorCompat;->setQuickScaleEnabled(Landroid/view/ScaleGestureDetector;Z)V

    .line 42
    return-void
.end method
