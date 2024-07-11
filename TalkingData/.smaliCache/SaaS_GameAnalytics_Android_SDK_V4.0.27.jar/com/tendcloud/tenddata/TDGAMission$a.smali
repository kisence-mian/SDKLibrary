.class public final enum Lcom/tendcloud/tenddata/TDGAMission$a;
.super Ljava/lang/Enum;
.source "td"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tendcloud/tenddata/TDGAMission;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/tendcloud/tenddata/TDGAMission$a;

.field public static final enum COMPLETED:Lcom/tendcloud/tenddata/TDGAMission$a;

.field public static final enum FAILED:Lcom/tendcloud/tenddata/TDGAMission$a;

.field public static final enum START:Lcom/tendcloud/tenddata/TDGAMission$a;


# instance fields
.field public final index:I


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .line 59
    new-instance v0, Lcom/tendcloud/tenddata/TDGAMission$a;

    const-string v1, "START"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/tendcloud/tenddata/TDGAMission$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tendcloud/tenddata/TDGAMission$a;->START:Lcom/tendcloud/tenddata/TDGAMission$a;

    new-instance v1, Lcom/tendcloud/tenddata/TDGAMission$a;

    const-string v4, "COMPLETED"

    const/4 v5, 0x2

    invoke-direct {v1, v4, v3, v5}, Lcom/tendcloud/tenddata/TDGAMission$a;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/tendcloud/tenddata/TDGAMission$a;->COMPLETED:Lcom/tendcloud/tenddata/TDGAMission$a;

    new-instance v4, Lcom/tendcloud/tenddata/TDGAMission$a;

    const-string v6, "FAILED"

    const/4 v7, 0x3

    invoke-direct {v4, v6, v5, v7}, Lcom/tendcloud/tenddata/TDGAMission$a;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/tendcloud/tenddata/TDGAMission$a;->FAILED:Lcom/tendcloud/tenddata/TDGAMission$a;

    .line 58
    new-array v6, v7, [Lcom/tendcloud/tenddata/TDGAMission$a;

    aput-object v0, v6, v2

    aput-object v1, v6, v3

    aput-object v4, v6, v5

    sput-object v6, Lcom/tendcloud/tenddata/TDGAMission$a;->$VALUES:[Lcom/tendcloud/tenddata/TDGAMission$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4

    .line 63
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 64
    iput p3, p0, Lcom/tendcloud/tenddata/TDGAMission$a;->index:I

    .line 65
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tendcloud/tenddata/TDGAMission$a;
    .registers 2

    .line 58
    const-class v0, Lcom/tendcloud/tenddata/TDGAMission$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/tendcloud/tenddata/TDGAMission$a;

    return-object p0
.end method

.method public static values()[Lcom/tendcloud/tenddata/TDGAMission$a;
    .registers 1

    .line 58
    sget-object v0, Lcom/tendcloud/tenddata/TDGAMission$a;->$VALUES:[Lcom/tendcloud/tenddata/TDGAMission$a;

    invoke-virtual {v0}, [Lcom/tendcloud/tenddata/TDGAMission$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tendcloud/tenddata/TDGAMission$a;

    return-object v0
.end method


# virtual methods
.method public index()I
    .registers 2

    .line 68
    iget v0, p0, Lcom/tendcloud/tenddata/TDGAMission$a;->index:I

    return v0
.end method
