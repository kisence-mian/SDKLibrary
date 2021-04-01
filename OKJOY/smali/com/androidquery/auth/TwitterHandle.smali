.class public Lcom/androidquery/auth/TwitterHandle;
.super Lcom/androidquery/auth/AccountHandle;
.source "TwitterHandle.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/androidquery/auth/TwitterHandle$Task;,
        Lcom/androidquery/auth/TwitterHandle$Task2;,
        Lcom/androidquery/auth/TwitterHandle$TwWebViewClient;
    }
.end annotation


# static fields
.field private static final CALLBACK_URI:Ljava/lang/String; = "twitter://callback"

.field private static final CANCEL_URI:Ljava/lang/String; = "twitter://cancel"

.field private static final OAUTH_ACCESS_TOKEN:Ljava/lang/String; = "https://api.twitter.com/oauth/access_token"

.field private static final OAUTH_AUTHORIZE:Ljava/lang/String; = "https://api.twitter.com/oauth/authorize"

.field private static final OAUTH_REQUEST_TOKEN:Ljava/lang/String; = "https://api.twitter.com/oauth/request_token"

.field private static final TW_SECRET:Ljava/lang/String; = "aq.tw.secret"

.field private static final TW_TOKEN:Ljava/lang/String; = "aq.tw.token"


# instance fields
.field private act:Landroid/app/Activity;

.field private consumer:Loauth/signpost/commonshttp/CommonsHttpOAuthConsumer;

.field private dialog:Lcom/androidquery/WebDialog;

.field private provider:Loauth/signpost/commonshttp/CommonsHttpOAuthProvider;

.field private secret:Ljava/lang/String;

