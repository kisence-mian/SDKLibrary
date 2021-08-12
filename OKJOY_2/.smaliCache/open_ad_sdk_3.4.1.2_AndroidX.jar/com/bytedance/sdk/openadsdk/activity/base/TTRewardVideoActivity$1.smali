.class Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardVideoActivity$1;
.super Ljava/lang/Object;
.source "TTRewardVideoActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardVideoActivity;->a(Ljava/lang/String;ZILjava/lang/String;ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Z

.field final synthetic c:I

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:I

.field final synthetic f:Ljava/lang/String;

.field final synthetic g:Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardVideoActivity;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardVideoActivity;Ljava/lang/String;ZILjava/lang/String;ILjava/lang/String;)V
    .registers 8

    .line 150
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardVideoActivity$1;->g:Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardVideoActivity;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardVideoActivity$1;->a:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardVideoActivity$1;->b:Z

    iput p4, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardVideoActivity$1;->c:I

    iput-object p5, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardVideoActivity$1;->d:Ljava/lang/String;

    iput p6, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardVideoActivity$1;->e:I

    iput-object p7, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardVideoActivity$1;->f:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 11

    .line 154
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardVideoActivity$1;->g:Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardVideoActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardVideoActivity;->b(I)Lcom/bytedance/sdk/openadsdk/IListenerManager;

    move-result-object v2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardVideoActivity$1;->g:Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardVideoActivity;

    iget-object v3, v0, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardVideoActivity;->u:Ljava/lang/String;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardVideoActivity$1;->a:Ljava/lang/String;

    iget-boolean v5, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardVideoActivity$1;->b:Z

    iget v6, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardVideoActivity$1;->c:I

    iget-object v7, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardVideoActivity$1;->d:Ljava/lang/String;

    iget v8, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardVideoActivity$1;->e:I

    iget-object v9, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardVideoActivity$1;->f:Ljava/lang/String;

    invoke-interface/range {v2 .. v9}, Lcom/bytedance/sdk/openadsdk/IListenerManager;->executeRewardVideoCallback(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;ILjava/lang/String;)V
    :try_end_1a
    .catchall {:try_start_0 .. :try_end_1a} :catchall_1b

    .line 157
    goto :goto_23

    .line 155
    :catchall_1b
    move-exception v0

    .line 156
    const-string v1, "TTRewardVideoActivity"

    const-string v2, "executeRewardVideoCallback execute throw Exception : "

    invoke-static {v1, v2, v0}, Lcom/bytedance/sdk/openadsdk/utils/u;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 158
    :goto_23
    return-void
.end method
