.class Lcom/loongcheer/admobsdk/pangle/adapter/AdmobFeedAdAdapter$PangleNativeAd$1;
.super Ljava/lang/Object;
.source "AdmobFeedAdAdapter.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/TTFeedAd$VideoAdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/loongcheer/admobsdk/pangle/adapter/AdmobFeedAdAdapter$PangleNativeAd;-><init>(Lcom/loongcheer/admobsdk/pangle/adapter/AdmobFeedAdAdapter;Lcom/bytedance/sdk/openadsdk/TTFeedAd;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/loongcheer/admobsdk/pangle/adapter/AdmobFeedAdAdapter$PangleNativeAd;

.field final synthetic val$this$0:Lcom/loongcheer/admobsdk/pangle/adapter/AdmobFeedAdAdapter;


# direct methods
.method constructor <init>(Lcom/loongcheer/admobsdk/pangle/adapter/AdmobFeedAdAdapter$PangleNativeAd;Lcom/loongcheer/admobsdk/pangle/adapter/AdmobFeedAdAdapter;)V
    .registers 3
    .param p1, "this$1"    # Lcom/loongcheer/admobsdk/pangle/adapter/AdmobFeedAdAdapter$PangleNativeAd;

    .line 164
    iput-object p1, p0, Lcom/loongcheer/admobsdk/pangle/adapter/AdmobFeedAdAdapter$PangleNativeAd$1;->this$1:Lcom/loongcheer/admobsdk/pangle/adapter/AdmobFeedAdAdapter$PangleNativeAd;

    iput-object p2, p0, Lcom/loongcheer/admobsdk/pangle/adapter/AdmobFeedAdAdapter$PangleNativeAd$1;->val$this$0:Lcom/loongcheer/admobsdk/pangle/adapter/AdmobFeedAdAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressUpdate(JJ)V
    .registers 5
    .param p1, "current"    # J
    .param p3, "duration"    # J

    .line 193
    return-void
.end method

.method public onVideoAdComplete(Lcom/bytedance/sdk/openadsdk/TTFeedAd;)V
    .registers 2
    .param p1, "ad"    # Lcom/bytedance/sdk/openadsdk/TTFeedAd;

    .line 198
    return-void
.end method

.method public onVideoAdContinuePlay(Lcom/bytedance/sdk/openadsdk/TTFeedAd;)V
    .registers 2
    .param p1, "ad"    # Lcom/bytedance/sdk/openadsdk/TTFeedAd;

    .line 188
    return-void
.end method

.method public onVideoAdPaused(Lcom/bytedance/sdk/openadsdk/TTFeedAd;)V
    .registers 2
    .param p1, "ad"    # Lcom/bytedance/sdk/openadsdk/TTFeedAd;

    .line 183
    return-void
.end method

.method public onVideoAdStartPlay(Lcom/bytedance/sdk/openadsdk/TTFeedAd;)V
    .registers 2
    .param p1, "ad"    # Lcom/bytedance/sdk/openadsdk/TTFeedAd;

    .line 178
    return-void
.end method

.method public onVideoError(II)V
    .registers 3
    .param p1, "errorCode"    # I
    .param p2, "extraCode"    # I

    .line 173
    return-void
.end method

.method public onVideoLoad(Lcom/bytedance/sdk/openadsdk/TTFeedAd;)V
    .registers 2
    .param p1, "ad"    # Lcom/bytedance/sdk/openadsdk/TTFeedAd;

    .line 168
    return-void
.end method
