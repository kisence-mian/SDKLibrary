.class public final Lcom/qq/e/comm/constants/ErrorCode$InitError;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qq/e/comm/constants/ErrorCode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "InitError"
.end annotation


# static fields
.field public static final GET_INTERFACE_ERROR:I = 0x12f

.field public static final INIT_ADMANGER_ERROR:I = 0x12d

.field public static final INIT_AD_ERROR:I = 0x12c

.field public static final INIT_PLUGIN_ERROR:I = 0x12e

.field public static final INVALID_REQUEST_ERROR:I = 0x130


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
