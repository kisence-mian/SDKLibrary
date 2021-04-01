.class Lcom/JoyFramework/module/login/d/ag;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/JoyFramework/d/e$e;


# instance fields
.field final synthetic a:Lcom/JoyFramework/remote/bean/w;

.field final synthetic b:Lcom/JoyFramework/module/login/d/v;


# direct methods
.method constructor <init>(Lcom/JoyFramework/module/login/d/v;Lcom/JoyFramework/remote/bean/w;)V
    .registers 3

    .prologue
    .line 653
    iput-object p1, p0, Lcom/JoyFramework/module/login/d/ag;->b:Lcom/JoyFramework/module/login/d/v;

    iput-object p2, p0, Lcom/JoyFramework/module/login/d/ag;->a:Lcom/JoyFramework/remote/bean/w;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 6

    .prologue
    const/4 v4, 0x1

    .line 665
    new-instance v0, Lcom/JoyFramework/module/login/d/c;

    invoke-direct {v0}, Lcom/JoyFramework/module/login/d/c;-><init>()V

    .line 667
    iget-object v1, p0, Lcom/JoyFramework/module/login/d/ag;->a:Lcom/JoyFramework/remote/bean/w;

    invoke-virtual {v1}, Lcom/JoyFramework/remote/bean/w;->k()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2a

    .line 668
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 669
    const-string v2, "use_account_name"

    iget-object v3, p0, Lcom/JoyFramework/module/login/d/ag;->a:Lcom/JoyFramework/remote/bean/w;

    invoke-virtual {v3}, Lcom/JoyFramework/remote/bean/w;->k()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 670
    const-string v2, "canBackStack"

    invoke-virtual {v1, v2, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 671
    invoke-virtual {v0, v1}, Lcom/JoyFramework/module/login/d/c;->setArguments(Landroid/os/Bundle;)V

    .line 673
    :cond_2a
    iget-object v1, p0, Lcom/JoyFramework/module/login/d/ag;->b:Lcom/JoyFramework/module/login/d/v;

    invoke-static {v1, v0, v4}, Lcom/JoyFramework/module/login/d/v;->f(Lcom/JoyFramework/module/login/d/v;Landroid/app/Fragment;Z)V

    .line 676
    return-void
.end method
