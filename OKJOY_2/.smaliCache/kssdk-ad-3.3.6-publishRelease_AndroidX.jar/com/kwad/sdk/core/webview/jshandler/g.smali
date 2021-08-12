.class public Lcom/kwad/sdk/core/webview/jshandler/g;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/kwad/sdk/core/webview/a/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kwad/sdk/core/webview/jshandler/g$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/kwad/sdk/core/webview/a;

.field private b:Lcom/kwad/sdk/core/response/model/AdTemplate;

.field private c:Lcom/kwad/sdk/core/download/b/b;

.field private d:Landroid/os/Handler;

.field private e:Lcom/kwad/sdk/core/webview/jshandler/g$a;


# direct methods
.method public constructor <init>(Lcom/kwad/sdk/core/webview/a;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/kwad/sdk/core/webview/jshandler/g$a;

    invoke-direct {v0}, Lcom/kwad/sdk/core/webview/jshandler/g$a;-><init>()V

    iput-object v0, p0, Lcom/kwad/sdk/core/webview/jshandler/g;->e:Lcom/kwad/sdk/core/webview/jshandler/g$a;

    iput-object p1, p0, Lcom/kwad/sdk/core/webview/jshandler/g;->a:Lcom/kwad/sdk/core/webview/a;

    new-instance v0, Lcom/kwad/sdk/core/response/model/AdTemplate;

    invoke-direct {v0}, Lcom/kwad/sdk/core/response/model/AdTemplate;-><init>()V

    iput-object v0, p0, Lcom/kwad/sdk/core/webview/jshandler/g;->b:Lcom/kwad/sdk/core/response/model/AdTemplate;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/kwad/sdk/core/webview/jshandler/g;->d:Landroid/os/Handler;

    :try_start_1e
    iget-object v0, p1, Lcom/kwad/sdk/core/webview/a;->b:Lcom/kwad/sdk/core/response/model/AdTemplate;

    iget-object v0, v0, Lcom/kwad/sdk/core/response/model/AdTemplate;->mOriginJString:Ljava/lang/String;

    if-eqz v0, :cond_33

    iget-object v0, p0, Lcom/kwad/sdk/core/webview/jshandler/g;->b:Lcom/kwad/sdk/core/response/model/AdTemplate;

    new-instance v1, Lorg/json/JSONObject;

    iget-object p1, p1, Lcom/kwad/sdk/core/webview/a;->b:Lcom/kwad/sdk/core/response/model/AdTemplate;

    iget-object p1, p1, Lcom/kwad/sdk/core/response/model/AdTemplate;->mOriginJString:Ljava/lang/String;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/core/response/model/AdTemplate;->parseJson(Lorg/json/JSONObject;)V

    goto :goto_43

    :cond_33
    iget-object v0, p0, Lcom/kwad/sdk/core/webview/jshandler/g;->b:Lcom/kwad/sdk/core/response/model/AdTemplate;

    iget-object p1, p1, Lcom/kwad/sdk/core/webview/a;->b:Lcom/kwad/sdk/core/response/model/AdTemplate;

    invoke-virtual {p1}, Lcom/kwad/sdk/core/response/model/AdTemplate;->toJson()Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/kwad/sdk/core/response/model/AdTemplate;->parseJson(Lorg/json/JSONObject;)V
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_3e} :catch_3f

    goto :goto_43

    :catch_3f
    move-exception p1

    invoke-static {p1}, Lcom/kwad/sdk/core/d/a;->a(Ljava/lang/Throwable;)V

    :goto_43
    return-void
.end method

.method static synthetic a(Lcom/kwad/sdk/core/webview/jshandler/g;)Lcom/kwad/sdk/core/webview/a;
    .registers 1

    iget-object p0, p0, Lcom/kwad/sdk/core/webview/jshandler/g;->a:Lcom/kwad/sdk/core/webview/a;

    return-object p0
.end method

