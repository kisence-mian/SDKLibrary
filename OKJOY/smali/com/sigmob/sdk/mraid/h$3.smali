.class Lcom/sigmob/sdk/mraid/h$3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/sigmob/sdk/mraid/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sigmob/sdk/mraid/h;
.end annotation


# instance fields
.field final synthetic a:Lcom/sigmob/sdk/mraid/h;


# direct methods
.method constructor <init>(Lcom/sigmob/sdk/mraid/h;)V
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/mraid/h$3;->a:Lcom/sigmob/sdk/mraid/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/h$3;->a:Lcom/sigmob/sdk/mraid/h;

    invoke-virtual {v0}, Lcom/sigmob/sdk/mraid/h;->j()V

    return-void
.end method

.method public a(Lcom/sigmob/sdk/base/models/SigmobError;)V
    .registers 3

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/h$3;->a:Lcom/sigmob/sdk/mraid/h;

    invoke-virtual {v0, p1}, Lcom/sigmob/sdk/mraid/h;->a(Lcom/sigmob/sdk/base/models/SigmobError;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/util/Map;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/h$3;->a:Lcom/sigmob/sdk/mraid/h;

    invoke-static {v0, p1, p2}, Lcom/sigmob/sdk/mraid/h;->a(Lcom/sigmob/sdk/mraid/h;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public a(Ljava/net/URI;)V
    .registers 4

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/h$3;->a:Lcom/sigmob/sdk/mraid/h;

    invoke-virtual {p1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/mraid/h;->a(Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/net/URI;Lcom/sigmob/sdk/videoAd/f;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/h$3;->a:Lcom/sigmob/sdk/mraid/h;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/sigmob/sdk/mraid/h;->a(Ljava/net/URI;Lcom/sigmob/sdk/videoAd/f;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/net/URI;Z)V
    .registers 3

    return-void
.end method

.method public a(Z)V
    .registers 3

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/h$3;->a:Lcom/sigmob/sdk/mraid/h;

    invoke-static {v0}, Lcom/sigmob/sdk/mraid/h;->d(Lcom/sigmob/sdk/mraid/h;)Lcom/sigmob/sdk/mraid/d;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sigmob/sdk/mraid/d;->a(Z)V

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/h$3;->a:Lcom/sigmob/sdk/mraid/h;

    invoke-static {v0}, Lcom/sigmob/sdk/mraid/h;->c(Lcom/sigmob/sdk/mraid/h;)Lcom/sigmob/sdk/mraid/d;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sigmob/sdk/mraid/d;->a(Z)V

    return-void
.end method

.method public a(ZLcom/sigmob/sdk/mraid/v;)V
    .registers 4

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/h$3;->a:Lcom/sigmob/sdk/mraid/h;

    invoke-virtual {v0, p1, p2}, Lcom/sigmob/sdk/mraid/h;->a(ZLcom/sigmob/sdk/mraid/v;)V

    return-void
.end method

.method public a(Landroid/webkit/ConsoleMessage;)Z
    .registers 3

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/h$3;->a:Lcom/sigmob/sdk/mraid/h;

    invoke-virtual {v0, p1}, Lcom/sigmob/sdk/mraid/h;->a(Landroid/webkit/ConsoleMessage;)Z

    move-result v0

    return v0
.end method

.method public a(Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .registers 4

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/h$3;->a:Lcom/sigmob/sdk/mraid/h;

    invoke-virtual {v0, p1, p2}, Lcom/sigmob/sdk/mraid/h;->a(Ljava/lang/String;Landroid/webkit/JsResult;)Z

    move-result v0

    return v0
.end method

.method public b()V
    .registers 1

    return-void
.end method

.method public b(Ljava/lang/String;Ljava/util/Map;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/h$3;->a:Lcom/sigmob/sdk/mraid/h;

    invoke-static {v0, p1, p2}, Lcom/sigmob/sdk/mraid/h;->b(Lcom/sigmob/sdk/mraid/h;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public b(Z)V
    .registers 3

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/h$3;->a:Lcom/sigmob/sdk/mraid/h;

    invoke-virtual {v0, p1}, Lcom/sigmob/sdk/mraid/h;->b(Z)V

    return-void
.end method

.method public c()V
    .registers 2

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/h$3;->a:Lcom/sigmob/sdk/mraid/h;

    invoke-virtual {v0}, Lcom/sigmob/sdk/mraid/h;->m()V

    return-void
.end method
