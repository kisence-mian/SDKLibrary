.class public Lcom/bytedance/sdk/openadsdk/core/d/q;
.super Ljava/lang/Object;
.source "TempPkgModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/core/d/q$a;
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/openadsdk/core/d/q$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/core/d/q;
    .registers 8

    .line 176
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 177
    return-object v0

    .line 180
    :cond_4
    nop

    .line 182
    :try_start_5
    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/d/q;

    invoke-direct {v1}, Lcom/bytedance/sdk/openadsdk/core/d/q;-><init>()V
    :try_end_a
    .catchall {:try_start_5 .. :try_end_a} :catchall_84

    .line 183
    :try_start_a
    const-string v2, "name"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/d/q;->a(Ljava/lang/String;)V

    .line 184
    const-string v2, "version"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/d/q;->b(Ljava/lang/String;)V

    .line 185
    const-string v2, "main"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/d/q;->c(Ljava/lang/String;)V

    .line 186
    const-string v2, "fallback"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 187
    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/d/q;->d(Ljava/lang/String;)V

    .line 188
    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/dynamic/c/a;->a(Ljava/lang/String;)V

    .line 190
    const-string v2, "resources"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    .line 191
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 192
    if-eqz p0, :cond_75

    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-lez v3, :cond_75

    .line 193
    const/4 v3, 0x0

    :goto_45
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v3, v4, :cond_75

    .line 194
    invoke-virtual {p0, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 195
    new-instance v5, Lcom/bytedance/sdk/openadsdk/core/d/q$a;

    invoke-direct {v5}, Lcom/bytedance/sdk/openadsdk/core/d/q$a;-><init>()V

    .line 196
    const-string v6, "url"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/bytedance/sdk/openadsdk/core/d/q$a;->a(Ljava/lang/String;)V

    .line 197
    const-string v6, "md5"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/bytedance/sdk/openadsdk/core/d/q$a;->b(Ljava/lang/String;)V

    .line 198
    const-string v6, "level"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v5, v4}, Lcom/bytedance/sdk/openadsdk/core/d/q$a;->a(I)V

    .line 199
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 193
    add-int/lit8 v3, v3, 0x1

    goto :goto_45

    .line 203
    :cond_75
    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/d/q;->a(Ljava/util/List;)V

    .line 205
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/d/q;->f()Z

    move-result p0
    :try_end_7c
    .catchall {:try_start_a .. :try_end_7c} :catchall_81

    if-nez p0, :cond_7f

    .line 206
    goto :goto_80

    .line 205
    :cond_7f
    move-object v0, v1

    .line 210
    :goto_80
    goto :goto_85

    .line 209
    :catchall_81
    move-exception p0

    move-object v0, v1

    goto :goto_85

    :catchall_84
    move-exception p0

    .line 212
    :goto_85
    return-object v0
.end method

.method public static e(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/d/q;
    .registers 3

    .line 165
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 166
    return-object v0

    .line 169
    :cond_4
    :try_start_4
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/d/q;->a(Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/core/d/q;

    move-result-object p0
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_d} :catch_e

    return-object p0

    .line 170
    :catch_e
    move-exception p0

    .line 172
    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    .line 51
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/q;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .registers 2

    .line 55
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/d/q;->a:Ljava/lang/String;

    .line 56
    return-void
.end method

.method public a(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/openadsdk/core/d/q$a;",
            ">;)V"
        }
    .end annotation

    .line 90
    if-nez p1, :cond_7

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    :cond_7
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/d/q;->e:Ljava/util/List;

    .line 91
    return-void
.end method

.method public b()Ljava/lang/String;
    .registers 2

    .line 59
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/q;->b:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .registers 2

    .line 63
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/d/q;->b:Ljava/lang/String;

    .line 64
    return-void
.end method

.method public c()Ljava/lang/String;
    .registers 2

    .line 67
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/q;->c:Ljava/lang/String;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .registers 2

    .line 71
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/d/q;->c:Ljava/lang/String;

    .line 72
    return-void
.end method

.method public d()Ljava/lang/String;
    .registers 2

    .line 75
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/q;->d:Ljava/lang/String;

    return-object v0
.end method

.method public d(Ljava/lang/String;)V
    .registers 2

    .line 79
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/d/q;->d:Ljava/lang/String;

    .line 80
    return-void
.end method

.method public e()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/openadsdk/core/d/q$a;",
            ">;"
        }
    .end annotation

    .line 83
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/q;->e:Ljava/util/List;

    if-nez v0, :cond_b

    .line 84
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/q;->e:Ljava/util/List;

    .line 86
    :cond_b
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/q;->e:Ljava/util/List;

    return-object v0
.end method

.method public f()Z
    .registers 2

    .line 94
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/d/q;->c()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_14

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/d/q;->b()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_14

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/d/q;->a()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_14

    const/4 v0, 0x1

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    :goto_15
    return v0
.end method

.method public g()Ljava/lang/String;
    .registers 8

    .line 98
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/d/q;->f()Z

    move-result v0

    if-eqz v0, :cond_81

    .line 100
    :try_start_6
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 101
    const-string v1, "name"

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/d/q;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 102
    const-string v1, "version"

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/d/q;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 103
    const-string v1, "main"

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/d/q;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 104
    const-string v1, "fallback"

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/d/q;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 106
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 107
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/d/q;->e()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_76

    .line 108
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/d/q;->e()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_42
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_76

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/bytedance/sdk/openadsdk/core/d/q$a;

    .line 109
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 110
    const-string v5, "url"

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/d/q$a;->a()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 111
    const-string v5, "md5"

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/d/q$a;->b()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 112
    const-string v5, "level"

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/d/q$a;->c()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v4, v5, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 113
    invoke-virtual {v1, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 114
    goto :goto_42

    .line 116
    :cond_76
    const-string v2, "resources"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 118
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_7f
    .catchall {:try_start_6 .. :try_end_7f} :catchall_80

    return-object v0

    .line 119
    :catchall_80
    move-exception v0

    .line 123
    :cond_81
    const/4 v0, 0x0

    return-object v0
.end method
