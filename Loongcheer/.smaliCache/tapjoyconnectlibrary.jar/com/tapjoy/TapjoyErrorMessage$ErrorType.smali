.class public final enum Lcom/tapjoy/TapjoyErrorMessage$ErrorType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tapjoy/TapjoyErrorMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ErrorType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/tapjoy/TapjoyErrorMessage$ErrorType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum INTEGRATION_ERROR:Lcom/tapjoy/TapjoyErrorMessage$ErrorType;

.field public static final enum INTERNAL_ERROR:Lcom/tapjoy/TapjoyErrorMessage$ErrorType;

.field public static final enum NETWORK_ERROR:Lcom/tapjoy/TapjoyErrorMessage$ErrorType;

.field public static final enum SDK_ERROR:Lcom/tapjoy/TapjoyErrorMessage$ErrorType;

.field public static final enum SERVER_ERROR:Lcom/tapjoy/TapjoyErrorMessage$ErrorType;

.field private static final synthetic a:[Lcom/tapjoy/TapjoyErrorMessage$ErrorType;


# direct methods
.method static constructor <clinit>()V
    .registers 11

    .line 8
    new-instance v0, Lcom/tapjoy/TapjoyErrorMessage$ErrorType;

    const-string v1, "INTERNAL_ERROR"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/tapjoy/TapjoyErrorMessage$ErrorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tapjoy/TapjoyErrorMessage$ErrorType;->INTERNAL_ERROR:Lcom/tapjoy/TapjoyErrorMessage$ErrorType;

    .line 9
    new-instance v1, Lcom/tapjoy/TapjoyErrorMessage$ErrorType;

    const-string v3, "SDK_ERROR"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/tapjoy/TapjoyErrorMessage$ErrorType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/tapjoy/TapjoyErrorMessage$ErrorType;->SDK_ERROR:Lcom/tapjoy/TapjoyErrorMessage$ErrorType;

    .line 10
    new-instance v3, Lcom/tapjoy/TapjoyErrorMessage$ErrorType;

    const-string v5, "SERVER_ERROR"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/tapjoy/TapjoyErrorMessage$ErrorType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/tapjoy/TapjoyErrorMessage$ErrorType;->SERVER_ERROR:Lcom/tapjoy/TapjoyErrorMessage$ErrorType;

    .line 11
    new-instance v5, Lcom/tapjoy/TapjoyErrorMessage$ErrorType;

    const-string v7, "INTEGRATION_ERROR"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/tapjoy/TapjoyErrorMessage$ErrorType;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/tapjoy/TapjoyErrorMessage$ErrorType;->INTEGRATION_ERROR:Lcom/tapjoy/TapjoyErrorMessage$ErrorType;

    .line 12
    new-instance v7, Lcom/tapjoy/TapjoyErrorMessage$ErrorType;

    const-string v9, "NETWORK_ERROR"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/tapjoy/TapjoyErrorMessage$ErrorType;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/tapjoy/TapjoyErrorMessage$ErrorType;->NETWORK_ERROR:Lcom/tapjoy/TapjoyErrorMessage$ErrorType;

    .line 7
    const/4 v9, 0x5

    new-array v9, v9, [Lcom/tapjoy/TapjoyErrorMessage$ErrorType;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    sput-object v9, Lcom/tapjoy/TapjoyErrorMessage$ErrorType;->a:[Lcom/tapjoy/TapjoyErrorMessage$ErrorType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 7
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tapjoy/TapjoyErrorMessage$ErrorType;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 7
    const-class v0, Lcom/tapjoy/TapjoyErrorMessage$ErrorType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/tapjoy/TapjoyErrorMessage$ErrorType;

    return-object v0
.end method

.method public static values()[Lcom/tapjoy/TapjoyErrorMessage$ErrorType;
    .registers 1

    .line 7
    sget-object v0, Lcom/tapjoy/TapjoyErrorMessage$ErrorType;->a:[Lcom/tapjoy/TapjoyErrorMessage$ErrorType;

    invoke-virtual {v0}, [Lcom/tapjoy/TapjoyErrorMessage$ErrorType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tapjoy/TapjoyErrorMessage$ErrorType;

    return-object v0
.end method
