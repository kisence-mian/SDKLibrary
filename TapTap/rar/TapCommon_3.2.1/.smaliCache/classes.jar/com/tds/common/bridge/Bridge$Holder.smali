.class Lcom/tds/common/bridge/Bridge$Holder;
.super Ljava/lang/Object;
.source "Bridge.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tds/common/bridge/Bridge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Holder"
.end annotation


# static fields
.field private static sInstance:Lcom/tds/common/bridge/Bridge;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 40
    new-instance v0, Lcom/tds/common/bridge/Bridge;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/tds/common/bridge/Bridge;-><init>(Lcom/tds/common/bridge/Bridge$1;)V

    sput-object v0, Lcom/tds/common/bridge/Bridge$Holder;->sInstance:Lcom/tds/common/bridge/Bridge;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Lcom/tds/common/bridge/Bridge;
    .registers 1

    .line 39
    sget-object v0, Lcom/tds/common/bridge/Bridge$Holder;->sInstance:Lcom/tds/common/bridge/Bridge;

    return-object v0
.end method
