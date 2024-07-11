.class public Lcom/kwad/sdk/core/c/a/r;
.super Ljava/lang/Object;


# static fields
.field public static a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "+",
            "Lcom/kwad/sdk/core/response/a/a;",
            ">;",
            "Lcom/kwad/sdk/core/c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x1d

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Lcom/kwad/sdk/core/c/a/r;->a:Ljava/util/Map;

    const-class v1, Lcom/kwad/sdk/core/config/item/ProfileGuideConfigItem$ProfileGuideConfig;

    new-instance v2, Lcom/kwad/sdk/core/c/a/y;

    invoke-direct {v2}, Lcom/kwad/sdk/core/c/a/y;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/kwad/sdk/core/c/a/r;->a:Ljava/util/Map;

    const-class v1, Lcom/kwad/sdk/core/response/model/AdInfo$AdPreloadInfo;

    new-instance v2, Lcom/kwad/sdk/core/c/a/f;

    invoke-direct {v2}, Lcom/kwad/sdk/core/c/a/f;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/kwad/sdk/core/c/a/r;->a:Ljava/util/Map;

    const-class v1, Lcom/kwad/sdk/core/response/model/AdInfo$AdMaterialInfo;

    new-instance v2, Lcom/kwad/sdk/core/c/a/e;

    invoke-direct {v2}, Lcom/kwad/sdk/core/c/a/e;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/kwad/sdk/core/c/a/r;->a:Ljava/util/Map;

    const-class v1, Lcom/kwad/sdk/core/webview/jshandler/l$a;

    new-instance v2, Lcom/kwad/sdk/core/c/a/h;

    invoke-direct {v2}, Lcom/kwad/sdk/core/c/a/h;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/kwad/sdk/core/c/a/r;->a:Ljava/util/Map;

    const-class v1, Lcom/kwad/sdk/core/g/a/f;

    new-instance v2, Lcom/kwad/sdk/core/c/a/s;

    invoke-direct {v2}, Lcom/kwad/sdk/core/c/a/s;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/kwad/sdk/core/c/a/r;->a:Ljava/util/Map;

    const-class v1, Lcom/kwad/sdk/core/response/model/ABParams;

    new-instance v2, Lcom/kwad/sdk/core/c/a/a;

    invoke-direct {v2}, Lcom/kwad/sdk/core/c/a/a;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/kwad/sdk/core/c/a/r;->a:Ljava/util/Map;

    const-class v1, Lcom/kwad/sdk/core/webview/jshandler/a$a;

    new-instance v2, Lcom/kwad/sdk/core/c/a/b;

    invoke-direct {v2}, Lcom/kwad/sdk/core/c/a/b;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/kwad/sdk/core/c/a/r;->a:Ljava/util/Map;

    const-class v1, Lcom/kwad/sdk/core/webview/jshandler/g$a;

    new-instance v2, Lcom/kwad/sdk/core/c/a/ab;

    invoke-direct {v2}, Lcom/kwad/sdk/core/c/a/ab;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/kwad/sdk/core/c/a/r;->a:Ljava/util/Map;

    const-class v1, Lcom/kwad/sdk/core/response/model/AdInfo$AdConversionInfo;

    new-instance v2, Lcom/kwad/sdk/core/c/a/d;

    invoke-direct {v2}, Lcom/kwad/sdk/core/c/a/d;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/kwad/sdk/core/c/a/r;->a:Ljava/util/Map;

    const-class v1, Lcom/kwad/sdk/core/response/model/AdStyleInfo$FeedAdInfo;

    new-instance v2, Lcom/kwad/sdk/core/c/a/n;

    invoke-direct {v2}, Lcom/kwad/sdk/core/c/a/n;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/kwad/sdk/core/c/a/r;->a:Ljava/util/Map;

    const-class v1, Lcom/kwad/sdk/core/preload/SplashPreloadManager$PreLoadItem;

    new-instance v2, Lcom/kwad/sdk/core/c/a/w;

    invoke-direct {v2}, Lcom/kwad/sdk/core/c/a/w;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/kwad/sdk/core/c/a/r;->a:Ljava/util/Map;

    const-class v1, Lcom/kwad/sdk/core/report/b$a;

    new-instance v2, Lcom/kwad/sdk/core/c/a/m;

    invoke-direct {v2}, Lcom/kwad/sdk/core/c/a/m;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/kwad/sdk/core/c/a/r;->a:Ljava/util/Map;

    const-class v1, Lcom/kwad/sdk/core/response/model/AdInfo$AdMaterialInfo$MaterialFeature;

    new-instance v2, Lcom/kwad/sdk/core/c/a/t;

    invoke-direct {v2}, Lcom/kwad/sdk/core/c/a/t;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/kwad/sdk/core/c/a/r;->a:Ljava/util/Map;

    const-class v1, Lcom/kwad/sdk/core/webview/jshandler/WebCardVideoPositionHandler$VideoPosition;

    new-instance v2, Lcom/kwad/sdk/core/c/a/ac;

    invoke-direct {v2}, Lcom/kwad/sdk/core/c/a/ac;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/kwad/sdk/core/c/a/r;->a:Ljava/util/Map;

    const-class v1, Lcom/kwad/sdk/core/webview/jshandler/p$a;

    new-instance v2, Lcom/kwad/sdk/core/c/a/ad;

    invoke-direct {v2}, Lcom/kwad/sdk/core/c/a/ad;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/kwad/sdk/core/c/a/r;->a:Ljava/util/Map;

    const-class v1, Lcom/kwad/sdk/core/response/model/SdkConfigData$TemplateConfig;

    new-instance v2, Lcom/kwad/sdk/core/c/a/z;

    invoke-direct {v2}, Lcom/kwad/sdk/core/c/a/z;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/kwad/sdk/core/c/a/r;->a:Ljava/util/Map;

    const-class v1, Lcom/kwad/sdk/core/report/o$a;

    new-instance v2, Lcom/kwad/sdk/core/c/a/j;

    invoke-direct {v2}, Lcom/kwad/sdk/core/c/a/j;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/kwad/sdk/core/c/a/r;->a:Ljava/util/Map;

    const-class v1, Lcom/kwad/sdk/core/preload/SplashPreloadManager$PreLoadPara;

    new-instance v2, Lcom/kwad/sdk/core/c/a/x;

    invoke-direct {v2}, Lcom/kwad/sdk/core/c/a/x;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/kwad/sdk/core/c/a/r;->a:Ljava/util/Map;

    const-class v1, Lcom/kwad/sdk/home/download/HomeApkBannerData;

    new-instance v2, Lcom/kwad/sdk/core/c/a/o;

    invoke-direct {v2}, Lcom/kwad/sdk/core/c/a/o;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/kwad/sdk/core/c/a/r;->a:Ljava/util/Map;

    const-class v1, Lcom/kwad/sdk/core/response/model/AdInfo$AdSplashInfo;

    new-instance v2, Lcom/kwad/sdk/core/c/a/g;

    invoke-direct {v2}, Lcom/kwad/sdk/core/c/a/g;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/kwad/sdk/core/c/a/r;->a:Ljava/util/Map;

    const-class v1, Lcom/kwad/sdk/core/response/model/AdInfo$AdBaseInfo;

    new-instance v2, Lcom/kwad/sdk/core/c/a/c;

    invoke-direct {v2}, Lcom/kwad/sdk/core/c/a/c;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/kwad/sdk/core/c/a/r;->a:Ljava/util/Map;

    const-class v1, Lcom/kwad/sdk/core/config/item/InstallActivateReminderConfigItem$InstallActivateReminderConfig;

    new-instance v2, Lcom/kwad/sdk/core/c/a/p;

    invoke-direct {v2}, Lcom/kwad/sdk/core/c/a/p;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/kwad/sdk/core/c/a/r;->a:Ljava/util/Map;

    const-class v1, Lcom/kwad/sdk/core/webview/jshandler/q$a;

    new-instance v2, Lcom/kwad/sdk/core/c/a/q;

    invoke-direct {v2}, Lcom/kwad/sdk/core/c/a/q;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/kwad/sdk/core/c/a/r;->a:Ljava/util/Map;

    const-class v1, Lcom/kwad/sdk/core/response/model/AdInfo$PlayableStyleInfo;

    new-instance v2, Lcom/kwad/sdk/core/c/a/v;

    invoke-direct {v2}, Lcom/kwad/sdk/core/c/a/v;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/kwad/sdk/core/c/a/r;->a:Ljava/util/Map;

    const-class v1, Lcom/kwad/sdk/core/response/model/AdInfo$MaterialSize;

    new-instance v2, Lcom/kwad/sdk/core/c/a/u;

    invoke-direct {v2}, Lcom/kwad/sdk/core/c/a/u;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/kwad/sdk/core/c/a/r;->a:Ljava/util/Map;

    const-class v1, Lcom/kwad/sdk/core/webview/jshandler/l$b;

    new-instance v2, Lcom/kwad/sdk/core/c/a/i;

    invoke-direct {v2}, Lcom/kwad/sdk/core/c/a/i;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/kwad/sdk/core/c/a/r;->a:Ljava/util/Map;

    const-class v1, Lcom/kwad/sdk/core/response/model/AdInfo$DownloadSafeInfo;

    new-instance v2, Lcom/kwad/sdk/core/c/a/l;

    invoke-direct {v2}, Lcom/kwad/sdk/core/c/a/l;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/kwad/sdk/core/c/a/r;->a:Ljava/util/Map;

    const-class v1, Lcom/kwad/sdk/core/download/DownloadParams;

    new-instance v2, Lcom/kwad/sdk/core/c/a/k;

    invoke-direct {v2}, Lcom/kwad/sdk/core/c/a/k;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/kwad/sdk/core/c/a/r;->a:Ljava/util/Map;

    const-class v1, Lcom/kwad/sdk/core/response/model/SdkConfigData$TemplateConfigMap;

    new-instance v2, Lcom/kwad/sdk/core/c/a/aa;

    invoke-direct {v2}, Lcom/kwad/sdk/core/c/a/aa;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static a(Lcom/kwad/sdk/core/response/a/a;)Lcom/kwad/sdk/core/c;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/kwad/sdk/core/response/a/a;",
            ">(TT;)",
            "Lcom/kwad/sdk/core/c<",
            "TT;>;"
        }
    .end annotation

    sget-object v0, Lcom/kwad/sdk/core/c/a/r;->a:Ljava/util/Map;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/kwad/sdk/core/c;

    return-object p0
.end method
