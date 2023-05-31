.class public final enum Lcom/qq/e/ads/cfg/BrowserType;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
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
    .registers 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/qq/e/ads/cfg/BrowserType;

    const-string v1, "Default"

    invoke-direct {v0, v1, v2, v2}, Lcom/qq/e/ads/cfg/BrowserType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qq/e/ads/cfg/BrowserType;->Default:Lcom/qq/e/ads/cfg/BrowserType;

    new-instance v0, Lcom/qq/e/ads/cfg/BrowserType;

    const-string v1, "Inner"

    invoke-direct {v0, v1, v3, v3}, Lcom/qq/e/ads/cfg/BrowserType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qq/e/ads/cfg/BrowserType;->Inner:Lcom/qq/e/ads/cfg/BrowserType;

    new-instance v0, Lcom/qq/e/ads/cfg/BrowserType;

    const-string v1, "Sys"

    invoke-direct {v0, v1, v4, v4}, Lcom/qq/e/ads/cfg/BrowserType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qq/e/ads/cfg/BrowserType;->Sys:Lcom/qq/e/ads/cfg/BrowserType;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/qq/e/ads/cfg/BrowserType;

    sget-object v1, Lcom/qq/e/ads/cfg/BrowserType;->Default:Lcom/qq/e/ads/cfg/BrowserType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/qq/e/ads/cfg/BrowserType;->Inner:Lcom/qq/e/ads/cfg/BrowserType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/qq/e/ads/cfg/BrowserType;->Sys:Lcom/qq/e/ads/cfg/BrowserType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/qq/e/ads/cfg/BrowserType;->b:[Lcom/qq/e/ads/cfg/BrowserType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .param p3, "value"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/qq/e/ads/cfg/BrowserType;->a:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/qq/e/ads/cfg/BrowserType;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    const-class v0, Lcom/qq/e/ads/cfg/BrowserType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/qq/e/ads/cfg/BrowserType;

    return-object v0
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
