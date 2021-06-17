.class public Lcom/facebook/FacebookActivity;
.super Landroidx/fragment/app/FragmentActivity;
.source "FacebookActivity.java"


# static fields
.field private static FRAGMENT_TAG:Ljava/lang/String;

.field public static PASS_THROUGH_CANCEL_ACTION:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private singleFragment:Landroidx/fragment/app/Fragment;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 55
    const-string v0, "PassThrough"

    sput-object v0, Lcom/facebook/FacebookActivity;->PASS_THROUGH_CANCEL_ACTION:Ljava/lang/String;

    .line 56
    const-string v0, "SingleFragment"

    sput-object v0, Lcom/facebook/FacebookActivity;->FRAGMENT_TAG:Ljava/lang/String;

    .line 57
    const-class v0, Lcom/facebook/FacebookActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/FacebookActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 53
    invoke-direct {p0}, Landroidx/fragment/app/FragmentActivity;-><init>()V

    return-void
.end method

.method private handlePassThroughError()V
    .registers 6

    .line 131
    invoke-virtual {p0}, Lcom/facebook/FacebookActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 134
    .local v0, "requestIntent":Landroid/content/Intent;
    invoke-static {v0}, Lcom/facebook/internal/NativeProtocol;->getMethodArgumentsFromIntent(Landroid/content/Intent;)Landroid/os/Bundle;

    move-result-object v1

    .line 135
    .local v1, "errorResults":Landroid/os/Bundle;
    invoke-static {v1}, Lcom/facebook/internal/NativeProtocol;->getExceptionFromErrorData(Landroid/os/Bundle;)Lcom/facebook/FacebookException;

    move-result-object v2

    .line 137
    .local v2, "exception":Lcom/facebook/FacebookException;
    nop

    .line 138
    invoke-virtual {p0}, Lcom/facebook/FacebookActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 137
    const/4 v4, 0x0

    invoke-static {v3, v4, v2}, Lcom/facebook/internal/NativeProtocol;->createProtocolResultIntent(Landroid/content/Intent;Landroid/os/Bundle;Lcom/facebook/FacebookException;)Landroid/content/Intent;

    move-result-object v3

    .line 141
    .local v3, "resultIntent":Landroid/content/Intent;
    const/4 v4, 0x0

    invoke-virtual {p0, v4, v3}, Lcom/facebook/FacebookActivity;->setResult(ILandroid/content/Intent;)V

    .line 142
    invoke-virtual {p0}, Lcom/facebook/FacebookActivity;->finish()V

    .line 143
    return-void
.end method


# virtual methods
.method public getCurrentFragment()Landroidx/fragment/app/Fragment;
    .registers 2

    .line 127
    iget-object v0, p0, Lcom/facebook/FacebookActivity;->singleFragment:Landroidx/fragment/app/Fragment;

    return-object v0
.end method

