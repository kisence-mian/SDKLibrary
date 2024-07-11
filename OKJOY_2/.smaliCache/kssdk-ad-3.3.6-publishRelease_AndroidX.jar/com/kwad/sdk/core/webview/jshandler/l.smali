.class public Lcom/kwad/sdk/core/webview/jshandler/l;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/kwad/sdk/core/webview/a/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kwad/sdk/core/webview/jshandler/l$a;,
        Lcom/kwad/sdk/core/webview/jshandler/l$b;
    }
.end annotation


# instance fields
.field private final a:Lcom/kwad/sdk/core/webview/a;

.field private b:Lcom/kwad/sdk/core/download/b/b;

.field private c:Lcom/kwad/sdk/core/webview/a/c;

.field private d:Lcom/kwad/sdk/api/KsAppDownloadListener;

.field private e:Lcom/kwad/sdk/core/response/model/AdTemplate;


# direct methods
.method public constructor <init>(Lcom/kwad/sdk/core/webview/a;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/kwad/sdk/core/webview/jshandler/l;->a:Lcom/kwad/sdk/core/webview/a;

    :try_start_5
    new-instance v0, Lcom/kwad/sdk/core/response/model/AdTemplate;

    invoke-direct {v0}, Lcom/kwad/sdk/core/response/model/AdTemplate;-><init>()V

    iput-object v0, p0, Lcom/kwad/sdk/core/webview/jshandler/l;->e:Lcom/kwad/sdk/core/response/model/AdTemplate;

    iget-object v0, p1, Lcom/kwad/sdk/core/webview/a;->b:Lcom/kwad/sdk/core/response/model/AdTemplate;

    iget-object v0, v0, Lcom/kwad/sdk/core/response/model/AdTemplate;->mOriginJString:Ljava/lang/String;

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/kwad/sdk/core/webview/jshandler/l;->e:Lcom/kwad/sdk/core/response/model/AdTemplate;

    new-instance v1, Lorg/json/JSONObject;

    iget-object p1, p1, Lcom/kwad/sdk/core/webview/a;->b:Lcom/kwad/sdk/core/response/model/AdTemplate;

    iget-object p1, p1, Lcom/kwad/sdk/core/response/model/AdTemplate;->mOriginJString:Ljava/lang/String;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/core/response/model/AdTemplate;->parseJson(Lorg/json/JSONObject;)V

    goto :goto_31

    :cond_21
    iget-object v0, p0, Lcom/kwad/sdk/core/webview/jshandler/l;->e:Lcom/kwad/sdk/core/response/model/AdTemplate;

    iget-object p1, p1, Lcom/kwad/sdk/core/webview/a;->b:Lcom/kwad/sdk/core/response/model/AdTemplate;

    invoke-virtual {p1}, Lcom/kwad/sdk/core/response/model/AdTemplate;->toJson()Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/kwad/sdk/core/response/model/AdTemplate;->parseJson(Lorg/json/JSONObject;)V
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_2c} :catch_2d

    goto :goto_31

    :catch_2d
    move-exception p1

    invoke-static {p1}, Lcom/kwad/sdk/core/d/a;->a(Ljava/lang/Throwable;)V

    :goto_31
    return-void
.end method

.method private a(IF)V
    .registers 6

    iget-object v0, p0, Lcom/kwad/sdk/core/webview/jshandler/l;->c:Lcom/kwad/sdk/core/webview/a/c;

    if-eqz v0, :cond_13

    new-instance v0, Lcom/kwad/sdk/core/webview/jshandler/l$a;

    invoke-direct {v0}, Lcom/kwad/sdk/core/webview/jshandler/l$a;-><init>()V

    float-to-double v1, p2

    iput-wide v1, v0, Lcom/kwad/sdk/core/webview/jshandler/l$a;->a:D

    iput p1, v0, Lcom/kwad/sdk/core/webview/jshandler/l$a;->b:I

    iget-object p1, p0, Lcom/kwad/sdk/core/webview/jshandler/l;->c:Lcom/kwad/sdk/core/webview/a/c;

    invoke-interface {p1, v0}, Lcom/kwad/sdk/core/webview/a/c;->a(Lcom/kwad/sdk/core/b;)V

    :cond_13
    return-void
.end method

