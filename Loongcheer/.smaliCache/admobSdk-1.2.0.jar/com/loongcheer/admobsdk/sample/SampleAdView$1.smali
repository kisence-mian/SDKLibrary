.class Lcom/loongcheer/admobsdk/sample/SampleAdView$1;
.super Ljava/lang/Object;
.source "SampleAdView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/loongcheer/admobsdk/sample/SampleAdView;->fetchAd(Lcom/loongcheer/admobsdk/sample/SampleAdRequest;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/loongcheer/admobsdk/sample/SampleAdView;


# direct methods
.method constructor <init>(Lcom/loongcheer/admobsdk/sample/SampleAdView;)V
    .registers 2
    .param p1, "this$0"    # Lcom/loongcheer/admobsdk/sample/SampleAdView;

    .line 75
    iput-object p1, p0, Lcom/loongcheer/admobsdk/sample/SampleAdView$1;->this$0:Lcom/loongcheer/admobsdk/sample/SampleAdView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .param p1, "view"    # Landroid/view/View;

    .line 79
    iget-object v0, p0, Lcom/loongcheer/admobsdk/sample/SampleAdView$1;->this$0:Lcom/loongcheer/admobsdk/sample/SampleAdView;

    # getter for: Lcom/loongcheer/admobsdk/sample/SampleAdView;->listener:Lcom/loongcheer/admobsdk/sample/SampleAdListener;
    invoke-static {v0}, Lcom/loongcheer/admobsdk/sample/SampleAdView;->access$000(Lcom/loongcheer/admobsdk/sample/SampleAdView;)Lcom/loongcheer/admobsdk/sample/SampleAdListener;

    move-result-object v0

    invoke-virtual {v0}, Lcom/loongcheer/admobsdk/sample/SampleAdListener;->onAdFullScreen()V

    .line 80
    new-instance v0, Landroid/content/Intent;

    .line 81
    const-string v1, "http://www.google.com"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 82
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/loongcheer/admobsdk/sample/SampleAdView$1;->this$0:Lcom/loongcheer/admobsdk/sample/SampleAdView;

    invoke-virtual {v1}, Lcom/loongcheer/admobsdk/sample/SampleAdView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 83
    return-void
.end method
