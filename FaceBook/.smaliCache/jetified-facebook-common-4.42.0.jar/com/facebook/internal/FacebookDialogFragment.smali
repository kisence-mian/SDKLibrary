.class public Lcom/facebook/internal/FacebookDialogFragment;
.super Landroidx/fragment/app/DialogFragment;
.source "FacebookDialogFragment.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "FacebookDialogFragment"


# instance fields
.field private dialog:Landroid/app/Dialog;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 42
    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/facebook/internal/FacebookDialogFragment;Landroid/os/Bundle;Lcom/facebook/FacebookException;)V
    .registers 3
    .param p0, "x0"    # Lcom/facebook/internal/FacebookDialogFragment;
    .param p1, "x1"    # Landroid/os/Bundle;
    .param p2, "x2"    # Lcom/facebook/FacebookException;

    .line 42
    invoke-direct {p0, p1, p2}, Lcom/facebook/internal/FacebookDialogFragment;->onCompleteWebDialog(Landroid/os/Bundle;Lcom/facebook/FacebookException;)V

    return-void
.end method

.method static synthetic access$100(Lcom/facebook/internal/FacebookDialogFragment;Landroid/os/Bundle;)V
    .registers 2
    .param p0, "x0"    # Lcom/facebook/internal/FacebookDialogFragment;
    .param p1, "x1"    # Landroid/os/Bundle;

    .line 42
    invoke-direct {p0, p1}, Lcom/facebook/internal/FacebookDialogFragment;->onCompleteWebFallbackDialog(Landroid/os/Bundle;)V

    return-void
.end method

.method private onCompleteWebDialog(Landroid/os/Bundle;Lcom/facebook/FacebookException;)V
    .registers 6
    .param p1, "values"    # Landroid/os/Bundle;
    .param p2, "error"    # Lcom/facebook/FacebookException;

    .line 148
    invoke-virtual {p0}, Lcom/facebook/internal/FacebookDialogFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    .line 150
    .local v0, "fragmentActivity":Landroidx/fragment/app/FragmentActivity;
    nop

    .line 151
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 150
    invoke-static {v1, p1, p2}, Lcom/facebook/internal/NativeProtocol;->createProtocolResultIntent(Landroid/content/Intent;Landroid/os/Bundle;Lcom/facebook/FacebookException;)Landroid/content/Intent;

    move-result-object v1

    .line 155
    .local v1, "resultIntent":Landroid/content/Intent;
    if-nez p2, :cond_11

    const/4 v2, -0x1

    goto :goto_12

    :cond_11
    const/4 v2, 0x0

    .line 157
    .local v2, "resultCode":I
    :goto_12
    invoke-virtual {v0, v2, v1}, Landroidx/fragment/app/FragmentActivity;->setResult(ILandroid/content/Intent;)V

    .line 158
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->finish()V

    .line 159
    return-void
.end method

