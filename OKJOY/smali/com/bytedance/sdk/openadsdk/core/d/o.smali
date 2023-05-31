.class public Lcom/bytedance/sdk/openadsdk/core/d/o;
.super Ljava/lang/Object;
.source "TempPkgModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/core/d/o$a;
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/bytedance/sdk/openadsdk/core/d/o$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/core/d/o;
    .registers 9

    .prologue
    const/4 v0, 0x0

    .line 160
    if-nez p0, :cond_4

    .line 193
    :cond_3
    :goto_3
    return-object v0

    .line 166
    :cond_4
    :try_start_4
    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/d/o;

    invoke-direct {v1}, Lcom/bytedance/sdk/openadsdk/core/d/o;-><init>()V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_9} :catch_73

    .line 167
    :try_start_9
    const-string v2, "name"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/d/o;->a(Ljava/lang/String;)V

    .line 168
    const-string v2, "version"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/d/o;->b(Ljava/lang/String;)V

    .line 169
    const-string v2, "main"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/d/o;->c(Ljava/lang/String;)V

    .line 171
    const-string v2, "resources"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 172
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 173
    if-eqz v3, :cond_68

    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lez v2, :cond_68

    .line 174
    const/4 v2, 0x0

    :goto_38
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v2, v5, :cond_68

    .line 175
    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 176
    new-instance v6, Lcom/bytedance/sdk/openadsdk/core/d/o$a;

    invoke-direct {v6}, Lcom/bytedance/sdk/openadsdk/core/d/o$a;-><init>()V

    .line 177
    const-string v7, "url"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/bytedance/sdk/openadsdk/core/d/o$a;->a(Ljava/lang/String;)V

    .line 178
    const-string v7, "md5"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/bytedance/sdk/openadsdk/core/d/o$a;->b(Ljava/lang/String;)V

    .line 179
    const-string v7, "level"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v6, v5}, Lcom/bytedance/sdk/openadsdk/core/d/o$a;->a(I)V

    .line 180
    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 174
    add-int/lit8 v2, v2, 0x1

    goto :goto_38

    .line 184
    :cond_68
    invoke-virtual {v1, v4}, Lcom/bytedance/sdk/openadsdk/core/d/o;->a(Ljava/util/List;)V

    .line 186
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/d/o;->e()Z
    :try_end_6e
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_6e} :catch_75

    move-result v2

    if-eqz v2, :cond_3

    move-object v0, v1

    goto :goto_3

    .line 190
    :catch_73
    move-exception v1

    goto :goto_3

    :catch_75
    move-exception v0

    move-object v0, v1

    goto :goto_3
.end method

.method public static d(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/d/o;
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 149
    if-nez p0, :cond_4

    .line 156
    :goto_3
    return-object v0

    .line 153
    :cond_4
    :try_start_4
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/d/o;->a(Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/core/d/o;
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_c} :catch_e

    move-result-object v0

    goto :goto_3

    .line 154
    :catch_e
    move-exception v1

    goto :goto_3
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 44
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/o;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 48
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/d/o;->a:Ljava/lang/String;

    .line 49
    return-void
.end method

.method public a(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/bytedance/sdk/openadsdk/core/d/o$a;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 75
    if-nez p1, :cond_7

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    :cond_7
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/d/o;->d:Ljava/util/List;

    .line 76
    return-void
.end method

.method public b()Ljava/lang/String;
    .registers 2

    .prologue
    .line 52
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/o;->b:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 56
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/d/o;->b:Ljava/lang/String;

    .line 57
    return-void
.end method

.method public c()Ljava/lang/String;
    .registers 2

    .prologue
    .line 60
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/o;->c:Ljava/lang/String;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 64
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/d/o;->c:Ljava/lang/String;

    .line 65
    return-void
.end method

.method public d()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/bytedance/sdk/openadsdk/core/d/o$a;",
            ">;"
        }
    .end annotation

    .prologue
    .line 68
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/o;->d:Ljava/util/List;

    if-nez v0, :cond_b

    .line 69
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/o;->d:Ljava/util/List;

    .line 71
    :cond_b
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/o;->d:Ljava/util/List;

    return-object v0
.end method

.method public e()Z
    .registers 2

    .prologue
    .line 79
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/d/o;->c()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_14

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/d/o;->b()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_14

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/d/o;->a()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_14

    const/4 v0, 0x1

    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method public f()Ljava/lang/String;
    .registers 8

    .prologue
    .line 83
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/d/o;->e()Z

    move-result v0

    if-eqz v0, :cond_6e

    .line 85
    :try_start_6
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 86
    const-string v0, "name"

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/d/o;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 87
    const-string v0, "version"

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/d/o;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 88
    const-string v0, "main"

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/d/o;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 90
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 91
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/d/o;->d()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_70

    .line 92
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/d/o;->d()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_39
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_70

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/d/o$a;

    .line 93
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 94
    const-string v5, "url"

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/o$a;->a()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 95
    const-string v5, "md5"

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/o$a;->b()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 96
    const-string v5, "level"

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/o$a;->c()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v4, v5, v0}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 97
    invoke-virtual {v2, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_39

    .line 103
    :catch_6d
    move-exception v0

    .line 107
    :cond_6e
    const/4 v0, 0x0

    :goto_6f
    return-object v0

    .line 100
    :cond_70
    const-string v0, "resources"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 102
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_78
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_78} :catch_6d

    move-result-object v0

    goto :goto_6f
.end method
