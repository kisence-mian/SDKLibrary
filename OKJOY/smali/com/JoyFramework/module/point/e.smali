.class Lcom/JoyFramework/module/point/e;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/JoyFramework/module/point/d;


# direct methods
.method constructor <init>(Lcom/JoyFramework/module/point/d;)V
    .registers 2

    .prologue
    .line 87
    iput-object p1, p0, Lcom/JoyFramework/module/point/e;->a:Lcom/JoyFramework/module/point/d;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 12

    .prologue
    const/4 v9, -0x2

    const/high16 v8, 0x42480000    # 50.0f

    const/high16 v7, 0x41600000    # 14.0f

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 90
    iget-object v0, p0, Lcom/JoyFramework/module/point/e;->a:Lcom/JoyFramework/module/point/d;

    iget-object v0, v0, Lcom/JoyFramework/module/point/d;->a:Lcom/JoyFramework/module/point/c;

    invoke-static {v0}, Lcom/JoyFramework/module/point/c;->c(Lcom/JoyFramework/module/point/c;)Z

    move-result v0

    if-eqz v0, :cond_d9

    .line 95
    iget-object v0, p0, Lcom/JoyFramework/module/point/e;->a:Lcom/JoyFramework/module/point/d;

    iget-object v0, v0, Lcom/JoyFramework/module/point/d;->a:Lcom/JoyFramework/module/point/c;

    invoke-static {v0}, Lcom/JoyFramework/module/point/c;->b(Lcom/JoyFramework/module/point/c;)Landroid/widget/ImageView;

    move-result-object v0

    const-string v1, "translationX"

    const/4 v2, 0x2

    new-array v2, v2, [F

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/JoyFramework/module/point/e;->a:Lcom/JoyFramework/module/point/d;

    iget-object v4, v4, Lcom/JoyFramework/module/point/d;->a:Lcom/JoyFramework/module/point/c;

    invoke-static {v4}, Lcom/JoyFramework/module/point/c;->e(Lcom/JoyFramework/module/point/c;)F

    move-result v4

    aput v4, v2, v3

    iget-object v3, p0, Lcom/JoyFramework/module/point/e;->a:Lcom/JoyFramework/module/point/d;

    iget-object v3, v3, Lcom/JoyFramework/module/point/d;->a:Lcom/JoyFramework/module/point/c;

    invoke-static {v3}, Lcom/JoyFramework/module/point/c;->d(Lcom/JoyFramework/module/point/c;)F

    move-result v3

    aput v3, v2, v5

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 97
    iget-object v0, p0, Lcom/JoyFramework/module/point/e;->a:Lcom/JoyFramework/module/point/d;

    iget-object v0, v0, Lcom/JoyFramework/module/point/d;->a:Lcom/JoyFramework/module/point/c;

    invoke-static {v0}, Lcom/JoyFramework/module/point/c;->i(Lcom/JoyFramework/module/point/c;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 98
    iget-object v1, p0, Lcom/JoyFramework/module/point/e;->a:Lcom/JoyFramework/module/point/d;

    iget-object v1, v1, Lcom/JoyFramework/module/point/d;->a:Lcom/JoyFramework/module/point/c;

    iget-object v2, p0, Lcom/JoyFramework/module/point/e;->a:Lcom/JoyFramework/module/point/d;

    iget-object v2, v2, Lcom/JoyFramework/module/point/d;->a:Lcom/JoyFramework/module/point/c;

    invoke-static {v2}, Lcom/JoyFramework/module/point/c;->j(Lcom/JoyFramework/module/point/c;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v1, v2, v8}, Lcom/JoyFramework/module/point/c;->a(Lcom/JoyFramework/module/point/c;Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 99
    iput v9, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 100
    iget-object v1, p0, Lcom/JoyFramework/module/point/e;->a:Lcom/JoyFramework/module/point/d;

    iget-object v1, v1, Lcom/JoyFramework/module/point/d;->a:Lcom/JoyFramework/module/point/c;

    invoke-static {v1}, Lcom/JoyFramework/module/point/c;->i(Lcom/JoyFramework/module/point/c;)Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 103
    iget-object v0, p0, Lcom/JoyFramework/module/point/e;->a:Lcom/JoyFramework/module/point/d;

    iget-object v0, v0, Lcom/JoyFramework/module/point/d;->a:Lcom/JoyFramework/module/point/c;

    invoke-static {v0}, Lcom/JoyFramework/module/point/c;->b(Lcom/JoyFramework/module/point/c;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 104
    const/4 v1, -0x1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 105
    iget-object v1, p0, Lcom/JoyFramework/module/point/e;->a:Lcom/JoyFramework/module/point/d;

    iget-object v1, v1, Lcom/JoyFramework/module/point/d;->a:Lcom/JoyFramework/module/point/c;

    iget-object v2, p0, Lcom/JoyFramework/module/point/e;->a:Lcom/JoyFramework/module/point/d;

    iget-object v2, v2, Lcom/JoyFramework/module/point/d;->a:Lcom/JoyFramework/module/point/c;

    invoke-static {v2}, Lcom/JoyFramework/module/point/c;->j(Lcom/JoyFramework/module/point/c;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v1, v2, v7}, Lcom/JoyFramework/module/point/c;->a(Lcom/JoyFramework/module/point/c;Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 106
    const/4 v1, 0x5

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 107
    iget-object v1, p0, Lcom/JoyFramework/module/point/e;->a:Lcom/JoyFramework/module/point/d;

    iget-object v1, v1, Lcom/JoyFramework/module/point/d;->a:Lcom/JoyFramework/module/point/c;

    invoke-static {v1}, Lcom/JoyFramework/module/point/c;->b(Lcom/JoyFramework/module/point/c;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 108
    iget-object v0, p0, Lcom/JoyFramework/module/point/e;->a:Lcom/JoyFramework/module/point/d;

    iget-object v0, v0, Lcom/JoyFramework/module/point/d;->a:Lcom/JoyFramework/module/point/c;

    invoke-static {v0}, Lcom/JoyFramework/module/point/c;->b(Lcom/JoyFramework/module/point/c;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/JoyFramework/module/point/e;->a:Lcom/JoyFramework/module/point/d;

    iget-object v1, v1, Lcom/JoyFramework/module/point/d;->a:Lcom/JoyFramework/module/point/c;

    invoke-static {v1}, Lcom/JoyFramework/module/point/c;->j(Lcom/JoyFramework/module/point/c;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "joy_float_right"

    invoke-static {v1, v2}, Lcom/JoyFramework/d/as;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 109
    iget-object v0, p0, Lcom/JoyFramework/module/point/e;->a:Lcom/JoyFramework/module/point/d;

    iget-object v0, v0, Lcom/JoyFramework/module/point/d;->a:Lcom/JoyFramework/module/point/c;

    invoke-static {v0}, Lcom/JoyFramework/module/point/c;->k(Lcom/JoyFramework/module/point/c;)Lcom/JoyFramework/wight/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/JoyFramework/wight/h;->b()V

    .line 132
    :goto_bc
    iget-object v0, p0, Lcom/JoyFramework/module/point/e;->a:Lcom/JoyFramework/module/point/d;

    iget-object v0, v0, Lcom/JoyFramework/module/point/d;->a:Lcom/JoyFramework/module/point/c;

    invoke-static {v0, v6}, Lcom/JoyFramework/module/point/c;->a(Lcom/JoyFramework/module/point/c;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;

    .line 133
    iget-object v0, p0, Lcom/JoyFramework/module/point/e;->a:Lcom/JoyFramework/module/point/d;

    iget-object v0, v0, Lcom/JoyFramework/module/point/d;->a:Lcom/JoyFramework/module/point/c;

    invoke-static {v0, v6}, Lcom/JoyFramework/module/point/c;->a(Lcom/JoyFramework/module/point/c;Landroid/animation/ObjectAnimator;)Landroid/animation/ObjectAnimator;

    .line 134
    iget-object v0, p0, Lcom/JoyFramework/module/point/e;->a:Lcom/JoyFramework/module/point/d;

    iget-object v0, v0, Lcom/JoyFramework/module/point/d;->a:Lcom/JoyFramework/module/point/c;

    invoke-static {v0, v6}, Lcom/JoyFramework/module/point/c;->b(Lcom/JoyFramework/module/point/c;Landroid/animation/ObjectAnimator;)Landroid/animation/ObjectAnimator;

    .line 136
    iget-object v0, p0, Lcom/JoyFramework/module/point/e;->a:Lcom/JoyFramework/module/point/d;

    iget-object v0, v0, Lcom/JoyFramework/module/point/d;->a:Lcom/JoyFramework/module/point/c;

    invoke-static {v0, v5}, Lcom/JoyFramework/module/point/c;->b(Lcom/JoyFramework/module/point/c;Z)Z

    .line 137
    return-void

    .line 115
    :cond_d9
    iget-object v0, p0, Lcom/JoyFramework/module/point/e;->a:Lcom/JoyFramework/module/point/d;

    iget-object v0, v0, Lcom/JoyFramework/module/point/d;->a:Lcom/JoyFramework/module/point/c;

    invoke-static {v0}, Lcom/JoyFramework/module/point/c;->b(Lcom/JoyFramework/module/point/c;)Landroid/widget/ImageView;

    move-result-object v0

    const-string v1, "translationX"

    const/4 v2, 0x2

    new-array v2, v2, [F

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/JoyFramework/module/point/e;->a:Lcom/JoyFramework/module/point/d;

    iget-object v4, v4, Lcom/JoyFramework/module/point/d;->a:Lcom/JoyFramework/module/point/c;

    invoke-static {v4}, Lcom/JoyFramework/module/point/c;->e(Lcom/JoyFramework/module/point/c;)F

    move-result v4

    neg-float v4, v4

    aput v4, v2, v3

    iget-object v3, p0, Lcom/JoyFramework/module/point/e;->a:Lcom/JoyFramework/module/point/d;

    iget-object v3, v3, Lcom/JoyFramework/module/point/d;->a:Lcom/JoyFramework/module/point/c;

    invoke-static {v3}, Lcom/JoyFramework/module/point/c;->d(Lcom/JoyFramework/module/point/c;)F

    move-result v3

    aput v3, v2, v5

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 117
    iget-object v0, p0, Lcom/JoyFramework/module/point/e;->a:Lcom/JoyFramework/module/point/d;

    iget-object v0, v0, Lcom/JoyFramework/module/point/d;->a:Lcom/JoyFramework/module/point/c;

    invoke-static {v0}, Lcom/JoyFramework/module/point/c;->i(Lcom/JoyFramework/module/point/c;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 118
    iget-object v1, p0, Lcom/JoyFramework/module/point/e;->a:Lcom/JoyFramework/module/point/d;

    iget-object v1, v1, Lcom/JoyFramework/module/point/d;->a:Lcom/JoyFramework/module/point/c;

    iget-object v2, p0, Lcom/JoyFramework/module/point/e;->a:Lcom/JoyFramework/module/point/d;

    iget-object v2, v2, Lcom/JoyFramework/module/point/d;->a:Lcom/JoyFramework/module/point/c;

    invoke-static {v2}, Lcom/JoyFramework/module/point/c;->j(Lcom/JoyFramework/module/point/c;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v1, v2, v8}, Lcom/JoyFramework/module/point/c;->a(Lcom/JoyFramework/module/point/c;Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 119
    iput v9, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 120
    iget-object v1, p0, Lcom/JoyFramework/module/point/e;->a:Lcom/JoyFramework/module/point/d;

    iget-object v1, v1, Lcom/JoyFramework/module/point/d;->a:Lcom/JoyFramework/module/point/c;

    invoke-static {v1}, Lcom/JoyFramework/module/point/c;->i(Lcom/JoyFramework/module/point/c;)Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 123
    iget-object v0, p0, Lcom/JoyFramework/module/point/e;->a:Lcom/JoyFramework/module/point/d;

    iget-object v0, v0, Lcom/JoyFramework/module/point/d;->a:Lcom/JoyFramework/module/point/c;

    invoke-static {v0}, Lcom/JoyFramework/module/point/c;->b(Lcom/JoyFramework/module/point/c;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 124
    const/4 v1, -0x1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 125
    iget-object v1, p0, Lcom/JoyFramework/module/point/e;->a:Lcom/JoyFramework/module/point/d;

    iget-object v1, v1, Lcom/JoyFramework/module/point/d;->a:Lcom/JoyFramework/module/point/c;

    iget-object v2, p0, Lcom/JoyFramework/module/point/e;->a:Lcom/JoyFramework/module/point/d;

    iget-object v2, v2, Lcom/JoyFramework/module/point/d;->a:Lcom/JoyFramework/module/point/c;

    invoke-static {v2}, Lcom/JoyFramework/module/point/c;->j(Lcom/JoyFramework/module/point/c;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v1, v2, v7}, Lcom/JoyFramework/module/point/c;->a(Lcom/JoyFramework/module/point/c;Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 126
    const/4 v1, 0x3

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 127
    iget-object v1, p0, Lcom/JoyFramework/module/point/e;->a:Lcom/JoyFramework/module/point/d;

    iget-object v1, v1, Lcom/JoyFramework/module/point/d;->a:Lcom/JoyFramework/module/point/c;

    invoke-static {v1}, Lcom/JoyFramework/module/point/c;->b(Lcom/JoyFramework/module/point/c;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 128
    iget-object v0, p0, Lcom/JoyFramework/module/point/e;->a:Lcom/JoyFramework/module/point/d;

    iget-object v0, v0, Lcom/JoyFramework/module/point/d;->a:Lcom/JoyFramework/module/point/c;

    invoke-static {v0}, Lcom/JoyFramework/module/point/c;->b(Lcom/JoyFramework/module/point/c;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/JoyFramework/module/point/e;->a:Lcom/JoyFramework/module/point/d;

    iget-object v1, v1, Lcom/JoyFramework/module/point/d;->a:Lcom/JoyFramework/module/point/c;

    invoke-static {v1}, Lcom/JoyFramework/module/point/c;->j(Lcom/JoyFramework/module/point/c;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "joy_float_left"

    invoke-static {v1, v2}, Lcom/JoyFramework/d/as;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 129
    iget-object v0, p0, Lcom/JoyFramework/module/point/e;->a:Lcom/JoyFramework/module/point/d;

    iget-object v0, v0, Lcom/JoyFramework/module/point/d;->a:Lcom/JoyFramework/module/point/c;

    invoke-static {v0}, Lcom/JoyFramework/module/point/c;->k(Lcom/JoyFramework/module/point/c;)Lcom/JoyFramework/wight/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/JoyFramework/wight/h;->b()V

    goto/16 :goto_bc
.end method
