.class final enum Lcom/sigmob/sdk/mraid/v;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sigmob/sdk/mraid/v;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/sigmob/sdk/mraid/v;

.field public static final enum b:Lcom/sigmob/sdk/mraid/v;

.field public static final enum c:Lcom/sigmob/sdk/mraid/v;

.field private static final synthetic e:[Lcom/sigmob/sdk/mraid/v;


# instance fields
.field private final d:I


# direct methods
.method static constructor <clinit>()V
    .registers 6

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/sigmob/sdk/mraid/v;

    const-string v1, "PORTRAIT"

    invoke-direct {v0, v1, v3, v4}, Lcom/sigmob/sdk/mraid/v;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sigmob/sdk/mraid/v;->a:Lcom/sigmob/sdk/mraid/v;

    new-instance v0, Lcom/sigmob/sdk/mraid/v;

    const-string v1, "LANDSCAPE"

    invoke-direct {v0, v1, v4, v3}, Lcom/sigmob/sdk/mraid/v;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sigmob/sdk/mraid/v;->b:Lcom/sigmob/sdk/mraid/v;

    new-instance v0, Lcom/sigmob/sdk/mraid/v;

    const-string v1, "NONE"

    const/4 v2, -0x1

    invoke-direct {v0, v1, v5, v2}, Lcom/sigmob/sdk/mraid/v;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sigmob/sdk/mraid/v;->c:Lcom/sigmob/sdk/mraid/v;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/sigmob/sdk/mraid/v;

    sget-object v1, Lcom/sigmob/sdk/mraid/v;->a:Lcom/sigmob/sdk/mraid/v;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sigmob/sdk/mraid/v;->b:Lcom/sigmob/sdk/mraid/v;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sigmob/sdk/mraid/v;->c:Lcom/sigmob/sdk/mraid/v;

    aput-object v1, v0, v5

    sput-object v0, Lcom/sigmob/sdk/mraid/v;->e:[Lcom/sigmob/sdk/mraid/v;

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

    iput p3, p0, Lcom/sigmob/sdk/mraid/v;->d:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sigmob/sdk/mraid/v;
    .registers 2

    const-class v0, Lcom/sigmob/sdk/mraid/v;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sigmob/sdk/mraid/v;

    return-object v0
.end method

.method public static values()[Lcom/sigmob/sdk/mraid/v;
    .registers 1

    sget-object v0, Lcom/sigmob/sdk/mraid/v;->e:[Lcom/sigmob/sdk/mraid/v;

    invoke-virtual {v0}, [Lcom/sigmob/sdk/mraid/v;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sigmob/sdk/mraid/v;

    return-object v0
.end method


# virtual methods
.method a()I
    .registers 2

    iget v0, p0, Lcom/sigmob/sdk/mraid/v;->d:I

    return v0
.end method
