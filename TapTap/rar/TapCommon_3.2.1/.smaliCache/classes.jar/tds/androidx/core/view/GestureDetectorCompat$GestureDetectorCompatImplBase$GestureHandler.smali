.class Ltds/androidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase$GestureHandler;
.super Landroid/os/Handler;
.source "GestureDetectorCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltds/androidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GestureHandler"
.end annotation


# instance fields
.field final synthetic this$0:Ltds/androidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;


# direct methods
.method constructor <init>(Ltds/androidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;)V
    .registers 2

    .line 104
    iput-object p1, p0, Ltds/androidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase$GestureHandler;->this$0:Ltds/androidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;

    .line 105
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 106
    return-void
.end method

.method constructor <init>(Ltds/androidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;Landroid/os/Handler;)V
    .registers 3
    .param p2, "handler"    # Landroid/os/Handler;

    .line 108
    iput-object p1, p0, Ltds/androidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase$GestureHandler;->this$0:Ltds/androidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;

    .line 109
    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 110
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5
    .param p1, "msg"    # Landroid/os/Message;

    .line 114
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_50

    .line 135
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown message "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 125
    :pswitch_1e
    iget-object v0, p0, Ltds/androidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase$GestureHandler;->this$0:Ltds/androidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;

    iget-object v0, v0, Ltds/androidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mDoubleTapListener:Landroid/view/GestureDetector$OnDoubleTapListener;

    if-eqz v0, :cond_4e

    .line 126
    iget-object v0, p0, Ltds/androidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase$GestureHandler;->this$0:Ltds/androidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;

    iget-boolean v0, v0, Ltds/androidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mStillDown:Z

    if-nez v0, :cond_36

    .line 127
    iget-object v0, p0, Ltds/androidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase$GestureHandler;->this$0:Ltds/androidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;

    iget-object v0, v0, Ltds/androidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mDoubleTapListener:Landroid/view/GestureDetector$OnDoubleTapListener;

    iget-object v1, p0, Ltds/androidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase$GestureHandler;->this$0:Ltds/androidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;

    iget-object v1, v1, Ltds/androidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mCurrentDownEvent:Landroid/view/MotionEvent;

    invoke-interface {v0, v1}, Landroid/view/GestureDetector$OnDoubleTapListener;->onSingleTapConfirmed(Landroid/view/MotionEvent;)Z

    goto :goto_4e

    .line 129
    :cond_36
    iget-object v0, p0, Ltds/androidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase$GestureHandler;->this$0:Ltds/androidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;

    const/4 v1, 0x1

    iput-boolean v1, v0, Ltds/androidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mDeferConfirmSingleTap:Z

    goto :goto_4e

    .line 120
    :pswitch_3c
    iget-object v0, p0, Ltds/androidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase$GestureHandler;->this$0:Ltds/androidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;

    invoke-virtual {v0}, Ltds/androidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->dispatchLongPress()V

    .line 121
    goto :goto_4e

    .line 116
    :pswitch_42
    iget-object v0, p0, Ltds/androidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase$GestureHandler;->this$0:Ltds/androidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;

    iget-object v0, v0, Ltds/androidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mListener:Landroid/view/GestureDetector$OnGestureListener;

    iget-object v1, p0, Ltds/androidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase$GestureHandler;->this$0:Ltds/androidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;

    iget-object v1, v1, Ltds/androidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mCurrentDownEvent:Landroid/view/MotionEvent;

    invoke-interface {v0, v1}, Landroid/view/GestureDetector$OnGestureListener;->onShowPress(Landroid/view/MotionEvent;)V

    .line 117
    nop

    .line 137
    :cond_4e
    :goto_4e
    return-void

    nop

    :pswitch_data_50
    .packed-switch 0x1
        :pswitch_42
        :pswitch_3c
        :pswitch_1e
    .end packed-switch
.end method