.method private static a(Lcom/kwad/sdk/core/response/model/AdInfo;Lcom/kwad/sdk/core/webview/jshandler/l$b;)V
    .registers 5

    iget-object v0, p0, Lcom/kwad/sdk/core/response/model/AdInfo;->adBaseInfo:Lcom/kwad/sdk/core/response/model/AdInfo$AdBaseInfo;

    const/4 v1, 0x1

    iput v1, v0, Lcom/kwad/sdk/core/response/model/AdInfo$AdBaseInfo;->adOperationType:I

    iget-object v0, p0, Lcom/kwad/sdk/core/response/model/AdInfo;->adBaseInfo:Lcom/kwad/sdk/core/response/model/AdInfo$AdBaseInfo;

    iget-object v1, p1, Lcom/kwad/sdk/core/webview/jshandler/l$b;->b:Ljava/lang/String;

    iput-object v1, v0, Lcom/kwad/sdk/core/response/model/AdInfo$AdBaseInfo;->appPackageName:Ljava/lang/String;

    iget-object v0, p0, Lcom/kwad/sdk/core/response/model/AdInfo;->adBaseInfo:Lcom/kwad/sdk/core/response/model/AdInfo$AdBaseInfo;

    iget-object v1, p1, Lcom/kwad/sdk/core/webview/jshandler/l$b;->a:Ljava/lang/String;

    iput-object v1, v0, Lcom/kwad/sdk/core/response/model/AdInfo$AdBaseInfo;->appName:Ljava/lang/String;

    iget-object v0, p0, Lcom/kwad/sdk/core/response/model/AdInfo;->adBaseInfo:Lcom/kwad/sdk/core/response/model/AdInfo$AdBaseInfo;

    iget-object v1, p1, Lcom/kwad/sdk/core/webview/jshandler/l$b;->c:Ljava/lang/String;

    iput-object v1, v0, Lcom/kwad/sdk/core/response/model/AdInfo$AdBaseInfo;->appVersion:Ljava/lang/String;

    iget-object v0, p0, Lcom/kwad/sdk/core/response/model/AdInfo;->adBaseInfo:Lcom/kwad/sdk/core/response/model/AdInfo$AdBaseInfo;

    iget-wide v1, p1, Lcom/kwad/sdk/core/webview/jshandler/l$b;->e:J

    iput-wide v1, v0, Lcom/kwad/sdk/core/response/model/AdInfo$AdBaseInfo;->packageSize:J

    iget-object v0, p0, Lcom/kwad/sdk/core/response/model/AdInfo;->adBaseInfo:Lcom/kwad/sdk/core/response/model/AdInfo$AdBaseInfo;

    iget-object v1, p1, Lcom/kwad/sdk/core/webview/jshandler/l$b;->h:Ljava/lang/String;

    iput-object v1, v0, Lcom/kwad/sdk/core/response/model/AdInfo$AdBaseInfo;->appIconUrl:Ljava/lang/String;

    iget-object v0, p0, Lcom/kwad/sdk/core/response/model/AdInfo;->adBaseInfo:Lcom/kwad/sdk/core/response/model/AdInfo$AdBaseInfo;

    iget-object v1, p1, Lcom/kwad/sdk/core/webview/jshandler/l$b;->i:Ljava/lang/String;

    iput-object v1, v0, Lcom/kwad/sdk/core/response/model/AdInfo$AdBaseInfo;->appDescription:Ljava/lang/String;

    iget-object v0, p0, Lcom/kwad/sdk/core/response/model/AdInfo;->adConversionInfo:Lcom/kwad/sdk/core/response/model/AdInfo$AdConversionInfo;

    iget-object p1, p1, Lcom/kwad/sdk/core/webview/jshandler/l$b;->g:Ljava/lang/String;

    iput-object p1, v0, Lcom/kwad/sdk/core/response/model/AdInfo$AdConversionInfo;->appDownloadUrl:Ljava/lang/String;

    iget-object p1, p0, Lcom/kwad/sdk/core/response/model/AdInfo;->adConversionInfo:Lcom/kwad/sdk/core/response/model/AdInfo$AdConversionInfo;

    iget-object p1, p1, Lcom/kwad/sdk/core/response/model/AdInfo$AdConversionInfo;->appDownloadUrl:Ljava/lang/String;

    invoke-static {p1}, Lcom/kwad/sdk/utils/p;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/kwad/sdk/core/response/model/AdInfo;->downloadId:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/kwad/sdk/core/webview/jshandler/l;IF)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/kwad/sdk/core/webview/jshandler/l;->a(IF)V

    return-void
.end method

.method private c()Lcom/kwad/sdk/api/KsAppDownloadListener;
    .registers 2

    new-instance v0, Lcom/kwad/sdk/core/webview/jshandler/l$1;

    invoke-direct {v0, p0}, Lcom/kwad/sdk/core/webview/jshandler/l$1;-><init>(Lcom/kwad/sdk/core/webview/jshandler/l;)V

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    const-string v0, "registerApkStatusListener"

    return-object v0
.end method

