.class public Lcom/bytedance/sdk/openadsdk/core/d/e;
.super Ljava/lang/Object;
.source "ClickEventModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/core/d/e$a;
    }
.end annotation


# instance fields
.field private final a:[I

.field private final b:[I

.field private final c:[I

.field private final d:[I

.field private final e:I

.field private final f:I

.field private final g:I

.field private final h:I

.field private final i:J

.field private final j:J

.field private final k:I

.field private final l:I

.field private final m:I

.field private final n:I

.field private o:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/bytedance/sdk/openadsdk/core/a/c$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/bytedance/sdk/openadsdk/core/d/e$a;)V
    .registers 4
    .param p1    # Lcom/bytedance/sdk/openadsdk/core/d/e$a;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/d/e$a;->a(Lcom/bytedance/sdk/openadsdk/core/d/e$a;)[I

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/e;->a:[I

    .line 41
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/d/e$a;->b(Lcom/bytedance/sdk/openadsdk/core/d/e$a;)[I

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/e;->b:[I

    .line 42
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/d/e$a;->c(Lcom/bytedance/sdk/openadsdk/core/d/e$a;)[I

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/e;->d:[I

    .line 43
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/d/e$a;->d(Lcom/bytedance/sdk/openadsdk/core/d/e$a;)[I

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/e;->c:[I

    .line 44
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/d/e$a;->e(Lcom/bytedance/sdk/openadsdk/core/d/e$a;)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/e;->e:I

    .line 45
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/d/e$a;->f(Lcom/bytedance/sdk/openadsdk/core/d/e$a;)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/e;->f:I

    .line 46
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/d/e$a;->g(Lcom/bytedance/sdk/openadsdk/core/d/e$a;)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/e;->g:I

    .line 47
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/d/e$a;->h(Lcom/bytedance/sdk/openadsdk/core/d/e$a;)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/e;->h:I

    .line 48
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/d/e$a;->i(Lcom/bytedance/sdk/openadsdk/core/d/e$a;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/e;->i:J

    .line 49
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/d/e$a;->j(Lcom/bytedance/sdk/openadsdk/core/d/e$a;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/e;->j:J

    .line 50
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/d/e$a;->k(Lcom/bytedance/sdk/openadsdk/core/d/e$a;)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/e;->k:I

    .line 51
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/d/e$a;->l(Lcom/bytedance/sdk/openadsdk/core/d/e$a;)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/e;->l:I

    .line 52
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/d/e$a;->m(Lcom/bytedance/sdk/openadsdk/core/d/e$a;)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/e;->m:I

    .line 53
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/d/e$a;->n(Lcom/bytedance/sdk/openadsdk/core/d/e$a;)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/e;->n:I

    .line 54
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/d/e$a;->o(Lcom/bytedance/sdk/openadsdk/core/d/e$a;)Landroid/util/SparseArray;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/e;->o:Landroid/util/SparseArray;

    .line 56
    return-void
.end method

.method synthetic constructor <init>(Lcom/bytedance/sdk/openadsdk/core/d/e$a;Lcom/bytedance/sdk/openadsdk/core/d/e$1;)V
    .registers 3

    .prologue
    .line 15
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/d/e;-><init>(Lcom/bytedance/sdk/openadsdk/core/d/e$a;)V

    return-void
.end method


# virtual methods
.method public a()Lorg/json/JSONObject;
    .registers 11

    .prologue
    const/4 v6, 0x2

    const/4 v0, 0x0

    .line 60
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 62
    :try_start_7
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/d/e;->a:[I

    if-eqz v1, :cond_2d

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/d/e;->a:[I

    array-length v1, v1

    if-ne v1, v6, :cond_2d

    .line 63
    const-string v1, "ad_x"

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/d/e;->a:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v3, "ad_y"

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/d/e;->a:[I

    const/4 v5, 0x1

    aget v4, v4, v5

    .line 64
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 66
    :cond_2d
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/d/e;->b:[I

    if-eqz v1, :cond_53

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/d/e;->b:[I

    array-length v1, v1

    if-ne v1, v6, :cond_53

    .line 67
    const-string v1, "width"

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/d/e;->b:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v3, "height"

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/d/e;->b:[I

    const/4 v5, 0x1

    aget v4, v4, v5

    .line 68
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 70
    :cond_53
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/d/e;->c:[I

    if-eqz v1, :cond_79

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/d/e;->c:[I

    array-length v1, v1

    if-ne v1, v6, :cond_79

    .line 71
    const-string v1, "button_x"

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/d/e;->c:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v3, "button_y"

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/d/e;->c:[I

    const/4 v5, 0x1

    aget v4, v4, v5

    .line 72
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 74
    :cond_79
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/d/e;->d:[I

    if-eqz v1, :cond_9f

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/d/e;->d:[I

    array-length v1, v1

    if-ne v1, v6, :cond_9f

    .line 75
    const-string v1, "button_width"

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/d/e;->d:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v3, "button_height"

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/d/e;->d:[I

    const/4 v5, 0x1

    aget v4, v4, v5

    .line 76
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 80
    :cond_9f
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 81
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    .line 82
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/d/e;->o:Landroid/util/SparseArray;

    if-eqz v1, :cond_fb

    move v1, v0

    .line 83
    :goto_ae
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/e;->o:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v1, v0, :cond_fb

    .line 84
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/e;->o:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/a/c$a;

    .line 85
    if-eqz v0, :cond_f7

    .line 86
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 87
    const-string v6, "force"

    iget-wide v8, v0, Lcom/bytedance/sdk/openadsdk/core/a/c$a;->c:D

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v6

    const-string v7, "mr"

    iget-wide v8, v0, Lcom/bytedance/sdk/openadsdk/core/a/c$a;->b:D

    .line 88
    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v6

    const-string v7, "phase"

    iget v8, v0, Lcom/bytedance/sdk/openadsdk/core/a/c$a;->a:I

    .line 89
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v6

    const-string v7, "ts"

    iget-wide v8, v0, Lcom/bytedance/sdk/openadsdk/core/a/c$a;->d:J

    .line 90
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v6, v7, v0}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 91
    invoke-virtual {v4, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 83
    :cond_f7
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_ae

    .line 95
    :cond_fb
    const-string v0, "ftc"

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/d/e;->n:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "info"

    .line 96
    invoke-virtual {v0, v1, v4}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 98
    const-string v0, "down_x"

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/d/e;->e:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "down_y"

    iget v4, p0, Lcom/bytedance/sdk/openadsdk/core/d/e;->f:I

    .line 99
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "up_x"

    iget v4, p0, Lcom/bytedance/sdk/openadsdk/core/d/e;->g:I

    .line 100
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "up_y"

    iget v4, p0, Lcom/bytedance/sdk/openadsdk/core/d/e;->h:I

    .line 101
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "down_time"

    iget-wide v4, p0, Lcom/bytedance/sdk/openadsdk/core/d/e;->i:J

    .line 102
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "up_time"

    iget-wide v4, p0, Lcom/bytedance/sdk/openadsdk/core/d/e;->j:J

    .line 103
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "toolType"

    iget v4, p0, Lcom/bytedance/sdk/openadsdk/core/d/e;->k:I

    .line 104
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "deviceId"

    iget v4, p0, Lcom/bytedance/sdk/openadsdk/core/d/e;->l:I

    .line 105
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "source"

    iget v4, p0, Lcom/bytedance/sdk/openadsdk/core/d/e;->m:I

    .line 106
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "ft"

    .line 107
    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_17d
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_17d} :catch_17e

    .line 111
    :goto_17d
    return-object v2

    .line 109
    :catch_17e
    move-exception v0

    goto :goto_17d
.end method
