.class public Lcom/bytedance/sdk/openadsdk/core/q$a;
.super Ljava/lang/Object;
.source "NetApiImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/core/q;
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
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field final i:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;ILjava/lang/String;Lcom/bytedance/sdk/openadsdk/core/d/a;JJ)V
    .registers 12
    .param p7    # Lcom/bytedance/sdk/openadsdk/core/d/a;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 985
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 986
    iput p2, p0, Lcom/bytedance/sdk/openadsdk/core/q$a;->a:I

    .line 987
    iput p3, p0, Lcom/bytedance/sdk/openadsdk/core/q$a;->d:I

    .line 988
    iput-object p4, p0, Lcom/bytedance/sdk/openadsdk/core/q$a;->e:Ljava/lang/String;

    .line 989
    iput-object p6, p0, Lcom/bytedance/sdk/openadsdk/core/q$a;->g:Ljava/lang/String;

    .line 990
    iput-object p7, p0, Lcom/bytedance/sdk/openadsdk/core/q$a;->h:Lcom/bytedance/sdk/openadsdk/core/d/a;

    .line 991
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/q$a;->i:Ljava/lang/String;

    .line 992
    iput p5, p0, Lcom/bytedance/sdk/openadsdk/core/q$a;->f:I

    .line 993
    iput-wide p8, p0, Lcom/bytedance/sdk/openadsdk/core/q$a;->b:J

    .line 994
    iput-wide p10, p0, Lcom/bytedance/sdk/openadsdk/core/q$a;->c:J

    .line 995
    return-void
.end method

.method public static a(Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/core/q$a;
    .registers 2

    .prologue
    .line 998
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/q$a;->a(Lorg/json/JSONObject;Lcom/bytedance/sdk/openadsdk/AdSlot;)Lcom/bytedance/sdk/openadsdk/core/q$a;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lorg/json/JSONObject;Lcom/bytedance/sdk/openadsdk/AdSlot;)Lcom/bytedance/sdk/openadsdk/core/q$a;
    .registers 16

    .prologue
    .line 1002
    const-string v0, "did"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1003
    const-string v0, "processing_time_ms"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    .line 1004
    const-string v0, "s_receive_ts"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v8

    .line 1005
    const-string v0, "s_send_ts"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v10

    .line 1006
    const-string v0, "status_code"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    .line 1007
    const-string v0, "desc"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1008
    const-string v0, "request_id"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1009
    const-string v0, "reason"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    .line 1010
    invoke-static {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/c;->a(Lorg/json/JSONObject;Lcom/bytedance/sdk/openadsdk/AdSlot;)Lcom/bytedance/sdk/openadsdk/core/d/a;

    move-result-object v7

    .line 1011
    if-eqz v7, :cond_3f

    .line 1013
    const-string v0, "request_after"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v12

    invoke-virtual {v7, v12, v13}, Lcom/bytedance/sdk/openadsdk/core/d/a;->a(J)V

    .line 1015
    :cond_3f
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/q$a;

    invoke-direct/range {v0 .. v11}, Lcom/bytedance/sdk/openadsdk/core/q$a;-><init>(Ljava/lang/String;IILjava/lang/String;ILjava/lang/String;Lcom/bytedance/sdk/openadsdk/core/d/a;JJ)V

    return-object v0
.end method
