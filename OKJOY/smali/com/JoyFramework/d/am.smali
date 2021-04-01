.class Lcom/JoyFramework/d/am;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lretrofit2/Callback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lretrofit2/Callback",
        "<",
        "Lokhttp3/ResponseBody;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/JoyFramework/d/al;


# direct methods
.method constructor <init>(Lcom/JoyFramework/d/al;)V
    .registers 2

    .prologue
    .line 241
    iput-object p1, p0, Lcom/JoyFramework/d/am;->a:Lcom/JoyFramework/d/al;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lretrofit2/Call;Ljava/lang/Throwable;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call",
            "<",
            "Lokhttp3/ResponseBody;",
            ">;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .prologue
    .line 263
    if-eqz p1, :cond_5

    .line 264
    :try_start_2
    invoke-interface {p1}, Lretrofit2/Call;->cancel()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_5} :catch_6

    .line 269
    :cond_5
    :goto_5
    return-void

    .line 266
    :catch_6
    move-exception v0

    .line 267
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_5
.end method

.method public onResponse(Lretrofit2/Call;Lretrofit2/Response;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call",
            "<",
            "Lokhttp3/ResponseBody;",
            ">;",
            "Lretrofit2/Response",
            "<",
            "Lokhttp3/ResponseBody;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 245
    :try_start_0
    const-string v0, "DownLoadFileUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onResponse: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/JoyFramework/d/am;->a:Lcom/JoyFramework/d/al;

    iget-object v2, v2, Lcom/JoyFramework/d/al;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", success !!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    if-eqz p2, :cond_5a

    .line 247
    invoke-virtual {p2}, Lretrofit2/Response;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_4b

    .line 248
    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lokhttp3/ResponseBody;

    invoke-virtual {v0}, Lokhttp3/ResponseBody;->byteStream()Ljava/io/InputStream;

    move-result-object v1

    .line 249
    iget-object v0, p0, Lcom/JoyFramework/d/am;->a:Lcom/JoyFramework/d/al;

    iget-object v0, v0, Lcom/JoyFramework/d/al;->f:Lcom/JoyFramework/d/aj;

    iget-object v2, p0, Lcom/JoyFramework/d/am;->a:Lcom/JoyFramework/d/al;

    iget-object v2, v2, Lcom/JoyFramework/d/al;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/JoyFramework/d/am;->a:Lcom/JoyFramework/d/al;

    iget-object v3, v3, Lcom/JoyFramework/d/al;->c:Ljava/lang/String;

    iget-object v4, p0, Lcom/JoyFramework/d/am;->a:Lcom/JoyFramework/d/al;

    iget v4, v4, Lcom/JoyFramework/d/al;->d:I

    iget-object v5, p0, Lcom/JoyFramework/d/am;->a:Lcom/JoyFramework/d/al;

    iget-object v5, v5, Lcom/JoyFramework/d/al;->e:Lcom/JoyFramework/d/aj$a;

    invoke-static/range {v0 .. v5}, Lcom/JoyFramework/d/aj;->a(Lcom/JoyFramework/d/aj;Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;ILcom/JoyFramework/d/aj$a;)V

    .line 251
    :cond_4b
    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_5a

    .line 252
    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lokhttp3/ResponseBody;

    invoke-virtual {v0}, Lokhttp3/ResponseBody;->close()V
    :try_end_5a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5a} :catch_5b

    .line 258
    :cond_5a
    :goto_5a
    return-void

    .line 255
    :catch_5b
    move-exception v0

    .line 256
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_5a
.end method
