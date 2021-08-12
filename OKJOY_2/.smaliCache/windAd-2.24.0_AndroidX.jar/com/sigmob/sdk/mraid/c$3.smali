.class Lcom/sigmob/sdk/mraid/c$3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/sigmob/sdk/mraid/a$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sigmob/sdk/mraid/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/sigmob/sdk/mraid/c;


# direct methods
.method constructor <init>(Lcom/sigmob/sdk/mraid/c;)V
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/mraid/c$3;->a:Lcom/sigmob/sdk/mraid/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/c$3;->a:Lcom/sigmob/sdk/mraid/c;

    invoke-virtual {v0}, Lcom/sigmob/sdk/mraid/c;->j()V

    return-void
.end method

.method public a(Lcom/sigmob/sdk/common/models/SigmobError;)V
    .registers 3

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/c$3;->a:Lcom/sigmob/sdk/mraid/c;

    invoke-virtual {v0, p1}, Lcom/sigmob/sdk/mraid/c;->a(Lcom/sigmob/sdk/common/models/SigmobError;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/util/Map;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/c$3;->a:Lcom/sigmob/sdk/mraid/c;

    invoke-static {v0, p1, p2}, Lcom/sigmob/sdk/mraid/c;->a(Lcom/sigmob/sdk/mraid/c;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public a(Ljava/net/URI;)V
    .registers 3

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/c$3;->a:Lcom/sigmob/sdk/mraid/c;

    invoke-virtual {p1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/sigmob/sdk/mraid/c;->a(Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/net/URI;Lcom/sigmob/sdk/videoAd/f;Ljava/lang/String;)V
    .registers 5

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/c$3;->a:Lcom/sigmob/sdk/mraid/c;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sigmob/sdk/mraid/c;->a(Ljava/net/URI;Lcom/sigmob/sdk/videoAd/f;Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/net/URI;Z)V
    .registers 3

    return-void
.end method

.method public a(Z)V
    .registers 3

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/c$3;->a:Lcom/sigmob/sdk/mraid/c;

    invoke-static {v0}, Lcom/sigmob/sdk/mraid/c;->d(Lcom/sigmob/sdk/mraid/c;)Lcom/sigmob/sdk/mraid/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sigmob/sdk/mraid/a;->a(Z)V

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/c$3;->a:Lcom/sigmob/sdk/mraid/c;

    invoke-static {v0}, Lcom/sigmob/sdk/mraid/c;->c(Lcom/sigmob/sdk/mraid/c;)Lcom/sigmob/sdk/mraid/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sigmob/sdk/mraid/a;->a(Z)V

    return-void
.end method

.method public a(ZLcom/sigmob/sdk/mraid/g;)V
    .registers 4

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/c$3;->a:Lcom/sigmob/sdk/mraid/c;

    invoke-virtual {v0, p1, p2}, Lcom/sigmob/sdk/mraid/c;->a(ZLcom/sigmob/sdk/mraid/g;)V

    return-void
.end method

.method public a(Landroid/webkit/ConsoleMessage;)Z
    .registers 3

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/c$3;->a:Lcom/sigmob/sdk/mraid/c;

    invoke-virtual {v0, p1}, Lcom/sigmob/sdk/mraid/c;->a(Landroid/webkit/ConsoleMessage;)Z

    move-result p1

    return p1
.end method

.method public a(Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .registers 4

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/c$3;->a:Lcom/sigmob/sdk/mraid/c;

    invoke-virtual {v0, p1, p2}, Lcom/sigmob/sdk/mraid/c;->a(Ljava/lang/String;Landroid/webkit/JsResult;)Z

    move-result p1

    return p1
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
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/c$3;->a:Lcom/sigmob/sdk/mraid/c;

    invoke-static {v0, p1, p2}, Lcom/sigmob/sdk/mraid/c;->b(Lcom/sigmob/sdk/mraid/c;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public b(Z)V
    .registers 3

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/c$3;->a:Lcom/sigmob/sdk/mraid/c;

    invoke-virtual {v0, p1}, Lcom/sigmob/sdk/mraid/c;->b(Z)V

    return-void
.end method

.method public c()V
    .registers 2

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/c$3;->a:Lcom/sigmob/sdk/mraid/c;

    invoke-virtual {v0}, Lcom/sigmob/sdk/mraid/c;->l()V

    return-void
.end method
