.class final Lcom/tapjoy/TapjoyConnectFlag$1;
.super Ljava/util/Hashtable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tapjoy/TapjoyConnectFlag;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/Hashtable<",
        "Ljava/lang/String;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 3

    .line 114
    invoke-direct {p0}, Ljava/util/Hashtable;-><init>()V

    .line 116
    const-string v0, "TJC_OPTION_SERVICE_URL"

    const-string v1, "https://ws.tapjoyads.com/"

    invoke-virtual {p0, v0, v1}, Lcom/tapjoy/TapjoyConnectFlag$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    const-string v0, "TJC_OPTION_PLACEMENT_SERVICE_URL"

    const-string v1, "https://placements.tapjoy.com/"

    invoke-virtual {p0, v0, v1}, Lcom/tapjoy/TapjoyConnectFlag$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    return-void
.end method
