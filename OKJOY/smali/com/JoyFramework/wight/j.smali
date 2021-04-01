.class Lcom/JoyFramework/wight/j;
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

.field final synthetic b:Lcom/JoyFramework/wight/i;


# direct methods
.method constructor <init>(Lcom/JoyFramework/wight/i;Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 168
    iput-object p1, p0, Lcom/JoyFramework/wight/j;->b:Lcom/JoyFramework/wight/i;

    iput-object p2, p0, Lcom/JoyFramework/wight/j;->a:Landroid/content/Context;

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
    .line 185
    const-string v0, "RetrofitUtil -> \u4e0b\u8f7dapk\u6587\u4ef6\u5931\u8d25\u3002"

    invoke-static {v0}, Lcom/JoyFramework/d/aq;->c(Ljava/lang/String;)V

    .line 186
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
    .line 171
    invoke-virtual {p2}, Lretrofit2/Response;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 172
    iget-object v1, p0, Lcom/JoyFramework/wight/j;->b:Lcom/JoyFramework/wight/i;

    iget-object v2, p0, Lcom/JoyFramework/wight/j;->a:Landroid/content/Context;

    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lokhttp3/ResponseBody;

    invoke-virtual {v1, v2, v0}, Lcom/JoyFramework/wight/i;->a(Landroid/content/Context;Lokhttp3/ResponseBody;)Z

    move-result v0

    .line 173
    if-eqz v0, :cond_1f

    .line 175
    iget-object v0, p0, Lcom/JoyFramework/wight/j;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/JoyFramework/d/bi;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 176
    invoke-static {v0}, Lcom/JoyFramework/b/b;->a(Ljava/lang/String;)V

    .line 181
    :cond_1f
    :goto_1f
    return-void

    .line 179
    :cond_20
    const-string v0, "RetrofitUtil -> \u4e0b\u8f7dapk\u6587\u4ef6\u5931\u8d25 ,onResponse is failed!"

    invoke-static {v0}, Lcom/JoyFramework/d/aq;->c(Ljava/lang/String;)V

    goto :goto_1f
.end method
