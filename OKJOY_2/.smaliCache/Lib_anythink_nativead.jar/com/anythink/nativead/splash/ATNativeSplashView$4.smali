.class final Lcom/anythink/nativead/splash/ATNativeSplashView$4;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/nativead/splash/ATNativeSplashView;->a(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/anythink/nativead/splash/ATNativeSplashView;


# direct methods
.method constructor <init>(Lcom/anythink/nativead/splash/ATNativeSplashView;Z)V
    .registers 3

    .line 146
    iput-object p1, p0, Lcom/anythink/nativead/splash/ATNativeSplashView$4;->b:Lcom/anythink/nativead/splash/ATNativeSplashView;

    iput-boolean p2, p0, Lcom/anythink/nativead/splash/ATNativeSplashView$4;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 2

    .line 149
    iget-boolean p1, p0, Lcom/anythink/nativead/splash/ATNativeSplashView$4;->a:Z

    if-nez p1, :cond_a

    iget-object p1, p0, Lcom/anythink/nativead/splash/ATNativeSplashView$4;->b:Lcom/anythink/nativead/splash/ATNativeSplashView;

    iget-boolean p1, p1, Lcom/anythink/nativead/splash/ATNativeSplashView;->h:Z

    if-eqz p1, :cond_24

    .line 150
    :cond_a
    iget-object p1, p0, Lcom/anythink/nativead/splash/ATNativeSplashView$4;->b:Lcom/anythink/nativead/splash/ATNativeSplashView;

    iget-object p1, p1, Lcom/anythink/nativead/splash/ATNativeSplashView;->i:Lcom/anythink/nativead/splash/api/ATNativeSplashListener;

    if-eqz p1, :cond_17

    .line 151
    iget-object p1, p0, Lcom/anythink/nativead/splash/ATNativeSplashView$4;->b:Lcom/anythink/nativead/splash/ATNativeSplashView;

    iget-object p1, p1, Lcom/anythink/nativead/splash/ATNativeSplashView;->i:Lcom/anythink/nativead/splash/api/ATNativeSplashListener;

    invoke-interface {p1}, Lcom/anythink/nativead/splash/api/ATNativeSplashListener;->onAdSkip()V

    .line 153
    :cond_17
    iget-object p1, p0, Lcom/anythink/nativead/splash/ATNativeSplashView$4;->b:Lcom/anythink/nativead/splash/ATNativeSplashView;

    iget-object p1, p1, Lcom/anythink/nativead/splash/ATNativeSplashView;->g:Landroid/os/CountDownTimer;

    if-eqz p1, :cond_24

    .line 154
    iget-object p1, p0, Lcom/anythink/nativead/splash/ATNativeSplashView$4;->b:Lcom/anythink/nativead/splash/ATNativeSplashView;

    iget-object p1, p1, Lcom/anythink/nativead/splash/ATNativeSplashView;->g:Landroid/os/CountDownTimer;

    invoke-virtual {p1}, Landroid/os/CountDownTimer;->cancel()V

    .line 158
    :cond_24
    return-void
.end method