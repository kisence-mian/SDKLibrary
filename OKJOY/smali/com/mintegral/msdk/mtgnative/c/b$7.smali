.class final Lcom/mintegral/msdk/mtgnative/c/b$7;
.super Lcom/mintegral/msdk/widget/a;
.source "NativeController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mintegral/msdk/mtgnative/c/b;->a(Lcom/mintegral/msdk/out/Campaign;Landroid/view/View;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mintegral/msdk/base/entity/CampaignEx;

.field final synthetic b:Lcom/mintegral/msdk/mtgnative/c/b;


# direct methods
.method constructor <init>(Lcom/mintegral/msdk/mtgnative/c/b;Lcom/mintegral/msdk/base/entity/CampaignEx;)V
    .registers 3

    .prologue
    .line 1370
    iput-object p1, p0, Lcom/mintegral/msdk/mtgnative/c/b$7;->b:Lcom/mintegral/msdk/mtgnative/c/b;

    iput-object p2, p0, Lcom/mintegral/msdk/mtgnative/c/b$7;->a:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-direct {p0}, Lcom/mintegral/msdk/widget/a;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a()V
    .registers 4

    .prologue
    .line 1374
    iget-object v0, p0, Lcom/mintegral/msdk/mtgnative/c/b$7;->b:Lcom/mintegral/msdk/mtgnative/c/b;

    invoke-static {v0}, Lcom/mintegral/msdk/mtgnative/c/b;->g(Lcom/mintegral/msdk/mtgnative/c/b;)Lcom/mintegral/msdk/click/a;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/mintegral/msdk/click/a;->a:Z

    .line 1375
    iget-object v0, p0, Lcom/mintegral/msdk/mtgnative/c/b$7;->b:Lcom/mintegral/msdk/mtgnative/c/b;

    invoke-static {v0}, Lcom/mintegral/msdk/mtgnative/c/b;->g(Lcom/mintegral/msdk/mtgnative/c/b;)Lcom/mintegral/msdk/click/a;

    move-result-object v0

    iget-object v1, p0, Lcom/mintegral/msdk/mtgnative/c/b$7;->a:Lcom/mintegral/msdk/base/entity/CampaignEx;

    iget-object v2, p0, Lcom/mintegral/msdk/mtgnative/c/b$7;->b:Lcom/mintegral/msdk/mtgnative/c/b;

    invoke-static {v2}, Lcom/mintegral/msdk/mtgnative/c/b;->h(Lcom/mintegral/msdk/mtgnative/c/b;)Lcom/mintegral/msdk/mtgnative/d/a;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/mintegral/msdk/click/a;->a(Lcom/mintegral/msdk/base/entity/CampaignEx;Lcom/mintegral/msdk/out/NativeListener$NativeAdListener;)V

    .line 1376
    iget-object v0, p0, Lcom/mintegral/msdk/mtgnative/c/b$7;->b:Lcom/mintegral/msdk/mtgnative/c/b;

    iget-object v1, p0, Lcom/mintegral/msdk/mtgnative/c/b$7;->a:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-static {v0, v1}, Lcom/mintegral/msdk/mtgnative/c/b;->a(Lcom/mintegral/msdk/mtgnative/c/b;Lcom/mintegral/msdk/base/entity/CampaignEx;)V

    .line 1377
    return-void
.end method
