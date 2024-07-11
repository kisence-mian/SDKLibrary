.class public final enum Lcom/kwad/sdk/feed/FeedType;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/kwad/sdk/feed/FeedType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/kwad/sdk/feed/FeedType;

.field public static final enum FEED_TYPE_TEXT_ABOVE:Lcom/kwad/sdk/feed/FeedType;

.field public static final enum FEED_TYPE_TEXT_ABOVE_GROUP:Lcom/kwad/sdk/feed/FeedType;

.field public static final enum FEED_TYPE_TEXT_BELOW:Lcom/kwad/sdk/feed/FeedType;

.field public static final enum FEED_TYPE_TEXT_IMMERSE:Lcom/kwad/sdk/feed/FeedType;

.field public static final enum FEED_TYPE_TEXT_LEFT:Lcom/kwad/sdk/feed/FeedType;

.field public static final enum FEED_TYPE_TEXT_NEW:Lcom/kwad/sdk/feed/FeedType;

.field public static final enum FEED_TYPE_TEXT_RIGHT:Lcom/kwad/sdk/feed/FeedType;

.field public static final enum FEED_TYPE_UNKNOWN:Lcom/kwad/sdk/feed/FeedType;


# instance fields
.field private type:I


# direct methods
.method static constructor <clinit>()V
    .registers 16

    new-instance v0, Lcom/kwad/sdk/feed/FeedType;

    const-string v1, "FEED_TYPE_UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/kwad/sdk/feed/FeedType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/kwad/sdk/feed/FeedType;->FEED_TYPE_UNKNOWN:Lcom/kwad/sdk/feed/FeedType;

    new-instance v1, Lcom/kwad/sdk/feed/FeedType;

    const-string v3, "FEED_TYPE_TEXT_IMMERSE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/kwad/sdk/feed/FeedType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/kwad/sdk/feed/FeedType;->FEED_TYPE_TEXT_IMMERSE:Lcom/kwad/sdk/feed/FeedType;

    new-instance v3, Lcom/kwad/sdk/feed/FeedType;

    const-string v5, "FEED_TYPE_TEXT_LEFT"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/kwad/sdk/feed/FeedType;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/kwad/sdk/feed/FeedType;->FEED_TYPE_TEXT_LEFT:Lcom/kwad/sdk/feed/FeedType;

    new-instance v5, Lcom/kwad/sdk/feed/FeedType;

    const-string v7, "FEED_TYPE_TEXT_RIGHT"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lcom/kwad/sdk/feed/FeedType;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/kwad/sdk/feed/FeedType;->FEED_TYPE_TEXT_RIGHT:Lcom/kwad/sdk/feed/FeedType;

    new-instance v7, Lcom/kwad/sdk/feed/FeedType;

    const-string v9, "FEED_TYPE_TEXT_ABOVE"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v10}, Lcom/kwad/sdk/feed/FeedType;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/kwad/sdk/feed/FeedType;->FEED_TYPE_TEXT_ABOVE:Lcom/kwad/sdk/feed/FeedType;

    new-instance v9, Lcom/kwad/sdk/feed/FeedType;

    const-string v11, "FEED_TYPE_TEXT_BELOW"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12, v12}, Lcom/kwad/sdk/feed/FeedType;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/kwad/sdk/feed/FeedType;->FEED_TYPE_TEXT_BELOW:Lcom/kwad/sdk/feed/FeedType;

    new-instance v11, Lcom/kwad/sdk/feed/FeedType;

    const-string v13, "FEED_TYPE_TEXT_ABOVE_GROUP"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14, v14}, Lcom/kwad/sdk/feed/FeedType;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lcom/kwad/sdk/feed/FeedType;->FEED_TYPE_TEXT_ABOVE_GROUP:Lcom/kwad/sdk/feed/FeedType;

    new-instance v13, Lcom/kwad/sdk/feed/FeedType;

    const-string v15, "FEED_TYPE_TEXT_NEW"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14, v14}, Lcom/kwad/sdk/feed/FeedType;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lcom/kwad/sdk/feed/FeedType;->FEED_TYPE_TEXT_NEW:Lcom/kwad/sdk/feed/FeedType;

    const/16 v15, 0x8

    new-array v15, v15, [Lcom/kwad/sdk/feed/FeedType;

    aput-object v0, v15, v2

    aput-object v1, v15, v4

    aput-object v3, v15, v6

    aput-object v5, v15, v8

    aput-object v7, v15, v10

    aput-object v9, v15, v12

    const/4 v0, 0x6

    aput-object v11, v15, v0

    aput-object v13, v15, v14

    sput-object v15, Lcom/kwad/sdk/feed/FeedType;->$VALUES:[Lcom/kwad/sdk/feed/FeedType;

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

    iput p3, p0, Lcom/kwad/sdk/feed/FeedType;->type:I

    return-void
.end method

.method public static checkTypeValid(Lcom/kwad/sdk/core/response/model/AdTemplate;)Z
    .registers 6

    invoke-static {p0}, Lcom/kwad/sdk/core/response/b/c;->g(Lcom/kwad/sdk/core/response/model/AdTemplate;)Lcom/kwad/sdk/core/response/model/AdInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/kwad/sdk/core/response/b/a;->E(Lcom/kwad/sdk/core/response/model/AdInfo;)I

    move-result v0

    iget v1, p0, Lcom/kwad/sdk/core/response/model/AdTemplate;->type:I

    sget-object v2, Lcom/kwad/sdk/feed/FeedType;->FEED_TYPE_TEXT_ABOVE_GROUP:Lcom/kwad/sdk/feed/FeedType;

    iget v3, v2, Lcom/kwad/sdk/feed/FeedType;->type:I

    const/4 v4, 0x1

    if-le v1, v3, :cond_12

    return v4

    :cond_12
    iget p0, p0, Lcom/kwad/sdk/core/response/model/AdTemplate;->type:I

    invoke-static {p0}, Lcom/kwad/sdk/feed/FeedType;->fromInt(I)Lcom/kwad/sdk/feed/FeedType;

    move-result-object p0

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_38

    return v1

    :pswitch_1d
    sget-object v0, Lcom/kwad/sdk/feed/FeedType;->FEED_TYPE_UNKNOWN:Lcom/kwad/sdk/feed/FeedType;

    if-eq p0, v0, :cond_22

    goto :goto_23

    :cond_22
    move v4, v1

    :goto_23
    return v4

    :pswitch_24
    sget-object v0, Lcom/kwad/sdk/feed/FeedType;->FEED_TYPE_UNKNOWN:Lcom/kwad/sdk/feed/FeedType;

    if-eq p0, v0, :cond_2b

    if-eq p0, v2, :cond_2b

    goto :goto_2c

    :cond_2b
    move v4, v1

    :goto_2c
    return v4

    :pswitch_2d
    sget-object v0, Lcom/kwad/sdk/feed/FeedType;->FEED_TYPE_TEXT_ABOVE:Lcom/kwad/sdk/feed/FeedType;

    if-eq p0, v0, :cond_37

    sget-object v0, Lcom/kwad/sdk/feed/FeedType;->FEED_TYPE_TEXT_BELOW:Lcom/kwad/sdk/feed/FeedType;

    if-ne p0, v0, :cond_36

    goto :goto_37

    :cond_36
    move v4, v1

    :cond_37
    :goto_37
    return v4

    :pswitch_data_38
    .packed-switch 0x1
        :pswitch_2d
        :pswitch_24
        :pswitch_1d
    .end packed-switch
.end method

.method public static fromInt(I)Lcom/kwad/sdk/feed/FeedType;
    .registers 6

    invoke-static {}, Lcom/kwad/sdk/feed/FeedType;->values()[Lcom/kwad/sdk/feed/FeedType;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v1, :cond_12

    aget-object v3, v0, v2

    iget v4, v3, Lcom/kwad/sdk/feed/FeedType;->type:I

    if-ne v4, p0, :cond_f

    return-object v3

    :cond_f
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_12
    sget-object v0, Lcom/kwad/sdk/feed/FeedType;->FEED_TYPE_TEXT_NEW:Lcom/kwad/sdk/feed/FeedType;

    invoke-virtual {v0}, Lcom/kwad/sdk/feed/FeedType;->getType()I

    move-result v1

    if-lt p0, v1, :cond_1b

    return-object v0

    :cond_1b
    sget-object p0, Lcom/kwad/sdk/feed/FeedType;->FEED_TYPE_UNKNOWN:Lcom/kwad/sdk/feed/FeedType;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/kwad/sdk/feed/FeedType;
    .registers 2

    const-class v0, Lcom/kwad/sdk/feed/FeedType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/kwad/sdk/feed/FeedType;

    return-object p0
.end method

.method public static values()[Lcom/kwad/sdk/feed/FeedType;
    .registers 1

    sget-object v0, Lcom/kwad/sdk/feed/FeedType;->$VALUES:[Lcom/kwad/sdk/feed/FeedType;

    invoke-virtual {v0}, [Lcom/kwad/sdk/feed/FeedType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/kwad/sdk/feed/FeedType;

    return-object v0
.end method


# virtual methods
.method public getType()I
    .registers 2

    iget v0, p0, Lcom/kwad/sdk/feed/FeedType;->type:I

    return v0
.end method
