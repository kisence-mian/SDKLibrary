.class final Lcom/anythink/nativead/splash/a$5;
.super Landroid/os/CountDownTimer;


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
.method constructor <init>(Lcom/anythink/nativead/splash/a;JZ)V
    .registers 7

    .prologue
    .line 157
    iput-object p1, p0, Lcom/anythink/nativead/splash/a$5;->b:Lcom/anythink/nativead/splash/a;

    iput-boolean p4, p0, Lcom/anythink/nativead/splash/a$5;->a:Z

    const-wide/16 v0, 0x3e8

    invoke-direct {p0, p2, p3, v0, v1}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public final onFinish()V
    .registers 3

    .prologue
    .line 176
    iget-object v0, p0, Lcom/anythink/nativead/splash/a$5;->b:Lcom/anythink/nativead/splash/a;

    iget-object v0, v0, Lcom/anythink/nativead/splash/a;->d:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/anythink/nativead/splash/a$5;->b:Lcom/anythink/nativead/splash/a;

    iget-object v1, v1, Lcom/anythink/nativead/splash/a;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 177
    iget-object v0, p0, Lcom/anythink/nativead/splash/a$5;->b:Lcom/anythink/nativead/splash/a;

    iget-object v0, v0, Lcom/anythink/nativead/splash/a;->i:Lcom/anythink/nativead/splash/api/ATNativeSplashListener;

    if-eqz v0, :cond_18

    .line 178
    iget-object v0, p0, Lcom/anythink/nativead/splash/a$5;->b:Lcom/anythink/nativead/splash/a;

    iget-object v0, v0, Lcom/anythink/nativead/splash/a;->i:Lcom/anythink/nativead/splash/api/ATNativeSplashListener;

    invoke-interface {v0}, Lcom/anythink/nativead/splash/api/ATNativeSplashListener;->onAdTimeOver()V

    .line 180
    :cond_18
    iget-object v0, p0, Lcom/anythink/nativead/splash/a$5;->b:Lcom/anythink/nativead/splash/a;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/anythink/nativead/splash/a;->h:Z

    .line 181
    return-void
.end method

.method public final onTick(J)V
    .registers 8

    .prologue
    const-wide/16 v2, 0x3e8

    .line 160
    iget-object v0, p0, Lcom/anythink/nativead/splash/a$5;->b:Lcom/anythink/nativead/splash/a;

    iget-object v0, v0, Lcom/anythink/nativead/splash/a;->i:Lcom/anythink/nativead/splash/api/ATNativeSplashListener;

    if-eqz v0, :cond_f

    .line 161
    iget-object v0, p0, Lcom/anythink/nativead/splash/a$5;->b:Lcom/anythink/nativead/splash/a;

    iget-object v0, v0, Lcom/anythink/nativead/splash/a;->i:Lcom/anythink/nativead/splash/api/ATNativeSplashListener;

    invoke-interface {v0, p1, p2}, Lcom/anythink/nativead/splash/api/ATNativeSplashListener;->onAdTick(J)V

    .line 164
    :cond_f
    iget-object v0, p0, Lcom/anythink/nativead/splash/a$5;->b:Lcom/anythink/nativead/splash/a;

    iget-object v0, v0, Lcom/anythink/nativead/splash/a;->c:Landroid/view/View;

    if-nez v0, :cond_3d

    .line 165
    iget-boolean v0, p0, Lcom/anythink/nativead/splash/a$5;->a:Z

    if-eqz v0, :cond_3e

    .line 166
    iget-object v0, p0, Lcom/anythink/nativead/splash/a$5;->b:Lcom/anythink/nativead/splash/a;

    iget-object v0, v0, Lcom/anythink/nativead/splash/a;->d:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    div-long v2, p1, v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "s "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/anythink/nativead/splash/a$5;->b:Lcom/anythink/nativead/splash/a;

    iget-object v2, v2, Lcom/anythink/nativead/splash/a;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 172
    :cond_3d
    :goto_3d
    return-void

    .line 168
    :cond_3e
    iget-object v0, p0, Lcom/anythink/nativead/splash/a$5;->b:Lcom/anythink/nativead/splash/a;

    iget-object v0, v0, Lcom/anythink/nativead/splash/a;->d:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    div-long v2, p1, v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " s"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3d
.end method
