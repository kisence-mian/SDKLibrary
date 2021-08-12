.class Lcom/bytedance/sdk/openadsdk/core/widget/g$1;
.super Ljava/lang/Object;
.source "VideoOnTouchLayout.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/core/widget/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/core/widget/g;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/widget/g;)V
    .registers 2

    .line 62
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/g$1;->a:Lcom/bytedance/sdk/openadsdk/core/widget/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 9

    .line 66
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/g$1;->a:Lcom/bytedance/sdk/openadsdk/core/widget/g;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/widget/g;->a(Lcom/bytedance/sdk/openadsdk/core/widget/g;)Lcom/bytedance/sdk/openadsdk/core/widget/g$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/widget/g$a;->m()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_20

    .line 67
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/g$1;->a:Lcom/bytedance/sdk/openadsdk/core/widget/g;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/widget/g;->b(Lcom/bytedance/sdk/openadsdk/core/widget/g;)Z

    move-result p1

    if-nez p1, :cond_1e

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/g$1;->a:Lcom/bytedance/sdk/openadsdk/core/widget/g;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/widget/g;->c(Lcom/bytedance/sdk/openadsdk/core/widget/g;)Z

    move-result p1

    if-nez p1, :cond_1f

    :cond_1e
    move v1, v2

    :cond_1f
    return v1

    .line 69
    :cond_20
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 70
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    .line 71
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    const/high16 v5, 0x41a00000    # 20.0f

    packed-switch v4, :pswitch_data_154

    goto/16 :goto_141

    .line 126
    :pswitch_33
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/g$1;->a:Lcom/bytedance/sdk/openadsdk/core/widget/g;

    invoke-static {p1, v1}, Lcom/bytedance/sdk/openadsdk/core/widget/g;->a(Lcom/bytedance/sdk/openadsdk/core/widget/g;Z)Z

    .line 127
    goto/16 :goto_141

    .line 85
    :pswitch_3a
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/g$1;->a:Lcom/bytedance/sdk/openadsdk/core/widget/g;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/widget/g;->b(Lcom/bytedance/sdk/openadsdk/core/widget/g;)Z

    move-result p1

    if-eqz p1, :cond_141

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/g$1;->a:Lcom/bytedance/sdk/openadsdk/core/widget/g;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/widget/g;->d(Lcom/bytedance/sdk/openadsdk/core/widget/g;)Z

    move-result p1

    if-eqz p1, :cond_4c

    .line 86
    goto/16 :goto_141

    .line 88
    :cond_4c
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/g$1;->a:Lcom/bytedance/sdk/openadsdk/core/widget/g;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/widget/g;->e(Lcom/bytedance/sdk/openadsdk/core/widget/g;)F

    move-result p1

    sub-float p1, v0, p1

    .line 89
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/widget/g$1;->a:Lcom/bytedance/sdk/openadsdk/core/widget/g;

    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/core/widget/g;->f(Lcom/bytedance/sdk/openadsdk/core/widget/g;)F

    move-result p2

    sub-float p2, v3, p2

    .line 90
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    .line 91
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    .line 93
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/widget/g$1;->a:Lcom/bytedance/sdk/openadsdk/core/widget/g;

    invoke-static {v4}, Lcom/bytedance/sdk/openadsdk/core/widget/g;->g(Lcom/bytedance/sdk/openadsdk/core/widget/g;)Z

    move-result v4

    if-nez v4, :cond_7b

    .line 94
    cmpl-float p1, p1, v5

    if-gtz p1, :cond_76

    cmpl-float p1, p2, v5

    if-lez p1, :cond_75

    goto :goto_76

    .line 97
    :cond_75
    return v2

    .line 95
    :cond_76
    :goto_76
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/g$1;->a:Lcom/bytedance/sdk/openadsdk/core/widget/g;

    invoke-static {p1, v2}, Lcom/bytedance/sdk/openadsdk/core/widget/g;->c(Lcom/bytedance/sdk/openadsdk/core/widget/g;Z)Z

    .line 101
    :cond_7b
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/g$1;->a:Lcom/bytedance/sdk/openadsdk/core/widget/g;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/widget/g;->a(Lcom/bytedance/sdk/openadsdk/core/widget/g;)Lcom/bytedance/sdk/openadsdk/core/widget/g$a;

    move-result-object p1

    if-eqz p1, :cond_8c

    .line 102
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/g$1;->a:Lcom/bytedance/sdk/openadsdk/core/widget/g;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/widget/g;->a(Lcom/bytedance/sdk/openadsdk/core/widget/g;)Lcom/bytedance/sdk/openadsdk/core/widget/g$a;

    move-result-object p1

    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/core/widget/g$a;->l()V

    .line 104
    :cond_8c
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/g$1;->a:Lcom/bytedance/sdk/openadsdk/core/widget/g;

    invoke-static {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/widget/g;->a(Lcom/bytedance/sdk/openadsdk/core/widget/g;F)F

    .line 105
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/g$1;->a:Lcom/bytedance/sdk/openadsdk/core/widget/g;

    invoke-static {p1, v3}, Lcom/bytedance/sdk/openadsdk/core/widget/g;->b(Lcom/bytedance/sdk/openadsdk/core/widget/g;F)F

    .line 106
    goto/16 :goto_141

    .line 108
    :pswitch_98
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/widget/g$1;->a:Lcom/bytedance/sdk/openadsdk/core/widget/g;

    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/core/widget/g;->h(Lcom/bytedance/sdk/openadsdk/core/widget/g;)I

    move-result p2

    int-to-float p2, p2

    sub-float/2addr v0, p2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result p2

    cmpl-float p2, p2, v5

    if-gtz p2, :cond_b8

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/widget/g$1;->a:Lcom/bytedance/sdk/openadsdk/core/widget/g;

    .line 109
    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/core/widget/g;->i(Lcom/bytedance/sdk/openadsdk/core/widget/g;)I

    move-result p2

    int-to-float p2, p2

    sub-float/2addr v3, p2

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result p2

    cmpl-float p2, p2, v5

    if-lez p2, :cond_bd

    .line 110
    :cond_b8
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/widget/g$1;->a:Lcom/bytedance/sdk/openadsdk/core/widget/g;

    invoke-static {p2, v1}, Lcom/bytedance/sdk/openadsdk/core/widget/g;->b(Lcom/bytedance/sdk/openadsdk/core/widget/g;Z)Z

    .line 112
    :cond_bd
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/widget/g$1;->a:Lcom/bytedance/sdk/openadsdk/core/widget/g;

    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/core/widget/g;->b(Lcom/bytedance/sdk/openadsdk/core/widget/g;)Z

    move-result p2

    if-nez p2, :cond_ca

    .line 113
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/widget/g$1;->a:Lcom/bytedance/sdk/openadsdk/core/widget/g;

    invoke-static {p2, v2}, Lcom/bytedance/sdk/openadsdk/core/widget/g;->b(Lcom/bytedance/sdk/openadsdk/core/widget/g;Z)Z

    .line 115
    :cond_ca
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/widget/g$1;->a:Lcom/bytedance/sdk/openadsdk/core/widget/g;

    invoke-static {p2, v1}, Lcom/bytedance/sdk/openadsdk/core/widget/g;->c(Lcom/bytedance/sdk/openadsdk/core/widget/g;Z)Z

    .line 116
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/widget/g$1;->a:Lcom/bytedance/sdk/openadsdk/core/widget/g;

    const/4 v0, 0x0

    invoke-static {p2, v0}, Lcom/bytedance/sdk/openadsdk/core/widget/g;->a(Lcom/bytedance/sdk/openadsdk/core/widget/g;F)F

    .line 117
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/widget/g$1;->a:Lcom/bytedance/sdk/openadsdk/core/widget/g;

    invoke-static {p2, v0}, Lcom/bytedance/sdk/openadsdk/core/widget/g;->b(Lcom/bytedance/sdk/openadsdk/core/widget/g;F)F

    .line 118
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/widget/g$1;->a:Lcom/bytedance/sdk/openadsdk/core/widget/g;

    invoke-static {p2, v1}, Lcom/bytedance/sdk/openadsdk/core/widget/g;->a(Lcom/bytedance/sdk/openadsdk/core/widget/g;I)I

    .line 120
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/widget/g$1;->a:Lcom/bytedance/sdk/openadsdk/core/widget/g;

    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/core/widget/g;->a(Lcom/bytedance/sdk/openadsdk/core/widget/g;)Lcom/bytedance/sdk/openadsdk/core/widget/g$a;

    move-result-object p2

    if-eqz p2, :cond_f6

    .line 121
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/widget/g$1;->a:Lcom/bytedance/sdk/openadsdk/core/widget/g;

    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/core/widget/g;->a(Lcom/bytedance/sdk/openadsdk/core/widget/g;)Lcom/bytedance/sdk/openadsdk/core/widget/g$a;

    move-result-object p2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/g$1;->a:Lcom/bytedance/sdk/openadsdk/core/widget/g;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/widget/g;->j(Lcom/bytedance/sdk/openadsdk/core/widget/g;)Z

    move-result v0

    invoke-interface {p2, p1, v0}, Lcom/bytedance/sdk/openadsdk/core/widget/g$a;->a(Landroid/view/View;Z)V

    .line 123
    :cond_f6
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/g$1;->a:Lcom/bytedance/sdk/openadsdk/core/widget/g;

    invoke-static {p1, v1}, Lcom/bytedance/sdk/openadsdk/core/widget/g;->a(Lcom/bytedance/sdk/openadsdk/core/widget/g;Z)Z

    .line 124
    goto :goto_141

    .line 73
    :pswitch_fc
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/widget/g$1;->a:Lcom/bytedance/sdk/openadsdk/core/widget/g;

    invoke-static {v4, p2}, Lcom/bytedance/sdk/openadsdk/core/widget/g;->a(Lcom/bytedance/sdk/openadsdk/core/widget/g;Landroid/view/MotionEvent;)Z

    move-result p2

    invoke-static {v4, p2}, Lcom/bytedance/sdk/openadsdk/core/widget/g;->a(Lcom/bytedance/sdk/openadsdk/core/widget/g;Z)Z

    .line 74
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/widget/g$1;->a:Lcom/bytedance/sdk/openadsdk/core/widget/g;

    invoke-static {p2, v0}, Lcom/bytedance/sdk/openadsdk/core/widget/g;->a(Lcom/bytedance/sdk/openadsdk/core/widget/g;F)F

    .line 75
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/widget/g$1;->a:Lcom/bytedance/sdk/openadsdk/core/widget/g;

    invoke-static {p2, v3}, Lcom/bytedance/sdk/openadsdk/core/widget/g;->b(Lcom/bytedance/sdk/openadsdk/core/widget/g;F)F

    .line 76
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/widget/g$1;->a:Lcom/bytedance/sdk/openadsdk/core/widget/g;

    float-to-int v0, v0

    invoke-static {p2, v0}, Lcom/bytedance/sdk/openadsdk/core/widget/g;->a(Lcom/bytedance/sdk/openadsdk/core/widget/g;I)I

    .line 77
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/widget/g$1;->a:Lcom/bytedance/sdk/openadsdk/core/widget/g;

    float-to-int v0, v3

    invoke-static {p2, v0}, Lcom/bytedance/sdk/openadsdk/core/widget/g;->b(Lcom/bytedance/sdk/openadsdk/core/widget/g;I)I

    .line 78
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/widget/g$1;->a:Lcom/bytedance/sdk/openadsdk/core/widget/g;

    invoke-static {p2, v2}, Lcom/bytedance/sdk/openadsdk/core/widget/g;->b(Lcom/bytedance/sdk/openadsdk/core/widget/g;Z)Z

    .line 80
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/widget/g$1;->a:Lcom/bytedance/sdk/openadsdk/core/widget/g;

    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/core/widget/g;->a(Lcom/bytedance/sdk/openadsdk/core/widget/g;)Lcom/bytedance/sdk/openadsdk/core/widget/g$a;

    move-result-object p2

    if-eqz p2, :cond_141

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/widget/g$1;->a:Lcom/bytedance/sdk/openadsdk/core/widget/g;

    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/core/widget/g;->c(Lcom/bytedance/sdk/openadsdk/core/widget/g;)Z

    move-result p2

    if-eqz p2, :cond_141

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/widget/g$1;->a:Lcom/bytedance/sdk/openadsdk/core/widget/g;

    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/core/widget/g;->b(Lcom/bytedance/sdk/openadsdk/core/widget/g;)Z

    move-result p2

    if-nez p2, :cond_141

    .line 81
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/widget/g$1;->a:Lcom/bytedance/sdk/openadsdk/core/widget/g;

    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/core/widget/g;->a(Lcom/bytedance/sdk/openadsdk/core/widget/g;)Lcom/bytedance/sdk/openadsdk/core/widget/g$a;

    move-result-object p2

    invoke-interface {p2, p1, v2}, Lcom/bytedance/sdk/openadsdk/core/widget/g$a;->a(Landroid/view/View;Z)V

    .line 131
    :cond_141
    :goto_141
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/g$1;->a:Lcom/bytedance/sdk/openadsdk/core/widget/g;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/widget/g;->b(Lcom/bytedance/sdk/openadsdk/core/widget/g;)Z

    move-result p1

    if-nez p1, :cond_151

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/g$1;->a:Lcom/bytedance/sdk/openadsdk/core/widget/g;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/widget/g;->c(Lcom/bytedance/sdk/openadsdk/core/widget/g;)Z

    move-result p1

    if-nez p1, :cond_152

    :cond_151
    move v1, v2

    :cond_152
    return v1

    nop

    :pswitch_data_154
    .packed-switch 0x0
        :pswitch_fc
        :pswitch_98
        :pswitch_3a
        :pswitch_33
    .end packed-switch
.end method
