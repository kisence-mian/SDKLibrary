.class public Lcom/bytedance/sdk/openadsdk/preload/geckox/model/ComponentModel;
.super Ljava/lang/Object;
.source "ComponentModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/preload/geckox/model/ComponentModel$a;,
        Lcom/bytedance/sdk/openadsdk/preload/geckox/model/ComponentModel$b;
    }
.end annotation


# instance fields
.field private packages:Ljava/util/Map;
    .annotation runtime Lcom/bytedance/sdk/openadsdk/preload/a/a/c;
        a = "packages"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/openadsdk/preload/geckox/model/UpdatePackage;",
            ">;>;"
        }
    .end annotation
.end field

.field private universalStrategies:Ljava/util/Map;
    .annotation runtime Lcom/bytedance/sdk/openadsdk/preload/a/a/c;
        a = "universal_strategies"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/bytedance/sdk/openadsdk/preload/geckox/model/ComponentModel$b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getPackages()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/openadsdk/preload/geckox/model/UpdatePackage;",
            ">;>;"
        }
    .end annotation

    .line 20
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/model/ComponentModel;->packages:Ljava/util/Map;

    return-object v0
.end method

.method public getUniversalStrategies()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/bytedance/sdk/openadsdk/preload/geckox/model/ComponentModel$b;",
            ">;"
        }
    .end annotation

    .line 24
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/model/ComponentModel;->universalStrategies:Ljava/util/Map;

    return-object v0
.end method