.field private token:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .param p1, "act"    # Landroid/app/Activity;
    .param p2, "consumerKey"    # Ljava/lang/String;
    .param p3, "consumerSecret"    # Ljava/lang/String;

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/androidquery/auth/AccountHandle;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/androidquery/auth/TwitterHandle;->act:Landroid/app/Activity;

    .line 49
    new-instance v0, Loauth/signpost/commonshttp/CommonsHttpOAuthConsumer;

    invoke-direct {v0, p2, p3}, Loauth/signpost/commonshttp/CommonsHttpOAuthConsumer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/androidquery/auth/TwitterHandle;->consumer:Loauth/signpost/commonshttp/CommonsHttpOAuthConsumer;

    .line 51
    const-string v0, "aq.tw.token"

    invoke-direct {p0, v0}, Lcom/androidquery/auth/TwitterHandle;->fetchToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/androidquery/auth/TwitterHandle;->token:Ljava/lang/String;

    .line 52
    const-string v0, "aq.tw.secret"

    invoke-direct {p0, v0}, Lcom/androidquery/auth/TwitterHandle;->fetchToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/androidquery/auth/TwitterHandle;->secret:Ljava/lang/String;

    .line 54
    iget-object v0, p0, Lcom/androidquery/auth/TwitterHandle;->token:Ljava/lang/String;

    if-eqz v0, :cond_2d

    iget-object v0, p0, Lcom/androidquery/auth/TwitterHandle;->secret:Ljava/lang/String;

    if-eqz v0, :cond_2d

    .line 55
    iget-object v0, p0, Lcom/androidquery/auth/TwitterHandle;->consumer:Loauth/signpost/commonshttp/CommonsHttpOAuthConsumer;

    iget-object v1, p0, Lcom/androidquery/auth/TwitterHandle;->token:Ljava/lang/String;

    iget-object v2, p0, Lcom/androidquery/auth/TwitterHandle;->secret:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Loauth/signpost/commonshttp/CommonsHttpOAuthConsumer;->setTokenWithSecret(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    :cond_2d
    new-instance v0, Loauth/signpost/commonshttp/CommonsHttpOAuthProvider;

    const-string v1, "https://api.twitter.com/oauth/request_token"

    const-string v2, "https://api.twitter.com/oauth/access_token"

    const-string v3, "https://api.twitter.com/oauth/authorize"

    invoke-direct {v0, v1, v2, v3}, Loauth/signpost/commonshttp/CommonsHttpOAuthProvider;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/androidquery/auth/TwitterHandle;->provider:Loauth/signpost/commonshttp/CommonsHttpOAuthProvider;

    .line 60
    return-void
.end method

.method static synthetic access$0(Lcom/androidquery/auth/TwitterHandle;)Loauth/signpost/commonshttp/CommonsHttpOAuthProvider;
    .registers 2

    .prologue
    .line 41
    iget-object v0, p0, Lcom/androidquery/auth/TwitterHandle;->provider:Loauth/signpost/commonshttp/CommonsHttpOAuthProvider;

    return-object v0
.end method

.method static synthetic access$1(Lcom/androidquery/auth/TwitterHandle;)Loauth/signpost/commonshttp/CommonsHttpOAuthConsumer;
    .registers 2

    .prologue
    .line 40
    iget-object v0, p0, Lcom/androidquery/auth/TwitterHandle;->consumer:Loauth/signpost/commonshttp/CommonsHttpOAuthConsumer;

    return-object v0
.end method

.method static synthetic access$10(Lcom/androidquery/auth/TwitterHandle;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 43
    iget-object v0, p0, Lcom/androidquery/auth/TwitterHandle;->secret:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$11(Lcom/androidquery/auth/TwitterHandle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 169
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/androidquery/auth/TwitterHandle;->storeToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$12(Lcom/androidquery/auth/TwitterHandle;)V
    .registers 1

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/androidquery/auth/TwitterHandle;->dismiss()V

    return-void
.end method

.method static synthetic access$13(Lcom/androidquery/auth/TwitterHandle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .prologue
    .line 173
    invoke-direct {p0, p1, p2}, Lcom/androidquery/auth/TwitterHandle;->extract(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2(Lcom/androidquery/auth/TwitterHandle;)Landroid/app/Activity;
    .registers 2

    .prologue
    .line 38
    iget-object v0, p0, Lcom/androidquery/auth/TwitterHandle;->act:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$3(Lcom/androidquery/auth/TwitterHandle;Lcom/androidquery/WebDialog;)V
    .registers 2

    .prologue
    .line 39
    iput-object p1, p0, Lcom/androidquery/auth/TwitterHandle;->dialog:Lcom/androidquery/WebDialog;

    return-void
.end method

.method static synthetic access$4(Lcom/androidquery/auth/TwitterHandle;)Lcom/androidquery/WebDialog;
    .registers 2

    .prologue
    .line 39
    iget-object v0, p0, Lcom/androidquery/auth/TwitterHandle;->dialog:Lcom/androidquery/WebDialog;

    return-object v0
.end method

.method static synthetic access$5(Lcom/androidquery/auth/TwitterHandle;)V
    .registers 1

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/androidquery/auth/TwitterHandle;->show()V

    return-void
.end method

.method static synthetic access$6(Lcom/androidquery/auth/TwitterHandle;)V
    .registers 1

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/androidquery/auth/TwitterHandle;->failure()V

    return-void
.end method

.method static synthetic access$7(Lcom/androidquery/auth/TwitterHandle;Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 42
    iput-object p1, p0, Lcom/androidquery/auth/TwitterHandle;->token:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$8(Lcom/androidquery/auth/TwitterHandle;Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 43
    iput-object p1, p0, Lcom/androidquery/auth/TwitterHandle;->secret:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$9(Lcom/androidquery/auth/TwitterHandle;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 42
    iget-object v0, p0, Lcom/androidquery/auth/TwitterHandle;->token:Ljava/lang/String;

    return-object v0
.end method

.method private dismiss()V
    .registers 3

    .prologue
    .line 71
    iget-object v0, p0, Lcom/androidquery/auth/TwitterHandle;->dialog:Lcom/androidquery/WebDialog;

    if-eqz v0, :cond_13

    .line 72
    new-instance v0, Lcom/androidquery/AQuery;

    iget-object v1, p0, Lcom/androidquery/auth/TwitterHandle;->act:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/androidquery/AQuery;-><init>(Landroid/app/Activity;)V

    iget-object v1, p0, Lcom/androidquery/auth/TwitterHandle;->dialog:Lcom/androidquery/WebDialog;

    invoke-virtual {v0, v1}, Lcom/androidquery/AQuery;->dismiss(Landroid/app/Dialog;)Lcom/androidquery/AbstractAQuery;

    .line 73
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/androidquery/auth/TwitterHandle;->dialog:Lcom/androidquery/WebDialog;

    .line 75
    :cond_13
    return-void
.end method

.method private extract(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "param"    # Ljava/lang/String;

    .prologue
    .line 175
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 176
    .local v0, "uri":Landroid/net/Uri;
    invoke-virtual {v0, p2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 177
    .local v1, "value":Ljava/lang/String;
    return-object v1
.end method

.method private failure()V
    .registers 4

    .prologue
    .line 84
    invoke-direct {p0}, Lcom/androidquery/auth/TwitterHandle;->dismiss()V

    .line 85
    iget-object v0, p0, Lcom/androidquery/auth/TwitterHandle;->act:Landroid/app/Activity;

    const/16 v1, 0x191

    const-string v2, "cancel"

    invoke-virtual {p0, v0, v1, v2}, Lcom/androidquery/auth/TwitterHandle;->failure(Landroid/content/Context;ILjava/lang/String;)V

    .line 86
    return-void
.end method

.method private fetchToken(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 166
    iget-object v0, p0, Lcom/androidquery/auth/TwitterHandle;->act:Landroid/app/Activity;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private show()V
    .registers 3

    .prologue
    .line 78
    iget-object v0, p0, Lcom/androidquery/auth/TwitterHandle;->dialog:Lcom/androidquery/WebDialog;

    if-eqz v0, :cond_10

    .line 79
    new-instance v0, Lcom/androidquery/AQuery;

    iget-object v1, p0, Lcom/androidquery/auth/TwitterHandle;->act:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/androidquery/AQuery;-><init>(Landroid/app/Activity;)V

    iget-object v1, p0, Lcom/androidquery/auth/TwitterHandle;->dialog:Lcom/androidquery/WebDialog;

    invoke-virtual {v0, v1}, Lcom/androidquery/AQuery;->show(Landroid/app/Dialog;)Lcom/androidquery/AbstractAQuery;

    .line 81
    :cond_10
    return-void
.end method

.method private storeToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "key1"    # Ljava/lang/String;
    .param p2, "token1"    # Ljava/lang/String;
    .param p3, "key2"    # Ljava/lang/String;
    .param p4, "token2"    # Ljava/lang/String;

    .prologue
    .line 170
    iget-object v0, p0, Lcom/androidquery/auth/TwitterHandle;->act:Landroid/app/Activity;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p3, p4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 171
    return-void
.end method


# virtual methods
.method public applyToken(Lcom/androidquery/callback/AbstractAjaxCallback;Ljava/net/HttpURLConnection;)V
    .registers 7
    .param p2, "conn"    # Ljava/net/HttpURLConnection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/androidquery/callback/AbstractAjaxCallback",
            "<**>;",
            "Ljava/net/HttpURLConnection;",
            ")V"
        }
    .end annotation

    .prologue
    .line 321
    .local p1, "cb":Lcom/androidquery/callback/AbstractAjaxCallback;, "Lcom/androidquery/callback/AbstractAjaxCallback<**>;"
    const-string v2, "apply token multipart"

    invoke-virtual {p1}, Lcom/androidquery/callback/AbstractAjaxCallback;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/androidquery/util/AQUtility;->debug(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 323
    new-instance v1, Loauth/signpost/basic/DefaultOAuthConsumer;

    iget-object v2, p0, Lcom/androidquery/auth/TwitterHandle;->consumer:Loauth/signpost/commonshttp/CommonsHttpOAuthConsumer;

    invoke-virtual {v2}, Loauth/signpost/commonshttp/CommonsHttpOAuthConsumer;->getConsumerKey()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/androidquery/auth/TwitterHandle;->consumer:Loauth/signpost/commonshttp/CommonsHttpOAuthConsumer;

    invoke-virtual {v3}, Loauth/signpost/commonshttp/CommonsHttpOAuthConsumer;->getConsumerSecret()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Loauth/signpost/basic/DefaultOAuthConsumer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    .local v1, "oac":Loauth/signpost/OAuthConsumer;
    iget-object v2, p0, Lcom/androidquery/auth/TwitterHandle;->consumer:Loauth/signpost/commonshttp/CommonsHttpOAuthConsumer;

    invoke-virtual {v2}, Loauth/signpost/commonshttp/CommonsHttpOAuthConsumer;->getToken()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/androidquery/auth/TwitterHandle;->consumer:Loauth/signpost/commonshttp/CommonsHttpOAuthConsumer;

    invoke-virtual {v3}, Loauth/signpost/commonshttp/CommonsHttpOAuthConsumer;->getTokenSecret()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Loauth/signpost/OAuthConsumer;->setTokenWithSecret(Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    :try_start_29
    invoke-interface {v1, p2}, Loauth/signpost/OAuthConsumer;->sign(Ljava/lang/Object;)Loauth/signpost/http/HttpRequest;
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_2c} :catch_2d

    .line 332
    :goto_2c
    return-void

    .line 328
    :catch_2d
    move-exception v0

    .line 329
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/androidquery/util/AQUtility;->report(Ljava/lang/Throwable;)V

    goto :goto_2c
.end method

.method public applyToken(Lcom/androidquery/callback/AbstractAjaxCallback;Lorg/apache/http/HttpRequest;)V
    .registers 6
    .param p2, "request"    # Lorg/apache/http/HttpRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/androidquery/callback/AbstractAjaxCallback",
            "<**>;",
            "Lorg/apache/http/HttpRequest;",
            ")V"
        }
    .end annotation

    .prologue
    .line 308
    .local p1, "cb":Lcom/androidquery/callback/AbstractAjaxCallback;, "Lcom/androidquery/callback/AbstractAjaxCallback<**>;"
    const-string v1, "apply token"

    invoke-virtual {p1}, Lcom/androidquery/callback/AbstractAjaxCallback;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/androidquery/util/AQUtility;->debug(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 311
    :try_start_9
    iget-object v1, p0, Lcom/androidquery/auth/TwitterHandle;->consumer:Loauth/signpost/commonshttp/CommonsHttpOAuthConsumer;

    invoke-virtual {v1, p2}, Loauth/signpost/commonshttp/CommonsHttpOAuthConsumer;->sign(Ljava/lang/Object;)Loauth/signpost/http/HttpRequest;
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_e} :catch_f

    .line 316
    :goto_e
    return-void

    .line 312
    :catch_f
    move-exception v0

    .line 313
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/androidquery/util/AQUtility;->report(Ljava/lang/Throwable;)V

    goto :goto_e
.end method

.method protected auth()V
    .registers 3

    .prologue
    .line 90
    new-instance v0, Lcom/androidquery/auth/TwitterHandle$Task;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/androidquery/auth/TwitterHandle$Task;-><init>(Lcom/androidquery/auth/TwitterHandle;Lcom/androidquery/auth/TwitterHandle$Task;)V

    .line 91
    .local v0, "task":Lcom/androidquery/auth/TwitterHandle$Task;
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/androidquery/auth/TwitterHandle$Task;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 93
    return-void
.end method

.method public authenticate(Z)V
    .registers 4
    .param p1, "refreshToken"    # Z

    .prologue
    .line 150
    if-nez p1, :cond_12

    iget-object v0, p0, Lcom/androidquery/auth/TwitterHandle;->token:Ljava/lang/String;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/androidquery/auth/TwitterHandle;->secret:Ljava/lang/String;

    if-eqz v0, :cond_12

    .line 151
    iget-object v0, p0, Lcom/androidquery/auth/TwitterHandle;->secret:Ljava/lang/String;

    iget-object v1, p0, Lcom/androidquery/auth/TwitterHandle;->token:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/androidquery/auth/TwitterHandle;->authenticated(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    :goto_11
    return-void

    .line 153
    :cond_12
    invoke-virtual {p0}, Lcom/androidquery/auth/TwitterHandle;->auth()V

    goto :goto_11
.end method

.method protected authenticated(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p1, "secret"    # Ljava/lang/String;
    .param p2, "token"    # Ljava/lang/String;

    .prologue
    .line 160
    return-void
.end method

.method public authenticated()Z
    .registers 2

    .prologue
    .line 337
    iget-object v0, p0, Lcom/androidquery/auth/TwitterHandle;->token:Ljava/lang/String;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/androidquery/auth/TwitterHandle;->secret:Ljava/lang/String;

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public expired(Lcom/androidquery/callback/AbstractAjaxCallback;Lcom/androidquery/callback/AjaxStatus;)Z
    .registers 5
    .param p2, "status"    # Lcom/androidquery/callback/AjaxStatus;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/androidquery/callback/AbstractAjaxCallback",
            "<**>;",
            "Lcom/androidquery/callback/AjaxStatus;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 286
    .local p1, "cb":Lcom/androidquery/callback/AbstractAjaxCallback;, "Lcom/androidquery/callback/AbstractAjaxCallback<**>;"
    invoke-virtual {p2}, Lcom/androidquery/callback/AjaxStatus;->getCode()I

    move-result v0

    .line 287
    .local v0, "code":I
    const/16 v1, 0x190

    if-eq v0, v1, :cond_e

    const/16 v1, 0x191

    if-eq v0, v1, :cond_e

    const/4 v1, 0x0

    :goto_d
    return v1

    :cond_e
    const/4 v1, 0x1

    goto :goto_d
.end method

.method public getSecret()Ljava/lang/String;
    .registers 2

    .prologue
    .line 67
    iget-object v0, p0, Lcom/androidquery/auth/TwitterHandle;->secret:Ljava/lang/String;

    return-object v0
.end method

.method public getToken()Ljava/lang/String;
    .registers 2

    .prologue
    .line 63
    iget-object v0, p0, Lcom/androidquery/auth/TwitterHandle;->token:Ljava/lang/String;

    return-object v0
.end method

.method public reauth(Lcom/androidquery/callback/AbstractAjaxCallback;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/androidquery/callback/AbstractAjaxCallback",
            "<**>;)Z"
        }
    .end annotation

    .prologue
    .local p1, "cb":Lcom/androidquery/callback/AbstractAjaxCallback;, "Lcom/androidquery/callback/AbstractAjaxCallback<**>;"
    const/4 v3, 0x0

    .line 293
    iput-object v3, p0, Lcom/androidquery/auth/TwitterHandle;->token:Ljava/lang/String;

    .line 294
    iput-object v3, p0, Lcom/androidquery/auth/TwitterHandle;->secret:Ljava/lang/String;

    .line 295
    const-string v1, "aq.tw.token"

    const-string v2, "aq.tw.secret"

    invoke-direct {p0, v1, v3, v2, v3}, Lcom/androidquery/auth/TwitterHandle;->storeToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    new-instance v0, Lcom/androidquery/auth/TwitterHandle$Task;

    invoke-direct {v0, p0, v3}, Lcom/androidquery/auth/TwitterHandle$Task;-><init>(Lcom/androidquery/auth/TwitterHandle;Lcom/androidquery/auth/TwitterHandle$Task;)V

    .line 298
    .local v0, "task":Lcom/androidquery/auth/TwitterHandle$Task;
    invoke-static {v0, p1}, Lcom/androidquery/auth/TwitterHandle$Task;->access$3(Lcom/androidquery/auth/TwitterHandle$Task;Lcom/androidquery/callback/AbstractAjaxCallback;)V

    .line 300
    invoke-static {p1}, Lcom/androidquery/util/AQUtility;->post(Ljava/lang/Runnable;)V

    .line 302
    const/4 v1, 0x0

    return v1
.end method

.method public unauth()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 343
    iput-object v2, p0, Lcom/androidquery/auth/TwitterHandle;->token:Ljava/lang/String;

    .line 344
    iput-object v2, p0, Lcom/androidquery/auth/TwitterHandle;->secret:Ljava/lang/String;

    .line 346
    iget-object v0, p0, Lcom/androidquery/auth/TwitterHandle;->act:Landroid/app/Activity;

    invoke-static {v0}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    .line 347
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/CookieManager;->removeAllCookie()V

    .line 349
    const-string v0, "aq.tw.token"

    const-string v1, "aq.tw.secret"

    invoke-direct {p0, v0, v2, v1, v2}, Lcom/androidquery/auth/TwitterHandle;->storeToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    return-void
.end method
