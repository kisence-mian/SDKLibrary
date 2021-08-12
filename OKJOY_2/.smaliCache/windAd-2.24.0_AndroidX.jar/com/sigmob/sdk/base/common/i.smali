.class public final enum Lcom/sigmob/sdk/base/common/i;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sigmob/sdk/base/common/i;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/sigmob/sdk/base/common/i;

.field public static final enum b:Lcom/sigmob/sdk/base/common/i;

.field private static final synthetic d:[Lcom/sigmob/sdk/base/common/i;


# instance fields
.field private final c:I


# direct methods
.method static constructor <clinit>()V
    .registers 6

    new-instance v0, Lcom/sigmob/sdk/base/common/i;

    const-string v1, "Button"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/sigmob/sdk/base/common/i;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sigmob/sdk/base/common/i;->a:Lcom/sigmob/sdk/base/common/i;

    new-instance v1, Lcom/sigmob/sdk/base/common/i;

    const-string v4, "FullScreen"

    const/4 v5, 0x2

    invoke-direct {v1, v4, v3, v5}, Lcom/sigmob/sdk/base/common/i;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/sigmob/sdk/base/common/i;->b:Lcom/sigmob/sdk/base/common/i;

    new-array v4, v5, [Lcom/sigmob/sdk/base/common/i;

    aput-object v0, v4, v2

    aput-object v1, v4, v3

    sput-object v4, Lcom/sigmob/sdk/base/common/i;->d:[Lcom/sigmob/sdk/base/common/i;

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

    iput p3, p0, Lcom/sigmob/sdk/base/common/i;->c:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sigmob/sdk/base/common/i;
    .registers 2

    const-class v0, Lcom/sigmob/sdk/base/common/i;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sigmob/sdk/base/common/i;

    return-object p0
.end method

.method public static values()[Lcom/sigmob/sdk/base/common/i;
    .registers 1

    sget-object v0, Lcom/sigmob/sdk/base/common/i;->d:[Lcom/sigmob/sdk/base/common/i;

    invoke-virtual {v0}, [Lcom/sigmob/sdk/base/common/i;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sigmob/sdk/base/common/i;

    return-object v0
.end method


# virtual methods
.method public a()I
    .registers 2

    iget v0, p0, Lcom/sigmob/sdk/base/common/i;->c:I

    return v0
.end method
