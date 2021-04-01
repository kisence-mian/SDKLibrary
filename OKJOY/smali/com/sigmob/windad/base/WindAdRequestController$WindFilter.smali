.class public final enum Lcom/sigmob/windad/base/WindAdRequestController$WindFilter;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sigmob/windad/base/WindAdRequestController$WindFilter;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum WindFilterBreak:Lcom/sigmob/windad/base/WindAdRequestController$WindFilter;

.field public static final enum WindFilterKeepGoing:Lcom/sigmob/windad/base/WindAdRequestController$WindFilter;

.field public static final enum WindFilterLoadInterval:Lcom/sigmob/windad/base/WindAdRequestController$WindFilter;

.field public static final enum WindFilterReadyLoadInterval:Lcom/sigmob/windad/base/WindAdRequestController$WindFilter;

.field private static final synthetic a:[Lcom/sigmob/windad/base/WindAdRequestController$WindFilter;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/sigmob/windad/base/WindAdRequestController$WindFilter;

    const-string v1, "WindFilterKeepGoing"

    invoke-direct {v0, v1, v2}, Lcom/sigmob/windad/base/WindAdRequestController$WindFilter;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sigmob/windad/base/WindAdRequestController$WindFilter;->WindFilterKeepGoing:Lcom/sigmob/windad/base/WindAdRequestController$WindFilter;

    new-instance v0, Lcom/sigmob/windad/base/WindAdRequestController$WindFilter;

    const-string v1, "WindFilterBreak"

    invoke-direct {v0, v1, v3}, Lcom/sigmob/windad/base/WindAdRequestController$WindFilter;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sigmob/windad/base/WindAdRequestController$WindFilter;->WindFilterBreak:Lcom/sigmob/windad/base/WindAdRequestController$WindFilter;

    new-instance v0, Lcom/sigmob/windad/base/WindAdRequestController$WindFilter;

    const-string v1, "WindFilterLoadInterval"

    invoke-direct {v0, v1, v4}, Lcom/sigmob/windad/base/WindAdRequestController$WindFilter;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sigmob/windad/base/WindAdRequestController$WindFilter;->WindFilterLoadInterval:Lcom/sigmob/windad/base/WindAdRequestController$WindFilter;

    new-instance v0, Lcom/sigmob/windad/base/WindAdRequestController$WindFilter;

    const-string v1, "WindFilterReadyLoadInterval"

    invoke-direct {v0, v1, v5}, Lcom/sigmob/windad/base/WindAdRequestController$WindFilter;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sigmob/windad/base/WindAdRequestController$WindFilter;->WindFilterReadyLoadInterval:Lcom/sigmob/windad/base/WindAdRequestController$WindFilter;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/sigmob/windad/base/WindAdRequestController$WindFilter;

    sget-object v1, Lcom/sigmob/windad/base/WindAdRequestController$WindFilter;->WindFilterKeepGoing:Lcom/sigmob/windad/base/WindAdRequestController$WindFilter;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sigmob/windad/base/WindAdRequestController$WindFilter;->WindFilterBreak:Lcom/sigmob/windad/base/WindAdRequestController$WindFilter;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sigmob/windad/base/WindAdRequestController$WindFilter;->WindFilterLoadInterval:Lcom/sigmob/windad/base/WindAdRequestController$WindFilter;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sigmob/windad/base/WindAdRequestController$WindFilter;->WindFilterReadyLoadInterval:Lcom/sigmob/windad/base/WindAdRequestController$WindFilter;

    aput-object v1, v0, v5

    sput-object v0, Lcom/sigmob/windad/base/WindAdRequestController$WindFilter;->a:[Lcom/sigmob/windad/base/WindAdRequestController$WindFilter;

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

.method public static valueOf(Ljava/lang/String;)Lcom/sigmob/windad/base/WindAdRequestController$WindFilter;
    .registers 2

    const-class v0, Lcom/sigmob/windad/base/WindAdRequestController$WindFilter;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sigmob/windad/base/WindAdRequestController$WindFilter;

    return-object v0
.end method

.method public static values()[Lcom/sigmob/windad/base/WindAdRequestController$WindFilter;
    .registers 1

    sget-object v0, Lcom/sigmob/windad/base/WindAdRequestController$WindFilter;->a:[Lcom/sigmob/windad/base/WindAdRequestController$WindFilter;

    invoke-virtual {v0}, [Lcom/sigmob/windad/base/WindAdRequestController$WindFilter;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sigmob/windad/base/WindAdRequestController$WindFilter;

    return-object v0
.end method
