.class public final enum Lcom/qq/e/comm/util/VideoAdValidity;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/qq/e/comm/util/VideoAdValidity;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum NONE_CACHE:Lcom/qq/e/comm/util/VideoAdValidity;

.field public static final enum OVERDUE:Lcom/qq/e/comm/util/VideoAdValidity;

.field public static final enum SHOWED:Lcom/qq/e/comm/util/VideoAdValidity;

.field public static final enum VALID:Lcom/qq/e/comm/util/VideoAdValidity;

.field private static final synthetic b:[Lcom/qq/e/comm/util/VideoAdValidity;


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 10

    new-instance v0, Lcom/qq/e/comm/util/VideoAdValidity;

    const-string v1, "VALID"

    const/4 v2, 0x0

    const-string v3, "\u6709\u6548\u4e14\u53ef\u5c55\u793a\u7684\u5e7f\u544a"

    invoke-direct {v0, v1, v2, v3}, Lcom/qq/e/comm/util/VideoAdValidity;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/qq/e/comm/util/VideoAdValidity;->VALID:Lcom/qq/e/comm/util/VideoAdValidity;

    new-instance v1, Lcom/qq/e/comm/util/VideoAdValidity;

    const-string v3, "OVERDUE"

    const/4 v4, 0x1

    const-string v5, "\u8fc7\u671f\u7684\u5e7f\u544a"

    invoke-direct {v1, v3, v4, v5}, Lcom/qq/e/comm/util/VideoAdValidity;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/qq/e/comm/util/VideoAdValidity;->OVERDUE:Lcom/qq/e/comm/util/VideoAdValidity;

    new-instance v3, Lcom/qq/e/comm/util/VideoAdValidity;

    const-string v5, "SHOWED"

    const/4 v6, 0x2

    const-string v7, "\u5df2\u7ecf\u5c55\u793a\u7684\u5e7f\u544a"

    invoke-direct {v3, v5, v6, v7}, Lcom/qq/e/comm/util/VideoAdValidity;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/qq/e/comm/util/VideoAdValidity;->SHOWED:Lcom/qq/e/comm/util/VideoAdValidity;

    new-instance v5, Lcom/qq/e/comm/util/VideoAdValidity;

    const-string v7, "NONE_CACHE"

    const/4 v8, 0x3

    const-string v9, "\u89c6\u9891\u672a\u7f13\u5b58\u7684\u5e7f\u544a"

    invoke-direct {v5, v7, v8, v9}, Lcom/qq/e/comm/util/VideoAdValidity;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lcom/qq/e/comm/util/VideoAdValidity;->NONE_CACHE:Lcom/qq/e/comm/util/VideoAdValidity;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/qq/e/comm/util/VideoAdValidity;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lcom/qq/e/comm/util/VideoAdValidity;->b:[Lcom/qq/e/comm/util/VideoAdValidity;

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

    iput-object p3, p0, Lcom/qq/e/comm/util/VideoAdValidity;->a:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/qq/e/comm/util/VideoAdValidity;
    .registers 2

    const-class v0, Lcom/qq/e/comm/util/VideoAdValidity;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/qq/e/comm/util/VideoAdValidity;

    return-object p0
.end method

.method public static values()[Lcom/qq/e/comm/util/VideoAdValidity;
    .registers 1

    sget-object v0, Lcom/qq/e/comm/util/VideoAdValidity;->b:[Lcom/qq/e/comm/util/VideoAdValidity;

    invoke-virtual {v0}, [Lcom/qq/e/comm/util/VideoAdValidity;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/qq/e/comm/util/VideoAdValidity;

    return-object v0
.end method


# virtual methods
.method public final getMessage()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/qq/e/comm/util/VideoAdValidity;->a:Ljava/lang/String;

    return-object v0
.end method