.method private static a(Lcom/kwad/sdk/core/response/model/AdInfo;Lcom/kwad/sdk/core/webview/jshandler/g$a;)V
    .registers 5

    iget-object v0, p0, Lcom/kwad/sdk/core/response/model/AdInfo;->adConversionInfo:Lcom/kwad/sdk/core/response/model/AdInfo$AdConversionInfo;

    iget-object v1, p1, Lcom/kwad/sdk/core/webview/jshandler/g$a;->i:Ljava/lang/String;

    iput-object v1, v0, Lcom/kwad/sdk/core/response/model/AdInfo$AdConversionInfo;->deeplinkUrl:Ljava/lang/String;

    iget-object v1, p1, Lcom/kwad/sdk/core/webview/jshandler/g$a;->m:Ljava/lang/String;

    iput-object v1, v0, Lcom/kwad/sdk/core/response/model/AdInfo$AdConversionInfo;->marketUrl:Ljava/lang/String;

    iget-object v0, p0, Lcom/kwad/sdk/core/response/model/AdInfo;->adBaseInfo:Lcom/kwad/sdk/core/response/model/AdInfo$AdBaseInfo;

    iget v1, p1, Lcom/kwad/sdk/core/webview/jshandler/g$a;->a:I

    iput v1, v0, Lcom/kwad/sdk/core/response/model/AdInfo$AdBaseInfo;->adOperationType:I

    iget-object v0, p0, Lcom/kwad/sdk/core/response/model/AdInfo;->adBaseInfo:Lcom/kwad/sdk/core/response/model/AdInfo$AdBaseInfo;

    iget-object v1, p1, Lcom/kwad/sdk/core/webview/jshandler/g$a;->c:Ljava/lang/String;

    iput-object v1, v0, Lcom/kwad/sdk/core/response/model/AdInfo$AdBaseInfo;->appPackageName:Ljava/lang/String;

    iget-object v0, p0, Lcom/kwad/sdk/core/response/model/AdInfo;->adBaseInfo:Lcom/kwad/sdk/core/response/model/AdInfo$AdBaseInfo;

    iget-object v1, p1, Lcom/kwad/sdk/core/webview/jshandler/g$a;->b:Ljava/lang/String;

    iput-object v1, v0, Lcom/kwad/sdk/core/response/model/AdInfo$AdBaseInfo;->appName:Ljava/lang/String;

    iget-object v0, p0, Lcom/kwad/sdk/core/response/model/AdInfo;->adBaseInfo:Lcom/kwad/sdk/core/response/model/AdInfo$AdBaseInfo;

    iget-object v1, p1, Lcom/kwad/sdk/core/webview/jshandler/g$a;->d:Ljava/lang/String;

    iput-object v1, v0, Lcom/kwad/sdk/core/response/model/AdInfo$AdBaseInfo;->appVersion:Ljava/lang/String;

    iget-object v0, p0, Lcom/kwad/sdk/core/response/model/AdInfo;->adBaseInfo:Lcom/kwad/sdk/core/response/model/AdInfo$AdBaseInfo;

    iget v1, p1, Lcom/kwad/sdk/core/webview/jshandler/g$a;->f:I

    int-to-long v1, v1

    iput-wide v1, v0, Lcom/kwad/sdk/core/response/model/AdInfo$AdBaseInfo;->packageSize:J

    iget-object v0, p0, Lcom/kwad/sdk/core/response/model/AdInfo;->adBaseInfo:Lcom/kwad/sdk/core/response/model/AdInfo$AdBaseInfo;

    iget-object v1, p1, Lcom/kwad/sdk/core/webview/jshandler/g$a;->j:Ljava/lang/String;

    iput-object v1, v0, Lcom/kwad/sdk/core/response/model/AdInfo$AdBaseInfo;->appIconUrl:Ljava/lang/String;

    iget-object v0, p0, Lcom/kwad/sdk/core/response/model/AdInfo;->adBaseInfo:Lcom/kwad/sdk/core/response/model/AdInfo$AdBaseInfo;

    iget-object v1, p1, Lcom/kwad/sdk/core/webview/jshandler/g$a;->k:Ljava/lang/String;

    iput-object v1, v0, Lcom/kwad/sdk/core/response/model/AdInfo$AdBaseInfo;->appDescription:Ljava/lang/String;

    invoke-static {p0}, Lcom/kwad/sdk/core/response/b/a;->t(Lcom/kwad/sdk/core/response/model/AdInfo;)Z

    move-result v0

    if-eqz v0, :cond_4c

    iget-object v0, p0, Lcom/kwad/sdk/core/response/model/AdInfo;->adConversionInfo:Lcom/kwad/sdk/core/response/model/AdInfo$AdConversionInfo;

    iget-object p1, p1, Lcom/kwad/sdk/core/webview/jshandler/g$a;->h:Ljava/lang/String;

    iput-object p1, v0, Lcom/kwad/sdk/core/response/model/AdInfo$AdConversionInfo;->appDownloadUrl:Ljava/lang/String;

    iget-object p1, p0, Lcom/kwad/sdk/core/response/model/AdInfo;->adConversionInfo:Lcom/kwad/sdk/core/response/model/AdInfo$AdConversionInfo;

    iget-object p1, p1, Lcom/kwad/sdk/core/response/model/AdInfo$AdConversionInfo;->appDownloadUrl:Ljava/lang/String;

    invoke-static {p1}, Lcom/kwad/sdk/utils/p;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/kwad/sdk/core/response/model/AdInfo;->downloadId:Ljava/lang/String;

    goto :goto_52

    :cond_4c
    iget-object p0, p0, Lcom/kwad/sdk/core/response/model/AdInfo;->adConversionInfo:Lcom/kwad/sdk/core/response/model/AdInfo$AdConversionInfo;

    iget-object p1, p1, Lcom/kwad/sdk/core/webview/jshandler/g$a;->h:Ljava/lang/String;

    iput-object p1, p0, Lcom/kwad/sdk/core/response/model/AdInfo$AdConversionInfo;->h5Url:Ljava/lang/String;

    :goto_52
    return-void
