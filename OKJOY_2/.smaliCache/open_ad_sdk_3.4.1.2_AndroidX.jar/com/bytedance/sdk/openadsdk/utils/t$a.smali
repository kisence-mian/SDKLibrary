.class Lcom/bytedance/sdk/openadsdk/utils/t$a;
.super Ljava/lang/Object;
.source "LoadUrlUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/utils/t;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/bytedance/sdk/openadsdk/utils/t$1;)V
    .registers 2

    .line 10
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/utils/t$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 3

    .line 13
    if-nez p1, :cond_3

    .line 14
    return-void

    .line 17
    :cond_3
    :try_start_3
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_7

    .line 20
    goto :goto_8

    .line 18
    :catchall_7
    move-exception p1

    .line 21
    :goto_8
    return-void
.end method
