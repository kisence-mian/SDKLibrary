.class final Lcom/mintegral/msdk/base/utils/j$3;
.super Ljava/lang/Object;
.source "CommonSDKUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mintegral/msdk/base/utils/j;->a(Lcom/mintegral/msdk/base/entity/CampaignEx;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mintegral/msdk/base/entity/CampaignEx;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Z


# direct methods
.method constructor <init>(Lcom/mintegral/msdk/base/entity/CampaignEx;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 656
    iput-object p1, p0, Lcom/mintegral/msdk/base/utils/j$3;->a:Lcom/mintegral/msdk/base/entity/CampaignEx;

    iput-object p2, p0, Lcom/mintegral/msdk/base/utils/j$3;->b:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mintegral/msdk/base/utils/j$3;->c:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    .prologue
    .line 658
    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/controller/a;->h()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/mintegral/msdk/base/utils/j$3;->a:Lcom/mintegral/msdk/base/entity/CampaignEx;

    iget-object v2, p0, Lcom/mintegral/msdk/base/utils/j$3;->b:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/mintegral/msdk/base/utils/j$3;->c:Z

    invoke-static {v0, v1, v2, v3}, Lcom/mintegral/msdk/base/utils/j;->a(Landroid/content/Context;Lcom/mintegral/msdk/base/entity/CampaignEx;Ljava/lang/String;Z)V

    .line 659
    return-void
.end method
