.class public Lcom/bytedance/sdk/openadsdk/core/dynamic/b/f;
.super Ljava/lang/Object;
.source "DynamicLayoutUnit.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:F

.field private c:F

.field private d:F

.field private e:F

.field private f:F

.field private g:Lcom/bytedance/sdk/openadsdk/core/dynamic/b/c;

.field private h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/openadsdk/core/dynamic/b/f;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lorg/json/JSONObject;Lcom/bytedance/sdk/openadsdk/core/dynamic/b/f;)V
    .registers 8

    .line 90
    if-eqz p0, :cond_a6

    if-nez p1, :cond_6

    goto/16 :goto_a6

    .line 93
    :cond_6
    const-string v0, "id"

    const-string v1, "root"

    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/dynamic/b/f;->a(Ljava/lang/String;)V

    .line 94
    const-string v0, "x"

    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v3

    double-to-float v0, v3

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/dynamic/b/f;->a(F)V

    .line 95
    const-string v0, "y"

    invoke-virtual {p0, v0, v1, v2}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v3

    double-to-float v0, v3

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/dynamic/b/f;->b(F)V

    .line 96
    const-string v0, "width"

    invoke-virtual {p0, v0, v1, v2}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v3

    double-to-float v0, v3

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/dynamic/b/f;->c(F)V

    .line 97
    const-string v0, "height"

    invoke-virtual {p0, v0, v1, v2}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v3

    double-to-float v0, v3

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/dynamic/b/f;->d(F)V

    .line 98
    const-string v0, "remainWidth"

    invoke-virtual {p0, v0, v1, v2}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v0

    double-to-float v0, v0

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/dynamic/b/f;->e(F)V

    .line 99
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/dynamic/b/c;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/core/dynamic/b/c;-><init>()V

    .line 100
    const-string v1, "brick"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/bytedance/sdk/openadsdk/core/dynamic/b/c;->a(Lorg/json/JSONObject;Lcom/bytedance/sdk/openadsdk/core/dynamic/b/c;)V

    .line 101
    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/dynamic/b/f;->a(Lcom/bytedance/sdk/openadsdk/core/dynamic/b/c;)V

    .line 102
    const-string v0, "children"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    .line 103
    if-eqz p0, :cond_a5

    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-gtz v0, :cond_65

    goto :goto_a5

    .line 106
    :cond_65
    const/4 v0, 0x0

    move v1, v0

    :goto_67
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_a4

    .line 107
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v2

    .line 108
    if-nez v2, :cond_74

    .line 109
    goto :goto_a1

    .line 111
    :cond_74
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "null"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_81

    .line 112
    goto :goto_a1

    .line 114
    :cond_81
    instance-of v3, v2, Lorg/json/JSONArray;

    if-eqz v3, :cond_a1

    .line 115
    move v3, v0

    :goto_86
    move-object v4, v2

    check-cast v4, Lorg/json/JSONArray;

    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v3, v5, :cond_a1

    .line 116
    invoke-virtual {v4, v3}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 117
    new-instance v5, Lcom/bytedance/sdk/openadsdk/core/dynamic/b/f;

    invoke-direct {v5}, Lcom/bytedance/sdk/openadsdk/core/dynamic/b/f;-><init>()V

    .line 118
    invoke-static {v4, v5}, Lcom/bytedance/sdk/openadsdk/core/dynamic/b/f;->a(Lorg/json/JSONObject;Lcom/bytedance/sdk/openadsdk/core/dynamic/b/f;)V

    .line 119
    invoke-virtual {p1, v5}, Lcom/bytedance/sdk/openadsdk/core/dynamic/b/f;->a(Lcom/bytedance/sdk/openadsdk/core/dynamic/b/f;)V

    .line 115
    add-int/lit8 v3, v3, 0x1

    goto :goto_86

    .line 106
    :cond_a1
    :goto_a1
    add-int/lit8 v1, v1, 0x1

    goto :goto_67

    .line 123
    :cond_a4
    return-void

    .line 104
    :cond_a5
    :goto_a5
    return-void

    .line 91
    :cond_a6
    :goto_a6
    return-void
.end method


# virtual methods
.method public a()F
    .registers 2

    .line 28
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/dynamic/b/f;->b:F

    return v0
.end method

.method public a(F)V
    .registers 2

    .line 32
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/dynamic/b/f;->b:F

    .line 33
    return-void
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/core/dynamic/b/c;)V
    .registers 2

    .line 72
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/dynamic/b/f;->g:Lcom/bytedance/sdk/openadsdk/core/dynamic/b/c;

    .line 73
    return-void
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/core/dynamic/b/f;)V
    .registers 3

    .line 83
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/dynamic/b/f;->h:Ljava/util/List;

    if-nez v0, :cond_b

    .line 84
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/dynamic/b/f;->h:Ljava/util/List;

    .line 86
    :cond_b
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/dynamic/b/f;->h:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 87
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 2

    .line 24
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/dynamic/b/f;->a:Ljava/lang/String;

    .line 25
    return-void
.end method

.method public b()F
    .registers 2

    .line 36
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/dynamic/b/f;->c:F

    return v0
.end method

.method public b(F)V
    .registers 2

    .line 40
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/dynamic/b/f;->c:F

    .line 41
    return-void
.end method

.method public c()F
    .registers 2

    .line 44
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/dynamic/b/f;->d:F

    return v0
.end method

.method public c(F)V
    .registers 2

    .line 48
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/dynamic/b/f;->d:F

    .line 49
    return-void
.end method

.method public d()F
    .registers 2

    .line 52
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/dynamic/b/f;->e:F

    return v0
.end method

.method public d(F)V
    .registers 2

    .line 56
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/dynamic/b/f;->e:F

    .line 57
    return-void
.end method

.method public e()Lcom/bytedance/sdk/openadsdk/core/dynamic/b/c;
    .registers 2

    .line 68
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/dynamic/b/f;->g:Lcom/bytedance/sdk/openadsdk/core/dynamic/b/c;

    return-object v0
.end method

.method public e(F)V
    .registers 2

    .line 64
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/dynamic/b/f;->f:F

    .line 65
    return-void
.end method

.method public f()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/openadsdk/core/dynamic/b/f;",
            ">;"
        }
    .end annotation

    .line 76
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/dynamic/b/f;->h:Ljava/util/List;

    return-object v0
.end method
