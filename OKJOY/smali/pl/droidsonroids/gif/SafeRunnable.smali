.class abstract Lpl/droidsonroids/gif/SafeRunnable;
.super Ljava/lang/Object;
.source "SafeRunnable.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final mGifDrawable:Lpl/droidsonroids/gif/GifDrawable;


# direct methods
.method constructor <init>(Lpl/droidsonroids/gif/GifDrawable;)V
    .registers 2
    .param p1, "gifDrawable"    # Lpl/droidsonroids/gif/GifDrawable;

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lpl/droidsonroids/gif/SafeRunnable;->mGifDrawable:Lpl/droidsonroids/gif/GifDrawable;

    .line 12
    return-void
.end method


# virtual methods
.method abstract doWork()V
.end method

.method public final run()V
    .registers 4

    .prologue
    .line 17
    :try_start_0
    iget-object v2, p0, Lpl/droidsonroids/gif/SafeRunnable;->mGifDrawable:Lpl/droidsonroids/gif/GifDrawable;

    invoke-virtual {v2}, Lpl/droidsonroids/gif/GifDrawable;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_b

    .line 18
    invoke-virtual {p0}, Lpl/droidsonroids/gif/SafeRunnable;->doWork()V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_b} :catch_c

    .line 27
    :cond_b
    return-void

    .line 20
    :catch_c
    move-exception v0

    .line 21
    .local v0, "throwable":Ljava/lang/Throwable;
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v1

    .line 22
    .local v1, "uncaughtExceptionHandler":Ljava/lang/Thread$UncaughtExceptionHandler;
    if-eqz v1, :cond_1a

    .line 23
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 25
    :cond_1a
    throw v0
.end method
