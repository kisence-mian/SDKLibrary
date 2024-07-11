.class public Lcom/bytedance/sdk/openadsdk/core/d/c;
.super Ljava/lang/Object;
.source "AppManageModel.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Lorg/json/JSONArray;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/c;->g:Ljava/util/HashMap;

    .line 28
    return-void
.end method


# virtual methods
.method public a()Ljava/util/HashMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 38
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/c;->g:Ljava/util/HashMap;

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .registers 2

    .line 46
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/d/c;->a:Ljava/lang/String;

    .line 47
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 31
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 32
    return-void

    .line 34
    :cond_7
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/c;->g:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    return-void
.end method

.method public a(Lorg/json/JSONArray;)V
    .registers 2

    .line 78
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/d/c;->d:Lorg/json/JSONArray;

    .line 79
    return-void
.end method

.method public b()Ljava/lang/String;
    .registers 2

    .line 42
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/c;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .registers 2

    .line 62
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/d/c;->b:Ljava/lang/String;

    .line 63
    return-void
.end method

.method public c()Ljava/lang/String;
    .registers 2

    .line 58
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/c;->b:Ljava/lang/String;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .registers 2

    .line 70
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/d/c;->c:Ljava/lang/String;

    .line 71
    return-void
.end method

.method public d()Ljava/lang/String;
    .registers 2

    .line 66
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/c;->c:Ljava/lang/String;

    return-object v0
.end method

.method public d(Ljava/lang/String;)V
    .registers 2

    .line 86
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/d/c;->e:Ljava/lang/String;

    .line 87
    return-void
.end method

.method public e()Lorg/json/JSONArray;
    .registers 2

    .line 74
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/c;->d:Lorg/json/JSONArray;

    return-object v0
.end method

.method public e(Ljava/lang/String;)V
    .registers 2

    .line 94
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/d/c;->f:Ljava/lang/String;

    .line 95
    return-void
.end method

.method public f()Ljava/lang/String;
    .registers 2

    .line 82
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/c;->e:Ljava/lang/String;

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .registers 2

    .line 90
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/c;->f:Ljava/lang/String;

    return-object v0
.end method
