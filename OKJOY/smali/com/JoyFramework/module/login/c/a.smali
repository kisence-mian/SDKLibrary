.class public Lcom/JoyFramework/module/login/c/a;
.super Landroid/os/CountDownTimer;
.source "SourceFile"


# instance fields
.field private a:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/widget/TextView;JJ)V
    .registers 6

    .prologue
    .line 18
    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    .line 19
    iput-object p1, p0, Lcom/JoyFramework/module/login/c/a;->a:Landroid/widget/TextView;

    .line 20
    return-void
.end method


# virtual methods
.method public onFinish()V
    .registers 3

    .prologue
    .line 30
    iget-object v0, p0, Lcom/JoyFramework/module/login/c/a;->a:Landroid/widget/TextView;

    const-string v1, "\u91cd\u65b0\u83b7\u53d6\u9a8c\u8bc1\u7801"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 31
    iget-object v0, p0, Lcom/JoyFramework/module/login/c/a;->a:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setClickable(Z)V

    .line 32
    invoke-super {p0}, Landroid/os/CountDownTimer;->cancel()V

    .line 33
    return-void
.end method

.method public onTick(J)V
    .registers 8

    .prologue
    .line 24
    iget-object v0, p0, Lcom/JoyFramework/module/login/c/a;->a:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u53d1\u9001\u4e2d("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    div-long v2, p1, v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 25
    iget-object v0, p0, Lcom/JoyFramework/module/login/c/a;->a:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setClickable(Z)V

    .line 26
    return-void
.end method
