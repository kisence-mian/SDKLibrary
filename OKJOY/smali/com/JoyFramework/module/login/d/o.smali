.class Lcom/JoyFramework/module/login/d/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/JoyFramework/d/ba$b;


# instance fields
.field final synthetic a:Lcom/JoyFramework/module/login/d/n;


# direct methods
.method constructor <init>(Lcom/JoyFramework/module/login/d/n;)V
    .registers 2

    .prologue
    .line 329
    iput-object p1, p0, Lcom/JoyFramework/module/login/d/o;->a:Lcom/JoyFramework/module/login/d/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 333
    new-instance v0, Lcom/JoyFramework/user/LoginUser;

    iget-object v1, p0, Lcom/JoyFramework/module/login/d/o;->a:Lcom/JoyFramework/module/login/d/n;

    iget-object v1, v1, Lcom/JoyFramework/module/login/d/n;->b:Lcom/JoyFramework/module/login/d/k;

    invoke-static {v1}, Lcom/JoyFramework/module/login/d/k;->a(Lcom/JoyFramework/module/login/d/k;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/JoyFramework/module/login/d/o;->a:Lcom/JoyFramework/module/login/d/n;

    iget-object v2, v2, Lcom/JoyFramework/module/login/d/n;->b:Lcom/JoyFramework/module/login/d/k;

    invoke-static {v2}, Lcom/JoyFramework/module/login/d/k;->b(Lcom/JoyFramework/module/login/d/k;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/JoyFramework/module/login/d/o;->a:Lcom/JoyFramework/module/login/d/n;

    iget-object v3, v3, Lcom/JoyFramework/module/login/d/n;->b:Lcom/JoyFramework/module/login/d/k;

    invoke-static {v3}, Lcom/JoyFramework/module/login/d/k;->c(Lcom/JoyFramework/module/login/d/k;)Lcom/JoyFramework/user/LoginUser$LoginType;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/JoyFramework/user/LoginUser;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/JoyFramework/user/LoginUser$LoginType;)V

    .line 334
    iget-object v1, p0, Lcom/JoyFramework/module/login/d/o;->a:Lcom/JoyFramework/module/login/d/n;

    iget-object v1, v1, Lcom/JoyFramework/module/login/d/n;->b:Lcom/JoyFramework/module/login/d/k;

    invoke-virtual {v1}, Lcom/JoyFramework/module/login/d/k;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/JoyFramework/d/bw;->a(Landroid/content/Context;Lcom/JoyFramework/user/LoginUser;)V

    .line 337
    iget-object v0, p0, Lcom/JoyFramework/module/login/d/o;->a:Lcom/JoyFramework/module/login/d/n;

    iget-object v0, v0, Lcom/JoyFramework/module/login/d/n;->a:Lcom/JoyFramework/remote/bean/w;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/JoyFramework/remote/bean/w;->a(Z)V

    .line 338
    invoke-static {}, Lcom/JoyFramework/c/e;->a()Lcom/JoyFramework/c/e;

    move-result-object v0

    const/16 v1, 0x3e9

    iget-object v2, p0, Lcom/JoyFramework/module/login/d/o;->a:Lcom/JoyFramework/module/login/d/n;

    iget-object v2, v2, Lcom/JoyFramework/module/login/d/n;->a:Lcom/JoyFramework/remote/bean/w;

    invoke-virtual {v0, v1, v2}, Lcom/JoyFramework/c/e;->a(ILjava/lang/Object;)V

    .line 341
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/JoyFramework/module/login/d/o;->a:Lcom/JoyFramework/module/login/d/n;

    iget-object v1, v1, Lcom/JoyFramework/module/login/d/n;->b:Lcom/JoyFramework/module/login/d/k;

    invoke-virtual {v1}, Lcom/JoyFramework/module/login/d/k;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/JoyFramework/module/user/fragment/account/BaseAccountActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 342
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 344
    const-string v1, "showingType"

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 345
    iget-object v1, p0, Lcom/JoyFramework/module/login/d/o;->a:Lcom/JoyFramework/module/login/d/n;

    iget-object v1, v1, Lcom/JoyFramework/module/login/d/n;->b:Lcom/JoyFramework/module/login/d/k;

    invoke-virtual {v1}, Lcom/JoyFramework/module/login/d/k;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 346
    iget-object v0, p0, Lcom/JoyFramework/module/login/d/o;->a:Lcom/JoyFramework/module/login/d/n;

    iget-object v0, v0, Lcom/JoyFramework/module/login/d/n;->b:Lcom/JoyFramework/module/login/d/k;

    invoke-virtual {v0}, Lcom/JoyFramework/module/login/d/k;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, v4, v4}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 347
    iget-object v0, p0, Lcom/JoyFramework/module/login/d/o;->a:Lcom/JoyFramework/module/login/d/n;

    iget-object v0, v0, Lcom/JoyFramework/module/login/d/n;->b:Lcom/JoyFramework/module/login/d/k;

    invoke-virtual {v0}, Lcom/JoyFramework/module/login/d/k;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 349
    return-void
.end method

.method public b()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 353
    iget-object v0, p0, Lcom/JoyFramework/module/login/d/o;->a:Lcom/JoyFramework/module/login/d/n;

    iget-object v0, v0, Lcom/JoyFramework/module/login/d/n;->a:Lcom/JoyFramework/remote/bean/w;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/JoyFramework/remote/bean/w;->a(Z)V

    .line 354
    invoke-static {}, Lcom/JoyFramework/c/e;->a()Lcom/JoyFramework/c/e;

    move-result-object v0

    const/16 v1, 0x3e9

    iget-object v2, p0, Lcom/JoyFramework/module/login/d/o;->a:Lcom/JoyFramework/module/login/d/n;

    iget-object v2, v2, Lcom/JoyFramework/module/login/d/n;->a:Lcom/JoyFramework/remote/bean/w;

    invoke-virtual {v0, v1, v2}, Lcom/JoyFramework/c/e;->a(ILjava/lang/Object;)V

    .line 357
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/JoyFramework/module/login/d/o;->a:Lcom/JoyFramework/module/login/d/n;

    iget-object v1, v1, Lcom/JoyFramework/module/login/d/n;->b:Lcom/JoyFramework/module/login/d/k;

    invoke-virtual {v1}, Lcom/JoyFramework/module/login/d/k;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/JoyFramework/module/user/fragment/account/BaseAccountActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 358
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 360
    const-string v1, "showingType"

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 361
    iget-object v1, p0, Lcom/JoyFramework/module/login/d/o;->a:Lcom/JoyFramework/module/login/d/n;

    iget-object v1, v1, Lcom/JoyFramework/module/login/d/n;->b:Lcom/JoyFramework/module/login/d/k;

    invoke-virtual {v1}, Lcom/JoyFramework/module/login/d/k;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 362
    iget-object v0, p0, Lcom/JoyFramework/module/login/d/o;->a:Lcom/JoyFramework/module/login/d/n;

    iget-object v0, v0, Lcom/JoyFramework/module/login/d/n;->b:Lcom/JoyFramework/module/login/d/k;

    invoke-virtual {v0}, Lcom/JoyFramework/module/login/d/k;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, v3, v3}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 363
    iget-object v0, p0, Lcom/JoyFramework/module/login/d/o;->a:Lcom/JoyFramework/module/login/d/n;

    iget-object v0, v0, Lcom/JoyFramework/module/login/d/n;->b:Lcom/JoyFramework/module/login/d/k;

    invoke-virtual {v0}, Lcom/JoyFramework/module/login/d/k;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 365
    return-void
.end method
