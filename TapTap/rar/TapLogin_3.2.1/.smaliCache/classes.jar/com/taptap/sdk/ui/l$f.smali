.class final Lcom/taptap/sdk/ui/l$f;
.super Ljava/lang/Object;
.source "WebBlock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taptap/sdk/ui/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "f"
.end annotation


# instance fields
.field final synthetic a:Lcom/taptap/sdk/ui/l;


# direct methods
.method constructor <init>(Lcom/taptap/sdk/ui/l;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/taptap/sdk/ui/l$f;->a:Lcom/taptap/sdk/ui/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public TapTapAPI(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_26

    iget-object v0, p0, Lcom/taptap/sdk/ui/l$f;->a:Lcom/taptap/sdk/ui/l;

    invoke-static {v0}, Lcom/taptap/sdk/ui/l;->e(Lcom/taptap/sdk/ui/l;)Landroid/webkit/WebView;

    move-result-object v0

    if-nez v0, :cond_10

    goto :goto_26

    .line 4
    :cond_10
    const-string v0, "openBrowser"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_26

    .line 5
    iget-object p1, p0, Lcom/taptap/sdk/ui/l$f;->a:Lcom/taptap/sdk/ui/l;

    invoke-static {p1}, Lcom/taptap/sdk/ui/l;->e(Lcom/taptap/sdk/ui/l;)Landroid/webkit/WebView;

    move-result-object p1

    new-instance v0, Lcom/taptap/sdk/ui/l$f$a;

    invoke-direct {v0, p0, p2}, Lcom/taptap/sdk/ui/l$f$a;-><init>(Lcom/taptap/sdk/ui/l$f;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->post(Ljava/lang/Runnable;)Z

    :cond_26
    :goto_26
    return-object v1
.end method