.method private onCompleteWebFallbackDialog(Landroid/os/Bundle;)V
    .registers 5
    .param p1, "values"    # Landroid/os/Bundle;

    .line 162
    invoke-virtual {p0}, Lcom/facebook/internal/FacebookDialogFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    .line 164
    .local v0, "fragmentActivity":Landroidx/fragment/app/FragmentActivity;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 165
    .local v1, "resultIntent":Landroid/content/Intent;
    if-nez p1, :cond_11

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    goto :goto_12

    :cond_11
    move-object v2, p1

    :goto_12
    invoke-virtual {v1, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 167
    const/4 v2, -0x1

    invoke-virtual {v0, v2, v1}, Landroidx/fragment/app/FragmentActivity;->setResult(ILandroid/content/Intent;)V

    .line 168
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->finish()V

    .line 169
    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .line 133
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 134
    iget-object v0, p0, Lcom/facebook/internal/FacebookDialogFragment;->dialog:Landroid/app/Dialog;

    instance-of v0, v0, Lcom/facebook/internal/WebDialog;

    if-eqz v0, :cond_16

    invoke-virtual {p0}, Lcom/facebook/internal/FacebookDialogFragment;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 135
    iget-object v0, p0, Lcom/facebook/internal/FacebookDialogFragment;->dialog:Landroid/app/Dialog;

    check-cast v0, Lcom/facebook/internal/WebDialog;

    invoke-virtual {v0}, Lcom/facebook/internal/WebDialog;->resize()V

    .line 137
    :cond_16
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 10
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 57
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 59
    iget-object v0, p0, Lcom/facebook/internal/FacebookDialogFragment;->dialog:Landroid/app/Dialog;

    if-nez v0, :cond_7f

    .line 60
    invoke-virtual {p0}, Lcom/facebook/internal/FacebookDialogFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    .line 61
    .local v0, "activity":Landroidx/fragment/app/FragmentActivity;
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 62
    .local v1, "intent":Landroid/content/Intent;
    invoke-static {v1}, Lcom/facebook/internal/NativeProtocol;->getMethodArgumentsFromIntent(Landroid/content/Intent;)Landroid/os/Bundle;

    move-result-object v2

    .line 64
    .local v2, "params":Landroid/os/Bundle;
    const-string v3, "is_fallback"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 66
    .local v3, "isWebFallback":Z
    const-string v5, "FacebookDialogFragment"

    if-nez v3, :cond_4c

    .line 67
    const-string v4, "action"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 68
    .local v4, "actionName":Ljava/lang/String;
    const-string v6, "params"

    invoke-virtual {v2, v6}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v6

    .line 69
    .local v6, "webParams":Landroid/os/Bundle;
    invoke-static {v4}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_39

    .line 70
    const-string v7, "Cannot start a WebDialog with an empty/missing \'actionName\'"

    invoke-static {v5, v7}, Lcom/facebook/internal/Utility;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->finish()V

    .line 74
    return-void

    .line 77
    :cond_39
    new-instance v5, Lcom/facebook/internal/WebDialog$Builder;

    invoke-direct {v5, v0, v4, v6}, Lcom/facebook/internal/WebDialog$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V

    new-instance v7, Lcom/facebook/internal/FacebookDialogFragment$1;

    invoke-direct {v7, p0}, Lcom/facebook/internal/FacebookDialogFragment$1;-><init>(Lcom/facebook/internal/FacebookDialogFragment;)V

    .line 78
    invoke-virtual {v5, v7}, Lcom/facebook/internal/WebDialog$Builder;->setOnCompleteListener(Lcom/facebook/internal/WebDialog$OnCompleteListener;)Lcom/facebook/internal/WebDialog$Builder;

    move-result-object v5

    .line 84
    invoke-virtual {v5}, Lcom/facebook/internal/WebDialog$Builder;->build()Lcom/facebook/internal/WebDialog;

    move-result-object v4

    .line 85
    .end local v6    # "webParams":Landroid/os/Bundle;
    .local v4, "webDialog":Lcom/facebook/internal/WebDialog;
    goto :goto_7d

    .line 86
    .end local v4    # "webDialog":Lcom/facebook/internal/WebDialog;
    :cond_4c
    const-string v6, "url"

    invoke-virtual {v2, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 87
    .local v6, "url":Ljava/lang/String;
    invoke-static {v6}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_61

    .line 88
    const-string v4, "Cannot start a fallback WebDialog with an empty/missing \'url\'"

    invoke-static {v5, v4}, Lcom/facebook/internal/Utility;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->finish()V

    .line 92
    return-void

    .line 95
    :cond_61
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    .line 96
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationId()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v4

    const-string v4, "fb%s://bridge/"

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 97
    .local v4, "redirectUrl":Ljava/lang/String;
    invoke-static {v0, v6, v4}, Lcom/facebook/internal/FacebookWebFallbackDialog;->newInstance(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/internal/FacebookWebFallbackDialog;

    move-result-object v5

    .line 98
    .local v5, "webDialog":Lcom/facebook/internal/WebDialog;
    new-instance v7, Lcom/facebook/internal/FacebookDialogFragment$2;

    invoke-direct {v7, p0}, Lcom/facebook/internal/FacebookDialogFragment$2;-><init>(Lcom/facebook/internal/FacebookDialogFragment;)V

    invoke-virtual {v5, v7}, Lcom/facebook/internal/WebDialog;->setOnCompleteListener(Lcom/facebook/internal/WebDialog$OnCompleteListener;)V

    move-object v4, v5

    .line 108
    .end local v5    # "webDialog":Lcom/facebook/internal/WebDialog;
    .end local v6    # "url":Ljava/lang/String;
    .local v4, "webDialog":Lcom/facebook/internal/WebDialog;
    :goto_7d
    iput-object v4, p0, Lcom/facebook/internal/FacebookDialogFragment;->dialog:Landroid/app/Dialog;

    .line 110
    .end local v0    # "activity":Landroidx/fragment/app/FragmentActivity;
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "params":Landroid/os/Bundle;
    .end local v3    # "isWebFallback":Z
    .end local v4    # "webDialog":Lcom/facebook/internal/WebDialog;
    :cond_7f
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .registers 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 116
    iget-object v0, p0, Lcom/facebook/internal/FacebookDialogFragment;->dialog:Landroid/app/Dialog;

    if-nez v0, :cond_c

    .line 117
    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Lcom/facebook/internal/FacebookDialogFragment;->onCompleteWebDialog(Landroid/os/Bundle;Lcom/facebook/FacebookException;)V

    .line 118
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/facebook/internal/FacebookDialogFragment;->setShowsDialog(Z)V

    .line 120
    :cond_c
    iget-object v0, p0, Lcom/facebook/internal/FacebookDialogFragment;->dialog:Landroid/app/Dialog;

    return-object v0
.end method

.method public onDestroyView()V
    .registers 3

    .line 141
    invoke-virtual {p0}, Lcom/facebook/internal/FacebookDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_14

    invoke-virtual {p0}, Lcom/facebook/internal/FacebookDialogFragment;->getRetainInstance()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 142
    invoke-virtual {p0}, Lcom/facebook/internal/FacebookDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setDismissMessage(Landroid/os/Message;)V

    .line 144
    :cond_14
    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->onDestroyView()V

    .line 145
    return-void
.end method

.method public onResume()V
    .registers 3

    .line 125
    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->onResume()V

    .line 126
    iget-object v0, p0, Lcom/facebook/internal/FacebookDialogFragment;->dialog:Landroid/app/Dialog;

    instance-of v1, v0, Lcom/facebook/internal/WebDialog;

    if-eqz v1, :cond_e

    .line 127
    check-cast v0, Lcom/facebook/internal/WebDialog;

    invoke-virtual {v0}, Lcom/facebook/internal/WebDialog;->resize()V

    .line 129
    :cond_e
    return-void
.end method

.method public setDialog(Landroid/app/Dialog;)V
    .registers 2
    .param p1, "dialog"    # Landroid/app/Dialog;

    .line 52
    iput-object p1, p0, Lcom/facebook/internal/FacebookDialogFragment;->dialog:Landroid/app/Dialog;

    .line 53
    return-void
.end method
