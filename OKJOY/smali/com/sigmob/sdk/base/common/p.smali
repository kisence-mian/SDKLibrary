.class public final enum Lcom/sigmob/sdk/base/common/p;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sigmob/sdk/base/common/p;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/sigmob/sdk/base/common/p;

.field public static final enum b:Lcom/sigmob/sdk/base/common/p;

.field private static final synthetic d:[Lcom/sigmob/sdk/base/common/p;


# instance fields
.field private final c:I


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const/4 v4, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    new-instance v0, Lcom/sigmob/sdk/base/common/p;

    const-string v1, "Button"

    invoke-direct {v0, v1, v3, v2}, Lcom/sigmob/sdk/base/common/p;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sigmob/sdk/base/common/p;->a:Lcom/sigmob/sdk/base/common/p;

    new-instance v0, Lcom/sigmob/sdk/base/common/p;

    const-string v1, "FullScreen"

    invoke-direct {v0, v1, v2, v4}, Lcom/sigmob/sdk/base/common/p;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sigmob/sdk/base/common/p;->b:Lcom/sigmob/sdk/base/common/p;

    new-array v0, v4, [Lcom/sigmob/sdk/base/common/p;

    sget-object v1, Lcom/sigmob/sdk/base/common/p;->a:Lcom/sigmob/sdk/base/common/p;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sigmob/sdk/base/common/p;->b:Lcom/sigmob/sdk/base/common/p;

    aput-object v1, v0, v2

    sput-object v0, Lcom/sigmob/sdk/base/common/p;->d:[Lcom/sigmob/sdk/base/common/p;

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

    iput p3, p0, Lcom/sigmob/sdk/base/common/p;->c:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sigmob/sdk/base/common/p;
    .registers 2

    const-class v0, Lcom/sigmob/sdk/base/common/p;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sigmob/sdk/base/common/p;

    return-object v0
.end method

.method public static values()[Lcom/sigmob/sdk/base/common/p;
    .registers 1

    sget-object v0, Lcom/sigmob/sdk/base/common/p;->d:[Lcom/sigmob/sdk/base/common/p;

    invoke-virtual {v0}, [Lcom/sigmob/sdk/base/common/p;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sigmob/sdk/base/common/p;

    return-object v0
.end method


# virtual methods
.method public a()I
    .registers 2

    iget v0, p0, Lcom/sigmob/sdk/base/common/p;->c:I

    return v0
.end method
