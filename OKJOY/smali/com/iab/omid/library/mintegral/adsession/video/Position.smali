.class public final enum Lcom/iab/omid/library/mintegral/adsession/video/Position;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/iab/omid/library/mintegral/adsession/video/Position;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/iab/omid/library/mintegral/adsession/video/Position;

.field public static final enum MIDROLL:Lcom/iab/omid/library/mintegral/adsession/video/Position;

.field public static final enum POSTROLL:Lcom/iab/omid/library/mintegral/adsession/video/Position;

.field public static final enum PREROLL:Lcom/iab/omid/library/mintegral/adsession/video/Position;

.field public static final enum STANDALONE:Lcom/iab/omid/library/mintegral/adsession/video/Position;


# instance fields
.field private final position:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/iab/omid/library/mintegral/adsession/video/Position;

    const-string v1, "PREROLL"

    const-string v2, "preroll"

    invoke-direct {v0, v1, v3, v2}, Lcom/iab/omid/library/mintegral/adsession/video/Position;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/iab/omid/library/mintegral/adsession/video/Position;->PREROLL:Lcom/iab/omid/library/mintegral/adsession/video/Position;

    new-instance v0, Lcom/iab/omid/library/mintegral/adsession/video/Position;

    const-string v1, "MIDROLL"

    const-string v2, "midroll"

    invoke-direct {v0, v1, v4, v2}, Lcom/iab/omid/library/mintegral/adsession/video/Position;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/iab/omid/library/mintegral/adsession/video/Position;->MIDROLL:Lcom/iab/omid/library/mintegral/adsession/video/Position;

    new-instance v0, Lcom/iab/omid/library/mintegral/adsession/video/Position;

    const-string v1, "POSTROLL"

    const-string v2, "postroll"

    invoke-direct {v0, v1, v5, v2}, Lcom/iab/omid/library/mintegral/adsession/video/Position;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/iab/omid/library/mintegral/adsession/video/Position;->POSTROLL:Lcom/iab/omid/library/mintegral/adsession/video/Position;

    new-instance v0, Lcom/iab/omid/library/mintegral/adsession/video/Position;

    const-string v1, "STANDALONE"

    const-string v2, "standalone"

    invoke-direct {v0, v1, v6, v2}, Lcom/iab/omid/library/mintegral/adsession/video/Position;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/iab/omid/library/mintegral/adsession/video/Position;->STANDALONE:Lcom/iab/omid/library/mintegral/adsession/video/Position;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/iab/omid/library/mintegral/adsession/video/Position;

    sget-object v1, Lcom/iab/omid/library/mintegral/adsession/video/Position;->PREROLL:Lcom/iab/omid/library/mintegral/adsession/video/Position;

    aput-object v1, v0, v3

    sget-object v1, Lcom/iab/omid/library/mintegral/adsession/video/Position;->MIDROLL:Lcom/iab/omid/library/mintegral/adsession/video/Position;

    aput-object v1, v0, v4

    sget-object v1, Lcom/iab/omid/library/mintegral/adsession/video/Position;->POSTROLL:Lcom/iab/omid/library/mintegral/adsession/video/Position;

    aput-object v1, v0, v5

    sget-object v1, Lcom/iab/omid/library/mintegral/adsession/video/Position;->STANDALONE:Lcom/iab/omid/library/mintegral/adsession/video/Position;

    aput-object v1, v0, v6

    sput-object v0, Lcom/iab/omid/library/mintegral/adsession/video/Position;->$VALUES:[Lcom/iab/omid/library/mintegral/adsession/video/Position;

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

    iput-object p3, p0, Lcom/iab/omid/library/mintegral/adsession/video/Position;->position:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/iab/omid/library/mintegral/adsession/video/Position;
    .registers 2

    const-class v0, Lcom/iab/omid/library/mintegral/adsession/video/Position;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/iab/omid/library/mintegral/adsession/video/Position;

    return-object v0
.end method

.method public static values()[Lcom/iab/omid/library/mintegral/adsession/video/Position;
    .registers 1

    sget-object v0, Lcom/iab/omid/library/mintegral/adsession/video/Position;->$VALUES:[Lcom/iab/omid/library/mintegral/adsession/video/Position;

    invoke-virtual {v0}, [Lcom/iab/omid/library/mintegral/adsession/video/Position;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/iab/omid/library/mintegral/adsession/video/Position;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/iab/omid/library/mintegral/adsession/video/Position;->position:Ljava/lang/String;

    return-object v0
.end method
