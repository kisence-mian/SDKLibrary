.class public Lcom/bytedance/sdk/openadsdk/preload/geckox/model/CheckRequestBodyModel$Channel;
.super Ljava/lang/Object;
.source "CheckRequestBodyModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/preload/geckox/model/CheckRequestBodyModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Channel"
.end annotation


# instance fields
.field channelName:Ljava/lang/String;
    .annotation runtime Lcom/bytedance/sdk/openadsdk/preload/a/a/c;
        a = "c"
    .end annotation
.end field

.field public localVersion:Ljava/lang/String;
    .annotation runtime Lcom/bytedance/sdk/openadsdk/preload/a/a/c;
        a = "l_v"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 206
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 207
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/model/CheckRequestBodyModel$Channel;->channelName:Ljava/lang/String;

    .line 208
    return-void
.end method
