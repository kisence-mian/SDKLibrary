.class public Lcom/bytedance/sdk/openadsdk/preload/geckox/model/CheckRequestBodyModel$Channels;
.super Ljava/lang/Object;
.source "CheckRequestBodyModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/preload/geckox/model/CheckRequestBodyModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Channels"
.end annotation


# instance fields
.field public channels:Ljava/util/List;
    .annotation runtime Lcom/bytedance/sdk/openadsdk/preload/a/a/c;
        a = "channels"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/openadsdk/preload/geckox/model/CheckRequestBodyModel$Channel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 164
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 165
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/model/CheckRequestBodyModel$Channels;->channels:Ljava/util/List;

    return-void
.end method
