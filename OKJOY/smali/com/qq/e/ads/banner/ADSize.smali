.class public final enum Lcom/qq/e/ads/banner/ADSize;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/qq/e/ads/banner/ADSize;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum BANNER:Lcom/qq/e/ads/banner/ADSize;

.field private static final synthetic a:[Lcom/qq/e/ads/banner/ADSize;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v2, 0x0

    new-instance v0, Lcom/qq/e/ads/banner/ADSize;

    const-string v1, "BANNER"

    invoke-direct {v0, v1, v2}, Lcom/qq/e/ads/banner/ADSize;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/qq/e/ads/banner/ADSize;->BANNER:Lcom/qq/e/ads/banner/ADSize;

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/qq/e/ads/banner/ADSize;

    sget-object v1, Lcom/qq/e/ads/banner/ADSize;->BANNER:Lcom/qq/e/ads/banner/ADSize;

    aput-object v1, v0, v2

    sput-object v0, Lcom/qq/e/ads/banner/ADSize;->a:[Lcom/qq/e/ads/banner/ADSize;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/qq/e/ads/banner/ADSize;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    const-class v0, Lcom/qq/e/ads/banner/ADSize;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/qq/e/ads/banner/ADSize;

    return-object v0
.end method

.method public static values()[Lcom/qq/e/ads/banner/ADSize;
    .registers 1

    sget-object v0, Lcom/qq/e/ads/banner/ADSize;->a:[Lcom/qq/e/ads/banner/ADSize;

    invoke-virtual {v0}, [Lcom/qq/e/ads/banner/ADSize;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/qq/e/ads/banner/ADSize;

    return-object v0
.end method
