.class Lcom/tencent/smtt/sdk/bn;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/webkit/WebView$FindListener;


# instance fields
.field final synthetic a:Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase$FindListener;

.field final synthetic b:Lcom/tencent/smtt/sdk/WebView;


# direct methods
.method constructor <init>(Lcom/tencent/smtt/sdk/WebView;Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase$FindListener;)V
    .registers 3

    iput-object p1, p0, Lcom/tencent/smtt/sdk/bn;->b:Lcom/tencent/smtt/sdk/WebView;

    iput-object p2, p0, Lcom/tencent/smtt/sdk/bn;->a:Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase$FindListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFindResultReceived(IIZ)V
    .registers 5

    iget-object v0, p0, Lcom/tencent/smtt/sdk/bn;->a:Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase$FindListener;

    invoke-interface {v0, p1, p2, p3}, Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase$FindListener;->onFindResultReceived(IIZ)V

    return-void
.end method
