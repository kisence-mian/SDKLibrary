.class public Lcom/bytedance/sdk/openadsdk/preload/falconx/statistic/StatisticData;
.super Ljava/lang/Object;
.source "StatisticData.java"


# static fields
.field public static final ERROR_CODE_IO_ERROR:Ljava/lang/String; = "101"

.field public static final ERROR_CODE_NOT_FOUND:Ljava/lang/String; = "100"


# instance fields
.field public mCommon:Lcom/bytedance/sdk/openadsdk/preload/falconx/statistic/Common;
    .annotation runtime Lcom/bytedance/sdk/openadsdk/preload/a/a/c;
        a = "common"
    .end annotation
.end field

.field public offline:Ljava/util/List;
    .annotation runtime Lcom/bytedance/sdk/openadsdk/preload/a/a/c;
        a = "offline"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/openadsdk/preload/falconx/statistic/InterceptorModel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    return-void
.end method
