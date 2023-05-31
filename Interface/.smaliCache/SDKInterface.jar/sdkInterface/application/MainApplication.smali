.class public LsdkInterface/application/MainApplication;
.super Landroid/app/Application;
.source "MainApplication.java"


# static fields
.field static SdkManifest:Ljava/util/Properties;

.field public static instance:LsdkInterface/application/MainApplication;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 10
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method


# virtual methods
.method protected attachBaseContext(Landroid/content/Context;)V
    .registers 4
    .param p1, "base"    # Landroid/content/Context;

    .line 47
    invoke-super {p0, p1}, Landroid/app/Application;->attachBaseContext(Landroid/content/Context;)V

    .line 49
    const-string v0, "Unity"

    const-string v1, "MainApplication attachBaseContext"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    invoke-static {p0}, LsdkInterface/SdkInterface;->InitSdkManifestProperty(Landroid/content/Context;)V

    .line 52
    invoke-static {}, LsdkInterface/SdkInterface;->Init()V

    .line 54
    invoke-static {p1}, LsdkInterface/SdkInterface;->AttachBaseContext(Landroid/content/Context;)V

    .line 55
    return-void
.end method

.method public onCreate()V
    .registers 4

    .line 17
    const-string v0, "Unity"

    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 19
    :try_start_5
    sput-object p0, LsdkInterface/application/MainApplication;->instance:LsdkInterface/application/MainApplication;

    .line 21
    const-string v1, "MainApplication onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    invoke-static {}, LsdkInterface/SdkInterface;->IsMultiDex()Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 25
    const-string v1, "MainApplication IsMultiDex able"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    invoke-static {p0}, Landroidx/multidex/MultiDex;->install(Landroid/content/Context;)V

    goto :goto_20

    .line 30
    :cond_1b
    const-string v1, "MainApplication unable"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    :goto_20
    invoke-static {}, LsdkInterface/SdkInterface;->OnApplicationCreate()V
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_23} :catch_24

    .line 42
    goto :goto_3d

    .line 40
    :catch_24
    move-exception v0

    .line 41
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SdkInterface MainApplication onCreate error "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UNITY"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_3d
    return-void
.end method
