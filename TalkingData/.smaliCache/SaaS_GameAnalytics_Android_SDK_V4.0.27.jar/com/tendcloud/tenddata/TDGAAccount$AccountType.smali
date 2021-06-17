.class public final enum Lcom/tendcloud/tenddata/TDGAAccount$AccountType;
.super Ljava/lang/Enum;
.source "td"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tendcloud/tenddata/TDGAAccount;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AccountType"
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/tendcloud/tenddata/TDGAAccount$AccountType;

.field public static final enum ANONYMOUS:Lcom/tendcloud/tenddata/TDGAAccount$AccountType;

.field public static final enum ND91:Lcom/tendcloud/tenddata/TDGAAccount$AccountType;

.field public static final enum QQ:Lcom/tendcloud/tenddata/TDGAAccount$AccountType;

.field public static final enum QQ_WEIBO:Lcom/tendcloud/tenddata/TDGAAccount$AccountType;

.field public static final enum REGISTERED:Lcom/tendcloud/tenddata/TDGAAccount$AccountType;

.field public static final enum SINA_WEIBO:Lcom/tendcloud/tenddata/TDGAAccount$AccountType;

.field public static final enum TYPE1:Lcom/tendcloud/tenddata/TDGAAccount$AccountType;

.field public static final enum TYPE10:Lcom/tendcloud/tenddata/TDGAAccount$AccountType;

.field public static final enum TYPE2:Lcom/tendcloud/tenddata/TDGAAccount$AccountType;

.field public static final enum TYPE3:Lcom/tendcloud/tenddata/TDGAAccount$AccountType;

.field public static final enum TYPE4:Lcom/tendcloud/tenddata/TDGAAccount$AccountType;

.field public static final enum TYPE5:Lcom/tendcloud/tenddata/TDGAAccount$AccountType;

.field public static final enum TYPE6:Lcom/tendcloud/tenddata/TDGAAccount$AccountType;

.field public static final enum TYPE7:Lcom/tendcloud/tenddata/TDGAAccount$AccountType;

.field public static final enum TYPE8:Lcom/tendcloud/tenddata/TDGAAccount$AccountType;

.field public static final enum TYPE9:Lcom/tendcloud/tenddata/TDGAAccount$AccountType;

.field public static final enum WEIXIN:Lcom/tendcloud/tenddata/TDGAAccount$AccountType;


# instance fields
.field private final index:I


