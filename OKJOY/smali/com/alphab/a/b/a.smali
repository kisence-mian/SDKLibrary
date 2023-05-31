.class public abstract Lcom/alphab/a/b/a;
.super Lcom/mintegral/msdk/base/common/net/d;
.source "AlphabJSONObjectHandler.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mintegral/msdk/base/common/net/d",
        "<",
        "Lorg/json/JSONObject;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/mintegral/msdk/base/common/net/d;-><init>()V

    .line 32
    return-void
.end method

.method private e(Lorg/apache/http/HttpEntity;)Lorg/json/JSONObject;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 48
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/alphab/a/b/a;->a(Lorg/apache/http/HttpEntity;)Lorg/json/JSONObject;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_3} :catch_5

    move-result-object v0

    .line 51
    :goto_4
    return-object v0

    .line 49
    :catch_5
    move-exception v0

    .line 50
    const-string v1, "JSONObjectResponseHandler"

    invoke-static {v1, v0}, Lcom/mintegral/msdk/base/utils/g;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 51
    const/4 v0, 0x0

    goto :goto_4
.end method


# virtual methods
.method protected final a(Lorg/apache/http/HttpEntity;)Lorg/json/JSONObject;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/ParseException;,
            Lorg/json/JSONException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 66
    const-string v2, ""

    .line 68
    :try_start_3
    invoke-virtual {p0, p1}, Lcom/alphab/a/b/a;->c(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v0

    .line 69
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_14

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    if-gt v3, v4, :cond_16

    :cond_14
    move-object v0, v1

    .line 83
    :goto_15
    return-object v0

    .line 72
    :cond_16
    invoke-static {v0}, Lcom/alphab/a/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 73
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_1f} :catch_20
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_1f} :catch_3a

    goto :goto_15

    .line 75
    :catch_20
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 76
    const-string v0, "JSONObjectResponseHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "wrong json  : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/mintegral/msdk/base/utils/g;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    .line 77
    goto :goto_15

    .line 80
    :catch_3a
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 81
    const-string v0, "JSONObjectResponseHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "wrong json : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/mintegral/msdk/base/utils/g;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    .line 83
    goto :goto_15
.end method

.method public final synthetic b(Lorg/apache/http/HttpEntity;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/alphab/a/b/a;->e(Lorg/apache/http/HttpEntity;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method
