.class Lcom/tapsdk/moment/NetConfig$Holder;
.super Ljava/lang/Object;
.source "NetConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tapsdk/moment/NetConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Holder"
.end annotation


# static fields
.field static INSTANCE:Lcom/tapsdk/moment/NetConfig;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 20
    new-instance v0, Lcom/tapsdk/moment/NetConfig;

    invoke-direct {v0}, Lcom/tapsdk/moment/NetConfig;-><init>()V

    sput-object v0, Lcom/tapsdk/moment/NetConfig$Holder;->INSTANCE:Lcom/tapsdk/moment/NetConfig;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
