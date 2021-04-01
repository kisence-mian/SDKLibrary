.class public Lcom/bytedance/sdk/openadsdk/core/d/l;
.super Ljava/lang/Object;
.source "NetExtParams.java"


# instance fields
.field public final a:Ljava/lang/String;

.field public b:I

.field public c:I

.field public d:Lorg/json/JSONArray;

.field public e:I

.field public f:J

.field public g:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/ah;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/l;->a:Ljava/lang/String;

    .line 14
    iput v1, p0, Lcom/bytedance/sdk/openadsdk/core/d/l;->b:I

    .line 15
    iput v1, p0, Lcom/bytedance/sdk/openadsdk/core/d/l;->c:I

    .line 17
    iput-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/d/l;->d:Lorg/json/JSONArray;

    .line 18
    const/4 v0, 0x1

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/l;->e:I

    .line 22
    iput-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/d/l;->g:Lorg/json/JSONObject;

    return-void
.end method


# virtual methods
.method public a()Lcom/bytedance/sdk/openadsdk/core/d/l;
    .registers 5

    .prologue
    .line 25
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/core/d/l;-><init>()V

    .line 26
    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/d/l;->b:I

    iput v1, v0, Lcom/bytedance/sdk/openadsdk/core/d/l;->b:I

    .line 27
    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/d/l;->c:I

    iput v1, v0, Lcom/bytedance/sdk/openadsdk/core/d/l;->c:I

    .line 28
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/d/l;->d:Lorg/json/JSONArray;

    iput-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/d/l;->d:Lorg/json/JSONArray;

    .line 29
    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/d/l;->e:I

    iput v1, v0, Lcom/bytedance/sdk/openadsdk/core/d/l;->e:I

    .line 30
    iget-wide v2, p0, Lcom/bytedance/sdk/openadsdk/core/d/l;->f:J

    iput-wide v2, v0, Lcom/bytedance/sdk/openadsdk/core/d/l;->f:J

    .line 31
    return-object v0
.end method
