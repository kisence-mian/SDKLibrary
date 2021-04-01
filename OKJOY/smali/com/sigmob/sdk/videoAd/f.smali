.class public final enum Lcom/sigmob/sdk/videoAd/f;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sigmob/sdk/videoAd/f;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/sigmob/sdk/videoAd/f;

.field public static final enum b:Lcom/sigmob/sdk/videoAd/f;

.field public static final enum c:Lcom/sigmob/sdk/videoAd/f;

.field private static final synthetic e:[Lcom/sigmob/sdk/videoAd/f;


# instance fields
.field private final d:I


# direct methods
.method static constructor <clinit>()V
    .registers 6

    const/4 v5, 0x3

    const/4 v4, 0x0

    const/4 v3, 0x2

    const/4 v2, 0x1

    new-instance v0, Lcom/sigmob/sdk/videoAd/f;

    const-string v1, "BrowserType"

    invoke-direct {v0, v1, v4, v2}, Lcom/sigmob/sdk/videoAd/f;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sigmob/sdk/videoAd/f;->a:Lcom/sigmob/sdk/videoAd/f;

    new-instance v0, Lcom/sigmob/sdk/videoAd/f;

    const-string v1, "DownloadType"

    invoke-direct {v0, v1, v2, v3}, Lcom/sigmob/sdk/videoAd/f;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sigmob/sdk/videoAd/f;->b:Lcom/sigmob/sdk/videoAd/f;

    new-instance v0, Lcom/sigmob/sdk/videoAd/f;

    const-string v1, "DownloadOpenDeepLinkType"

    invoke-direct {v0, v1, v3, v5}, Lcom/sigmob/sdk/videoAd/f;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sigmob/sdk/videoAd/f;->c:Lcom/sigmob/sdk/videoAd/f;

    new-array v0, v5, [Lcom/sigmob/sdk/videoAd/f;

    sget-object v1, Lcom/sigmob/sdk/videoAd/f;->a:Lcom/sigmob/sdk/videoAd/f;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sigmob/sdk/videoAd/f;->b:Lcom/sigmob/sdk/videoAd/f;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sigmob/sdk/videoAd/f;->c:Lcom/sigmob/sdk/videoAd/f;

    aput-object v1, v0, v3

    sput-object v0, Lcom/sigmob/sdk/videoAd/f;->e:[Lcom/sigmob/sdk/videoAd/f;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/sigmob/sdk/videoAd/f;->d:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sigmob/sdk/videoAd/f;
    .registers 2

    const-class v0, Lcom/sigmob/sdk/videoAd/f;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sigmob/sdk/videoAd/f;

    return-object v0
.end method

.method public static values()[Lcom/sigmob/sdk/videoAd/f;
    .registers 1

    sget-object v0, Lcom/sigmob/sdk/videoAd/f;->e:[Lcom/sigmob/sdk/videoAd/f;

    invoke-virtual {v0}, [Lcom/sigmob/sdk/videoAd/f;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sigmob/sdk/videoAd/f;

    return-object v0
.end method


# virtual methods
.method public a()I
    .registers 2

    iget v0, p0, Lcom/sigmob/sdk/videoAd/f;->d:I

    return v0
.end method
