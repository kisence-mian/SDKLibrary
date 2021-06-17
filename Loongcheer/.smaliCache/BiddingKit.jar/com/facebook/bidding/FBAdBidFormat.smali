.class public final enum Lcom/facebook/bidding/FBAdBidFormat;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/facebook/bidding/FBAdBidFormat;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/facebook/bidding/FBAdBidFormat;

.field public static final enum BANNER_320_50:Lcom/facebook/bidding/FBAdBidFormat;

.field public static final enum BANNER_HEIGHT_250:Lcom/facebook/bidding/FBAdBidFormat;

.field public static final enum BANNER_HEIGHT_50:Lcom/facebook/bidding/FBAdBidFormat;

.field public static final enum BANNER_HEIGHT_90:Lcom/facebook/bidding/FBAdBidFormat;

.field public static final enum INSTREAM_VIDEO:Lcom/facebook/bidding/FBAdBidFormat;

.field public static final enum INTERSTITIAL:Lcom/facebook/bidding/FBAdBidFormat;

.field public static final enum NATIVE:Lcom/facebook/bidding/FBAdBidFormat;

.field public static final enum NATIVE_BANNER:Lcom/facebook/bidding/FBAdBidFormat;

.field public static final enum REWARDED_VIDEO:Lcom/facebook/bidding/FBAdBidFormat;


# instance fields
.field private final a:I

.field private final b:I

.field private final c:I

.field private final d:I

.field private final e:Z

