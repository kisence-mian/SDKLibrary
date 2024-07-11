.class final Lcom/tapjoy/TJAdUnit$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tapjoy/TJAdUnit;->load(Lcom/tapjoy/TJPlacementData;ZLandroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/tapjoy/TJPlacementData;

.field final synthetic c:Z

.field final synthetic d:Lcom/tapjoy/TJAdUnit;


# direct methods
.method constructor <init>(Lcom/tapjoy/TJAdUnit;Landroid/content/Context;Lcom/tapjoy/TJPlacementData;Z)V
    .registers 5

    .line 223
    iput-object p1, p0, Lcom/tapjoy/TJAdUnit$4;->d:Lcom/tapjoy/TJAdUnit;

    iput-object p2, p0, Lcom/tapjoy/TJAdUnit$4;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/tapjoy/TJAdUnit$4;->b:Lcom/tapjoy/TJPlacementData;

    iput-boolean p4, p0, Lcom/tapjoy/TJAdUnit$4;->c:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 12

    .line 227
    const-string v0, "Error loading ad unit content"

    iget-object v1, p0, Lcom/tapjoy/TJAdUnit$4;->d:Lcom/tapjoy/TJAdUnit;

    iget-object v2, p0, Lcom/tapjoy/TJAdUnit$4;->a:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/tapjoy/TJAdUnit;->a(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_d

    .line 228
    return-void

    .line 230
    :cond_d
    const-string v1, "TJAdUnit"

    const-string v2, "Loading ad unit content"

    invoke-static {v1, v2}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    iget-object v2, p0, Lcom/tapjoy/TJAdUnit$4;->d:Lcom/tapjoy/TJAdUnit;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/tapjoy/TJAdUnit;->a(Lcom/tapjoy/TJAdUnit;Z)Z

    .line 234
    const/4 v2, 0x0

    :try_start_1b
    iget-object v4, p0, Lcom/tapjoy/TJAdUnit$4;->b:Lcom/tapjoy/TJPlacementData;

    invoke-virtual {v4}, Lcom/tapjoy/TJPlacementData;->getRedirectURL()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/tapjoy/internal/js;->c(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_50

    .line 235
    iget-object v4, p0, Lcom/tapjoy/TJAdUnit$4;->b:Lcom/tapjoy/TJPlacementData;

    invoke-virtual {v4}, Lcom/tapjoy/TJPlacementData;->isPreloadDisabled()Z

    move-result v4

    if-eqz v4, :cond_40

    .line 237
    iget-object v4, p0, Lcom/tapjoy/TJAdUnit$4;->d:Lcom/tapjoy/TJAdUnit;

    invoke-static {v4}, Lcom/tapjoy/TJAdUnit;->d(Lcom/tapjoy/TJAdUnit;)Lcom/tapjoy/TJWebView;

    move-result-object v4

    iget-object v5, p0, Lcom/tapjoy/TJAdUnit$4;->b:Lcom/tapjoy/TJPlacementData;

    invoke-virtual {v5}, Lcom/tapjoy/TJPlacementData;->getRedirectURL()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lcom/tapjoy/TJWebView;->postUrl(Ljava/lang/String;[B)V

    goto :goto_9b

    .line 240
    :cond_40
    iget-object v4, p0, Lcom/tapjoy/TJAdUnit$4;->d:Lcom/tapjoy/TJAdUnit;

    invoke-static {v4}, Lcom/tapjoy/TJAdUnit;->d(Lcom/tapjoy/TJAdUnit;)Lcom/tapjoy/TJWebView;

    move-result-object v4

    iget-object v5, p0, Lcom/tapjoy/TJAdUnit$4;->b:Lcom/tapjoy/TJPlacementData;

    invoke-virtual {v5}, Lcom/tapjoy/TJPlacementData;->getRedirectURL()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/tapjoy/TJWebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_9b

    .line 242
    :cond_50
    iget-object v4, p0, Lcom/tapjoy/TJAdUnit$4;->b:Lcom/tapjoy/TJPlacementData;

    invoke-virtual {v4}, Lcom/tapjoy/TJPlacementData;->getBaseURL()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_7b

    iget-object v4, p0, Lcom/tapjoy/TJAdUnit$4;->b:Lcom/tapjoy/TJPlacementData;

    invoke-virtual {v4}, Lcom/tapjoy/TJPlacementData;->getHttpResponse()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_7b

    .line 244
    iget-object v4, p0, Lcom/tapjoy/TJAdUnit$4;->d:Lcom/tapjoy/TJAdUnit;

    invoke-static {v4}, Lcom/tapjoy/TJAdUnit;->d(Lcom/tapjoy/TJAdUnit;)Lcom/tapjoy/TJWebView;

    move-result-object v5

    iget-object v4, p0, Lcom/tapjoy/TJAdUnit$4;->b:Lcom/tapjoy/TJPlacementData;

    invoke-virtual {v4}, Lcom/tapjoy/TJPlacementData;->getBaseURL()Ljava/lang/String;

    move-result-object v6

    iget-object v4, p0, Lcom/tapjoy/TJAdUnit$4;->b:Lcom/tapjoy/TJPlacementData;

    invoke-virtual {v4}, Lcom/tapjoy/TJPlacementData;->getHttpResponse()Ljava/lang/String;

    move-result-object v7

    const-string v8, "text/html"

    const-string v9, "utf-8"

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Lcom/tapjoy/TJWebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9b

    .line 246
    :cond_7b
    new-instance v4, Lcom/tapjoy/TapjoyErrorMessage;

    sget-object v5, Lcom/tapjoy/TapjoyErrorMessage$ErrorType;->SDK_ERROR:Lcom/tapjoy/TapjoyErrorMessage$ErrorType;

    invoke-direct {v4, v5, v0}, Lcom/tapjoy/TapjoyErrorMessage;-><init>(Lcom/tapjoy/TapjoyErrorMessage$ErrorType;Ljava/lang/String;)V

    invoke-static {v1, v4}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Lcom/tapjoy/TapjoyErrorMessage;)V

    .line 247
    iget-object v4, p0, Lcom/tapjoy/TJAdUnit$4;->d:Lcom/tapjoy/TJAdUnit;

    invoke-static {v4, v2}, Lcom/tapjoy/TJAdUnit;->a(Lcom/tapjoy/TJAdUnit;Z)Z
    :try_end_8a
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_8a} :catch_8b

    .line 252
    goto :goto_9b

    .line 249
    :catch_8b
    move-exception v4

    .line 250
    new-instance v4, Lcom/tapjoy/TapjoyErrorMessage;

    sget-object v5, Lcom/tapjoy/TapjoyErrorMessage$ErrorType;->SDK_ERROR:Lcom/tapjoy/TapjoyErrorMessage$ErrorType;

    invoke-direct {v4, v5, v0}, Lcom/tapjoy/TapjoyErrorMessage;-><init>(Lcom/tapjoy/TapjoyErrorMessage$ErrorType;Ljava/lang/String;)V

    invoke-static {v1, v4}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Lcom/tapjoy/TapjoyErrorMessage;)V

    .line 251
    iget-object v0, p0, Lcom/tapjoy/TJAdUnit$4;->d:Lcom/tapjoy/TJAdUnit;

    invoke-static {v0, v2}, Lcom/tapjoy/TJAdUnit;->a(Lcom/tapjoy/TJAdUnit;Z)Z

    .line 253
    :goto_9b
    iget-object v0, p0, Lcom/tapjoy/TJAdUnit$4;->d:Lcom/tapjoy/TJAdUnit;

    invoke-static {v0}, Lcom/tapjoy/TJAdUnit;->e(Lcom/tapjoy/TJAdUnit;)Z

    move-result v1

    if-eqz v1, :cond_a8

    iget-boolean v1, p0, Lcom/tapjoy/TJAdUnit$4;->c:Z

    if-eqz v1, :cond_a8

    goto :goto_a9

    :cond_a8
    const/4 v3, 0x0

    :goto_a9
    invoke-static {v0, v3}, Lcom/tapjoy/TJAdUnit;->b(Lcom/tapjoy/TJAdUnit;Z)Z

    .line 254
    return-void
.end method
