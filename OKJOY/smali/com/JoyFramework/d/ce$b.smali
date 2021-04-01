.class Lcom/JoyFramework/d/ce$b;
.super Landroid/os/CountDownTimer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/JoyFramework/d/ce;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/JoyFramework/d/ce;

.field private b:Lcom/JoyFramework/d/ce$a;

.field private c:Ljava/lang/String;

.field private d:J


# direct methods
.method public constructor <init>(Lcom/JoyFramework/d/ce;JJLcom/JoyFramework/d/ce$a;)V
    .registers 7

    .prologue
    .line 1053
    iput-object p1, p0, Lcom/JoyFramework/d/ce$b;->a:Lcom/JoyFramework/d/ce;

    .line 1054
    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    .line 1055
    iput-object p6, p0, Lcom/JoyFramework/d/ce$b;->b:Lcom/JoyFramework/d/ce$a;

    .line 1056
    iput-wide p2, p0, Lcom/JoyFramework/d/ce$b;->d:J

    .line 1058
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1080
    iget-object v0, p0, Lcom/JoyFramework/d/ce$b;->c:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 1072
    iput-object p1, p0, Lcom/JoyFramework/d/ce$b;->c:Ljava/lang/String;

    .line 1073
    return-void
.end method

.method public onFinish()V
    .registers 2

    .prologue
    .line 1085
    invoke-super {p0}, Landroid/os/CountDownTimer;->cancel()V

    .line 1086
    iget-object v0, p0, Lcom/JoyFramework/d/ce$b;->b:Lcom/JoyFramework/d/ce$a;

    if-eqz v0, :cond_c

    .line 1087
    iget-object v0, p0, Lcom/JoyFramework/d/ce$b;->b:Lcom/JoyFramework/d/ce$a;

    invoke-interface {v0, p0}, Lcom/JoyFramework/d/ce$a;->a(Lcom/JoyFramework/d/ce$b;)V

    .line 1089
    :cond_c
    return-void
.end method

.method public onTick(J)V
    .registers 8

    .prologue
    .line 1064
    const-string v0, "TopOnUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onTick: millisUntilFinished = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1065
    const-string v0, "TopOnUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onTick: millisInFuture = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/JoyFramework/d/ce$b;->d:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1066
    iget-wide v0, p0, Lcom/JoyFramework/d/ce$b;->d:J

    sub-long/2addr v0, p1

    const-wide/16 v2, 0x2710

    cmp-long v0, v0, v2

    if-gtz v0, :cond_3f

    .line 1067
    const-string v0, "\u5e7f\u544a\u52a0\u8f7d\u8d85\u65f6\uff0c\u8bf7\u786e\u4fdd\u7f51\u7edc\u987a\u7545\u5e76\u91cd\u8bd5..."

    iput-object v0, p0, Lcom/JoyFramework/d/ce$b;->c:Ljava/lang/String;

    .line 1069
    :cond_3f
    return-void
.end method
