.class public final Lcom/tds/common/net/XUAParams$Builder;
.super Ljava/lang/Object;
.source "XUAParams.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tds/common/net/XUAParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private deviceId:Ljava/lang/String;

.field private lang:Ljava/lang/String;

.field private osVersion:Ljava/lang/String;

.field private platform:Ljava/lang/String;

.field private sdkName:Ljava/lang/String;

.field private sdkVersionCode:I

.field private sdkVersionName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/tds/common/net/XUAParams$Builder;->sdkVersionCode:I

    return-void
.end method

.method static synthetic access$000(Lcom/tds/common/net/XUAParams$Builder;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/tds/common/net/XUAParams$Builder;

    .line 51
    iget-object v0, p0, Lcom/tds/common/net/XUAParams$Builder;->platform:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/tds/common/net/XUAParams$Builder;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/tds/common/net/XUAParams$Builder;

    .line 51
    iget-object v0, p0, Lcom/tds/common/net/XUAParams$Builder;->osVersion:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/tds/common/net/XUAParams$Builder;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/tds/common/net/XUAParams$Builder;

    .line 51
    iget-object v0, p0, Lcom/tds/common/net/XUAParams$Builder;->sdkName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/tds/common/net/XUAParams$Builder;)I
    .registers 2
    .param p0, "x0"    # Lcom/tds/common/net/XUAParams$Builder;

    .line 51
    iget v0, p0, Lcom/tds/common/net/XUAParams$Builder;->sdkVersionCode:I

    return v0
.end method

.method static synthetic access$400(Lcom/tds/common/net/XUAParams$Builder;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/tds/common/net/XUAParams$Builder;

    .line 51
    iget-object v0, p0, Lcom/tds/common/net/XUAParams$Builder;->sdkVersionName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/tds/common/net/XUAParams$Builder;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/tds/common/net/XUAParams$Builder;

    .line 51
    iget-object v0, p0, Lcom/tds/common/net/XUAParams$Builder;->lang:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/tds/common/net/XUAParams$Builder;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/tds/common/net/XUAParams$Builder;

    .line 51
    iget-object v0, p0, Lcom/tds/common/net/XUAParams$Builder;->deviceId:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public build()Lcom/tds/common/net/XUAParams;
    .registers 2

    .line 102
    new-instance v0, Lcom/tds/common/net/XUAParams;

    invoke-direct {v0, p0}, Lcom/tds/common/net/XUAParams;-><init>(Lcom/tds/common/net/XUAParams$Builder;)V

    return-object v0
.end method

.method public headersDeviceId(Ljava/lang/String;)Lcom/tds/common/net/XUAParams$Builder;
    .registers 2
    .param p1, "deviceId"    # Ljava/lang/String;

    .line 97
    iput-object p1, p0, Lcom/tds/common/net/XUAParams$Builder;->deviceId:Ljava/lang/String;

    .line 98
    return-object p0
.end method

.method public headersLang(Ljava/lang/String;)Lcom/tds/common/net/XUAParams$Builder;
    .registers 2
    .param p1, "lang"    # Ljava/lang/String;

    .line 92
    iput-object p1, p0, Lcom/tds/common/net/XUAParams$Builder;->lang:Ljava/lang/String;

    .line 93
    return-object p0
.end method

.method public headersOSVersion(Ljava/lang/String;)Lcom/tds/common/net/XUAParams$Builder;
    .registers 2
    .param p1, "osVersion"    # Ljava/lang/String;

    .line 72
    iput-object p1, p0, Lcom/tds/common/net/XUAParams$Builder;->osVersion:Ljava/lang/String;

    .line 73
    return-object p0
.end method

.method public headersPlatform(Ljava/lang/String;)Lcom/tds/common/net/XUAParams$Builder;
    .registers 2
    .param p1, "platform"    # Ljava/lang/String;

    .line 67
    iput-object p1, p0, Lcom/tds/common/net/XUAParams$Builder;->platform:Ljava/lang/String;

    .line 68
    return-object p0
.end method

.method public headersSdkName(Ljava/lang/String;)Lcom/tds/common/net/XUAParams$Builder;
    .registers 2
    .param p1, "sdkName"    # Ljava/lang/String;

    .line 77
    iput-object p1, p0, Lcom/tds/common/net/XUAParams$Builder;->sdkName:Ljava/lang/String;

    .line 78
    return-object p0
.end method

.method public headersSdkVersionCode(I)Lcom/tds/common/net/XUAParams$Builder;
    .registers 2
    .param p1, "sdkVersionCode"    # I

    .line 82
    iput p1, p0, Lcom/tds/common/net/XUAParams$Builder;->sdkVersionCode:I

    .line 83
    return-object p0
.end method

.method public headersSdkVersionName(Ljava/lang/String;)Lcom/tds/common/net/XUAParams$Builder;
    .registers 2
    .param p1, "sdkVersionName"    # Ljava/lang/String;

    .line 87
    iput-object p1, p0, Lcom/tds/common/net/XUAParams$Builder;->sdkVersionName:Ljava/lang/String;

    .line 88
    return-object p0
.end method
