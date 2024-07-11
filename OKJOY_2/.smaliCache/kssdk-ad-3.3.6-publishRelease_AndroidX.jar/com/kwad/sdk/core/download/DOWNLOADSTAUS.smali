.class public final enum Lcom/kwad/sdk/core/download/DOWNLOADSTAUS;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/kwad/sdk/core/download/DOWNLOADSTAUS;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/kwad/sdk/core/download/DOWNLOADSTAUS;

.field public static final enum CANCELLED:Lcom/kwad/sdk/core/download/DOWNLOADSTAUS;

.field public static final enum DELETED:Lcom/kwad/sdk/core/download/DOWNLOADSTAUS;

.field public static final enum DOWNLOADING:Lcom/kwad/sdk/core/download/DOWNLOADSTAUS;

.field public static final enum FAILED:Lcom/kwad/sdk/core/download/DOWNLOADSTAUS;

.field public static final enum FINISHED:Lcom/kwad/sdk/core/download/DOWNLOADSTAUS;

.field public static final enum INSTALL:Lcom/kwad/sdk/core/download/DOWNLOADSTAUS;

.field public static final enum INSTALLING:Lcom/kwad/sdk/core/download/DOWNLOADSTAUS;

.field public static final enum INSTALL_FAILED:Lcom/kwad/sdk/core/download/DOWNLOADSTAUS;

.field public static final enum INSTALL_FINSHED:Lcom/kwad/sdk/core/download/DOWNLOADSTAUS;

.field public static final enum PAUSED:Lcom/kwad/sdk/core/download/DOWNLOADSTAUS;

.field public static final enum PROGRESS:Lcom/kwad/sdk/core/download/DOWNLOADSTAUS;

.field public static final enum START:Lcom/kwad/sdk/core/download/DOWNLOADSTAUS;

.field public static final enum UNKNOWN:Lcom/kwad/sdk/core/download/DOWNLOADSTAUS;


# instance fields
.field private status:I


