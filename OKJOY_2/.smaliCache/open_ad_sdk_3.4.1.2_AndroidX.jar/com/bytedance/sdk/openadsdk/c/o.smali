.class public Lcom/bytedance/sdk/openadsdk/c/o;
.super Lcom/bytedance/sdk/openadsdk/c/g;
.source "StatsEventThread.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bytedance/sdk/openadsdk/c/g<",
        "Lcom/bytedance/sdk/openadsdk/g/c/c$a;",
        ">;"
    }
.end annotation


# instance fields
.field private m:Lcom/bytedance/sdk/openadsdk/core/q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bytedance/sdk/openadsdk/core/q<",
            "Lcom/bytedance/sdk/openadsdk/c/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/c/e;Lcom/bytedance/sdk/openadsdk/core/q;Lcom/bytedance/sdk/openadsdk/c/g$b;Lcom/bytedance/sdk/openadsdk/c/g$a;)V
    .registers 7

    .line 19
    invoke-direct/range {p0 .. p6}, Lcom/bytedance/sdk/openadsdk/c/g;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/c/e;Lcom/bytedance/sdk/openadsdk/core/q;Lcom/bytedance/sdk/openadsdk/c/g$b;Lcom/bytedance/sdk/openadsdk/c/g$a;)V

    .line 20
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->f()Lcom/bytedance/sdk/openadsdk/core/q;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/c/o;->m:Lcom/bytedance/sdk/openadsdk/core/q;

    .line 21
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/c/o;->l:Z

    .line 22
    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;)Lcom/bytedance/sdk/openadsdk/c/h;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/openadsdk/g/c/c$a;",
            ">;)",
            "Lcom/bytedance/sdk/openadsdk/c/h;"
        }
    .end annotation

    .line 26
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/c/o;->m:Lcom/bytedance/sdk/openadsdk/core/q;

    if-nez v0, :cond_a

    .line 27
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->f()Lcom/bytedance/sdk/openadsdk/core/q;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/c/o;->m:Lcom/bytedance/sdk/openadsdk/core/q;

    .line 29
    :cond_a
    if-eqz p1, :cond_47

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_47

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/h/g;->a()Z

    move-result v0

    if-nez v0, :cond_19

    goto :goto_47

    .line 32
    :cond_19
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 34
    :try_start_1e
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 36
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_27
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_39

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bytedance/sdk/openadsdk/g/c/c$a;

    .line 37
    iget-object v2, v2, Lcom/bytedance/sdk/openadsdk/g/c/c$a;->b:Lorg/json/JSONObject;

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 38
    goto :goto_27

    .line 39
    :cond_39
    const-string p1, "stats_list"

    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_3e} :catch_3f

    .line 41
    goto :goto_40

    .line 40
    :catch_3f
    move-exception p1

    .line 42
    :goto_40
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/c/o;->m:Lcom/bytedance/sdk/openadsdk/core/q;

    invoke-interface {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/q;->a(Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/c/h;

    move-result-object p1

    .line 43
    return-object p1

    .line 30
    :cond_47
    :goto_47
    const/4 p1, 0x0

    return-object p1
.end method
