.class final enum Lcom/qq/e/ads/nativ/widget/NativeAdContainer$ViewStatus;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qq/e/ads/nativ/widget/NativeAdContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "ViewStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/qq/e/ads/nativ/widget/NativeAdContainer$ViewStatus;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ATTACHED:Lcom/qq/e/ads/nativ/widget/NativeAdContainer$ViewStatus;

.field public static final enum DETACHED:Lcom/qq/e/ads/nativ/widget/NativeAdContainer$ViewStatus;

.field public static final enum INIT:Lcom/qq/e/ads/nativ/widget/NativeAdContainer$ViewStatus;

.field private static final synthetic a:[Lcom/qq/e/ads/nativ/widget/NativeAdContainer$ViewStatus;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/qq/e/ads/nativ/widget/NativeAdContainer$ViewStatus;

    const-string v1, "INIT"

    invoke-direct {v0, v1, v2}, Lcom/qq/e/ads/nativ/widget/NativeAdContainer$ViewStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/qq/e/ads/nativ/widget/NativeAdContainer$ViewStatus;->INIT:Lcom/qq/e/ads/nativ/widget/NativeAdContainer$ViewStatus;

    new-instance v0, Lcom/qq/e/ads/nativ/widget/NativeAdContainer$ViewStatus;

    const-string v1, "ATTACHED"

    invoke-direct {v0, v1, v3}, Lcom/qq/e/ads/nativ/widget/NativeAdContainer$ViewStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/qq/e/ads/nativ/widget/NativeAdContainer$ViewStatus;->ATTACHED:Lcom/qq/e/ads/nativ/widget/NativeAdContainer$ViewStatus;

    new-instance v0, Lcom/qq/e/ads/nativ/widget/NativeAdContainer$ViewStatus;

    const-string v1, "DETACHED"

    invoke-direct {v0, v1, v4}, Lcom/qq/e/ads/nativ/widget/NativeAdContainer$ViewStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/qq/e/ads/nativ/widget/NativeAdContainer$ViewStatus;->DETACHED:Lcom/qq/e/ads/nativ/widget/NativeAdContainer$ViewStatus;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/qq/e/ads/nativ/widget/NativeAdContainer$ViewStatus;

    sget-object v1, Lcom/qq/e/ads/nativ/widget/NativeAdContainer$ViewStatus;->INIT:Lcom/qq/e/ads/nativ/widget/NativeAdContainer$ViewStatus;

    aput-object v1, v0, v2

    sget-object v1, Lcom/qq/e/ads/nativ/widget/NativeAdContainer$ViewStatus;->ATTACHED:Lcom/qq/e/ads/nativ/widget/NativeAdContainer$ViewStatus;

    aput-object v1, v0, v3

    sget-object v1, Lcom/qq/e/ads/nativ/widget/NativeAdContainer$ViewStatus;->DETACHED:Lcom/qq/e/ads/nativ/widget/NativeAdContainer$ViewStatus;

    aput-object v1, v0, v4

    sput-object v0, Lcom/qq/e/ads/nativ/widget/NativeAdContainer$ViewStatus;->a:[Lcom/qq/e/ads/nativ/widget/NativeAdContainer$ViewStatus;

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

.method public static valueOf(Ljava/lang/String;)Lcom/qq/e/ads/nativ/widget/NativeAdContainer$ViewStatus;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    const-class v0, Lcom/qq/e/ads/nativ/widget/NativeAdContainer$ViewStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/qq/e/ads/nativ/widget/NativeAdContainer$ViewStatus;

    return-object v0
.end method

.method public static values()[Lcom/qq/e/ads/nativ/widget/NativeAdContainer$ViewStatus;
    .registers 1

    sget-object v0, Lcom/qq/e/ads/nativ/widget/NativeAdContainer$ViewStatus;->a:[Lcom/qq/e/ads/nativ/widget/NativeAdContainer$ViewStatus;

    invoke-virtual {v0}, [Lcom/qq/e/ads/nativ/widget/NativeAdContainer$ViewStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/qq/e/ads/nativ/widget/NativeAdContainer$ViewStatus;

    return-object v0
.end method
