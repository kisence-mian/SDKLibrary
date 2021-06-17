.class public Lcom/tendcloud/tenddata/game/ef;
.super Lcom/tendcloud/tenddata/game/ea;
.source "td"


# static fields
.field public static a:Lcom/tendcloud/tenddata/game/ee; = null

.field private static final c:Ljava/lang/String; = "type"

.field private static final d:Ljava/lang/String; = "deviceId"

.field private static final e:Ljava/lang/String; = "runtimeConfig"

.field private static final f:Ljava/lang/String; = "hardwareConfig"

.field private static final g:Ljava/lang/String; = "softwareConfig"


# instance fields
.field private h:Lcom/tendcloud/tenddata/game/eg;

.field private i:Lcom/tendcloud/tenddata/game/ed;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 18
    invoke-direct {p0}, Lcom/tendcloud/tenddata/game/ea;-><init>()V

    .line 14
    new-instance v0, Lcom/tendcloud/tenddata/game/eg;

    invoke-direct {v0}, Lcom/tendcloud/tenddata/game/eg;-><init>()V

    iput-object v0, p0, Lcom/tendcloud/tenddata/game/ef;->h:Lcom/tendcloud/tenddata/game/eg;

    .line 15
    new-instance v0, Lcom/tendcloud/tenddata/game/ed;

    invoke-direct {v0}, Lcom/tendcloud/tenddata/game/ed;-><init>()V

    iput-object v0, p0, Lcom/tendcloud/tenddata/game/ef;->i:Lcom/tendcloud/tenddata/game/ed;

    .line 19
    invoke-direct {p0}, Lcom/tendcloud/tenddata/game/ef;->d()V

    .line 20
    return-void
.end method

.method private d()V
    .registers 3

    .line 23
    const-string v0, "type"

    const-string v1, "mobile"

    invoke-virtual {p0, v0, v1}, Lcom/tendcloud/tenddata/game/ef;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 24
    new-instance v0, Lcom/tendcloud/tenddata/game/ee;

    invoke-direct {v0}, Lcom/tendcloud/tenddata/game/ee;-><init>()V

    sput-object v0, Lcom/tendcloud/tenddata/game/ef;->a:Lcom/tendcloud/tenddata/game/ee;

    .line 25
    invoke-virtual {v0}, Lcom/tendcloud/tenddata/game/ee;->a_()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "deviceId"

    invoke-virtual {p0, v1, v0}, Lcom/tendcloud/tenddata/game/ef;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 27
    new-instance v0, Lcom/tendcloud/tenddata/game/eh;

    invoke-direct {v0}, Lcom/tendcloud/tenddata/game/eh;-><init>()V

    .line 28
    invoke-virtual {v0}, Lcom/tendcloud/tenddata/game/eh;->a_()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "runtimeConfig"

    invoke-virtual {p0, v1, v0}, Lcom/tendcloud/tenddata/game/ef;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 30
    iget-object v0, p0, Lcom/tendcloud/tenddata/game/ef;->i:Lcom/tendcloud/tenddata/game/ed;

    invoke-virtual {v0}, Lcom/tendcloud/tenddata/game/ed;->a_()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "hardwareConfig"

    invoke-virtual {p0, v1, v0}, Lcom/tendcloud/tenddata/game/ef;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 31
    iget-object v0, p0, Lcom/tendcloud/tenddata/game/ef;->h:Lcom/tendcloud/tenddata/game/eg;

    invoke-virtual {v0}, Lcom/tendcloud/tenddata/game/eg;->a_()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "softwareConfig"

    invoke-virtual {p0, v1, v0}, Lcom/tendcloud/tenddata/game/ef;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 32
    return-void
.end method


# virtual methods
.method public b()Lcom/tendcloud/tenddata/game/eg;
    .registers 2

    .line 35
    iget-object v0, p0, Lcom/tendcloud/tenddata/game/ef;->h:Lcom/tendcloud/tenddata/game/eg;

    return-object v0
.end method

.method public c()Lcom/tendcloud/tenddata/game/ed;
    .registers 2

    .line 38
    iget-object v0, p0, Lcom/tendcloud/tenddata/game/ef;->i:Lcom/tendcloud/tenddata/game/ed;

    return-object v0
.end method
