.class public Lcom/JoyFramework/module/login/LoginActivity;
.super Lcom/JoyFramework/module/BaseActivity;
.source "SourceFile"

# interfaces
.implements Lcom/JoyFramework/module/c;


# static fields
.field public static mLoginActivity:Landroid/app/Activity;


# instance fields
.field private backBaseFragment:Lcom/JoyFramework/module/a;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/JoyFramework/module/BaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public getContentViewId()I
    .registers 3

    .prologue
    .line 43
    const-string v0, "joy_activity_login_base"

    const-string v1, "layout"

    invoke-static {p0, v0, v1}, Lcom/JoyFramework/d/as;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getVisibleFragment()Landroid/app/Fragment;
    .registers 3

    .prologue
    .line 62
    invoke-virtual {p0}, Lcom/JoyFramework/module/login/LoginActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string v1, "login"

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    .line 63
    if-eqz v0, :cond_13

    invoke-virtual {v0}, Landroid/app/Fragment;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_13

    .line 66
    :goto_12
    return-object v0

    :cond_13
    const/4 v0, 0x0

    goto :goto_12
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 6

    .prologue
    .line 29
    invoke-super {p0, p1}, Lcom/JoyFramework/module/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 30
    invoke-static {p0}, Lcom/JoyFramework/d/a;->a(Landroid/app/Activity;)V

    .line 32
    sget-object v0, Lcom/JoyFramework/module/login/LoginActivity;->mLoginActivity:Landroid/app/Activity;

    if-nez v0, :cond_c

    .line 33
    sput-object p0, Lcom/JoyFramework/module/login/LoginActivity;->mLoginActivity:Landroid/app/Activity;

    .line 34
    :cond_c
    new-instance v0, Lcom/JoyFramework/module/login/d/v;

    invoke-direct {v0}, Lcom/JoyFramework/module/login/d/v;-><init>()V

    .line 36
    invoke-virtual {p0}, Lcom/JoyFramework/module/login/LoginActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "contentFrame"

    const-string v3, "id"

    invoke-static {p0, v2, v3}, Lcom/JoyFramework/d/as;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 35
    invoke-virtual {p0, v1, v0, v2}, Lcom/JoyFramework/module/login/LoginActivity;->addFragmentToActivity(Landroid/app/FragmentManager;Landroid/app/Fragment;I)V

    .line 38
    return-void
.end method

.method protected onDestroy()V
    .registers 2

    .prologue
    .line 54
    invoke-super {p0}, Lcom/JoyFramework/module/BaseActivity;->onDestroy()V

    .line 55
    sget-object v0, Lcom/JoyFramework/module/login/LoginActivity;->mLoginActivity:Landroid/app/Activity;

    if-eqz v0, :cond_a

    .line 56
    const/4 v0, 0x0

    sput-object v0, Lcom/JoyFramework/module/login/LoginActivity;->mLoginActivity:Landroid/app/Activity;

    .line 58
    :cond_a
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 5
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 73
    const/4 v1, 0x4

    if-ne p1, v1, :cond_21

    .line 74
    invoke-virtual {p0}, Lcom/JoyFramework/module/login/LoginActivity;->getVisibleFragment()Landroid/app/Fragment;

    move-result-object v1

    instance-of v1, v1, Lcom/JoyFramework/module/login/d/v;

    if-eqz v1, :cond_d

    .line 92
    :cond_c
    :goto_c
    return v0

    .line 78
    :cond_d
    iget-object v1, p0, Lcom/JoyFramework/module/login/LoginActivity;->backBaseFragment:Lcom/JoyFramework/module/a;

    if-eqz v1, :cond_1f

    .line 79
    iget-object v1, p0, Lcom/JoyFramework/module/login/LoginActivity;->backBaseFragment:Lcom/JoyFramework/module/a;

    invoke-virtual {v1}, Lcom/JoyFramework/module/a;->b()Z

    move-result v1

    if-nez v1, :cond_c

    .line 83
    iget-object v1, p0, Lcom/JoyFramework/module/login/LoginActivity;->backBaseFragment:Lcom/JoyFramework/module/a;

    invoke-virtual {v1}, Lcom/JoyFramework/module/a;->a()V

    goto :goto_c

    .line 87
    :cond_1f
    const/4 v0, 0x0

    goto :goto_c

    .line 92
    :cond_21
    invoke-super {p0, p1, p2}, Lcom/JoyFramework/module/BaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_c
.end method

.method protected onResume()V
    .registers 2

    .prologue
    .line 48
    invoke-super {p0}, Lcom/JoyFramework/module/BaseActivity;->onResume()V

    .line 49
    invoke-static {}, Lcom/JoyFramework/module/point/a;->a()Lcom/JoyFramework/module/point/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/JoyFramework/module/point/a;->c()V

    .line 50
    return-void
.end method

.method public setFragment(Lcom/JoyFramework/module/a;)V
    .registers 2

    .prologue
    .line 97
    iput-object p1, p0, Lcom/JoyFramework/module/login/LoginActivity;->backBaseFragment:Lcom/JoyFramework/module/a;

    .line 98
    return-void
.end method
