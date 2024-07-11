.class final Lcom/anythink/basead/ui/SplashAdView$9;
.super Landroid/os/CountDownTimer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/basead/ui/SplashAdView;->q()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/basead/ui/SplashAdView;


# direct methods
.method constructor <init>(Lcom/anythink/basead/ui/SplashAdView;J)V
    .registers 6

    .line 381
    iput-object p1, p0, Lcom/anythink/basead/ui/SplashAdView$9;->a:Lcom/anythink/basead/ui/SplashAdView;

    const-wide/16 v0, 0x3e8

    invoke-direct {p0, p2, p3, v0, v1}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public final onFinish()V
    .registers 3

    .line 395
    iget-object v0, p0, Lcom/anythink/basead/ui/SplashAdView$9;->a:Lcom/anythink/basead/ui/SplashAdView;

    iget-object v0, v0, Lcom/anythink/basead/ui/SplashAdView;->a:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/anythink/basead/ui/SplashAdView$9;->a:Lcom/anythink/basead/ui/SplashAdView;

    iget-object v1, v1, Lcom/anythink/basead/ui/SplashAdView;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 396
    iget-object v0, p0, Lcom/anythink/basead/ui/SplashAdView$9;->a:Lcom/anythink/basead/ui/SplashAdView;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/anythink/basead/ui/SplashAdView;->x:Z

    .line 397
    iget-object v0, p0, Lcom/anythink/basead/ui/SplashAdView$9;->a:Lcom/anythink/basead/ui/SplashAdView;

    iget-object v0, v0, Lcom/anythink/basead/ui/SplashAdView;->d:Lcom/anythink/basead/f/a;

    if-eqz v0, :cond_1d

    .line 398
    iget-object v0, p0, Lcom/anythink/basead/ui/SplashAdView$9;->a:Lcom/anythink/basead/ui/SplashAdView;

    iget-object v0, v0, Lcom/anythink/basead/ui/SplashAdView;->d:Lcom/anythink/basead/f/a;

    invoke-interface {v0}, Lcom/anythink/basead/f/a;->onAdClosed()V

    .line 400
    :cond_1d
    return-void
.end method

.method public final onTick(J)V
    .registers 9

    .line 385
    iget-object v0, p0, Lcom/anythink/basead/ui/SplashAdView$9;->a:Lcom/anythink/basead/ui/SplashAdView;

    iget-object v0, v0, Lcom/anythink/basead/ui/SplashAdView;->f:Lcom/anythink/core/common/d/i;

    iget-object v0, v0, Lcom/anythink/core/common/d/i;->j:Lcom/anythink/core/common/d/j;

    invoke-virtual {v0}, Lcom/anythink/core/common/d/j;->f()I

    move-result v0

    const-wide/16 v1, 0x1

    const-wide/16 v3, 0x3e8

    if-nez v0, :cond_35

    .line 386
    iget-object v0, p0, Lcom/anythink/basead/ui/SplashAdView$9;->a:Lcom/anythink/basead/ui/SplashAdView;

    iget-object v0, v0, Lcom/anythink/basead/ui/SplashAdView;->a:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    div-long/2addr p1, v3

    add-long/2addr p1, v1

    invoke-virtual {v5, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "s "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p2, p0, Lcom/anythink/basead/ui/SplashAdView$9;->a:Lcom/anythink/basead/ui/SplashAdView;

    iget-object p2, p2, Lcom/anythink/basead/ui/SplashAdView;->b:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 388
    :cond_35
    iget-object v0, p0, Lcom/anythink/basead/ui/SplashAdView$9;->a:Lcom/anythink/basead/ui/SplashAdView;

    iget-object v0, v0, Lcom/anythink/basead/ui/SplashAdView;->a:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    div-long/2addr p1, v3

    add-long/2addr p1, v1

    invoke-virtual {v5, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " s"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 391
    return-void
.end method
