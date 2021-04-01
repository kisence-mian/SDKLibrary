.class public Lcom/sigmob/windad/consent/WindAdConsentForm;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/sigmob/windad/consent/ConsentFormListener;

.field private final b:Landroid/content/Context;

.field private final c:Z

.field private final d:Z

.field private final e:Z

.field private final f:Ljava/net/URL;

.field private final g:Landroid/app/Dialog;

.field private final h:Landroid/webkit/WebView;

.field private final i:Ljava/lang/String;

.field private j:Lcom/sigmob/windad/consent/WindAdConsentForm$LoadState;


# direct methods
.method private constructor <init>(Lcom/sigmob/windad/consent/WindAdConsentForm$Builder;)V
    .registers 6

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/sigmob/windad/consent/WindAdConsentForm$Builder;->a(Lcom/sigmob/windad/consent/WindAdConsentForm$Builder;)Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/sigmob/windad/consent/WindAdConsentForm;->b:Landroid/content/Context;

    invoke-static {p1}, Lcom/sigmob/windad/consent/WindAdConsentForm$Builder;->b(Lcom/sigmob/windad/consent/WindAdConsentForm$Builder;)Lcom/sigmob/windad/consent/ConsentFormListener;

    move-result-object v0

    if-nez v0, :cond_74

    new-instance v0, Lcom/sigmob/windad/consent/WindAdConsentForm$1;

    invoke-direct {v0, p0}, Lcom/sigmob/windad/consent/WindAdConsentForm$1;-><init>(Lcom/sigmob/windad/consent/WindAdConsentForm;)V

    iput-object v0, p0, Lcom/sigmob/windad/consent/WindAdConsentForm;->a:Lcom/sigmob/windad/consent/ConsentFormListener;

    :goto_17
    invoke-static {p1}, Lcom/sigmob/windad/consent/WindAdConsentForm$Builder;->c(Lcom/sigmob/windad/consent/WindAdConsentForm$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sigmob/windad/consent/WindAdConsentForm;->c:Z

    invoke-static {p1}, Lcom/sigmob/windad/consent/WindAdConsentForm$Builder;->d(Lcom/sigmob/windad/consent/WindAdConsentForm$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sigmob/windad/consent/WindAdConsentForm;->d:Z

    invoke-static {p1}, Lcom/sigmob/windad/consent/WindAdConsentForm$Builder;->e(Lcom/sigmob/windad/consent/WindAdConsentForm$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sigmob/windad/consent/WindAdConsentForm;->e:Z

    invoke-static {p1}, Lcom/sigmob/windad/consent/WindAdConsentForm$Builder;->f(Lcom/sigmob/windad/consent/WindAdConsentForm$Builder;)Ljava/net/URL;

    move-result-object v0

    iput-object v0, p0, Lcom/sigmob/windad/consent/WindAdConsentForm;->f:Ljava/net/URL;

    new-instance v0, Landroid/app/Dialog;

    iget-object v1, p0, Lcom/sigmob/windad/consent/WindAdConsentForm;->b:Landroid/content/Context;

    const v2, 0x1030010

    invoke-direct {v0, v1, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/sigmob/windad/consent/WindAdConsentForm;->g:Landroid/app/Dialog;

    sget-object v0, Lcom/sigmob/windad/consent/WindAdConsentForm$LoadState;->NOT_READY:Lcom/sigmob/windad/consent/WindAdConsentForm$LoadState;

    iput-object v0, p0, Lcom/sigmob/windad/consent/WindAdConsentForm;->j:Lcom/sigmob/windad/consent/WindAdConsentForm$LoadState;

    invoke-static {p1}, Lcom/sigmob/windad/consent/WindAdConsentForm$Builder;->g(Lcom/sigmob/windad/consent/WindAdConsentForm$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sigmob/windad/consent/WindAdConsentForm;->i:Ljava/lang/String;

    new-instance v0, Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/sigmob/windad/consent/WindAdConsentForm;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sigmob/windad/consent/WindAdConsentForm;->h:Landroid/webkit/WebView;

    iget-object v0, p0, Lcom/sigmob/windad/consent/WindAdConsentForm;->h:Landroid/webkit/WebView;

    invoke-virtual {v0, v3}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/sigmob/windad/consent/WindAdConsentForm;->g:Landroid/app/Dialog;

    iget-object v1, p0, Lcom/sigmob/windad/consent/WindAdConsentForm;->h:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/sigmob/windad/consent/WindAdConsentForm;->g:Landroid/app/Dialog;

    invoke-virtual {v0, v3}, Landroid/app/Dialog;->setCancelable(Z)V

    iget-object v0, p0, Lcom/sigmob/windad/consent/WindAdConsentForm;->h:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    iget-object v0, p0, Lcom/sigmob/windad/consent/WindAdConsentForm;->h:Landroid/webkit/WebView;

    new-instance v1, Lcom/sigmob/windad/consent/WindAdConsentForm$2;

    invoke-direct {v1, p0}, Lcom/sigmob/windad/consent/WindAdConsentForm$2;-><init>(Lcom/sigmob/windad/consent/WindAdConsentForm;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    return-void

    :cond_74
    invoke-static {p1}, Lcom/sigmob/windad/consent/WindAdConsentForm$Builder;->b(Lcom/sigmob/windad/consent/WindAdConsentForm$Builder;)Lcom/sigmob/windad/consent/ConsentFormListener;

    move-result-object v0

    iput-object v0, p0, Lcom/sigmob/windad/consent/WindAdConsentForm;->a:Lcom/sigmob/windad/consent/ConsentFormListener;

    goto :goto_17
.end method

.method synthetic constructor <init>(Lcom/sigmob/windad/consent/WindAdConsentForm$Builder;Lcom/sigmob/windad/consent/WindAdConsentForm$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/sigmob/windad/consent/WindAdConsentForm;-><init>(Lcom/sigmob/windad/consent/WindAdConsentForm$Builder;)V

    return-void
.end method

.method static synthetic a(Lcom/sigmob/windad/consent/WindAdConsentForm;)Lcom/sigmob/windad/consent/ConsentFormListener;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/windad/consent/WindAdConsentForm;->a:Lcom/sigmob/windad/consent/ConsentFormListener;

    return-object v0
.end method

.method static synthetic a(Lcom/sigmob/windad/consent/WindAdConsentForm;Lcom/sigmob/windad/consent/WindAdConsentForm$LoadState;)Lcom/sigmob/windad/consent/WindAdConsentForm$LoadState;
    .registers 2

    iput-object p1, p0, Lcom/sigmob/windad/consent/WindAdConsentForm;->j:Lcom/sigmob/windad/consent/WindAdConsentForm$LoadState;

    return-object p1
.end method

.method private static a(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;
    .registers 6

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "info"

    invoke-static {p1}, Lcom/sigmob/windad/consent/JSONSerializer;->Serialize(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "args"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "javascript:%s(%s)"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 v3, 0x1

    invoke-static {v1}, Lcom/sigmob/windad/consent/JSONSerializer;->Serialize(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v3

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(Landroid/webkit/WebView;)V
    .registers 5

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "app_name"

    iget-object v2, p0, Lcom/sigmob/windad/consent/WindAdConsentForm;->b:Landroid/content/Context;

    invoke-static {v2}, Lcom/sigmob/windad/consent/WindAdConsentForm;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "app_icon"

    iget-object v2, p0, Lcom/sigmob/windad/consent/WindAdConsentForm;->b:Landroid/content/Context;

    invoke-static {v2}, Lcom/sigmob/windad/consent/WindAdConsentForm;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "offer_personalized"

    iget-boolean v2, p0, Lcom/sigmob/windad/consent/WindAdConsentForm;->c:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "offer_non_personalized"

    iget-boolean v2, p0, Lcom/sigmob/windad/consent/WindAdConsentForm;->d:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "offer_ad_free"

    iget-boolean v2, p0, Lcom/sigmob/windad/consent/WindAdConsentForm;->e:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "is_request_in_eea_or_unknown"

    iget-object v2, p0, Lcom/sigmob/windad/consent/WindAdConsentForm;->b:Landroid/content/Context;

    invoke-static {v2}, Lcom/sigmob/windad/consent/WindAdConsentInformation;->getInstance(Landroid/content/Context;)Lcom/sigmob/windad/consent/WindAdConsentInformation;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sigmob/windad/consent/WindAdConsentInformation;->isRequestLocationInEeaOrUnknown()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "app_privacy_url"

    iget-object v2, p0, Lcom/sigmob/windad/consent/WindAdConsentForm;->f:Ljava/net/URL;

    invoke-virtual {v2}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/sigmob/windad/consent/WindAdConsentForm;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/sigmob/windad/consent/WindAdConsentInformation;->getInstance(Landroid/content/Context;)Lcom/sigmob/windad/consent/WindAdConsentInformation;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sigmob/windad/consent/WindAdConsentInformation;->a()Lcom/sigmob/windad/consent/ConsentData;

    move-result-object v1

    const-string v2, "consent_info"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "setUpConsentDialog"

    invoke-static {v1, v0}, Lcom/sigmob/windad/consent/WindAdConsentForm;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/sigmob/windad/consent/WindAdConsentForm;Landroid/webkit/WebView;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/sigmob/windad/consent/WindAdConsentForm;->a(Landroid/webkit/WebView;)V

    return-void
.end method

.method static synthetic a(Lcom/sigmob/windad/consent/WindAdConsentForm;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/sigmob/windad/consent/WindAdConsentForm;->b(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)Z
    .registers 3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_10

    const-string v0, "consent://"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method static synthetic b(Lcom/sigmob/windad/consent/WindAdConsentForm;)Landroid/webkit/WebView;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/windad/consent/WindAdConsentForm;->h:Landroid/webkit/WebView;

    return-object v0
.end method

.method private static b(Landroid/content/Context;)Ljava/lang/String;
    .registers 7

    const/4 v5, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getApplicationIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v2}, Landroid/graphics/Canvas;->getWidth()I

    move-result v3

    invoke-virtual {v2}, Landroid/graphics/Canvas;->getHeight()I

    move-result v4

    invoke-virtual {v0, v5, v5, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x64

    invoke-virtual {v1, v2, v3, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "data:image/png;base64,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, v5}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lcom/sigmob/windad/consent/WindAdConsentForm;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/sigmob/windad/consent/WindAdConsentForm;->d(Ljava/lang/String;)V

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .registers 4

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_12

    sget-object v0, Lcom/sigmob/windad/consent/WindAdConsentForm$LoadState;->NOT_READY:Lcom/sigmob/windad/consent/WindAdConsentForm$LoadState;

    iput-object v0, p0, Lcom/sigmob/windad/consent/WindAdConsentForm;->j:Lcom/sigmob/windad/consent/WindAdConsentForm$LoadState;

    iget-object v0, p0, Lcom/sigmob/windad/consent/WindAdConsentForm;->a:Lcom/sigmob/windad/consent/ConsentFormListener;

    const-string v1, "No information"

    invoke-virtual {v0, v1}, Lcom/sigmob/windad/consent/ConsentFormListener;->onConsentFormError(Ljava/lang/String;)V

    :goto_11
    return-void

    :cond_12
    const-string v0, "Error"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_24

    sget-object v0, Lcom/sigmob/windad/consent/WindAdConsentForm$LoadState;->NOT_READY:Lcom/sigmob/windad/consent/WindAdConsentForm$LoadState;

    iput-object v0, p0, Lcom/sigmob/windad/consent/WindAdConsentForm;->j:Lcom/sigmob/windad/consent/WindAdConsentForm$LoadState;

    iget-object v0, p0, Lcom/sigmob/windad/consent/WindAdConsentForm;->a:Lcom/sigmob/windad/consent/ConsentFormListener;

    invoke-virtual {v0, p1}, Lcom/sigmob/windad/consent/ConsentFormListener;->onConsentFormError(Ljava/lang/String;)V

    goto :goto_11

    :cond_24
    sget-object v0, Lcom/sigmob/windad/consent/WindAdConsentForm$LoadState;->LOADED:Lcom/sigmob/windad/consent/WindAdConsentForm$LoadState;

    iput-object v0, p0, Lcom/sigmob/windad/consent/WindAdConsentForm;->j:Lcom/sigmob/windad/consent/WindAdConsentForm$LoadState;

    iget-object v0, p0, Lcom/sigmob/windad/consent/WindAdConsentForm;->a:Lcom/sigmob/windad/consent/ConsentFormListener;

    invoke-virtual {v0}, Lcom/sigmob/windad/consent/ConsentFormListener;->onConsentFormLoaded()V

    goto :goto_11
.end method

.method static synthetic c(Lcom/sigmob/windad/consent/WindAdConsentForm;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/sigmob/windad/consent/WindAdConsentForm;->c(Ljava/lang/String;)V

    return-void
.end method

.method private c(Ljava/lang/String;)V
    .registers 5

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/sigmob/windad/consent/WindAdConsentForm;->a:Lcom/sigmob/windad/consent/ConsentFormListener;

    const-string v1, "No valid URL for browser navigation."

    invoke-virtual {v0, v1}, Lcom/sigmob/windad/consent/ConsentFormListener;->onConsentFormError(Ljava/lang/String;)V

    :goto_d
    return-void

    :cond_e
    :try_start_e
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iget-object v1, p0, Lcom/sigmob/windad/consent/WindAdConsentForm;->b:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1e
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_1e} :catch_1f

    goto :goto_d

    :catch_1f
    move-exception v0

    iget-object v0, p0, Lcom/sigmob/windad/consent/WindAdConsentForm;->a:Lcom/sigmob/windad/consent/ConsentFormListener;

    const-string v1, "No Activity found to handle browser intent."

    invoke-virtual {v0, v1}, Lcom/sigmob/windad/consent/ConsentFormListener;->onConsentFormError(Ljava/lang/String;)V

    goto :goto_d
.end method

.method private d(Ljava/lang/String;)V
    .registers 6

    const/4 v2, 0x1

    const/4 v1, 0x0

    sget-object v0, Lcom/sigmob/windad/consent/WindAdConsentForm$LoadState;->NOT_READY:Lcom/sigmob/windad/consent/WindAdConsentForm$LoadState;

    iput-object v0, p0, Lcom/sigmob/windad/consent/WindAdConsentForm;->j:Lcom/sigmob/windad/consent/WindAdConsentForm$LoadState;

    iget-object v0, p0, Lcom/sigmob/windad/consent/WindAdConsentForm;->g:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/sigmob/windad/consent/WindAdConsentForm;->a:Lcom/sigmob/windad/consent/ConsentFormListener;

    const-string v1, "No information provided."

    invoke-virtual {v0, v1}, Lcom/sigmob/windad/consent/ConsentFormListener;->onConsentFormError(Ljava/lang/String;)V

    :goto_18
    return-void

    :cond_19
    const-string v0, "Error"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_27

    iget-object v0, p0, Lcom/sigmob/windad/consent/WindAdConsentForm;->a:Lcom/sigmob/windad/consent/ConsentFormListener;

    invoke-virtual {v0, p1}, Lcom/sigmob/windad/consent/ConsentFormListener;->onConsentFormError(Ljava/lang/String;)V

    goto :goto_18

    :cond_27
    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_78

    :cond_2f
    :goto_2f
    packed-switch v0, :pswitch_data_86

    sget-object v0, Lcom/sigmob/windad/consent/ConsentStatus;->UNKNOWN:Lcom/sigmob/windad/consent/ConsentStatus;

    :goto_34
    iget-object v2, p0, Lcom/sigmob/windad/consent/WindAdConsentForm;->b:Landroid/content/Context;

    invoke-static {v2}, Lcom/sigmob/windad/consent/WindAdConsentInformation;->getInstance(Landroid/content/Context;)Lcom/sigmob/windad/consent/WindAdConsentInformation;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/sigmob/windad/consent/WindAdConsentInformation;->a(Lcom/sigmob/windad/consent/ConsentStatus;)V

    iget-object v2, p0, Lcom/sigmob/windad/consent/WindAdConsentForm;->b:Landroid/content/Context;

    invoke-static {v2}, Lcom/sigmob/windad/consent/WindAdConsentInformation;->getInstance(Landroid/content/Context;)Lcom/sigmob/windad/consent/WindAdConsentInformation;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/sigmob/windad/consent/WindAdConsentInformation;->a(Z)V

    iget-object v2, p0, Lcom/sigmob/windad/consent/WindAdConsentForm;->a:Lcom/sigmob/windad/consent/ConsentFormListener;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lcom/sigmob/windad/consent/ConsentFormListener;->onConsentFormClosed(Lcom/sigmob/windad/consent/ConsentStatus;Ljava/lang/Boolean;)V

    goto :goto_18

    :sswitch_50
    const-string v3, "personalized"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2f

    move v0, v1

    goto :goto_2f

    :sswitch_5a
    const-string v3, "non_personalized"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2f

    move v0, v2

    goto :goto_2f

    :sswitch_64
    const-string v3, "ad_free"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2f

    const/4 v0, 0x2

    goto :goto_2f

    :pswitch_6e
    sget-object v0, Lcom/sigmob/windad/consent/ConsentStatus;->ACCEPT:Lcom/sigmob/windad/consent/ConsentStatus;

    goto :goto_34

    :pswitch_71
    sget-object v0, Lcom/sigmob/windad/consent/ConsentStatus;->ACCEPT:Lcom/sigmob/windad/consent/ConsentStatus;

    goto :goto_34

    :pswitch_74
    sget-object v0, Lcom/sigmob/windad/consent/ConsentStatus;->DENIED:Lcom/sigmob/windad/consent/ConsentStatus;

    move v1, v2

    goto :goto_34

    :sswitch_data_78
    .sparse-switch
        -0x44b41ef8 -> :sswitch_64
        -0xf616830 -> :sswitch_50
        0x635b0c02 -> :sswitch_5a
    .end sparse-switch

    :pswitch_data_86
    .packed-switch 0x0
        :pswitch_6e
        :pswitch_71
        :pswitch_74
    .end packed-switch
.end method

.method static synthetic d(Lcom/sigmob/windad/consent/WindAdConsentForm;Ljava/lang/String;)Z
    .registers 3

    invoke-direct {p0, p1}, Lcom/sigmob/windad/consent/WindAdConsentForm;->a(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public isShowing()Z
    .registers 2

    iget-object v0, p0, Lcom/sigmob/windad/consent/WindAdConsentForm;->g:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    return v0
.end method

.method public load()V
    .registers 4

    iget-object v0, p0, Lcom/sigmob/windad/consent/WindAdConsentForm;->j:Lcom/sigmob/windad/consent/WindAdConsentForm$LoadState;

    sget-object v1, Lcom/sigmob/windad/consent/WindAdConsentForm$LoadState;->LOADING:Lcom/sigmob/windad/consent/WindAdConsentForm$LoadState;

    if-ne v0, v1, :cond_e

    iget-object v0, p0, Lcom/sigmob/windad/consent/WindAdConsentForm;->a:Lcom/sigmob/windad/consent/ConsentFormListener;

    const-string v1, "Cannot simultaneously load multiple windad.consent forms."

    invoke-virtual {v0, v1}, Lcom/sigmob/windad/consent/ConsentFormListener;->onConsentFormError(Ljava/lang/String;)V

    :goto_d
    return-void

    :cond_e
    iget-object v0, p0, Lcom/sigmob/windad/consent/WindAdConsentForm;->j:Lcom/sigmob/windad/consent/WindAdConsentForm$LoadState;

    sget-object v1, Lcom/sigmob/windad/consent/WindAdConsentForm$LoadState;->LOADED:Lcom/sigmob/windad/consent/WindAdConsentForm$LoadState;

    if-ne v0, v1, :cond_1a

    iget-object v0, p0, Lcom/sigmob/windad/consent/WindAdConsentForm;->a:Lcom/sigmob/windad/consent/ConsentFormListener;

    invoke-virtual {v0}, Lcom/sigmob/windad/consent/ConsentFormListener;->onConsentFormLoaded()V

    goto :goto_d

    :cond_1a
    sget-object v0, Lcom/sigmob/windad/consent/WindAdConsentForm$LoadState;->LOADING:Lcom/sigmob/windad/consent/WindAdConsentForm$LoadState;

    iput-object v0, p0, Lcom/sigmob/windad/consent/WindAdConsentForm;->j:Lcom/sigmob/windad/consent/WindAdConsentForm$LoadState;

    iget-object v0, p0, Lcom/sigmob/windad/consent/WindAdConsentForm;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/sigmob/windad/consent/WindAdConsentInformation;->getInstance(Landroid/content/Context;)Lcom/sigmob/windad/consent/WindAdConsentInformation;

    move-result-object v0

    iget-object v1, p0, Lcom/sigmob/windad/consent/WindAdConsentForm;->i:Ljava/lang/String;

    new-instance v2, Lcom/sigmob/windad/consent/WindAdConsentForm$3;

    invoke-direct {v2, p0}, Lcom/sigmob/windad/consent/WindAdConsentForm$3;-><init>(Lcom/sigmob/windad/consent/WindAdConsentForm;)V

    invoke-virtual {v0, v1, v2}, Lcom/sigmob/windad/consent/WindAdConsentInformation;->requestConsentInfoUpdate(Ljava/lang/String;Lcom/sigmob/windad/consent/ConsentInfoUpdateListener;)V

    goto :goto_d
.end method

.method public sholdOfferAdFree()Z
    .registers 2

    iget-boolean v0, p0, Lcom/sigmob/windad/consent/WindAdConsentForm;->e:Z

    return v0
.end method

.method public sholdOfferNonPersonalizedAds()Z
    .registers 2

    iget-boolean v0, p0, Lcom/sigmob/windad/consent/WindAdConsentForm;->d:Z

    return v0
.end method

.method public sholdOfferPersonalizedAds()Z
    .registers 2

    iget-boolean v0, p0, Lcom/sigmob/windad/consent/WindAdConsentForm;->c:Z

    return v0
.end method

.method public show()V
    .registers 4

    const/4 v2, -0x1

    iget-object v0, p0, Lcom/sigmob/windad/consent/WindAdConsentForm;->j:Lcom/sigmob/windad/consent/WindAdConsentForm$LoadState;

    sget-object v1, Lcom/sigmob/windad/consent/WindAdConsentForm$LoadState;->LOADED:Lcom/sigmob/windad/consent/WindAdConsentForm$LoadState;

    if-eq v0, v1, :cond_f

    iget-object v0, p0, Lcom/sigmob/windad/consent/WindAdConsentForm;->a:Lcom/sigmob/windad/consent/ConsentFormListener;

    const-string v1, "Consent form is not ready to be displayed."

    invoke-virtual {v0, v1}, Lcom/sigmob/windad/consent/ConsentFormListener;->onConsentFormError(Ljava/lang/String;)V

    :cond_e
    :goto_e
    return-void

    :cond_f
    iget-object v0, p0, Lcom/sigmob/windad/consent/WindAdConsentForm;->g:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Landroid/view/Window;->setLayout(II)V

    iget-object v0, p0, Lcom/sigmob/windad/consent/WindAdConsentForm;->g:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/sigmob/windad/consent/WindAdConsentForm;->g:Landroid/app/Dialog;

    new-instance v1, Lcom/sigmob/windad/consent/WindAdConsentForm$4;

    invoke-direct {v1, p0}, Lcom/sigmob/windad/consent/WindAdConsentForm$4;-><init>(Lcom/sigmob/windad/consent/WindAdConsentForm;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    iget-object v0, p0, Lcom/sigmob/windad/consent/WindAdConsentForm;->g:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    iget-object v0, p0, Lcom/sigmob/windad/consent/WindAdConsentForm;->g:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/sigmob/windad/consent/WindAdConsentForm;->a:Lcom/sigmob/windad/consent/ConsentFormListener;

    const-string v1, "Consent form could not be displayed."

    invoke-virtual {v0, v1}, Lcom/sigmob/windad/consent/ConsentFormListener;->onConsentFormError(Ljava/lang/String;)V

    goto :goto_e
.end method
