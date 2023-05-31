.class public abstract Lcom/mintegral/msdk/base/common/net/a/b;
.super Lcom/mintegral/msdk/base/common/net/d;
.source "CommonJSONArrayResponseHandler.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mintegral/msdk/base/common/net/d",
        "<",
        "Lorg/json/JSONArray;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/mintegral/msdk/base/common/net/d;-><init>()V

    .line 27
    return-void
.end method

.method private e(Lorg/apache/http/HttpEntity;)Lorg/json/JSONArray;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 42
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/mintegral/msdk/base/common/net/a/b;->d(Lorg/apache/http/HttpEntity;)Lorg/json/JSONArray;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_3} :catch_5

    move-result-object v0

    .line 46
    :goto_4
    return-object v0

    .line 43
    :catch_5
    move-exception v0

    .line 44
    const-string v1, "JSONArrayResponseHandler"

    invoke-static {v1, v0}, Lcom/mintegral/msdk/base/utils/g;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 45
    const-string v0, "JSONArrayResponseHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "wrong json format : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/mintegral/msdk/base/common/net/a/b;->c(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    const/4 v0, 0x0

    goto :goto_4
.end method


# virtual methods
.method public final synthetic b(Lorg/apache/http/HttpEntity;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lcom/mintegral/msdk/base/common/net/a/b;->e(Lorg/apache/http/HttpEntity;)Lorg/json/JSONArray;

    move-result-object v0

    return-object v0
.end method
