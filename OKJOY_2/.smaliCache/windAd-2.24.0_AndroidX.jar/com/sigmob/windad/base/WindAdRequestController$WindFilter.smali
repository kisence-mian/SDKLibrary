.class public final enum Lcom/sigmob/windad/base/WindAdRequestController$WindFilter;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sigmob/windad/base/WindAdRequestController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "WindFilter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sigmob/windad/base/WindAdRequestController$WindFilter;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum WindFilterKeepGoing:Lcom/sigmob/windad/base/WindAdRequestController$WindFilter;

.field public static final enum WindFilterLoadInterval:Lcom/sigmob/windad/base/WindAdRequestController$WindFilter;

.field public static final enum WindFilterLoadingBreak:Lcom/sigmob/windad/base/WindAdRequestController$WindFilter;

.field public static final enum WindFilterPlayBreak:Lcom/sigmob/windad/base/WindAdRequestController$WindFilter;

.field public static final enum WindFilterReadyLoadInterval:Lcom/sigmob/windad/base/WindAdRequestController$WindFilter;

.field private static final synthetic a:[Lcom/sigmob/windad/base/WindAdRequestController$WindFilter;


# direct methods
.method static constructor <clinit>()V
    .registers 11

    new-instance v0, Lcom/sigmob/windad/base/WindAdRequestController$WindFilter;

    const-string v1, "WindFilterKeepGoing"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sigmob/windad/base/WindAdRequestController$WindFilter;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sigmob/windad/base/WindAdRequestController$WindFilter;->WindFilterKeepGoing:Lcom/sigmob/windad/base/WindAdRequestController$WindFilter;

    new-instance v1, Lcom/sigmob/windad/base/WindAdRequestController$WindFilter;

    const-string v3, "WindFilterLoadingBreak"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/sigmob/windad/base/WindAdRequestController$WindFilter;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/sigmob/windad/base/WindAdRequestController$WindFilter;->WindFilterLoadingBreak:Lcom/sigmob/windad/base/WindAdRequestController$WindFilter;

    new-instance v3, Lcom/sigmob/windad/base/WindAdRequestController$WindFilter;

    const-string v5, "WindFilterPlayBreak"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/sigmob/windad/base/WindAdRequestController$WindFilter;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/sigmob/windad/base/WindAdRequestController$WindFilter;->WindFilterPlayBreak:Lcom/sigmob/windad/base/WindAdRequestController$WindFilter;

    new-instance v5, Lcom/sigmob/windad/base/WindAdRequestController$WindFilter;

    const-string v7, "WindFilterLoadInterval"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/sigmob/windad/base/WindAdRequestController$WindFilter;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/sigmob/windad/base/WindAdRequestController$WindFilter;->WindFilterLoadInterval:Lcom/sigmob/windad/base/WindAdRequestController$WindFilter;

    new-instance v7, Lcom/sigmob/windad/base/WindAdRequestController$WindFilter;

    const-string v9, "WindFilterReadyLoadInterval"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/sigmob/windad/base/WindAdRequestController$WindFilter;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/sigmob/windad/base/WindAdRequestController$WindFilter;->WindFilterReadyLoadInterval:Lcom/sigmob/windad/base/WindAdRequestController$WindFilter;

    const/4 v9, 0x5

    new-array v9, v9, [Lcom/sigmob/windad/base/WindAdRequestController$WindFilter;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    sput-object v9, Lcom/sigmob/windad/base/WindAdRequestController$WindFilter;->a:[Lcom/sigmob/windad/base/WindAdRequestController$WindFilter;

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

    move-result-object p0

    check-cast p0, Lcom/sigmob/windad/base/WindAdRequestController$WindFilter;

    return-object p0
.end method

.method public static values()[Lcom/sigmob/windad/base/WindAdRequestController$WindFilter;
    .registers 1

    sget-object v0, Lcom/sigmob/windad/base/WindAdRequestController$WindFilter;->a:[Lcom/sigmob/windad/base/WindAdRequestController$WindFilter;

    invoke-virtual {v0}, [Lcom/sigmob/windad/base/WindAdRequestController$WindFilter;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sigmob/windad/base/WindAdRequestController$WindFilter;

    return-object v0
.end method
