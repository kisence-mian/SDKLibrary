.class public final Ltds/androidx/core/view/GestureDetectorCompat;
.super Ljava/lang/Object;
.source "GestureDetectorCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltds/androidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplJellybeanMr2;,
        Ltds/androidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;,
        Ltds/androidx/core/view/GestureDetectorCompat$GestureDetectorCompatImpl;
    }
.end annotation


# instance fields
.field private final mImpl:Ltds/androidx/core/view/GestureDetectorCompat$GestureDetectorCompatImpl;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Landroid/view/GestureDetector$OnGestureListener;

    .line 507
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Ltds/androidx/core/view/GestureDetectorCompat;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;Landroid/os/Handler;)V

    .line 508
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;Landroid/os/Handler;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Landroid/view/GestureDetector$OnGestureListener;
    .param p3, "handler"    # Landroid/os/Handler;

    .line 520
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 521
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-le v0, v1, :cond_11

    .line 522
    new-instance v0, Ltds/androidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplJellybeanMr2;

    invoke-direct {v0, p1, p2, p3}, Ltds/androidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplJellybeanMr2;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;Landroid/os/Handler;)V

    iput-object v0, p0, Ltds/androidx/core/view/GestureDetectorCompat;->mImpl:Ltds/androidx/core/view/GestureDetectorCompat$GestureDetectorCompatImpl;

    goto :goto_18

    .line 524
    :cond_11
    new-instance v0, Ltds/androidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;

    invoke-direct {v0, p1, p2, p3}, Ltds/androidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;Landroid/os/Handler;)V

    iput-object v0, p0, Ltds/androidx/core/view/GestureDetectorCompat;->mImpl:Ltds/androidx/core/view/GestureDetectorCompat$GestureDetectorCompatImpl;

    .line 526
    :goto_18
    return-void
.end method


# virtual methods
.method public isLongpressEnabled()Z
    .registers 2

    .line 532
    iget-object v0, p0, Ltds/androidx/core/view/GestureDetectorCompat;->mImpl:Ltds/androidx/core/view/GestureDetectorCompat$GestureDetectorCompatImpl;

    invoke-interface {v0}, Ltds/androidx/core/view/GestureDetectorCompat$GestureDetectorCompatImpl;->isLongpressEnabled()Z

    move-result v0

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 544
    iget-object v0, p0, Ltds/androidx/core/view/GestureDetectorCompat;->mImpl:Ltds/androidx/core/view/GestureDetectorCompat$GestureDetectorCompatImpl;

    invoke-interface {v0, p1}, Ltds/androidx/core/view/GestureDetectorCompat$GestureDetectorCompatImpl;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public setIsLongpressEnabled(Z)V
    .registers 3
    .param p1, "enabled"    # Z

    .line 557
    iget-object v0, p0, Ltds/androidx/core/view/GestureDetectorCompat;->mImpl:Ltds/androidx/core/view/GestureDetectorCompat$GestureDetectorCompatImpl;

    invoke-interface {v0, p1}, Ltds/androidx/core/view/GestureDetectorCompat$GestureDetectorCompatImpl;->setIsLongpressEnabled(Z)V

    .line 558
    return-void
.end method

.method public setOnDoubleTapListener(Landroid/view/GestureDetector$OnDoubleTapListener;)V
    .registers 3
    .param p1, "listener"    # Landroid/view/GestureDetector$OnDoubleTapListener;

    .line 568
    iget-object v0, p0, Ltds/androidx/core/view/GestureDetectorCompat;->mImpl:Ltds/androidx/core/view/GestureDetectorCompat$GestureDetectorCompatImpl;

    invoke-interface {v0, p1}, Ltds/androidx/core/view/GestureDetectorCompat$GestureDetectorCompatImpl;->setOnDoubleTapListener(Landroid/view/GestureDetector$OnDoubleTapListener;)V

    .line 569
    return-void
.end method
