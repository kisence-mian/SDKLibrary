.class public Lcom/bytedance/sdk/openadsdk/core/aa;
.super Ljava/lang/Object;
.source "WebViewTweaker.java"


# static fields
.field private static final a:Z

.field private static final b:Z

.field private static c:I

.field private static d:I

.field private static e:I

.field private static f:Landroid/os/Handler;

.field private static final g:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final h:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/4 v2, -0x1

    .line 37
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_6a

    .line 38
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/ac;->e()Z

    move-result v0

    if-eqz v0, :cond_6a

    const/4 v0, 0x1

    :goto_e
    sput-boolean v0, Lcom/bytedance/sdk/openadsdk/core/aa;->a:Z

    .line 39
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/aa;->a()Z

    move-result v0

    sput-boolean v0, Lcom/bytedance/sdk/openadsdk/core/aa;->b:Z

    .line 42
    sput v2, Lcom/bytedance/sdk/openadsdk/core/aa;->c:I

    .line 43
    sput v2, Lcom/bytedance/sdk/openadsdk/core/aa;->d:I

    .line 46
    sput v2, Lcom/bytedance/sdk/openadsdk/core/aa;->e:I

    .line 50
    const/4 v0, 0x0

    sput-object v0, Lcom/bytedance/sdk/openadsdk/core/aa;->f:Landroid/os/Handler;

    .line 54
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 55
    const-string v1, "HUAWEI C8812"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 56
    const-string v1, "HUAWEI C8812E"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 57
    const-string v1, "HUAWEI C8825D"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 58
    const-string v1, "HUAWEI U8825D"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 59
    const-string v1, "HUAWEI C8950D"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 60
    const-string v1, "HUAWEI U8950D"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 61
    sput-object v0, Lcom/bytedance/sdk/openadsdk/core/aa;->g:Ljava/util/HashSet;

    .line 67
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 68
    const-string v1, "ZTE V955"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 69
    const-string v1, "ZTE N881E"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 70
    const-string v1, "ZTE N881F"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 71
    const-string v1, "ZTE N880G"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 72
    const-string v1, "ZTE N880F"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 73
    const-string v1, "ZTE V889F"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 79
    sput-object v0, Lcom/bytedance/sdk/openadsdk/core/aa;->h:Ljava/util/HashSet;

    .line 80
    return-void

    .line 38
    :cond_6a
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public static a(Landroid/content/Context;Landroid/webkit/WebView;)V
    .registers 8

    .prologue
    .line 188
    if-eqz p0, :cond_4

    if-nez p1, :cond_5

    .line 225
    :cond_4
    :goto_4
    return-void

    .line 202
    :cond_5
    instance-of v1, p0, Landroid/app/Activity;

    if-eqz v1, :cond_4

    .line 203
    check-cast p0, Landroid/app/Activity;

    .line 204
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 206
    :try_start_11
    const-string v1, "about:blank"

    invoke-virtual {p1, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 207
    sget v1, Lcom/bytedance/sdk/openadsdk/core/aa;->e:I

    if-lez v1, :cond_4

    .line 208
    invoke-virtual {p1}, Landroid/webkit/WebView;->getRootView()Landroid/view/View;

    move-result-object v2

    .line 209
    instance-of v1, v2, Landroid/view/ViewGroup;

    if-eqz v1, :cond_4

    .line 210
    move-object v0, v2

    check-cast v0, Landroid/view/ViewGroup;

    move-object v1, v0

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 211
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 212
    invoke-virtual {v1}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-static {v3}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 213
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 214
    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 215
    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 216
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 217
    check-cast v2, Landroid/view/ViewGroup;

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    const/4 v4, -0x1

    const/4 v5, -0x1

    invoke-direct {v3, v4, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_53
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_53} :catch_54

    goto :goto_4

    .line 221
    :catch_54
    move-exception v1

    goto :goto_4
.end method

.method public static a(Landroid/webkit/WebView;)V
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 232
    if-nez p0, :cond_4

    .line 246
    :goto_3
    return-void

    .line 235
    :cond_4
    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 236
    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 237
    invoke-virtual {p0}, Landroid/webkit/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 238
    if-eqz v0, :cond_19

    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_19

    .line 239
    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 241
    :cond_19
    invoke-virtual {p0}, Landroid/webkit/WebView;->removeAllViews()V

    .line 243
    :try_start_1c
    invoke-virtual {p0}, Landroid/webkit/WebView;->destroy()V
    :try_end_1f
    .catch Ljava/lang/Throwable; {:try_start_1c .. :try_end_1f} :catch_20

    goto :goto_3

    .line 244
    :catch_20
    move-exception v0

    goto :goto_3
.end method

.method private static a()Z
    .registers 2

    .prologue
    .line 228
    sget-boolean v0, Lcom/bytedance/sdk/openadsdk/core/aa;->a:Z

    if-nez v0, :cond_14

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-ne v0, v1, :cond_16

    const-string v0, "ZTE N5"

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    :cond_14
    const/4 v0, 0x1

    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method
