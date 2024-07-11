.class public Lcom/appsflyer/attribution/RequestError;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static EVENT_TIMEOUT:I

.field public static NETWORK_FAILURE:I

.field public static NO_DEV_KEY:I

.field public static RESPONSE_CODE_FAILURE:I

.field public static STOP_TRACKING:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 4
    const/16 v0, 0xa

    sput v0, Lcom/appsflyer/attribution/RequestError;->EVENT_TIMEOUT:I

    .line 5
    const/16 v0, 0xb

    sput v0, Lcom/appsflyer/attribution/RequestError;->STOP_TRACKING:I

    .line 6
    const/16 v0, 0x28

    sput v0, Lcom/appsflyer/attribution/RequestError;->NETWORK_FAILURE:I

    .line 7
    const/16 v0, 0x29

    sput v0, Lcom/appsflyer/attribution/RequestError;->NO_DEV_KEY:I

    .line 8
    const/16 v0, 0x32

    sput v0, Lcom/appsflyer/attribution/RequestError;->RESPONSE_CODE_FAILURE:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
