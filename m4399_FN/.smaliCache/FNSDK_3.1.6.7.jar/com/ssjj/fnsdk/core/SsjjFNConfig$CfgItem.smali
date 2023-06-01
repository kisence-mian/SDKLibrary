.class public Lcom/ssjj/fnsdk/core/SsjjFNConfig$CfgItem;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ssjj/fnsdk/core/SsjjFNConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CfgItem"
.end annotation


# instance fields
.field final synthetic a:Lcom/ssjj/fnsdk/core/SsjjFNConfig;

.field public enable:Ljava/lang/String;

.field public msg:Ljava/lang/String;

.field public servers:Ljava/lang/String;

.field public startTime:J


# direct methods
.method public constructor <init>(Lcom/ssjj/fnsdk/core/SsjjFNConfig;)V
    .registers 4

    iput-object p1, p0, Lcom/ssjj/fnsdk/core/SsjjFNConfig$CfgItem;->a:Lcom/ssjj/fnsdk/core/SsjjFNConfig;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string p1, ""

    iput-object p1, p0, Lcom/ssjj/fnsdk/core/SsjjFNConfig$CfgItem;->enable:Ljava/lang/String;

    iput-object p1, p0, Lcom/ssjj/fnsdk/core/SsjjFNConfig$CfgItem;->msg:Ljava/lang/String;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/ssjj/fnsdk/core/SsjjFNConfig$CfgItem;->startTime:J

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/ssjj/fnsdk/core/SsjjFNConfig$CfgItem;->servers:Ljava/lang/String;

    return-void
.end method
