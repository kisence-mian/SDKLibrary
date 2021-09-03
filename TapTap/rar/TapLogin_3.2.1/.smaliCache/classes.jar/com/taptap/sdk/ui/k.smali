.class Lcom/taptap/sdk/ui/k;
.super Ljava/lang/Object;
.source "LoginClient.java"

# interfaces
.implements Lcom/taptap/sdk/ui/g$c;


# instance fields
.field private a:Lcom/taptap/sdk/ui/b;

.field private b:Lcom/taptap/sdk/ui/m;

.field private c:Lcom/taptap/sdk/ui/g;

.field private d:Lcom/taptap/sdk/LoginRequest;


# direct methods
.method public constructor <init>(Lcom/taptap/sdk/ui/a;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/taptap/sdk/ui/g;

    invoke-direct {v0, p1}, Lcom/taptap/sdk/ui/g;-><init>(Lcom/taptap/sdk/ui/a;)V

    iput-object v0, p0, Lcom/taptap/sdk/ui/k;->c:Lcom/taptap/sdk/ui/g;

    .line 3
    new-instance v0, Lcom/taptap/sdk/ui/b;

    invoke-direct {v0, p1}, Lcom/taptap/sdk/ui/b;-><init>(Lcom/taptap/sdk/ui/a;)V

    iput-object v0, p0, Lcom/taptap/sdk/ui/k;->a:Lcom/taptap/sdk/ui/b;

    .line 4
    new-instance v0, Lcom/taptap/sdk/ui/m;

    invoke-direct {v0, p1}, Lcom/taptap/sdk/ui/m;-><init>(Lcom/taptap/sdk/ui/a;)V

    iput-object v0, p0, Lcom/taptap/sdk/ui/k;->b:Lcom/taptap/sdk/ui/m;

    .line 5
    iget-object p1, p0, Lcom/taptap/sdk/ui/k;->c:Lcom/taptap/sdk/ui/g;

    invoke-virtual {p1, p0}, Lcom/taptap/sdk/ui/g;->a(Lcom/taptap/sdk/ui/g$c;)V

    return-void
.end method

.method private a(Lcom/taptap/sdk/LoginRequest;)V
    .registers 3

    .line 4
    const-string v0, "1"

    invoke-virtual {p1, v0}, Lcom/taptap/sdk/LoginRequest;->setLoginVersion(Ljava/lang/String;)V

    .line 5
    const-string v0, "code"

    invoke-virtual {p1, v0}, Lcom/taptap/sdk/LoginRequest;->setResponseType(Ljava/lang/String;)V

    .line 6
    const-string v0, "tapoauth://authorize"

    invoke-virtual {p1, v0}, Lcom/taptap/sdk/LoginRequest;->setRedirectUri(Ljava/lang/String;)V

    .line 7
    sget-object v0, Lcom/taptap/sdk/e;->e:Ljava/lang/String;

    invoke-static {v0}, Lcom/taptap/sdk/ui/h;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/taptap/sdk/LoginRequest;->setCodeChallenge(Ljava/lang/String;)V

    .line 8
    const-string v0, "S256"

    invoke-virtual {p1, v0}, Lcom/taptap/sdk/LoginRequest;->setCodeChallengeMethod(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    .line 1
    invoke-static {}, Lcom/taptap/sdk/tracker/TapTapLoginTrackerHelper;->authorizationBack()V

    .line 2
    iget-object v0, p0, Lcom/taptap/sdk/ui/k;->b:Lcom/taptap/sdk/ui/m;

    if-eqz v0, :cond_e

    iget-object v1, p0, Lcom/taptap/sdk/ui/k;->d:Lcom/taptap/sdk/LoginRequest;

    if-eqz v1, :cond_e

    .line 3
    invoke-virtual {v0, v1}, Lcom/taptap/sdk/ui/m;->a(Lcom/taptap/sdk/LoginRequest;)V

    :cond_e
    return-void
.end method

.method public b()Landroid/content/ServiceConnection;
    .registers 2

    .line 14
    iget-object v0, p0, Lcom/taptap/sdk/ui/k;->c:Lcom/taptap/sdk/ui/g;

    if-eqz v0, :cond_9

    .line 15
    invoke-virtual {v0}, Lcom/taptap/sdk/ui/g;->c()Lcom/taptap/sdk/ui/g$b;

    move-result-object v0

    return-object v0

    :cond_9
    const/4 v0, 0x0

    return-object v0
.end method

.method public b(Lcom/taptap/sdk/LoginRequest;)V
    .registers 3

    .line 1
    const/16 v0, 0x80

    invoke-static {v0}, Lcom/taptap/sdk/ui/h;->a(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/taptap/sdk/e;->e:Ljava/lang/String;

    .line 2
    invoke-direct {p0, p1}, Lcom/taptap/sdk/ui/k;->a(Lcom/taptap/sdk/LoginRequest;)V

    .line 3
    iput-object p1, p0, Lcom/taptap/sdk/ui/k;->d:Lcom/taptap/sdk/LoginRequest;

    .line 5
    :try_start_d
    iget-object v0, p0, Lcom/taptap/sdk/ui/k;->c:Lcom/taptap/sdk/ui/g;

    if-eqz v0, :cond_1d

    invoke-virtual {v0}, Lcom/taptap/sdk/ui/g;->a()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 6
    iget-object v0, p0, Lcom/taptap/sdk/ui/k;->c:Lcom/taptap/sdk/ui/g;

    invoke-virtual {v0, p1}, Lcom/taptap/sdk/ui/g;->a(Lcom/taptap/sdk/LoginRequest;)V

    goto :goto_2c

    .line 8
    :cond_1d
    iget-object v0, p0, Lcom/taptap/sdk/ui/k;->a:Lcom/taptap/sdk/ui/b;

    invoke-virtual {v0, p1}, Lcom/taptap/sdk/ui/b;->a(Lcom/taptap/sdk/LoginRequest;)V
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_22} :catch_23

    goto :goto_2c

    :catch_23
    move-exception v0

    .line 12
    invoke-static {}, Lcom/taptap/sdk/tracker/TapTapLoginTrackerHelper;->authorizationBack()V

    .line 13
    iget-object v0, p0, Lcom/taptap/sdk/ui/k;->b:Lcom/taptap/sdk/ui/m;

    invoke-virtual {v0, p1}, Lcom/taptap/sdk/ui/m;->a(Lcom/taptap/sdk/LoginRequest;)V

    :goto_2c
    return-void
.end method
