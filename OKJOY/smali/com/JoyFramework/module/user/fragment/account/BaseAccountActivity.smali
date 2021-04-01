.class public Lcom/JoyFramework/module/user/fragment/account/BaseAccountActivity;
.super Lcom/JoyFramework/module/BaseActivity;
.source "SourceFile"

# interfaces
.implements Lcom/JoyFramework/module/c;


# instance fields
.field a:Z

.field b:Z

.field private c:Lcom/JoyFramework/module/a;

.field private d:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 22
    invoke-direct {p0}, Lcom/JoyFramework/module/BaseActivity;-><init>()V

    .line 24
    iput-boolean v0, p0, Lcom/JoyFramework/module/user/fragment/account/BaseAccountActivity;->a:Z

    .line 27
    iput-boolean v0, p0, Lcom/JoyFramework/module/user/fragment/account/BaseAccountActivity;->b:Z

    .line 29
    iput-boolean v0, p0, Lcom/JoyFramework/module/user/fragment/account/BaseAccountActivity;->d:Z

    return-void
.end method


# virtual methods
.method public a()V
    .registers 1

    .prologue
    .line 94
    invoke-virtual {p0}, Lcom/JoyFramework/module/user/fragment/account/BaseAccountActivity;->finish()V

    .line 95
    return-void
.end method

