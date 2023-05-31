.class Lpl/droidsonroids/gif/InvalidationHandler;
.super Landroid/os/Handler;
.source "InvalidationHandler.java"


# static fields
.field static final MSG_TYPE_INVALIDATION:I = -0x1


# instance fields
.field private final mDrawableRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lpl/droidsonroids/gif/GifDrawable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lpl/droidsonroids/gif/GifDrawable;)V
    .registers 3
    .param p1, "gifDrawable"    # Lpl/droidsonroids/gif/GifDrawable;

    .prologue
    .line 16
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 17
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lpl/droidsonroids/gif/InvalidationHandler;->mDrawableRef:Ljava/lang/ref/WeakReference;

    .line 18
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 22
    iget-object v2, p0, Lpl/droidsonroids/gif/InvalidationHandler;->mDrawableRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/droidsonroids/gif/GifDrawable;

    .line 23
    .local v0, "gifDrawable":Lpl/droidsonroids/gif/GifDrawable;
    if-nez v0, :cond_b

    .line 33
    :cond_a
    :goto_a
    return-void

    .line 26
    :cond_b
    iget v2, p1, Landroid/os/Message;->what:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_14

    .line 27
    invoke-virtual {v0}, Lpl/droidsonroids/gif/GifDrawable;->invalidateSelf()V

    goto :goto_a

    .line 29
    :cond_14
    iget-object v2, v0, Lpl/droidsonroids/gif/GifDrawable;->mListeners:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lpl/droidsonroids/gif/AnimationListener;

    .line 30
    .local v1, "listener":Lpl/droidsonroids/gif/AnimationListener;
    iget v3, p1, Landroid/os/Message;->what:I

    invoke-interface {v1, v3}, Lpl/droidsonroids/gif/AnimationListener;->onAnimationCompleted(I)V

    goto :goto_1a
.end method
