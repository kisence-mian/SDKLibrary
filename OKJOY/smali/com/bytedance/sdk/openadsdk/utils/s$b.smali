.class Lcom/bytedance/sdk/openadsdk/utils/s$b;
.super Lcom/bytedance/sdk/openadsdk/utils/s$a;
.source "LoadUrlUtils.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x13
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/utils/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 25
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/utils/s$a;-><init>(Lcom/bytedance/sdk/openadsdk/utils/s$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/bytedance/sdk/openadsdk/utils/s$1;)V
    .registers 2

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/utils/s$b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 29
    if-nez p1, :cond_4

    .line 54
    :cond_3
    :goto_3
    return-void

    .line 33
    :cond_4
    if-eqz p2, :cond_13

    const-string v1, "javascript:"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 35
    const/4 v1, 0x0

    :try_start_f
    invoke-virtual {p1, p2, v1}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_12} :catch_1b

    .line 36
    const/4 v0, 0x1

    .line 47
    :cond_13
    :goto_13
    if-nez v0, :cond_3

    .line 49
    :try_start_15
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V
    :try_end_18
    .catch Ljava/lang/Throwable; {:try_start_15 .. :try_end_18} :catch_19

    goto :goto_3

    .line 50
    :catch_19
    move-exception v0

    goto :goto_3

    .line 37
    :catch_1b
    move-exception v1

    .line 39
    instance-of v1, v1, Ljava/lang/IllegalStateException;

    if-eqz v1, :cond_13

    goto :goto_13
.end method
