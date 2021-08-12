.class final Lcom/bytedance/embedapplog/tracker/WebViewJsUtil$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/webkit/ValueCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/embedapplog/tracker/WebViewJsUtil;->getWebInfo(Landroid/webkit/WebView;Landroid/webkit/ValueCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/webkit/ValueCallback<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/webkit/ValueCallback;


# direct methods
.method constructor <init>(Landroid/webkit/ValueCallback;)V
    .registers 2

    .line 42
    iput-object p1, p0, Lcom/bytedance/embedapplog/tracker/WebViewJsUtil$1;->a:Landroid/webkit/ValueCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .registers 4

    .line 45
    sget-boolean v0, Lcom/bytedance/embedapplog/bo;->b:Z

    if-eqz v0, :cond_1b

    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WebViewJsUtil getWebInfo "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/bytedance/embedapplog/bo;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 48
    :cond_1b
    iget-object v0, p0, Lcom/bytedance/embedapplog/tracker/WebViewJsUtil$1;->a:Landroid/webkit/ValueCallback;

    if-eqz v0, :cond_22

    .line 49
    invoke-interface {v0, p1}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    .line 51
    :cond_22
    return-void
.end method

.method public synthetic onReceiveValue(Ljava/lang/Object;)V
    .registers 2

    .line 42
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/bytedance/embedapplog/tracker/WebViewJsUtil$1;->a(Ljava/lang/String;)V

    return-void
.end method
