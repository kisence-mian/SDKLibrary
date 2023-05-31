.class Lcom/tds/common/net/TdsApiClient$3;
.super Ljava/lang/Object;
.source "TdsApiClient.java"

# interfaces
.implements Lcom/tds/common/reactor/Observable$OnSubscribe;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tds/common/net/TdsApiClient;->getAsync(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)Lcom/tds/common/reactor/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/tds/common/reactor/Observable$OnSubscribe<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tds/common/net/TdsApiClient;

.field final synthetic val$headers:Ljava/util/Map;

.field final synthetic val$queries:Ljava/util/Map;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/tds/common/net/TdsApiClient;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V
    .registers 5
    .param p1, "this$0"    # Lcom/tds/common/net/TdsApiClient;

    .line 175
    iput-object p1, p0, Lcom/tds/common/net/TdsApiClient$3;->this$0:Lcom/tds/common/net/TdsApiClient;

    iput-object p2, p0, Lcom/tds/common/net/TdsApiClient$3;->val$url:Ljava/lang/String;

    iput-object p3, p0, Lcom/tds/common/net/TdsApiClient$3;->val$queries:Ljava/util/Map;

    iput-object p4, p0, Lcom/tds/common/net/TdsApiClient$3;->val$headers:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/tds/common/reactor/Subscriber;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tds/common/reactor/Subscriber<",
            "-",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 179
    .local p1, "subscriber":Lcom/tds/common/reactor/Subscriber;, "Lcom/tds/common/reactor/Subscriber<-Ljava/lang/String;>;"
    :try_start_0
    iget-object v0, p0, Lcom/tds/common/net/TdsApiClient$3;->this$0:Lcom/tds/common/net/TdsApiClient;

    iget-object v1, p0, Lcom/tds/common/net/TdsApiClient$3;->val$url:Ljava/lang/String;

    iget-object v2, p0, Lcom/tds/common/net/TdsApiClient$3;->val$queries:Ljava/util/Map;

    iget-object v3, p0, Lcom/tds/common/net/TdsApiClient$3;->val$headers:Ljava/util/Map;

    invoke-virtual {v0, v1, v2, v3}, Lcom/tds/common/net/TdsApiClient;->get(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/tds/common/reactor/Subscriber;->onNext(Ljava/lang/Object;)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_f} :catch_12
    .catchall {:try_start_0 .. :try_end_f} :catchall_10

    goto :goto_16

    .line 183
    :catchall_10
    move-exception v0

    goto :goto_1b

    .line 180
    :catch_12
    move-exception v0

    .line 181
    .local v0, "e":Ljava/lang/Exception;
    :try_start_13
    invoke-virtual {p1, v0}, Lcom/tds/common/reactor/Subscriber;->onError(Ljava/lang/Throwable;)V
    :try_end_16
    .catchall {:try_start_13 .. :try_end_16} :catchall_10

    .line 183
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_16
    invoke-virtual {p1}, Lcom/tds/common/reactor/Subscriber;->onCompleted()V

    .line 184
    nop

    .line 185
    return-void

    .line 183
    :goto_1b
    invoke-virtual {p1}, Lcom/tds/common/reactor/Subscriber;->onCompleted()V

    .line 184
    throw v0
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .registers 2

    .line 175
    check-cast p1, Lcom/tds/common/reactor/Subscriber;

    invoke-virtual {p0, p1}, Lcom/tds/common/net/TdsApiClient$3;->call(Lcom/tds/common/reactor/Subscriber;)V

    return-void
.end method
