.class Lcom/bytedance/sdk/openadsdk/utils/t$b;
.super Lcom/bytedance/sdk/openadsdk/utils/t$a;
.source "LoadUrlUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/utils/t;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 25
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/utils/t$a;-><init>(Lcom/bytedance/sdk/openadsdk/utils/t$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/bytedance/sdk/openadsdk/utils/t$1;)V
    .registers 2

    .line 25
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/utils/t$b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 5

    .line 29
    if-nez p1, :cond_3

    .line 30
    return-void

    .line 32
    :cond_3
    nop

    .line 33
    const/4 v0, 0x0

    if-eqz p2, :cond_1a

    const-string v1, "javascript:"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 35
    const/4 v1, 0x0

    :try_start_10
    invoke-virtual {p1, p2, v1}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V
    :try_end_13
    .catchall {:try_start_10 .. :try_end_13} :catchall_15

    .line 36
    const/4 v0, 0x1

    .line 45
    goto :goto_1a

    .line 37
    :catchall_15
    move-exception v1

    .line 39
    instance-of v1, v1, Ljava/lang/IllegalStateException;

    if-eqz v1, :cond_1a

    .line 47
    :cond_1a
    :goto_1a
    if-nez v0, :cond_21

    .line 49
    :try_start_1c
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V
    :try_end_1f
    .catchall {:try_start_1c .. :try_end_1f} :catchall_20

    .line 52
    goto :goto_21

    .line 50
    :catchall_20
    move-exception p1

    .line 54
    :cond_21
    :goto_21
    return-void
.end method
