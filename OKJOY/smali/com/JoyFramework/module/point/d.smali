.class Lcom/JoyFramework/module/point/d;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/JoyFramework/module/point/c;


# direct methods
.method constructor <init>(Lcom/JoyFramework/module/point/c;)V
    .registers 2

    .prologue
    .line 72
    iput-object p1, p0, Lcom/JoyFramework/module/point/d;->a:Lcom/JoyFramework/module/point/c;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 10

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x2

    const/4 v5, 0x0

    .line 74
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x64

    if-ne v0, v1, :cond_cd

    .line 76
    iget-object v0, p0, Lcom/JoyFramework/module/point/d;->a:Lcom/JoyFramework/module/point/c;

    invoke-static {v0}, Lcom/JoyFramework/module/point/c;->a(Lcom/JoyFramework/module/point/c;)Z

    move-result v0

    if-eqz v0, :cond_a4

    .line 77
    iget-object v0, p0, Lcom/JoyFramework/module/point/d;->a:Lcom/JoyFramework/module/point/c;

    invoke-static {v0, v5}, Lcom/JoyFramework/module/point/c;->a(Lcom/JoyFramework/module/point/c;Z)Z

    .line 78
    iget-object v0, p0, Lcom/JoyFramework/module/point/d;->a:Lcom/JoyFramework/module/point/c;

    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    invoke-static {v0, v1}, Lcom/JoyFramework/module/point/c;->a(Lcom/JoyFramework/module/point/c;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;

    .line 79
    iget-object v0, p0, Lcom/JoyFramework/module/point/d;->a:Lcom/JoyFramework/module/point/c;

    iget-object v1, p0, Lcom/JoyFramework/module/point/d;->a:Lcom/JoyFramework/module/point/c;

    invoke-static {v1}, Lcom/JoyFramework/module/point/c;->b(Lcom/JoyFramework/module/point/c;)Landroid/widget/ImageView;

    move-result-object v1

    const-string v2, "rotation"

    new-array v3, v6, [F

    fill-array-data v3, :array_da

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/JoyFramework/module/point/c;->a(Lcom/JoyFramework/module/point/c;Landroid/animation/ObjectAnimator;)Landroid/animation/ObjectAnimator;

    .line 80
    iget-object v0, p0, Lcom/JoyFramework/module/point/d;->a:Lcom/JoyFramework/module/point/c;

    iget-object v1, p0, Lcom/JoyFramework/module/point/d;->a:Lcom/JoyFramework/module/point/c;

    invoke-virtual {v1}, Lcom/JoyFramework/module/point/c;->getTranslationX()F

    move-result v1

    invoke-static {v0, v1}, Lcom/JoyFramework/module/point/c;->a(Lcom/JoyFramework/module/point/c;F)F

    .line 81
    iget-object v0, p0, Lcom/JoyFramework/module/point/d;->a:Lcom/JoyFramework/module/point/c;

    invoke-static {v0}, Lcom/JoyFramework/module/point/c;->c(Lcom/JoyFramework/module/point/c;)Z

    move-result v0

    if-eqz v0, :cond_a8

    .line 82
    iget-object v0, p0, Lcom/JoyFramework/module/point/d;->a:Lcom/JoyFramework/module/point/c;

    iget-object v1, p0, Lcom/JoyFramework/module/point/d;->a:Lcom/JoyFramework/module/point/c;

    invoke-static {v1}, Lcom/JoyFramework/module/point/c;->b(Lcom/JoyFramework/module/point/c;)Landroid/widget/ImageView;

    move-result-object v1

    const-string v2, "translationX"

    new-array v3, v6, [F

    iget-object v4, p0, Lcom/JoyFramework/module/point/d;->a:Lcom/JoyFramework/module/point/c;

    invoke-static {v4}, Lcom/JoyFramework/module/point/c;->d(Lcom/JoyFramework/module/point/c;)F

    move-result v4

    aput v4, v3, v5

    iget-object v4, p0, Lcom/JoyFramework/module/point/d;->a:Lcom/JoyFramework/module/point/c;

    invoke-static {v4}, Lcom/JoyFramework/module/point/c;->e(Lcom/JoyFramework/module/point/c;)F

    move-result v4

    aput v4, v3, v7

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/JoyFramework/module/point/c;->b(Lcom/JoyFramework/module/point/c;Landroid/animation/ObjectAnimator;)Landroid/animation/ObjectAnimator;

    .line 86
    :goto_6c
    iget-object v0, p0, Lcom/JoyFramework/module/point/d;->a:Lcom/JoyFramework/module/point/c;

    invoke-static {v0}, Lcom/JoyFramework/module/point/c;->h(Lcom/JoyFramework/module/point/c;)Landroid/animation/AnimatorSet;

    move-result-object v0

    new-array v1, v6, [Landroid/animation/Animator;

    iget-object v2, p0, Lcom/JoyFramework/module/point/d;->a:Lcom/JoyFramework/module/point/c;

    invoke-static {v2}, Lcom/JoyFramework/module/point/c;->f(Lcom/JoyFramework/module/point/c;)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v5

    iget-object v2, p0, Lcom/JoyFramework/module/point/d;->a:Lcom/JoyFramework/module/point/c;

    invoke-static {v2}, Lcom/JoyFramework/module/point/c;->g(Lcom/JoyFramework/module/point/c;)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v7

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 87
    iget-object v0, p0, Lcom/JoyFramework/module/point/d;->a:Lcom/JoyFramework/module/point/c;

    invoke-static {v0}, Lcom/JoyFramework/module/point/c;->h(Lcom/JoyFramework/module/point/c;)Landroid/animation/AnimatorSet;

    move-result-object v0

    new-instance v1, Lcom/JoyFramework/module/point/e;

    invoke-direct {v1, p0}, Lcom/JoyFramework/module/point/e;-><init>(Lcom/JoyFramework/module/point/d;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 139
    iget-object v0, p0, Lcom/JoyFramework/module/point/d;->a:Lcom/JoyFramework/module/point/c;

    invoke-static {v0}, Lcom/JoyFramework/module/point/c;->h(Lcom/JoyFramework/module/point/c;)Landroid/animation/AnimatorSet;

    move-result-object v0

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 144
    :cond_a4
    :goto_a4
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 145
    return-void

    .line 84
    :cond_a8
    iget-object v0, p0, Lcom/JoyFramework/module/point/d;->a:Lcom/JoyFramework/module/point/c;

    iget-object v1, p0, Lcom/JoyFramework/module/point/d;->a:Lcom/JoyFramework/module/point/c;

    invoke-static {v1}, Lcom/JoyFramework/module/point/c;->b(Lcom/JoyFramework/module/point/c;)Landroid/widget/ImageView;

    move-result-object v1

    const-string v2, "translationX"

    new-array v3, v6, [F

    iget-object v4, p0, Lcom/JoyFramework/module/point/d;->a:Lcom/JoyFramework/module/point/c;

    invoke-static {v4}, Lcom/JoyFramework/module/point/c;->d(Lcom/JoyFramework/module/point/c;)F

    move-result v4

    aput v4, v3, v5

    iget-object v4, p0, Lcom/JoyFramework/module/point/d;->a:Lcom/JoyFramework/module/point/c;

    invoke-static {v4}, Lcom/JoyFramework/module/point/c;->e(Lcom/JoyFramework/module/point/c;)F

    move-result v4

    neg-float v4, v4

    aput v4, v3, v7

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/JoyFramework/module/point/c;->b(Lcom/JoyFramework/module/point/c;Landroid/animation/ObjectAnimator;)Landroid/animation/ObjectAnimator;

    goto :goto_6c

    .line 141
    :cond_cd
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x65

    if-ne v0, v1, :cond_a4

    .line 142
    iget-object v0, p0, Lcom/JoyFramework/module/point/d;->a:Lcom/JoyFramework/module/point/c;

    invoke-static {v0, v5}, Lcom/JoyFramework/module/point/c;->c(Lcom/JoyFramework/module/point/c;Z)Z

    goto :goto_a4

    .line 79
    nop

    :array_da
    .array-data 4
        0x0
        0x43b40000    # 360.0f
    .end array-data
.end method
