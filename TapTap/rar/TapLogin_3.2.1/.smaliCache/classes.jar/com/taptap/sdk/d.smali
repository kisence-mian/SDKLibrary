.class Lcom/taptap/sdk/d;
.super Ljava/lang/Object;
.source "LoginManager.java"


# static fields
.field public static final b:Ljava/lang/String; = "com.taptap.sdk.response"

.field public static final c:Ljava/lang/String; = "com.taptap.sdk.response.cancel"

.field public static final d:Ljava/lang/String; = "com.taptap.sdk.response.error"

.field public static final e:Ljava/lang/String; = "com.taptap.sdk.response.token"

.field public static final f:Ljava/lang/String; = "com.taptap.sdk.response.code"

.field public static final g:Ljava/lang/String; = "com.taptap.sdk.response.codeVerifier"

.field public static final h:Ljava/lang/String; = "com.taptap.sdk.response.login_version"

.field public static final i:Ljava/lang/String; = "com.taptap.sdk.response.token.parcel"

.field public static final j:Ljava/lang/String; = "com.taptap.sdk.response.state"

.field public static final k:Ljava/lang/String; = "com.taptap.sdk.response.permissions"

.field private static l:Lcom/taptap/sdk/d;


# instance fields
.field private a:Lcom/taptap/sdk/LoginRequest;


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/taptap/sdk/d;
    .registers 2

    .line 3
    sget-object v0, Lcom/taptap/sdk/d;->l:Lcom/taptap/sdk/d;

    if-nez v0, :cond_17

    .line 4
    const-class v0, Lcom/taptap/sdk/d;

    monitor-enter v0

    .line 5
    :try_start_7
    sget-object v1, Lcom/taptap/sdk/d;->l:Lcom/taptap/sdk/d;

    if-nez v1, :cond_12

    .line 6
    new-instance v1, Lcom/taptap/sdk/d;

    invoke-direct {v1}, Lcom/taptap/sdk/d;-><init>()V

    sput-object v1, Lcom/taptap/sdk/d;->l:Lcom/taptap/sdk/d;

    .line 8
    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw v1

    .line 10
    :cond_17
    :goto_17
    sget-object v0, Lcom/taptap/sdk/d;->l:Lcom/taptap/sdk/d;

    return-object v0
.end method

.method private a(Lcom/taptap/sdk/LoginResponse;Lcom/taptap/sdk/g;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/taptap/sdk/LoginResponse;",
            "Lcom/taptap/sdk/g<",
            "Lcom/taptap/sdk/LoginResponse;",
            ">;)V"
        }
    .end annotation

    .line 69
    iget-object v0, p1, Lcom/taptap/sdk/LoginResponse;->token:Lcom/taptap/sdk/AccessToken;

    invoke-static {v0}, Lcom/taptap/sdk/AccessToken;->setCurrentToken(Lcom/taptap/sdk/AccessToken;)V

    .line 71
    new-instance v0, Lcom/taptap/sdk/d$c;

    invoke-direct {v0, p0, p2, p1}, Lcom/taptap/sdk/d$c;-><init>(Lcom/taptap/sdk/d;Lcom/taptap/sdk/g;Lcom/taptap/sdk/LoginResponse;)V

    invoke-static {v0}, Lcom/taptap/sdk/Profile;->fetchProfileForCurrentAccessToken(Lcom/taptap/sdk/net/Api$ApiCallback;)V

    return-void
.end method

.method static synthetic a(Lcom/taptap/sdk/d;Lcom/taptap/sdk/LoginResponse;Lcom/taptap/sdk/g;)V
    .registers 3

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/taptap/sdk/d;->a(Lcom/taptap/sdk/LoginResponse;Lcom/taptap/sdk/g;)V

    return-void
.end method

