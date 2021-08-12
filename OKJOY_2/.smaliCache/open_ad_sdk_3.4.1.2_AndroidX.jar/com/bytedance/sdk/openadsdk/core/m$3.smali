.class final Lcom/bytedance/sdk/openadsdk/core/m$3;
.super Ljava/lang/Object;
.source "InitHelper.java"

# interfaces
.implements Lcom/bytedance/embedapplog/IDataObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/m;->e(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 213
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onIdLoaded(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 217
    return-void
.end method

.method public onRemoteAbConfigGet(ZLorg/json/JSONObject;)V
    .registers 3

    .line 232
    return-void
.end method

.method public onRemoteConfigGet(ZLorg/json/JSONObject;)V
    .registers 3

    .line 227
    return-void
.end method

.method public onRemoteIdGet(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8

    .line 222
    return-void
.end method
