.class public Lcom/bytedance/sdk/openadsdk/core/video/renderview/SSRenderSurfaceView;
.super Lcom/bytedance/sdk/openadsdk/core/video/renderview/SSSurfaceView;
.source "SSRenderSurfaceView.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;
.implements Lcom/bytedance/sdk/openadsdk/core/video/renderview/b;


# static fields
.field private static final c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/bytedance/sdk/openadsdk/core/video/renderview/c;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/bytedance/sdk/openadsdk/core/video/renderview/a;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lcom/bytedance/sdk/openadsdk/core/video/renderview/c;

.field private d:Lcom/bytedance/sdk/openadsdk/core/video/renderview/b$a;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/bytedance/sdk/openadsdk/core/video/renderview/SSRenderSurfaceView;->c:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 22
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/video/renderview/SSSurfaceView;-><init>(Landroid/content/Context;)V

    .line 23
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/renderview/SSRenderSurfaceView;->a()V

    .line 24
    return-void
.end method

.method private a()V
    .registers 3

    .line 37
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/video/renderview/c;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/video/renderview/c;-><init>(Landroid/view/SurfaceHolder$Callback;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/renderview/SSRenderSurfaceView;->b:Lcom/bytedance/sdk/openadsdk/core/video/renderview/c;

    .line 38
    sget-object v1, Lcom/bytedance/sdk/openadsdk/core/video/renderview/SSRenderSurfaceView;->c:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 39
    return-void
.end method


# virtual methods
.method public a(II)V
    .registers 4

    .line 62
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/renderview/SSRenderSurfaceView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 63
    iput p2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 64
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 65
    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/video/renderview/SSRenderSurfaceView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 66
    return-void
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/core/video/renderview/a;)V
    .registers 5

    .line 43
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/renderview/SSRenderSurfaceView;->a:Ljava/lang/ref/WeakReference;

    .line 45
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/renderview/SSRenderSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p1

    .line 46
    const/4 v0, -0x3

    invoke-interface {p1, v0}, Landroid/view/SurfaceHolder;->setFormat(I)V

    .line 48
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/video/renderview/SSRenderSurfaceView;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 49
    :goto_15
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 50
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/sdk/openadsdk/core/video/renderview/c;

    .line 51
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/video/renderview/c;->a()Landroid/view/SurfaceHolder$Callback;

    move-result-object v2

    .line 52
    if-nez v2, :cond_2d

    .line 53
    invoke-interface {p1, v1}, Landroid/view/SurfaceHolder;->removeCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 54
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 56
    :cond_2d
    goto :goto_15

    .line 57
    :cond_2e
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/renderview/SSRenderSurfaceView;->b:Lcom/bytedance/sdk/openadsdk/core/video/renderview/c;

    invoke-interface {p1, v0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 58
    return-void
.end method

.method public getView()Landroid/view/View;
    .registers 1

    .line 70
    return-object p0
.end method

.method protected onWindowVisibilityChanged(I)V
    .registers 3

    .line 98
    invoke-super {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/video/renderview/SSSurfaceView;->onWindowVisibilityChanged(I)V

    .line 99
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/renderview/SSRenderSurfaceView;->d:Lcom/bytedance/sdk/openadsdk/core/video/renderview/b$a;

    if-eqz v0, :cond_a

    .line 100
    invoke-interface {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/video/renderview/b$a;->a(I)V

    .line 102
    :cond_a
    return-void
.end method

.method public setWindowVisibilityChangedListener(Lcom/bytedance/sdk/openadsdk/core/video/renderview/b$a;)V
    .registers 2

    .line 106
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/renderview/SSRenderSurfaceView;->d:Lcom/bytedance/sdk/openadsdk/core/video/renderview/b$a;

    .line 107
    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .registers 6

    .line 82
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/renderview/SSRenderSurfaceView;->a:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_15

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 83
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/renderview/SSRenderSurfaceView;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/video/renderview/a;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/bytedance/sdk/openadsdk/core/video/renderview/a;->a(Landroid/view/SurfaceHolder;III)V

    .line 85
    :cond_15
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .registers 3

    .line 75
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/renderview/SSRenderSurfaceView;->a:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_15

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 76
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/renderview/SSRenderSurfaceView;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/video/renderview/a;

    invoke-interface {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/video/renderview/a;->a(Landroid/view/SurfaceHolder;)V

    .line 78
    :cond_15
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .registers 3

    .line 89
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/renderview/SSRenderSurfaceView;->a:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_15

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 90
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/renderview/SSRenderSurfaceView;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/video/renderview/a;

    invoke-interface {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/video/renderview/a;->b(Landroid/view/SurfaceHolder;)V

    .line 92
    :cond_15
    return-void
.end method
