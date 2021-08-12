.class final Lcom/kwad/sdk/core/a/a$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/kwad/sdk/crash/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kwad/sdk/core/a/a;->b(Landroid/content/Context;Lcom/kwad/sdk/api/SdkConfig;)Lcom/kwad/sdk/crash/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/kwad/sdk/api/SdkConfig;

.field final synthetic b:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/kwad/sdk/api/SdkConfig;Landroid/content/Context;)V
    .registers 3

    iput-object p1, p0, Lcom/kwad/sdk/core/a/a$2;->a:Lcom/kwad/sdk/api/SdkConfig;

    iput-object p2, p0, Lcom/kwad/sdk/core/a/a$2;->b:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)Lcom/kwad/sdk/crash/model/message/a;
    .registers 4

    new-instance p1, Lcom/kwad/sdk/crash/model/message/a;

    invoke-direct {p1}, Lcom/kwad/sdk/crash/model/message/a;-><init>()V

    invoke-static {}, Lcom/kwad/sdk/core/report/m;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/kwad/sdk/crash/model/message/a;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kwad/sdk/core/a/a$2;->a:Lcom/kwad/sdk/api/SdkConfig;

    iget-object v0, v0, Lcom/kwad/sdk/api/SdkConfig;->appId:Ljava/lang/String;

    const-string v1, "mKsadAppId"

    invoke-virtual {p1, v1, v0}, Lcom/kwad/sdk/crash/model/message/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kwad/sdk/core/a/a$2;->a:Lcom/kwad/sdk/api/SdkConfig;

    iget-object v0, v0, Lcom/kwad/sdk/api/SdkConfig;->appName:Ljava/lang/String;

    const-string v1, "mKsadAppName"

    invoke-virtual {p1, v1, v0}, Lcom/kwad/sdk/crash/model/message/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kwad/sdk/core/a/a$2;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mKsadAppPackageName"

    invoke-virtual {p1, v1, v0}, Lcom/kwad/sdk/crash/model/message/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kwad/sdk/core/a/a$2;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/kwad/sdk/utils/ac;->l(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "mKsadAppVersion"

    invoke-virtual {p1, v1, v0}, Lcom/kwad/sdk/crash/model/message/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "mKsadSdkName"

    const-string v1, "com.kwad.sdk"

    invoke-virtual {p1, v0, v1}, Lcom/kwad/sdk/crash/model/message/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "mKsadSdkVersion"

    const-string v1, "3.3.6"

    invoke-virtual {p1, v0, v1}, Lcom/kwad/sdk/crash/model/message/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "mKsadSdKVersionCode"

    const v1, 0x2e3e48

    invoke-virtual {p1, v0, v1}, Lcom/kwad/sdk/crash/model/message/a;->a(Ljava/lang/String;I)V

    invoke-static {}, Lcom/kwad/sdk/KsAdSDKImpl;->get()Lcom/kwad/sdk/KsAdSDKImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kwad/sdk/KsAdSDKImpl;->getApiVersion()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mKsadSdkApiVersion"

    invoke-virtual {p1, v1, v0}, Lcom/kwad/sdk/crash/model/message/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/kwad/sdk/KsAdSDKImpl;->get()Lcom/kwad/sdk/KsAdSDKImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kwad/sdk/KsAdSDKImpl;->getApiVersionCode()I

    move-result v0

    const-string v1, "mKsadSdKApiVersionCode"

    invoke-virtual {p1, v1, v0}, Lcom/kwad/sdk/crash/model/message/a;->a(Ljava/lang/String;I)V

    sget v0, Lcom/kwad/sdk/d;->a:I

    const-string v1, "mKsadSdkType"

    invoke-virtual {p1, v1, v0}, Lcom/kwad/sdk/crash/model/message/a;->a(Ljava/lang/String;I)V

    return-object p1
.end method
