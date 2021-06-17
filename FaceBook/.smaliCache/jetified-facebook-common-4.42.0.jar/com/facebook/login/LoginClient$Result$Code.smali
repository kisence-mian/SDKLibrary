.class final enum Lcom/facebook/login/LoginClient$Result$Code;
.super Ljava/lang/Enum;
.source "LoginClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/login/LoginClient$Result;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "Code"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/facebook/login/LoginClient$Result$Code;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/facebook/login/LoginClient$Result$Code;

.field public static final enum CANCEL:Lcom/facebook/login/LoginClient$Result$Code;

.field public static final enum ERROR:Lcom/facebook/login/LoginClient$Result$Code;

.field public static final enum SUCCESS:Lcom/facebook/login/LoginClient$Result$Code;


# instance fields
.field private final loggingValue:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .line 578
    new-instance v0, Lcom/facebook/login/LoginClient$Result$Code;

    const-string v1, "SUCCESS"

    const/4 v2, 0x0

    const-string v3, "success"

    invoke-direct {v0, v1, v2, v3}, Lcom/facebook/login/LoginClient$Result$Code;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/facebook/login/LoginClient$Result$Code;->SUCCESS:Lcom/facebook/login/LoginClient$Result$Code;

    .line 579
    new-instance v1, Lcom/facebook/login/LoginClient$Result$Code;

    const-string v3, "CANCEL"

    const/4 v4, 0x1

    const-string v5, "cancel"

    invoke-direct {v1, v3, v4, v5}, Lcom/facebook/login/LoginClient$Result$Code;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/facebook/login/LoginClient$Result$Code;->CANCEL:Lcom/facebook/login/LoginClient$Result$Code;

    .line 580
    new-instance v3, Lcom/facebook/login/LoginClient$Result$Code;

    const-string v5, "ERROR"

    const/4 v6, 0x2

    const-string v7, "error"

    invoke-direct {v3, v5, v6, v7}, Lcom/facebook/login/LoginClient$Result$Code;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/facebook/login/LoginClient$Result$Code;->ERROR:Lcom/facebook/login/LoginClient$Result$Code;

    .line 577
    const/4 v5, 0x3

    new-array v5, v5, [Lcom/facebook/login/LoginClient$Result$Code;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lcom/facebook/login/LoginClient$Result$Code;->$VALUES:[Lcom/facebook/login/LoginClient$Result$Code;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4
    .param p3, "loggingValue"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 584
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 585
    iput-object p3, p0, Lcom/facebook/login/LoginClient$Result$Code;->loggingValue:Ljava/lang/String;

    .line 586
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/login/LoginClient$Result$Code;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 577
    const-class v0, Lcom/facebook/login/LoginClient$Result$Code;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/facebook/login/LoginClient$Result$Code;

    return-object v0
.end method

.method public static values()[Lcom/facebook/login/LoginClient$Result$Code;
    .registers 1

    .line 577
    sget-object v0, Lcom/facebook/login/LoginClient$Result$Code;->$VALUES:[Lcom/facebook/login/LoginClient$Result$Code;

    invoke-virtual {v0}, [Lcom/facebook/login/LoginClient$Result$Code;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/login/LoginClient$Result$Code;

    return-object v0
.end method


# virtual methods
.method getLoggingValue()Ljava/lang/String;
    .registers 2

    .line 591
    iget-object v0, p0, Lcom/facebook/login/LoginClient$Result$Code;->loggingValue:Ljava/lang/String;

    return-object v0
.end method
