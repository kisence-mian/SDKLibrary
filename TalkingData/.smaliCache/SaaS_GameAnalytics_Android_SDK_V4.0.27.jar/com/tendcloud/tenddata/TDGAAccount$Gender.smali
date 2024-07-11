.class public final enum Lcom/tendcloud/tenddata/TDGAAccount$Gender;
.super Ljava/lang/Enum;
.source "td"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tendcloud/tenddata/TDGAAccount;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Gender"
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/tendcloud/tenddata/TDGAAccount$Gender;

.field public static final enum FEMALE:Lcom/tendcloud/tenddata/TDGAAccount$Gender;

.field public static final enum MALE:Lcom/tendcloud/tenddata/TDGAAccount$Gender;

.field public static final enum UNKNOW:Lcom/tendcloud/tenddata/TDGAAccount$Gender;


# instance fields
.field private final index:I


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .line 96
    new-instance v0, Lcom/tendcloud/tenddata/TDGAAccount$Gender;

    const-string v1, "UNKNOW"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/tendcloud/tenddata/TDGAAccount$Gender;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tendcloud/tenddata/TDGAAccount$Gender;->UNKNOW:Lcom/tendcloud/tenddata/TDGAAccount$Gender;

    new-instance v1, Lcom/tendcloud/tenddata/TDGAAccount$Gender;

    const-string v3, "MALE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/tendcloud/tenddata/TDGAAccount$Gender;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/tendcloud/tenddata/TDGAAccount$Gender;->MALE:Lcom/tendcloud/tenddata/TDGAAccount$Gender;

    new-instance v3, Lcom/tendcloud/tenddata/TDGAAccount$Gender;

    const-string v5, "FEMALE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/tendcloud/tenddata/TDGAAccount$Gender;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/tendcloud/tenddata/TDGAAccount$Gender;->FEMALE:Lcom/tendcloud/tenddata/TDGAAccount$Gender;

    .line 95
    const/4 v5, 0x3

    new-array v5, v5, [Lcom/tendcloud/tenddata/TDGAAccount$Gender;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lcom/tendcloud/tenddata/TDGAAccount$Gender;->$VALUES:[Lcom/tendcloud/tenddata/TDGAAccount$Gender;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4

    .line 100
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 101
    iput p3, p0, Lcom/tendcloud/tenddata/TDGAAccount$Gender;->index:I

    .line 102
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tendcloud/tenddata/TDGAAccount$Gender;
    .registers 2

    .line 95
    const-class v0, Lcom/tendcloud/tenddata/TDGAAccount$Gender;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/tendcloud/tenddata/TDGAAccount$Gender;

    return-object p0
.end method

.method public static values()[Lcom/tendcloud/tenddata/TDGAAccount$Gender;
    .registers 1

    .line 95
    sget-object v0, Lcom/tendcloud/tenddata/TDGAAccount$Gender;->$VALUES:[Lcom/tendcloud/tenddata/TDGAAccount$Gender;

    invoke-virtual {v0}, [Lcom/tendcloud/tenddata/TDGAAccount$Gender;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tendcloud/tenddata/TDGAAccount$Gender;

    return-object v0
.end method


# virtual methods
.method public index()I
    .registers 2

    .line 105
    iget v0, p0, Lcom/tendcloud/tenddata/TDGAAccount$Gender;->index:I

    return v0
.end method
