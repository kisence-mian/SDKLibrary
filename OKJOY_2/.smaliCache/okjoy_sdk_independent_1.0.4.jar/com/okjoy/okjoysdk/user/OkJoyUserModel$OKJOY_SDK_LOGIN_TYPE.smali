.class public final enum Lcom/okjoy/okjoysdk/user/OkJoyUserModel$OKJOY_SDK_LOGIN_TYPE;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/okjoy/okjoysdk/user/OkJoyUserModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "OKJOY_SDK_LOGIN_TYPE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/okjoy/okjoysdk/user/OkJoyUserModel$OKJOY_SDK_LOGIN_TYPE;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/okjoy/okjoysdk/user/OkJoyUserModel$OKJOY_SDK_LOGIN_TYPE;

.field public static final enum LOGIN_TYPE_ACCOUNT:Lcom/okjoy/okjoysdk/user/OkJoyUserModel$OKJOY_SDK_LOGIN_TYPE;

.field public static final enum LOGIN_TYPE_PHONE_CODE:Lcom/okjoy/okjoysdk/user/OkJoyUserModel$OKJOY_SDK_LOGIN_TYPE;

.field public static final enum LOGIN_TYPE_QQ:Lcom/okjoy/okjoysdk/user/OkJoyUserModel$OKJOY_SDK_LOGIN_TYPE;

.field public static final enum LOGIN_TYPE_TAPTAP:Lcom/okjoy/okjoysdk/user/OkJoyUserModel$OKJOY_SDK_LOGIN_TYPE;

.field public static final enum LOGIN_TYPE_VISITOR:Lcom/okjoy/okjoysdk/user/OkJoyUserModel$OKJOY_SDK_LOGIN_TYPE;

.field public static final enum LOGIN_TYPE_WECHART:Lcom/okjoy/okjoysdk/user/OkJoyUserModel$OKJOY_SDK_LOGIN_TYPE;


# direct methods
.method public static constructor <clinit>()V
    .registers 13

    new-instance v0, Lcom/okjoy/okjoysdk/user/OkJoyUserModel$OKJOY_SDK_LOGIN_TYPE;

    const-string v1, "LOGIN_TYPE_VISITOR"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/okjoy/okjoysdk/user/OkJoyUserModel$OKJOY_SDK_LOGIN_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/okjoy/okjoysdk/user/OkJoyUserModel$OKJOY_SDK_LOGIN_TYPE;->LOGIN_TYPE_VISITOR:Lcom/okjoy/okjoysdk/user/OkJoyUserModel$OKJOY_SDK_LOGIN_TYPE;

    new-instance v1, Lcom/okjoy/okjoysdk/user/OkJoyUserModel$OKJOY_SDK_LOGIN_TYPE;

    const-string v3, "LOGIN_TYPE_PHONE_CODE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/okjoy/okjoysdk/user/OkJoyUserModel$OKJOY_SDK_LOGIN_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/okjoy/okjoysdk/user/OkJoyUserModel$OKJOY_SDK_LOGIN_TYPE;->LOGIN_TYPE_PHONE_CODE:Lcom/okjoy/okjoysdk/user/OkJoyUserModel$OKJOY_SDK_LOGIN_TYPE;

    new-instance v3, Lcom/okjoy/okjoysdk/user/OkJoyUserModel$OKJOY_SDK_LOGIN_TYPE;

    const-string v5, "LOGIN_TYPE_ACCOUNT"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/okjoy/okjoysdk/user/OkJoyUserModel$OKJOY_SDK_LOGIN_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/okjoy/okjoysdk/user/OkJoyUserModel$OKJOY_SDK_LOGIN_TYPE;->LOGIN_TYPE_ACCOUNT:Lcom/okjoy/okjoysdk/user/OkJoyUserModel$OKJOY_SDK_LOGIN_TYPE;

    new-instance v5, Lcom/okjoy/okjoysdk/user/OkJoyUserModel$OKJOY_SDK_LOGIN_TYPE;

    const-string v7, "LOGIN_TYPE_WECHART"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/okjoy/okjoysdk/user/OkJoyUserModel$OKJOY_SDK_LOGIN_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/okjoy/okjoysdk/user/OkJoyUserModel$OKJOY_SDK_LOGIN_TYPE;->LOGIN_TYPE_WECHART:Lcom/okjoy/okjoysdk/user/OkJoyUserModel$OKJOY_SDK_LOGIN_TYPE;

    new-instance v7, Lcom/okjoy/okjoysdk/user/OkJoyUserModel$OKJOY_SDK_LOGIN_TYPE;

    const-string v9, "LOGIN_TYPE_QQ"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/okjoy/okjoysdk/user/OkJoyUserModel$OKJOY_SDK_LOGIN_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/okjoy/okjoysdk/user/OkJoyUserModel$OKJOY_SDK_LOGIN_TYPE;->LOGIN_TYPE_QQ:Lcom/okjoy/okjoysdk/user/OkJoyUserModel$OKJOY_SDK_LOGIN_TYPE;

    new-instance v9, Lcom/okjoy/okjoysdk/user/OkJoyUserModel$OKJOY_SDK_LOGIN_TYPE;

    const-string v11, "LOGIN_TYPE_TAPTAP"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/okjoy/okjoysdk/user/OkJoyUserModel$OKJOY_SDK_LOGIN_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/okjoy/okjoysdk/user/OkJoyUserModel$OKJOY_SDK_LOGIN_TYPE;->LOGIN_TYPE_TAPTAP:Lcom/okjoy/okjoysdk/user/OkJoyUserModel$OKJOY_SDK_LOGIN_TYPE;

    const/4 v11, 0x6

    new-array v11, v11, [Lcom/okjoy/okjoysdk/user/OkJoyUserModel$OKJOY_SDK_LOGIN_TYPE;

    aput-object v0, v11, v2

    aput-object v1, v11, v4

    aput-object v3, v11, v6

    aput-object v5, v11, v8

    aput-object v7, v11, v10

    aput-object v9, v11, v12

    sput-object v11, Lcom/okjoy/okjoysdk/user/OkJoyUserModel$OKJOY_SDK_LOGIN_TYPE;->$VALUES:[Lcom/okjoy/okjoysdk/user/OkJoyUserModel$OKJOY_SDK_LOGIN_TYPE;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/okjoy/okjoysdk/user/OkJoyUserModel$OKJOY_SDK_LOGIN_TYPE;
    .registers 2

    const-class v0, Lcom/okjoy/okjoysdk/user/OkJoyUserModel$OKJOY_SDK_LOGIN_TYPE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/okjoy/okjoysdk/user/OkJoyUserModel$OKJOY_SDK_LOGIN_TYPE;

    return-object p0
.end method

.method public static values()[Lcom/okjoy/okjoysdk/user/OkJoyUserModel$OKJOY_SDK_LOGIN_TYPE;
    .registers 1

    sget-object v0, Lcom/okjoy/okjoysdk/user/OkJoyUserModel$OKJOY_SDK_LOGIN_TYPE;->$VALUES:[Lcom/okjoy/okjoysdk/user/OkJoyUserModel$OKJOY_SDK_LOGIN_TYPE;

    invoke-virtual {v0}, [Lcom/okjoy/okjoysdk/user/OkJoyUserModel$OKJOY_SDK_LOGIN_TYPE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/okjoy/okjoysdk/user/OkJoyUserModel$OKJOY_SDK_LOGIN_TYPE;

    return-object v0
.end method