.method protected getFragment()Landroidx/fragment/app/Fragment;
    .registers 7

    .line 89
    invoke-virtual {p0}, Lcom/facebook/FacebookActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 90
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/facebook/FacebookActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    .line 91
    .local v1, "manager":Landroidx/fragment/app/FragmentManager;
    sget-object v2, Lcom/facebook/FacebookActivity;->FRAGMENT_TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v2

    .line 93
    .local v2, "fragment":Landroidx/fragment/app/Fragment;
    if-nez v2, :cond_6a

    .line 94
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "FacebookDialogFragment"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_2c

    .line 95
    new-instance v3, Lcom/facebook/internal/FacebookDialogFragment;

    invoke-direct {v3}, Lcom/facebook/internal/FacebookDialogFragment;-><init>()V

    .line 96
    .local v3, "dialogFragment":Lcom/facebook/internal/FacebookDialogFragment;
    invoke-virtual {v3, v4}, Lcom/facebook/internal/FacebookDialogFragment;->setRetainInstance(Z)V

    .line 97
    sget-object v4, Lcom/facebook/FacebookActivity;->FRAGMENT_TAG:Ljava/lang/String;

    invoke-virtual {v3, v1, v4}, Lcom/facebook/internal/FacebookDialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 99
    move-object v2, v3

    .line 100
    .end local v3    # "dialogFragment":Lcom/facebook/internal/FacebookDialogFragment;
    goto :goto_6a

    :cond_2c
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v5, "DeviceShareDialogFragment"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_52

    .line 101
    new-instance v3, Lcom/facebook/share/internal/DeviceShareDialogFragment;

    invoke-direct {v3}, Lcom/facebook/share/internal/DeviceShareDialogFragment;-><init>()V

    .line 102
    .local v3, "dialogFragment":Lcom/facebook/share/internal/DeviceShareDialogFragment;
    invoke-virtual {v3, v4}, Lcom/facebook/share/internal/DeviceShareDialogFragment;->setRetainInstance(Z)V

    .line 103
    const-string v4, "content"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Lcom/facebook/share/model/ShareContent;

    invoke-virtual {v3, v4}, Lcom/facebook/share/internal/DeviceShareDialogFragment;->setShareContent(Lcom/facebook/share/model/ShareContent;)V

    .line 104
    sget-object v4, Lcom/facebook/FacebookActivity;->FRAGMENT_TAG:Ljava/lang/String;

    invoke-virtual {v3, v1, v4}, Lcom/facebook/share/internal/DeviceShareDialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 105
    move-object v2, v3

    .line 106
    .end local v3    # "dialogFragment":Lcom/facebook/share/internal/DeviceShareDialogFragment;
    goto :goto_6a

    .line 107
    :cond_52
    new-instance v3, Lcom/facebook/login/LoginFragment;

    invoke-direct {v3}, Lcom/facebook/login/LoginFragment;-><init>()V

    move-object v2, v3

    .line 108
    invoke-virtual {v2, v4}, Landroidx/fragment/app/Fragment;->setRetainInstance(Z)V

    .line 109
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v3

    sget v4, Lcom/facebook/common/R$id;->com_facebook_fragment_container:I

    sget-object v5, Lcom/facebook/FacebookActivity;->FRAGMENT_TAG:Ljava/lang/String;

    .line 110
    invoke-virtual {v3, v4, v2, v5}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v3

    .line 111
    invoke-virtual {v3}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    .line 114
    :cond_6a
    :goto_6a
    return-object v2
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .line 119
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 121
    iget-object v0, p0, Lcom/facebook/FacebookActivity;->singleFragment:Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_a

    .line 122
    invoke-virtual {v0, p1}, Landroidx/fragment/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 124
    :cond_a
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 63
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 64
    invoke-virtual {p0}, Lcom/facebook/FacebookActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 70
    .local v0, "intent":Landroid/content/Intent;
    invoke-static {}, Lcom/facebook/FacebookSdk;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_1b

    .line 71
    sget-object v1, Lcom/facebook/FacebookActivity;->TAG:Ljava/lang/String;

    const-string v2, "Facebook SDK not initialized. Make sure you call sdkInitialize inside your Application\'s onCreate method."

    invoke-static {v1, v2}, Lcom/facebook/internal/Utility;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    invoke-virtual {p0}, Lcom/facebook/FacebookActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/FacebookSdk;->sdkInitialize(Landroid/content/Context;)V

    .line 78
    :cond_1b
    sget v1, Lcom/facebook/common/R$layout;->com_facebook_activity_layout:I

    invoke-virtual {p0, v1}, Lcom/facebook/FacebookActivity;->setContentView(I)V

    .line 80
    sget-object v1, Lcom/facebook/FacebookActivity;->PASS_THROUGH_CANCEL_ACTION:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_30

    .line 81
    invoke-direct {p0}, Lcom/facebook/FacebookActivity;->handlePassThroughError()V

    .line 82
    return-void

    .line 85
    :cond_30
    invoke-virtual {p0}, Lcom/facebook/FacebookActivity;->getFragment()Landroidx/fragment/app/Fragment;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/FacebookActivity;->singleFragment:Landroidx/fragment/app/Fragment;

    .line 86
    return-void
.end method
