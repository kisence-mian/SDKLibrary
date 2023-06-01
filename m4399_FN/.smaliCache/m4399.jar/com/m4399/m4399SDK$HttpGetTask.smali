.class Lcom/m4399/m4399SDK$HttpGetTask;
.super Landroid/os/AsyncTask;
.source "m4399SDK.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/m4399/m4399SDK;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HttpGetTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field callback:Lcom/m4399/m4399SDK$HttpCallback;

.field final synthetic this$0:Lcom/m4399/m4399SDK;

.field public user:Lcom/ssjj/fnsdk/core/entity/SsjjFNUser;


# direct methods
.method private constructor <init>(Lcom/m4399/m4399SDK;)V
    .registers 2

    .line 255
    iput-object p1, p0, Lcom/m4399/m4399SDK$HttpGetTask;->this$0:Lcom/m4399/m4399SDK;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/m4399/m4399SDK;Lcom/m4399/m4399SDK$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/m4399/m4399SDK;
    .param p2, "x1"    # Lcom/m4399/m4399SDK$1;

    .line 255
    invoke-direct {p0, p1}, Lcom/m4399/m4399SDK$HttpGetTask;-><init>(Lcom/m4399/m4399SDK;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 255
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/m4399/m4399SDK$HttpGetTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/String;
    .registers 16
    .param p1, "params"    # [Ljava/lang/Void;

    .line 266
    const-string v0, ""

    const-string v1, "UTF-8"

    :try_start_4
    iget-object v2, p0, Lcom/m4399/m4399SDK$HttpGetTask;->user:Lcom/ssjj/fnsdk/core/entity/SsjjFNUser;

    iget-object v2, v2, Lcom/ssjj/fnsdk/core/entity/SsjjFNUser;->name:Ljava/lang/String;

    invoke-static {v2, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 267
    .local v2, "encodedName":Ljava/lang/String;
    iget-object v3, p0, Lcom/m4399/m4399SDK$HttpGetTask;->user:Lcom/ssjj/fnsdk/core/entity/SsjjFNUser;

    iget-object v3, v3, Lcom/ssjj/fnsdk/core/entity/SsjjFNUser;->uid:Ljava/lang/String;

    invoke-static {v3, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 268
    .local v3, "encodedUid":Ljava/lang/String;
    iget-object v4, p0, Lcom/m4399/m4399SDK$HttpGetTask;->user:Lcom/ssjj/fnsdk/core/entity/SsjjFNUser;

    iget-object v4, v4, Lcom/ssjj/fnsdk/core/entity/SsjjFNUser;->ext:Ljava/lang/String;

    invoke-static {v4, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 270
    .local v1, "encodedExt":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "http://fnapi.4399sy.com/sdk/api/login.php?name="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "&uid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "&ext="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 272
    .local v4, "urlString":Ljava/lang/String;
    iget-object v5, p0, Lcom/m4399/m4399SDK$HttpGetTask;->this$0:Lcom/m4399/m4399SDK;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Send URL "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/m4399/m4399SDK;->SendLog(Ljava/lang/String;)V

    .line 274
    new-instance v5, Ljava/net/URL;

    invoke-direct {v5, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 275
    .local v5, "url":Ljava/net/URL;
    invoke-virtual {v5}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v6

    check-cast v6, Ljava/net/HttpURLConnection;

    .line 276
    .local v6, "con":Ljava/net/HttpURLConnection;
    const-string v7, "GET"

    invoke-virtual {v6, v7}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 278
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v7

    .line 279
    .local v7, "status":I
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v8

    const/16 v9, 0xc8

    if-ne v8, v9, :cond_a9

    .line 280
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v8

    .line 281
    .local v8, "in":Ljava/io/InputStream;
    new-instance v9, Ljava/io/BufferedReader;

    new-instance v10, Ljava/io/InputStreamReader;

    invoke-direct {v10, v8}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v9, v10}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 283
    .local v9, "reader":Ljava/io/BufferedReader;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 285
    .local v10, "response":Ljava/lang/StringBuilder;
    :goto_8a
    invoke-virtual {v9}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v11

    move-object v12, v11

    .local v12, "line":Ljava/lang/String;
    if-eqz v11, :cond_95

    .line 286
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_8a

    .line 289
    :cond_95
    invoke-virtual {v9}, Ljava/io/BufferedReader;->close()V

    .line 290
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 292
    iget-object v11, p0, Lcom/m4399/m4399SDK$HttpGetTask;->callback:Lcom/m4399/m4399SDK$HttpCallback;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v11, v13}, Lcom/m4399/m4399SDK$HttpCallback;->HttpCallbackMethod(Ljava/lang/String;)V

    .line 294
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 296
    .end local v8    # "in":Ljava/io/InputStream;
    .end local v9    # "reader":Ljava/io/BufferedReader;
    .end local v10    # "response":Ljava/lang/StringBuilder;
    .end local v12    # "line":Ljava/lang/String;
    :cond_a9
    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Request failed: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_c5
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_c5} :catch_c6

    .line 299
    return-object v0

    .line 301
    .end local v1    # "encodedExt":Ljava/lang/String;
    .end local v2    # "encodedName":Ljava/lang/String;
    .end local v3    # "encodedUid":Ljava/lang/String;
    .end local v4    # "urlString":Ljava/lang/String;
    .end local v5    # "url":Ljava/net/URL;
    .end local v6    # "con":Ljava/net/HttpURLConnection;
    .end local v7    # "status":I
    :catch_c6
    move-exception v1

    .line 303
    .local v1, "e":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/m4399/m4399SDK$HttpGetTask;->this$0:Lcom/m4399/m4399SDK;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "HttpRequest error "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lcom/m4399/m4399SDK;->SendError(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 304
    return-object v0
.end method
