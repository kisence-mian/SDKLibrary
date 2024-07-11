.class public Lcom/okjoy/okjoysdk/app/OkJoySdkApplication;
.super Landroid/app/Application;
.source ""


# static fields
.field public static mAppContext:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method

.method public static getAppContext()Landroid/content/Context;
    .registers 1

    sget-object v0, Lcom/okjoy/okjoysdk/app/OkJoySdkApplication;->mAppContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public attachBaseContext(Landroid/content/Context;)V
    .registers 3

    invoke-super {p0, p1}, Landroid/app/Application;->attachBaseContext(Landroid/content/Context;)V

    const-string p1, ""

    const-string v0, "OkJoySdkApplication attachBaseContext"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_a
    invoke-static {p0}, Lcom/bun/miitmdid/core/JLibrary;->InitEntry(Landroid/content/Context;)Lcom/bun/miitmdid/core/JLibrary$ReturnStatus;
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_d} :catch_e

    goto :goto_12

    :catch_e
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_12
    return-void
.end method

.method public onCreate()V
    .registers 4

    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    const-string v0, ""

    const-string v1, "OkJoySdkApplication onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/okjoy/okjoysdk/app/OkJoySdkApplication;->mAppContext:Landroid/content/Context;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_27

    invoke-static {}, Landroid/app/Application;->getProcessName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_27

    invoke-static {v0}, Landroid/webkit/WebView;->setDataDirectorySuffix(Ljava/lang/String;)V

    .line 1
    :cond_27
    sget-boolean v0, Lokjoy/a/g;->d:Z

    if-eqz v0, :cond_32

    const-string v0, "okjoy_sdk_log"

    const-string v1, "\u8c03\u7528\u4e03\u9c7c\u5ba2\u670dSDK\u521d\u59cb\u5316"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    :cond_32
    invoke-static {}, Lcom/qiyukf/unicorn/api/Unicorn;->isInit()Z

    move-result v0

    if-eqz v0, :cond_3e

    const-string v0, "\u4e03\u9c7c\u5ba2\u670d\u5df2\u521d\u59cb\u5316\uff0c\u65e0\u9700\u91cd\u590d\u521d\u59cb\u5316"

    invoke-static {v0}, Lokjoy/a/g;->d(Ljava/lang/String;)V

    goto :goto_54

    :cond_3e
    new-instance v0, Lcom/qiyukf/unicorn/api/YSFOptions;

    invoke-direct {v0}, Lcom/qiyukf/unicorn/api/YSFOptions;-><init>()V

    new-instance v1, Lcom/qiyukf/nimlib/sdk/StatusBarNotificationConfig;

    invoke-direct {v1}, Lcom/qiyukf/nimlib/sdk/StatusBarNotificationConfig;-><init>()V

    iput-object v1, v0, Lcom/qiyukf/unicorn/api/YSFOptions;->statusBarNotificationConfig:Lcom/qiyukf/nimlib/sdk/StatusBarNotificationConfig;

    new-instance v1, Lokjoy/l/a;

    invoke-direct {v1}, Lokjoy/l/a;-><init>()V

    const-string v2, "2bd1ad7f34d5baab663386f76e8c63e3"

    invoke-static {p0, v2, v0, v1}, Lcom/qiyukf/unicorn/api/Unicorn;->init(Landroid/content/Context;Ljava/lang/String;Lcom/qiyukf/unicorn/api/YSFOptions;Lcom/qiyukf/unicorn/api/UnicornImageLoader;)Z

    :goto_54
    return-void
.end method
