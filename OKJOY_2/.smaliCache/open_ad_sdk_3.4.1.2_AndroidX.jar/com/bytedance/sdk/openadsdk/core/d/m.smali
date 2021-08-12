.class public Lcom/bytedance/sdk/openadsdk/core/d/m;
.super Ljava/lang/Object;
.source "NetExtParams.java"


# instance fields
.field public final a:Ljava/lang/String;

.field public b:I

.field public c:I

.field public d:Lorg/json/JSONArray;

.field public e:I

.field public f:J

.field public g:J

.field public h:J

.field public i:J

.field public j:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/aj;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/m;->a:Ljava/lang/String;

    .line 14
    const/4 v0, -0x1

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/m;->b:I

    .line 15
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/m;->c:I

    .line 17
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/m;->d:Lorg/json/JSONArray;

    .line 18
    const/4 v1, 0x1

    iput v1, p0, Lcom/bytedance/sdk/openadsdk/core/d/m;->e:I

    .line 25
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/m;->j:Lorg/json/JSONObject;

    return-void
.end method


# virtual methods
.method public a()Lcom/bytedance/sdk/openadsdk/core/d/m;
    .registers 4

    .line 28
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/d/m;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/core/d/m;-><init>()V

    .line 29
    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/d/m;->b:I

    iput v1, v0, Lcom/bytedance/sdk/openadsdk/core/d/m;->b:I

    .line 30
    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/d/m;->c:I

    iput v1, v0, Lcom/bytedance/sdk/openadsdk/core/d/m;->c:I

    .line 31
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/d/m;->d:Lorg/json/JSONArray;

    iput-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/d/m;->d:Lorg/json/JSONArray;

    .line 32
    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/d/m;->e:I

    iput v1, v0, Lcom/bytedance/sdk/openadsdk/core/d/m;->e:I

    .line 33
    iget-wide v1, p0, Lcom/bytedance/sdk/openadsdk/core/d/m;->f:J

    iput-wide v1, v0, Lcom/bytedance/sdk/openadsdk/core/d/m;->f:J

    .line 34
    iget-wide v1, p0, Lcom/bytedance/sdk/openadsdk/core/d/m;->g:J

    iput-wide v1, v0, Lcom/bytedance/sdk/openadsdk/core/d/m;->g:J

    .line 35
    iget-wide v1, p0, Lcom/bytedance/sdk/openadsdk/core/d/m;->h:J

    iput-wide v1, v0, Lcom/bytedance/sdk/openadsdk/core/d/m;->h:J

    .line 36
    iget-wide v1, p0, Lcom/bytedance/sdk/openadsdk/core/d/m;->i:J

    iput-wide v1, v0, Lcom/bytedance/sdk/openadsdk/core/d/m;->i:J

    .line 37
    return-object v0
.end method
