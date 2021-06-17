.class Lcom/loongcheer/admobsdk/pangle/adapter/AdmobFeedAdAdapter$PangleNativeAd$3;
.super Ljava/lang/Object;
.source "AdmobFeedAdAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/loongcheer/admobsdk/pangle/adapter/AdmobFeedAdAdapter$PangleNativeAd;->trackViews(Landroid/view/View;Ljava/util/Map;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/loongcheer/admobsdk/pangle/adapter/AdmobFeedAdAdapter$PangleNativeAd;


# direct methods
.method constructor <init>(Lcom/loongcheer/admobsdk/pangle/adapter/AdmobFeedAdAdapter$PangleNativeAd;)V
    .registers 2
    .param p1, "this$1"    # Lcom/loongcheer/admobsdk/pangle/adapter/AdmobFeedAdAdapter$PangleNativeAd;

    .line 263
    iput-object p1, p0, Lcom/loongcheer/admobsdk/pangle/adapter/AdmobFeedAdAdapter$PangleNativeAd$3;->this$1:Lcom/loongcheer/admobsdk/pangle/adapter/AdmobFeedAdAdapter$PangleNativeAd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .param p1, "v"    # Landroid/view/View;

    .line 266
    iget-object v0, p0, Lcom/loongcheer/admobsdk/pangle/adapter/AdmobFeedAdAdapter$PangleNativeAd$3;->this$1:Lcom/loongcheer/admobsdk/pangle/adapter/AdmobFeedAdAdapter$PangleNativeAd;

    # getter for: Lcom/loongcheer/admobsdk/pangle/adapter/AdmobFeedAdAdapter$PangleNativeAd;->mPangleAd:Lcom/bytedance/sdk/openadsdk/TTFeedAd;
    invoke-static {v0}, Lcom/loongcheer/admobsdk/pangle/adapter/AdmobFeedAdAdapter$PangleNativeAd;->access$500(Lcom/loongcheer/admobsdk/pangle/adapter/AdmobFeedAdAdapter$PangleNativeAd;)Lcom/bytedance/sdk/openadsdk/TTFeedAd;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/TTFeedAd;->showPrivacyActivity()V

    .line 267
    const-string v0, "AdmobFeedAdAdapter"

    const-string v1, "privacyInformationIconImageView--\u300bclick"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    return-void
.end method
