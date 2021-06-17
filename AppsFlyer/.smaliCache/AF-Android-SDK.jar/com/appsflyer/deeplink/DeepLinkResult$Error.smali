.class public final enum Lcom/appsflyer/deeplink/DeepLinkResult$Error;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appsflyer/deeplink/DeepLinkResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Error"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/appsflyer/deeplink/DeepLinkResult$Error;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum HTTP_STATUS_CODE:Lcom/appsflyer/deeplink/DeepLinkResult$Error;

.field public static final enum NETWORK:Lcom/appsflyer/deeplink/DeepLinkResult$Error;

.field public static final enum TIMEOUT:Lcom/appsflyer/deeplink/DeepLinkResult$Error;

.field public static final enum UNEXPECTED:Lcom/appsflyer/deeplink/DeepLinkResult$Error;

.field private static final synthetic valueOf:[Lcom/appsflyer/deeplink/DeepLinkResult$Error;


# direct methods
.method static constructor <clinit>()V
    .registers 9

    .line 50
    new-instance v0, Lcom/appsflyer/deeplink/DeepLinkResult$Error;

    const-string v1, "TIMEOUT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/appsflyer/deeplink/DeepLinkResult$Error;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/appsflyer/deeplink/DeepLinkResult$Error;->TIMEOUT:Lcom/appsflyer/deeplink/DeepLinkResult$Error;

    new-instance v1, Lcom/appsflyer/deeplink/DeepLinkResult$Error;

    const-string v3, "NETWORK"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/appsflyer/deeplink/DeepLinkResult$Error;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/appsflyer/deeplink/DeepLinkResult$Error;->NETWORK:Lcom/appsflyer/deeplink/DeepLinkResult$Error;

    new-instance v3, Lcom/appsflyer/deeplink/DeepLinkResult$Error;

    const-string v5, "HTTP_STATUS_CODE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/appsflyer/deeplink/DeepLinkResult$Error;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/appsflyer/deeplink/DeepLinkResult$Error;->HTTP_STATUS_CODE:Lcom/appsflyer/deeplink/DeepLinkResult$Error;

    new-instance v5, Lcom/appsflyer/deeplink/DeepLinkResult$Error;

    const-string v7, "UNEXPECTED"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/appsflyer/deeplink/DeepLinkResult$Error;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/appsflyer/deeplink/DeepLinkResult$Error;->UNEXPECTED:Lcom/appsflyer/deeplink/DeepLinkResult$Error;

    .line 49
    const/4 v7, 0x4

    new-array v7, v7, [Lcom/appsflyer/deeplink/DeepLinkResult$Error;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lcom/appsflyer/deeplink/DeepLinkResult$Error;->valueOf:[Lcom/appsflyer/deeplink/DeepLinkResult$Error;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 49
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/appsflyer/deeplink/DeepLinkResult$Error;
    .registers 2

    .line 49
    const-class v0, Lcom/appsflyer/deeplink/DeepLinkResult$Error;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/appsflyer/deeplink/DeepLinkResult$Error;

    return-object p0
.end method

.method public static values()[Lcom/appsflyer/deeplink/DeepLinkResult$Error;
    .registers 1

    .line 49
    sget-object v0, Lcom/appsflyer/deeplink/DeepLinkResult$Error;->valueOf:[Lcom/appsflyer/deeplink/DeepLinkResult$Error;

    invoke-virtual {v0}, [Lcom/appsflyer/deeplink/DeepLinkResult$Error;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/appsflyer/deeplink/DeepLinkResult$Error;

    return-object v0
.end method
