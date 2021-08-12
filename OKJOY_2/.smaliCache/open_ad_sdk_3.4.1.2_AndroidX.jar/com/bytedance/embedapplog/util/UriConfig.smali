.class public Lcom/bytedance/embedapplog/util/UriConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final AMERICA:I = 0x2

.field public static final DEFAULT:I = 0x0

.field public static final SINGAPORE:I = 0x1

.field private static final a:[Ljava/lang/String;

.field private static final b:[Ljava/lang/String;

.field private static final c:[Ljava/lang/String;


# instance fields
.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:[Ljava/lang/String;

.field private i:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 24
    const-string v0, "https://toblog.ctobsnssdk.com"

    const-string v1, "https://tobapplog.ctobsnssdk.com"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/bytedance/embedapplog/util/UriConfig;->a:[Ljava/lang/String;

    .line 44
    const-string v0, "https://toblog.tobsnssdk.com"

    const-string v1, "https://tobapplog.tobsnssdk.com"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/bytedance/embedapplog/util/UriConfig;->b:[Ljava/lang/String;

    .line 64
    const-string v0, "https://toblog.itobsnssdk.com"

    const-string v1, "https://tobapplog.itobsnssdk.com"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/bytedance/embedapplog/util/UriConfig;->c:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    invoke-direct {p0}, Lcom/bytedance/embedapplog/util/UriConfig;->a()V

    .line 88
    return-void
.end method

.method private a()V
    .registers 2

    .line 30
    const-string v0, "https://toblog.ctobsnssdk.com/service/2/device_register_only/"

    iput-object v0, p0, Lcom/bytedance/embedapplog/util/UriConfig;->d:Ljava/lang/String;

    .line 31
    const-string v0, "https://toblog.ctobsnssdk.com/service/2/app_alert_check/"

    iput-object v0, p0, Lcom/bytedance/embedapplog/util/UriConfig;->e:Ljava/lang/String;

    .line 32
    const-string v0, "https://toblog.ctobsnssdk.com/service/2/log_settings/"

    iput-object v0, p0, Lcom/bytedance/embedapplog/util/UriConfig;->f:Ljava/lang/String;

    .line 33
    const-string v0, "https://toblog.ctobsnssdk.com/service/2/abtest_config/"

    iput-object v0, p0, Lcom/bytedance/embedapplog/util/UriConfig;->g:Ljava/lang/String;

    .line 34
    sget-object v0, Lcom/bytedance/embedapplog/util/UriConfig;->a:[Ljava/lang/String;

    iput-object v0, p0, Lcom/bytedance/embedapplog/util/UriConfig;->h:[Ljava/lang/String;

    .line 35
    const-string v0, "https://success.ctobsnssdk.com"

    iput-object v0, p0, Lcom/bytedance/embedapplog/util/UriConfig;->i:Ljava/lang/String;

    .line 36
    return-void
.end method

.method private b()V
    .registers 2

    .line 50
    const-string v0, "https://toblog.tobsnssdk.com/service/2/device_register_only/"

    iput-object v0, p0, Lcom/bytedance/embedapplog/util/UriConfig;->d:Ljava/lang/String;

    .line 51
    const-string v0, "https://toblog.tobsnssdk.com/service/2/app_alert_check/"

    iput-object v0, p0, Lcom/bytedance/embedapplog/util/UriConfig;->e:Ljava/lang/String;

    .line 52
    const-string v0, "https://toblog.tobsnssdk.com/service/2/log_settings/"

    iput-object v0, p0, Lcom/bytedance/embedapplog/util/UriConfig;->f:Ljava/lang/String;

    .line 53
    const-string v0, "https://toblog.tobsnssdk.com/service/2/abtest_config/"

    iput-object v0, p0, Lcom/bytedance/embedapplog/util/UriConfig;->g:Ljava/lang/String;

    .line 54
    sget-object v0, Lcom/bytedance/embedapplog/util/UriConfig;->b:[Ljava/lang/String;

    iput-object v0, p0, Lcom/bytedance/embedapplog/util/UriConfig;->h:[Ljava/lang/String;

    .line 55
    const-string v0, "https://success.tobsnssdk.com"

    iput-object v0, p0, Lcom/bytedance/embedapplog/util/UriConfig;->i:Ljava/lang/String;

    .line 56
    return-void
.end method

.method private c()V
    .registers 2

    .line 70
    const-string v0, "https://toblog.itobsnssdk.com/service/2/device_register_only/"

    iput-object v0, p0, Lcom/bytedance/embedapplog/util/UriConfig;->d:Ljava/lang/String;

    .line 71
    const-string v0, "https://toblog.itobsnssdk.com/service/2/app_alert_check/"

    iput-object v0, p0, Lcom/bytedance/embedapplog/util/UriConfig;->e:Ljava/lang/String;

    .line 72
    const-string v0, "https://toblog.itobsnssdk.com/service/2/log_settings/"

    iput-object v0, p0, Lcom/bytedance/embedapplog/util/UriConfig;->f:Ljava/lang/String;

    .line 73
    const-string v0, "https://toblog.itobsnssdk.com/service/2/abtest_config/"

    iput-object v0, p0, Lcom/bytedance/embedapplog/util/UriConfig;->g:Ljava/lang/String;

    .line 74
    sget-object v0, Lcom/bytedance/embedapplog/util/UriConfig;->c:[Ljava/lang/String;

    iput-object v0, p0, Lcom/bytedance/embedapplog/util/UriConfig;->h:[Ljava/lang/String;

    .line 75
    const-string v0, "https://success.itobsnssdk.com"

    iput-object v0, p0, Lcom/bytedance/embedapplog/util/UriConfig;->i:Ljava/lang/String;

    .line 76
    return-void
.end method

.method public static creatUriConfig(I)Lcom/bytedance/embedapplog/util/UriConfig;
    .registers 2

    .line 91
    new-instance v0, Lcom/bytedance/embedapplog/util/UriConfig;

    invoke-direct {v0}, Lcom/bytedance/embedapplog/util/UriConfig;-><init>()V

    .line 92
    packed-switch p0, :pswitch_data_1a

    .line 103
    invoke-direct {v0}, Lcom/bytedance/embedapplog/util/UriConfig;->a()V

    goto :goto_18

    .line 100
    :pswitch_c
    invoke-direct {v0}, Lcom/bytedance/embedapplog/util/UriConfig;->c()V

    .line 101
    goto :goto_18

    .line 97
    :pswitch_10
    invoke-direct {v0}, Lcom/bytedance/embedapplog/util/UriConfig;->b()V

    .line 98
    goto :goto_18

    .line 94
    :pswitch_14
    invoke-direct {v0}, Lcom/bytedance/embedapplog/util/UriConfig;->a()V

    .line 95
    nop

    .line 106
    :goto_18
    return-object v0

    nop

    :pswitch_data_1a
    .packed-switch 0x0
        :pswitch_14
        :pswitch_10
        :pswitch_c
    .end packed-switch
.end method


# virtual methods
.method public getABConfigUri()Ljava/lang/String;
    .registers 2

    .line 122
    iget-object v0, p0, Lcom/bytedance/embedapplog/util/UriConfig;->g:Ljava/lang/String;

    return-object v0
.end method

.method public getActiveUri()Ljava/lang/String;
    .registers 2

    .line 114
    iget-object v0, p0, Lcom/bytedance/embedapplog/util/UriConfig;->e:Ljava/lang/String;

    return-object v0
.end method

.method public getRegisterUri()Ljava/lang/String;
    .registers 2

    .line 110
    iget-object v0, p0, Lcom/bytedance/embedapplog/util/UriConfig;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getSendHeadersUris()[Ljava/lang/String;
    .registers 2

    .line 126
    iget-object v0, p0, Lcom/bytedance/embedapplog/util/UriConfig;->h:[Ljava/lang/String;

    return-object v0
.end method

.method public getSettingUri()Ljava/lang/String;
    .registers 2

    .line 118
    iget-object v0, p0, Lcom/bytedance/embedapplog/util/UriConfig;->f:Ljava/lang/String;

    return-object v0
.end method

.method public getSuccRateUri()Ljava/lang/String;
    .registers 2

    .line 130
    iget-object v0, p0, Lcom/bytedance/embedapplog/util/UriConfig;->i:Ljava/lang/String;

    return-object v0
.end method