.method public getContentViewId()I
    .registers 2

    .prologue
    .line 99
    const-string v0, "joy_activity_account_base"

    invoke-static {p0, v0}, Lcom/JoyFramework/d/as;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 7

    .prologue
    .line 33
    invoke-super {p0, p1}, Lcom/JoyFramework/module/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 36
    :try_start_3
    invoke-virtual {p0}, Lcom/JoyFramework/module/user/fragment/account/BaseAccountActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "showingType"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 37
    invoke-virtual {p0}, Lcom/JoyFramework/module/user/fragment/account/BaseAccountActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "notAllowClose"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/JoyFramework/module/user/fragment/account/BaseAccountActivity;->d:Z

    .line 39
    const-string v1, "l_account_base_fragment_host"

    invoke-static {p0, v1}, Lcom/JoyFramework/d/as;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    .line 40
    packed-switch v0, :pswitch_data_cc

    .line 87
    :goto_24
    :pswitch_24
    invoke-static {}, Lcom/JoyFramework/c/e;->a()Lcom/JoyFramework/c/e;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/JoyFramework/c/e;->a(Lcom/JoyFramework/module/user/fragment/account/BaseAccountActivity;)V

    .line 91
    :goto_2b
    return-void

    .line 42
    :pswitch_2c
    new-instance v0, Lcom/JoyFramework/module/user/fragment/account/t;

    invoke-direct {v0}, Lcom/JoyFramework/module/user/fragment/account/t;-><init>()V

    .line 43
    invoke-virtual {p0}, Lcom/JoyFramework/module/user/fragment/account/BaseAccountActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {p0, v2, v0, v1}, Lcom/JoyFramework/module/user/fragment/account/BaseAccountActivity;->addFragmentToAccountActivity(Landroid/app/FragmentManager;Landroid/app/Fragment;I)V
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_38} :catch_39

    goto :goto_24

    .line 88
    :catch_39
    move-exception v0

    .line 89
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2b

    .line 47
    :pswitch_3e
    :try_start_3e
    new-instance v0, Lcom/JoyFramework/module/b/c/a;

    invoke-direct {v0}, Lcom/JoyFramework/module/b/c/a;-><init>()V

    .line 48
    invoke-virtual {p0}, Lcom/JoyFramework/module/user/fragment/account/BaseAccountActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {p0, v2, v0, v1}, Lcom/JoyFramework/module/user/fragment/account/BaseAccountActivity;->addFragmentToAccountActivity(Landroid/app/FragmentManager;Landroid/app/Fragment;I)V

    goto :goto_24

    .line 51
    :pswitch_4b
    new-instance v0, Lcom/JoyFramework/module/user/fragment/account/b;

    invoke-direct {v0}, Lcom/JoyFramework/module/user/fragment/account/b;-><init>()V

    .line 52
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 53
    const-string v3, "shouldShowBack"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 54
    invoke-virtual {v0, v2}, Lcom/JoyFramework/module/user/fragment/account/b;->setArguments(Landroid/os/Bundle;)V

    .line 55
    invoke-virtual {p0}, Lcom/JoyFramework/module/user/fragment/account/BaseAccountActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {p0, v2, v0, v1}, Lcom/JoyFramework/module/user/fragment/account/BaseAccountActivity;->addFragmentToAccountActivity(Landroid/app/FragmentManager;Landroid/app/Fragment;I)V

    goto :goto_24

    .line 59
    :pswitch_66
    new-instance v0, Lcom/JoyFramework/module/user/fragment/account/c;

    invoke-direct {v0}, Lcom/JoyFramework/module/user/fragment/account/c;-><init>()V

    .line 60
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 61
    const-string v3, "shouldShowBack"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 62
    invoke-virtual {v0, v2}, Lcom/JoyFramework/module/user/fragment/account/c;->setArguments(Landroid/os/Bundle;)V

    .line 63
    invoke-virtual {p0}, Lcom/JoyFramework/module/user/fragment/account/BaseAccountActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {p0, v2, v0, v1}, Lcom/JoyFramework/module/user/fragment/account/BaseAccountActivity;->addFragmentToAccountActivity(Landroid/app/FragmentManager;Landroid/app/Fragment;I)V

    goto :goto_24

    .line 66
    :pswitch_81
    new-instance v0, Lcom/JoyFramework/module/user/fragment/account/n;

    invoke-direct {v0}, Lcom/JoyFramework/module/user/fragment/account/n;-><init>()V

    .line 67
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 68
    const-string v3, "shouldShowBack"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 69
    const-string v3, "notAllowClose"

    iget-boolean v4, p0, Lcom/JoyFramework/module/user/fragment/account/BaseAccountActivity;->d:Z

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 70
    invoke-virtual {v0, v2}, Lcom/JoyFramework/module/user/fragment/account/n;->setArguments(Landroid/os/Bundle;)V

    .line 71
    invoke-virtual {p0}, Lcom/JoyFramework/module/user/fragment/account/BaseAccountActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {p0, v2, v0, v1}, Lcom/JoyFramework/module/user/fragment/account/BaseAccountActivity;->addFragmentToAccountActivity(Landroid/app/FragmentManager;Landroid/app/Fragment;I)V

    .line 72
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/JoyFramework/module/user/fragment/account/BaseAccountActivity;->a:Z

    goto/16 :goto_24

    .line 76
    :pswitch_a7
    new-instance v0, Lcom/JoyFramework/module/user/fragment/a/a;

    invoke-direct {v0}, Lcom/JoyFramework/module/user/fragment/a/a;-><init>()V

    .line 77
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 78
    const-string v3, "canClose"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 79
    const-string v3, "isOutsideCallThisPage"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 80
    invoke-virtual {v0, v2}, Lcom/JoyFramework/module/user/fragment/a/a;->setArguments(Landroid/os/Bundle;)V

    .line 81
    invoke-virtual {p0}, Lcom/JoyFramework/module/user/fragment/account/BaseAccountActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {p0, v2, v0, v1}, Lcom/JoyFramework/module/user/fragment/account/BaseAccountActivity;->addFragmentToAccountActivity(Landroid/app/FragmentManager;Landroid/app/Fragment;I)V

    .line 82
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/JoyFramework/module/user/fragment/account/BaseAccountActivity;->b:Z
    :try_end_ca
    .catch Ljava/lang/Exception; {:try_start_3e .. :try_end_ca} :catch_39

    goto/16 :goto_24

    .line 40
    :pswitch_data_cc
    .packed-switch 0x0
        :pswitch_2c
        :pswitch_24
        :pswitch_3e
        :pswitch_24
        :pswitch_24
        :pswitch_4b
        :pswitch_24
        :pswitch_24
        :pswitch_66
        :pswitch_81
        :pswitch_a7
    .end packed-switch
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 8
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v0, 0x1

    .line 106
    const/4 v1, 0x4

    if-ne p1, v1, :cond_4f

    .line 108
    iget-boolean v1, p0, Lcom/JoyFramework/module/user/fragment/account/BaseAccountActivity;->d:Z

    if-eqz v1, :cond_12

    .line 109
    sget-object v1, Lcom/JoyFramework/a/a;->T:Ljava/lang/String;

    const-string v2, "\u786e\u5b9a"

    invoke-static {p0, v1, v3, v2, v4}, Lcom/JoyFramework/d/e;->a(Landroid/app/Activity;Ljava/lang/String;Lcom/JoyFramework/d/e$e;Ljava/lang/String;Z)V

    .line 143
    :cond_11
    :goto_11
    return v0

    .line 113
    :cond_12
    iget-boolean v1, p0, Lcom/JoyFramework/module/user/fragment/account/BaseAccountActivity;->b:Z

    if-eqz v1, :cond_1a

    .line 114
    invoke-virtual {p0}, Lcom/JoyFramework/module/user/fragment/account/BaseAccountActivity;->finish()V

    goto :goto_11

    .line 117
    :cond_1a
    iget-boolean v1, p0, Lcom/JoyFramework/module/user/fragment/account/BaseAccountActivity;->a:Z

    if-eqz v1, :cond_32

    .line 118
    sget-boolean v1, Lcom/JoyFramework/a/a;->t:Z

    if-nez v1, :cond_11

    .line 119
    sget-boolean v1, Lcom/JoyFramework/a/a;->q:Z

    if-eqz v1, :cond_11

    sget-boolean v1, Lcom/JoyFramework/a/a;->o:Z

    if-nez v1, :cond_11

    .line 120
    sget-object v1, Lcom/JoyFramework/a/a;->T:Ljava/lang/String;

    const-string v2, "\u786e\u5b9a"

    invoke-static {p0, v1, v3, v2, v4}, Lcom/JoyFramework/d/e;->a(Landroid/app/Activity;Ljava/lang/String;Lcom/JoyFramework/d/e$e;Ljava/lang/String;Z)V

    goto :goto_11

    .line 126
    :cond_32
    iget-object v1, p0, Lcom/JoyFramework/module/user/fragment/account/BaseAccountActivity;->c:Lcom/JoyFramework/module/a;

    if-eqz v1, :cond_4a

    .line 128
    iget-object v1, p0, Lcom/JoyFramework/module/user/fragment/account/BaseAccountActivity;->c:Lcom/JoyFramework/module/a;

    invoke-virtual {v1}, Lcom/JoyFramework/module/a;->b()Z

    move-result v1

    if-nez v1, :cond_11

    .line 132
    iget-object v1, p0, Lcom/JoyFramework/module/user/fragment/account/BaseAccountActivity;->c:Lcom/JoyFramework/module/a;

    if-eqz v1, :cond_4f

    .line 133
    iget-object v1, p0, Lcom/JoyFramework/module/user/fragment/account/BaseAccountActivity;->c:Lcom/JoyFramework/module/a;

    invoke-virtual {v1}, Lcom/JoyFramework/module/a;->a()V

    .line 134
    iput-object v3, p0, Lcom/JoyFramework/module/user/fragment/account/BaseAccountActivity;->c:Lcom/JoyFramework/module/a;

    goto :goto_11

    .line 139
    :cond_4a
    invoke-super {p0, p1, p2}, Lcom/JoyFramework/module/BaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_11

    .line 143
    :cond_4f
    invoke-super {p0, p1, p2}, Lcom/JoyFramework/module/BaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_11
.end method

.method public setFragment(Lcom/JoyFramework/module/a;)V
    .registers 2

    .prologue
    .line 149
    iput-object p1, p0, Lcom/JoyFramework/module/user/fragment/account/BaseAccountActivity;->c:Lcom/JoyFramework/module/a;

    .line 150
    return-void
.end method
