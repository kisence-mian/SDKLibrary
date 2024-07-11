.class final Lcom/kwad/sdk/core/g/c$2;
.super Lcom/kwad/sdk/core/network/j;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kwad/sdk/core/g/c;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/kwad/sdk/core/network/j<",
        "Lcom/kwad/sdk/core/g/b;",
        "Lcom/kwad/sdk/core/response/model/SdkConfigData;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/kwad/sdk/core/network/j;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/kwad/sdk/core/g/b;)V
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onStartRequest request url = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/kwad/sdk/core/g/b;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ConfigRequestManager"

    invoke-static {v1, v0}, Lcom/kwad/sdk/core/d/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0, p1}, Lcom/kwad/sdk/core/network/j;->a(Lcom/kwad/sdk/core/network/g;)V

    return-void
.end method

.method public a(Lcom/kwad/sdk/core/g/b;ILjava/lang/String;)V
    .registers 4

    invoke-super {p0, p1, p2, p3}, Lcom/kwad/sdk/core/network/j;->a(Lcom/kwad/sdk/core/network/g;ILjava/lang/String;)V

    const-string p1, "ConfigRequestManager"

    const-string p2, "onError"

    invoke-static {p1, p2}, Lcom/kwad/sdk/core/d/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(Lcom/kwad/sdk/core/g/b;Lcom/kwad/sdk/core/response/model/SdkConfigData;)V
    .registers 3

    invoke-static {}, Lcom/kwad/sdk/core/g/c;->b()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/kwad/sdk/core/config/b;->a(Landroid/content/Context;)Z

    invoke-static {}, Lcom/kwad/sdk/core/g/c;->b()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/kwad/sdk/core/config/c;->a(Landroid/content/Context;Lcom/kwad/sdk/core/response/model/SdkConfigData;)V

    invoke-static {}, Lcom/kwad/sdk/core/g/c;->c()Lcom/kwad/sdk/core/g/c$a;

    move-result-object p1

    if-eqz p1, :cond_1b

    invoke-static {}, Lcom/kwad/sdk/core/g/c;->c()Lcom/kwad/sdk/core/g/c$a;

    move-result-object p1

    invoke-interface {p1, p2}, Lcom/kwad/sdk/core/g/c$a;->a(Lcom/kwad/sdk/core/response/model/SdkConfigData;)V

    :cond_1b
    return-void
.end method

.method public bridge synthetic a(Lcom/kwad/sdk/core/network/g;)V
    .registers 2

    check-cast p1, Lcom/kwad/sdk/core/g/b;

    invoke-virtual {p0, p1}, Lcom/kwad/sdk/core/g/c$2;->a(Lcom/kwad/sdk/core/g/b;)V

    return-void
.end method

.method public bridge synthetic a(Lcom/kwad/sdk/core/network/g;ILjava/lang/String;)V
    .registers 4

    check-cast p1, Lcom/kwad/sdk/core/g/b;

    invoke-virtual {p0, p1, p2, p3}, Lcom/kwad/sdk/core/g/c$2;->a(Lcom/kwad/sdk/core/g/b;ILjava/lang/String;)V

    return-void
.end method

.method public bridge synthetic a(Lcom/kwad/sdk/core/network/g;Lcom/kwad/sdk/core/network/BaseResultData;)V
    .registers 3

    check-cast p1, Lcom/kwad/sdk/core/g/b;

    check-cast p2, Lcom/kwad/sdk/core/response/model/SdkConfigData;

    invoke-virtual {p0, p1, p2}, Lcom/kwad/sdk/core/g/c$2;->a(Lcom/kwad/sdk/core/g/b;Lcom/kwad/sdk/core/response/model/SdkConfigData;)V

    return-void
.end method
