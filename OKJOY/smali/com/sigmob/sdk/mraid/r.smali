.class public enum Lcom/sigmob/sdk/mraid/r;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sigmob/sdk/mraid/r;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/sigmob/sdk/mraid/r;

.field public static final enum b:Lcom/sigmob/sdk/mraid/r;

.field public static final enum c:Lcom/sigmob/sdk/mraid/r;

.field public static final enum d:Lcom/sigmob/sdk/mraid/r;

.field public static final enum e:Lcom/sigmob/sdk/mraid/r;

.field public static final enum f:Lcom/sigmob/sdk/mraid/r;

.field public static final enum g:Lcom/sigmob/sdk/mraid/r;

.field public static final enum h:Lcom/sigmob/sdk/mraid/r;

.field public static final enum i:Lcom/sigmob/sdk/mraid/r;

.field public static final enum j:Lcom/sigmob/sdk/mraid/r;

.field public static final enum k:Lcom/sigmob/sdk/mraid/r;

.field public static final enum l:Lcom/sigmob/sdk/mraid/r;

.field private static final synthetic n:[Lcom/sigmob/sdk/mraid/r;


# instance fields
.field private final m:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 9

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-instance v0, Lcom/sigmob/sdk/mraid/r;

    const-string v1, "CLOSE"

    const-string v2, "close"

    invoke-direct {v0, v1, v4, v2}, Lcom/sigmob/sdk/mraid/r;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sigmob/sdk/mraid/r;->a:Lcom/sigmob/sdk/mraid/r;

    new-instance v0, Lcom/sigmob/sdk/mraid/r$1;

    const-string v1, "EXPAND"

    const-string v2, "expand"

    invoke-direct {v0, v1, v5, v2}, Lcom/sigmob/sdk/mraid/r$1;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sigmob/sdk/mraid/r;->b:Lcom/sigmob/sdk/mraid/r;

    new-instance v0, Lcom/sigmob/sdk/mraid/r;

    const-string v1, "USE_CUSTOM_CLOSE"

    const-string v2, "usecustomclose"

    invoke-direct {v0, v1, v6, v2}, Lcom/sigmob/sdk/mraid/r;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sigmob/sdk/mraid/r;->c:Lcom/sigmob/sdk/mraid/r;

    new-instance v0, Lcom/sigmob/sdk/mraid/r$2;

    const-string v1, "OPEN"

    const-string v2, "open"

    invoke-direct {v0, v1, v7, v2}, Lcom/sigmob/sdk/mraid/r$2;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sigmob/sdk/mraid/r;->d:Lcom/sigmob/sdk/mraid/r;

    new-instance v0, Lcom/sigmob/sdk/mraid/r$3;

    const-string v1, "RESIZE"

    const-string v2, "resize"

    invoke-direct {v0, v1, v8, v2}, Lcom/sigmob/sdk/mraid/r$3;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sigmob/sdk/mraid/r;->e:Lcom/sigmob/sdk/mraid/r;

    new-instance v0, Lcom/sigmob/sdk/mraid/r;

    const-string v1, "SET_ORIENTATION_PROPERTIES"

    const/4 v2, 0x5

    const-string v3, "setOrientationProperties"

    invoke-direct {v0, v1, v2, v3}, Lcom/sigmob/sdk/mraid/r;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sigmob/sdk/mraid/r;->f:Lcom/sigmob/sdk/mraid/r;

    new-instance v0, Lcom/sigmob/sdk/mraid/r$4;

    const-string v1, "PLAY_VIDEO"

    const/4 v2, 0x6

    const-string v3, "playVideo"

    invoke-direct {v0, v1, v2, v3}, Lcom/sigmob/sdk/mraid/r$4;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sigmob/sdk/mraid/r;->g:Lcom/sigmob/sdk/mraid/r;

    new-instance v0, Lcom/sigmob/sdk/mraid/r$5;

    const-string v1, "STORE_PICTURE"

    const/4 v2, 0x7

    const-string v3, "storePicture"

    invoke-direct {v0, v1, v2, v3}, Lcom/sigmob/sdk/mraid/r$5;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sigmob/sdk/mraid/r;->h:Lcom/sigmob/sdk/mraid/r;

    new-instance v0, Lcom/sigmob/sdk/mraid/r$6;

    const-string v1, "CREATE_CALENDAR_EVENT"

    const/16 v2, 0x8

    const-string v3, "createCalendarEvent"

    invoke-direct {v0, v1, v2, v3}, Lcom/sigmob/sdk/mraid/r$6;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sigmob/sdk/mraid/r;->i:Lcom/sigmob/sdk/mraid/r;

    new-instance v0, Lcom/sigmob/sdk/mraid/r$7;

    const-string v1, "VPAID"

    const/16 v2, 0x9

    const-string v3, "vpaid"

    invoke-direct {v0, v1, v2, v3}, Lcom/sigmob/sdk/mraid/r$7;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sigmob/sdk/mraid/r;->j:Lcom/sigmob/sdk/mraid/r;

    new-instance v0, Lcom/sigmob/sdk/mraid/r$8;

    const-string v1, "EXTENSION"

    const/16 v2, 0xa

    const-string v3, "extension"

    invoke-direct {v0, v1, v2, v3}, Lcom/sigmob/sdk/mraid/r$8;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sigmob/sdk/mraid/r;->k:Lcom/sigmob/sdk/mraid/r;

    new-instance v0, Lcom/sigmob/sdk/mraid/r;

    const-string v1, "UNSPECIFIED"

    const/16 v2, 0xb

    const-string v3, ""

    invoke-direct {v0, v1, v2, v3}, Lcom/sigmob/sdk/mraid/r;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sigmob/sdk/mraid/r;->l:Lcom/sigmob/sdk/mraid/r;

    const/16 v0, 0xc

    new-array v0, v0, [Lcom/sigmob/sdk/mraid/r;

    sget-object v1, Lcom/sigmob/sdk/mraid/r;->a:Lcom/sigmob/sdk/mraid/r;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sigmob/sdk/mraid/r;->b:Lcom/sigmob/sdk/mraid/r;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sigmob/sdk/mraid/r;->c:Lcom/sigmob/sdk/mraid/r;

    aput-object v1, v0, v6

    sget-object v1, Lcom/sigmob/sdk/mraid/r;->d:Lcom/sigmob/sdk/mraid/r;

    aput-object v1, v0, v7

    sget-object v1, Lcom/sigmob/sdk/mraid/r;->e:Lcom/sigmob/sdk/mraid/r;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/sigmob/sdk/mraid/r;->f:Lcom/sigmob/sdk/mraid/r;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/sigmob/sdk/mraid/r;->g:Lcom/sigmob/sdk/mraid/r;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/sigmob/sdk/mraid/r;->h:Lcom/sigmob/sdk/mraid/r;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/sigmob/sdk/mraid/r;->i:Lcom/sigmob/sdk/mraid/r;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/sigmob/sdk/mraid/r;->j:Lcom/sigmob/sdk/mraid/r;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/sigmob/sdk/mraid/r;->k:Lcom/sigmob/sdk/mraid/r;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/sigmob/sdk/mraid/r;->l:Lcom/sigmob/sdk/mraid/r;

    aput-object v2, v0, v1

    sput-object v0, Lcom/sigmob/sdk/mraid/r;->n:[Lcom/sigmob/sdk/mraid/r;

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

    iput-object p3, p0, Lcom/sigmob/sdk/mraid/r;->m:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILjava/lang/String;Lcom/sigmob/sdk/mraid/r$1;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Lcom/sigmob/sdk/mraid/r;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method static a(Ljava/lang/String;)Lcom/sigmob/sdk/mraid/r;
    .registers 6

    invoke-static {}, Lcom/sigmob/sdk/mraid/r;->values()[Lcom/sigmob/sdk/mraid/r;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_7
    if-ge v1, v3, :cond_18

    aget-object v0, v2, v1

    iget-object v4, v0, Lcom/sigmob/sdk/mraid/r;->m:Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_14

    :goto_13
    return-object v0

    :cond_14
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_7

    :cond_18
    sget-object v0, Lcom/sigmob/sdk/mraid/r;->l:Lcom/sigmob/sdk/mraid/r;

    goto :goto_13
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sigmob/sdk/mraid/r;
    .registers 2

    const-class v0, Lcom/sigmob/sdk/mraid/r;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sigmob/sdk/mraid/r;

    return-object v0
.end method

.method public static values()[Lcom/sigmob/sdk/mraid/r;
    .registers 1

    sget-object v0, Lcom/sigmob/sdk/mraid/r;->n:[Lcom/sigmob/sdk/mraid/r;

    invoke-virtual {v0}, [Lcom/sigmob/sdk/mraid/r;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sigmob/sdk/mraid/r;

    return-object v0
.end method


# virtual methods
.method a()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/r;->m:Ljava/lang/String;

    return-object v0
.end method

.method a(Lcom/sigmob/sdk/base/models/PlacementType;)Z
    .registers 3

    const/4 v0, 0x0

    return v0
.end method
