.class final Lcom/anythink/basead/ui/SplashAdView$8;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


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
.method constructor <init>(Lcom/anythink/basead/ui/SplashAdView;)V
    .registers 2

    .line 364
    iput-object p1, p0, Lcom/anythink/basead/ui/SplashAdView$8;->a:Lcom/anythink/basead/ui/SplashAdView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 2

    .line 367
    iget-object p1, p0, Lcom/anythink/basead/ui/SplashAdView$8;->a:Lcom/anythink/basead/ui/SplashAdView;

    iget-object p1, p1, Lcom/anythink/basead/ui/SplashAdView;->f:Lcom/anythink/core/common/d/i;

    iget-object p1, p1, Lcom/anythink/core/common/d/i;->j:Lcom/anythink/core/common/d/j;

    invoke-virtual {p1}, Lcom/anythink/core/common/d/j;->f()I

    move-result p1

    if-eqz p1, :cond_12

    iget-object p1, p0, Lcom/anythink/basead/ui/SplashAdView$8;->a:Lcom/anythink/basead/ui/SplashAdView;

    iget-boolean p1, p1, Lcom/anythink/basead/ui/SplashAdView;->x:Z

    if-eqz p1, :cond_2c

    .line 368
    :cond_12
    iget-object p1, p0, Lcom/anythink/basead/ui/SplashAdView$8;->a:Lcom/anythink/basead/ui/SplashAdView;

    iget-object p1, p1, Lcom/anythink/basead/ui/SplashAdView;->c:Landroid/os/CountDownTimer;

    if-eqz p1, :cond_1f

    .line 369
    iget-object p1, p0, Lcom/anythink/basead/ui/SplashAdView$8;->a:Lcom/anythink/basead/ui/SplashAdView;

    iget-object p1, p1, Lcom/anythink/basead/ui/SplashAdView;->c:Landroid/os/CountDownTimer;

    invoke-virtual {p1}, Landroid/os/CountDownTimer;->cancel()V

    .line 371
    :cond_1f
    iget-object p1, p0, Lcom/anythink/basead/ui/SplashAdView$8;->a:Lcom/anythink/basead/ui/SplashAdView;

    iget-object p1, p1, Lcom/anythink/basead/ui/SplashAdView;->d:Lcom/anythink/basead/f/a;

    if-eqz p1, :cond_2c

    .line 372
    iget-object p1, p0, Lcom/anythink/basead/ui/SplashAdView$8;->a:Lcom/anythink/basead/ui/SplashAdView;

    iget-object p1, p1, Lcom/anythink/basead/ui/SplashAdView;->d:Lcom/anythink/basead/f/a;

    invoke-interface {p1}, Lcom/anythink/basead/f/a;->onAdClosed()V

    .line 376
    :cond_2c
    return-void
.end method
