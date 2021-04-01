.class public final enum Lcom/kwad/sdk/core/download/DOWNLOADSTAUS;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
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
    .registers 9

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-instance v0, Lcom/kwad/sdk/core/download/DOWNLOADSTAUS;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v4, v4}, Lcom/kwad/sdk/core/download/DOWNLOADSTAUS;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/kwad/sdk/core/download/DOWNLOADSTAUS;->UNKNOWN:Lcom/kwad/sdk/core/download/DOWNLOADSTAUS;

    new-instance v0, Lcom/kwad/sdk/core/download/DOWNLOADSTAUS;

    const-string v1, "START"

    invoke-direct {v0, v1, v5, v5}, Lcom/kwad/sdk/core/download/DOWNLOADSTAUS;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/kwad/sdk/core/download/DOWNLOADSTAUS;->START:Lcom/kwad/sdk/core/download/DOWNLOADSTAUS;

    new-instance v0, Lcom/kwad/sdk/core/download/DOWNLOADSTAUS;

    const-string v1, "DOWNLOADING"

    invoke-direct {v0, v1, v6, v6}, Lcom/kwad/sdk/core/download/DOWNLOADSTAUS;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/kwad/sdk/core/download/DOWNLOADSTAUS;->DOWNLOADING:Lcom/kwad/sdk/core/download/DOWNLOADSTAUS;

    new-instance v0, Lcom/kwad/sdk/core/download/DOWNLOADSTAUS;

    const-string v1, "PROGRESS"

    invoke-direct {v0, v1, v7, v7}, Lcom/kwad/sdk/core/download/DOWNLOADSTAUS;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/kwad/sdk/core/download/DOWNLOADSTAUS;->PROGRESS:Lcom/kwad/sdk/core/download/DOWNLOADSTAUS;

    new-instance v0, Lcom/kwad/sdk/core/download/DOWNLOADSTAUS;

    const-string v1, "PAUSED"

    invoke-direct {v0, v1, v8, v8}, Lcom/kwad/sdk/core/download/DOWNLOADSTAUS;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/kwad/sdk/core/download/DOWNLOADSTAUS;->PAUSED:Lcom/kwad/sdk/core/download/DOWNLOADSTAUS;

    new-instance v0, Lcom/kwad/sdk/core/download/DOWNLOADSTAUS;

    const-string v1, "CANCELLED"

    const/4 v2, 0x5

    const/4 v3, 0x5

    invoke-direct {v0, v1, v2, v3}, Lcom/kwad/sdk/core/download/DOWNLOADSTAUS;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/kwad/sdk/core/download/DOWNLOADSTAUS;->CANCELLED:Lcom/kwad/sdk/core/download/DOWNLOADSTAUS;

    new-instance v0, Lcom/kwad/sdk/core/download/DOWNLOADSTAUS;

    const-string v1, "DELETED"

    const/4 v2, 0x6

    const/4 v3, 0x6

    invoke-direct {v0, v1, v2, v3}, Lcom/kwad/sdk/core/download/DOWNLOADSTAUS;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/kwad/sdk/core/download/DOWNLOADSTAUS;->DELETED:Lcom/kwad/sdk/core/download/DOWNLOADSTAUS;

    new-instance v0, Lcom/kwad/sdk/core/download/DOWNLOADSTAUS;

    const-string v1, "FAILED"

    const/4 v2, 0x7

    const/4 v3, 0x7

    invoke-direct {v0, v1, v2, v3}, Lcom/kwad/sdk/core/download/DOWNLOADSTAUS;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/kwad/sdk/core/download/DOWNLOADSTAUS;->FAILED:Lcom/kwad/sdk/core/download/DOWNLOADSTAUS;

    new-instance v0, Lcom/kwad/sdk/core/download/DOWNLOADSTAUS;

    const-string v1, "FINISHED"

    const/16 v2, 0x8

    const/16 v3, 0x8

    invoke-direct {v0, v1, v2, v3}, Lcom/kwad/sdk/core/download/DOWNLOADSTAUS;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/kwad/sdk/core/download/DOWNLOADSTAUS;->FINISHED:Lcom/kwad/sdk/core/download/DOWNLOADSTAUS;

    new-instance v0, Lcom/kwad/sdk/core/download/DOWNLOADSTAUS;

    const-string v1, "INSTALL"

    const/16 v2, 0x9

    const/16 v3, 0x9

    invoke-direct {v0, v1, v2, v3}, Lcom/kwad/sdk/core/download/DOWNLOADSTAUS;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/kwad/sdk/core/download/DOWNLOADSTAUS;->INSTALL:Lcom/kwad/sdk/core/download/DOWNLOADSTAUS;

    new-instance v0, Lcom/kwad/sdk/core/download/DOWNLOADSTAUS;

    const-string v1, "INSTALLING"

    const/16 v2, 0xa

    const/16 v3, 0xa

    invoke-direct {v0, v1, v2, v3}, Lcom/kwad/sdk/core/download/DOWNLOADSTAUS;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/kwad/sdk/core/download/DOWNLOADSTAUS;->INSTALLING:Lcom/kwad/sdk/core/download/DOWNLOADSTAUS;

    new-instance v0, Lcom/kwad/sdk/core/download/DOWNLOADSTAUS;

    const-string v1, "INSTALL_FAILED"

    const/16 v2, 0xb

    const/16 v3, 0xb

    invoke-direct {v0, v1, v2, v3}, Lcom/kwad/sdk/core/download/DOWNLOADSTAUS;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/kwad/sdk/core/download/DOWNLOADSTAUS;->INSTALL_FAILED:Lcom/kwad/sdk/core/download/DOWNLOADSTAUS;

    new-instance v0, Lcom/kwad/sdk/core/download/DOWNLOADSTAUS;

    const-string v1, "INSTALL_FINSHED"

    const/16 v2, 0xc

    const/16 v3, 0xc

    invoke-direct {v0, v1, v2, v3}, Lcom/kwad/sdk/core/download/DOWNLOADSTAUS;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/kwad/sdk/core/download/DOWNLOADSTAUS;->INSTALL_FINSHED:Lcom/kwad/sdk/core/download/DOWNLOADSTAUS;

    const/16 v0, 0xd

    new-array v0, v0, [Lcom/kwad/sdk/core/download/DOWNLOADSTAUS;

    sget-object v1, Lcom/kwad/sdk/core/download/DOWNLOADSTAUS;->UNKNOWN:Lcom/kwad/sdk/core/download/DOWNLOADSTAUS;

    aput-object v1, v0, v4

    sget-object v1, Lcom/kwad/sdk/core/download/DOWNLOADSTAUS;->START:Lcom/kwad/sdk/core/download/DOWNLOADSTAUS;

    aput-object v1, v0, v5

    sget-object v1, Lcom/kwad/sdk/core/download/DOWNLOADSTAUS;->DOWNLOADING:Lcom/kwad/sdk/core/download/DOWNLOADSTAUS;

    aput-object v1, v0, v6

    sget-object v1, Lcom/kwad/sdk/core/download/DOWNLOADSTAUS;->PROGRESS:Lcom/kwad/sdk/core/download/DOWNLOADSTAUS;

    aput-object v1, v0, v7

    sget-object v1, Lcom/kwad/sdk/core/download/DOWNLOADSTAUS;->PAUSED:Lcom/kwad/sdk/core/download/DOWNLOADSTAUS;

    aput-object v1, v0, v8

    sget-object v1, Lcom/kwad/sdk/core/download/DOWNLOADSTAUS;->CANCELLED:Lcom/kwad/sdk/core/download/DOWNLOADSTAUS;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/kwad/sdk/core/download/DOWNLOADSTAUS;->DELETED:Lcom/kwad/sdk/core/download/DOWNLOADSTAUS;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lcom/kwad/sdk/core/download/DOWNLOADSTAUS;->FAILED:Lcom/kwad/sdk/core/download/DOWNLOADSTAUS;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lcom/kwad/sdk/core/download/DOWNLOADSTAUS;->FINISHED:Lcom/kwad/sdk/core/download/DOWNLOADSTAUS;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sget-object v1, Lcom/kwad/sdk/core/download/DOWNLOADSTAUS;->INSTALL:Lcom/kwad/sdk/core/download/DOWNLOADSTAUS;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    sget-object v1, Lcom/kwad/sdk/core/download/DOWNLOADSTAUS;->INSTALLING:Lcom/kwad/sdk/core/download/DOWNLOADSTAUS;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    sget-object v1, Lcom/kwad/sdk/core/download/DOWNLOADSTAUS;->INSTALL_FAILED:Lcom/kwad/sdk/core/download/DOWNLOADSTAUS;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    sget-object v1, Lcom/kwad/sdk/core/download/DOWNLOADSTAUS;->INSTALL_FINSHED:Lcom/kwad/sdk/core/download/DOWNLOADSTAUS;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    sput-object v0, Lcom/kwad/sdk/core/download/DOWNLOADSTAUS;->$VALUES:[Lcom/kwad/sdk/core/download/DOWNLOADSTAUS;

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

    move-result-object v0

    check-cast v0, Lcom/kwad/sdk/core/download/DOWNLOADSTAUS;

    return-object v0
.end method

.method public static values()[Lcom/kwad/sdk/core/download/DOWNLOADSTAUS;
    .registers 1

    sget-object v0, Lcom/kwad/sdk/core/download/DOWNLOADSTAUS;->$VALUES:[Lcom/kwad/sdk/core/download/DOWNLOADSTAUS;

    invoke-virtual {v0}, [Lcom/kwad/sdk/core/download/DOWNLOADSTAUS;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/kwad/sdk/core/download/DOWNLOADSTAUS;

    return-object v0
.end method
