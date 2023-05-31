.class public Lcom/tapsdk/bootstrap/constants/Constants;
.super Ljava/lang/Object;
.source "Constants.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tapsdk/bootstrap/constants/Constants$COMMON_ERROR_MESSAGE;,
        Lcom/tapsdk/bootstrap/constants/Constants$COMMON_ERROR_CODE;,
        Lcom/tapsdk/bootstrap/constants/Constants$SDK_INFO;
    }
.end annotation


# static fields
.field public static final ERROR_CODE_LOGOUT_INVALID_LOGIN_STATE:I = 0x13884

.field public static final ERROR_CODE_LOGOUT_KICKED:I = 0x13887

.field public static final ERROR_CODE_UNDEFINED:I = 0x13880

.field public static final ERROR_CODE_UNINITIALIZED:I = 0x13881


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
