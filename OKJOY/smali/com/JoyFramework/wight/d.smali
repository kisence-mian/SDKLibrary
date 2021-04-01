.class Lcom/JoyFramework/wight/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/JoyFramework/module/login/a/c$a;


# instance fields
.field final synthetic a:Lcom/JoyFramework/wight/a;


# direct methods
.method constructor <init>(Lcom/JoyFramework/wight/a;)V
    .registers 2

    .prologue
    .line 159
    iput-object p1, p0, Lcom/JoyFramework/wight/d;->a:Lcom/JoyFramework/wight/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .registers 5

    .prologue
    .line 162
    iget-object v0, p0, Lcom/JoyFramework/wight/d;->a:Lcom/JoyFramework/wight/a;

    invoke-static {v0}, Lcom/JoyFramework/wight/a;->a(Lcom/JoyFramework/wight/a;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/JoyFramework/user/LoginUser;

    invoke-virtual {v0}, Lcom/JoyFramework/user/LoginUser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 163
    iget-object v0, p0, Lcom/JoyFramework/wight/d;->a:Lcom/JoyFramework/wight/a;

    invoke-static {v0}, Lcom/JoyFramework/wight/a;->a(Lcom/JoyFramework/wight/a;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/JoyFramework/user/LoginUser;

    invoke-virtual {v0}, Lcom/JoyFramework/user/LoginUser;->getPsw()Ljava/lang/String;

    move-result-object v0

    .line 164
    iget-object v2, p0, Lcom/JoyFramework/wight/d;->a:Lcom/JoyFramework/wight/a;

    invoke-static {v2}, Lcom/JoyFramework/wight/a;->b(Lcom/JoyFramework/wight/a;)V

    .line 165
    iget-object v2, p0, Lcom/JoyFramework/wight/d;->a:Lcom/JoyFramework/wight/a;

    invoke-static {v2}, Lcom/JoyFramework/wight/a;->c(Lcom/JoyFramework/wight/a;)Lcom/JoyFramework/wight/a$a;

    move-result-object v2

    if-eqz v2, :cond_36

    .line 167
    iget-object v2, p0, Lcom/JoyFramework/wight/d;->a:Lcom/JoyFramework/wight/a;

    invoke-static {v2}, Lcom/JoyFramework/wight/a;->c(Lcom/JoyFramework/wight/a;)Lcom/JoyFramework/wight/a$a;

    move-result-object v2

    invoke-interface {v2, v1, v0}, Lcom/JoyFramework/wight/a$a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    :cond_36
    return-void
.end method

.method public b(I)V
    .registers 6

    .prologue
    .line 173
    iget-object v0, p0, Lcom/JoyFramework/wight/d;->a:Lcom/JoyFramework/wight/a;

    invoke-static {v0}, Lcom/JoyFramework/wight/a;->a(Lcom/JoyFramework/wight/a;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/JoyFramework/user/LoginUser;

    invoke-virtual {v0}, Lcom/JoyFramework/user/LoginUser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 174
    iget-object v0, p0, Lcom/JoyFramework/wight/d;->a:Lcom/JoyFramework/wight/a;

    invoke-static {v0}, Lcom/JoyFramework/wight/a;->a(Lcom/JoyFramework/wight/a;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/JoyFramework/user/LoginUser;

    invoke-virtual {v0}, Lcom/JoyFramework/user/LoginUser;->getPsw()Ljava/lang/String;

    move-result-object v0

    .line 175
    invoke-static {}, Lcom/JoyFramework/d/a;->b()Landroid/app/Activity;

    move-result-object v2

    if-eqz v2, :cond_35

    .line 176
    iget-object v2, p0, Lcom/JoyFramework/wight/d;->a:Lcom/JoyFramework/wight/a;

    invoke-static {}, Lcom/JoyFramework/d/a;->b()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v2, v3, v1, v0}, Lcom/JoyFramework/wight/a;->a(Lcom/JoyFramework/wight/a;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    :cond_2f
    :goto_2f
    iget-object v0, p0, Lcom/JoyFramework/wight/d;->a:Lcom/JoyFramework/wight/a;

    invoke-virtual {v0}, Lcom/JoyFramework/wight/a;->a()V

    .line 185
    return-void

    .line 177
    :cond_35
    sget-object v2, Lcom/JoyFramework/module/login/AccountPhoneActivity;->mAccountPhoneActivity:Landroid/app/Activity;

    if-eqz v2, :cond_41

    .line 178
    iget-object v2, p0, Lcom/JoyFramework/wight/d;->a:Lcom/JoyFramework/wight/a;

    sget-object v3, Lcom/JoyFramework/module/login/LoginActivity;->mLoginActivity:Landroid/app/Activity;

    invoke-static {v2, v3, v1, v0}, Lcom/JoyFramework/wight/a;->a(Lcom/JoyFramework/wight/a;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2f

    .line 179
    :cond_41
    sget-object v2, Lcom/JoyFramework/module/login/LoginActivity;->mLoginActivity:Landroid/app/Activity;

    if-eqz v2, :cond_4d

    .line 180
    iget-object v2, p0, Lcom/JoyFramework/wight/d;->a:Lcom/JoyFramework/wight/a;

    sget-object v3, Lcom/JoyFramework/module/login/LoginActivity;->mLoginActivity:Landroid/app/Activity;

    invoke-static {v2, v3, v1, v0}, Lcom/JoyFramework/wight/a;->a(Lcom/JoyFramework/wight/a;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2f

    .line 181
    :cond_4d
    sget-object v2, Lcom/JoyFramework/module/login/SwitchAccountActivity;->mSwitchActivity:Landroid/app/Activity;

    if-eqz v2, :cond_2f

    .line 182
    iget-object v2, p0, Lcom/JoyFramework/wight/d;->a:Lcom/JoyFramework/wight/a;

    sget-object v3, Lcom/JoyFramework/module/login/SwitchAccountActivity;->mSwitchActivity:Landroid/app/Activity;

    invoke-static {v2, v3, v1, v0}, Lcom/JoyFramework/wight/a;->a(Lcom/JoyFramework/wight/a;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2f
.end method
