.class Lcom/JoyFramework/remote/b/d/c;
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
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:I

.field final synthetic c:Lcom/JoyFramework/remote/b/d/b;


# direct methods
.method constructor <init>(Lcom/JoyFramework/remote/b/d/b;Landroid/content/Context;I)V
    .registers 4

    .prologue
    .line 420
    iput-object p1, p0, Lcom/JoyFramework/remote/b/d/c;->c:Lcom/JoyFramework/remote/b/d/b;

    iput-object p2, p0, Lcom/JoyFramework/remote/b/d/c;->a:Landroid/content/Context;

    iput p3, p0, Lcom/JoyFramework/remote/b/d/c;->b:I

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
    .line 438
    const-string v0, "RetrofitUtil -> \u4e0b\u8f7d\u8865\u4e01\u6587\u4ef6\u5931\u8d25\u3002"

    invoke-static {v0}, Lcom/JoyFramework/d/aq;->c(Ljava/lang/String;)V

    .line 439
    invoke-interface {p1}, Lretrofit2/Call;->cancel()V

    .line 440
    return-void
.end method

.method public onResponse(Lretrofit2/Call;Lretrofit2/Response;)V
    .registers 6
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
    .line 423
    invoke-virtual {p2}, Lretrofit2/Response;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_29

    .line 424
    iget-object v1, p0, Lcom/JoyFramework/remote/b/d/c;->a:Landroid/content/Context;

    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lokhttp3/ResponseBody;

    iget v2, p0, Lcom/JoyFramework/remote/b/d/c;->b:I

    invoke-static {v1, v0, v2}, Lcom/JoyFramework/d/bi;->a(Landroid/content/Context;Lokhttp3/ResponseBody;I)Z

    move-result v0

    .line 425
    if-eqz v0, :cond_1f

    .line 427
    iget-object v0, p0, Lcom/JoyFramework/remote/b/d/c;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/JoyFramework/d/bi;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 428
    invoke-static {v0}, Lcom/JoyFramework/b/b;->a(Ljava/lang/String;)V

    .line 433
    :cond_1f
    :goto_1f
    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lokhttp3/ResponseBody;

    invoke-virtual {v0}, Lokhttp3/ResponseBody;->close()V

    .line 434
    return-void

    .line 431
    :cond_29
    const-string v0, "RetrofitUtil -> \u4e0b\u8f7d\u8865\u4e01\u6587\u4ef6\u5931\u8d25 ,onResponse is failed!"

    invoke-static {v0}, Lcom/JoyFramework/d/aq;->c(Ljava/lang/String;)V

    goto :goto_1f
.end method
