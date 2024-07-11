.class public abstract Lcom/kwad/sdk/core/network/i;
.super Lcom/kwad/sdk/core/network/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R::",
        "Lcom/kwad/sdk/core/network/g;",
        "T:",
        "Lcom/kwad/sdk/core/network/BaseResultData;",
        ">",
        "Lcom/kwad/sdk/core/network/a<",
        "TR;>;"
    }
.end annotation


# instance fields
.field private a:Lcom/kwad/sdk/core/network/h;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/kwad/sdk/core/network/a;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kwad/sdk/core/network/i;->a:Lcom/kwad/sdk/core/network/h;

    return-void
.end method


# virtual methods
.method protected a(Lcom/kwad/sdk/core/network/g;Lcom/kwad/sdk/core/network/c;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;",
            "Lcom/kwad/sdk/core/network/c;",
            ")V"
        }
    .end annotation

    if-nez p2, :cond_19

    const-string p2, "Networking"

    const-string v0, "request responseBase is null"

    invoke-static {p2, v0}, Lcom/kwad/sdk/core/d/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/kwad/sdk/core/network/i;->a:Lcom/kwad/sdk/core/network/h;

    if-eqz p2, :cond_18

    sget-object v0, Lcom/kwad/sdk/core/network/f;->a:Lcom/kwad/sdk/core/network/f;

    iget v0, v0, Lcom/kwad/sdk/core/network/f;->k:I

    sget-object v1, Lcom/kwad/sdk/core/network/f;->a:Lcom/kwad/sdk/core/network/f;

    iget-object v1, v1, Lcom/kwad/sdk/core/network/f;->l:Ljava/lang/String;

    invoke-interface {p2, p1, v0, v1}, Lcom/kwad/sdk/core/network/h;->a(Lcom/kwad/sdk/core/network/g;ILjava/lang/String;)V

    :cond_18
    return-void

    :cond_19
    iget-object v0, p2, Lcom/kwad/sdk/core/network/c;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_84

    iget v0, p2, Lcom/kwad/sdk/core/network/c;->a:I

    const/16 v1, 0xc8

    if-eq v0, v1, :cond_28

    goto :goto_84

    :cond_28
    :try_start_28
    iget-object p2, p2, Lcom/kwad/sdk/core/network/c;->b:Ljava/lang/String;

    invoke-virtual {p0, p2}, Lcom/kwad/sdk/core/network/i;->b(Ljava/lang/String;)Lcom/kwad/sdk/core/network/BaseResultData;

    move-result-object p2
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_2e} :catch_70

    if-nez p2, :cond_40

    iget-object p2, p0, Lcom/kwad/sdk/core/network/i;->a:Lcom/kwad/sdk/core/network/h;

    if-eqz p2, :cond_3f

    sget-object v0, Lcom/kwad/sdk/core/network/f;->b:Lcom/kwad/sdk/core/network/f;

    iget v0, v0, Lcom/kwad/sdk/core/network/f;->k:I

    sget-object v1, Lcom/kwad/sdk/core/network/f;->b:Lcom/kwad/sdk/core/network/f;

    iget-object v1, v1, Lcom/kwad/sdk/core/network/f;->l:Ljava/lang/String;

    invoke-interface {p2, p1, v0, v1}, Lcom/kwad/sdk/core/network/h;->a(Lcom/kwad/sdk/core/network/g;ILjava/lang/String;)V

    :cond_3f
    return-void

    :cond_40
    invoke-virtual {p2}, Lcom/kwad/sdk/core/network/BaseResultData;->isResultOk()Z

    move-result v0

    if-nez v0, :cond_52

    iget-object v0, p0, Lcom/kwad/sdk/core/network/i;->a:Lcom/kwad/sdk/core/network/h;

    if-eqz v0, :cond_51

    iget v1, p2, Lcom/kwad/sdk/core/network/BaseResultData;->result:I

    iget-object p2, p2, Lcom/kwad/sdk/core/network/BaseResultData;->errorMsg:Ljava/lang/String;

    invoke-interface {v0, p1, v1, p2}, Lcom/kwad/sdk/core/network/h;->a(Lcom/kwad/sdk/core/network/g;ILjava/lang/String;)V

    :cond_51
    return-void

    :cond_52
    invoke-virtual {p2}, Lcom/kwad/sdk/core/network/BaseResultData;->isDataEmpty()Z

    move-result v0

    if-eqz v0, :cond_68

    iget-object p2, p0, Lcom/kwad/sdk/core/network/i;->a:Lcom/kwad/sdk/core/network/h;

    if-eqz p2, :cond_6f

    sget-object v0, Lcom/kwad/sdk/core/network/f;->c:Lcom/kwad/sdk/core/network/f;

    iget v0, v0, Lcom/kwad/sdk/core/network/f;->k:I

    sget-object v1, Lcom/kwad/sdk/core/network/f;->c:Lcom/kwad/sdk/core/network/f;

    iget-object v1, v1, Lcom/kwad/sdk/core/network/f;->l:Ljava/lang/String;

    invoke-interface {p2, p1, v0, v1}, Lcom/kwad/sdk/core/network/h;->a(Lcom/kwad/sdk/core/network/g;ILjava/lang/String;)V

    goto :goto_6f

    :cond_68
    iget-object v0, p0, Lcom/kwad/sdk/core/network/i;->a:Lcom/kwad/sdk/core/network/h;

    if-eqz v0, :cond_6f

    invoke-interface {v0, p1, p2}, Lcom/kwad/sdk/core/network/h;->a(Lcom/kwad/sdk/core/network/g;Lcom/kwad/sdk/core/network/BaseResultData;)V

    :cond_6f
    :goto_6f
    return-void

    :catch_70
    move-exception p2

    iget-object v0, p0, Lcom/kwad/sdk/core/network/i;->a:Lcom/kwad/sdk/core/network/h;

    if-eqz v0, :cond_80

    sget-object v1, Lcom/kwad/sdk/core/network/f;->b:Lcom/kwad/sdk/core/network/f;

    iget v1, v1, Lcom/kwad/sdk/core/network/f;->k:I

    sget-object v2, Lcom/kwad/sdk/core/network/f;->b:Lcom/kwad/sdk/core/network/f;

    iget-object v2, v2, Lcom/kwad/sdk/core/network/f;->l:Ljava/lang/String;

    invoke-interface {v0, p1, v1, v2}, Lcom/kwad/sdk/core/network/h;->a(Lcom/kwad/sdk/core/network/g;ILjava/lang/String;)V

    :cond_80
    invoke-static {p2}, Lcom/kwad/sdk/core/d/a;->a(Ljava/lang/Throwable;)V

    return-void

    :cond_84
    :goto_84
    iget-object v0, p0, Lcom/kwad/sdk/core/network/i;->a:Lcom/kwad/sdk/core/network/h;

    if-eqz v0, :cond_8f

    iget p2, p2, Lcom/kwad/sdk/core/network/c;->a:I

    const-string v1, "\u7f51\u7edc\u9519\u8bef"

    invoke-interface {v0, p1, p2, v1}, Lcom/kwad/sdk/core/network/h;->a(Lcom/kwad/sdk/core/network/g;ILjava/lang/String;)V

    :cond_8f
    return-void
