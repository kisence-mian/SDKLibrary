.class Lcom/sigmob/sdk/common/mta/BuriedPointManager$BuriedPointManagerFactory;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sigmob/sdk/common/mta/BuriedPointManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BuriedPointManagerFactory"
.end annotation


# static fields
.field static a:Lcom/sigmob/sdk/common/mta/BuriedPointManager;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/sigmob/sdk/common/mta/BuriedPointManager;

    invoke-direct {v0}, Lcom/sigmob/sdk/common/mta/BuriedPointManager;-><init>()V

    sput-object v0, Lcom/sigmob/sdk/common/mta/BuriedPointManager$BuriedPointManagerFactory;->a:Lcom/sigmob/sdk/common/mta/BuriedPointManager;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
