.class final Lcom/mintegral/msdk/mtgnative/c/b$10;
.super Ljava/lang/Object;
.source "NativeController.java"

# interfaces
.implements Lcom/mintegral/msdk/mtgnative/c/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mintegral/msdk/mtgnative/c/b;
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
    .line 1730
    iput-object p1, p0, Lcom/mintegral/msdk/mtgnative/c/b$10;->b:Lcom/mintegral/msdk/mtgnative/c/b;

    iput-object p2, p0, Lcom/mintegral/msdk/mtgnative/c/b$10;->a:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/ArrayList;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1734
    invoke-static {}, Lcom/mintegral/msdk/mtgnative/c/b;->c()Ljava/lang/String;

    move-result-object v0

    const-string v1, "trackView onVisibilityChanged"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1735
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2f

    .line 1736
    invoke-static {}, Lcom/mintegral/msdk/mtgnative/c/b;->c()Ljava/lang/String;

    move-result-object v0

    const-string v1, "trackView send"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1738
    iget-object v0, p0, Lcom/mintegral/msdk/mtgnative/c/b$10;->a:Lcom/mintegral/msdk/base/entity/CampaignEx;

    iget-object v1, p0, Lcom/mintegral/msdk/mtgnative/c/b$10;->b:Lcom/mintegral/msdk/mtgnative/c/b;

    invoke-static {v1}, Lcom/mintegral/msdk/mtgnative/c/b;->j(Lcom/mintegral/msdk/mtgnative/c/b;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/mintegral/msdk/mtgnative/c/b$10;->b:Lcom/mintegral/msdk/mtgnative/c/b;

    invoke-static {v2}, Lcom/mintegral/msdk/mtgnative/c/b;->c(Lcom/mintegral/msdk/mtgnative/c/b;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/mintegral/msdk/mtgnative/c/b$10;->b:Lcom/mintegral/msdk/mtgnative/c/b;

    invoke-static {v3}, Lcom/mintegral/msdk/mtgnative/c/b;->h(Lcom/mintegral/msdk/mtgnative/c/b;)Lcom/mintegral/msdk/mtgnative/d/a;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/mintegral/msdk/mtgnative/e/b;->a(Lcom/mintegral/msdk/base/entity/CampaignEx;Landroid/content/Context;Ljava/lang/String;Lcom/mintegral/msdk/mtgnative/d/a;)V

    .line 1740
    :cond_2f
    return-void
.end method
