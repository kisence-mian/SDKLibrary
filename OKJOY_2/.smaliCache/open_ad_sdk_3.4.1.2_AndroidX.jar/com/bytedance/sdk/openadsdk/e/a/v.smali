.class Lcom/bytedance/sdk/openadsdk/e/a/v;
.super Ljava/lang/Object;
.source "PermissionConfigRepository.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/e/a/v$a;
    }
.end annotation


# instance fields
.field private final a:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/bytedance/sdk/openadsdk/e/a/u;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lcom/bytedance/sdk/openadsdk/e/a/k;

.field private final d:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/bytedance/sdk/openadsdk/e/a/v$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private a(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/e/a/u;
    .registers 10

    .line 168
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/e/a/v;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/e/a/u;

    .line 169
    if-nez v0, :cond_2a

    .line 170
    new-instance v0, Lcom/bytedance/sdk/openadsdk/e/a/u;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/e/a/v;->c:Lcom/bytedance/sdk/openadsdk/e/a/k;

    .line 171
    invoke-interface {v1}, Lcom/bytedance/sdk/openadsdk/e/a/k;->c()I

    move-result v3

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/e/a/v;->c:Lcom/bytedance/sdk/openadsdk/e/a/k;

    .line 172
    invoke-interface {v1}, Lcom/bytedance/sdk/openadsdk/e/a/k;->a()Lcom/bytedance/sdk/openadsdk/e/a/k$a;

    move-result-object v4

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/e/a/v;->c:Lcom/bytedance/sdk/openadsdk/e/a/k;

    .line 173
    invoke-interface {v1}, Lcom/bytedance/sdk/openadsdk/e/a/k;->b()Ljava/util/concurrent/Executor;

    move-result-object v5

    move-object v1, v0

    move-object v2, p1

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/bytedance/sdk/openadsdk/e/a/u;-><init>(Ljava/lang/String;ILcom/bytedance/sdk/openadsdk/e/a/k$a;Ljava/util/concurrent/Executor;Lorg/json/JSONObject;)V

    .line 175
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/e/a/v;->b:Ljava/util/Map;

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2f

    .line 176
    :cond_2a
    if-eqz p2, :cond_2f

    .line 177
    invoke-virtual {v0, p2}, Lcom/bytedance/sdk/openadsdk/e/a/u;->a(Lorg/json/JSONObject;)V

    .line 179
    :cond_2f
    :goto_2f
    return-object v0
.end method


# virtual methods
.method a(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/e/a/u;
    .registers 5

    .line 45
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/e/a/v;->a:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_30

    const-string v0, "host"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_30

    .line 46
    :cond_11
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Namespace: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " not registered."

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 48
    :cond_30
    :goto_30
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/bytedance/sdk/openadsdk/e/a/v;->a(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/e/a/u;

    move-result-object p1

    return-object p1
.end method

.method a(Lcom/bytedance/sdk/openadsdk/e/a/v$a;)V
    .registers 3

    .line 52
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/e/a/v;->d:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 53
    return-void
.end method
