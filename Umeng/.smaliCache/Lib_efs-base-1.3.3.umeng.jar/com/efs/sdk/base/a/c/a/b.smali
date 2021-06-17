.class public final Lcom/efs/sdk/base/a/c/a/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I

.field b:Ljava/lang/String;

.field c:Ljava/lang/String;

.field public d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field public e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/lang/Boolean;


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    const/4 v0, -0x1

    iput v0, p0, Lcom/efs/sdk/base/a/c/a/b;->a:I

    .line 74
    const-string v0, "https://"

    iput-object v0, p0, Lcom/efs/sdk/base/a/c/a/b;->b:Ljava/lang/String;

    .line 79
    const-string v0, "errlog.umeng.com"

    iput-object v0, p0, Lcom/efs/sdk/base/a/c/a/b;->c:Ljava/lang/String;

    .line 81
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/efs/sdk/base/a/c/a/b;->f:Ljava/lang/Boolean;

    .line 87
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/efs/sdk/base/a/c/a/b;->d:Ljava/util/Map;

    .line 92
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/efs/sdk/base/a/c/a/b;->e:Ljava/util/Map;

    .line 95
    return-void
.end method

.method static a()Lcom/efs/sdk/base/a/c/a/b;
    .registers 2

    .line 240
    new-instance v0, Lcom/efs/sdk/base/a/c/a/b;

    invoke-direct {v0}, Lcom/efs/sdk/base/a/c/a/b;-><init>()V

    .line 241
    invoke-static {}, Lcom/efs/sdk/base/a/d/a;->a()Lcom/efs/sdk/base/a/c/a;

    move-result-object v1

    .line 5178
    iget-boolean v1, v1, Lcom/efs/sdk/base/a/c/a;->i:Z

    .line 241
    nop

    .line 5204
    if-eqz v1, :cond_13

    .line 5205
    const-string v1, "errlogos.umeng.com"

    iput-object v1, v0, Lcom/efs/sdk/base/a/c/a/b;->c:Ljava/lang/String;

    goto :goto_17

    .line 5209
    :cond_13
    const-string v1, "errlog.umeng.com"

    iput-object v1, v0, Lcom/efs/sdk/base/a/c/a/b;->c:Ljava/lang/String;

    .line 242
    :goto_17
    return-object v0
.end method


# virtual methods
.method final a(Ljava/util/Map;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 146
    nop

    .line 1219
    const-string v0, "gate_way"

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 1220
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1222
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_17

    .line 1223
    iput-object v0, p0, Lcom/efs/sdk/base/a/c/a/b;->c:Ljava/lang/String;

    .line 1228
    :cond_17
    const-string v0, "gate_way_https"

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_39

    .line 1229
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1231
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_39

    .line 1232
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 1233
    nop

    .line 2214
    if-eqz v0, :cond_35

    const-string v0, "https://"

    goto :goto_37

    :cond_35
    const-string v0, "http://"

    :goto_37
    iput-object v0, p0, Lcom/efs/sdk/base/a/c/a/b;->b:Ljava/lang/String;

    .line 149
    :cond_39
    nop

    .line 3168
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 3170
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_47
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_89

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 3171
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 3172
    const-string v4, "data_sampling_rate_"

    .line 3173
    const-string v5, "file_sampling_rate_"

    .line 3175
    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_69

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_88

    .line 3176
    :cond_69
    const-string v6, ""

    invoke-virtual {v3, v4, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 3177
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 3178
    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    .line 3181
    :try_start_7b
    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4
    :try_end_7f
    .catchall {:try_start_7b .. :try_end_7f} :catchall_80

    .line 3183
    goto :goto_81

    .line 3182
    :catchall_80
    move-exception v2

    .line 3184
    :goto_81
    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3186
    :cond_88
    goto :goto_47

    .line 3187
    :cond_89
    nop

    .line 4164
    iput-object v0, p0, Lcom/efs/sdk/base/a/c/a/b;->d:Ljava/util/Map;

    .line 152
    nop

    .line 5156
    iput-object p1, p0, Lcom/efs/sdk/base/a/c/a/b;->e:Ljava/util/Map;

    .line 153
    return-void
.end method
