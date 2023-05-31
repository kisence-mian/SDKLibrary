.class public Lcom/bytedance/sdk/adnet/b/h;
.super Lcom/bytedance/sdk/adnet/b/g;
.source "JsonStringRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bytedance/sdk/adnet/b/g",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(ILjava/lang/String;Lorg/json/JSONObject;Lcom/bytedance/sdk/adnet/core/n$a;)V
    .registers 6
    .param p3    # Lorg/json/JSONObject;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Lcom/bytedance/sdk/adnet/core/n$a;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Lorg/json/JSONObject;",
            "Lcom/bytedance/sdk/adnet/core/n$a",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 26
    if-nez p3, :cond_7

    const/4 v0, 0x0

    :goto_3
    invoke-direct {p0, p1, p2, v0, p4}, Lcom/bytedance/sdk/adnet/b/g;-><init>(ILjava/lang/String;Ljava/lang/String;Lcom/bytedance/sdk/adnet/core/n$a;)V

    .line 27
    return-void

    .line 26
    :cond_7
    invoke-virtual {p3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3
.end method


# virtual methods
.method protected a(Lcom/bytedance/sdk/adnet/core/j;)Lcom/bytedance/sdk/adnet/core/n;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/adnet/core/j;",
            ")",
            "Lcom/bytedance/sdk/adnet/core/n",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 32
    :try_start_0
    new-instance v0, Ljava/lang/String;

    iget-object v1, p1, Lcom/bytedance/sdk/adnet/core/j;->b:[B

    iget-object v2, p1, Lcom/bytedance/sdk/adnet/core/j;->c:Ljava/util/Map;

    const-string v3, "utf-8"

    .line 33
    invoke-static {v2, v3}, Lcom/bytedance/sdk/adnet/d/c;->a(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 34
    invoke-static {p1}, Lcom/bytedance/sdk/adnet/d/c;->a(Lcom/bytedance/sdk/adnet/core/j;)Lcom/bytedance/sdk/adnet/face/a$a;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bytedance/sdk/adnet/core/n;->a(Ljava/lang/Object;Lcom/bytedance/sdk/adnet/face/a$a;)Lcom/bytedance/sdk/adnet/core/n;
    :try_end_16
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_16} :catch_18

    move-result-object v0

    .line 36
    :goto_17
    return-object v0

    .line 35
    :catch_18
    move-exception v0

    .line 36
    new-instance v1, Lcom/bytedance/sdk/adnet/err/e;

    invoke-direct {v1, v0}, Lcom/bytedance/sdk/adnet/err/e;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v1}, Lcom/bytedance/sdk/adnet/core/n;->a(Lcom/bytedance/sdk/adnet/err/VAdError;)Lcom/bytedance/sdk/adnet/core/n;

    move-result-object v0

    goto :goto_17
.end method
