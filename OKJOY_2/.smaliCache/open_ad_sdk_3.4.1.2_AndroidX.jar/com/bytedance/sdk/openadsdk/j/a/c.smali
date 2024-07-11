.class public Lcom/bytedance/sdk/openadsdk/j/a/c;
.super Ljava/lang/Object;
.source "ThreadPoolLogModel.java"


# instance fields
.field private final a:Ljava/lang/String;

.field private b:I

.field private c:I

.field private d:I

.field private e:J

.field private f:J

.field private g:J

.field private h:J

.field private i:I


# direct methods
.method public constructor <init>(Ljava/lang/String;IIJJJJI)V
    .registers 16

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const/4 v0, 0x0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/j/a/c;->b:I

    .line 22
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/j/a/c;->c:I

    .line 26
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/bytedance/sdk/openadsdk/j/a/c;->e:J

    .line 27
    iput-wide v1, p0, Lcom/bytedance/sdk/openadsdk/j/a/c;->f:J

    .line 29
    iput-wide v1, p0, Lcom/bytedance/sdk/openadsdk/j/a/c;->g:J

    .line 30
    iput-wide v1, p0, Lcom/bytedance/sdk/openadsdk/j/a/c;->h:J

    .line 32
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/j/a/c;->i:I

    .line 64
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/j/a/c;->a:Ljava/lang/String;

    .line 65
    iput p2, p0, Lcom/bytedance/sdk/openadsdk/j/a/c;->b:I

    .line 66
    iput p3, p0, Lcom/bytedance/sdk/openadsdk/j/a/c;->c:I

    .line 67
    iput-wide p4, p0, Lcom/bytedance/sdk/openadsdk/j/a/c;->e:J

    .line 68
    iput-wide p6, p0, Lcom/bytedance/sdk/openadsdk/j/a/c;->f:J

    .line 69
    iput-wide p8, p0, Lcom/bytedance/sdk/openadsdk/j/a/c;->g:J

    .line 70
    iput-wide p10, p0, Lcom/bytedance/sdk/openadsdk/j/a/c;->h:J

    .line 71
    iput p12, p0, Lcom/bytedance/sdk/openadsdk/j/a/c;->i:I

    .line 72
    return-void
.end method


# virtual methods
.method public a()Lorg/json/JSONObject;
    .registers 8

    .line 36
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 39
    const/4 v1, 0x0

    :try_start_6
    iget v2, p0, Lcom/bytedance/sdk/openadsdk/j/a/c;->i:I

    if-gtz v2, :cond_b

    .line 40
    return-object v1

    .line 42
    :cond_b
    const-string v2, "poolType"

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/j/a/c;->a:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 43
    const-string v2, "corePoolSize"

    iget v3, p0, Lcom/bytedance/sdk/openadsdk/j/a/c;->b:I

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 44
    const-string v2, "maximumPoolSize"

    iget v3, p0, Lcom/bytedance/sdk/openadsdk/j/a/c;->c:I

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 45
    const-string v2, "largestPoolSize"

    iget v3, p0, Lcom/bytedance/sdk/openadsdk/j/a/c;->d:I

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 47
    const-string v2, "waitLargestTime"

    iget-wide v3, p0, Lcom/bytedance/sdk/openadsdk/j/a/c;->e:J

    invoke-virtual {v0, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 48
    const-string v2, "waitAvgTime"

    iget-wide v3, p0, Lcom/bytedance/sdk/openadsdk/j/a/c;->f:J

    long-to-float v3, v3

    const/high16 v4, 0x3f800000    # 1.0f

    mul-float/2addr v3, v4

    iget v5, p0, Lcom/bytedance/sdk/openadsdk/j/a/c;->i:I

    int-to-float v5, v5

    div-float/2addr v3, v5

    float-to-long v5, v3

    invoke-virtual {v0, v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 49
    const-string v2, "taskCostLargestTime"

    iget-wide v5, p0, Lcom/bytedance/sdk/openadsdk/j/a/c;->g:J

    invoke-virtual {v0, v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 50
    const-string v2, "taskCostAvgTime"

    iget-wide v5, p0, Lcom/bytedance/sdk/openadsdk/j/a/c;->h:J

    long-to-float v3, v5

    mul-float/2addr v3, v4

    iget v4, p0, Lcom/bytedance/sdk/openadsdk/j/a/c;->i:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    float-to-long v3, v3

    invoke-virtual {v0, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 52
    const-string v2, "logCount"

    iget v3, p0, Lcom/bytedance/sdk/openadsdk/j/a/c;->i:I

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_5a
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_5a} :catch_5c

    .line 59
    nop

    .line 60
    return-object v0

    .line 56
    :catch_5c
    move-exception v0

    .line 57
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 58
    return-object v1
.end method

.method public a(I)V
    .registers 3

    .line 110
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/j/a/c;->i:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/j/a/c;->i:I

    .line 111
    return-void
.end method

.method public a(J)V
    .registers 3

    .line 84
    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/j/a/c;->e:J

    .line 85
    return-void
.end method

.method public b()Ljava/lang/String;
    .registers 2

    .line 75
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/j/a/c;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b(I)V
    .registers 2

    .line 118
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/j/a/c;->d:I

    .line 119
    return-void
.end method

.method public b(J)V
    .registers 5

    .line 89
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/j/a/c;->f:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/j/a/c;->f:J

    .line 90
    return-void
.end method

.method public c()J
    .registers 3

    .line 80
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/j/a/c;->e:J

    return-wide v0
.end method

.method public c(J)V
    .registers 3

    .line 97
    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/j/a/c;->g:J

    .line 98
    return-void
.end method

.method public d()J
    .registers 3

    .line 93
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/j/a/c;->g:J

    return-wide v0
.end method

.method public d(J)V
    .registers 5

    .line 102
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/j/a/c;->h:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/j/a/c;->h:J

    .line 103
    return-void
.end method

.method public e()I
    .registers 2

    .line 106
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/j/a/c;->i:I

    return v0
.end method
