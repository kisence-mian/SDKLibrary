.class public Lcom/bytedance/sdk/openadsdk/dislike/b;
.super Ljava/lang/Object;
.source "TTAdDislikeImpl.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/TTAdDislike;


# instance fields
.field private final a:Landroid/content/Context;

.field private b:Lcom/bytedance/sdk/openadsdk/core/d/k;

.field private c:Lcom/bytedance/sdk/openadsdk/dislike/c;

.field private d:Lcom/bytedance/sdk/openadsdk/TTAdDislike$DislikeInteractionCallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/k;)V
    .registers 4

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const-string v0, "Dislike \u521d\u59cb\u5316\u5fc5\u987b\u4f7f\u7528activity,\u8bf7\u5728TTAdManager.createAdNative(activity)\u4e2d\u4f20\u5165"

    invoke-static {p1, v0}, Lcom/bytedance/sdk/openadsdk/utils/y;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 28
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/dislike/b;->a:Landroid/content/Context;

    .line 29
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/dislike/b;->b:Lcom/bytedance/sdk/openadsdk/core/d/k;

    .line 30
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/dislike/b;->a()V

    .line 31
    return-void
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/dislike/b;)Lcom/bytedance/sdk/openadsdk/TTAdDislike$DislikeInteractionCallback;
    .registers 2

    .prologue
    .line 16
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/dislike/b;->d:Lcom/bytedance/sdk/openadsdk/TTAdDislike$DislikeInteractionCallback;

    return-object v0
.end method

.method private a()V
    .registers 4

    .prologue
    .line 35
    new-instance v0, Lcom/bytedance/sdk/openadsdk/dislike/c;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/dislike/b;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/dislike/b;->b:Lcom/bytedance/sdk/openadsdk/core/d/k;

    invoke-direct {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/dislike/c;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/k;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/dislike/b;->c:Lcom/bytedance/sdk/openadsdk/dislike/c;

    .line 36
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/dislike/b;->c:Lcom/bytedance/sdk/openadsdk/dislike/c;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/dislike/b$1;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/dislike/b$1;-><init>(Lcom/bytedance/sdk/openadsdk/dislike/b;)V

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/dislike/c;->a(Lcom/bytedance/sdk/openadsdk/dislike/c$a;)V

    .line 81
    return-void
.end method


# virtual methods
.method public a(Lcom/bytedance/sdk/openadsdk/core/d/k;)V
    .registers 3

    .prologue
    .line 92
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/dislike/b;->c:Lcom/bytedance/sdk/openadsdk/dislike/c;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/dislike/c;->a(Lcom/bytedance/sdk/openadsdk/core/d/k;)V

    .line 93
    return-void
.end method

.method public setDislikeInteractionCallback(Lcom/bytedance/sdk/openadsdk/TTAdDislike$DislikeInteractionCallback;)V
    .registers 2

    .prologue
    .line 97
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/dislike/b;->d:Lcom/bytedance/sdk/openadsdk/TTAdDislike$DislikeInteractionCallback;

    .line 98
    return-void
.end method

.method public showDislikeDialog()V
    .registers 2

    .prologue
    .line 85
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/dislike/b;->a:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/dislike/b;->a:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_19

    const/4 v0, 0x1

    .line 86
    :goto_11
    if-eqz v0, :cond_18

    .line 87
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/dislike/b;->c:Lcom/bytedance/sdk/openadsdk/dislike/c;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/dislike/c;->show()V

    .line 89
    :cond_18
    return-void

    .line 85
    :cond_19
    const/4 v0, 0x0

    goto :goto_11
.end method
