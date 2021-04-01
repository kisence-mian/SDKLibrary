.class public final enum Lcom/iab/omid/library/mintegral/adsession/ErrorType;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/iab/omid/library/mintegral/adsession/ErrorType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/iab/omid/library/mintegral/adsession/ErrorType;

.field public static final enum GENERIC:Lcom/iab/omid/library/mintegral/adsession/ErrorType;

.field public static final enum VIDEO:Lcom/iab/omid/library/mintegral/adsession/ErrorType;


# instance fields
.field private final errorType:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/iab/omid/library/mintegral/adsession/ErrorType;

    const-string v1, "GENERIC"

    const-string v2, "generic"

    invoke-direct {v0, v1, v3, v2}, Lcom/iab/omid/library/mintegral/adsession/ErrorType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/iab/omid/library/mintegral/adsession/ErrorType;->GENERIC:Lcom/iab/omid/library/mintegral/adsession/ErrorType;

    new-instance v0, Lcom/iab/omid/library/mintegral/adsession/ErrorType;

    const-string v1, "VIDEO"

    const-string v2, "video"

    invoke-direct {v0, v1, v4, v2}, Lcom/iab/omid/library/mintegral/adsession/ErrorType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/iab/omid/library/mintegral/adsession/ErrorType;->VIDEO:Lcom/iab/omid/library/mintegral/adsession/ErrorType;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/iab/omid/library/mintegral/adsession/ErrorType;

    sget-object v1, Lcom/iab/omid/library/mintegral/adsession/ErrorType;->GENERIC:Lcom/iab/omid/library/mintegral/adsession/ErrorType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/iab/omid/library/mintegral/adsession/ErrorType;->VIDEO:Lcom/iab/omid/library/mintegral/adsession/ErrorType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/iab/omid/library/mintegral/adsession/ErrorType;->$VALUES:[Lcom/iab/omid/library/mintegral/adsession/ErrorType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/iab/omid/library/mintegral/adsession/ErrorType;->errorType:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/iab/omid/library/mintegral/adsession/ErrorType;
    .registers 2

    const-class v0, Lcom/iab/omid/library/mintegral/adsession/ErrorType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/iab/omid/library/mintegral/adsession/ErrorType;

    return-object v0
.end method

.method public static values()[Lcom/iab/omid/library/mintegral/adsession/ErrorType;
    .registers 1

    sget-object v0, Lcom/iab/omid/library/mintegral/adsession/ErrorType;->$VALUES:[Lcom/iab/omid/library/mintegral/adsession/ErrorType;

    invoke-virtual {v0}, [Lcom/iab/omid/library/mintegral/adsession/ErrorType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/iab/omid/library/mintegral/adsession/ErrorType;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/iab/omid/library/mintegral/adsession/ErrorType;->errorType:Ljava/lang/String;

    return-object v0
.end method
