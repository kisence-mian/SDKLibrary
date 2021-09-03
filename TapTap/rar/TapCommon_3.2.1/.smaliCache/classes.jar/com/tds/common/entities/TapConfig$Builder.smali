.class public Lcom/tds/common/entities/TapConfig$Builder;
.super Ljava/lang/Object;
.source "TapConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tds/common/entities/TapConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private appContext:Landroid/content/Context;

.field private clientId:Ljava/lang/String;

.field private clientToken:Ljava/lang/String;

.field private regionType:I

.field private serverUrl:Ljava/lang/String;

.field private tapDBConfig:Lcom/tds/common/entities/TapDBConfig;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    const/4 v0, 0x1

    iput v0, p0, Lcom/tds/common/entities/TapConfig$Builder;->regionType:I

    .line 69
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tds/common/entities/TapConfig$Builder;->tapDBConfig:Lcom/tds/common/entities/TapDBConfig;

    return-void
.end method

.method static synthetic access$000(Lcom/tds/common/entities/TapConfig$Builder;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/tds/common/entities/TapConfig$Builder;

    .line 63
    iget-object v0, p0, Lcom/tds/common/entities/TapConfig$Builder;->clientId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/tds/common/entities/TapConfig$Builder;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/tds/common/entities/TapConfig$Builder;

    .line 63
    iget-object v0, p0, Lcom/tds/common/entities/TapConfig$Builder;->clientToken:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/tds/common/entities/TapConfig$Builder;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/tds/common/entities/TapConfig$Builder;

    .line 63
    iget-object v0, p0, Lcom/tds/common/entities/TapConfig$Builder;->serverUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/tds/common/entities/TapConfig$Builder;)I
    .registers 2
    .param p0, "x0"    # Lcom/tds/common/entities/TapConfig$Builder;

    .line 63
    iget v0, p0, Lcom/tds/common/entities/TapConfig$Builder;->regionType:I

    return v0
.end method

.method static synthetic access$400(Lcom/tds/common/entities/TapConfig$Builder;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/tds/common/entities/TapConfig$Builder;

    .line 63
    iget-object v0, p0, Lcom/tds/common/entities/TapConfig$Builder;->appContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lcom/tds/common/entities/TapConfig$Builder;)Lcom/tds/common/entities/TapDBConfig;
    .registers 2
    .param p0, "x0"    # Lcom/tds/common/entities/TapConfig$Builder;

    .line 63
    iget-object v0, p0, Lcom/tds/common/entities/TapConfig$Builder;->tapDBConfig:Lcom/tds/common/entities/TapDBConfig;

    return-object v0
.end method


# virtual methods
.method public build()Lcom/tds/common/entities/TapConfig;
    .registers 2

    .line 102
    new-instance v0, Lcom/tds/common/entities/TapConfig;

    invoke-direct {v0, p0}, Lcom/tds/common/entities/TapConfig;-><init>(Lcom/tds/common/entities/TapConfig$Builder;)V

    return-object v0
.end method

.method public withAppContext(Landroid/content/Context;)Lcom/tds/common/entities/TapConfig$Builder;
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 92
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/tds/common/entities/TapConfig$Builder;->appContext:Landroid/content/Context;

    .line 93
    return-object p0
.end method

.method public withClientId(Ljava/lang/String;)Lcom/tds/common/entities/TapConfig$Builder;
    .registers 2
    .param p1, "clientId"    # Ljava/lang/String;

    .line 72
    iput-object p1, p0, Lcom/tds/common/entities/TapConfig$Builder;->clientId:Ljava/lang/String;

    .line 73
    return-object p0
.end method

.method public withClientToken(Ljava/lang/String;)Lcom/tds/common/entities/TapConfig$Builder;
    .registers 2
    .param p1, "clientToken"    # Ljava/lang/String;

    .line 77
    iput-object p1, p0, Lcom/tds/common/entities/TapConfig$Builder;->clientToken:Ljava/lang/String;

    .line 78
    return-object p0
.end method

.method public withRegionType(I)Lcom/tds/common/entities/TapConfig$Builder;
    .registers 2
    .param p1, "regionType"    # I

    .line 87
    iput p1, p0, Lcom/tds/common/entities/TapConfig$Builder;->regionType:I

    .line 88
    return-object p0
.end method

.method public withServerUrl(Ljava/lang/String;)Lcom/tds/common/entities/TapConfig$Builder;
    .registers 2
    .param p1, "serverUrl"    # Ljava/lang/String;

    .line 82
    iput-object p1, p0, Lcom/tds/common/entities/TapConfig$Builder;->serverUrl:Ljava/lang/String;

    .line 83
    return-object p0
.end method

.method public withTapDBConfig(Lcom/tds/common/entities/TapDBConfig;)Lcom/tds/common/entities/TapConfig$Builder;
    .registers 2
    .param p1, "tapDBConfig"    # Lcom/tds/common/entities/TapDBConfig;

    .line 97
    iput-object p1, p0, Lcom/tds/common/entities/TapConfig$Builder;->tapDBConfig:Lcom/tds/common/entities/TapDBConfig;

    .line 98
    return-object p0
.end method
