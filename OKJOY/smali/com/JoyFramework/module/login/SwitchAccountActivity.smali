.class public Lcom/JoyFramework/module/login/SwitchAccountActivity;
.super Lcom/JoyFramework/module/BaseActivity;
.source "SourceFile"

# interfaces
.implements Lcom/JoyFramework/module/c;


# static fields
.field public static final SHOW_PAGW:Ljava/lang/String; = "showPage"

.field public static mSwitchActivity:Landroid/app/Activity;


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
    .line 51
    const-string v0, "joy_activity_login_base"

    const-string v1, "layout"

    invoke-static {p0, v0, v1}, Lcom/JoyFramework/d/as;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 6

    .prologue
    .line 31
    invoke-super {p0, p1}, Lcom/JoyFramework/module/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 32
    invoke-static {p0}, Lcom/JoyFramework/d/a;->a(Landroid/app/Activity;)V

    .line 33
    sput-object p0, Lcom/JoyFramework/module/login/SwitchAccountActivity;->mSwitchActivity:Landroid/app/Activity;

    .line 34
    invoke-virtual {p0}, Lcom/JoyFramework/module/login/SwitchAccountActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 35
    if-eqz v0, :cond_1b

    .line 36
    const-string v1, "showPage"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 37
    packed-switch v0, :pswitch_data_32

    .line 46
    :cond_1b
    :goto_1b
    return-void

    .line 39
    :pswitch_1c
    new-instance v0, Lcom/JoyFramework/module/login/d/k;

    invoke-direct {v0}, Lcom/JoyFramework/module/login/d/k;-><init>()V

    .line 41
    invoke-virtual {p0}, Lcom/JoyFramework/module/login/SwitchAccountActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "contentFrame"

    const-string v3, "id"

    invoke-static {p0, v2, v3}, Lcom/JoyFramework/d/as;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 40
    invoke-virtual {p0, v1, v0, v2}, Lcom/JoyFramework/module/login/SwitchAccountActivity;->addFragmentToActivity(Landroid/app/FragmentManager;Landroid/app/Fragment;I)V

    goto :goto_1b

    .line 37
    nop

    :pswitch_data_32
    .packed-switch 0x1
        :pswitch_1c
    .end packed-switch
.end method

.method protected onDestroy()V
    .registers 2

    .prologue
    .line 62
    invoke-super {p0}, Lcom/JoyFramework/module/BaseActivity;->onDestroy()V

    .line 63
    sget-object v0, Lcom/JoyFramework/module/login/SwitchAccountActivity;->mSwitchActivity:Landroid/app/Activity;

    if-eqz v0, :cond_a

    .line 64
    const/4 v0, 0x0

    sput-object v0, Lcom/JoyFramework/module/login/SwitchAccountActivity;->mSwitchActivity:Landroid/app/Activity;

    .line 66
    :cond_a
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 5
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 72
    const/4 v1, 0x4

    if-ne p1, v1, :cond_19

    .line 73
    iget-object v1, p0, Lcom/JoyFramework/module/login/SwitchAccountActivity;->backBaseFragment:Lcom/JoyFramework/module/a;

    if-eqz v1, :cond_17

    .line 74
    iget-object v1, p0, Lcom/JoyFramework/module/login/SwitchAccountActivity;->backBaseFragment:Lcom/JoyFramework/module/a;

    invoke-virtual {v1}, Lcom/JoyFramework/module/a;->b()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 85
    :goto_10
    return v0

    .line 78
    :cond_11
    iget-object v1, p0, Lcom/JoyFramework/module/login/SwitchAccountActivity;->backBaseFragment:Lcom/JoyFramework/module/a;

    invoke-virtual {v1}, Lcom/JoyFramework/module/a;->a()V

    goto :goto_10

    .line 82
    :cond_17
    const/4 v0, 0x0

    goto :goto_10

    .line 85
    :cond_19
    invoke-super {p0, p1, p2}, Lcom/JoyFramework/module/BaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_10
.end method

.method protected onResume()V
    .registers 2

    .prologue
    .line 56
    invoke-super {p0}, Lcom/JoyFramework/module/BaseActivity;->onResume()V

    .line 57
    invoke-static {}, Lcom/JoyFramework/module/point/a;->a()Lcom/JoyFramework/module/point/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/JoyFramework/module/point/a;->c()V

    .line 58
    return-void
.end method

.method public setFragment(Lcom/JoyFramework/module/a;)V
    .registers 2

    .prologue
    .line 90
    iput-object p1, p0, Lcom/JoyFramework/module/login/SwitchAccountActivity;->backBaseFragment:Lcom/JoyFramework/module/a;

    .line 91
    return-void
.end method
