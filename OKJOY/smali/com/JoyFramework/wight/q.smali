.class Lcom/JoyFramework/wight/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/JoyFramework/module/login/a/c$a;


# instance fields
.field final synthetic a:Lcom/JoyFramework/wight/n;


# direct methods
.method constructor <init>(Lcom/JoyFramework/wight/n;)V
    .registers 2

    .prologue
    .line 156
    iput-object p1, p0, Lcom/JoyFramework/wight/q;->a:Lcom/JoyFramework/wight/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .registers 5

    .prologue
    .line 159
    iget-object v0, p0, Lcom/JoyFramework/wight/q;->a:Lcom/JoyFramework/wight/n;

    invoke-static {v0}, Lcom/JoyFramework/wight/n;->a(Lcom/JoyFramework/wight/n;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/JoyFramework/user/LoginUser;

    invoke-virtual {v0}, Lcom/JoyFramework/user/LoginUser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 160
    iget-object v0, p0, Lcom/JoyFramework/wight/q;->a:Lcom/JoyFramework/wight/n;

    invoke-static {v0}, Lcom/JoyFramework/wight/n;->a(Lcom/JoyFramework/wight/n;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/JoyFramework/user/LoginUser;

    invoke-virtual {v0}, Lcom/JoyFramework/user/LoginUser;->getPsw()Ljava/lang/String;

    move-result-object v0

    .line 161
    iget-object v2, p0, Lcom/JoyFramework/wight/q;->a:Lcom/JoyFramework/wight/n;

    invoke-static {v2}, Lcom/JoyFramework/wight/n;->b(Lcom/JoyFramework/wight/n;)V

    .line 162
    iget-object v2, p0, Lcom/JoyFramework/wight/q;->a:Lcom/JoyFramework/wight/n;

    invoke-static {v2}, Lcom/JoyFramework/wight/n;->c(Lcom/JoyFramework/wight/n;)Lcom/JoyFramework/wight/n$a;

    move-result-object v2

    if-eqz v2, :cond_36

    .line 164
    iget-object v2, p0, Lcom/JoyFramework/wight/q;->a:Lcom/JoyFramework/wight/n;

    invoke-static {v2}, Lcom/JoyFramework/wight/n;->c(Lcom/JoyFramework/wight/n;)Lcom/JoyFramework/wight/n$a;

    move-result-object v2

    invoke-interface {v2, v1, v0}, Lcom/JoyFramework/wight/n$a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    :cond_36
    return-void
.end method

.method public b(I)V
    .registers 5

    .prologue
    .line 170
    iget-object v0, p0, Lcom/JoyFramework/wight/q;->a:Lcom/JoyFramework/wight/n;

    invoke-static {v0}, Lcom/JoyFramework/wight/n;->a(Lcom/JoyFramework/wight/n;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/JoyFramework/user/LoginUser;

    invoke-virtual {v0}, Lcom/JoyFramework/user/LoginUser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 172
    invoke-static {}, Lcom/JoyFramework/d/a;->b()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_25

    .line 173
    iget-object v1, p0, Lcom/JoyFramework/wight/q;->a:Lcom/JoyFramework/wight/n;

    invoke-static {}, Lcom/JoyFramework/d/a;->b()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/JoyFramework/wight/n;->a(Lcom/JoyFramework/wight/n;Landroid/app/Activity;Ljava/lang/String;)V

    .line 181
    :cond_1f
    :goto_1f
    iget-object v0, p0, Lcom/JoyFramework/wight/q;->a:Lcom/JoyFramework/wight/n;

    invoke-virtual {v0}, Lcom/JoyFramework/wight/n;->a()V

    .line 182
    return-void

    .line 174
    :cond_25
    sget-object v1, Lcom/JoyFramework/module/login/AccountPhoneActivity;->mAccountPhoneActivity:Landroid/app/Activity;

    if-eqz v1, :cond_31

    .line 175
    iget-object v1, p0, Lcom/JoyFramework/wight/q;->a:Lcom/JoyFramework/wight/n;

    sget-object v2, Lcom/JoyFramework/module/login/LoginActivity;->mLoginActivity:Landroid/app/Activity;

    invoke-static {v1, v2, v0}, Lcom/JoyFramework/wight/n;->a(Lcom/JoyFramework/wight/n;Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_1f

    .line 176
    :cond_31
    sget-object v1, Lcom/JoyFramework/module/login/LoginActivity;->mLoginActivity:Landroid/app/Activity;

    if-eqz v1, :cond_3d

    .line 177
    iget-object v1, p0, Lcom/JoyFramework/wight/q;->a:Lcom/JoyFramework/wight/n;

    sget-object v2, Lcom/JoyFramework/module/login/LoginActivity;->mLoginActivity:Landroid/app/Activity;

    invoke-static {v1, v2, v0}, Lcom/JoyFramework/wight/n;->a(Lcom/JoyFramework/wight/n;Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_1f

    .line 178
    :cond_3d
    sget-object v1, Lcom/JoyFramework/module/login/SwitchAccountActivity;->mSwitchActivity:Landroid/app/Activity;

    if-eqz v1, :cond_1f

    .line 179
    iget-object v1, p0, Lcom/JoyFramework/wight/q;->a:Lcom/JoyFramework/wight/n;

    sget-object v2, Lcom/JoyFramework/module/login/SwitchAccountActivity;->mSwitchActivity:Landroid/app/Activity;

    invoke-static {v1, v2, v0}, Lcom/JoyFramework/wight/n;->a(Lcom/JoyFramework/wight/n;Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_1f
.end method
