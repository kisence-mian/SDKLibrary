.class public Lcom/facebook/login/widget/LoginButton$LoginClickListener;
.super Ljava/lang/Object;
.source "LoginButton.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/login/widget/LoginButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "LoginClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/login/widget/LoginButton;


# direct methods
.method protected constructor <init>(Lcom/facebook/login/widget/LoginButton;)V
    .registers 2
    .param p1, "this$0"    # Lcom/facebook/login/widget/LoginButton;

    .line 751
    iput-object p1, p0, Lcom/facebook/login/widget/LoginButton$LoginClickListener;->this$0:Lcom/facebook/login/widget/LoginButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected getLoginManager()Lcom/facebook/login/LoginManager;
    .registers 3

    .line 845
    invoke-static {}, Lcom/facebook/login/LoginManager;->getInstance()Lcom/facebook/login/LoginManager;

    move-result-object v0

    .line 846
    .local v0, "manager":Lcom/facebook/login/LoginManager;
    iget-object v1, p0, Lcom/facebook/login/widget/LoginButton$LoginClickListener;->this$0:Lcom/facebook/login/widget/LoginButton;

    invoke-virtual {v1}, Lcom/facebook/login/widget/LoginButton;->getDefaultAudience()Lcom/facebook/login/DefaultAudience;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/login/LoginManager;->setDefaultAudience(Lcom/facebook/login/DefaultAudience;)Lcom/facebook/login/LoginManager;

    .line 847
    iget-object v1, p0, Lcom/facebook/login/widget/LoginButton$LoginClickListener;->this$0:Lcom/facebook/login/widget/LoginButton;

    invoke-virtual {v1}, Lcom/facebook/login/widget/LoginButton;->getLoginBehavior()Lcom/facebook/login/LoginBehavior;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/login/LoginManager;->setLoginBehavior(Lcom/facebook/login/LoginBehavior;)Lcom/facebook/login/LoginManager;

    .line 848
    iget-object v1, p0, Lcom/facebook/login/widget/LoginButton$LoginClickListener;->this$0:Lcom/facebook/login/widget/LoginButton;

    invoke-virtual {v1}, Lcom/facebook/login/widget/LoginButton;->getAuthType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/login/LoginManager;->setAuthType(Ljava/lang/String;)Lcom/facebook/login/LoginManager;

    .line 849
    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .registers 7
    .param p1, "v"    # Landroid/view/View;

    .line 754
    iget-object v0, p0, Lcom/facebook/login/widget/LoginButton$LoginClickListener;->this$0:Lcom/facebook/login/widget/LoginButton;

    # invokes: Lcom/facebook/login/widget/LoginButton;->callExternalOnClickListener(Landroid/view/View;)V
    invoke-static {v0, p1}, Lcom/facebook/login/widget/LoginButton;->access$300(Lcom/facebook/login/widget/LoginButton;Landroid/view/View;)V

    .line 756
    invoke-static {}, Lcom/facebook/AccessToken;->getCurrentAccessToken()Lcom/facebook/AccessToken;

    move-result-object v0

    .line 757
    .local v0, "accessToken":Lcom/facebook/AccessToken;
    invoke-static {}, Lcom/facebook/AccessToken;->isCurrentAccessTokenActive()Z

    move-result v1

    if-eqz v1, :cond_19

    .line 759
    iget-object v1, p0, Lcom/facebook/login/widget/LoginButton$LoginClickListener;->this$0:Lcom/facebook/login/widget/LoginButton;

    invoke-virtual {v1}, Lcom/facebook/login/widget/LoginButton;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/facebook/login/widget/LoginButton$LoginClickListener;->performLogout(Landroid/content/Context;)V

    goto :goto_1c

    .line 761
    :cond_19
    invoke-virtual {p0}, Lcom/facebook/login/widget/LoginButton$LoginClickListener;->performLogin()V

    .line 764
    :goto_1c
    iget-object v1, p0, Lcom/facebook/login/widget/LoginButton$LoginClickListener;->this$0:Lcom/facebook/login/widget/LoginButton;

    invoke-virtual {v1}, Lcom/facebook/login/widget/LoginButton;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/appevents/AppEventsLogger;->newLogger(Landroid/content/Context;)Lcom/facebook/appevents/AppEventsLogger;

    move-result-object v1

    .line 766
    .local v1, "logger":Lcom/facebook/appevents/AppEventsLogger;
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 767
    .local v2, "parameters":Landroid/os/Bundle;
    if-eqz v0, :cond_2f

    const/4 v3, 0x0

    goto :goto_30

    :cond_2f
    const/4 v3, 0x1

    :goto_30
    const-string v4, "logging_in"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 770
    nop

    .line 772
    invoke-static {}, Lcom/facebook/AccessToken;->isCurrentAccessTokenActive()Z

    move-result v3

    .line 770
    const-string v4, "access_token_expired"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 774
    iget-object v3, p0, Lcom/facebook/login/widget/LoginButton$LoginClickListener;->this$0:Lcom/facebook/login/widget/LoginButton;

    # getter for: Lcom/facebook/login/widget/LoginButton;->loginLogoutEventName:Ljava/lang/String;
    invoke-static {v3}, Lcom/facebook/login/widget/LoginButton;->access$400(Lcom/facebook/login/widget/LoginButton;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4, v2}, Lcom/facebook/appevents/AppEventsLogger;->logSdkEvent(Ljava/lang/String;Ljava/lang/Double;Landroid/os/Bundle;)V

    .line 775
    return-void
