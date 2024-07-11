.class public final enum Lcom/tendcloud/tenddata/TDGAVirtualCurrency$b;
.super Ljava/lang/Enum;
.source "td"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tendcloud/tenddata/TDGAVirtualCurrency;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/tendcloud/tenddata/TDGAVirtualCurrency$b;

.field public static final enum REQUEST:Lcom/tendcloud/tenddata/TDGAVirtualCurrency$b;

.field public static final enum SUCCESS:Lcom/tendcloud/tenddata/TDGAVirtualCurrency$b;


# instance fields
.field private final index:I


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .line 72
    new-instance v0, Lcom/tendcloud/tenddata/TDGAVirtualCurrency$b;

    const-string v1, "REQUEST"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/tendcloud/tenddata/TDGAVirtualCurrency$b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tendcloud/tenddata/TDGAVirtualCurrency$b;->REQUEST:Lcom/tendcloud/tenddata/TDGAVirtualCurrency$b;

    .line 73
    new-instance v1, Lcom/tendcloud/tenddata/TDGAVirtualCurrency$b;

    const-string v4, "SUCCESS"

    const/4 v5, 0x2

    invoke-direct {v1, v4, v3, v5}, Lcom/tendcloud/tenddata/TDGAVirtualCurrency$b;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/tendcloud/tenddata/TDGAVirtualCurrency$b;->SUCCESS:Lcom/tendcloud/tenddata/TDGAVirtualCurrency$b;

    .line 71
    new-array v4, v5, [Lcom/tendcloud/tenddata/TDGAVirtualCurrency$b;

    aput-object v0, v4, v2

    aput-object v1, v4, v3

    sput-object v4, Lcom/tendcloud/tenddata/TDGAVirtualCurrency$b;->$VALUES:[Lcom/tendcloud/tenddata/TDGAVirtualCurrency$b;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4

    .line 77
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 78
    iput p3, p0, Lcom/tendcloud/tenddata/TDGAVirtualCurrency$b;->index:I

    .line 79
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tendcloud/tenddata/TDGAVirtualCurrency$b;
    .registers 2

    .line 71
    const-class v0, Lcom/tendcloud/tenddata/TDGAVirtualCurrency$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/tendcloud/tenddata/TDGAVirtualCurrency$b;

    return-object p0
.end method

.method public static values()[Lcom/tendcloud/tenddata/TDGAVirtualCurrency$b;
    .registers 1

    .line 71
    sget-object v0, Lcom/tendcloud/tenddata/TDGAVirtualCurrency$b;->$VALUES:[Lcom/tendcloud/tenddata/TDGAVirtualCurrency$b;

    invoke-virtual {v0}, [Lcom/tendcloud/tenddata/TDGAVirtualCurrency$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tendcloud/tenddata/TDGAVirtualCurrency$b;

    return-object v0
.end method


# virtual methods
.method public index()I
    .registers 2

    .line 82
    iget v0, p0, Lcom/tendcloud/tenddata/TDGAVirtualCurrency$b;->index:I

    return v0
.end method
