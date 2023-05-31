.class public final enum Lcom/mintegral/msdk/MIntegralSDK$PLUGIN_LOAD_STATUS;
.super Ljava/lang/Enum;
.source "MIntegralSDK.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mintegral/msdk/MIntegralSDK;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PLUGIN_LOAD_STATUS"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/mintegral/msdk/MIntegralSDK$PLUGIN_LOAD_STATUS;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/mintegral/msdk/MIntegralSDK$PLUGIN_LOAD_STATUS;

.field public static final enum COMPLETED:Lcom/mintegral/msdk/MIntegralSDK$PLUGIN_LOAD_STATUS;

.field public static final enum INCOMPLETED:Lcom/mintegral/msdk/MIntegralSDK$PLUGIN_LOAD_STATUS;

.field public static final enum INITIAL:Lcom/mintegral/msdk/MIntegralSDK$PLUGIN_LOAD_STATUS;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 52
    new-instance v0, Lcom/mintegral/msdk/MIntegralSDK$PLUGIN_LOAD_STATUS;

    const-string v1, "INITIAL"

    invoke-direct {v0, v1, v2}, Lcom/mintegral/msdk/MIntegralSDK$PLUGIN_LOAD_STATUS;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mintegral/msdk/MIntegralSDK$PLUGIN_LOAD_STATUS;->INITIAL:Lcom/mintegral/msdk/MIntegralSDK$PLUGIN_LOAD_STATUS;

    .line 53
    new-instance v0, Lcom/mintegral/msdk/MIntegralSDK$PLUGIN_LOAD_STATUS;

    const-string v1, "INCOMPLETED"

    invoke-direct {v0, v1, v3}, Lcom/mintegral/msdk/MIntegralSDK$PLUGIN_LOAD_STATUS;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mintegral/msdk/MIntegralSDK$PLUGIN_LOAD_STATUS;->INCOMPLETED:Lcom/mintegral/msdk/MIntegralSDK$PLUGIN_LOAD_STATUS;

    .line 54
    new-instance v0, Lcom/mintegral/msdk/MIntegralSDK$PLUGIN_LOAD_STATUS;

    const-string v1, "COMPLETED"

    invoke-direct {v0, v1, v4}, Lcom/mintegral/msdk/MIntegralSDK$PLUGIN_LOAD_STATUS;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mintegral/msdk/MIntegralSDK$PLUGIN_LOAD_STATUS;->COMPLETED:Lcom/mintegral/msdk/MIntegralSDK$PLUGIN_LOAD_STATUS;

    .line 51
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/mintegral/msdk/MIntegralSDK$PLUGIN_LOAD_STATUS;

    sget-object v1, Lcom/mintegral/msdk/MIntegralSDK$PLUGIN_LOAD_STATUS;->INITIAL:Lcom/mintegral/msdk/MIntegralSDK$PLUGIN_LOAD_STATUS;

    aput-object v1, v0, v2

    sget-object v1, Lcom/mintegral/msdk/MIntegralSDK$PLUGIN_LOAD_STATUS;->INCOMPLETED:Lcom/mintegral/msdk/MIntegralSDK$PLUGIN_LOAD_STATUS;

    aput-object v1, v0, v3

    sget-object v1, Lcom/mintegral/msdk/MIntegralSDK$PLUGIN_LOAD_STATUS;->COMPLETED:Lcom/mintegral/msdk/MIntegralSDK$PLUGIN_LOAD_STATUS;

    aput-object v1, v0, v4

    sput-object v0, Lcom/mintegral/msdk/MIntegralSDK$PLUGIN_LOAD_STATUS;->$VALUES:[Lcom/mintegral/msdk/MIntegralSDK$PLUGIN_LOAD_STATUS;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 51
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/mintegral/msdk/MIntegralSDK$PLUGIN_LOAD_STATUS;
    .registers 2

    .prologue
    .line 51
    const-class v0, Lcom/mintegral/msdk/MIntegralSDK$PLUGIN_LOAD_STATUS;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/mintegral/msdk/MIntegralSDK$PLUGIN_LOAD_STATUS;

    return-object v0
.end method

.method public static values()[Lcom/mintegral/msdk/MIntegralSDK$PLUGIN_LOAD_STATUS;
    .registers 1

    .prologue
    .line 51
    sget-object v0, Lcom/mintegral/msdk/MIntegralSDK$PLUGIN_LOAD_STATUS;->$VALUES:[Lcom/mintegral/msdk/MIntegralSDK$PLUGIN_LOAD_STATUS;

    invoke-virtual {v0}, [Lcom/mintegral/msdk/MIntegralSDK$PLUGIN_LOAD_STATUS;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mintegral/msdk/MIntegralSDK$PLUGIN_LOAD_STATUS;

    return-object v0
.end method
