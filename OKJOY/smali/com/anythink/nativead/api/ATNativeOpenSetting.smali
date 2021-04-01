.class public Lcom/anythink/nativead/api/ATNativeOpenSetting;
.super Ljava/lang/Object;


# instance fields
.field public autoRefreshTime:J

.field public isAutoRefresh:Z


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/anythink/nativead/api/ATNativeOpenSetting;->isAutoRefresh:Z

    .line 5
    const-wide/16 v0, 0x4e20

    iput-wide v0, p0, Lcom/anythink/nativead/api/ATNativeOpenSetting;->autoRefreshTime:J

    return-void
.end method
