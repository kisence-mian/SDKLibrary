.class Lcom/bytedance/sdk/openadsdk/c/p$7;
.super Lcom/bytedance/sdk/openadsdk/j/g;
.source "WebviewTimeTrack.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/c/p;->a(Ljava/lang/String;JJI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:J

.field final synthetic c:J

.field final synthetic d:I

.field final synthetic e:Lcom/bytedance/sdk/openadsdk/c/p;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/c/p;Ljava/lang/String;JJI)V
    .registers 8

    .line 270
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/c/p$7;->e:Lcom/bytedance/sdk/openadsdk/c/p;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/c/p$7;->a:Ljava/lang/String;

    iput-wide p3, p0, Lcom/bytedance/sdk/openadsdk/c/p$7;->b:J

    iput-wide p5, p0, Lcom/bytedance/sdk/openadsdk/c/p$7;->c:J

    iput p7, p0, Lcom/bytedance/sdk/openadsdk/c/p$7;->d:I

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/j/g;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    .line 273
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/c/p$7;->e:Lcom/bytedance/sdk/openadsdk/c/p;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/c/p;->a(Lcom/bytedance/sdk/openadsdk/c/p;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 274
    :try_start_7
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/c/p$7;->a:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_71

    iget-wide v1, p0, Lcom/bytedance/sdk/openadsdk/c/p$7;->b:J

    iget-wide v3, p0, Lcom/bytedance/sdk/openadsdk/c/p$7;->c:J

    cmp-long v1, v1, v3

    if-gez v1, :cond_18

    goto :goto_71

    .line 277
    :cond_18
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 278
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/c/p$7;->e:Lcom/bytedance/sdk/openadsdk/c/p;

    const-string v3, "start_ts"

    iget-wide v4, p0, Lcom/bytedance/sdk/openadsdk/c/p$7;->c:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v2, v1, v3, v4}, Lcom/bytedance/sdk/openadsdk/c/p;->a(Lcom/bytedance/sdk/openadsdk/c/p;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 279
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/c/p$7;->e:Lcom/bytedance/sdk/openadsdk/c/p;

    const-string v3, "end_ts"

    iget-wide v4, p0, Lcom/bytedance/sdk/openadsdk/c/p$7;->b:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v2, v1, v3, v4}, Lcom/bytedance/sdk/openadsdk/c/p;->a(Lcom/bytedance/sdk/openadsdk/c/p;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 280
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/c/p$7;->e:Lcom/bytedance/sdk/openadsdk/c/p;

    const-string v3, "intercept_type"

    iget v4, p0, Lcom/bytedance/sdk/openadsdk/c/p$7;->d:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v2, v1, v3, v4}, Lcom/bytedance/sdk/openadsdk/c/p;->a(Lcom/bytedance/sdk/openadsdk/c/p;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 281
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/c/p$7;->e:Lcom/bytedance/sdk/openadsdk/c/p;

    const-string v3, "type"

    const-string v4, "intercept_html"

    invoke-static {v2, v1, v3, v4}, Lcom/bytedance/sdk/openadsdk/c/p;->a(Lcom/bytedance/sdk/openadsdk/c/p;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 282
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/c/p$7;->e:Lcom/bytedance/sdk/openadsdk/c/p;

    const-string v3, "url"

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/c/p$7;->a:Ljava/lang/String;

    invoke-static {v2, v1, v3, v4}, Lcom/bytedance/sdk/openadsdk/c/p;->a(Lcom/bytedance/sdk/openadsdk/c/p;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 283
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/c/p$7;->e:Lcom/bytedance/sdk/openadsdk/c/p;

    const-string v3, "duration"

    iget-wide v4, p0, Lcom/bytedance/sdk/openadsdk/c/p$7;->b:J

    iget-wide v6, p0, Lcom/bytedance/sdk/openadsdk/c/p$7;->c:J

    sub-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v2, v1, v3, v4}, Lcom/bytedance/sdk/openadsdk/c/p;->a(Lcom/bytedance/sdk/openadsdk/c/p;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 284
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/c/p$7;->e:Lcom/bytedance/sdk/openadsdk/c/p;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/c/p;->d(Lcom/bytedance/sdk/openadsdk/c/p;)Lorg/json/JSONArray;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lcom/bytedance/sdk/openadsdk/c/p;->a(Lcom/bytedance/sdk/openadsdk/c/p;Lorg/json/JSONArray;Ljava/lang/Object;)V

    .line 285
    monitor-exit v0

    .line 286
    return-void

    .line 275
    :cond_71
    :goto_71
    monitor-exit v0

    return-void

    .line 285
    :catchall_73
    move-exception v1

    monitor-exit v0
    :try_end_75
    .catchall {:try_start_7 .. :try_end_75} :catchall_73

    throw v1
.end method
