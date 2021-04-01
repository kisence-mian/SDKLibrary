.class Lcom/sigmob/sdk/mraid/h$4;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/webkit/DownloadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sigmob/sdk/mraid/h;->a(Lcom/sigmob/sdk/base/views/BaseWebView;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/sigmob/sdk/mraid/h;


# direct methods
.method constructor <init>(Lcom/sigmob/sdk/mraid/h;)V
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/mraid/h$4;->a:Lcom/sigmob/sdk/mraid/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDownloadStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .registers 11

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/h$4;->a:Lcom/sigmob/sdk/mraid/h;

    invoke-static {p1}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v1

    sget-object v2, Lcom/sigmob/sdk/videoAd/f;->b:Lcom/sigmob/sdk/videoAd/f;

    invoke-virtual {v0, v1, v2, v3, v3}, Lcom/sigmob/sdk/mraid/h;->a(Ljava/net/URI;Lcom/sigmob/sdk/videoAd/f;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
