.class public final enum Lcom/kwad/sdk/core/request/ErrorCode;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/kwad/sdk/core/request/ErrorCode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/kwad/sdk/core/request/ErrorCode;

.field public static final enum ERROR_CACHE_VIDEO_FAIL:Lcom/kwad/sdk/core/request/ErrorCode;

.field public static final enum ERROR_DATA_EMPTY:Lcom/kwad/sdk/core/request/ErrorCode;

.field public static final enum ERROR_DATA_PARSE_FAIL:Lcom/kwad/sdk/core/request/ErrorCode;

.field public static final enum ERROR_NO_NETWORK:Lcom/kwad/sdk/core/request/ErrorCode;


# instance fields
.field public errorCode:I

.field public msg:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-instance v0, Lcom/kwad/sdk/core/request/ErrorCode;

    const-string v1, "ERROR_NO_NETWORK"

    const v2, 0x9c41

    const-string v3, "\u7f51\u7edc\u9519\u8bef"

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/kwad/sdk/core/request/ErrorCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/kwad/sdk/core/request/ErrorCode;->ERROR_NO_NETWORK:Lcom/kwad/sdk/core/request/ErrorCode;

    new-instance v0, Lcom/kwad/sdk/core/request/ErrorCode;

    const-string v1, "ERROR_DATA_PARSE_FAIL"

    const v2, 0x9c42

    const-string v3, "\u6570\u636e\u89e3\u6790\u9519\u8bef"

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/kwad/sdk/core/request/ErrorCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/kwad/sdk/core/request/ErrorCode;->ERROR_DATA_PARSE_FAIL:Lcom/kwad/sdk/core/request/ErrorCode;

    new-instance v0, Lcom/kwad/sdk/core/request/ErrorCode;

    const-string v1, "ERROR_DATA_EMPTY"

    const v2, 0x9c43

    const-string v3, "\u5e7f\u544a\u6570\u636e\u4e3a\u7a7a"

    invoke-direct {v0, v1, v6, v2, v3}, Lcom/kwad/sdk/core/request/ErrorCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/kwad/sdk/core/request/ErrorCode;->ERROR_DATA_EMPTY:Lcom/kwad/sdk/core/request/ErrorCode;

    new-instance v0, Lcom/kwad/sdk/core/request/ErrorCode;

    const-string v1, "ERROR_CACHE_VIDEO_FAIL"

    const v2, 0x9c44

    const-string v3, "\u89c6\u9891\u8d44\u6e90\u7f13\u5b58\u5931\u8d25"

    invoke-direct {v0, v1, v7, v2, v3}, Lcom/kwad/sdk/core/request/ErrorCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/kwad/sdk/core/request/ErrorCode;->ERROR_CACHE_VIDEO_FAIL:Lcom/kwad/sdk/core/request/ErrorCode;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/kwad/sdk/core/request/ErrorCode;

    sget-object v1, Lcom/kwad/sdk/core/request/ErrorCode;->ERROR_NO_NETWORK:Lcom/kwad/sdk/core/request/ErrorCode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/kwad/sdk/core/request/ErrorCode;->ERROR_DATA_PARSE_FAIL:Lcom/kwad/sdk/core/request/ErrorCode;

    aput-object v1, v0, v5

    sget-object v1, Lcom/kwad/sdk/core/request/ErrorCode;->ERROR_DATA_EMPTY:Lcom/kwad/sdk/core/request/ErrorCode;

    aput-object v1, v0, v6

    sget-object v1, Lcom/kwad/sdk/core/request/ErrorCode;->ERROR_CACHE_VIDEO_FAIL:Lcom/kwad/sdk/core/request/ErrorCode;

    aput-object v1, v0, v7

    sput-object v0, Lcom/kwad/sdk/core/request/ErrorCode;->$VALUES:[Lcom/kwad/sdk/core/request/ErrorCode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/kwad/sdk/core/request/ErrorCode;->errorCode:I

    iput-object p4, p0, Lcom/kwad/sdk/core/request/ErrorCode;->msg:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/kwad/sdk/core/request/ErrorCode;
    .registers 2

    const-class v0, Lcom/kwad/sdk/core/request/ErrorCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/kwad/sdk/core/request/ErrorCode;

    return-object v0
.end method

.method public static values()[Lcom/kwad/sdk/core/request/ErrorCode;
    .registers 1

    sget-object v0, Lcom/kwad/sdk/core/request/ErrorCode;->$VALUES:[Lcom/kwad/sdk/core/request/ErrorCode;

    invoke-virtual {v0}, [Lcom/kwad/sdk/core/request/ErrorCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/kwad/sdk/core/request/ErrorCode;

    return-object v0
.end method
