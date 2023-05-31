.class public final Lcom/mintegral/msdk/base/webview/BrowserView$MTGDownloadListener;
.super Ljava/lang/Object;
.source "BrowserView.java"

# interfaces
.implements Landroid/webkit/DownloadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mintegral/msdk/base/webview/BrowserView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MTGDownloadListener"
.end annotation


# instance fields
.field private campaignEx:Lcom/mintegral/msdk/base/entity/CampaignEx;

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 276
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/mintegral/msdk/base/entity/CampaignEx;)V
    .registers 2

    .prologue
    .line 273
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 274
    iput-object p1, p0, Lcom/mintegral/msdk/base/webview/BrowserView$MTGDownloadListener;->campaignEx:Lcom/mintegral/msdk/base/entity/CampaignEx;

    .line 275
    return-void
.end method


# virtual methods
.method public final onDownloadStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .registers 9

    .prologue
    .line 284
    iget-object v0, p0, Lcom/mintegral/msdk/base/webview/BrowserView$MTGDownloadListener;->title:Ljava/lang/String;

    iget-object v1, p0, Lcom/mintegral/msdk/base/webview/BrowserView$MTGDownloadListener;->campaignEx:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-static {v0, p1, v1}, Lcom/mintegral/msdk/base/utils/j;->a(Ljava/lang/String;Ljava/lang/String;Lcom/mintegral/msdk/base/entity/CampaignEx;)V

    .line 285
    return-void
.end method

.method public final setTitle(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 278
    iput-object p1, p0, Lcom/mintegral/msdk/base/webview/BrowserView$MTGDownloadListener;->title:Ljava/lang/String;

    .line 279
    return-void
.end method
