.class Lcom/facebook/login/LoginManager$4;
.super Ljava/lang/Object;
.source "LoginManager.java"

# interfaces
.implements Lcom/facebook/internal/PlatformServiceClient$CompletedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/login/LoginManager;->retrieveLoginStatusImpl(Landroid/content/Context;Lcom/facebook/LoginStatusCallback;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/login/LoginManager;

.field final synthetic val$applicationId:Ljava/lang/String;

.field final synthetic val$logger:Lcom/facebook/login/LoginLogger;

.field final synthetic val$loggerRef:Ljava/lang/String;

.field final synthetic val$responseCallback:Lcom/facebook/LoginStatusCallback;


# direct methods
.method constructor <init>(Lcom/facebook/login/LoginManager;Ljava/lang/String;Lcom/facebook/login/LoginLogger;Lcom/facebook/LoginStatusCallback;Ljava/lang/String;)V
    .registers 6
    .param p1, "this$0"    # Lcom/facebook/login/LoginManager;

    .line 737
    iput-object p1, p0, Lcom/facebook/login/LoginManager$4;->this$0:Lcom/facebook/login/LoginManager;

    iput-object p2, p0, Lcom/facebook/login/LoginManager$4;->val$loggerRef:Ljava/lang/String;

    iput-object p3, p0, Lcom/facebook/login/LoginManager$4;->val$logger:Lcom/facebook/login/LoginLogger;

    iput-object p4, p0, Lcom/facebook/login/LoginManager$4;->val$responseCallback:Lcom/facebook/LoginStatusCallback;

    iput-object p5, p0, Lcom/facebook/login/LoginManager$4;->val$applicationId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public completed(Landroid/os/Bundle;)V
    .registers 23
    .param p1, "result"    # Landroid/os/Bundle;

    .line 740
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    if-eqz v1, :cond_b0

    .line 742
    const-string v2, "com.facebook.platform.status.ERROR_TYPE"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 743
    .local v2, "errorType":Ljava/lang/String;
    nop

    .line 744
    const-string v3, "com.facebook.platform.status.ERROR_DESCRIPTION"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 745
    .local v3, "errorDescription":Ljava/lang/String;
    if-eqz v2, :cond_20

    .line 746
    iget-object v4, v0, Lcom/facebook/login/LoginManager$4;->val$loggerRef:Ljava/lang/String;

    iget-object v5, v0, Lcom/facebook/login/LoginManager$4;->val$logger:Lcom/facebook/login/LoginLogger;

    iget-object v6, v0, Lcom/facebook/login/LoginManager$4;->val$responseCallback:Lcom/facebook/LoginStatusCallback;

    # invokes: Lcom/facebook/login/LoginManager;->handleLoginStatusError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/login/LoginLogger;Lcom/facebook/LoginStatusCallback;)V
    invoke-static {v2, v3, v4, v5, v6}, Lcom/facebook/login/LoginManager;->access$100(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/login/LoginLogger;Lcom/facebook/LoginStatusCallback;)V

    goto/16 :goto_af

    .line 753
    :cond_20
    nop

    .line 754
    const-string v4, "com.facebook.platform.extra.ACCESS_TOKEN"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 755
    .local v4, "token":Ljava/lang/String;
    new-instance v5, Ljava/util/Date;

    const-wide/16 v6, 0x0

    invoke-direct {v5, v6, v7}, Ljava/util/Date;-><init>(J)V

    const-string v8, "com.facebook.platform.extra.EXPIRES_SECONDS_SINCE_EPOCH"

    invoke-static {v1, v8, v5}, Lcom/facebook/internal/Utility;->getBundleLongAsDate(Landroid/os/Bundle;Ljava/lang/String;Ljava/util/Date;)Ljava/util/Date;

    move-result-object v15

    .line 759
    .local v15, "expires":Ljava/util/Date;
    nop

    .line 760
    const-string v5, "com.facebook.platform.extra.PERMISSIONS"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v16

    .line 761
    .local v16, "permissions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    nop

    .line 762
    const-string v5, "signed request"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 763
    .local v17, "signedRequest":Ljava/lang/String;
    new-instance v5, Ljava/util/Date;

    invoke-direct {v5, v6, v7}, Ljava/util/Date;-><init>(J)V

    const-string v6, "com.facebook.platform.extra.EXTRA_DATA_ACCESS_EXPIRATION_TIME"

    invoke-static {v1, v6, v5}, Lcom/facebook/internal/Utility;->getBundleLongAsDate(Landroid/os/Bundle;Ljava/lang/String;Ljava/util/Date;)Ljava/util/Date;

    move-result-object v18

    .line 767
    .local v18, "dataAccessExpirationTime":Ljava/util/Date;
    const/4 v5, 0x0

    .line 768
    .local v5, "userId":Ljava/lang/String;
    invoke-static/range {v17 .. v17}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_5c

    .line 769
    nop

    .line 770
    invoke-static/range {v17 .. v17}, Lcom/facebook/login/LoginMethodHandler;->getUserIDFromSignedRequest(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v19, v5

    goto :goto_5e

    .line 768
    :cond_5c
    move-object/from16 v19, v5

    .line 773
    .end local v5    # "userId":Ljava/lang/String;
    .local v19, "userId":Ljava/lang/String;
    :goto_5e
    invoke-static {v4}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_a3

    if-eqz v16, :cond_a3

    .line 775
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_a3

    .line 776
    invoke-static/range {v19 .. v19}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_a3

    .line 777
    new-instance v20, Lcom/facebook/AccessToken;

    iget-object v7, v0, Lcom/facebook/login/LoginManager$4;->val$applicationId:Ljava/lang/String;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    move-object/from16 v5, v20

    move-object v6, v4

    move-object/from16 v8, v19

    move-object/from16 v9, v16

    move-object v12, v15

    move-object/from16 v14, v18

    invoke-direct/range {v5 .. v14}, Lcom/facebook/AccessToken;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;Ljava/util/Collection;Lcom/facebook/AccessTokenSource;Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;)V

    .line 787
    .local v5, "accessToken":Lcom/facebook/AccessToken;
    invoke-static {v5}, Lcom/facebook/AccessToken;->setCurrentAccessToken(Lcom/facebook/AccessToken;)V

    .line 789
    # invokes: Lcom/facebook/login/LoginManager;->getProfileFromBundle(Landroid/os/Bundle;)Lcom/facebook/Profile;
    invoke-static/range {p1 .. p1}, Lcom/facebook/login/LoginManager;->access$200(Landroid/os/Bundle;)Lcom/facebook/Profile;

    move-result-object v6

    .line 790
    .local v6, "profile":Lcom/facebook/Profile;
    if-eqz v6, :cond_93

    .line 791
    invoke-static {v6}, Lcom/facebook/Profile;->setCurrentProfile(Lcom/facebook/Profile;)V

    goto :goto_96

    .line 793
    :cond_93
    invoke-static {}, Lcom/facebook/Profile;->fetchProfileForCurrentAccessToken()V

    .line 796
    :goto_96
    iget-object v7, v0, Lcom/facebook/login/LoginManager$4;->val$logger:Lcom/facebook/login/LoginLogger;

    iget-object v8, v0, Lcom/facebook/login/LoginManager$4;->val$loggerRef:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/facebook/login/LoginLogger;->logLoginStatusSuccess(Ljava/lang/String;)V

    .line 797
    iget-object v7, v0, Lcom/facebook/login/LoginManager$4;->val$responseCallback:Lcom/facebook/LoginStatusCallback;

    invoke-interface {v7, v5}, Lcom/facebook/LoginStatusCallback;->onCompleted(Lcom/facebook/AccessToken;)V

    .line 798
    .end local v5    # "accessToken":Lcom/facebook/AccessToken;
    .end local v6    # "profile":Lcom/facebook/Profile;
    goto :goto_af

    .line 799
    :cond_a3
    iget-object v5, v0, Lcom/facebook/login/LoginManager$4;->val$logger:Lcom/facebook/login/LoginLogger;

    iget-object v6, v0, Lcom/facebook/login/LoginManager$4;->val$loggerRef:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/facebook/login/LoginLogger;->logLoginStatusFailure(Ljava/lang/String;)V

    .line 800
    iget-object v5, v0, Lcom/facebook/login/LoginManager$4;->val$responseCallback:Lcom/facebook/LoginStatusCallback;

    invoke-interface {v5}, Lcom/facebook/LoginStatusCallback;->onFailure()V

    .line 803
    .end local v2    # "errorType":Ljava/lang/String;
    .end local v3    # "errorDescription":Ljava/lang/String;
    .end local v4    # "token":Ljava/lang/String;
    .end local v15    # "expires":Ljava/util/Date;
    .end local v16    # "permissions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v17    # "signedRequest":Ljava/lang/String;
    .end local v18    # "dataAccessExpirationTime":Ljava/util/Date;
    .end local v19    # "userId":Ljava/lang/String;
    :goto_af
    goto :goto_bc

    .line 804
    :cond_b0
    iget-object v2, v0, Lcom/facebook/login/LoginManager$4;->val$logger:Lcom/facebook/login/LoginLogger;

    iget-object v3, v0, Lcom/facebook/login/LoginManager$4;->val$loggerRef:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/facebook/login/LoginLogger;->logLoginStatusFailure(Ljava/lang/String;)V

    .line 805
    iget-object v2, v0, Lcom/facebook/login/LoginManager$4;->val$responseCallback:Lcom/facebook/LoginStatusCallback;

    invoke-interface {v2}, Lcom/facebook/LoginStatusCallback;->onFailure()V

    .line 807
    :goto_bc
    return-void
.end method
