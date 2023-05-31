.class Lcom/JoyFramework/module/login/d/y;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/JoyFramework/wight/f$a;


# instance fields
.field final synthetic a:Lcom/JoyFramework/module/login/d/v;


# direct methods
.method constructor <init>(Lcom/JoyFramework/module/login/d/v;)V
    .registers 2

    .prologue
    .line 189
    iput-object p1, p0, Lcom/JoyFramework/module/login/d/y;->a:Lcom/JoyFramework/module/login/d/v;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 6

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 192
    iget-object v0, p0, Lcom/JoyFramework/module/login/d/y;->a:Lcom/JoyFramework/module/login/d/v;

    invoke-static {v0}, Lcom/JoyFramework/module/login/d/v;->b(Lcom/JoyFramework/module/login/d/v;)Lcom/JoyFramework/wight/f;

    move-result-object v0

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/JoyFramework/module/login/d/y;->a:Lcom/JoyFramework/module/login/d/v;

    invoke-static {v0}, Lcom/JoyFramework/module/login/d/v;->b(Lcom/JoyFramework/module/login/d/v;)Lcom/JoyFramework/wight/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/JoyFramework/wight/f;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 193
    iget-object v0, p0, Lcom/JoyFramework/module/login/d/y;->a:Lcom/JoyFramework/module/login/d/v;

    invoke-static {v0}, Lcom/JoyFramework/module/login/d/v;->b(Lcom/JoyFramework/module/login/d/v;)Lcom/JoyFramework/wight/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/JoyFramework/wight/f;->dismiss()V

    .line 194
    :cond_1f
    sput-boolean v4, Lcom/JoyFramework/a/a;->m:Z

    .line 196
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/JoyFramework/module/login/d/y;->a:Lcom/JoyFramework/module/login/d/v;

    invoke-virtual {v1}, Lcom/JoyFramework/module/login/d/v;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/JoyFramework/module/login/SwitchAccountActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 197
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 198
    const-string v1, "showPage"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 199
    iget-object v1, p0, Lcom/JoyFramework/module/login/d/y;->a:Lcom/JoyFramework/module/login/d/v;

    invoke-virtual {v1}, Lcom/JoyFramework/module/login/d/v;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 200
    iget-object v0, p0, Lcom/JoyFramework/module/login/d/y;->a:Lcom/JoyFramework/module/login/d/v;

    invoke-virtual {v0}, Lcom/JoyFramework/module/login/d/v;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 201
    iget-object v0, p0, Lcom/JoyFramework/module/login/d/y;->a:Lcom/JoyFramework/module/login/d/v;

    invoke-virtual {v0}, Lcom/JoyFramework/module/login/d/v;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, v3, v3}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 202
    return-void
.end method

.method public b()V
    .registers 5

    .prologue
    .line 206
    sget-object v0, Lcom/JoyFramework/module/login/d/ah;->a:[I

    iget-object v1, p0, Lcom/JoyFramework/module/login/d/y;->a:Lcom/JoyFramework/module/login/d/v;

    invoke-static {v1}, Lcom/JoyFramework/module/login/d/v;->c(Lcom/JoyFramework/module/login/d/v;)Lcom/JoyFramework/user/LoginUser$LoginType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/JoyFramework/user/LoginUser$LoginType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_54

    .line 220
    :goto_11
    return-void

    .line 208
    :pswitch_12
    iget-object v0, p0, Lcom/JoyFramework/module/login/d/y;->a:Lcom/JoyFramework/module/login/d/v;

    invoke-static {v0}, Lcom/JoyFramework/module/login/d/v;->f(Lcom/JoyFramework/module/login/d/v;)Lcom/JoyFramework/module/login/b/g$a;

    move-result-object v0

    sget-object v1, Lcom/JoyFramework/module/login/LoginActivity;->mLoginActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/JoyFramework/module/login/d/y;->a:Lcom/JoyFramework/module/login/d/v;

    invoke-static {v2}, Lcom/JoyFramework/module/login/d/v;->d(Lcom/JoyFramework/module/login/d/v;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/JoyFramework/module/login/d/y;->a:Lcom/JoyFramework/module/login/d/v;

    invoke-static {v3}, Lcom/JoyFramework/module/login/d/v;->e(Lcom/JoyFramework/module/login/d/v;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/JoyFramework/module/login/b/g$a;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_11

    .line 211
    :pswitch_2a
    iget-object v0, p0, Lcom/JoyFramework/module/login/d/y;->a:Lcom/JoyFramework/module/login/d/v;

    invoke-static {v0}, Lcom/JoyFramework/module/login/d/v;->f(Lcom/JoyFramework/module/login/d/v;)Lcom/JoyFramework/module/login/b/g$a;

    move-result-object v0

    sget-object v1, Lcom/JoyFramework/module/login/LoginActivity;->mLoginActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/JoyFramework/module/login/d/y;->a:Lcom/JoyFramework/module/login/d/v;

    invoke-static {v2}, Lcom/JoyFramework/module/login/d/v;->d(Lcom/JoyFramework/module/login/d/v;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/JoyFramework/module/login/d/y;->a:Lcom/JoyFramework/module/login/d/v;

    invoke-static {v3}, Lcom/JoyFramework/module/login/d/v;->e(Lcom/JoyFramework/module/login/d/v;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/JoyFramework/module/login/b/g$a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_11

    .line 214
    :pswitch_42
    iget-object v0, p0, Lcom/JoyFramework/module/login/d/y;->a:Lcom/JoyFramework/module/login/d/v;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/JoyFramework/module/login/d/v;->a(Lcom/JoyFramework/module/login/d/v;Z)Z

    .line 215
    iget-object v0, p0, Lcom/JoyFramework/module/login/d/y;->a:Lcom/JoyFramework/module/login/d/v;

    invoke-static {v0}, Lcom/JoyFramework/module/login/d/v;->f(Lcom/JoyFramework/module/login/d/v;)Lcom/JoyFramework/module/login/b/g$a;

    move-result-object v0

    sget-object v1, Lcom/JoyFramework/module/login/LoginActivity;->mLoginActivity:Landroid/app/Activity;

    invoke-interface {v0, v1}, Lcom/JoyFramework/module/login/b/g$a;->a(Landroid/content/Context;)V

    goto :goto_11

    .line 206
    :pswitch_data_54
    .packed-switch 0x1
        :pswitch_12
        :pswitch_2a
        :pswitch_42
    .end packed-switch
.end method
