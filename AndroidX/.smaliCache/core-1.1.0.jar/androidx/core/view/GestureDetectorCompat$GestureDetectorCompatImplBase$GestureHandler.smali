.class Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase$GestureHandler;
.super Landroid/os/Handler;
.source "GestureDetectorCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GestureHandler"
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;


# direct methods
.method constructor <init>(Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;)V
    .registers 2

    .line 103
    iput-object p1, p0, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase$GestureHandler;->this$0:Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;

    .line 104
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 105
    return-void
.end method

.method constructor <init>(Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;Landroid/os/Handler;)V
    .registers 3
    .param p2, "handler"    # Landroid/os/Handler;

    .line 107
    iput-object p1, p0, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase$GestureHandler;->this$0:Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;

    .line 108
    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 109
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5
    .param p1, "msg"    # Landroid/os/Message;

    .line 113
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_50

    .line 134
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

    .line 124
    :pswitch_1e
    iget-object v0, p0, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase$GestureHandler;->this$0:Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;

    iget-object v0, v0, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mDoubleTapListener:Landroid/view/GestureDetector$OnDoubleTapListener;

    if-eqz v0, :cond_4e

    .line 125
    iget-object v0, p0, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase$GestureHandler;->this$0:Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;

    iget-boolean v0, v0, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mStillDown:Z

    if-nez v0, :cond_36

    .line 126
    iget-object v0, p0, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase$GestureHandler;->this$0:Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;

    iget-object v0, v0, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mDoubleTapListener:Landroid/view/GestureDetector$OnDoubleTapListener;

    iget-object v1, p0, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase$GestureHandler;->this$0:Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;

    iget-object v1, v1, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mCurrentDownEvent:Landroid/view/MotionEvent;

    invoke-interface {v0, v1}, Landroid/view/GestureDetector$OnDoubleTapListener;->onSingleTapConfirmed(Landroid/view/MotionEvent;)Z

    goto :goto_4e

    .line 128
    :cond_36
    iget-object v0, p0, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase$GestureHandler;->this$0:Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mDeferConfirmSingleTap:Z

    goto :goto_4e

    .line 119
    :pswitch_3c
    iget-object v0, p0, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase$GestureHandler;->this$0:Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;

    invoke-virtual {v0}, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->dispatchLongPress()V

    .line 120
    goto :goto_4e

    .line 115
    :pswitch_42
    iget-object v0, p0, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase$GestureHandler;->this$0:Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;

    iget-object v0, v0, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mListener:Landroid/view/GestureDetector$OnGestureListener;

    iget-object v1, p0, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase$GestureHandler;->this$0:Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;

    iget-object v1, v1, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mCurrentDownEvent:Landroid/view/MotionEvent;

    invoke-interface {v0, v1}, Landroid/view/GestureDetector$OnGestureListener;->onShowPress(Landroid/view/MotionEvent;)V

    .line 116
    nop

    .line 136
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