.end method

.method static synthetic b(Lcom/kwad/sdk/core/webview/jshandler/g;)Lcom/kwad/sdk/core/response/model/AdTemplate;
    .registers 1

    iget-object p0, p0, Lcom/kwad/sdk/core/webview/jshandler/g;->b:Lcom/kwad/sdk/core/response/model/AdTemplate;

    return-object p0
.end method

.method static synthetic c(Lcom/kwad/sdk/core/webview/jshandler/g;)Lcom/kwad/sdk/core/download/b/b;
    .registers 1

    iget-object p0, p0, Lcom/kwad/sdk/core/webview/jshandler/g;->c:Lcom/kwad/sdk/core/download/b/b;

    return-object p0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    const-string v0, "handleAdUrl"

    return-object v0
.end method

.method public a(Ljava/lang/String;Lcom/kwad/sdk/core/webview/a/c;)V
    .registers 5

    :try_start_0
    iget-object v0, p0, Lcom/kwad/sdk/core/webview/jshandler/g;->e:Lcom/kwad/sdk/core/webview/jshandler/g$a;

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/core/webview/jshandler/g$a;->parseJson(Lorg/json/JSONObject;)V

    iget-object p1, p0, Lcom/kwad/sdk/core/webview/jshandler/g;->b:Lcom/kwad/sdk/core/response/model/AdTemplate;

    invoke-static {p1}, Lcom/kwad/sdk/core/response/b/c;->g(Lcom/kwad/sdk/core/response/model/AdTemplate;)Lcom/kwad/sdk/core/response/model/AdInfo;

    move-result-object p1

    iget-object v0, p0, Lcom/kwad/sdk/core/webview/jshandler/g;->e:Lcom/kwad/sdk/core/webview/jshandler/g$a;

    invoke-static {p1, v0}, Lcom/kwad/sdk/core/webview/jshandler/g;->a(Lcom/kwad/sdk/core/response/model/AdInfo;Lcom/kwad/sdk/core/webview/jshandler/g$a;)V

    iget-object p1, p0, Lcom/kwad/sdk/core/webview/jshandler/g;->c:Lcom/kwad/sdk/core/download/b/b;

    if-nez p1, :cond_26

    new-instance p1, Lcom/kwad/sdk/core/download/b/b;

    iget-object v0, p0, Lcom/kwad/sdk/core/webview/jshandler/g;->b:Lcom/kwad/sdk/core/response/model/AdTemplate;

    invoke-direct {p1, v0}, Lcom/kwad/sdk/core/download/b/b;-><init>(Lcom/kwad/sdk/core/response/model/AdTemplate;)V

    iput-object p1, p0, Lcom/kwad/sdk/core/webview/jshandler/g;->c:Lcom/kwad/sdk/core/download/b/b;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/kwad/sdk/core/download/b/b;->a(I)V

    :cond_26
    iget-object p1, p0, Lcom/kwad/sdk/core/webview/jshandler/g;->d:Landroid/os/Handler;

    new-instance v0, Lcom/kwad/sdk/core/webview/jshandler/g$1;

    invoke-direct {v0, p0}, Lcom/kwad/sdk/core/webview/jshandler/g$1;-><init>(Lcom/kwad/sdk/core/webview/jshandler/g;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_30
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_30} :catch_31

    goto :goto_35

    :catch_31
    move-exception p1

    invoke-static {p1}, Lcom/kwad/sdk/core/d/a;->a(Ljava/lang/Throwable;)V

    :goto_35
    const/4 p1, 0x0

    invoke-interface {p2, p1}, Lcom/kwad/sdk/core/webview/a/c;->a(Lcom/kwad/sdk/core/b;)V

    return-void
.end method

.method public b()V
    .registers 3

    iget-object v0, p0, Lcom/kwad/sdk/core/webview/jshandler/g;->d:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method
