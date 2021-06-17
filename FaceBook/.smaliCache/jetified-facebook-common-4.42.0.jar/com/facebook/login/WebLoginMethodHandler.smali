.class abstract Lcom/facebook/login/WebLoginMethodHandler;
.super Lcom/facebook/login/LoginMethodHandler;
.source "WebLoginMethodHandler.java"


# static fields
.field private static final WEB_VIEW_AUTH_HANDLER_STORE:Ljava/lang/String; = "com.facebook.login.AuthorizationClient.WebViewAuthHandler.TOKEN_STORE_KEY"

.field private static final WEB_VIEW_AUTH_HANDLER_TOKEN_KEY:Ljava/lang/String; = "TOKEN"


# instance fields
.field private e2e:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/os/Parcel;)V
    .registers 2
    .param p1, "source"    # Landroid/os/Parcel;

    .line 60
    invoke-direct {p0, p1}, Lcom/facebook/login/LoginMethodHandler;-><init>(Landroid/os/Parcel;)V

    .line 61
    return-void
.end method

.method constructor <init>(Lcom/facebook/login/LoginClient;)V
    .registers 2
    .param p1, "loginClient"    # Lcom/facebook/login/LoginClient;

    .line 56
    invoke-direct {p0, p1}, Lcom/facebook/login/LoginMethodHandler;-><init>(Lcom/facebook/login/LoginClient;)V

    .line 57
    return-void
.end method

.method private static final getRedirectUri()Ljava/lang/String;
    .registers 2

    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "fb"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "://authorize"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private loadCookieToken()Ljava/lang/String;
    .registers 5

    .line 188
    iget-object v0, p0, Lcom/facebook/login/WebLoginMethodHandler;->loginClient:Lcom/facebook/login/LoginClient;

    invoke-virtual {v0}, Lcom/facebook/login/LoginClient;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    .line 189
    .local v0, "context":Landroid/content/Context;
    const-string v1, "com.facebook.login.AuthorizationClient.WebViewAuthHandler.TOKEN_STORE_KEY"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 192
    .local v1, "sharedPreferences":Landroid/content/SharedPreferences;
    const-string v2, "TOKEN"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private saveCookieToken(Ljava/lang/String;)V
    .registers 5
    .param p1, "token"    # Ljava/lang/String;

    .line 196
    iget-object v0, p0, Lcom/facebook/login/WebLoginMethodHandler;->loginClient:Lcom/facebook/login/LoginClient;

    invoke-virtual {v0}, Lcom/facebook/login/LoginClient;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    .line 197
    .local v0, "context":Landroid/content/Context;
    const-string v1, "com.facebook.login.AuthorizationClient.WebViewAuthHandler.TOKEN_STORE_KEY"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 200
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 201
    const-string v2, "TOKEN"

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 202
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 203
    return-void
.end method


# virtual methods
.method protected addExtraParameters(Landroid/os/Bundle;Lcom/facebook/login/LoginClient$Request;)Landroid/os/Bundle;
    .registers 5
    .param p1, "parameters"    # Landroid/os/Bundle;
    .param p2, "request"    # Lcom/facebook/login/LoginClient$Request;

    .line 107
    invoke-static {}, Lcom/facebook/login/WebLoginMethodHandler;->getRedirectUri()Ljava/lang/String;

    move-result-object v0

    const-string v1, "redirect_uri"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    invoke-virtual {p2}, Lcom/facebook/login/LoginClient$Request;->getApplicationId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "client_id"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    iget-object v0, p0, Lcom/facebook/login/WebLoginMethodHandler;->loginClient:Lcom/facebook/login/LoginClient;

    invoke-static {}, Lcom/facebook/login/LoginClient;->getE2E()Ljava/lang/String;

    move-result-object v0

    const-string v1, "e2e"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    const-string v0, "response_type"

    const-string v1, "token,signed_request"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    const-string v0, "return_scopes"

    const-string v1, "true"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    nop

    .line 118
    invoke-virtual {p2}, Lcom/facebook/login/LoginClient$Request;->getAuthType()Ljava/lang/String;

    move-result-object v0

    .line 116
    const-string v1, "auth_type"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    invoke-virtual {p0}, Lcom/facebook/login/WebLoginMethodHandler;->getSSODevice()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_44

    .line 120
    invoke-virtual {p0}, Lcom/facebook/login/WebLoginMethodHandler;->getSSODevice()Ljava/lang/String;

    move-result-object v0

    const-string v1, "sso"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    :cond_44
    return-object p1
