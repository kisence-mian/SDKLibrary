.class Lcom/tendcloud/tenddata/game/at$a;
.super Ljava/lang/Object;
.source "td"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tendcloud/tenddata/game/at;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field host:Ljava/lang/String;

.field resolveIp:Ljava/lang/String;

.field savedIp:Ljava/lang/String;

.field staticIp:Ljava/lang/String;

.field successIp:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .registers 2

    .line 802
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 803
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tendcloud/tenddata/game/at$a;->staticIp:Ljava/lang/String;

    .line 804
    iput-object v0, p0, Lcom/tendcloud/tenddata/game/at$a;->resolveIp:Ljava/lang/String;

    .line 805
    iput-object v0, p0, Lcom/tendcloud/tenddata/game/at$a;->savedIp:Ljava/lang/String;

    .line 806
    iput-object v0, p0, Lcom/tendcloud/tenddata/game/at$a;->successIp:Ljava/lang/String;

    .line 807
    iput-object v0, p0, Lcom/tendcloud/tenddata/game/at$a;->host:Ljava/lang/String;

    return-void
.end method
