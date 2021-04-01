.class public final enum Lcom/kwad/sdk/feed/FeedType;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
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

.field public static final enum FEED_TYPE_TEXT_RIGHT:Lcom/kwad/sdk/feed/FeedType;

.field public static final enum FEED_TYPE_UNKNOWN:Lcom/kwad/sdk/feed/FeedType;


# instance fields
.field private type:I


# direct methods
.method static constructor <clinit>()V
    .registers 9

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-instance v0, Lcom/kwad/sdk/feed/FeedType;

    const-string v1, "FEED_TYPE_UNKNOWN"

    invoke-direct {v0, v1, v4, v4}, Lcom/kwad/sdk/feed/FeedType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/kwad/sdk/feed/FeedType;->FEED_TYPE_UNKNOWN:Lcom/kwad/sdk/feed/FeedType;

    new-instance v0, Lcom/kwad/sdk/feed/FeedType;

    const-string v1, "FEED_TYPE_TEXT_IMMERSE"

    invoke-direct {v0, v1, v5, v5}, Lcom/kwad/sdk/feed/FeedType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/kwad/sdk/feed/FeedType;->FEED_TYPE_TEXT_IMMERSE:Lcom/kwad/sdk/feed/FeedType;

    new-instance v0, Lcom/kwad/sdk/feed/FeedType;

    const-string v1, "FEED_TYPE_TEXT_LEFT"

    invoke-direct {v0, v1, v6, v6}, Lcom/kwad/sdk/feed/FeedType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/kwad/sdk/feed/FeedType;->FEED_TYPE_TEXT_LEFT:Lcom/kwad/sdk/feed/FeedType;

    new-instance v0, Lcom/kwad/sdk/feed/FeedType;

    const-string v1, "FEED_TYPE_TEXT_RIGHT"

    invoke-direct {v0, v1, v7, v7}, Lcom/kwad/sdk/feed/FeedType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/kwad/sdk/feed/FeedType;->FEED_TYPE_TEXT_RIGHT:Lcom/kwad/sdk/feed/FeedType;

    new-instance v0, Lcom/kwad/sdk/feed/FeedType;

    const-string v1, "FEED_TYPE_TEXT_ABOVE"

    invoke-direct {v0, v1, v8, v8}, Lcom/kwad/sdk/feed/FeedType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/kwad/sdk/feed/FeedType;->FEED_TYPE_TEXT_ABOVE:Lcom/kwad/sdk/feed/FeedType;

    new-instance v0, Lcom/kwad/sdk/feed/FeedType;

    const-string v1, "FEED_TYPE_TEXT_BELOW"

    const/4 v2, 0x5

    const/4 v3, 0x5

    invoke-direct {v0, v1, v2, v3}, Lcom/kwad/sdk/feed/FeedType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/kwad/sdk/feed/FeedType;->FEED_TYPE_TEXT_BELOW:Lcom/kwad/sdk/feed/FeedType;

    new-instance v0, Lcom/kwad/sdk/feed/FeedType;

    const-string v1, "FEED_TYPE_TEXT_ABOVE_GROUP"

    const/4 v2, 0x6

    const/4 v3, 0x6

    invoke-direct {v0, v1, v2, v3}, Lcom/kwad/sdk/feed/FeedType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/kwad/sdk/feed/FeedType;->FEED_TYPE_TEXT_ABOVE_GROUP:Lcom/kwad/sdk/feed/FeedType;

    const/4 v0, 0x7

    new-array v0, v0, [Lcom/kwad/sdk/feed/FeedType;

    sget-object v1, Lcom/kwad/sdk/feed/FeedType;->FEED_TYPE_UNKNOWN:Lcom/kwad/sdk/feed/FeedType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/kwad/sdk/feed/FeedType;->FEED_TYPE_TEXT_IMMERSE:Lcom/kwad/sdk/feed/FeedType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/kwad/sdk/feed/FeedType;->FEED_TYPE_TEXT_LEFT:Lcom/kwad/sdk/feed/FeedType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/kwad/sdk/feed/FeedType;->FEED_TYPE_TEXT_RIGHT:Lcom/kwad/sdk/feed/FeedType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/kwad/sdk/feed/FeedType;->FEED_TYPE_TEXT_ABOVE:Lcom/kwad/sdk/feed/FeedType;

    aput-object v1, v0, v8

    sget-object v1, Lcom/kwad/sdk/feed/FeedType;->FEED_TYPE_TEXT_BELOW:Lcom/kwad/sdk/feed/FeedType;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/kwad/sdk/feed/FeedType;->FEED_TYPE_TEXT_ABOVE_GROUP:Lcom/kwad/sdk/feed/FeedType;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sput-object v0, Lcom/kwad/sdk/feed/FeedType;->$VALUES:[Lcom/kwad/sdk/feed/FeedType;

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
    .param p0    # Lcom/kwad/sdk/core/response/model/AdTemplate;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p0}, Lcom/kwad/sdk/c/g/b/b;->a(Lcom/kwad/sdk/core/response/model/AdTemplate;)Lcom/kwad/sdk/core/response/model/AdInfo;

    move-result-object v2

    invoke-static {v2}, Lcom/kwad/sdk/c/g/b/a;->u(Lcom/kwad/sdk/core/response/model/AdInfo;)I

    move-result v2

    iget v3, p0, Lcom/kwad/sdk/core/response/model/AdTemplate;->type:I

    invoke-static {v3}, Lcom/kwad/sdk/feed/FeedType;->fromInt(I)Lcom/kwad/sdk/feed/FeedType;

    move-result-object v3

    if-eq v2, v0, :cond_2d

    const/4 v4, 0x2

    if-eq v2, v4, :cond_21

    const/4 v4, 0x3

    if-eq v2, v4, :cond_19

    :cond_18
    :goto_18
    return v1

    :cond_19
    sget-object v2, Lcom/kwad/sdk/feed/FeedType;->FEED_TYPE_UNKNOWN:Lcom/kwad/sdk/feed/FeedType;

    if-eq v3, v2, :cond_1f

    :goto_1d
    move v1, v0

    goto :goto_18

    :cond_1f
    move v0, v1

    goto :goto_1d

    :cond_21
    sget-object v2, Lcom/kwad/sdk/feed/FeedType;->FEED_TYPE_UNKNOWN:Lcom/kwad/sdk/feed/FeedType;

    if-eq v3, v2, :cond_2b

    sget-object v2, Lcom/kwad/sdk/feed/FeedType;->FEED_TYPE_TEXT_ABOVE_GROUP:Lcom/kwad/sdk/feed/FeedType;

    if-eq v3, v2, :cond_2b

    :goto_29
    move v1, v0

    goto :goto_18

    :cond_2b
    move v0, v1

    goto :goto_29

    :cond_2d
    sget-object v2, Lcom/kwad/sdk/feed/FeedType;->FEED_TYPE_TEXT_ABOVE:Lcom/kwad/sdk/feed/FeedType;

    if-eq v3, v2, :cond_35

    sget-object v2, Lcom/kwad/sdk/feed/FeedType;->FEED_TYPE_TEXT_BELOW:Lcom/kwad/sdk/feed/FeedType;

    if-ne v3, v2, :cond_18

    :cond_35
    move v1, v0

    goto :goto_18
.end method

.method public static fromInt(I)Lcom/kwad/sdk/feed/FeedType;
    .registers 6
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    invoke-static {}, Lcom/kwad/sdk/feed/FeedType;->values()[Lcom/kwad/sdk/feed/FeedType;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_7
    if-ge v1, v3, :cond_14

    aget-object v0, v2, v1

    iget v4, v0, Lcom/kwad/sdk/feed/FeedType;->type:I

    if-ne v4, p0, :cond_10

    :goto_f
    return-object v0

    :cond_10
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_7

    :cond_14
    sget-object v0, Lcom/kwad/sdk/feed/FeedType;->FEED_TYPE_UNKNOWN:Lcom/kwad/sdk/feed/FeedType;

    goto :goto_f
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/kwad/sdk/feed/FeedType;
    .registers 2

    const-class v0, Lcom/kwad/sdk/feed/FeedType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/kwad/sdk/feed/FeedType;

    return-object v0
.end method

.method public static values()[Lcom/kwad/sdk/feed/FeedType;
    .registers 1

    sget-object v0, Lcom/kwad/sdk/feed/FeedType;->$VALUES:[Lcom/kwad/sdk/feed/FeedType;

    invoke-virtual {v0}, [Lcom/kwad/sdk/feed/FeedType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/kwad/sdk/feed/FeedType;

    return-object v0
.end method
