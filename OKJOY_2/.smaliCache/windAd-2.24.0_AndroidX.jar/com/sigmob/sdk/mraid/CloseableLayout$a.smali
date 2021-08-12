.class public final enum Lcom/sigmob/sdk/mraid/CloseableLayout$a;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sigmob/sdk/mraid/CloseableLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sigmob/sdk/mraid/CloseableLayout$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/sigmob/sdk/mraid/CloseableLayout$a;

.field public static final enum b:Lcom/sigmob/sdk/mraid/CloseableLayout$a;

.field public static final enum c:Lcom/sigmob/sdk/mraid/CloseableLayout$a;

.field public static final enum d:Lcom/sigmob/sdk/mraid/CloseableLayout$a;

.field public static final enum e:Lcom/sigmob/sdk/mraid/CloseableLayout$a;

.field public static final enum f:Lcom/sigmob/sdk/mraid/CloseableLayout$a;

.field public static final enum g:Lcom/sigmob/sdk/mraid/CloseableLayout$a;

.field private static final synthetic i:[Lcom/sigmob/sdk/mraid/CloseableLayout$a;


# instance fields
.field private final h:I


# direct methods
.method static constructor <clinit>()V
    .registers 16

    new-instance v0, Lcom/sigmob/sdk/mraid/CloseableLayout$a;

    const-string v1, "TOP_LEFT"

    const/4 v2, 0x0

    const/16 v3, 0x33

    invoke-direct {v0, v1, v2, v3}, Lcom/sigmob/sdk/mraid/CloseableLayout$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sigmob/sdk/mraid/CloseableLayout$a;->a:Lcom/sigmob/sdk/mraid/CloseableLayout$a;

    new-instance v1, Lcom/sigmob/sdk/mraid/CloseableLayout$a;

    const-string v3, "TOP_CENTER"

    const/4 v4, 0x1

    const/16 v5, 0x31

    invoke-direct {v1, v3, v4, v5}, Lcom/sigmob/sdk/mraid/CloseableLayout$a;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/sigmob/sdk/mraid/CloseableLayout$a;->b:Lcom/sigmob/sdk/mraid/CloseableLayout$a;

    new-instance v3, Lcom/sigmob/sdk/mraid/CloseableLayout$a;

    const-string v5, "TOP_RIGHT"

    const/4 v6, 0x2

    const/16 v7, 0x35

    invoke-direct {v3, v5, v6, v7}, Lcom/sigmob/sdk/mraid/CloseableLayout$a;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/sigmob/sdk/mraid/CloseableLayout$a;->c:Lcom/sigmob/sdk/mraid/CloseableLayout$a;

    new-instance v5, Lcom/sigmob/sdk/mraid/CloseableLayout$a;

    const-string v7, "CENTER"

    const/4 v8, 0x3

    const/16 v9, 0x11

    invoke-direct {v5, v7, v8, v9}, Lcom/sigmob/sdk/mraid/CloseableLayout$a;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/sigmob/sdk/mraid/CloseableLayout$a;->d:Lcom/sigmob/sdk/mraid/CloseableLayout$a;

    new-instance v7, Lcom/sigmob/sdk/mraid/CloseableLayout$a;

    const-string v9, "BOTTOM_LEFT"

    const/4 v10, 0x4

    const/16 v11, 0x53

    invoke-direct {v7, v9, v10, v11}, Lcom/sigmob/sdk/mraid/CloseableLayout$a;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/sigmob/sdk/mraid/CloseableLayout$a;->e:Lcom/sigmob/sdk/mraid/CloseableLayout$a;

    new-instance v9, Lcom/sigmob/sdk/mraid/CloseableLayout$a;

    const-string v11, "BOTTOM_CENTER"

    const/4 v12, 0x5

    const/16 v13, 0x51

    invoke-direct {v9, v11, v12, v13}, Lcom/sigmob/sdk/mraid/CloseableLayout$a;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/sigmob/sdk/mraid/CloseableLayout$a;->f:Lcom/sigmob/sdk/mraid/CloseableLayout$a;

    new-instance v11, Lcom/sigmob/sdk/mraid/CloseableLayout$a;

    const-string v13, "BOTTOM_RIGHT"

    const/4 v14, 0x6

    const/16 v15, 0x55

    invoke-direct {v11, v13, v14, v15}, Lcom/sigmob/sdk/mraid/CloseableLayout$a;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lcom/sigmob/sdk/mraid/CloseableLayout$a;->g:Lcom/sigmob/sdk/mraid/CloseableLayout$a;

    const/4 v13, 0x7

    new-array v13, v13, [Lcom/sigmob/sdk/mraid/CloseableLayout$a;

    aput-object v0, v13, v2

    aput-object v1, v13, v4

    aput-object v3, v13, v6

    aput-object v5, v13, v8

    aput-object v7, v13, v10

    aput-object v9, v13, v12

    aput-object v11, v13, v14

    sput-object v13, Lcom/sigmob/sdk/mraid/CloseableLayout$a;->i:[Lcom/sigmob/sdk/mraid/CloseableLayout$a;

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

    iput p3, p0, Lcom/sigmob/sdk/mraid/CloseableLayout$a;->h:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sigmob/sdk/mraid/CloseableLayout$a;
    .registers 2

    const-class v0, Lcom/sigmob/sdk/mraid/CloseableLayout$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sigmob/sdk/mraid/CloseableLayout$a;

    return-object p0
.end method

.method public static values()[Lcom/sigmob/sdk/mraid/CloseableLayout$a;
    .registers 1

    sget-object v0, Lcom/sigmob/sdk/mraid/CloseableLayout$a;->i:[Lcom/sigmob/sdk/mraid/CloseableLayout$a;

    invoke-virtual {v0}, [Lcom/sigmob/sdk/mraid/CloseableLayout$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sigmob/sdk/mraid/CloseableLayout$a;

    return-object v0
.end method


# virtual methods
.method a()I
    .registers 2

    iget v0, p0, Lcom/sigmob/sdk/mraid/CloseableLayout$a;->h:I

    return v0
.end method
