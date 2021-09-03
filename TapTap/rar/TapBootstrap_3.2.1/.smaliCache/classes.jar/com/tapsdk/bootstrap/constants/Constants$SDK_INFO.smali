.class public Lcom/tapsdk/bootstrap/constants/Constants$SDK_INFO;
.super Ljava/lang/Object;
.source "Constants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tapsdk/bootstrap/constants/Constants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SDK_INFO"
.end annotation


# static fields
.field public static final NAME:Ljava/lang/String; = "TapSDK"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
