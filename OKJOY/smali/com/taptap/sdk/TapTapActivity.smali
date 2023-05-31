.class public Lcom/taptap/sdk/TapTapActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "TapTapActivity.java"


# instance fields
.field private current:Landroid/support/v4/app/Fragment;

.field private type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public finish()V
    .registers 1

    .prologue
    .line 108
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 109
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 4
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 78
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 79
    return-void
.end method

.method public onBackPressed()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 84
    :try_start_1
    iget-object v1, p0, Lcom/taptap/sdk/TapTapActivity;->current:Landroid/support/v4/app/Fragment;

    if-eqz v1, :cond_1f

    .line 85
    iget-object v1, p0, Lcom/taptap/sdk/TapTapActivity;->current:Landroid/support/v4/app/Fragment;

    instance-of v1, v1, Lcom/taptap/sdk/forum/ForumFragment;

    if-eqz v1, :cond_1f

    .line 86
    iget-object v1, p0, Lcom/taptap/sdk/TapTapActivity;->current:Landroid/support/v4/app/Fragment;

    check-cast v1, Lcom/taptap/sdk/forum/ForumFragment;

    invoke-virtual {v1}, Lcom/taptap/sdk/forum/ForumFragment;->back()Z

    move-result v1

    if-nez v1, :cond_1b

    .line 87
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onBackPressed()V

    .line 88
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/taptap/sdk/TapTapActivity;->current:Landroid/support/v4/app/Fragment;
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1b} :catch_1c

    .line 99
    :cond_1b
    :goto_1b
    return-void

    .line 93
    :catch_1c
    move-exception v0

    .line 94
    .local v0, "e":Ljava/lang/Exception;
    iput-object v2, p0, Lcom/taptap/sdk/TapTapActivity;->current:Landroid/support/v4/app/Fragment;

    .line 97
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1f
    iput-object v2, p0, Lcom/taptap/sdk/TapTapActivity;->current:Landroid/support/v4/app/Fragment;

    .line 98
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onBackPressed()V

    goto :goto_1b
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2
    .param p1, "config"    # Landroid/content/res/Configuration;

    .prologue
    .line 113
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 115
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 14
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v11, 0x1

    .line 29
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 30
    const-string v8, "sdk_activity_container"

    invoke-static {p0, v8}, Lcom/taptap/sdk/Utils;->getLayoutId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v8

    invoke-virtual {p0, v8}, Lcom/taptap/sdk/TapTapActivity;->setContentView(I)V

    .line 31
    invoke-static {p0}, Lcom/taptap/sdk/AndroidBug5497Workaround;->assistActivity(Landroid/app/Activity;)V

    .line 32
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0x1c

    if-lt v8, v9, :cond_25

    .line 33
    invoke-virtual {p0}, Lcom/taptap/sdk/TapTapActivity;->getWindow()Landroid/view/Window;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    .line 34
    .local v4, "lp":Landroid/view/WindowManager$LayoutParams;
    invoke-virtual {p0}, Lcom/taptap/sdk/TapTapActivity;->getWindow()Landroid/view/Window;

    move-result-object v8

    invoke-virtual {v8, v4}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 38
    .end local v4    # "lp":Landroid/view/WindowManager$LayoutParams;
    :cond_25
    invoke-virtual {p0}, Lcom/taptap/sdk/TapTapActivity;->getIntent()Landroid/content/Intent;

    move-result-object v8

    if-eqz v8, :cond_d1

    .line 39
    invoke-virtual {p0}, Lcom/taptap/sdk/TapTapActivity;->getIntent()Landroid/content/Intent;

    move-result-object v8

    const-string v9, "type"

    invoke-virtual {v8, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/taptap/sdk/TapTapActivity;->type:Ljava/lang/String;

    .line 40
    iget-object v8, p0, Lcom/taptap/sdk/TapTapActivity;->type:Ljava/lang/String;

    if-eqz v8, :cond_d1

    iget-object v8, p0, Lcom/taptap/sdk/TapTapActivity;->type:Ljava/lang/String;

    const-string v9, "forum"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_4f

    iget-object v8, p0, Lcom/taptap/sdk/TapTapActivity;->type:Ljava/lang/String;

    const-string v9, "common_webview"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_d1

    .line 41
    :cond_4f
    invoke-virtual {p0}, Lcom/taptap/sdk/TapTapActivity;->getIntent()Landroid/content/Intent;

    move-result-object v8

    const-string v9, "app_id"

    invoke-virtual {v8, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 42
    .local v0, "app_id":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/taptap/sdk/TapTapActivity;->getIntent()Landroid/content/Intent;

    move-result-object v8

    const-string v9, "uri"

    invoke-virtual {v8, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 43
    .local v7, "uri":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/taptap/sdk/TapTapActivity;->getIntent()Landroid/content/Intent;

    move-result-object v8

    const-string v9, "locale"

    invoke-virtual {v8, v9}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v3

    .line 44
    .local v3, "locale":Ljava/io/Serializable;
    invoke-virtual {p0}, Lcom/taptap/sdk/TapTapActivity;->getIntent()Landroid/content/Intent;

    move-result-object v8

    const-string v9, "site"

    invoke-virtual {v8, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 45
    .local v6, "site":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/taptap/sdk/TapTapActivity;->getIntent()Landroid/content/Intent;

    move-result-object v8

    const-string v9, "orientation"

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 46
    .local v5, "orientation":I
    if-ne v5, v11, :cond_ee

    .line 47
    invoke-virtual {p0, v11}, Lcom/taptap/sdk/TapTapActivity;->setRequestedOrientation(I)V

    .line 51
    :goto_87
    new-instance v2, Lcom/taptap/sdk/forum/ForumFragment;

    invoke-direct {v2}, Lcom/taptap/sdk/forum/ForumFragment;-><init>()V

    .line 52
    .local v2, "fragment":Lcom/taptap/sdk/forum/ForumFragment;
    iput-object v2, p0, Lcom/taptap/sdk/TapTapActivity;->current:Landroid/support/v4/app/Fragment;

    .line 53
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 54
    .local v1, "args":Landroid/os/Bundle;
    const-string v8, "app_id"

    invoke-virtual {v1, v8, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    const-string v8, "orientation"

    invoke-virtual {v1, v8, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 56
    if-eqz v7, :cond_a4

    .line 57
    const-string v8, "uri"

    invoke-virtual {v1, v8, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    :cond_a4
    if-eqz v3, :cond_ab

    .line 60
    const-string v8, "locale"

    invoke-virtual {v1, v8, v3}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 62
    :cond_ab
    const-string v8, "site"

    invoke-virtual {v1, v8, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    const-string v8, "type"

    iget-object v9, p0, Lcom/taptap/sdk/TapTapActivity;->type:Ljava/lang/String;

    invoke-virtual {v1, v8, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    invoke-virtual {v2, v1}, Lcom/taptap/sdk/forum/ForumFragment;->setArguments(Landroid/os/Bundle;)V

    .line 65
    invoke-virtual {p0}, Lcom/taptap/sdk/TapTapActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v8

    invoke-virtual {v8}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v8

    const-string v9, "taptap_sdk_container"

    .line 66
    invoke-static {p0, v9}, Lcom/taptap/sdk/Utils;->getViewId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v9

    const-string v10, "forum"

    invoke-virtual {v8, v9, v2, v10}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v8

    invoke-virtual {v8}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 70
    .end local v0    # "app_id":Ljava/lang/String;
    .end local v1    # "args":Landroid/os/Bundle;
    .end local v2    # "fragment":Lcom/taptap/sdk/forum/ForumFragment;
    .end local v3    # "locale":Ljava/io/Serializable;
    .end local v5    # "orientation":I
    .end local v6    # "site":Ljava/lang/String;
    .end local v7    # "uri":Ljava/lang/String;
    :cond_d1
    iget-object v8, p0, Lcom/taptap/sdk/TapTapActivity;->type:Ljava/lang/String;

    if-eqz v8, :cond_ed

    iget-object v8, p0, Lcom/taptap/sdk/TapTapActivity;->type:Ljava/lang/String;

    const-string v9, "forum"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_ed

    .line 71
    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v8

    new-instance v9, Landroid/content/Intent;

    const-string v10, "appear.forum.taptap.action"

    invoke-direct {v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v9}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 74
    :cond_ed
    return-void

    .line 49
    .restart local v0    # "app_id":Ljava/lang/String;
    .restart local v3    # "locale":Ljava/io/Serializable;
    .restart local v5    # "orientation":I
    .restart local v6    # "site":Ljava/lang/String;
    .restart local v7    # "uri":Ljava/lang/String;
    :cond_ee
    const/4 v8, 0x6

    invoke-virtual {p0, v8}, Lcom/taptap/sdk/TapTapActivity;->setRequestedOrientation(I)V

    goto :goto_87
.end method

.method protected onDestroy()V
    .registers 4

    .prologue
    .line 119
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onDestroy()V

    .line 120
    iget-object v0, p0, Lcom/taptap/sdk/TapTapActivity;->type:Ljava/lang/String;

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/taptap/sdk/TapTapActivity;->type:Ljava/lang/String;

    const-string v1, "forum"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 121
    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "disappear.forum.taptap.action"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 123
    :cond_1f
    return-void
.end method

.method protected onPause()V
    .registers 1

    .prologue
    .line 103
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onPause()V

    .line 104
    return-void
.end method
