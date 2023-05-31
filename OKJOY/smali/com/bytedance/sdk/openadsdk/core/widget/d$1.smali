.class Lcom/bytedance/sdk/openadsdk/core/widget/d$1;
.super Ljava/lang/Object;
.source "VideoOnTouchLayout.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/core/widget/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/core/widget/d;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/widget/d;)V
    .registers 2

    .prologue
    .line 62
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/d$1;->a:Lcom/bytedance/sdk/openadsdk/core/widget/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 11
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/high16 v7, 0x41a00000    # 20.0f

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 66
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/widget/d$1;->a:Lcom/bytedance/sdk/openadsdk/core/widget/d;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/widget/d;->a(Lcom/bytedance/sdk/openadsdk/core/widget/d;)Lcom/bytedance/sdk/openadsdk/core/widget/d$a;

    move-result-object v2

    invoke-interface {v2}, Lcom/bytedance/sdk/openadsdk/core/widget/d$a;->m()Z

    move-result v2

    if-eqz v2, :cond_23

    .line 67
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/widget/d$1;->a:Lcom/bytedance/sdk/openadsdk/core/widget/d;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/widget/d;->b(Lcom/bytedance/sdk/openadsdk/core/widget/d;)Z

    move-result v2

    if-nez v2, :cond_21

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/widget/d$1;->a:Lcom/bytedance/sdk/openadsdk/core/widget/d;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/widget/d;->c(Lcom/bytedance/sdk/openadsdk/core/widget/d;)Z

    move-result v2

    if-nez v2, :cond_22

    :cond_21
    move v0, v1

    .line 131
    :cond_22
    :goto_22
    return v0

    .line 69
    :cond_23
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    .line 70
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    .line 71
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    packed-switch v4, :pswitch_data_156

    .line 131
    :cond_32
    :goto_32
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/widget/d$1;->a:Lcom/bytedance/sdk/openadsdk/core/widget/d;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/widget/d;->b(Lcom/bytedance/sdk/openadsdk/core/widget/d;)Z

    move-result v2

    if-nez v2, :cond_42

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/widget/d$1;->a:Lcom/bytedance/sdk/openadsdk/core/widget/d;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/widget/d;->c(Lcom/bytedance/sdk/openadsdk/core/widget/d;)Z

    move-result v2

    if-nez v2, :cond_22

    :cond_42
    move v0, v1

    goto :goto_22

    .line 73
    :pswitch_44
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/widget/d$1;->a:Lcom/bytedance/sdk/openadsdk/core/widget/d;

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/widget/d$1;->a:Lcom/bytedance/sdk/openadsdk/core/widget/d;

    invoke-static {v5, p2}, Lcom/bytedance/sdk/openadsdk/core/widget/d;->a(Lcom/bytedance/sdk/openadsdk/core/widget/d;Landroid/view/MotionEvent;)Z

    move-result v5

    invoke-static {v4, v5}, Lcom/bytedance/sdk/openadsdk/core/widget/d;->a(Lcom/bytedance/sdk/openadsdk/core/widget/d;Z)Z

    .line 74
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/widget/d$1;->a:Lcom/bytedance/sdk/openadsdk/core/widget/d;

    invoke-static {v4, v2}, Lcom/bytedance/sdk/openadsdk/core/widget/d;->a(Lcom/bytedance/sdk/openadsdk/core/widget/d;F)F

    .line 75
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/widget/d$1;->a:Lcom/bytedance/sdk/openadsdk/core/widget/d;

    invoke-static {v4, v3}, Lcom/bytedance/sdk/openadsdk/core/widget/d;->b(Lcom/bytedance/sdk/openadsdk/core/widget/d;F)F

    .line 76
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/widget/d$1;->a:Lcom/bytedance/sdk/openadsdk/core/widget/d;

    float-to-int v2, v2

    invoke-static {v4, v2}, Lcom/bytedance/sdk/openadsdk/core/widget/d;->a(Lcom/bytedance/sdk/openadsdk/core/widget/d;I)I

    .line 77
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/widget/d$1;->a:Lcom/bytedance/sdk/openadsdk/core/widget/d;

    float-to-int v3, v3

    invoke-static {v2, v3}, Lcom/bytedance/sdk/openadsdk/core/widget/d;->b(Lcom/bytedance/sdk/openadsdk/core/widget/d;I)I

    .line 78
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/widget/d$1;->a:Lcom/bytedance/sdk/openadsdk/core/widget/d;

    invoke-static {v2, v1}, Lcom/bytedance/sdk/openadsdk/core/widget/d;->b(Lcom/bytedance/sdk/openadsdk/core/widget/d;Z)Z

    .line 80
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/widget/d$1;->a:Lcom/bytedance/sdk/openadsdk/core/widget/d;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/widget/d;->a(Lcom/bytedance/sdk/openadsdk/core/widget/d;)Lcom/bytedance/sdk/openadsdk/core/widget/d$a;

    move-result-object v2

    if-eqz v2, :cond_32

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/widget/d$1;->a:Lcom/bytedance/sdk/openadsdk/core/widget/d;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/widget/d;->c(Lcom/bytedance/sdk/openadsdk/core/widget/d;)Z

    move-result v2

    if-eqz v2, :cond_32

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/widget/d$1;->a:Lcom/bytedance/sdk/openadsdk/core/widget/d;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/widget/d;->b(Lcom/bytedance/sdk/openadsdk/core/widget/d;)Z

    move-result v2

    if-nez v2, :cond_32

    .line 81
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/widget/d$1;->a:Lcom/bytedance/sdk/openadsdk/core/widget/d;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/widget/d;->a(Lcom/bytedance/sdk/openadsdk/core/widget/d;)Lcom/bytedance/sdk/openadsdk/core/widget/d$a;

    move-result-object v2

    invoke-interface {v2, p1, v1}, Lcom/bytedance/sdk/openadsdk/core/widget/d$a;->a(Landroid/view/View;Z)V

    goto :goto_32

    .line 85
    :pswitch_8c
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/widget/d$1;->a:Lcom/bytedance/sdk/openadsdk/core/widget/d;

    invoke-static {v4}, Lcom/bytedance/sdk/openadsdk/core/widget/d;->b(Lcom/bytedance/sdk/openadsdk/core/widget/d;)Z

    move-result v4

    if-eqz v4, :cond_32

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/widget/d$1;->a:Lcom/bytedance/sdk/openadsdk/core/widget/d;

    invoke-static {v4}, Lcom/bytedance/sdk/openadsdk/core/widget/d;->d(Lcom/bytedance/sdk/openadsdk/core/widget/d;)Z

    move-result v4

    if-nez v4, :cond_32

    .line 88
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/widget/d$1;->a:Lcom/bytedance/sdk/openadsdk/core/widget/d;

    invoke-static {v4}, Lcom/bytedance/sdk/openadsdk/core/widget/d;->e(Lcom/bytedance/sdk/openadsdk/core/widget/d;)F

    move-result v4

    sub-float v4, v2, v4

    .line 89
    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/widget/d$1;->a:Lcom/bytedance/sdk/openadsdk/core/widget/d;

    invoke-static {v5}, Lcom/bytedance/sdk/openadsdk/core/widget/d;->f(Lcom/bytedance/sdk/openadsdk/core/widget/d;)F

    move-result v5

    sub-float v5, v3, v5

    .line 90
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    .line 91
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    .line 93
    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/core/widget/d$1;->a:Lcom/bytedance/sdk/openadsdk/core/widget/d;

    invoke-static {v6}, Lcom/bytedance/sdk/openadsdk/core/widget/d;->g(Lcom/bytedance/sdk/openadsdk/core/widget/d;)Z

    move-result v6

    if-nez v6, :cond_c9

    .line 94
    cmpl-float v4, v4, v7

    if-gtz v4, :cond_c4

    cmpl-float v4, v5, v7

    if-lez v4, :cond_e6

    .line 95
    :cond_c4
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/widget/d$1;->a:Lcom/bytedance/sdk/openadsdk/core/widget/d;

    invoke-static {v4, v1}, Lcom/bytedance/sdk/openadsdk/core/widget/d;->c(Lcom/bytedance/sdk/openadsdk/core/widget/d;Z)Z

    .line 101
    :cond_c9
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/widget/d$1;->a:Lcom/bytedance/sdk/openadsdk/core/widget/d;

    invoke-static {v4}, Lcom/bytedance/sdk/openadsdk/core/widget/d;->a(Lcom/bytedance/sdk/openadsdk/core/widget/d;)Lcom/bytedance/sdk/openadsdk/core/widget/d$a;

    move-result-object v4

    if-eqz v4, :cond_da

    .line 102
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/widget/d$1;->a:Lcom/bytedance/sdk/openadsdk/core/widget/d;

    invoke-static {v4}, Lcom/bytedance/sdk/openadsdk/core/widget/d;->a(Lcom/bytedance/sdk/openadsdk/core/widget/d;)Lcom/bytedance/sdk/openadsdk/core/widget/d$a;

    move-result-object v4

    invoke-interface {v4}, Lcom/bytedance/sdk/openadsdk/core/widget/d$a;->l()V

    .line 104
    :cond_da
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/widget/d$1;->a:Lcom/bytedance/sdk/openadsdk/core/widget/d;

    invoke-static {v4, v2}, Lcom/bytedance/sdk/openadsdk/core/widget/d;->a(Lcom/bytedance/sdk/openadsdk/core/widget/d;F)F

    .line 105
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/widget/d$1;->a:Lcom/bytedance/sdk/openadsdk/core/widget/d;

    invoke-static {v2, v3}, Lcom/bytedance/sdk/openadsdk/core/widget/d;->b(Lcom/bytedance/sdk/openadsdk/core/widget/d;F)F

    goto/16 :goto_32

    :cond_e6
    move v0, v1

    .line 97
    goto/16 :goto_22

    .line 108
    :pswitch_e9
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/widget/d$1;->a:Lcom/bytedance/sdk/openadsdk/core/widget/d;

    invoke-static {v4}, Lcom/bytedance/sdk/openadsdk/core/widget/d;->h(Lcom/bytedance/sdk/openadsdk/core/widget/d;)I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v2, v4

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpl-float v2, v2, v7

    if-gtz v2, :cond_10a

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/widget/d$1;->a:Lcom/bytedance/sdk/openadsdk/core/widget/d;

    .line 109
    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/widget/d;->i(Lcom/bytedance/sdk/openadsdk/core/widget/d;)I

    move-result v2

    int-to-float v2, v2

    sub-float v2, v3, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpl-float v2, v2, v7

    if-lez v2, :cond_10f

    .line 110
    :cond_10a
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/widget/d$1;->a:Lcom/bytedance/sdk/openadsdk/core/widget/d;

    invoke-static {v2, v0}, Lcom/bytedance/sdk/openadsdk/core/widget/d;->b(Lcom/bytedance/sdk/openadsdk/core/widget/d;Z)Z

    .line 112
    :cond_10f
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/widget/d$1;->a:Lcom/bytedance/sdk/openadsdk/core/widget/d;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/widget/d;->b(Lcom/bytedance/sdk/openadsdk/core/widget/d;)Z

    move-result v2

    if-nez v2, :cond_11c

    .line 113
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/widget/d$1;->a:Lcom/bytedance/sdk/openadsdk/core/widget/d;

    invoke-static {v2, v1}, Lcom/bytedance/sdk/openadsdk/core/widget/d;->b(Lcom/bytedance/sdk/openadsdk/core/widget/d;Z)Z

    .line 115
    :cond_11c
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/widget/d$1;->a:Lcom/bytedance/sdk/openadsdk/core/widget/d;

    invoke-static {v2, v0}, Lcom/bytedance/sdk/openadsdk/core/widget/d;->c(Lcom/bytedance/sdk/openadsdk/core/widget/d;Z)Z

    .line 116
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/widget/d$1;->a:Lcom/bytedance/sdk/openadsdk/core/widget/d;

    invoke-static {v2, v5}, Lcom/bytedance/sdk/openadsdk/core/widget/d;->a(Lcom/bytedance/sdk/openadsdk/core/widget/d;F)F

    .line 117
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/widget/d$1;->a:Lcom/bytedance/sdk/openadsdk/core/widget/d;

    invoke-static {v2, v5}, Lcom/bytedance/sdk/openadsdk/core/widget/d;->b(Lcom/bytedance/sdk/openadsdk/core/widget/d;F)F

    .line 118
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/widget/d$1;->a:Lcom/bytedance/sdk/openadsdk/core/widget/d;

    invoke-static {v2, v0}, Lcom/bytedance/sdk/openadsdk/core/widget/d;->a(Lcom/bytedance/sdk/openadsdk/core/widget/d;I)I

    .line 120
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/widget/d$1;->a:Lcom/bytedance/sdk/openadsdk/core/widget/d;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/widget/d;->a(Lcom/bytedance/sdk/openadsdk/core/widget/d;)Lcom/bytedance/sdk/openadsdk/core/widget/d$a;

    move-result-object v2

    if-eqz v2, :cond_147

    .line 121
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/widget/d$1;->a:Lcom/bytedance/sdk/openadsdk/core/widget/d;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/widget/d;->a(Lcom/bytedance/sdk/openadsdk/core/widget/d;)Lcom/bytedance/sdk/openadsdk/core/widget/d$a;

    move-result-object v2

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/widget/d$1;->a:Lcom/bytedance/sdk/openadsdk/core/widget/d;

    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/core/widget/d;->j(Lcom/bytedance/sdk/openadsdk/core/widget/d;)Z

    move-result v3

    invoke-interface {v2, p1, v3}, Lcom/bytedance/sdk/openadsdk/core/widget/d$a;->a(Landroid/view/View;Z)V

    .line 123
    :cond_147
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/widget/d$1;->a:Lcom/bytedance/sdk/openadsdk/core/widget/d;

    invoke-static {v2, v0}, Lcom/bytedance/sdk/openadsdk/core/widget/d;->a(Lcom/bytedance/sdk/openadsdk/core/widget/d;Z)Z

    goto/16 :goto_32

    .line 126
    :pswitch_14e
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/widget/d$1;->a:Lcom/bytedance/sdk/openadsdk/core/widget/d;

    invoke-static {v2, v0}, Lcom/bytedance/sdk/openadsdk/core/widget/d;->a(Lcom/bytedance/sdk/openadsdk/core/widget/d;Z)Z

    goto/16 :goto_32

    .line 71
    nop

    :pswitch_data_156
    .packed-switch 0x0
        :pswitch_44
        :pswitch_e9
        :pswitch_8c
        :pswitch_14e
    .end packed-switch
.end method
