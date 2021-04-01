.class public final Lcom/mintegral/msdk/b/a/a;
.super Ljava/lang/Object;
.source "PreloadListenerEx.java"

# interfaces
.implements Lcom/mintegral/msdk/out/PreloadListener;


# instance fields
.field a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/mintegral/msdk/out/PreloadListener;",
            ">;"
        }
    .end annotation
.end field

.field private b:Z

.field private c:I


# direct methods
.method public constructor <init>(Lcom/mintegral/msdk/out/PreloadListener;)V
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-boolean v0, p0, Lcom/mintegral/msdk/b/a/a;->b:Z

    .line 20
    iput v0, p0, Lcom/mintegral/msdk/b/a/a;->c:I

    .line 41
    if-eqz p1, :cond_11

    .line 42
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/mintegral/msdk/b/a/a;->a:Ljava/lang/ref/WeakReference;

    .line 44
    :cond_11
    return-void
.end method


# virtual methods
.method public final a()Z
    .registers 2

    .prologue
    .line 33
    iget-boolean v0, p0, Lcom/mintegral/msdk/b/a/a;->b:Z

    return v0
.end method

.method public final b()V
    .registers 2

    .prologue
    .line 37
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mintegral/msdk/b/a/a;->b:Z

    .line 38
    return-void
.end method

.method public final onPreloadFaild(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 55
    iget-object v0, p0, Lcom/mintegral/msdk/b/a/a;->a:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/mintegral/msdk/b/a/a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_17

    .line 56
    iget-object v0, p0, Lcom/mintegral/msdk/b/a/a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mintegral/msdk/out/PreloadListener;

    invoke-interface {v0, p1}, Lcom/mintegral/msdk/out/PreloadListener;->onPreloadFaild(Ljava/lang/String;)V

    .line 58
    :cond_17
    return-void
.end method

.method public final onPreloadSucceed()V
    .registers 2

    .prologue
    .line 48
    iget-object v0, p0, Lcom/mintegral/msdk/b/a/a;->a:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/mintegral/msdk/b/a/a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_17

    .line 49
    iget-object v0, p0, Lcom/mintegral/msdk/b/a/a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mintegral/msdk/out/PreloadListener;

    invoke-interface {v0}, Lcom/mintegral/msdk/out/PreloadListener;->onPreloadSucceed()V

    .line 51
    :cond_17
    return-void
.end method