.end method

.method protected performLogin()V
    .registers 4

    .line 778
    invoke-virtual {p0}, Lcom/facebook/login/widget/LoginButton$LoginClickListener;->getLoginManager()Lcom/facebook/login/LoginManager;

    move-result-object v0

    .line 779
    .local v0, "loginManager":Lcom/facebook/login/LoginManager;
    sget-object v1, Lcom/facebook/internal/LoginAuthorizationType;->PUBLISH:Lcom/facebook/internal/LoginAuthorizationType;

    iget-object v2, p0, Lcom/facebook/login/widget/LoginButton$LoginClickListener;->this$0:Lcom/facebook/login/widget/LoginButton;

    # getter for: Lcom/facebook/login/widget/LoginButton;->properties:Lcom/facebook/login/widget/LoginButton$LoginButtonProperties;
    invoke-static {v2}, Lcom/facebook/login/widget/LoginButton;->access$500(Lcom/facebook/login/widget/LoginButton;)Lcom/facebook/login/widget/LoginButton$LoginButtonProperties;

    move-result-object v2

    # getter for: Lcom/facebook/login/widget/LoginButton$LoginButtonProperties;->authorizationType:Lcom/facebook/internal/LoginAuthorizationType;
    invoke-static {v2}, Lcom/facebook/login/widget/LoginButton$LoginButtonProperties;->access$600(Lcom/facebook/login/widget/LoginButton$LoginButtonProperties;)Lcom/facebook/internal/LoginAuthorizationType;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/facebook/internal/LoginAuthorizationType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_63

    .line 780
    iget-object v1, p0, Lcom/facebook/login/widget/LoginButton$LoginClickListener;->this$0:Lcom/facebook/login/widget/LoginButton;

    invoke-virtual {v1}, Lcom/facebook/login/widget/LoginButton;->getFragment()Landroidx/fragment/app/Fragment;

    move-result-object v1

    if-eqz v1, :cond_33

    .line 781
    iget-object v1, p0, Lcom/facebook/login/widget/LoginButton$LoginClickListener;->this$0:Lcom/facebook/login/widget/LoginButton;

    .line 782
    invoke-virtual {v1}, Lcom/facebook/login/widget/LoginButton;->getFragment()Landroidx/fragment/app/Fragment;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/login/widget/LoginButton$LoginClickListener;->this$0:Lcom/facebook/login/widget/LoginButton;

    .line 783
    # getter for: Lcom/facebook/login/widget/LoginButton;->properties:Lcom/facebook/login/widget/LoginButton$LoginButtonProperties;
    invoke-static {v2}, Lcom/facebook/login/widget/LoginButton;->access$500(Lcom/facebook/login/widget/LoginButton;)Lcom/facebook/login/widget/LoginButton$LoginButtonProperties;

    move-result-object v2

    # getter for: Lcom/facebook/login/widget/LoginButton$LoginButtonProperties;->permissions:Ljava/util/List;
    invoke-static {v2}, Lcom/facebook/login/widget/LoginButton$LoginButtonProperties;->access$700(Lcom/facebook/login/widget/LoginButton$LoginButtonProperties;)Ljava/util/List;

    move-result-object v2

    .line 781
    invoke-virtual {v0, v1, v2}, Lcom/facebook/login/LoginManager;->logInWithPublishPermissions(Landroidx/fragment/app/Fragment;Ljava/util/Collection;)V

    goto/16 :goto_ae

    .line 784
    :cond_33
    iget-object v1, p0, Lcom/facebook/login/widget/LoginButton$LoginClickListener;->this$0:Lcom/facebook/login/widget/LoginButton;

    invoke-virtual {v1}, Lcom/facebook/login/widget/LoginButton;->getNativeFragment()Landroid/app/Fragment;

    move-result-object v1

    if-eqz v1, :cond_4f

    .line 785
    iget-object v1, p0, Lcom/facebook/login/widget/LoginButton$LoginClickListener;->this$0:Lcom/facebook/login/widget/LoginButton;

    .line 786
    invoke-virtual {v1}, Lcom/facebook/login/widget/LoginButton;->getNativeFragment()Landroid/app/Fragment;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/login/widget/LoginButton$LoginClickListener;->this$0:Lcom/facebook/login/widget/LoginButton;

    .line 787
    # getter for: Lcom/facebook/login/widget/LoginButton;->properties:Lcom/facebook/login/widget/LoginButton$LoginButtonProperties;
    invoke-static {v2}, Lcom/facebook/login/widget/LoginButton;->access$500(Lcom/facebook/login/widget/LoginButton;)Lcom/facebook/login/widget/LoginButton$LoginButtonProperties;

    move-result-object v2

    # getter for: Lcom/facebook/login/widget/LoginButton$LoginButtonProperties;->permissions:Ljava/util/List;
    invoke-static {v2}, Lcom/facebook/login/widget/LoginButton$LoginButtonProperties;->access$700(Lcom/facebook/login/widget/LoginButton$LoginButtonProperties;)Ljava/util/List;

    move-result-object v2

    .line 785
    invoke-virtual {v0, v1, v2}, Lcom/facebook/login/LoginManager;->logInWithPublishPermissions(Landroid/app/Fragment;Ljava/util/Collection;)V

    goto :goto_ae

    .line 789
    :cond_4f
    iget-object v1, p0, Lcom/facebook/login/widget/LoginButton$LoginClickListener;->this$0:Lcom/facebook/login/widget/LoginButton;

    .line 790
    # invokes: Lcom/facebook/login/widget/LoginButton;->getActivity()Landroid/app/Activity;
    invoke-static {v1}, Lcom/facebook/login/widget/LoginButton;->access$800(Lcom/facebook/login/widget/LoginButton;)Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/login/widget/LoginButton$LoginClickListener;->this$0:Lcom/facebook/login/widget/LoginButton;

    .line 791
    # getter for: Lcom/facebook/login/widget/LoginButton;->properties:Lcom/facebook/login/widget/LoginButton$LoginButtonProperties;
    invoke-static {v2}, Lcom/facebook/login/widget/LoginButton;->access$500(Lcom/facebook/login/widget/LoginButton;)Lcom/facebook/login/widget/LoginButton$LoginButtonProperties;

    move-result-object v2

    # getter for: Lcom/facebook/login/widget/LoginButton$LoginButtonProperties;->permissions:Ljava/util/List;
    invoke-static {v2}, Lcom/facebook/login/widget/LoginButton$LoginButtonProperties;->access$700(Lcom/facebook/login/widget/LoginButton$LoginButtonProperties;)Ljava/util/List;

    move-result-object v2

    .line 789
    invoke-virtual {v0, v1, v2}, Lcom/facebook/login/LoginManager;->logInWithPublishPermissions(Landroid/app/Activity;Ljava/util/Collection;)V

    goto :goto_ae

    .line 794
    :cond_63
    iget-object v1, p0, Lcom/facebook/login/widget/LoginButton$LoginClickListener;->this$0:Lcom/facebook/login/widget/LoginButton;

    invoke-virtual {v1}, Lcom/facebook/login/widget/LoginButton;->getFragment()Landroidx/fragment/app/Fragment;

    move-result-object v1

    if-eqz v1, :cond_7f

    .line 795
    iget-object v1, p0, Lcom/facebook/login/widget/LoginButton$LoginClickListener;->this$0:Lcom/facebook/login/widget/LoginButton;

    .line 796
    invoke-virtual {v1}, Lcom/facebook/login/widget/LoginButton;->getFragment()Landroidx/fragment/app/Fragment;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/login/widget/LoginButton$LoginClickListener;->this$0:Lcom/facebook/login/widget/LoginButton;

    .line 797
    # getter for: Lcom/facebook/login/widget/LoginButton;->properties:Lcom/facebook/login/widget/LoginButton$LoginButtonProperties;
    invoke-static {v2}, Lcom/facebook/login/widget/LoginButton;->access$500(Lcom/facebook/login/widget/LoginButton;)Lcom/facebook/login/widget/LoginButton$LoginButtonProperties;

    move-result-object v2

    # getter for: Lcom/facebook/login/widget/LoginButton$LoginButtonProperties;->permissions:Ljava/util/List;
    invoke-static {v2}, Lcom/facebook/login/widget/LoginButton$LoginButtonProperties;->access$700(Lcom/facebook/login/widget/LoginButton$LoginButtonProperties;)Ljava/util/List;

    move-result-object v2

    .line 795
    invoke-virtual {v0, v1, v2}, Lcom/facebook/login/LoginManager;->logInWithReadPermissions(Landroidx/fragment/app/Fragment;Ljava/util/Collection;)V

    goto :goto_ae

    .line 798
    :cond_7f
    iget-object v1, p0, Lcom/facebook/login/widget/LoginButton$LoginClickListener;->this$0:Lcom/facebook/login/widget/LoginButton;

    invoke-virtual {v1}, Lcom/facebook/login/widget/LoginButton;->getNativeFragment()Landroid/app/Fragment;

    move-result-object v1

    if-eqz v1, :cond_9b

    .line 799
    iget-object v1, p0, Lcom/facebook/login/widget/LoginButton$LoginClickListener;->this$0:Lcom/facebook/login/widget/LoginButton;

    .line 800
    invoke-virtual {v1}, Lcom/facebook/login/widget/LoginButton;->getNativeFragment()Landroid/app/Fragment;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/login/widget/LoginButton$LoginClickListener;->this$0:Lcom/facebook/login/widget/LoginButton;

    .line 801
    # getter for: Lcom/facebook/login/widget/LoginButton;->properties:Lcom/facebook/login/widget/LoginButton$LoginButtonProperties;
    invoke-static {v2}, Lcom/facebook/login/widget/LoginButton;->access$500(Lcom/facebook/login/widget/LoginButton;)Lcom/facebook/login/widget/LoginButton$LoginButtonProperties;

    move-result-object v2

    # getter for: Lcom/facebook/login/widget/LoginButton$LoginButtonProperties;->permissions:Ljava/util/List;
    invoke-static {v2}, Lcom/facebook/login/widget/LoginButton$LoginButtonProperties;->access$700(Lcom/facebook/login/widget/LoginButton$LoginButtonProperties;)Ljava/util/List;

    move-result-object v2

    .line 799
    invoke-virtual {v0, v1, v2}, Lcom/facebook/login/LoginManager;->logInWithReadPermissions(Landroid/app/Fragment;Ljava/util/Collection;)V

    goto :goto_ae

    .line 803
    :cond_9b
    iget-object v1, p0, Lcom/facebook/login/widget/LoginButton$LoginClickListener;->this$0:Lcom/facebook/login/widget/LoginButton;

    .line 804
    # invokes: Lcom/facebook/login/widget/LoginButton;->getActivity()Landroid/app/Activity;
    invoke-static {v1}, Lcom/facebook/login/widget/LoginButton;->access$900(Lcom/facebook/login/widget/LoginButton;)Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/login/widget/LoginButton$LoginClickListener;->this$0:Lcom/facebook/login/widget/LoginButton;

    .line 805
    # getter for: Lcom/facebook/login/widget/LoginButton;->properties:Lcom/facebook/login/widget/LoginButton$LoginButtonProperties;
    invoke-static {v2}, Lcom/facebook/login/widget/LoginButton;->access$500(Lcom/facebook/login/widget/LoginButton;)Lcom/facebook/login/widget/LoginButton$LoginButtonProperties;

    move-result-object v2

    # getter for: Lcom/facebook/login/widget/LoginButton$LoginButtonProperties;->permissions:Ljava/util/List;
    invoke-static {v2}, Lcom/facebook/login/widget/LoginButton$LoginButtonProperties;->access$700(Lcom/facebook/login/widget/LoginButton$LoginButtonProperties;)Ljava/util/List;

    move-result-object v2

    .line 803
    invoke-virtual {v0, v1, v2}, Lcom/facebook/login/LoginManager;->logInWithReadPermissions(Landroid/app/Activity;Ljava/util/Collection;)V

    .line 808
    :goto_ae
    return-void