.end method

.method public a(Lcom/kwad/sdk/core/network/h;)V
    .registers 2

    iput-object p1, p0, Lcom/kwad/sdk/core/network/i;->a:Lcom/kwad/sdk/core/network/h;

    invoke-virtual {p0}, Lcom/kwad/sdk/core/network/i;->c()V

    return-void
.end method

.method protected abstract b(Ljava/lang/String;)Lcom/kwad/sdk/core/network/BaseResultData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation
.end method

.method protected d()V
    .registers 7

    invoke-virtual {p0}, Lcom/kwad/sdk/core/network/i;->b()Lcom/kwad/sdk/core/network/g;

    move-result-object v0

    iget-object v1, p0, Lcom/kwad/sdk/core/network/i;->a:Lcom/kwad/sdk/core/network/h;

    if-eqz v1, :cond_b

    invoke-interface {v1, v0}, Lcom/kwad/sdk/core/network/h;->a(Lcom/kwad/sdk/core/network/g;)V

    :cond_b
    invoke-static {}, Lcom/kwad/sdk/KsAdSDKImpl;->get()Lcom/kwad/sdk/KsAdSDKImpl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kwad/sdk/KsAdSDKImpl;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/ksad/download/d/b;->a(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_29

    iget-object v1, p0, Lcom/kwad/sdk/core/network/i;->a:Lcom/kwad/sdk/core/network/h;

    if-eqz v1, :cond_28

    sget-object v2, Lcom/kwad/sdk/core/network/f;->a:Lcom/kwad/sdk/core/network/f;

    iget v2, v2, Lcom/kwad/sdk/core/network/f;->k:I

    sget-object v3, Lcom/kwad/sdk/core/network/f;->a:Lcom/kwad/sdk/core/network/f;

    iget-object v3, v3, Lcom/kwad/sdk/core/network/f;->l:Ljava/lang/String;

    invoke-interface {v1, v0, v2, v3}, Lcom/kwad/sdk/core/network/h;->a(Lcom/kwad/sdk/core/network/g;ILjava/lang/String;)V

    :cond_28
    return-void

    :cond_29
    const/4 v1, 0x0

    :try_start_2a
    invoke-interface {v0}, Lcom/kwad/sdk/core/network/g;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/kwad/sdk/KsAdSDKImpl;->get()Lcom/kwad/sdk/KsAdSDKImpl;

    move-result-object v3

    invoke-virtual {v3}, Lcom/kwad/sdk/KsAdSDKImpl;->getProxyForHttp()Lcom/kwad/sdk/export/proxy/AdHttpProxy;

    move-result-object v3

    invoke-virtual {p0}, Lcom/kwad/sdk/core/network/i;->e()Z

    move-result v4

    if-eqz v4, :cond_49

    invoke-interface {v0}, Lcom/kwad/sdk/core/network/g;->b()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v0}, Lcom/kwad/sdk/core/network/g;->d()Lorg/json/JSONObject;

    move-result-object v5

    invoke-interface {v3, v2, v4, v5}, Lcom/kwad/sdk/export/proxy/AdHttpProxy;->doPost(Ljava/lang/String;Ljava/util/Map;Lorg/json/JSONObject;)Lcom/kwad/sdk/core/network/c;

    move-result-object v1

    goto :goto_5a

    :cond_49
    invoke-interface {v0}, Lcom/kwad/sdk/core/network/g;->b()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v0}, Lcom/kwad/sdk/core/network/g;->c()Ljava/util/Map;

    move-result-object v5

    invoke-interface {v3, v2, v4, v5}, Lcom/kwad/sdk/export/proxy/AdHttpProxy;->doPost(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)Lcom/kwad/sdk/core/network/c;

    move-result-object v1
    :try_end_55
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_55} :catch_56

    goto :goto_5a

    :catch_56
    move-exception v2

    invoke-static {v2}, Lcom/kwad/sdk/core/d/a;->a(Ljava/lang/Throwable;)V

    :goto_5a
    :try_start_5a
    invoke-virtual {p0, v0, v1}, Lcom/kwad/sdk/core/network/i;->a(Lcom/kwad/sdk/core/network/g;Lcom/kwad/sdk/core/network/c;)V
    :try_end_5d
    .catch Ljava/lang/Exception; {:try_start_5a .. :try_end_5d} :catch_5e

    goto :goto_62

    :catch_5e
    move-exception v0

    invoke-static {v0}, Lcom/kwad/sdk/core/d/a;->a(Ljava/lang/Throwable;)V

    :goto_62
    return-void
.end method

.method protected e()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method
