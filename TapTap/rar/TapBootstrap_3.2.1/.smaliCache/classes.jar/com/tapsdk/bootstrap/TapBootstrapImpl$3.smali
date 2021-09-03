.class Lcom/tapsdk/bootstrap/TapBootstrapImpl$3;
.super Ljava/lang/Object;
.source "TapBootstrapImpl.java"

# interfaces
.implements Lcom/tds/common/entities/TapAccountProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tapsdk/bootstrap/TapBootstrapImpl;->initOtherComponent(Landroid/app/Activity;Lcom/tds/common/entities/TapConfig;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tapsdk/bootstrap/TapBootstrapImpl;


# direct methods
.method constructor <init>(Lcom/tapsdk/bootstrap/TapBootstrapImpl;)V
    .registers 2
    .param p1, "this$0"    # Lcom/tapsdk/bootstrap/TapBootstrapImpl;

    .line 245
    iput-object p1, p0, Lcom/tapsdk/bootstrap/TapBootstrapImpl$3;->this$0:Lcom/tapsdk/bootstrap/TapBootstrapImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAccessToken()Lcom/tds/common/entities/AccessToken;
    .registers 3

    .line 248
    invoke-static {}, Lcom/tapsdk/bootstrap/account/TDSUser;->currentUser()Lcom/tapsdk/bootstrap/account/TDSUser;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 249
    new-instance v0, Lcom/tds/common/entities/AccessToken;

    invoke-static {}, Lcom/tapsdk/bootstrap/account/TDSUser;->currentUser()Lcom/tapsdk/bootstrap/account/TDSUser;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tapsdk/bootstrap/account/TDSUser;->getSessionToken()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/tds/common/entities/AccessToken;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 251
    :cond_14
    const/4 v0, 0x0

    return-object v0
.end method

.method public getUserInfo()Lcom/tds/common/reactor/Observable;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/tds/common/reactor/Observable<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 256
    new-instance v0, Lcom/tapsdk/bootstrap/TapBootstrapImpl$3$1;

    invoke-direct {v0, p0}, Lcom/tapsdk/bootstrap/TapBootstrapImpl$3$1;-><init>(Lcom/tapsdk/bootstrap/TapBootstrapImpl$3;)V

    invoke-static {v0}, Lcom/tds/common/reactor/Observable;->create(Lcom/tds/common/reactor/Observable$OnSubscribe;)Lcom/tds/common/reactor/Observable;

    move-result-object v0

    return-object v0
.end method
