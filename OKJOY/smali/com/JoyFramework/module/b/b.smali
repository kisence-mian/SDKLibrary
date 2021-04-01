.class Lcom/JoyFramework/module/b/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/JoyFramework/remote/b/c/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/JoyFramework/remote/b/c/c",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/JoyFramework/common/PaymentInfo;

.field final synthetic c:Lcom/JoyFramework/module/b/a;


# direct methods
.method constructor <init>(Lcom/JoyFramework/module/b/a;Landroid/content/Context;Lcom/JoyFramework/common/PaymentInfo;)V
    .registers 4

    .prologue
    .line 60
    iput-object p1, p0, Lcom/JoyFramework/module/b/b;->c:Lcom/JoyFramework/module/b/a;

    iput-object p2, p0, Lcom/JoyFramework/module/b/b;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/JoyFramework/module/b/b;->b:Lcom/JoyFramework/common/PaymentInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 63
    iget-object v0, p0, Lcom/JoyFramework/module/b/b;->a:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 64
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .registers 7

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x0

    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u4e0b\u5355\u6210\u529f  --> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/JoyFramework/d/aq;->c(Ljava/lang/String;)V

    .line 70
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    const-class v1, Lcom/JoyFramework/remote/bean/ab;

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/JoyFramework/remote/bean/ab;

    .line 71
    iget-object v1, p0, Lcom/JoyFramework/module/b/b;->b:Lcom/JoyFramework/common/PaymentInfo;

    invoke-virtual {v1}, Lcom/JoyFramework/common/PaymentInfo;->getBillNo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/JoyFramework/remote/bean/ab;->l(Ljava/lang/String;)V

    .line 72
    iget-object v1, p0, Lcom/JoyFramework/module/b/b;->b:Lcom/JoyFramework/common/PaymentInfo;

    invoke-virtual {v1}, Lcom/JoyFramework/common/PaymentInfo;->getProductId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/JoyFramework/remote/bean/ab;->m(Ljava/lang/String;)V

    .line 73
    iget-object v1, p0, Lcom/JoyFramework/module/b/b;->b:Lcom/JoyFramework/common/PaymentInfo;

    invoke-virtual {v1}, Lcom/JoyFramework/common/PaymentInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/JoyFramework/remote/bean/ab;->o(Ljava/lang/String;)V

    .line 74
    iget-object v1, p0, Lcom/JoyFramework/module/b/b;->b:Lcom/JoyFramework/common/PaymentInfo;

    invoke-virtual {v1}, Lcom/JoyFramework/common/PaymentInfo;->getServerName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/JoyFramework/remote/bean/ab;->h(Ljava/lang/String;)V

    .line 75
    iget-object v1, p0, Lcom/JoyFramework/module/b/b;->b:Lcom/JoyFramework/common/PaymentInfo;

    invoke-virtual {v1}, Lcom/JoyFramework/common/PaymentInfo;->getServerId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/JoyFramework/remote/bean/ab;->n(Ljava/lang/String;)V

    .line 76
    iget-object v1, p0, Lcom/JoyFramework/module/b/b;->b:Lcom/JoyFramework/common/PaymentInfo;

    invoke-virtual {v1}, Lcom/JoyFramework/common/PaymentInfo;->getRoleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/JoyFramework/remote/bean/ab;->p(Ljava/lang/String;)V

    .line 77
    iget-object v1, p0, Lcom/JoyFramework/module/b/b;->b:Lcom/JoyFramework/common/PaymentInfo;

    invoke-virtual {v1}, Lcom/JoyFramework/common/PaymentInfo;->getRoleId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/JoyFramework/remote/bean/ab;->r(Ljava/lang/String;)V

    .line 78
    iget-object v1, p0, Lcom/JoyFramework/module/b/b;->b:Lcom/JoyFramework/common/PaymentInfo;

    invoke-virtual {v1}, Lcom/JoyFramework/common/PaymentInfo;->getLevel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/JoyFramework/remote/bean/ab;->q(Ljava/lang/String;)V

    .line 79
    iget-object v1, p0, Lcom/JoyFramework/module/b/b;->b:Lcom/JoyFramework/common/PaymentInfo;

    invoke-virtual {v1}, Lcom/JoyFramework/common/PaymentInfo;->getVip()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/JoyFramework/remote/bean/ab;->j(Ljava/lang/String;)V

    .line 80
    iget-object v1, p0, Lcom/JoyFramework/module/b/b;->b:Lcom/JoyFramework/common/PaymentInfo;

    invoke-virtual {v1}, Lcom/JoyFramework/common/PaymentInfo;->getBalance()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/JoyFramework/remote/bean/ab;->i(Ljava/lang/String;)V

    .line 81
    iget-object v1, p0, Lcom/JoyFramework/module/b/b;->b:Lcom/JoyFramework/common/PaymentInfo;

    invoke-virtual {v1}, Lcom/JoyFramework/common/PaymentInfo;->getCurrency()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/JoyFramework/remote/bean/ab;->f(Ljava/lang/String;)V

    .line 82
    iget-object v1, p0, Lcom/JoyFramework/module/b/b;->b:Lcom/JoyFramework/common/PaymentInfo;

    invoke-virtual {v1}, Lcom/JoyFramework/common/PaymentInfo;->getPartyName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/JoyFramework/remote/bean/ab;->k(Ljava/lang/String;)V

    .line 106
    sget-object v1, Lcom/JoyFramework/a/a;->g:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/JoyFramework/remote/bean/ab;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d9

    .line 107
    sget-object v1, Lcom/JoyFramework/a/a;->g:Ljava/lang/String;

    const-string v2, "14"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_cf

    .line 108
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/JoyFramework/module/b/b;->a:Landroid/content/Context;

    const-class v2, Lcom/JoyFramework/module/user/fragment/account/BaseAccountActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 109
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 110
    const-string v2, "pay_info"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 112
    const-string v1, "showingType"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 113
    iget-object v1, p0, Lcom/JoyFramework/module/b/b;->a:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 114
    iget-object v0, p0, Lcom/JoyFramework/module/b/b;->a:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0, v3, v3}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 130
    :goto_ce
    return-void

    .line 116
    :cond_cf
    invoke-static {}, Lcom/JoyFramework/c/a;->a()Lcom/JoyFramework/c/a;

    move-result-object v1

    iget-object v2, p0, Lcom/JoyFramework/module/b/b;->a:Landroid/content/Context;

    invoke-virtual {v1, v2, v0}, Lcom/JoyFramework/c/a;->a(Landroid/content/Context;Lcom/JoyFramework/remote/bean/ab;)V

    goto :goto_ce

    .line 121
    :cond_d9
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/JoyFramework/module/b/b;->a:Landroid/content/Context;

    const-class v2, Lcom/JoyFramework/module/user/fragment/account/BaseAccountActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 122
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 123
    const-string v2, "pay_info"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 125
    const-string v1, "showingType"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 126
    iget-object v1, p0, Lcom/JoyFramework/module/b/b;->a:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 127
    iget-object v0, p0, Lcom/JoyFramework/module/b/b;->a:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0, v3, v3}, Landroid/app/Activity;->overridePendingTransition(II)V

    goto :goto_ce
.end method
