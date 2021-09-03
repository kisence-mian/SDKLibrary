.class Lcom/tapsdk/moment/view/MomentDialog$ForumHandler;
.super Landroid/os/Handler;
.source "MomentDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tapsdk/moment/view/MomentDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ForumHandler"
.end annotation


# instance fields
.field private final mFragmentWeRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/tapsdk/moment/view/MomentDialog;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/tapsdk/moment/view/MomentDialog;)V
    .registers 3
    .param p1, "fragment"    # Lcom/tapsdk/moment/view/MomentDialog;

    .line 1268
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 1269
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/tapsdk/moment/view/MomentDialog$ForumHandler;->mFragmentWeRef:Ljava/lang/ref/WeakReference;

    .line 1270
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6
    .param p1, "msg"    # Landroid/os/Message;

    .line 1274
    iget-object v0, p0, Lcom/tapsdk/moment/view/MomentDialog$ForumHandler;->mFragmentWeRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tapsdk/moment/view/MomentDialog;

    .line 1275
    .local v0, "fragment":Lcom/tapsdk/moment/view/MomentDialog;
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x0

    const/4 v3, 0x4

    sparse-switch v1, :sswitch_data_76

    goto :goto_74

    .line 1297
    :sswitch_10
    if-eqz v0, :cond_74

    .line 1298
    # getter for: Lcom/tapsdk/moment/view/MomentDialog;->mWebView:Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;
    invoke-static {v0}, Lcom/tapsdk/moment/view/MomentDialog;->access$500(Lcom/tapsdk/moment/view/MomentDialog;)Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;->clearCache(Z)V

    .line 1299
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-ge v1, v2, :cond_40

    .line 1300
    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/CookieSyncManager;->startSync()V

    .line 1301
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v1

    .line 1302
    .local v1, "cookieManager":Landroid/webkit/CookieManager;
    invoke-virtual {v1}, Landroid/webkit/CookieManager;->removeAllCookie()V

    .line 1303
    invoke-virtual {v1}, Landroid/webkit/CookieManager;->removeSessionCookie()V

    .line 1304
    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/CookieSyncManager;->stopSync()V

    .line 1305
    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/CookieSyncManager;->sync()V

    .line 1306
    .end local v1    # "cookieManager":Landroid/webkit/CookieManager;
    goto :goto_74

    .line 1307
    :cond_40
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v1

    new-instance v2, Lcom/tapsdk/moment/view/MomentDialog$ForumHandler$1;

    invoke-direct {v2, p0}, Lcom/tapsdk/moment/view/MomentDialog$ForumHandler$1;-><init>(Lcom/tapsdk/moment/view/MomentDialog$ForumHandler;)V

    invoke-virtual {v1, v2}, Landroid/webkit/CookieManager;->removeAllCookies(Landroid/webkit/ValueCallback;)V

    goto :goto_74

    .line 1292
    :sswitch_4d
    if-eqz v0, :cond_74

    .line 1293
    # getter for: Lcom/tapsdk/moment/view/MomentDialog;->loading:Lcom/tapsdk/moment/view/TTMGifView;
    invoke-static {v0}, Lcom/tapsdk/moment/view/MomentDialog;->access$2400(Lcom/tapsdk/moment/view/MomentDialog;)Lcom/tapsdk/moment/view/TTMGifView;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/tapsdk/moment/view/TTMGifView;->setVisibility(I)V

    goto :goto_74

    .line 1287
    :sswitch_57
    if-eqz v0, :cond_74

    .line 1288
    # getter for: Lcom/tapsdk/moment/view/MomentDialog;->loading:Lcom/tapsdk/moment/view/TTMGifView;
    invoke-static {v0}, Lcom/tapsdk/moment/view/MomentDialog;->access$2400(Lcom/tapsdk/moment/view/MomentDialog;)Lcom/tapsdk/moment/view/TTMGifView;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/tapsdk/moment/view/TTMGifView;->setVisibility(I)V

    goto :goto_74

    .line 1282
    :sswitch_61
    if-eqz v0, :cond_74

    .line 1283
    # getter for: Lcom/tapsdk/moment/view/MomentDialog;->close:Landroid/widget/ImageButton;
    invoke-static {v0}, Lcom/tapsdk/moment/view/MomentDialog;->access$2300(Lcom/tapsdk/moment/view/MomentDialog;)Landroid/widget/ImageButton;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_74

    .line 1277
    :sswitch_6b
    if-eqz v0, :cond_74

    .line 1278
    # getter for: Lcom/tapsdk/moment/view/MomentDialog;->close:Landroid/widget/ImageButton;
    invoke-static {v0}, Lcom/tapsdk/moment/view/MomentDialog;->access$2300(Lcom/tapsdk/moment/view/MomentDialog;)Landroid/widget/ImageButton;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1318
    :cond_74
    :goto_74
    return-void

    nop

    :sswitch_data_76
    .sparse-switch
        0x10 -> :sswitch_6b
        0x11 -> :sswitch_61
        0x14 -> :sswitch_57
        0x15 -> :sswitch_4d
        0x20 -> :sswitch_10
    .end sparse-switch
.end method
