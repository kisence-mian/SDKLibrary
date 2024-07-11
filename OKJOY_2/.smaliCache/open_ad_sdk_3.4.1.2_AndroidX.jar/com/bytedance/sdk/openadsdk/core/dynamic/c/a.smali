.class public Lcom/bytedance/sdk/openadsdk/core/dynamic/c/a;
.super Ljava/lang/Object;
.source "TemplateToModelParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/core/dynamic/c/a$a;
    }
.end annotation


# static fields
.field private static e:Ljava/lang/String;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/bytedance/sdk/openadsdk/core/widget/webview/SSWebView;

.field private c:Ljava/lang/String;

.field private d:Lcom/bytedance/sdk/openadsdk/core/dynamic/d/c;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/dynamic/c/a;->a:Landroid/content/Context;

    .line 30
    new-instance p1, Lcom/bytedance/sdk/openadsdk/core/widget/webview/SSWebView;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/dynamic/c/a;->a:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/SSWebView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/dynamic/c/a;->b:Lcom/bytedance/sdk/openadsdk/core/widget/webview/SSWebView;

    .line 31
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x13

    if-lt p1, v0, :cond_21

    .line 32
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/dynamic/c/a;->b:Lcom/bytedance/sdk/openadsdk/core/widget/webview/SSWebView;

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/dynamic/c/a$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/bytedance/sdk/openadsdk/core/dynamic/c/a$a;-><init>(Lcom/bytedance/sdk/openadsdk/core/dynamic/c/a;Lcom/bytedance/sdk/openadsdk/core/dynamic/c/a$1;)V

    const-string v1, "JS_DYNAMIC_LAYOUT_OBJ"

    invoke-virtual {p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/SSWebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    :cond_21
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/dynamic/c/a;->b:Lcom/bytedance/sdk/openadsdk/core/widget/webview/SSWebView;

    const-string v0, "about:blank"

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/SSWebView;->loadUrl(Ljava/lang/String;)V

    .line 35
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/dynamic/c/a;->a()V

    .line 36
    return-void
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/core/dynamic/c/a;)Landroid/content/Context;
    .registers 1

    .line 20
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/dynamic/c/a;->a:Landroid/content/Context;

    return-object p0
.end method

.method private a()V
    .registers 3

    .line 42
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/dynamic/c/a;->c()Ljava/lang/String;

    move-result-object v0

    .line 43
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_f

    .line 44
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/dynamic/c/a;->b:Lcom/bytedance/sdk/openadsdk/core/widget/webview/SSWebView;

    invoke-static {v1, v0}, Lcom/bytedance/sdk/openadsdk/utils/t;->a(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 46
    :cond_f
    return-void
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/core/dynamic/c/a;Ljava/lang/String;)V
    .registers 2

    .line 20
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/dynamic/c/a;->c(Ljava/lang/String;)V

    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .registers 1

    .line 38
    sput-object p0, Lcom/bytedance/sdk/openadsdk/core/dynamic/c/a;->e:Ljava/lang/String;

    .line 39
    return-void
.end method

.method private b()V
    .registers 3

    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "javascript:var res = getLayoutInfo("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/dynamic/c/a;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ");window."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "JS_DYNAMIC_LAYOUT_OBJ"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".calculateResult(JSON.stringify(res));"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 65
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/dynamic/c/a;->b:Lcom/bytedance/sdk/openadsdk/core/widget/webview/SSWebView;

    invoke-static {v1, v0}, Lcom/bytedance/sdk/openadsdk/utils/t;->a(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 66
    return-void
.end method

.method private static c()Ljava/lang/String;
    .registers 4

    .line 70
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/dynamic/c/a;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 71
    const/4 v0, 0x0

    return-object v0

    .line 73
    :cond_a
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/ak;->c(Landroid/content/Context;)I

    move-result v0

    int-to-float v0, v0

    .line 74
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->a()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/utils/ak;->d(Landroid/content/Context;)I

    move-result v1

    int-to-float v1, v1

    .line 76
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "var global = Function(\'return this\')();global.jsCoreGlobal = {width:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 78
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->a()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v0}, Lcom/bytedance/sdk/openadsdk/utils/ak;->b(Landroid/content/Context;F)I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ",height:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 80
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->a()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/bytedance/sdk/openadsdk/utils/ak;->b(Landroid/content/Context;F)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",os:\'Android\'};global.systemFontSizeRatioNative = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-wide v1, 0x3ff3333333333333L    # 1.2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 85
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "(function () {var JS_TTDYNAMIC_URL = \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/bytedance/sdk/openadsdk/core/dynamic/c/a;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\';var xhrObj = new XMLHttpRequest();xhrObj.open(\'GET\', JS_TTDYNAMIC_URL, false);xhrObj.send(\'\');var se = document.createElement(\'script\');se.type = \'text/javascript\';se.text = xhrObj.responseText;document.getElementsByTagName(\'head\')[0].appendChild(se);})();"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 97
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "javascript:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 98
    return-object v0
.end method

.method private c(Ljava/lang/String;)V
    .registers 4

    .line 186
    nop

    .line 187
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/dynamic/b/f;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/core/dynamic/b/f;-><init>()V

    .line 189
    :try_start_6
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 190
    invoke-static {v1, v0}, Lcom/bytedance/sdk/openadsdk/core/dynamic/b/f;->a(Lorg/json/JSONObject;Lcom/bytedance/sdk/openadsdk/core/dynamic/b/f;)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_e} :catch_f

    .line 193
    goto :goto_11

    .line 191
    :catch_f
    move-exception p1

    .line 192
    const/4 v0, 0x0

    .line 194
    :goto_11
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/dynamic/c/a;->d:Lcom/bytedance/sdk/openadsdk/core/dynamic/d/c;

    if-eqz p1, :cond_18

    .line 195
    invoke-interface {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/dynamic/d/c;->a(Lcom/bytedance/sdk/openadsdk/core/dynamic/b/f;)V

    .line 197
    :cond_18
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/dynamic/c/a;->d()V

    .line 198
    return-void
.end method

.method private d()V
    .registers 3

    .line 201
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/dynamic/c/a;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/dynamic/c/a;->b:Lcom/bytedance/sdk/openadsdk/core/widget/webview/SSWebView;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/aa;->a(Landroid/content/Context;Landroid/webkit/WebView;)V

    .line 202
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/dynamic/c/a;->b:Lcom/bytedance/sdk/openadsdk/core/widget/webview/SSWebView;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/aa;->a(Landroid/webkit/WebView;)V

    .line 203
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/dynamic/c/a;->b:Lcom/bytedance/sdk/openadsdk/core/widget/webview/SSWebView;

    .line 204
    return-void
.end method


# virtual methods
.method public a(Lcom/bytedance/sdk/openadsdk/core/dynamic/d/c;)V
    .registers 2

    .line 48
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/dynamic/c/a;->d:Lcom/bytedance/sdk/openadsdk/core/dynamic/d/c;

    .line 49
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .registers 3

    .line 52
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/dynamic/c/a;->c:Ljava/lang/String;

    .line 53
    sget-object p1, Lcom/bytedance/sdk/openadsdk/core/dynamic/c/a;->e:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_15

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/dynamic/c/a;->d:Lcom/bytedance/sdk/openadsdk/core/dynamic/d/c;

    if-eqz p1, :cond_15

    .line 54
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/dynamic/d/c;->a(Lcom/bytedance/sdk/openadsdk/core/dynamic/b/f;)V

    .line 55
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/dynamic/c/a;->d()V

    .line 58
    :cond_15
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/dynamic/c/a;->b()V

    .line 59
    return-void
.end method
