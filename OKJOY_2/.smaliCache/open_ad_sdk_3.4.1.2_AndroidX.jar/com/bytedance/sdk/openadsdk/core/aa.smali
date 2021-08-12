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
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final h:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 37
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_e

    .line 38
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/ad;->e()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    sput-boolean v0, Lcom/bytedance/sdk/openadsdk/core/aa;->a:Z

    .line 39
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/aa;->a()Z

    move-result v0

    sput-boolean v0, Lcom/bytedance/sdk/openadsdk/core/aa;->b:Z

    .line 42
    const/4 v0, -0x1

    sput v0, Lcom/bytedance/sdk/openadsdk/core/aa;->c:I

    .line 43
    sput v0, Lcom/bytedance/sdk/openadsdk/core/aa;->d:I

    .line 46
    sput v0, Lcom/bytedance/sdk/openadsdk/core/aa;->e:I

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
.end method

.method public static a(Landroid/content/Context;Landroid/webkit/WebView;)V
    .registers 5

    .line 188
    if-eqz p0, :cond_52

    if-nez p1, :cond_5

    goto :goto_52

    .line 191
    :cond_5
    instance-of v0, p0, Landroid/app/Activity;

    if-eqz v0, :cond_51

    .line 192
    check-cast p0, Landroid/app/Activity;

    .line 193
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_51

    .line 195
    :try_start_11
    const-string v0, "about:blank"

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 196
    sget v0, Lcom/bytedance/sdk/openadsdk/core/aa;->e:I

    if-lez v0, :cond_4f

    .line 197
    invoke-virtual {p1}, Landroid/webkit/WebView;->getRootView()Landroid/view/View;

    move-result-object p1

    .line 198
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_4f

    .line 199
    move-object v0, p1

    check-cast v0, Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 200
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 201
    invoke-virtual {v0}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-static {v2}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 202
    invoke-virtual {v0, v1}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 203
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 204
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 205
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 206
    check-cast p1, Landroid/view/ViewGroup;

    new-instance p0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {p0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v0, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_4f
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_4f} :catch_50

    .line 211
    :cond_4f
    goto :goto_51

    .line 210
    :catch_50
    move-exception p0

    .line 214
    :cond_51
    :goto_51
    return-void

    .line 189
    :cond_52
    :goto_52
    return-void
.end method

.method public static a(Landroid/webkit/WebView;)V
    .registers 3

    .line 221
    if-nez p0, :cond_3

    .line 222
    return-void

    .line 224
    :cond_3
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 225
    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 226
    invoke-virtual {p0}, Landroid/webkit/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 227
    if-eqz v0, :cond_19

    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_19

    .line 228
    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 230
    :cond_19
    invoke-virtual {p0}, Landroid/webkit/WebView;->removeAllViews()V

    .line 232
    :try_start_1c
    invoke-virtual {p0}, Landroid/webkit/WebView;->destroy()V
    :try_end_1f
    .catchall {:try_start_1c .. :try_end_1f} :catchall_20

    .line 234
    goto :goto_21

    .line 233
    :catchall_20
    move-exception p0

    .line 235
    :goto_21
    return-void
.end method

.method private static a()Z
    .registers 2

    .line 217
    sget-boolean v0, Lcom/bytedance/sdk/openadsdk/core/aa;->a:Z

    if-nez v0, :cond_17

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-ne v0, v1, :cond_15

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "ZTE N5"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    goto :goto_17

    :cond_15
    const/4 v0, 0x0

    goto :goto_18

    :cond_17
    :goto_17
    const/4 v0, 0x1

    :goto_18
    return v0
.end method
