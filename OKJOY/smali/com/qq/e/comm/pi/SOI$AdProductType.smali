.class public final enum Lcom/qq/e/comm/pi/SOI$AdProductType;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qq/e/comm/pi/SOI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AdProductType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/qq/e/comm/pi/SOI$AdProductType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum APP:Lcom/qq/e/comm/pi/SOI$AdProductType;

.field public static final enum LINK_WEB:Lcom/qq/e/comm/pi/SOI$AdProductType;

.field public static final enum MINI_PROGRAM:Lcom/qq/e/comm/pi/SOI$AdProductType;

.field public static final enum UNKNOWN:Lcom/qq/e/comm/pi/SOI$AdProductType;

.field private static final synthetic a:[Lcom/qq/e/comm/pi/SOI$AdProductType;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/qq/e/comm/pi/SOI$AdProductType;

    const-string v1, "APP"

    invoke-direct {v0, v1, v2}, Lcom/qq/e/comm/pi/SOI$AdProductType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/qq/e/comm/pi/SOI$AdProductType;->APP:Lcom/qq/e/comm/pi/SOI$AdProductType;

    new-instance v0, Lcom/qq/e/comm/pi/SOI$AdProductType;

    const-string v1, "LINK_WEB"

    invoke-direct {v0, v1, v3}, Lcom/qq/e/comm/pi/SOI$AdProductType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/qq/e/comm/pi/SOI$AdProductType;->LINK_WEB:Lcom/qq/e/comm/pi/SOI$AdProductType;

    new-instance v0, Lcom/qq/e/comm/pi/SOI$AdProductType;

    const-string v1, "MINI_PROGRAM"

    invoke-direct {v0, v1, v4}, Lcom/qq/e/comm/pi/SOI$AdProductType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/qq/e/comm/pi/SOI$AdProductType;->MINI_PROGRAM:Lcom/qq/e/comm/pi/SOI$AdProductType;

    new-instance v0, Lcom/qq/e/comm/pi/SOI$AdProductType;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v5}, Lcom/qq/e/comm/pi/SOI$AdProductType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/qq/e/comm/pi/SOI$AdProductType;->UNKNOWN:Lcom/qq/e/comm/pi/SOI$AdProductType;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/qq/e/comm/pi/SOI$AdProductType;

    sget-object v1, Lcom/qq/e/comm/pi/SOI$AdProductType;->APP:Lcom/qq/e/comm/pi/SOI$AdProductType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/qq/e/comm/pi/SOI$AdProductType;->LINK_WEB:Lcom/qq/e/comm/pi/SOI$AdProductType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/qq/e/comm/pi/SOI$AdProductType;->MINI_PROGRAM:Lcom/qq/e/comm/pi/SOI$AdProductType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/qq/e/comm/pi/SOI$AdProductType;->UNKNOWN:Lcom/qq/e/comm/pi/SOI$AdProductType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/qq/e/comm/pi/SOI$AdProductType;->a:[Lcom/qq/e/comm/pi/SOI$AdProductType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/qq/e/comm/pi/SOI$AdProductType;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    const-class v0, Lcom/qq/e/comm/pi/SOI$AdProductType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/qq/e/comm/pi/SOI$AdProductType;

    return-object v0
.end method

.method public static values()[Lcom/qq/e/comm/pi/SOI$AdProductType;
    .registers 1

    sget-object v0, Lcom/qq/e/comm/pi/SOI$AdProductType;->a:[Lcom/qq/e/comm/pi/SOI$AdProductType;

    invoke-virtual {v0}, [Lcom/qq/e/comm/pi/SOI$AdProductType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/qq/e/comm/pi/SOI$AdProductType;

    return-object v0
.end method
