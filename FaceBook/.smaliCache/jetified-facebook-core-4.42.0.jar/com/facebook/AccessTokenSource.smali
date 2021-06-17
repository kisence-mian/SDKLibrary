.class public final enum Lcom/facebook/AccessTokenSource;
.super Ljava/lang/Enum;
.source "AccessTokenSource.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/facebook/AccessTokenSource;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/facebook/AccessTokenSource;

.field public static final enum CHROME_CUSTOM_TAB:Lcom/facebook/AccessTokenSource;

.field public static final enum CLIENT_TOKEN:Lcom/facebook/AccessTokenSource;

.field public static final enum DEVICE_AUTH:Lcom/facebook/AccessTokenSource;

.field public static final enum FACEBOOK_APPLICATION_NATIVE:Lcom/facebook/AccessTokenSource;

.field public static final enum FACEBOOK_APPLICATION_SERVICE:Lcom/facebook/AccessTokenSource;

.field public static final enum FACEBOOK_APPLICATION_WEB:Lcom/facebook/AccessTokenSource;

.field public static final enum NONE:Lcom/facebook/AccessTokenSource;

.field public static final enum TEST_USER:Lcom/facebook/AccessTokenSource;

.field public static final enum WEB_VIEW:Lcom/facebook/AccessTokenSource;


# instance fields
.field private final canExtendToken:Z


# direct methods
.method static constructor <clinit>()V
    .registers 16

    .line 30
    new-instance v0, Lcom/facebook/AccessTokenSource;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/facebook/AccessTokenSource;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/facebook/AccessTokenSource;->NONE:Lcom/facebook/AccessTokenSource;

    .line 35
    new-instance v1, Lcom/facebook/AccessTokenSource;

    const-string v3, "FACEBOOK_APPLICATION_WEB"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/facebook/AccessTokenSource;-><init>(Ljava/lang/String;IZ)V

    sput-object v1, Lcom/facebook/AccessTokenSource;->FACEBOOK_APPLICATION_WEB:Lcom/facebook/AccessTokenSource;

    .line 40
    new-instance v3, Lcom/facebook/AccessTokenSource;

    const-string v5, "FACEBOOK_APPLICATION_NATIVE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v4}, Lcom/facebook/AccessTokenSource;-><init>(Ljava/lang/String;IZ)V

    sput-object v3, Lcom/facebook/AccessTokenSource;->FACEBOOK_APPLICATION_NATIVE:Lcom/facebook/AccessTokenSource;

    .line 46
    new-instance v5, Lcom/facebook/AccessTokenSource;

    const-string v7, "FACEBOOK_APPLICATION_SERVICE"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v4}, Lcom/facebook/AccessTokenSource;-><init>(Ljava/lang/String;IZ)V

    sput-object v5, Lcom/facebook/AccessTokenSource;->FACEBOOK_APPLICATION_SERVICE:Lcom/facebook/AccessTokenSource;

    .line 51
    new-instance v7, Lcom/facebook/AccessTokenSource;

    const-string v9, "WEB_VIEW"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v4}, Lcom/facebook/AccessTokenSource;-><init>(Ljava/lang/String;IZ)V

    sput-object v7, Lcom/facebook/AccessTokenSource;->WEB_VIEW:Lcom/facebook/AccessTokenSource;

    .line 56
    new-instance v9, Lcom/facebook/AccessTokenSource;

    const-string v11, "CHROME_CUSTOM_TAB"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12, v4}, Lcom/facebook/AccessTokenSource;-><init>(Ljava/lang/String;IZ)V

    sput-object v9, Lcom/facebook/AccessTokenSource;->CHROME_CUSTOM_TAB:Lcom/facebook/AccessTokenSource;

    .line 61
    new-instance v11, Lcom/facebook/AccessTokenSource;

    const-string v13, "TEST_USER"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14, v4}, Lcom/facebook/AccessTokenSource;-><init>(Ljava/lang/String;IZ)V

    sput-object v11, Lcom/facebook/AccessTokenSource;->TEST_USER:Lcom/facebook/AccessTokenSource;

    .line 65
    new-instance v13, Lcom/facebook/AccessTokenSource;

    const-string v15, "CLIENT_TOKEN"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14, v4}, Lcom/facebook/AccessTokenSource;-><init>(Ljava/lang/String;IZ)V

    sput-object v13, Lcom/facebook/AccessTokenSource;->CLIENT_TOKEN:Lcom/facebook/AccessTokenSource;

    .line 69
    new-instance v15, Lcom/facebook/AccessTokenSource;

    const-string v14, "DEVICE_AUTH"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12, v4}, Lcom/facebook/AccessTokenSource;-><init>(Ljava/lang/String;IZ)V

    sput-object v15, Lcom/facebook/AccessTokenSource;->DEVICE_AUTH:Lcom/facebook/AccessTokenSource;

    .line 26
    const/16 v14, 0x9

    new-array v14, v14, [Lcom/facebook/AccessTokenSource;

    aput-object v0, v14, v2

    aput-object v1, v14, v4

    aput-object v3, v14, v6

    aput-object v5, v14, v8

    aput-object v7, v14, v10

    const/4 v0, 0x5

    aput-object v9, v14, v0

    const/4 v0, 0x6

    aput-object v11, v14, v0

    const/4 v0, 0x7

    aput-object v13, v14, v0

    aput-object v15, v14, v12

    sput-object v14, Lcom/facebook/AccessTokenSource;->$VALUES:[Lcom/facebook/AccessTokenSource;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZ)V
    .registers 4
    .param p3, "canExtendToken"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)V"
        }
    .end annotation

    .line 73
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 74
    iput-boolean p3, p0, Lcom/facebook/AccessTokenSource;->canExtendToken:Z

    .line 75
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/AccessTokenSource;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 26
    const-class v0, Lcom/facebook/AccessTokenSource;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/facebook/AccessTokenSource;

    return-object v0
.end method

.method public static values()[Lcom/facebook/AccessTokenSource;
    .registers 1

    .line 26
    sget-object v0, Lcom/facebook/AccessTokenSource;->$VALUES:[Lcom/facebook/AccessTokenSource;

    invoke-virtual {v0}, [Lcom/facebook/AccessTokenSource;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/AccessTokenSource;

    return-object v0
.end method


# virtual methods
.method canExtendToken()Z
    .registers 2

    .line 78
    iget-boolean v0, p0, Lcom/facebook/AccessTokenSource;->canExtendToken:Z

    return v0
.end method
