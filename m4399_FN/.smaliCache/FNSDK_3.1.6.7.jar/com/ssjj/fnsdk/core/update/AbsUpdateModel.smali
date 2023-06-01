.class public abstract Lcom/ssjj/fnsdk/core/update/AbsUpdateModel;
.super Ljava/lang/Object;


# instance fields
.field protected a:I

.field protected b:Z


# direct methods
.method constructor <init>(I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/ssjj/fnsdk/core/update/AbsUpdateModel;->a:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ssjj/fnsdk/core/update/AbsUpdateModel;->b:Z

    iput p1, p0, Lcom/ssjj/fnsdk/core/update/AbsUpdateModel;->a:I

    return-void
.end method


# virtual methods
.method a(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/ssjj/fnsdk/core/update/AbsUpdateModel;->b:Z

    return-void
.end method

.method abstract clearDownload()V
.end method

.method abstract getSpendTime(Landroid/content/Context;)J
.end method

.method abstract isDownloading()Z
.end method

.method abstract startDownload(Landroid/content/Context;Lcom/ssjj/fnsdk/core/update/FNDownloadItem;Lcom/ssjj/fnsdk/core/SsjjFNListener;)V
.end method

.method abstract stopDownload()V
.end method
