.class Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g$7;
.super Ljava/lang/Object;
.source "NativeVideoDetailLayout.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;

.field private b:F


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;)V
    .registers 2

    .line 261
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g$7;->a:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 7

    .line 267
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 268
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    packed-switch v1, :pswitch_data_3c

    goto :goto_3a

    .line 279
    :pswitch_e
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    invoke-interface {p1, v3}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_3a

    .line 273
    :pswitch_16
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    invoke-interface {p1, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 274
    goto :goto_3a

    .line 276
    :pswitch_1e
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g$7;->a:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g$7;->b:F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p2

    sub-float/2addr v0, p2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result p2

    const/high16 v0, 0x41200000    # 10.0f

    cmpg-float p2, p2, v0

    if-gez p2, :cond_32

    goto :goto_33

    :cond_32
    move v2, v3

    :goto_33
    invoke-static {p1, v2}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->a(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;Z)Z

    .line 277
    goto :goto_3a

    .line 270
    :pswitch_37
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g$7;->b:F

    .line 271
    nop

    .line 282
    :goto_3a
    return v3

    nop

    :pswitch_data_3c
    .packed-switch 0x0
        :pswitch_37
        :pswitch_1e
        :pswitch_16
        :pswitch_e
    .end packed-switch
.end method
