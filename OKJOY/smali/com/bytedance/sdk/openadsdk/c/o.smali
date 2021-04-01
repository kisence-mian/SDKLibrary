.class public Lcom/bytedance/sdk/openadsdk/c/o;
.super Lcom/bytedance/sdk/openadsdk/c/g;
.source "StatsEventThread.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bytedance/sdk/openadsdk/c/g",
        "<",
        "Lcom/bytedance/sdk/openadsdk/f/b/c$a;",
        ">;"
    }
.end annotation


# instance fields
.field private l:Lcom/bytedance/sdk/openadsdk/core/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bytedance/sdk/openadsdk/core/p",
            "<",
            "Lcom/bytedance/sdk/openadsdk/c/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/c/e;Lcom/bytedance/sdk/openadsdk/core/p;Lcom/bytedance/sdk/openadsdk/c/g$b;Lcom/bytedance/sdk/openadsdk/c/g$a;)V
    .registers 8

    .prologue
    .line 18
    invoke-direct/range {p0 .. p6}, Lcom/bytedance/sdk/openadsdk/c/g;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/c/e;Lcom/bytedance/sdk/openadsdk/core/p;Lcom/bytedance/sdk/openadsdk/c/g$b;Lcom/bytedance/sdk/openadsdk/c/g$a;)V

    .line 19
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->f()Lcom/bytedance/sdk/openadsdk/core/p;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/c/o;->l:Lcom/bytedance/sdk/openadsdk/core/p;

    .line 20
    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;)Lcom/bytedance/sdk/openadsdk/c/h;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/bytedance/sdk/openadsdk/f/b/c$a;",
            ">;)",
            "Lcom/bytedance/sdk/openadsdk/c/h;"
        }
    .end annotation

    .prologue
    .line 24
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/c/o;->l:Lcom/bytedance/sdk/openadsdk/core/p;

    if-nez v0, :cond_a

    .line 25
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->f()Lcom/bytedance/sdk/openadsdk/core/p;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/c/o;->l:Lcom/bytedance/sdk/openadsdk/core/p;

    .line 27
    :cond_a
    if-eqz p1, :cond_18

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_18

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/h/j;->a()Z

    move-result v0

    if-nez v0, :cond_1a

    .line 28
    :cond_18
    const/4 v0, 0x0

    .line 41
    :goto_19
    return-object v0

    .line 30
    :cond_1a
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 32
    :try_start_1f
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 34
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_28
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_42

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/f/b/c$a;

    .line 35
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/f/b/c$a;->b:Lorg/json/JSONObject;

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_39} :catch_3a

    goto :goto_28

    .line 38
    :catch_3a
    move-exception v0

    .line 40
    :goto_3b
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/c/o;->l:Lcom/bytedance/sdk/openadsdk/core/p;

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/p;->a(Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/c/h;

    move-result-object v0

    goto :goto_19

    .line 37
    :cond_42
    :try_start_42
    const-string v0, "stats_list"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_42 .. :try_end_47} :catch_3a

    goto :goto_3b
.end method
