.class public Lcom/bytedance/sdk/openadsdk/core/video/renderview/SSSurfaceView;
.super Landroid/view/SurfaceView;
.source "SSSurfaceView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 11
    invoke-direct {p0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    .line 12
    return-void
.end method


# virtual methods
.method protected onWindowVisibilityChanged(I)V
    .registers 2

    .line 25
    if-nez p1, :cond_5

    .line 26
    invoke-super {p0, p1}, Landroid/view/SurfaceView;->onWindowVisibilityChanged(I)V

    .line 28
    :cond_5
    return-void
.end method
