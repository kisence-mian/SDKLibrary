.class public final Lcom/mintegral/msdk/base/entity/CampaignEx$b;
.super Ljava/lang/Object;
.source "CampaignEx.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mintegral/msdk/base/entity/CampaignEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public a:Z

.field public b:Z

.field public c:Z

.field public d:Z

.field public e:Z

.field public f:Z

.field public g:Z

.field public h:Z

.field public i:Z

.field public j:Z

.field public k:Z

.field public l:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 2406
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2407
    iput-boolean v0, p0, Lcom/mintegral/msdk/base/entity/CampaignEx$b;->a:Z

    .line 2408
    iput-boolean v0, p0, Lcom/mintegral/msdk/base/entity/CampaignEx$b;->b:Z

    .line 2409
    iput-boolean v0, p0, Lcom/mintegral/msdk/base/entity/CampaignEx$b;->c:Z

    .line 2410
    iput-boolean v0, p0, Lcom/mintegral/msdk/base/entity/CampaignEx$b;->d:Z

    .line 2411
    iput-boolean v0, p0, Lcom/mintegral/msdk/base/entity/CampaignEx$b;->e:Z

    .line 2412
    iput-boolean v0, p0, Lcom/mintegral/msdk/base/entity/CampaignEx$b;->f:Z

    .line 2413
    iput-boolean v0, p0, Lcom/mintegral/msdk/base/entity/CampaignEx$b;->g:Z

    .line 2414
    iput-boolean v0, p0, Lcom/mintegral/msdk/base/entity/CampaignEx$b;->h:Z

    .line 2415
    iput-boolean v0, p0, Lcom/mintegral/msdk/base/entity/CampaignEx$b;->i:Z

    .line 2416
    iput-boolean v0, p0, Lcom/mintegral/msdk/base/entity/CampaignEx$b;->j:Z

    .line 2417
    iput-boolean v0, p0, Lcom/mintegral/msdk/base/entity/CampaignEx$b;->k:Z

    return-void
.end method
