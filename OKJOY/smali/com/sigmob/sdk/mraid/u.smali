.class Lcom/sigmob/sdk/mraid/u;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/media/MediaScannerConnection$MediaScannerConnectionClient;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private c:Landroid/media/MediaScannerConnection;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sigmob/sdk/mraid/u;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/sigmob/sdk/mraid/u;->b:Ljava/lang/String;

    return-void
.end method

.method private a(Landroid/media/MediaScannerConnection;)V
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/mraid/u;->c:Landroid/media/MediaScannerConnection;

    return-void
.end method


# virtual methods
.method public onMediaScannerConnected()V
    .registers 4

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/u;->c:Landroid/media/MediaScannerConnection;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/u;->c:Landroid/media/MediaScannerConnection;

    iget-object v1, p0, Lcom/sigmob/sdk/mraid/u;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/sigmob/sdk/mraid/u;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaScannerConnection;->scanFile(Ljava/lang/String;Ljava/lang/String;)V

    :cond_d
    return-void
.end method

.method public onScanCompleted(Ljava/lang/String;Landroid/net/Uri;)V
    .registers 4

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/u;->c:Landroid/media/MediaScannerConnection;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/u;->c:Landroid/media/MediaScannerConnection;

    invoke-virtual {v0}, Landroid/media/MediaScannerConnection;->disconnect()V

    :cond_9
    return-void
.end method
