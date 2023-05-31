.class public Lcom/bytedance/sdk/adnet/b/f;
.super Lcom/bytedance/sdk/adnet/b/g;
.source "JsonObjectRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bytedance/sdk/adnet/b/g",
        "<",
        "Lorg/json/JSONObject;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Lcom/bytedance/sdk/adnet/core/n$a;)V
    .registers 5
    .param p3    # Ljava/lang/String;
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
            "Ljava/lang/String;",
            "Lcom/bytedance/sdk/adnet/core/n$a",
            "<",
            "Lorg/json/JSONObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 64
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/bytedance/sdk/adnet/b/g;-><init>(ILjava/lang/String;Ljava/lang/String;Lcom/bytedance/sdk/adnet/core/n$a;)V

    .line 65
    return-void
.end method

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
            "Lorg/json/JSONObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 54
    if-nez p3, :cond_7

    const/4 v0, 0x0

    :goto_3
    invoke-direct {p0, p1, p2, v0, p4}, Lcom/bytedance/sdk/adnet/b/f;-><init>(ILjava/lang/String;Ljava/lang/String;Lcom/bytedance/sdk/adnet/core/n$a;)V

    .line 57
    return-void

    .line 55
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
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 87
    :try_start_0
    new-instance v0, Ljava/lang/String;

    iget-object v1, p1, Lcom/bytedance/sdk/adnet/core/j;->b:[B

    iget-object v2, p1, Lcom/bytedance/sdk/adnet/core/j;->c:Ljava/util/Map;

    const-string v3, "utf-8"

    .line 90
    invoke-static {v2, v3}, Lcom/bytedance/sdk/adnet/d/c;->a(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 91
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 92
    invoke-static {p1}, Lcom/bytedance/sdk/adnet/d/c;->a(Lcom/bytedance/sdk/adnet/core/j;)Lcom/bytedance/sdk/adnet/face/a$a;

    move-result-object v0

    .line 91
    invoke-static {v1, v0}, Lcom/bytedance/sdk/adnet/core/n;->a(Ljava/lang/Object;Lcom/bytedance/sdk/adnet/face/a$a;)Lcom/bytedance/sdk/adnet/core/n;
    :try_end_1b
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_1b} :catch_1d
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_1b} :catch_28

    move-result-object v0

    .line 96
    :goto_1c
    return-object v0

    .line 93
    :catch_1d
    move-exception v0

    .line 94
    new-instance v1, Lcom/bytedance/sdk/adnet/err/e;

    invoke-direct {v1, v0}, Lcom/bytedance/sdk/adnet/err/e;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v1}, Lcom/bytedance/sdk/adnet/core/n;->a(Lcom/bytedance/sdk/adnet/err/VAdError;)Lcom/bytedance/sdk/adnet/core/n;

    move-result-object v0

    goto :goto_1c

    .line 95
    :catch_28
    move-exception v0

    .line 96
    new-instance v1, Lcom/bytedance/sdk/adnet/err/e;

    invoke-direct {v1, v0}, Lcom/bytedance/sdk/adnet/err/e;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v1}, Lcom/bytedance/sdk/adnet/core/n;->a(Lcom/bytedance/sdk/adnet/err/VAdError;)Lcom/bytedance/sdk/adnet/core/n;

    move-result-object v0

    goto :goto_1c
.end method
