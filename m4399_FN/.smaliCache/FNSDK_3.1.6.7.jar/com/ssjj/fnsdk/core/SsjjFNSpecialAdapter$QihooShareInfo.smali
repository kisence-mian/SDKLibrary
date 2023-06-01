.class public Lcom/ssjj/fnsdk/core/SsjjFNSpecialAdapter$QihooShareInfo;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ssjj/fnsdk/core/SsjjFNSpecialAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "QihooShareInfo"
.end annotation


# instance fields
.field public bgImg:Ljava/lang/String;

.field public desc:Ljava/lang/String;

.field public icon:Ljava/lang/String;

.field public isLandScape:Z

.field public picture:Ljava/lang/String;

.field public title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/ssjj/fnsdk/core/SsjjFNSpecialAdapter$QihooShareInfo;->title:Ljava/lang/String;

    iput-object v0, p0, Lcom/ssjj/fnsdk/core/SsjjFNSpecialAdapter$QihooShareInfo;->desc:Ljava/lang/String;

    iput-object v0, p0, Lcom/ssjj/fnsdk/core/SsjjFNSpecialAdapter$QihooShareInfo;->picture:Ljava/lang/String;

    iput-object v0, p0, Lcom/ssjj/fnsdk/core/SsjjFNSpecialAdapter$QihooShareInfo;->icon:Ljava/lang/String;

    iput-object v0, p0, Lcom/ssjj/fnsdk/core/SsjjFNSpecialAdapter$QihooShareInfo;->bgImg:Ljava/lang/String;

    return-void
.end method
