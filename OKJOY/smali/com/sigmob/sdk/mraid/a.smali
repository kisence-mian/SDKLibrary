.class public final enum Lcom/sigmob/sdk/mraid/a;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sigmob/sdk/mraid/a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/sigmob/sdk/mraid/a;

.field public static final enum b:Lcom/sigmob/sdk/mraid/a;

.field public static final enum c:Lcom/sigmob/sdk/mraid/a;

.field public static final enum d:Lcom/sigmob/sdk/mraid/a;

.field public static final enum e:Lcom/sigmob/sdk/mraid/a;

.field public static final enum f:Lcom/sigmob/sdk/mraid/a;

.field public static final enum g:Lcom/sigmob/sdk/mraid/a;

.field private static final synthetic i:[Lcom/sigmob/sdk/mraid/a;


# instance fields
.field private final h:I


# direct methods
.method static constructor <clinit>()V
    .registers 9

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-instance v0, Lcom/sigmob/sdk/mraid/a;

    const-string v1, "TOP_LEFT"

    const/16 v2, 0x33

    invoke-direct {v0, v1, v4, v2}, Lcom/sigmob/sdk/mraid/a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sigmob/sdk/mraid/a;->a:Lcom/sigmob/sdk/mraid/a;

    new-instance v0, Lcom/sigmob/sdk/mraid/a;

    const-string v1, "TOP_CENTER"

    const/16 v2, 0x31

    invoke-direct {v0, v1, v5, v2}, Lcom/sigmob/sdk/mraid/a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sigmob/sdk/mraid/a;->b:Lcom/sigmob/sdk/mraid/a;

    new-instance v0, Lcom/sigmob/sdk/mraid/a;

    const-string v1, "TOP_RIGHT"

    const/16 v2, 0x35

    invoke-direct {v0, v1, v6, v2}, Lcom/sigmob/sdk/mraid/a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sigmob/sdk/mraid/a;->c:Lcom/sigmob/sdk/mraid/a;

    new-instance v0, Lcom/sigmob/sdk/mraid/a;

    const-string v1, "CENTER"

    const/16 v2, 0x11

    invoke-direct {v0, v1, v7, v2}, Lcom/sigmob/sdk/mraid/a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sigmob/sdk/mraid/a;->d:Lcom/sigmob/sdk/mraid/a;

    new-instance v0, Lcom/sigmob/sdk/mraid/a;

    const-string v1, "BOTTOM_LEFT"

    const/16 v2, 0x53

    invoke-direct {v0, v1, v8, v2}, Lcom/sigmob/sdk/mraid/a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sigmob/sdk/mraid/a;->e:Lcom/sigmob/sdk/mraid/a;

    new-instance v0, Lcom/sigmob/sdk/mraid/a;

    const-string v1, "BOTTOM_CENTER"

    const/4 v2, 0x5

    const/16 v3, 0x51

    invoke-direct {v0, v1, v2, v3}, Lcom/sigmob/sdk/mraid/a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sigmob/sdk/mraid/a;->f:Lcom/sigmob/sdk/mraid/a;

    new-instance v0, Lcom/sigmob/sdk/mraid/a;

    const-string v1, "BOTTOM_RIGHT"

    const/4 v2, 0x6

    const/16 v3, 0x55

    invoke-direct {v0, v1, v2, v3}, Lcom/sigmob/sdk/mraid/a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sigmob/sdk/mraid/a;->g:Lcom/sigmob/sdk/mraid/a;

    const/4 v0, 0x7

    new-array v0, v0, [Lcom/sigmob/sdk/mraid/a;

    sget-object v1, Lcom/sigmob/sdk/mraid/a;->a:Lcom/sigmob/sdk/mraid/a;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sigmob/sdk/mraid/a;->b:Lcom/sigmob/sdk/mraid/a;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sigmob/sdk/mraid/a;->c:Lcom/sigmob/sdk/mraid/a;

    aput-object v1, v0, v6

    sget-object v1, Lcom/sigmob/sdk/mraid/a;->d:Lcom/sigmob/sdk/mraid/a;

    aput-object v1, v0, v7

    sget-object v1, Lcom/sigmob/sdk/mraid/a;->e:Lcom/sigmob/sdk/mraid/a;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/sigmob/sdk/mraid/a;->f:Lcom/sigmob/sdk/mraid/a;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/sigmob/sdk/mraid/a;->g:Lcom/sigmob/sdk/mraid/a;

    aput-object v2, v0, v1

    sput-object v0, Lcom/sigmob/sdk/mraid/a;->i:[Lcom/sigmob/sdk/mraid/a;

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

    iput p3, p0, Lcom/sigmob/sdk/mraid/a;->h:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sigmob/sdk/mraid/a;
    .registers 2

    const-class v0, Lcom/sigmob/sdk/mraid/a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sigmob/sdk/mraid/a;

    return-object v0
.end method

.method public static values()[Lcom/sigmob/sdk/mraid/a;
    .registers 1

    sget-object v0, Lcom/sigmob/sdk/mraid/a;->i:[Lcom/sigmob/sdk/mraid/a;

    invoke-virtual {v0}, [Lcom/sigmob/sdk/mraid/a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sigmob/sdk/mraid/a;

    return-object v0
.end method


# virtual methods
.method a()I
    .registers 2

    iget v0, p0, Lcom/sigmob/sdk/mraid/a;->h:I

    return v0
.end method
