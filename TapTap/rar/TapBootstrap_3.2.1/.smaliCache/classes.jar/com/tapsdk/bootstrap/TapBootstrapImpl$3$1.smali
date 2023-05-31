.class Lcom/tapsdk/bootstrap/TapBootstrapImpl$3$1;
.super Ljava/lang/Object;
.source "TapBootstrapImpl.java"

# interfaces
.implements Lcom/tds/common/reactor/Observable$OnSubscribe;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tapsdk/bootstrap/TapBootstrapImpl$3;->getUserInfo()Lcom/tds/common/reactor/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/tds/common/reactor/Observable$OnSubscribe<",
        "Ljava/util/Map<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/tapsdk/bootstrap/TapBootstrapImpl$3;


# direct methods
.method constructor <init>(Lcom/tapsdk/bootstrap/TapBootstrapImpl$3;)V
    .registers 2
    .param p1, "this$1"    # Lcom/tapsdk/bootstrap/TapBootstrapImpl$3;

    .line 256
    iput-object p1, p0, Lcom/tapsdk/bootstrap/TapBootstrapImpl$3$1;->this$1:Lcom/tapsdk/bootstrap/TapBootstrapImpl$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/tds/common/reactor/Subscriber;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tds/common/reactor/Subscriber<",
            "-",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 259
    .local p1, "subscriber":Lcom/tds/common/reactor/Subscriber;, "Lcom/tds/common/reactor/Subscriber<-Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-static {}, Lcom/tapsdk/bootstrap/account/TDSUser;->currentUser()Lcom/tapsdk/bootstrap/account/TDSUser;

    move-result-object v0

    if-eqz v0, :cond_1f

    .line 260
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 261
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Lcom/tapsdk/bootstrap/account/TDSUser;->currentUser()Lcom/tapsdk/bootstrap/account/TDSUser;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tapsdk/bootstrap/account/TDSUser;->getObjectId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "user_id"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    invoke-virtual {p1, v0}, Lcom/tds/common/reactor/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 263
    invoke-virtual {p1}, Lcom/tds/common/reactor/Subscriber;->onCompleted()V

    .line 264
    .end local v0    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    goto :goto_29

    .line 265
    :cond_1f
    new-instance v0, Ljava/lang/Throwable;

    const-string v1, "user_not_login"

    invoke-direct {v0, v1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/tds/common/reactor/Subscriber;->onError(Ljava/lang/Throwable;)V

    .line 267
    :goto_29
    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .registers 2

    .line 256
    check-cast p1, Lcom/tds/common/reactor/Subscriber;

    invoke-virtual {p0, p1}, Lcom/tapsdk/bootstrap/TapBootstrapImpl$3$1;->call(Lcom/tds/common/reactor/Subscriber;)V

    return-void
.end method
