.class public Lcom/taptap/sdk/j;
.super Ljava/lang/Object;
.source "TestQualificationModel.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/taptap/sdk/net/Api$ApiCallback;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/taptap/sdk/net/Api$ApiCallback<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/taptap/sdk/AccessToken;->getCurrentAccessToken()Lcom/taptap/sdk/AccessToken;

    move-result-object v0

    if-nez v0, :cond_16

    .line 2
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Login first"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v0}, Lcom/taptap/sdk/net/Api$ApiCallback;->onError(Ljava/lang/Throwable;)V

    .line 3
    const-string p1, "Need login first!!"

    invoke-static {p1}, Lcom/taptap/sdk/c;->a(Ljava/lang/String;)V

    return-void

    .line 6
    :cond_16
    invoke-static {}, Lcom/taptap/sdk/h;->c()Lcom/taptap/sdk/RegionType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taptap/sdk/RegionType;->testQualificationUrl()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {}, Lcom/taptap/sdk/h;->a()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/taptap/sdk/j$a;

    invoke-direct {v1, p0, p1}, Lcom/taptap/sdk/j$a;-><init>(Lcom/taptap/sdk/j;Lcom/taptap/sdk/net/Api$ApiCallback;)V

    const/4 p1, 0x0

    invoke-static {v0, p1, v1}, Lcom/taptap/sdk/net/Api;->a(Ljava/lang/String;Ljava/util/HashMap;Lcom/taptap/sdk/net/Api$ApiCallback;)V

    return-void
.end method
