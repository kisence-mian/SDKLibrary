.class public Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase$WebViewTransport;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WebViewTransport"
.end annotation


# instance fields
.field private mWebview:Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized getWebView()Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase$WebViewTransport;->mWebview:Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setWebView(Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;)V
    .registers 3

    monitor-enter p0

    :try_start_1
    iput-object p1, p0, Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase$WebViewTransport;->mWebview:Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-void

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method
