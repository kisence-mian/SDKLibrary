.class public final enum Lcom/qq/e/ads/cfg/BannerRollAnimation;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/qq/e/ads/cfg/BannerRollAnimation;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum Default:Lcom/qq/e/ads/cfg/BannerRollAnimation;

.field public static final enum NoAnimation:Lcom/qq/e/ads/cfg/BannerRollAnimation;

.field private static final synthetic b:[Lcom/qq/e/ads/cfg/BannerRollAnimation;


# instance fields
.field private final a:I


# direct methods
.method static constructor <clinit>()V
    .registers 6

    new-instance v0, Lcom/qq/e/ads/cfg/BannerRollAnimation;

    const-string v1, "Default"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/qq/e/ads/cfg/BannerRollAnimation;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qq/e/ads/cfg/BannerRollAnimation;->Default:Lcom/qq/e/ads/cfg/BannerRollAnimation;

    new-instance v1, Lcom/qq/e/ads/cfg/BannerRollAnimation;

    const-string v3, "NoAnimation"

    const/4 v4, 0x1

    const/4 v5, -0x1

    invoke-direct {v1, v3, v4, v5}, Lcom/qq/e/ads/cfg/BannerRollAnimation;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/qq/e/ads/cfg/BannerRollAnimation;->NoAnimation:Lcom/qq/e/ads/cfg/BannerRollAnimation;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/qq/e/ads/cfg/BannerRollAnimation;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lcom/qq/e/ads/cfg/BannerRollAnimation;->b:[Lcom/qq/e/ads/cfg/BannerRollAnimation;

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

    iput p3, p0, Lcom/qq/e/ads/cfg/BannerRollAnimation;->a:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/qq/e/ads/cfg/BannerRollAnimation;
    .registers 2

    const-class v0, Lcom/qq/e/ads/cfg/BannerRollAnimation;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/qq/e/ads/cfg/BannerRollAnimation;

    return-object p0
.end method

.method public static values()[Lcom/qq/e/ads/cfg/BannerRollAnimation;
    .registers 1

    sget-object v0, Lcom/qq/e/ads/cfg/BannerRollAnimation;->b:[Lcom/qq/e/ads/cfg/BannerRollAnimation;

    invoke-virtual {v0}, [Lcom/qq/e/ads/cfg/BannerRollAnimation;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/qq/e/ads/cfg/BannerRollAnimation;

    return-object v0
.end method


# virtual methods
.method public final value()I
    .registers 2

    iget v0, p0, Lcom/qq/e/ads/cfg/BannerRollAnimation;->a:I

    return v0
.end method
