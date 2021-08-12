.class public Lcom/bytedance/sdk/openadsdk/multipro/b/a;
.super Ljava/lang/Object;
.source "VideoControllerDataModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/multipro/b/a$a;
    }
.end annotation


# instance fields
.field public a:Z

.field public b:Z

.field public c:Z

.field public d:Z

.field public e:J

.field public f:J

.field public g:J


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/multipro/b/a;
    .registers 4

    .line 90
    if-nez p0, :cond_4

    .line 91
    const/4 p0, 0x0

    return-object p0

    .line 93
    :cond_4
    new-instance v0, Lcom/bytedance/sdk/openadsdk/multipro/b/a;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/multipro/b/a;-><init>()V

    .line 94
    const-string v1, "isCompleted"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/multipro/b/a;->b(Z)Lcom/bytedance/sdk/openadsdk/multipro/b/a;

    .line 95
    const-string v1, "isFromVideoDetailPage"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/multipro/b/a;->c(Z)Lcom/bytedance/sdk/openadsdk/multipro/b/a;

    .line 96
    const-string v1, "isFromDetailPage"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/multipro/b/a;->d(Z)Lcom/bytedance/sdk/openadsdk/multipro/b/a;

    .line 97
    const-string v1, "duration"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/multipro/b/a;->a(J)Lcom/bytedance/sdk/openadsdk/multipro/b/a;

    .line 98
    const-string v1, "totalPlayDuration"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/multipro/b/a;->b(J)Lcom/bytedance/sdk/openadsdk/multipro/b/a;

    .line 99
    const-string v1, "currentPlayPosition"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/multipro/b/a;->c(J)Lcom/bytedance/sdk/openadsdk/multipro/b/a;

    .line 100
    const-string v1, "isAutoPlay"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result p0

    invoke-virtual {v0, p0}, Lcom/bytedance/sdk/openadsdk/multipro/b/a;->a(Z)Lcom/bytedance/sdk/openadsdk/multipro/b/a;

    .line 101
    return-object v0
.end method


# virtual methods
.method public a(J)Lcom/bytedance/sdk/openadsdk/multipro/b/a;
    .registers 3

    .line 42
    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/multipro/b/a;->e:J

    .line 43
    return-object p0
.end method

.method public a(Z)Lcom/bytedance/sdk/openadsdk/multipro/b/a;
    .registers 2

    .line 22
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/multipro/b/a;->d:Z

    .line 23
    return-object p0
.end method

.method public a()Lorg/json/JSONObject;
    .registers 5

    .line 74
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 76
    :try_start_5
    const-string v1, "isCompleted"

    iget-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/multipro/b/a;->a:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 77
    const-string v1, "isFromVideoDetailPage"

    iget-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/multipro/b/a;->b:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 78
    const-string v1, "isFromDetailPage"

    iget-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/multipro/b/a;->c:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 79
    const-string v1, "duration"

    iget-wide v2, p0, Lcom/bytedance/sdk/openadsdk/multipro/b/a;->e:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 80
    const-string v1, "totalPlayDuration"

    iget-wide v2, p0, Lcom/bytedance/sdk/openadsdk/multipro/b/a;->f:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 81
    const-string v1, "currentPlayPosition"

    iget-wide v2, p0, Lcom/bytedance/sdk/openadsdk/multipro/b/a;->g:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 82
    const-string v1, "isAutoPlay"

    iget-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/multipro/b/a;->d:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_36} :catch_37

    .line 84
    goto :goto_38

    .line 83
    :catch_37
    move-exception v1

    .line 85
    :goto_38
    return-object v0
.end method

.method public b(J)Lcom/bytedance/sdk/openadsdk/multipro/b/a;
    .registers 3

    .line 47
    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/multipro/b/a;->f:J

    .line 48
    return-object p0
.end method

.method public b(Z)Lcom/bytedance/sdk/openadsdk/multipro/b/a;
    .registers 2

    .line 27
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/multipro/b/a;->a:Z

    .line 28
    return-object p0
.end method

.method public c(J)Lcom/bytedance/sdk/openadsdk/multipro/b/a;
    .registers 3

    .line 52
    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/multipro/b/a;->g:J

    .line 53
    return-object p0
.end method

.method public c(Z)Lcom/bytedance/sdk/openadsdk/multipro/b/a;
    .registers 2

    .line 32
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/multipro/b/a;->b:Z

    .line 33
    return-object p0
.end method

.method public d(Z)Lcom/bytedance/sdk/openadsdk/multipro/b/a;
    .registers 2

    .line 37
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/multipro/b/a;->c:Z

    .line 38
    return-object p0
.end method
