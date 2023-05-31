.class Lcom/tds/common/net/Skynet$Holder;
.super Ljava/lang/Object;
.source "Skynet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tds/common/net/Skynet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Holder"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/tds/common/net/Skynet;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 10
    new-instance v0, Lcom/tds/common/net/Skynet;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/tds/common/net/Skynet;-><init>(Lcom/tds/common/net/Skynet$1;)V

    sput-object v0, Lcom/tds/common/net/Skynet$Holder;->INSTANCE:Lcom/tds/common/net/Skynet;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Lcom/tds/common/net/Skynet;
    .registers 1

    .line 8
    sget-object v0, Lcom/tds/common/net/Skynet$Holder;->INSTANCE:Lcom/tds/common/net/Skynet;

    return-object v0
.end method