.method public a(Ljava/lang/String;Lcom/kwad/sdk/core/webview/a/c;)V
    .registers 6

    iget-object v0, p0, Lcom/kwad/sdk/core/webview/jshandler/l;->a:Lcom/kwad/sdk/core/webview/a;

    iget-object v0, v0, Lcom/kwad/sdk/core/webview/a;->b:Lcom/kwad/sdk/core/response/model/AdTemplate;

    if-nez v0, :cond_d

    const/4 p1, -0x1

    const-string v0, "native photo is null"

    invoke-interface {p2, p1, v0}, Lcom/kwad/sdk/core/webview/a/c;->a(ILjava/lang/String;)V

    return-void

    :cond_d
    iget-object v0, p0, Lcom/kwad/sdk/core/webview/jshandler/l;->b:Lcom/kwad/sdk/core/download/b/b;

    if-nez v0, :cond_39

    iget-object v0, p0, Lcom/kwad/sdk/core/webview/jshandler/l;->e:Lcom/kwad/sdk/core/response/model/AdTemplate;

    invoke-static {v0}, Lcom/kwad/sdk/core/response/b/c;->g(Lcom/kwad/sdk/core/response/model/AdTemplate;)Lcom/kwad/sdk/core/response/model/AdInfo;

    move-result-object v0

    new-instance v1, Lcom/kwad/sdk/core/webview/jshandler/l$b;

    invoke-direct {v1}, Lcom/kwad/sdk/core/webview/jshandler/l$b;-><init>()V

    :try_start_1c
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/kwad/sdk/core/webview/jshandler/l$b;->parseJson(Lorg/json/JSONObject;)V
    :try_end_24
    .catch Lorg/json/JSONException; {:try_start_1c .. :try_end_24} :catch_25

    goto :goto_29

    :catch_25
    move-exception p1

    invoke-static {p1}, Lcom/kwad/sdk/core/d/a;->a(Ljava/lang/Throwable;)V

    :goto_29
    invoke-static {v0, v1}, Lcom/kwad/sdk/core/webview/jshandler/l;->a(Lcom/kwad/sdk/core/response/model/AdInfo;Lcom/kwad/sdk/core/webview/jshandler/l$b;)V

    new-instance p1, Lcom/kwad/sdk/core/download/b/b;

    iget-object v0, p0, Lcom/kwad/sdk/core/webview/jshandler/l;->e:Lcom/kwad/sdk/core/response/model/AdTemplate;

    invoke-direct {p1, v0}, Lcom/kwad/sdk/core/download/b/b;-><init>(Lcom/kwad/sdk/core/response/model/AdTemplate;)V

    iput-object p1, p0, Lcom/kwad/sdk/core/webview/jshandler/l;->b:Lcom/kwad/sdk/core/download/b/b;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/kwad/sdk/core/download/b/b;->a(I)V

    :cond_39
    iput-object p2, p0, Lcom/kwad/sdk/core/webview/jshandler/l;->c:Lcom/kwad/sdk/core/webview/a/c;

    iget-object p1, p0, Lcom/kwad/sdk/core/webview/jshandler/l;->d:Lcom/kwad/sdk/api/KsAppDownloadListener;

    if-nez p1, :cond_4b

    invoke-direct {p0}, Lcom/kwad/sdk/core/webview/jshandler/l;->c()Lcom/kwad/sdk/api/KsAppDownloadListener;

    move-result-object p1

    iput-object p1, p0, Lcom/kwad/sdk/core/webview/jshandler/l;->d:Lcom/kwad/sdk/api/KsAppDownloadListener;

    iget-object p2, p0, Lcom/kwad/sdk/core/webview/jshandler/l;->b:Lcom/kwad/sdk/core/download/b/b;

    invoke-virtual {p2, p1}, Lcom/kwad/sdk/core/download/b/b;->a(Lcom/kwad/sdk/api/KsAppDownloadListener;)V

    goto :goto_50

    :cond_4b
    iget-object p2, p0, Lcom/kwad/sdk/core/webview/jshandler/l;->b:Lcom/kwad/sdk/core/download/b/b;

    invoke-virtual {p2, p1}, Lcom/kwad/sdk/core/download/b/b;->c(Lcom/kwad/sdk/api/KsAppDownloadListener;)V

    :goto_50
    return-void
.end method

.method public b()V
    .registers 4

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kwad/sdk/core/webview/jshandler/l;->c:Lcom/kwad/sdk/core/webview/a/c;

    iget-object v1, p0, Lcom/kwad/sdk/core/webview/jshandler/l;->b:Lcom/kwad/sdk/core/download/b/b;

    if-eqz v1, :cond_10

    iget-object v2, p0, Lcom/kwad/sdk/core/webview/jshandler/l;->d:Lcom/kwad/sdk/api/KsAppDownloadListener;

    if-eqz v2, :cond_10

    invoke-virtual {v1, v2}, Lcom/kwad/sdk/core/download/b/b;->b(Lcom/kwad/sdk/api/KsAppDownloadListener;)V

    iput-object v0, p0, Lcom/kwad/sdk/core/webview/jshandler/l;->d:Lcom/kwad/sdk/api/KsAppDownloadListener;

    :cond_10
    return-void
.end method
