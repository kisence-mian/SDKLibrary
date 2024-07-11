.class public final enum Lcom/qq/e/ads/cfg/BrowserType;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/qq/e/ads/cfg/BrowserType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum Default:Lcom/qq/e/ads/cfg/BrowserType;

.field public static final enum Inner:Lcom/qq/e/ads/cfg/BrowserType;

.field public static final enum Sys:Lcom/qq/e/ads/cfg/BrowserType;

.field private static final synthetic b:[Lcom/qq/e/ads/cfg/BrowserType;


# instance fields
.field private final a:I


# direct methods
.method static constructor <clinit>()V
    .registers 7

    new-instance v0, Lcom/qq/e/ads/cfg/BrowserType;

    const-string v1, "Default"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/qq/e/ads/cfg/BrowserType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qq/e/ads/cfg/BrowserType;->Default:Lcom/qq/e/ads/cfg/BrowserType;

    new-instance v1, Lcom/qq/e/ads/cfg/BrowserType;

    const-string v3, "Inner"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/qq/e/ads/cfg/BrowserType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/qq/e/ads/cfg/BrowserType;->Inner:Lcom/qq/e/ads/cfg/BrowserType;

    new-instance v3, Lcom/qq/e/ads/cfg/BrowserType;

    const-string v5, "Sys"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/qq/e/ads/cfg/BrowserType;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/qq/e/ads/cfg/BrowserType;->Sys:Lcom/qq/e/ads/cfg/BrowserType;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/qq/e/ads/cfg/BrowserType;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lcom/qq/e/ads/cfg/BrowserType;->b:[Lcom/qq/e/ads/cfg/BrowserType;

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

    iput p3, p0, Lcom/qq/e/ads/cfg/BrowserType;->a:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/qq/e/ads/cfg/BrowserType;
    .registers 2

    const-class v0, Lcom/qq/e/ads/cfg/BrowserType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/qq/e/ads/cfg/BrowserType;

    return-object p0
.end method

.method public static values()[Lcom/qq/e/ads/cfg/BrowserType;
    .registers 1

    sget-object v0, Lcom/qq/e/ads/cfg/BrowserType;->b:[Lcom/qq/e/ads/cfg/BrowserType;

    invoke-virtual {v0}, [Lcom/qq/e/ads/cfg/BrowserType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/qq/e/ads/cfg/BrowserType;

    return-object v0
.end method


# virtual methods
.method public final value()I
    .registers 2

    iget v0, p0, Lcom/qq/e/ads/cfg/BrowserType;->a:I

    return v0
.end method
