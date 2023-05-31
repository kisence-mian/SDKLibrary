.class Lcom/JoyFramework/module/login/d/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/JoyFramework/d/e$c;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/JoyFramework/module/login/d/k;


# direct methods
.method constructor <init>(Lcom/JoyFramework/module/login/d/k;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 528
    iput-object p1, p0, Lcom/JoyFramework/module/login/d/t;->c:Lcom/JoyFramework/module/login/d/k;

    iput-object p2, p0, Lcom/JoyFramework/module/login/d/t;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/JoyFramework/module/login/d/t;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 531
    iget-object v0, p0, Lcom/JoyFramework/module/login/d/t;->c:Lcom/JoyFramework/module/login/d/k;

    invoke-static {v0}, Lcom/JoyFramework/module/login/d/k;->e(Lcom/JoyFramework/module/login/d/k;)Lcom/JoyFramework/wight/SwitchAccountPopupEditText;

    move-result-object v0

    iget-object v1, p0, Lcom/JoyFramework/module/login/d/t;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/JoyFramework/module/login/d/t;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/JoyFramework/wight/SwitchAccountPopupEditText;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 532
    invoke-static {}, Lcom/JoyFramework/d/bw;->a()Ljava/util/List;

    move-result-object v0

    .line 533
    if-eqz v0, :cond_1a

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_25

    .line 535
    :cond_1a
    new-instance v0, Lcom/JoyFramework/module/login/d/v;

    invoke-direct {v0}, Lcom/JoyFramework/module/login/d/v;-><init>()V

    .line 536
    iget-object v1, p0, Lcom/JoyFramework/module/login/d/t;->c:Lcom/JoyFramework/module/login/d/k;

    invoke-static {v1, v0, v3}, Lcom/JoyFramework/module/login/d/k;->c(Lcom/JoyFramework/module/login/d/k;Landroid/app/Fragment;Z)V

    .line 545
    :goto_24
    return-void

    .line 538
    :cond_25
    invoke-static {v0}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 539
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/JoyFramework/user/LoginUser;

    .line 540
    iget-object v1, p0, Lcom/JoyFramework/module/login/d/t;->c:Lcom/JoyFramework/module/login/d/k;

    invoke-static {v1}, Lcom/JoyFramework/module/login/d/k;->e(Lcom/JoyFramework/module/login/d/k;)Lcom/JoyFramework/wight/SwitchAccountPopupEditText;

    move-result-object v1

    invoke-virtual {v0}, Lcom/JoyFramework/user/LoginUser;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/JoyFramework/wight/SwitchAccountPopupEditText;->setText(Ljava/lang/String;)V

    .line 541
    iget-object v1, p0, Lcom/JoyFramework/module/login/d/t;->c:Lcom/JoyFramework/module/login/d/k;

    invoke-virtual {v0}, Lcom/JoyFramework/user/LoginUser;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/JoyFramework/module/login/d/k;->a(Lcom/JoyFramework/module/login/d/k;Ljava/lang/String;)Ljava/lang/String;

    .line 542
    iget-object v1, p0, Lcom/JoyFramework/module/login/d/t;->c:Lcom/JoyFramework/module/login/d/k;

    invoke-virtual {v0}, Lcom/JoyFramework/user/LoginUser;->getPsw()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/JoyFramework/module/login/d/k;->b(Lcom/JoyFramework/module/login/d/k;Ljava/lang/String;)Ljava/lang/String;

    .line 543
    iget-object v1, p0, Lcom/JoyFramework/module/login/d/t;->c:Lcom/JoyFramework/module/login/d/k;

    invoke-virtual {v0}, Lcom/JoyFramework/user/LoginUser;->getType()Lcom/JoyFramework/user/LoginUser$LoginType;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/JoyFramework/module/login/d/k;->a(Lcom/JoyFramework/module/login/d/k;Lcom/JoyFramework/user/LoginUser$LoginType;)Lcom/JoyFramework/user/LoginUser$LoginType;

    goto :goto_24
.end method

.method public b()V
    .registers 1

    .prologue
    .line 550
    return-void
.end method
