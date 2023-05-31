.class Lcom/JoyFramework/remote/b/d/d;
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
.field final synthetic a:Lcom/JoyFramework/remote/b/d/b$a;

.field final synthetic b:Lcom/JoyFramework/wight/Loading/af;

.field final synthetic c:Lcom/JoyFramework/remote/b/d/b;


# direct methods
.method constructor <init>(Lcom/JoyFramework/remote/b/d/b;Lcom/JoyFramework/remote/b/d/b$a;Lcom/JoyFramework/wight/Loading/af;)V
    .registers 4

    .prologue
    .line 575
    iput-object p1, p0, Lcom/JoyFramework/remote/b/d/d;->c:Lcom/JoyFramework/remote/b/d/b;

    iput-object p2, p0, Lcom/JoyFramework/remote/b/d/d;->a:Lcom/JoyFramework/remote/b/d/b$a;

    iput-object p3, p0, Lcom/JoyFramework/remote/b/d/d;->b:Lcom/JoyFramework/wight/Loading/af;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lretrofit2/Call;Ljava/lang/Throwable;)V
    .registers 6
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
    .line 606
    iget-object v0, p0, Lcom/JoyFramework/remote/b/d/d;->b:Lcom/JoyFramework/wight/Loading/af;

    if-eqz v0, :cond_9

    .line 607
    iget-object v0, p0, Lcom/JoyFramework/remote/b/d/d;->b:Lcom/JoyFramework/wight/Loading/af;

    invoke-virtual {v0}, Lcom/JoyFramework/wight/Loading/af;->dismiss()V

    .line 609
    :cond_9
    iget-object v0, p0, Lcom/JoyFramework/remote/b/d/d;->a:Lcom/JoyFramework/remote/b/d/b$a;

    if-eqz v0, :cond_29

    .line 610
    iget-object v0, p0, Lcom/JoyFramework/remote/b/d/d;->a:Lcom/JoyFramework/remote/b/d/b$a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u83b7\u53d6\u5206\u4eab\u56fe\u7247\u5931\u8d25,msg = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/JoyFramework/remote/b/d/b$a;->a(Ljava/lang/String;)V

    .line 612
    :cond_29
    invoke-interface {p1}, Lretrofit2/Call;->cancel()V

    .line 613
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
    .line 578
    invoke-virtual {p2}, Lretrofit2/Response;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_53

    .line 579
    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lokhttp3/ResponseBody;

    invoke-virtual {v0}, Lokhttp3/ResponseBody;->byteStream()Ljava/io/InputStream;

    move-result-object v0

    .line 580
    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 581
    if-eqz v0, :cond_32

    .line 582
    iget-object v1, p0, Lcom/JoyFramework/remote/b/d/d;->a:Lcom/JoyFramework/remote/b/d/b$a;

    if-eqz v1, :cond_1f

    .line 583
    iget-object v1, p0, Lcom/JoyFramework/remote/b/d/d;->a:Lcom/JoyFramework/remote/b/d/b$a;

    invoke-interface {v1, v0}, Lcom/JoyFramework/remote/b/d/b$a;->a(Landroid/graphics/Bitmap;)V

    .line 596
    :cond_1f
    :goto_1f
    iget-object v0, p0, Lcom/JoyFramework/remote/b/d/d;->b:Lcom/JoyFramework/wight/Loading/af;

    if-eqz v0, :cond_28

    .line 597
    iget-object v0, p0, Lcom/JoyFramework/remote/b/d/d;->b:Lcom/JoyFramework/wight/Loading/af;

    invoke-virtual {v0}, Lcom/JoyFramework/wight/Loading/af;->dismiss()V

    .line 599
    :cond_28
    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lokhttp3/ResponseBody;

    invoke-virtual {v0}, Lokhttp3/ResponseBody;->close()V

    .line 600
    return-void

    .line 586
    :cond_32
    iget-object v0, p0, Lcom/JoyFramework/remote/b/d/d;->a:Lcom/JoyFramework/remote/b/d/b$a;

    if-eqz v0, :cond_1f

    .line 587
    iget-object v0, p0, Lcom/JoyFramework/remote/b/d/d;->a:Lcom/JoyFramework/remote/b/d/b$a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u83b7\u53d6\u5206\u4eab\u56fe\u7247\u5931\u8d25,msg = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lretrofit2/Response;->message()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/JoyFramework/remote/b/d/b$a;->a(Ljava/lang/String;)V

    goto :goto_1f

    .line 591
    :cond_53
    iget-object v0, p0, Lcom/JoyFramework/remote/b/d/d;->a:Lcom/JoyFramework/remote/b/d/b$a;

    if-eqz v0, :cond_1f

    .line 592
    iget-object v0, p0, Lcom/JoyFramework/remote/b/d/d;->a:Lcom/JoyFramework/remote/b/d/b$a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u83b7\u53d6\u5206\u4eab\u56fe\u7247\u5931\u8d25,msg = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lretrofit2/Response;->message()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/JoyFramework/remote/b/d/b$a;->a(Ljava/lang/String;)V

    goto :goto_1f
.end method