# direct methods
.method static constructor <clinit>()V
    .registers 20

    .line 66
    new-instance v0, Lcom/tendcloud/tenddata/TDGAAccount$AccountType;

    const-string v1, "ANONYMOUS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/tendcloud/tenddata/TDGAAccount$AccountType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tendcloud/tenddata/TDGAAccount$AccountType;->ANONYMOUS:Lcom/tendcloud/tenddata/TDGAAccount$AccountType;

    .line 67
    new-instance v1, Lcom/tendcloud/tenddata/TDGAAccount$AccountType;

    const-string v3, "REGISTERED"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/tendcloud/tenddata/TDGAAccount$AccountType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/tendcloud/tenddata/TDGAAccount$AccountType;->REGISTERED:Lcom/tendcloud/tenddata/TDGAAccount$AccountType;

    .line 68
    new-instance v3, Lcom/tendcloud/tenddata/TDGAAccount$AccountType;

    const-string v5, "SINA_WEIBO"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/tendcloud/tenddata/TDGAAccount$AccountType;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/tendcloud/tenddata/TDGAAccount$AccountType;->SINA_WEIBO:Lcom/tendcloud/tenddata/TDGAAccount$AccountType;

    .line 69
    new-instance v5, Lcom/tendcloud/tenddata/TDGAAccount$AccountType;

    const-string v7, "QQ"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lcom/tendcloud/tenddata/TDGAAccount$AccountType;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/tendcloud/tenddata/TDGAAccount$AccountType;->QQ:Lcom/tendcloud/tenddata/TDGAAccount$AccountType;

    .line 70
    new-instance v7, Lcom/tendcloud/tenddata/TDGAAccount$AccountType;

    const-string v9, "QQ_WEIBO"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v10}, Lcom/tendcloud/tenddata/TDGAAccount$AccountType;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/tendcloud/tenddata/TDGAAccount$AccountType;->QQ_WEIBO:Lcom/tendcloud/tenddata/TDGAAccount$AccountType;

    .line 71
    new-instance v9, Lcom/tendcloud/tenddata/TDGAAccount$AccountType;

    const-string v11, "ND91"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12, v12}, Lcom/tendcloud/tenddata/TDGAAccount$AccountType;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/tendcloud/tenddata/TDGAAccount$AccountType;->ND91:Lcom/tendcloud/tenddata/TDGAAccount$AccountType;

    .line 72
    new-instance v11, Lcom/tendcloud/tenddata/TDGAAccount$AccountType;

    const-string v13, "WEIXIN"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14, v14}, Lcom/tendcloud/tenddata/TDGAAccount$AccountType;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lcom/tendcloud/tenddata/TDGAAccount$AccountType;->WEIXIN:Lcom/tendcloud/tenddata/TDGAAccount$AccountType;

    .line 73
    new-instance v13, Lcom/tendcloud/tenddata/TDGAAccount$AccountType;

    const-string v15, "TYPE1"

    const/4 v14, 0x7

    const/16 v12, 0xb

    invoke-direct {v13, v15, v14, v12}, Lcom/tendcloud/tenddata/TDGAAccount$AccountType;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lcom/tendcloud/tenddata/TDGAAccount$AccountType;->TYPE1:Lcom/tendcloud/tenddata/TDGAAccount$AccountType;

    .line 74
    new-instance v15, Lcom/tendcloud/tenddata/TDGAAccount$AccountType;

    const-string v14, "TYPE2"

    const/16 v10, 0x8

    const/16 v8, 0xc

    invoke-direct {v15, v14, v10, v8}, Lcom/tendcloud/tenddata/TDGAAccount$AccountType;-><init>(Ljava/lang/String;II)V

    sput-object v15, Lcom/tendcloud/tenddata/TDGAAccount$AccountType;->TYPE2:Lcom/tendcloud/tenddata/TDGAAccount$AccountType;

    .line 75
    new-instance v14, Lcom/tendcloud/tenddata/TDGAAccount$AccountType;

    const-string v10, "TYPE3"

    const/16 v6, 0x9

    const/16 v4, 0xd

    invoke-direct {v14, v10, v6, v4}, Lcom/tendcloud/tenddata/TDGAAccount$AccountType;-><init>(Ljava/lang/String;II)V

    sput-object v14, Lcom/tendcloud/tenddata/TDGAAccount$AccountType;->TYPE3:Lcom/tendcloud/tenddata/TDGAAccount$AccountType;

    .line 76
    new-instance v10, Lcom/tendcloud/tenddata/TDGAAccount$AccountType;

    const-string v6, "TYPE4"

    const/16 v2, 0xa

    const/16 v4, 0xe

    invoke-direct {v10, v6, v2, v4}, Lcom/tendcloud/tenddata/TDGAAccount$AccountType;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lcom/tendcloud/tenddata/TDGAAccount$AccountType;->TYPE4:Lcom/tendcloud/tenddata/TDGAAccount$AccountType;

    .line 77
    new-instance v6, Lcom/tendcloud/tenddata/TDGAAccount$AccountType;

    const-string v2, "TYPE5"

    const/16 v4, 0xf

    invoke-direct {v6, v2, v12, v4}, Lcom/tendcloud/tenddata/TDGAAccount$AccountType;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/tendcloud/tenddata/TDGAAccount$AccountType;->TYPE5:Lcom/tendcloud/tenddata/TDGAAccount$AccountType;

    .line 78
    new-instance v2, Lcom/tendcloud/tenddata/TDGAAccount$AccountType;

    const-string v12, "TYPE6"

    const/16 v4, 0x10

    invoke-direct {v2, v12, v8, v4}, Lcom/tendcloud/tenddata/TDGAAccount$AccountType;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/tendcloud/tenddata/TDGAAccount$AccountType;->TYPE6:Lcom/tendcloud/tenddata/TDGAAccount$AccountType;

    .line 79
    new-instance v12, Lcom/tendcloud/tenddata/TDGAAccount$AccountType;

    const-string v8, "TYPE7"

    const/16 v4, 0x11

    move-object/from16 v16, v2

    const/16 v2, 0xd

    invoke-direct {v12, v8, v2, v4}, Lcom/tendcloud/tenddata/TDGAAccount$AccountType;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lcom/tendcloud/tenddata/TDGAAccount$AccountType;->TYPE7:Lcom/tendcloud/tenddata/TDGAAccount$AccountType;

    .line 80
    new-instance v2, Lcom/tendcloud/tenddata/TDGAAccount$AccountType;

    const-string v8, "TYPE8"

    const/16 v4, 0x12

    move-object/from16 v17, v12

    const/16 v12, 0xe

    invoke-direct {v2, v8, v12, v4}, Lcom/tendcloud/tenddata/TDGAAccount$AccountType;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/tendcloud/tenddata/TDGAAccount$AccountType;->TYPE8:Lcom/tendcloud/tenddata/TDGAAccount$AccountType;

    .line 81
    new-instance v4, Lcom/tendcloud/tenddata/TDGAAccount$AccountType;

    const-string v8, "TYPE9"

    const/16 v12, 0x13

    move-object/from16 v18, v2

    const/16 v2, 0xf

    invoke-direct {v4, v8, v2, v12}, Lcom/tendcloud/tenddata/TDGAAccount$AccountType;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/tendcloud/tenddata/TDGAAccount$AccountType;->TYPE9:Lcom/tendcloud/tenddata/TDGAAccount$AccountType;

    .line 82
    new-instance v2, Lcom/tendcloud/tenddata/TDGAAccount$AccountType;

    const-string v8, "TYPE10"

    const/16 v12, 0x14

    move-object/from16 v19, v4

    const/16 v4, 0x10

    invoke-direct {v2, v8, v4, v12}, Lcom/tendcloud/tenddata/TDGAAccount$AccountType;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/tendcloud/tenddata/TDGAAccount$AccountType;->TYPE10:Lcom/tendcloud/tenddata/TDGAAccount$AccountType;

    .line 65
    const/16 v4, 0x11

    new-array v4, v4, [Lcom/tendcloud/tenddata/TDGAAccount$AccountType;

    const/4 v8, 0x0

    aput-object v0, v4, v8

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

    aput-object v15, v4, v0

    const/16 v0, 0x9

    aput-object v14, v4, v0

    const/16 v0, 0xa

    aput-object v10, v4, v0

    const/16 v0, 0xb

    aput-object v6, v4, v0

    const/16 v0, 0xc

    aput-object v16, v4, v0

    const/16 v0, 0xd

    aput-object v17, v4, v0

    const/16 v0, 0xe

    aput-object v18, v4, v0

    const/16 v0, 0xf

    aput-object v19, v4, v0

    const/16 v0, 0x10

    aput-object v2, v4, v0

    sput-object v4, Lcom/tendcloud/tenddata/TDGAAccount$AccountType;->$VALUES:[Lcom/tendcloud/tenddata/TDGAAccount$AccountType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4

    .line 86
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 87
    iput p3, p0, Lcom/tendcloud/tenddata/TDGAAccount$AccountType;->index:I

    .line 88
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tendcloud/tenddata/TDGAAccount$AccountType;
    .registers 2

    .line 65
    const-class v0, Lcom/tendcloud/tenddata/TDGAAccount$AccountType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/tendcloud/tenddata/TDGAAccount$AccountType;

    return-object p0
.end method

.method public static values()[Lcom/tendcloud/tenddata/TDGAAccount$AccountType;
    .registers 1

    .line 65
    sget-object v0, Lcom/tendcloud/tenddata/TDGAAccount$AccountType;->$VALUES:[Lcom/tendcloud/tenddata/TDGAAccount$AccountType;

    invoke-virtual {v0}, [Lcom/tendcloud/tenddata/TDGAAccount$AccountType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tendcloud/tenddata/TDGAAccount$AccountType;

    return-object v0
.end method


# virtual methods
.method public index()I
    .registers 2

    .line 91
    iget v0, p0, Lcom/tendcloud/tenddata/TDGAAccount$AccountType;->index:I

    return v0
.end method
