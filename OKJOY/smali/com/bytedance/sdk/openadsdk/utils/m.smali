.class public Lcom/bytedance/sdk/openadsdk/utils/m;
.super Landroid/view/TouchDelegate;
.source "HackTouchDelegate.java"


# instance fields
.field private a:Landroid/view/View;

.field private b:Landroid/graphics/Rect;

.field private c:Landroid/graphics/Rect;

.field private d:Z

.field private e:I


# direct methods
.method public constructor <init>(Landroid/graphics/Rect;Landroid/view/View;)V
    .registers 6

    .prologue
    .line 80
    invoke-direct {p0, p1, p2}, Landroid/view/TouchDelegate;-><init>(Landroid/graphics/Rect;Landroid/view/View;)V

    .line 81
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/utils/m;->b:Landroid/graphics/Rect;

    .line 83
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/utils/m;->e:I

    .line 84
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/utils/m;->c:Landroid/graphics/Rect;

    .line 85
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/utils/m;->c:Landroid/graphics/Rect;

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/utils/m;->e:I

    neg-int v1, v1

    iget v2, p0, Lcom/bytedance/sdk/openadsdk/utils/m;->e:I

    neg-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->inset(II)V

    .line 86
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/utils/m;->a:Landroid/view/View;

    .line 87
    return-void
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 8

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 97
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v3, v2

    .line 98
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v4, v2

    .line 103
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_68

    move v2, v1

    .line 132
    :cond_14
    :goto_14
    if-eqz v2, :cond_35

    .line 133
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/utils/m;->a:Landroid/view/View;

    .line 135
    if-eqz v0, :cond_59

    .line 137
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-virtual {p1, v0, v3}, Landroid/view/MotionEvent;->setLocation(FF)V

    .line 144
    :goto_2b
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_35

    .line 145
    invoke-virtual {v2, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    .line 148
    :cond_35
    return v1

    .line 105
    :pswitch_36
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/utils/m;->b:Landroid/graphics/Rect;

    .line 107
    invoke-virtual {v2, v3, v4}, Landroid/graphics/Rect;->contains(II)Z

    move-result v2

    if-eqz v2, :cond_42

    .line 108
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/utils/m;->d:Z

    move v2, v0

    .line 109
    goto :goto_14

    .line 113
    :cond_42
    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/utils/m;->d:Z

    move v2, v1

    .line 116
    goto :goto_14

    .line 119
    :pswitch_46
    iget-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/utils/m;->d:Z

    .line 120
    if-eqz v2, :cond_14

    .line 121
    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/utils/m;->c:Landroid/graphics/Rect;

    .line 122
    invoke-virtual {v5, v3, v4}, Landroid/graphics/Rect;->contains(II)Z

    move-result v3

    if-nez v3, :cond_14

    move v0, v1

    .line 123
    goto :goto_14

    .line 128
    :pswitch_54
    iget-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/utils/m;->d:Z

    .line 129
    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/utils/m;->d:Z

    goto :goto_14

    .line 141
    :cond_59
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/utils/m;->e:I

    .line 142
    mul-int/lit8 v3, v0, 0x2

    neg-int v3, v3

    int-to-float v3, v3

    mul-int/lit8 v0, v0, 0x2

    neg-int v0, v0

    int-to-float v0, v0

    invoke-virtual {p1, v3, v0}, Landroid/view/MotionEvent;->setLocation(FF)V

    goto :goto_2b

    .line 103
    nop

    :pswitch_data_68
    .packed-switch 0x0
        :pswitch_36
        :pswitch_46
        :pswitch_46
        :pswitch_54
    .end packed-switch
.end method