.end method

.method protected getParameters(Lcom/facebook/login/LoginClient$Request;)Landroid/os/Bundle;
    .registers 8
    .param p1, "request"    # Lcom/facebook/login/LoginClient$Request;

    .line 70
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 71
    .local v0, "parameters":Landroid/os/Bundle;
    invoke-virtual {p1}, Lcom/facebook/login/LoginClient$Request;->getPermissions()Ljava/util/Set;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result v1

    if-nez v1, :cond_21

    .line 72
    invoke-virtual {p1}, Lcom/facebook/login/LoginClient$Request;->getPermissions()Ljava/util/Set;

    move-result-object v1

    const-string v2, ","

    invoke-static {v2, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    .line 73
    .local v1, "scope":Ljava/lang/String;
    const-string v2, "scope"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    invoke-virtual {p0, v2, v1}, Lcom/facebook/login/WebLoginMethodHandler;->addLoggingExtra(Ljava/lang/String;Ljava/lang/Object;)V

    .line 77
    .end local v1    # "scope":Ljava/lang/String;
    :cond_21
    invoke-virtual {p1}, Lcom/facebook/login/LoginClient$Request;->getDefaultAudience()Lcom/facebook/login/DefaultAudience;

    move-result-object v1

    .line 78
    .local v1, "audience":Lcom/facebook/login/DefaultAudience;
    nop

    .line 79
    invoke-virtual {v1}, Lcom/facebook/login/DefaultAudience;->getNativeProtocolAudience()Ljava/lang/String;

    move-result-object v2

    .line 78
    const-string v3, "default_audience"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    nop

    .line 81
    invoke-virtual {p1}, Lcom/facebook/login/LoginClient$Request;->getAuthId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/facebook/login/WebLoginMethodHandler;->getClientState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 80
    const-string v3, "state"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    invoke-static {}, Lcom/facebook/AccessToken;->getCurrentAccessToken()Lcom/facebook/AccessToken;

    move-result-object v2

    .line 84
    .local v2, "previousToken":Lcom/facebook/AccessToken;
    if-eqz v2, :cond_48

    invoke-virtual {v2}, Lcom/facebook/AccessToken;->getToken()Ljava/lang/String;

    move-result-object v3

    goto :goto_49

    :cond_48
    const/4 v3, 0x0

    .line 85
    .local v3, "previousTokenString":Ljava/lang/String;
    :goto_49
    const-string v4, "access_token"

    if-eqz v3, :cond_60

    .line 86
    invoke-direct {p0}, Lcom/facebook/login/WebLoginMethodHandler;->loadCookieToken()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_60

    .line 87
    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    const-string v5, "1"

    invoke-virtual {p0, v4, v5}, Lcom/facebook/login/WebLoginMethodHandler;->addLoggingExtra(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_6e

    .line 97
    :cond_60
    iget-object v5, p0, Lcom/facebook/login/WebLoginMethodHandler;->loginClient:Lcom/facebook/login/LoginClient;

    invoke-virtual {v5}, Lcom/facebook/login/LoginClient;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v5

    invoke-static {v5}, Lcom/facebook/internal/Utility;->clearFacebookCookies(Landroid/content/Context;)V

    .line 98
    const-string v5, "0"

    invoke-virtual {p0, v4, v5}, Lcom/facebook/login/WebLoginMethodHandler;->addLoggingExtra(Ljava/lang/String;Ljava/lang/Object;)V

    .line 103
    :goto_6e
    return-object v0
.end method

.method protected getSSODevice()Ljava/lang/String;
    .registers 2

    .line 66
    const/4 v0, 0x0

    return-object v0
.end method

.method abstract getTokenSource()Lcom/facebook/AccessTokenSource;
.end method

.method protected onComplete(Lcom/facebook/login/LoginClient$Request;Landroid/os/Bundle;Lcom/facebook/FacebookException;)V
    .registers 12
    .param p1, "request"    # Lcom/facebook/login/LoginClient$Request;
    .param p2, "values"    # Landroid/os/Bundle;
    .param p3, "error"    # Lcom/facebook/FacebookException;

    .line 128
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/login/WebLoginMethodHandler;->e2e:Ljava/lang/String;

    .line 129
    if-eqz p2, :cond_53

    .line 131
    const-string v1, "e2e"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 132
    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/login/WebLoginMethodHandler;->e2e:Ljava/lang/String;

    .line 136
    :cond_13
    nop

    .line 137
    :try_start_14
    invoke-virtual {p1}, Lcom/facebook/login/LoginClient$Request;->getPermissions()Ljava/util/Set;

    move-result-object v1

    .line 139
    invoke-virtual {p0}, Lcom/facebook/login/WebLoginMethodHandler;->getTokenSource()Lcom/facebook/AccessTokenSource;

    move-result-object v2

    .line 140
    invoke-virtual {p1}, Lcom/facebook/login/LoginClient$Request;->getApplicationId()Ljava/lang/String;

    move-result-object v3

    .line 136
    invoke-static {v1, p2, v2, v3}, Lcom/facebook/login/WebLoginMethodHandler;->createAccessTokenFromWebBundle(Ljava/util/Collection;Landroid/os/Bundle;Lcom/facebook/AccessTokenSource;Ljava/lang/String;)Lcom/facebook/AccessToken;

    move-result-object v1

    .line 141
    .local v1, "token":Lcom/facebook/AccessToken;
    iget-object v2, p0, Lcom/facebook/login/WebLoginMethodHandler;->loginClient:Lcom/facebook/login/LoginClient;

    .line 142
    invoke-virtual {v2}, Lcom/facebook/login/LoginClient;->getPendingRequest()Lcom/facebook/login/LoginClient$Request;

    move-result-object v2

    .line 141
    invoke-static {v2, v1}, Lcom/facebook/login/LoginClient$Result;->createTokenResult(Lcom/facebook/login/LoginClient$Request;Lcom/facebook/AccessToken;)Lcom/facebook/login/LoginClient$Result;

    move-result-object v2

    .line 148
    .local v2, "outcome":Lcom/facebook/login/LoginClient$Result;
    iget-object v3, p0, Lcom/facebook/login/WebLoginMethodHandler;->loginClient:Lcom/facebook/login/LoginClient;

    .line 149
    invoke-virtual {v3}, Lcom/facebook/login/LoginClient;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    move-result-object v3

    .line 150
    .local v3, "syncManager":Landroid/webkit/CookieSyncManager;
    invoke-virtual {v3}, Landroid/webkit/CookieSyncManager;->sync()V

    .line 151
    invoke-virtual {v1}, Lcom/facebook/AccessToken;->getToken()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/facebook/login/WebLoginMethodHandler;->saveCookieToken(Ljava/lang/String;)V
    :try_end_42
    .catch Lcom/facebook/FacebookException; {:try_start_14 .. :try_end_42} :catch_43

    .end local v1    # "token":Lcom/facebook/AccessToken;
    .end local v3    # "syncManager":Landroid/webkit/CookieSyncManager;
    goto :goto_52

    .line 152
    .end local v2    # "outcome":Lcom/facebook/login/LoginClient$Result;
    :catch_43
    move-exception v1

    .line 153
    .local v1, "ex":Lcom/facebook/FacebookException;
    iget-object v2, p0, Lcom/facebook/login/WebLoginMethodHandler;->loginClient:Lcom/facebook/login/LoginClient;

    .line 154
    invoke-virtual {v2}, Lcom/facebook/login/LoginClient;->getPendingRequest()Lcom/facebook/login/LoginClient$Request;

    move-result-object v2

    .line 156
    invoke-virtual {v1}, Lcom/facebook/FacebookException;->getMessage()Ljava/lang/String;

    move-result-object v3

    .line 153
    invoke-static {v2, v0, v3}, Lcom/facebook/login/LoginClient$Result;->createErrorResult(Lcom/facebook/login/LoginClient$Request;Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/login/LoginClient$Result;

    move-result-object v2

    .line 157
    .end local v1    # "ex":Lcom/facebook/FacebookException;
    .restart local v2    # "outcome":Lcom/facebook/login/LoginClient$Result;
    :goto_52
    goto :goto_9b

    .line 159
    .end local v2    # "outcome":Lcom/facebook/login/LoginClient$Result;
    :cond_53
    instance-of v1, p3, Lcom/facebook/FacebookOperationCanceledException;

    if-eqz v1, :cond_64

    .line 160
    iget-object v0, p0, Lcom/facebook/login/WebLoginMethodHandler;->loginClient:Lcom/facebook/login/LoginClient;

    invoke-virtual {v0}, Lcom/facebook/login/LoginClient;->getPendingRequest()Lcom/facebook/login/LoginClient$Request;

    move-result-object v0

    const-string v1, "User canceled log in."

    invoke-static {v0, v1}, Lcom/facebook/login/LoginClient$Result;->createCancelResult(Lcom/facebook/login/LoginClient$Request;Ljava/lang/String;)Lcom/facebook/login/LoginClient$Result;

    move-result-object v2

    .restart local v2    # "outcome":Lcom/facebook/login/LoginClient$Result;
    goto :goto_9b

    .line 165
    .end local v2    # "outcome":Lcom/facebook/login/LoginClient$Result;
    :cond_64
    iput-object v0, p0, Lcom/facebook/login/WebLoginMethodHandler;->e2e:Ljava/lang/String;

    .line 167
    const/4 v1, 0x0

    .line 168
    .local v1, "errorCode":Ljava/lang/String;
    invoke-virtual {p3}, Lcom/facebook/FacebookException;->getMessage()Ljava/lang/String;

    move-result-object v2

    .line 169
    .local v2, "errorMessage":Ljava/lang/String;
    instance-of v3, p3, Lcom/facebook/FacebookServiceException;

    if-eqz v3, :cond_90

    .line 170
    move-object v3, p3

    check-cast v3, Lcom/facebook/FacebookServiceException;

    .line 171
    invoke-virtual {v3}, Lcom/facebook/FacebookServiceException;->getRequestError()Lcom/facebook/FacebookRequestError;

    move-result-object v3

    .line 172
    .local v3, "requestError":Lcom/facebook/FacebookRequestError;
    sget-object v4, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {v3}, Lcom/facebook/FacebookRequestError;->getErrorCode()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const-string v6, "%d"

    invoke-static {v4, v6, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 173
    invoke-virtual {v3}, Lcom/facebook/FacebookRequestError;->toString()Ljava/lang/String;

    move-result-object v2

    .line 175
    .end local v3    # "requestError":Lcom/facebook/FacebookRequestError;
    :cond_90
    iget-object v3, p0, Lcom/facebook/login/WebLoginMethodHandler;->loginClient:Lcom/facebook/login/LoginClient;

    invoke-virtual {v3}, Lcom/facebook/login/LoginClient;->getPendingRequest()Lcom/facebook/login/LoginClient$Request;

    move-result-object v3

    invoke-static {v3, v0, v2, v1}, Lcom/facebook/login/LoginClient$Result;->createErrorResult(Lcom/facebook/login/LoginClient$Request;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/login/LoginClient$Result;

    move-result-object v0

    move-object v2, v0

    .line 180
    .end local v1    # "errorCode":Ljava/lang/String;
    .local v2, "outcome":Lcom/facebook/login/LoginClient$Result;
    :goto_9b
    iget-object v0, p0, Lcom/facebook/login/WebLoginMethodHandler;->e2e:Ljava/lang/String;

    invoke-static {v0}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a8

    .line 181
    iget-object v0, p0, Lcom/facebook/login/WebLoginMethodHandler;->e2e:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/facebook/login/WebLoginMethodHandler;->logWebLoginCompleted(Ljava/lang/String;)V

    .line 184
    :cond_a8
    iget-object v0, p0, Lcom/facebook/login/WebLoginMethodHandler;->loginClient:Lcom/facebook/login/LoginClient;

    invoke-virtual {v0, v2}, Lcom/facebook/login/LoginClient;->completeAndValidate(Lcom/facebook/login/LoginClient$Result;)V

    .line 185
    return-void
.end method