.method private a(ILandroid/content/Intent;Lcom/taptap/sdk/g;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/content/Intent;",
            "Lcom/taptap/sdk/g<",
            "Lcom/taptap/sdk/LoginResponse;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, -0x1

    if-ne p1, v1, :cond_81

    const/4 p1, 0x0

    .line 32
    :try_start_5
    invoke-static {p2}, Lcom/taptap/sdk/LoginResponse;->getResultFromIntent(Landroid/content/Intent;)Lcom/taptap/sdk/LoginResponse;

    move-result-object p1
    :try_end_9
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_9} :catch_a

    goto :goto_e

    :catch_a
    move-exception p2

    .line 34
    invoke-interface {p3, p2}, Lcom/taptap/sdk/g;->onError(Ljava/lang/Throwable;)V

    .line 37
    :goto_e
    iget-boolean p2, p1, Lcom/taptap/sdk/LoginResponse;->cancel:Z

    const/4 v1, 0x0

    if-eqz p2, :cond_17

    .line 38
    invoke-interface {p3}, Lcom/taptap/sdk/g;->a()V

    return v1

    .line 41
    :cond_17
    iget-object p2, p1, Lcom/taptap/sdk/LoginResponse;->state:Ljava/lang/String;

    iget-object v2, p0, Lcom/taptap/sdk/d;->a:Lcom/taptap/sdk/LoginRequest;

    invoke-virtual {v2}, Lcom/taptap/sdk/LoginRequest;->getState()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_30

    .line 42
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "state not equal"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-interface {p3, p1}, Lcom/taptap/sdk/g;->onError(Ljava/lang/Throwable;)V

    return v1

    .line 45
    :cond_30
    iget-object p2, p1, Lcom/taptap/sdk/LoginResponse;->errorMessage:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_51

    .line 46
    iget-object p2, p1, Lcom/taptap/sdk/LoginResponse;->errorMessage:Ljava/lang/String;

    const-string v1, "access_denied"

    invoke-static {p2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_46

    .line 47
    invoke-interface {p3}, Lcom/taptap/sdk/g;->a()V

    goto :goto_80

    .line 49
    :cond_46
    new-instance p2, Ljava/lang/IllegalArgumentException;

    iget-object p1, p1, Lcom/taptap/sdk/LoginResponse;->errorMessage:Ljava/lang/String;

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-interface {p3, p2}, Lcom/taptap/sdk/g;->onError(Ljava/lang/Throwable;)V

    goto :goto_80

    .line 51
    :cond_51
    iget-object p2, p1, Lcom/taptap/sdk/LoginResponse;->token:Lcom/taptap/sdk/AccessToken;

    if-nez p2, :cond_64

    iget-object p2, p1, Lcom/taptap/sdk/LoginResponse;->code:Ljava/lang/String;

    if-nez p2, :cond_64

    .line 52
    new-instance p1, Ljava/lang/IllegalAccessException;

    const-string p2, "token is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalAccessException;-><init>(Ljava/lang/String;)V

    invoke-interface {p3, p1}, Lcom/taptap/sdk/g;->onError(Ljava/lang/Throwable;)V

    goto :goto_80

    .line 54
    :cond_64
    iget-object p2, p1, Lcom/taptap/sdk/LoginResponse;->loginVersion:Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_7d

    .line 55
    iget-object p2, p1, Lcom/taptap/sdk/LoginResponse;->code:Ljava/lang/String;

    sget-object v1, Lcom/taptap/sdk/e;->e:Ljava/lang/String;

    iget-object p1, p1, Lcom/taptap/sdk/LoginResponse;->state:Ljava/lang/String;

    new-instance v2, Lcom/taptap/sdk/d$b;

    invoke-direct {v2, p0, p3}, Lcom/taptap/sdk/d$b;-><init>(Lcom/taptap/sdk/d;Lcom/taptap/sdk/g;)V

    invoke-static {p2, v1, p1, v2}, Lcom/taptap/sdk/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/taptap/sdk/f$b;)V

    goto :goto_80

    .line 63
    :cond_7d
    invoke-direct {p0, p1, p3}, Lcom/taptap/sdk/d;->a(Lcom/taptap/sdk/LoginResponse;Lcom/taptap/sdk/g;)V

    :goto_80
    return v0

    :cond_81
    if-nez p1, :cond_86

    .line 68
    invoke-interface {p3}, Lcom/taptap/sdk/g;->a()V

    :cond_86
    return v0
