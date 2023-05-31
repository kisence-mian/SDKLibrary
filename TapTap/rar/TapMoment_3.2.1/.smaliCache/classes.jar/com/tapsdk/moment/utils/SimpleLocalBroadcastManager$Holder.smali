.class Lcom/tapsdk/moment/utils/SimpleLocalBroadcastManager$Holder;
.super Ljava/lang/Object;
.source "SimpleLocalBroadcastManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tapsdk/moment/utils/SimpleLocalBroadcastManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Holder"
.end annotation


# static fields
.field static INSTANCE:Lcom/tapsdk/moment/utils/SimpleLocalBroadcastManager;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 15
    new-instance v0, Lcom/tapsdk/moment/utils/SimpleLocalBroadcastManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/tapsdk/moment/utils/SimpleLocalBroadcastManager;-><init>(Lcom/tapsdk/moment/utils/SimpleLocalBroadcastManager$1;)V

    sput-object v0, Lcom/tapsdk/moment/utils/SimpleLocalBroadcastManager$Holder;->INSTANCE:Lcom/tapsdk/moment/utils/SimpleLocalBroadcastManager;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
