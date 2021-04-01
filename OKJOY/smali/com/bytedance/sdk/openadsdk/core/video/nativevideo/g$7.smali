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

    .prologue
    .line 262
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g$7;->a:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 8
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 268
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    .line 269
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v3

    packed-switch v3, :pswitch_data_3a

    .line 283
    :goto_d
    return v1

    .line 271
    :pswitch_e
    iput v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g$7;->b:F

    goto :goto_d

    .line 274
    :pswitch_11
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    invoke-interface {v2, v0}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_d

    .line 277
    :pswitch_19
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g$7;->a:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;

    iget v3, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g$7;->b:F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    const/high16 v4, 0x41200000    # 10.0f

    cmpg-float v3, v3, v4

    if-gez v3, :cond_30

    :goto_2c
    invoke-static {v2, v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->a(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;Z)Z

    goto :goto_d

    :cond_30
    move v0, v1

    goto :goto_2c

    .line 280
    :pswitch_32
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_d

    .line 269
    :pswitch_data_3a
    .packed-switch 0x0
        :pswitch_e
        :pswitch_19
        :pswitch_11
        :pswitch_32
    .end packed-switch
.end method
