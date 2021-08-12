.class public Lcom/bytedance/sdk/openadsdk/utils/n;
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
    .registers 5

    .line 80
    invoke-direct {p0, p1, p2}, Landroid/view/TouchDelegate;-><init>(Landroid/graphics/Rect;Landroid/view/View;)V

    .line 81
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/utils/n;->b:Landroid/graphics/Rect;

    .line 83
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/utils/n;->e:I

    .line 84
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/utils/n;->c:Landroid/graphics/Rect;

    .line 85
    iget p1, p0, Lcom/bytedance/sdk/openadsdk/utils/n;->e:I

    neg-int v1, p1

    neg-int p1, p1

    invoke-virtual {v0, v1, p1}, Landroid/graphics/Rect;->inset(II)V

    .line 86
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/utils/n;->a:Landroid/view/View;

    .line 87
    return-void
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 9

    .line 97
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 98
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    .line 99
    nop

    .line 100
    nop

    .line 101
    nop

    .line 103
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    packed-switch v2, :pswitch_data_72

    move v0, v3

    move v3, v4

    goto :goto_45

    .line 128
    :pswitch_19
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/utils/n;->d:Z

    .line 129
    iput-boolean v4, p0, Lcom/bytedance/sdk/openadsdk/utils/n;->d:Z

    move v6, v3

    move v3, v0

    move v0, v6

    goto :goto_45

    .line 119
    :pswitch_21
    iget-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/utils/n;->d:Z

    .line 120
    if-eqz v2, :cond_31

    .line 121
    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/utils/n;->c:Landroid/graphics/Rect;

    .line 122
    invoke-virtual {v5, v0, v1}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-nez v0, :cond_2e

    .line 123
    move v3, v4

    .line 125
    :cond_2e
    move v0, v3

    move v3, v2

    goto :goto_45

    .line 120
    :cond_31
    move v0, v3

    move v3, v2

    goto :goto_45

    .line 105
    :pswitch_34
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/utils/n;->b:Landroid/graphics/Rect;

    .line 107
    invoke-virtual {v2, v0, v1}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-eqz v0, :cond_40

    .line 108
    iput-boolean v3, p0, Lcom/bytedance/sdk/openadsdk/utils/n;->d:Z

    .line 109
    move v0, v3

    goto :goto_45

    .line 113
    :cond_40
    iput-boolean v4, p0, Lcom/bytedance/sdk/openadsdk/utils/n;->d:Z

    .line 114
    nop

    .line 116
    move v0, v3

    move v3, v4

    .line 132
    :goto_45
    if-eqz v3, :cond_70

    .line 133
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/utils/n;->a:Landroid/view/View;

    .line 135
    if-eqz v0, :cond_5d

    .line 137
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {p1, v0, v2}, Landroid/view/MotionEvent;->setLocation(FF)V

    goto :goto_66

    .line 141
    :cond_5d
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/utils/n;->e:I

    .line 142
    mul-int/lit8 v0, v0, 0x2

    neg-int v0, v0

    int-to-float v0, v0

    invoke-virtual {p1, v0, v0}, Landroid/view/MotionEvent;->setLocation(FF)V

    .line 144
    :goto_66
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_70

    .line 145
    invoke-virtual {v1, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    .line 148
    :cond_70
    return v4

    nop

    :pswitch_data_72
    .packed-switch 0x0
        :pswitch_34
        :pswitch_21
        :pswitch_21
        :pswitch_19
    .end packed-switch
.end method
