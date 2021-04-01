.class public interface abstract Lcom/kwad/sdk/export/proxy/AdHttpProxy;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Response:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract doGet(Ljava/lang/String;Ljava/util/Map;)Lcom/kwad/sdk/c/g/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/kwad/sdk/c/g/a/a;"
        }
    .end annotation
.end method

.method public abstract doPost(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)Lcom/kwad/sdk/c/g/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/kwad/sdk/c/g/a/a;"
        }
    .end annotation
.end method

.method public abstract doPost(Ljava/lang/String;Ljava/util/Map;Lorg/json/JSONObject;)Lcom/kwad/sdk/c/g/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lorg/json/JSONObject;",
            ")",
            "Lcom/kwad/sdk/c/g/a/a;"
        }
    .end annotation
.end method

.method public abstract parseResponse(Ljava/lang/Object;)Lcom/kwad/sdk/c/g/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResponse;)",
            "Lcom/kwad/sdk/c/g/a/a;"
        }
    .end annotation
.end method
