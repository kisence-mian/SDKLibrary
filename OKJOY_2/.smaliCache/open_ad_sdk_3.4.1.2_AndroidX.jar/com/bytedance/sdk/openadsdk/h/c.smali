.class public Lcom/bytedance/sdk/openadsdk/h/c;
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

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const-string v0, "sp_multi_ttadnet_config"

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/h/c;->a:Ljava/lang/String;

    .line 18
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/h/c;->b:Landroid/content/Context;

    .line 19
    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    .line 33
    const-string v0, "1371"

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public a(Landroid/content/Context;)Landroid/location/Address;
    .registers 2

    .line 28
    const/4 p1, 0x0

    return-object p1
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 59
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/h/c;->a:Ljava/lang/String;

    invoke-static {p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public a(Landroid/content/Context;Ljava/util/Map;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;)V"
        }
    .end annotation

    .line 70
    if-eqz p2, :cond_76

    .line 71
    :try_start_2
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_a
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_76

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    .line 72
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 73
    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_2c

    .line 74
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/h/c;->a:Ljava/lang/String;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    check-cast v0, Ljava/lang/Integer;

    invoke-static {v1, p2, v0}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_73

    .line 75
    :cond_2c
    instance-of v1, v0, Ljava/lang/Long;

    if-eqz v1, :cond_3e

    .line 76
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/h/c;->a:Ljava/lang/String;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    check-cast v0, Ljava/lang/Long;

    invoke-static {v1, p2, v0}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_73

    .line 77
    :cond_3e
    instance-of v1, v0, Ljava/lang/Float;

    if-eqz v1, :cond_50

    .line 78
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/h/c;->a:Ljava/lang/String;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    check-cast v0, Ljava/lang/Float;

    invoke-static {v1, p2, v0}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Float;)V

    goto :goto_73

    .line 79
    :cond_50
    instance-of v1, v0, Ljava/lang/Boolean;

    if-eqz v1, :cond_62

    .line 80
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/h/c;->a:Ljava/lang/String;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    check-cast v0, Ljava/lang/Boolean;

    invoke-static {v1, p2, v0}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    goto :goto_73

    .line 81
    :cond_62
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_73

    .line 82
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/h/c;->a:Ljava/lang/String;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    check-cast v0, Ljava/lang/String;

    invoke-static {v1, p2, v0}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_73
    .catchall {:try_start_2 .. :try_end_73} :catchall_74

    .line 84
    :cond_73
    :goto_73
    goto :goto_a

    .line 86
    :catchall_74
    move-exception p1

    goto :goto_77

    .line 88
    :cond_76
    nop

    .line 89
    :goto_77
    return-void
.end method

.method public b()Ljava/lang/String;
    .registers 2

    .line 38
    const-string v0, "openadsdk"

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .registers 2

    .line 43
    const-string v0, "android"

    return-object v0
.end method

.method public d()I
    .registers 2

    .line 48
    const/16 v0, 0xd54

    return v0
.end method

.method public e()Ljava/lang/String;
    .registers 2

    .line 53
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/h/c;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/k;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public f()[Ljava/lang/String;
    .registers 4

    .line 93
    const-string v0, "dm.toutiao.com"

    const-string v1, "dm.bytedance.com"

    const-string v2, "dm.pstatp.com"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    .line 94
    return-object v0
.end method
