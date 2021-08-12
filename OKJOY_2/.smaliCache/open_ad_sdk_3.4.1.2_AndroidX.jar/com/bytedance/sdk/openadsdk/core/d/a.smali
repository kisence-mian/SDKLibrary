.class public Lcom/bytedance/sdk/openadsdk/core/d/a;
.super Ljava/lang/Object;
.source "AdInfo.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:I

.field private c:Ljava/lang/String;

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/openadsdk/core/d/l;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/lang/String;

.field private f:J


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/a;->d:Ljava/util/List;

    return-void
.end method

.method public static a(Lcom/bytedance/sdk/openadsdk/core/d/a;)Ljava/util/Map;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/openadsdk/core/d/a;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/bytedance/sdk/openadsdk/core/d/l;",
            ">;"
        }
    .end annotation

    .line 77
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 78
    return-object v0

    .line 80
    :cond_4
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 81
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/d/a;->c()Ljava/util/List;

    move-result-object p0

    .line 82
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_11
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2f

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bytedance/sdk/openadsdk/core/d/l;

    .line 83
    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/d/l;->Y()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2e

    .line 84
    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/d/l;->Y()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    :cond_2e
    goto :goto_11

    .line 87
    :cond_2f
    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result p0

    if-eqz p0, :cond_36

    .line 88
    return-object v1

    .line 90
    :cond_36
    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    .line 25
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/a;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(I)V
    .registers 2

    .line 37
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/d/a;->b:I

    .line 38
    return-void
.end method

.method public a(J)V
    .registers 3

    .line 73
    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/core/d/a;->f:J

    .line 74
    return-void
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/core/d/l;)V
    .registers 3

    .line 53
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/a;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 54
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 2

    .line 29
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/d/a;->a:Ljava/lang/String;

    .line 30
    return-void
.end method

.method public b()I
    .registers 2

    .line 33
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/a;->b:I

    return v0
.end method

.method public b(Ljava/lang/String;)V
    .registers 2

    .line 45
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/d/a;->c:Ljava/lang/String;

    .line 46
    return-void
.end method

.method public c()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/openadsdk/core/d/l;",
            ">;"
        }
    .end annotation

    .line 49
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/a;->d:Ljava/util/List;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .registers 2

    .line 65
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/d/a;->e:Ljava/lang/String;

    .line 66
    return-void
.end method

.method public d()Ljava/lang/String;
    .registers 2

    .line 61
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/a;->e:Ljava/lang/String;

    return-object v0
.end method
