.class public final Lcom/mintegral/msdk/mtgbid/common/b/a;
.super Lcom/mintegral/msdk/base/common/net/a;
.source "BidRequest.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 29
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/mintegral/msdk/base/common/net/a;-><init>(Landroid/content/Context;I)V

    .line 30
    return-void
.end method


# virtual methods
.method protected final a(Lcom/mintegral/msdk/base/common/net/l;)V
    .registers 7

    .prologue
    const/4 v4, 0x1

    .line 34
    invoke-super {p0, p1}, Lcom/mintegral/msdk/base/common/net/a;->a(Lcom/mintegral/msdk/base/common/net/l;)V

    .line 41
    invoke-static {}, Lcom/mintegral/msdk/c/b;->a()Lcom/mintegral/msdk/c/b;

    .line 42
    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/controller/a;->j()Ljava/lang/String;

    move-result-object v0

    .line 41
    invoke-static {v0}, Lcom/mintegral/msdk/c/b;->b(Ljava/lang/String;)Lcom/mintegral/msdk/c/a;

    move-result-object v0

    .line 43
    if-nez v0, :cond_1c

    .line 44
    invoke-static {}, Lcom/mintegral/msdk/c/b;->a()Lcom/mintegral/msdk/c/b;

    invoke-static {}, Lcom/mintegral/msdk/c/b;->b()Lcom/mintegral/msdk/c/a;

    move-result-object v0

    .line 46
    :cond_1c
    const-string v1, "platform"

    const-string v2, "1"

    invoke-virtual {p1, v1, v2}, Lcom/mintegral/msdk/base/common/net/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    const-string v1, "os_version"

    sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Lcom/mintegral/msdk/base/common/net/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    const-string v1, "package_name"

    iget-object v2, p0, Lcom/mintegral/msdk/mtgbid/common/b/a;->b:Landroid/content/Context;

    invoke-static {v2}, Lcom/mintegral/msdk/base/utils/c;->q(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/mintegral/msdk/base/common/net/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    const-string v1, "app_version_name"

    iget-object v2, p0, Lcom/mintegral/msdk/mtgbid/common/b/a;->b:Landroid/content/Context;

    .line 50
    invoke-static {v2}, Lcom/mintegral/msdk/base/utils/c;->l(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 49
    invoke-virtual {p1, v1, v2}, Lcom/mintegral/msdk/base/common/net/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    const-string v1, "app_version_code"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/mintegral/msdk/mtgbid/common/b/a;->b:Landroid/content/Context;

    .line 52
    invoke-static {v3}, Lcom/mintegral/msdk/base/utils/c;->k(Landroid/content/Context;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 51
    invoke-virtual {p1, v1, v2}, Lcom/mintegral/msdk/base/common/net/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    const-string v1, "orientation"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/mintegral/msdk/mtgbid/common/b/a;->b:Landroid/content/Context;

    invoke-static {v3}, Lcom/mintegral/msdk/base/utils/c;->i(Landroid/content/Context;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/mintegral/msdk/base/common/net/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    const-string v1, "model"

    invoke-static {}, Lcom/mintegral/msdk/base/utils/c;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/mintegral/msdk/base/common/net/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    const-string v1, "brand"

    invoke-static {}, Lcom/mintegral/msdk/base/utils/c;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/mintegral/msdk/base/common/net/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    const-string v1, "gaid"

    const-string v2, ""

    invoke-virtual {p1, v1, v2}, Lcom/mintegral/msdk/base/common/net/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    const-string v1, "gaid2"

    invoke-static {}, Lcom/mintegral/msdk/base/utils/c;->m()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/mintegral/msdk/base/common/net/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    invoke-virtual {v0}, Lcom/mintegral/msdk/c/a;->as()I

    move-result v1

    if-ne v1, v4, :cond_ba

    invoke-static {}, Lcom/mintegral/msdk/base/controller/authoritycontroller/a;->a()Lcom/mintegral/msdk/base/controller/authoritycontroller/a;

    const-string v1, "authority_imei_mac"

    invoke-static {v1}, Lcom/mintegral/msdk/base/controller/authoritycontroller/a;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_ba

    .line 61
    iget-object v1, p0, Lcom/mintegral/msdk/mtgbid/common/b/a;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/mintegral/msdk/base/utils/c;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_ba

    .line 62
    const-string v1, "d1"

    iget-object v2, p0, Lcom/mintegral/msdk/mtgbid/common/b/a;->b:Landroid/content/Context;

    invoke-static {v2}, Lcom/mintegral/msdk/base/utils/c;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mintegral/msdk/base/utils/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/mintegral/msdk/base/common/net/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    :cond_ba
    invoke-virtual {v0}, Lcom/mintegral/msdk/c/a;->au()I

    move-result v0

    if-ne v0, v4, :cond_de

    .line 67
    iget-object v0, p0, Lcom/mintegral/msdk/mtgbid/common/b/a;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/mintegral/msdk/base/utils/c;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_de

    .line 68
    invoke-static {}, Lcom/mintegral/msdk/base/controller/authoritycontroller/a;->a()Lcom/mintegral/msdk/base/controller/authoritycontroller/a;

    const-string v0, "authority_android_id"

    invoke-static {v0}, Lcom/mintegral/msdk/base/controller/authoritycontroller/a;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_de

    .line 69
    const-string v0, "d3"

    iget-object v1, p0, Lcom/mintegral/msdk/mtgbid/common/b/a;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/mintegral/msdk/base/utils/c;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/mintegral/msdk/base/common/net/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    :cond_de
    const-string v0, "mnc"

    invoke-static {}, Lcom/mintegral/msdk/base/utils/c;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/mintegral/msdk/base/common/net/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    const-string v0, "mcc"

    invoke-static {}, Lcom/mintegral/msdk/base/utils/c;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/mintegral/msdk/base/common/net/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    invoke-static {}, Lcom/mintegral/msdk/base/utils/c;->g()I

    move-result v0

    .line 76
    const-string v1, "network_type"

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/mintegral/msdk/base/common/net/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    const-string v1, "network_str"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/mintegral/msdk/mtgbid/common/b/a;->b:Landroid/content/Context;

    invoke-static {v3, v0}, Lcom/mintegral/msdk/base/utils/c;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/mintegral/msdk/base/common/net/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    const-string v0, "language"

    iget-object v1, p0, Lcom/mintegral/msdk/mtgbid/common/b/a;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/mintegral/msdk/base/utils/c;->h(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/mintegral/msdk/base/common/net/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    const-string v0, "timezone"

    invoke-static {}, Lcom/mintegral/msdk/base/utils/c;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/mintegral/msdk/base/common/net/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    const-string v0, "useragent"

    invoke-static {}, Lcom/mintegral/msdk/base/utils/c;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/mintegral/msdk/base/common/net/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    const-string v0, "sdk_version"

    const-string v1, "MAL_10.2.42"

    invoke-virtual {p1, v0, v1}, Lcom/mintegral/msdk/base/common/net/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    const-string v0, "gp_version"

    iget-object v1, p0, Lcom/mintegral/msdk/mtgbid/common/b/a;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/mintegral/msdk/base/utils/c;->s(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/mintegral/msdk/base/common/net/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    const-string v0, "screen_size"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/mintegral/msdk/mtgbid/common/b/a;->b:Landroid/content/Context;

    invoke-static {v2}, Lcom/mintegral/msdk/base/utils/c;->n(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mintegral/msdk/mtgbid/common/b/a;->b:Landroid/content/Context;

    .line 84
    invoke-static {v2}, Lcom/mintegral/msdk/base/utils/c;->o(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 83
    invoke-virtual {p1, v0, v1}, Lcom/mintegral/msdk/base/common/net/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    const-string v0, "is_clever"

    sget-object v1, Lcom/mintegral/msdk/base/common/a;->v:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/mintegral/msdk/base/common/net/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    iget-object v0, p0, Lcom/mintegral/msdk/mtgbid/common/b/a;->b:Landroid/content/Context;

    invoke-static {p1, v0}, Lcom/mintegral/msdk/base/common/net/a/e;->a(Lcom/mintegral/msdk/base/common/net/l;Landroid/content/Context;)V

    .line 87
    invoke-static {p1}, Lcom/mintegral/msdk/base/common/net/a/e;->a(Lcom/mintegral/msdk/base/common/net/l;)V

    .line 88
    return-void
.end method
