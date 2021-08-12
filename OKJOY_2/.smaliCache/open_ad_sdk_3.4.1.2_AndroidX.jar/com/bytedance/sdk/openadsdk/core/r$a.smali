.class public Lcom/bytedance/sdk/openadsdk/core/r$a;
.super Ljava/lang/Object;
.source "NetApiImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/core/r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field final a:I

.field final b:J

.field final c:J

.field final d:I

.field final e:Ljava/lang/String;

.field final f:I

.field final g:Ljava/lang/String;

.field public final h:Lcom/bytedance/sdk/openadsdk/core/d/a;

.field final i:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;ILjava/lang/String;Lcom/bytedance/sdk/openadsdk/core/d/a;JJ)V
    .registers 12

    .line 1197
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1198
    iput p2, p0, Lcom/bytedance/sdk/openadsdk/core/r$a;->a:I

    .line 1199
    iput p3, p0, Lcom/bytedance/sdk/openadsdk/core/r$a;->d:I

    .line 1200
    iput-object p4, p0, Lcom/bytedance/sdk/openadsdk/core/r$a;->e:Ljava/lang/String;

    .line 1201
    iput-object p6, p0, Lcom/bytedance/sdk/openadsdk/core/r$a;->g:Ljava/lang/String;

    .line 1202
    iput-object p7, p0, Lcom/bytedance/sdk/openadsdk/core/r$a;->h:Lcom/bytedance/sdk/openadsdk/core/d/a;

    .line 1203
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/r$a;->i:Ljava/lang/String;

    .line 1204
    iput p5, p0, Lcom/bytedance/sdk/openadsdk/core/r$a;->f:I

    .line 1205
    iput-wide p8, p0, Lcom/bytedance/sdk/openadsdk/core/r$a;->b:J

    .line 1206
    iput-wide p10, p0, Lcom/bytedance/sdk/openadsdk/core/r$a;->c:J

    .line 1207
    return-void
.end method

.method public static a(Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/core/r$a;
    .registers 2

    .line 1210
    const/4 v0, 0x0

    invoke-static {p0, v0, v0}, Lcom/bytedance/sdk/openadsdk/core/r$a;->a(Lorg/json/JSONObject;Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/core/d/m;)Lcom/bytedance/sdk/openadsdk/core/r$a;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lorg/json/JSONObject;Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/core/d/m;)Lcom/bytedance/sdk/openadsdk/core/r$a;
    .registers 16

    .line 1214
    const-string v0, "did"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1215
    const-string v0, "processing_time_ms"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    .line 1216
    const-string v0, "s_receive_ts"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v9

    .line 1217
    const-string v0, "s_send_ts"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v11

    .line 1218
    const-string v0, "status_code"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    .line 1219
    const-string v0, "desc"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1220
    const-string v0, "request_id"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1221
    const-string v0, "reason"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v6

    .line 1222
    invoke-static {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/c;->a(Lorg/json/JSONObject;Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/core/d/m;)Lcom/bytedance/sdk/openadsdk/core/d/a;

    move-result-object v8

    .line 1223
    if-eqz v8, :cond_3f

    .line 1225
    const-string p1, "request_after"

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide p0

    invoke-virtual {v8, p0, p1}, Lcom/bytedance/sdk/openadsdk/core/d/a;->a(J)V

    .line 1227
    :cond_3f
    new-instance p0, Lcom/bytedance/sdk/openadsdk/core/r$a;

    move-object v1, p0

    invoke-direct/range {v1 .. v12}, Lcom/bytedance/sdk/openadsdk/core/r$a;-><init>(Ljava/lang/String;IILjava/lang/String;ILjava/lang/String;Lcom/bytedance/sdk/openadsdk/core/d/a;JJ)V

    return-object p0
.end method
