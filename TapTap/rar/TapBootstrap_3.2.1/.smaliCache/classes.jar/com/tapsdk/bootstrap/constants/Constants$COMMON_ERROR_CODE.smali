.class public Lcom/tapsdk/bootstrap/constants/Constants$COMMON_ERROR_CODE;
.super Ljava/lang/Object;
.source "Constants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tapsdk/bootstrap/constants/Constants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "COMMON_ERROR_CODE"
.end annotation


# static fields
.field public static final AUTHORIZATION_FAIL:I = 0x9006

.field public static final INIT_FAIL:I = 0x9002

.field public static final INVALID_LOGIN_STATE:I = 0x13884

.field public static final LOGIN_FAIL:I = 0x9005

.field public static final RE_INIT:I = 0x9001

.field public static final UNDEFINED:I = 0x13880

.field public static final UNINITIALIZED:I = 0x13881


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
