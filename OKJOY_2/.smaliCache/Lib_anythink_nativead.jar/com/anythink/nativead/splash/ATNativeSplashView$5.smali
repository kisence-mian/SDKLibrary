.class final Lcom/anythink/nativead/splash/ATNativeSplashView$5;
.super Landroid/os/CountDownTimer;


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
.method constructor <init>(Lcom/anythink/nativead/splash/ATNativeSplashView;JZ)V
    .registers 7

    .line 164
    iput-object p1, p0, Lcom/anythink/nativead/splash/ATNativeSplashView$5;->b:Lcom/anythink/nativead/splash/ATNativeSplashView;

    iput-boolean p4, p0, Lcom/anythink/nativead/splash/ATNativeSplashView$5;->a:Z

    const-wide/16 v0, 0x3e8

    invoke-direct {p0, p2, p3, v0, v1}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public final onFinish()V
    .registers 3

    .line 183
    iget-object v0, p0, Lcom/anythink/nativead/splash/ATNativeSplashView$5;->b:Lcom/anythink/nativead/splash/ATNativeSplashView;

    iget-object v0, v0, Lcom/anythink/nativead/splash/ATNativeSplashView;->d:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/anythink/nativead/splash/ATNativeSplashView$5;->b:Lcom/anythink/nativead/splash/ATNativeSplashView;

    iget-object v1, v1, Lcom/anythink/nativead/splash/ATNativeSplashView;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 184
    iget-object v0, p0, Lcom/anythink/nativead/splash/ATNativeSplashView$5;->b:Lcom/anythink/nativead/splash/ATNativeSplashView;

    iget-object v0, v0, Lcom/anythink/nativead/splash/ATNativeSplashView;->i:Lcom/anythink/nativead/splash/api/ATNativeSplashListener;

    if-eqz v0, :cond_18

    .line 185
    iget-object v0, p0, Lcom/anythink/nativead/splash/ATNativeSplashView$5;->b:Lcom/anythink/nativead/splash/ATNativeSplashView;

    iget-object v0, v0, Lcom/anythink/nativead/splash/ATNativeSplashView;->i:Lcom/anythink/nativead/splash/api/ATNativeSplashListener;

    invoke-interface {v0}, Lcom/anythink/nativead/splash/api/ATNativeSplashListener;->onAdTimeOver()V

    .line 187
    :cond_18
    iget-object v0, p0, Lcom/anythink/nativead/splash/ATNativeSplashView$5;->b:Lcom/anythink/nativead/splash/ATNativeSplashView;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/anythink/nativead/splash/ATNativeSplashView;->h:Z

    .line 188
    return-void
.end method

.method public final onTick(J)V
    .registers 7

    .line 167
    iget-object v0, p0, Lcom/anythink/nativead/splash/ATNativeSplashView$5;->b:Lcom/anythink/nativead/splash/ATNativeSplashView;

    iget-object v0, v0, Lcom/anythink/nativead/splash/ATNativeSplashView;->i:Lcom/anythink/nativead/splash/api/ATNativeSplashListener;

    if-eqz v0, :cond_d

    .line 168
    iget-object v0, p0, Lcom/anythink/nativead/splash/ATNativeSplashView$5;->b:Lcom/anythink/nativead/splash/ATNativeSplashView;

    iget-object v0, v0, Lcom/anythink/nativead/splash/ATNativeSplashView;->i:Lcom/anythink/nativead/splash/api/ATNativeSplashListener;

    invoke-interface {v0, p1, p2}, Lcom/anythink/nativead/splash/api/ATNativeSplashListener;->onAdTick(J)V

    .line 171
    :cond_d
    iget-object v0, p0, Lcom/anythink/nativead/splash/ATNativeSplashView$5;->b:Lcom/anythink/nativead/splash/ATNativeSplashView;

    iget-object v0, v0, Lcom/anythink/nativead/splash/ATNativeSplashView;->c:Landroid/view/View;

    if-nez v0, :cond_58

    .line 172
    iget-boolean v0, p0, Lcom/anythink/nativead/splash/ATNativeSplashView$5;->a:Z

    const-wide/16 v1, 0x3e8

    if-eqz v0, :cond_3d

    .line 173
    iget-object v0, p0, Lcom/anythink/nativead/splash/ATNativeSplashView$5;->b:Lcom/anythink/nativead/splash/ATNativeSplashView;

    iget-object v0, v0, Lcom/anythink/nativead/splash/ATNativeSplashView;->d:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    div-long/2addr p1, v1

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "s "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p2, p0, Lcom/anythink/nativead/splash/ATNativeSplashView$5;->b:Lcom/anythink/nativead/splash/ATNativeSplashView;

    iget-object p2, p2, Lcom/anythink/nativead/splash/ATNativeSplashView;->f:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 175
    :cond_3d
    iget-object v0, p0, Lcom/anythink/nativead/splash/ATNativeSplashView$5;->b:Lcom/anythink/nativead/splash/ATNativeSplashView;

    iget-object v0, v0, Lcom/anythink/nativead/splash/ATNativeSplashView;->d:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    div-long/2addr p1, v1

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " s"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 179
    :cond_58
    return-void
.end method