.end method

.method protected performLogout(Landroid/content/Context;)V
    .registers 11
    .param p1, "context"    # Landroid/content/Context;

    .line 811
    invoke-virtual {p0}, Lcom/facebook/login/widget/LoginButton$LoginClickListener;->getLoginManager()Lcom/facebook/login/LoginManager;

    move-result-object v0

    .line 812
    .local v0, "loginManager":Lcom/facebook/login/LoginManager;
    iget-object v1, p0, Lcom/facebook/login/widget/LoginButton$LoginClickListener;->this$0:Lcom/facebook/login/widget/LoginButton;

    # getter for: Lcom/facebook/login/widget/LoginButton;->confirmLogout:Z
    invoke-static {v1}, Lcom/facebook/login/widget/LoginButton;->access$1000(Lcom/facebook/login/widget/LoginButton;)Z

    move-result v1

    if-eqz v1, :cond_79

    .line 814
    iget-object v1, p0, Lcom/facebook/login/widget/LoginButton$LoginClickListener;->this$0:Lcom/facebook/login/widget/LoginButton;

    invoke-virtual {v1}, Lcom/facebook/login/widget/LoginButton;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/facebook/login/R$string;->com_facebook_loginview_log_out_action:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 816
    .local v1, "logout":Ljava/lang/String;
    iget-object v2, p0, Lcom/facebook/login/widget/LoginButton$LoginClickListener;->this$0:Lcom/facebook/login/widget/LoginButton;

    invoke-virtual {v2}, Lcom/facebook/login/widget/LoginButton;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/facebook/login/R$string;->com_facebook_loginview_cancel_action:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 819
    .local v2, "cancel":Ljava/lang/String;
    invoke-static {}, Lcom/facebook/Profile;->getCurrentProfile()Lcom/facebook/Profile;

    move-result-object v3

    .line 820
    .local v3, "profile":Lcom/facebook/Profile;
    const/4 v4, 0x1

    if-eqz v3, :cond_4b

    invoke-virtual {v3}, Lcom/facebook/Profile;->getName()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_4b

    .line 821
    iget-object v5, p0, Lcom/facebook/login/widget/LoginButton$LoginClickListener;->this$0:Lcom/facebook/login/widget/LoginButton;

    .line 822
    invoke-virtual {v5}, Lcom/facebook/login/widget/LoginButton;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/facebook/login/R$string;->com_facebook_loginview_logged_in_as:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-array v6, v4, [Ljava/lang/Object;

    const/4 v7, 0x0

    .line 824
    invoke-virtual {v3}, Lcom/facebook/Profile;->getName()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    .line 821
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .local v5, "message":Ljava/lang/String;
    goto :goto_57

    .line 826
    .end local v5    # "message":Ljava/lang/String;
    :cond_4b
    iget-object v5, p0, Lcom/facebook/login/widget/LoginButton$LoginClickListener;->this$0:Lcom/facebook/login/widget/LoginButton;

    invoke-virtual {v5}, Lcom/facebook/login/widget/LoginButton;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/facebook/login/R$string;->com_facebook_loginview_logged_in_using_facebook:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 829
    .restart local v5    # "message":Ljava/lang/String;
    :goto_57
    new-instance v6, Landroid/app/AlertDialog$Builder;

    invoke-direct {v6, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 830
    .local v6, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v6, v5}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    .line 831
    invoke-virtual {v7, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    new-instance v7, Lcom/facebook/login/widget/LoginButton$LoginClickListener$1;

    invoke-direct {v7, p0, v0}, Lcom/facebook/login/widget/LoginButton$LoginClickListener$1;-><init>(Lcom/facebook/login/widget/LoginButton$LoginClickListener;Lcom/facebook/login/LoginManager;)V

    .line 832
    invoke-virtual {v4, v1, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const/4 v7, 0x0

    .line 837
    invoke-virtual {v4, v2, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 838
    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V

    .line 839
    .end local v1    # "logout":Ljava/lang/String;
    .end local v2    # "cancel":Ljava/lang/String;
    .end local v3    # "profile":Lcom/facebook/Profile;
    .end local v5    # "message":Ljava/lang/String;
    .end local v6    # "builder":Landroid/app/AlertDialog$Builder;
    goto :goto_7c

    .line 840
    :cond_79
    invoke-virtual {v0}, Lcom/facebook/login/LoginManager;->logOut()V

    .line 842
    :goto_7c
    return-void
.end method
