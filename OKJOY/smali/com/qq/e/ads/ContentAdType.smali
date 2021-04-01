.class public final enum Lcom/qq/e/ads/ContentAdType;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/qq/e/ads/ContentAdType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum AD:Lcom/qq/e/ads/ContentAdType;

.field public static final enum INFORMATION:Lcom/qq/e/ads/ContentAdType;

.field private static final synthetic a:[Lcom/qq/e/ads/ContentAdType;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/qq/e/ads/ContentAdType;

    const-string v1, "AD"

    invoke-direct {v0, v1, v2}, Lcom/qq/e/ads/ContentAdType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/qq/e/ads/ContentAdType;->AD:Lcom/qq/e/ads/ContentAdType;

    new-instance v0, Lcom/qq/e/ads/ContentAdType;

    const-string v1, "INFORMATION"

    invoke-direct {v0, v1, v3}, Lcom/qq/e/ads/ContentAdType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/qq/e/ads/ContentAdType;->INFORMATION:Lcom/qq/e/ads/ContentAdType;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/qq/e/ads/ContentAdType;

    sget-object v1, Lcom/qq/e/ads/ContentAdType;->AD:Lcom/qq/e/ads/ContentAdType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/qq/e/ads/ContentAdType;->INFORMATION:Lcom/qq/e/ads/ContentAdType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/qq/e/ads/ContentAdType;->a:[Lcom/qq/e/ads/ContentAdType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static fromString(Ljava/lang/String;)Lcom/qq/e/ads/ContentAdType;
    .registers 3
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    const-string v1, "ad"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    sget-object v0, Lcom/qq/e/ads/ContentAdType;->AD:Lcom/qq/e/ads/ContentAdType;

    :cond_b
    :goto_b
    return-object v0

    :cond_c
    const-string v1, "information"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    sget-object v0, Lcom/qq/e/ads/ContentAdType;->INFORMATION:Lcom/qq/e/ads/ContentAdType;

    goto :goto_b
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/qq/e/ads/ContentAdType;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    const-class v0, Lcom/qq/e/ads/ContentAdType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/qq/e/ads/ContentAdType;

    return-object v0
.end method

.method public static values()[Lcom/qq/e/ads/ContentAdType;
    .registers 1

    sget-object v0, Lcom/qq/e/ads/ContentAdType;->a:[Lcom/qq/e/ads/ContentAdType;

    invoke-virtual {v0}, [Lcom/qq/e/ads/ContentAdType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/qq/e/ads/ContentAdType;

    return-object v0
.end method
