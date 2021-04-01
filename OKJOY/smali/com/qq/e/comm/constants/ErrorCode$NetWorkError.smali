.class public final Lcom/qq/e/comm/constants/ErrorCode$NetWorkError;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qq/e/comm/constants/ErrorCode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "NetWorkError"
.end annotation


# static fields
.field public static final HTTP_STATUS_ERROR:I = 0x193

.field public static final IMG_LOAD_ERROR:I = 0x196

.field public static final QUEUE_FULL_ERROR:I = 0x191

.field public static final RESOURCE_LOAD_FAIL_ERROR:I = 0x195

.field public static final RETRY_TIME_JS_ERROR:I = 0x197

.field public static final RETRY_TIME_NATIVE_ERROR:I = 0x192

.field public static final STUB_NETWORK_ERROR:I = 0x190

.field public static final TIME_OUT_ERROR:I = 0x194


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
