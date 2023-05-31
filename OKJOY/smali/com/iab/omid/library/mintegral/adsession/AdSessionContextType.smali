.class public final enum Lcom/iab/omid/library/mintegral/adsession/AdSessionContextType;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/iab/omid/library/mintegral/adsession/AdSessionContextType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/iab/omid/library/mintegral/adsession/AdSessionContextType;

.field public static final enum HTML:Lcom/iab/omid/library/mintegral/adsession/AdSessionContextType;

.field public static final enum NATIVE:Lcom/iab/omid/library/mintegral/adsession/AdSessionContextType;


# instance fields
.field private final typeString:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/iab/omid/library/mintegral/adsession/AdSessionContextType;

    const-string v1, "HTML"

    const-string v2, "html"

    invoke-direct {v0, v1, v3, v2}, Lcom/iab/omid/library/mintegral/adsession/AdSessionContextType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/iab/omid/library/mintegral/adsession/AdSessionContextType;->HTML:Lcom/iab/omid/library/mintegral/adsession/AdSessionContextType;

    new-instance v0, Lcom/iab/omid/library/mintegral/adsession/AdSessionContextType;

    const-string v1, "NATIVE"

    const-string v2, "native"

    invoke-direct {v0, v1, v4, v2}, Lcom/iab/omid/library/mintegral/adsession/AdSessionContextType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/iab/omid/library/mintegral/adsession/AdSessionContextType;->NATIVE:Lcom/iab/omid/library/mintegral/adsession/AdSessionContextType;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/iab/omid/library/mintegral/adsession/AdSessionContextType;

    sget-object v1, Lcom/iab/omid/library/mintegral/adsession/AdSessionContextType;->HTML:Lcom/iab/omid/library/mintegral/adsession/AdSessionContextType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/iab/omid/library/mintegral/adsession/AdSessionContextType;->NATIVE:Lcom/iab/omid/library/mintegral/adsession/AdSessionContextType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/iab/omid/library/mintegral/adsession/AdSessionContextType;->$VALUES:[Lcom/iab/omid/library/mintegral/adsession/AdSessionContextType;

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

    iput-object p3, p0, Lcom/iab/omid/library/mintegral/adsession/AdSessionContextType;->typeString:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/iab/omid/library/mintegral/adsession/AdSessionContextType;
    .registers 2

    const-class v0, Lcom/iab/omid/library/mintegral/adsession/AdSessionContextType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/iab/omid/library/mintegral/adsession/AdSessionContextType;

    return-object v0
.end method

.method public static values()[Lcom/iab/omid/library/mintegral/adsession/AdSessionContextType;
    .registers 1

    sget-object v0, Lcom/iab/omid/library/mintegral/adsession/AdSessionContextType;->$VALUES:[Lcom/iab/omid/library/mintegral/adsession/AdSessionContextType;

    invoke-virtual {v0}, [Lcom/iab/omid/library/mintegral/adsession/AdSessionContextType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/iab/omid/library/mintegral/adsession/AdSessionContextType;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/iab/omid/library/mintegral/adsession/AdSessionContextType;->typeString:Ljava/lang/String;

    return-object v0
.end method