# direct methods
.method static constructor <clinit>()V
    .registers 16

    new-instance v0, Lcom/kwad/sdk/core/download/DOWNLOADSTAUS;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/kwad/sdk/core/download/DOWNLOADSTAUS;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/kwad/sdk/core/download/DOWNLOADSTAUS;->UNKNOWN:Lcom/kwad/sdk/core/download/DOWNLOADSTAUS;

    new-instance v1, Lcom/kwad/sdk/core/download/DOWNLOADSTAUS;

    const-string v3, "START"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/kwad/sdk/core/download/DOWNLOADSTAUS;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/kwad/sdk/core/download/DOWNLOADSTAUS;->START:Lcom/kwad/sdk/core/download/DOWNLOADSTAUS;

    new-instance v3, Lcom/kwad/sdk/core/download/DOWNLOADSTAUS;

    const-string v5, "DOWNLOADING"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/kwad/sdk/core/download/DOWNLOADSTAUS;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/kwad/sdk/core/download/DOWNLOADSTAUS;->DOWNLOADING:Lcom/kwad/sdk/core/download/DOWNLOADSTAUS;

    new-instance v5, Lcom/kwad/sdk/core/download/DOWNLOADSTAUS;

    const-string v7, "PROGRESS"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lcom/kwad/sdk/core/download/DOWNLOADSTAUS;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/kwad/sdk/core/download/DOWNLOADSTAUS;->PROGRESS:Lcom/kwad/sdk/core/download/DOWNLOADSTAUS;

    new-instance v7, Lcom/kwad/sdk/core/download/DOWNLOADSTAUS;

    const-string v9, "PAUSED"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v10}, Lcom/kwad/sdk/core/download/DOWNLOADSTAUS;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/kwad/sdk/core/download/DOWNLOADSTAUS;->PAUSED:Lcom/kwad/sdk/core/download/DOWNLOADSTAUS;

    new-instance v9, Lcom/kwad/sdk/core/download/DOWNLOADSTAUS;

    const-string v11, "CANCELLED"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12, v12}, Lcom/kwad/sdk/core/download/DOWNLOADSTAUS;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/kwad/sdk/core/download/DOWNLOADSTAUS;->CANCELLED:Lcom/kwad/sdk/core/download/DOWNLOADSTAUS;

    new-instance v11, Lcom/kwad/sdk/core/download/DOWNLOADSTAUS;

    const-string v13, "DELETED"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14, v14}, Lcom/kwad/sdk/core/download/DOWNLOADSTAUS;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lcom/kwad/sdk/core/download/DOWNLOADSTAUS;->DELETED:Lcom/kwad/sdk/core/download/DOWNLOADSTAUS;

    new-instance v13, Lcom/kwad/sdk/core/download/DOWNLOADSTAUS;

    const-string v15, "FAILED"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14, v14}, Lcom/kwad/sdk/core/download/DOWNLOADSTAUS;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lcom/kwad/sdk/core/download/DOWNLOADSTAUS;->FAILED:Lcom/kwad/sdk/core/download/DOWNLOADSTAUS;

    new-instance v15, Lcom/kwad/sdk/core/download/DOWNLOADSTAUS;

    const-string v14, "FINISHED"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12, v12}, Lcom/kwad/sdk/core/download/DOWNLOADSTAUS;-><init>(Ljava/lang/String;II)V

    sput-object v15, Lcom/kwad/sdk/core/download/DOWNLOADSTAUS;->FINISHED:Lcom/kwad/sdk/core/download/DOWNLOADSTAUS;

    new-instance v14, Lcom/kwad/sdk/core/download/DOWNLOADSTAUS;

    const-string v12, "INSTALL"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10, v10}, Lcom/kwad/sdk/core/download/DOWNLOADSTAUS;-><init>(Ljava/lang/String;II)V

    sput-object v14, Lcom/kwad/sdk/core/download/DOWNLOADSTAUS;->INSTALL:Lcom/kwad/sdk/core/download/DOWNLOADSTAUS;

    new-instance v12, Lcom/kwad/sdk/core/download/DOWNLOADSTAUS;

    const-string v10, "INSTALLING"

    const/16 v8, 0xa

    invoke-direct {v12, v10, v8, v8}, Lcom/kwad/sdk/core/download/DOWNLOADSTAUS;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lcom/kwad/sdk/core/download/DOWNLOADSTAUS;->INSTALLING:Lcom/kwad/sdk/core/download/DOWNLOADSTAUS;

    new-instance v10, Lcom/kwad/sdk/core/download/DOWNLOADSTAUS;

    const-string v8, "INSTALL_FAILED"

    const/16 v6, 0xb

    invoke-direct {v10, v8, v6, v6}, Lcom/kwad/sdk/core/download/DOWNLOADSTAUS;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lcom/kwad/sdk/core/download/DOWNLOADSTAUS;->INSTALL_FAILED:Lcom/kwad/sdk/core/download/DOWNLOADSTAUS;

    new-instance v8, Lcom/kwad/sdk/core/download/DOWNLOADSTAUS;

    const-string v6, "INSTALL_FINSHED"

    const/16 v4, 0xc

    invoke-direct {v8, v6, v4, v4}, Lcom/kwad/sdk/core/download/DOWNLOADSTAUS;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lcom/kwad/sdk/core/download/DOWNLOADSTAUS;->INSTALL_FINSHED:Lcom/kwad/sdk/core/download/DOWNLOADSTAUS;

    const/16 v6, 0xd

    new-array v6, v6, [Lcom/kwad/sdk/core/download/DOWNLOADSTAUS;

    aput-object v0, v6, v2

    const/4 v0, 0x1

    aput-object v1, v6, v0

    const/4 v0, 0x2

    aput-object v3, v6, v0

    const/4 v0, 0x3

    aput-object v5, v6, v0

    const/4 v0, 0x4

    aput-object v7, v6, v0

    const/4 v0, 0x5

    aput-object v9, v6, v0

    const/4 v0, 0x6

    aput-object v11, v6, v0

    const/4 v0, 0x7

    aput-object v13, v6, v0

    const/16 v0, 0x8

    aput-object v15, v6, v0

    const/16 v0, 0x9

    aput-object v14, v6, v0

    const/16 v0, 0xa

    aput-object v12, v6, v0

    const/16 v0, 0xb

    aput-object v10, v6, v0

    aput-object v8, v6, v4

    sput-object v6, Lcom/kwad/sdk/core/download/DOWNLOADSTAUS;->$VALUES:[Lcom/kwad/sdk/core/download/DOWNLOADSTAUS;

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

    iput p3, p0, Lcom/kwad/sdk/core/download/DOWNLOADSTAUS;->status:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/kwad/sdk/core/download/DOWNLOADSTAUS;
    .registers 2

    const-class v0, Lcom/kwad/sdk/core/download/DOWNLOADSTAUS;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/kwad/sdk/core/download/DOWNLOADSTAUS;

    return-object p0
.end method

.method public static values()[Lcom/kwad/sdk/core/download/DOWNLOADSTAUS;
    .registers 1

    sget-object v0, Lcom/kwad/sdk/core/download/DOWNLOADSTAUS;->$VALUES:[Lcom/kwad/sdk/core/download/DOWNLOADSTAUS;

    invoke-virtual {v0}, [Lcom/kwad/sdk/core/download/DOWNLOADSTAUS;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/kwad/sdk/core/download/DOWNLOADSTAUS;

    return-object v0
.end method
