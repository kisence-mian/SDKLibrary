.class final enum Lcom/sigmob/sdk/mraid/g;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sigmob/sdk/mraid/g;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/sigmob/sdk/mraid/g;

.field public static final enum b:Lcom/sigmob/sdk/mraid/g;

.field public static final enum c:Lcom/sigmob/sdk/mraid/g;

.field private static final synthetic e:[Lcom/sigmob/sdk/mraid/g;


# instance fields
.field private final d:I


# direct methods
.method static constructor <clinit>()V
    .registers 8

    new-instance v0, Lcom/sigmob/sdk/mraid/g;

    const-string v1, "PORTRAIT"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/sigmob/sdk/mraid/g;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sigmob/sdk/mraid/g;->a:Lcom/sigmob/sdk/mraid/g;

    new-instance v1, Lcom/sigmob/sdk/mraid/g;

    const-string v4, "LANDSCAPE"

    invoke-direct {v1, v4, v3, v2}, Lcom/sigmob/sdk/mraid/g;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/sigmob/sdk/mraid/g;->b:Lcom/sigmob/sdk/mraid/g;

    new-instance v4, Lcom/sigmob/sdk/mraid/g;

    const-string v5, "NONE"

    const/4 v6, 0x2

    const/4 v7, -0x1

    invoke-direct {v4, v5, v6, v7}, Lcom/sigmob/sdk/mraid/g;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/sigmob/sdk/mraid/g;->c:Lcom/sigmob/sdk/mraid/g;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/sigmob/sdk/mraid/g;

    aput-object v0, v5, v2

    aput-object v1, v5, v3

    aput-object v4, v5, v6

    sput-object v5, Lcom/sigmob/sdk/mraid/g;->e:[Lcom/sigmob/sdk/mraid/g;

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

    iput p3, p0, Lcom/sigmob/sdk/mraid/g;->d:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sigmob/sdk/mraid/g;
    .registers 2

    const-class v0, Lcom/sigmob/sdk/mraid/g;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sigmob/sdk/mraid/g;

    return-object p0
.end method

.method public static values()[Lcom/sigmob/sdk/mraid/g;
    .registers 1

    sget-object v0, Lcom/sigmob/sdk/mraid/g;->e:[Lcom/sigmob/sdk/mraid/g;

    invoke-virtual {v0}, [Lcom/sigmob/sdk/mraid/g;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sigmob/sdk/mraid/g;

    return-object v0
.end method


# virtual methods
.method a()I
    .registers 2

    iget v0, p0, Lcom/sigmob/sdk/mraid/g;->d:I

    return v0
.end method
