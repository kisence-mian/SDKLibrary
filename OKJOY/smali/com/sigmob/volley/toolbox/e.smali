.class public final enum Lcom/sigmob/volley/toolbox/e;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sigmob/volley/toolbox/e;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/sigmob/volley/toolbox/e;

.field public static final enum b:Lcom/sigmob/volley/toolbox/e;

.field public static final enum c:Lcom/sigmob/volley/toolbox/e;

.field public static final enum d:Lcom/sigmob/volley/toolbox/e;

.field private static final synthetic f:[Lcom/sigmob/volley/toolbox/e;


# instance fields
.field private e:I


# direct methods
.method static constructor <clinit>()V
    .registers 7

    const/4 v6, 0x0

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    new-instance v0, Lcom/sigmob/volley/toolbox/e;

    const-string v1, "VIDEO"

    invoke-direct {v0, v1, v6, v3}, Lcom/sigmob/volley/toolbox/e;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sigmob/volley/toolbox/e;->a:Lcom/sigmob/volley/toolbox/e;

    new-instance v0, Lcom/sigmob/volley/toolbox/e;

    const-string v1, "PICTURE"

    invoke-direct {v0, v1, v3, v4}, Lcom/sigmob/volley/toolbox/e;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sigmob/volley/toolbox/e;->b:Lcom/sigmob/volley/toolbox/e;

    new-instance v0, Lcom/sigmob/volley/toolbox/e;

    const-string v1, "FILE"

    invoke-direct {v0, v1, v4, v5}, Lcom/sigmob/volley/toolbox/e;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sigmob/volley/toolbox/e;->c:Lcom/sigmob/volley/toolbox/e;

    new-instance v0, Lcom/sigmob/volley/toolbox/e;

    const-string v1, "OTHER"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v5, v2}, Lcom/sigmob/volley/toolbox/e;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sigmob/volley/toolbox/e;->d:Lcom/sigmob/volley/toolbox/e;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/sigmob/volley/toolbox/e;

    sget-object v1, Lcom/sigmob/volley/toolbox/e;->a:Lcom/sigmob/volley/toolbox/e;

    aput-object v1, v0, v6

    sget-object v1, Lcom/sigmob/volley/toolbox/e;->b:Lcom/sigmob/volley/toolbox/e;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sigmob/volley/toolbox/e;->c:Lcom/sigmob/volley/toolbox/e;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sigmob/volley/toolbox/e;->d:Lcom/sigmob/volley/toolbox/e;

    aput-object v1, v0, v5

    sput-object v0, Lcom/sigmob/volley/toolbox/e;->f:[Lcom/sigmob/volley/toolbox/e;

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

    iput p3, p0, Lcom/sigmob/volley/toolbox/e;->e:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sigmob/volley/toolbox/e;
    .registers 2

    const-class v0, Lcom/sigmob/volley/toolbox/e;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sigmob/volley/toolbox/e;

    return-object v0
.end method

.method public static values()[Lcom/sigmob/volley/toolbox/e;
    .registers 1

    sget-object v0, Lcom/sigmob/volley/toolbox/e;->f:[Lcom/sigmob/volley/toolbox/e;

    invoke-virtual {v0}, [Lcom/sigmob/volley/toolbox/e;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sigmob/volley/toolbox/e;

    return-object v0
.end method


# virtual methods
.method public a()I
    .registers 2

    iget v0, p0, Lcom/sigmob/volley/toolbox/e;->e:I

    return v0
.end method
