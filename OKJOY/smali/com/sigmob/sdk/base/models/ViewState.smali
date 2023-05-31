.class public final enum Lcom/sigmob/sdk/base/models/ViewState;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sigmob/sdk/base/models/ViewState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sigmob/sdk/base/models/ViewState;

.field public static final enum DEFAULT:Lcom/sigmob/sdk/base/models/ViewState;

.field public static final enum EXPANDED:Lcom/sigmob/sdk/base/models/ViewState;

.field public static final enum HIDDEN:Lcom/sigmob/sdk/base/models/ViewState;

.field public static final enum LOADING:Lcom/sigmob/sdk/base/models/ViewState;

.field public static final enum RESIZED:Lcom/sigmob/sdk/base/models/ViewState;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/sigmob/sdk/base/models/ViewState;

    const-string v1, "LOADING"

    invoke-direct {v0, v1, v2}, Lcom/sigmob/sdk/base/models/ViewState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sigmob/sdk/base/models/ViewState;->LOADING:Lcom/sigmob/sdk/base/models/ViewState;

    new-instance v0, Lcom/sigmob/sdk/base/models/ViewState;

    const-string v1, "DEFAULT"

    invoke-direct {v0, v1, v3}, Lcom/sigmob/sdk/base/models/ViewState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sigmob/sdk/base/models/ViewState;->DEFAULT:Lcom/sigmob/sdk/base/models/ViewState;

    new-instance v0, Lcom/sigmob/sdk/base/models/ViewState;

    const-string v1, "RESIZED"

    invoke-direct {v0, v1, v4}, Lcom/sigmob/sdk/base/models/ViewState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sigmob/sdk/base/models/ViewState;->RESIZED:Lcom/sigmob/sdk/base/models/ViewState;

    new-instance v0, Lcom/sigmob/sdk/base/models/ViewState;

    const-string v1, "EXPANDED"

    invoke-direct {v0, v1, v5}, Lcom/sigmob/sdk/base/models/ViewState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sigmob/sdk/base/models/ViewState;->EXPANDED:Lcom/sigmob/sdk/base/models/ViewState;

    new-instance v0, Lcom/sigmob/sdk/base/models/ViewState;

    const-string v1, "HIDDEN"

    invoke-direct {v0, v1, v6}, Lcom/sigmob/sdk/base/models/ViewState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sigmob/sdk/base/models/ViewState;->HIDDEN:Lcom/sigmob/sdk/base/models/ViewState;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/sigmob/sdk/base/models/ViewState;

    sget-object v1, Lcom/sigmob/sdk/base/models/ViewState;->LOADING:Lcom/sigmob/sdk/base/models/ViewState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sigmob/sdk/base/models/ViewState;->DEFAULT:Lcom/sigmob/sdk/base/models/ViewState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sigmob/sdk/base/models/ViewState;->RESIZED:Lcom/sigmob/sdk/base/models/ViewState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sigmob/sdk/base/models/ViewState;->EXPANDED:Lcom/sigmob/sdk/base/models/ViewState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sigmob/sdk/base/models/ViewState;->HIDDEN:Lcom/sigmob/sdk/base/models/ViewState;

    aput-object v1, v0, v6

    sput-object v0, Lcom/sigmob/sdk/base/models/ViewState;->$VALUES:[Lcom/sigmob/sdk/base/models/ViewState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sigmob/sdk/base/models/ViewState;
    .registers 2

    const-class v0, Lcom/sigmob/sdk/base/models/ViewState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sigmob/sdk/base/models/ViewState;

    return-object v0
.end method

.method public static values()[Lcom/sigmob/sdk/base/models/ViewState;
    .registers 1

    sget-object v0, Lcom/sigmob/sdk/base/models/ViewState;->$VALUES:[Lcom/sigmob/sdk/base/models/ViewState;

    invoke-virtual {v0}, [Lcom/sigmob/sdk/base/models/ViewState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sigmob/sdk/base/models/ViewState;

    return-object v0
.end method


# virtual methods
.method public toJavascriptString()Ljava/lang/String;
    .registers 3

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/models/ViewState;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
