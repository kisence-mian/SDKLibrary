.class public final Lcom/tencent/smtt/sdk/URLUtil;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static composeSearchUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    invoke-static {}, Lcom/tencent/smtt/sdk/bt;->a()Lcom/tencent/smtt/sdk/bt;

    move-result-object v0

    if-eqz v0, :cond_15

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/bt;->b()Z

    move-result v1

    if-eqz v1, :cond_15

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/bt;->c()Lcom/tencent/smtt/sdk/bu;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/tencent/smtt/sdk/bu;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_14
    return-object v0

    :cond_15
    invoke-static {p0, p1, p2}, Landroid/webkit/URLUtil;->composeSearchUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_14
.end method

.method public static decode([B)[B
    .registers 3

    invoke-static {}, Lcom/tencent/smtt/sdk/bt;->a()Lcom/tencent/smtt/sdk/bt;

    move-result-object v0

    if-eqz v0, :cond_15

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/bt;->b()Z

    move-result v1

    if-eqz v1, :cond_15

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/bt;->c()Lcom/tencent/smtt/sdk/bu;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tencent/smtt/sdk/bu;->a([B)[B

    move-result-object v0

    :goto_14
    return-object v0

    :cond_15
    invoke-static {p0}, Landroid/webkit/URLUtil;->decode([B)[B

    move-result-object v0

    goto :goto_14
.end method

.method public static final guessFileName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    invoke-static {}, Lcom/tencent/smtt/sdk/bt;->a()Lcom/tencent/smtt/sdk/bt;

    move-result-object v0

    if-eqz v0, :cond_15

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/bt;->b()Z

    move-result v1

    if-eqz v1, :cond_15

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/bt;->c()Lcom/tencent/smtt/sdk/bu;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/tencent/smtt/sdk/bu;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_14
    return-object v0

    :cond_15
    invoke-static {p0, p1, p2}, Landroid/webkit/URLUtil;->guessFileName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_14
.end method

.method public static guessUrl(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    invoke-static {}, Lcom/tencent/smtt/sdk/bt;->a()Lcom/tencent/smtt/sdk/bt;

    move-result-object v0

    if-eqz v0, :cond_15

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/bt;->b()Z

    move-result v1

    if-eqz v1, :cond_15

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/bt;->c()Lcom/tencent/smtt/sdk/bu;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tencent/smtt/sdk/bu;->m(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_14
    return-object v0

    :cond_15
    invoke-static {p0}, Landroid/webkit/URLUtil;->guessUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_14
.end method

.method public static isAboutUrl(Ljava/lang/String;)Z
    .registers 3

    invoke-static {}, Lcom/tencent/smtt/sdk/bt;->a()Lcom/tencent/smtt/sdk/bt;

    move-result-object v0

    if-eqz v0, :cond_15

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/bt;->b()Z

    move-result v1

    if-eqz v1, :cond_15

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/bt;->c()Lcom/tencent/smtt/sdk/bu;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tencent/smtt/sdk/bu;->q(Ljava/lang/String;)Z

    move-result v0

    :goto_14
    return v0

    :cond_15
    invoke-static {p0}, Landroid/webkit/URLUtil;->isAboutUrl(Ljava/lang/String;)Z

    move-result v0

    goto :goto_14
.end method

.method public static isAssetUrl(Ljava/lang/String;)Z
    .registers 3

    invoke-static {}, Lcom/tencent/smtt/sdk/bt;->a()Lcom/tencent/smtt/sdk/bt;

    move-result-object v0

    if-eqz v0, :cond_15

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/bt;->b()Z

    move-result v1

    if-eqz v1, :cond_15

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/bt;->c()Lcom/tencent/smtt/sdk/bu;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tencent/smtt/sdk/bu;->n(Ljava/lang/String;)Z

    move-result v0

    :goto_14
    return v0

    :cond_15
    invoke-static {p0}, Landroid/webkit/URLUtil;->isAssetUrl(Ljava/lang/String;)Z

    move-result v0

    goto :goto_14
.end method

.method public static isContentUrl(Ljava/lang/String;)Z
    .registers 3

    invoke-static {}, Lcom/tencent/smtt/sdk/bt;->a()Lcom/tencent/smtt/sdk/bt;

    move-result-object v0

    if-eqz v0, :cond_15

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/bt;->b()Z

    move-result v1

    if-eqz v1, :cond_15

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/bt;->c()Lcom/tencent/smtt/sdk/bu;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tencent/smtt/sdk/bu;->w(Ljava/lang/String;)Z

    move-result v0

    :goto_14
    return v0

    :cond_15
    invoke-static {p0}, Landroid/webkit/URLUtil;->isContentUrl(Ljava/lang/String;)Z

    move-result v0

    goto :goto_14
.end method

.method public static isCookielessProxyUrl(Ljava/lang/String;)Z
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, Lcom/tencent/smtt/sdk/bt;->a()Lcom/tencent/smtt/sdk/bt;

    move-result-object v0

    if-eqz v0, :cond_15

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/bt;->b()Z

    move-result v1

    if-eqz v1, :cond_15

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/bt;->c()Lcom/tencent/smtt/sdk/bu;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tencent/smtt/sdk/bu;->o(Ljava/lang/String;)Z

    move-result v0

    :goto_14
    return v0

    :cond_15
    invoke-static {p0}, Landroid/webkit/URLUtil;->isCookielessProxyUrl(Ljava/lang/String;)Z

    move-result v0

    goto :goto_14
.end method

.method public static isDataUrl(Ljava/lang/String;)Z
    .registers 3

    invoke-static {}, Lcom/tencent/smtt/sdk/bt;->a()Lcom/tencent/smtt/sdk/bt;

    move-result-object v0

    if-eqz v0, :cond_15

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/bt;->b()Z

    move-result v1

    if-eqz v1, :cond_15

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/bt;->c()Lcom/tencent/smtt/sdk/bu;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tencent/smtt/sdk/bu;->r(Ljava/lang/String;)Z

    move-result v0

    :goto_14
    return v0

    :cond_15
    invoke-static {p0}, Landroid/webkit/URLUtil;->isDataUrl(Ljava/lang/String;)Z

    move-result v0

    goto :goto_14
.end method

.method public static isFileUrl(Ljava/lang/String;)Z
    .registers 3

    invoke-static {}, Lcom/tencent/smtt/sdk/bt;->a()Lcom/tencent/smtt/sdk/bt;

    move-result-object v0

    if-eqz v0, :cond_15

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/bt;->b()Z

    move-result v1

    if-eqz v1, :cond_15

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/bt;->c()Lcom/tencent/smtt/sdk/bu;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tencent/smtt/sdk/bu;->p(Ljava/lang/String;)Z

    move-result v0

    :goto_14
    return v0

    :cond_15
    invoke-static {p0}, Landroid/webkit/URLUtil;->isFileUrl(Ljava/lang/String;)Z

    move-result v0

    goto :goto_14
.end method

.method public static isHttpUrl(Ljava/lang/String;)Z
    .registers 3

    invoke-static {}, Lcom/tencent/smtt/sdk/bt;->a()Lcom/tencent/smtt/sdk/bt;

    move-result-object v0

    if-eqz v0, :cond_15

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/bt;->b()Z

    move-result v1

    if-eqz v1, :cond_15

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/bt;->c()Lcom/tencent/smtt/sdk/bu;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tencent/smtt/sdk/bu;->t(Ljava/lang/String;)Z

    move-result v0

    :goto_14
    return v0

    :cond_15
    invoke-static {p0}, Landroid/webkit/URLUtil;->isHttpUrl(Ljava/lang/String;)Z

    move-result v0

    goto :goto_14
.end method

.method public static isHttpsUrl(Ljava/lang/String;)Z
    .registers 3

    invoke-static {}, Lcom/tencent/smtt/sdk/bt;->a()Lcom/tencent/smtt/sdk/bt;

    move-result-object v0

    if-eqz v0, :cond_15

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/bt;->b()Z

    move-result v1

    if-eqz v1, :cond_15

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/bt;->c()Lcom/tencent/smtt/sdk/bu;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tencent/smtt/sdk/bu;->u(Ljava/lang/String;)Z

    move-result v0

    :goto_14
    return v0

    :cond_15
    invoke-static {p0}, Landroid/webkit/URLUtil;->isHttpsUrl(Ljava/lang/String;)Z

    move-result v0

    goto :goto_14
.end method

.method public static isJavaScriptUrl(Ljava/lang/String;)Z
    .registers 3

    invoke-static {}, Lcom/tencent/smtt/sdk/bt;->a()Lcom/tencent/smtt/sdk/bt;

    move-result-object v0

    if-eqz v0, :cond_15

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/bt;->b()Z

    move-result v1

    if-eqz v1, :cond_15

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/bt;->c()Lcom/tencent/smtt/sdk/bu;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tencent/smtt/sdk/bu;->s(Ljava/lang/String;)Z

    move-result v0

    :goto_14
    return v0

    :cond_15
    invoke-static {p0}, Landroid/webkit/URLUtil;->isJavaScriptUrl(Ljava/lang/String;)Z

    move-result v0

    goto :goto_14
.end method

.method public static isNetworkUrl(Ljava/lang/String;)Z
    .registers 3

    invoke-static {}, Lcom/tencent/smtt/sdk/bt;->a()Lcom/tencent/smtt/sdk/bt;

    move-result-object v0

    if-eqz v0, :cond_15

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/bt;->b()Z

    move-result v1

    if-eqz v1, :cond_15

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/bt;->c()Lcom/tencent/smtt/sdk/bu;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tencent/smtt/sdk/bu;->v(Ljava/lang/String;)Z

    move-result v0

    :goto_14
    return v0

    :cond_15
    invoke-static {p0}, Landroid/webkit/URLUtil;->isNetworkUrl(Ljava/lang/String;)Z

    move-result v0

    goto :goto_14
.end method

.method public static isValidUrl(Ljava/lang/String;)Z
    .registers 3

    invoke-static {}, Lcom/tencent/smtt/sdk/bt;->a()Lcom/tencent/smtt/sdk/bt;

    move-result-object v0

    if-eqz v0, :cond_15

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/bt;->b()Z

    move-result v1

    if-eqz v1, :cond_15

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/bt;->c()Lcom/tencent/smtt/sdk/bu;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tencent/smtt/sdk/bu;->x(Ljava/lang/String;)Z

    move-result v0

    :goto_14
    return v0

    :cond_15
    invoke-static {p0}, Landroid/webkit/URLUtil;->isValidUrl(Ljava/lang/String;)Z

    move-result v0

    goto :goto_14
.end method

.method public static stripAnchor(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    invoke-static {}, Lcom/tencent/smtt/sdk/bt;->a()Lcom/tencent/smtt/sdk/bt;

    move-result-object v0

    if-eqz v0, :cond_15

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/bt;->b()Z

    move-result v1

    if-eqz v1, :cond_15

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/bt;->c()Lcom/tencent/smtt/sdk/bu;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tencent/smtt/sdk/bu;->y(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_14
    return-object v0

    :cond_15
    invoke-static {p0}, Landroid/webkit/URLUtil;->stripAnchor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_14
.end method
