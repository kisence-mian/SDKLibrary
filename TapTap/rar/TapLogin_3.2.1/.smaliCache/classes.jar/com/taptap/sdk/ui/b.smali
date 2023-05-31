.class Lcom/taptap/sdk/ui/b;
.super Lcom/taptap/sdk/ui/c;
.source "ActivityHandler.java"


# static fields
.field public static final b:Ljava/lang/String; = "com.taptap.sdk.request"

.field public static final c:Ljava/lang/String; = "com.taptap.sdk.request.client_id"

.field public static final d:Ljava/lang/String; = "com.taptap.sdk.request.state"

.field public static final e:Ljava/lang/String; = "com.taptap.sdk.request.permissions"

.field public static final f:Ljava/lang/String; = "com.taptap.sdk.request.sdk_version"

.field public static final g:Ljava/lang/String; = "com.taptap.sdk.request.login_version"

.field public static final h:Ljava/lang/String; = "com.taptap.sdk.request.response_type"

.field public static final i:Ljava/lang/String; = "com.taptap.sdk.request.redirect_uri"

.field public static final j:Ljava/lang/String; = "com.taptap.sdk.request.code_challenge"

.field public static final k:Ljava/lang/String; = "com.taptap.sdk.request.code_challenge_method"

.field public static final l:Ljava/lang/String; = "com.taptap.sdk.request.screen.portrait"

.field public static final m:Ljava/lang/String; = "com.taptap.sdk.request.info"


# instance fields
.field private a:Lcom/taptap/sdk/ui/a;


# direct methods
.method public constructor <init>(Lcom/taptap/sdk/ui/a;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/taptap/sdk/ui/c;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/taptap/sdk/ui/b;->a:Lcom/taptap/sdk/ui/a;

    return-void
.end method


# virtual methods
.method public a(Lcom/taptap/sdk/LoginRequest;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/taptap/sdk/ui/b;->b(Lcom/taptap/sdk/LoginRequest;)Landroid/content/Intent;

    move-result-object v0

    .line 2
    invoke-static {}, Lcom/taptap/sdk/e;->b()Lcom/taptap/sdk/RegionType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taptap/sdk/RegionType;->targetActionName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 3
    const-string v1, "taptap"

    invoke-static {v1}, Lcom/taptap/sdk/tracker/TapTapLoginTrackerHelper;->authorizationOpen(Ljava/lang/String;)V

    .line 4
    iget-object v1, p0, Lcom/taptap/sdk/ui/b;->a:Lcom/taptap/sdk/ui/a;

    invoke-virtual {p1}, Lcom/taptap/sdk/LoginRequest;->getRequestCode()I

    move-result p1

    invoke-virtual {v1, v0, p1}, Lcom/taptap/sdk/ui/a;->a(Landroid/content/Intent;I)V

    return-void
.end method

.method public b(Lcom/taptap/sdk/LoginRequest;)Landroid/content/Intent;
    .registers 6

    .line 1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 2
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 3
    const-string v2, "com.taptap.sdk.request"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 4
    invoke-static {}, Lcom/taptap/sdk/e;->a()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.taptap.sdk.request.client_id"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    invoke-virtual {p1}, Lcom/taptap/sdk/LoginRequest;->getPermissions()[Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.taptap.sdk.request.permissions"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 6
    invoke-virtual {p1}, Lcom/taptap/sdk/LoginRequest;->getState()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.taptap.sdk.request.state"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    invoke-virtual {p1}, Lcom/taptap/sdk/LoginRequest;->getVersionCode()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.taptap.sdk.request.sdk_version"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    sget-boolean v2, Lcom/taptap/sdk/e;->d:Z

    const-string v3, "com.taptap.sdk.request.screen.portrait"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 9
    invoke-virtual {p1}, Lcom/taptap/sdk/LoginRequest;->getInfo()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.taptap.sdk.request.info"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    invoke-virtual {p1}, Lcom/taptap/sdk/LoginRequest;->getLoginVersion()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.taptap.sdk.request.login_version"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    invoke-virtual {p1}, Lcom/taptap/sdk/LoginRequest;->getResponseType()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.taptap.sdk.request.response_type"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    invoke-virtual {p1}, Lcom/taptap/sdk/LoginRequest;->getRedirectUri()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.taptap.sdk.request.redirect_uri"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    invoke-virtual {p1}, Lcom/taptap/sdk/LoginRequest;->getCodeChallenge()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.taptap.sdk.request.code_challenge"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    invoke-virtual {p1}, Lcom/taptap/sdk/LoginRequest;->getCodeChallengeMethod()Ljava/lang/String;

    move-result-object p1

    const-string v2, "com.taptap.sdk.request.code_challenge_method"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
