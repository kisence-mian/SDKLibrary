.class public interface abstract Lcom/qq/e/comm/net/rr/Request;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qq/e/comm/net/rr/Request$Method;
    }
.end annotation


# virtual methods
.method public abstract addHeader(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract addQuery(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract getConnectionTimeOut()I
.end method

.method public abstract getHeaders()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getMethod()Lcom/qq/e/comm/net/rr/Request$Method;
.end method

.method public abstract getPostData()[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract getPriority()I
.end method

.method public abstract getQuerys()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSocketTimeOut()I
.end method

.method public abstract getUrl()Ljava/lang/String;
.end method

.method public abstract getUrlWithParas()Ljava/lang/String;
.end method

.method public abstract initResponse(Ljava/net/HttpURLConnection;)Lcom/qq/e/comm/net/rr/Response;
.end method

.method public abstract isAutoClose()Z
.end method

.method public abstract setConnectionTimeOut(I)V
.end method

.method public abstract setSocketTimeOut(I)V
.end method
