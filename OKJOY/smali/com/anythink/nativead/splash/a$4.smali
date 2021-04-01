.class final Lcom/anythink/nativead/splash/a$4;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/nativead/splash/a;->a(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/anythink/nativead/splash/a;


# direct methods
.method constructor <init>(Lcom/anythink/nativead/splash/a;Z)V
    .registers 3

    .prologue
    .line 139
    iput-object p1, p0, Lcom/anythink/nativead/splash/a$4;->b:Lcom/anythink/nativead/splash/a;

    iput-boolean p2, p0, Lcom/anythink/nativead/splash/a$4;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 3

    .prologue
    .line 142
    iget-boolean v0, p0, Lcom/anythink/nativead/splash/a$4;->a:Z

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/anythink/nativead/splash/a$4;->b:Lcom/anythink/nativead/splash/a;

    iget-boolean v0, v0, Lcom/anythink/nativead/splash/a;->h:Z

    if-eqz v0, :cond_24

    .line 143
    :cond_a
    iget-object v0, p0, Lcom/anythink/nativead/splash/a$4;->b:Lcom/anythink/nativead/splash/a;

    iget-object v0, v0, Lcom/anythink/nativead/splash/a;->i:Lcom/anythink/nativead/splash/api/ATNativeSplashListener;

    if-eqz v0, :cond_17

    .line 144
    iget-object v0, p0, Lcom/anythink/nativead/splash/a$4;->b:Lcom/anythink/nativead/splash/a;

    iget-object v0, v0, Lcom/anythink/nativead/splash/a;->i:Lcom/anythink/nativead/splash/api/ATNativeSplashListener;

    invoke-interface {v0}, Lcom/anythink/nativead/splash/api/ATNativeSplashListener;->onAdSkip()V

    .line 146
    :cond_17
    iget-object v0, p0, Lcom/anythink/nativead/splash/a$4;->b:Lcom/anythink/nativead/splash/a;

    iget-object v0, v0, Lcom/anythink/nativead/splash/a;->g:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_24

    .line 147
    iget-object v0, p0, Lcom/anythink/nativead/splash/a$4;->b:Lcom/anythink/nativead/splash/a;

    iget-object v0, v0, Lcom/anythink/nativead/splash/a;->g:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 151
    :cond_24
    return-void
.end method
