.class public Lcom/tapjoy/TJWebView;
.super Landroid/webkit/WebView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tapjoy/TJWebView$a;
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .line 14
    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 17
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/tapjoy/TJWebView;->setScrollContainer(Z)V

    .line 18
    invoke-virtual {p0, v0}, Lcom/tapjoy/TJWebView;->setVerticalScrollBarEnabled(Z)V

    .line 19
    invoke-virtual {p0, v0}, Lcom/tapjoy/TJWebView;->setHorizontalScrollBarEnabled(Z)V

    .line 20
    new-instance v1, Landroid/view/GestureDetector;

    new-instance v2, Lcom/tapjoy/TJWebView$a;

    invoke-direct {v2, p0}, Lcom/tapjoy/TJWebView$a;-><init>(Lcom/tapjoy/TJWebView;)V

    invoke-direct {v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/view/GestureDetector$OnGestureListener;)V

    .line 22
    invoke-virtual {p0}, Lcom/tapjoy/TJWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    if-eqz v1, :cond_32

    .line 23
    invoke-virtual {p0}, Lcom/tapjoy/TJWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 25
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-lt v1, v2, :cond_32

    .line 26
    invoke-virtual {p0}, Lcom/tapjoy/TJWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/webkit/WebSettings;->setMediaPlaybackRequiresUserGesture(Z)V

    .line 30
    :cond_32
    invoke-virtual {p0, v0}, Lcom/tapjoy/TJWebView;->setBackgroundColor(I)V

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "set"    # Landroid/util/AttributeSet;

    .line 34
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    return-void
.end method
