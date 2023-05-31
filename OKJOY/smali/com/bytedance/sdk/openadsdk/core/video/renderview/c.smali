.class public Lcom/bytedance/sdk/openadsdk/core/video/renderview/c;
.super Ljava/lang/Object;
.source "WeakSurfaceCallback.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# instance fields
.field private final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/SurfaceHolder$Callback;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/SurfaceHolder$Callback;)V
    .registers 3

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/renderview/c;->a:Ljava/lang/ref/WeakReference;

    .line 13
    return-void
.end method


# virtual methods
.method public a()Landroid/view/SurfaceHolder$Callback;
    .registers 2

    .prologue
    .line 16
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/renderview/c;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceHolder$Callback;

    return-object v0
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .registers 6

    .prologue
    .line 29
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/renderview/c;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceHolder$Callback;

    .line 30
    if-eqz v0, :cond_d

    .line 31
    invoke-interface {v0, p1, p2, p3, p4}, Landroid/view/SurfaceHolder$Callback;->surfaceChanged(Landroid/view/SurfaceHolder;III)V

    .line 33
    :cond_d
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .registers 3

    .prologue
    .line 21
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/renderview/c;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceHolder$Callback;

    .line 22
    if-eqz v0, :cond_d

    .line 23
    invoke-interface {v0, p1}, Landroid/view/SurfaceHolder$Callback;->surfaceCreated(Landroid/view/SurfaceHolder;)V

    .line 25
    :cond_d
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .registers 3

    .prologue
    .line 37
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/renderview/c;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceHolder$Callback;

    .line 38
    if-eqz v0, :cond_d

    .line 39
    invoke-interface {v0, p1}, Landroid/view/SurfaceHolder$Callback;->surfaceDestroyed(Landroid/view/SurfaceHolder;)V

    .line 41
    :cond_d
    return-void
.end method