.field private final f:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 28

    new-instance v9, Lcom/facebook/bidding/FBAdBidFormat;

    const-string v1, "BANNER_320_50"

    const/4 v2, 0x0

    const/16 v3, 0x140

    const/16 v4, 0x32

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "banner"

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lcom/facebook/bidding/FBAdBidFormat;-><init>(Ljava/lang/String;IIIIIZLjava/lang/String;)V

    sput-object v9, Lcom/facebook/bidding/FBAdBidFormat;->BANNER_320_50:Lcom/facebook/bidding/FBAdBidFormat;

    new-instance v0, Lcom/facebook/bidding/FBAdBidFormat;

    const-string v11, "BANNER_HEIGHT_50"

    const/4 v12, 0x1

    const/4 v13, -0x1

    const/16 v14, 0x32

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const-string v18, "banner"

    move-object v10, v0

    invoke-direct/range {v10 .. v18}, Lcom/facebook/bidding/FBAdBidFormat;-><init>(Ljava/lang/String;IIIIIZLjava/lang/String;)V

    sput-object v0, Lcom/facebook/bidding/FBAdBidFormat;->BANNER_HEIGHT_50:Lcom/facebook/bidding/FBAdBidFormat;

    new-instance v1, Lcom/facebook/bidding/FBAdBidFormat;

    const-string v20, "BANNER_HEIGHT_90"

    const/16 v21, 0x2

    const/16 v22, -0x1

    const/16 v23, 0x5a

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const-string v27, "banner"

    move-object/from16 v19, v1

    invoke-direct/range {v19 .. v27}, Lcom/facebook/bidding/FBAdBidFormat;-><init>(Ljava/lang/String;IIIIIZLjava/lang/String;)V

    sput-object v1, Lcom/facebook/bidding/FBAdBidFormat;->BANNER_HEIGHT_90:Lcom/facebook/bidding/FBAdBidFormat;

    new-instance v2, Lcom/facebook/bidding/FBAdBidFormat;

    const-string v11, "BANNER_HEIGHT_250"

    const/4 v12, 0x3

    const/16 v14, 0xfa

    const/16 v17, 0x1

    const-string v18, "banner"

    move-object v10, v2

    invoke-direct/range {v10 .. v18}, Lcom/facebook/bidding/FBAdBidFormat;-><init>(Ljava/lang/String;IIIIIZLjava/lang/String;)V

    sput-object v2, Lcom/facebook/bidding/FBAdBidFormat;->BANNER_HEIGHT_250:Lcom/facebook/bidding/FBAdBidFormat;

    new-instance v3, Lcom/facebook/bidding/FBAdBidFormat;

    const-string v20, "INTERSTITIAL"

    const/16 v21, 0x4

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x1

    const/16 v26, 0x1

    const-string v27, "banner"

    move-object/from16 v19, v3

    invoke-direct/range {v19 .. v27}, Lcom/facebook/bidding/FBAdBidFormat;-><init>(Ljava/lang/String;IIIIIZLjava/lang/String;)V

    sput-object v3, Lcom/facebook/bidding/FBAdBidFormat;->INTERSTITIAL:Lcom/facebook/bidding/FBAdBidFormat;

    new-instance v4, Lcom/facebook/bidding/FBAdBidFormat;

    const-string v11, "INSTREAM_VIDEO"

    const/4 v12, 0x5

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v16, 0x1

    const-string v18, "video"

    move-object v10, v4

    invoke-direct/range {v10 .. v18}, Lcom/facebook/bidding/FBAdBidFormat;-><init>(Ljava/lang/String;IIIIIZLjava/lang/String;)V

    sput-object v4, Lcom/facebook/bidding/FBAdBidFormat;->INSTREAM_VIDEO:Lcom/facebook/bidding/FBAdBidFormat;

    new-instance v5, Lcom/facebook/bidding/FBAdBidFormat;

    const-string v20, "REWARDED_VIDEO"

    const/16 v21, 0x6

    const/16 v24, 0x0

    const/16 v25, 0x2

    const-string v27, "video"

    move-object/from16 v19, v5

    invoke-direct/range {v19 .. v27}, Lcom/facebook/bidding/FBAdBidFormat;-><init>(Ljava/lang/String;IIIIIZLjava/lang/String;)V

    sput-object v5, Lcom/facebook/bidding/FBAdBidFormat;->REWARDED_VIDEO:Lcom/facebook/bidding/FBAdBidFormat;

    new-instance v6, Lcom/facebook/bidding/FBAdBidFormat;

    const-string v11, "NATIVE"

    const/4 v12, 0x7

    const/4 v13, -0x1

    const/4 v14, -0x1

    const/16 v16, 0x0

    const-string v18, "native"

    move-object v10, v6

    invoke-direct/range {v10 .. v18}, Lcom/facebook/bidding/FBAdBidFormat;-><init>(Ljava/lang/String;IIIIIZLjava/lang/String;)V

    sput-object v6, Lcom/facebook/bidding/FBAdBidFormat;->NATIVE:Lcom/facebook/bidding/FBAdBidFormat;

    new-instance v7, Lcom/facebook/bidding/FBAdBidFormat;

    const-string v20, "NATIVE_BANNER"

    const/16 v21, 0x8

    const/16 v22, -0x1

    const/16 v23, -0x1

    const/16 v25, 0x0

    const/16 v26, 0x0

    const-string v27, "native"

    move-object/from16 v19, v7

    invoke-direct/range {v19 .. v27}, Lcom/facebook/bidding/FBAdBidFormat;-><init>(Ljava/lang/String;IIIIIZLjava/lang/String;)V

    sput-object v7, Lcom/facebook/bidding/FBAdBidFormat;->NATIVE_BANNER:Lcom/facebook/bidding/FBAdBidFormat;

    const/16 v8, 0x9

    new-array v8, v8, [Lcom/facebook/bidding/FBAdBidFormat;

    const/4 v10, 0x0

    aput-object v9, v8, v10

    const/4 v9, 0x1

    aput-object v0, v8, v9

    const/4 v0, 0x2

    aput-object v1, v8, v0

    const/4 v0, 0x3

    aput-object v2, v8, v0

    const/4 v0, 0x4

    aput-object v3, v8, v0

    const/4 v0, 0x5

    aput-object v4, v8, v0

    const/4 v0, 0x6

    aput-object v5, v8, v0

    const/4 v0, 0x7

    aput-object v6, v8, v0

    const/16 v0, 0x8

    aput-object v7, v8, v0

    sput-object v8, Lcom/facebook/bidding/FBAdBidFormat;->$VALUES:[Lcom/facebook/bidding/FBAdBidFormat;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIIIIZLjava/lang/String;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIIIZ",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/facebook/bidding/FBAdBidFormat;->a:I

    iput p4, p0, Lcom/facebook/bidding/FBAdBidFormat;->b:I

    iput p5, p0, Lcom/facebook/bidding/FBAdBidFormat;->c:I

    iput p6, p0, Lcom/facebook/bidding/FBAdBidFormat;->d:I

    iput-boolean p7, p0, Lcom/facebook/bidding/FBAdBidFormat;->e:Z

    iput-object p8, p0, Lcom/facebook/bidding/FBAdBidFormat;->f:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/bidding/FBAdBidFormat;
    .registers 2

    const-class v0, Lcom/facebook/bidding/FBAdBidFormat;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/facebook/bidding/FBAdBidFormat;

    return-object p0
.end method

.method public static values()[Lcom/facebook/bidding/FBAdBidFormat;
    .registers 1

    sget-object v0, Lcom/facebook/bidding/FBAdBidFormat;->$VALUES:[Lcom/facebook/bidding/FBAdBidFormat;

    invoke-virtual {v0}, [Lcom/facebook/bidding/FBAdBidFormat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/bidding/FBAdBidFormat;

    return-object v0
.end method


# virtual methods
.method public getFormatLabel()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/facebook/bidding/FBAdBidFormat;->f:Ljava/lang/String;

    return-object v0
.end method

.method public getHeight()I
    .registers 2

    iget v0, p0, Lcom/facebook/bidding/FBAdBidFormat;->b:I

    return v0
.end method

.method public getInstl()I
    .registers 2

    iget v0, p0, Lcom/facebook/bidding/FBAdBidFormat;->c:I

    return v0
.end method

.method public getLinearity()I
    .registers 2

    iget v0, p0, Lcom/facebook/bidding/FBAdBidFormat;->d:I

    return v0
.end method

.method public getMediaView()Z
    .registers 2

    iget-boolean v0, p0, Lcom/facebook/bidding/FBAdBidFormat;->e:Z

    return v0
.end method

.method public getWidth()I
    .registers 2

    iget v0, p0, Lcom/facebook/bidding/FBAdBidFormat;->a:I

    return v0
.end method
