.class public Lcom/bytedance/sdk/openadsdk/g/c;
.super Ljava/lang/Object;
.source "TTAdNetDepend.java"

# interfaces
.implements Lcom/bytedance/sdk/adnet/c/b;


# instance fields
.field a:Ljava/lang/String;

.field private b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const-string v0, "sp_multi_ttadnet_config"

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/g/c;->a:Ljava/lang/String;

    .line 18
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/g/c;->b:Landroid/content/Context;

    .line 19
    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    .prologue
    .line 33
    const-string v0, "1371"

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public a(Landroid/content/Context;)Landroid/location/Address;
    .registers 3

    .prologue
    .line 28
    const/4 v0, 0x0

    return-object v0
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .prologue
    .line 59
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/g/c;->a:Ljava/lang/String;

    invoke-static {v0, p2, p3}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/content/Context;Ljava/util/Map;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;)V"
        }
    .end annotation

    .prologue
    .line 70
    if-eqz p2, :cond_2d

    .line 71
    :try_start_2
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_a
    :goto_a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 72
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 73
    instance-of v3, v1, Ljava/lang/Integer;

    if-eqz v3, :cond_2e

    .line 74
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/g/c;->a:Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    check-cast v1, Ljava/lang/Integer;

    invoke-static {v3, v0, v1}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_a

    .line 86
    :catch_2c
    move-exception v0

    .line 89
    :cond_2d
    return-void

    .line 75
    :cond_2e
    instance-of v3, v1, Ljava/lang/Long;

    if-eqz v3, :cond_40

    .line 76
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/g/c;->a:Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    check-cast v1, Ljava/lang/Long;

    invoke-static {v3, v0, v1}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_a

    .line 77
    :cond_40
    instance-of v3, v1, Ljava/lang/Float;

    if-eqz v3, :cond_52

    .line 78
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/g/c;->a:Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    check-cast v1, Ljava/lang/Float;

    invoke-static {v3, v0, v1}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Float;)V

    goto :goto_a

    .line 79
    :cond_52
    instance-of v3, v1, Ljava/lang/Boolean;

    if-eqz v3, :cond_64

    .line 80
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/g/c;->a:Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    check-cast v1, Ljava/lang/Boolean;

    invoke-static {v3, v0, v1}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    goto :goto_a

    .line 81
    :cond_64
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_a

    .line 82
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/g/c;->a:Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    check-cast v1, Ljava/lang/String;

    invoke-static {v3, v0, v1}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_75
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_75} :catch_2c

    goto :goto_a
.end method

.method public b()Ljava/lang/String;
    .registers 2

    .prologue
    .line 38
    const-string v0, "openadsdk"

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .registers 2

    .prologue
    .line 43
    const-string v0, "android"

    return-object v0
.end method

.method public d()I
    .registers 2

    .prologue
    .line 48
    const/16 v0, 0xb89

    return v0
.end method

.method public e()Ljava/lang/String;
    .registers 2

    .prologue
    .line 53
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/g/c;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/j;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public f()[Ljava/lang/String;
    .registers 4

    .prologue
    .line 93
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "dm.toutiao.com"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "dm.bytedance.com"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "dm.pstatp.com"

    aput-object v2, v0, v1

    .line 94
    return-object v0
.end method
