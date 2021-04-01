.class Lcom/JoyFramework/d/ck;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/JoyFramework/d/ce$a;


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/JoyFramework/d/ce;


# direct methods
.method constructor <init>(Lcom/JoyFramework/d/ce;Landroid/app/Activity;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 653
    iput-object p1, p0, Lcom/JoyFramework/d/ck;->c:Lcom/JoyFramework/d/ce;

    iput-object p2, p0, Lcom/JoyFramework/d/ck;->a:Landroid/app/Activity;

    iput-object p3, p0, Lcom/JoyFramework/d/ck;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/JoyFramework/d/ce$b;)V
    .registers 10

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 656
    const-string v2, "TopOnUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onFinish: isInspireAdLoadSuccessAndPlay = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/JoyFramework/d/ck;->c:Lcom/JoyFramework/d/ce;

    invoke-static {v4}, Lcom/JoyFramework/d/ce;->g(Lcom/JoyFramework/d/ce;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 657
    iget-object v2, p0, Lcom/JoyFramework/d/ck;->c:Lcom/JoyFramework/d/ce;

    invoke-static {v2}, Lcom/JoyFramework/d/ce;->h(Lcom/JoyFramework/d/ce;)V

    .line 658
    iget-object v2, p0, Lcom/JoyFramework/d/ck;->c:Lcom/JoyFramework/d/ce;

    invoke-static {v2}, Lcom/JoyFramework/d/ce;->g(Lcom/JoyFramework/d/ce;)Z

    move-result v2

    if-nez v2, :cond_8b

    .line 660
    invoke-virtual {p1}, Lcom/JoyFramework/d/ce$b;->a()Ljava/lang/String;

    move-result-object v2

    .line 661
    iget-object v3, p0, Lcom/JoyFramework/d/ck;->a:Landroid/app/Activity;

    invoke-virtual {p1}, Lcom/JoyFramework/d/ce$b;->a()Ljava/lang/String;

    move-result-object v4

    new-array v5, v1, [Z

    invoke-static {v3, v4, v5}, Lcom/JoyFramework/d/cc;->a(Landroid/app/Activity;Ljava/lang/String;[Z)V

    .line 662
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_8b

    const-string v3, "\u5e7f\u544a\u52a0\u8f7d\u8d85\u65f6"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_8b

    .line 663
    iget-object v2, p0, Lcom/JoyFramework/d/ck;->c:Lcom/JoyFramework/d/ce;

    invoke-static {v2, v0}, Lcom/JoyFramework/d/ce;->c(Lcom/JoyFramework/d/ce;Z)Z

    .line 664
    invoke-static {}, Lcom/JoyFramework/d/bf;->a()Lcom/JoyFramework/d/bf;

    move-result-object v2

    iget-object v3, p0, Lcom/JoyFramework/d/ck;->b:Ljava/lang/String;

    const-string v4, "\u6fc0\u52b1\u5e7f\u544a"

    const/4 v5, 0x2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\u52a0\u8f7d\u6fc0\u52b1\u89c6\u9891\u8d85\u65f6\uff0c\u56de\u8c03\u7c7b\uff1a"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/JoyFramework/d/ck;->c:Lcom/JoyFramework/d/ce;

    invoke-static {v7}, Lcom/JoyFramework/d/ce;->d(Lcom/JoyFramework/d/ce;)Lcom/JoyFramework/common/IOnAdListener;

    move-result-object v7

    if-eqz v7, :cond_91

    :goto_6b
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v4, v5, v0}, Lcom/JoyFramework/d/bf;->a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 665
    iget-object v0, p0, Lcom/JoyFramework/d/ck;->c:Lcom/JoyFramework/d/ce;

    invoke-static {v0}, Lcom/JoyFramework/d/ce;->d(Lcom/JoyFramework/d/ce;)Lcom/JoyFramework/common/IOnAdListener;

    move-result-object v0

    if-eqz v0, :cond_8b

    .line 666
    iget-object v0, p0, Lcom/JoyFramework/d/ck;->c:Lcom/JoyFramework/d/ce;

    invoke-static {v0}, Lcom/JoyFramework/d/ce;->d(Lcom/JoyFramework/d/ce;)Lcom/JoyFramework/common/IOnAdListener;

    move-result-object v0

    sget-object v2, Lcom/JoyFramework/common/IOnAdListener$Ad_Type;->Ad_Type_Inspire:Lcom/JoyFramework/common/IOnAdListener$Ad_Type;

    const-string v3, "\u5e7f\u544a\u52a0\u8f7d\u8d85\u65f6\uff01\uff01"

    invoke-interface {v0, v2, v3}, Lcom/JoyFramework/common/IOnAdListener;->onAdError(Lcom/JoyFramework/common/IOnAdListener$Ad_Type;Ljava/lang/String;)V

    .line 670
    :cond_8b
    iget-object v0, p0, Lcom/JoyFramework/d/ck;->c:Lcom/JoyFramework/d/ce;

    invoke-static {v0, v1}, Lcom/JoyFramework/d/ce;->d(Lcom/JoyFramework/d/ce;Z)Z

    .line 671
    return-void

    :cond_91
    move v0, v1

    .line 664
    goto :goto_6b
.end method
