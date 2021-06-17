.class public final enum Lcom/facebook/internal/LoginAuthorizationType;
.super Ljava/lang/Enum;
.source "LoginAuthorizationType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/facebook/internal/LoginAuthorizationType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/facebook/internal/LoginAuthorizationType;

.field public static final enum PUBLISH:Lcom/facebook/internal/LoginAuthorizationType;

.field public static final enum READ:Lcom/facebook/internal/LoginAuthorizationType;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 29
    new-instance v0, Lcom/facebook/internal/LoginAuthorizationType;

    const-string v1, "READ"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/facebook/internal/LoginAuthorizationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/internal/LoginAuthorizationType;->READ:Lcom/facebook/internal/LoginAuthorizationType;

    .line 30
    new-instance v1, Lcom/facebook/internal/LoginAuthorizationType;

    const-string v3, "PUBLISH"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/facebook/internal/LoginAuthorizationType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/facebook/internal/LoginAuthorizationType;->PUBLISH:Lcom/facebook/internal/LoginAuthorizationType;

    .line 28
    const/4 v3, 0x2

    new-array v3, v3, [Lcom/facebook/internal/LoginAuthorizationType;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lcom/facebook/internal/LoginAuthorizationType;->$VALUES:[Lcom/facebook/internal/LoginAuthorizationType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 28
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/internal/LoginAuthorizationType;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 28
    const-class v0, Lcom/facebook/internal/LoginAuthorizationType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/facebook/internal/LoginAuthorizationType;

    return-object v0
.end method

.method public static values()[Lcom/facebook/internal/LoginAuthorizationType;
    .registers 1

    .line 28
    sget-object v0, Lcom/facebook/internal/LoginAuthorizationType;->$VALUES:[Lcom/facebook/internal/LoginAuthorizationType;

    invoke-virtual {v0}, [Lcom/facebook/internal/LoginAuthorizationType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/internal/LoginAuthorizationType;

    return-object v0
.end method
