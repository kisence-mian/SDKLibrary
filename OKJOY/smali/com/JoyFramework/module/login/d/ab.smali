.class Lcom/JoyFramework/module/login/d/ab;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/JoyFramework/d/ba$b;


# instance fields
.field final synthetic a:Lcom/JoyFramework/module/login/d/aa;


# direct methods
.method constructor <init>(Lcom/JoyFramework/module/login/d/aa;)V
    .registers 2

    .prologue
    .line 388
    iput-object p1, p0, Lcom/JoyFramework/module/login/d/ab;->a:Lcom/JoyFramework/module/login/d/aa;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 6

    .prologue
    const/4 v4, 0x1

    .line 392
    new-instance v0, Lcom/JoyFramework/user/LoginUser;

    iget-object v1, p0, Lcom/JoyFramework/module/login/d/ab;->a:Lcom/JoyFramework/module/login/d/aa;

    iget-object v1, v1, Lcom/JoyFramework/module/login/d/aa;->b:Lcom/JoyFramework/module/login/d/v;

    invoke-static {v1}, Lcom/JoyFramework/module/login/d/v;->d(Lcom/JoyFramework/module/login/d/v;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/JoyFramework/module/login/d/ab;->a:Lcom/JoyFramework/module/login/d/aa;

    iget-object v2, v2, Lcom/JoyFramework/module/login/d/aa;->b:Lcom/JoyFramework/module/login/d/v;

    invoke-static {v2}, Lcom/JoyFramework/module/login/d/v;->e(Lcom/JoyFramework/module/login/d/v;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/JoyFramework/module/login/d/ab;->a:Lcom/JoyFramework/module/login/d/aa;

    iget-object v3, v3, Lcom/JoyFramework/module/login/d/aa;->b:Lcom/JoyFramework/module/login/d/v;

    invoke-static {v3}, Lcom/JoyFramework/module/login/d/v;->c(Lcom/JoyFramework/module/login/d/v;)Lcom/JoyFramework/user/LoginUser$LoginType;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/JoyFramework/user/LoginUser;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/JoyFramework/user/LoginUser$LoginType;)V

    .line 393
    iget-object v1, p0, Lcom/JoyFramework/module/login/d/ab;->a:Lcom/JoyFramework/module/login/d/aa;

    iget-object v1, v1, Lcom/JoyFramework/module/login/d/aa;->b:Lcom/JoyFramework/module/login/d/v;

    invoke-virtual {v1}, Lcom/JoyFramework/module/login/d/v;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/JoyFramework/d/bw;->a(Landroid/content/Context;Lcom/JoyFramework/user/LoginUser;)V

    .line 395
    iget-object v0, p0, Lcom/JoyFramework/module/login/d/ab;->a:Lcom/JoyFramework/module/login/d/aa;

    iget-object v0, v0, Lcom/JoyFramework/module/login/d/aa;->a:Lcom/JoyFramework/remote/bean/w;

    invoke-virtual {v0, v4}, Lcom/JoyFramework/remote/bean/w;->a(Z)V

    .line 396
    invoke-static {}, Lcom/JoyFramework/c/e;->a()Lcom/JoyFramework/c/e;

    move-result-object v0

    const/16 v1, 0x3e9

    iget-object v2, p0, Lcom/JoyFramework/module/login/d/ab;->a:Lcom/JoyFramework/module/login/d/aa;

    iget-object v2, v2, Lcom/JoyFramework/module/login/d/aa;->a:Lcom/JoyFramework/remote/bean/w;

    invoke-virtual {v0, v1, v2}, Lcom/JoyFramework/c/e;->a(ILjava/lang/Object;)V

    .line 397
    new-instance v0, Lcom/JoyFramework/module/user/fragment/account/b;

    invoke-direct {v0}, Lcom/JoyFramework/module/user/fragment/account/b;-><init>()V

    .line 398
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 399
    const-string v2, "shouldShowBack"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 400
    invoke-virtual {v0, v1}, Lcom/JoyFramework/module/user/fragment/account/b;->setArguments(Landroid/os/Bundle;)V

    .line 401
    iget-object v1, p0, Lcom/JoyFramework/module/login/d/ab;->a:Lcom/JoyFramework/module/login/d/aa;

    iget-object v1, v1, Lcom/JoyFramework/module/login/d/aa;->b:Lcom/JoyFramework/module/login/d/v;

    invoke-static {v1, v0, v4}, Lcom/JoyFramework/module/login/d/v;->a(Lcom/JoyFramework/module/login/d/v;Landroid/app/Fragment;Z)V

    .line 403
    return-void
.end method

.method public b()V
    .registers 6

    .prologue
    const/4 v4, 0x1

    .line 407
    iget-object v0, p0, Lcom/JoyFramework/module/login/d/ab;->a:Lcom/JoyFramework/module/login/d/aa;

    iget-object v0, v0, Lcom/JoyFramework/module/login/d/aa;->a:Lcom/JoyFramework/remote/bean/w;

    invoke-virtual {v0, v4}, Lcom/JoyFramework/remote/bean/w;->a(Z)V

    .line 408
    invoke-static {}, Lcom/JoyFramework/c/e;->a()Lcom/JoyFramework/c/e;

    move-result-object v0

    const/16 v1, 0x3e9

    iget-object v2, p0, Lcom/JoyFramework/module/login/d/ab;->a:Lcom/JoyFramework/module/login/d/aa;

    iget-object v2, v2, Lcom/JoyFramework/module/login/d/aa;->a:Lcom/JoyFramework/remote/bean/w;

    invoke-virtual {v0, v1, v2}, Lcom/JoyFramework/c/e;->a(ILjava/lang/Object;)V

    .line 410
    new-instance v0, Lcom/JoyFramework/module/user/fragment/account/b;

    invoke-direct {v0}, Lcom/JoyFramework/module/user/fragment/account/b;-><init>()V

    .line 411
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 412
    const-string v2, "shouldShowBack"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 413
    invoke-virtual {v0, v1}, Lcom/JoyFramework/module/user/fragment/account/b;->setArguments(Landroid/os/Bundle;)V

    .line 414
    iget-object v1, p0, Lcom/JoyFramework/module/login/d/ab;->a:Lcom/JoyFramework/module/login/d/aa;

    iget-object v1, v1, Lcom/JoyFramework/module/login/d/aa;->b:Lcom/JoyFramework/module/login/d/v;

    invoke-static {v1, v0, v4}, Lcom/JoyFramework/module/login/d/v;->b(Lcom/JoyFramework/module/login/d/v;Landroid/app/Fragment;Z)V

    .line 416
    return-void
.end method
