.class Lcom/taptap/sdk/forum/ForumFragment$ForumHandler;
.super Landroid/os/Handler;
.source "ForumFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taptap/sdk/forum/ForumFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ForumHandler"
.end annotation


# instance fields
.field private final mFragmentWeRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/taptap/sdk/forum/ForumFragment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/taptap/sdk/forum/ForumFragment;)V
    .registers 3
    .param p1, "fragment"    # Lcom/taptap/sdk/forum/ForumFragment;

    .prologue
    .line 753
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 754
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/taptap/sdk/forum/ForumFragment$ForumHandler;->mFragmentWeRef:Ljava/lang/ref/WeakReference;

    .line 755
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 9
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x0

    .line 759
    iget-object v4, p0, Lcom/taptap/sdk/forum/ForumFragment$ForumHandler;->mFragmentWeRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/taptap/sdk/forum/ForumFragment;

    .line 760
    .local v2, "fragment":Lcom/taptap/sdk/forum/ForumFragment;
    iget v4, p1, Landroid/os/Message;->what:I

    sparse-switch v4, :sswitch_data_ca

    .line 836
    :cond_f
    :goto_f
    return-void

    .line 762
    :sswitch_10
    if-eqz v2, :cond_f

    .line 763
    # getter for: Lcom/taptap/sdk/forum/ForumFragment;->close:Landroid/widget/ImageButton;
    invoke-static {v2}, Lcom/taptap/sdk/forum/ForumFragment;->access$1600(Lcom/taptap/sdk/forum/ForumFragment;)Landroid/widget/ImageButton;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_f

    .line 767
    :sswitch_1a
    if-eqz v2, :cond_f

    .line 768
    # getter for: Lcom/taptap/sdk/forum/ForumFragment;->close:Landroid/widget/ImageButton;
    invoke-static {v2}, Lcom/taptap/sdk/forum/ForumFragment;->access$1600(Lcom/taptap/sdk/forum/ForumFragment;)Landroid/widget/ImageButton;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_f

    .line 772
    :sswitch_24
    if-eqz v2, :cond_f

    .line 773
    # getter for: Lcom/taptap/sdk/forum/ForumFragment;->other:Landroid/widget/ImageButton;
    invoke-static {v2}, Lcom/taptap/sdk/forum/ForumFragment;->access$1700(Lcom/taptap/sdk/forum/ForumFragment;)Landroid/widget/ImageButton;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_f

    .line 777
    :sswitch_2e
    if-eqz v2, :cond_f

    .line 778
    # getter for: Lcom/taptap/sdk/forum/ForumFragment;->other:Landroid/widget/ImageButton;
    invoke-static {v2}, Lcom/taptap/sdk/forum/ForumFragment;->access$1700(Lcom/taptap/sdk/forum/ForumFragment;)Landroid/widget/ImageButton;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_f

    .line 782
    :sswitch_38
    if-eqz v2, :cond_f

    .line 783
    # getter for: Lcom/taptap/sdk/forum/ForumFragment;->loading:Landroid/widget/ProgressBar;
    invoke-static {v2}, Lcom/taptap/sdk/forum/ForumFragment;->access$1800(Lcom/taptap/sdk/forum/ForumFragment;)Landroid/widget/ProgressBar;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_f

    .line 787
    :sswitch_42
    if-eqz v2, :cond_f

    .line 788
    # getter for: Lcom/taptap/sdk/forum/ForumFragment;->loading:Landroid/widget/ProgressBar;
    invoke-static {v2}, Lcom/taptap/sdk/forum/ForumFragment;->access$1800(Lcom/taptap/sdk/forum/ForumFragment;)Landroid/widget/ProgressBar;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_f

    .line 792
    :sswitch_4c
    if-eqz v2, :cond_f

    .line 793
    # getter for: Lcom/taptap/sdk/forum/ForumFragment;->mWebView:Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;
    invoke-static {v2}, Lcom/taptap/sdk/forum/ForumFragment;->access$100(Lcom/taptap/sdk/forum/ForumFragment;)Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;->clearCache(Z)V

    .line 794
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x15

    if-ge v4, v5, :cond_7c

    .line 795
    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/webkit/CookieSyncManager;->startSync()V

    .line 796
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    .line 797
    .local v0, "cookieManager":Landroid/webkit/CookieManager;
    invoke-virtual {v0}, Landroid/webkit/CookieManager;->removeAllCookie()V

    .line 798
    invoke-virtual {v0}, Landroid/webkit/CookieManager;->removeSessionCookie()V

    .line 799
    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/webkit/CookieSyncManager;->stopSync()V

    .line 800
    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/webkit/CookieSyncManager;->sync()V

    goto :goto_f

    .line 802
    .end local v0    # "cookieManager":Landroid/webkit/CookieManager;
    :cond_7c
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v4

    new-instance v5, Lcom/taptap/sdk/forum/ForumFragment$ForumHandler$1;

    invoke-direct {v5, p0}, Lcom/taptap/sdk/forum/ForumFragment$ForumHandler$1;-><init>(Lcom/taptap/sdk/forum/ForumFragment$ForumHandler;)V

    invoke-virtual {v4, v5}, Landroid/webkit/CookieManager;->removeAllCookies(Landroid/webkit/ValueCallback;)V

    goto :goto_f

    .line 812
    :sswitch_89
    if-eqz v2, :cond_f

    .line 813
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 815
    .local v3, "jsonObject":Lorg/json/JSONObject;
    :try_start_90
    const-string v4, "type"

    const-string v5, "open"

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_97
    .catch Lorg/json/JSONException; {:try_start_90 .. :try_end_97} :catch_c7
    .catch Ljava/lang/NullPointerException; {:try_start_90 .. :try_end_97} :catch_a2

    .line 819
    :goto_97
    # getter for: Lcom/taptap/sdk/forum/ForumFragment;->mWebView:Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;
    invoke-static {v2}, Lcom/taptap/sdk/forum/ForumFragment;->access$100(Lcom/taptap/sdk/forum/ForumFragment;)Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;

    move-result-object v4

    const-string v5, "addKeyboardListener"

    invoke-virtual {v4, v5, v3}, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;->callHandler(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_f

    .line 816
    :catch_a2
    move-exception v1

    .line 817
    .local v1, "e":Ljava/lang/Exception;
    :goto_a3
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_97

    .line 823
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v3    # "jsonObject":Lorg/json/JSONObject;
    :sswitch_a7
    if-eqz v2, :cond_f

    .line 824
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 826
    .restart local v3    # "jsonObject":Lorg/json/JSONObject;
    :try_start_ae
    const-string v4, "type"

    const-string v5, "close"

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_b5
    .catch Lorg/json/JSONException; {:try_start_ae .. :try_end_b5} :catch_c5
    .catch Ljava/lang/NullPointerException; {:try_start_ae .. :try_end_b5} :catch_c0

    .line 830
    :goto_b5
    # getter for: Lcom/taptap/sdk/forum/ForumFragment;->mWebView:Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;
    invoke-static {v2}, Lcom/taptap/sdk/forum/ForumFragment;->access$100(Lcom/taptap/sdk/forum/ForumFragment;)Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;

    move-result-object v4

    const-string v5, "addKeyboardListener"

    invoke-virtual {v4, v5, v3}, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;->callHandler(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_f

    .line 827
    :catch_c0
    move-exception v1

    .line 828
    .restart local v1    # "e":Ljava/lang/Exception;
    :goto_c1
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_b5

    .line 827
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_c5
    move-exception v1

    goto :goto_c1

    .line 816
    :catch_c7
    move-exception v1

    goto :goto_a3

    .line 760
    nop

    :sswitch_data_ca
    .sparse-switch
        0x10 -> :sswitch_10
        0x11 -> :sswitch_1a
        0x12 -> :sswitch_24
        0x13 -> :sswitch_2e
        0x14 -> :sswitch_38
        0x15 -> :sswitch_42
        0x20 -> :sswitch_4c
        0x30 -> :sswitch_89
        0x31 -> :sswitch_a7
    .end sparse-switch
.end method
