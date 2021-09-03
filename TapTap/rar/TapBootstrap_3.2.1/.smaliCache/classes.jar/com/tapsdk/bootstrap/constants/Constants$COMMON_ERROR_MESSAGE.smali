.class public Lcom/tapsdk/bootstrap/constants/Constants$COMMON_ERROR_MESSAGE;
.super Ljava/lang/Object;
.source "Constants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tapsdk/bootstrap/constants/Constants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "COMMON_ERROR_MESSAGE"
.end annotation


# static fields
.field public static final SDK_NOT_INIT:Ljava/lang/String; = "TapSdk not initialized yet"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