.end method

.method static synthetic a(Lcom/taptap/sdk/d;ILandroid/content/Intent;Lcom/taptap/sdk/g;)Z
    .registers 4

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/taptap/sdk/d;->a(ILandroid/content/Intent;Lcom/taptap/sdk/g;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public varargs a(Landroid/app/Activity;Ljava/lang/String;[Ljava/lang/String;)V
    .registers 5

    .line 21
    invoke-static {}, Lcom/taptap/sdk/m;->a()V

    .line 23
    new-instance v0, Lcom/taptap/sdk/LoginRequest;

    invoke-direct {v0, p3}, Lcom/taptap/sdk/LoginRequest;-><init>([Ljava/lang/String;)V

    .line 24
    iput-object v0, p0, Lcom/taptap/sdk/d;->a:Lcom/taptap/sdk/LoginRequest;

    .line 25
    const-string p3, "2.6.0"

    invoke-virtual {v0, p3}, Lcom/taptap/sdk/LoginRequest;->setVersionCode(Ljava/lang/String;)V

    .line 26
    invoke-static {p1, p2}, Lcom/taptap/sdk/LoginRequest;->generateInfo(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/taptap/sdk/LoginRequest;->setInfo(Ljava/lang/String;)V

    .line 28
    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2}, Landroid/content/Intent;-><init>()V

    .line 29
    const-class p3, Lcom/taptap/sdk/ui/TapTapActivity;

    invoke-virtual {p2, p1, p3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 30
    const-string p3, "request"

    invoke-virtual {p2, p3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 31
    invoke-virtual {v0}, Lcom/taptap/sdk/LoginRequest;->getRequestCode()I

    move-result p3

    invoke-virtual {p1, p2, p3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public varargs a(Landroid/app/Activity;[Ljava/lang/String;)V
    .registers 4

    .line 20
    const-string v0, "GAME"

    invoke-virtual {p0, p1, v0, p2}, Lcom/taptap/sdk/d;->a(Landroid/app/Activity;Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public a(Lcom/taptap/sdk/a;Lcom/taptap/sdk/g;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/taptap/sdk/a;",
            "Lcom/taptap/sdk/g<",
            "Lcom/taptap/sdk/LoginResponse;",
            ">;)V"
        }
    .end annotation

    .line 11
    instance-of v0, p1, Lcom/taptap/sdk/b;

    if-eqz v0, :cond_11

    .line 12
    check-cast p1, Lcom/taptap/sdk/b;

    new-instance v0, Lcom/taptap/sdk/d$a;

    invoke-direct {v0, p0, p2}, Lcom/taptap/sdk/d$a;-><init>(Lcom/taptap/sdk/d;Lcom/taptap/sdk/g;)V

    const/16 p2, 0xa

    invoke-virtual {p1, v0, p2}, Lcom/taptap/sdk/b;->a(Lcom/taptap/sdk/b$a;I)V

    return-void

    .line 19
    :cond_11
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "callbackManager must be instance of  CallbackManagerImpl"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public b()V
    .registers 2

    .line 1
    invoke-static {}, Lcom/taptap/sdk/m;->a()V

    .line 2
    invoke-static {}, Lcom/taptap/sdk/AccessToken;->getCurrentAccessToken()Lcom/taptap/sdk/AccessToken;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 3
    invoke-static {}, Lcom/taptap/sdk/AccessToken;->clear()V

    .line 6
    :cond_c
    invoke-static {}, Lcom/taptap/sdk/Profile;->getCurrentProfile()Lcom/taptap/sdk/Profile;

    move-result-object v0

    if-eqz v0, :cond_19

    .line 7
    invoke-static {}, Lcom/taptap/sdk/Profile;->getCurrentProfile()Lcom/taptap/sdk/Profile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taptap/sdk/Profile;->clear()V

    :cond_19
    return-void
.end method
