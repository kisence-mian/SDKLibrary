.class public Lcom/JoyFramework/module/login/AccountPhoneActivity;
.super Lcom/JoyFramework/module/BaseActivity;
.source "SourceFile"

# interfaces
.implements Lcom/JoyFramework/module/c;


# static fields
.field public static final PASS_TEXT:Ljava/lang/String; = "pass_text"

.field public static final SHOW_PAGW:Ljava/lang/String; = "showPage"

.field public static mAccountPhoneActivity:Landroid/app/Activity;


# instance fields
.field private backBaseFragment:Lcom/JoyFramework/module/a;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/JoyFramework/module/BaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public getContentViewId()I
    .registers 3

    .prologue
    .line 84
    const-string v0, "joy_activity_login_base"

    const-string v1, "layout"

    invoke-static {p0, v0, v1}, Lcom/JoyFramework/d/as;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 7

    .prologue
    .line 40
    invoke-super {p0, p1}, Lcom/JoyFramework/module/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 41
    invoke-static {p0}, Lcom/JoyFramework/d/a;->a(Landroid/app/Activity;)V

    .line 42
    sput-object p0, Lcom/JoyFramework/module/login/AccountPhoneActivity;->mAccountPhoneActivity:Landroid/app/Activity;

    .line 43
    invoke-virtual {p0}, Lcom/JoyFramework/module/login/AccountPhoneActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 45
    if-eqz v0, :cond_29

    .line 46
    const-string v1, "showPage"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 47
    const-string v2, "pass_text"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 49
    const-string v2, "contentFrame"

    const-string v3, "id"

    invoke-static {p0, v2, v3}, Lcom/JoyFramework/d/as;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 50
    packed-switch v1, :pswitch_data_70

    .line 79
    :cond_29
    :goto_29
    return-void

    .line 52
    :pswitch_2a
    new-instance v1, Lcom/JoyFramework/module/login/d/am;

    invoke-direct {v1}, Lcom/JoyFramework/module/login/d/am;-><init>()V

    .line 54
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_48

    .line 55
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 56
    const-string v4, "use_mobile_num"

    invoke-virtual {v3, v4, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    const-string v0, "canBackStack"

    const/4 v4, 0x1

    invoke-virtual {v3, v0, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 58
    invoke-virtual {v1, v3}, Lcom/JoyFramework/module/login/d/am;->setArguments(Landroid/os/Bundle;)V

    .line 62
    :cond_48
    invoke-virtual {p0}, Lcom/JoyFramework/module/login/AccountPhoneActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 61
    invoke-virtual {p0, v0, v1, v2}, Lcom/JoyFramework/module/login/AccountPhoneActivity;->addFragmentToActivity(Landroid/app/FragmentManager;Landroid/app/Fragment;I)V

    goto :goto_29

    .line 65
    :pswitch_50
    new-instance v1, Lcom/JoyFramework/module/login/d/c;

    invoke-direct {v1}, Lcom/JoyFramework/module/login/d/c;-><init>()V

    .line 67
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_68

    .line 68
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 69
    const-string v4, "use_account_name"

    invoke-virtual {v3, v4, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    invoke-virtual {v1, v3}, Lcom/JoyFramework/module/login/d/c;->setArguments(Landroid/os/Bundle;)V

    .line 73
    :cond_68
    invoke-virtual {p0}, Lcom/JoyFramework/module/login/AccountPhoneActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 72
    invoke-virtual {p0, v0, v1, v2}, Lcom/JoyFramework/module/login/AccountPhoneActivity;->addFragmentToActivity(Landroid/app/FragmentManager;Landroid/app/Fragment;I)V

    goto :goto_29

    .line 50
    :pswitch_data_70
    .packed-switch 0x2
        :pswitch_2a
        :pswitch_50
    .end packed-switch
.end method

.method protected onDestroy()V
    .registers 2

    .prologue
    .line 95
    invoke-super {p0}, Lcom/JoyFramework/module/BaseActivity;->onDestroy()V

    .line 96
    sget-object v0, Lcom/JoyFramework/module/login/AccountPhoneActivity;->mAccountPhoneActivity:Landroid/app/Activity;

    if-eqz v0, :cond_a

    .line 97
    const/4 v0, 0x0

    sput-object v0, Lcom/JoyFramework/module/login/AccountPhoneActivity;->mAccountPhoneActivity:Landroid/app/Activity;

    .line 99
    :cond_a
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 5
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 104
    const/4 v1, 0x4

    if-ne p1, v1, :cond_20

    .line 105
    iget-object v1, p0, Lcom/JoyFramework/module/login/AccountPhoneActivity;->backBaseFragment:Lcom/JoyFramework/module/a;

    if-eqz v1, :cond_1b

    .line 106
    iget-object v1, p0, Lcom/JoyFramework/module/login/AccountPhoneActivity;->backBaseFragment:Lcom/JoyFramework/module/a;

    invoke-virtual {v1}, Lcom/JoyFramework/module/a;->b()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 120
    :goto_10
    return v0

    .line 110
    :cond_11
    iget-object v1, p0, Lcom/JoyFramework/module/login/AccountPhoneActivity;->backBaseFragment:Lcom/JoyFramework/module/a;

    if-eqz v1, :cond_20

    .line 111
    iget-object v1, p0, Lcom/JoyFramework/module/login/AccountPhoneActivity;->backBaseFragment:Lcom/JoyFramework/module/a;

    invoke-virtual {v1}, Lcom/JoyFramework/module/a;->a()V

    goto :goto_10

    .line 116
    :cond_1b
    invoke-super {p0, p1, p2}, Lcom/JoyFramework/module/BaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_10

    .line 120
    :cond_20
    invoke-super {p0, p1, p2}, Lcom/JoyFramework/module/BaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_10
.end method

.method protected onResume()V
    .registers 2

    .prologue
    .line 89
    invoke-super {p0}, Lcom/JoyFramework/module/BaseActivity;->onResume()V

    .line 90
    invoke-static {}, Lcom/JoyFramework/module/point/a;->a()Lcom/JoyFramework/module/point/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/JoyFramework/module/point/a;->c()V

    .line 91
    return-void
.end method

.method public setFragment(Lcom/JoyFramework/module/a;)V
    .registers 2

    .prologue
    .line 125
    iput-object p1, p0, Lcom/JoyFramework/module/login/AccountPhoneActivity;->backBaseFragment:Lcom/JoyFramework/module/a;

    .line 126
    return-void
.end method
