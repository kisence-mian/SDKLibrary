.class public Lcom/qq/e/ads/cfg/GDTAD;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qq/e/ads/cfg/GDTAD$InitListener;
    }
.end annotation


# static fields
.field private static a:Z

.field private static b:Lcom/qq/e/ads/cfg/GDTAD$InitListener;

.field private static c:Lcom/qq/e/comm/managers/plugin/PM$a$a;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/qq/e/ads/cfg/GDTAD;->a:Z

    new-instance v0, Lcom/qq/e/ads/cfg/GDTAD$1;

    invoke-direct {v0}, Lcom/qq/e/ads/cfg/GDTAD$1;-><init>()V

    sput-object v0, Lcom/qq/e/ads/cfg/GDTAD;->c:Lcom/qq/e/comm/managers/plugin/PM$a$a;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a()Lcom/qq/e/ads/cfg/GDTAD$InitListener;
    .registers 1

    sget-object v0, Lcom/qq/e/ads/cfg/GDTAD;->b:Lcom/qq/e/ads/cfg/GDTAD$InitListener;

    return-object v0
.end method

.method static synthetic a(Z)Z
    .registers 2

    const/4 v0, 0x1

    sput-boolean v0, Lcom/qq/e/ads/cfg/GDTAD;->a:Z

    return v0
.end method

.method public static initSDK(Landroid/content/Context;Ljava/lang/String;Lcom/qq/e/ads/cfg/GDTAD$InitListener;)V
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "listener"    # Lcom/qq/e/ads/cfg/GDTAD$InitListener;

    .prologue
    sget-boolean v0, Lcom/qq/e/ads/cfg/GDTAD;->a:Z

    if-eqz v0, :cond_b

    const-string v0, "SDK\u5df2\u7ecf\u88ab\u521d\u59cb\u5316\u8fc7"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/qq/e/comm/util/GDTLogger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_a
    return-void

    :cond_b
    if-nez p0, :cond_13

    const-string v0, "Context\u53c2\u6570\u4e0d\u80fd\u4e3anull"

    invoke-static {v0}, Lcom/qq/e/comm/util/GDTLogger;->e(Ljava/lang/String;)V

    goto :goto_a

    :cond_13
    invoke-static {p1}, Lcom/qq/e/comm/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1f

    const-string v0, "AppId\u53c2\u6570\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-static {v0}, Lcom/qq/e/comm/util/GDTLogger;->e(Ljava/lang/String;)V

    goto :goto_a

    :cond_1f
    sput-object p2, Lcom/qq/e/ads/cfg/GDTAD;->b:Lcom/qq/e/ads/cfg/GDTAD$InitListener;

    invoke-static {}, Lcom/qq/e/comm/managers/GDTADManager;->getInstance()Lcom/qq/e/comm/managers/GDTADManager;

    move-result-object v0

    sget-object v1, Lcom/qq/e/ads/cfg/GDTAD;->c:Lcom/qq/e/comm/managers/plugin/PM$a$a;

    invoke-virtual {v0, v1}, Lcom/qq/e/comm/managers/GDTADManager;->setPluginLoadListener(Lcom/qq/e/comm/managers/plugin/PM$a$a;)V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/qq/e/comm/managers/GDTADManager;->initWith(Landroid/content/Context;Ljava/lang/String;)Z

    goto :goto_a
.end method
