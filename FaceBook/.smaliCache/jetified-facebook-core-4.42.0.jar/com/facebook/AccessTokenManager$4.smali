.class Lcom/facebook/AccessTokenManager$4;
.super Ljava/lang/Object;
.source "AccessTokenManager.java"

# interfaces
.implements Lcom/facebook/GraphRequestBatch$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/AccessTokenManager;->refreshCurrentAccessTokenImpl(Lcom/facebook/AccessToken$AccessTokenRefreshCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/AccessTokenManager;

.field final synthetic val$accessToken:Lcom/facebook/AccessToken;

.field final synthetic val$callback:Lcom/facebook/AccessToken$AccessTokenRefreshCallback;

.field final synthetic val$declinedPermissions:Ljava/util/Set;

.field final synthetic val$permissions:Ljava/util/Set;

.field final synthetic val$permissionsCallSucceeded:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final synthetic val$refreshResult:Lcom/facebook/AccessTokenManager$RefreshResult;


# direct methods
.method constructor <init>(Lcom/facebook/AccessTokenManager;Lcom/facebook/AccessToken;Lcom/facebook/AccessToken$AccessTokenRefreshCallback;Ljava/util/concurrent/atomic/AtomicBoolean;Lcom/facebook/AccessTokenManager$RefreshResult;Ljava/util/Set;Ljava/util/Set;)V
    .registers 8
    .param p1, "this$0"    # Lcom/facebook/AccessTokenManager;

    .line 318
    iput-object p1, p0, Lcom/facebook/AccessTokenManager$4;->this$0:Lcom/facebook/AccessTokenManager;

    iput-object p2, p0, Lcom/facebook/AccessTokenManager$4;->val$accessToken:Lcom/facebook/AccessToken;

    iput-object p3, p0, Lcom/facebook/AccessTokenManager$4;->val$callback:Lcom/facebook/AccessToken$AccessTokenRefreshCallback;

    iput-object p4, p0, Lcom/facebook/AccessTokenManager$4;->val$permissionsCallSucceeded:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p5, p0, Lcom/facebook/AccessTokenManager$4;->val$refreshResult:Lcom/facebook/AccessTokenManager$RefreshResult;

    iput-object p6, p0, Lcom/facebook/AccessTokenManager$4;->val$permissions:Ljava/util/Set;

    iput-object p7, p0, Lcom/facebook/AccessTokenManager$4;->val$declinedPermissions:Ljava/util/Set;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBatchCompleted(Lcom/facebook/GraphRequestBatch;)V
    .registers 19
    .param p1, "batch"    # Lcom/facebook/GraphRequestBatch;

    .line 321
    move-object/from16 v1, p0

    const/4 v2, 0x0

    .line 323
    .local v2, "newAccessToken":Lcom/facebook/AccessToken;
    const/4 v3, 0x0

    :try_start_4
    invoke-static {}, Lcom/facebook/AccessTokenManager;->getInstance()Lcom/facebook/AccessTokenManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/AccessTokenManager;->getCurrentAccessToken()Lcom/facebook/AccessToken;

    move-result-object v0

    if-eqz v0, :cond_106

    .line 324
    invoke-static {}, Lcom/facebook/AccessTokenManager;->getInstance()Lcom/facebook/AccessTokenManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/AccessTokenManager;->getCurrentAccessToken()Lcom/facebook/AccessToken;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/AccessToken;->getUserId()Ljava/lang/String;

    move-result-object v0

    iget-object v4, v1, Lcom/facebook/AccessTokenManager$4;->val$accessToken:Lcom/facebook/AccessToken;

    .line 325
    invoke-virtual {v4}, Lcom/facebook/AccessToken;->getUserId()Ljava/lang/String;

    move-result-object v4

    if-eq v0, v4, :cond_24

    goto/16 :goto_106

    .line 332
    :cond_24
    iget-object v0, v1, Lcom/facebook/AccessTokenManager$4;->val$permissionsCallSucceeded:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_59

    iget-object v0, v1, Lcom/facebook/AccessTokenManager$4;->val$refreshResult:Lcom/facebook/AccessTokenManager$RefreshResult;

    iget-object v0, v0, Lcom/facebook/AccessTokenManager$RefreshResult;->accessToken:Ljava/lang/String;

    if-nez v0, :cond_59

    iget-object v0, v1, Lcom/facebook/AccessTokenManager$4;->val$refreshResult:Lcom/facebook/AccessTokenManager$RefreshResult;

    iget v0, v0, Lcom/facebook/AccessTokenManager$RefreshResult;->expiresAt:I

    if-nez v0, :cond_59

    .line 335
    iget-object v0, v1, Lcom/facebook/AccessTokenManager$4;->val$callback:Lcom/facebook/AccessToken$AccessTokenRefreshCallback;

    if-eqz v0, :cond_46

    .line 336
    new-instance v4, Lcom/facebook/FacebookException;

    const-string v5, "Failed to refresh access token"

    invoke-direct {v4, v5}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v4}, Lcom/facebook/AccessToken$AccessTokenRefreshCallback;->OnTokenRefreshFailed(Lcom/facebook/FacebookException;)V
    :try_end_46
    .catchall {:try_start_4 .. :try_end_46} :catchall_127

    .line 361
    :cond_46
    iget-object v0, v1, Lcom/facebook/AccessTokenManager$4;->this$0:Lcom/facebook/AccessTokenManager;

    # getter for: Lcom/facebook/AccessTokenManager;->tokenRefreshInProgress:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v0}, Lcom/facebook/AccessTokenManager;->access$200(Lcom/facebook/AccessTokenManager;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 362
    iget-object v0, v1, Lcom/facebook/AccessTokenManager$4;->val$callback:Lcom/facebook/AccessToken$AccessTokenRefreshCallback;

    if-eqz v0, :cond_58

    if-eqz v2, :cond_58

    .line 363
    invoke-interface {v0, v2}, Lcom/facebook/AccessToken$AccessTokenRefreshCallback;->OnTokenRefreshed(Lcom/facebook/AccessToken;)V

    .line 339
    :cond_58
    return-void

    .line 341
    :cond_59
    :try_start_59
    new-instance v0, Lcom/facebook/AccessToken;

    iget-object v4, v1, Lcom/facebook/AccessTokenManager$4;->val$refreshResult:Lcom/facebook/AccessTokenManager$RefreshResult;

    iget-object v4, v4, Lcom/facebook/AccessTokenManager$RefreshResult;->accessToken:Ljava/lang/String;

    if-eqz v4, :cond_67

    iget-object v4, v1, Lcom/facebook/AccessTokenManager$4;->val$refreshResult:Lcom/facebook/AccessTokenManager$RefreshResult;

    iget-object v4, v4, Lcom/facebook/AccessTokenManager$RefreshResult;->accessToken:Ljava/lang/String;

    move-object v5, v4

    goto :goto_6e

    :cond_67
    iget-object v4, v1, Lcom/facebook/AccessTokenManager$4;->val$accessToken:Lcom/facebook/AccessToken;

    .line 343
    invoke-virtual {v4}, Lcom/facebook/AccessToken;->getToken()Ljava/lang/String;

    move-result-object v4

    move-object v5, v4

    :goto_6e
    iget-object v4, v1, Lcom/facebook/AccessTokenManager$4;->val$accessToken:Lcom/facebook/AccessToken;

    .line 344
    invoke-virtual {v4}, Lcom/facebook/AccessToken;->getApplicationId()Ljava/lang/String;

    move-result-object v6

    iget-object v4, v1, Lcom/facebook/AccessTokenManager$4;->val$accessToken:Lcom/facebook/AccessToken;

    .line 345
    invoke-virtual {v4}, Lcom/facebook/AccessToken;->getUserId()Ljava/lang/String;

    move-result-object v7

    iget-object v4, v1, Lcom/facebook/AccessTokenManager$4;->val$permissionsCallSucceeded:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 346
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v4

    if-eqz v4, :cond_86

    iget-object v4, v1, Lcom/facebook/AccessTokenManager$4;->val$permissions:Ljava/util/Set;

    move-object v8, v4

    goto :goto_8d

    :cond_86
    iget-object v4, v1, Lcom/facebook/AccessTokenManager$4;->val$accessToken:Lcom/facebook/AccessToken;

    .line 347
    invoke-virtual {v4}, Lcom/facebook/AccessToken;->getPermissions()Ljava/util/Set;

    move-result-object v4

    move-object v8, v4

    :goto_8d
    iget-object v4, v1, Lcom/facebook/AccessTokenManager$4;->val$permissionsCallSucceeded:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 348
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v4

    if-eqz v4, :cond_99

    iget-object v4, v1, Lcom/facebook/AccessTokenManager$4;->val$declinedPermissions:Ljava/util/Set;

    move-object v9, v4

    goto :goto_a0

    :cond_99
    iget-object v4, v1, Lcom/facebook/AccessTokenManager$4;->val$accessToken:Lcom/facebook/AccessToken;

    .line 349
    invoke-virtual {v4}, Lcom/facebook/AccessToken;->getDeclinedPermissions()Ljava/util/Set;

    move-result-object v4

    move-object v9, v4

    :goto_a0
    iget-object v4, v1, Lcom/facebook/AccessTokenManager$4;->val$accessToken:Lcom/facebook/AccessToken;

    .line 350
    invoke-virtual {v4}, Lcom/facebook/AccessToken;->getSource()Lcom/facebook/AccessTokenSource;

    move-result-object v10

    iget-object v4, v1, Lcom/facebook/AccessTokenManager$4;->val$refreshResult:Lcom/facebook/AccessTokenManager$RefreshResult;

    iget v4, v4, Lcom/facebook/AccessTokenManager$RefreshResult;->expiresAt:I

    const-wide/16 v11, 0x3e8

    if-eqz v4, :cond_bc

    new-instance v4, Ljava/util/Date;

    iget-object v13, v1, Lcom/facebook/AccessTokenManager$4;->val$refreshResult:Lcom/facebook/AccessTokenManager$RefreshResult;

    iget v13, v13, Lcom/facebook/AccessTokenManager$RefreshResult;->expiresAt:I

    int-to-long v13, v13

    mul-long v13, v13, v11

    invoke-direct {v4, v13, v14}, Ljava/util/Date;-><init>(J)V

    move-object v13, v4

    goto :goto_c3

    :cond_bc
    iget-object v4, v1, Lcom/facebook/AccessTokenManager$4;->val$accessToken:Lcom/facebook/AccessToken;

    .line 353
    invoke-virtual {v4}, Lcom/facebook/AccessToken;->getExpires()Ljava/util/Date;

    move-result-object v4

    move-object v13, v4

    :goto_c3
    new-instance v14, Ljava/util/Date;

    invoke-direct {v14}, Ljava/util/Date;-><init>()V

    iget-object v4, v1, Lcom/facebook/AccessTokenManager$4;->val$refreshResult:Lcom/facebook/AccessTokenManager$RefreshResult;

    iget-object v4, v4, Lcom/facebook/AccessTokenManager$RefreshResult;->dataAccessExpirationTime:Ljava/lang/Long;

    if-eqz v4, :cond_df

    new-instance v4, Ljava/util/Date;

    iget-object v15, v1, Lcom/facebook/AccessTokenManager$4;->val$refreshResult:Lcom/facebook/AccessTokenManager$RefreshResult;

    iget-object v15, v15, Lcom/facebook/AccessTokenManager$RefreshResult;->dataAccessExpirationTime:Ljava/lang/Long;

    .line 356
    invoke-virtual {v15}, Ljava/lang/Long;->longValue()J

    move-result-wide v15

    mul-long v11, v11, v15

    invoke-direct {v4, v11, v12}, Ljava/util/Date;-><init>(J)V

    move-object v15, v4

    goto :goto_e6

    :cond_df
    iget-object v4, v1, Lcom/facebook/AccessTokenManager$4;->val$accessToken:Lcom/facebook/AccessToken;

    .line 357
    invoke-virtual {v4}, Lcom/facebook/AccessToken;->getDataAccessExpirationTime()Ljava/util/Date;

    move-result-object v4

    move-object v15, v4

    :goto_e6
    move-object v4, v0

    move-object v11, v13

    move-object v12, v14

    move-object v13, v15

    invoke-direct/range {v4 .. v13}, Lcom/facebook/AccessToken;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;Ljava/util/Collection;Lcom/facebook/AccessTokenSource;Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;)V

    move-object v2, v0

    .line 359
    invoke-static {}, Lcom/facebook/AccessTokenManager;->getInstance()Lcom/facebook/AccessTokenManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/facebook/AccessTokenManager;->setCurrentAccessToken(Lcom/facebook/AccessToken;)V
    :try_end_f5
    .catchall {:try_start_59 .. :try_end_f5} :catchall_127

    .line 361
    iget-object v0, v1, Lcom/facebook/AccessTokenManager$4;->this$0:Lcom/facebook/AccessTokenManager;

    # getter for: Lcom/facebook/AccessTokenManager;->tokenRefreshInProgress:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v0}, Lcom/facebook/AccessTokenManager;->access$200(Lcom/facebook/AccessTokenManager;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 362
    iget-object v0, v1, Lcom/facebook/AccessTokenManager$4;->val$callback:Lcom/facebook/AccessToken$AccessTokenRefreshCallback;

    if-eqz v0, :cond_105

    .line 363
    invoke-interface {v0, v2}, Lcom/facebook/AccessToken$AccessTokenRefreshCallback;->OnTokenRefreshed(Lcom/facebook/AccessToken;)V

    .line 366
    :cond_105
    return-void

    .line 326
    :cond_106
    :goto_106
    :try_start_106
    iget-object v0, v1, Lcom/facebook/AccessTokenManager$4;->val$callback:Lcom/facebook/AccessToken$AccessTokenRefreshCallback;

    if-eqz v0, :cond_114

    .line 327
    new-instance v4, Lcom/facebook/FacebookException;

    const-string v5, "No current access token to refresh"

    invoke-direct {v4, v5}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v4}, Lcom/facebook/AccessToken$AccessTokenRefreshCallback;->OnTokenRefreshFailed(Lcom/facebook/FacebookException;)V
    :try_end_114
    .catchall {:try_start_106 .. :try_end_114} :catchall_127

    .line 361
    :cond_114
    iget-object v0, v1, Lcom/facebook/AccessTokenManager$4;->this$0:Lcom/facebook/AccessTokenManager;

    # getter for: Lcom/facebook/AccessTokenManager;->tokenRefreshInProgress:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v0}, Lcom/facebook/AccessTokenManager;->access$200(Lcom/facebook/AccessTokenManager;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 362
    iget-object v0, v1, Lcom/facebook/AccessTokenManager$4;->val$callback:Lcom/facebook/AccessToken$AccessTokenRefreshCallback;

    if-eqz v0, :cond_126

    if-eqz v2, :cond_126

    .line 363
    invoke-interface {v0, v2}, Lcom/facebook/AccessToken$AccessTokenRefreshCallback;->OnTokenRefreshed(Lcom/facebook/AccessToken;)V

    .line 330
    :cond_126
    return-void

    .line 361
    :catchall_127
    move-exception v0

    iget-object v4, v1, Lcom/facebook/AccessTokenManager$4;->this$0:Lcom/facebook/AccessTokenManager;

    # getter for: Lcom/facebook/AccessTokenManager;->tokenRefreshInProgress:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v4}, Lcom/facebook/AccessTokenManager;->access$200(Lcom/facebook/AccessTokenManager;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 362
    iget-object v3, v1, Lcom/facebook/AccessTokenManager$4;->val$callback:Lcom/facebook/AccessToken$AccessTokenRefreshCallback;

    if-eqz v3, :cond_13a

    if-eqz v2, :cond_13a

    .line 363
    invoke-interface {v3, v2}, Lcom/facebook/AccessToken$AccessTokenRefreshCallback;->OnTokenRefreshed(Lcom/facebook/AccessToken;)V

    .line 365
    :cond_13a
    throw v0
.end method
