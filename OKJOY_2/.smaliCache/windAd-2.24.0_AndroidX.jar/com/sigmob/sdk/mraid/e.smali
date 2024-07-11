.class public enum Lcom/sigmob/sdk/mraid/e;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sigmob/sdk/mraid/e;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/sigmob/sdk/mraid/e;

.field public static final enum b:Lcom/sigmob/sdk/mraid/e;

.field public static final enum c:Lcom/sigmob/sdk/mraid/e;

.field public static final enum d:Lcom/sigmob/sdk/mraid/e;

.field public static final enum e:Lcom/sigmob/sdk/mraid/e;

.field public static final enum f:Lcom/sigmob/sdk/mraid/e;

.field public static final enum g:Lcom/sigmob/sdk/mraid/e;

.field public static final enum h:Lcom/sigmob/sdk/mraid/e;

.field public static final enum i:Lcom/sigmob/sdk/mraid/e;

.field public static final enum j:Lcom/sigmob/sdk/mraid/e;

.field public static final enum k:Lcom/sigmob/sdk/mraid/e;

.field public static final enum l:Lcom/sigmob/sdk/mraid/e;

.field private static final synthetic n:[Lcom/sigmob/sdk/mraid/e;


# instance fields
.field private final m:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 16

    new-instance v0, Lcom/sigmob/sdk/mraid/e;

    const-string v1, "CLOSE"

    const/4 v2, 0x0

    const-string v3, "close"

    invoke-direct {v0, v1, v2, v3}, Lcom/sigmob/sdk/mraid/e;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sigmob/sdk/mraid/e;->a:Lcom/sigmob/sdk/mraid/e;

    new-instance v1, Lcom/sigmob/sdk/mraid/e$1;

    const-string v3, "EXPAND"

    const/4 v4, 0x1

    const-string v5, "expand"

    invoke-direct {v1, v3, v4, v5}, Lcom/sigmob/sdk/mraid/e$1;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/sigmob/sdk/mraid/e;->b:Lcom/sigmob/sdk/mraid/e;

    new-instance v3, Lcom/sigmob/sdk/mraid/e;

    const-string v5, "USE_CUSTOM_CLOSE"

    const/4 v6, 0x2

    const-string v7, "usecustomclose"

    invoke-direct {v3, v5, v6, v7}, Lcom/sigmob/sdk/mraid/e;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/sigmob/sdk/mraid/e;->c:Lcom/sigmob/sdk/mraid/e;

    new-instance v5, Lcom/sigmob/sdk/mraid/e$2;

    const-string v7, "OPEN"

    const/4 v8, 0x3

    const-string v9, "open"

    invoke-direct {v5, v7, v8, v9}, Lcom/sigmob/sdk/mraid/e$2;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lcom/sigmob/sdk/mraid/e;->d:Lcom/sigmob/sdk/mraid/e;

    new-instance v7, Lcom/sigmob/sdk/mraid/e$3;

    const-string v9, "RESIZE"

    const/4 v10, 0x4

    const-string v11, "resize"

    invoke-direct {v7, v9, v10, v11}, Lcom/sigmob/sdk/mraid/e$3;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v7, Lcom/sigmob/sdk/mraid/e;->e:Lcom/sigmob/sdk/mraid/e;

    new-instance v9, Lcom/sigmob/sdk/mraid/e;

    const-string v11, "SET_ORIENTATION_PROPERTIES"

    const/4 v12, 0x5

    const-string v13, "setOrientationProperties"

    invoke-direct {v9, v11, v12, v13}, Lcom/sigmob/sdk/mraid/e;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v9, Lcom/sigmob/sdk/mraid/e;->f:Lcom/sigmob/sdk/mraid/e;

    new-instance v11, Lcom/sigmob/sdk/mraid/e$4;

    const-string v13, "PLAY_VIDEO"

    const/4 v14, 0x6

    const-string v15, "playVideo"

    invoke-direct {v11, v13, v14, v15}, Lcom/sigmob/sdk/mraid/e$4;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v11, Lcom/sigmob/sdk/mraid/e;->g:Lcom/sigmob/sdk/mraid/e;

    new-instance v13, Lcom/sigmob/sdk/mraid/e$5;

    const-string v15, "STORE_PICTURE"

    const/4 v14, 0x7

    const-string v12, "storePicture"

    invoke-direct {v13, v15, v14, v12}, Lcom/sigmob/sdk/mraid/e$5;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v13, Lcom/sigmob/sdk/mraid/e;->h:Lcom/sigmob/sdk/mraid/e;

    new-instance v12, Lcom/sigmob/sdk/mraid/e$6;

    const-string v15, "CREATE_CALENDAR_EVENT"

    const/16 v14, 0x8

    const-string v10, "createCalendarEvent"

    invoke-direct {v12, v15, v14, v10}, Lcom/sigmob/sdk/mraid/e$6;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v12, Lcom/sigmob/sdk/mraid/e;->i:Lcom/sigmob/sdk/mraid/e;

    new-instance v10, Lcom/sigmob/sdk/mraid/e$7;

    const-string v15, "VPAID"

    const/16 v14, 0x9

    const-string v8, "vpaid"

    invoke-direct {v10, v15, v14, v8}, Lcom/sigmob/sdk/mraid/e$7;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v10, Lcom/sigmob/sdk/mraid/e;->j:Lcom/sigmob/sdk/mraid/e;

    new-instance v8, Lcom/sigmob/sdk/mraid/e$8;

    const-string v15, "EXTENSION"

    const/16 v14, 0xa

    const-string v6, "extension"

    invoke-direct {v8, v15, v14, v6}, Lcom/sigmob/sdk/mraid/e$8;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v8, Lcom/sigmob/sdk/mraid/e;->k:Lcom/sigmob/sdk/mraid/e;

    new-instance v6, Lcom/sigmob/sdk/mraid/e;

    const-string v15, "UNSPECIFIED"

    const/16 v14, 0xb

    const-string v4, ""

    invoke-direct {v6, v15, v14, v4}, Lcom/sigmob/sdk/mraid/e;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v6, Lcom/sigmob/sdk/mraid/e;->l:Lcom/sigmob/sdk/mraid/e;

    const/16 v4, 0xc

    new-array v4, v4, [Lcom/sigmob/sdk/mraid/e;

    aput-object v0, v4, v2

    const/4 v0, 0x1

    aput-object v1, v4, v0

    const/4 v0, 0x2

    aput-object v3, v4, v0

    const/4 v0, 0x3

    aput-object v5, v4, v0

    const/4 v0, 0x4

    aput-object v7, v4, v0

    const/4 v0, 0x5

    aput-object v9, v4, v0

    const/4 v0, 0x6

    aput-object v11, v4, v0

    const/4 v0, 0x7

    aput-object v13, v4, v0

    const/16 v0, 0x8

    aput-object v12, v4, v0

    const/16 v0, 0x9

    aput-object v10, v4, v0

    const/16 v0, 0xa

    aput-object v8, v4, v0

    aput-object v6, v4, v14

    sput-object v4, Lcom/sigmob/sdk/mraid/e;->n:[Lcom/sigmob/sdk/mraid/e;

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

    iput-object p3, p0, Lcom/sigmob/sdk/mraid/e;->m:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILjava/lang/String;Lcom/sigmob/sdk/mraid/e$1;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Lcom/sigmob/sdk/mraid/e;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method static a(Ljava/lang/String;)Lcom/sigmob/sdk/mraid/e;
    .registers 6

    invoke-static {}, Lcom/sigmob/sdk/mraid/e;->values()[Lcom/sigmob/sdk/mraid/e;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v1, :cond_16

    aget-object v3, v0, v2

    iget-object v4, v3, Lcom/sigmob/sdk/mraid/e;->m:Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_13

    return-object v3

    :cond_13
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_16
    sget-object p0, Lcom/sigmob/sdk/mraid/e;->l:Lcom/sigmob/sdk/mraid/e;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sigmob/sdk/mraid/e;
    .registers 2

    const-class v0, Lcom/sigmob/sdk/mraid/e;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sigmob/sdk/mraid/e;

    return-object p0
.end method

.method public static values()[Lcom/sigmob/sdk/mraid/e;
    .registers 1

    sget-object v0, Lcom/sigmob/sdk/mraid/e;->n:[Lcom/sigmob/sdk/mraid/e;

    invoke-virtual {v0}, [Lcom/sigmob/sdk/mraid/e;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sigmob/sdk/mraid/e;

    return-object v0
.end method


# virtual methods
.method a()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/e;->m:Ljava/lang/String;

    return-object v0
.end method
