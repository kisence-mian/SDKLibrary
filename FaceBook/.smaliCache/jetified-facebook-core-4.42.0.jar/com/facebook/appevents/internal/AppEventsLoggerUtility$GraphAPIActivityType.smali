.class public final enum Lcom/facebook/appevents/internal/AppEventsLoggerUtility$GraphAPIActivityType;
.super Ljava/lang/Enum;
.source "AppEventsLoggerUtility.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/appevents/internal/AppEventsLoggerUtility;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "GraphAPIActivityType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/facebook/appevents/internal/AppEventsLoggerUtility$GraphAPIActivityType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/facebook/appevents/internal/AppEventsLoggerUtility$GraphAPIActivityType;

.field public static final enum CUSTOM_APP_EVENTS:Lcom/facebook/appevents/internal/AppEventsLoggerUtility$GraphAPIActivityType;

.field public static final enum MOBILE_INSTALL_EVENT:Lcom/facebook/appevents/internal/AppEventsLoggerUtility$GraphAPIActivityType;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 45
    new-instance v0, Lcom/facebook/appevents/internal/AppEventsLoggerUtility$GraphAPIActivityType;

    const-string v1, "MOBILE_INSTALL_EVENT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/facebook/appevents/internal/AppEventsLoggerUtility$GraphAPIActivityType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/appevents/internal/AppEventsLoggerUtility$GraphAPIActivityType;->MOBILE_INSTALL_EVENT:Lcom/facebook/appevents/internal/AppEventsLoggerUtility$GraphAPIActivityType;

    .line 46
    new-instance v1, Lcom/facebook/appevents/internal/AppEventsLoggerUtility$GraphAPIActivityType;

    const-string v3, "CUSTOM_APP_EVENTS"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/facebook/appevents/internal/AppEventsLoggerUtility$GraphAPIActivityType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/facebook/appevents/internal/AppEventsLoggerUtility$GraphAPIActivityType;->CUSTOM_APP_EVENTS:Lcom/facebook/appevents/internal/AppEventsLoggerUtility$GraphAPIActivityType;

    .line 44
    const/4 v3, 0x2

    new-array v3, v3, [Lcom/facebook/appevents/internal/AppEventsLoggerUtility$GraphAPIActivityType;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lcom/facebook/appevents/internal/AppEventsLoggerUtility$GraphAPIActivityType;->$VALUES:[Lcom/facebook/appevents/internal/AppEventsLoggerUtility$GraphAPIActivityType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 44
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/appevents/internal/AppEventsLoggerUtility$GraphAPIActivityType;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 44
    const-class v0, Lcom/facebook/appevents/internal/AppEventsLoggerUtility$GraphAPIActivityType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/facebook/appevents/internal/AppEventsLoggerUtility$GraphAPIActivityType;

    return-object v0
.end method

.method public static values()[Lcom/facebook/appevents/internal/AppEventsLoggerUtility$GraphAPIActivityType;
    .registers 1

    .line 44
    sget-object v0, Lcom/facebook/appevents/internal/AppEventsLoggerUtility$GraphAPIActivityType;->$VALUES:[Lcom/facebook/appevents/internal/AppEventsLoggerUtility$GraphAPIActivityType;

    invoke-virtual {v0}, [Lcom/facebook/appevents/internal/AppEventsLoggerUtility$GraphAPIActivityType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/appevents/internal/AppEventsLoggerUtility$GraphAPIActivityType;

    return-object v0
.end method
