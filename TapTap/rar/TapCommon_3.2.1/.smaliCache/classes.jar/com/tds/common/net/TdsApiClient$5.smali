.class Lcom/tds/common/net/TdsApiClient$5;
.super Ljava/lang/Object;
.source "TdsApiClient.java"

# interfaces
.implements Lcom/tds/common/reactor/Observable$OnSubscribe;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tds/common/net/TdsApiClient;->postAsync(Ljava/lang/Class;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lorg/json/JSONObject;)Lcom/tds/common/reactor/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/tds/common/reactor/Observable$OnSubscribe<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tds/common/net/TdsApiClient;

.field final synthetic val$body:Lorg/json/JSONObject;

.field final synthetic val$clazz:Ljava/lang/Class;

.field final synthetic val$headers:Ljava/util/Map;

.field final synthetic val$queries:Ljava/util/Map;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/tds/common/net/TdsApiClient;Ljava/lang/Class;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lorg/json/JSONObject;)V
    .registers 7
    .param p1, "this$0"    # Lcom/tds/common/net/TdsApiClient;

    .line 248
    iput-object p1, p0, Lcom/tds/common/net/TdsApiClient$5;->this$0:Lcom/tds/common/net/TdsApiClient;

    iput-object p2, p0, Lcom/tds/common/net/TdsApiClient$5;->val$clazz:Ljava/lang/Class;

    iput-object p3, p0, Lcom/tds/common/net/TdsApiClient$5;->val$url:Ljava/lang/String;

    iput-object p4, p0, Lcom/tds/common/net/TdsApiClient$5;->val$queries:Ljava/util/Map;

    iput-object p5, p0, Lcom/tds/common/net/TdsApiClient$5;->val$headers:Ljava/util/Map;

    iput-object p6, p0, Lcom/tds/common/net/TdsApiClient$5;->val$body:Lorg/json/JSONObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/tds/common/reactor/Subscriber;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tds/common/reactor/Subscriber<",
            "-TT;>;)V"
        }
    .end annotation

    .line 252
    .local p1, "subscriber":Lcom/tds/common/reactor/Subscriber;, "Lcom/tds/common/reactor/Subscriber<-TT;>;"
    :try_start_0
    iget-object v0, p0, Lcom/tds/common/net/TdsApiClient$5;->this$0:Lcom/tds/common/net/TdsApiClient;

    iget-object v1, p0, Lcom/tds/common/net/TdsApiClient$5;->val$clazz:Ljava/lang/Class;

    iget-object v2, p0, Lcom/tds/common/net/TdsApiClient$5;->val$url:Ljava/lang/String;

    iget-object v3, p0, Lcom/tds/common/net/TdsApiClient$5;->val$queries:Ljava/util/Map;

    iget-object v4, p0, Lcom/tds/common/net/TdsApiClient$5;->val$headers:Ljava/util/Map;

    iget-object v5, p0, Lcom/tds/common/net/TdsApiClient$5;->val$body:Lorg/json/JSONObject;

    invoke-virtual/range {v0 .. v5}, Lcom/tds/common/net/TdsApiClient;->post(Ljava/lang/Class;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/tds/common/reactor/Subscriber;->onNext(Ljava/lang/Object;)V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_13} :catch_16
    .catchall {:try_start_0 .. :try_end_13} :catchall_14

    goto :goto_1a

    .line 256
    :catchall_14
    move-exception v0

    goto :goto_1f

    .line 253
    :catch_16
    move-exception v0

    .line 254
    .local v0, "e":Ljava/lang/Exception;
    :try_start_17
    invoke-virtual {p1, v0}, Lcom/tds/common/reactor/Subscriber;->onError(Ljava/lang/Throwable;)V
    :try_end_1a
    .catchall {:try_start_17 .. :try_end_1a} :catchall_14

    .line 256
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1a
    invoke-virtual {p1}, Lcom/tds/common/reactor/Subscriber;->onCompleted()V

    .line 257
    nop

    .line 258
    return-void

    .line 256
    :goto_1f
    invoke-virtual {p1}, Lcom/tds/common/reactor/Subscriber;->onCompleted()V

    .line 257
    throw v0
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .registers 2

    .line 248
    check-cast p1, Lcom/tds/common/reactor/Subscriber;

    invoke-virtual {p0, p1}, Lcom/tds/common/net/TdsApiClient$5;->call(Lcom/tds/common/reactor/Subscriber;)V

    return-void
.end method
