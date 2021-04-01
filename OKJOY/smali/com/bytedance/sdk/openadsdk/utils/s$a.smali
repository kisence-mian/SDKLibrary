.class Lcom/bytedance/sdk/openadsdk/utils/s$a;
.super Ljava/lang/Object;
.source "LoadUrlUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/utils/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/bytedance/sdk/openadsdk/utils/s$1;)V
    .registers 2

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/utils/s$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 13
    if-nez p1, :cond_3

    .line 21
    :goto_2
    return-void

    .line 17
    :cond_3
    :try_start_3
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_6} :catch_7

    goto :goto_2

    .line 18
    :catch_7
    move-exception v0

    goto :goto_2
.end method
